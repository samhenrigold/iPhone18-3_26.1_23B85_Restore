unint64_t specialized _NativeSet._unsafeInsertNew(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  type metadata accessor for AGSubgraphRef(0);
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type AGSubgraphRef and conformance AGSubgraphRef, type metadata accessor for AGSubgraphRef, &protocol conformance descriptor for AGSubgraphRef);
  _CFObject.hash(into:)();
  Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  MEMORY[0x26D69DC00](v4);
  result = Hasher._finalize()();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v4);
  result = Hasher._finalize()();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 4 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 4 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = _stringCompareWithSmolCheck(_:_:expecting:)();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v4 = v3;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
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
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v7 + 1);
  }

  v9 = *v3;
  Hasher.init(_seed:)();
  type metadata accessor for AGSubgraphRef(0);
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type AGSubgraphRef and conformance AGSubgraphRef, type metadata accessor for AGSubgraphRef, &protocol conformance descriptor for AGSubgraphRef);
  _CFObject.hash(into:)();
  v10 = Hasher._finalize()();
  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    do
    {
      v13 = *(*(v9 + 48) + 8 * a2);
      v14 = static _CFObject.== infix(_:_:)();

      if (v14)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v15 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v15 + 48) + 8 * a2) = a1;
  v16 = *(v15 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v15 + 16) = v18;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  result = MEMORY[0x26D69DB90](*(*v3 + 40), v4, 4);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 4 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 4 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      result = specialized _NativeSet.copy()();
      a2 = v7;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v8 = *v3;
  result = MEMORY[0x26D69DBA0](*(*v3 + 40), v4);
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    while (*(*(v8 + 48) + 8 * a2) != v4)
    {
      a2 = (a2 + 1) & v10;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v11 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v11 + 48) + 8 * a2) = v4;
  v12 = *(v11 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (!v13)
  {
    *(v11 + 16) = v14;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy21SwiftUITracingSupport7TreeRefVGMd, &_ss11_SetStorageCy21SwiftUITracingSupport7TreeRefVGMR);
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy21SwiftUITracingSupport11SubgraphRefVGMd, &_ss11_SetStorageCy21SwiftUITracingSupport11SubgraphRefVGMR);
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys6UInt64VGMd, &_ss11_SetStorageCys6UInt64VGMR);
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys6UInt32VGMd, &_ss11_SetStorageCys6UInt32VGMR);
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 4 * v14) = *(*(v2 + 48) + 4 * v14))
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

id specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo13AGSubgraphRefaGMd, &_ss11_SetStorageCySo13AGSubgraphRefaGMR);
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

Swift::Int specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy21SwiftUITracingSupport7TreeRefVGMd, &_ss11_SetStorageCy21SwiftUITracingSupport7TreeRefVGMR);
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
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      MEMORY[0x26D69DC00](v16);
      result = Hasher._finalize()();
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

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
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

        v2 = v1;
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

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy21SwiftUITracingSupport11SubgraphRefVGMd, &_ss11_SetStorageCy21SwiftUITracingSupport11SubgraphRefVGMR);
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
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v16);
      result = Hasher._finalize()();
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

        goto LABEL_28;
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

        v2 = v1;
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

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
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

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo13AGSubgraphRefaGMd, &_ss11_SetStorageCySo13AGSubgraphRefaGMR);
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
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      Hasher.init(_seed:)();
      type metadata accessor for AGSubgraphRef(0);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type AGSubgraphRef and conformance AGSubgraphRef, type metadata accessor for AGSubgraphRef, &protocol conformance descriptor for AGSubgraphRef);
      v17 = v16;
      _CFObject.hash(into:)();
      result = Hasher._finalize()();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v17;
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

        v2 = v1;
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

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys6UInt64VGMd, &_ss11_SetStorageCys6UInt64VGMR);
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
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      result = MEMORY[0x26D69DBA0](*(v5 + 40), v16);
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

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCys6UInt32VGMd, &_ss11_SetStorageCys6UInt32VGMR);
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
      result = MEMORY[0x26D69DB90](*(v5 + 40), v16, 4);
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

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a1;
  v64 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = static String._copying(_:)(result, v5);
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v62;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v20 = v7 - 1;
        if (v20)
        {
          v21 = a3 + 48;
          v22 = a3 + 55;
          v23 = a3 + 87;
          if (a3 > 10)
          {
            v21 = 58;
          }

          else
          {
            v23 = 97;
            v22 = 65;
          }

          if (result)
          {
            LOWORD(v13) = 0;
            v24 = result + 1;
            v15 = 1;
            do
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v21)
              {
                if (v25 < 0x41 || v25 >= v22)
                {
                  v18 = 0;
                  if (v25 < 0x61 || v25 >= v23)
                  {
                    goto LABEL_127;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v13 * a3;
              if ((v27 & 0xFFFF0000) != 0)
              {
                goto LABEL_126;
              }

              v13 = v27 + (v25 + v26);
              if ((v13 & 0x10000) != 0)
              {
                goto LABEL_126;
              }

              ++v24;
              --v20;
            }

            while (v20);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        v15 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (result)
        {
          LOWORD(v31) = 0;
          v15 = 1;
          do
          {
            v32 = *result;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                v18 = 0;
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_127;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v34 & 0xFFFF0000) != 0)
            {
              goto LABEL_126;
            }

            v31 = v34 + (v32 + v33);
            if ((v31 & 0x10000) != 0)
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v31;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          LOWORD(v13) = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFFFF0000) != 0)
            {
              goto LABEL_126;
            }

            v13 = v19 - (v16 + v17);
            if ((v13 & 0xFFFF0000) != 0)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
        v15 = 0;
LABEL_127:

        return (v18 | (v15 << 16));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v37 = HIBYTE(v5) & 0xF;
  v63 = v6;
  v64 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        LOWORD(v39) = 0;
        v55 = a3 + 48;
        v56 = a3 + 55;
        v57 = a3 + 87;
        if (a3 > 10)
        {
          v55 = 58;
        }

        else
        {
          v57 = 97;
          v56 = 65;
        }

        v58 = &v63;
        v15 = 1;
        while (1)
        {
          v59 = *v58;
          if (v59 < 0x30 || v59 >= v55)
          {
            if (v59 < 0x41 || v59 >= v56)
            {
              v18 = 0;
              if (v59 < 0x61 || v59 >= v57)
              {
                goto LABEL_127;
              }

              v60 = -87;
            }

            else
            {
              v60 = -55;
            }
          }

          else
          {
            v60 = -48;
          }

          v61 = v39 * a3;
          if ((v61 & 0xFFFF0000) != 0)
          {
            goto LABEL_126;
          }

          v39 = v61 + (v59 + v60);
          if ((v39 & 0x10000) != 0)
          {
            goto LABEL_126;
          }

          v58 = (v58 + 1);
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        LOWORD(v39) = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v63 + 1;
        v15 = 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              v18 = 0;
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_127;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v46 & 0xFFFF0000) != 0)
          {
            goto LABEL_126;
          }

          v39 = v46 - (v44 + v45);
          if ((v39 & 0xFFFF0000) != 0)
          {
            goto LABEL_126;
          }

          ++v43;
          if (!--v38)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      LOWORD(v39) = 0;
      v48 = a3 + 48;
      v49 = a3 + 55;
      v50 = a3 + 87;
      if (a3 > 10)
      {
        v48 = 58;
      }

      else
      {
        v50 = 97;
        v49 = 65;
      }

      v51 = &v63 + 1;
      v15 = 1;
      do
      {
        v52 = *v51;
        if (v52 < 0x30 || v52 >= v48)
        {
          if (v52 < 0x41 || v52 >= v49)
          {
            v18 = 0;
            if (v52 < 0x61 || v52 >= v50)
            {
              goto LABEL_127;
            }

            v53 = -87;
          }

          else
          {
            v53 = -55;
          }
        }

        else
        {
          v53 = -48;
        }

        v54 = v39 * a3;
        if ((v54 & 0xFFFF0000) != 0)
        {
          goto LABEL_126;
        }

        v39 = v54 + (v52 + v53);
        if ((v39 & 0x10000) != 0)
        {
          goto LABEL_126;
        }

        ++v51;
        --v47;
      }

      while (v47);
LABEL_125:
      v15 = 0;
      v18 = v39;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

