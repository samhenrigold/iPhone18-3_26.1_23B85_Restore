Swift::Int specialized _NativeSet.genericIntersection<A>(_:)(uint64_t isStackAllocationSafe, uint64_t a2)
{
  v3 = isStackAllocationSafe;
  v11[6] = *MEMORY[0x1E69E9840];
  v11[0] = isStackAllocationSafe;
  v4 = *(a2 + 32);
  v11[3] = v11;
  v11[4] = a2;
  v5 = ((1 << v4) + 63) >> 6;
  if (v4 & 0x3Fu) <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v6 = (&v11[-1] - ((8 * v5 + 15) & 0x3FFFFFFFFFFFFFF0));
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v5, v6);
    v7 = specialized closure #1 in _NativeSet.genericIntersection<A>(_:)(v6, v5, v3, a2);
  }

  else
  {
    v9 = swift_slowAlloc();
    v7 = specialized closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:body:)(v9, v5, partial apply for specialized closure #1 in _NativeSet.genericIntersection<A>(_:));

    MEMORY[0x1E12AA0F0](v9, -1, -1);
  }

  return v7;
}

Swift::Int specialized closure #1 in _NativeSet.genericIntersection<A>(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  v33 = a4 + 56;

  v28 = 0;
  v11 = 0;
  v30 = v9;
  v31 = v5;
LABEL_5:
  while (v8)
  {
LABEL_10:
    v13 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v14 = (*(a3 + 48) + ((v11 << 10) | (16 * v13)));
    v16 = *v14;
    v15 = v14[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    v17 = Hasher._finalize()();
    v18 = ~(-1 << *(a4 + 32));
    do
    {
      v19 = v17 & v18;
      v20 = (v17 & v18) >> 6;
      v21 = 1 << (v17 & v18);
      if ((v21 & *(v33 + 8 * v20)) == 0)
      {

        v9 = v30;
        v5 = v31;
        goto LABEL_5;
      }

      v22 = (*(a4 + 48) + 16 * v19);
      if (*v22 == v16 && v22[1] == v15)
      {
        break;
      }

      v24 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v17 = v19 + 1;
    }

    while ((v24 & 1) == 0);

    v25 = a1[v20];
    a1[v20] = v25 | v21;
    v9 = v30;
    v5 = v31;
    if ((v25 & v21) == 0 && __OFADD__(v28++, 1))
    {
      goto LABEL_24;
    }
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

      return specialized _NativeSet.extractSubset(using:count:)(a1, a2, v28, a4);
    }

    v8 = *(v5 + 8 * v12);
    ++v11;
    if (v8)
    {
      v11 = v12;
      goto LABEL_10;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

void *specialized closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:body:)(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
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

    v8 = specialized closure #1 in _NativeSet.intersection(_:)(v7, a2, a3, a4);

    return v8;
  }

  return result;
}

void *specialized closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:body:)(void *result, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, void *, uint64_t))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v6 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    result = a3(&v7, v6, a2);
    if (!v3)
    {
      return v7;
    }
  }

  return result;
}

Swift::Int specialized _NativeSet.intersection(_:)(uint64_t a1, uint64_t a2)
{
  v12[1] = *MEMORY[0x1E69E9840];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x1EEE9AC00](isStackAllocationSafe);
    v8 = v12 - ((8 * v6 + 15) & 0x3FFFFFFFFFFFFFF0);
    specialized UnsafeMutablePointer.assign(repeating:count:)(0, v6, v8);
    v9 = specialized closure #1 in _NativeSet.intersection(_:)(v8, v6, a2, a1);
  }

  else
  {
    v11 = swift_slowAlloc();

    v9 = specialized closure #1 in static _UnsafeBitset.withTemporaryBitset<A>(capacity:body:)(v11, v6, a2, a1);

    MEMORY[0x1E12AA0F0](v11, -1, -1);
  }

  return v9;
}

Swift::Int specialized closure #1 in _NativeSet.intersection(_:)(Swift::Int result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v52 = result;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    v53 = 0;
    v28 = 0;
    v29 = 1 << *(a3 + 32);
    if (v29 < 64)
    {
      v30 = ~(-1 << v29);
    }

    else
    {
      v30 = -1;
    }

    v31 = v30 & *(a3 + 56);
    v32 = (v29 + 63) >> 6;
    v33 = a4 + 56;
LABEL_28:
    while (v31)
    {
      v34 = __clz(__rbit64(v31));
      v51 = (v31 - 1) & v31;
LABEL_35:
      v49 = v34 | (v28 << 6);
      v37 = (*(v5 + 48) + 16 * v49);
      v39 = *v37;
      v38 = v37[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v40 = Hasher._finalize()();
      v41 = ~(-1 << *(v4 + 32));
      do
      {
        v42 = v40 & v41;
        if (((*(v33 + (((v40 & v41) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v40 & v41)) & 1) == 0)
        {

          v4 = a4;
          v31 = v51;
          goto LABEL_28;
        }

        v43 = (*(a4 + 48) + 16 * v42);
        if (*v43 == v39 && v43[1] == v38)
        {
          break;
        }

        v45 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v40 = v42 + 1;
      }

      while ((v45 & 1) == 0);

      *(v52 + ((v49 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v49;
      v27 = __OFADD__(v53++, 1);
      v4 = a4;
      v31 = v51;
      if (v27)
      {
        goto LABEL_50;
      }
    }

    v35 = v28;
    while (1)
    {
      v28 = v35 + 1;
      if (__OFADD__(v35, 1))
      {
        break;
      }

      if (v28 >= v32)
      {
LABEL_46:

        return specialized _NativeSet.extractSubset(using:count:)(v52, a2, v53, v5);
      }

      v36 = *(v5 + 56 + 8 * v28);
      ++v35;
      if (v36)
      {
        v34 = __clz(__rbit64(v36));
        v51 = (v36 - 1) & v36;
        goto LABEL_35;
      }
    }
  }

  else
  {
    v53 = 0;
    v6 = 0;
    v46 = a4 + 56;
    v7 = 1 << *(a4 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(a4 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = a3 + 56;
    v48 = v10;
LABEL_6:
    while (v9)
    {
      v12 = __clz(__rbit64(v9));
      v50 = (v9 - 1) & v9;
LABEL_13:
      v15 = (*(v4 + 48) + 16 * (v12 | (v6 << 6)));
      v17 = *v15;
      v16 = v15[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v18 = Hasher._finalize()();
      v19 = v5;
      v20 = ~(-1 << *(v5 + 32));
      do
      {
        v21 = v18 & v20;
        v22 = (v18 & v20) >> 6;
        v23 = 1 << (v18 & v20);
        if ((v23 & *(v11 + 8 * v22)) == 0)
        {

          v5 = v19;
          v4 = a4;
          v10 = v48;
          v9 = v50;
          goto LABEL_6;
        }

        v24 = (*(v19 + 48) + 16 * v21);
        if (*v24 == v17 && v24[1] == v16)
        {
          break;
        }

        v26 = _stringCompareWithSmolCheck(_:_:expecting:)();
        v18 = v21 + 1;
      }

      while ((v26 & 1) == 0);

      v9 = v50;
      v52[v22] |= v23;
      v27 = __OFADD__(v53++, 1);
      v5 = v19;
      v4 = a4;
      v10 = v48;
      if (v27)
      {
        goto LABEL_49;
      }
    }

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
        goto LABEL_46;
      }

      v14 = *(v46 + 8 * v6);
      ++v13;
      if (v14)
      {
        v12 = __clz(__rbit64(v14));
        v50 = (v14 - 1) & v14;
        goto LABEL_13;
      }
    }

    __break(1u);
  }

  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
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
    v19 = -1 << *(v9 + 32);
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
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
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
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      return 0;
    }

    v9 = (*(v5 + 48) + 16 * v8);
    v10 = *v9 == a1 && v9[1] == a2;
    if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v15 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v12 = v15;
  }

  v13 = *(*(v12 + 48) + 16 * v8);
  specialized _NativeSet._delete(at:)(v8);
  *v2 = v15;
  return v13;
}

unint64_t *specialized closure #1 in _NativeSet.subtracting<A>(_:)(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v26 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    Hasher.init(_seed:)();

    String.hash(into:)();
    v16 = Hasher._finalize()();
    v17 = ~(-1 << *(a3 + 32));
    do
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = 1 << (v16 & v17);
      if ((v20 & *(v9 + 8 * v19)) == 0)
      {

        goto LABEL_3;
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 == v15 && v21[1] == v14)
      {
        break;
      }

      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v16 = v18 + 1;
    }

    while ((v23 & 1) == 0);

    v24 = v27[v19];
    v27[v19] = v24 & ~v20;
    if ((v24 & v20) == 0)
    {
      goto LABEL_3;
    }

    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      goto LABEL_23;
    }

    if (v26 == 1)
    {
      return MEMORY[0x1E69E7CD0];
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      return specialized _NativeSet.extractSubset(using:count:)(v27, a2, v26, a3);
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

unint64_t *specialized closure #1 in static _UnsafeBitset.withTemporaryCopy<A>(of:body:)(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = specialized closure #1 in _NativeSet.subtracting<A>(_:)(a1, a2, a5, a6, a7);

  return v12;
}

unint64_t specialized _NativeSet._delete(at:)(unint64_t result)
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

uint64_t specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized closure #1 in Dictionary.merge(_:uniquingKeysWith:)(a2 + 2, *a1, *(a1 + 8), *(a1 + 16), *(a1 + 24));
  *a2 = result;
  a2[1] = v4;
  return result;
}

unint64_t lazy protocol witness table accessor for type SiriEnvironmentKeyValuePairs.CodingKeys and conformance SiriEnvironmentKeyValuePairs.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SiriEnvironmentKeyValuePairs.CodingKeys and conformance SiriEnvironmentKeyValuePairs.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriEnvironmentKeyValuePairs.CodingKeys and conformance SiriEnvironmentKeyValuePairs.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriEnvironmentKeyValuePairs.CodingKeys and conformance SiriEnvironmentKeyValuePairs.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriEnvironmentKeyValuePairs.CodingKeys and conformance SiriEnvironmentKeyValuePairs.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriEnvironmentKeyValuePairs.CodingKeys and conformance SiriEnvironmentKeyValuePairs.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriEnvironmentKeyValuePairs.CodingKeys and conformance SiriEnvironmentKeyValuePairs.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriEnvironmentKeyValuePairs.CodingKeys and conformance SiriEnvironmentKeyValuePairs.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriEnvironmentKeyValuePairs.CodingKeys and conformance SiriEnvironmentKeyValuePairs.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriEnvironmentKeyValuePairs.CodingKeys and conformance SiriEnvironmentKeyValuePairs.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SiriEnvironmentKeyValuePairs.CodingKeys and conformance SiriEnvironmentKeyValuePairs.CodingKeys;
  if (!lazy protocol witness table cache variable for type SiriEnvironmentKeyValuePairs.CodingKeys and conformance SiriEnvironmentKeyValuePairs.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriEnvironmentKeyValuePairs.CodingKeys and conformance SiriEnvironmentKeyValuePairs.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Set<String> and conformance <> Set<A>(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShySSGMd, &_sShySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t destroy for SiriEnvironmentKeyValuePairs()
{
}

uint64_t *initializeBufferWithCopyOfBuffer for SiriEnvironmentKeyValuePairs(uint64_t *a1, uint64_t *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

uint64_t *assignWithCopy for SiriEnvironmentKeyValuePairs(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

_OWORD *assignWithTake for SiriEnvironmentKeyValuePairs(_OWORD *a1, _OWORD *a2)
{

  *a1 = *a2;

  return a1;
}

_BYTE *storeEnumTagSinglePayload for SiriEnvironmentKeyValuePairs.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t specialized LazyMapSequence.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v4 = -1 << *(a1 + 32);
  *a4 = a1;
  v7 = *(a1 + 64);
  result = a1 + 64;
  v6 = v7;
  v8 = ~v4;
  v9 = -v4;
  a4[1] = result;
  a4[2] = v8;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  else
  {
    v10 = -1;
  }

  a4[3] = 0;
  a4[4] = v10 & v6;
  a4[5] = a2;
  a4[6] = a3;
  return result;
}

Swift::Int specialized closure #1 in _NativeSet.genericIntersection<A>(_:)@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  result = specialized closure #1 in _NativeSet.genericIntersection<A>(_:)(a1, a2, *a3, a4);
  if (!v5)
  {
    *a5 = result;
  }

  return result;
}

uint64_t one-time initialization function for runQueue()
{
  v7 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v0 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v2 = v6 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v3);
  v4 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6[1] = type metadata accessor for OS_dispatch_queue();
  static DispatchQoS.utility.getter();
  v8 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, "nB");
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_0(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, "nB");
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v0 + 104))(v2, *MEMORY[0x1E69E8090], v7);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static AutoBugCaptureManager.runQueue = result;
  return result;
}

uint64_t AutoBugCaptureManager.__allocating_init(domain:sessionDuration:)(uint64_t a1, uint64_t a2, double a3)
{
  result = swift_allocObject();
  *(result + 48) = 0;
  *(result + 56) = 0;
  *(result + 40) = 0;
  *(result + 16) = a1;
  *(result + 24) = a2;
  *(result + 32) = a3;
  return result;
}

uint64_t AutoBugCaptureManager.init(domain:sessionDuration:)(uint64_t a1, uint64_t a2, double a3)
{
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 56) = 0;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return v3;
}

uint64_t AutoBugCaptureManager.__allocating_init(domain:sessionDuration:process:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = (*(v4 + 160))(a1, a2);
  *(v7 + 40) = a3;
  *(v7 + 48) = a4;

  return v7;
}

uint64_t AutoBugCaptureManager.generateSnapshot(errorType:errorSubType:subTypeContext:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v30 = a5;
  v31 = a7;
  v29 = a3;
  v14 = type metadata accessor for DispatchWorkItemFlags();
  OUTLINED_FUNCTION_5_0();
  v34 = v15;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for DispatchQoS();
  OUTLINED_FUNCTION_5_0();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v28 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for runQueue != -1)
  {
    swift_once();
  }

  v32 = static AutoBugCaptureManager.runQueue;
  v24 = swift_allocObject();
  v24[2] = a1;
  v24[3] = a2;
  v25 = v30;
  v24[4] = v29;
  v24[5] = a4;
  v24[6] = v25;
  v24[7] = a6;
  v24[8] = v31;
  v24[9] = a8;
  v24[10] = v8;
  aBlock[4] = partial apply for closure #1 in AutoBugCaptureManager.generateSnapshot(errorType:errorSubType:subTypeContext:completion:);
  aBlock[5] = v24;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_3;
  v26 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v35 = MEMORY[0x1E69E7CC0];
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_0(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x1E12A90D0](0, v23, v18, v26);
  _Block_release(v26);
  (*(v34 + 8))(v18, v14);
  (*(v20 + 8))(v23, v33);
}

void closure #1 in AutoBugCaptureManager.generateSnapshot(errorType:errorSubType:subTypeContext:completion:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, unint64_t a6, void (*a7)(void), uint64_t a8, void *a9)
{
  v10 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v10 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v10)
  {
    goto LABEL_14;
  }

  v13 = HIBYTE(a4) & 0xF;
  if ((a4 & 0x2000000000000000) == 0)
  {
    v13 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v13)
  {
    goto LABEL_14;
  }

  v16 = HIBYTE(a6) & 0xF;
  if ((a6 & 0x2000000000000000) == 0)
  {
    v16 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (v16)
  {
    v19 = [objc_allocWithZone(MEMORY[0x1E69D4F80]) init];
    v20 = a9[7];
    a9[7] = v19;

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.logger);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v57 = v54;
      *v24 = 136315650;
      *(v24 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v57);
      *(v24 + 12) = 2080;
      *(v24 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v57);
      *(v24 + 22) = 2080;
      *(v24 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a5, a6, &v57);
      _os_log_impl(&dword_1DD1FF000, v22, v23, "AutoBugCaptureManager#generateSnapshot, with errorType: %s, errorSubType: %s and subTypeContext: %s", v24, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12AA0F0](v54, -1, -1);
      MEMORY[0x1E12AA0F0](v24, -1, -1);
    }

    else
    {
    }

    v29 = (*(*a9 + 184))(a1, a2, a3, a4, a5, a6, a9[2], a9[3]);
    v30 = v29;
    if (v29)
    {
      v57 = 0;
      v55 = v29;
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();

      if (v57)
      {
        v31 = (*(*a9 + 192))(v57);

        v32 = Logger.logObject.getter();
        if (v31)
        {
          v33 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v32, v33))
          {
            v34 = swift_slowAlloc();
            v35 = swift_slowAlloc();
            v57 = v35;
            *v34 = 136315138;
            v36 = Dictionary.description.getter();
            v38 = v37;

            v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v36, v38, &v57);

            *(v34 + 4) = v39;
            v40 = "AutoBugCaptureManager#generateSnapshot, generated snapshot for signature: %s";
LABEL_30:
            _os_log_impl(&dword_1DD1FF000, v32, v33, v40, v34, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v35);
            MEMORY[0x1E12AA0F0](v35, -1, -1);
            MEMORY[0x1E12AA0F0](v34, -1, -1);
LABEL_32:

            a7(v31 & 1);

            return;
          }
        }

        else
        {
          v33 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v32, v33))
          {
            v34 = swift_slowAlloc();
            v35 = swift_slowAlloc();
            v57 = v35;
            *v34 = 136315138;
            v50 = Dictionary.description.getter();
            v52 = v51;

            v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v52, &v57);

            *(v34 + 4) = v53;
            v40 = "AutoBugCaptureManager#generateSnapshot, could not generate snapshot for signature: %s";
            goto LABEL_30;
          }
        }

        goto LABEL_32;
      }
    }

    v41 = v30;
    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v57 = v45;
      *v44 = 136315138;
      v46 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo19NSMutableDictionaryCSgMd, &_sSo19NSMutableDictionaryCSgMR);
      v47 = String.init<A>(describing:)();
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v48, &v57);

      *(v44 + 4) = v49;
      _os_log_impl(&dword_1DD1FF000, v42, v43, "AutoBugCaptureManager#generateSnapshot, couldn't parse signature: %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v45);
      MEMORY[0x1E12AA0F0](v45, -1, -1);
      MEMORY[0x1E12AA0F0](v44, -1, -1);
    }

    a7(0);
  }

  else
  {
LABEL_14:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.logger);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_1DD1FF000, v26, v27, "AutoBugCaptureManager#generateSnapshot invalid argument(s) passed in, all strings should be populated", v28, 2u);
      MEMORY[0x1E12AA0F0](v28, -1, -1);
    }

    a7(0);
  }
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

Swift::String __swiftcall AutoBugCaptureManager.detectedProcess()()
{
  if (*(v0 + 48))
  {
    v1 = *(v0 + 40);
    v2 = *(v0 + 48);
  }

  else
  {
    v2 = 0x80000001DD26B410;
    v1 = 0xD000000000000011;
  }

  v3 = v1;
  v4 = v2;
  result._object = v4;
  result._countAndFlagsBits = v3;
  return result;
}

NSMutableDictionary_optional __swiftcall AutoBugCaptureManager.createSignature(errorType:errorSubType:subTypeContext:domain:)(Swift::String errorType, Swift::String errorSubType, Swift::String subTypeContext, Swift::String domain)
{
  v5 = v4[7];
  if (v5)
  {
    countAndFlagsBits = domain._countAndFlagsBits;
    v7 = errorSubType._countAndFlagsBits;
    object = errorType._object;
    v9 = errorType._countAndFlagsBits;
    v10 = *(*v4 + 176);
    v11 = errorSubType._object;
    v12 = domain._object;
    v13 = v5;
    v14 = v10();
    v16 = outlined bridged method (mbgbgbgbgbnnn) of @objc SDRDiagnosticReporter.signature(withDomain:type:subType:subtypeContext:detectedProcess:triggerThresholdValues:)(countAndFlagsBits, v12, v9, object, v7, v11, subTypeContext._countAndFlagsBits, subTypeContext._object, v14, v15, 0, v13);

    errorType._countAndFlagsBits = v16;
  }

  else
  {
    errorType._countAndFlagsBits = 0;
  }

  return *&errorType._countAndFlagsBits;
}

