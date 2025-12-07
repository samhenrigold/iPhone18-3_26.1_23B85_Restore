Swift::Int specialized _NativeDictionary._delete(at:)(Swift::Int result, uint64_t a2)
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
      result = Hasher._finalize()();
      v9 = result & v7;
      if (v3 >= v8)
      {
        if (v9 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v9 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v9)
      {
LABEL_10:
        v10 = *(a2 + 48);
        v11 = (v10 + v3);
        v12 = (v10 + v6);
        if (v3 != v6 || v11 >= v12 + 1)
        {
          *v11 = *v12;
        }

        v13 = *(a2 + 56);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v28 = a1;
  v9 = type metadata accessor for CAUVehicleTrait();
  v10 = *(v9 - 8);
  __chkstk_darwin(v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *v4;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
  v16 = v13[2];
  v17 = (v14 & 1) == 0;
  v18 = v16 + v17;
  if (__OFADD__(v16, v17))
  {
    __break(1u);
    goto LABEL_15;
  }

  v19 = v14;
  v20 = v13[3];
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      specialized _NativeDictionary.copy()();
      goto LABEL_9;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a4 & 1);
    v21 = specialized __RawDictionaryStorage.find<A>(_:)(a3);
    if ((v19 & 1) == (v22 & 1))
    {
      v15 = v21;
      goto LABEL_9;
    }

LABEL_15:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_9:
  v23 = v28;
  v24 = *v5;
  if (v19)
  {
    v25 = (v24[7] + 16 * v15);
    *v25 = v28;
    v25[1] = a2;
  }

  else
  {
    (*(v10 + 16))(v12, a3, v9);
    return specialized _NativeDictionary._insert(at:key:value:)(v15, v12, v23, a2, v24);
  }
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, char a2)
{
  v3 = v2;
  v6 = *v2;
  result = specialized __RawDictionaryStorage.find<A>(_:)();
  v9 = *(v6 + 16);
  v10 = (v8 & 1) == 0;
  v11 = __OFADD__(v9, v10);
  v12 = v9 + v10;
  if (v11)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v13 = v8;
  v14 = *(v6 + 24);
  if (v14 >= v12 && (a2 & 1) != 0)
  {
LABEL_8:
    v17 = *v3;
    if (v13)
    {
      *(*(v17 + 56) + 8 * result) = a1;

      return _objc_release_x1();
    }

    *(v17 + 8 * (result >> 6) + 64) |= 1 << result;
    *(*(v17 + 56) + 8 * result) = a1;
    v18 = *(v17 + 16);
    v11 = __OFADD__(v18, 1);
    v19 = v18 + 1;
    if (!v11)
    {
      *(v17 + 16) = v19;
      return result;
    }

    goto LABEL_15;
  }

  if (v14 >= v12 && (a2 & 1) == 0)
  {
    v15 = result;
    specialized _NativeDictionary.copy()();
    result = v15;
    goto LABEL_8;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v12, a2 & 1);
  result = specialized __RawDictionaryStorage.find<A>(_:)();
  if ((v13 & 1) == (v16 & 1))
  {
    goto LABEL_8;
  }

LABEL_16:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return _objc_release_x1();
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v10 = a5[6];
  v11 = type metadata accessor for CAUVehicleTrait();
  result = (*(*(v11 - 8) + 32))(v10 + *(*(v11 - 8) + 72) * a1, a2, v11);
  v13 = (a5[7] + 16 * a1);
  *v13 = a3;
  v13[1] = a4;
  v14 = a5[2];
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v16;
  }

  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = type metadata accessor for CAUVehicleTrait();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type CAUVehicleTrait and conformance CAUVehicleTrait, &type metadata accessor for CAUVehicleTrait, &protocol conformance descriptor for CAUVehicleTrait);
      v15 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    do
    {
      outlined init with copy of AnyHashable(*(v2 + 48) + 40 * v4, v8);
      v6 = static AnyHashable.== infix(_:_:)();
      outlined destroy of AnyHashable(v8);
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

char *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v35 = type metadata accessor for CAUVehicleTrait();
  v37 = *(v35 - 8);
  __chkstk_darwin(v35);
  v34 = &v29 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy13CarAssetUtils15CAUVehicleTraitOSSGMd, &_ss18_DictionaryStorageCy13CarAssetUtils15CAUVehicleTraitOSSGMR);
  v3 = *v0;
  v4 = static _DictionaryStorage.copy(original:)();
  v5 = v4;
  if (*(v3 + 16))
  {
    result = (v4 + 64);
    v7 = (v3 + 64);
    v8 = ((1 << *(v5 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v3 + 64;
    if (v5 != v3 || result >= &v7[8 * v8])
    {
      result = memmove(result, v7, 8 * v8);
    }

    v9 = 0;
    v10 = *(v3 + 16);
    v36 = v5;
    *(v5 + 16) = v10;
    v11 = 1 << *(v3 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v3 + 64);
    v14 = (v11 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v33 = v3;
    if (v13)
    {
      do
      {
        v15 = __clz(__rbit64(v13));
        v38 = (v13 - 1) & v13;
LABEL_14:
        v18 = v15 | (v9 << 6);
        v19 = v37;
        v20 = *(v37 + 72) * v18;
        v21 = v34;
        v22 = v35;
        (*(v37 + 16))(v34, *(v3 + 48) + v20, v35);
        v23 = 16 * v18;
        v24 = (*(v3 + 56) + 16 * v18);
        v25 = *v24;
        v26 = v24[1];
        v27 = v36;
        (*(v19 + 32))(*(v36 + 48) + v20, v21, v22);
        v28 = (*(v27 + 56) + v23);
        *v28 = v25;
        v28[1] = v26;
        v3 = v33;

        v13 = v38;
      }

      while (v38);
    }

    v16 = v9;
    while (1)
    {
      v9 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v1 = v29;
        v5 = v36;
        goto LABEL_18;
      }

      v17 = *(v30 + 8 * v9);
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v38 = (v17 - 1) & v17;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v5;
  }

  return result;
}

id specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy13caraccessoryd20CAFDAppLaunchManagerC11ApplicationOSo16RBSProcessHandleCGMd, &_ss18_DictionaryStorageCy13caraccessoryd20CAFDAppLaunchManagerC11ApplicationOSo16RBSProcessHandleCGMR);
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
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy13caraccessoryd20CAFDAppLaunchManagerC11ApplicationOShy10Foundation4UUIDVGGMd, &_ss18_DictionaryStorageCy13caraccessoryd20CAFDAppLaunchManagerC11ApplicationOShy10Foundation4UUIDVGGMR);
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
        *(*(v4 + 56) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 56) + 8 * (v14 | (v8 << 6)));
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

uint64_t specialized Set._Variant.remove(_:)(void *a1)
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
      v7 = specialized Set._Variant._migrateToNative(_:removing:)(v4, v5, &_ss11_SetStorageCy13caraccessoryd22CAFDAssetVariantsAgentC16_ConnectionProxy33_AD8EB03328B3296C924C05733247A05ALLCGMd, &_ss11_SetStorageCy13caraccessoryd22CAFDAssetVariantsAgentC16_ConnectionProxy33_AD8EB03328B3296C924C05733247A05ALLCGMR, type metadata accessor for CAFDAssetVariantsAgent._ConnectionProxy, type metadata accessor for CAFDAssetVariantsAgent._ConnectionProxy);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  type metadata accessor for CAFDAssetVariantsAgent._ConnectionProxy();
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
    specialized _NativeSet.copy()(&_ss11_SetStorageCy13caraccessoryd22CAFDAssetVariantsAgentC16_ConnectionProxy33_AD8EB03328B3296C924C05733247A05ALLCGMd, &_ss11_SetStorageCy13caraccessoryd22CAFDAssetVariantsAgentC16_ConnectionProxy33_AD8EB03328B3296C924C05733247A05ALLCGMR);
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  specialized _NativeSet._delete(at:)(v12);
  result = v18;
  *v9 = v19;
  return result;
}

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
      v7 = specialized Set._Variant._migrateToNative(_:removing:)(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for RBSAssertion, RBSAssertion_ptr);
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
    specialized _NativeSet.copy()(&_ss11_SetStorageCySo12RBSAssertionCGMd, &_ss11_SetStorageCySo12RBSAssertionCGMR);
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  specialized _NativeSet._delete(at:)(v12);
  result = v18;
  *v9 = v19;
  return result;
}

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
      v7 = specialized Set._Variant._migrateToNative(_:removing:)(v4, v5, &_ss11_SetStorageCy13caraccessoryd9CAFDAgentC20_CAFDConnectionProxyCGMd, &_ss11_SetStorageCy13caraccessoryd9CAFDAgentC20_CAFDConnectionProxyCGMR, type metadata accessor for CAFDAgent._CAFDConnectionProxy, type metadata accessor for CAFDAgent._CAFDConnectionProxy);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  type metadata accessor for CAFDAgent._CAFDConnectionProxy();
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
    specialized _NativeSet.copy()(&_ss11_SetStorageCy13caraccessoryd9CAFDAgentC20_CAFDConnectionProxyCGMd, &_ss11_SetStorageCy13caraccessoryd9CAFDAgentC20_CAFDConnectionProxyCGMR);
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  specialized _NativeSet._delete(at:)(v12);
  result = v18;
  *v9 = v19;
  return result;
}

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
      v7 = specialized Set._Variant._migrateToNative(_:removing:)(v4, v5, &_ss11_SetStorageCy13caraccessoryd19_CAFDSessionBoostedCGMd, &_ss11_SetStorageCy13caraccessoryd19_CAFDSessionBoostedCGMR, type metadata accessor for _CAFDSessionBoosted, type metadata accessor for _CAFDSessionBoosted);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  type metadata accessor for _CAFDSessionBoosted(0);
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
    specialized _NativeSet.copy()(&_ss11_SetStorageCy13caraccessoryd19_CAFDSessionBoostedCGMd, &_ss11_SetStorageCy13caraccessoryd19_CAFDSessionBoostedCGMR);
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  specialized _NativeSet._delete(at:)(v12);
  result = v18;
  *v9 = v19;
  return result;
}

uint64_t specialized Set._Variant.remove(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v2;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
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
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
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
      specialized _NativeSet.copy()();
      v23 = v32;
    }

    v6 = v27;
    a2 = v28;
    (*(v27 + 32))(v28, *(v23 + 48) + v18 * v13, v5);
    specialized _NativeSet._delete(at:)(v13);
    v20 = 0;
    *v21 = v32;
  }

  else
  {
    v20 = 1;
  }

  return (*(v6 + 56))(a2, v20, 1, v5);
}

uint64_t specialized Set._Variant._migrateToNative(_:removing:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = __CocoaSet.count.getter();
  v5 = swift_unknownObjectRetain();
  v6 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo12RBSAssertionC_Tt1g5(v5, v4);
  v16 = v6;
  v7 = *(v6 + 40);

  v8 = NSObject._rawHashValue(seed:)(v7);
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for RBSAssertion, RBSAssertion_ptr);
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
  specialized _NativeSet._delete(at:)(v10);
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