{
  v70 = a1;
  v71 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = static String._copying(_:)(result, v5);
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v69;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_127;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if (v29 != v29)
              {
                goto LABEL_126;
              }

              v30 = v27 + v28;
              v21 = __OFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_126;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_46:
            v15 = 0;
            v18 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v18 = 0;
        v15 = 1;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = a3 + 48;
        v32 = a3 + 55;
        v33 = a3 + 87;
        if (a3 > 10)
        {
          v31 = 58;
        }

        else
        {
          v33 = 97;
          v32 = 65;
        }

        if (result)
        {
          v34 = 0;
          v15 = 1;
          do
          {
            v35 = *result;
            if (v35 < 0x30 || v35 >= v31)
            {
              if (v35 < 0x41 || v35 >= v32)
              {
                v18 = 0;
                if (v35 < 0x61 || v35 >= v33)
                {
                  goto LABEL_127;
                }

                v36 = -87;
              }

              else
              {
                v36 = -55;
              }
            }

            else
            {
              v36 = -48;
            }

            v37 = v34 * a3;
            if (v37 != v37)
            {
              goto LABEL_126;
            }

            v38 = v35 + v36;
            v21 = __OFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v15 = 0;
          v18 = v34;
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_127;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if (v19 != v19)
            {
              goto LABEL_126;
            }

            v20 = v16 + v17;
            v21 = __OFSUB__(v19, v20);
            v13 = v19 - v20;
            if (v21)
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v18 = 0;
        v15 = 0;
LABEL_127:

        LOBYTE(v70) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v41 = HIBYTE(v5) & 0xF;
  v70 = v6;
  v71 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v43 = 0;
        v61 = a3 + 48;
        v62 = a3 + 55;
        v63 = a3 + 87;
        if (a3 > 10)
        {
          v61 = 58;
        }

        else
        {
          v63 = 97;
          v62 = 65;
        }

        v64 = &v70;
        v15 = 1;
        while (1)
        {
          v65 = *v64;
          if (v65 < 0x30 || v65 >= v61)
          {
            if (v65 < 0x41 || v65 >= v62)
            {
              v18 = 0;
              if (v65 < 0x61 || v65 >= v63)
              {
                goto LABEL_127;
              }

              v66 = -87;
            }

            else
            {
              v66 = -55;
            }
          }

          else
          {
            v66 = -48;
          }

          v67 = v43 * a3;
          if (v67 != v67)
          {
            goto LABEL_126;
          }

          v68 = v65 + v66;
          v21 = __OFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_126;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v43 = 0;
        v44 = a3 + 48;
        v45 = a3 + 55;
        v46 = a3 + 87;
        if (a3 > 10)
        {
          v44 = 58;
        }

        else
        {
          v46 = 97;
          v45 = 65;
        }

        v47 = &v70 + 1;
        v15 = 1;
        while (1)
        {
          v48 = *v47;
          if (v48 < 0x30 || v48 >= v44)
          {
            if (v48 < 0x41 || v48 >= v45)
            {
              v18 = 0;
              if (v48 < 0x61 || v48 >= v46)
              {
                goto LABEL_127;
              }

              v49 = -87;
            }

            else
            {
              v49 = -55;
            }
          }

          else
          {
            v49 = -48;
          }

          v50 = v43 * a3;
          if (v50 != v50)
          {
            goto LABEL_126;
          }

          v51 = v48 + v49;
          v21 = __OFSUB__(v50, v51);
          v43 = v50 - v51;
          if (v21)
          {
            goto LABEL_126;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v41)
  {
    v52 = v41 - 1;
    if (v52)
    {
      v43 = 0;
      v53 = a3 + 48;
      v54 = a3 + 55;
      v55 = a3 + 87;
      if (a3 > 10)
      {
        v53 = 58;
      }

      else
      {
        v55 = 97;
        v54 = 65;
      }

      v56 = &v70 + 1;
      v15 = 1;
      do
      {
        v57 = *v56;
        if (v57 < 0x30 || v57 >= v53)
        {
          if (v57 < 0x41 || v57 >= v54)
          {
            v18 = 0;
            if (v57 < 0x61 || v57 >= v55)
            {
              goto LABEL_127;
            }

            v58 = -87;
          }

          else
          {
            v58 = -55;
          }
        }

        else
        {
          v58 = -48;
        }

        v59 = v43 * a3;
        if (v59 != v59)
        {
          goto LABEL_126;
        }

        v60 = v57 + v58;
        v21 = __OFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_126;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_125:
      v15 = 0;
      v18 = v43;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

{
  v62 = a1;
  v63 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = static String._copying(_:)(result, v5);
    v35 = v34;

    v5 = v35;
    if ((v35 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v61;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v19 = v7 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (result)
          {
            v13 = 0;
            v23 = result + 1;
            do
            {
              v24 = *v23;
              if (v24 < 0x30 || v24 >= v20)
              {
                if (v24 < 0x41 || v24 >= v21)
                {
                  v17 = 0;
                  if (v24 < 0x61 || v24 >= v22)
                  {
                    goto LABEL_127;
                  }

                  v25 = -87;
                }

                else
                {
                  v25 = -55;
                }
              }

              else
              {
                v25 = -48;
              }

              v26 = v13 * a3;
              if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
              {
                goto LABEL_126;
              }

              v13 = v26 + (v24 + v25);
              if (__OFADD__(v26, (v24 + v25)))
              {
                goto LABEL_126;
              }

              ++v23;
              --v19;
            }

            while (v19);
LABEL_46:
            v17 = v13;
            goto LABEL_127;
          }

          goto LABEL_66;
        }

LABEL_126:
        v17 = 0;
        goto LABEL_127;
      }

      goto LABEL_131;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v27 = a3 + 48;
        v28 = a3 + 55;
        v29 = a3 + 87;
        if (a3 > 10)
        {
          v27 = 58;
        }

        else
        {
          v29 = 97;
          v28 = 65;
        }

        if (result)
        {
          v30 = 0;
          do
          {
            v31 = *result;
            if (v31 < 0x30 || v31 >= v27)
            {
              if (v31 < 0x41 || v31 >= v28)
              {
                v17 = 0;
                if (v31 < 0x61 || v31 >= v29)
                {
                  goto LABEL_127;
                }

                v32 = -87;
              }

              else
              {
                v32 = -55;
              }
            }

            else
            {
              v32 = -48;
            }

            v33 = v30 * a3;
            if ((v30 * a3) >> 64 != (v30 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v30 = v33 + (v31 + v32);
            if (__OFADD__(v33, (v31 + v32)))
            {
              goto LABEL_126;
            }

            ++result;
            --v7;
          }

          while (v7);
          v17 = v33 + (v31 + v32);
          goto LABEL_127;
        }

        goto LABEL_66;
      }

      goto LABEL_126;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          while (1)
          {
            v15 = *v14;
            if (v15 < 0x30 || v15 >= v10)
            {
              if (v15 < 0x41 || v15 >= v11)
              {
                v17 = 0;
                if (v15 < 0x61 || v15 >= v12)
                {
                  goto LABEL_127;
                }

                v16 = -87;
              }

              else
              {
                v16 = -55;
              }
            }

            else
            {
              v16 = -48;
            }

            v18 = v13 * a3;
            if ((v13 * a3) >> 64 != (v13 * a3) >> 63)
            {
              goto LABEL_126;
            }

            v13 = v18 - (v15 + v16);
            if (__OFSUB__(v18, (v15 + v16)))
            {
              goto LABEL_126;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_46;
            }
          }
        }

LABEL_66:
        v17 = 0;
LABEL_127:

        return v17;
      }

      goto LABEL_126;
    }

    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
    goto LABEL_132;
  }

  v36 = HIBYTE(v5) & 0xF;
  v62 = v6;
  v63 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v36)
      {
        v38 = 0;
        v54 = a3 + 48;
        v55 = a3 + 55;
        v56 = a3 + 87;
        if (a3 > 10)
        {
          v54 = 58;
        }

        else
        {
          v56 = 97;
          v55 = 65;
        }

        v57 = &v62;
        while (1)
        {
          v58 = *v57;
          if (v58 < 0x30 || v58 >= v54)
          {
            if (v58 < 0x41 || v58 >= v55)
            {
              v17 = 0;
              if (v58 < 0x61 || v58 >= v56)
              {
                goto LABEL_127;
              }

              v59 = -87;
            }

            else
            {
              v59 = -55;
            }
          }

          else
          {
            v59 = -48;
          }

          v60 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v60 + (v58 + v59);
          if (__OFADD__(v60, (v58 + v59)))
          {
            goto LABEL_126;
          }

          v57 = (v57 + 1);
          if (!--v36)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    if (v36)
    {
      v37 = v36 - 1;
      if (v37)
      {
        v38 = 0;
        v39 = a3 + 48;
        v40 = a3 + 55;
        v41 = a3 + 87;
        if (a3 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        v42 = &v62 + 1;
        while (1)
        {
          v43 = *v42;
          if (v43 < 0x30 || v43 >= v39)
          {
            if (v43 < 0x41 || v43 >= v40)
            {
              v17 = 0;
              if (v43 < 0x61 || v43 >= v41)
              {
                goto LABEL_127;
              }

              v44 = -87;
            }

            else
            {
              v44 = -55;
            }
          }

          else
          {
            v44 = -48;
          }

          v45 = v38 * a3;
          if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
          {
            goto LABEL_126;
          }

          v38 = v45 - (v43 + v44);
          if (__OFSUB__(v45, (v43 + v44)))
          {
            goto LABEL_126;
          }

          ++v42;
          if (!--v37)
          {
            goto LABEL_125;
          }
        }
      }

      goto LABEL_126;
    }

    goto LABEL_130;
  }

  if (v36)
  {
    v46 = v36 - 1;
    if (v46)
    {
      v38 = 0;
      v47 = a3 + 48;
      v48 = a3 + 55;
      v49 = a3 + 87;
      if (a3 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      v50 = &v62 + 1;
      do
      {
        v51 = *v50;
        if (v51 < 0x30 || v51 >= v47)
        {
          if (v51 < 0x41 || v51 >= v48)
          {
            v17 = 0;
            if (v51 < 0x61 || v51 >= v49)
            {
              goto LABEL_127;
            }

            v52 = -87;
          }

          else
          {
            v52 = -55;
          }
        }

        else
        {
          v52 = -48;
        }

        v53 = v38 * a3;
        if ((v38 * a3) >> 64 != (v38 * a3) >> 63)
        {
          goto LABEL_126;
        }

        v38 = v53 + (v51 + v52);
        if (__OFADD__(v53, (v51 + v52)))
        {
          goto LABEL_126;
        }

        ++v50;
        --v46;
      }

      while (v46);
LABEL_125:
      v17 = v38;
      goto LABEL_127;
    }

    goto LABEL_126;
  }

LABEL_132:
  __break(1u);
  return result;
}

{
  v69 = a1;
  v70 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = static String._copying(_:)(result, v5);
    v40 = v39;

    v5 = v40;
    if ((v40 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      result = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v7 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
      v7 = v68;
    }

    v8 = *result;
    if (v8 == 43)
    {
      if (v7 >= 1)
      {
        v22 = v7 - 1;
        if (v22)
        {
          v23 = a3 + 48;
          v24 = a3 + 55;
          v25 = a3 + 87;
          if (a3 > 10)
          {
            v23 = 58;
          }

          else
          {
            v25 = 97;
            v24 = 65;
          }

          if (result)
          {
            v13 = 0;
            v26 = result + 1;
            v15 = 1;
            do
            {
              v27 = *v26;
              if (v27 < 0x30 || v27 >= v23)
              {
                if (v27 < 0x41 || v27 >= v24)
                {
                  v18 = 0;
                  if (v27 < 0x61 || v27 >= v25)
                  {
                    goto LABEL_128;
                  }

                  v28 = -87;
                }

                else
                {
                  v28 = -55;
                }
              }

              else
              {
                v28 = -48;
              }

              v29 = v13 * a3;
              if ((v29 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_127;
              }

              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v13 = v29 + v30;
              if (v21)
              {
                goto LABEL_127;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v15 = 0;
            v18 = v13;
            goto LABEL_128;
          }

          goto LABEL_66;
        }

LABEL_127:
        v18 = 0;
        v15 = 1;
        goto LABEL_128;
      }

      goto LABEL_132;
    }

    if (v8 != 45)
    {
      if (v7)
      {
        v31 = 0;
        v32 = a3 + 48;
        v33 = a3 + 55;
        v34 = a3 + 87;
        if (a3 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        v15 = 1;
        while (1)
        {
          v35 = *result;
          if (v35 < 0x30 || v35 >= v32)
          {
            if (v35 < 0x41 || v35 >= v33)
            {
              v18 = 0;
              if (v35 < 0x61 || v35 >= v34)
              {
                goto LABEL_128;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v37 = v31 * a3;
          if ((v37 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_127;
          }

          v38 = v35 + v36;
          v21 = __CFADD__(v37, v38);
          v31 = v37 + v38;
          if (v21)
          {
            goto LABEL_127;
          }

          ++result;
          if (!--v7)
          {
            goto LABEL_126;
          }
        }
      }

      goto LABEL_127;
    }

    if (v7 >= 1)
    {
      v9 = v7 - 1;
      if (v9)
      {
        v10 = a3 + 48;
        v11 = a3 + 55;
        v12 = a3 + 87;
        if (a3 > 10)
        {
          v10 = 58;
        }

        else
        {
          v12 = 97;
          v11 = 65;
        }

        if (result)
        {
          v13 = 0;
          v14 = result + 1;
          v15 = 1;
          while (1)
          {
            v16 = *v14;
            if (v16 < 0x30 || v16 >= v10)
            {
              if (v16 < 0x41 || v16 >= v11)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v12)
                {
                  goto LABEL_128;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v19 = v13 * a3;
            if ((v19 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_127;
            }

            v20 = v16 + v17;
            v21 = v19 >= v20;
            v13 = v19 - v20;
            if (!v21)
            {
              goto LABEL_127;
            }

            ++v14;
            if (!--v9)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_66:
        v18 = 0;
        v15 = 0;
LABEL_128:

        LOBYTE(v69) = v15;
        return (v18 | (v15 << 32));
      }

      goto LABEL_127;
    }

    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

  v41 = HIBYTE(v5) & 0xF;
  v69 = v6;
  v70 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v41)
      {
        v31 = 0;
        v60 = a3 + 55;
        v61 = a3 + 87;
        v62 = a3 + 48;
        if (a3 > 10)
        {
          v62 = 58;
        }

        else
        {
          v61 = 97;
          v60 = 65;
        }

        v63 = &v69;
        v15 = 1;
        while (1)
        {
          v64 = *v63;
          if (v64 < 0x30 || v64 >= v62)
          {
            if (v64 < 0x41 || v64 >= v60)
            {
              v18 = 0;
              if (v64 < 0x61 || v64 >= v61)
              {
                goto LABEL_128;
              }

              v65 = -87;
            }

            else
            {
              v65 = -55;
            }
          }

          else
          {
            v65 = -48;
          }

          v66 = v31 * a3;
          if ((v66 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_127;
          }

          v67 = v64 + v65;
          v21 = __CFADD__(v66, v67);
          v31 = v66 + v67;
          if (v21)
          {
            goto LABEL_127;
          }

          v63 = (v63 + 1);
          if (!--v41)
          {
            goto LABEL_126;
          }
        }
      }

      goto LABEL_127;
    }

    if (v41)
    {
      v42 = v41 - 1;
      if (v42)
      {
        v31 = 0;
        v43 = a3 + 48;
        v44 = a3 + 55;
        v45 = a3 + 87;
        if (a3 > 10)
        {
          v43 = 58;
        }

        else
        {
          v45 = 97;
          v44 = 65;
        }

        v46 = &v69 + 1;
        v15 = 1;
        while (1)
        {
          v47 = *v46;
          if (v47 < 0x30 || v47 >= v43)
          {
            if (v47 < 0x41 || v47 >= v44)
            {
              v18 = 0;
              if (v47 < 0x61 || v47 >= v45)
              {
                goto LABEL_128;
              }

              v48 = -87;
            }

            else
            {
              v48 = -55;
            }
          }

          else
          {
            v48 = -48;
          }

          v49 = v31 * a3;
          if ((v49 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_127;
          }

          v50 = v47 + v48;
          v21 = v49 >= v50;
          v31 = v49 - v50;
          if (!v21)
          {
            goto LABEL_127;
          }

          ++v46;
          if (!--v42)
          {
            goto LABEL_126;
          }
        }
      }

      goto LABEL_127;
    }

    goto LABEL_131;
  }

  if (v41)
  {
    v51 = v41 - 1;
    if (v51)
    {
      v31 = 0;
      v52 = a3 + 48;
      v53 = a3 + 55;
      v54 = a3 + 87;
      if (a3 > 10)
      {
        v52 = 58;
      }

      else
      {
        v54 = 97;
        v53 = 65;
      }

      v55 = &v69 + 1;
      v15 = 1;
      do
      {
        v56 = *v55;
        if (v56 < 0x30 || v56 >= v52)
        {
          if (v56 < 0x41 || v56 >= v53)
          {
            v18 = 0;
            if (v56 < 0x61 || v56 >= v54)
            {
              goto LABEL_128;
            }

            v57 = -87;
          }

          else
          {
            v57 = -55;
          }
        }

        else
        {
          v57 = -48;
        }

        v58 = v31 * a3;
        if ((v58 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_127;
        }

        v59 = v56 + v57;
        v21 = __CFADD__(v58, v59);
        v31 = v58 + v59;
        if (v21)
        {
          goto LABEL_127;
        }

        ++v55;
        --v51;
      }

      while (v51);
LABEL_126:
      v15 = 0;
      v18 = v31;
      goto LABEL_128;
    }

    goto LABEL_127;
  }

LABEL_133:
  __break(1u);
  return result;
}

unint64_t _StringGuts.validateScalarIndex(_:)(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = _StringGuts.validateSubscalarIndex(_:)(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | _StringGuts.scalarAlignSlow(_:)(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t _StringGuts.validateSubscalarIndex(_:)(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = _StringGuts._slowEnsureMatchingEncoding(_:)(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

void specialized Array<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  MEMORY[0x26D69DBC0](v3);
  if (v3)
  {
    v4 = a2 + 32;
    do
    {
      v5 = *(v4 + 4);
      v6 = *(v4 + 8);
      v7 = *(v4 + 12);
      v8 = *(v4 + 16);
      v9 = *(v4 + 24);
      Hasher._combine(_:)(*v4);
      if (v6 == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        Hasher._combine(_:)(v5);
      }

      v4 += 32;
      Hasher._combine(_:)(v7);
      MEMORY[0x26D69DBC0](v8);
      Hasher._combine(_:)(v9);
      --v3;
    }

    while (v3);
  }
}

uint64_t specialized Array<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  result = MEMORY[0x26D69DBC0](v3);
  if (v3)
  {
    v5 = (a2 + 52);
    do
    {
      v6 = *(v5 - 4);
      v7 = *v5;
      if (*(v5 - 3))
      {
        Hasher._combine(_:)(1u);

        String.hash(into:)();
      }

      else
      {
        Hasher._combine(_:)(0);
      }

      v5 += 6;
      Hasher._combine(_:)(v6);
      Hasher._combine(_:)(v7);

      --v3;
    }

    while (v3);
  }

  return result;
}

unint64_t String.UnicodeScalarView.distance(from:to:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v7 = _StringGuts.validateInclusiveScalarIndex(_:)(a1, a3, a4);
  v8 = _StringGuts.validateInclusiveScalarIndex(_:)(a2, a3, a4);
  result = v7;
  v10 = v7 >> 14;
  v11 = v8 >> 14;
  if (v10 < v8 >> 14)
  {
    for (i = 0; ; ++i)
    {
      v13 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      if ((a4 & 0x1000000000000000) != 0)
      {
        result = String.UnicodeScalarView._foreignIndex(after:)();
      }

      else
      {
        v14 = result >> 16;
        if ((a4 & 0x2000000000000000) != 0)
        {
          v28 = a3;
          v29 = a4 & 0xFFFFFFFFFFFFFFLL;
          v16 = *(&v28 + v14);
        }

        else
        {
          v15 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v15 = _StringObject.sharedUTF8.getter();
          }

          v16 = *(v15 + v14);
        }

        v17 = v16;
        v18 = __clz(v16 ^ 0xFF) - 24;
        if (v17 >= 0)
        {
          LOBYTE(v18) = 1;
        }

        result = ((v14 + v18) << 16) | 5;
      }

      if (v11 <= result >> 14)
      {
        return v13;
      }
    }

    __break(1u);
LABEL_36:
    __break(1u);
    return result;
  }

  if (v11 < v10)
  {
    v13 = 0;
    while (!__OFSUB__(v13--, 1))
    {
      if ((a4 & 0x1000000000000000) != 0)
      {
        result = String.UnicodeScalarView._foreignIndex(before:)();
      }

      else
      {
        if ((a4 & 0x2000000000000000) != 0)
        {
          v28 = a3;
          v29 = a4 & 0xFFFFFFFFFFFFFFLL;
          if ((*(&v28 + (result >> 16) - 1) & 0xC0) == 0x80)
          {
            v25 = &v28 + (result >> 16) - 2;
            v24 = 1;
            do
            {
              ++v24;
              v26 = *v25--;
            }

            while ((v26 & 0xC0) == 0x80);
          }

          else
          {
            v24 = 1;
          }
        }

        else
        {
          v20 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
          if ((a3 & 0x1000000000000000) == 0)
          {
            v27 = result;
            v20 = _StringObject.sharedUTF8.getter();
            result = v27;
          }

          v21 = 0;
          v22 = v20 + (result >> 16) - 1;
          do
          {
            v23 = *(v22 + v21--) & 0xC0;
          }

          while (v23 == 128);
          v24 = -v21;
        }

        result = (result - (v24 << 16)) & 0xFFFFFFFFFFFF0000 | 5;
      }

      if (v11 >= result >> 14)
      {
        return v13;
      }
    }

    goto LABEL_36;
  }

  return 0;
}

uint64_t specialized closure #2 in PType.forEachField<A>(within:userData:_:revisitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, unint64_t, void, void))
{
  result = *a1;
  if (a4)
  {
    return a4(result, *(a1 + 8) | (*(a1 + 12) << 32), *(a1 + 16), *(a1 + 24));
  }

  return result;
}

uint64_t specialized thunk for @callee_guaranteed (@in_guaranteed A, @inout B, @inout IterativeTreeTraversal<A, B>) -> ()(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t, uint64_t))
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 3);
  v6 = a1[2];
  v7 = *(a1 + 6);
  v9 = *a1;
  v10 = v4;
  v11 = v5;
  v12 = v6;
  v13 = v7;
  return a4(&v9, a2, a3);
}

uint64_t specialized thunk for @callee_guaranteed (@in_guaranteed A, @in_guaranteed B, @guaranteed IterativeTreeTraversal<A, B>) -> ()(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t (*a4)(uint64_t *, uint64_t *, uint64_t))
{
  v4 = *(a1 + 8);
  v5 = *(a1 + 3);
  v6 = a1[2];
  v7 = *(a1 + 6);
  v8 = *a2;
  v11 = *a1;
  v12 = v4;
  v13 = v5;
  v14 = v6;
  v15 = v7;
  v10 = v8;
  return a4(&v11, &v10, a3);
}

uint64_t specialized closure #3 in UnsafeTree.traverse(visitor:revisit:)(uint64_t a1, unsigned int *a2, uint64_t a3, uint64_t a4, uint64_t a5, void **a6)
{
  v7 = *a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_26C328DC0;
  v9 = (**a6 + 48 * v7);
  v12 = *v9;
  *v13 = v9[1];
  *&v13[12] = *(v9 + 28);
  *(v8 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport10UnsafeTreeV4NodeVyAA10ChangelistC2IdOAA10Subforest2V4ItemV_GMd, &_s21SwiftUITracingSupport10UnsafeTreeV4NodeVyAA10ChangelistC2IdOAA10Subforest2V4ItemV_GMR);
  v10 = swift_allocObject();
  *(v8 + 32) = v10;
  v10[1] = v12;
  v10[2] = *v13;
  *(v10 + 44) = *&v13[12];
  print(_:separator:terminator:)();
}

BOOL specialized static AbstractionSubtype.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 9);
  v5 = *a1 == *a2;
  if (v4 != 2)
  {
    v5 = 0;
  }

  v7 = v4 == 3 && v2 == v3;
  if (*(a1 + 9) != 2)
  {
    v5 = v7;
  }

  if (*(a2 + 9))
  {
    v8 = 0;
  }

  else
  {
    v8 = v2 == v3;
  }

  v9 = v8;
  v11 = v2 == v3 && *(a1 + 8) == *(a2 + 8);
  if (v4 != 1)
  {
    v11 = 0;
  }

  if (!*(a1 + 9))
  {
    v11 = v9;
  }

  if (*(a1 + 9) <= 1u)
  {
    return v11;
  }

  else
  {
    return v5;
  }
}

uint64_t specialized static Attribute.EstimatedField.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  result = 0;
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    v4 = *(a1 + 24);
    v5 = *(a1 + 36);
    v6 = *(a1 + 40);
    v7 = *(a1 + 48);
    v8 = *(a2 + 24);
    v9 = *(a2 + 36);
    v10 = *(a2 + 40);
    v11 = *(a2 + 48);
    if (_sSasSQRzlE2eeoiySbSayxG_ABtFZ21SwiftUITracingSupport5PTypeV5FieldV_Tt1g5(*(a1 + 16), *(a2 + 16)))
    {
      if (v4 == -1 && v8 == -1)
      {
        if (v6 != v10 || v7 != v11)
        {
          return 0;
        }
      }

      else if (v4 != v8 || v5 != v9 || v6 != v10 || v7 != v11)
      {
        return 0;
      }

      return 1;
    }

    return 0;
  }

  return result;
}

uint64_t specialized static Event.AttributeValue.ChangedField.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = 0;
  v4 = *a1;
  v3 = a1[1];
  v5 = *(a1 + 4);
  v6 = *(a1 + 5);
  v27[0] = *(a1 + 3);
  v27[1] = v6;
  v27[2] = *(a1 + 7);
  v28 = *(a1 + 18);
  v8 = *a2;
  v7 = a2[1];
  v30 = *(a2 + 18);
  v9 = *(a2 + 4);
  v10 = *(a2 + 3);
  v11 = *(a2 + 7);
  v29[1] = *(a2 + 5);
  v29[2] = v11;
  v29[0] = v10;
  if (__PAIR128__(v3, v4) == __PAIR128__(v7, v8) && v5 == v9)
  {
    v12 = *(a1 + 5);
    v19 = *(a1 + 3);
    v20 = v12;
    v21 = *(a1 + 7);
    v22 = *(a1 + 18);
    v13 = *(a2 + 5);
    v15 = *(a2 + 3);
    v16 = v13;
    v17 = *(a2 + 7);
    v18 = *(a2 + 18);
    v2 = specialized static Attribute.EstimatedField.== infix(_:_:)(&v19, &v15);
    v23[0] = v15;
    v23[1] = v16;
    v23[2] = v17;
    v24 = v18;
    outlined init with copy of Attribute.EstimatedField(v27, v25);
    outlined init with copy of Attribute.EstimatedField(v29, v25);
    outlined destroy of Attribute.EstimatedField(v23);
    v25[0] = v19;
    v25[1] = v20;
    v25[2] = v21;
    v26 = v22;
    outlined destroy of Attribute.EstimatedField(v25);
  }

  return v2 & 1;
}

BOOL specialized static PType.IsA.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *a2;
  v8 = *(a2 + 8);
  v10 = *(a2 + 16);
  v9 = *(a2 + 24);
  v11 = *(a2 + 32);
  v28[0] = *a1;
  v28[1] = v3;
  v28[2] = v5;
  v28[3] = v4;
  v29 = v6;
  v30 = v7;
  v31 = v8;
  v32 = v10;
  v33 = v9;
  v34 = v11;
  if (v6 <= 1)
  {
    if (!v6)
    {
      if (!v11)
      {
        outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v28, &_s21SwiftUITracingSupport5PTypeV3IsAO_AEtMd, &_s21SwiftUITracingSupport5PTypeV3IsAO_AEtMR);
        return ((v7 ^ v2) & 1) == 0;
      }

LABEL_32:
      v23 = v7;
      v24 = v8;
      v25 = v10;
      v26 = v9;
      v27 = v11;
LABEL_33:
      outlined copy of PType.IsA(v23, v24, v25, v26, v27);
      outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v28, &_s21SwiftUITracingSupport5PTypeV3IsAO_AEtMd, &_s21SwiftUITracingSupport5PTypeV3IsAO_AEtMR);
      return 0;
    }

    if (v11 == 1)
    {
      if ((v2 != v7 || v3 != v8) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt32V_Tt1g5(v5, v10) & 1) == 0)
      {
        outlined copy of PType.IsA(v7, v8, v10, v9, 1u);
        v23 = v2;
        v24 = v3;
        v25 = v5;
        v26 = v4;
        v27 = 1;
        goto LABEL_33;
      }

      v17 = _sSasSQRzlE2eeoiySbSayxG_ABtFZs6UInt32V_Tt1g5(v4, v9);
      outlined copy of PType.IsA(v7, v8, v10, v9, 1u);
      v18 = v2;
      v19 = v3;
      v20 = v5;
      v21 = v4;
      v22 = 1;
LABEL_29:
      outlined copy of PType.IsA(v18, v19, v20, v21, v22);
      outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v28, &_s21SwiftUITracingSupport5PTypeV3IsAO_AEtMd, &_s21SwiftUITracingSupport5PTypeV3IsAO_AEtMR);
      return v17 & 1;
    }

LABEL_31:

    goto LABEL_32;
  }

  if (v6 == 2)
  {
    if (v11 == 2)
    {
      v17 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ21SwiftUITracingSupport5PTypeV9ParameterV_Tt1g5(v2, v7);
      outlined copy of PType.IsA(v7, v8, v10, v9, 2u);
      v18 = v2;
      v19 = v3;
      v20 = v5;
      v21 = v4;
      v22 = 2;
      goto LABEL_29;
    }

    goto LABEL_31;
  }

  if (v6 == 3)
  {
    if (v11 == 3)
    {
      v12 = *(v2 + 16);
      if (v12 == *(v7 + 16))
      {
        if (!v12 || v2 == v7)
        {
LABEL_11:
          outlined copy of PType.IsA(v7, v8, v10, v9, 3u);
          outlined copy of PType.IsA(v2, v3, v5, v4, 3u);
          outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v28, &_s21SwiftUITracingSupport5PTypeV3IsAO_AEtMd, &_s21SwiftUITracingSupport5PTypeV3IsAO_AEtMR);
          return 1;
        }

        v13 = (v2 + 32);
        v14 = (v7 + 32);
        while (*v13 == *v14)
        {
          ++v13;
          ++v14;
          if (!--v12)
          {
            goto LABEL_11;
          }
        }
      }

      outlined copy of PType.IsA(v7, v8, v10, v9, 3u);
      v23 = v2;
      v24 = v3;
      v25 = v5;
      v26 = v4;
      v27 = 3;
      goto LABEL_33;
    }

    goto LABEL_31;
  }

  if (v11 != 4)
  {
    goto LABEL_32;
  }

  outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v28, &_s21SwiftUITracingSupport5PTypeV3IsAO_AEtMd, &_s21SwiftUITracingSupport5PTypeV3IsAO_AEtMR);
  if (v2 != v7)
  {
    return 0;
  }

  return (v7 ^ v2) >> 32 == 0;
}

BOOL specialized static PType.Parameter.== infix(_:_:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a3;
  v7 = a6;
  if (a2)
  {
    if (!a5)
    {
      return 0;
    }

    if (a1 == a4 && a2 == a5)
    {
      if (a3 != a6)
      {
        return 0;
      }

      return (a6 ^ a3) >> 32 == 0;
    }

    v9 = a3;
    v10 = a6;
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
    result = 0;
    if (v11)
    {
      a6 = v10;
      a3 = v9;
      if (v6 == v7)
      {
        return (a6 ^ a3) >> 32 == 0;
      }
    }
  }

  else
  {
    result = 0;
    if (!a5 && a3 == a6)
    {
      return (a6 ^ a3) >> 32 == 0;
    }
  }

  return result;
}

BOOL specialized static Snapshot.AbstractionKey.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v19 = v2;
  v20 = v3;
  v5 = *(a2 + 64);
  v6 = *(a2 + 48);
  v7 = *(a2 + 32);
  v8 = *(a2 + 24);
  v9 = *(a2 + 16);
  v10 = *(a1 + 64);
  v11 = *(a1 + 48);
  v12 = *(a1 + 32);
  v13 = *(a1 + 24);
  v17 = *(a1 + 16);
  v18 = v13;
  v15 = v9;
  v16 = v8;
  v14 = specialized static AbstractionSubtype.== infix(_:_:)(&v17, &v15) && v12 == v7;
  if (v11 != v6)
  {
    v14 = 0;
  }

  return v10 == v5 && v14;
}

BOOL specialized static Snapshot.Kind.== infix(_:_:)(_BOOL8 result, uint64_t a2)
{
  v3 = *result;
  v2 = *(result + 8);
  v4 = *(result + 16);
  v5 = *(result + 24);
  v6 = *(result + 32);
  v8 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  if ((v6 & 1) == 0)
  {
    if ((*(a2 + 32) & 1) == 0)
    {
      if (v3 == v8)
      {
        v19 = *(v2 + 16);
        if (v19 == *(v7 + 16))
        {
          if (v19)
          {
            v20 = v2 == v7;
          }

          else
          {
            v20 = 1;
          }

          if (v20)
          {
LABEL_25:
            outlined copy of Snapshot.Kind(*result, *(a2 + 8), v9, v10, 0);
            outlined copy of Snapshot.Kind(v3, v2, v4, v5, 0);
            outlined consume of Snapshot.Kind(v3, v2, v4, v5, 0);
            outlined consume of Snapshot.Kind(v3, v7, v9, v10, 0);
            return 1;
          }

          v24 = (v2 + 32);
          v25 = (v7 + 32);
          while (v19)
          {
            v26 = vmovn_s64(vceqq_s64(*v24, *v25));
            if ((v26.i32[0] & v26.i32[1] & 1) == 0)
            {
              goto LABEL_38;
            }

            ++v24;
            ++v25;
            if (!--v19)
            {
              goto LABEL_25;
            }
          }

          goto LABEL_43;
        }

LABEL_38:
        outlined copy of Snapshot.Kind(*result, *(a2 + 8), v9, v10, 0);
        outlined copy of Snapshot.Kind(v3, v2, v4, v5, 0);
        outlined consume of Snapshot.Kind(v3, v2, v4, v5, 0);
        v14 = v3;
      }

      else
      {
        outlined copy of Snapshot.Kind(*a2, *(a2 + 8), v9, v10, 0);
        outlined copy of Snapshot.Kind(v3, v2, v4, v5, 0);
        outlined consume of Snapshot.Kind(v3, v2, v4, v5, 0);
        v14 = v8;
      }

      v15 = v7;
      v16 = v9;
      v17 = v10;
      v18 = 0;
      goto LABEL_40;
    }

    goto LABEL_17;
  }

  if ((*(a2 + 32) & 1) == 0)
  {
LABEL_17:
    outlined copy of Snapshot.Kind(*a2, *(a2 + 8), v9, v10, v11);
    outlined copy of Snapshot.Kind(v3, v2, v4, v5, v6);
    outlined consume of Snapshot.Kind(v3, v2, v4, v5, v6);
    v14 = v8;
    v15 = v7;
    v16 = v9;
    v17 = v10;
    v18 = v11;
LABEL_40:
    outlined consume of Snapshot.Kind(v14, v15, v16, v17, v18);
    return 0;
  }

  v12 = *(v3 + 16);
  if (v12 != *(v8 + 16))
  {
LABEL_33:
    outlined copy of Snapshot.Kind(*a2, *(a2 + 8), v9, v10, 1);
    outlined copy of Snapshot.Kind(v3, v2, v4, v5, 1);
    outlined consume of Snapshot.Kind(v3, v2, v4, v5, 1);
    v14 = v8;
    v15 = v7;
    v16 = v9;
    v17 = v10;
    v18 = 1;
    goto LABEL_40;
  }

  if (v12)
  {
    v13 = v3 == v8;
  }

  else
  {
    v13 = 1;
  }

  if (v13)
  {
LABEL_9:
    outlined copy of Snapshot.Kind(*a2, *(a2 + 8), v9, v10, 1);
    outlined copy of Snapshot.Kind(v3, v2, v4, v5, 1);
    outlined consume of Snapshot.Kind(v3, v2, v4, v5, 1);
    outlined consume of Snapshot.Kind(v8, v7, v9, v10, 1);
    if (v4)
    {
      return v9 && ((v2 ^ v7) & 1) == 0 && ((v7 & 0x10000) == 0) != ((v2 >> 16) & 1) && ((v7 & 0x1000000) == 0) != ((v2 >> 24) & 1) && v4 == v9;
    }

    return !v9;
  }

  v21 = (v3 + 32);
  v22 = (v8 + 32);
  while (v12)
  {
    v23 = vmovn_s64(vceqq_s64(*v21, *v22));
    if ((v23.i32[0] & v23.i32[1] & 1) == 0)
    {
      goto LABEL_33;
    }

    ++v21;
    ++v22;
    if (!--v12)
    {
      goto LABEL_9;
    }
  }

  __break(1u);
LABEL_43:
  __break(1u);
  return result;
}

uint64_t specialized DepthMap.makeIterator()@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v2 = -1 << *(a1 + 32);
  v3 = ~v2;
  *a2 = a1;
  v6 = *(a1 + 64);
  result = a1 + 64;
  v5 = v6;
  v7 = -v2;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  else
  {
    v8 = -1;
  }

  a2[1] = result;
  a2[2] = v3;
  a2[3] = 0;
  a2[4] = v8 & v5;
  return result;
}

ValueMetadata *specialized static Event.AttributeStack.displayName(for:within:)(ValueMetadata *result, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (result != &type metadata for Event.AttributeValue && result != &type metadata for Event.AttributeStack)
  {
    goto LABEL_10;
  }

  if (*(a4 + 84) <= a3)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v6 = *(a4 + 72);
  if (v6)
  {
    memcpy(__dst, (v6 + 312 * a3), 0x131uLL);
    outlined init with copy of Attribute(__dst, &v8);
    v7 = Attribute.displayName(within:context:)(a4);
    outlined destroy of Attribute(__dst);
    return v7;
  }

LABEL_11:
  __break(1u);
  return result;
}

ValueMetadata *specialized static Event.Abstract.displayName(for:within:)(ValueMetadata *result, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (result == &type metadata for Event.Abstract)
  {
    v11 = v4;
    v12 = v5;
    v6 = *(a4 + 200) + 120 * a3;
    v7 = *(v6 + 8);
    v8 = *(v6 + 16);
    LOWORD(v6) = *(v6 + 24);
    v9 = v8;
    v10 = v6;
    return (*(v7 + 8))(&v9, a4);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized Tree.parent(_:within:unabstracting:)(uint64_t result, uint64_t *a2)
{
  v3 = result;
  v4 = *(v2 + 48);
  v5 = *(v2 + 56);
  v6 = *(v2 + 200);
  if (v6 && (*(v6 + 18) & 1) == 0 && HIBYTE(*(v6 + 16)) == result)
  {
    return *(v6 + 8);
  }

  if (result == 8 && *(v2 + 117) == 5)
  {
    return *(v2 + 104);
  }

  if (result == 4)
  {
    if (!v6)
    {
      return v4;
    }

    v7 = v5 | 0x400;
    *(v6 + 8) = v4;
LABEL_54:
    *(v6 + 16) = v7;
    *(v6 + 18) = 0;
    return v4;
  }

  if (((v5 | ((result & 8) >> 3)) & 1) == 0)
  {
    do
    {
      v8 = *a2;
      if (HIDWORD(v4) >= *(*a2 + 124))
      {
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v9 = *(v8 + 112);
      if (!v9)
      {
        goto LABEL_71;
      }

      if ((v4 & 0x80000000) != 0)
      {
        goto LABEL_61;
      }

      v10 = *(v9 + 168 * HIDWORD(v4));
      if (v4 >= *(v10 + 16))
      {
        goto LABEL_62;
      }

      v11 = (v10 + 208 * v4);
      v12 = v11[13];
      v55 = v11[12];
      v56 = v12;
      v57 = v11[14];
      v13 = v11[9];
      v51 = v11[8];
      v52 = v13;
      v14 = v11[11];
      v53 = v11[10];
      v54 = v14;
      v15 = v11[5];
      v47 = v11[4];
      v48 = v15;
      v16 = v11[7];
      v49 = v11[6];
      v50 = v16;
      v17 = v11[3];
      v45 = v11[2];
      v46 = v17;
      result = Tree.hasOwnAttributes(within:)(v8);
      if (result)
      {
        LOWORD(v5) = 0;
        goto LABEL_24;
      }

      if (HIDWORD(v4) >= *(v8 + 124))
      {
        goto LABEL_63;
      }

      v18 = *(v8 + 112);
      if (!v18)
      {
        goto LABEL_72;
      }

      v19 = *(v18 + 168 * HIDWORD(v4));
      if (v4 >= *(v19 + 16))
      {
        goto LABEL_64;
      }

      v20 = v19 + 208 * v4;
      v4 = *(v20 + 80);
    }

    while ((*(v20 + 88) & 1) == 0);
    if (v3 == 8)
    {
      return v4;
    }

    LOWORD(v5) = 1;
    goto LABEL_52;
  }

LABEL_24:
  if ((v3 & 0x10) != 0 && (v5 & 1) == 0)
  {
    if (HIDWORD(v4) < *(*a2 + 124))
    {
      v21 = *(*a2 + 112);
      if (!v21)
      {
        goto LABEL_74;
      }

      if ((v4 & 0x80000000) == 0)
      {
        v22 = *(v21 + 168 * HIDWORD(v4));
        if (v4 < *(v22 + 16))
        {
          v23 = (v22 + 208 * v4);
          v24 = v23[13];
          v55 = v23[12];
          v56 = v24;
          v57 = v23[14];
          v25 = v23[9];
          v51 = v23[8];
          v52 = v25;
          v26 = v23[11];
          v53 = v23[10];
          v54 = v26;
          v27 = v23[5];
          v47 = v23[4];
          v48 = v27;
          v28 = v23[7];
          v49 = v23[6];
          v50 = v28;
          v29 = v23[3];
          v45 = v23[2];
          v46 = v29;
          v30 = Tree.resolvedSelf(within:)(a2);
          if (v6)
          {
            *(v6 + 8) = v4;
            *(v6 + 16) = v3 << 8;
            *(v6 + 18) = 0;
          }

          return v30;
        }

        goto LABEL_70;
      }

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

LABEL_68:
    __break(1u);
    goto LABEL_69;
  }

  if (v3 != 8)
  {
LABEL_52:
    if (!v6)
    {
      return v4;
    }

    v59 = 0;
    *(v6 + 8) = v4;
    v7 = v5 | (v3 << 8);
    goto LABEL_54;
  }

  v58 = MEMORY[0x277D84FA0];
  if (v5)
  {
    return v4;
  }

  v31 = *a2;
  v32 = HIDWORD(v4);
  if (HIDWORD(v4) >= *(*a2 + 124))
  {
LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
    goto LABEL_68;
  }

  while (1)
  {
    v33 = *(v31 + 112);
    if (!v33)
    {
      break;
    }

    if ((v4 & 0x80000000) != 0)
    {
      goto LABEL_66;
    }

    v34 = *(v33 + 168 * v32);
    if (v4 >= *(v34 + 16))
    {
      goto LABEL_67;
    }

    v35 = v34 + 208 * v4;
    v36 = *(v35 + 80);
    v37 = *(v35 + 88);
    v38 = *(v35 + 149);
    if (v38 == 3)
    {
      v39 = v58;
      if (v37)
      {
LABEL_58:

        return v4;
      }
    }

    else
    {
      if (v38 == 5)
      {
        goto LABEL_58;
      }

      if (v37)
      {
        goto LABEL_75;
      }

      v39 = v58;
    }

    if (*(v39 + 16))
    {
      Hasher.init(_seed:)();
      MEMORY[0x26D69DC00](v4);
      v40 = Hasher._finalize()();
      v41 = -1 << *(v39 + 32);
      v42 = v40 & ~v41;
      if ((*(v39 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42))
      {
        v43 = ~v41;
        while (*(*(v39 + 48) + 8 * v42) != v4)
        {
          v42 = (v42 + 1) & v43;
          if (((*(v39 + 56 + ((v42 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v42) & 1) == 0)
          {
            goto LABEL_37;
          }
        }

        return 0;
      }
    }

LABEL_37:
    result = specialized Set._Variant.insert(_:)(&v45, v4);
    v32 = HIDWORD(v36);
    v4 = v36;
    if (HIDWORD(v36) >= *(v31 + 124))
    {
      goto LABEL_65;
    }
  }

LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
  return result;
}

unint64_t specialized Tree.displayName(within:_:)(unint64_t result)
{
  v2 = result;
  v3 = *(v1 + 88);
  if ((*(v1 + 176) & 1) == 0)
  {
    v21 = *(v1 + 152);
    v22 = *(v1 + 160);
    *&v38 = 0;
    *(&v38 + 1) = 0xE000000000000000;
    if (v21)
    {
      v36 = v3;
      LOWORD(v37) = 512;
      v23 = (*(v22 + 8))(&v36, result);
      MEMORY[0x26D69CDB0](v23);

      return v38;
    }

    goto LABEL_42;
  }

  if ((*(v1 + 116) & 1) == 0)
  {
    v24 = *(v1 + 112);
    if (v24 < *(result + 124))
    {
      v25 = *(result + 112);
      if (v25)
      {
        v26 = (v25 + 168 * v24);
        v27 = *v26;
        v28 = v26[2];
        v39 = v26[1];
        v40 = v28;
        v38 = v27;
        v29 = v26[3];
        v30 = v26[4];
        v31 = v26[6];
        v43 = v26[5];
        v44 = v31;
        v41 = v29;
        v42 = v30;
        v32 = v26[7];
        v33 = v26[8];
        v34 = v26[9];
        v48 = *(v26 + 20);
        v46 = v33;
        v47 = v34;
        v45 = v32;
        outlined init with copy of Subgraph(&v38, &v36);
        v35 = Subgraph.displayName(within:_:)(v2, 2);
        outlined destroy of Subgraph(&v38);
        return v35;
      }

      goto LABEL_43;
    }

    goto LABEL_39;
  }

  if (!*(v1 + 104))
  {
    __break(1u);
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v3 == -1)
  {
    return 0xD000000000000032;
  }

  v4 = *(*result + 136);
  v5 = *(v4 + 32);
  if (*(v5 + 16) <= v3)
  {
    goto LABEL_40;
  }

  v6 = *(v5 + 4 * v3 + 32);
  if (v6 >= *(v4 + 12))
  {
LABEL_41:
    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

  if (!*v4)
  {
LABEL_44:
    __break(1u);
    return result;
  }

  v7 = *(*v4 + 120 * v6 + 64);
  v8 = *(v4 + 40);
  v9 = *(v4 + 64);

  v10 = v9(v8, v7);
  v12 = v11;

  v13 = v10 == 0x49557466697753 && v12 == 0xE700000000000000;
  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v10 == 0xD000000000000012 ? (v14 = 0x800000026C33B970 == v12) : (v14 = 0), v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v10 == 0x7475626972747441 ? (v15 = v12 == 0xEE00687061724765) : (v15 = 0), v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 || (v10 == 0x4349557466697753 ? (v16 = v12 == 0xEB0000000065726FLL) : (v16 = 0), v16 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))))
  {

    v17 = 0;
    v18 = 0xE000000000000000;
  }

  else
  {
    *&v38 = v10;
    *(&v38 + 1) = v12;
    MEMORY[0x26D69CDB0](46, 0xE100000000000000);
    v17 = v10;
    v18 = v12;
  }

  v36 = v17;
  v37 = v18;
  v19 = *(*v2 + 136);
  v41 = v19[3];
  v42 = v19[4];
  v43 = v19[5];
  v44 = v19[6];
  v38 = *v19;
  v39 = v19[1];
  v40 = v19[2];
  v20 = Interpreter.Storage.Types.subscript.getter(v3);
  MEMORY[0x26D69CDB0](v20);

  return v36;
}

uint64_t specialized Event.Id.init<A, B>(_:_:_:)@<X0>(uint64_t a1@<X3>, uint64_t a2@<X4>, uint64_t a3@<X5>, uint64_t a4@<X6>, uint64_t a5@<X8>)
{
  v8 = *(a3 + 8);
  swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v10 = *(AssociatedConformanceWitness + 8);
  v11 = swift_checkMetadataState();
  result = v10(v11, AssociatedConformanceWitness);
  *a5 = a1;
  *(a5 + 8) = v8;
  *(a5 + 16) = a2;
  *(a5 + 24) = a4;
  *(a5 + 32) = result;
  return result;
}

ValueMetadata *specialized static Event.AttributeValue.stableIdentity(for:within:)(ValueMetadata *result, uint64_t a2, unsigned int a3, uint64_t a4)
{
  if (result != &type metadata for Event.AttributeValue && result != &type metadata for Event.AttributeStack)
  {
    goto LABEL_10;
  }

  if (*(a4 + 84) <= a3)
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v5 = *(a4 + 72);
  if (v5)
  {
    return *(v5 + 312 * a3 + 104);
  }

LABEL_11:
  __break(1u);
  return result;
}

Swift::Int specialized static Event.Abstract.stableIdentity(for:within:)(uint64_t a1, uint64_t a2)
{
  Hasher.init()();
  MEMORY[0x26D69DBC0](*a1);
  MEMORY[0x26D69DBC0](*(a1 + 16));
  MEMORY[0x26D69DBC0](*(*(a2 + 200) + 120 * *(a1 + 32) + 72));
  return Hasher.finalize()();
}

uint64_t _s21SwiftUITracingSupport16BufferAttachmentV7pointer8fileSizeACyxGSW_SitcfCSo17T_ValueDefinitiona_Tt1g5Tf4nd_n(uint64_t a1, uint64_t a2)
{
  type metadata accessor for String.Encoding();
  result = MEMORY[0x28223BE20](a1);
  if (a1)
  {
    if (a2 - result >= -19)
    {
      if (!((a2 - result) % 20))
      {
        return result;
      }

      goto LABEL_7;
    }

    __break(1u);
  }

  __break(1u);
LABEL_7:
  v5 = result;
  _StringGuts.grow(_:)(80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport16BufferAttachmentVySo17T_ValueDefinitionaGMd, &_s21SwiftUITracingSupport16BufferAttachmentVySo17T_ValueDefinitionaGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport16BufferAttachmentVySo17T_ValueDefinitionaGmMd, &_s21SwiftUITracingSupport16BufferAttachmentVySo17T_ValueDefinitionaGmMR);
  v6 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v6);

  MEMORY[0x26D69CDB0](0x657A697320666F20, 0xE900000000000020);
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v7);

  MEMORY[0x26D69CDB0](0xD000000000000033, 0x800000026C33C2A0);
  MEMORY[0x26D69CDB0](0xD000000000000011, 0x800000026C33C370);
  MEMORY[0x26D69CDB0](0x657A697320666F20, 0xE900000000000020);
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v8);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  specialized Collection.prefix(_:)(40, v5, a2);
  static String.Encoding.utf8.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
  lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance Slice<A>, &_ss5SliceVySWGMd, &_ss5SliceVySWGMR, MEMORY[0x277D84B58]);
  v9 = String.init<A>(bytes:encoding:)();
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  MEMORY[0x26D69CDB0](v9, v11);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized static PType.Parser.parseInvalidType(within:reason:)(uint64_t result, unsigned __int8 *a2)
{
  v2 = result;
  v3 = *a2;
  if (one-time initialization token for none != -1)
  {
    result = swift_once();
  }

  v4 = static PType.Metadata.none;
  v5 = qword_280481CC8;
  v6 = qword_280481CD0;
  v7 = dword_280481CD8;
  v8 = byte_280481CDC;
  v9 = *(v2 + 12);
  if (v9 == *(v2 + 8))
  {
    v12 = static PType.Metadata.none;
    result = specialized UnsafeArray.growToCapacity(_:)(2 * v9);
    v4 = v12;
  }

  if (*v2)
  {
    v10 = *(v2 + 12);
    v11 = *v2 + 120 * v10;
    *v11 = v3;
    *(v11 + 8) = 0;
    *(v11 + 16) = 0;
    *(v11 + 24) = 0;
    *(v11 + 32) = 0;
    *(v11 + 40) = 0;
    *(v11 + 48) = 0;
    *(v11 + 56) = 1;
    *(v11 + 60) = -1;
    *(v11 + 64) = v4;
    *(v11 + 80) = v5;
    *(v11 + 88) = v6;
    *(v11 + 96) = v7;
    *(v11 + 100) = v8;
    *(v11 + 104) = 0;
    *(v11 + 108) = 1;
    *(v11 + 112) = 0;
    *(v11 + 116) = 1;
    *(v11 + 117) = 6;
    if (v10 != -1)
    {
      *(v2 + 12) = v10 + 1;
      return v10;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t specialized Collection.subscript.getter(unint64_t result, uint64_t a2, unint64_t a3)
{
  v3 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (4 * v3 >= result >> 14)
  {
    return String.UnicodeScalarView.subscript.getter();
  }

  __break(1u);
  return result;
}

uint64_t specialized static PType.Parser.parseTypeName(string:within:)(uint64_t a1, uint64_t a2, unint64_t a3)
{

  if (specialized Sequence<>.starts<A>(with:)(0xD000000000000014, 0x800000026C33B950, a1, a2))
  {
    LOBYTE(v8[0]) = 1;
    v6 = specialized static PType.Parser.parseInvalidType(within:reason:)(a3, v8);
  }

  else
  {
    v8[0] = a1;
    v8[1] = a2;
    v9 = xmmword_26C32F2D0;

    v6 = PType.Parser.parseFunctional(within:)(a3);
  }

  return v6;
}

uint64_t specialized PType.Kind.init(rawValue:)(uint64_t result)
{
  if (result >= 9)
  {
    return 9;
  }

  else
  {
    return result;
  }
}

uint64_t _s21SwiftUITracingSupport16BufferAttachmentV7pointer8fileSizeACyxGSW_SitcfCSo11T_TypeFielda_Tt1g5Tf4nd_n(uint64_t a1, uint64_t a2)
{
  type metadata accessor for String.Encoding();
  result = MEMORY[0x28223BE20](a1);
  if (a1)
  {
    if (a2 - result >= -11)
    {
      if (!((a2 - result) % 12))
      {
        return result;
      }

      goto LABEL_7;
    }

    __break(1u);
  }

  __break(1u);
LABEL_7:
  v5 = result;
  _StringGuts.grow(_:)(80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport16BufferAttachmentVySo11T_TypeFieldaGMd, &_s21SwiftUITracingSupport16BufferAttachmentVySo11T_TypeFieldaGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport16BufferAttachmentVySo11T_TypeFieldaGmMd, &_s21SwiftUITracingSupport16BufferAttachmentVySo11T_TypeFieldaGmMR);
  v6 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v6);

  MEMORY[0x26D69CDB0](0x657A697320666F20, 0xE900000000000020);
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v7);

  MEMORY[0x26D69CDB0](0xD000000000000033, 0x800000026C33C2A0);
  MEMORY[0x26D69CDB0](0x6946657079545F54, 0xEB00000000646C65);
  MEMORY[0x26D69CDB0](0x657A697320666F20, 0xE900000000000020);
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v8);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  specialized Collection.prefix(_:)(40, v5, a2);
  static String.Encoding.utf8.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
  lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance Slice<A>, &_ss5SliceVySWGMd, &_ss5SliceVySWGMR, MEMORY[0x277D84B58]);
  v9 = String.init<A>(bytes:encoding:)();
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  MEMORY[0x26D69CDB0](v9, v11);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t specialized Attribute.add(displayName:type:within:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  if (*(v3 + 168) == 1)
  {
    result = closure #1 in implicit closure #1 in Attribute.add(displayName:type:within:)(a3, v3, a1, a2);
  }

  else
  {
    result = *(v3 + 160);
  }

  if (*(v3 + 136))
  {
    goto LABEL_32;
  }

  v8 = *(v3 + 128);
  v9 = *a3;
  v10 = HIDWORD(v8);
  v11 = *(*a3 + 124);
  if (HIDWORD(v8) >= v11)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v12 = *(v9 + 112);
  if (!v12)
  {
LABEL_33:
    __break(1u);
    goto LABEL_34;
  }

  if ((v8 & 0x80000000) != 0)
  {
    goto LABEL_23;
  }

  v13 = v8;
  v14 = v12 + 168 * HIDWORD(v8);
  if (v13 >= *(*v14 + 16))
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v15 = *v14 + 208 * v13;
  if (result >= *(v15 + 164))
  {
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v16 = *(v15 + 152);
  if (!v16)
  {
LABEL_34:
    __break(1u);
    goto LABEL_35;
  }

  v17 = v16 + 40 * result;
  v20 = *(v17 + 36);
  v18 = (v17 + 36);
  v19 = v20;
  if ((v20 & 0x40000000) == 0)
  {
    *v18 = v19 | 0x40000000;
    v11 = *(v9 + 124);
  }

  if (v10 >= v11)
  {
    goto LABEL_26;
  }

  if (v13 >= *(*v14 + 16))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v21 = *v14 + 208 * v13;
  if (result >= *(v21 + 164))
  {
LABEL_28:
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  v22 = *(v21 + 152);
  if (!v22)
  {
LABEL_35:
    __break(1u);
    goto LABEL_36;
  }

  v23 = v22 + 40 * result;
  *(v23 + 8) = a1;
  *(v23 + 16) = a2;

  if (v10 >= *(v9 + 124))
  {
    goto LABEL_29;
  }

  v24 = *(v9 + 112);
  if (v24)
  {
    v25 = *(v24 + 168 * v10);
    if (v13 < *(v25 + 16))
    {
      v26 = *(v25 + 208 * v13 + 164);
      if (v26)
      {
        *(v3 + 160) = v26 - 1;
        *(v3 + 168) = 0;
        return result;
      }

      goto LABEL_31;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
    goto LABEL_33;
  }

LABEL_36:
  __break(1u);
  return result;
}

uint64_t _s21SwiftUITracingSupport16BufferAttachmentV7pointer8fileSizeACyxGSW_SitcfCSo13T_RawTreeNodea_Tt1g5Tf4nd_n(uint64_t a1, uint64_t a2)
{
  type metadata accessor for String.Encoding();
  result = MEMORY[0x28223BE20](a1);
  if (a1)
  {
    if (a2 - result >= -23)
    {
      if (!((a2 - result) % 24))
      {
        return result;
      }

      goto LABEL_7;
    }

    __break(1u);
  }

  __break(1u);
LABEL_7:
  v5 = result;
  _StringGuts.grow(_:)(80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport16BufferAttachmentVySo13T_RawTreeNodeaGMd, &_s21SwiftUITracingSupport16BufferAttachmentVySo13T_RawTreeNodeaGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport16BufferAttachmentVySo13T_RawTreeNodeaGmMd, &_s21SwiftUITracingSupport16BufferAttachmentVySo13T_RawTreeNodeaGmMR);
  v6 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v6);

  MEMORY[0x26D69CDB0](0x657A697320666F20, 0xE900000000000020);
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v7);

  MEMORY[0x26D69CDB0](0xD000000000000033, 0x800000026C33C2A0);
  MEMORY[0x26D69CDB0](0x6572547761525F54, 0xED000065646F4E65);
  MEMORY[0x26D69CDB0](0x657A697320666F20, 0xE900000000000020);
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v8);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  specialized Collection.prefix(_:)(40, v5, a2);
  static String.Encoding.utf8.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
  lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance Slice<A>, &_ss5SliceVySWGMd, &_ss5SliceVySWGMR, MEMORY[0x277D84B58]);
  v9 = String.init<A>(bytes:encoding:)();
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  MEMORY[0x26D69CDB0](v9, v11);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _s21SwiftUITracingSupport16BufferAttachmentV7pointer8fileSizeACyxGSW_SitcfCSo15T_TreeValueNodea_Tt1g5Tf4nd_n(uint64_t a1, uint64_t a2)
{
  type metadata accessor for String.Encoding();
  result = MEMORY[0x28223BE20](a1);
  if (a1)
  {
    if (a2 - result >= -31)
    {
      if (((a2 - result) & 0x1F) == 0)
      {
        return result;
      }

      goto LABEL_7;
    }

    __break(1u);
  }

  __break(1u);
LABEL_7:
  v5 = result;
  _StringGuts.grow(_:)(80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport16BufferAttachmentVySo15T_TreeValueNodeaGMd, &_s21SwiftUITracingSupport16BufferAttachmentVySo15T_TreeValueNodeaGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport16BufferAttachmentVySo15T_TreeValueNodeaGmMd, &_s21SwiftUITracingSupport16BufferAttachmentVySo15T_TreeValueNodeaGmMR);
  v6 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v6);

  MEMORY[0x26D69CDB0](0x657A697320666F20, 0xE900000000000020);
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v7);

  MEMORY[0x26D69CDB0](0xD000000000000033, 0x800000026C33C2A0);
  MEMORY[0x26D69CDB0](0x6156656572545F54, 0xEF65646F4E65756CLL);
  MEMORY[0x26D69CDB0](0x657A697320666F20, 0xE900000000000020);
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v8);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  specialized Collection.prefix(_:)(40, v5, a2);
  static String.Encoding.utf8.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
  lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance Slice<A>, &_ss5SliceVySWGMd, &_ss5SliceVySWGMR, MEMORY[0x277D84B58]);
  v9 = String.init<A>(bytes:encoding:)();
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  MEMORY[0x26D69CDB0](v9, v11);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:)(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

void specialized T_InstantiateEnd.model(within:)(unsigned __int8 *a1)
{
  v2 = type metadata accessor for TraceChunk(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 22);
  if (*(v5 + 32))
  {
    specialized T_Header.init()(&v51);
  }

  else
  {
    outlined init with copy of TraceChunk(*(v5 + 24), v4);
    v6 = *(*v4 + 32);
    outlined destroy of TraceChunk(v4);
    specialized T_Header.init(loadedFrom:)(v6, &v51);
  }

  v7 = &type metadata for Event.Instantiate;
  if (v52 > 0x40u)
  {
    goto LABEL_45;
  }

  v8 = a1 + 56;
  v9 = *(a1 + 72);
  v53[0] = *(a1 + 56);
  v53[1] = v9;
  v54[0] = *(a1 + 88);
  *(v54 + 9) = *(a1 + 97);
  v10 = a1 + 72;
  v11 = a1 + 84;
  v12 = a1 + 104;
  while (1)
  {
    v13 = *v12;
    if (*v11)
    {
      v14 = *v10;
      if ((v14[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v13)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v53);
    }

    v10 = v13 + 16;
    v11 = v13 + 28;
    v12 = v13 + 48;
    v8 = v13;
  }

  v15 = *v8;
  if (!v15)
  {
    goto LABEL_63;
  }

  v16 = *(*(v15 + 24 * *v14) + 112);
  if (!v16)
  {
    goto LABEL_55;
  }

  v17 = *(*(v16 + 32) + 8);
  v18 = *(v17 + 16);
  if (!v18)
  {
    goto LABEL_51;
  }

  if (a1[48])
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v19 = *a1;
  if (v19 >= *(v5 + 116))
  {
    goto LABEL_48;
  }

  v49 = v5;
  v20 = *(v5 + 104);
  if (!v20)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v21 = *(v17 + 32 + 48 * (v18 - 1));
  v22 = *(*(v20 + 8 * v19) + 8);
  v23 = *(v22 + 44);
  if (v21 >= v23)
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v24 = *(v22 + 32);
  if (!v24)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v25 = v24 + (v21 << 7);
  v28 = *(v25 + 8);
  v27 = v25 + 8;
  v26 = v28;
  if (!*(v27 + 24))
  {
    goto LABEL_47;
  }

  if (*(v27 + 16))
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  if (!v26)
  {
LABEL_52:
    __break(1u);
    goto LABEL_53;
  }

  v29 = *v26;
  if (!swift_conformsToProtocol2())
  {
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  if (v29 != &type metadata for Event.Instantiate && v29 != &type metadata for Event.Uninstantiate)
  {
    v31 = (v17 + 48 * v18 - 64);
    while (v18-- > 1)
    {
      v21 = *v31;
      if (v21 >= v23)
      {
        goto LABEL_46;
      }

      v33 = v24 + (v21 << 7);
      v36 = *(v33 + 8);
      v35 = v33 + 8;
      v34 = v36;
      if (!*(v35 + 24))
      {
        goto LABEL_47;
      }

      if (*(v35 + 16))
      {
        goto LABEL_53;
      }

      if (!v34)
      {
        goto LABEL_52;
      }

      v37 = *v34;
      if (!swift_conformsToProtocol2())
      {
        goto LABEL_54;
      }

      v31 -= 12;
      if (v37 == &type metadata for Event.Instantiate || v37 == &type metadata for Event.Uninstantiate)
      {
        goto LABEL_39;
      }
    }

    goto LABEL_51;
  }

LABEL_39:
  if (a1[48])
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v39 = *a1;
  if (v39 >= *(v49 + 116))
  {
    goto LABEL_49;
  }

  v40 = *(v49 + 104);
  if (!v40)
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  v41 = *(*(v40 + 8 * v39) + 8);
  if (v21 >= *(v41 + 44))
  {
    goto LABEL_50;
  }

  v42 = *(v41 + 32);
  if (!v42)
  {
LABEL_61:
    __break(1u);
    goto LABEL_62;
  }

  v43 = v42 + (v21 << 7);
  v44 = *(v43 + 8);
  v45 = *(v43 + 16);
  v46 = *(v43 + 24);
  v47 = *(v43 + 32);
  v50 = v46;
  v7 = HeterogeneousBuffer.type(at:)(0, v44, v45, v46, v47);
  if (swift_conformsToProtocol2())
  {
LABEL_45:
    Interpreter.Iterator.endInflight(_:)(v7);
    return;
  }

LABEL_62:
  __break(1u);
LABEL_63:
  __break(1u);
}

unsigned __int8 *specialized T_BeginTrace.model(within:)(unsigned __int8 *result)
{
  v2 = result;
  v3 = result + 56;
  v4 = *(result + 72);
  v73[0] = *(result + 56);
  v73[1] = v4;
  v74[0] = *(result + 88);
  v5 = (result + 72);
  v6 = result + 84;
  v7 = result + 88;
  v8 = (result + 104);
  *(v74 + 9) = *(result + 97);
  v9 = (result + 56);
  v10 = (result + 72);
  v11 = result + 84;
  v12 = (result + 104);
  while (1)
  {
    v13 = *v12;
    if (*v11)
    {
      v14 = *v10;
      if ((v14[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v13)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v73);
    }

    v10 = (v13 + 16);
    v11 = (v13 + 28);
    v12 = (v13 + 48);
    v9 = v13;
  }

  v15 = *v9;
  if (!v15)
  {
    goto LABEL_71;
  }

  result = (v15 + 24 * *v14);
  v16 = *(*result + 112);
  if (!v16)
  {
    goto LABEL_69;
  }

  if (*(v16 + 16))
  {
    v5 = *v2;
    v6 = v2[48];
    v17 = *(v2 + 22);
    v18 = v3[2];
    v71 = v3[1];
    v72[0] = v18;
    *(v72 + 9) = *(v3 + 41);
    v19 = v2 + 100;
    v20 = *(v2 + 29);
    v21 = v3;
    v22 = v7;
    v23 = v8;
    v70 = *v3;
    while (1)
    {
      v24 = *v23;
      if (v20 < *v19)
      {
        v25 = (*v22 + 8 * v20);
        if ((v25[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v24)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v20, 0, &v70);
      }

      v22 = (v24 + 32);
      v19 = (v24 + 44);
      v23 = (v24 + 48);
      v21 = v24;
    }

    v36 = *v21;
    if (!*v21)
    {
      goto LABEL_73;
    }

    v35 = *v25;
    i = 24;
    result = (v36 + 24 * v35);
    if (!v6)
    {
      if (v5 >= *(v17 + 116))
      {
        __break(1u);
      }

      else
      {
        v26 = *(v17 + 104);
        if (!v26)
        {
LABEL_70:
          __break(1u);
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
          goto LABEL_74;
        }

        v27 = *(*result + 32);
        v28 = *(*(v26 + 8 * v5) + 8);
        if (*(v28 + 24) >= v27)
        {
          *(v28 + 16) = v27;
          if (v2[48])
          {
            return result;
          }

          goto LABEL_48;
        }
      }

      __break(1u);
      goto LABEL_68;
    }

    __break(1u);
  }

  else
  {
    v29 = v3[1];
    v70 = *v3;
    v71 = v29;
    v72[0] = v3[2];
    v1 = v2 + 100;
    v20 = *(v2 + 29);
    v17 = 8 * v20;
    *(v72 + 9) = *(v3 + 41);
    v30 = v8;
    v31 = v2 + 100;
    v32 = v7;
    for (i = v3; ; i = v34)
    {
      v34 = *v30;
      if (v20 < *v31)
      {
        v35 = (*v32 + v17);
        if ((v35[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v34)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v20, 0, &v70);
      }

      v32 = (v34 + 32);
      v31 = (v34 + 44);
      v30 = (v34 + 48);
    }
  }

  if (!*i)
  {
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
    goto LABEL_78;
  }

  result = (*i + 24 * *v35);
  v37 = *(*result + 32);
  v38 = v3[1];
  v68[0] = *v3;
  v68[1] = v38;
  v69[0] = v3[2];
  *(v69 + 9) = *(v3 + 41);
  v39 = v8;
  for (j = v3; ; j = v41)
  {
    v41 = *v39;
    if (*v6)
    {
      if ((*(*v5 + 4) & 1) == 0)
      {
        break;
      }
    }

    if (!v41)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v68);
    }

    v5 = (v41 + 2);
    v6 = v41 + 28;
    v39 = v41 + 6;
  }

  if (!*j)
  {
LABEL_74:
    __break(1u);
    goto LABEL_75;
  }

  result = (*j + 24 * **v5);
  v42 = *(*result + 112);
  if (!v42)
  {
    goto LABEL_72;
  }

  if (*(v42 + 24) < v37)
  {
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
    goto LABEL_70;
  }

  *(v42 + 16) = v37;
  v43 = v3[1];
  v66[0] = *v3;
  v66[1] = v43;
  v67[0] = v3[2];
  *(v67 + 9) = *(v3 + 41);
  v44 = v8;
  v45 = v7;
  for (k = v3; ; k = v47)
  {
    v47 = *v44;
    if (v20 < *v1)
    {
      v48 = (*v45 + v17);
      if ((v48[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v47)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v20, 0, v66);
    }

    v45 = (v47 + 32);
    v1 = (v47 + 44);
    v44 = (v47 + 48);
  }

  if (!*k)
  {
    goto LABEL_76;
  }

  result = (*k + 24 * *v48);
  *(*result + 40) = 1;
  if (v2[48])
  {
    return result;
  }

LABEL_48:
  if (v2[1] << 8 != 1024)
  {
    return result;
  }

  v49 = v3[1];
  v64[0] = *v3;
  v64[1] = v49;
  v65[0] = v3[2];
  v50 = v2 + 100;
  v51 = 8 * v20;
  *(v65 + 9) = *(v3 + 41);
  v52 = v3;
  v53 = v7;
  v54 = v2 + 100;
  v55 = v8;
  while (1)
  {
    v56 = *v55;
    if (v20 < *v54)
    {
      v57 = (*v53 + v51);
      if ((v57[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v56)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v20, 0, v64);
    }

    v53 = (v56 + 32);
    v54 = (v56 + 44);
    v55 = (v56 + 48);
    v52 = v56;
  }

  v58 = *v52;
  if (!v58)
  {
    goto LABEL_77;
  }

  result = (v58 + 24 * *v57);
  if ((*(*result + 40) & 1) == 0)
  {
    return result;
  }

  v59 = v3[1];
  v62[0] = *v3;
  v62[1] = v59;
  v63[0] = v3[2];
  *(v63 + 9) = *(v3 + 41);
  while (1)
  {
    v60 = *v8;
    if (v20 < *v50)
    {
      v61 = (*v7 + v51);
      if ((v61[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v60)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v20, 0, v62);
    }

    v7 = (v60 + 32);
    v50 = (v60 + 44);
    v8 = (v60 + 48);
    v3 = v60;
  }

  if (!*v3)
  {
LABEL_78:
    __break(1u);
    return result;
  }

  return specialized Interpreter.Iterator.new<A, B>(event:_:discreet:)(*(*(*v3 + 24 * *v61) + 32), -1, 0);
}

uint64_t specialized static PType.Parser.parseType(record:within:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for String.Encoding();
  result = MEMORY[0x28223BE20](v4 - 8);
  v111 = &v98 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 116);
  v8 = *(a2 + 176);
  v9 = *(a1 + 4);
  v10 = v8 + 40;
  v11 = *(v8 + 56);
  v131[0] = *(v8 + 40);
  v131[1] = v11;
  v132[0] = *(v8 + 72);
  v12 = (v8 + 72);
  v13 = (v8 + 84);
  v14 = v8 + 88;
  v15 = (8 * v7);
  v108 = v8;
  v109 = a2;
  *(v132 + 9) = *(v8 + 81);
  v16 = (v8 + 40);
  v17 = v12;
  v18 = v13;
  v19 = v14;
  v112 = v9;
  v110 = a1;
  while (1)
  {
    v20 = *v19;
    if (v7 < *v18)
    {
      v21 = (v15 + *v17);
      if ((v21[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v20)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v7, 0, v131);
    }

    v17 = (v20 + 32);
    v18 = (v20 + 44);
    v19 = (v20 + 48);
    v16 = v20;
  }

  v22 = *v16;
  if (!v22)
  {
    goto LABEL_118;
  }

  result = v22 + 24 * *v21;
  v23 = *result;
  v24 = *(*result + 196);
  v25 = 0uLL;
  if (v24)
  {
    v26 = *(v23 + 184);
    if (!v26)
    {
LABEL_115:
      __break(1u);
LABEL_116:
      __break(1u);
      goto LABEL_117;
    }

    v27 = v24 - 1;
    if (*(v26 + 32 * (v24 - 1)) >= v9)
    {
      v33 = v24 >> 1;
      v34 = *(v26 + 32 * (v24 >> 1));
      if (v24 != 1 && v34 != v9)
      {
        if (v9 >= v34)
        {
          v37 = v33 + 1;
          v36 = v9;
          v33 = v24;
        }

        else
        {
          v36 = v9;
          v37 = 0;
        }

        result = specialized Collection<>.binarySearch(for:)(v36, v37, v33, v26, *(v23 + 192) | (v24 << 32), 0);
        if (v40)
        {
          v33 = v24 - 1;
        }

        else
        {
          v33 = result;
        }

        v9 = v112;
        v25 = 0uLL;
      }

      v41 = (v26 + 32 * v33);
      v27 = v33;
      do
      {
        if (v33 >= v24)
        {
          goto LABEL_97;
        }

        if (v9 >= *v41)
        {
          goto LABEL_11;
        }

        if (!v27)
        {
          goto LABEL_39;
        }

        --v27;
        v41 -= 8;
      }

      while (v27 <= v24);
      __break(1u);
LABEL_39:
      v31 = 0;
      v32 = 0;
      v12 = v108;
      v15 = v116;
    }

    else
    {
LABEL_11:
      v28 = *(v10 + 16);
      v129[0] = *v10;
      v129[1] = v28;
      v130[0] = *(v10 + 32);
      *(v130 + 9) = *(v10 + 41);
      while (1)
      {
        v29 = *v14;
        if (v7 < *v13)
        {
          v30 = (v15 + *v12);
          if ((v30[1] & 1) == 0)
          {
            break;
          }
        }

        if (!v29)
        {
          specialized error #1 <A>() in EvolutionTable.address(of:in:)(v7, 0, v129);
        }

        v12 = (v29 + 32);
        v13 = (v29 + 44);
        v14 = v29 + 48;
        v10 = v29;
      }

      if (!*v10)
      {
        goto LABEL_120;
      }

      result = *v10 + 24 * *v30;
      v12 = v108;
      v15 = v116;
      if (v27 >= *(*result + 196))
      {
LABEL_105:
        __break(1u);
LABEL_106:
        __break(1u);
LABEL_107:
        __break(1u);
LABEL_108:
        __break(1u);
        goto LABEL_109;
      }

      v38 = *(*result + 184);
      if (!v38)
      {
LABEL_117:
        __break(1u);
LABEL_118:
        __break(1u);
LABEL_119:
        __break(1u);
LABEL_120:
        __break(1u);
        return result;
      }

      v39 = (v38 + 32 * v27);
      v31 = *v39;
      v32 = *(v39 + 1);
      v25 = *(v39 + 1);
    }
  }

  else
  {
    v31 = 0;
    v32 = 0;
    v12 = v108;
    v15 = v116;
  }

  v115 = 0;
  *&v126 = v7 | 0x200000000;
  *(&v126 + 1) = v9 << 32;
  *&v127 = v31;
  *(&v127 + 1) = v32;
  v128[0] = v25;
  LOBYTE(v128[1]) = 1;
  v14 = v116;
  Interpreter.Iterator.init(_:kind:onEvent:)(v12, &v126, 0, 0, v116);
  Interpreter.Iterator.read()();
  v126 = *&v117[8];
  v127 = *&v117[24];
  v128[0] = *&v117[40];
  *(v128 + 9) = *&v117[49];
  v42 = *&v117[8];
  v43 = *&v117[40];
  result = v118;
  v44 = *&v117[56];
  if (v118 >= *&v117[52])
  {
    goto LABEL_42;
  }

  while (1)
  {
    v45 = (v43 + 8 * v118);
    if ((v45[1] & 1) == 0)
    {
      break;
    }

    do
    {
LABEL_42:
      if (!v44)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v118, 0, &v126);
      }

      v42 = *v44;
      v43 = v44[4];
      v46 = *(v44 + 11);
      v44 = v44[6];
    }

    while (v118 >= v46);
  }

  if (!v42)
  {
    goto LABEL_119;
  }

  result = v42 + 24 * *v45;
  v47 = *result;
  v48 = *(*result + 96);
  if (v48 == 2)
  {
    goto LABEL_108;
  }

  v49 = *(v47 + 104);
  v50 = *(v47 + 88);
  v121 = *(v47 + 72);
  v122 = v50;
  v123 = v48 & 0x101;
  v124 = HIDWORD(v48);
  v125 = v49 & 1;
  result = Interpreter.Iterator.AttachmentBuffer.buffer.getter();
  if (v52)
  {
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v53 = v51 - result;
  if (!result)
  {
    v53 = 0;
  }

  v113 = result;
  v114 = v53;
  static String.Encoding.utf8.getter();
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSRys5UInt8VGMd, &_sSRys5UInt8VGMR);
  lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type UnsafeBufferPointer<UInt8> and conformance UnsafeBufferPointer<A>, &_sSRys5UInt8VGMd, &_sSRys5UInt8VGMR, MEMORY[0x277D836F8]);
  result = String.init<A>(bytes:encoding:)();
  if (!v54)
  {
    goto LABEL_110;
  }

  v55 = result;
  v56 = v54;
  v27 = &v117[8];
  specialized EvolutionTable.deallocate()();
  MEMORY[0x26D69CE40](v55, v56);
  result = specialized static PType.Parser.parseTypeName(string:within:)(v55, v56, v12[17]);
  if ((result & 0x100000000) != 0)
  {
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
    goto LABEL_115;
  }

  v10 = result;

  v57 = v12[17];
  v24 = v10;
  if (v10 >= *(v57 + 3))
  {
    goto LABEL_99;
  }

  v58 = *v57;
  if (!v58)
  {
    goto LABEL_112;
  }

  v26 = 120 * v10;
  v27 = *(v58 + v26 + 64);
  v14 = v110;
  if (one-time initialization token for none != -1)
  {
    goto LABEL_100;
  }

  while (1)
  {
    if (static PType.Metadata.none != v27)
    {
      __break(1u);
LABEL_102:
      __break(1u);
      goto LABEL_103;
    }

    v59 = *(v14 + 8);
    result = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA5PTypeV5FieldV_SayAJGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v61 = v12[17];
    if (v24 >= *(v61 + 3))
    {
      goto LABEL_102;
    }

    v107 = result;
    v62 = *v61;
    if (!v62)
    {
      goto LABEL_113;
    }

    v106 = v60;
    v112 = HIDWORD(v60);
    v63 = v62 + v26;
    *(v63 + 112) = *v14;
    *(v63 + 116) = 0;
    v64 = *(v14 + 24);
    result = specialized PType.Kind.init(rawValue:)(*(v14 + 28));
    v65 = *v12;
    v105 = result;
    if (v65 != 1)
    {
      break;
    }

    v66 = v12[17];
    v67 = *(v14 + 32);
    if (v67)
    {
      v68 = v7;
    }

    else
    {
      v68 = 0;
    }

    if (v67)
    {
      v69 = *(v14 + 32);
    }

    else
    {
      v69 = -1;
    }

    if (v24 >= *(v66 + 3))
    {
      goto LABEL_104;
    }

    v70 = *v66;
    if (!v70)
    {
      goto LABEL_116;
    }

    v71 = v70 + v26;
    *(v71 + 48) = v68;
    *(v71 + 52) = 2 * (v67 != 0);
    *(v71 + 56) = v67 == 0;
    *(v71 + 60) = v69;
    v73 = *(v14 + 16);
    v72 = *(v14 + 20);
    if (!v72)
    {
      goto LABEL_89;
    }

    v103 = v64;
    v104 = v59;
    v74 = v109;
    v75 = v109[10];
    v76 = v109[11];
    v77 = v109[8];
    v15[9] = v109[9];
    v15[10] = v75;
    v15[11] = v76;
    v79 = v74[6];
    v78 = v74[7];
    v120 = *(v74 + 192);
    v15[7] = v78;
    v15[8] = v77;
    v80 = v74[3];
    v116[2] = v74[2];
    *v117 = v80;
    v81 = v74[4];
    *&v117[32] = v74[5];
    *&v117[48] = v79;
    *&v117[16] = v81;
    v82 = v74[1];
    v116[0] = *v74;
    v116[1] = v82;
    v12 = v119;
    v27 = v116;
    v83 = specialized Interpreter.Iterator.subscript.getter(v72);
    if (!v84)
    {
      LODWORD(v89) = v106;
      result = v107;
      v59 = v104;
      v94 = v112;
      v64 = v103;
      goto LABEL_90;
    }

    v86 = v83;
    v15 = v84;
    v99 = v73;
    v100 = v26;
    v101 = v24;
    v102 = v10;
    v108 = v12;
    v7 = 0;
    v87 = v112;
    HIDWORD(v98) = v84 + v112;
    v88 = v118;
    v12 = (2 * v112);
    v26 = 32 * v112;
    v24 = v112;
    v89 = v106;
    result = v107;
    v110 = v85;
    v111 = v86;
    LODWORD(v109) = v118;
    while ((v7 * v85) >> 64 == (v7 * v85) >> 63)
    {
      v90 = &v86[v7 * v85];
      v27 = *v90;
      if (!v27)
      {
        goto LABEL_95;
      }

      v14 = *(v90 + 1);
      v10 = *(v90 + 2);
      if (v24 == v89)
      {
        if (v89)
        {
          v91 = v12;
        }

        else
        {
          v91 = 1;
        }

        if (HIDWORD(v91))
        {
          goto LABEL_98;
        }

        v92 = v91;
        if (result)
        {
          result = realloc(result, 32 * v91);
          if (!result)
          {
            goto LABEL_107;
          }
        }

        else
        {
          result = swift_slowAlloc();
        }

        v86 = v111;
        v87 = v112;
        v89 = v92;
        v85 = v110;
        v88 = v109;
      }

      else if (!result)
      {
        goto LABEL_106;
      }

      v93 = result + v26;
      *v93 = v88;
      *(v93 + 4) = 2;
      *(v93 + 8) = 0;
      *(v93 + 12) = v27;
      *(v93 + 16) = v10;
      *(v93 + 24) = v14;
      if ((v87 ^ v7) == 0xFFFFFFFF)
      {
        goto LABEL_96;
      }

      ++v24;
      v12 = (v12 + 2);
      v26 += 32;
      ++v7;
      v15 = (v15 - 1);
      if (!v15)
      {
        v94 = HIDWORD(v98);
        v12 = v108;
        v24 = v101;
        v10 = v102;
        v73 = v99;
        v26 = v100;
        v59 = v104;
        v64 = v103;
        goto LABEL_90;
      }
    }

    __break(1u);
LABEL_95:
    __break(1u);
LABEL_96:
    __break(1u);
LABEL_97:
    __break(1u);
LABEL_98:
    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    result = swift_once();
  }

  v73 = 0x7FFFFFFFFFFFFFFFLL;
LABEL_89:
  LODWORD(v89) = v106;
  result = v107;
  v94 = v112;
LABEL_90:
  v95 = v12[17];
  if (v24 >= *(v95 + 3))
  {
LABEL_103:
    __break(1u);
LABEL_104:
    __break(1u);
    goto LABEL_105;
  }

  v96 = *v95;
  if (!v96)
  {
    goto LABEL_114;
  }

  v97 = v96 + v26;
  *(v97 + 64) = v59;
  *(v97 + 72) = result;
  *(v97 + 80) = v89;
  *(v97 + 84) = v94;
  *(v97 + 88) = v73;
  *(v97 + 96) = v64;
  *(v97 + 100) = v105;
  return v10;
}

unint64_t specialized static Allocation.new(from:within:)(unint64_t result, unsigned __int8 *a2)
{
  if (a2[48])
  {
    goto LABEL_13;
  }

  v2 = *(a2 + 22);
  v3 = *a2;
  if (v3 >= *(v2 + 116))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v4 = *(v2 + 104);
  if (v4)
  {
    v5 = result;
    v7 = Snapshot.subscript.read(v15, result, *(*(v4 + 8 * v3) + 8));
    v8 = 256;
    if ((*(v6 + 25) & 1) == 0)
    {
      v8 = 0;
    }

    v9 = _s21SwiftUITracingSupport19HeterogeneousBufferV18findValuePointerAsySpyxGSgxmlFAA5EventV10AllocationV_Ttg5Tm(*(v6 + 8), *(v6 + 16), v8 | (*(v6 + 28) << 32) | *(v6 + 24) & 1, *(v6 + 32), _s21SwiftUITracingSupport19HeterogeneousBufferV4findyAC5IndexVxmlFAA5EventV10AllocationV_Ttg5);
    if (v9)
    {
      v10 = *v9;

      (v7)(v15, 0);
      v11 = *(v10 + 16);

      if (v11)
      {
        _s21SwiftUITracingSupport11InterpreterC8IteratorV3new8abstract8rootedAt8discreet11restrictionAA8EventRefVxm_ALSbSayALGtAA0L11AbstractionRzlFAA10AllocationV_Ttg5(v5, 0, MEMORY[0x277D84F90]);
        v12 = 0;
        v14 = v13;
LABEL_11:
        LOBYTE(v15[0]) = v12;
        return v14 | (v12 << 32);
      }
    }

    else
    {
      (v7)(v15, 0);
    }

    v14 = 0;
    v12 = 1;
    goto LABEL_11;
  }

LABEL_14:
  __break(1u);
  return result;
}

unsigned __int8 *specialized T_EndTrace.model(within:)(unsigned __int8 *result)
{
  v1 = result;
  v2 = v69;
  v3 = result + 56;
  v4 = *(result + 72);
  v74[0] = *(result + 56);
  v74[1] = v4;
  v75[0] = *(result + 88);
  v5 = (result + 72);
  v6 = result + 84;
  v7 = result + 88;
  v8 = (result + 104);
  *(v75 + 9) = *(result + 97);
  v9 = (result + 56);
  v10 = (result + 72);
  v11 = result + 84;
  v12 = (result + 104);
  while (1)
  {
    v13 = *v12;
    if (*v11)
    {
      v14 = *v10;
      if ((v14[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v13)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v74);
    }

    v10 = (v13 + 16);
    v11 = (v13 + 28);
    v12 = (v13 + 48);
    v9 = v13;
  }

  v15 = *v9;
  if (!v15)
  {
    goto LABEL_72;
  }

  result = (v15 + 24 * *v14);
  v16 = *(*result + 112);
  if (!v16)
  {
    goto LABEL_70;
  }

  if (*(v16 + 24) == -1)
  {
    v30 = v3[1];
    v71 = *v3;
    v72 = v30;
    v73[0] = v3[2];
    v19 = v1 + 100;
    v22 = *(v1 + 29);
    v17 = 8 * v22;
    *(v73 + 9) = *(v3 + 41);
    v31 = v3;
    v32 = v7;
    v33 = v1 + 100;
    v34 = v8;
    while (1)
    {
      v35 = *v34;
      if (v22 < *v33)
      {
        v36 = *v32 + v17;
        if ((*(v36 + 4) & 1) == 0)
        {
          break;
        }
      }

      if (!v35)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v22, 0, &v71);
      }

      v32 = (v35 + 32);
      v33 = (v35 + 44);
      v34 = (v35 + 48);
      v31 = v35;
    }
  }

  else
  {
    v17 = *v1;
    v18 = v1[48];
    v19 = *(v1 + 22);
    v20 = v3[2];
    v72 = v3[1];
    v73[0] = v20;
    *(v73 + 9) = *(v3 + 41);
    v21 = v1 + 100;
    v22 = *(v1 + 29);
    v2 = v8;
    v23 = v7;
    v24 = v3;
    v71 = *v3;
    while (1)
    {
      v25 = *v2;
      if (v22 < *v21)
      {
        v26 = (*v23 + 8 * v22);
        if ((v26[1] & 1) == 0)
        {
          break;
        }
      }

      if (!v25)
      {
        specialized error #1 <A>() in EvolutionTable.address(of:in:)(v22, 0, &v71);
      }

      v23 = (v25 + 32);
      v21 = (v25 + 44);
      v2 = (v25 + 48);
      v24 = v25;
    }

    v31 = *v24;
    if (!*v24)
    {
      goto LABEL_74;
    }

    v36 = *v26;
    result = &v31[3 * v36];
    if (!v18)
    {
      if (v17 >= *(v19 + 29))
      {
        __break(1u);
      }

      else
      {
        v27 = *(v19 + 13);
        if (!v27)
        {
LABEL_71:
          __break(1u);
LABEL_72:
          __break(1u);
LABEL_73:
          __break(1u);
LABEL_74:
          __break(1u);
LABEL_75:
          __break(1u);
          goto LABEL_76;
        }

        v28 = *(*result + 32);
        v29 = *(*(v27 + 8 * v17) + 8);
        if (v28 >= *(v29 + 16))
        {
          *(v29 + 24) = v28;
          if (v1[48])
          {
            return result;
          }

          goto LABEL_48;
        }
      }

      __break(1u);
      goto LABEL_69;
    }

    __break(1u);
  }

  v37 = *v31;
  if (!v37)
  {
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    __break(1u);
LABEL_80:
    __break(1u);
    return result;
  }

  result = (v37 + 24 * *v36);
  v38 = *(*result + 32);
  v39 = v3[1];
  v70[0] = *v3;
  v70[1] = v39;
  v70[2] = v3[2];
  *(v2 + 105) = *(v3 + 41);
  v40 = v3;
  v41 = v5;
  v42 = v6;
  v43 = v8;
  while (1)
  {
    v44 = *v43;
    if (*v42)
    {
      v45 = *v41;
      if ((v45[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v44)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v70);
    }

    v41 = (v44 + 16);
    v42 = (v44 + 28);
    v43 = (v44 + 48);
    v40 = v44;
  }

  v46 = *v40;
  if (!v46)
  {
LABEL_76:
    __break(1u);
    goto LABEL_77;
  }

  result = (v46 + 24 * *v45);
  v47 = *(*result + 112);
  if (!v47)
  {
    goto LABEL_73;
  }

  if (v38 < *(v47 + 16))
  {
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  *(v47 + 24) = v38;
  v48 = v3[1];
  v69[0] = *v3;
  v69[1] = v48;
  v69[2] = v3[2];
  *(v2 + 41) = *(v3 + 41);
  v49 = v3;
  v50 = v7;
  v51 = v8;
  while (1)
  {
    v52 = *v51;
    if (v22 < *v19)
    {
      v53 = (*v50 + v17);
      if ((v53[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v52)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v22, 0, v69);
    }

    v50 = v52 + 4;
    v19 = v52 + 44;
    v51 = (v52 + 6);
    v49 = v52;
  }

  v54 = *v49;
  if (!v54)
  {
    goto LABEL_78;
  }

  result = (v54 + 24 * *v53);
  *(*result + 40) = 0;
  if (v1[48])
  {
    return result;
  }

LABEL_48:
  if (v1[1] << 8 != 1024)
  {
    return result;
  }

  v55 = v3[1];
  v67[0] = *v3;
  v67[1] = v55;
  v68[0] = v3[2];
  *(v68 + 9) = *(v3 + 41);
  v56 = v3;
  v57 = v8;
  while (1)
  {
    v58 = *v57;
    if (*v6)
    {
      if (((*v5)[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v58)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v67);
    }

    v5 = (v58 + 16);
    v6 = (v58 + 28);
    v57 = (v58 + 48);
    v56 = v58;
  }

  if (!*v56)
  {
    goto LABEL_79;
  }

  result = (*v56 + 24 * **v5);
  v59 = *(*result + 112);
  if (!v59)
  {
    goto LABEL_75;
  }

  v60 = *(v59 + 24);
  v61 = v3[1];
  v65[0] = *v3;
  v65[1] = v61;
  v66[0] = v3[2];
  *(v66 + 9) = *(v3 + 41);
  v62 = v1 + 100;
  while (1)
  {
    v63 = *v8;
    if (v22 < *v62)
    {
      v64 = (*v7 + 8 * v22);
      if ((v64[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v63)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(v22, 0, v65);
    }

    v7 = (v63 + 32);
    v62 = (v63 + 44);
    v8 = (v63 + 48);
    v3 = v63;
  }

  if (!*v3)
  {
    goto LABEL_80;
  }

  result = (*v3 + 24 * *v64);
  if (v60 == *(*result + 32))
  {
    return Interpreter.Iterator.endInflight(_:)(&type metadata for Event.Ignorable);
  }

  return result;
}

uint64_t specialized ChangelistGroup.timeline.getter(uint64_t a1)
{
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for DispatchQoS();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  result = swift_beginAccess();
  v11 = *(a1 + 24);
  if (!*(v11 + 116))
  {
    __break(1u);
    goto LABEL_7;
  }

  v12 = *(v11 + 104);
  if (!v12)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  v13 = *v12;
  if ((*(*v12 + 4) & 1) == 0)
  {
    os_unfair_lock_lock_with_options();
    *(v13 + 4) = 1;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v22 = v3;
    v21 = static OS_dispatch_queue.main.getter();
    v14 = swift_allocObject();
    *(v14 + 16) = v13;
    aBlock[4] = closure #1 in Atomic.subscript.readspecialized partial apply;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    aBlock[3] = &block_descriptor_925;
    v20 = _Block_copy(aBlock);

    static DispatchQoS.unspecified.getter();
    aBlock[0] = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    v19 = v6;
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v16 = v20;
    v15 = v21;
    MEMORY[0x26D69D2D0](0, v9, v5, v20);
    _Block_release(v16);

    (*(v22 + 8))(v5, v2);
    (*(v7 + 8))(v9, v19);
  }

  v17 = *(v13 + 8);

  return v17;
}

uint64_t specialized T_EndSubgraphUpdate.model(within:)(uint64_t result)
{
  v1 = (result + 56);
  v2 = *(result + 72);
  v12[0] = *(result + 56);
  v12[1] = v2;
  v13[0] = *(result + 88);
  *(v13 + 9) = *(result + 97);
  v3 = (result + 72);
  v4 = (result + 84);
  v5 = (result + 104);
  while (1)
  {
    v6 = *v5;
    if (*v4)
    {
      v7 = *v3;
      if ((v7[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v6)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v12);
    }

    v3 = (v6 + 16);
    v4 = (v6 + 28);
    v5 = (v6 + 48);
    v1 = v6;
  }

  v8 = *v1;
  if (!v8)
  {
    goto LABEL_13;
  }

  result = v8 + 24 * *v7;
  v9 = *(*result + 112);
  if (!v9)
  {
    __break(1u);
LABEL_13:
    __break(1u);
    return result;
  }

  v10 = *(v9 + 32);
  v11 = v10[1] - 1;
  v10[1] = v11;
  if (!v11)
  {
    ++*v10;
  }

  return result;
}

uint64_t specialized T_BeginSubgraphUpdate.model(within:)(uint64_t result)
{
  v1 = (result + 56);
  v2 = *(result + 72);
  v10[0] = *(result + 56);
  v10[1] = v2;
  v11[0] = *(result + 88);
  *(v11 + 9) = *(result + 97);
  v3 = (result + 72);
  v4 = (result + 84);
  v5 = (result + 104);
  while (1)
  {
    v6 = *v5;
    if (*v4)
    {
      v7 = *v3;
      if ((v7[1] & 1) == 0)
      {
        break;
      }
    }

    if (!v6)
    {
      specialized error #1 <A>() in EvolutionTable.address(of:in:)(0, 1, v10);
    }

    v3 = (v6 + 16);
    v4 = (v6 + 28);
    v5 = (v6 + 48);
    v1 = v6;
  }

  v8 = *v1;
  if (v8)
  {
    result = v8 + 24 * *v7;
    v9 = *(*result + 112);
    if (v9)
    {
      ++*(*(v9 + 32) + 4);
      return result;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized DepthMap.subscript.setter(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 16);
  MEMORY[0x28223BE20](a1);
  (*(v8 + 16))(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), v9, v6);
  v11 = a1;
  v12 = a2 & 1;
  type metadata accessor for Dictionary();
  return Dictionary.subscript.setter();
}

uint64_t sub_26C243834()
{
  if (*(v0 + 24))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t partial apply for closure #2 in PType.forEachLinearizedField<A>(within:userData:_:revisitor:)(uint64_t result, uint64_t a2)
{
  v3 = *(v2 + 24);
  if (v3)
  {
    return v3(result, a2 & 0xFFFFFFFF00000001);
  }

  return result;
}

uint64_t partial apply for closure #1 in PType.forEachLinearizedField(atOffset:within:do:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  return partial apply for closure #1 in PType.forEachLinearizedField(atOffset:within:do:)(a1, a2, a3, a4, a5, a6, a7);
}

{
  if (*(v7 + 16) == a5)
  {
    (*(v7 + 24))(a1, a2 & 0xFFFFFFFF00000001, a3, a4, a7, a6);
  }

  return 1;
}

unint64_t lazy protocol witness table accessor for type LazyMapSequence<[UInt32], String> and conformance <> LazyMapSequence<A, B>()
{
  result = lazy protocol witness table cache variable for type LazyMapSequence<[UInt32], String> and conformance <> LazyMapSequence<A, B>;
  if (!lazy protocol witness table cache variable for type LazyMapSequence<[UInt32], String> and conformance <> LazyMapSequence<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss15LazyMapSequenceVySays6UInt32VGSSGMd, &_ss15LazyMapSequenceVySays6UInt32VGSSGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [UInt32] and conformance [A], &_sSays6UInt32VGMd, &_sSays6UInt32VGMR, MEMORY[0x277D83958]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LazyMapSequence<[UInt32], String> and conformance <> LazyMapSequence<A, B>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type LazyMapSequence<[PType.Parameter], String> and conformance <> LazyMapSequence<A, B>()
{
  result = lazy protocol witness table cache variable for type LazyMapSequence<[PType.Parameter], String> and conformance <> LazyMapSequence<A, B>;
  if (!lazy protocol witness table cache variable for type LazyMapSequence<[PType.Parameter], String> and conformance <> LazyMapSequence<A, B>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss15LazyMapSequenceVySay21SwiftUITracingSupport5PTypeV9ParameterVGSSGMd, &_ss15LazyMapSequenceVySay21SwiftUITracingSupport5PTypeV9ParameterVGSSGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [PType.Parameter] and conformance [A], &_sSay21SwiftUITracingSupport5PTypeV9ParameterVGMd, &_sSay21SwiftUITracingSupport5PTypeV9ParameterVGMR, MEMORY[0x277D83958]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LazyMapSequence<[PType.Parameter], String> and conformance <> LazyMapSequence<A, B>);
  }

  return result;
}

uint64_t outlined copy of PType.IsA(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 2 >= 2)
  {
    if (a5 != 1)
    {
      return v6;
    }
  }
}

uint64_t outlined consume of PType.IsA(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unsigned __int8 a5)
{
  if (a5 - 2 >= 2)
  {
    if (a5 != 1)
    {
      return v6;
    }
  }
}

uint64_t sub_26C243BD8()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t specialized PType.Kind.init(metadataKind:)(uint64_t result)
{
  if ((result - 1) >= 8)
  {
    return 0;
  }

  else
  {
    return result;
  }
}

void *specialized Subforest2.descendants(of:where:)(uint64_t a1, __int16 a2, uint64_t *a3, uint64_t a4)
{
  v4 = *a3;
  if ((a2 & 0x100) != 0)
  {
    v10 = 0;
LABEL_8:
    v11 = MEMORY[0x277D84F90];
    v42 = MEMORY[0x277D84F90];
    specialized Array.append<A>(contentsOf:)(*(*v4 + v10 + 24), *(*v4 + v10 + 32), specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized Sequence._copyContents(initializing:));
    v12 = v42;
    v13 = v42[2];
    if (v13)
    {
      v40 = MEMORY[0x277D84F90];
      while (1)
      {
        swift_bridgeObjectRetain_n();
        v14 = 0;
        v15 = 0;
        do
        {
          while (1)
          {
            if (v15 >= *(v12 + 2))
            {
              __break(1u);
              goto LABEL_47;
            }

            v16 = v15 + 1;
            v17 = *(v4 + 16) + 40 * *(*v4 + 48 * *&v12[4 * v15 + 32]);
            if ((Changelist.filter(id:)(*v17, *(v17 + 8)) & 1) == 0)
            {
              break;
            }

            v14 = 1;
            if (v13 - 1 == v15)
            {

              v40 = v12;
              goto LABEL_36;
            }

            ++v15;
          }

          ++v15;
        }

        while (v13 != v16);
        swift_bridgeObjectRelease_n();
        if (v14)
        {
          break;
        }

        if (swift_isUniquelyReferenced_nonNull_native())
        {
          v18 = *(v12 + 2);
          v19 = v12;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v19 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 1, v12);
          }

          if (v18)
          {
            v20 = v19[2] - v18;
            memmove(v19 + 4, v19 + 4 * v18 + 32, 4 * v20);
            v19[2] = v20;
          }
        }

        else if (*(v12 + 3) >= 2uLL)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC10ChangelistC2IdOAC10Subforest2V4ItemVGGMd, &_ss23_ContiguousArrayStorageCy21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AC10ChangelistC2IdOAC10Subforest2V4ItemVGGMR);
          v19 = swift_allocObject();
          v21 = _swift_stdlib_malloc_size(v19);
          v22 = v21 - 32;
          if (v21 < 32)
          {
            v22 = v21 - 29;
          }

          v19[2] = 0;
          v19[3] = 2 * (v22 >> 2);
        }

        else
        {

          v19 = MEMORY[0x277D84F90];
        }

        v23 = *(v12 + 2);
        if (!v23)
        {

          v12 = v19;
          v13 = v19[2];
          if (v13)
          {
            continue;
          }

          goto LABEL_36;
        }

        v24 = 32;
        do
        {
          v25 = *v4 + 48 * *&v12[v24];
          specialized Array.append<A>(contentsOf:)(*(v25 + 24), *(v25 + 32), specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized Sequence._copyContents(initializing:));
          v24 += 4;
          --v23;
        }

        while (v23);

        v12 = v19;
        v13 = v19[2];
        if (!v13)
        {
LABEL_36:
          v11 = MEMORY[0x277D84F90];
          goto LABEL_37;
        }
      }

      v26 = v12;
      v11 = MEMORY[0x277D84F90];
      v27 = *(v12 + 2);
      if (v27)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v40 = v11;
LABEL_37:

      v26 = v40;
      v27 = *(v40 + 2);
      if (v27)
      {
LABEL_38:
        v41 = v26;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27, 0);
        v28 = v41;
        v29 = v11;
        v30 = *(v11 + 2);
        v31 = 2 * v30;
        v32 = 32;
        do
        {
          v33 = *(v4 + 16) + 40 * *(*v4 + 48 * *&v28[v32]);
          v34 = *v33;
          v35 = *(v33 + 8);
          v36 = v29[3];
          v37 = v30 + 1;
          if (v30 >= v36 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v30 + 1, 1);
            v28 = v41;
          }

          v29[2] = v37;
          v38 = &v29[v31];
          v38[4] = v34;
          *(v38 + 40) = v35;
          v31 += 2;
          v32 += 4;
          v30 = v37;
          --v27;
        }

        while (v27);

        return v29;
      }
    }

    return MEMORY[0x277D84F90];
  }

  v5 = **(v4 + 32);
  if (!*(v5 + 16))
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2 & 1);
  if ((v7 & 1) == 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v8 = *(v4 + 16) + 40 * *(*(v5 + 56) + 4 * v6);
  if (!*(v8 + 36))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v9 = *(v8 + 24);
  if (v9)
  {
    v10 = 48 * *v9;
    goto LABEL_8;
  }

LABEL_50:

  __break(1u);
  return result;
}

unint64_t specialized ChangelistGroup.open.getter(uint64_t a1, char a2, uint64_t a3)
{

  swift_beginAccess();
  v6 = *(a3 + 136);

  v7 = **(v6 + 32);
  v8 = *(v7 + 16);
  if (!v8)
  {
    return v8 & 1;
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2 & 1);
  if ((v10 & 1) == 0 || (v11 = *(v6 + 16) + 40 * *(*(v7 + 56) + 4 * result), !*(v11 + 36)))
  {
    LOBYTE(v8) = 0;
    return v8 & 1;
  }

  v8 = *(v11 + 24);
  if (v8)
  {
    LOBYTE(v8) = *(*v6 + 48 * *v8 + 18);
    return v8 & 1;
  }

  __break(1u);
  return result;
}

uint64_t specialized Changelist.init(within:current:relationship:unabstractedUpdates:unabstractedTrees:_:_:local:)(uint64_t a1, unint64_t a2, int a3, unint64_t a4, char *a5, __int128 *a6, _OWORD *a7)
{
  v243 = a7;
  v240 = a6;
  v235 = a5;
  v239 = type metadata accessor for DispatchWorkItemFlags();
  v244 = *(v239 - 8);
  MEMORY[0x28223BE20](v239);
  v238 = &v220 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v237 = type metadata accessor for DispatchQoS();
  v242 = *(v237 - 8);
  MEMORY[0x28223BE20](v237);
  v236 = &v220 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x277D84F90];
  v16.f64[0] = NAN;
  v16.f64[1] = NAN;
  *(v7 + 48) = vnegq_f64(v16);
  v17 = (v7 + 48);
  *(v7 + 64) = v15;
  v230 = (v7 + 64);
  *(v7 + 16) = v15;
  v18 = MEMORY[0x277D84F98];
  *(v7 + 72) = MEMORY[0x277D84F98];
  v19 = (v7 + 72);
  *(v7 + 80) = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA12AttributeRefV_SayAHGTt0g5Tf4g_n(v15);
  *(v7 + 88) = v20;
  *(v7 + 92) = v21;
  *(v7 + 96) = v18;
  v241 = v7 + 96;
  *(v7 + 104) = v18;
  *(v7 + 112) = v18;
  v232 = (v7 + 112);
  *(v7 + 120) = v15;
  *(v7 + 184) = 0;
  v233 = (v7 + 184);
  *(v7 + 192) = 256;
  *(v7 + 194) = 0;
  LOBYTE(v252) = 0;
  LOBYTE(v269) = 0;
  LOBYTE(v268[0]) = 0;
  _s21SwiftUITracingSupport10UnsafeTreeVA2A0dE13_SuppliesRootRzrlE4rootACyxq_Gq__tcfCAA10ChangelistC2IdO_AA10Subforest2V4ItemVTt0B5(0, v277);
  v227 = v7;
  *(v7 + 24) = a1;
  v22 = v7 + 24;
  v23 = v277[1];
  *(v22 + 112) = v277[0];
  *(v22 + 128) = v23;
  *(v22 + 144) = v278;
  *(v22 + 152) = 0;
  LODWORD(v234) = a2;
  *(v22 + 156) = a2;
  v231 = (v22 + 156);
  v24 = v235;
  *(v22 + 8) = a4;
  *(v22 + 16) = v24;
  swift_beginAccess();
  *v17 = v240;
  swift_beginAccess();
  *(v22 + 32) = v243;
  LOBYTE(v252) = 0;
  LOBYTE(v269) = 0;
  LOBYTE(v268[0]) = 0;
  _s21SwiftUITracingSupport10UnsafeTreeVA2A0dE13_SuppliesRootRzrlE4rootACyxq_Gq__tcfCAA10ChangelistC2IdO_AA10Subforest2V4ItemVTt0B5(0, v279);
  swift_beginAccess();
  v25 = v279[1];
  *(v22 + 112) = v279[0];
  *(v22 + 128) = v25;
  *(v22 + 144) = v280;
  *(v22 + 152) = 0;
  LODWORD(v235) = a3;
  *(v22 + 104) = a3;
  v240 = v19;
  *v19 = v18;

  swift_beginAccess();
  v243 = v22;
  if (!*(*v22 + 116))
  {
    goto LABEL_168;
  }

  v26 = *(*v22 + 104);
  if (!v26)
  {
    goto LABEL_190;
  }

  v27 = *v26;
  if ((*(*v26 + 4) & 1) == 0)
  {
    os_unfair_lock_lock_with_options();
    *(v27 + 4) = 1;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v28 = static OS_dispatch_queue.main.getter();
    v29 = swift_allocObject();
    *(v29 + 16) = v27;
    *&v254 = closure #1 in Atomic.subscript.readspecialized partial apply;
    *(&v254 + 1) = v29;
    *&v252 = MEMORY[0x277D85DD0];
    *(&v252 + 1) = 1107296256;
    *&v253 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    *(&v253 + 1) = &block_descriptor_1014;
    v30 = _Block_copy(&v252);

    a2 = v236;
    static DispatchQoS.unspecified.getter();
    *&v252 = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    v31 = v238;
    v32 = v239;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v22 = v28;
    MEMORY[0x26D69D2D0](0, a2, v31, v30);
    _Block_release(v30);

    (*(v244 + 8))(v31, v32);
    (*(v242 + 8))(a2, v237);
  }

  v33 = *(v27 + 8);
  a4 = v230;
  v34 = v241;
  if (*(v33 + 44) <= v234)
  {
    goto LABEL_169;
  }

  v35 = *(v33 + 32);
  if (!v35)
  {
    goto LABEL_191;
  }

  v36 = (v35 + (v234 << 7));
  v37 = v36[5];
  v273 = v36[4];
  v274 = v37;
  v38 = v36[7];
  v275 = v36[6];
  v276 = v38;
  v39 = v36[1];
  v269 = *v36;
  v270 = v39;
  v40 = v36[3];
  v271 = v36[2];
  v272 = v40;
  if (!*(*v243 + 116))
  {
    goto LABEL_170;
  }

  v41 = *(*v243 + 104);
  if (!v41)
  {
    goto LABEL_192;
  }

  v42 = *v41;
  if ((*(*v41 + 4) & 1) == 0)
  {
    os_unfair_lock_lock_with_options();
    *(v42 + 4) = 1;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v234 = static OS_dispatch_queue.main.getter();
    v43 = swift_allocObject();
    *(v43 + 16) = v42;
    *&v254 = closure #1 in Atomic.subscript.readspecialized partial apply;
    *(&v254 + 1) = v43;
    *&v252 = MEMORY[0x277D85DD0];
    *(&v252 + 1) = 1107296256;
    *&v253 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    *(&v253 + 1) = &block_descriptor_1021;
    v44 = _Block_copy(&v252);

    v45 = v236;
    static DispatchQoS.unspecified.getter();
    *&v252 = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    v46 = v238;
    v47 = v239;
    a4 = v230;
    v34 = v241;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v48 = v234;
    MEMORY[0x26D69D2D0](0, v45, v46, v44);
    _Block_release(v44);

    (*(v244 + 8))(v46, v47);
    (*(v242 + 8))(v45, v237);
  }

  v49 = v240;
  Event.related(_:within:limit:collectedInto:clear:includeSelf:)(v235 | 0x2000, *(v42 + 8), 0x7FFFFFFFFFFFFFFFLL, v240, 1, 1);
  *v34 = *v49;

  a2 = 0;
  v51 = _sSTsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF21SwiftUITracingSupport8DepthMapVyAF8EventRefVG_AJs5NeverOTg504_s21de121Support10ChangelistC6within7current12relationship19unabstractedUpdates0H5Trees__5localACSpyAA11InterpreterC7StorageVG_AA8iJ76VAA0N0V12RelationshipVShyAPGShyAA04TreeO0VGS2iSbtcfcA2P3key_Si5valuet_tXEfU_Tf1cn_n(v50);

  *&v252 = v51;

  specialized MutableCollection<>.sort(by:)(&v252);

  v52 = _s21SwiftUITracingSupport11UnsafeArrayVyACyxGqd__c7ElementQyd__RszSTRd__lufCAA12AttributeRefV_SayAHGTt0g5Tf4g_n(v252);
  v54 = v53;

  v22 = v227;
  *(v227 + 80) = v52;
  *(v22 + 88) = v54;
  Changelist.resolve(_:)(v34);
  v55 = *(v22 + 24);
  if (!*(v55 + 116))
  {
    goto LABEL_171;
  }

  v220 = 0;
  v56 = *(v55 + 104);
  if (!v56)
  {
    goto LABEL_193;
  }

  v57 = *v56;
  if ((*(*v56 + 4) & 1) == 0)
  {
    os_unfair_lock_lock_with_options();
    *(v57 + 4) = 1;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
    v240 = static OS_dispatch_queue.main.getter();
    v58 = swift_allocObject();
    *(v58 + 16) = v57;
    *&v254 = closure #1 in Atomic.subscript.readspecialized partial apply;
    *(&v254 + 1) = v58;
    *&v252 = MEMORY[0x277D85DD0];
    *(&v252 + 1) = 1107296256;
    *&v253 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
    *(&v253 + 1) = &block_descriptor_1028;
    v59 = _Block_copy(&v252);

    v60 = v236;
    static DispatchQoS.unspecified.getter();
    *&v252 = MEMORY[0x277D84F90];
    _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
    v62 = v238;
    v61 = v239;
    v34 = v241;
    dispatch thunk of SetAlgebra.init<A>(_:)();
    v63 = v240;
    MEMORY[0x26D69D2D0](0, v60, v62, v59);
    _Block_release(v59);

    (*(v244 + 8))(v62, v61);
    v64 = v60;
    a4 = v230;
    (*(v242 + 8))(v64, v237);
  }

  v265[0] = *(v57 + 8);
  v66 = (*v34 + 64);
  v65 = *v66;
  v228 = *v34;
  v229 = v66;
  v22 = 1 << *(v228 + 32);
  v67 = -1;
  if (v22 < 64)
  {
    v67 = ~(-1 << v22);
  }

  a2 = v67 & v65;

  swift_beginAccess();
  swift_beginAccess();
  v68 = 0;
  v69 = (v22 + 63) >> 6;
  v240 = &v253;
  v233 = (v242 + 8);
  v234 = (v244 + 8);
  v8 = 1107296256;
  v241 = v69;
  v70 = v229;
  if (a2)
  {
    goto LABEL_21;
  }

LABEL_22:
  while (2)
  {
    while (2)
    {
      v71 = v68 + 1;
      if (__OFADD__(v68, 1))
      {
LABEL_152:
        __break(1u);
LABEL_153:
        __break(1u);
LABEL_154:
        __break(1u);
LABEL_155:
        __break(1u);
LABEL_156:
        __break(1u);
LABEL_157:
        __break(1u);
LABEL_158:
        __break(1u);
LABEL_159:
        __break(1u);
LABEL_160:
        __break(1u);
LABEL_161:
        __break(1u);
        goto LABEL_162;
      }

      if (v71 >= v69)
      {
        goto LABEL_85;
      }

      a2 = v70[v71];
      ++v68;
      if (!a2)
      {
        continue;
      }

      break;
    }

LABEL_25:
    if (!*(*v243 + 116))
    {
      goto LABEL_155;
    }

    v72 = *(*v243 + 104);
    if (!v72)
    {
      goto LABEL_180;
    }

    v73 = __clz(__rbit64(a2)) | (v71 << 6);
    v74 = *(*(v228 + 48) + 4 * v73);
    v235 = *(*(v228 + 56) + 8 * v73);
    v75 = *v72;
    v76 = *(*v72 + 4);
    v244 = v74;
    if ((v76 & 1) == 0)
    {
      os_unfair_lock_lock_with_options();
      *(v75 + 4) = 1;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      v242 = static OS_dispatch_queue.main.getter();
      v77 = swift_allocObject();
      *(v77 + 16) = v75;
      *&v254 = closure #1 in Atomic.subscript.readspecialized partial apply;
      *(&v254 + 1) = v77;
      *&v252 = MEMORY[0x277D85DD0];
      *(&v252 + 1) = 1107296256;
      *&v253 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      *(&v253 + 1) = &block_descriptor_1035;
      v78 = _Block_copy(&v252);

      v79 = v236;
      static DispatchQoS.unspecified.getter();
      *&v252 = MEMORY[0x277D84F90];
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
      a4 = v238;
      v80 = v239;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v22 = v242;
      MEMORY[0x26D69D2D0](0, v79, a4, v78);
      _Block_release(v78);

      v74 = v244;
      (*v234)(a4, v80);
      v81 = v79;
      v69 = v241;
      (*v233)(v81, v237);
    }

    v82 = *(v75 + 8);
    if (v74 >= *(v82 + 44))
    {
      goto LABEL_156;
    }

    v83 = *(v82 + 32);
    if (!v83)
    {
      goto LABEL_181;
    }

    v84 = (v83 + (v74 << 7));
    v85 = v84[5];
    v268[4] = v84[4];
    v268[5] = v85;
    v86 = v84[7];
    v268[6] = v84[6];
    v268[7] = v86;
    v87 = v84[1];
    v268[0] = *v84;
    v268[1] = v87;
    v88 = v84[3];
    v268[2] = v84[2];
    v268[3] = v88;
    if (!*(*v243 + 116))
    {
      goto LABEL_157;
    }

    v89 = *(*v243 + 104);
    if (!v89)
    {
      goto LABEL_182;
    }

    v90 = *v89;
    if ((*(*v89 + 4) & 1) == 0)
    {
      os_unfair_lock_lock_with_options();
      *(v90 + 4) = 1;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      v242 = static OS_dispatch_queue.main.getter();
      v91 = swift_allocObject();
      *(v91 + 16) = v90;
      *&v254 = closure #1 in Atomic.subscript.readspecialized partial apply;
      *(&v254 + 1) = v91;
      *&v252 = MEMORY[0x277D85DD0];
      *(&v252 + 1) = 1107296256;
      *&v253 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      *(&v253 + 1) = &block_descriptor_1042;
      v92 = _Block_copy(&v252);

      v93 = v236;
      static DispatchQoS.unspecified.getter();
      *&v252 = MEMORY[0x277D84F90];
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
      a4 = v238;
      v94 = v239;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v95 = v242;
      MEMORY[0x26D69D2D0](0, v93, a4, v92);
      _Block_release(v92);

      v74 = v244;
      (*v234)(a4, v94);
      v96 = v93;
      v69 = v241;
      (*v233)(v96, v237);
    }

    v22 = v268;
    v97 = Event.hasTree(within:)(*(v90 + 8));
    v99 = v98;
    if (v98)
    {
      v242 = 1;
    }

    else
    {
      if (!*(*v243 + 116))
      {
        goto LABEL_163;
      }

      v100 = *(*v243 + 104);
      if (!v100)
      {
        goto LABEL_188;
      }

      v101 = *v100;
      if ((*(*v100 + 4) & 1) == 0)
      {
        v242 = v97;
        os_unfair_lock_lock_with_options();
        *(v101 + 4) = 1;
        type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
        v226 = static OS_dispatch_queue.main.getter();
        v102 = swift_allocObject();
        *(v102 + 16) = v101;
        *&v254 = closure #1 in Atomic.subscript.readspecialized partial apply;
        *(&v254 + 1) = v102;
        *&v252 = MEMORY[0x277D85DD0];
        *(&v252 + 1) = 1107296256;
        *&v253 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        *(&v253 + 1) = &block_descriptor_1063;
        v225 = _Block_copy(&v252);

        v103 = v236;
        static DispatchQoS.unspecified.getter();
        *&v252 = MEMORY[0x277D84F90];
        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
        v104 = v238;
        a4 = v239;
        dispatch thunk of SetAlgebra.init<A>(_:)();
        v105 = v225;
        v22 = v226;
        MEMORY[0x26D69D2D0](0, v103, v104, v225);
        _Block_release(v105);

        v106 = v104;
        v69 = v241;
        v74 = v244;
        (*v234)(v106, a4);
        (*v233)(v103, v237);
        v97 = v242;
      }

      v107 = *(v101 + 8);
      if (HIDWORD(v97) >= *(v107 + 124))
      {
        goto LABEL_164;
      }

      v108 = *(v107 + 112);
      if (!v108)
      {
        goto LABEL_189;
      }

      if ((v97 & 0x80000000) != 0)
      {
        goto LABEL_165;
      }

      v109 = *(v108 + 168 * HIDWORD(v97));
      if (v97 >= *(v109 + 16))
      {
        goto LABEL_166;
      }

      v110 = (v109 + 208 * v97);
      v261 = v110[11];
      v262 = v110[12];
      v263 = v110[13];
      v264 = v110[14];
      v257 = v110[7];
      v258 = v110[8];
      v259 = v110[9];
      v260 = v110[10];
      v253 = v110[3];
      v254 = v110[4];
      v255 = v110[5];
      v256 = v110[6];
      v252 = v110[2];
      v22 = &v252;
      v242 = Tree.resolvedSelf(within:)(v265);
    }

    if (*v231 == v74)
    {
      v111 = v227;
      *(v227 + 184) = v242;
      *(v111 + 192) = v99 & 1;
      *(v111 + 193) = 0;
    }

    if (!*(*v243 + 116))
    {
      goto LABEL_158;
    }

    v112 = *(*v243 + 104);
    if (!v112)
    {
      goto LABEL_183;
    }

    v113 = *v112;
    if ((*(*v112 + 4) & 1) == 0)
    {
      os_unfair_lock_lock_with_options();
      *(v113 + 4) = 1;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      v226 = static OS_dispatch_queue.main.getter();
      v114 = swift_allocObject();
      *(v114 + 16) = v113;
      *&v254 = closure #1 in Atomic.subscript.readspecialized partial apply;
      *(&v254 + 1) = v114;
      *&v252 = MEMORY[0x277D85DD0];
      *(&v252 + 1) = 1107296256;
      *&v253 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      *(&v253 + 1) = &block_descriptor_1049;
      v225 = _Block_copy(&v252);

      a4 = v236;
      static DispatchQoS.unspecified.getter();
      *&v252 = MEMORY[0x277D84F90];
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
      v116 = v238;
      v115 = v239;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v117 = v225;
      v22 = v226;
      MEMORY[0x26D69D2D0](0, a4, v116, v225);
      _Block_release(v117);

      v118 = v115;
      v69 = v241;
      (*v234)(v116, v118);
      v74 = v244;
      (*v233)(a4, v237);
    }

    v119 = *(v113 + 8);
    if (v74 >= *(v119 + 44))
    {
      goto LABEL_159;
    }

    v120 = *(v119 + 32);
    if (!v120)
    {
      goto LABEL_184;
    }

    if (!*(*v243 + 116))
    {
      goto LABEL_160;
    }

    v121 = *(*v243 + 104);
    if (!v121)
    {
      goto LABEL_185;
    }

    v122 = v120 + (v74 << 7);
    v123 = *(v122 + 8);
    v124 = *(v122 + 24);
    v125 = *(v122 + 32);
    a4 = *(v122 + 112);
    v126 = *(v122 + 124);
    v127 = *v121;
    if ((*(*v121 + 4) & 1) == 0)
    {
      v225 = *(v122 + 8);
      v226 = v126;
      v223 = v125;
      v224 = v124;
      os_unfair_lock_lock_with_options();
      *(v127 + 4) = 1;
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
      v222 = static OS_dispatch_queue.main.getter();
      v128 = swift_allocObject();
      *(v128 + 16) = v127;
      *&v254 = closure #1 in Atomic.subscript.readspecialized partial apply;
      *(&v254 + 1) = v128;
      *&v252 = MEMORY[0x277D85DD0];
      *(&v252 + 1) = 1107296256;
      *&v253 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
      *(&v253 + 1) = &block_descriptor_1056;
      v221 = _Block_copy(&v252);

      v129 = v236;
      static DispatchQoS.unspecified.getter();
      *&v252 = MEMORY[0x277D84F90];
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
      lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
      v130 = v238;
      v131 = v239;
      dispatch thunk of SetAlgebra.init<A>(_:)();
      v132 = v221;
      v22 = v222;
      MEMORY[0x26D69D2D0](0, v129, v130, v221);
      _Block_release(v132);

      v133 = v131;
      v69 = v241;
      (*v234)(v130, v133);
      (*v233)(v129, v237);
      v125 = v223;
      LOBYTE(v124) = v224;
      v123 = v225;
      v126 = v226;
    }

    if (!v125)
    {
      goto LABEL_161;
    }

    if (v124)
    {
      goto LABEL_186;
    }

    if (!v123)
    {
      goto LABEL_187;
    }

    a2 &= a2 - 1;
    if (*v123 != &type metadata for Event.AttributeValue)
    {
LABEL_62:
      v134 = v232;
      swift_beginAccess();
      v135 = *v134;
      if (*(v135 + 16))
      {
        v136 = specialized __RawDictionaryStorage.find<A>(_:)(v242, v99 & 1);
        if (v137)
        {
          v22 = *(*(v135 + 56) + 8 * v136);
          swift_endAccess();
          a4 = v230;
          swift_beginAccess();
          v138 = *a4;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *a4 = v138;
          if (isUniquelyReferenced_nonNull_native)
          {
            if ((v22 & 0x8000000000000000) == 0)
            {
              goto LABEL_66;
            }
          }

          else
          {
            v138 = specialized _ArrayBuffer._consumeAndCreateNew()(v138);
            *a4 = v138;
            if ((v22 & 0x8000000000000000) == 0)
            {
LABEL_66:
              if (v22 < *(v138 + 2))
              {
                v22 = &v138[40 * v22 + 56];
LABEL_20:
                specialized DepthMap.insert(_:at:)(v244, v235);
                *a4 = v138;
                swift_endAccess();
                v68 = v71;
                v70 = v229;
                if (!a2)
                {
                  continue;
                }

                goto LABEL_21;
              }

              goto LABEL_167;
            }
          }

          __break(1u);
LABEL_85:

          v244 = swift_slowAlloc();
          *v244 = MEMORY[0x277D84F98];
          swift_beginAccess();
          v22 = *a4;
          v226 = *(*a4 + 16);
          if (!v226)
          {
LABEL_140:
            swift_endAccess();
            v213 = v243;
            *(v249 + 9) = *(v243 + 137);
            v214 = v243[8];
            v248 = v243[7];
            v249[0] = v214;
            v245[0] = v248;
            v245[1] = v214;
            v246 = *&v249[1];
            v247 = BYTE8(v249[1]);
            v215 = v227;

            Subforest2.init(within:old:)(v216, v245, &v250);
            v217 = v251[0];
            v213[7] = v250;
            v213[8] = v217;
            *(v213 + 137) = *(v251 + 9);
            specialized UnsafeTree.deallocate()(&_sSDy21SwiftUITracingSupport10ChangelistC2IdOAA10UnsafeTreeV6SymbolV3RefVyAeA10Subforest2V4ItemV__GGMd, &_sSDy21SwiftUITracingSupport10ChangelistC2IdOAA10UnsafeTreeV6SymbolV3RefVyAeA10Subforest2V4ItemV__GGMR, &_sSDySi21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AA10ChangelistC2IdOAA10Subforest2V4ItemVGGMd, &_sSDySi21SwiftUITracingSupport17UnsafeTreeNodeRefV5TypedVy_AA10ChangelistC2IdOAA10Subforest2V4ItemVGGMR);
            Changelist.rebuildDisplayOrder()();
            v218 = v244;
            outlined destroy of [UInt64 : (name: SubgraphID, reference: SubgraphRef)](v244, &_sSDy21SwiftUITracingSupport5EventV2IdVSiGMd, &_sSDy21SwiftUITracingSupport5EventV2IdVSiGMR);
            MEMORY[0x26D69EAB0](v218, -1, -1);
            return v215;
          }

          v154 = swift_isUniquelyReferenced_nonNull_native();
          *a4 = v22;
          if (v154)
          {
            goto LABEL_87;
          }

          goto LABEL_172;
        }
      }

      swift_endAccess();
      a4 = v230;
      swift_beginAccess();
      v140 = *a4;
      v141 = swift_isUniquelyReferenced_nonNull_native();
      *a4 = v140;
      if ((v141 & 1) == 0)
      {
        v140 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v140 + 2) + 1, 1, v140);
        *a4 = v140;
      }

      v143 = *(v140 + 2);
      v142 = *(v140 + 3);
      if (v143 >= v142 >> 1)
      {
        v140 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v142 > 1), v143 + 1, 1, v140);
      }

      *(v140 + 2) = v143 + 1;
      v144 = &v140[40 * v143];
      v145 = v242;
      *(v144 + 4) = v242;
      v146 = v99 & 1;
      v144[40] = v99 & 1;
      v147 = v227;
      *(v144 + 6) = v227;
      v148 = MEMORY[0x277D84F98];
      *(v144 + 7) = MEMORY[0x277D84F98];
      *(v144 + 8) = v148;
      *(v147 + 64) = v140;
      swift_endAccess();
      swift_beginAccess();
      v149 = swift_isUniquelyReferenced_nonNull_native();
      *&v250 = *(v147 + 112);
      *(v147 + 112) = 0x8000000000000000;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v143, v145, v146, v149);
      *(v147 + 112) = v250;
      swift_endAccess();
      v138 = *(v147 + 64);
      v22 = *(v138 + 2);
      if (!v22)
      {
        goto LABEL_195;
      }

      swift_beginAccess();
      v150 = swift_isUniquelyReferenced_nonNull_native();
      *a4 = v138;
      if ((v150 & 1) == 0)
      {
        v138 = specialized _ArrayBuffer._consumeAndCreateNew()(v138);
        *a4 = v138;
      }

      if (v22 <= *(v138 + 2))
      {
        v22 = &v138[40 * v22 + 16];
        goto LABEL_20;
      }

LABEL_162:
      __break(1u);
LABEL_163:
      __break(1u);
LABEL_164:
      __break(1u);
LABEL_165:
      __break(1u);
LABEL_166:
      __break(1u);
LABEL_167:
      __break(1u);
LABEL_168:
      __break(1u);
LABEL_169:
      __break(1u);
LABEL_170:
      __break(1u);
LABEL_171:
      __break(1u);
LABEL_172:
      v22 = specialized _ArrayBuffer._consumeAndCreateNew()(v22);
LABEL_87:
      v155 = 0;
      v231 = v251;
      while (1)
      {
        *a4 = v22;
        if (v155 >= *(v22 + 16))
        {
          goto LABEL_154;
        }

        v156 = (v155 + 1);
        v157 = v22 + 40 * v155;
        v158 = *(v157 + 48);
        v22 = *(v157 + 56);
        v228 = v157;
        v229 = v156;
        v159 = v22 + 64;
        v160 = 1 << *(v22 + 32);
        v161 = v160 < 64 ? ~(-1 << v160) : -1;
        v162 = v161 & *(v22 + 64);
        v163 = (v160 + 63) >> 6;

        v164 = 0;
        v235 = MEMORY[0x277D84F90];
        while (v162)
        {
LABEL_100:
          v166 = __clz(__rbit64(v162)) | (v164 << 6);
          a4 = *(*(v22 + 48) + 4 * v166);
          v167 = *(*(v22 + 56) + 8 * v166);

          swift_beginAccess();
          v168 = *(v158 + 48);
          v169 = __OFSUB__(0, v168);
          v170 = -v168;
          if (v169)
          {
            goto LABEL_153;
          }

          v162 &= v162 - 1;
          if (v167 < v170)
          {
          }

          else
          {
            swift_beginAccess();
            a2 = v22;
            v171 = *(v158 + 56);

            v172 = v171 < v167;
            v22 = a2;
            if (!v172)
            {
              if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
              {
                v235 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v235 + 2) + 1, 1, v235);
              }

              v174 = *(v235 + 2);
              v173 = *(v235 + 3);
              a2 = v174 + 1;
              if (v174 >= v173 >> 1)
              {
                v235 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v173 > 1), v174 + 1, 1, v235);
              }

              v175 = v235;
              *(v235 + 2) = a2;
              *&v175[4 * v174 + 32] = a4;
            }
          }
        }

        while (1)
        {
          v165 = v164 + 1;
          if (__OFADD__(v164, 1))
          {
            __break(1u);
LABEL_142:
            __break(1u);
LABEL_143:
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
            __break(1u);
LABEL_147:
            __break(1u);
LABEL_148:
            __break(1u);
LABEL_149:
            __break(1u);
LABEL_150:
            __break(1u);
LABEL_151:
            __break(1u);
            goto LABEL_152;
          }

          if (v165 >= v163)
          {
            break;
          }

          v162 = *(v159 + 8 * v165);
          ++v164;
          if (v162)
          {
            v164 = v165;
            goto LABEL_100;
          }
        }

        v176 = v235;
        v177 = *(v235 + 2);
        if (v177)
        {
          break;
        }

LABEL_138:

        v211 = *v244;
        *(v228 + 64) = *v244;

        if (*(v211 + 16))
        {
          v212 = swift_isUniquelyReferenced_nonNull_native();
          *&v250 = v211;
          a2 = v244;
          *v244 = 0x8000000000000000;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy21SwiftUITracingSupport5EventV2IdVSiGMd, &_ss17_NativeDictionaryVy21SwiftUITracingSupport5EventV2IdVSiGMR);
          _NativeDictionary.removeAll(isUnique:)(v212);
          *a2 = v250;
        }

        a4 = v230;
        v22 = *v230;
        v155 = v229;
        if (v229 == v226)
        {
          goto LABEL_140;
        }
      }

      a4 = 0;
      v242 = (v235 + 32);
      v232 = v177;
      while (1)
      {
        if (a4 >= *(v176 + 2))
        {
          goto LABEL_142;
        }

        if (!*(*v243 + 116))
        {
          goto LABEL_143;
        }

        v178 = *(*v243 + 104);
        if (!v178)
        {
          __break(1u);
LABEL_174:
          __break(1u);
LABEL_175:
          __break(1u);
LABEL_176:
          __break(1u);
LABEL_177:
          __break(1u);
LABEL_178:
          __break(1u);
          goto LABEL_179;
        }

        v179 = *(v242 + 4 * a4);
        v180 = *v178;
        if ((*(*v178 + 4) & 1) == 0)
        {
          v241 = *(v242 + 4 * a4);
          os_unfair_lock_lock_with_options();
          *(v180 + 4) = 1;
          type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, 0x277D85C78);
          v240 = static OS_dispatch_queue.main.getter();
          v181 = swift_allocObject();
          *(v181 + 16) = v180;
          *&v251[1] = closure #1 in Atomic.subscript.readspecialized partial apply;
          *(&v251[1] + 1) = v181;
          *&v250 = MEMORY[0x277D85DD0];
          *(&v250 + 1) = v8;
          *&v251[0] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
          *(&v251[0] + 1) = &block_descriptor_1070;
          v182 = _Block_copy(&v250);

          v183 = v236;
          static DispatchQoS.unspecified.getter();
          *&v250 = MEMORY[0x277D84F90];
          _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
          lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR, MEMORY[0x277D83970]);
          a2 = v238;
          v184 = v239;
          dispatch thunk of SetAlgebra.init<A>(_:)();
          v22 = v240;
          MEMORY[0x26D69D2D0](0, v183, a2, v182);
          _Block_release(v182);

          v177 = v232;
          v185 = v184;
          v176 = v235;
          (*v234)(a2, v185);
          (*v233)(v183, v237);
          v179 = v241;
        }

        v186 = *(v180 + 8);
        if (v179 >= *(v186 + 44))
        {
          goto LABEL_144;
        }

        v187 = *(v186 + 32);
        if (!v187)
        {
          goto LABEL_174;
        }

        v188 = (v187 + (v179 << 7));
        v252 = *v188;
        v253 = v188[1];
        v254 = v188[2];
        v256 = v188[4];
        v257 = v188[5];
        v258 = v188[6];
        v259 = v188[7];
        v255 = v188[3];
        v189 = v254;
        if (!v254)
        {
          goto LABEL_145;
        }

        if (BYTE8(v253))
        {
          goto LABEL_177;
        }

        v190 = *(&v252 + 1);
        if (!*(&v252 + 1))
        {
          goto LABEL_176;
        }

        v191 = v253;
        v22 = **(&v252 + 1);
        v192 = swift_conformsToProtocol2();
        if (!v192)
        {
          goto LABEL_175;
        }

        v193 = v192;
        v194 = specialized HeterogeneousBuffer.stride<A>(of:)(v22);
        if (v194 < 0)
        {
          goto LABEL_146;
        }

        if (HIDWORD(v194))
        {
          goto LABEL_147;
        }

        if (v189 == 1)
        {
          goto LABEL_148;
        }

        if (v191 - v190 < v194)
        {
          goto LABEL_149;
        }

        v195 = *(v190 + v194);
        v196 = swift_conformsToProtocol2();
        if (!v196)
        {
          goto LABEL_178;
        }

        project #1 <A, B>(_:_:) in Event.id.getter(v195, &v252, v22, v193, v196, v266);
        a2 = v244;
        v22 = *v244;
        v197 = swift_isUniquelyReferenced_nonNull_native();
        *&v250 = v22;
        *a2 = 0x8000000000000000;
        v198 = specialized __RawDictionaryStorage.find<A>(_:)(v266);
        v200 = *(v22 + 16);
        v201 = (v199 & 1) == 0;
        v169 = __OFADD__(v200, v201);
        v202 = v200 + v201;
        if (v169)
        {
          goto LABEL_150;
        }

        v203 = v199;
        if (*(v22 + 24) < v202)
        {
          break;
        }

        if (v197)
        {
          goto LABEL_133;
        }

        v22 = &v250;
        v210 = v198;
        specialized _NativeDictionary.copy()();
        v198 = v210;
        v205 = v250;
        if (v203)
        {
LABEL_110:
          *(v205[7] + 8 * v198) = a4;
          goto LABEL_111;
        }