Swift::Bool __swiftcall AutoBugCaptureManager.createSnapshot(signature:)(Swift::OpaquePointer signature)
{
  v2 = *(v1 + 56);
  if (v2)
  {
    v4 = *(v1 + 32);
    v9[4] = closure #1 in AutoBugCaptureManager.createSnapshot(signature:);
    v9[5] = 0;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = thunk for @escaping @callee_guaranteed (@guaranteed [AnyHashable : Any]?) -> ();
    v9[3] = &block_descriptor_3;
    v5 = _Block_copy(v9);
    v6 = v2;
    v7 = outlined bridged method (mbgnnnnnn) of @objc SDRDiagnosticReporter.snapshot(withSignature:duration:event:payload:reply:)(v4, signature._rawValue, 0, 0, v5, v6);
    _Block_release(v5);
  }

  else
  {
    v7 = 0;
  }

  return v7 & 1;
}

void closure #1 in AutoBugCaptureManager.createSnapshot(signature:)(uint64_t a1)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.logger);

  oslog = Logger.logObject.getter();
  v2 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315138;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGSgMd, &_sSDys11AnyHashableVypGSgMR);
    v5 = String.init<A>(describing:)();
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, &v9);

    *(v3 + 4) = v7;
    _os_log_impl(&dword_1DD1FF000, oslog, v2, "AutoBugCaptureManager#createSnapshot, DiagnosticReporter snapshot response: %s", v3, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v4);
    MEMORY[0x1E12AA0F0](v4, -1, -1);
    MEMORY[0x1E12AA0F0](v3, -1, -1);
  }

  else
  {
  }
}

uint64_t AutoBugCaptureManager.deinit()
{

  return v0;
}

uint64_t AutoBugCaptureManager.__deallocating_deinit()
{
  AutoBugCaptureManager.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 64, 7);
}

id outlined bridged method (mbgbgbgbgbnnn) of @objc SDRDiagnosticReporter.signature(withDomain:type:subType:subtypeContext:detectedProcess:triggerThresholdValues:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12)
{
  v18 = MEMORY[0x1E12A8BC0](a1, a2);
  v19 = MEMORY[0x1E12A8BC0](a3, a4);
  v20 = MEMORY[0x1E12A8BC0](a5, a6);
  v21 = MEMORY[0x1E12A8BC0](a7, a8);
  v22 = MEMORY[0x1E12A8BC0](a9, a10);

  v23 = [a12 signatureWithDomain:v18 type:v19 subType:v20 subtypeContext:v21 detectedProcess:v22 triggerThresholdValues:a11];

  return v23;
}

id outlined bridged method (mbgnnnnnn) of @objc SDRDiagnosticReporter.snapshot(withSignature:duration:event:payload:reply:)(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v12 = [a6 snapshotWithSignature:isa duration:a3 event:a4 payload:a5 reply:a1];

  return v12;
}

uint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t protocol witness for MockableEnvironmentProvider.mock<A>(override:run:) in conformance NetworkAvailability()
{
  OUTLINED_FUNCTION_0_24();
  v0 = type metadata accessor for NetworkAvailability();
  return OUTLINED_FUNCTION_1_19(v0);
}

uint64_t MockableEnvironmentProvider.mock<A>(override:run:)(uint64_t a1, void (*a2)(uint64_t), uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for EnvironmentProviderMockHelper(0, AssociatedTypeWitness, AssociatedConformanceWitness, v12);
  v13 = EnvironmentProviderMockHelper.__allocating_init(overrides:)(a1);
  v14 = *(a6 + 64);

  v15 = v14(v13, a4, a6);
  v16 = (*(*v13 + 152))();
  a2(v16);
  $defer #1 <A><A1>() in MockableEnvironmentProvider.mock<A>(override:run:)(v6, v15, a4, a5, a6);
}

{
  return MockableEnvironmentProvider.mock<A>(override:run:)(a1, a2, a3, a5, a4, a6);
}

uint64_t specialized MockableEnvironmentProvider.install(_:)(uint64_t a1)
{
  v3 = (*(*v1 + 184))();
  type metadata accessor for CurrentDevice();
  lazy protocol witness table accessor for type CoreTelephonyService and conformance CoreTelephonyService(&lazy protocol witness table cache variable for type CurrentDevice and conformance CurrentDevice, type metadata accessor for CurrentDevice, &protocol conformance descriptor for CurrentDevice);
  dispatch thunk of ObservableObject.objectWillChange.getter();
  ObservableObjectPublisher.send()();

  if (a1)
  {
    v4 = static CurrentDevice.adjustMock(_:)(a1);
  }

  else
  {
    v4 = 0;
  }

  (*(*v1 + 192))(v4);
  return v3;
}

{
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x60))();
  type metadata accessor for CurrentProcess();
  lazy protocol witness table accessor for type CoreTelephonyService and conformance CoreTelephonyService(&lazy protocol witness table cache variable for type CurrentProcess and conformance CurrentProcess, type metadata accessor for CurrentProcess, &protocol conformance descriptor for CurrentProcess);
  dispatch thunk of ObservableObject.objectWillChange.getter();
  ObservableObjectPublisher.send()();

  v4 = *((*v2 & *v1) + 0x68);

  v4(v5);
  return v3;
}

{
  v2 = (*(*v1 + 176))();
  type metadata accessor for NetworkAvailability();
  lazy protocol witness table accessor for type CoreTelephonyService and conformance CoreTelephonyService(&lazy protocol witness table cache variable for type NetworkAvailability and conformance NetworkAvailability, type metadata accessor for NetworkAvailability, &protocol conformance descriptor for NetworkAvailability);
  dispatch thunk of ObservableObject.objectWillChange.getter();
  ObservableObjectPublisher.send()();

  v3 = *(*v1 + 184);

  v3(v4);
  return v2;
}

{
  v2 = (*(*v1 + 136))();
  type metadata accessor for CoreTelephonyService();
  lazy protocol witness table accessor for type CoreTelephonyService and conformance CoreTelephonyService(&lazy protocol witness table cache variable for type CoreTelephonyService and conformance CoreTelephonyService, type metadata accessor for CoreTelephonyService, &protocol conformance descriptor for CoreTelephonyService);
  dispatch thunk of ObservableObject.objectWillChange.getter();
  ObservableObjectPublisher.send()();

  v3 = *(*v1 + 144);

  v3(v4);
  return v2;
}

void MockableEnvironmentProvider.install(_:)()
{
  OUTLINED_FUNCTION_15_7();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_5_11();
  v7 = MEMORY[0x1EEE9AC00](v6);
  MEMORY[0x1EEE9AC00](v7);
  v23 = (*(v1 + 32))(v3, v1);
  dispatch thunk of ObservableObject.objectWillChange.getter();
  type metadata accessor for ObservableObjectPublisher();
  if (swift_dynamicCast())
  {
    ObservableObjectPublisher.send()();
LABEL_5:

    goto LABEL_11;
  }

  dispatch thunk of ObservableObject.objectWillChange.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd, &_s7Combine18PassthroughSubjectCyyts5NeverOGMR);
  if (swift_dynamicCast())
  {
    lazy protocol witness table accessor for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>();
    Subject<>.send()();
    goto LABEL_5;
  }

  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.logger);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v25 = v22;
    *v12 = 136315138;
    swift_getAssociatedTypeWitness();
    v13 = _typeName(_:qualified:)();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v25);

    *(v12 + 4) = v15;
    _os_log_impl(&dword_1DD1FF000, v10, v11, "Unable to signal objectWillChange for provider of type %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v22);
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

LABEL_11:
  v24 = v5;
  MEMORY[0x1EEE9AC00](v8);
  *(&v21 - 2) = v3;
  *(&v21 - 1) = v1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = type metadata accessor for EnvironmentProviderMockHelper(255, AssociatedTypeWitness, AssociatedConformanceWitness, v18);
  type metadata accessor for Optional();
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF(partial apply for closure #1 in MockableEnvironmentProvider.install(_:), v19, v20, &v25);
  (*(v1 + 40))(v25, v3, v1);
  OUTLINED_FUNCTION_14();
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF@<X0>(void (*a1)(uint64_t, uint64_t)@<X0>, uint64_t a2@<X4>, uint64_t a3@<X6>, uint64_t a4@<X8>)
{
  OUTLINED_FUNCTION_0_1();
  v28 = v7;
  v29 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_8_0();
  v11 = v10 - v9;
  v13 = *(v12 + 16);
  OUTLINED_FUNCTION_0_1();
  v15 = v14;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_8_0();
  v19 = v18 - v17;
  OUTLINED_FUNCTION_0_1();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_8_0();
  v23 = v22 - v21;
  (*(v24 + 16))(v22 - v21, v25);
  v26 = 1;
  if (__swift_getEnumTagSinglePayload(v23, 1, v13) != 1)
  {
    (*(v15 + 32))(v19, v23, v13);
    a1(v19, v11);
    (*(v15 + 8))(v19, v13);
    if (v4)
    {
      return (*(v28 + 32))(a3, v11, v29);
    }

    v26 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a4, v26, 1, a2);
}

uint64_t EnvironmentProviderMockHelper.__allocating_init(overrides:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t protocol witness for MockableEnvironmentProvider.mock<A>(override:run:) in conformance CurrentDevice()
{
  OUTLINED_FUNCTION_0_24();
  v0 = type metadata accessor for CurrentDevice();
  return OUTLINED_FUNCTION_1_19(v0);
}

uint64_t protocol witness for MockableEnvironmentProvider.mock<A>(override:run:) in conformance CurrentProcess()
{
  OUTLINED_FUNCTION_0_24();
  v0 = type metadata accessor for CurrentProcess();
  return OUTLINED_FUNCTION_1_19(v0);
}

uint64_t MockableEnvironmentProvider.mock<A>(override:run:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  return MEMORY[0x1EEE6DFA0](MockableEnvironmentProvider.mock<A>(override:run:));
}

uint64_t MockableEnvironmentProvider.mock<A>(override:run:)()
{
  v1 = v0[8];
  v2 = v0[6];
  v4 = v0[3];
  v3 = v0[4];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for EnvironmentProviderMockHelper(0, AssociatedTypeWitness, AssociatedConformanceWitness, v7);
  v8 = EnvironmentProviderMockHelper.__allocating_init(overrides:)(v4);
  v0[10] = v8;
  v9 = *(v1 + 64);

  v0[11] = v9(v8, v2, v1);
  (*(*v8 + 152))();
  v13 = (v3 + *v3);
  v10 = swift_task_alloc();
  v0[12] = v10;
  *v10 = v0;
  v10[1] = MockableEnvironmentProvider.mock<A>(override:run:);
  v11 = v0[2];

  return v13(v11);
}

{
  *(*v1 + 104) = v0;

  if (v0)
  {
    v2 = MockableEnvironmentProvider.mock<A>(override:run:);
  }

  else
  {
    v2 = MockableEnvironmentProvider.mock<A>(override:run:);
  }

  return MEMORY[0x1EEE6DFA0](v2);
}

{
  OUTLINED_FUNCTION_14_7();

  v1 = *(v0 + 8);

  return v1();
}

{
  OUTLINED_FUNCTION_14_7();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t $defer #1 <A><A1>() in MockableEnvironmentProvider.mock<A>(override:run:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  (*(a5 + 64))(a2, a3, a5, a4);
}

uint64_t partial apply for closure #1 in MockableEnvironmentProvider.install(_:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(*(v2 + 24) + 72))(*a1);
  *a2 = result;
  return result;
}

uint64_t EnvironmentProviderMockHelper.overrides<A>(_:)(uint64_t a1, uint64_t a2)
{
  EnvironmentProviderMockHelper.overrides.getter(a1, a2);
  OUTLINED_FUNCTION_10_5();
  type metadata accessor for PartialKeyPath();

  type metadata accessor for Dictionary.Keys();
  swift_getWitnessTable();
  v2 = Sequence<>.contains(_:)();

  return v2 & 1;
}

uint64_t EnvironmentProviderMockHelper.subscript.getter@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = EnvironmentProviderMockHelper.overrides.getter(a1, a2);
  v11 = a1;
  v7 = type metadata accessor for PartialKeyPath();

  MEMORY[0x1E12A8B50](v12, &v11, v6, v7, MEMORY[0x1E69E7CA0] + 8, MEMORY[0x1E69E6930]);

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  v8 = *(v5 + *MEMORY[0x1E69E77B0] + 8);
  v9 = swift_dynamicCast();
  return __swift_storeEnumTagSinglePayload(a3, v9 ^ 1u, 1, v8);
}

uint64_t EnvironmentProviderMockHelper.backfill(previousMock:)(uint64_t result, uint64_t a2)
{
  if (result)
  {
    EnvironmentProviderMockHelper.overrides.getter(result, a2);
    swift_beginAccess();
    type metadata accessor for PartialKeyPath();
    type metadata accessor for Dictionary();

    Dictionary.merge(_:uniquingKeysWith:)();
    swift_endAccess();
  }

  return result;
}

uint64_t EnvironmentProviderMockHelper.__deallocating_deinit()
{
  EnvironmentProviderMockHelper.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t key path setter for MockablePublished.value : <A>MockablePublished<A>(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v7 - v3;
  (*(v5 + 16))(&v7 - v3);
  return (*(**a2 + 112))(v4);
}

uint64_t (*MockablePublished.value.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_12_11();
  return PluginCapabilityCatalog.capabilityCache.modify;
}

uint64_t key path setter for MockablePublished.wrappedValue : <A>MockablePublished<A>(uint64_t a1, uint64_t a2)
{
  MEMORY[0x1EEE9AC00](a1);
  v4 = &v7 - v3;
  (*(v5 + 16))(&v7 - v3);
  return (*(**a2 + 136))(v4);
}

uint64_t MockablePublished.wrappedValue.getter()
{
  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.logger);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v3 = 136315650;
    v4 = StaticString.description.getter();
    v6 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, &v8);

    *(v3 + 4) = v6;
    *(v3 + 12) = 2048;
    *(v3 + 14) = 148;
    *(v3 + 22) = 2080;
    *(v3 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6465737520746F6ELL, 0xE800000000000000, &v8);
    _os_log_impl(&dword_1DD1FF000, v1, v2, "FatalError at %s:%lu - %s", v3, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t MockablePublished.wrappedValue.setter(uint64_t a1)
{
  v9[0] = 0;
  v9[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(28);
  MEMORY[0x1E12A8C40](0xD00000000000001ALL, 0x80000001DD26B560);
  DefaultStringInterpolation.appendInterpolation<A>(_:)();
  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_0_2();
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.logger);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v9[0] = swift_slowAlloc();
    *v4 = 136315650;
    v5 = StaticString.description.getter();
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, v9);

    *(v4 + 4) = v7;
    *(v4 + 12) = 2048;
    *(v4 + 14) = 151;
    *(v4 + 22) = 2080;
    *(v4 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, v9);
    _os_log_impl(&dword_1DD1FF000, v2, v3, "FatalError at %s:%lu - %s", v4, 0x20u);
    swift_arrayDestroy();
    OUTLINED_FUNCTION_27();
    OUTLINED_FUNCTION_27();
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

void key path setter for static MockablePublished.subscript<A>(_enclosingInstance:wrapped:storage:) : <A><A1>MockablePublished<A>.TypeAA1(uint64_t a1)
{
  MEMORY[0x1EEE9AC00](a1);
  (*(v1 + 16))(&v3 - v2);
  swift_unknownObjectRetain();

  static MockablePublished.subscript.setter();
}

void (*static MockablePublished.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))()
{
  v11 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v11;
  v11[3] = a5;
  v11[4] = v5;
  v11[1] = a3;
  v11[2] = a4;
  *v11 = a2;
  v11[5] = *(v5 + 80);
  OUTLINED_FUNCTION_0_1();
  *(v12 + 48) = v13;
  v15 = *(v14 + 64);
  v11[7] = __swift_coroFrameAllocStub(v15);
  v11[8] = __swift_coroFrameAllocStub(v15);
  static MockablePublished.subscript.getter();
  return static MockablePublished.subscript.modify;
}

void static MockablePublished.subscript.modify()
{
  OUTLINED_FUNCTION_15_7();
  v1 = *v0;
  v2 = *(*v0 + 56);
  v3 = *(*v0 + 64);
  if (v4)
  {
    v5 = *(v1 + 40);
    v6 = *(v1 + 48);
    (*(v6 + 16))(*(*v0 + 56), v3, v5);

    swift_unknownObjectRetain();
    static MockablePublished.subscript.setter();
    (*(v6 + 8))(v3, v5);
  }

  else
  {

    swift_unknownObjectRetain();
    static MockablePublished.subscript.setter();
  }

  free(v3);
  free(v2);
  OUTLINED_FUNCTION_14();

  free(v7);
}

void *key path getter for MockablePublished.projectedValue : <A>MockablePublished<A>@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = (*(**a1 + 152))(&v4);
  *a2 = v4;
  return result;
}

uint64_t key path setter for MockablePublished.projectedValue : <A>MockablePublished<A>(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  v5 = *a1;
  v3 = *(*v2 + 160);

  return v3(&v5);
}

uint64_t MockablePublished.projectedValue.setter(uint64_t *a1)
{
  v2 = *a1;
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 96);
  swift_beginAccess();
  *(v1 + v4) = v2;
}

uint64_t (*MockablePublished.projectedValue.modify())(uint64_t a1)
{
  OUTLINED_FUNCTION_7();
  OUTLINED_FUNCTION_12_11();
  return SiriEnvironmentStorage.storage.modify;
}

uint64_t MockablePublished.__allocating_init(wrappedValue:)(uint64_t a1)
{
  v2 = swift_allocObject();
  MockablePublished.init(wrappedValue:)(a1);
  return v2;
}

uint64_t protocol witness for MockableEnvironmentProvider.mock<A>(override:run:) in conformance CoreTelephonyService()
{
  OUTLINED_FUNCTION_0_24();
  v0 = type metadata accessor for CoreTelephonyService();
  return OUTLINED_FUNCTION_1_19(v0);
}

unint64_t lazy protocol witness table accessor for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>()
{
  result = lazy protocol witness table cache variable for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>;
  if (!lazy protocol witness table cache variable for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine18PassthroughSubjectCyyts5NeverOGMd, &_s7Combine18PassthroughSubjectCyyts5NeverOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PassthroughSubject<(), Never> and conformance PassthroughSubject<A, B>);
  }

  return result;
}