uint64_t specialized Set._Variant._migrateToNative(_:removing:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void), void (*a6)(void))
{
  v11 = v6;

  v12 = __CocoaSet.count.getter();
  v13 = swift_unknownObjectRetain();
  v14 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC13caraccessoryd22CAFDAssetVariantsAgentC16_ConnectionProxy33_AD8EB03328B3296C924C05733247A05ALLC_Tt1g5Tm(v13, v12, a3, a4, a5);
  v24 = v14;
  v15 = *(v14 + 40);

  v16 = NSObject._rawHashValue(seed:)(v15);
  v17 = -1 << *(v14 + 32);
  v18 = v16 & ~v17;
  if ((*(v14 + 56 + ((v18 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v18))
  {
    v19 = ~v17;
    a6(0);
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
  specialized _NativeSet._delete(at:)(v18);
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

void *specialized _NativeSet.copy()()
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
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd, &_ss11_SetStorageCy10Foundation4UUIDVGMR);
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

id specialized _NativeSet.copy()(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
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

Swift::Int specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
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

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for UUID();
  v3 = *(v33 - 8);
  __chkstk_darwin(v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd, &_ss11_SetStorageCy10Foundation4UUIDVGMR);
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
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
LABEL_15:
      v20 = *(v32 + 72);
      (*(v32 + 16))(v5, *(result + 48) + v20 * (v17 | (v9 << 6)), v33);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v15 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v15 + 8 * v23);
          if (v27 != -1)
          {
            v16 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v16 = __clz(__rbit64((-1 << v22) & ~*(v15 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v15 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      (*v29)(*(v7 + 48) + v16 * v20, v5, v33);
      ++*(v7 + 16);
      result = v30;
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v14)
      {

        v2 = v28;
        goto LABEL_26;
      }

      v19 = *(v10 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v13 = (v19 - 1) & v19;
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

Swift::Int specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
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

Swift::Int specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
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
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
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
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for UUID();
  v3 = *(v36 - 8);
  __chkstk_darwin(v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd, &_ss11_SetStorageCy10Foundation4UUIDVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
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
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
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

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
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

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

Swift::Int specialized _NativeSet.resize(capacity:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
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

uint64_t specialized _NativeSet._delete(at:)(int64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  result = __chkstk_darwin(v3);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *v1;
  v9 = *v1 + 56;
  v10 = -1 << *(*v1 + 32);
  v11 = (a1 + 1) & ~v10;
  if (((1 << v11) & *(v9 + 8 * (v11 >> 6))) != 0)
  {
    v12 = ~v10;

    v13 = _HashTable.previousHole(before:)();
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) != 0)
    {
      v14 = v12;
      v15 = (v13 + 1) & v12;
      v35 = *(v4 + 16);
      v36 = v4 + 16;
      v16 = *(v4 + 72);
      v33 = (v4 + 8);
      v34 = v9;
      v17 = v16;
      do
      {
        v18 = v17;
        v19 = v17 * v11;
        v35(v7, *(v8 + 48) + v17 * v11, v3);
        v20 = v8;
        v21 = v15;
        v22 = v14;
        v23 = v20;
        _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
        v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v33)(v7, v3);
        v25 = v24 & v22;
        v14 = v22;
        v15 = v21;
        if (a1 >= v21)
        {
          if (v25 >= v21 && a1 >= v25)
          {
LABEL_16:
            v8 = v23;
            v28 = *(v23 + 48);
            v17 = v18;
            v29 = v18 * a1;
            if (v18 * a1 < v19 || v28 + v18 * a1 >= (v28 + v19 + v18))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v11;
            }

            else
            {
              a1 = v11;
              if (v29 != v19)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v11;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v25 >= v21 || a1 >= v25)
        {
          goto LABEL_16;
        }

        v8 = v23;
        v17 = v18;
LABEL_5:
        v11 = (v11 + 1) & v14;
        v9 = v34;
      }

      while (((*(v34 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
    }

    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v30 = *(v8 + 16);
  v31 = __OFSUB__(v30, 1);
  v32 = v30 - 1;
  if (v31)
  {
    __break(1u);
  }

  else
  {
    *(v8 + 16) = v32;
    ++*(v8 + 36);
  }

  return result;
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

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo12RBSAssertionC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo12RBSAssertionCGMd, &_ss11_SetStorageCySo12RBSAssertionCGMR);
    v2 = static _SetStorage.convert(_:capacity:)();
    v15 = v2;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for RBSAssertion, RBSAssertion_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          specialized _NativeSet.resize(capacity:)(v9 + 1, &_ss11_SetStorageCySo12RBSAssertionCGMd, &_ss11_SetStorageCySo12RBSAssertionCGMR);
        }

        v2 = v15;
        result = NSObject._rawHashValue(seed:)(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC13caraccessoryd22CAFDAssetVariantsAgentC16_ConnectionProxy33_AD8EB03328B3296C924C05733247A05ALLC_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v8 = static _SetStorage.convert(_:capacity:)();
    v21 = v8;
    __CocoaSet.makeIterator()();
    if (__CocoaSet.Iterator.next()())
    {
      a5(0);
      do
      {
        swift_dynamicCast();
        v15 = *(v8 + 16);
        if (*(v8 + 24) <= v15)
        {
          specialized _NativeSet.resize(capacity:)(v15 + 1, a3, a4);
        }

        v8 = v21;
        result = NSObject._rawHashValue(seed:)(*(v21 + 40));
        v10 = v21 + 56;
        v11 = -1 << *(v21 + 32);
        v12 = result & ~v11;
        v13 = v12 >> 6;
        if (((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6))) != 0)
        {
          v14 = __clz(__rbit64((-1 << v12) & ~*(v21 + 56 + 8 * (v12 >> 6)))) | v12 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v16 = 0;
          v17 = (63 - v11) >> 6;
          do
          {
            if (++v13 == v17 && (v16 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v18 = v13 == v17;
            if (v13 == v17)
            {
              v13 = 0;
            }

            v16 |= v18;
            v19 = *(v10 + 8 * v13);
          }

          while (v19 == -1);
          v14 = __clz(__rbit64(~v19)) + (v13 << 6);
        }

        *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
        *(*(v21 + 48) + 8 * v14) = v20;
        ++*(v21 + 16);
      }

      while (__CocoaSet.Iterator.next()());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v8;
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

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, void *a2)
{
  return specialized Set._Variant.insert(_:)(a1, a2, type metadata accessor for CAFDAssetVariantsAgent._ConnectionProxy, &_ss11_SetStorageCy13caraccessoryd22CAFDAssetVariantsAgentC16_ConnectionProxy33_AD8EB03328B3296C924C05733247A05ALLCGMd, &_ss11_SetStorageCy13caraccessoryd22CAFDAssetVariantsAgentC16_ConnectionProxy33_AD8EB03328B3296C924C05733247A05ALLCGMR, type metadata accessor for CAFDAssetVariantsAgent._ConnectionProxy);
}

{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = __CocoaSet.member(for:)();

    if (v9)
    {

      type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for RBSAssertion, RBSAssertion_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfCSo12RBSAssertionC_Tt1g5(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      specialized _NativeSet.resize(capacity:)(v20 + 1, &_ss11_SetStorageCySo12RBSAssertionCGMd, &_ss11_SetStorageCySo12RBSAssertionCGMR);
    }

    v18 = v8;
    specialized _NativeSet._unsafeInsertNew(_:)(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for RBSAssertion, RBSAssertion_ptr);
  v11 = NSObject._rawHashValue(seed:)(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = static NSObject.== infix(_:_:)();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

{
  return specialized Set._Variant.insert(_:)(a1, a2, type metadata accessor for CAFDAgent._CAFDConnectionProxy, &_ss11_SetStorageCy13caraccessoryd9CAFDAgentC20_CAFDConnectionProxyCGMd, &_ss11_SetStorageCy13caraccessoryd9CAFDAgentC20_CAFDConnectionProxyCGMR, type metadata accessor for CAFDAgent._CAFDConnectionProxy);
}

{
  return specialized Set._Variant.insert(_:)(a1, a2, type metadata accessor for _CAFDSessionBoosted, &_ss11_SetStorageCy13caraccessoryd19_CAFDSessionBoostedCGMd, &_ss11_SetStorageCy13caraccessoryd19_CAFDSessionBoostedCGMR, type metadata accessor for _CAFDSessionBoosted);
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, char *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v33 = a2;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v31 = v10 + 56;
  v32 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v28 = v2;
    v29 = a1;
    v30 = ~v13;
    v27 = v7;
    v17 = *(v7 + 16);
    v16 = v7 + 16;
    v15 = v17;
    v18 = *(v16 + 56);
    v19 = (v16 - 8);
    v26[1] = v16 & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    while (1)
    {
      v20 = v15;
      v15(v9, *(v32 + 48) + v18 * v14, v6);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      v22 = *v19;
      (*v19)(v9, v6);
      if (v21)
      {
        break;
      }

      v14 = (v14 + 1) & v30;
      v15 = v20;
      if (((*(v31 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v3 = v28;
        a1 = v29;
        v7 = v27;
        goto LABEL_7;
      }
    }

    v22(v33, v6);
    v20(v29, *(v32 + 48) + v18 * v14, v6);
    return 0;
  }

  else
  {
    v15 = *(v7 + 16);
LABEL_7:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = v33;
    v15(v9, v33, v6);
    v34 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(v9, v14, isUniquelyReferenced_nonNull_native);
    *v3 = v34;
    (*(v7 + 32))(a1, v24, v6);
    return 1;
  }
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, void *a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = __CocoaSet.member(for:)();

    if (v17)
    {

      a3(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v35;
    }

    else
    {
      result = __CocoaSet.count.getter();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC13caraccessoryd22CAFDAssetVariantsAgentC16_ConnectionProxy33_AD8EB03328B3296C924C05733247A05ALLC_Tt1g5Tm(v15, result + 1, a4, a5, a6);
        v28 = v27[2];
        if (v27[3] <= v28)
        {
          specialized _NativeSet.resize(capacity:)(v28 + 1, a4, a5);
        }

        v29 = v16;
        specialized _NativeSet._unsafeInsertNew(_:)(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    a3(0);
    v19 = NSObject._rawHashValue(seed:)(*(v14 + 40));
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = static NSObject.== infix(_:_:)();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v36 = *v11;
      v26 = a2;
      specialized _NativeSet.insertNew(_:at:isUnique:)(v26, v21, isUniquelyReferenced_nonNull_native, a4, a5, a6);
      *v11 = v36;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t result, uint64_t a2, unint64_t a3, char a4)
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
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1, &_ss11_SetStorageCySo12RBSAssertionCGMd, &_ss11_SetStorageCySo12RBSAssertionCGMR);
  }

  else
  {
    if (v7 > v6)
    {
      specialized _NativeSet.copy()(&_ss11_SetStorageCySo12RBSAssertionCGMd, &_ss11_SetStorageCySo12RBSAssertionCGMR);
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1, &_ss11_SetStorageCySo12RBSAssertionCGMd, &_ss11_SetStorageCySo12RBSAssertionCGMR);
  }

  v8 = *v3;
  v9 = NSObject._rawHashValue(seed:)(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for RBSAssertion, RBSAssertion_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = static NSObject.== infix(_:_:)();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v31 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  v28 = v3;
  v29 = v7;
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v10 + 1);
  }

  v12 = *v3;
  _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v14 = v12 + 56;
  v30 = v12;
  v15 = -1 << *(v12 + 32);
  a2 = v13 & ~v15;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v16 = ~v15;
    v19 = *(v7 + 16);
    v18 = v7 + 16;
    v17 = v19;
    v20 = *(v18 + 56);
    do
    {
      v17(v9, *(v30 + 48) + v20 * a2, v6);
      _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
      v21 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v18 - 8))(v9, v6);
      if (v21)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v16;
    }

    while (((*(v14 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v22 = v29;
  v23 = *v28;
  *(v23 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v22 + 32))(*(v23 + 48) + *(v22 + 72) * a2, v31, v6);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (!v26)
  {
    *(v23 + 16) = v27;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, void (*a6)(void))
{
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v11 = a6;
    specialized _NativeSet.resize(capacity:)(v9 + 1, a4, a5);
  }

  else
  {
    if (v10 > v9)
    {
      specialized _NativeSet.copy()(a4, a5);
      goto LABEL_12;
    }

    v11 = a6;
    specialized _NativeSet.copyAndResize(capacity:)(v9 + 1, a4, a5);
  }

  v12 = *v6;
  v13 = NSObject._rawHashValue(seed:)(*(*v6 + 40));
  v14 = -1 << *(v12 + 32);
  a2 = v13 & ~v14;
  if ((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v15 = ~v14;
    v11(0);
    do
    {
      v16 = *(*(v12 + 48) + 8 * a2);
      v17 = static NSObject.== infix(_:_:)();

      if (v17)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v15;
    }

    while (((*(v12 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v18 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v18 + 48) + 8 * a2) = a1;
  v19 = *(v18 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v18 + 16) = v21;
    return;
  }

  __break(1u);
LABEL_15:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

uint64_t specialized __RawDictionaryStorage.find<A>(_:)()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v0 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v0);
}

void specialized CAFDAppLaunchManager.carManager(_:didUpdateCurrentCar:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for appLaunchManager != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.appLaunchManager);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v17[0] = v10;
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x80000001000440D0, v17);
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = a1;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s currentCar updated to %@", v8, 0x16u);
    outlined destroy of NSObject?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  v12 = OBJC_IVAR____TtC13caraccessoryd20CAFDAppLaunchManager_currentCar;
  v13 = *&v2[OBJC_IVAR____TtC13caraccessoryd20CAFDAppLaunchManager_currentCar];
  if (v13)
  {
    [v13 unregisterObserver:v2];
  }

  v14 = OBJC_IVAR____TtC13caraccessoryd20CAFDAppLaunchManager_registered;
  swift_beginAccess();
  *&v2[v14] = &_swiftEmptySetSingleton;

  v15 = *&v2[v12];
  *&v2[v12] = a1;

  if (a1)
  {
    v16 = v5;
    [v16 registerObserver:v2];
    [v2 carDidUpdateAccessories:v16];
  }
}

uint64_t getEnumTagSinglePayload for CAFDAppLaunchManager.Application(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for CAFDAppLaunchManager.Application(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CAFDAppLaunchManager.Application and conformance CAFDAppLaunchManager.Application()
{
  result = lazy protocol witness table cache variable for type CAFDAppLaunchManager.Application and conformance CAFDAppLaunchManager.Application;
  if (!lazy protocol witness table cache variable for type CAFDAppLaunchManager.Application and conformance CAFDAppLaunchManager.Application)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFDAppLaunchManager.Application and conformance CAFDAppLaunchManager.Application);
  }

  return result;
}

uint64_t sub_10002BFAC()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_2(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_10002C004()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t _s8Dispatch0A13WorkItemFlagsVACs10SetAlgebraAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void thunk for @escaping @callee_guaranteed (@guaranteed BSServiceConnection & BSServiceConnectionContext) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

char *CAFDAgent.init(configuration:)(uint64_t a1)
{
  v35 = type metadata accessor for CAFDAgent.Configuration(0);
  __chkstk_darwin(v35);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Logger();
  v6 = *(v5 - 8);
  __chkstk_darwin(v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v1[OBJC_IVAR____TtC13caraccessoryd9CAFDAgent_listener] = 0;
  if (_swiftEmptyArrayStorage >> 62 && _CocoaArrayWrapper.endIndex.getter())
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC13caraccessoryd9CAFDAgentC20_CAFDConnectionProxyC_Tt0g5Tf4g_n(_swiftEmptyArrayStorage);
  }

  else
  {
    v9 = &_swiftEmptySetSingleton;
  }

  *&v1[OBJC_IVAR____TtC13caraccessoryd9CAFDAgent_connections] = v9;
  outlined init with copy of CAFDAgent.Configuration(a1, &v1[OBJC_IVAR____TtC13caraccessoryd9CAFDAgent_configuration]);
  v10 = type metadata accessor for CAFDAgent(0);
  v37.receiver = v1;
  v37.super_class = v10;
  v11 = objc_msgSendSuper2(&v37, "init");
  v12 = __chkstk_darwin(v11);
  *(&v32 - 2) = a1;
  *(&v32 - 1) = v12;
  v13 = swift_allocObject();
  *(v13 + 16) = partial apply for closure #1 in CAFDAgent.init(configuration:);
  *(v13 + 24) = &v32 - 4;
  aBlock[4] = partial apply for thunk for @callee_guaranteed (@guaranteed BSServiceConnectionConfiguring) -> ();
  aBlock[5] = v13;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed BSServiceConnectionListenerConfiguring) -> ();
  aBlock[3] = &block_descriptor_48_0;
  v14 = _Block_copy(aBlock);
  v15 = objc_opt_self();
  v16 = v11;

  v17 = [v15 listenerWithConfigurator:v14];
  _Block_release(v14);

  LOBYTE(v14) = swift_isEscapingClosureAtFileLocation();

  if (v14)
  {
    __break(1u);
  }

  else
  {
    v19 = OBJC_IVAR____TtC13caraccessoryd9CAFDAgent_listener;
    v20 = *&v16[OBJC_IVAR____TtC13caraccessoryd9CAFDAgent_listener];
    *&v16[OBJC_IVAR____TtC13caraccessoryd9CAFDAgent_listener] = v17;

    (*(v6 + 16))(v8, a1, v5);
    outlined init with copy of CAFDAgent.Configuration(a1, v4);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v34 = v8;
      v24 = v23;
      v25 = swift_slowAlloc();
      v33 = v5;
      v26 = v25;
      *v24 = 136315138;
      v27 = &v4[*(v35 + 36)];
      v35 = a1;
      aBlock[0] = v25;
      v28 = v6;
      v30 = *v27;
      v29 = v27[1];

      outlined destroy of CAFDAgent.Configuration(v4);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v29, aBlock);

      *(v24 + 4) = v31;
      _os_log_impl(&_mh_execute_header, v21, v22, "activating listener for %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v26);

      (*(v28 + 8))(v34, v33);
      a1 = v35;
    }

    else
    {

      outlined destroy of CAFDAgent.Configuration(v4);
      (*(v6 + 8))(v8, v5);
    }

    result = *&v16[v19];
    if (result)
    {
      [result activate];

      outlined destroy of CAFDAgent.Configuration(a1);
      return v16;
    }
  }

  __break(1u);
  return result;
}

id closure #1 in CAFDAgent.init(configuration:)(void *a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for CAFDAgent.Configuration(0);
  v5 = String._bridgeToObjectiveC()();
  [a1 setDomain:v5];

  v6 = String._bridgeToObjectiveC()();
  [a1 setService:v6];

  return [a1 setDelegate:a3];
}

id CAFDAgent._CAFDConnectionProxy.init(agent:connection:)(void *a1, void *a2)
{
  swift_unknownObjectWeakInit();
  swift_unknownObjectWeakAssign();
  *&v2[OBJC_IVAR____TtCC13caraccessoryd9CAFDAgent20_CAFDConnectionProxy_connection] = a2;
  v16.receiver = v2;
  v16.super_class = type metadata accessor for CAFDAgent._CAFDConnectionProxy();
  v5 = a2;
  v6 = objc_msgSendSuper2(&v16, "init");
  v7 = swift_allocObject();
  *(v7 + 16) = a1;
  *(v7 + 24) = v6;
  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for closure #1 in CAFDAgent._CAFDConnectionProxy.init(agent:connection:);
  *(v8 + 24) = v7;
  v15[4] = partial apply for thunk for @callee_guaranteed (@guaranteed BSServiceConnectionListenerConfiguring) -> ();
  v15[5] = v8;
  v15[0] = _NSConcreteStackBlock;
  v15[1] = 1107296256;
  v15[2] = thunk for @escaping @callee_guaranteed (@guaranteed BSServiceConnectionListenerConfiguring) -> ();
  v15[3] = &block_descriptor_29;
  v9 = _Block_copy(v15);
  v10 = v6;
  v11 = v5;
  v12 = v10;
  v13 = a1;

  [v11 configureConnection:v9];

  _Block_release(v9);
  LOBYTE(v9) = swift_isEscapingClosureAtFileLocation();

  if ((v9 & 1) == 0)
  {
    return v12;
  }

  __break(1u);
  return result;
}

void closure #1 in CAFDAgent._CAFDConnectionProxy.init(agent:connection:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = a2 + OBJC_IVAR____TtC13caraccessoryd9CAFDAgent_configuration;
  v6 = type metadata accessor for CAFDAgent.Configuration(0);
  [a1 setTargetQueue:*(v5 + v6[5])];
  [a1 setServiceQuality:*(v5 + v6[8])];
  [a1 setInterface:*(v5 + v6[6])];
  [a1 setInterfaceTarget:a3];
  v7 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9[4] = partial apply for closure #1 in closure #1 in CAFDAgent._CAFDConnectionProxy.init(agent:connection:);
  v9[5] = v7;
  v9[0] = _NSConcreteStackBlock;
  v9[1] = 1107296256;
  v9[2] = thunk for @escaping @callee_guaranteed (@guaranteed BSServiceConnection & BSServiceConnectionContext) -> ();
  v9[3] = &block_descriptor_35;
  v8 = _Block_copy(v9);

  [a1 setInvalidationHandler:v8];
  _Block_release(v8);
}

void closure #1 in closure #1 in CAFDAgent._CAFDConnectionProxy.init(agent:connection:)(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CAFDAgent.Configuration(0);
  __chkstk_darwin(v6 - 8);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v10 = Strong;
    v11 = swift_unknownObjectWeakLoadStrong();
    if (v11)
    {
      v12 = v11;
      outlined init with copy of CAFDAgent.Configuration(v11 + OBJC_IVAR____TtC13caraccessoryd9CAFDAgent_configuration, v8);

      (*(v3 + 16))(v5, v8, v2);
      outlined destroy of CAFDAgent.Configuration(v8);
      v13 = v10;
      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        v17 = swift_slowAlloc();
        *v16 = 138412290;
        *(v16 + 4) = v13;
        *v17 = v10;
        v18 = v13;
        _os_log_impl(&_mh_execute_header, v14, v15, "Connection invalidated %@", v16, 0xCu);
        outlined destroy of NSObject?(v17);
      }

      (*(v3 + 8))(v5, v2);
    }

    v19 = swift_unknownObjectWeakLoadStrong();
    if (v19)
    {
      v20 = v19;
      CAFDAgent.remove(proxy:)(v10);
    }
  }
}

uint64_t CAFDAgent.remove(proxy:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  [a1 invalidate];
  v12 = v2 + OBJC_IVAR____TtC13caraccessoryd9CAFDAgent_configuration;
  v18[0] = *(v12 + *(type metadata accessor for CAFDAgent.Configuration(0) + 20));
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in CAFDAgent.remove(proxy:);
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_42_0;
  v15 = _Block_copy(aBlock);

  v16 = a1;
  static DispatchQoS.unspecified.getter();
  v18[1] = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
}

uint64_t CAFDAgent._CAFDConnectionProxy.remote.getter()
{
  v1 = String._bridgeToObjectiveC()();
  v2 = String._bridgeToObjectiveC()();
  v3 = [objc_opt_self() attributeWithDomain:v1 name:v2];

  v4 = *(v0 + OBJC_IVAR____TtCC13caraccessoryd9CAFDAgent20_CAFDConnectionProxy_connection);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, _ss23_ContiguousArrayStorageCyyXlGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_100042870;
  *(v5 + 32) = v3;
  type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for RBSAttribute, RBSAttribute_ptr);
  v6 = v3;
  isa = Array._bridgeToObjectiveC()().super.isa;

  v8 = [v4 remoteTargetWithAssertionAttributes:isa];

  if (v8)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();

    outlined init with take of Any(&v10, v11);
  }

  else
  {

    memset(v11, 0, sizeof(v11));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, _sypSgMR);
  if (swift_dynamicCast())
  {
    return v10;
  }

  else
  {
    return 0;
  }
}

id CAFDAgent.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

id CAFDAgent._CAFDConnectionProxy.activate()(const char *a1, SEL *a2, ...)
{
  v5 = v2;
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for CAFDAgent.Configuration(0);
  __chkstk_darwin(v10 - 8);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v14 = Strong;
    outlined init with copy of CAFDAgent.Configuration(Strong + OBJC_IVAR____TtC13caraccessoryd9CAFDAgent_configuration, v12);

    (*(v7 + 16))(v9, v12, v6);
    outlined destroy of CAFDAgent.Configuration(v12);
    v15 = v5;
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v26 = a2;
      v19 = a1;
      v20 = v18;
      v21 = swift_slowAlloc();
      *v20 = 138412290;
      *(v20 + 4) = v15;
      *v21 = v15;
      v22 = v15;
      v23 = v19;
      a2 = v26;
      _os_log_impl(&_mh_execute_header, v16, v17, v23, v20, 0xCu);
      outlined destroy of NSObject?(v21);
    }

    (*(v7 + 8))(v9, v6);
  }

  return [*&v5[OBJC_IVAR____TtCC13caraccessoryd9CAFDAgent20_CAFDConnectionProxy_connection] *a2];
}

uint64_t CAFDAgent.add(proxy:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for DispatchQoS();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  CAFDAgent._CAFDConnectionProxy.activate()();
  v12 = v2 + OBJC_IVAR____TtC13caraccessoryd9CAFDAgent_configuration;
  v18[0] = *(v12 + *(type metadata accessor for CAFDAgent.Configuration(0) + 20));
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v14 = swift_allocObject();
  *(v14 + 16) = v13;
  *(v14 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in CAFDAgent.add(proxy:);
  aBlock[5] = v14;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_3;
  v15 = _Block_copy(aBlock);

  v16 = a1;
  static DispatchQoS.unspecified.getter();
  v18[1] = _swiftEmptyArrayStorage;
  lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v15);
  (*(v5 + 8))(v7, v4);
  (*(v9 + 8))(v11, v8);
}

void closure #1 in CAFDAgent.remove(proxy:)(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    v5 = specialized Set._Variant.remove(_:)(a2);
    swift_endAccess();
  }
}

void closure #1 in CAFDAgent.add(proxy:)(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    swift_beginAccess();
    specialized Set._Variant.insert(_:)(&v6, a2);
    v5 = v6;
    swift_endAccess();
  }
}

void specialized CAFDAgent.listener(_:didReceive:withContext:)(void *a1)
{
  v2 = v1;
  v3 = a1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v26 = v7;
    *v6 = 136315138;
    ObjectType = swift_getObjectType();
    v9 = BSServiceConnectionHost.CAFDDescription.getter(ObjectType);
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v26);

    *(v6 + 4) = v11;
    _os_log_impl(&_mh_execute_header, v4, v5, "Received connection %s", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  v12 = swift_getObjectType();
  v13 = [v3 remoteToken];
  type metadata accessor for CAFDAgent.Configuration(0);
  v14 = String._bridgeToObjectiveC()();
  v15 = [v13 hasEntitlement:v14];

  if (v15)
  {
    v16 = objc_allocWithZone(type metadata accessor for CAFDAgent._CAFDConnectionProxy());
    v25 = CAFDAgent._CAFDConnectionProxy.init(agent:connection:)(v2, v3);
    CAFDAgent.add(proxy:)(v25);
  }

  else
  {
    v17 = v3;
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v26 = v21;
      *v20 = 136315138;
      v22 = BSServiceConnectionHost.CAFDDescription.getter(v12);
      v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, &v26);

      *(v20 + 4) = v24;
      _os_log_impl(&_mh_execute_header, v18, v19, "connection %s does not have required entitlement", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v21);
    }

    [v17 invalidate];
  }
}

uint64_t type metadata completion function for CAFDAgent(uint64_t a1)
{
  result = type metadata accessor for CAFDAgent.Configuration(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t type metadata accessor for CAFDAgent(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_10002DF6C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_10002E03C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for Logger();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata completion function for CAFDAgent.Configuration(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for OS_dispatch_queue(319, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for OS_dispatch_queue(319, &lazy cache variable for type metadata for BSServiceInterface, BSServiceInterface_ptr);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for OS_dispatch_queue(319, &lazy cache variable for type metadata for BSServiceQuality, BSServiceQuality_ptr);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t sub_10002E1E8()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags()
{
  result = lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags;
  if (!lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags)
  {
    type metadata accessor for DispatchWorkItemFlags();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags);
  }

  return result;
}

uint64_t sub_10002E29C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t one-time initialization function for appClips()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.appClips);
  __swift_project_value_buffer(v0, static Logger.appClips);
  return Logger.init(subsystem:category:)();
}

char *CAFDAppClipsDeclarationAgent.init(carManager:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for appClips != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.appClips);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 0;
    _os_log_impl(&_mh_execute_header, v5, v6, "initializing app clips server", v7, 2u);
  }

  v8 = type metadata accessor for CAFDAsyncCarManager();
  v9 = objc_allocWithZone(v8);
  *&v9[OBJC_IVAR____TtC13caraccessorydP33_63EDB8DF96AF53E23EC725535F297F4019CAFDAsyncCarManager_carContinuations] = _swiftEmptyArrayStorage;
  *&v9[OBJC_IVAR____TtC13caraccessorydP33_63EDB8DF96AF53E23EC725535F297F4019CAFDAsyncCarManager_carManager] = a1;
  v17.receiver = v9;
  v17.super_class = v8;
  v10 = a1;
  *&v2[OBJC_IVAR____TtC13caraccessoryd28CAFDAppClipsDeclarationAgent_carManager] = objc_msgSendSuper2(&v17, "init");
  v11 = [objc_allocWithZone(CRAppClipsDeclarationAgent) init];
  *&v2[OBJC_IVAR____TtC13caraccessoryd28CAFDAppClipsDeclarationAgent_agent] = v11;
  v16.receiver = v2;
  v16.super_class = type metadata accessor for CAFDAppClipsDeclarationAgent();
  v12 = objc_msgSendSuper2(&v16, "init");
  v13 = *&v12[OBJC_IVAR____TtC13caraccessoryd28CAFDAppClipsDeclarationAgent_agent];
  v14 = v12;
  [v13 setAppClipDeclarer:v14];

  return v14;
}

uint64_t CAFDAppClipsDeclarationAgent.supportedAppClips(forPairedVehicleIdentifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v7 - 8);
  v9 = &v18 - v8;
  if (one-time initialization token for appClips != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.appClips);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "received supportedAppClips call", v13, 2u);
  }

  v14 = type metadata accessor for TaskPriority();
  (*(*(v14 - 8) + 56))(v9, 1, 1, v14);
  v15 = swift_allocObject();
  v15[2] = 0;
  v15[3] = 0;
  v15[4] = v4;
  v15[5] = a2;
  v15[6] = a3;
  v16 = v4;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in CAFDAppClipsDeclarationAgent.supportedAppClips(forPairedVehicleIdentifier:completion:), v15);
}