LABEL_134:
        v205[(v198 >> 6) + 8] |= 1 << v198;
        v206 = v205[6] + 40 * v198;
        v207 = v266[1];
        *v206 = v266[0];
        *(v206 + 16) = v207;
        *(v206 + 32) = v267;
        *(v205[7] + 8 * v198) = a4;
        v208 = v205[2];
        v169 = __OFADD__(v208, 1);
        v209 = v208 + 1;
        if (v169)
        {
          goto LABEL_151;
        }

        v205[2] = v209;
LABEL_111:
        ++a4;
        *v244 = v205;

        if (v177 == a4)
        {
          goto LABEL_138;
        }
      }

      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v202, v197);
      v22 = v250;
      v198 = specialized __RawDictionaryStorage.find<A>(_:)(v266);
      if ((v203 & 1) != (v204 & 1))
      {
        goto LABEL_194;
      }

LABEL_133:
      v205 = v250;
      if (v203)
      {
        goto LABEL_110;
      }

      goto LABEL_134;
    }

    break;
  }

  v151 = v126 + 1;
  v152 = a4;
  while (1)
  {
    if (!--v151)
    {
      goto LABEL_62;
    }

    if (!a4)
    {
      break;
    }

    v153 = *v152;
    v152 += 4;
    if ((v153 & 0x8002) == 2)
    {
      v68 = v71;
      a4 = v230;
      v70 = v229;
      if (!a2)
      {
        goto LABEL_22;
      }

LABEL_21:
      v71 = v68;
      goto LABEL_25;
    }
  }