uint64_t type metadata completion function for MockablePublished(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

void *__swift_assignWithTake_strong(void *a1, void *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t lazy protocol witness table accessor for type CoreTelephonyService and conformance CoreTelephonyService(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t DeviceIdiom.semanticValueKey.getter()
{
  result = 0x79616C705F726163;
  switch(*v0)
  {
    case 1:
      result = 0x646F70656D6F68;
      break;
    case 2:
      result = 6513005;
      break;
    case 3:
      result = 1684107369;
      break;
    case 4:
      result = 1685024873;
      break;
    case 5:
      result = 0x656E6F687069;
      break;
    case 6:
      result = 0x61775F656C707061;
      break;
    case 7:
      result = 0x76745F656C707061;
      break;
    case 8:
      result = 0x5F7974696C616572;
      break;
    case 9:
      result = 0x746375646F7270;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t static TypeIdentifier.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t TypeIdentifier.init<A>(encoding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  v7 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  (*(v7 + 16))(&v13 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0), a1, a2);
  v9 = String.init<A>(_:)();
  v11 = v10;
  result = (*(v7 + 8))(a1, a2);
  *a4 = v9;
  a4[1] = v11;
  return result;
}

uint64_t TypeIdentifier.encoding.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TypeIdentifier.typeName.getter()
{
  v1 = *v0;
  v2 = v0[1];

  _s13SiriUtilities15TypeInformationV8encodingACx_tcSyRzlufCSS_Tt1g5(v1, v2, &v5);
  v3 = TypeInformation.typeName.getter();
  outlined destroy of TypeInformation(&v5);
  return v3;
}

uint64_t TypeIdentifier.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_5_1();
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    OUTLINED_FUNCTION_5_1();
    dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    v5 = String.init<A>(_:)();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_0(v9);
    *a2 = v5;
    a2[1] = v7;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t TypeIdentifier.description.getter()
{
  v1 = *v0;
  v2 = v0[1];

  _s13SiriUtilities15TypeInformationV8encodingACx_tcSyRzlufCSS_Tt1g5(v1, v2, &v10);
  v3 = TypeInformation.typeName.getter();
  v5 = v4;
  outlined destroy of TypeInformation(&v10);
  lazy protocol witness table accessor for type String and conformance String();
  if (StringProtocol.contains<A>(_:)())
  {

    _StringGuts.grow(_:)(30);

    v9 = 0xD00000000000001ALL;
    MEMORY[0x1E12A8C40](v1, v2);
    v6 = 10530;
    v7 = 0xE200000000000000;
  }

  else
  {
    _StringGuts.grow(_:)(28);

    v9 = 0xD000000000000014;
    MEMORY[0x1E12A8C40](v3, v5);

    v6 = 0x29666C65732ELL;
    v7 = 0xE600000000000000;
  }

  MEMORY[0x1E12A8C40](v6, v7);
  return v9;
}

uint64_t one-time initialization function for any(uint64_t a1, uint64_t a2, void *a3, void *a4)
{
  TypeInformation.init(for:)(v9);
  v7 = v10;
  v6 = v11;

  result = outlined destroy of TypeInformation(v9);
  *a3 = v7;
  *a4 = v6;
  return result;
}

Swift::Int TypeIdentifier.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t static _EnvironmentProviderTable.publisher<A>(for:)(char *a1, uint64_t a2, uint64_t a3)
{
  v54 = a3;
  if (one-time initialization token for lock == -1)
  {
    goto LABEL_2;
  }

  while (1)
  {
    swift_once();
LABEL_2:
    v3 = static _EnvironmentProviderTable.lock;
    [static _EnvironmentProviderTable.lock lock];
    if (one-time initialization token for table != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v60[0] = MEMORY[0x1E69E7CC0];
    v56 = v3;
    if ((static _EnvironmentProviderTable.table & 0xC000000000000001) != 0)
    {
      v4 = 0;
      v5 = 0;
      v6 = 0;
      v7 = __CocoaDictionary.makeIterator()() | 0x8000000000000000;
    }

    else
    {
      v8 = -1 << *(static _EnvironmentProviderTable.table + 32);
      v5 = ~v8;
      v4 = static _EnvironmentProviderTable.table + 64;
      v9 = -v8;
      v10 = v9 < 64 ? ~(-1 << v9) : -1;
      v6 = v10 & *(static _EnvironmentProviderTable.table + 8);
      v7 = static _EnvironmentProviderTable.table;
    }

    v11 = 0;
    if ((v7 & 0x8000000000000000) != 0)
    {
      break;
    }

LABEL_11:
    v12 = v11;
    v13 = v6;
    v14 = v11;
    if (v6)
    {
LABEL_15:
      v15 = (v13 - 1) & v13;
      v16 = *(*(v7 + 48) + ((v14 << 9) | (8 * __clz(__rbit64(v13)))));

      if (v16)
      {
        goto LABEL_19;
      }

      goto LABEL_24;
    }

    while (1)
    {
      v14 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v14 >= ((v5 + 64) >> 6))
      {
        goto LABEL_24;
      }

      v13 = *&v4[8 * v14];
      ++v12;
      if (v13)
      {
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
  }

  while (1)
  {
    v17 = __CocoaDictionary.Iterator.nextKey()();
    if (!v17)
    {
      break;
    }

    v61 = v17;
    type metadata accessor for _EnvironmentProviderTable.Key();
    swift_dynamicCast();
    v14 = v11;
    v15 = v6;
    if (!v62)
    {
      break;
    }

LABEL_19:
    if (swift_unknownObjectWeakLoadStrong())
    {

      swift_unknownObjectRelease();
    }

    else
    {
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
    }

    v11 = v14;
    v6 = v15;
    if ((v7 & 0x8000000000000000) == 0)
    {
      goto LABEL_11;
    }
  }

LABEL_24:
  outlined consume of [String : Data].Iterator._Variant(v7);
  v18 = v60[0];
  v19 = 0;
  v57 = v60[0] & 0xC000000000000001;
  v58 = specialized Array._getCount()(v60[0]);
  v59 = v18;
  while (v19 != v58)
  {
    if (v57)
    {
      MEMORY[0x1E12A9320](v19, v59);
    }

    else
    {
      if (v19 >= *(v59 + 16))
      {
        goto LABEL_73;
      }
    }

    if (__OFADD__(v19++, 1))
    {
      goto LABEL_72;
    }

    swift_beginAccess();
    if ((static _EnvironmentProviderTable.table & 0xC000000000000001) == 0)
    {
      specialized __RawDictionaryStorage.find<A>(_:)();
      if ((v40 & 1) == 0)
      {
        goto LABEL_57;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v60[0] = static _EnvironmentProviderTable.table;
      v42 = *(static _EnvironmentProviderTable.table + 3);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy13SiriUtilities25_EnvironmentProviderTable33_3C3D89445BD9D10E112FF83FF3C559F0LLO3KeyCyXlGMd, &_ss17_NativeDictionaryVy13SiriUtilities25_EnvironmentProviderTable33_3C3D89445BD9D10E112FF83FF3C559F0LLO3KeyCyXlGMR);
      _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v42);
      v43 = v60[0];

      type metadata accessor for _EnvironmentProviderTable.Key();
      lazy protocol witness table accessor for type _EnvironmentProviderTable.Key and conformance _EnvironmentProviderTable.Key(&lazy protocol witness table cache variable for type _EnvironmentProviderTable.Key and conformance _EnvironmentProviderTable.Key, type metadata accessor for _EnvironmentProviderTable.Key, &protocol conformance descriptor for _EnvironmentProviderTable.Key);
      _NativeDictionary._delete(at:)();
      static _EnvironmentProviderTable.table = v43;
      goto LABEL_56;
    }

    if (static _EnvironmentProviderTable.table < 0)
    {
      v21 = static _EnvironmentProviderTable.table;
    }

    else
    {
      v21 = (static _EnvironmentProviderTable.table & 0xFFFFFFFFFFFFFF8);
    }

    v22 = __CocoaDictionary.lookup(_:)();

    if (v22)
    {
      swift_unknownObjectRelease();

      if (MEMORY[0x1E12A9490](v21))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy13SiriUtilities25_EnvironmentProviderTable33_3C3D89445BD9D10E112FF83FF3C559F0LLO3KeyCyXlGMd, &_ss18_DictionaryStorageCy13SiriUtilities25_EnvironmentProviderTable33_3C3D89445BD9D10E112FF83FF3C559F0LLO3KeyCyXlGMR);
        v23 = static _DictionaryStorage.convert(_:capacity:)();
        v61 = v23;
        __CocoaDictionary.makeIterator()();
        while (1)
        {
          v24 = __CocoaDictionary.Iterator.next()();
          if (!v24)
          {

            goto LABEL_54;
          }

          v26 = v25;
          v60[0] = v24;
          type metadata accessor for _EnvironmentProviderTable.Key();
          swift_dynamicCast();
          v27 = *(v23 + 16);
          if (*(v23 + 24) <= v27)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v27 + 1, 1);
          }

          v28 = v60[9];
          v23 = v61;
          Hasher.init(_seed:)();
          MEMORY[0x1E12A9750](*(v28 + 16));
          v29 = v60;
          v30 = Hasher._finalize()();
          v31 = v23 + 64;
          v32 = -1 << *(v23 + 32);
          v33 = v30 & ~v32;
          v34 = v33 >> 6;
          if (((-1 << v33) & ~*(v23 + 64 + 8 * (v33 >> 6))) == 0)
          {
            break;
          }

          v35 = __clz(__rbit64((-1 << v33) & ~*(v23 + 64 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_49:
          *(v31 + ((v35 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v35;
          *(*(v23 + 48) + 8 * v35) = v28;
          *(*(v23 + 56) + 8 * v35) = v26;
          ++*(v23 + 16);
        }

        v36 = 0;
        v37 = (63 - v32) >> 6;
        while (++v34 != v37 || (v36 & 1) == 0)
        {
          v38 = v34 == v37;
          if (v34 == v37)
          {
            v34 = 0;
          }

          v36 |= v38;
          v39 = *(v31 + 8 * v34);
          if (v39 != -1)
          {
            v35 = __clz(__rbit64(~v39)) + (v34 << 6);
            goto LABEL_49;
          }
        }

        __break(1u);
LABEL_63:
        v47 = v56;
        if (v29[2])
        {
          specialized __RawDictionaryStorage.find<A>(_:)();
          if (v48)
          {
            swift_unknownObjectRetain();
            goto LABEL_66;
          }
        }

LABEL_68:
        swift_endAccess();
        goto LABEL_69;
      }

      v23 = MEMORY[0x1E69E7CC8];
LABEL_54:
      specialized __RawDictionaryStorage.find<A>(_:)();
      if ((v44 & 1) == 0)
      {
        goto LABEL_74;
      }

      type metadata accessor for _EnvironmentProviderTable.Key();
      lazy protocol witness table accessor for type _EnvironmentProviderTable.Key and conformance _EnvironmentProviderTable.Key(&lazy protocol witness table cache variable for type _EnvironmentProviderTable.Key and conformance _EnvironmentProviderTable.Key, type metadata accessor for _EnvironmentProviderTable.Key, &protocol conformance descriptor for _EnvironmentProviderTable.Key);
      _NativeDictionary._delete(at:)();

      static _EnvironmentProviderTable.table = v23;
LABEL_56:
      swift_unknownObjectRelease();
    }

LABEL_57:
    swift_endAccess();
  }

  type metadata accessor for _EnvironmentProviderTable.Key();
  swift_allocObject();
  v45 = swift_unknownObjectRetain();
  v23 = _EnvironmentProviderTable.Key.init(object:)(v45);
  swift_beginAccess();
  v29 = static _EnvironmentProviderTable.table;
  if ((static _EnvironmentProviderTable.table & 0xC000000000000001) == 0)
  {
    goto LABEL_63;
  }

  v46 = __CocoaDictionary.lookup(_:)();

  v47 = v56;
  if (!v46)
  {
    goto LABEL_68;
  }

LABEL_66:
  swift_endAccess();
  type metadata accessor for EnvironmentProviderDidChangePublisher();
  v49 = swift_dynamicCastClass();
  if (v49)
  {
    goto LABEL_70;
  }

  swift_unknownObjectRelease();
LABEL_69:
  type metadata accessor for EnvironmentProviderDidChangePublisher();
  v50 = *(v54 + 8);
  v51 = swift_unknownObjectRetain();
  v49 = EnvironmentProviderDidChangePublisher.__allocating_init<A>(source:)(v51, a2, v50);
  swift_beginAccess();

  specialized Dictionary._Variant.setValue(_:forKey:)(v52, v23);
  swift_endAccess();

LABEL_70:

  [v47 unlock];
  return v49;
}

uint64_t EnvironmentProviderDidChangePublisher.init<A>(source:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v56 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v52 = v37 - v6;
  v7 = type metadata accessor for OS_dispatch_queue.SchedulerTimeType.Stride();
  v53 = *(v7 - 8);
  v54 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v51 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v49 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine19CurrentValueSubjectCyyts5NeverOGMd, &_s7Combine19CurrentValueSubjectCyyts5NeverOGMR);
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v44 = AssociatedConformanceWitness;
  v43 = lazy protocol witness table accessor for type CurrentValueSubject<(), Never> and conformance CurrentValueSubject<A, B>();
  v57 = AssociatedTypeWitness;
  v58 = v12;
  v59 = AssociatedConformanceWitness;
  v60 = v43;
  v14 = type metadata accessor for Publishers.CombineLatest();
  v48 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v38 = v37 - v15;
  WitnessTable = swift_getWitnessTable();
  v16 = type metadata accessor for Publishers.Map();
  v50 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v39 = v37 - v17;
  v18 = type metadata accessor for OS_dispatch_queue();
  v37[1] = v18;
  v19 = swift_getWitnessTable();
  v41 = v19;
  v40 = lazy protocol witness table accessor for type _EnvironmentProviderTable.Key and conformance _EnvironmentProviderTable.Key(&lazy protocol witness table cache variable for type OS_dispatch_queue and conformance OS_dispatch_queue, type metadata accessor for OS_dispatch_queue, MEMORY[0x1E69E8028]);
  v57 = v16;
  v58 = v18;
  v59 = v19;
  v60 = v40;
  v20 = type metadata accessor for Publishers.Debounce();
  v21 = *(v20 - 8);
  v46 = v20;
  v47 = v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = v37 - v22;
  swift_allocObject();
  v24 = CurrentValueSubject.init(_:)();
  v25 = v55;
  *(v55 + 24) = v24;
  v26 = v45;
  dispatch thunk of ObservableObject.objectWillChange.getter();
  v57 = *(v25 + 24);
  v27 = v38;
  Publisher.combineLatest<A>(_:)();
  (*(v49 + 8))(v11, AssociatedTypeWitness);
  v28 = swift_allocObject();
  *(v28 + 16) = a2;
  *(v28 + 24) = v26;
  v29 = v39;
  Publisher.map<A>(_:)();

  (*(v48 + 8))(v27, v14);
  v30 = v51;
  OS_dispatch_queue.SchedulerTimeType.Stride.init(floatLiteral:)();
  v31 = static OS_dispatch_queue.main.getter();
  v57 = v31;
  v32 = type metadata accessor for OS_dispatch_queue.SchedulerOptions();
  v33 = v52;
  __swift_storeEnumTagSinglePayload(v52, 1, 1, v32);
  Publisher.debounce<A>(for:scheduler:options:)();
  outlined destroy of OS_dispatch_queue.SchedulerOptions?(v33);

  (*(v53 + 8))(v30, v54);
  (*(v50 + 8))(v29, v16);
  v34 = v46;
  swift_getWitnessTable();
  v35 = Publisher.eraseToAnyPublisher()();
  swift_unknownObjectRelease();
  (*(v47 + 8))(v23, v34);
  result = v55;
  *(v55 + 16) = v35;
  return result;
}

uint64_t EnvironmentProviderDidChangePublisher.deinit()
{

  return v0;
}

uint64_t EnvironmentProviderDidChangePublisher.__deallocating_deinit()
{
  EnvironmentProviderDidChangePublisher.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t _EnvironmentProviderTable.Key.init(object:)(uint64_t a1)
{
  swift_unknownObjectWeakInit();
  *(v1 + 16) = a1;
  swift_unknownObjectWeakAssign();
  swift_unknownObjectRelease();
  return v1;
}

uint64_t _EnvironmentProviderTable.Key.__deallocating_deinit()
{
  outlined destroy of weak Swift.AnyObject?(v0 + 24);

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

Swift::Int _EnvironmentProviderTable.Key.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A9750](*(v0 + 16));
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance _EnvironmentProviderTable.Key(uint64_t a1)
{
  Hasher.init(_seed:)();
  _EnvironmentProviderTable.Key.hash(into:)();
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type CurrentValueSubject<(), Never> and conformance CurrentValueSubject<A, B>()
{
  result = lazy protocol witness table cache variable for type CurrentValueSubject<(), Never> and conformance CurrentValueSubject<A, B>;
  if (!lazy protocol witness table cache variable for type CurrentValueSubject<(), Never> and conformance CurrentValueSubject<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s7Combine19CurrentValueSubjectCyyts5NeverOGMd, &_s7Combine19CurrentValueSubjectCyyts5NeverOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CurrentValueSubject<(), Never> and conformance CurrentValueSubject<A, B>);
  }

  return result;
}

uint64_t outlined destroy of OS_dispatch_queue.SchedulerOptions?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMd, &_sSo17OS_dispatch_queueC8DispatchE16SchedulerOptionsVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id one-time initialization function for lock()
{
  result = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  static _EnvironmentProviderTable.lock = result;
  return result;
}

uint64_t specialized Array._getCount()(unint64_t a1)
{
  if (a1 >> 62)
  {
    JUMPOUT(0x1E12A94E0);
  }

  return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
}

uint64_t specialized UnsafeMutablePointer.assign(repeating:count:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_1DD269440;
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

uint64_t _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfC13SiriUtilities25_EnvironmentProviderTable33_3C3D89445BD9D10E112FF83FF3C559F0LLO3KeyC_yXlTt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy13SiriUtilities25_EnvironmentProviderTable33_3C3D89445BD9D10E112FF83FF3C559F0LLO3KeyCyXlGMd, &_ss18_DictionaryStorageCy13SiriUtilities25_EnvironmentProviderTable33_3C3D89445BD9D10E112FF83FF3C559F0LLO3KeyCyXlGMR);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v8 = v2;
    __CocoaDictionary.makeIterator()();
    while (__CocoaDictionary.Iterator.next()())
    {
      v4 = v3;
      type metadata accessor for _EnvironmentProviderTable.Key();
      swift_dynamicCast();
      v5 = *(v2 + 16);
      if (*(v2 + 24) <= v5)
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v5 + 1, 1);
      }

      v2 = v8;
      specialized _NativeDictionary._unsafeInsertNew(key:value:)(v7, v4, v8);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CC8];
  }

  return v2;
}

void specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)()
{
  OUTLINED_FUNCTION_4_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4DataVGMd, &_ss18_DictionaryStorageCySS10Foundation4DataVGMR);
  v6 = OUTLINED_FUNCTION_5_17();
  if (!*(v1 + 16))
  {
LABEL_28:

LABEL_29:
    *v0 = v6;
    return;
  }

  OUTLINED_FUNCTION_0_25();
  if (!v2)
  {
LABEL_4:
    v7 = v4;
    while (1)
    {
      v4 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v4 >= v0)
      {
        break;
      }

      ++v7;
      if (v3[v4])
      {
        OUTLINED_FUNCTION_12_12();
        goto LABEL_9;
      }
    }

    if ((v22 & 1) == 0)
    {

      v0 = v21;
      goto LABEL_29;
    }

    OUTLINED_FUNCTION_10_13();
    v0 = v21;
    if (v19 != v20)
    {
      *v3 = -1 << v18;
    }

    else
    {
      OUTLINED_FUNCTION_14_8(v18);
    }

    *(v1 + 16) = 0;
    goto LABEL_28;
  }

  while (1)
  {
    OUTLINED_FUNCTION_13_9();
LABEL_9:
    OUTLINED_FUNCTION_11_14();
    v23 = *(v9 + 16 * v8);
    if ((v22 & 1) == 0)
    {

      outlined copy of Data._Representation(v23, *(&v23 + 1));
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    Hasher._finalize()();
    OUTLINED_FUNCTION_3_15();
    if (v10)
    {
      break;
    }

    OUTLINED_FUNCTION_9_10();
LABEL_20:
    OUTLINED_FUNCTION_1_20(v11);
    *(v17 + 16 * v16) = v23;
    ++*(v6 + 16);
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_8_11();
  while (++v12 != v14 || (v13 & 1) == 0)
  {
    v15 = v12 == v14;
    if (v12 == v14)
    {
      v12 = 0;
    }

    v13 |= v15;
    if (*(v5 + 8 * v12) != -1)
    {
      OUTLINED_FUNCTION_7_13();
      goto LABEL_20;
    }
  }

LABEL_31:
  __break(1u);
}

{
  OUTLINED_FUNCTION_4_14();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS13SiriUtilities13PluginPackage_pGMd, &_ss18_DictionaryStorageCySS13SiriUtilities13PluginPackage_pGMR);
  v6 = OUTLINED_FUNCTION_5_17();
  if (!*(v1 + 16))
  {
LABEL_29:

LABEL_30:
    *v0 = v6;
    return;
  }

  OUTLINED_FUNCTION_0_25();
  if (!v2)
  {
LABEL_4:
    v7 = v4;
    while (1)
    {
      v4 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v4 >= v0)
      {
        break;
      }

      ++v7;
      if (v3[v4])
      {
        OUTLINED_FUNCTION_12_12();
        goto LABEL_9;
      }
    }

    if ((v23 & 1) == 0)
    {

      v0 = v22;
      goto LABEL_30;
    }

    OUTLINED_FUNCTION_10_13();
    v0 = v22;
    if (v20 != v21)
    {
      *v3 = -1 << v19;
    }

    else
    {
      OUTLINED_FUNCTION_14_8(v19);
    }

    *(v1 + 16) = 0;
    goto LABEL_29;
  }

  while (1)
  {
    OUTLINED_FUNCTION_13_9();
LABEL_9:
    OUTLINED_FUNCTION_11_14();
    v10 = (v9 + 40 * v8);
    if (v23)
    {
      outlined init with take of CacheDataSource(v10, v24);
    }

    else
    {
      outlined init with copy of Transforming(v10, v24);
    }

    Hasher.init(_seed:)();
    String.hash(into:)();
    Hasher._finalize()();
    OUTLINED_FUNCTION_3_15();
    if (v11)
    {
      break;
    }

    OUTLINED_FUNCTION_9_10();
LABEL_21:
    OUTLINED_FUNCTION_1_20(v12);
    outlined init with take of CacheDataSource(v24, v18 + 40 * v17);
    ++*(v6 + 16);
    if (!v2)
    {
      goto LABEL_4;
    }
  }

  OUTLINED_FUNCTION_8_11();
  while (++v13 != v15 || (v14 & 1) == 0)
  {
    v16 = v13 == v15;
    if (v13 == v15)
    {
      v13 = 0;
    }

    v14 |= v16;
    if (*(v5 + 8 * v13) != -1)
    {
      OUTLINED_FUNCTION_7_13();
      goto LABEL_21;
    }
  }

LABEL_32:
  __break(1u);
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy13SiriUtilities25_EnvironmentProviderTable33_3C3D89445BD9D10E112FF83FF3C559F0LLO3KeyCyXlGMd, &_ss18_DictionaryStorageCy13SiriUtilities25_EnvironmentProviderTable33_3C3D89445BD9D10E112FF83FF3C559F0LLO3KeyCyXlGMR);
  v30 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_31:

LABEL_32:
    *v3 = v7;
    return result;
  }

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
        goto LABEL_34;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_32;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v29 + 63) >> 6, v5 + 64);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
    goto LABEL_31;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = v15 | (v8 << 6);
    v19 = *(*(v5 + 48) + 8 * v18);
    v20 = *(*(v5 + 56) + 8 * v18);
    if ((v30 & 1) == 0)
    {

      swift_unknownObjectRetain();
    }

    Hasher.init(_seed:)();
    MEMORY[0x1E12A9750](*(v19 + 16));
    result = Hasher._finalize()();
    v21 = -1 << *(v7 + 32);
    v22 = result & ~v21;
    v23 = v22 >> 6;
    if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
    {
      break;
    }

    v24 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_23:
    *(v14 + ((v24 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v24;
    *(*(v7 + 48) + 8 * v24) = v19;
    *(*(v7 + 56) + 8 * v24) = v20;
    ++*(v7 + 16);
    if (!v12)
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
    v28 = *(v14 + 8 * v23);
    if (v28 != -1)
    {
      v24 = __clz(__rbit64(~v28)) + (v23 << 6);
      goto LABEL_23;
    }
  }

LABEL_34:
  __break(1u);
  return result;
}

unint64_t specialized _NativeDictionary._unsafeInsertNew(key:value:)(uint64_t a1, uint64_t a2, void *a3)
{
  Hasher.init(_seed:)();
  MEMORY[0x1E12A9750](*(a1 + 16));
  Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
  *(a3[6] + 8 * result) = a1;
  *(a3[7] + 8 * result) = a2;
  ++a3[2];
  return result;
}

uint64_t lazy protocol witness table accessor for type _EnvironmentProviderTable.Key and conformance _EnvironmentProviderTable.Key(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t specialized Dictionary._Variant.setValue(_:forKey:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    goto LABEL_7;
  }

  if (v6 < 0)
  {
    v7 = *v2;
  }

  else
  {
    v7 = v6 & 0xFFFFFFFFFFFFFF8;
  }

  result = MEMORY[0x1E12A9490](v7);
  if (!__OFADD__(result, 1))
  {
    *v3 = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfC13SiriUtilities25_EnvironmentProviderTable33_3C3D89445BD9D10E112FF83FF3C559F0LLO3KeyC_yXlTt1g5(v7, result + 1);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v10 = *v3;
    result = specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);
    *v3 = v10;
    return result;
  }

  __break(1u);
  return result;
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = type metadata accessor for CodingUserInfoKey();
  OUTLINED_FUNCTION_5_0();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *v3;
  specialized __RawDictionaryStorage.find<A>(_:)();
  OUTLINED_FUNCTION_2_18();
  if (v17)
  {
    __break(1u);
    goto LABEL_11;
  }

  v18 = v15;
  v19 = v16;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVys17CodingUserInfoKeyVs8Sendable_pGMd, &_ss17_NativeDictionaryVys17CodingUserInfoKeyVs8Sendable_pGMR);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v14))
  {
    goto LABEL_5;
  }

  v20 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v19 & 1) != (v21 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v18 = v20;
LABEL_5:
  v22 = *v4;
  if (v19)
  {
    __swift_destroy_boxed_opaque_existential_0((*(v22 + 56) + 32 * v18));
    OUTLINED_FUNCTION_14();

    outlined init with take of Any(v23, v24);
  }

  else
  {
    (*(v10 + 16))(v13, a2, v8);
    specialized _NativeDictionary._insert(at:key:value:)(v18, v13, a1, v22);
    OUTLINED_FUNCTION_14();
  }
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v28 = a2;
  v9 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_5_0();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *v4;
  specialized __RawDictionaryStorage.find<A>(_:)();
  OUTLINED_FUNCTION_2_18();
  if (v18)
  {
    __break(1u);
    goto LABEL_11;
  }

  v19 = v16;
  v20 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy10Foundation4UUIDVSSGMd, &_ss17_NativeDictionaryVy10Foundation4UUIDVSSGMR);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a4 & 1, v15))
  {
    goto LABEL_5;
  }

  v21 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v20 & 1) != (v22 & 1))
  {
LABEL_11:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v19 = v21;
LABEL_5:
  v23 = *v5;
  if (v20)
  {
    v24 = (*(v23 + 56) + 16 * v19);
    v25 = v28;
    *v24 = a1;
    v24[1] = v25;
    OUTLINED_FUNCTION_14();
  }

  else
  {
    (*(v11 + 16))(v14, a3, v9);
    specialized _NativeDictionary._insert(at:key:value:)(v19, v14, a1, v28, v23);
    OUTLINED_FUNCTION_14();
  }
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)();
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = v9;
  v15 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy13SiriUtilities25_EnvironmentProviderTable33_3C3D89445BD9D10E112FF83FF3C559F0LLO3KeyCyXlGMd, &_ss17_NativeDictionaryVy13SiriUtilities25_EnvironmentProviderTable33_3C3D89445BD9D10E112FF83FF3C559F0LLO3KeyCyXlGMR);
  if (!_NativeDictionary.ensureUnique(isUnique:capacity:)(a3 & 1, v13))
  {
    goto LABEL_5;
  }

  v16 = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v15 & 1) != (v17 & 1))
  {
LABEL_13:
    type metadata accessor for _EnvironmentProviderTable.Key();
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v14 = v16;
LABEL_5:
  v18 = *v4;
  if (v15)
  {
    *(*(v18 + 56) + 8 * v14) = a1;

    return swift_unknownObjectRelease();
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v14, a2, a1, v18);
  }
}

uint64_t Reducer.reduce.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Reducer.init()()
{
  OUTLINED_FUNCTION_0_26();
  result = swift_allocObject();
  *(result + 16) = v1;
  *(result + 24) = v0;
  *v2 = destructiveProjectEnumData for InputOrigin;
  v2[1] = result;
  return result;
}

uint64_t Reducer.init(apply:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t Reducer.init<A>(getter:setter:)()
{
  OUTLINED_FUNCTION_0_26();
  result = swift_allocObject();
  *(result + 16) = v1;
  *(result + 24) = v0;
  *v2 = partial apply for closure #1 in Reducer.init<A>(getter:setter:);
  v2[1] = result;
  return result;
}

{
  OUTLINED_FUNCTION_0_26();
  result = swift_allocObject();
  *(result + 16) = v1;
  *(result + 24) = v0;
  *v2 = partial apply for closure #1 in Reducer.init<A>(getter:setter:);
  v2[1] = result;
  return result;
}

uint64_t closure #1 in Reducer.init<A>(getter:setter:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v4 = *(*a3 + *MEMORY[0x1E69E77B0] + 8);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](a1);
  v8 = v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = v12 - v9;
  swift_getAtKeyPath();
  (*(v5 + 16))(v8, v10, v4);
  swift_setAtReferenceWritableKeyPath();
  return (*(v5 + 8))(v10, v4);
}

uint64_t partial apply for closure #1 in Reducer.init<A>(getter:setter:)(uint64_t a1, uint64_t a2)
{
  return closure #1 in Reducer.init<A>(getter:setter:)(a1, a2, *(v2 + 16), *(v2 + 24));
}

{
  return closure #1 in Reducer.init<A>(getter:setter:)(a1, a2, *(v2 + 16), *(v2 + 24));
}

uint64_t closure #1 in Reducer.init<A>(getter:setter:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = v13 - v5;
  v8 = *(v7 + *MEMORY[0x1E69E77B0] + 8);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v11 = v13 - v10;
  swift_getAtKeyPath();
  (*(v9 + 16))(v6, v11, v8);
  __swift_storeEnumTagSinglePayload(v6, 0, 1, v8);
  swift_setAtReferenceWritableKeyPath();
  return (*(v9 + 8))(v11, v8);
}

uint64_t objectdestroy_2Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 32, 7);
}

double Reducer.init(builder:)@<D0>(void (*a1)(__int128 *__return_ptr)@<X0>, _OWORD *a2@<X8>)
{
  a1(&v4);
  result = *&v4;
  *a2 = v4;
  return result;
}

double Transformer.init(_:reducer:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, _OWORD *a6@<X8>)
{
  v12 = swift_allocObject();
  *(v12 + 16) = a4;
  *(v12 + 24) = a5;
  *(v12 + 32) = a1;
  *(v12 + 40) = a2;
  *(v12 + 48) = *a3;
  Transformer.init(transform:)(partial apply for closure #1 in Transformer.init(_:reducer:), v12, a4, a5, v15);
  result = *v15;
  v14 = v15[1];
  *a6 = v15[0];
  a6[1] = v14;
  return result;
}

double Transformer.init(_:builder:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(_OWORD *__return_ptr)@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, _OWORD *a6@<X8>)
{
  a3(v15);
  v14 = v15[0];
  v11 = swift_allocObject();
  *(v11 + 16) = a4;
  *(v11 + 24) = a5;
  *(v11 + 32) = a1;
  *(v11 + 40) = a2;
  *(v11 + 48) = v14;
  Transformer.init(transform:)(partial apply for closure #1 in Transformer.init(_:builder:), v11, a4, a5, v15);
  result = *v15;
  v13 = v15[1];
  *a6 = v15[0];
  a6[1] = v13;
  return result;
}

uint64_t closure #1 in Transformer.init(_:reducer:)@<X0>(uint64_t a1@<X0>, void (*a2)(void)@<X1>, uint64_t (*a3)(uint64_t, uint64_t)@<X3>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  a2();
  result = a3(a1, a5);
  if (v5)
  {
    return (*(*(a4 - 8) + 8))(a5, a4);
  }

  return result;
}

uint64_t objectdestroy_8Tm()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t partial apply for closure #1 in Transformer.init(_:reducer:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  return closure #1 in Transformer.init(_:reducer:)(a1, *(v2 + 32), *(v2 + 48), *(v2 + 24), a2);
}

{
  return partial apply for closure #1 in Transformer.init(_:builder:)(a1, a2);
}

uint64_t static ReducerBuilder.buildIf(_:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  if (*a1)
  {
    *a2 = v2;
    a2[1] = v3;
  }

  else
  {
    Reducer.init()();
  }

  return outlined copy of (@escaping @callee_guaranteed @Sendable (@in_guaranteed NWPath) -> ())?(v2, v3);
}

uint64_t static ReducerBuilder.buildEither(first:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  a2[1] = v3;
}

uint64_t static ReducerBuilder.buildBlock(_:)()
{
  OUTLINED_FUNCTION_1_21();
  v4 = swift_allocObject();
  *(v4 + 2) = v1;
  *(v4 + 3) = v0;
  *(v4 + 4) = v2;
  *v3 = partial apply for closure #1 in static ReducerBuilder.buildBlock(_:);
  v3[1] = v4;
}

uint64_t closure #1 in static ReducerBuilder.buildBlock(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v19[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v16 = &v19[-((v15 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v14 + 16))(v16);
  (*(v9 + 16))(v12, a2, a5);
  v24 = a3;
  v20 = a4;
  v21 = a5;
  v22 = v16;
  v23 = v12;
  type metadata accessor for Reducer(255, a4, a5, v17);
  type metadata accessor for Array();
  swift_getWitnessTable();
  Sequence.forEach(_:)();
  (*(v9 + 8))(v12, a5);
  return (*(v14 + 8))(v16, a4);
}

uint64_t --> infix<A, B, C>(_:_:)(uint64_t a1, uint64_t a2)
{
  return --> infix<A, B, C>(_:_:)(a1, a2, Reducer.init<A>(getter:setter:));
}

{
  return --> infix<A, B, C>(_:_:)(a1, a2, Reducer.init<A>(getter:setter:));
}

uint64_t --> infix<A, B, C>(_:_:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t))
{
  OUTLINED_FUNCTION_0_26();

  return a3(v4, v3);
}

uint64_t -- infix<A, B, C>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 24);
  *a1 = *a3;
  *(a1 + 8) = *(a3 + 8);
  *(a1 + 24) = v4;

  return a2;
}

uint64_t --> infix<A, B, C, D>(_:_:)()
{
  OUTLINED_FUNCTION_1_21();
  v5 = *v4;
  v6 = v4[3];
  v8 = *v7;
  v9 = swift_allocObject();
  v10 = (v8 + *MEMORY[0x1E69E77B0]);
  *(v9 + 16) = *v10;
  *(v9 + 24) = v10[1];
  *(v9 + 32) = v2;
  *(v9 + 40) = v5;
  *(v9 + 48) = *(v1 + 8);
  *(v9 + 64) = v6;
  *(v9 + 72) = v0;
  *v3 = partial apply for closure #1 in --> infix<A, B, C, D>(_:_:);
  v3[1] = v9;
}

uint64_t closure #1 in --> infix<A, B, C, D>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v21 = a2;
  v22 = *(a3 + 8);
  v7 = *(*a4 + *MEMORY[0x1E69E6F98] + 8);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](a1);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v9);
  v14 = &v21 - v13;
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v18 = &v21 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_getAtKeyPath();
  v19 = v23;
  v22(v18);
  if (!v19)
  {
    (*(v8 + 16))(v11, v14, v7);
    swift_setAtReferenceWritableKeyPath();
    (*(v8 + 8))(v14, v7);
  }

  return (*(v16 + 8))(v18, a6);
}

uint64_t partial apply for closure #1 in --> infix<A, B, C, D>(_:_:)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v5 = *(v2 + 48);
  v8[0] = *(v2 + 32);
  v8[1] = v5;
  v6 = *(v2 + 72);
  v9 = *(v2 + 64);
  return closure #1 in --> infix<A, B, C, D>(_:_:)(a1, a2, v8, v6, v3, v4);
}

void *assignWithCopy for Reducer(void *a1, void *a2)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;

  return a1;
}

_OWORD *assignWithTake for Reducer(_OWORD *a1, _OWORD *a2)
{
  *a1 = *a2;

  return a1;
}

_BYTE *storeEnumTagSinglePayload for ReducerBuilder(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t HomeInfo.homeIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t HomeInfo.homeIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

SiriUtilities::HomeInfo __swiftcall HomeInfo.init()()
{
  v1 = v0;

  *v1 = 0;
  v1[1] = 0;
  result.homeIdentifier.value._object = v3;
  result.homeIdentifier.value._countAndFlagsBits = v2;
  return result;
}

uint64_t Transformer.transform.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Transformer.reverseTransform.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Transformer.init(transform:reverseTransform:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  *a5 = result;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  return result;
}

uint64_t closure #1 in Transformer.init(transform:)()
{
  lazy protocol witness table accessor for type TransformationError and conformance TransformationError();
  swift_allocError();
  *v0 = 0;
  *(v0 + 8) = 0;
  *(v0 + 16) = 2;
  return swift_willThrow();
}

uint64_t static RawRepresentable.transformer.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (**a3)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)@<X8>)
{
  v6 = swift_allocObject();
  *(v6 + 16) = a1;
  *(v6 + 24) = a2;
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = a2;
  swift_getAssociatedTypeWitness();
  result = type metadata accessor for Optional();
  *a3 = partial apply for closure #1 in static RawRepresentable.transformer.getter;
  a3[1] = v6;
  a3[2] = partial apply for closure #2 in static RawRepresentable.transformer.getter;
  a3[3] = v7;
  return result;
}

uint64_t closure #1 in static RawRepresentable.transformer.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v34 = a4;
  v38 = a1;
  v6 = type metadata accessor for Optional();
  v32 = *(v6 - 8);
  v33 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v31 - v7;
  v35 = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v31 - v13;
  v15 = *(AssociatedTypeWitness - 8);
  v16 = MEMORY[0x1EEE9AC00](v12);
  v18 = &v31 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v20 = &v31 - v19;
  (*(v11 + 16))(v14, v38, v10);
  if (__swift_getEnumTagSinglePayload(v14, 1, AssociatedTypeWitness) == 1)
  {
    (*(v11 + 8))(v14, v10);
    v36 = 0;
    v37 = 0xE000000000000000;
    _StringGuts.grow(_:)(42);

    v36 = 0xD000000000000028;
    v37 = 0x80000001DD26B6A0;
    v21 = _typeName(_:qualified:)();
    MEMORY[0x1E12A8C40](v21);

    v22 = v36;
    v23 = v37;
    lazy protocol witness table accessor for type TransformationError and conformance TransformationError();
    swift_allocError();
    *v24 = v22;
    *(v24 + 8) = v23;
    *(v24 + 16) = 0;
    return swift_willThrow();
  }

  else
  {
    v26 = v15;
    (*(v15 + 32))(v20, v14, AssociatedTypeWitness);
    (*(v15 + 16))(v18, v20, AssociatedTypeWitness);
    dispatch thunk of RawRepresentable.init(rawValue:)();
    if (__swift_getEnumTagSinglePayload(v8, 1, a2) == 1)
    {
      (*(v32 + 8))(v8, v33);
      v36 = 0;
      v37 = 0xE000000000000000;
      _StringGuts.grow(_:)(41);
      MEMORY[0x1E12A8C40](0xD000000000000011, 0x80000001DD26B6D0);
      DefaultStringInterpolation.appendInterpolation<A>(_:)();
      MEMORY[0x1E12A8C40](0xD000000000000014, 0x80000001DD26B6F0);
      v27 = _typeName(_:qualified:)();
      MEMORY[0x1E12A8C40](v27);

      v28 = v36;
      v29 = v37;
      lazy protocol witness table accessor for type TransformationError and conformance TransformationError();
      swift_allocError();
      *v30 = v28;
      *(v30 + 8) = v29;
      *(v30 + 16) = 0;
      swift_willThrow();
      return (*(v26 + 8))(v20, AssociatedTypeWitness);
    }

    else
    {
      (*(v15 + 8))(v20, AssociatedTypeWitness);
      return (*(*(a2 - 8) + 32))(v34, v8, a2);
    }
  }
}