uint64_t closure #1 in CAFDAppClipsDeclarationAgent.supportedAppClips(forPairedVehicleIdentifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[4] = a5;
  v6[5] = a6;
  v6[3] = a4;
  return _swift_task_switch(closure #1 in CAFDAppClipsDeclarationAgent.supportedAppClips(forPairedVehicleIdentifier:completion:), 0, 0);
}

uint64_t closure #1 in CAFDAppClipsDeclarationAgent.supportedAppClips(forPairedVehicleIdentifier:completion:)()
{
  v1 = swift_allocObject();
  *(v0 + 48) = v1;
  swift_unknownObjectWeakInit();
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13caraccessoryd12CAFDAsyncCar33_63EDB8DF96AF53E23EC725535F297F40LLCSgMd, &_s13caraccessoryd12CAFDAsyncCar33_63EDB8DF96AF53E23EC725535F297F40LLCSgMR);
  *v2 = v0;
  v2[1] = closure #1 in CAFDAppClipsDeclarationAgent.supportedAppClips(forPairedVehicleIdentifier:completion:);

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 16, 0, 0, 7496035, 0xE300000000000000, partial apply for closure #1 in CAFDAsyncCarManager.car.getter, v1, v3);
}

{

  return _swift_task_switch(closure #1 in CAFDAppClipsDeclarationAgent.supportedAppClips(forPairedVehicleIdentifier:completion:), 0, 0);
}

{
  v1 = *(v0 + 16);
  *(v0 + 64) = v1;
  if (v1)
  {
    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    *v2 = v0;
    v2[1] = closure #1 in CAFDAppClipsDeclarationAgent.supportedAppClips(forPairedVehicleIdentifier:completion:);

    return CAFDAsyncCar.automakerApps.getter();
  }

  else
  {
    (*(v0 + 32))(0, 0);

    v4 = *(v0 + 8);

    return v4();
  }
}

uint64_t closure #1 in CAFDAppClipsDeclarationAgent.supportedAppClips(forPairedVehicleIdentifier:completion:)(uint64_t a1)
{
  v2 = *(*v1 + 64);
  *(*v1 + 80) = a1;

  return _swift_task_switch(closure #1 in CAFDAppClipsDeclarationAgent.supportedAppClips(forPairedVehicleIdentifier:completion:), 0, 0);
}

char *closure #1 in CAFDAppClipsDeclarationAgent.supportedAppClips(forPairedVehicleIdentifier:completion:)()
{
  v1 = *(v0 + 80);
  if (v1 >> 62)
  {
    v2 = _CocoaArrayWrapper.endIndex.getter();
    if (!v2)
    {
      goto LABEL_13;
    }
  }

  else
  {
    v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v2)
    {
      goto LABEL_13;
    }
  }

  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2 & ~(v2 >> 63), 0);
  if (v2 < 0)
  {
    __break(1u);
    return result;
  }

  v4 = 0;
  v5 = v1 & 0xC000000000000001;
  v16 = *(v0 + 80) + 32;
  do
  {
    if (v5)
    {
      v6 = specialized _ArrayBuffer._getElementSlowPath(_:)();
    }

    else
    {
      v6 = *(v16 + 8 * v4);
    }

    v7 = v6;
    v8 = [v7 appClipIdentifier];
    v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v10;

    v13 = _swiftEmptyArrayStorage[2];
    v12 = _swiftEmptyArrayStorage[3];
    if (v13 >= v12 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
    }

    ++v4;
    _swiftEmptyArrayStorage[2] = v13 + 1;
    v14 = &_swiftEmptyArrayStorage[2 * v13];
    v14[4] = v9;
    v14[5] = v11;
  }

  while (v2 != v4);
LABEL_13:

  (*(v0 + 32))(_swiftEmptyArrayStorage, 0);

  v15 = *(v0 + 8);

  return v15();
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v9 - 8);
  v11 = v25 - v10;
  outlined init with copy of TaskPriority?(a3, v25 - v10);
  v12 = type metadata accessor for TaskPriority();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    outlined destroy of TaskPriority?(v11);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = dispatch thunk of Actor.unownedExecutor.getter();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v19 = String.utf8CString.getter() + 32;
      v20 = swift_allocObject();
      *(v20 + 16) = a4;
      *(v20 + 24) = a5;

      if (v18 | v16)
      {
        v26[0] = 0;
        v26[1] = 0;
        v21 = v26;
        v26[2] = v16;
        v26[3] = v18;
      }

      else
      {
        v21 = 0;
      }

      v25[1] = 7;
      v25[2] = v21;
      v25[3] = v19;
      v23 = swift_task_create();

      outlined destroy of TaskPriority?(a3);

      return v23;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3);
  v22 = swift_allocObject();
  *(v22 + 16) = a4;
  *(v22 + 24) = a5;
  if (v18 | v16)
  {
    v26[4] = 0;
    v26[5] = 0;
    v26[6] = v16;
    v26[7] = v18;
  }

  return swift_task_create();
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned NSArray?, @unowned NSError?) -> ()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
    v5.super.isa = Array._bridgeToObjectiveC()().super.isa;
    if (a2)
    {
LABEL_3:
      v6 = _convertErrorToNSError(_:)();
      goto LABEL_6;
    }
  }

  else
  {
    v5.super.isa = 0;
    if (a2)
    {
      goto LABEL_3;
    }
  }

  v6 = 0;
LABEL_6:
  v7 = v6;
  (*(a3 + 16))(a3, v5.super.isa);
}