LABEL_179:
  __break(1u);
LABEL_180:
  __break(1u);
LABEL_181:
  __break(1u);
LABEL_182:
  __break(1u);
LABEL_183:
  __break(1u);
LABEL_184:
  __break(1u);
LABEL_185:
  __break(1u);
LABEL_186:
  __break(1u);
LABEL_187:
  __break(1u);
LABEL_188:
  __break(1u);
LABEL_189:
  __break(1u);
LABEL_190:
  __break(1u);
LABEL_191:
  __break(1u);
LABEL_192:
  __break(1u);
LABEL_193:
  __break(1u);
LABEL_194:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_195:
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);

  __break(1u);
  return result;
}

uint64_t partial apply for specialized closure #1 in static IterativeTreeTraversal<>.run(visitor:revisitor:start:revisitLeaf:)(int *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + 16);
  v6 = *a1;
  return v4(&v6, a3);
}

unint64_t specialized ChangelistGroup.discreet.getter(uint64_t a1, char a2, uint64_t a3)
{

  swift_beginAccess();
  v6 = *(a3 + 136);

  v7 = **(v6 + 32);
  v8 = *(v7 + 16);
  if (!v8)
  {
    return v8 & 1;
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2 & 1);
  if ((v10 & 1) == 0 || (v11 = *(v6 + 16) + 40 * *(*(v7 + 56) + 4 * result), !*(v11 + 36)))
  {
    LOBYTE(v8) = 0;
    return v8 & 1;
  }

  v8 = *(v11 + 24);
  if (v8)
  {
    LOBYTE(v8) = *(*v6 + 48 * *v8 + 20);
    return v8 & 1;
  }

  __break(1u);
  return result;
}