uint64_t closure #2 in static RawRepresentable.transformer.getter@<X0>(uint64_t a3@<X8>)
{
  dispatch thunk of RawRepresentable.rawValue.getter();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  return __swift_storeEnumTagSinglePayload(a3, 0, 1, AssociatedTypeWitness);
}

void *assignWithCopy for Transformer(void *a1, void *a2)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;

  v5 = a2[3];
  a1[2] = a2[2];
  a1[3] = v5;

  return a1;
}

_OWORD *assignWithTake for Transformer(_OWORD *a1, _OWORD *a2)
{
  *a1 = *a2;

  a1[1] = a2[1];

  return a1;
}

uint64_t outlined copy of TransformationError(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t outlined consume of TransformationError(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for TransformationError(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of TransformationError(*a2, v4, v5);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  return a1;
}

uint64_t assignWithCopy for TransformationError(uint64_t a1, uint64_t a2)
{
  v3 = *a2;
  v4 = *(a2 + 8);
  v5 = *(a2 + 16);
  outlined copy of TransformationError(*a2, v4, v5);
  v6 = *a1;
  v7 = *(a1 + 8);
  *a1 = v3;
  *(a1 + 8) = v4;
  v8 = *(a1 + 16);
  *(a1 + 16) = v5;
  outlined consume of TransformationError(v6, v7, v8);
  return a1;
}

__n128 __swift_memcpy17_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u8[0] = a2[1].n128_u8[0];
  *a1 = result;
  return result;
}

uint64_t assignWithTake for TransformationError(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = *a1;
  v5 = *(a1 + 8);
  *a1 = *a2;
  v6 = *(a1 + 16);
  *(a1 + 16) = v3;
  outlined consume of TransformationError(v4, v5, v6);
  return a1;
}

uint64_t getEnumTagSinglePayload for TransformationError(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for TransformationError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
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

uint64_t getEnumTag for TransformationError(uint64_t a1)
{
  if (*(a1 + 16) <= 1u)
  {
    return *(a1 + 16);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t destructiveInjectEnumTag for TransformationError(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

void __swiftcall TypeInformation.init(for:)(SiriUtilities::TypeInformation *__return_ptr retstr, SiriUtilities::TypeIdentifier a2)
{
  _s13SiriUtilities15TypeInformationV8encodingACx_tcSyRzlufCSS_Tt1g5(*a2.encoding._countAndFlagsBits, *(a2.encoding._countAndFlagsBits + 8), v4);
  v3 = v4[1];
  *&retstr->isOptional = v4[0];
  *&retstr->baseType.encoding._object = v3;
  *&retstr->originalType.encoding._object = v4[2];
  retstr->encoding._object = v5;
}

uint64_t TypeInformation.init<A>(encoding:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v38 = *(a3 + 8);
  v7 = *(v38 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v37[0] = v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = v37 - v11;
  v13 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v15 = v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v13 + 16);
  v17 = OUTLINED_FUNCTION_0_27();
  v16(v17);
  v37[1] = v7;
  v18 = String.init<A>(_:)();
  v42 = v19;
  v43 = v18;
  v20 = OUTLINED_FUNCTION_0_27();
  v16(v20);
  TypeIdentifier.init<A>(encoding:)(v15, a2, &v44);
  v40 = v45;
  v41 = v44;
  OUTLINED_FUNCTION_2_19();
  if (dispatch thunk of StringProtocol.hasSuffix(_:)())
  {
    v21 = OUTLINED_FUNCTION_0_27();
    v16(v21);
    BidirectionalCollection.dropLast(_:)();
    v22 = AssociatedTypeWitness;
    swift_getAssociatedConformanceWitness();
    TypeIdentifier.init<A>(encoding:)(v12, v22, &v44);
    (*(v13 + 8))(a1, a2);
    v23 = 0;
    v24 = v44;
    v25 = v45;
    v26 = 1;
  }

  else
  {
    v38 = v13;
    v29 = AssociatedTypeWitness;
    OUTLINED_FUNCTION_2_19();
    if ((dispatch thunk of StringProtocol.hasPrefix(_:)() & 1) == 0 || (OUTLINED_FUNCTION_2_19(), (dispatch thunk of StringProtocol.hasSuffix(_:)() & 1) == 0))
    {
      v34 = OUTLINED_FUNCTION_3_16();
      v35(v34);

      v26 = 0;
      v23 = 0;
      v28 = v41;
      v24 = v41;
      v25 = result;
      goto LABEL_8;
    }

    v30 = OUTLINED_FUNCTION_0_27();
    v16(v30);
    Collection.dropFirst(_:)();
    v31 = v29;
    swift_getAssociatedConformanceWitness();
    v23 = 1;
    Collection.dropLast(_:)();
    swift_getAssociatedConformanceWitness();
    TypeIdentifier.init<A>(encoding:)(v12, v31, &v44);
    v32 = OUTLINED_FUNCTION_3_16();
    v33(v32);
    v26 = 0;
    v24 = v44;
    v25 = v45;
  }

  result = v40;
  v28 = v41;
LABEL_8:
  *a4 = v26;
  *(a4 + 1) = v23;
  *(a4 + 8) = v24;
  *(a4 + 16) = v25;
  *(a4 + 24) = v28;
  *(a4 + 32) = result;
  v36 = v42;
  *(a4 + 40) = v43;
  *(a4 + 48) = v36;
  return result;
}

uint64_t TypeInformation.typeName.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = *(v0 + 1);
  v3 = *(v0 + 2);
  v5 = *(v0 + 5);
  v6 = *(v0 + 6);
  v7 = _typeByName(_:)();
  if (v7)
  {
    if (v7 == MEMORY[0x1E69E7CA8] + 8)
    {
      v8 = _mangledTypeName(_:)();
      if (!v9)
      {
        goto LABEL_9;
      }

      if (v5 == v8 && v9 == v6)
      {
      }

      else
      {
        v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v11 & 1) == 0)
        {
          goto LABEL_9;
        }
      }
    }

    return _typeName(_:qualified:)();
  }

LABEL_9:
  if ((v1 | v2))
  {

    _s13SiriUtilities15TypeInformationV8encodingACx_tcSyRzlufCSS_Tt1g5(v4, v3, v18);
    v12 = TypeInformation.typeName.getter();
    v14 = v13;
    outlined destroy of TypeInformation(v18);
    if (v1)
    {
      v17 = v12;
      v15 = 63;
    }

    else
    {
      v17 = 91;
      MEMORY[0x1E12A8C40](v12, v14);

      v15 = 93;
    }

    MEMORY[0x1E12A8C40](v15, 0xE100000000000000);
    return v17;
  }

  else
  {
    _StringGuts.grow(_:)(17);

    strcpy(v18, "_typeByName(");
    v19 = -4864;
    MEMORY[0x1E12A8C40](v5, v6);
    MEMORY[0x1E12A8C40](10530, 0xE200000000000000);
    return *v18;
  }
}

uint64_t TypeInformation.encoding.getter()
{
  v1 = *(v0 + 40);

  return v1;
}

unint64_t TypeInformation.description.getter()
{
  _StringGuts.grow(_:)(29);

  v0 = TypeInformation.typeName.getter();
  MEMORY[0x1E12A8C40](v0);

  MEMORY[0x1E12A8C40](0x29666C65732ELL, 0xE600000000000000);
  return 0xD000000000000015;
}

uint64_t initializeWithCopy for TypeInformation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  v3 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v3;
  v4 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v4;
  v5 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v5;

  return a1;
}

uint64_t assignWithCopy for TypeInformation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);

  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);

  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);

  return a1;
}

uint64_t assignWithTake for TypeInformation(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);
  v4 = *(a2 + 16);
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = v4;

  v5 = *(a2 + 32);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = v5;

  v6 = *(a2 + 48);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = v6;

  return a1;
}

uint64_t getEnumTagSinglePayload for TypeInformation(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 56))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for TypeInformation(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 56) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 56) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t SafeCallback.maybeObj.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*SafeCallback.maybeObj.modify(void *a1))(void **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = v1;
  swift_beginAccess();
  v3[3] = swift_unknownObjectWeakLoadStrong();
  return SafeCallback.maybeObj.modify;
}

void SafeCallback.maybeObj.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t SafeCallback.reify(_:)(void (*a1)(void))
{
  result = (*(*v1 + 96))();
  if (result)
  {
    a1();

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t key path setter for SafeCallback.maybeObj : <A>SafeCallback<A>(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 104);
  v3 = swift_unknownObjectRetain();
  return v2(v3);
}

uint64_t SafeCallback.__deallocating_deinit()
{
  MEMORY[0x1E12AA1D0](v0 + 16);

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t SafeCallback.__allocating_init()()
{
  v0 = swift_allocObject();
  SafeCallback.init()();
  return v0;
}

SiriUtilities::InteractionType_optional static InteractionType.from(aceInteractionType:)(uint64_t a1, uint64_t a2)
{

  v4 = a1;
  v5 = a2;

  return InteractionType.init(aceValue:)(*&v4);
}

SiriUtilities::InteractionType_optional __swiftcall InteractionType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of InteractionType.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v4 = v7;
  return result;
}

unint64_t lazy protocol witness table accessor for type InteractionType and conformance InteractionType()
{
  result = lazy protocol witness table cache variable for type InteractionType and conformance InteractionType;
  if (!lazy protocol witness table cache variable for type InteractionType and conformance InteractionType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type InteractionType and conformance InteractionType);
  }

  return result;
}

uint64_t one-time initialization function for builtInSpeaker()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static AudioDestination.builtInSpeaker = result;
  unk_1EDB28488 = v1;
  return result;
}

uint64_t one-time initialization function for builtInReceiver()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static AudioDestination.builtInReceiver = result;
  unk_1EDB28470 = v1;
  return result;
}

uint64_t one-time initialization function for headphones()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static AudioDestination.headphones = result;
  unk_1EDB284B8 = v1;
  return result;
}

uint64_t one-time initialization function for bluetoothLEDevice()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static AudioDestination.bluetoothLEDevice = result;
  *algn_1EDB28458 = v1;
  return result;
}

uint64_t one-time initialization function for bluetoothA2DPDevice()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static AudioDestination.bluetoothA2DPDevice = result;
  unk_1EDB28440 = v1;
  return result;
}

uint64_t one-time initialization function for hdmi()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static AudioDestination.hdmi = result;
  *algn_1EDB28408 = v1;
  return result;
}

uint64_t one-time initialization function for other()
{
  result = static String._unconditionallyBridgeFromObjectiveC(_:)();
  static AudioDestination.other = result;
  unk_1EDB283F0 = v1;
  return result;
}

uint64_t AudioDestination.aceValue.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AudioDestination.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.singleValueContainer()();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  dispatch thunk of SingleValueEncodingContainer.encode(_:)();
  return __swift_destroy_boxed_opaque_existential_0(v2);
}

uint64_t AudioDestination.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  OUTLINED_FUNCTION_5_1();
  dispatch thunk of Decoder.singleValueContainer()();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v9, v9[3]);
    OUTLINED_FUNCTION_5_1();
    v5 = dispatch thunk of SingleValueDecodingContainer.decode(_:)();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_0(v9);
    *a2 = v5;
    a2[1] = v7;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t static AudioDestination.== infix(_:_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

Swift::Int AudioDestination.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type AudioDestination and conformance AudioDestination()
{
  result = lazy protocol witness table cache variable for type AudioDestination and conformance AudioDestination;
  if (!lazy protocol witness table cache variable for type AudioDestination and conformance AudioDestination)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AudioDestination and conformance AudioDestination);
  }

  return result;
}

uint64_t specialized _ContiguousArrayStorage.__deallocating_deinit()
{
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

{
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

{
  swift_arrayDestroy();

  return MEMORY[0x1EEE6BDC0](v0, 32, 7);
}

uint64_t *LoadableCapability.init(container:capability:)(uint64_t a1, uint64_t a2)
{
  v4 = *v2;
  v5 = (v2 + *(*v2 + 112));
  *v5 = 0u;
  v5[1] = 0u;
  OUTLINED_FUNCTION_7();
  (*(*(*(v4 + 80) - 8) + 32))(v2 + *(v6 + 96));
  OUTLINED_FUNCTION_7();
  v8 = *(v7 + 104);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_16();
  (*(v9 + 32))(v2 + v8, a2);
  return v2;
}

uint64_t *LoadableCapability.deinit()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 96), *(*v0 + 80));
  OUTLINED_FUNCTION_7();
  v2 = *(v1 + 104);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_16();
  (*(v3 + 8))(v0 + v2);
  OUTLINED_FUNCTION_7();
  outlined destroy of Any?(v0 + *(v4 + 112));
  return v0;
}

uint64_t LoadableCapability._handler.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 112);
  swift_beginAccess();
  return outlined init with copy of Any?(v1 + v4, a1);
}

uint64_t LoadableCapability._handler.setter(uint64_t a1)
{
  OUTLINED_FUNCTION_7();
  v4 = *(v3 + 112);
  swift_beginAccess();
  outlined assign with take of Any?(a1, v1 + v4);
  return swift_endAccess();
}

uint64_t LoadableCapability.handler.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_7();
  v4 = v3;
  LoadableCapability._handler.getter(v6);
  if (v6[3])
  {
    outlined destroy of Any?(v6);
  }

  else
  {
    outlined destroy of Any?(v6);
    (*(*(v4 + 88) + 56))(v6, v1 + *(*v1 + 104), *(v4 + 80));
    LoadableCapability._handler.setter(v6);
  }

  return LoadableCapability._handler.getter(a1);
}

uint64_t LoadableCapability.capability.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 104);
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_16();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t LoadableCapability.__allocating_init(container:capability:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  LoadableCapability.init(container:capability:)(a1, a2);
  return v4;
}

uint64_t LoadableCapability.__deallocating_deinit()
{
  LoadableCapability.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata completion function for LoadableCapability(uint64_t a1)
{
  AssociatedTypeWitness = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    AssociatedTypeWitness = swift_getAssociatedTypeWitness();
    if (v3 <= 0x3F)
    {
      inited = swift_initClassMetadata2();
      if (inited)
      {
        return inited;
      }

      else
      {
        return 0;
      }
    }
  }

  return AssociatedTypeWitness;
}

uint64_t outlined assign with take of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t static SiriEnvironmentTaskLocalStorage.environment.getter()
{
  if (one-time initialization token for $environment != -1)
  {
    OUTLINED_FUNCTION_0_29();
    swift_once();
  }

  TaskLocal.get()();
  return v1;
}

uint64_t one-time initialization function for $environment()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss9TaskLocalCy13SiriUtilities0C11EnvironmentCSgGMd, &_ss9TaskLocalCy13SiriUtilities0C11EnvironmentCSgGMR);
  swift_allocObject();
  result = TaskLocal.init(wrappedValue:)();
  static SiriEnvironmentTaskLocalStorage.$environment = result;
  return result;
}

uint64_t static SiriEnvironmentTaskLocalStorage.$environment.getter()
{
  if (one-time initialization token for $environment != -1)
  {
    OUTLINED_FUNCTION_0_29();
    swift_once();
  }
}