void closure #1 in CAFDAsyncCarManager.car.getter(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy13caraccessoryd12CAFDAsyncCar33_63EDB8DF96AF53E23EC725535F297F40LLCSgs5NeverOGMd, &_sScCy13caraccessoryd12CAFDAsyncCar33_63EDB8DF96AF53E23EC725535F297F40LLCSgs5NeverOGMR);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v24 - v5;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v8 = Strong;
    v9 = OBJC_IVAR____TtC13caraccessorydP33_63EDB8DF96AF53E23EC725535F297F4019CAFDAsyncCarManager_carManager;
    v10 = [*(Strong + OBJC_IVAR____TtC13caraccessorydP33_63EDB8DF96AF53E23EC725535F297F4019CAFDAsyncCarManager_carManager) currentCar];
    if (v10)
    {
      v11 = v10;
      v12 = type metadata accessor for CAFDAsyncCar();
      v13 = objc_allocWithZone(v12);
      *&v13[OBJC_IVAR____TtC13caraccessorydP33_63EDB8DF96AF53E23EC725535F297F4012CAFDAsyncCar_configuredContinuations] = _swiftEmptyArrayStorage;
      *&v13[OBJC_IVAR____TtC13caraccessorydP33_63EDB8DF96AF53E23EC725535F297F4012CAFDAsyncCar_car] = v11;
      v24.receiver = v13;
      v24.super_class = v12;
      v14 = v11;
      v25 = objc_msgSendSuper2(&v24, "init");
      CheckedContinuation.resume(returning:)();
    }

    else
    {
      if (one-time initialization token for appClips != -1)
      {
        swift_once();
      }

      v15 = type metadata accessor for Logger();
      __swift_project_value_buffer(v15, static Logger.appClips);
      v16 = Logger.logObject.getter();
      v17 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&_mh_execute_header, v16, v17, "waiting on CAFCar", v18, 2u);
      }

      [*&v8[v9] registerObserver:v8];
      (*(v4 + 16))(v6, a1, v3);
      v19 = OBJC_IVAR____TtC13caraccessorydP33_63EDB8DF96AF53E23EC725535F297F4019CAFDAsyncCarManager_carContinuations;
      v20 = *&v8[OBJC_IVAR____TtC13caraccessorydP33_63EDB8DF96AF53E23EC725535F297F4019CAFDAsyncCarManager_carContinuations];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *&v8[v19] = v20;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20[2] + 1, 1, v20, &_ss23_ContiguousArrayStorageCyScCy13caraccessoryd12CAFDAsyncCar33_63EDB8DF96AF53E23EC725535F297F40LLCSgs5NeverOGGMd, &_ss23_ContiguousArrayStorageCyScCy13caraccessoryd12CAFDAsyncCar33_63EDB8DF96AF53E23EC725535F297F40LLCSgs5NeverOGGMR, &_sScCy13caraccessoryd12CAFDAsyncCar33_63EDB8DF96AF53E23EC725535F297F40LLCSgs5NeverOGMd, &_sScCy13caraccessoryd12CAFDAsyncCar33_63EDB8DF96AF53E23EC725535F297F40LLCSgs5NeverOGMR);
        *&v8[v19] = v20;
      }

      v23 = v20[2];
      v22 = v20[3];
      if (v23 >= v22 >> 1)
      {
        v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v22 > 1), v23 + 1, 1, v20, &_ss23_ContiguousArrayStorageCyScCy13caraccessoryd12CAFDAsyncCar33_63EDB8DF96AF53E23EC725535F297F40LLCSgs5NeverOGGMd, &_ss23_ContiguousArrayStorageCyScCy13caraccessoryd12CAFDAsyncCar33_63EDB8DF96AF53E23EC725535F297F40LLCSgs5NeverOGGMR, &_sScCy13caraccessoryd12CAFDAsyncCar33_63EDB8DF96AF53E23EC725535F297F40LLCSgs5NeverOGMd, &_sScCy13caraccessoryd12CAFDAsyncCar33_63EDB8DF96AF53E23EC725535F297F40LLCSgs5NeverOGMR);
      }

      v20[2] = v23 + 1;
      (*(v4 + 32))(v20 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v23, v6, v3);
      *&v8[v19] = v20;
    }
  }

  else
  {
    v25 = 0;
    CheckedContinuation.resume(returning:)();
  }
}

uint64_t CAFDAsyncCarManager.carManager(_:didUpdateCurrentCar:)(void *a1, id a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy13caraccessoryd12CAFDAsyncCar33_63EDB8DF96AF53E23EC725535F297F40LLCSgs5NeverOGMd, &_sScCy13caraccessoryd12CAFDAsyncCar33_63EDB8DF96AF53E23EC725535F297F40LLCSgs5NeverOGMR);
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = v26 - v8;
  if (one-time initialization token for appClips != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.appClips);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&_mh_execute_header, v11, v12, "CAFCar now available", v13, 2u);
  }

  [a1 unregisterObserver:v3];
  if (a2)
  {
    v14 = type metadata accessor for CAFDAsyncCar();
    v15 = objc_allocWithZone(v14);
    *&v15[OBJC_IVAR____TtC13caraccessorydP33_63EDB8DF96AF53E23EC725535F297F4012CAFDAsyncCar_configuredContinuations] = _swiftEmptyArrayStorage;
    *&v15[OBJC_IVAR____TtC13caraccessorydP33_63EDB8DF96AF53E23EC725535F297F4012CAFDAsyncCar_car] = a2;
    v30.receiver = v15;
    v30.super_class = v14;
    v16 = a2;
    a2 = objc_msgSendSuper2(&v30, "init");
  }

  v17 = OBJC_IVAR____TtC13caraccessorydP33_63EDB8DF96AF53E23EC725535F297F4019CAFDAsyncCarManager_carContinuations;
  v18 = *(v3 + OBJC_IVAR____TtC13caraccessorydP33_63EDB8DF96AF53E23EC725535F297F4019CAFDAsyncCarManager_carContinuations);
  v19 = *(v18 + 16);
  if (v19)
  {
    v27 = OBJC_IVAR____TtC13caraccessorydP33_63EDB8DF96AF53E23EC725535F297F4019CAFDAsyncCarManager_carContinuations;
    v28 = v3;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v29 = v21;
    v22 = v18 + ((*(v20 + 64) + 32) & ~*(v20 + 64));
    v23 = *(v20 + 56);
    v26[1] = v18;

    do
    {
      v29(v9, v22, v6);
      v31 = a2;
      v24 = a2;
      CheckedContinuation.resume(returning:)();
      (*(v20 - 8))(v9, v6);
      v22 += v23;
      --v19;
    }

    while (v19);

    v17 = v27;
    v3 = v28;
  }

  else
  {
  }

  *(v3 + v17) = _swiftEmptyArrayStorage;
}

uint64_t CAFDAsyncCar.automakerApps.getter()
{
  *(v1 + 24) = v0;
  return _swift_task_switch(CAFDAsyncCar.automakerApps.getter, 0, 0);
}

{
  v1 = v0[3];
  v2 = swift_task_alloc();
  v0[4] = v2;
  *(v2 + 16) = v1;
  v3 = swift_task_alloc();
  v0[5] = v3;
  v4 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CAFCar, CAFCar_ptr);
  *v3 = v0;
  v3[1] = CAFDAsyncCar.automakerApps.getter;

  return withCheckedContinuation<A>(isolation:function:_:)(v0 + 2, 0, 0, 0x72756769666E6F63, 0xEF29287261436465, partial apply for closure #1 in CAFDAsyncCar.configuredCar(), v2, v4);
}

{

  return _swift_task_switch(CAFDAsyncCar.automakerApps.getter, 0, 0);
}

{
  v1 = *(v0 + 16);
  v2 = [v1 automakerApps];

  if (v2)
  {
    v3 = [v2 automakerApps];

    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for CAFAutomakerApp, CAFAutomakerApp_ptr);
    v4 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    v4 = _swiftEmptyArrayStorage;
  }

  v5 = *(v0 + 8);

  return v5(v4);
}

uint64_t closure #1 in CAFDAsyncCar.configuredCar()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo6CAFCarCs5NeverOGMd, &_sScCySo6CAFCarCs5NeverOGMR);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = v20 - v6;
  v8 = *(a2 + OBJC_IVAR____TtC13caraccessorydP33_63EDB8DF96AF53E23EC725535F297F4012CAFDAsyncCar_car);
  if ([v8 isConfigured])
  {
    v20[1] = v8;
    v9 = v8;
    return CheckedContinuation.resume(returning:)();
  }

  else
  {
    if (one-time initialization token for appClips != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.appClips);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&_mh_execute_header, v12, v13, "waiting on CAFCar configuration", v14, 2u);
    }

    [v8 registerObserver:a2];
    (*(v5 + 16))(v7, a1, v4);
    v15 = OBJC_IVAR____TtC13caraccessorydP33_63EDB8DF96AF53E23EC725535F297F4012CAFDAsyncCar_configuredContinuations;
    v16 = *(a2 + OBJC_IVAR____TtC13caraccessorydP33_63EDB8DF96AF53E23EC725535F297F4012CAFDAsyncCar_configuredContinuations);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a2 + v15) = v16;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16[2] + 1, 1, v16, &_ss23_ContiguousArrayStorageCyScCySo6CAFCarCs5NeverOGGMd, &_ss23_ContiguousArrayStorageCyScCySo6CAFCarCs5NeverOGGMR, &_sScCySo6CAFCarCs5NeverOGMd, &_sScCySo6CAFCarCs5NeverOGMR);
      *(a2 + v15) = v16;
    }

    v19 = v16[2];
    v18 = v16[3];
    if (v19 >= v18 >> 1)
    {
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1, v16, &_ss23_ContiguousArrayStorageCyScCySo6CAFCarCs5NeverOGGMd, &_ss23_ContiguousArrayStorageCyScCySo6CAFCarCs5NeverOGGMR, &_sScCySo6CAFCarCs5NeverOGMd, &_sScCySo6CAFCarCs5NeverOGMR);
    }

    v16[2] = v19 + 1;
    result = (*(v5 + 32))(v16 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v19, v7, v4);
    *(a2 + v15) = v16;
  }

  return result;
}

id CAFDAppClipsDeclarationAgent.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, "dealloc");
}

void CAFDAsyncCar.carIsConfigured(_:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCySo6CAFCarCs5NeverOGMd, &_sScCySo6CAFCarCs5NeverOGMR);
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v16 - v6;
  if (one-time initialization token for appClips != -1)
  {
    goto LABEL_11;
  }

  while (1)
  {
    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.appClips);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&_mh_execute_header, v9, v10, "CAFCar now configured", v11, 2u);
    }

    if (!a1)
    {
      break;
    }

    [a1 unregisterObserver:v2];
    v17 = OBJC_IVAR____TtC13caraccessorydP33_63EDB8DF96AF53E23EC725535F297F4012CAFDAsyncCar_configuredContinuations;
    v18 = v2;
    v12 = *(v2 + OBJC_IVAR____TtC13caraccessorydP33_63EDB8DF96AF53E23EC725535F297F4012CAFDAsyncCar_configuredContinuations);
    v13 = *(v12 + 16);

    if (!v13)
    {
LABEL_9:

      *(v18 + v17) = _swiftEmptyArrayStorage;

      return;
    }

    v14 = 0;
    v2 = v5 + 16;
    while (v14 < *(v12 + 16))
    {
      (*(v5 + 16))(v7, v12 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v14++, v4);
      v19 = a1;
      v15 = a1;
      CheckedContinuation.resume(returning:)();
      (*(v5 + 8))(v7, v4);
      if (v13 == v14)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
LABEL_11:
    swift_once();
  }

  __break(1u);
}

uint64_t sub_100030430()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 56, 7);
}