uint64_t specialized ChangelistGroup.children.getter(uint64_t a1, char a2, uint64_t a3)
{

  swift_beginAccess();
  v6 = *(a3 + 136);

  v7 = **(v6 + 32);
  if (!*(v7 + 16))
  {
    return MEMORY[0x277D84F90];
  }

  result = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2 & 1);
  if ((v9 & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  v10 = *(v6 + 16) + 40 * *(*(v7 + 56) + 4 * result);
  if (!*(v10 + 36))
  {
    return MEMORY[0x277D84F90];
  }

  v11 = *(v10 + 24);
  if (v11)
  {
    v12 = *v6 + 48 * *v11;
    v13 = *(v12 + 36);
    v14 = MEMORY[0x277D84F90];
    if (v13)
    {
      v15 = *(v12 + 24);
      v25 = MEMORY[0x277D84F90];
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v13, 0);
      v14 = v25;
      v16 = v15;
      while (v15)
      {
        v17 = *v16;

        swift_beginAccess();
        v18 = *(a3 + 136);

        v19 = v18[2] + 40 * *(*v18 + 48 * v17);
        v20 = *v19;
        v21 = *(v19 + 8);
        v23 = *(v25 + 16);
        v22 = *(v25 + 24);
        if (v23 >= v22 >> 1)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1);
        }

        *(v25 + 16) = v23 + 1;
        v24 = v25 + 16 * v23;
        *(v24 + 32) = v20;
        *(v24 + 40) = v21;
        ++v16;
        if (!--v13)
        {
          return v14;
        }
      }

      __break(1u);
      goto LABEL_15;
    }

    return v14;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t specialized Event.subscript.setter(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  MEMORY[0x28223BE20](a1);
  v34 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v9);
  v14 = &v34 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v34 - v15;
  v17 = *(v5 + 16);
  v35 = a1;
  v17(&v34 - v15, a1, a2);
  (*(v5 + 56))(v16, 0, 1, a2);
  v18 = *(v2 + 8);
  v19 = *(v2 + 16);
  v20 = v2 + 8;
  v21 = *(v20 + 17);
  v23 = *(v20 + 20);
  v22 = *(v20 + 24);
  LOBYTE(v36) = *(v20 + 16);
  v24 = v21 == 0;
  v25 = 256;
  if (v24)
  {
    v25 = 0;
  }

  v26 = HeterogeneousBuffer.findValuePointerAs<A>(_:)(a2, v18, v19, v25 | (v23 << 32) | v36, v22, a2);
  v27 = *(v8 + 16);
  v28 = (v5 + 48);
  if (v26)
  {
    v29 = v26;
    v27(v14, v16, v7);
    if ((*v28)(v14, 1, a2) != 1)
    {
      (*(v5 + 40))(v29, v14, a2);
      (*(v5 + 8))(v35, a2);
      return (*(v8 + 8))(v16, v7);
    }

    __break(1u);
  }

  else
  {
    v30 = v34;
    v27(v11, v16, v7);
    if ((*v28)(v11, 1, a2) != 1)
    {
      (*(v5 + 32))(v30, v11, a2);
      HeterogeneousBuffer.insert<A>(_:)(v30, a2);
      v31 = *(v5 + 8);
      v31(v35, a2);
      v31(v30, a2);
      return (*(v8 + 8))(v16, v7);
    }
  }

  (*(v8 + 8))(v11, v7);
  v36 = 0;
  v37 = 0xE000000000000000;
  _StringGuts.grow(_:)(114);
  MEMORY[0x26D69CDB0](0xD000000000000038, 0x800000026C33C090);
  v33 = _typeName(_:qualified:)();
  MEMORY[0x26D69CDB0](v33);

  MEMORY[0x26D69CDB0](0xD000000000000038, 0x800000026C33C0D0);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in Attribute.forEachField<A>(within:userData:_:revisitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  LOBYTE(v9[0]) = a5 & 1;
  v6 = *(v5 + 24);
  v7 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v7;
  v10 = *(a2 + 32);
  return v6(a1, v9, a3, a4, a5 & 0xFFFFFFFF00000001) & 1;
}