_BYTE *storeEnumTagSinglePayload for SiriEnvironmentTaskLocalStorage(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t specialized PluginCapabilityCatalog.init(finder:)(void *a1)
{
  v1 = a1[3];
  v2 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v1);
  v3 = (*(v2 + 8))(v1, v2);
  v137 = MEMORY[0x1E69E7CD0];
  v4 = *(v3 + 16);
  v120 = v3;
  if (v4)
  {
    v5 = v3;
    v127 = 0;
    v121 = 0;
    v6 = 0;
    v7 = 0;
    v8 = v3 + 32;
    v9 = MEMORY[0x1E69E7CC8];
    v10 = MEMORY[0x1E69E7CC8];
    v116 = v3 + 32;
    v118 = *(v3 + 16);
    do
    {
      if (v7 >= *(v5 + 16))
      {
        goto LABEL_80;
      }

      outlined init with copy of Transforming(v8 + 40 * v7, &v138);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities13PluginPackage_pMd, &_s13SiriUtilities13PluginPackage_pMR);
      type metadata accessor for NSBundle();
      if (swift_dynamicCast())
      {
        v11 = v133;
        if (v133)
        {
          v122 = v7;
          v12 = NSBundle.advertisedCapabilities()();
          v13 = 0;
          v125 = *(v12 + 16);
          v14 = 32;
          v15 = v121;
          while (v125 != v13)
          {
            if (v13 >= *(v12 + 16))
            {
              __break(1u);
LABEL_77:
              __break(1u);
LABEL_78:
              __break(1u);
              goto LABEL_79;
            }

            v16 = *(v12 + v14);
            v17 = *(v12 + v14 + 16);
            v18 = *(v12 + v14 + 48);
            v144 = *(v12 + v14 + 32);
            v145 = v18;
            v142 = v16;
            v143 = v17;
            v138 = v16;
            v139 = v17;
            v140 = v144;
            v141 = v18;
            outlined init with copy of TransformationCapability(&v142, &v133);
            outlined init with copy of TransformationCapability(&v142, &v133);
            __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities37PluginCapabilityExclusiveRegistration_pMd, &_s13SiriUtilities37PluginCapabilityExclusiveRegistration_pMR);
            if (swift_dynamicCast())
            {
              outlined init with take of Transforming(v128, v130);
              v19 = v131;
              v20 = v132;
              __swift_project_boxed_opaque_existential_1(v130, v131);
              if ((*(v20 + 8))(v19, v20))
              {
                outlined init with copy of TransformationCapability(&v142, &v138);
                specialized Set._Variant.insert(_:)(&v133, &v142);
                v138 = v133;
                v139 = v134;
                v140 = v135;
                v141 = v136;
                outlined destroy of TransformationCapability(&v138);
              }

              __swift_destroy_boxed_opaque_existential_0(v130);
            }

            else
            {
              v129 = 0;
              memset(v128, 0, sizeof(v128));
              outlined destroy of CheckedContinuation<(), Error>?(v128, &_s13SiriUtilities37PluginCapabilityExclusiveRegistration_pSgMd, &_s13SiriUtilities37PluginCapabilityExclusiveRegistration_pSgMR);
            }

            _sxRi_zRi0_zlySayxGIsegr_Sg13SiriUtilities24PluginCapabilityExposingRzAC0C7PackageRzlWOe_0(v127, 0);
            v21 = swift_allocObject();
            *(v21 + 16) = TransformationPlugin.supportedTransformations();
            *(v21 + 24) = 0;
            _sxRi_zRi0_zlySayxGIsegr_Sg13SiriUtilities24PluginCapabilityExposingRzAC0C7PackageRzlWOe_0(v15, v6);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *&v138 = v9;
            v23 = specialized __RawDictionaryStorage.find<A>(_:)();
            v25 = v9[2];
            v26 = (v24 & 1) == 0;
            v27 = v25 + v26;
            if (__OFADD__(v25, v26))
            {
              goto LABEL_77;
            }

            v28 = v23;
            v29 = v24;
            __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy13SiriUtilities24TransformationCapabilityVSaySo8NSBundleCGGMd, &_ss17_NativeDictionaryVy13SiriUtilities24TransformationCapabilityVSaySo8NSBundleCGGMR);
            v30 = _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v27);
            v9 = v138;
            if (v30)
            {
              v31 = specialized __RawDictionaryStorage.find<A>(_:)();
              if ((v29 & 1) != (v32 & 1))
              {
                goto LABEL_82;
              }

              v28 = v31;
            }

            if ((v29 & 1) == 0)
            {
              v33 = (*(v21 + 16))();
              v9[(v28 >> 6) + 8] |= 1 << v28;
              v34 = (v9[6] + (v28 << 6));
              v36 = v144;
              v35 = v145;
              v37 = v143;
              *v34 = v142;
              v34[1] = v37;
              v34[2] = v36;
              v34[3] = v35;
              *(v9[7] + 8 * v28) = v33;
              v38 = v9[2];
              v39 = __OFADD__(v38, 1);
              v40 = v38 + 1;
              if (v39)
              {
                goto LABEL_78;
              }

              v9[2] = v40;
              outlined init with copy of TransformationCapability(&v142, &v138);
            }

            v41 = (v9[7] + 8 * v28);
            v42 = v11;
            MEMORY[0x1E12A8DA0]();
            if (*((*v41 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v41 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            outlined destroy of TransformationCapability(&v142);
            v14 += 64;
            ++v13;
            v15 = partial apply for specialized thunk for @callee_guaranteed () -> (@owned [A]);
            v127 = TransformationPlugin.supportedTransformations();
            v6 = v21;
            v10 = v9;
          }

          v121 = v15;

          v4 = v118;
          v5 = v120;
          v7 = v122;
          v8 = v116;
        }
      }

      ++v7;
    }

    while (v7 != v4);
  }

  else
  {
    v127 = 0;
    v121 = 0;
    v6 = 0;
    v9 = MEMORY[0x1E69E7CC8];
    v10 = MEMORY[0x1E69E7CC8];
  }

  v43 = v10 + 8;
  v44 = 1 << *(v10 + 32);
  v45 = -1;
  if (v44 < 64)
  {
    v45 = ~(-1 << v44);
  }

  v46 = v45 & v10[8];
  v47 = (v44 + 63) >> 6;

  v48 = 0;
  v115 = v6;
  v117 = v10;
  v113 = v47;
  v114 = v10;
  v112 = v10 + 8;
  while (v46)
  {
    v49 = v48;
LABEL_36:
    v123 = v46;
    v119 = v49;
    v50 = (v10[6] + ((v49 << 12) | (__clz(__rbit64(v46)) << 6)));
    v51 = *v50;
    v52 = v50[1];
    v53 = v50[3];
    v140 = v50[2];
    v141 = v53;
    v138 = v51;
    v139 = v52;
    v54 = MEMORY[0x1E69E7CC0];
    if (v117[2])
    {
      outlined init with copy of TransformationCapability(&v138, &v133);
      v55 = specialized __RawDictionaryStorage.find<A>(_:)();
      v56 = v54;
      if (v57)
      {
        v56 = *(v117[7] + 8 * v55);
      }
    }

    else
    {
      outlined init with copy of TransformationCapability(&v138, &v133);
      v56 = v54;
    }

    if (v56 >> 62)
    {
      if (v56 < 0)
      {
        v71 = v56;
      }

      else
      {
        v71 = v56 & 0xFFFFFFFFFFFFFF8;
      }

      v58 = MEMORY[0x1E12A94E0](v71);
      if (!v58)
      {
LABEL_55:

        v60 = v54;
        goto LABEL_56;
      }
    }

    else
    {
      v58 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v58)
      {
        goto LABEL_55;
      }
    }

    *&v133 = v54;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v58 & ~(v58 >> 63), 0);
    if (v58 < 0)
    {
      goto LABEL_81;
    }

    v59 = 0;
    v60 = v133;
    v126 = v56 & 0xC000000000000001;
    v61 = v58;
    v62 = v56;
    do
    {
      if (v126)
      {
        v63 = MEMORY[0x1E12A9320](v59, v56);
      }

      else
      {
        v63 = *(v56 + 8 * v59 + 32);
      }

      v64 = v63;
      v65 = NSBundle.packageId.getter();
      v67 = v66;

      *&v133 = v60;
      v69 = *(v60 + 16);
      v68 = *(v60 + 24);
      if (v69 >= v68 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v68 > 1), v69 + 1, 1);
        v60 = v133;
      }

      ++v59;
      *(v60 + 16) = v69 + 1;
      v70 = v60 + 16 * v69;
      *(v70 + 32) = v65;
      *(v70 + 40) = v67;
      v56 = v62;
    }

    while (v61 != v59);
    v58 = v61;

    v43 = v112;
LABEL_56:
    v124 = (v123 - 1) & v123;
    *&v133 = v60;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type PluginCapabilityCatalog<NSBundle> and conformance PluginCapabilityCatalog<A>(&lazy protocol witness table cache variable for type [String] and conformance [A], &_sSaySSGMd, &_sSaySSGMR, MEMORY[0x1E69E6310]);
    v72 = BidirectionalCollection<>.joined(separator:)();
    v74 = v73;

    v75 = specialized Set.contains(_:)(&v138, v137);
    if (v58 >= 2 && (v75 & 1) != 0)
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v76 = type metadata accessor for Logger();
      __swift_project_value_buffer(v76, static Logger.logger);
      outlined init with copy of TransformationCapability(&v138, &v133);

      v77 = Logger.logObject.getter();
      v78 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v77, v78))
      {
        v79 = swift_slowAlloc();
        v80 = swift_slowAlloc();
        v130[0] = v80;
        *v79 = 136315394;
        v133 = v138;
        v134 = v139;
        v135 = v140;
        v136 = v141;
        v81 = String.init<A>(describing:)();
        v83 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v82, v130);

        *(v79 + 4) = v83;
        *(v79 + 12) = 2080;
        v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v74, v130);

        *(v79 + 14) = v84;
        _os_log_impl(&dword_1DD1FF000, v77, v78, "Capability %s is marked exclusive, but multiple registrations were found: %s", v79, 0x16u);
        swift_arrayDestroy();
        v85 = v80;
        v43 = v112;
        MEMORY[0x1E12AA0F0](v85, -1, -1);
        MEMORY[0x1E12AA0F0](v79, -1, -1);
      }

      else
      {

        outlined destroy of TransformationCapability(&v138);
      }

      v95 = Logger.logObject.getter();
      v96 = static os_log_type_t.error.getter();
      v47 = v113;
      v10 = v114;
      v46 = v124;
      if (os_log_type_enabled(v95, v96))
      {
        v97 = swift_slowAlloc();
        *v97 = 0;
        _os_log_impl(&dword_1DD1FF000, v95, v96, "All of the plugins for this capability will be ignored.", v97, 2u);
        MEMORY[0x1E12AA0F0](v97, -1, -1);
      }

      v98 = specialized __RawDictionaryStorage.find<A>(_:)();
      if (v99)
      {
        v100 = v98;
        v101 = swift_isUniquelyReferenced_nonNull_native();
        v130[0] = v9;
        v102 = v9[3];
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy13SiriUtilities24TransformationCapabilityVSaySo8NSBundleCGGMd, &_ss17_NativeDictionaryVy13SiriUtilities24TransformationCapabilityVSaySo8NSBundleCGGMR);
        v103 = v102;
        v46 = v124;
        _NativeDictionary.ensureUnique(isUnique:capacity:)(v101, v103);
        v9 = v130[0];
        v104 = (*(v130[0] + 48) + (v100 << 6));
        v106 = *v104;
        v105 = v104[1];
        v107 = v104[3];
        v135 = v104[2];
        v136 = v107;
        v133 = v106;
        v134 = v105;
        outlined destroy of TransformationCapability(&v133);

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSBundleCGMd, &_sSaySo8NSBundleCGMR);
        lazy protocol witness table accessor for type TransformationCapability and conformance TransformationCapability();
        _NativeDictionary._delete(at:)();
        outlined destroy of TransformationCapability(&v138);
        v117 = v9;
      }

      else
      {
        outlined destroy of TransformationCapability(&v138);
      }

      v48 = v119;
      v6 = v115;
    }

    else
    {
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v86 = type metadata accessor for Logger();
      __swift_project_value_buffer(v86, static Logger.logger);
      outlined init with copy of TransformationCapability(&v138, &v133);

      v87 = Logger.logObject.getter();
      v88 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v87, v88))
      {
        v89 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v130[0] = v90;
        *v89 = 136315394;
        v133 = v138;
        v134 = v139;
        v135 = v140;
        v136 = v141;
        v91 = String.init<A>(describing:)();
        v93 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v92, v130);

        *(v89 + 4) = v93;
        *(v89 + 12) = 2080;
        v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v74, v130);

        *(v89 + 14) = v94;
        _os_log_impl(&dword_1DD1FF000, v87, v88, "Capability %s is supported by: %s", v89, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E12AA0F0](v90, -1, -1);
        MEMORY[0x1E12AA0F0](v89, -1, -1);
      }

      else
      {

        outlined destroy of TransformationCapability(&v138);
      }

      outlined destroy of TransformationCapability(&v138);
      v48 = v119;
      v10 = v114;
      v6 = v115;
      v47 = v113;
      v46 = v124;
    }
  }

  while (1)
  {
    v49 = v48 + 1;
    if (__OFADD__(v48, 1))
    {
      break;
    }

    if (v49 >= v47)
    {

      *(v110 + 24) = v117;
      v108 = PluginCatalog.init(packages:)(v120);
      __swift_destroy_boxed_opaque_existential_0(a1);
      _sxRi_zRi0_zlySayxGIsegr_Sg13SiriUtilities24PluginCapabilityExposingRzAC0C7PackageRzlWOe_0(v127, 0);
      _sxRi_zRi0_zlySayxGIsegr_Sg13SiriUtilities24PluginCapabilityExposingRzAC0C7PackageRzlWOe_0(v121, v6);
      return v108;
    }

    v46 = v43[v49];
    ++v48;
    if (v46)
    {
      goto LABEL_36;
    }
  }

LABEL_79:
  __break(1u);
LABEL_80:
  __break(1u);
LABEL_81:
  __break(1u);
LABEL_82:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized closure #1 in static PluginCapabilityCatalog.load<A>(finder:cache:)@<X0>(uint64_t *a1@<X8>)
{
  result = URL.readCacheData()();
  if (v1)
  {

    result = 0;
    v4 = 0xF000000000000000;
  }

  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t specialized closure #2 in static PluginCapabilityCatalog.load<A>(finder:cache:)(uint64_t a1, void *a2)
{
  type metadata accessor for NSBundle();
  static NSBundle.packageFrom(_:)(a1, a2, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities13PluginPackage_pSgMd, &_s13SiriUtilities13PluginPackage_pSgMR);
  if (swift_dynamicCast())
  {
    return v5[5];
  }

  else
  {
    return 0;
  }
}

uint64_t specialized closure #3 in static PluginCapabilityCatalog.load<A>(finder:cache:)(uint64_t a1)
{
  outlined init with copy of Transforming(a1, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities23PluginCapabilityCatalogCySo8NSBundleCGMd, &_s13SiriUtilities23PluginCapabilityCatalogCySo8NSBundleCGMR);
  swift_allocObject();
  return specialized PluginCapabilityCatalog.init(finder:)(v2);
}

uint64_t specialized closure #4 in static PluginCapabilityCatalog.load<A>(finder:cache:)(uint64_t a1, uint64_t a2, void *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities23PluginCapabilityCatalogCySo8NSBundleCGMd, &_s13SiriUtilities23PluginCapabilityCatalogCySo8NSBundleCGMR);
  lazy protocol witness table accessor for type PluginCapabilityCatalog<NSBundle> and conformance PluginCapabilityCatalog<A>(&lazy protocol witness table cache variable for type PluginCapabilityCatalog<NSBundle> and conformance PluginCapabilityCatalog<A>, &_s13SiriUtilities23PluginCapabilityCatalogCySo8NSBundleCGMd, &_s13SiriUtilities23PluginCapabilityCatalogCySo8NSBundleCGMR, &protocol conformance descriptor for PluginCapabilityCatalog<A>);
  result = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  if (!v3)
  {
    v7 = result;
    v8 = v6;
    v9 = a3[3];
    v10 = a3[4];
    __swift_project_boxed_opaque_existential_1(a3, v9);
    (*(v10 + 8))(v7, v8, v9, v10);
    return outlined consume of Data._Representation(v7, v8);
  }

  return result;
}

void *one-time initialization function for sharedInstance()
{
  type metadata accessor for TransformationPluginLoader();
  swift_allocObject();
  result = TransformationPluginLoader.().init()();
  static TransformationPluginLoader.sharedInstance = result;
  return result;
}

uint64_t static TransformationPluginLoader.sharedInstance.getter()
{
  if (one-time initialization token for sharedInstance != -1)
  {
    swift_once();
  }
}

uint64_t one-time initialization function for systemPluginPath()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v2, static TransformationPluginLoader.systemPluginPath);
  __swift_project_value_buffer(v0, static TransformationPluginLoader.systemPluginPath);
  type metadata accessor for TransformationPluginLoader();
  static TransformationPluginLoader.libraryDirectory()();
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v4, v0);
}

void static TransformationPluginLoader.libraryDirectory()()
{
  v19[1] = *MEMORY[0x1E69E9840];
  v0 = [objc_opt_self() defaultManager];
  v17 = 0;
  v1 = [v0 URLForDirectory:5 inDomain:8 appropriateForURL:0 create:0 error:&v17];

  v2 = v17;
  if (v1)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v3 = v2;
  }

  else
  {
    v4 = v17;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v17 = 0;
    v18 = 0xE000000000000000;
    _StringGuts.grow(_:)(41);

    v17 = 0xD000000000000027;
    v18 = 0x80000001DD26B9E0;
    swift_getErrorValue();
    v5 = Error.localizedDescription.getter();
    MEMORY[0x1E12A8C40](v5);

    v7 = v17;
    v6 = v18;
    v8 = one-time initialization token for logger;

    if (v8 != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logger.logger);

    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v19[0] = v13;
      *v12 = 136315650;
      v14 = StaticString.description.getter();
      v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v15, v19);

      *(v12 + 4) = v16;
      *(v12 + 12) = 2048;
      *(v12 + 14) = 115;
      *(v12 + 22) = 2080;
      *(v12 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, v19);
      _os_log_impl(&dword_1DD1FF000, v10, v11, "FatalError at %s:%lu - %s", v12, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12AA0F0](v13, -1, -1);
      MEMORY[0x1E12AA0F0](v12, -1, -1);
    }

    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }
}

uint64_t one-time initialization function for legacyPluginPath()
{
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x1EEE9AC00](v0);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v2, static TransformationPluginLoader.legacyPluginPath);
  __swift_project_value_buffer(v0, static TransformationPluginLoader.legacyPluginPath);
  type metadata accessor for TransformationPluginLoader();
  static TransformationPluginLoader.libraryDirectory()();
  URL.appendingPathComponent(_:isDirectory:)();
  return (*(v1 + 8))(v4, v0);
}

uint64_t TransformationPluginLoader.().init()()
{
  v1 = v0;
  v2 = type metadata accessor for URL();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v25 - v7;
  *(v0 + 24) = 0;
  type metadata accessor for TransformationRegistry();
  swift_allocObject();
  *(v0 + 32) = TransformationRegistry.init(fallback:)(0);

  TransformationRegistry.registerCommonTransformers()();

  if (one-time initialization token for systemPluginPath != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v2, static TransformationPluginLoader.systemPluginPath);
  v28[3] = v2;
  v28[4] = &protocol witness table for URL;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v28);
  v11 = *(v3 + 16);
  v11(boxed_opaque_existential_0, v9, v2);
  if (one-time initialization token for legacyPluginPath != -1)
  {
    swift_once();
  }

  v12 = __swift_project_value_buffer(v2, static TransformationPluginLoader.legacyPluginPath);
  v26 = v2;
  v27 = &protocol witness table for URL;
  v13 = __swift_allocate_boxed_opaque_existential_0(&v25);
  v11(v13, v12, v2);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities12PluginFinder_pGMd, &_ss23_ContiguousArrayStorageCy13SiriUtilities12PluginFinder_pGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1DD2671B0;
  outlined init with copy of Transforming(v28, v14 + 32);
  outlined init with take of Transforming(&v25, v14 + 72);
  __swift_destroy_boxed_opaque_existential_0(v28);
  static TransformationPluginLoader.getSystemPluginCachePathURL()();
  __swift_storeEnumTagSinglePayload(v8, 0, 1, v2);
  v15 = _s13SiriUtilities23PluginCapabilityCatalogC4load6finder5cacheACyxGAA0C6Finder_p_qd__SgtAA15CacheDataSourceRd__lFZSo8NSBundleC_10Foundation3URLVTt1g5Tf4en_nAA06MergedcI0V_TB5(v14, v8);

  outlined destroy of CheckedContinuation<(), Error>?(v8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  *(v1 + 16) = v15;
  v16 = [objc_opt_self() processInfo];
  v17 = [v16 environment];

  v18 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  specialized Dictionary.subscript.getter(0xD00000000000002BLL, 0x80000001DD26B8B0, v18);
  v20 = v19;

  if (v20)
  {
    URL.init(fileURLWithPath:)();

    v21 = _s13SiriUtilities23PluginCapabilityCatalogC4load6finder5cacheACyxGAA0C6Finder_p_qd__SgtAA15CacheDataSourceRd__lFZSo8NSBundleC_AA04NulljkL0VTt1B5Tf4en_n10Foundation3URLV_Tg5(v5, 0);
    (*(v3 + 8))(v5, v2);
    *(v1 + 24) = v21;
  }

  specialized TransformationPluginLoader.registerLoadableTransformations<A>(container:)(v22);

  if (*(v1 + 24))
  {

    specialized TransformationPluginLoader.registerLoadableTransformations<A>(container:)(v23);
  }

  return v1;
}

uint64_t static TransformationPluginLoader.getSystemPluginCachePathURL()()
{
  v25[1] = *MEMORY[0x1E69E9840];
  v0 = type metadata accessor for URL();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() defaultManager];
  v23 = 0;
  v5 = [v4 URLForDirectory:13 inDomain:1 appropriateForURL:0 create:0 error:&v23];

  v6 = v23;
  if (v5)
  {
    static URL._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    URL.appendingPathComponent(_:)();
    return (*(v1 + 8))(v3, v0);
  }

  else
  {
    v9 = v23;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v23 = 0;
    v24 = 0xE000000000000000;
    _StringGuts.grow(_:)(39);

    v23 = 0xD000000000000025;
    v24 = 0x80000001DD26B8E0;
    swift_getErrorValue();
    v10 = Error.localizedDescription.getter();
    MEMORY[0x1E12A8C40](v10);

    v12 = v23;
    v11 = v24;
    v13 = one-time initialization token for logger;

    if (v13 != -1)
    {
      swift_once();
    }

    v14 = type metadata accessor for Logger();
    __swift_project_value_buffer(v14, static Logger.logger);

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v25[0] = v18;
      *v17 = 136315650;
      v19 = StaticString.description.getter();
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v25);

      *(v17 + 4) = v21;
      *(v17 + 12) = 2048;
      *(v17 + 14) = 106;
      *(v17 + 22) = 2080;
      *(v17 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, v25);
      _os_log_impl(&dword_1DD1FF000, v15, v16, "FatalError at %s:%lu - %s", v17, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x1E12AA0F0](v18, -1, -1);
      MEMORY[0x1E12AA0F0](v17, -1, -1);
    }

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