uint64_t partial apply for closure #1 in CAFDAppClipsDeclarationAgent.supportedAppClips(forPairedVehicleIdentifier:completion:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for closure #1 in CAFDAppClipsDeclarationAgent.supportedAppClips(forPairedVehicleIdentifier:completion:);

  return closure #1 in CAFDAppClipsDeclarationAgent.supportedAppClips(forPairedVehicleIdentifier:completion:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in CAFDAppClipsDeclarationAgent.supportedAppClips(forPairedVehicleIdentifier:completion:)()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(uint64_t a1, int *a2)
{
  v6 = (a2 + *a2);
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_;

  return v6(a1);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TQ0_()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
LABEL_30:
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

  if (!v15)
  {
    v19 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t sub_100030B44()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of TaskPriority?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_100030C5C()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TATQ0_;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_30(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in CAFDAppClipsDeclarationAgent.supportedAppClips(forPairedVehicleIdentifier:completion:);

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t sub_100030E04()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

void CAFDVehicleResourcesManager.assetVariantsAgent.setter(void *a1)
{
  swift_beginAccess();
  swift_unknownObjectWeakAssign();
  CAFDVehicleResourcesManager.assetVariantsAgent.didset();
}

void CAFDVehicleResourcesManager.assetVariantsAgent.didset()
{
  if (one-time initialization token for imageArchiveManager != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.imageArchiveManager);
  v2 = v0;
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    *v4 = 138412290;
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    *(v4 + 4) = Strong;
    *v5 = Strong;
    _os_log_impl(&_mh_execute_header, oslog, v3, "assetVariantsAgent didSet %@", v4, 0xCu);
    outlined destroy of NSObject?(v5, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  else
  {
  }
}

void (*CAFDVehicleResourcesManager.assetVariantsAgent.modify(uint64_t *a1))(id **a1, char a2)
{
  if (&_swift_coroFrameAlloc)
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR____TtC13caraccessoryd27CAFDVehicleResourcesManager_assetVariantsAgent;
  *(v3 + 32) = v1;
  *(v3 + 40) = v5;
  swift_beginAccess();
  *(v4 + 24) = swift_unknownObjectWeakLoadStrong();
  return CAFDVehicleResourcesManager.assetVariantsAgent.modify;
}

void CAFDVehicleResourcesManager.assetVariantsAgent.modify(id **a1, char a2)
{
  v3 = *a1;
  v4 = (*a1)[3];
  swift_unknownObjectWeakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();

    CAFDVehicleResourcesManager.assetVariantsAgent.didset();
  }

  free(v3);
}

id CAFDVehicleResourcesManager.init(carManager:)(void *a1)
{
  swift_unknownObjectWeakInit();
  *&v1[OBJC_IVAR____TtC13caraccessoryd27CAFDVehicleResourcesManager_currentCar] = 0;
  v3 = OBJC_IVAR____TtC13caraccessoryd27CAFDVehicleResourcesManager_archiveInfo;
  v4 = type metadata accessor for CAFDVehicleResourcesManager.CustomImageArchiveInfo(0);
  (*(*(v4 - 8) + 56))(&v1[v3], 1, 1, v4);
  *&v1[OBJC_IVAR____TtC13caraccessoryd27CAFDVehicleResourcesManager_assetExtrasURL] = 0;
  *&v1[OBJC_IVAR____TtC13caraccessoryd27CAFDVehicleResourcesManager_carManager] = a1;
  v17.receiver = v1;
  v17.super_class = type metadata accessor for CAFDVehicleResourcesManager(0);
  v5 = a1;
  v6 = objc_msgSendSuper2(&v17, "init");
  v7 = one-time initialization token for imageArchiveManager;
  v8 = v6;
  if (v7 != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.imageArchiveManager);
  v10 = v5;
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    *v13 = 138412290;
    *(v13 + 4) = v10;
    *v14 = v10;
    v15 = v10;
    _os_log_impl(&_mh_execute_header, v11, v12, "ImageArchiveManager initialized with %@", v13, 0xCu);
    outlined destroy of NSObject?(v14, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  [v10 registerObserver:{v8, v17.receiver, v17.super_class}];
  return v8;
}

id CAFDVehicleResourcesManager.__deallocating_deinit()
{
  v1 = v0;
  if (one-time initialization token for imageArchiveManager != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.imageArchiveManager);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "ImageArchiveManager deinit", v5, 2u);
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for CAFDVehicleResourcesManager(0);
  return objc_msgSendSuper2(&v7, "dealloc");
}

void CAFDVehicleResourcesManager.didUpdate(assetExtrasURL:)(void *a1)
{
  v2 = v1;
  if (one-time initialization token for imageArchiveManager != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.imageArchiveManager);
  v5 = a1;
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v14 = v10;
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001ALL, 0x80000001000443E0, &v14);
    *(v8 + 12) = 2112;
    *(v8 + 14) = v5;
    *v9 = a1;
    v11 = v5;
    _os_log_impl(&_mh_execute_header, v6, v7, "%s assetExtrasURL updated to %@", v8, 0x16u);
    outlined destroy of NSObject?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_0(v10);
  }

  v12 = *(v2 + OBJC_IVAR____TtC13caraccessoryd27CAFDVehicleResourcesManager_assetExtrasURL);
  *(v2 + OBJC_IVAR____TtC13caraccessoryd27CAFDVehicleResourcesManager_assetExtrasURL) = a1;

  if (a1)
  {
    v13 = v5;

    CAFDVehicleResourcesManager.getImageArchive()();
  }
}

void CAFDVehicleResourcesManager.getImageArchive()()
{
  v1 = v0;
  v2 = type metadata accessor for CAFDVehicleResourcesManager.CustomImageArchiveInfo(0);
  v108 = *(v2 - 8);
  v109 = v2;
  __chkstk_darwin(v2);
  v104 = (&v96 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMd, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMR);
  v5 = __chkstk_darwin(v4 - 8);
  v7 = &v96 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v5);
  v107 = (&v96 - v9);
  v10 = __chkstk_darwin(v8);
  v106 = &v96 - v11;
  v12 = __chkstk_darwin(v10);
  v14 = &v96 - v13;
  __chkstk_darwin(v12);
  v16 = &v96 - v15;
  v17 = type metadata accessor for URL.DirectoryHint();
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v96 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for URL();
  v22 = *(v21 - 8);
  v23 = __chkstk_darwin(v21);
  v25 = &v96 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __chkstk_darwin(v23);
  v28 = *&v1[OBJC_IVAR____TtC13caraccessoryd27CAFDVehicleResourcesManager_assetExtrasURL];
  if (v28)
  {
    v29 = *&v1[OBJC_IVAR____TtC13caraccessoryd27CAFDVehicleResourcesManager_currentCar];
    if (v29)
    {
      v102 = v26;
      v103 = &v96 - v27;
      v105 = v28;
      v30 = [v29 vehicleResources];
      if (v30)
      {
        v31 = v30;
        v97 = v7;
        v32 = [v30 customImageArchive];

        v101 = v32;
        if (v32)
        {
          v100 = v1;
          v33 = [v105 url];
          static URL._unconditionallyBridgeFromObjectiveC(_:)();

          aBlock = 0xD000000000000017;
          v112 = 0x8000000100044510;
          (*(v18 + 104))(v20, enum case for URL.DirectoryHint.inferFromPath(_:), v17);
          lazy protocol witness table accessor for type String and conformance String();
          URL.appending<A>(component:directoryHint:)();
          (*(v18 + 8))(v20, v17);
          v34 = *(v22 + 8);
          v99 = v22 + 8;
          v98 = v34;
          v34(v25, v102);
          v35 = [objc_opt_self() defaultManager];
          URL.path.getter();
          v36 = String._bridgeToObjectiveC()();

          v37 = [v35 fileExistsAtPath:v36];

          v39 = v108;
          v38 = v109;
          if (v37)
          {
            type metadata accessor for JSONDecoder();
            swift_allocObject();
            JSONDecoder.init()();
            v41 = Data.init(contentsOf:options:)();
            v43 = v42;
            lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type CAFDVehicleResourcesManager.CustomImageArchiveInfo and conformance CAFDVehicleResourcesManager.CustomImageArchiveInfo, type metadata accessor for CAFDVehicleResourcesManager.CustomImageArchiveInfo, &protocol conformance descriptor for CAFDVehicleResourcesManager.CustomImageArchiveInfo);
            dispatch thunk of JSONDecoder.decode<A>(_:from:)();
            outlined consume of Data._Representation(v41, v43);

            (*(v39 + 56))(v16, 0, 1, v38);
            v44 = OBJC_IVAR____TtC13caraccessoryd27CAFDVehicleResourcesManager_archiveInfo;
            v45 = v100;
            swift_beginAccess();
            outlined assign with take of CAFDVehicleResourcesManager.CustomImageArchiveInfo?(v16, v45 + v44);
            swift_endAccess();
          }

          v46 = OBJC_IVAR____TtC13caraccessoryd27CAFDVehicleResourcesManager_archiveInfo;
          v47 = v100;
          swift_beginAccess();
          outlined init with copy of (AnyHashable, Any)(v47 + v46, v14, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMd, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMR);
          v48 = *(v39 + 48);
          v49 = v48(v14, 1, v38);
          outlined destroy of NSObject?(v14, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMd, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMR);
          if (v49 == 1)
          {
            goto LABEL_13;
          }

          v50 = [v101 identifier];
          v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v53 = v52;

          v54 = v106;
          outlined init with copy of (AnyHashable, Any)(v47 + v46, v106, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMd, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMR);
          if (v48(v54, 1, v38))
          {
            outlined destroy of NSObject?(v54, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMd, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMR);

LABEL_13:
            v55 = v39;
            v56 = v101;
            v57 = [v101 identifier];
            v58 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v60 = v59;

            v61 = v107;
            static Date.now.getter();
            *v61 = v58;
            v61[1] = v60;
            (*(v55 + 56))(v61, 0, 1, v38);
            swift_beginAccess();
            outlined assign with take of CAFDVehicleResourcesManager.CustomImageArchiveInfo?(v61, v47 + v46);
            swift_endAccess();
            if (one-time initialization token for imageArchiveManager != -1)
            {
              swift_once();
            }

            v62 = type metadata accessor for Logger();
            __swift_project_value_buffer(v62, static Logger.imageArchiveManager);

            v63 = Logger.logObject.getter();
            v64 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v63, v64))
            {
              v65 = swift_slowAlloc();
              v66 = swift_slowAlloc();
              aBlock = v66;
              *v65 = 136315138;
              *(v65 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v60, &aBlock);
              _os_log_impl(&_mh_execute_header, v63, v64, "[getImageArchvie] firing customImageArchive getter for %s", v65, 0xCu);
              __swift_destroy_boxed_opaque_existential_0(v66);
            }

            v67 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v68 = swift_allocObject();
            v68[2] = v67;
            v68[3] = v58;
            v69 = v105;
            v68[4] = v60;
            v68[5] = v69;
            v115 = partial apply for closure #1 in CAFDVehicleResourcesManager.getImageArchive();
            v116 = v68;
            aBlock = _NSConcreteStackBlock;
            v112 = 1107296256;
            v113 = thunk for @escaping @callee_guaranteed (@guaranteed Data, @guaranteed Error?) -> ();
            v114 = &block_descriptor_4;
            v70 = _Block_copy(&aBlock);
            v71 = v105;

            [v56 getImageArchiveWithCompletion:v70];
            _Block_release(v70);

LABEL_18:
            v98(v103, v102);
            return;
          }

          v96 = v48;
          v72 = v104;
          outlined init with copy of CAFDVehicleResourcesManager.CustomImageArchiveInfo(v54, v104);
          outlined destroy of NSObject?(v54, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMd, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMR);
          countAndFlagsBits = v72->_countAndFlagsBits;
          object = v72->_object;

          outlined destroy of CAFDVehicleResourcesManager.CustomImageArchiveInfo(v72, type metadata accessor for CAFDVehicleResourcesManager.CustomImageArchiveInfo);
          if (v51 == countAndFlagsBits && v53 == object)
          {

            v38 = v109;
          }

          else
          {
            v75 = _stringCompareWithSmolCheck(_:_:expecting:)();

            v39 = v108;
            v38 = v109;
            if ((v75 & 1) == 0)
            {
              goto LABEL_13;
            }
          }

          if (one-time initialization token for imageArchiveManager != -1)
          {
            swift_once();
          }

          v76 = type metadata accessor for Logger();
          __swift_project_value_buffer(v76, static Logger.imageArchiveManager);
          v77 = v47;
          v78 = v101;
          v79 = Logger.logObject.getter();
          v80 = static os_log_type_t.debug.getter();

          if (os_log_type_enabled(v79, v80))
          {
            v81 = v38;
            v82 = swift_slowAlloc();
            v109 = swift_slowAlloc();
            v110 = v109;
            *v82 = 136315394;
            v83 = v97;
            outlined init with copy of (AnyHashable, Any)(v100 + v46, v97, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMd, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMR);
            if (v96(v83, 1, v81))
            {
              outlined destroy of NSObject?(v83, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMd, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMR);
              v84 = 0xE300000000000000;
              v85 = 7104878;
            }

            else
            {
              v86 = v104;
              outlined init with copy of CAFDVehicleResourcesManager.CustomImageArchiveInfo(v83, v104);
              outlined destroy of NSObject?(v83, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMd, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMR);
              aBlock = 0;
              v112 = 0xE000000000000000;
              _StringGuts.grow(_:)(23);

              aBlock = 0x3A657461443CLL;
              v112 = 0xE600000000000000;
              type metadata accessor for Date();
              lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date, &protocol conformance descriptor for Date);
              v87._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
              String.append(_:)(v87);

              v88._countAndFlagsBits = 0x6669746E65646920;
              v88._object = 0xEC0000003A726569;
              String.append(_:)(v88);
              String.append(_:)(*v86);
              v89._countAndFlagsBits = 62;
              v89._object = 0xE100000000000000;
              String.append(_:)(v89);
              v85 = aBlock;
              v84 = v112;
              outlined destroy of CAFDVehicleResourcesManager.CustomImageArchiveInfo(v86, type metadata accessor for CAFDVehicleResourcesManager.CustomImageArchiveInfo);
            }

            v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v85, v84, &v110);

            *(v82 + 4) = v90;
            *(v82 + 12) = 2080;
            v91 = [v78 identifier];
            v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
            v94 = v93;

            v95 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v94, &v110);

            *(v82 + 14) = v95;
            _os_log_impl(&_mh_execute_header, v79, v80, "[getImageArchvie] archive up to date. archiveInfo:%s customImageArchive.identifier:%s", v82, 0x16u);
            swift_arrayDestroy();
          }

          else
          {
          }

          goto LABEL_18;
        }
      }

      v40 = v105;
    }
  }
}

uint64_t CAFDVehicleResourcesManager.CustomImageArchiveInfo.description.getter()
{
  _StringGuts.grow(_:)(23);

  type metadata accessor for CAFDVehicleResourcesManager.CustomImageArchiveInfo(0);
  type metadata accessor for Date();
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x6669746E65646920;
  v2._object = 0xEC0000003A726569;
  String.append(_:)(v2);
  String.append(_:)(*v0);
  v3._countAndFlagsBits = 62;
  v3._object = 0xE100000000000000;
  String.append(_:)(v3);
  return 0x3A657461443CLL;
}

void *closure #1 in CAFDVehicleResourcesManager.getImageArchive()(void (*a1)(char *, uint64_t), char *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{
  v225 = a7;
  v232 = a6;
  v227 = a5;
  v230 = a2;
  v229 = a1;
  v220 = type metadata accessor for URL.DirectoryHint();
  v224 = *(v220 - 8);
  __chkstk_darwin(v220);
  v219 = v203 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for URL();
  v221 = *(v9 - 8);
  v10 = __chkstk_darwin(v9);
  v12 = v203 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v10);
  v15 = v203 - v14;
  v16 = __chkstk_darwin(v13);
  v215 = v203 - v17;
  v18 = __chkstk_darwin(v16);
  v20 = v203 - v19;
  v21 = __chkstk_darwin(v18);
  v218 = v203 - v22;
  __chkstk_darwin(v21);
  v226 = v203 - v23;
  v228 = type metadata accessor for CAFDVehicleResourcesManager.CustomImageArchiveInfo(0);
  v231 = *(v228 - 8);
  v24 = __chkstk_darwin(v228);
  v26 = v203 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v24);
  v28 = (v203 - v27);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMd, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMR);
  v30 = __chkstk_darwin(v29 - 8);
  v214 = v203 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __chkstk_darwin(v30);
  v34 = v203 - v33;
  __chkstk_darwin(v32);
  v36 = v203 - v35;
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v38 = result;
    v217 = v34;
    v210 = v15;
    v211 = v12;
    v212 = v20;
    v223 = v9;
    if (one-time initialization token for imageArchiveManager != -1)
    {
      swift_once();
    }

    v39 = type metadata accessor for Logger();
    v40 = __swift_project_value_buffer(v39, static Logger.imageArchiveManager);
    v41 = v232;

    v42 = v38;
    v43 = v229;
    v44 = v230;
    outlined copy of Data._Representation(v229, v230);
    swift_errorRetain();
    v216 = v40;
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.debug.getter();

    outlined consume of Data._Representation(v43, v44);

    if (os_log_type_enabled(v45, v46))
    {
      LODWORD(v209) = v46;
      v213 = v26;
      v47 = swift_slowAlloc();
      v235.super.isa = swift_slowAlloc();
      *v47 = 136315906;
      *(v47 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v227, v41, &v235);
      *(v47 + 12) = 2080;
      v48 = OBJC_IVAR____TtC13caraccessoryd27CAFDVehicleResourcesManager_archiveInfo;
      swift_beginAccess();
      v222 = v42;
      outlined init with copy of (AnyHashable, Any)(v42 + v48, v36, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMd, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMR);
      v49 = v228;
      if ((*(v231 + 48))(v36, 1, v228))
      {
        outlined destroy of NSObject?(v36, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMd, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMR);
        v50 = 0xE500000000000000;
        v51 = 0x3E6C696E3CLL;
      }

      else
      {
        outlined init with copy of CAFDVehicleResourcesManager.CustomImageArchiveInfo(v36, v28);
        outlined destroy of NSObject?(v36, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMd, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMR);
        v51 = *v28;
        v50 = v28[1];

        outlined destroy of CAFDVehicleResourcesManager.CustomImageArchiveInfo(v28, type metadata accessor for CAFDVehicleResourcesManager.CustomImageArchiveInfo);
      }

      v53 = 0x3E6C696E3CLL;
      v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v50, &v235);

      *(v47 + 14) = v54;
      *(v47 + 22) = 2080;
      v55 = Data.description.getter();
      v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, &v235);

      *(v47 + 24) = v57;
      *(v47 + 32) = 2080;
      if (a3)
      {
        swift_getErrorValue();
        v53 = Error.localizedDescription.getter();
        v59 = v58;
      }

      else
      {
        v59 = 0xE500000000000000;
      }

      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v59, &v235);

      *(v47 + 34) = v60;
      _os_log_impl(&_mh_execute_header, v45, v209, "[getImageArchvie] got identifier %s expecting identifier %s. imageArchive:%s  error:%s", v47, 0x2Au);
      swift_arrayDestroy();

      v52 = v213;
      v42 = v222;
    }

    else
    {

      v49 = v228;
      v52 = v26;
    }

    v61 = v225;
    v62 = OBJC_IVAR____TtC13caraccessoryd27CAFDVehicleResourcesManager_archiveInfo;
    swift_beginAccess();
    v63 = v217;
    outlined init with copy of (AnyHashable, Any)(v42 + v62, v217, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMd, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMR);
    if ((*(v231 + 48))(v63, 1, v49) == 1)
    {

      return outlined destroy of NSObject?(v63, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMd, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMR);
    }

    outlined init with take of CAFDVehicleResourcesManager.CustomImageArchiveInfo(v63, v52);
    if ((*v52 != v227 || v52[1] != v232) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {

      v122 = v52;
      return outlined destroy of CAFDVehicleResourcesManager.CustomImageArchiveInfo(v122, type metadata accessor for CAFDVehicleResourcesManager.CustomImageArchiveInfo);
    }

    v204 = v62;
    v222 = v42;
    v64 = [v61 url];
    v65 = v218;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for CAUAssetLibrary();
    v233 = static CAUAssetLibrary.customImageArchivePathComponent.getter();
    v234 = v66;
    LODWORD(v217) = enum case for URL.DirectoryHint.inferFromPath(_:);
    v67 = v224;
    v68 = v224 + 104;
    v209 = *(v224 + 104);
    v69 = v61;
    v213 = v52;
    v70 = v219;
    v71 = v220;
    v209(v219);
    v208 = lazy protocol witness table accessor for type String and conformance String();
    URL.appending<A>(component:directoryHint:)();
    v205 = *(v67 + 8);
    v205(v70, v71);

    v73 = v221 + 8;
    v72 = *(v221 + 8);
    v72(v65, v223);
    v74 = [v69 url];
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v233 = static CAUAssetLibrary.customImageArchivePathComponent.getter();
    v234 = v75;

    v76._countAndFlagsBits = 0x70756B6361622ELL;
    v76._object = 0xE700000000000000;
    String.append(_:)(v76);

    v203[1] = v68;
    (v209)(v70, v217, v71);
    v77 = v212;
    URL.appending<A>(component:directoryHint:)();
    v78 = v71;
    v224 = v67 + 8;
    v79 = v205;
    v205(v70, v78);
    v80 = v79;

    v81 = v65;
    v82 = v226;
    v83 = v77;
    v207 = v73;
    v206 = v72;
    v72(v81, v223);
    v84 = objc_opt_self();
    v85 = [v84 defaultManager];
    URL.path(percentEncoded:)(0);
    v86 = String._bridgeToObjectiveC()();

    LODWORD(v74) = [v85 fileExistsAtPath:v86];

    v87 = v215;
    if (v74)
    {
      v88 = [v84 defaultManager];
      URL.path(percentEncoded:)(0);
      v89 = String._bridgeToObjectiveC()();

      v90 = [v88 fileExistsAtPath:v89];

      if (v90)
      {
        v91 = Logger.logObject.getter();
        v92 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v91, v92))
        {
          v93 = swift_slowAlloc();
          *v93 = 0;
          _os_log_impl(&_mh_execute_header, v91, v92, "[getImageArchvie] destination and backup exist.  Removing backup...", v93, 2u);
        }

        v94 = [v84 defaultManager];
        URL._bridgeToObjectiveC()(v95);
        v97 = v96;
        v233 = 0;
        v98 = [v94 removeItemAtURL:v96 error:&v233];

        if (!v98)
        {
          v125 = v233;
          v124 = _convertNSErrorToError(_:)();

          swift_willThrow();
          v120 = v223;
LABEL_34:
          v126 = v232;

          swift_errorRetain();
          v127 = Logger.logObject.getter();
          v128 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v127, v128))
          {
            v129 = swift_slowAlloc();
            v130 = v84;
            v131 = swift_slowAlloc();
            v132 = v124;
            v133 = swift_slowAlloc();
            v233 = v133;
            *v129 = 136315394;
            *(v129 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v227, v126, &v233);
            *(v129 + 12) = 2112;
            swift_errorRetain();
            v134 = _swift_stdlib_bridgeErrorToNSError();
            *(v129 + 14) = v134;
            *v131 = v134;
            _os_log_impl(&_mh_execute_header, v127, v128, "[getImageArchvie] failed to write identifier %s imageArchive to disk: %@", v129, 0x16u);
            outlined destroy of NSObject?(v131, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
            v84 = v130;

            __swift_destroy_boxed_opaque_existential_0(v133);
            v124 = v132;
            v82 = v226;
          }

          v135 = v214;
          (*(v231 + 56))(v214, 1, 1, v228);
          v136 = v222;
          v137 = v204;
          swift_beginAccess();
          outlined assign with take of CAFDVehicleResourcesManager.CustomImageArchiveInfo?(v135, v136 + v137);
          swift_endAccess();
          v138 = [v84 defaultManager];
          URL.path(percentEncoded:)(0);
          v139 = String._bridgeToObjectiveC()();

          LODWORD(v135) = [v138 fileExistsAtPath:v139];

          if (v135)
          {
            v140 = [v84 defaultManager];
            URL.path(percentEncoded:)(0);
            v141 = String._bridgeToObjectiveC()();

            v142 = [v140 fileExistsAtPath:v141];

            if (v142)
            {
              v143 = Logger.logObject.getter();
              v144 = static os_log_type_t.error.getter();
              if (os_log_type_enabled(v143, v144))
              {
                v145 = swift_slowAlloc();
                *v145 = 0;
                _os_log_impl(&_mh_execute_header, v143, v144, "[getImageArchvie] (failure) destination and backup exist.  Removing destination...", v145, 2u);
              }

              v146 = [v84 defaultManager];
              URL._bridgeToObjectiveC()(v147);
              v149 = v148;
              v233 = 0;
              v150 = [v146 removeItemAtURL:v148 error:&v233];

              v151 = v233;
              if (!v150)
              {
                v232 = v124;
                goto LABEL_50;
              }

              v152 = v233;
            }
          }

          v153 = [v84 defaultManager];
          URL.path(percentEncoded:)(0);
          v154 = String._bridgeToObjectiveC()();

          v155 = [v153 fileExistsAtPath:v154];

          if (!v155)
          {
LABEL_47:

            v168 = v206;
            v206(v83, v120);
            v168(v82, v120);
LABEL_54:
            v122 = v213;
            return outlined destroy of CAFDVehicleResourcesManager.CustomImageArchiveInfo(v122, type metadata accessor for CAFDVehicleResourcesManager.CustomImageArchiveInfo);
          }

          v232 = v124;
          v156 = Logger.logObject.getter();
          v157 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v156, v157))
          {
            v158 = swift_slowAlloc();
            *v158 = 0;
            _os_log_impl(&_mh_execute_header, v156, v157, "[getImageArchvie] (failure) backup exists.  moving to destination...", v158, 2u);
          }

          v159 = [v84 defaultManager];
          URL._bridgeToObjectiveC()(v160);
          v162 = v161;
          URL._bridgeToObjectiveC()(v163);
          v165 = v164;
          v233 = 0;
          v166 = [v159 moveItemAtURL:v162 toURL:v164 error:&v233];

          v151 = v233;
          if (v166)
          {
            v167 = v233;
            goto LABEL_47;
          }