uint64_t sub_26C246BC8()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_26C246C58()
{

  if (*(v0 + 40))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t specialized static Event_Noun.id(for:verb:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *a5 = a3;
  *(a5 + 8) = a4;
  *(a5 + 16) = result;
  *(a5 + 24) = a2;
  *(a5 + 32) = 0;
  return result;
}

uint64_t outlined assign with take of Event_Noun?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport10Event_Noun_pSgMd, &_s21SwiftUITracingSupport10Event_Noun_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t specialized static Event.each(_:of:do:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a1;
  v20[1] = *MEMORY[0x277D85DE8];
  v6 = *(a2 + 124);
  if (v6 > 0x100)
  {
LABEL_25:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
    if (!isStackAllocationSafe)
    {
      v19 = swift_slowAlloc();
      closure #1 in static Event.each(_:of:do:)(v19, v6, a2, v5, a3);

      JUMPOUT(0x26D69EAB0);
    }

    MEMORY[0x28223BE20](isStackAllocationSafe);
    v8 = v20 - v18;
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    v8 = v20 - v7;
    if (!v6)
    {
      return a3();
    }
  }

  v9 = 0;
  v10 = 0;
  v11 = *(a2 + 112);
  do
  {
    v12 = (v11 + 4 + 8 * v9);
    while (1)
    {
      if (v9 >= v6)
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      if (!v11)
      {
        goto LABEL_31;
      }

      v13 = v9 + 1;
      if (__OFADD__(v9, 1))
      {
        goto LABEL_24;
      }

      v14 = *(v12 - 2);
      if (((v5 & 0xC000) == 0 || (v14 & (v5 & 0xFFFFC000 ^ 0xFFFFC000)) == 0) && ((v5 & 0x2000) == 0 || (v14 & 0x2000) != 0))
      {
        if ((v5 & 0x1FFF) == 0)
        {
          if (v5)
          {
            break;
          }

          goto LABEL_6;
        }

        if ((v5 & 0x1FFF & v14) != 0)
        {
          break;
        }
      }

LABEL_6:
      v12 += 2;
      ++v9;
      if (v13 == v6)
      {
        v15 = v10;
        goto LABEL_20;
      }
    }

    v15 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
    }

    *&v8[4 * v10] = *v12;
    ++v9;
    ++v10;
  }

  while (v13 != v6);
LABEL_20:
  if (v15 < 0)
  {
    __break(1u);
  }

  return a3();
}