void specialized TransformationPluginLoader.registerLoadableTransformations<A>(container:)(uint64_t a1)
{
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  _s13SiriUtilities6LoggerO12withSignpost4name3log10completionxs12StaticStringV_So06OS_os_G0CxyKXEtKlFZ10Foundation4DataVSg_Tt3g5();
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.logger);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 134218240;
    swift_beginAccess();
    *(v4 + 4) = 0;
    *(v4 + 12) = 2048;
    swift_beginAccess();
    *(v4 + 14) = 0;
    _os_log_impl(&dword_1DD1FF000, v2, v3, "Loaded %ld typed transformations and %ld named transformations", v4, 0x16u);
    MEMORY[0x1E12AA0F0](v4, -1, -1);
  }
}

uint64_t specialized closure #1 in TransformationPluginLoader.registerLoadableTransformations<A>(container:)(uint64_t a1, void *a2, uint64_t a3, void *a4)
{
  v39 = a3;
  v5 = (*(*a1 + 224))();
  v6 = *(v5 + 16);
  if (!v6)
  {
  }

  v7 = 32;
  v24 = v5;
  while (1)
  {
    v8 = *(v5 + v7);
    v9 = *(v5 + v7 + 16);
    v10 = *(v5 + v7 + 48);
    v33 = *(v5 + v7 + 32);
    v34 = v10;
    *v32 = v8;
    *&v32[16] = v9;
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities22LoadableTransformationCyAA23PluginCapabilityCatalogCySo8NSBundleCGGMd, &_s13SiriUtilities22LoadableTransformationCyAA23PluginCapabilityCatalogCySo8NSBundleCGGMR);
    result = swift_allocObject();
    v13 = result;
    *(result + 88) = 0u;
    *(result + 104) = 0u;
    *(result + 16) = a1;
    v14 = *&v32[16];
    *(result + 24) = *v32;
    v15 = v33;
    *(result + 40) = v14;
    *(result + 56) = v15;
    *(result + 72) = v34;
    if (v32[0] == 1)
    {
      break;
    }

    if (__OFADD__(*a4, 1))
    {
      goto LABEL_13;
    }

    ++*a4;
    v20 = *(v39 + 32);
    v37 = *&v32[8];
    v38 = *&v32[24];
    v30 = *&v32[8];
    v31 = *&v32[24];
    v28 = v11;
    v29 = &protocol witness table for LoadableTransformation<A>;
    *&v26 = result;
    v21 = *(*v20 + 192);
    outlined init with copy of TransformationCapability(v32, v25);
    outlined init with copy of TransformationCapability(v32, v25);

    outlined init with copy of TransformationIdentifier(&v37, v25);
    v21(&v30, &v26);
    outlined destroy of TransformationCapability(v32);

    v19 = &v26;
LABEL_8:
    __swift_destroy_boxed_opaque_existential_0(v19);
    v7 += 64;
    --v6;
    v5 = v24;
    if (!v6)
    {
    }
  }

  if (!__OFADD__(*a2, 1))
  {
    ++*a2;
    v16 = *(v39 + 32);
    v28 = v11;
    v29 = &protocol witness table for LoadableTransformation<A>;
    *&v26 = result;
    v17 = *(*v16 + 184);
    outlined init with copy of TransformationCapability(v32, v25);
    outlined init with copy of TransformationCapability(v32, v25);

    v17(&v26);
    __swift_destroy_boxed_opaque_existential_0(&v26);
    v35 = *&v32[8];
    v36 = *&v32[24];
    v26 = *&v32[8];
    v27 = *&v32[24];
    v25[3] = v11;
    v25[4] = &protocol witness table for LoadableTransformation<A>;
    v25[0] = v13;
    v18 = *(*v16 + 192);

    outlined init with copy of TransformationIdentifier(&v35, &v30);
    v18(&v26, v25);
    outlined destroy of TransformationCapability(v32);

    v19 = v25;
    goto LABEL_8;
  }

  __break(1u);
LABEL_13:
  __break(1u);
  return result;
}

uint64_t TransformationPluginLoader.deinit()
{

  return v0;
}

uint64_t TransformationPluginLoader.__deallocating_deinit()
{
  TransformationPluginLoader.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 40, 7);
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int)@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

unint64_t specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out A?)@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  result = specialized closure #2 in static PluginCapabilityCatalog.load<A>(finder:cache:)(*a1, *(a1 + 8));
  *a2 = result;
  return result;
}

unint64_t (*_s13SiriUtilities23PluginCapabilityCatalogC4load6finder5cacheACyxGAA0C6Finder_p_qd__SgtAA15CacheDataSourceRd__lFZSo8NSBundleC_10Foundation3URLVTt1g5Tf4en_nAA06MergedcI0V_TB5(uint64_t a1, uint64_t a2))@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = type metadata accessor for CodingUserInfoKey();
  v37 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v34 - v10;
  v12 = type metadata accessor for URL();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v46[3] = &type metadata for MergedPluginFinder;
  v46[4] = &protocol witness table for MergedPluginFinder;
  v46[0] = a1;
  outlined init with copy of URL?(a2, v11);
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {

    v16 = outlined destroy of CheckedContinuation<(), Error>?(v11, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    v17 = v13;
LABEL_10:
    if (one-time initialization token for pluginLoaderLog != -1)
    {
      v16 = swift_once();
    }

    v25 = static Logger.pluginLoaderLog;
    MEMORY[0x1EEE9AC00](v16);
    *(&v34 - 2) = v46;
    _s13SiriUtilities6LoggerO12withSignpost4name3log10completionxs12StaticStringV_So06OS_os_G0CxyKXEtKlFZAA23PluginCapabilityCatalogCySo8NSBundleCG_Tt3g5("FindPlugins", 11, 2, v25, partial apply for specialized closure #3 in static PluginCapabilityCatalog.load<A>(finder:cache:), (&v34 - 4), v26, v27, v34, v35, v36, v37, v38, v39, *(&v39 + 1), v40, v41, v42, v43, v44);
    v33 = v28;
    outlined init with copy of URL?(a2, v9);
    if (__swift_getEnumTagSinglePayload(v9, 1, v12) == 1)
    {
      outlined destroy of CheckedContinuation<(), Error>?(v9, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }

    else
    {
      v41 = v12;
      v42 = &protocol witness table for URL;
      boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(&v39);
      (*(v17 + 32))(boxed_opaque_existential_0, v9, v12);
      outlined init with take of Transforming(&v39, &v43);
      type metadata accessor for PropertyListEncoder();
      swift_allocObject();
      v30 = PropertyListEncoder.init()();
      v31 = dispatch thunk of PropertyListEncoder.outputFormat.setter();
      MEMORY[0x1EEE9AC00](v31);
      *(&v34 - 4) = v30;
      *(&v34 - 3) = v33;
      *(&v34 - 2) = &v43;
      _s13SiriUtilities6LoggerO12withSignpost4name3log10completionxs12StaticStringV_So06OS_os_G0CxyKXEtKlFZ10Foundation4DataVSg_Tt3g5();

      __swift_destroy_boxed_opaque_existential_0(&v43);
    }

    goto LABEL_15;
  }

  v36 = v13;
  (*(v13 + 32))(v15, v11, v12);
  v18 = one-time initialization token for pluginLoaderLog;

  if (v18 != -1)
  {
    v19 = swift_once();
  }

  MEMORY[0x1EEE9AC00](v19);
  *(&v34 - 2) = v15;
  _s13SiriUtilities6LoggerO12withSignpost4name3log10completionxs12StaticStringV_So06OS_os_G0CxyKXEtKlFZ10Foundation4DataVSg_Tt3g5();
  v20 = v44;
  if (v44 >> 60 == 15)
  {
    v17 = v36;
    v16 = (*(v36 + 8))(v15, v12);
    goto LABEL_10;
  }

  v34 = a2;
  v35 = v43;
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  if (one-time initialization token for catalogPackageInflator != -1)
  {
    swift_once();
  }

  v21 = __swift_project_value_buffer(v4, static CodingUserInfoKey.catalogPackageInflator);
  v22 = v38;
  (*(v37 + 16))(v38, v21, v4);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSBundleCSgSScMd, &_sSo8NSBundleCSgSScMR);
  v43 = specialized thunk for @escaping @callee_guaranteed (@guaranteed String) -> (@out A?);
  v44 = 0;
  v23 = dispatch thunk of PropertyListDecoder.userInfo.modify();
  specialized Dictionary.subscript.setter(&v43, v22);
  v23(&v39, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities23PluginCapabilityCatalogCySo8NSBundleCGMd, &_s13SiriUtilities23PluginCapabilityCatalogCySo8NSBundleCGMR);
  lazy protocol witness table accessor for type PluginCapabilityCatalog<NSBundle> and conformance PluginCapabilityCatalog<A>(&lazy protocol witness table cache variable for type PluginCapabilityCatalog<NSBundle> and conformance PluginCapabilityCatalog<A>, &_s13SiriUtilities23PluginCapabilityCatalogCySo8NSBundleCGMd, &_s13SiriUtilities23PluginCapabilityCatalogCySo8NSBundleCGMR, &protocol conformance descriptor for PluginCapabilityCatalog<A>);
  v24 = v35;
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();

  outlined consume of Data?(v24, v20);
  v33 = v43;
  (*(v36 + 8))(v15, v12);
LABEL_15:
  __swift_destroy_boxed_opaque_existential_0(v46);
  return v33;
}

uint64_t _s13SiriUtilities23PluginCapabilityCatalogC4load6finder5cacheACyxGAA0C6Finder_p_qd__SgtAA15CacheDataSourceRd__lFZSo8NSBundleC_AA04NulljkL0VTt1B5Tf4en_n10Foundation3URLV_Tg5(uint64_t a1, char a2)
{
  v4 = type metadata accessor for OSSignpostID();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for URL();
  v25[3] = v8;
  v25[4] = &protocol witness table for URL;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0(v25);
  v10 = (*(*(v8 - 8) + 16))(boxed_opaque_existential_0, a1, v8);
  if ((a2 & 1) == 0)
  {
    if (one-time initialization token for pluginLoaderLog != -1)
    {
      swift_once();
    }

    v11 = static Logger.pluginLoaderLog;
    v10 = OS_os_log.signpostsEnabled.getter();
    if (v10)
    {
      v12 = v11;
      OSSignpostID.init(log:)();
      static os_signpost_type_t.begin.getter();
      os_signpost(_:dso:log:name:signpostID:)();
      static os_signpost_type_t.end.getter();
      os_signpost(_:dso:log:name:signpostID:)();
      v10 = (*(v5 + 8))(v7, v4);
    }
  }

  if (one-time initialization token for pluginLoaderLog != -1)
  {
    v10 = swift_once();
  }

  v13 = static Logger.pluginLoaderLog;
  MEMORY[0x1EEE9AC00](v10);
  *(&v21 - 2) = v25;
  _s13SiriUtilities6LoggerO12withSignpost4name3log10completionxs12StaticStringV_So06OS_os_G0CxyKXEtKlFZAA23PluginCapabilityCatalogCySo8NSBundleCG_Tt3g5("FindPlugins", 11, 2, v13, partial apply for specialized closure #3 in static PluginCapabilityCatalog.load<A>(finder:cache:), (&v21 - 2), v14, v15, v21, *(&v21 + 1), v22, *(&v22 + 1), v23, v24[0], v24[1], v24[2], v24[3], v24[4], v24[5], v25[0]);
  v17 = v16;
  LOBYTE(v24[0]) = a2 & 1;
  if (a2)
  {
    v21 = 0u;
    v22 = 0u;
    v23 = 0;
    goto LABEL_14;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities13CacheDataSink_pMd, "~f");
  if ((swift_dynamicCast() & 1) == 0)
  {
    v23 = 0;
    v21 = 0u;
    v22 = 0u;
    goto LABEL_14;
  }

  if (!*(&v22 + 1))
  {
LABEL_14:
    outlined destroy of CheckedContinuation<(), Error>?(&v21, &_s13SiriUtilities13CacheDataSink_pSgMd, "|f");
    goto LABEL_15;
  }

  outlined init with take of Transforming(&v21, v24);
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  v18 = PropertyListEncoder.init()();
  v19 = dispatch thunk of PropertyListEncoder.outputFormat.setter();
  MEMORY[0x1EEE9AC00](v19);
  *(&v21 - 4) = v18;
  *(&v21 - 3) = v17;
  *(&v21 - 2) = v24;
  _s13SiriUtilities6LoggerO12withSignpost4name3log10completionxs12StaticStringV_So06OS_os_G0CxyKXEtKlFZ10Foundation4DataVSg_Tt3g5();

  __swift_destroy_boxed_opaque_existential_0(v24);
LABEL_15:
  __swift_destroy_boxed_opaque_existential_0(v25);
  return v17;
}

uint64_t partial apply for specialized thunk for @callee_guaranteed () -> (@owned [A])@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for specialized closure #3 in static PluginCapabilityCatalog.load<A>(finder:cache:)@<X0>(uint64_t *a1@<X8>)
{
  return sub_1DD217340(a1, *(v1 + 16));
}

{
  return partial apply for specialized closure #3 in static PluginCapabilityCatalog.load<A>(finder:cache:)(a1);
}

uint64_t partial apply for specialized closure #4 in static PluginCapabilityCatalog.load<A>(finder:cache:)()
{
  return specialized closure #4 in static PluginCapabilityCatalog.load<A>(finder:cache:)(*(v0 + 16), *(v0 + 24), *(v0 + 32));
}

{
  return partial apply for specialized closure #4 in static PluginCapabilityCatalog.load<A>(finder:cache:)();
}

uint64_t lazy protocol witness table accessor for type PluginCapabilityCatalog<NSBundle> and conformance PluginCapabilityCatalog<A>(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t Restrictions.init(deviceRestrictions:)@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  result = DeviceRestrictions.aceSet.getter();
  *a2 = result;
  a2[1] = v3;
  return result;
}

uint64_t Restrictions.init(restrictedCommands:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;

  result = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(v3);
  v5 = result;
  v6 = 0;
  v7 = 0;
  v8 = *(result + 16);
  for (i = (result + 40); ; i += 2)
  {
    if (v8 == v6)
    {

      a2[1] = v7;
      return result;
    }

    if (v6 >= *(v5 + 16))
    {
      break;
    }

    ++v6;
    v11 = *(i - 1);
    v10 = *i;

    v12._countAndFlagsBits = v11;
    v12._object = v10;
    result = DeviceRestrictions.init(aceValue:)(v12).rawValue;
    v7 |= v13;
  }

  __break(1u);
  return result;
}

void Restrictions.init(aceValue:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, "dl");
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1DD265D10;
  *(inited + 32) = a1;
  *(inited + 40) = a2;
  v11 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5(inited);

  _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(v12);
  OUTLINED_FUNCTION_0_30();
  while (1)
  {
    if (v5 == v4)
    {

      *a3 = v11;
      a3[1] = v3;
      return;
    }

    if (v4 >= *(a1 + 16))
    {
      break;
    }

    ++v4;
    v14 = *(v6 - 1);
    v13 = *v6;

    v15._countAndFlagsBits = v14;
    v15._object = v13;
    DeviceRestrictions.init(aceValue:)(v15);
    v3 |= v16;
    v6 += 2;
  }

  __break(1u);
}

uint64_t Restrictions.encode(to:)(void *a1)
{
  v2 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);

  dispatch thunk of Encoder.singleValueContainer()();
  _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(v2);
  __swift_mutable_project_boxed_opaque_existential_1(v4, v4[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
  dispatch thunk of SingleValueEncodingContainer.encode<A>(_:)();

  return __swift_destroy_boxed_opaque_existential_0(v4);
}

uint64_t Restrictions.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.singleValueContainer()();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  __swift_project_boxed_opaque_existential_1(v15, v15[3]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  dispatch thunk of SingleValueDecodingContainer.decode<A>(_:)();
  _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v16);

  result = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(v14);
  v6 = result;
  v7 = 0;
  v8 = 0;
  v9 = *(result + 16);
  for (i = (result + 40); ; i += 2)
  {
    if (v9 == v7)
    {

      __swift_destroy_boxed_opaque_existential_0(v15);
      *a2 = v14;
      a2[1] = v8;
      return __swift_destroy_boxed_opaque_existential_0(a1);
    }

    if (v7 >= *(v6 + 16))
    {
      break;
    }

    ++v7;
    v12 = *(i - 1);
    v11 = *i;

    v13._countAndFlagsBits = v12;
    v13._object = v11;
    result = DeviceRestrictions.init(aceValue:)(v13).rawValue;
    v8 |= v16;
  }

  __break(1u);
  return result;
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC13SiriUtilities14TypeIdentifierV_Tt0g5(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CD0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy13SiriUtilities14TypeIdentifierVGMd, "\bq");
  result = static _SetStorage.allocate(capacity:)();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v10 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = result & v10;
      v12 = (result & v10) >> 6;
      v13 = *(v6 + 8 * v12);
      v14 = 1 << (result & v10);
      if ((v14 & v13) == 0)
      {
        break;
      }

      v15 = (*(v3 + 48) + 16 * v11);
      v16 = *v15 == v9 && v15[1] == v8;
      if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v11 + 1;
    }

    *(v6 + 8 * v12) = v14 | v13;
    v17 = (*(v3 + 48) + 16 * v11);
    *v17 = v9;
    v17[1] = v8;
    v18 = *(v3 + 16);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v20;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5(uint64_t a1)
{
  if (!*(a1 + 16))
  {
    v3 = MEMORY[0x1E69E7CD0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.allocate(capacity:)();
  v3 = result;
  v4 = *(a1 + 16);
  if (!v4)
  {
LABEL_19:

    return v3;
  }

  v5 = 0;
  v6 = result + 56;
  while (v5 < *(a1 + 16))
  {
    v7 = (a1 + 32 + 16 * v5);
    v9 = *v7;
    v8 = v7[1];
    ++v5;
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v10 = ~(-1 << *(v3 + 32));
    while (1)
    {
      v11 = result & v10;
      v12 = (result & v10) >> 6;
      v13 = *(v6 + 8 * v12);
      v14 = 1 << (result & v10);
      if ((v14 & v13) == 0)
      {
        break;
      }

      v15 = (*(v3 + 48) + 16 * v11);
      v16 = *v15 == v9 && v15[1] == v8;
      if (v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        goto LABEL_16;
      }

      result = v11 + 1;
    }

    *(v6 + 8 * v12) = v14 | v13;
    v17 = (*(v3 + 48) + 16 * v11);
    *v17 = v9;
    v17[1] = v8;
    v18 = *(v3 + 16);
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
      goto LABEL_21;
    }

    *(v3 + 16) = v20;
LABEL_16:
    if (v5 == v4)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_21:
  __break(1u);
  return result;
}

uint64_t SiriEnvironmentValue.wrappedValue.getter()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v0 = type metadata accessor for Logger();
  __swift_project_value_buffer(v0, static Logger.logger);
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    v4 = swift_slowAlloc();
    v9 = v4;
    *v3 = 136315650;
    v5 = StaticString.description.getter();
    v7 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, &v9);

    *(v3 + 4) = v7;
    *(v3 + 12) = 2048;
    *(v3 + 14) = 21;
    *(v3 + 22) = 2080;
    *(v3 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x80000001DD26BA30, &v9);
    _os_log_impl(&dword_1DD1FF000, v1, v2, "FatalError at %s:%lu - %s", v3, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1E12AA0F0](v4, -1, -1);
    MEMORY[0x1E12AA0F0](v3, -1, -1);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t SiriEnvironmentValue.__allocating_init<A>()()
{
  KeyPath = swift_getKeyPath();
  v2 = *(v0 + 104);

  return v2(KeyPath);
}

uint64_t SiriEnvironmentValue.__allocating_init(_:)(uint64_t a1)
{
  OUTLINED_FUNCTION_23();
  result = swift_allocObject();
  *(result + 16) = partial apply for closure #1 in SiriEnvironmentValue.init(_:);
  *(result + 24) = a1;
  return result;
}

uint64_t SiriEnvironmentValue.init(_:)(uint64_t a1)
{
  *(v1 + 16) = partial apply for closure #1 in SiriEnvironmentValue.init(_:);
  *(v1 + 24) = a1;
  return v1;
}

uint64_t SiriEnvironmentValue.__allocating_init<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_23();
  v6 = swift_allocObject();
  SiriEnvironmentValue.init<A>(_:_:)(a1, a2, a3);
  return v6;
}

uint64_t SiriEnvironmentValue.init<A>(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_allocObject();
  v7[2] = a3;
  v7[3] = a1;
  v7[4] = a2;
  *(v3 + 16) = partial apply for closure #1 in SiriEnvironmentValue.init<A>(_:_:);
  *(v3 + 24) = v7;
  return v3;
}

uint64_t closure #1 in SiriEnvironmentValue.init<A>(_:_:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  (*(*a1 + 208))(a2, *(*a3 + *MEMORY[0x1E69E77B0]), a4);
  swift_getAtKeyPath();
  return swift_unknownObjectRelease();
}