LABEL_50:
          v169 = v151;
          _convertNSErrorToError(_:)();

          swift_willThrow();
          v170 = *(v221 + 16);
          v171 = v210;
          v170(v210, v82, v120);
          v172 = v211;
          v170(v211, v83, v120);
          swift_errorRetain();
          v173 = Logger.logObject.getter();
          v174 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v173, v174))
          {
            v175 = v173;
            v176 = swift_slowAlloc();
            v231 = swift_slowAlloc();
            *v176 = 67109634;
            v177 = [v84 defaultManager];
            LODWORD(v230) = v174;
            URL.path(percentEncoded:)(0);
            v178 = String._bridgeToObjectiveC()();

            v179 = [v177 fileExistsAtPath:v178];

            v180 = v84;
            v181 = v206;
            v206(v171, v223);
            *(v176 + 4) = v179;
            *(v176 + 8) = 1024;
            v182 = [v180 defaultManager];
            URL.path(percentEncoded:)(0);
            v183 = String._bridgeToObjectiveC()();

            v184 = [v182 fileExistsAtPath:v183];

            v120 = v223;
            v181(v172, v223);
            *(v176 + 10) = v184;
            *(v176 + 14) = 2112;
            swift_errorRetain();
            v185 = _swift_stdlib_bridgeErrorToNSError();
            *(v176 + 16) = v185;
            v186 = v231;
            *v231 = v185;
            _os_log_impl(&_mh_execute_header, v175, v230, "[getImageArchvie] failed to handle restoring backup (destination=%{BOOL}d backup=%{BOOL}d): %@", v176, 0x18u);
            outlined destroy of NSObject?(v186, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

            v173 = v175;
            v82 = v226;
          }

          else
          {
            v181 = v206;
            v206(v172, v120);
            v181(v171, v120);
          }

          v181(v212, v120);
          v181(v82, v120);
          goto LABEL_54;
        }

        v99 = v233;
      }
    }

    v100 = [v84 defaultManager];
    URL.path(percentEncoded:)(0);
    v101 = String._bridgeToObjectiveC()();

    v102 = [v100 fileExistsAtPath:v101];

    if (v102)
    {
      v103 = Logger.logObject.getter();
      v104 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v103, v104))
      {
        v105 = swift_slowAlloc();
        *v105 = 0;
        _os_log_impl(&_mh_execute_header, v103, v104, "[getImageArchvie] destination exists.  backing up and removing...", v105, 2u);
      }

      v106 = [v84 defaultManager];
      URL._bridgeToObjectiveC()(v107);
      v109 = v108;
      URL._bridgeToObjectiveC()(v110);
      v112 = v111;
      v233 = 0;
      v113 = [v106 moveItemAtURL:v109 toURL:v111 error:&v233];

      if (!v113)
      {
        v123 = v233;
        v124 = _convertNSErrorToError(_:)();

        swift_willThrow();
        v120 = v223;
LABEL_32:
        v82 = v226;
        goto LABEL_34;
      }

      v114 = v233;
      v82 = v226;
    }

    specialized CAFDVehicleResourcesManager.receive(imageArchive:destination:)(v229, v230, v82);
    v230 = v84;
    type metadata accessor for JSONEncoder();
    swift_allocObject();
    JSONEncoder.init()();
    v115 = [v225 url];
    v116 = v218;
    static URL._unconditionallyBridgeFromObjectiveC(_:)();

    v233 = 0xD000000000000017;
    v234 = 0x8000000100044510;
    v117 = v219;
    v118 = v220;
    (v209)(v219, v217, v220);
    URL.appending<A>(component:directoryHint:)();
    v80(v117, v118);
    v119 = v116;
    v120 = v223;
    v121 = v206;
    v206(v119, v223);
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type CAFDVehicleResourcesManager.CustomImageArchiveInfo and conformance CAFDVehicleResourcesManager.CustomImageArchiveInfo, type metadata accessor for CAFDVehicleResourcesManager.CustomImageArchiveInfo, &protocol conformance descriptor for CAFDVehicleResourcesManager.CustomImageArchiveInfo);
    JSONEncoder.encode<A>(_:toFile:)();
    v121(v87, v120);

    v187 = [v230 defaultManager];
    v188 = v212;
    URL.path(percentEncoded:)(0);
    v189 = String._bridgeToObjectiveC()();

    v190 = [v187 fileExistsAtPath:v189];

    if (!v190)
    {

      v121(v188, v120);
      v121(v82, v120);
      goto LABEL_54;
    }

    v191 = Logger.logObject.getter();
    v192 = static os_log_type_t.error.getter();
    v193 = os_log_type_enabled(v191, v192);
    v194 = v213;
    if (v193)
    {
      v195 = swift_slowAlloc();
      *v195 = 0;
      _os_log_impl(&_mh_execute_header, v191, v192, "[getImageArchvie] Removing backup...", v195, 2u);
    }

    v84 = v230;
    v196 = [v230 defaultManager];
    v83 = v212;
    URL._bridgeToObjectiveC()(&v235);
    v198 = v197;
    v233 = 0;
    v199 = [v196 removeItemAtURL:v197 error:&v233];

    if (v199)
    {
      v200 = v233;

      v201 = v206;
      v206(v83, v120);
      v201(v226, v120);
      v122 = v194;
      return outlined destroy of CAFDVehicleResourcesManager.CustomImageArchiveInfo(v122, type metadata accessor for CAFDVehicleResourcesManager.CustomImageArchiveInfo);
    }

    v202 = v233;
    v124 = _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_32;
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@guaranteed Data, @guaranteed Error?) -> ()(uint64_t a1, void *a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a2;
  v7 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = v8;

  v10 = a3;
  v5(v7, v9, a3);

  outlined consume of Data._Representation(v7, v9);
}

void CAFDVehicleResourcesManager.carDidUpdateAccessories(_:)(void *a1)
{
  v1 = [a1 vehicleResources];
  v2 = [v1 customImageArchive];

  if (v2)
  {

    if (one-time initialization token for imageArchiveManager != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.imageArchiveManager);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v13 = v7;
      *v6 = 136315138;
      *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x8000000100043EE0, &v13);
      _os_log_impl(&_mh_execute_header, v4, v5, "%s vehicleResources.customImageArchive found", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v7);
    }

    CAFDVehicleResourcesManager.getImageArchive()();
  }

  else
  {
    if (one-time initialization token for imageArchiveManager != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.imageArchiveManager);
    oslog = Logger.logObject.getter();
    v9 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(oslog, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v10 = 136315138;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001BLL, 0x8000000100043EE0, &v13);
      _os_log_impl(&_mh_execute_header, oslog, v9, "%s waiting for vehicleResources.customImageArchive", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v11);
    }
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys()
{
  if (*v0)
  {
    return 1702125924;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1702125924 && a2 == 0xE400000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys and conformance CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys and conformance CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t CAFDVehicleResourcesManager.CustomImageArchiveInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoV10CodingKeys33_A8454C6BD39DE33790AEC551BD5FD6E1LLOGMd, &_ss22KeyedEncodingContainerVy13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoV10CodingKeys33_A8454C6BD39DE33790AEC551BD5FD6E1LLOGMR);
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys and conformance CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for CAFDVehicleResourcesManager.CustomImageArchiveInfo(0);
    v8[14] = 1;
    type metadata accessor for Date();
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date, &protocol conformance descriptor for Date);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t CAFDVehicleResourcesManager.CustomImageArchiveInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v20 = type metadata accessor for Date();
  v17 = *(v20 - 8);
  __chkstk_darwin(v20);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoV10CodingKeys33_A8454C6BD39DE33790AEC551BD5FD6E1LLOGMd, &_ss22KeyedDecodingContainerVy13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoV10CodingKeys33_A8454C6BD39DE33790AEC551BD5FD6E1LLOGMR);
  v19 = *(v21 - 8);
  __chkstk_darwin(v21);
  v7 = v15 - v6;
  v8 = type metadata accessor for CAFDVehicleResourcesManager.CustomImageArchiveInfo(0);
  __chkstk_darwin(v8);
  v10 = (v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys and conformance CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v16 = v8;
  v12 = v19;
  v11 = v20;
  v23 = 0;
  *v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v10[1] = v13;
  v15[1] = v13;
  v22 = 1;
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, &type metadata accessor for Date, &protocol conformance descriptor for Date);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v12 + 8))(v7, v21);
  (*(v17 + 32))(v10 + *(v16 + 20), v5, v11);
  outlined init with copy of CAFDVehicleResourcesManager.CustomImageArchiveInfo(v10, v18);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return outlined destroy of CAFDVehicleResourcesManager.CustomImageArchiveInfo(v10, type metadata accessor for CAFDVehicleResourcesManager.CustomImageArchiveInfo);
}

uint64_t URL.isDirectory.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation17URLResourceValuesVSgMd, &_s10Foundation17URLResourceValuesVSgMR);
  __chkstk_darwin(v0 - 8);
  v2 = &v9 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMd, &_ss23_ContiguousArrayStorageCySo16NSURLResourceKeyaGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_100042C30;
  *(inited + 32) = NSURLIsDirectoryKey;
  v4 = NSURLIsDirectoryKey;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16NSURLResourceKeya_Tt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of CAFDVehicleResourcesManager.CustomImageArchiveInfo(inited + 32, type metadata accessor for NSURLResourceKey);
  URL.resourceValues(forKeys:)();

  v5 = type metadata accessor for URLResourceValues();
  v6 = *(v5 - 8);
  (*(v6 + 56))(v2, 0, 1, v5);
  v7 = URLResourceValues.isDirectory.getter();
  (*(v6 + 8))(v2, v5);
  return v7 & 1;
}

uint64_t specialized CAFDVehicleResourcesManager.receive(imageArchive:destination:)(void (*a1)(char *, uint64_t), char *a2, uint64_t a3)
{
  v186 = a2;
  v176 = a3;
  v185 = a1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v4 = __chkstk_darwin(v3 - 8);
  v174 = &v167 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v175 = &v167 - v6;
  v183 = type metadata accessor for URL.DirectoryHint();
  v7 = *(v183 - 8);
  __chkstk_darwin(v183);
  v9 = &v167 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v188 = type metadata accessor for URL();
  v10 = *(v188 - 8);
  v11 = __chkstk_darwin(v188);
  v173 = &v167 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __chkstk_darwin(v11);
  v172 = &v167 - v14;
  v15 = __chkstk_darwin(v13);
  v169 = &v167 - v16;
  v17 = __chkstk_darwin(v15);
  v168 = &v167 - v18;
  v19 = __chkstk_darwin(v17);
  v171 = &v167 - v20;
  v21 = __chkstk_darwin(v19);
  v170 = &v167 - v22;
  v23 = __chkstk_darwin(v21);
  v184 = &v167 - v24;
  v25 = __chkstk_darwin(v23);
  v191 = &v167 - v26;
  v27 = __chkstk_darwin(v25);
  v29 = &v167 - v28;
  __chkstk_darwin(v27);
  v31 = &v167 - v30;
  v32 = objc_opt_self();
  v33 = [v32 defaultManager];
  v34 = [v33 temporaryDirectory];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  v193 = 0xD000000000000019;
  v194 = 0x8000000100044550;
  LODWORD(v182) = enum case for URL.DirectoryHint.inferFromPath(_:);
  v181 = *(v7 + 104);
  v35 = v183;
  v181(v9);
  v180 = lazy protocol witness table accessor for type String and conformance String();
  v190 = v31;
  URL.appending<A>(component:directoryHint:)();
  v36 = *(v7 + 8);
  v178 = v7 + 8;
  v179 = v36;
  v36(v9, v35);
  v189 = v10;
  v39 = *(v10 + 8);
  v37 = (v10 + 8);
  v38 = v39;
  v40 = v188;
  v39(v29, v188);
  v177 = v32;
  v41 = [v32 defaultManager];
  v42 = [v41 temporaryDirectory];

  static URL._unconditionallyBridgeFromObjectiveC(_:)();
  type metadata accessor for CAUAssetLibrary();
  v193 = static CAUAssetLibrary.customImageArchivePathComponent.getter();
  v194 = v43;
  (v181)(v9, v182, v35);
  v44 = v40;
  URL.appending<A>(component:directoryHint:)();
  v179(v9, v35);

  v180 = v29;
  v39(v29, v40);
  if (one-time initialization token for imageArchiveManager != -1)
  {
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  v46 = __swift_project_value_buffer(v45, static Logger.imageArchiveManager);
  v47 = v190;
  v48 = v184;
  v181 = *(v189 + 16);
  v182 = v189 + 16;
  (v181)(v184, v190, v44);
  v183 = v46;
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v49, v50))
  {
    v51 = swift_slowAlloc();
    v52 = swift_slowAlloc();
    v193 = v52;
    *v51 = 136315138;
    v53 = URL.path.getter();
    v54 = v48;
    v55 = v44;
    v56 = v38;
    v57 = v37;
    v59 = v58;
    v56(v54, v55);
    v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v53, v59, &v193);
    v37 = v57;
    v38 = v56;
    v44 = v55;

    *(v51 + 4) = v60;
    v61 = v190;
    _os_log_impl(&_mh_execute_header, v49, v50, "[getImageArchvie] writing archive to %s", v51, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v52);
  }

  else
  {
    v61 = v47;

    v38(v48, v44);
  }

  v62 = v187;
  Data.write(to:options:)();
  v63 = v191;
  if (v62)
  {
    goto LABEL_32;
  }

  v64 = objc_opt_self();
  URL._bridgeToObjectiveC()(v65);
  v67 = v66;
  URL._bridgeToObjectiveC()(v68);
  v70 = v69;
  [v64 unarchive:v67 toLocation:v69];

  v71 = [v177 defaultManager];
  URL._bridgeToObjectiveC()(v72);
  v74 = v73;
  v193 = 0;
  v75 = [v71 contentsOfDirectoryAtURL:v73 includingPropertiesForKeys:0 options:0 error:&v193];

  v76 = v193;
  if (!v75)
  {
    goto LABEL_30;
  }

  v77 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
  v78 = v76;

  v79 = *(v77 + 16);
  if (v79 != 1)
  {
    if (!v79)
    {

      v80 = Logger.logObject.getter();
      v81 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v80, v81))
      {
        v82 = swift_slowAlloc();
        *v82 = 0;
        _os_log_impl(&_mh_execute_header, v80, v81, "[getImageArchvie] No contents in archive", v82, 2u);
      }

      goto LABEL_29;
    }

    v86 = v172;
    v87 = v181;
    (v181)(v172, v63, v44);
    v88 = v173;
    v87(v173, v176, v44);
    v89 = Logger.logObject.getter();
    v90 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v89, v90))
    {
      v91 = swift_slowAlloc();
      v189 = 0;
      v92 = v91;
      v187 = swift_slowAlloc();
      v193 = v187;
      *v92 = 136315394;
      LODWORD(v186) = v90;
      v93 = URL.path.getter();
      v94 = v86;
      v95 = v88;
      v96 = v93;
      v98 = v97;
      v38(v94, v44);
      v99 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v96, v98, &v193);

      *(v92 + 4) = v99;
      *(v92 + 12) = 2080;
      v100 = URL.path.getter();
      v102 = v101;
      v38(v95, v44);
      v103 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v102, &v193);

      *(v92 + 14) = v103;
      _os_log_impl(&_mh_execute_header, v89, v186, "[getImageArchvie] move %s to %s", v92, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v38(v88, v44);
      v38(v86, v44);
    }

    v145 = [v177 defaultManager];
    URL._bridgeToObjectiveC()(v146);
    v148 = v147;
    URL._bridgeToObjectiveC()(v149);
    v151 = v150;
    v193 = 0;
    v152 = [v145 moveItemAtURL:v148 toURL:v150 error:&v193];

    if (v152)
    {
      v153 = v193;
LABEL_29:
      v38(v63, v44);
      v154 = v190;
      return (v38)(v154, v44);
    }