uint64_t _s21SwiftUITracingSupport16BufferAttachmentV7pointer8fileSizeACyxGSW_SitcfCSo23T_DynamicPropertyChangea_Tt1g5Tf4nd_n(uint64_t a1, uint64_t a2)
{
  type metadata accessor for String.Encoding();
  result = MEMORY[0x28223BE20](a1);
  if (a1)
  {
    if (a2 - result >= -3)
    {
      if (((a2 - result) & 3) == 0)
      {
        return result;
      }

      goto LABEL_7;
    }

    __break(1u);
  }

  __break(1u);
LABEL_7:
  v5 = result;
  _StringGuts.grow(_:)(80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport16BufferAttachmentVySo23T_DynamicPropertyChangeaGMd, &_s21SwiftUITracingSupport16BufferAttachmentVySo23T_DynamicPropertyChangeaGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport16BufferAttachmentVySo23T_DynamicPropertyChangeaGmMd, &_s21SwiftUITracingSupport16BufferAttachmentVySo23T_DynamicPropertyChangeaGmMR);
  v6 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v6);

  MEMORY[0x26D69CDB0](0x657A697320666F20, 0xE900000000000020);
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v7);

  MEMORY[0x26D69CDB0](0xD000000000000033, 0x800000026C33C2A0);
  MEMORY[0x26D69CDB0](0xD000000000000017, 0x800000026C33C310);
  MEMORY[0x26D69CDB0](0x657A697320666F20, 0xE900000000000020);
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v8);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  specialized Collection.prefix(_:)(40, v5, a2);
  static String.Encoding.utf8.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
  lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance Slice<A>, &_ss5SliceVySWGMd, &_ss5SliceVySWGMR, MEMORY[0x277D84B58]);
  v9 = String.init<A>(bytes:encoding:)();
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  MEMORY[0x26D69CDB0](v9, v11);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t partial apply for closure #1 in PType.linearizedField(offset:nested:within:)(uint64_t result, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5)
{
  v6 = v5[2];
  v7 = *v6;
  if (*v6 == v5[3])
  {
    v8 = v5[4];
    *v8 = result;
    *(v8 + 8) = a2 & 0xFFFFFFFF00000001;
    *(v8 + 16) = a3;
    *(v8 + 24) = a4;
    *(v8 + 32) = a5;
    *(v8 + 40) = 0;
    v7 = *v6;
  }

  v9 = __OFADD__(v7, 1);
  v10 = v7 + 1;
  if (v9)
  {
    __break(1u);
  }

  else
  {
    *v6 = v10;
  }

  return result;
}