void *specialized ObjectAssociation.init()()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11ObjectEntry33_B7E3A56AD457ECD1C0BC5D91BCBAE1E5LLVyAA0A11EnvironmentCGMd, &_s13SiriUtilities11ObjectEntry33_B7E3A56AD457ECD1C0BC5D91BCBAE1E5LLVyAA0A11EnvironmentCGMR);
  v0[2] = Dictionary.init(dictionaryLiteral:)();
  v1 = type metadata accessor for DispatchSemaphoreLock();
  v2 = swift_allocObject();
  *(v2 + 16) = dispatch_semaphore_create(1);
  v0[6] = v1;
  v0[7] = &protocol witness table for DispatchSemaphoreLock;
  v0[3] = v2;
  return v0;
}

void *key path getter for SiriEnvironmentLocating<>.siriEnvironment : <A>A@<X0>(uint64_t *a1@<X8>)
{
  result = SiriEnvironmentLocating<>.siriEnvironment.getter();
  *a1 = result;
  return result;
}

uint64_t (*SiriEnvironmentLocating<>.siriEnvironment.modify(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t *a1, char a2)
{
  a1[2] = a3;
  a1[3] = v3;
  a1[1] = a2;
  *a1 = SiriEnvironmentLocating<>.siriEnvironment.getter();
  return SiriEnvironmentLocating<>.siriEnvironment.modify;
}

uint64_t SiriEnvironmentLocating<>.siriEnvironment.modify(uint64_t *a1, char a2)
{
  if ((a2 & 1) == 0)
  {
    return SiriEnvironmentLocating<>.siriEnvironment.setter(*a1);
  }

  SiriEnvironmentLocating<>.siriEnvironment.setter(v2);
}

void *one-time initialization function for cache()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities17ObjectAssociationCyAA0A11EnvironmentCGMd, "PG");
  swift_allocObject();
  result = specialized ObjectAssociation.init()();
  static ProcessWideEnvironment.cache = result;
  return result;
}

uint64_t SiriEnvironment.coreTelephonyService.getter(uint64_t a1)
{
  v1 = type metadata accessor for CoreTelephonyService();
  OUTLINED_FUNCTION_7();
  v8 = *(v2 + 208);
  OUTLINED_FUNCTION_0_32();
  v6 = lazy protocol witness table accessor for type CoreTelephonyService and conformance CoreTelephonyService(v3, v4, v5, &protocol conformance descriptor for CoreTelephonyService);

  return v8(v1, v1, v6);
}

uint64_t SiriEnvironment.coreTelephonyService.setter(uint64_t a1)
{
  v2 = type metadata accessor for CoreTelephonyService();
  OUTLINED_FUNCTION_7();
  v9 = *(v3 + 216);
  OUTLINED_FUNCTION_0_32();
  v7 = lazy protocol witness table accessor for type CoreTelephonyService and conformance CoreTelephonyService(v4, v5, v6, &protocol conformance descriptor for CoreTelephonyService);

  return v9(a1, v2, v2, v7);
}

uint64_t (*SiriEnvironment.coreTelephonyService.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  v3 = type metadata accessor for CoreTelephonyService();
  a1[2] = v3;
  OUTLINED_FUNCTION_7();
  v5 = *(v4 + 208);
  OUTLINED_FUNCTION_0_32();
  v9 = lazy protocol witness table accessor for type CoreTelephonyService and conformance CoreTelephonyService(v6, v7, v8, &protocol conformance descriptor for CoreTelephonyService);
  a1[3] = v9;
  *a1 = v5(v3, v3, v9);
  return SiriEnvironment.networkAvailability.modify;
}

uint64_t key path setter for CoreTelephonyService.mock : CoreTelephonyService(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 144);

  return v2(v3);
}

double key path getter for CoreTelephonyService.coreTelephonyAPIBridge : CoreTelephonyService@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  (*(**a1 + 160))(v6);
  v3 = v6[1];
  *a2 = v6[0];
  a2[1] = v3;
  result = *&v7;
  v5 = v8;
  a2[2] = v7;
  a2[3] = v5;
  return result;
}

uint64_t key path setter for CoreTelephonyService.coreTelephonyAPIBridge : CoreTelephonyService(__int128 *a1, uint64_t a2)
{
  v2 = a1[1];
  v6[0] = *a1;
  v6[1] = v2;
  v3 = a1[3];
  v6[2] = a1[2];
  v6[3] = v3;
  v4 = *(**a2 + 168);

  return v4(v6);
}

uint64_t CoreTelephonyService.coreTelephonyAPIBridge.getter@<X0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 80);
  *a1 = *(v1 + 24);
  v4 = *(v1 + 48);
  *(a1 + 8) = *(v1 + 32);
  *(a1 + 24) = v4;
  *(a1 + 40) = *(v1 + 64);
  *(a1 + 56) = v3;
}

uint64_t CoreTelephonyService.coreTelephonyAPIBridge.setter(_OWORD *a1)
{
  swift_beginAccess();
  v3 = a1[1];
  *(v1 + 24) = *a1;
  *(v1 + 40) = v3;
  v4 = a1[3];
  *(v1 + 56) = a1[2];
  *(v1 + 72) = v4;
}

uint64_t CoreTelephonyService.__allocating_init(coreTelephonyAPIBridge:)(_OWORD *a1)
{
  v2 = swift_allocObject();
  CoreTelephonyService.init(coreTelephonyAPIBridge:)(a1);
  return v2;
}

void *CoreTelephonyService.init(coreTelephonyAPIBridge:)(_OWORD *a1)
{
  v2 = v1;
  v17 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_8_0();
  v5 = v4 - v3;
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_8_0();
  v7 = type metadata accessor for DispatchQoS();
  MEMORY[0x1EEE9AC00](v7 - 8);
  OUTLINED_FUNCTION_8_0();
  v1[2] = 0;
  type metadata accessor for OS_dispatch_queue();
  v1[12] = 0;
  v1[13] = 0;
  static DispatchQoS.unspecified.getter();
  lazy protocol witness table accessor for type CoreTelephonyService and conformance CoreTelephonyService(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, 255, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, "nB");
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v8 = *MEMORY[0x1E69E8090];
  v9 = *(v18 + 104);
  v9(v5, v8, v17);
  OUTLINED_FUNCTION_3_17();
  v1[14] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static DispatchQoS.unspecified.getter();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  v9(v5, v8, v17);
  OUTLINED_FUNCTION_3_17();
  v1[15] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v10 = [objc_allocWithZone(MEMORY[0x1E696AD10]) init];
  v1[11] = v10;
  v11 = v10;
  v12 = MEMORY[0x1E12A8BC0](0xD000000000000021, 0x80000001DD26BB30);
  [v11 setName_];

  v13 = a1[1];
  *(v2 + 3) = *a1;
  *(v2 + 5) = v13;
  v14 = a1[3];
  *(v2 + 7) = a1[2];
  *(v2 + 9) = v14;
  return v2;
}

unint64_t lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, "nB");
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A]);
  }

  return result;
}

uint64_t CoreTelephonyService.__allocating_init(storage:)()
{
  v3[0] = closure #1 in CoreTelephonyAPIBridge.init();
  v3[1] = 0;
  v3[2] = closure #2 in CoreTelephonyAPIBridge.init();
  v3[3] = 0;
  v3[4] = closure #3 in CoreTelephonyAPIBridge.init();
  v3[5] = 0;
  v3[6] = closure #4 in CoreTelephonyAPIBridge.init();
  v3[7] = 0;
  v1 = (*(v0 + 232))(v3);

  return v1;
}

id *CoreTelephonyService.deinit()
{

  return v0;
}

uint64_t CoreTelephonyService.__deallocating_deinit()
{
  CoreTelephonyService.deinit();

  return MEMORY[0x1EEE6BDC0](v0, 128, 7);
}

void (*protocol witness for MockableEnvironmentProvider.mock.modify in conformance CoreTelephonyService(void *a1))(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[4] = (*(*v1 + 152))();
  return protocol witness for MockableEnvironmentProvider.mock.modify in conformance NetworkAvailability;
}

uint64_t instantiation function for generic protocol witness table for CoreTelephonyService(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CoreTelephonyService and conformance CoreTelephonyService(&lazy protocol witness table cache variable for type CoreTelephonyService and conformance CoreTelephonyService, a2, type metadata accessor for CoreTelephonyService, &protocol conformance descriptor for CoreTelephonyService);
  *(a1 + 8) = result;
  return result;
}

{
  result = lazy protocol witness table accessor for type CoreTelephonyService and conformance CoreTelephonyService(&lazy protocol witness table cache variable for type CoreTelephonyService and conformance CoreTelephonyService, a2, type metadata accessor for CoreTelephonyService, &protocol conformance descriptor for CoreTelephonyService);
  *(a1 + 8) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type CoreTelephonyService and conformance CoreTelephonyService(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t protocol witness for ObservableObject.objectWillChange.getter in conformance CoreTelephonyService@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for CoreTelephonyService();
  result = ObservableObject<>.objectWillChange.getter();
  *a2 = result;
  return result;
}

uint64_t dispatch thunk of CoreTelephonyService.coreTelephonyAPIBridge.setter()
{
  OUTLINED_FUNCTION_7();
  v1 = *(v0 + 168);
  v3 = v2[1];
  v6[0] = *v2;
  v6[1] = v3;
  v4 = v2[3];
  v6[2] = v2[2];
  v6[3] = v4;
  return v1(v6);
}

uint64_t dispatch thunk of CoreTelephonyService.__allocating_init(coreTelephonyAPIBridge:)(_OWORD *a1)
{
  v2 = *(v1 + 232);
  v3 = a1[1];
  v6[0] = *a1;
  v6[1] = v3;
  v4 = a1[3];
  v6[2] = a1[2];
  v6[3] = v4;
  return v2(v6);
}

SiriUtilities::SiriVoiceGender_optional __swiftcall SiriVoiceGender.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SiriVoiceGender.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t SiriVoiceGender.rawValue.getter()
{
  v1 = 0x656C616D6546;
  if (*v0 != 1)
  {
    v1 = 0x6E776F6E6B6E55;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701601613;
  }
}

unint64_t lazy protocol witness table accessor for type SiriVoiceGender and conformance SiriVoiceGender()
{
  result = lazy protocol witness table cache variable for type SiriVoiceGender and conformance SiriVoiceGender;
  if (!lazy protocol witness table cache variable for type SiriVoiceGender and conformance SiriVoiceGender)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SiriVoiceGender and conformance SiriVoiceGender);
  }

  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance SiriVoiceGender@<X0>(uint64_t *a1@<X8>)
{
  result = SiriVoiceGender.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for SiriVoiceGender(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

Swift::Int DeviceClass.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1E12A9750](v1);
  return Hasher._finalize()();
}

uint64_t one-time initialization function for classNumberToDeviceClass()
{
  result = Dictionary.init(dictionaryLiteral:)();
  static MobileGestaltDeviceClassProvider.classNumberToDeviceClass = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type DeviceClass and conformance DeviceClass()
{
  result = lazy protocol witness table cache variable for type DeviceClass and conformance DeviceClass;
  if (!lazy protocol witness table cache variable for type DeviceClass and conformance DeviceClass)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DeviceClass and conformance DeviceClass);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for DeviceClass(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFA)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF9)
  {
    v6 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
          *result = a2 + 6;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for MobileGestaltDeviceClassProvider(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(uint64_t a1)
{
  return specialized RawRepresentable<>._rawHashValue(seed:)(0);
}

{
  v1 = a1;
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(0);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(0);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(0, a1);
}

Swift::Int specialized RawRepresentable<>.hashValue.getter()
{
  v0 = Hasher.init(_seed:)();
  OUTLINED_FUNCTION_2_20(v0);
  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(char a1)
{
  return specialized RawRepresentable<>._rawHashValue(seed:)(0);
}

{
  return specialized RawRepresentable<>._rawHashValue(seed:)(0);
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1)
{
  return String.hash(into:)();
}

{
  InputOrigin.rawValue.getter();
  String.hash(into:)();
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, unsigned __int8 a2)
{
  if (!a2)
  {
    OUTLINED_FUNCTION_1_22();
  }

  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, char a2)
{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_3_18(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x656C616D6546;
    }

    else
    {
      v4 = 0x6E776F6E6B6E55;
    }
  }

  else
  {
    v4 = 1701601613;
  }

  OUTLINED_FUNCTION_4_15(v2, v4, v3);

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_3_18(a1);
  InputOrigin.rawValue.getter();
  String.hash(into:)();

  return Hasher._finalize()();
}

{
  v2 = OUTLINED_FUNCTION_3_18(a1);
  if (v1)
  {
    v4 = 0x7244676F6C616944;
  }

  else
  {
    v4 = 0x4479616C70736944;
  }

  OUTLINED_FUNCTION_4_15(v2, v4, v3);

  return Hasher._finalize()();
}

{
  OUTLINED_FUNCTION_3_18(a1);
  specialized RawRepresentable<>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

{
  v2 = OUTLINED_FUNCTION_3_18(a1);
  if (v1)
  {
    v4 = 0xD00000000000001CLL;
  }

  else
  {
    v4 = 0x6E776F6E6B6E75;
  }

  OUTLINED_FUNCTION_4_15(v2, v4, v3);

  return Hasher._finalize()();
}

{
  v2 = OUTLINED_FUNCTION_3_18(a1);
  if (v1)
  {
    if (v1 == 1)
    {
      v4 = 0x6F4C6E6967756C50;
    }

    else
    {
      v4 = 0x6D6E6F7269766E45;
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_22();
  }

  OUTLINED_FUNCTION_4_15(v2, v4, v3);

  return Hasher._finalize()();
}

{
  v1 = Hasher.init(_seed:)();
  OUTLINED_FUNCTION_2_20(v1);
  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

SiriUtilities::PersonalDomainsAuthenticationMode_optional __swiftcall PersonalDomainsAuthenticationMode.init(aceValue:)(Swift::String_optional aceValue)
{
  v2 = v1;
  if (!aceValue.value._object)
  {
    goto LABEL_23;
  }

  object = aceValue.value._object;
  countAndFlagsBits = aceValue.value._countAndFlagsBits;
  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  if (v5 != countAndFlagsBits || v6 != object)
  {
    v8 = OUTLINED_FUNCTION_0_0(v5);

    if (v8)
    {
      goto LABEL_9;
    }

    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (v10 == countAndFlagsBits && v11 == object)
    {

LABEL_17:

      v9 = 1;
      goto LABEL_24;
    }

    v13 = OUTLINED_FUNCTION_0_0(v10);

    if (v13)
    {
      goto LABEL_17;
    }

    v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    if (v14 == countAndFlagsBits && v15 == object)
    {
    }

    else
    {
      v17 = OUTLINED_FUNCTION_0_0(v14);

      if ((v17 & 1) == 0)
      {
LABEL_23:
        v9 = 3;
        goto LABEL_24;
      }
    }

    v9 = 2;
    goto LABEL_24;
  }

LABEL_9:

  v9 = 0;
LABEL_24:
  *v2 = v9;
  return aceValue.value._countAndFlagsBits;
}

SiriUtilities::PersonalDomainsAuthenticationMode_optional static PersonalDomainsAuthenticationMode.fromAceValue(_:)(uint64_t a1, uint64_t a2)
{

  v4 = a1;
  v5 = a2;

  return PersonalDomainsAuthenticationMode.init(aceValue:)(*&v4);
}

SiriUtilities::PersonalDomainsAuthenticationMode_optional __swiftcall PersonalDomainsAuthenticationMode.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PersonalDomainsAuthenticationMode.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t PersonalDomainsAuthenticationMode.rawValue.getter()
{
  v1 = 0x726576656ELL;
  if (*v0 != 1)
  {
    v1 = 0x6552657275636573;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x737961776C61;
  }
}

unint64_t lazy protocol witness table accessor for type PersonalDomainsAuthenticationMode and conformance PersonalDomainsAuthenticationMode()
{
  result = lazy protocol witness table cache variable for type PersonalDomainsAuthenticationMode and conformance PersonalDomainsAuthenticationMode;
  if (!lazy protocol witness table cache variable for type PersonalDomainsAuthenticationMode and conformance PersonalDomainsAuthenticationMode)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PersonalDomainsAuthenticationMode and conformance PersonalDomainsAuthenticationMode);
  }

  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance PersonalDomainsAuthenticationMode@<X0>(uint64_t *a1@<X8>)
{
  result = PersonalDomainsAuthenticationMode.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Transformer.inputType.getter@<X0>(void *a2@<X8>)
{
  TypeInformation.init(for:)(v6);
  v4 = v7;
  v3 = v8;

  result = outlined destroy of TypeInformation(v6);
  *a2 = v4;
  a2[1] = v3;
  return result;
}

uint64_t Transformer.outputType.getter@<X0>(void *a2@<X8>)
{
  TypeInformation.init(for:)(v6);
  v4 = v7;
  v3 = v8;

  result = outlined destroy of TypeInformation(v6);
  *a2 = v4;
  a2[1] = v3;
  return result;
}

uint64_t Transformer.typeErasedTransform(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v22 = a3;
  v6 = *(a2 + 16);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = v20 - v10;
  v12 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20[0] = *v3;
  outlined init with copy of Any(a1, v21);
  if (swift_dynamicCast())
  {
    __swift_storeEnumTagSinglePayload(v11, 0, 1, v6);
    (*(v12 + 32))(v14, v11, v6);
    v15 = v22;
    v22[3] = *(a2 + 24);
    __swift_allocate_boxed_opaque_existential_0(v15);
    v16 = v20[1];
    (v20[0])(v14);
    result = (*(v12 + 8))(v14, v6);
    if (v16)
    {
      return __swift_deallocate_boxed_opaque_existential_0(v15);
    }
  }

  else
  {
    __swift_storeEnumTagSinglePayload(v11, 1, 1, v6);
    (*(v8 + 8))(v11, v7);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    DynamicType = swift_getDynamicType();
    lazy protocol witness table accessor for type TransformationError and conformance TransformationError();
    swift_allocError();
    *v19 = v6;
    *(v19 + 8) = DynamicType;
    *(v19 + 16) = 1;
    return swift_willThrow();
  }

  return result;
}

Swift::String __swiftcall String.lowercased()()
{
  v0 = MEMORY[0x1EEE68DA0]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x1EEE6ACC8]();
}

{
  return MEMORY[0x1EEE6ACE8]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x1EEE6AE00]();
}

{
  return MEMORY[0x1EEE6AE20]();
}