LABEL_30:
    v155 = v193;
    _convertNSErrorToError(_:)();

    swift_willThrow();
LABEL_31:
    v61 = v190;
LABEL_32:
    v38(v63, v44);
    v154 = v61;
    return (v38)(v154, v44);
  }

  v83 = v189;
  v186 = ((*(v83 + 80) + 32) & ~*(v83 + 80));
  v187 = v37;
  v84 = v175;
  (v181)(v175, &v186[v77], v44);
  (*(v83 + 56))(v84, 0, 1, v44);
  v85 = v174;
  outlined init with copy of (AnyHashable, Any)(v84, v174, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  if ((*(v83 + 48))(v85, 1, v44) == 1)
  {
    outlined destroy of NSObject?(v84, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined destroy of NSObject?(v85, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    v104 = v170;
    (*(v83 + 32))(v170, v85, v44);
    v105 = URL.isDirectory.getter();
    v38(v104, v44);
    outlined destroy of NSObject?(v84, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    if (v105)
    {
      if (!*(v77 + 16))
      {
        __break(1u);
      }

      v106 = v171;
      v107 = v181;
      (v181)(v171, &v186[v77], v44);

      v108 = v168;
      v107(v168, v106, v44);
      v109 = v169;
      v107(v169, v176, v44);
      v110 = Logger.logObject.getter();
      v111 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v110, v111))
      {
        v112 = swift_slowAlloc();
        v189 = 0;
        v113 = v112;
        v186 = swift_slowAlloc();
        v193 = v186;
        *v113 = 136315394;
        LODWORD(v185) = v111;
        v114 = URL.path.getter();
        v115 = v108;
        v116 = v109;
        v117 = v110;
        v118 = v114;
        v120 = v119;
        v38(v115, v44);
        v121 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v118, v120, &v193);

        *(v113 + 4) = v121;
        *(v113 + 12) = 2080;
        v122 = URL.path.getter();
        v124 = v123;
        v38(v116, v44);
        v125 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v122, v124, &v193);

        *(v113 + 14) = v125;
        _os_log_impl(&_mh_execute_header, v117, v185, "[getImageArchvie] move %s to %s", v113, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v38(v109, v44);
        v38(v108, v44);
      }

      v157 = [v177 defaultManager];
      URL._bridgeToObjectiveC()(v158);
      v160 = v159;
      URL._bridgeToObjectiveC()(v161);
      v163 = v162;
      v193 = 0;
      v164 = [v157 moveItemAtURL:v160 toURL:v162 error:&v193];

      if (v164)
      {
        v165 = v193;
        v38(v171, v44);
        goto LABEL_29;
      }

      v166 = v193;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v38(v171, v44);
      goto LABEL_31;
    }
  }

  v185 = v38;

  v126 = Logger.logObject.getter();
  v127 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v126, v127))
  {
    LODWORD(v184) = v127;
    v189 = 0;
    v128 = swift_slowAlloc();
    v179 = swift_slowAlloc();
    v193 = v179;
    v183 = v128;
    *v128 = 136315138;
    v192 = _swiftEmptyArrayStorage;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 0);
    v129 = v192;
    v130 = v180;
    (v181)(v180, &v186[v77], v44);
    v131 = URL.path.getter();
    v133 = v132;
    v134 = v185;
    v185(v130, v44);
    v192 = v129;
    v136 = v129[2];
    v135 = v129[3];
    if (v136 >= v135 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v135 > 1), v136 + 1, 1);
      v129 = v192;
    }

    v129[2] = v136 + 1;
    v137 = &v129[2 * v136];
    v137[4] = v131;
    v137[5] = v133;

    v138 = Array.description.getter();
    v140 = v139;

    v141 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v138, v140, &v193);

    v142 = v183;
    *(v183 + 4) = v141;
    _os_log_impl(&_mh_execute_header, v126, v184, "[getImageArchvie] unexpected contents in archive: %s", v142, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v179);

    v143 = v188;
    v134(v191, v188);
    return (v134)(v190, v143);
  }

  else
  {

    v156 = v185;
    v185(v63, v44);
    return (v156)(v190, v44);
  }
}

void specialized CAFDVehicleResourcesManager.carManager(_:didUpdateCurrentCar:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMd, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMR);
  __chkstk_darwin(v4 - 8);
  v6 = &v22[-1] - v5;
  if (one-time initialization token for imageArchiveManager != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.imageArchiveManager);
  v8 = a1;
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22[0] = v13;
    *v11 = 136315394;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000022, 0x80000001000440D0, v22);
    *(v11 + 12) = 2112;
    *(v11 + 14) = v8;
    *v12 = a1;
    v14 = v8;
    _os_log_impl(&_mh_execute_header, v9, v10, "%s currentCar updated to %@", v11, 0x16u);
    outlined destroy of NSObject?(v12, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_0(v13);
  }

  v15 = OBJC_IVAR____TtC13caraccessoryd27CAFDVehicleResourcesManager_currentCar;
  v16 = *&v2[OBJC_IVAR____TtC13caraccessoryd27CAFDVehicleResourcesManager_currentCar];
  if (v16)
  {
    [v16 unregisterObserver:v2];
  }

  v17 = type metadata accessor for CAFDVehicleResourcesManager.CustomImageArchiveInfo(0);
  (*(*(v17 - 8) + 56))(v6, 1, 1, v17);
  v18 = OBJC_IVAR____TtC13caraccessoryd27CAFDVehicleResourcesManager_archiveInfo;
  swift_beginAccess();
  outlined assign with take of CAFDVehicleResourcesManager.CustomImageArchiveInfo?(v6, &v2[v18]);
  swift_endAccess();
  v19 = *&v2[v15];
  *&v2[v15] = a1;

  if (a1)
  {
    v20 = v8;
    [v20 registerObserver:v2];
    [v2 carDidUpdateAccessories:v20];
  }
}

void type metadata completion function for CAFDVehicleResourcesManager(uint64_t a1)
{
  type metadata accessor for CAFDVehicleResourcesManager.CustomImageArchiveInfo?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for CAFDVehicleResourcesManager.CustomImageArchiveInfo?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CAFDVehicleResourcesManager.CustomImageArchiveInfo?)
  {
    type metadata accessor for CAFDVehicleResourcesManager.CustomImageArchiveInfo(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for CAFDVehicleResourcesManager.CustomImageArchiveInfo?);
    }
  }
}

uint64_t sub_1000365B0(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = type metadata accessor for Date();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_100036670(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for Date();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata completion function for CAFDVehicleResourcesManager.CustomImageArchiveInfo(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys and conformance CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys and conformance CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys and conformance CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys and conformance CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys and conformance CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys and conformance CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys and conformance CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys and conformance CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys and conformance CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys and conformance CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys and conformance CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys and conformance CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys and conformance CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys);
  }

  return result;
}

uint64_t outlined init with copy of CAFDVehicleResourcesManager.CustomImageArchiveInfo(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CAFDVehicleResourcesManager.CustomImageArchiveInfo(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type Date and conformance Date(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined assign with take of CAFDVehicleResourcesManager.CustomImageArchiveInfo?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMd, &_s13caraccessoryd27CAFDVehicleResourcesManagerC22CustomImageArchiveInfoVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

uint64_t sub_100036998()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t sub_1000369D0()
{

  return _swift_deallocObject(v0, 48, 7);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t outlined init with take of CAFDVehicleResourcesManager.CustomImageArchiveInfo(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CAFDVehicleResourcesManager.CustomImageArchiveInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of CAFDVehicleResourcesManager.CustomImageArchiveInfo(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t getEnumTagSinglePayload for CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CAFDVehicleResourcesManager.CustomImageArchiveInfo.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

id CAFDFramework.__allocating_init(carManager:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized CAFDFramework.init(carManager:)(a1);

  return v4;
}

id CAFDFramework.init(carManager:)(void *a1)
{
  v2 = specialized CAFDFramework.init(carManager:)(a1);

  return v2;
}

id CAFDFramework.__deallocating_deinit()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  __chkstk_darwin(v2);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.DaemonFramework.framework.getter();
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    *v8 = 0;
    _os_log_impl(&_mh_execute_header, v6, v7, "deinit CAFDFramework", v8, 2u);
  }

  (*(v3 + 8))(v5, v2);
  v9 = type metadata accessor for CAFDFramework();
  v11.receiver = v1;
  v11.super_class = v9;
  return objc_msgSendSuper2(&v11, "dealloc");
}

id specialized CAFDFramework.init(carManager:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Logger();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  static Logger.DaemonFramework.framework.getter();
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    *v10 = 0;
    _os_log_impl(&_mh_execute_header, v8, v9, "init CAFDFramework", v10, 2u);
  }

  (*(v5 + 8))(v7, v4);
  *&v2[OBJC_IVAR____TtC13caraccessoryd13CAFDFramework_carManager] = a1;
  v11 = objc_allocWithZone(LNDaemonConnectionListener);
  v12 = a1;
  v13 = String._bridgeToObjectiveC()();
  v14 = [v11 initWithBundleIdentifier:v13];

  *&v2[OBJC_IVAR____TtC13caraccessoryd13CAFDFramework_linkdConnectionListener] = v14;
  v15 = type metadata accessor for CAFDFramework();
  v17.receiver = v2;
  v17.super_class = v15;
  return objc_msgSendSuper2(&v17, "init");
}

id _CAFDSessionBoosted.init(connection:agent:)(void *a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v30 = *(v6 - 8);
  v31 = v6;
  __chkstk_darwin(v6);
  v29 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v8);
  v28[2] = v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v10 - 8);
  UUID.init()();
  *&v3[OBJC_IVAR____TtC13caraccessoryd19_CAFDSessionBoosted_connection] = a1;
  *&v3[OBJC_IVAR____TtC13caraccessoryd19_CAFDSessionBoosted_agent] = a2;
  v28[1] = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  aBlock = 0;
  v34 = 0xE000000000000000;
  v11 = a1;
  v32 = a2;
  _StringGuts.grow(_:)(41);

  aBlock = 0xD000000000000027;
  v34 = 0x8000000100044870;
  v40 = [v11 processIdentifier];
  v12._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v12);

  static DispatchQoS.userInteractive.getter();
  aBlock = _swiftEmptyArrayStorage;
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_0(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v30 + 104))(v29, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v31);
  *&v3[OBJC_IVAR____TtC13caraccessoryd19_CAFDSessionBoosted_workQueue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v13 = type metadata accessor for _CAFDSessionBoosted(0);
  v39.receiver = v3;
  v39.super_class = v13;
  v14 = objc_msgSendSuper2(&v39, "init");
  v15 = CRSessionBoostServiceInterface();
  [v11 setExportedInterface:v15];

  v16 = CRSessionBoostClientInterface();
  [v11 setRemoteObjectInterface:v16];

  [v11 setExportedObject:v14];
  v17 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v37 = partial apply for closure #1 in _CAFDSessionBoosted.init(connection:agent:);
  v38 = v17;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v36 = &block_descriptor_32;
  v18 = _Block_copy(&aBlock);

  [v11 setInterruptionHandler:v18];
  _Block_release(v18);
  v19 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v37 = partial apply for closure #2 in _CAFDSessionBoosted.init(connection:agent:);
  v38 = v19;
  aBlock = _NSConcreteStackBlock;
  v34 = 1107296256;
  v35 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v36 = &block_descriptor_36_0;
  v20 = _Block_copy(&aBlock);

  [v11 setInvalidationHandler:v20];
  _Block_release(v20);
  [v11 activate];
  if (one-time initialization token for sessionBoost != -1)
  {
    swift_once();
  }

  v21 = type metadata accessor for Logger();
  __swift_project_value_buffer(v21, static Logger.sessionBoost);
  v22 = Logger.logObject.getter();
  v23 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v22, v23))
  {
    v24 = swift_slowAlloc();
    v25 = swift_slowAlloc();
    *v24 = 138412290;
    *(v24 + 4) = v14;
    *v25 = v14;
    v26 = v14;
    _os_log_impl(&_mh_execute_header, v22, v23, "[XPC Proxy] connection ready for %@", v24, 0xCu);
    outlined destroy of NSObject?(v25, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  return v14;
}

void closure #1 in _CAFDSessionBoosted.init(connection:agent:)(uint64_t a1, const char *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (one-time initialization token for sessionBoost != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.sessionBoost);
    v6 = v4;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v6;
      *v10 = v4;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, v8, a2, v9, 0xCu);
      outlined destroy of NSObject?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    }

    v12 = *&v6[OBJC_IVAR____TtC13caraccessoryd19_CAFDSessionBoosted_agent];
    CAFDSessionBoostServiceAgent.remove(connection:)(v6);
  }
}

unint64_t _CAFDSessionBoosted.description.getter()
{
  _StringGuts.grow(_:)(41);

  [*(v0 + OBJC_IVAR____TtC13caraccessoryd19_CAFDSessionBoosted_connection) processIdentifier];
  v1._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v1);

  v2._countAndFlagsBits = 0x6669746E65646920;
  v2._object = 0xEC0000003D726569;
  String.append(_:)(v2);
  type metadata accessor for UUID();
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, &type metadata accessor for UUID, &protocol conformance descriptor for UUID);
  v3._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v3);

  v4._countAndFlagsBits = 62;
  v4._object = 0xE100000000000000;
  String.append(_:)(v4);
  return 0xD000000000000018;
}

uint64_t _CAFDSessionBoosted.boostSession(for:)(char a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v16 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for DispatchQoS();
  v7 = *(v15 - 8);
  __chkstk_darwin(v15);
  v9 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v2 + OBJC_IVAR____TtC13caraccessoryd19_CAFDSessionBoosted_workQueue);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in _CAFDSessionBoosted.boostSession(for:);
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_21;
  v12 = _Block_copy(aBlock);

  static DispatchQoS.unspecified.getter();
  v17 = _swiftEmptyArrayStorage;
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_0(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v16 + 8))(v6, v4);
  (*(v7 + 8))(v9, v15);
}