uint64_t _s21SwiftUITracingSupport16BufferAttachmentV7pointer8fileSizeACyxGSW_SitcfCAA7AddressV_Tt1g5Tf4nd_n(uint64_t a1, uint64_t a2)
{
  type metadata accessor for String.Encoding();
  result = MEMORY[0x28223BE20](a1);
  if (a1)
  {
    if (a2 - result >= -7)
    {
      if (((a2 - result) & 7) == 0)
      {
        return result;
      }

      goto LABEL_7;
    }

    __break(1u);
  }

  __break(1u);
LABEL_7:
  v5 = result;
  _StringGuts.grow(_:)(80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport16BufferAttachmentVyAA7AddressVGMd, &_s21SwiftUITracingSupport16BufferAttachmentVyAA7AddressVGMR);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SwiftUITracingSupport16BufferAttachmentVyAA7AddressVGmMd, &_s21SwiftUITracingSupport16BufferAttachmentVyAA7AddressVGmMR);
  v6 = String.init<A>(describing:)();
  MEMORY[0x26D69CDB0](v6);

  MEMORY[0x26D69CDB0](0x657A697320666F20, 0xE900000000000020);
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v7);

  MEMORY[0x26D69CDB0](0xD000000000000033, 0x800000026C33C2A0);
  MEMORY[0x26D69CDB0](0x73736572646441, 0xE700000000000000);
  MEMORY[0x26D69CDB0](0x657A697320666F20, 0xE900000000000020);
  v8 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x26D69CDB0](v8);

  MEMORY[0x26D69CDB0](32, 0xE100000000000000);
  specialized Collection.prefix(_:)(40, v5, a2);
  static String.Encoding.utf8.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SliceVySWGMd, &_ss5SliceVySWGMR);
  lazy protocol witness table accessor for type FloatingPointFormatStyle<Double> and conformance FloatingPointFormatStyle<A>(&lazy protocol witness table cache variable for type Slice<UnsafeRawBufferPointer> and conformance Slice<A>, &_ss5SliceVySWGMd, &_ss5SliceVySWGMR, MEMORY[0x277D84B58]);
  v9 = String.init<A>(bytes:encoding:)();
  if (v10)
  {
    v11 = v10;
  }

  else
  {
    v9 = 0;
    v11 = 0xE000000000000000;
  }

  MEMORY[0x26D69CDB0](v9, v11);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized static Allocation.mut(_:observing:within:)(uint64_t result, unsigned int a2, unsigned __int8 *a3)
{
  if (a3[48])
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v3 = *(a3 + 22);
  v4 = *a3;
  if (v4 >= *(v3 + 116))
  {
    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  v5 = *(v3 + 104);
  if (!v5)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v6 = *(*(v5 + 8 * v4) + 8);
  if (*(v6 + 44) <= a2)
  {
    goto LABEL_19;
  }

  v7 = *(v6 + 32);
  if (!v7)
  {
LABEL_25:
    __break(1u);
    return result;
  }

  v8 = result;
  result = v7 + (a2 << 7);
  if (*(result + 48) == 1)
  {
    v9 = *(v8 + 124) + 1;
    v10 = *(v8 + 112);
    while (--v9)
    {
      if (!*(v8 + 112))
      {
        goto LABEL_20;
      }

      v11 = v10 + 4;
      v12 = *v10 & 0x8080;
      v10 += 4;
      if (v12 == 128)
      {
        v13 = *(result + 124) + 1;
        v14 = *(result + 112);
        while (--v13)
        {
          if (!*(result + 112))
          {
            goto LABEL_22;
          }

          v15 = v14 + 4;
          v16 = *v14 & 0x8004;
          v14 += 4;
          if (v16 == 4)
          {
            if (*(v15 - 1) != *(v11 - 1))
            {
              return 0;
            }

            Event.hide(_:within:)(result, a3);
            return 1;
          }
        }

        goto LABEL_21;
      }
    }
  }

  return 0;
}

unint64_t lazy protocol witness table accessor for type SubgraphRef and conformance SubgraphRef()
{
  result = lazy protocol witness table cache variable for type SubgraphRef and conformance SubgraphRef;
  if (!lazy protocol witness table cache variable for type SubgraphRef and conformance SubgraphRef)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SubgraphRef and conformance SubgraphRef);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SubgraphRef and conformance SubgraphRef;
  if (!lazy protocol witness table cache variable for type SubgraphRef and conformance SubgraphRef)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SubgraphRef and conformance SubgraphRef);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SubgraphRef and conformance SubgraphRef;
  if (!lazy protocol witness table cache variable for type SubgraphRef and conformance SubgraphRef)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SubgraphRef and conformance SubgraphRef);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SubgraphRef and conformance SubgraphRef;
  if (!lazy protocol witness table cache variable for type SubgraphRef and conformance SubgraphRef)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SubgraphRef and conformance SubgraphRef);
  }

  return result;
}