void closure #1 in _CAFDSessionBoosted.boostSession(for:)(uint64_t a1, unsigned __int8 a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v39 = a2;
    v5 = OBJC_IVAR____TtC13caraccessoryd19_CAFDSessionBoosted_agent;
    p_cb = &OBJC_PROTOCOL___CAFDeepLinkSettingObserver.cb;
    v7 = [*(*(Strong + OBJC_IVAR____TtC13caraccessoryd19_CAFDSessionBoosted_agent) + OBJC_IVAR____TtC13caraccessoryd28CAFDSessionBoostServiceAgent_sessionStatus) currentSession];
    if (one-time initialization token for sessionBoost != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, static Logger.sessionBoost);
    v9 = v7;
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v10, v11))
    {
      v37 = v7;
      v38 = v5;
      v12 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v12 = 136315650;
      *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x8000000100044770, &v40);
      *(v12 + 12) = 2080;
      v14 = 0xE800000000000000;
      v15 = 0x80000001000447B0;
      v16 = 0x8000000100044790;
      v17 = 0xD000000000000010;
      if (a2 != 3)
      {
        v17 = 0x556E6F6973736573;
        v16 = 0xEE00646574616470;
      }

      if (a2 == 2)
      {
        v17 = 0xD000000000000013;
      }

      else
      {
        v15 = v16;
      }

      if (a2)
      {
        v18 = 0xD000000000000013;
      }

      else
      {
        v18 = 0x6574617669746361;
      }

      if (a2)
      {
        v14 = 0x80000001000447D0;
      }

      if (a2 <= 1u)
      {
        v19 = v18;
      }

      else
      {
        v19 = v17;
      }

      if (a2 <= 1u)
      {
        v20 = v14;
      }

      else
      {
        v20 = v15;
      }

      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v40);

      *(v12 + 14) = v21;
      *(v12 + 22) = 2112;
      *(v12 + 24) = v9;
      *v13 = v37;
      v22 = v9;
      _os_log_impl(&_mh_execute_header, v10, v11, "%s reason=%s currentSession=%@", v12, 0x20u);
      outlined destroy of NSObject?(v13, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

      swift_arrayDestroy();

      v5 = v38;
      p_cb = (&OBJC_PROTOCOL___CAFDeepLinkSettingObserver + 64);
      if (v9)
      {
        goto LABEL_22;
      }
    }

    else
    {

      if (v9)
      {
LABEL_22:

        return;
      }
    }

    [*(*&v4[v5] + *(p_cb + 402)) waitForSessionInitialization];
    v23 = v4;
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *v26 = 136315650;
      *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x8000000100044770, &v40);
      *(v26 + 12) = 2080;
      v28 = 0xE800000000000000;
      v29 = 0x80000001000447B0;
      v30 = 0x8000000100044790;
      v31 = 0xD000000000000010;
      if (v39 != 3)
      {
        v31 = 0x556E6F6973736573;
        v30 = 0xEE00646574616470;
      }

      if (v39 == 2)
      {
        v31 = 0xD000000000000013;
      }

      else
      {
        v29 = v30;
      }

      if (v39)
      {
        v32 = 0xD000000000000013;
      }

      else
      {
        v32 = 0x6574617669746361;
      }

      if (v39)
      {
        v28 = 0x80000001000447D0;
      }

      if (v39 <= 1u)
      {
        v33 = v32;
      }

      else
      {
        v33 = v31;
      }

      if (v39 <= 1u)
      {
        v34 = v28;
      }

      else
      {
        v34 = v29;
      }

      v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v40);

      *(v26 + 14) = v35;
      *(v26 + 22) = 2112;
      v36 = [*(*&v4[v5] + OBJC_IVAR____TtC13caraccessoryd28CAFDSessionBoostServiceAgent_sessionStatus) currentSession];
      *(v26 + 24) = v36;
      *v27 = v36;
      _os_log_impl(&_mh_execute_header, v24, v25, "%s reason=%s after waitForSessionInitialization currentSession=%@", v26, 0x20u);
      outlined destroy of NSObject?(v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

      swift_arrayDestroy();
    }
  }
}

id _CAFDSessionBoosted.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for _CAFDSessionBoosted(0);
  return objc_msgSendSuper2(&v2, "dealloc");
}

Swift::Void __swiftcall _CAFDSessionBoosted.activate()()
{
  if (one-time initialization token for sessionBoost != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.sessionBoost);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v5 = 136315394;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6574617669746361, 0xEA00000000002928, &v9);
    *(v5 + 12) = 2112;
    *(v5 + 14) = v2;
    *v6 = v2;
    v8 = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "[Proxy] %s boosted by %@", v5, 0x16u);
    outlined destroy of NSObject?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  _CAFDSessionBoosted.boostSession(for:)(0);
}

Swift::Void __swiftcall _CAFDSessionBoosted.connectionAttempted()()
{
  if (one-time initialization token for sessionBoost != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.sessionBoost);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v5 = 136315394;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000100044750, &v9);
    *(v5 + 12) = 2112;
    *(v5 + 14) = v2;
    *v6 = v2;
    v8 = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "[Proxy] %s boosted by %@", v5, 0x16u);
    outlined destroy of NSObject?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  _CAFDSessionBoosted.boostSession(for:)(1);
}

Swift::Void __swiftcall _CAFDSessionBoosted.connectionRequested()()
{
  if (one-time initialization token for sessionBoost != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.sessionBoost);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v5 = 136315394;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000015, 0x8000000100044730, &v9);
    *(v5 + 12) = 2112;
    *(v5 + 14) = v2;
    *v6 = v2;
    v8 = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "[Proxy] %s boosted by %@", v5, 0x16u);
    outlined destroy of NSObject?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  _CAFDSessionBoosted.boostSession(for:)(2);
}

Swift::Void __swiftcall _CAFDSessionBoosted.sessionConnected()()
{
  if (one-time initialization token for sessionBoost != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.sessionBoost);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v5 = 136315394;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x8000000100044710, &v9);
    *(v5 + 12) = 2112;
    *(v5 + 14) = v2;
    *v6 = v2;
    v8 = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "[Proxy] %s boosted by %@", v5, 0x16u);
    outlined destroy of NSObject?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  _CAFDSessionBoosted.boostSession(for:)(3);
}

Swift::Void __swiftcall _CAFDSessionBoosted.sessionDidUpdate()()
{
  if (one-time initialization token for sessionBoost != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.sessionBoost);
  v2 = v0;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v9 = v7;
    *v5 = 136315394;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000012, 0x80000001000446F0, &v9);
    *(v5 + 12) = 2112;
    *(v5 + 14) = v2;
    *v6 = v2;
    v8 = v2;
    _os_log_impl(&_mh_execute_header, v3, v4, "[Proxy] %s boosted by %@", v5, 0x16u);
    outlined destroy of NSObject?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    __swift_destroy_boxed_opaque_existential_0(v7);
  }

  _CAFDSessionBoosted.boostSession(for:)(4);
}

char *CAFDSessionBoostServiceAgent.init(sessionStatus:)(void *a1)
{
  v2 = v1;
  v27 = a1;
  v26 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v3 = *(v26 - 8);
  __chkstk_darwin(v26);
  v5 = v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for OS_dispatch_queue.Attributes();
  __chkstk_darwin(v6);
  v7 = type metadata accessor for DispatchQoS();
  __chkstk_darwin(v7 - 8);
  v25 = OBJC_IVAR____TtC13caraccessoryd28CAFDSessionBoostServiceAgent_workQueue;
  v8 = type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for OS_dispatch_queue, OS_dispatch_queue_ptr);
  v24[0] = "com.apple.caraccessoryd.artwork";
  v24[1] = v8;
  static DispatchQoS.userInteractive.getter();
  v29 = _swiftEmptyArrayStorage;
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, &type metadata accessor for OS_dispatch_queue.Attributes, &protocol conformance descriptor for OS_dispatch_queue.Attributes);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_0(&lazy protocol witness table cache variable for type [OS_dispatch_queue.Attributes] and conformance [A], &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v5, enum case for OS_dispatch_queue.AutoreleaseFrequency.inherit(_:), v26);
  *&v1[v25] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  *&v1[OBJC_IVAR____TtC13caraccessoryd28CAFDSessionBoostServiceAgent_connections] = &_swiftEmptySetSingleton;
  v9 = v27;
  *&v1[OBJC_IVAR____TtC13caraccessoryd28CAFDSessionBoostServiceAgent_sessionStatus] = v27;
  v10 = objc_allocWithZone(NSXPCListener);
  v11 = v9;
  v12 = String._bridgeToObjectiveC()();
  v13 = [v10 initWithMachServiceName:v12];

  *&v2[OBJC_IVAR____TtC13caraccessoryd28CAFDSessionBoostServiceAgent_listener] = v13;
  v14 = type metadata accessor for CAFDSessionBoostServiceAgent();
  v28.receiver = v2;
  v28.super_class = v14;
  v15 = objc_msgSendSuper2(&v28, "init");
  v16 = one-time initialization token for sessionBoost;
  v17 = v15;
  if (v16 != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.sessionBoost);
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&_mh_execute_header, v19, v20, "CAFDSessionBoostServiceAgent init", v21, 2u);
  }

  v22 = OBJC_IVAR____TtC13caraccessoryd28CAFDSessionBoostServiceAgent_listener;
  [*&v17[OBJC_IVAR____TtC13caraccessoryd28CAFDSessionBoostServiceAgent_listener] setDelegate:v17];
  [*&v17[v22] resume];

  return v17;
}

id CAFDSessionBoostServiceAgent.__deallocating_deinit()
{
  v1 = v0;
  if (one-time initialization token for sessionBoost != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.sessionBoost);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&_mh_execute_header, v3, v4, "CAFDSessionBoostServiceAgent deinit", v5, 2u);
  }

  v7.receiver = v1;
  v7.super_class = type metadata accessor for CAFDSessionBoostServiceAgent();
  return objc_msgSendSuper2(&v7, "dealloc");
}

uint64_t CAFDSessionBoostServiceAgent.remove(connection:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v17 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS();
  v7 = *(v16 - 8);
  __chkstk_darwin(v16);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(v2 + OBJC_IVAR____TtC13caraccessoryd28CAFDSessionBoostServiceAgent_workQueue);
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  *(v11 + 16) = v10;
  *(v11 + 24) = a1;
  aBlock[4] = partial apply for closure #1 in CAFDSessionBoostServiceAgent.remove(connection:);
  aBlock[5] = v11;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_5;
  v12 = _Block_copy(aBlock);

  v13 = a1;
  static DispatchQoS.unspecified.getter();
  v18 = _swiftEmptyArrayStorage;
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_0(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  dispatch thunk of SetAlgebra.init<A>(_:)();
  OS_dispatch_queue.async(group:qos:flags:execute:)();
  _Block_release(v12);
  (*(v17 + 8))(v6, v4);
  (*(v7 + 8))(v9, v16);
}

void closure #1 in CAFDSessionBoostServiceAgent.remove(connection:)(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (one-time initialization token for sessionBoost != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.sessionBoost);
    v6 = a2;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      *v9 = 138412290;
      *(v9 + 4) = v6;
      *v10 = v6;
      v11 = v6;
      _os_log_impl(&_mh_execute_header, v7, v8, "removing connection %@", v9, 0xCu);
      outlined destroy of NSObject?(v10, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    }

    swift_beginAccess();
    v12 = specialized Set._Variant.remove(_:)(v6);
    swift_endAccess();
  }
}

void closure #1 in CAFDSessionBoostServiceAgent.listener(_:shouldAcceptNewConnection:)(uint64_t a1, void *a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    objc_allocWithZone(type metadata accessor for _CAFDSessionBoosted(0));
    v5 = v4;
    v6 = _CAFDSessionBoosted.init(connection:agent:)(a2, v5);
    swift_beginAccess();
    v7 = v6;
    specialized Set._Variant.insert(_:)(&v9, v7);
    v8 = v9;
    swift_endAccess();
  }
}

uint64_t specialized CAFDSessionBoostServiceAgent.listener(_:shouldAcceptNewConnection:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for DispatchWorkItemFlags();
  v39 = *(v4 - 8);
  __chkstk_darwin(v4);
  v6 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for DispatchQoS();
  v38 = *(v7 - 8);
  __chkstk_darwin(v7);
  v9 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for sessionBoost != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v11 = __swift_project_value_buffer(v10, static Logger.sessionBoost);
  v12 = a1;
  v40 = v11;
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v13, v14))
  {
    v15 = v9;
    v16 = v6;
    v17 = v4;
    v18 = v7;
    v19 = v2;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    *v20 = 138412290;
    *(v20 + 4) = v12;
    *v21 = v12;
    v22 = v12;
    _os_log_impl(&_mh_execute_header, v13, v14, "[XPC] new connection from %@", v20, 0xCu);
    outlined destroy of NSObject?(v21, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);

    v2 = v19;
    v7 = v18;
    v4 = v17;
    v6 = v16;
    v9 = v15;
  }

  v23 = String._bridgeToObjectiveC()();
  v24 = [v12 valueForEntitlement:v23];

  if (v24)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v46 = 0u;
    v47 = 0u;
  }

  aBlock = v46;
  v42 = v47;
  if (*(&v47 + 1))
  {
    type metadata accessor for OS_dispatch_queue(0, &lazy cache variable for type metadata for NSNumber, NSNumber_ptr);
    if (swift_dynamicCast())
    {
      v25 = v45;
      if ([v45 BOOLValue])
      {
        v40 = *(v2 + OBJC_IVAR____TtC13caraccessoryd28CAFDSessionBoostServiceAgent_workQueue);
        v26 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v27 = swift_allocObject();
        *(v27 + 16) = v26;
        *(v27 + 24) = v12;
        v37 = v26;
        v43 = partial apply for closure #1 in CAFDSessionBoostServiceAgent.listener(_:shouldAcceptNewConnection:);
        v44 = v27;
        *&aBlock = _NSConcreteStackBlock;
        *(&aBlock + 1) = 1107296256;
        *&v42 = thunk for @escaping @callee_guaranteed @Sendable () -> ();
        *(&v42 + 1) = &block_descriptor_28;
        v28 = _Block_copy(&aBlock);
        v29 = v12;

        static DispatchQoS.unspecified.getter();
        *&v46 = _swiftEmptyArrayStorage;
        _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, &type metadata accessor for DispatchWorkItemFlags, &protocol conformance descriptor for DispatchWorkItemFlags);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_0(&lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A], &_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
        dispatch thunk of SetAlgebra.init<A>(_:)();
        OS_dispatch_queue.async(group:qos:flags:execute:)();
        _Block_release(v28);

        (*(v39 + 8))(v6, v4);
        (*(v38 + 8))(v9, v7);

        return 1;
      }
    }
  }

  else
  {
    outlined destroy of NSObject?(&aBlock, &_sypSgMd, _sypSgMR);
  }

  v31 = v12;
  v32 = Logger.logObject.getter();
  v33 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v32, v33))
  {
    v34 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    *v34 = 138412290;
    *(v34 + 4) = v31;
    *v35 = v31;
    v36 = v31;
    _os_log_impl(&_mh_execute_header, v32, v33, "[XPC] Rejecting connection without entitlement %@", v34, 0xCu);
    outlined destroy of NSObject?(v35, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  }

  return 0;
}

uint64_t type metadata accessor for _CAFDSessionBoosted(uint64_t a1)
{
  result = type metadata singleton initialization cache for _CAFDSessionBoosted;
  if (!type metadata singleton initialization cache for _CAFDSessionBoosted)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for _CAFDSessionBoosted(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_10003A200()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_5(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t _sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGSayxGSTsWlTm_0(unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t sub_10003A2B0()
{

  return _swift_deallocObject(v0, 25, 7);
}

uint64_t _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t one-time initialization function for sessionBoost()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.sessionBoost);
  __swift_project_value_buffer(v0, static Logger.sessionBoost);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for imageArchiveManager()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.imageArchiveManager);
  __swift_project_value_buffer(v0, static Logger.imageArchiveManager);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for appLaunchManager()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.appLaunchManager);
  __swift_project_value_buffer(v0, static Logger.appLaunchManager);
  return Logger.init(subsystem:category:)();
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = URL.path(percentEncoded:)(percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}