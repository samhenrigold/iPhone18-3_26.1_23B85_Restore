uint64_t OnDeviceInferenceAssetRepository.metadataModelConfiguration(asset:)@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for String.Encoding();
  v19 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3, v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5, v8);
  v9 = type metadata accessor for URL();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  URL.appendingPathComponent(_:)();
  static String.Encoding.utf8.getter();
  String.init(contentsOf:encoding:)();
  if (!v1)
  {
    v18[1] = a1;
    static String.Encoding.utf8.getter();
    String.data(using:allowLossyConversion:)();
    v15 = v14;

    (*(v19 + 8))(v7, v3);
    if (v15 >> 60 == 15)
    {
      lazy protocol witness table accessor for type DataSourceError and conformance DataSourceError();
      swift_allocError();
      *v16 = 0;
      swift_willThrow();
    }

    else
    {
      ModelConfiguration.init(modelConfigurationData:)();
    }
  }

  return (*(v10 + 8))(v13, v9);
}

void *OnDeviceInferenceAssetRepository.deinit()
{

  __swift_destroy_boxed_opaque_existential_1((v0 + 192));
  __swift_destroy_boxed_opaque_existential_1((v0 + 232));
  swift_defaultActor_destroy();
  return v0;
}

uint64_t OnDeviceInferenceAssetRepository.__deallocating_deinit()
{
  OnDeviceInferenceAssetRepository.deinit();

  return MEMORY[0x282200960](v0);
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1)
{
  v3 = *v1;
  v4 = MEMORY[0x223D8F400](*(*v1 + 40), a1);
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
    specialized _NativeSet.copy()();
    v10 = v12;
  }

  v11 = *(*(v10 + 48) + 8 * v6);
  specialized _NativeSet._delete(at:)(v6);
  result = v11;
  *v1 = v12;
  return result;
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1, uint64_t a2)
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
    specialized _NativeSet.copy()();
    v14 = v16;
  }

  v12 = *(*(v14 + 48) + 16 * v8);
  specialized _NativeSet._delete(at:)(v8);
  *v2 = v16;
  return v12;
}

uint64_t specialized Set._Variant.remove(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v32 = a1;
  v11 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v12 = v10 + 56;
  v30 = v10 + 56;
  v31 = v10;
  v13 = -1 << *(v10 + 32);
  v14 = v11 & ~v13;
  if ((*(v12 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v27 = v2;
    v28 = v6;
    v29 = a2;
    v15 = ~v13;
    v18 = *(v6 + 16);
    v17 = v6 + 16;
    v16 = v18;
    v19 = *(v17 + 56);
    while (1)
    {
      v16(v9, *(v31 + 48) + v19 * v14, v5);
      lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v17 - 8))(v9, v5);
      if (v20)
      {
        break;
      }

      v14 = (v14 + 1) & v15;
      if (((*(v30 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        v21 = 1;
        v6 = v28;
        a2 = v29;
        return (*(v6 + 56))(a2, v21, 1, v5);
      }
    }

    v22 = v27;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v22;
    v33 = *v22;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized _NativeSet.copy()();
      v24 = v33;
    }

    v6 = v28;
    a2 = v29;
    (*(v28 + 32))(v29, *(v24 + 48) + v19 * v14, v5);
    specialized _NativeSet._delete(at:)(v14);
    v21 = 0;
    *v22 = v33;
  }

  else
  {
    v21 = 1;
  }

  return (*(v6 + 56))(a2, v21, 1, v5);
}

unint64_t specialized _NativeSet._delete(at:)(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(v3 + 32);
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
        v10 = *(v3 + 48);
        v11 = (v10 + 8 * v6);
        v12 = MEMORY[0x223D8F400](*(v3 + 40), *v11) & v7;
        if (v2 >= v9)
        {
          if (v12 >= v9 && v2 >= v12)
          {
LABEL_16:
            v15 = (v10 + 8 * v2);
            if (v2 != v6 || v15 >= v11 + 1)
            {
              *v15 = *v11;
              v2 = v6;
            }
          }
        }

        else if (v12 >= v9 || v2 >= v12)
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

  v16 = *(v3 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v18;
    ++*(v3 + 36);
  }

  return result;
}

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

uint64_t specialized _NativeSet._delete(at:)(int64_t a1)
{
  v3 = type metadata accessor for UUID();
  v4 = *(v3 - 8);
  result = MEMORY[0x28223BE20](v3, v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v10 = *v1 + 56;
  v11 = -1 << *(*v1 + 32);
  v12 = (a1 + 1) & ~v11;
  if (((1 << v12) & *(v10 + 8 * (v12 >> 6))) != 0)
  {
    v13 = ~v11;

    v14 = _HashTable.previousHole(before:)();
    if ((*(v10 + 8 * (v12 >> 6)) & (1 << v12)) != 0)
    {
      v15 = v13;
      v16 = (v14 + 1) & v13;
      v36 = *(v4 + 16);
      v37 = v4 + 16;
      v17 = *(v4 + 72);
      v34 = (v4 + 8);
      v35 = v10;
      v18 = v17;
      do
      {
        v19 = v18;
        v20 = v18 * v12;
        v36(v8, *(v9 + 48) + v18 * v12, v3);
        v21 = v9;
        v22 = v16;
        v23 = v15;
        v24 = v21;
        lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
        v25 = dispatch thunk of Hashable._rawHashValue(seed:)();
        (*v34)(v8, v3);
        v26 = v25 & v23;
        v15 = v23;
        v16 = v22;
        if (a1 >= v22)
        {
          if (v26 >= v22 && a1 >= v26)
          {
LABEL_16:
            v9 = v24;
            v29 = *(v24 + 48);
            v18 = v19;
            v30 = v19 * a1;
            if (v19 * a1 < v20 || v29 + v19 * a1 >= (v29 + v20 + v19))
            {
              swift_arrayInitWithTakeFrontToBack();
              a1 = v12;
            }

            else
            {
              a1 = v12;
              if (v30 != v20)
              {
                swift_arrayInitWithTakeBackToFront();
                a1 = v12;
              }
            }

            goto LABEL_5;
          }
        }

        else if (v26 >= v22 || a1 >= v26)
        {
          goto LABEL_16;
        }

        v9 = v24;
        v18 = v19;
LABEL_5:
        v12 = (v12 + 1) & v15;
        v10 = v35;
      }

      while (((*(v35 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
    }

    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  else
  {
    *(v10 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v31 = *(v9 + 16);
  v32 = __OFSUB__(v31, 1);
  v33 = v31 - 1;
  if (v32)
  {
    __break(1u);
  }

  else
  {
    *(v9 + 16) = v33;
    ++*(v9 + 36);
  }

  return result;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  v30 = type metadata accessor for OnDeviceInferenceAssetObjectE5Runner(0);
  v31 = &protocol witness table for OnDeviceInferenceAssetObjectE5Runner;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v29);
  outlined init with take of OnDeviceInferenceAssetObjectE5Runner(a1, boxed_opaque_existential_1, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
  v11 = *a5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v14 = v11[2];
  v15 = (v12 & 1) == 0;
  v16 = v14 + v15;
  if (__OFADD__(v14, v15))
  {
    __break(1u);
    goto LABEL_14;
  }

  v17 = v12;
  v18 = v11[3];
  if (v18 >= v16 && (a4 & 1) != 0)
  {
LABEL_7:
    v19 = *a5;
    if (v17)
    {
LABEL_8:
      v20 = (v19[7] + 40 * v13);
      __swift_destroy_boxed_opaque_existential_1(v20);
      return outlined init with take of RandomNumberGenerator(&v29, v20);
    }

    goto LABEL_11;
  }

  if (v18 >= v16 && (a4 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
  v22 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v17 & 1) != (v23 & 1))
  {
LABEL_14:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

  v13 = v22;
  v19 = *a5;
  if (v17)
  {
    goto LABEL_8;
  }

LABEL_11:
  v24 = __swift_mutable_project_boxed_opaque_existential_1(&v29, v30);
  MEMORY[0x28223BE20](v24, v24);
  v26 = &v28 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v27 + 16))(v26);
  specialized _NativeDictionary._insert(at:key:value:)(v13, a2, a3, v26, v19);

  return __swift_destroy_boxed_opaque_existential_1(&v29);
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v17 = type metadata accessor for OnDeviceInferenceAssetObjectE5Runner(0);
  v18 = &protocol witness table for OnDeviceInferenceAssetObjectE5Runner;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v16);
  outlined init with take of OnDeviceInferenceAssetObjectE5Runner(a4, boxed_opaque_existential_1, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v11 = (a5[6] + 16 * a1);
  *v11 = a2;
  v11[1] = a3;
  result = outlined init with take of RandomNumberGenerator(&v16, a5[7] + 40 * a1);
  v13 = a5[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v15;
  }

  return result;
}

{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for AppAssetGarbageCollector.Manifest.Entry(0);
  result = outlined init with take of AppAssetGarbageCollector.Manifest.Entry(a4, v9 + *(*(v10 - 8) + 72) * a1, type metadata accessor for AppAssetGarbageCollector.Manifest.Entry);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = type metadata accessor for NDArray.Buffer();
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

{
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v8 = (a5[6] + 16 * a1);
  *v8 = a2;
  v8[1] = a3;
  v9 = a5[7];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCyyts5NeverOGMd, &_sScCyyts5NeverOGMR);
  result = (*(*(v10 - 8) + 32))(v9 + *(*(v10 - 8) + 72) * a1, a4, v10);
  v12 = a5[2];
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v14;
  }

  return result;
}

double specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  *a2 = *a1;
  *(a2 + 8) = v2;
  *(a2 + 16) = v3;
  *(a2 + 24) = v4;
  *(a2 + 32) = v5;

  return outlined copy of MetadataSpecialToken(v3, v4, v5);
}

uint64_t specialized static OnDeviceInferenceAssetObjectBaseModel.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for Asset(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference5AssetVSgMd, &_s24TokenGenerationInference5AssetVSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference5AssetVSg_ADtMd, &_s24TokenGenerationInference5AssetVSg_ADtMR);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v28 - v15;
  if (*a1 == *a2 || (v17 = 0, (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {
    v29 = v8;
    v18 = *(type metadata accessor for OnDeviceInferenceAssetObjectBaseModel(0) + 20);
    v19 = *(v13 + 48);
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(a1 + v18, v16, &_s24TokenGenerationInference5AssetVSgMd, &_s24TokenGenerationInference5AssetVSgMR);
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(a2 + v18, &v16[v19], &_s24TokenGenerationInference5AssetVSgMd, &_s24TokenGenerationInference5AssetVSgMR);
    v20 = *(v5 + 48);
    if (v20(v16, 1, v4) == 1)
    {
      if (v20(&v16[v19], 1, v4) == 1)
      {
        outlined destroy of [Int](v16, &_s24TokenGenerationInference5AssetVSgMd, &_s24TokenGenerationInference5AssetVSgMR);
        v17 = 1;
        return v17 & 1;
      }

LABEL_8:
      outlined destroy of [Int](v16, &_s24TokenGenerationInference5AssetVSg_ADtMd, &_s24TokenGenerationInference5AssetVSg_ADtMR);
      v17 = 0;
      return v17 & 1;
    }

    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v16, v12, &_s24TokenGenerationInference5AssetVSgMd, &_s24TokenGenerationInference5AssetVSgMR);
    if (v20(&v16[v19], 1, v4) == 1)
    {
      outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v12, type metadata accessor for Asset);
      goto LABEL_8;
    }

    v21 = v29;
    outlined init with take of OnDeviceInferenceAssetObjectE5Runner(&v16[v19], v29, type metadata accessor for Asset);
    if (static URL.== infix(_:_:)())
    {
      v22 = *(v4 + 20);
      v23 = *&v12[v22];
      v24 = *&v12[v22 + 8];
      v25 = (v21 + v22);
      if (v23 == *v25 && v24 == v25[1])
      {
        v17 = 1;
      }

      else
      {
        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }
    }

    else
    {
      v17 = 0;
    }

    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v21, type metadata accessor for Asset);
    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v12, type metadata accessor for Asset);
    outlined destroy of [Int](v16, &_s24TokenGenerationInference5AssetVSgMd, &_s24TokenGenerationInference5AssetVSgMR);
  }

  return v17 & 1;
}

uint64_t specialized static OnDeviceInferenceAssetObjectTokenizer.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for Asset(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference5AssetVSgMd, &_s24TokenGenerationInference5AssetVSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v42 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference5AssetVSg_ADtMd, &_s24TokenGenerationInference5AssetVSg_ADtMR);
  MEMORY[0x28223BE20](v13, v14);
  v16 = &v42 - v15;
  if (*a1 != *a2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_24;
  }

  type metadata accessor for TokenizerRunner();
  v17 = type metadata accessor for OnDeviceInferenceAssetObjectTokenizer(0);
  if ((static TokenizerRunner.== infix(_:_:)() & 1) == 0 || *(a1 + v17[7]) != *(a2 + v17[7]))
  {
    goto LABEL_24;
  }

  v18 = v17[5];
  v19 = *(v13 + 48);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(a1 + v18, v16, &_s24TokenGenerationInference5AssetVSgMd, &_s24TokenGenerationInference5AssetVSgMR);
  v43 = v19;
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(a2 + v18, &v16[v19], &_s24TokenGenerationInference5AssetVSgMd, &_s24TokenGenerationInference5AssetVSgMR);
  v20 = *(v5 + 48);
  if (v20(v16, 1, v4) != 1)
  {
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v16, v12, &_s24TokenGenerationInference5AssetVSgMd, &_s24TokenGenerationInference5AssetVSgMR);
    v21 = v43;
    if (v20(&v16[v43], 1, v4) != 1)
    {
      outlined init with take of OnDeviceInferenceAssetObjectE5Runner(&v16[v21], v8, type metadata accessor for Asset);
      if (static URL.== infix(_:_:)())
      {
        v24 = *(v4 + 20);
        v25 = *&v12[v24];
        v26 = *&v12[v24 + 8];
        v27 = &v8[v24];
        v28 = v25 == *v27 && v26 == *(v27 + 1);
        if (v28 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v8, type metadata accessor for Asset);
          outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v12, type metadata accessor for Asset);
          goto LABEL_18;
        }
      }

      outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v8, type metadata accessor for Asset);
      outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v12, type metadata accessor for Asset);
      v22 = &_s24TokenGenerationInference5AssetVSgMd;
      v23 = &_s24TokenGenerationInference5AssetVSgMR;
LABEL_23:
      outlined destroy of [Int](v16, v22, v23);
      goto LABEL_24;
    }

    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v12, type metadata accessor for Asset);
LABEL_10:
    v22 = &_s24TokenGenerationInference5AssetVSg_ADtMd;
    v23 = &_s24TokenGenerationInference5AssetVSg_ADtMR;
    goto LABEL_23;
  }

  if (v20(&v16[v43], 1, v4) != 1)
  {
    goto LABEL_10;
  }

LABEL_18:
  outlined destroy of [Int](v16, &_s24TokenGenerationInference5AssetVSgMd, &_s24TokenGenerationInference5AssetVSgMR);
  v29 = v17[8];
  v30 = *(a1 + v29);
  v31 = *(a2 + v29);
  if (v30)
  {
    if (!v31)
    {
      goto LABEL_24;
    }

    v32 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSTt1g5(v30, v31);

    if ((v32 & 1) == 0)
    {
      goto LABEL_24;
    }
  }

  else if (v31)
  {
    goto LABEL_24;
  }

  v35 = v17[9];
  v36 = *(a1 + v35);
  v37 = *(a2 + v35);
  if (!v36)
  {
    if (!v37)
    {
      goto LABEL_32;
    }

LABEL_24:
    v33 = 0;
    return v33 & 1;
  }

  if (!v37)
  {
    goto LABEL_24;
  }

  v38 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSTt1g5(v36, v37);

  if ((v38 & 1) == 0)
  {
    goto LABEL_24;
  }

LABEL_32:
  v39 = v17[10];
  v40 = *(a1 + v39);
  v41 = *(a2 + v39);
  v33 = (v40 | v41) == 0;
  if (v40 && v41)
  {
    v33 = _sSasSQRzlE2eeoiySbSayxG_ABtFZSi_Tt1g5(v40, v41);
  }

  return v33 & 1;
}

BOOL specialized static OnDeviceE5ImageTokenizerConfiguration.== infix(_:_:)(int64x2_t *a1, int64x2_t *a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_s64(*a1, *a2), vceqq_s64(a1[1], a2[1])))) & 1) != 0 && a1[2].i64[0] == a2[2].i64[0] && a1[2].i64[1] == a2[2].i64[1])
  {
    return a1[3].i64[0] == a2[3].i64[0];
  }

  return result;
}

__n128 __swift_memcpy56_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for OnDeviceE5ImageTokenizerConfiguration(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 56))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for OnDeviceE5ImageTokenizerConfiguration(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
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

  *(result + 56) = v3;
  return result;
}

void type metadata completion function for OnDeviceInferenceSuspendedFetch(uint64_t a1)
{
  type metadata accessor for [String](319, &lazy cache variable for type metadata for [String], MEMORY[0x277D837D0], MEMORY[0x277D83940]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for CheckedContinuation<(), Never>();
    if (v2 <= 0x3F)
    {
      type metadata accessor for UUID();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for CheckedContinuation<(), Never>()
{
  if (!lazy cache variable for type metadata for CheckedContinuation<(), Never>)
  {
    v0 = type metadata accessor for CheckedContinuation();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for CheckedContinuation<(), Never>);
    }
  }
}

uint64_t specialized static OnDeviceInferenceAssetObjectE5Runner.== infix(_:_:)(void *a1, void *a2)
{
  v4 = type metadata accessor for PromptPreprocessingTemplateVersion();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v117 = &v112 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMR);
  MEMORY[0x28223BE20](v8 - 8, v9);
  v118 = &v112 - v10;
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSg_ADtMd, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSg_ADtMR);
  MEMORY[0x28223BE20](v119, v11);
  v120 = &v112 - v12;
  v13 = type metadata accessor for Asset(0);
  v127 = *(v13 - 8);
  v128 = v13;
  v15 = MEMORY[0x28223BE20](v13, v14);
  v121 = &v112 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15, v17);
  v123 = &v112 - v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference5AssetVSgMd, &_s24TokenGenerationInference5AssetVSgMR);
  v21 = MEMORY[0x28223BE20](v19 - 8, v20);
  v122 = &v112 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21, v23);
  v125 = &v112 - v24;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference5AssetVSg_ADtMd, &_s24TokenGenerationInference5AssetVSg_ADtMR);
  v26 = MEMORY[0x28223BE20](v129, v25);
  v124 = &v112 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26, v28);
  v126 = &v112 - v29;
  v30 = type metadata accessor for UUID();
  v31 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v32);
  v34 = &v112 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v35 - 8, v36);
  v38 = &v112 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSg_ADtMd, &_s10Foundation4UUIDVSg_ADtMR);
  MEMORY[0x28223BE20](v39, v40);
  v42 = &v112 - v41;
  if (*a1 != *a2 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (a1[2] != a2[2] || a1[3] != a2[3]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_8;
  }

  v43 = type metadata accessor for OnDeviceInferenceAssetObjectE5Runner(0);
  if (*(a1 + v43[7]) != *(a2 + v43[7]) || *(a1 + v43[8]) != *(a2 + v43[8]))
  {
    goto LABEL_8;
  }

  v114 = v5;
  v115 = v4;
  v46 = v43[10];
  v47 = *(a1 + v46);
  v48 = *(a2 + v46);
  if (v47)
  {
    if (!v48)
    {
      goto LABEL_8;
    }

    v116 = v43;

    v49 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_24TokenGenerationInference015MetadataSpecialB0OTt1g5(v47, v48);

    v43 = v116;
    if ((v49 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v48)
  {
    goto LABEL_8;
  }

  if (*(a1 + v43[11]) != *(a2 + v43[11]))
  {
    goto LABEL_8;
  }

  v50 = v43[12];
  v51 = *(a1 + v50);
  v52 = *(a2 + v50);
  if (v51)
  {
    if (!v52)
    {
      goto LABEL_8;
    }

    v116 = v43;

    v53 = _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SDySS24TokenGenerationInference015MetadataSpecialB0OGTt1g5(v51, v52);

    v43 = v116;
    if ((v53 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else if (v52)
  {
    goto LABEL_8;
  }

  v116 = v43;
  v54 = v43[13];
  v55 = *(v39 + 48);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(a1 + v54, v42, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v113 = v55;
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(a2 + v54, &v42[v55], &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v56 = v31;
  v57 = *(v31 + 48);
  if (v57(v42, 1, v30) == 1)
  {
    if (v57(&v42[v113], 1, v30) == 1)
    {
      outlined destroy of [Int](v42, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
      goto LABEL_28;
    }

LABEL_26:
    v59 = &_s10Foundation4UUIDVSg_ADtMd;
    v60 = &_s10Foundation4UUIDVSg_ADtMR;
    v61 = v42;
LABEL_47:
    outlined destroy of [Int](v61, v59, v60);
    goto LABEL_8;
  }

  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v42, v38, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  v58 = v113;
  if (v57(&v42[v113], 1, v30) == 1)
  {
    (*(v56 + 8))(v38, v30);
    goto LABEL_26;
  }

  (*(v56 + 32))(v34, &v42[v58], v30);
  lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
  v62 = dispatch thunk of static Equatable.== infix(_:_:)();
  v63 = *(v56 + 8);
  v63(v34, v30);
  v63(v38, v30);
  outlined destroy of [Int](v42, &_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  if ((v62 & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_28:
  v64 = v116[6];
  v65 = *(v129 + 48);
  v66 = v126;
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(a1 + v64, v126, &_s24TokenGenerationInference5AssetVSgMd, &_s24TokenGenerationInference5AssetVSgMR);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(a2 + v64, v66 + v65, &_s24TokenGenerationInference5AssetVSgMd, &_s24TokenGenerationInference5AssetVSgMR);
  v67 = v128;
  v68 = *(v127 + 48);
  if (v68(v66, 1, v128) != 1)
  {
    v69 = v125;
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v66, v125, &_s24TokenGenerationInference5AssetVSgMd, &_s24TokenGenerationInference5AssetVSgMR);
    if (v68(v66 + v65, 1, v67) != 1)
    {
      v70 = v66 + v65;
      v71 = v123;
      outlined init with take of OnDeviceInferenceAssetObjectE5Runner(v70, v123, type metadata accessor for Asset);
      if (static URL.== infix(_:_:)())
      {
        if (v72 = *(v67 + 20), v73 = *(v69 + v72), v74 = *(v69 + v72 + 8), v75 = (v71 + v72), v73 == *v75) && v74 == v75[1] || (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v71, type metadata accessor for Asset);
          outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v69, type metadata accessor for Asset);
          goto LABEL_39;
        }
      }

      outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v71, type metadata accessor for Asset);
      outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v69, type metadata accessor for Asset);
      v59 = &_s24TokenGenerationInference5AssetVSgMd;
      v60 = &_s24TokenGenerationInference5AssetVSgMR;
LABEL_46:
      v61 = v66;
      goto LABEL_47;
    }

    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v69, type metadata accessor for Asset);
LABEL_33:
    v59 = &_s24TokenGenerationInference5AssetVSg_ADtMd;
    v60 = &_s24TokenGenerationInference5AssetVSg_ADtMR;
    goto LABEL_46;
  }

  if (v68(v66 + v65, 1, v67) != 1)
  {
    goto LABEL_33;
  }

LABEL_39:
  outlined destroy of [Int](v66, &_s24TokenGenerationInference5AssetVSgMd, &_s24TokenGenerationInference5AssetVSgMR);
  v76 = v116[14];
  v77 = *(v129 + 48);
  v78 = v124;
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(a1 + v76, v124, &_s24TokenGenerationInference5AssetVSgMd, &_s24TokenGenerationInference5AssetVSgMR);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(a2 + v76, v78 + v77, &_s24TokenGenerationInference5AssetVSgMd, &_s24TokenGenerationInference5AssetVSgMR);
  if (v68(v78, 1, v67) == 1)
  {
    if (v68(v78 + v77, 1, v67) == 1)
    {
      goto LABEL_53;
    }

    goto LABEL_44;
  }

  v79 = v122;
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v78, v122, &_s24TokenGenerationInference5AssetVSgMd, &_s24TokenGenerationInference5AssetVSgMR);
  if (v68(v78 + v77, 1, v67) == 1)
  {
    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v79, type metadata accessor for Asset);
LABEL_44:
    v59 = &_s24TokenGenerationInference5AssetVSg_ADtMd;
    v60 = &_s24TokenGenerationInference5AssetVSg_ADtMR;
    v61 = v78;
    goto LABEL_47;
  }

  v80 = v121;
  outlined init with take of OnDeviceInferenceAssetObjectE5Runner(v78 + v77, v121, type metadata accessor for Asset);
  if ((static URL.== infix(_:_:)() & 1) == 0 || ((v81 = *(v67 + 20), v82 = *(v79 + v81), v83 = *(v79 + v81 + 8), v84 = (v80 + v81), v82 != *v84) || v83 != v84[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v80, type metadata accessor for Asset);
    outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v79, type metadata accessor for Asset);
    v59 = &_s24TokenGenerationInference5AssetVSgMd;
    v60 = &_s24TokenGenerationInference5AssetVSgMR;
    v61 = v78;
    goto LABEL_47;
  }

  outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v80, type metadata accessor for Asset);
  outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v79, type metadata accessor for Asset);
LABEL_53:
  outlined destroy of [Int](v78, &_s24TokenGenerationInference5AssetVSgMd, &_s24TokenGenerationInference5AssetVSgMR);
  v85 = v116[16];
  v86 = (a1 + v85);
  v87 = *(a1 + v85 + 8);
  v88 = (a2 + v85);
  v44 = v88[1];
  if (!v87)
  {
    if (v44)
    {
      goto LABEL_8;
    }

    goto LABEL_59;
  }

  if (!v44)
  {
    return v44 & 1;
  }

  v89 = *v86;
  v90 = v86[2];
  v91 = *v88;
  v92 = v88[2];

  v93 = specialized static ClassifierMetadata.== infix(_:_:)(v89, v87, v90, v91, v44, v92);

  if (v93)
  {
LABEL_59:
    v94 = v116[17];
    v95 = (a1 + v94);
    v96 = *(a1 + v94 + 24);
    v97 = (a2 + v94);
    v98 = v97[3];
    if (v96 == 1)
    {
      if (v98 != 1)
      {
        goto LABEL_8;
      }
    }

    else
    {
      if (v98 == 1)
      {
        goto LABEL_8;
      }

      v103 = v97[1];
      if (v95[1])
      {
        if ((v103 & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      else if (v103 & 1 | (*v95 != *v97))
      {
        goto LABEL_8;
      }

      if (v96)
      {
        if (!v98 || (v95[2] != v97[2] || v96 != v98) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
          goto LABEL_8;
        }
      }

      else if (v98)
      {
        goto LABEL_8;
      }
    }

    v99 = v116[18];
    v100 = v120;
    v101 = *(v119 + 48);
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(a1 + v99, v120, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMR);
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(a2 + v99, v100 + v101, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMR);
    v102 = *(v114 + 48);
    if (v102(v100, 1, v115) == 1)
    {
      if (v102(v120 + v101, 1, v115) == 1)
      {
        outlined destroy of [Int](v120, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMR);
        LOBYTE(v44) = 1;
        return v44 & 1;
      }
    }

    else
    {
      v104 = v120;
      outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v120, v118, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMR);
      if (v102(v104 + v101, 1, v115) != 1)
      {
        v105 = v114;
        v106 = v120;
        v107 = v120 + v101;
        v108 = v117;
        v109 = v115;
        (*(v114 + 32))(v117, v107, v115);
        lazy protocol witness table accessor for type InferenceError and conformance InferenceError(&lazy protocol witness table cache variable for type PromptPreprocessingTemplateVersion and conformance PromptPreprocessingTemplateVersion, 255, MEMORY[0x277D71ED8], MEMORY[0x277D71EE8]);
        v110 = v118;
        LOBYTE(v44) = dispatch thunk of static Equatable.== infix(_:_:)();
        v111 = *(v105 + 8);
        v111(v108, v109);
        v111(v110, v109);
        outlined destroy of [Int](v106, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMR);
        return v44 & 1;
      }

      (*(v114 + 8))(v118, v115);
    }

    v59 = &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSg_ADtMd;
    v60 = &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSg_ADtMR;
    v61 = v120;
    goto LABEL_47;
  }

LABEL_8:
  LOBYTE(v44) = 0;
  return v44 & 1;
}

uint64_t lazy protocol witness table accessor for type InferenceError and conformance InferenceError(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *, double), uint64_t a3, char a4, void *a5)
{
  v59 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v46 = v10;
  v47 = v6;
  while (v9)
  {
    v51 = a4;
    v16 = v11;
LABEL_14:
    v18 = __clz(__rbit64(v9)) | (v16 << 6);
    v19 = (*(a1 + 48) + 16 * v18);
    v20 = v19[1];
    v21 = *(a1 + 56) + 24 * v18;
    v22 = *v21;
    v23 = *(v21 + 8);
    v24 = *(v21 + 16);
    v57[0] = *v19;
    v57[1] = v20;
    v57[2] = v22;
    v57[3] = v23;
    v58 = v24;

    v25 = outlined copy of MetadataSpecialToken(v22, v23, v24);
    a2(&v52, v57, v25);

    outlined consume of MetadataSpecialToken(v22, v23, v24);
    v26 = v52;
    v27 = v53;
    v29 = v54;
    v28 = v55;
    v50 = v56;
    v30 = *v59;
    v32 = specialized __RawDictionaryStorage.find<A>(_:)(v52, v53);
    v33 = v30[2];
    v34 = (v31 & 1) == 0;
    v35 = v33 + v34;
    if (__OFADD__(v33, v34))
    {
      goto LABEL_25;
    }

    v36 = v31;
    if (v30[3] >= v35)
    {
      if ((v51 & 1) == 0)
      {
        specialized _NativeDictionary.copy()();
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v35, v51 & 1);
      v37 = specialized __RawDictionaryStorage.find<A>(_:)(v26, v27);
      if ((v36 & 1) != (v38 & 1))
      {
        goto LABEL_27;
      }

      v32 = v37;
    }

    v9 &= v9 - 1;
    v39 = *v59;
    if (v36)
    {

      v12 = v39[7] + 24 * v32;
      v13 = *v12;
      v14 = *(v12 + 8);
      v15 = *(v12 + 16);
      *v12 = v29;
      *(v12 + 8) = v28;
      *(v12 + 16) = v50;
      outlined consume of MetadataSpecialToken(v13, v14, v15);
    }

    else
    {
      v39[(v32 >> 6) + 8] |= 1 << v32;
      v40 = (v39[6] + 16 * v32);
      *v40 = v26;
      v40[1] = v27;
      v41 = v39[7] + 24 * v32;
      *v41 = v29;
      *(v41 + 8) = v28;
      *(v41 + 16) = v50;
      v42 = v39[2];
      v43 = __OFADD__(v42, 1);
      v44 = v42 + 1;
      if (v43)
      {
        goto LABEL_26;
      }

      v39[2] = v44;
    }

    a4 = 1;
    v11 = v16;
    v10 = v46;
    v6 = v47;
  }

  v17 = v11;
  while (1)
  {
    v16 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v16 >= v10)
    {
      outlined consume of [Int : (next: Int, logit: Float)].Iterator._Variant(a1);
    }

    v9 = *(v6 + 8 * v16);
    ++v17;
    if (v9)
    {
      v51 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

uint64_t specialized OnDeviceInferenceAssetRepository.specialTokensMap(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v13 - v6;
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(a1, &v13 - v6, &_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
  v8 = type metadata accessor for ModelMetadata(0);
  if ((*(*(v8 - 8) + 48))(v7, 1, v8) == 1)
  {
    outlined destroy of [Int](v7, &_s24TokenGenerationInference13ModelMetadataVSgMd, &_s24TokenGenerationInference13ModelMetadataVSgMR);
    return 0;
  }

  v9 = *(v7 + 4);

  outlined destroy of OnDeviceInferenceAssetObjectE5Runner(v7, type metadata accessor for ModelMetadata);
  if (!v9)
  {
    return 0;
  }

  if (*(a2 + 16))
  {
    v10 = *(a2 + 16);
  }

  else
  {
    v10 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_24TokenGenerationInference015MetadataSpecialC0OTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = v9;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v10, specialized thunk for @escaping @callee_guaranteed (@in_guaranteed A, @in_guaranteed B) -> (@out A, @out B), 0, isUniquelyReferenced_nonNull_native, &v14);

  return v14;
}

double outlined copy of StopToken?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4 != 1)
  {
  }

  return result;
}

uint64_t outlined consume of TokenizerMetadata?(uint64_t result, uint64_t a2)
{
  if (result != 1)
  {
  }

  return result;
}

double outlined copy of ClassifierMetadata?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }

  return result;
}

uint64_t outlined assign with take of UUID?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

void type metadata completion function for OnDeviceInferenceAssetInUsePlaceHolder(uint64_t a1)
{
  type metadata accessor for Asset?(319, &lazy cache variable for type metadata for Asset?, type metadata accessor for Asset);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t __swift_get_extra_inhabitant_index_107Tm(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference5AssetVSgMd, &_s24TokenGenerationInference5AssetVSgMR);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t __swift_store_extra_inhabitant_index_108Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference5AssetVSgMd, &_s24TokenGenerationInference5AssetVSgMR);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void type metadata completion function for OnDeviceInferenceAssetObjectImageTokenizer(uint64_t a1)
{
  type metadata accessor for BaseModel(319, &lazy cache variable for type metadata for ImageEncoderRunner, &protocol descriptor for ImageEncoderRunner, 0);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Asset?(319, &lazy cache variable for type metadata for Asset?, type metadata accessor for Asset);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ImageEmbeddingCache();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t type metadata accessor for BaseModel(uint64_t a1, unint64_t *a2, uint64_t a3, char a4)
{
  result = *a2;
  if (!*a2)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t OnDeviceInferenceContext.maximumContextLength.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext____lazy_storage___maximumContextLength);
  if (*(v0 + OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext____lazy_storage___maximumContextLength + 8) != 1)
  {
    return *v1;
  }

  result = closure #1 in OnDeviceInferenceContext.maximumContextLength.getter(v0);
  *v1 = result;
  v1[8] = 0;
  return result;
}

uint64_t closure #1 in OnDeviceInferenceContext.maximumContextLength.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMR);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v6 = &v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v4, v7);
  v49 = &v44 - v9;
  v11 = MEMORY[0x28223BE20](v8, v10);
  v13 = &v44 - v12;
  MEMORY[0x28223BE20](v11, v14);
  v16 = &v44 - v15;
  v17 = type metadata accessor for OnDeviceInferenceAssetObjectE5Runner(0);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v44 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(a1 + 296);
  v22 = *(v21 + 16);
  v23 = v21 + 32;
  v25 = (v24 + 56);
  v26 = (v24 + 48);

  v50 = v21;
  if (v22)
  {
    v46 = v6;
    v47 = v20;
    v48 = v16;
    v27 = 0;
    v45 = v21 + 32;
    while (1)
    {
      outlined init with copy of DeterministicLanguageModelProtocol(v23, v51);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pMR);
      v28 = swift_dynamicCast();
      (*v25)(v13, v28 ^ 1u, 1, v17);
      v29 = (*v26)(v13, 1, v17);
      outlined destroy of [Int](v13, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMR);
      if (v29 != 1)
      {
        break;
      }

      ++v27;
      v23 += 40;
      if (v22 == v27)
      {
        goto LABEL_7;
      }
    }

    v22 = v27;
LABEL_7:
    v20 = v47;
    v16 = v48;
    v23 = v45;
    v6 = v46;
    v21 = v50;
  }

  v30 = *(v21 + 16);
  if (v22 == v30)
  {
    (*v25)(v16, 1, 1, v17);

    v31 = (*v26)(v16, 1, v17);
  }

  else
  {
    if (v22 >= v30)
    {
      __break(1u);
LABEL_16:
      outlined destroy of [Int](v16, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMR);
      if (one-time initialization token for device != -1)
      {
        goto LABEL_21;
      }

      while (1)
      {
        v40 = type metadata accessor for Logger();
        __swift_project_value_buffer(v40, static Log.device);
        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          _os_log_impl(&dword_220940000, v41, v42, "No E5RunnerAssetObjects present in the OnDeviceInferenceContext.", v43, 2u);
          MEMORY[0x223D90A10](v43, -1, -1);
        }

        __break(1u);
LABEL_20:
        __break(1u);
LABEL_21:
        swift_once();
      }
    }

    outlined init with copy of DeterministicLanguageModelProtocol(v23 + 40 * v22, v51);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pMR);
    v32 = v49;
    v33 = swift_dynamicCast();
    v34 = *v25;
    (*v25)(v32, v33 ^ 1u, 1, v17);
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v32, v6, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMR);
    v35 = *v26;
    if ((*v26)(v6, 1, v17) == 1)
    {
      goto LABEL_20;
    }

    outlined init with take of OnDeviceInferenceAssetObjectE5Runner(v6, v16);
    outlined destroy of [Int](v32, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMR);
    v34(v16, 0, 1, v17);

    v31 = v35(v16, 1, v17);
  }

  if (v31 == 1)
  {
    goto LABEL_16;
  }

  outlined init with take of OnDeviceInferenceAssetObjectE5Runner(v16, v20);
  v36 = *&v20[*(v17 + 28) + 8];
  ObjectType = swift_getObjectType();
  v38 = (*(v36 + 80))(ObjectType, v36);
  _s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVWOhTm_0(v20, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
  return v38;
}

uint64_t OnDeviceInferenceContext.assets.getter()
{
  v1 = OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext____lazy_storage___assets;
  if (*(v0 + OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext____lazy_storage___assets))
  {
    v2 = *(v0 + OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext____lazy_storage___assets);
  }

  else
  {
    v2 = closure #1 in OnDeviceInferenceContext.assets.getter(v0);
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t closure #1 in OnDeviceInferenceContext.assets.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference5AssetVSgMd, &_s24TokenGenerationInference5AssetVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = v24 - v4;
  v26 = type metadata accessor for ModelInformation.Asset();
  v6 = *(v26 - 8);
  MEMORY[0x28223BE20](v26, v7);
  v9 = v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(a1 + 296);
  v11 = *(v10 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v30 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
    v12 = v30;
    v13 = v10 + 32;
    v24[1] = v6 + 32;
    v25 = v6;
    do
    {
      v14 = v9;
      outlined init with copy of DeterministicLanguageModelProtocol(v13, v27);
      v15 = v28;
      v16 = v29;
      __swift_project_boxed_opaque_existential_1(v27, v28);
      (*(v16 + 8))(v15, v16);
      v17 = v28;
      v18 = v29;
      __swift_project_boxed_opaque_existential_1(v27, v28);
      (*(v18 + 16))(v17, v18);
      v19 = type metadata accessor for Asset(0);
      if ((*(*(v19 - 8) + 48))(v5, 1, v19) == 1)
      {
        outlined destroy of [Int](v5, &_s24TokenGenerationInference5AssetVSgMd, &_s24TokenGenerationInference5AssetVSgMR);
      }

      else
      {

        _s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVWOhTm_0(v5, type metadata accessor for Asset);
      }

      ModelInformation.Asset.init(identifier:version:metadata:)();
      __swift_destroy_boxed_opaque_existential_1(v27);
      v30 = v12;
      v9 = v14;
      v21 = *(v12 + 16);
      v20 = *(v12 + 24);
      v22 = v25;
      if (v21 >= v20 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
        v12 = v30;
      }

      *(v12 + 16) = v21 + 1;
      (*(v22 + 32))(v12 + ((*(v22 + 80) + 32) & ~*(v22 + 80)) + *(v22 + 72) * v21, v9, v26);
      v13 += 40;
      --v11;
    }

    while (v11);
  }

  return v12;
}

uint64_t OnDeviceInferenceContext.modelVersion.getter()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext____lazy_storage___modelVersion);
  v3 = *(v0 + OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext____lazy_storage___modelVersion);
  v4 = *(v0 + OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext____lazy_storage___modelVersion + 8);
  v5 = v3;
  if (v4 == 1)
  {
    v5 = closure #1 in OnDeviceInferenceContext.modelVersion.getter(v1);
    v6 = *v2;
    v7 = v2[1];
    *v2 = v5;
    v2[1] = v8;

    outlined consume of String??(v6, v7);
  }

  outlined copy of String??(v3, v4);
  return v5;
}

uint64_t closure #1 in OnDeviceInferenceContext.modelVersion.getter(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference5AssetVSgMd, &_s24TokenGenerationInference5AssetVSgMR);
  v4 = MEMORY[0x28223BE20](v2 - 8, v3);
  v61 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v8 = &v54 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMR);
  v11 = MEMORY[0x28223BE20](v9 - 8, v10);
  v13 = &v54 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v11, v14);
  v60 = &v54 - v16;
  v18 = MEMORY[0x28223BE20](v15, v17);
  v20 = &v54 - v19;
  MEMORY[0x28223BE20](v18, v21);
  v23 = &v54 - v22;
  v24 = type metadata accessor for OnDeviceInferenceAssetObjectE5Runner(0);
  MEMORY[0x28223BE20](v24, v25);
  v59 = &v54 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(a1 + 296);
  v28 = *(v27 + 16);
  v30 = (v29 + 56);
  v31 = (v29 + 48);

  v62 = v27;
  v58 = v27 + 32;
  if (v28)
  {
    v55 = v13;
    v56 = v23;
    v57 = v8;
    v32 = 0;
    v33 = v27 + 32;
    while (1)
    {
      outlined init with copy of DeterministicLanguageModelProtocol(v33, v63);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pMR);
      v34 = swift_dynamicCast();
      (*v30)(v20, v34 ^ 1u, 1, v24);
      v35 = (*v31)(v20, 1, v24);
      outlined destroy of [Int](v20, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMR);
      if (v35 != 1)
      {
        break;
      }

      ++v32;
      v33 += 40;
      if (v28 == v32)
      {
        goto LABEL_8;
      }
    }

    v28 = v32;
LABEL_8:
    v36 = v61;
    v27 = v62;
    v23 = v56;
    v8 = v57;
    v13 = v55;
  }

  else
  {
    v36 = v61;
  }

  v37 = *(v27 + 16);
  v38 = v60;
  if (v28 == v37)
  {
    (*v30)(v23, 1, 1, v24);

    v39 = (*v31)(v23, 1, v24);
  }

  else
  {
    if (v28 >= v37)
    {
      __break(1u);
LABEL_23:
      outlined destroy of [Int](v23, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMR);
      if (one-time initialization token for device != -1)
      {
        goto LABEL_28;
      }

      while (1)
      {
        v50 = type metadata accessor for Logger();
        __swift_project_value_buffer(v50, static Log.device);
        v51 = Logger.logObject.getter();
        v52 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v51, v52))
        {
          v53 = swift_slowAlloc();
          *v53 = 0;
          _os_log_impl(&dword_220940000, v51, v52, "No E5RunnerAssetObjects present in the OnDeviceInferenceContext.", v53, 2u);
          MEMORY[0x223D90A10](v53, -1, -1);
        }

        __break(1u);
LABEL_27:
        __break(1u);
LABEL_28:
        swift_once();
      }
    }

    outlined init with copy of DeterministicLanguageModelProtocol(v58 + 40 * v28, v63);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pMR);
    v40 = swift_dynamicCast();
    v41 = *v30;
    (*v30)(v38, v40 ^ 1u, 1, v24);
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v38, v13, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMR);
    v42 = *v31;
    if ((*v31)(v13, 1, v24) == 1)
    {
      goto LABEL_27;
    }

    outlined init with take of OnDeviceInferenceAssetObjectE5Runner(v13, v23);
    outlined destroy of [Int](v38, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMR);
    v41(v23, 0, 1, v24);

    v39 = v42(v23, 1, v24);
  }

  v43 = v59;
  if (v39 == 1)
  {
    goto LABEL_23;
  }

  outlined init with take of OnDeviceInferenceAssetObjectE5Runner(v23, v59);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v43 + *(v24 + 56), v8, &_s24TokenGenerationInference5AssetVSgMd, &_s24TokenGenerationInference5AssetVSgMR);
  v44 = type metadata accessor for Asset(0);
  v45 = *(*(v44 - 8) + 48);
  if (v45(v8, 1, v44) != 1)
  {
    v46 = *&v8[*(v44 + 20)];

    _s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVWOhTm_0(v8, type metadata accessor for Asset);
    v47 = type metadata accessor for OnDeviceInferenceAssetObjectE5Runner;
    v48 = v43;
LABEL_20:
    _s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVWOhTm_0(v48, v47);
    return v46;
  }

  outlined destroy of [Int](v8, &_s24TokenGenerationInference5AssetVSgMd, &_s24TokenGenerationInference5AssetVSgMR);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v43 + *(v24 + 24), v36, &_s24TokenGenerationInference5AssetVSgMd, &_s24TokenGenerationInference5AssetVSgMR);
  _s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVWOhTm_0(v43, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
  if (v45(v36, 1, v44) != 1)
  {
    v46 = *(v36 + *(v44 + 20));

    v47 = type metadata accessor for Asset;
    v48 = v36;
    goto LABEL_20;
  }

  outlined destroy of [Int](v36, &_s24TokenGenerationInference5AssetVSgMd, &_s24TokenGenerationInference5AssetVSgMR);
  return 0;
}

char *OnDeviceInferenceContext.deinit()
{
  __swift_destroy_boxed_opaque_existential_1(v0 + 2);
  outlined destroy of [Int]((v0 + 56), &_s24TokenGenerationInference18ClassifyingDecoderVSgMd, &_s24TokenGenerationInference18ClassifyingDecoderVSgMR);

  __swift_destroy_boxed_opaque_existential_1(v0 + 32);

  outlined consume of ClassifierMetadata?(*(v0 + 41), *(v0 + 42), *(v0 + 43));
  outlined consume of StopToken?(*(v0 + 44), *(v0 + 45), *(v0 + 46), *(v0 + 47));

  v1 = OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext_promptPreprocessingTemplateVersion;
  v2 = type metadata accessor for PromptPreprocessingTemplateVersion();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  outlined destroy of [Int](&v0[OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext_guidedGenerationVocabularyManager], &_s19TokenGenerationCore06GuidedB17VocabularyManagerVSgMd, &_s19TokenGenerationCore06GuidedB17VocabularyManagerVSgMR);

  outlined consume of String??(*&v0[OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext____lazy_storage___modelVersion], *&v0[OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext____lazy_storage___modelVersion + 8]);
  return v0;
}

uint64_t OnDeviceInferenceContext.__deallocating_deinit()
{
  OnDeviceInferenceContext.deinit();

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OnDeviceInferenceContext(uint64_t a1)
{
  result = type metadata singleton initialization cache for OnDeviceInferenceContext;
  if (!type metadata singleton initialization cache for OnDeviceInferenceContext)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for OnDeviceInferenceContext(uint64_t a1)
{
  type metadata accessor for PromptPreprocessingTemplateVersion();
  if (v1 <= 0x3F)
  {
    type metadata accessor for GuidedGenerationVocabularyManager?(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for GuidedGenerationVocabularyManager?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for GuidedGenerationVocabularyManager?)
  {
    type metadata accessor for GuidedGenerationVocabularyManager();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for GuidedGenerationVocabularyManager?);
    }
  }
}

uint64_t outlined consume of String??(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

double outlined copy of String??(uint64_t a1, uint64_t a2)
{
  if (a2 != 1)
  {
  }

  return result;
}

uint64_t outlined init with take of OnDeviceInferenceAssetObjectE5Runner(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for OnDeviceInferenceAssetObjectE5Runner(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *_sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(void *a1)
{
  v2 = a1[2];
  if (!v2)
  {
    goto LABEL_4;
  }

  v3 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSS_Tt1g5(a1[2], 0);
  v4 = specialized Sequence._copySequenceContents(initializing:)(&v6, v3 + 4, v2, a1);
  outlined consume of [Int : (next: Int, logit: Float)].Iterator._Variant(v6);
  if (v4 != v2)
  {
    __break(1u);
LABEL_4:

    return MEMORY[0x277D84F90];
  }

  return v3;
}

uint64_t specialized _ArrayProtocol.filter(_:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a3;
  v17 = *(a3 + 16);
  if (v17)
  {
    v5 = result;
    v6 = 0;
    v7 = (a3 + 40);
    v8 = MEMORY[0x277D84F90];
    v15 = result;
    while (v6 < *(v4 + 16))
    {
      v10 = *(v7 - 1);
      v9 = *v7;
      v18[0] = v10;
      v18[1] = v9;

      v11 = v5(v18);
      if (v3)
      {

        goto LABEL_16;
      }

      if (v11)
      {
        result = swift_isUniquelyReferenced_nonNull_native();
        v19 = v8;
        if ((result & 1) == 0)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 16) + 1, 1);
          v8 = v19;
        }

        v13 = *(v8 + 16);
        v12 = *(v8 + 24);
        if (v13 >= v12 >> 1)
        {
          result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
          v8 = v19;
        }

        *(v8 + 16) = v13 + 1;
        v14 = v8 + 16 * v13;
        *(v14 + 32) = v10;
        *(v14 + 40) = v9;
        v4 = a3;
        v5 = v15;
      }

      else
      {
      }

      ++v6;
      v7 += 2;
      if (v17 == v6)
      {
        goto LABEL_16;
      }
    }

    __break(1u);
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
LABEL_16:

    return v8;
  }

  return result;
}

uint64_t _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF24TokenGenerationInference18ClassifierMetadataV_s5NeverOAD18ClassifyingDecoderVTg504_s24cd165Inference08OnDeviceC14ContextFactoryC06createcF07request13configuration9isOneShotAA0decF0CAA0C7RequestV_20ModelManagerServices0c8ProviderN13ConfigurationVSbtYaKFAA18ij5VAA18fG7VXEfU6_AD34DeterministicLanguageModelProtocol_p0cD4Core0C17IDToTextConverterCTf1ncn_n@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  if (a2)
  {
    v12 = *a5;
    swift_beginAccess();
    outlined init with copy of DeterministicLanguageModelProtocol(a4, v19);
    v18[3] = v12;
    v18[4] = MEMORY[0x277D71E08];
    v18[0] = a5;
    *a6 = a1;
    *(a6 + 8) = a2;
    *(a6 + 16) = a3;
    outlined init with copy of DeterministicLanguageModelProtocol(v19, a6 + 24);
    outlined init with copy of DeterministicLanguageModelProtocol(v18, a6 + 64);
    v13 = v20;
    v14 = v21;
    __swift_project_boxed_opaque_existential_1(v19, v20);
    v15 = *(v14 + 8);
    swift_bridgeObjectRetain_n();
    swift_bridgeObjectRetain_n();

    v16 = v15(v13, v14);
    __swift_destroy_boxed_opaque_existential_1(v18);
    *(a6 + 104) = v16;
    __swift_destroy_boxed_opaque_existential_1(v19);
  }

  else
  {
    *(a6 + 80) = 0u;
    *(a6 + 96) = 0u;
    *(a6 + 48) = 0u;
    *(a6 + 64) = 0u;
    *(a6 + 16) = 0u;
    *(a6 + 32) = 0u;
    *a6 = 0u;
  }
}

uint64_t OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:)(uint64_t a1, uint64_t a2, char a3)
{
  *(v4 + 4304) = v3;
  *(v4 + 321) = a3;
  *(v4 + 4296) = a2;
  *(v4 + 4288) = a1;
  *(v4 + 4312) = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore06GuidedB17VocabularyManagerVSgMd, &_s19TokenGenerationCore06GuidedB17VocabularyManagerVSgMR);
  *(v4 + 4320) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMR);
  *(v4 + 4328) = swift_task_alloc();
  *(v4 + 4336) = swift_task_alloc();
  *(v4 + 4344) = swift_task_alloc();
  *(v4 + 4352) = swift_task_alloc();
  *(v4 + 4360) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21SpeculationParametersVSgMd, &_s15TokenGeneration21SpeculationParametersVSgMR);
  *(v4 + 4368) = swift_task_alloc();
  *(v4 + 4376) = swift_task_alloc();
  v5 = type metadata accessor for SpeculationParameters();
  *(v4 + 4384) = v5;
  *(v4 + 4392) = *(v5 - 8);
  *(v4 + 4400) = swift_task_alloc();
  *(v4 + 4408) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration16SamplingStrategyVSgMd, &_s15TokenGeneration16SamplingStrategyVSgMR);
  *(v4 + 4416) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration16SamplingStrategyV6ChoiceOSgMd, &_s15TokenGeneration16SamplingStrategyV6ChoiceOSgMR);
  *(v4 + 4424) = swift_task_alloc();
  *(v4 + 4432) = swift_task_alloc();
  v6 = type metadata accessor for Grammar();
  *(v4 + 4440) = v6;
  *(v4 + 4448) = *(v6 - 8);
  *(v4 + 4456) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMR);
  *(v4 + 4464) = swift_task_alloc();
  *(v4 + 4472) = swift_task_alloc();
  v7 = type metadata accessor for PromptPreprocessingTemplateVersion();
  *(v4 + 4480) = v7;
  *(v4 + 4488) = *(v7 - 8);
  *(v4 + 4496) = swift_task_alloc();
  *(v4 + 4504) = swift_task_alloc();
  *(v4 + 4512) = swift_task_alloc();
  *(v4 + 4520) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  *(v4 + 4528) = swift_task_alloc();
  *(v4 + 4536) = swift_task_alloc();
  v8 = type metadata accessor for Constraints();
  *(v4 + 4544) = v8;
  *(v4 + 4552) = *(v8 - 8);
  *(v4 + 4560) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC20AssetObjectTokenizerVSgMd, &_s24TokenGenerationInference08OnDeviceC20AssetObjectTokenizerVSgMR);
  *(v4 + 4568) = swift_task_alloc();
  *(v4 + 4576) = swift_task_alloc();
  *(v4 + 4584) = swift_task_alloc();
  *(v4 + 4592) = swift_task_alloc();
  v9 = type metadata accessor for OnDeviceInferenceAssetObjectTokenizer(0);
  *(v4 + 4600) = v9;
  *(v4 + 4608) = *(v9 - 8);
  *(v4 + 4616) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMR);
  *(v4 + 4624) = swift_task_alloc();
  v10 = type metadata accessor for OnDeviceInferenceAssetObjectE5Runner(0);
  *(v4 + 4632) = v10;
  *(v4 + 4640) = *(v10 - 8);
  *(v4 + 4648) = swift_task_alloc();
  *(v4 + 4656) = swift_task_alloc();
  *(v4 + 4664) = swift_task_alloc();
  *(v4 + 4672) = swift_task_alloc();
  *(v4 + 4680) = swift_task_alloc();
  *(v4 + 4688) = type metadata accessor for InferenceRequest(0);
  *(v4 + 4696) = swift_task_alloc();
  v11 = type metadata accessor for TokenGenerationError.Context();
  *(v4 + 4704) = v11;
  *(v4 + 4712) = *(v11 - 8);
  *(v4 + 4720) = swift_task_alloc();
  v12 = type metadata accessor for InferenceError();
  *(v4 + 4728) = v12;
  *(v4 + 4736) = *(v12 - 8);
  *(v4 + 4744) = swift_task_alloc();
  *(v4 + 4752) = swift_task_alloc();
  *(v4 + 4760) = swift_task_alloc();
  *(v4 + 4768) = swift_task_alloc();
  *(v4 + 4776) = swift_task_alloc();
  v13 = type metadata accessor for UUID();
  *(v4 + 4784) = v13;
  *(v4 + 4792) = *(v13 - 8);
  *(v4 + 4800) = swift_task_alloc();
  *(v4 + 4808) = swift_task_alloc();
  *(v4 + 4816) = swift_task_alloc();
  *(v4 + 4824) = swift_task_alloc();
  *(v4 + 4832) = swift_task_alloc();
  *(v4 + 4840) = swift_task_alloc();
  *(v4 + 4848) = swift_task_alloc();
  *(v4 + 4856) = swift_task_alloc();
  *(v4 + 4864) = swift_task_alloc();
  *(v4 + 4872) = swift_task_alloc();
  *(v4 + 4880) = swift_task_alloc();
  *(v4 + 4888) = swift_task_alloc();
  *(v4 + 4896) = swift_task_alloc();
  *(v4 + 4904) = swift_task_alloc();
  *(v4 + 4912) = swift_task_alloc();
  *(v4 + 4920) = swift_task_alloc();

  return MEMORY[0x2822009F8](OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:), 0, 0);
}

uint64_t OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:)(uint64_t a1)
{
  v75 = v1;
  v2 = 4216;
  InferenceProviderRequestConfiguration.requestUUID.getter();
  v3 = InferenceProviderRequestConfiguration.assetBundleIdentifier.getter();
  v5 = v4;
  v72 = v3;
  *(v1 + 4928) = v3;
  *(v1 + 4936) = v4;
  if (one-time initialization token for device != -1)
  {
    goto LABEL_34;
  }

  while (1)
  {
    v6 = (v1 + v2);
    v7 = *(v1 + 4920);
    v8 = *(v1 + 4912);
    v9 = *(v1 + 4792);
    v10 = *(v1 + 4784);
    v11 = type metadata accessor for Logger();
    v73 = v1;
    *(v1 + 4944) = __swift_project_value_buffer(v11, static Log.device);
    v12 = *(v9 + 16);
    *(v1 + 4952) = v12;
    *(v1 + 4960) = (v9 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
    v12(v8, v7, v10);

    v13 = v1;
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();

    v16 = os_log_type_enabled(v14, v15);
    v17 = v13[614];
    v18 = v13[599];
    v19 = v13[598];
    if (v16)
    {
      v20 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v74[0] = v70;
      *v20 = 136446466;
      _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v21 = v6;
      v22 = dispatch thunk of CustomStringConvertible.description.getter();
      v24 = v23;
      v69 = v15;
      v25 = *(v18 + 8);
      v25(v17, v19);
      v26 = v22;
      v6 = v21;
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v24, v74);

      *(v20 + 4) = v27;
      *(v20 + 12) = 2082;
      *(v20 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v5, v74);
      _os_log_impl(&dword_220940000, v14, v69, "Creating inference context for request %{public}s asset bundle %{public}s", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D90A10](v70, -1, -1);
      v28 = v20;
      v13 = v73;
      MEMORY[0x223D90A10](v28, -1, -1);
    }

    else
    {

      v25 = *(v18 + 8);
      v25(v17, v19);
    }

    v13[621] = v25;
    v29 = InferenceProviderRequestConfiguration.assetIdentifiers.getter();
    v30 = _sSaySayxGqd__c7ElementQyd__RszSTRd__lufCSS_ShySSGTt0g5(v29);
    v13[622] = v30;
    v13[527] = 0xD000000000000017;
    v13[528] = 0x8000000220AFD6C0;
    v31 = swift_task_alloc();
    *(v31 + 16) = v6;
    v32 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v31, v30);

    v33 = v13[538];
    if ((v32 & 1) == 0)
    {
      break;
    }

    outlined init with copy of DeterministicLanguageModelProtocol((v33 + 2), (v13 + 138));
    __swift_project_boxed_opaque_existential_1(v13 + 138, v13[141]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v34 = swift_allocObject();
    __swift_project_boxed_opaque_existential_1(v33 + 7, v33[10]);
    v35 = off_283451290;
    type metadata accessor for OnDeviceInferenceOverrides(0);
    v36 = v35();
    v38 = 0xD00000000000001DLL;
    if (v37)
    {
      v38 = v36;
    }

    v34[4] = v38;
    v39 = 0x8000000220AFD790;
    if (v37)
    {
      v39 = v37;
    }

    v34[5] = v39;
    __swift_project_boxed_opaque_existential_1(v33 + 7, v33[10]);
    v40 = (off_2834512A8)();
    v42 = 0x8000000220AFD7B0;
    v43 = 0xD00000000000001ALL;
    if (v41)
    {
      v43 = v40;
      v42 = v41;
    }

    v34[6] = v43;
    v34[7] = v42;
    __swift_project_boxed_opaque_existential_1(v33 + 7, v33[10]);
    v44 = off_2834512C0[0]();
    v46 = v34 + 5;
    v47 = 0;
    v48 = 0x8000000220AFD7D0;
    v49 = 0xD000000000000022;
    if (v45)
    {
      v49 = v44;
      v48 = v45;
    }

    v34[8] = v49;
    v34[9] = v48;
    v50 = MEMORY[0x277D84F90];
    v5 = &selRef__encodedImageByteCount;
    v2 = &selRef__encodedImageByteCount;
    v71 = v46;
LABEL_15:
    v72 = v50;
    v51 = 3;
    if (v47 > 3)
    {
      v51 = v47;
    }

    v52 = &v46[2 * v47++];
    v1 = -v51;
    while (v1 + v47 != 1)
    {
      v54 = *(v52 - 1);
      v53 = *v52;
      v55 = objc_opt_self();

      v56 = [v55 defaultManager];
      v57 = MEMORY[0x223D8E6B0](v54, v53);
      v58 = [v56 fileExistsAtPath_];

      if (v58)
      {
        v50 = v72;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v74[0] = v72;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v72 + 16) + 1, 1);
          v50 = v74[0];
        }

        v46 = v71;
        v61 = *(v50 + 16);
        v60 = *(v50 + 24);
        if (v61 >= v60 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v61 + 1, 1);
          v46 = v71;
          v50 = v74[0];
        }

        *(v50 + 16) = v61 + 1;
        v62 = v50 + 16 * v61;
        *(v62 + 32) = v54;
        *(v62 + 40) = v53;
        if (v47 == 3)
        {
          goto LABEL_29;
        }

        goto LABEL_15;
      }

      ++v47;
      v52 += 2;
      if (v47 == 4)
      {
        v50 = v72;
LABEL_29:
        v73[623] = v50;
        swift_setDeallocating();
        swift_arrayDestroy();
        swift_deallocClassInstance();
        v67 = swift_task_alloc();
        v73[624] = v67;
        *v67 = v73;
        v67[1] = OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:);
        v64 = v73[596];
        v65 = v73[537];
        v66 = v50;
        goto LABEL_30;
      }
    }

    __break(1u);
LABEL_34:
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1(v33 + 2, v33[5]);
  v63 = swift_task_alloc();
  v13[628] = v63;
  *v63 = v13;
  v63[1] = OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:);
  v64 = v13[594];
  v65 = v13[537];
  v66 = v30;
LABEL_30:

  return _s24TokenGenerationInference08OnDeviceC15AssetRepositoryC05fetchF7Objects11identifiers13configurationSayAA0decF6Object_pGSaySSG_20ModelManagerServices0C28ProviderRequestConfigurationVtYaAJ0C5ErrorOYKF(v66, v65, v64);
}

{
  v3 = *v2;
  v3[519] = v2;
  v3[520] = a1;
  v3[521] = v1;
  v3[625] = v1;

  if (v1)
  {
    v4 = v3[597];
    v5 = v3[596];
    v6 = v3[592];
    v7 = v3[591];

    v8 = *(v6 + 32);
    v3[626] = v8;
    v3[627] = (v6 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v8(v4, v5, v7);
    v9 = OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:);
  }

  else
  {

    v9 = OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:);
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

{
  v3 = *v2;
  v3[522] = v2;
  v3[523] = a1;
  v3[524] = v1;
  v3[629] = v1;

  if (v1)
  {
    v4 = v3[595];
    v5 = v3[594];
    v6 = v3[592];
    v7 = v3[591];

    v8 = *(v6 + 32);
    v3[630] = v8;
    v3[631] = (v6 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v8(v4, v5, v7);
    v9 = OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:);
  }

  else
  {

    v9 = OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:);
  }

  return MEMORY[0x2822009F8](v9, 0, 0);
}

{
  swift_willThrow();

  v2 = *(v1 + 8);

  return v2();
}

uint64_t OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:)()
{
  v841 = v0;
  __swift_destroy_boxed_opaque_existential_1((v0 + 1104));
  v800 = *(v0 + 5000);
  v1 = *(v0 + 4304);
  v811 = *(v0 + 4160);
  *(v0 + 5056) = v811;
  __swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));
  v2 = off_283451310[0];
  *(v0 + 5064) = type metadata accessor for OnDeviceInferenceOverrides(0);
  v3 = v2();
  if (v4)
  {
    v5 = SamplingParameters.promptLookupDraftSteps.getter();
    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = v5;
    }
  }

  else
  {
    v7 = v3;
  }

  *(v0 + 5072) = v7;
  v8 = *(v0 + 4288);
  v9 = *(*(v0 + 4688) + 20);
  *(v0 + 324) = v9;
  SamplingParameters.priorInferenceOutput.getter();
  v816 = v0;
  if (v10)
  {

    if (v7 >= 1)
    {

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_220940000, v11, v12, "Invalid speculation options. Cannot mix promptLookup and priorInferenceOutput options", v13, 2u);
        MEMORY[0x223D90A10](v13, -1, -1);
      }

      v817 = *(v0 + 4968);
      v14 = *(v0 + 4920);
      v15 = *(v0 + 4784);
      v16 = *(v0 + 4720);
      v17 = *(v0 + 4712);
      v18 = *(v0 + 4704);

      TokenGenerationError.Context.init(debugDescription:underlyingError:)();
      v19 = type metadata accessor for TokenGenerationError();
      _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, MEMORY[0x277D71B08], MEMORY[0x277D71B10]);
      v20 = swift_allocError();
      v22 = v21;
      (*(v17 + 16))(v21, v16, v18);
      (*(*(v19 - 8) + 104))(v22, *MEMORY[0x277D71AE0], v19);
      swift_willThrow();
      v23 = v18;
      v24 = v0;
      (*(v17 + 8))(v16, v23);
      v817(v14, v15);
      goto LABEL_94;
    }
  }

  v799 = v9;
  v806 = v8;
  v807 = v7;
  outlined init with copy of OnDeviceInferenceAssetObjectTokenizer(*(v0 + 4288), *(v0 + 4696), type metadata accessor for InferenceRequest);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *&v838 = v28;
    *v27 = 136315650;
    __swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));
    v29 = v2();
    if (v30)
    {
      v31 = 0xE300000000000000;
      v32 = 7104878;
      v33 = v816;
    }

    else
    {
      v33 = v816;
      *(v816 + 4272) = v29;
      lazy protocol witness table accessor for type Int and conformance Int();
      v32 = BinaryInteger.description.getter();
      v31 = v47;
    }

    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v31, &v838);

    *(v27 + 4) = v48;
    *(v27 + 12) = 2080;
    v49 = SamplingParameters.promptLookupDraftSteps.getter();
    if (v50)
    {
      v51 = 0xE300000000000000;
      v36 = v811;
      v52 = 7104878;
    }

    else
    {
      v33[533] = v49;
      lazy protocol witness table accessor for type Int and conformance Int();
      v52 = BinaryInteger.description.getter();
      v51 = v53;
      v36 = v811;
    }

    outlined destroy of InferenceRequest(v33[587], type metadata accessor for InferenceRequest);
    v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v51, &v838);

    *(v27 + 14) = v54;
    *(v27 + 22) = 2048;
    *(v27 + 24) = v807;
    _os_log_impl(&dword_220940000, v25, v26, "inferenceOverrides.promptLookupDraftSteps = %s, request.parameters.promptLookupDraftSteps = %s, promptLookupDraftSteps = %ld", v27, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223D90A10](v28, -1, -1);
    MEMORY[0x223D90A10](v27, -1, -1);

    v24 = v33;
    v37 = *(v36 + 16);
    if (!v37)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v34 = *(v0 + 4696);

    v35 = outlined destroy of InferenceRequest(v34, type metadata accessor for InferenceRequest);
    v24 = v0;
    v36 = v811;
    v37 = *(v811 + 16);
    if (!v37)
    {
LABEL_30:
      v818 = MEMORY[0x277D84F90];
      goto LABEL_31;
    }
  }

  v38 = v24[580];
  v39 = v36 + 32;
  v818 = MEMORY[0x277D84F90];
  do
  {
    v40 = v24[579];
    v41 = v24[578];
    outlined init with copy of DeterministicLanguageModelProtocol(v39, (v24 + 413));
    outlined init with take of RandomNumberGenerator((v24 + 413), (v24 + 393));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pMR);
    v42 = swift_dynamicCast();
    (*(v38 + 56))(v41, v42 ^ 1u, 1, v40);
    if ((*(v38 + 48))(v41, 1, v40) == 1)
    {
      v35 = outlined destroy of [Int](v24[578], &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMR);
    }

    else
    {
      _s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVWObTm_0(v24[578], v24[585], type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v43 = v818;
      }

      else
      {
        v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v818[2] + 1, 1, v818);
      }

      v45 = v43[2];
      v44 = v43[3];
      if (v45 >= v44 >> 1)
      {
        v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v43);
      }

      v46 = v24[585];
      v43[2] = v45 + 1;
      v818 = v43;
      v35 = _s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVWObTm_0(v46, v43 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v45, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
    }

    v39 += 40;
    --v37;
  }

  while (v37);
LABEL_31:
  v55 = v818;
  v56 = v818[2];
  if (v56)
  {
    v57 = 0;
    v58 = v24[584] + 8;
    v59 = v24[580];
    v60 = v24[579];
    v61 = MEMORY[0x277D84F90];
    v812 = v58;
    while (v57 < v55[2])
    {
      v62 = v24[584];
      v63 = (*(v59 + 80) + 32) & ~*(v59 + 80);
      v64 = v24;
      v65 = *(v59 + 72);
      outlined init with copy of OnDeviceInferenceAssetObjectTokenizer(v55 + v63 + v65 * v57, v62, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
      v66 = v64[584];
      if (*(v58 + *(v60 + 36)) == 2)
      {
        _s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVWObTm_0(v66, v64[583], type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v838 = v61;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v61[2] + 1, 1);
          v61 = v838;
        }

        v69 = v61[2];
        v68 = v61[3];
        if (v69 >= v68 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v68 > 1), v69 + 1, 1);
          v61 = v838;
        }

        v70 = *(v816 + 4664);
        v61[2] = v69 + 1;
        v35 = _s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVWObTm_0(v70, v61 + v63 + v69 * v65, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
        v58 = v812;
      }

      else
      {
        v35 = outlined destroy of InferenceRequest(v66, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
      }

      ++v57;
      v24 = v816;
      v55 = v818;
      if (v56 == v57)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
    goto LABEL_140;
  }

  v61 = MEMORY[0x277D84F90];
LABEL_43:
  if (v807 > 0 || (v71 = SamplingParameters.speculativeDecoding.getter(), v71 == 2))
  {
    if (!v56)
    {
      v76 = MEMORY[0x277D84F90];
      goto LABEL_56;
    }
  }

  else
  {
    v76 = MEMORY[0x277D84F90];
    if (!v56 || (v71 & 1) == 0)
    {
      goto LABEL_56;
    }
  }

  v72 = v24[580];
  v813 = v24[579];
  v73 = v24[582] + *(v813 + 36);
  v74 = v818 + ((*(v72 + 80) + 32) & ~*(v72 + 80));
  v75 = *(v72 + 72);
  v76 = MEMORY[0x277D84F90];
  do
  {
    outlined init with copy of OnDeviceInferenceAssetObjectTokenizer(v74, v24[582], type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
    v77 = *(v73 + 8);
    v78 = v24[582];
    if (v77 == 2)
    {
      outlined destroy of InferenceRequest(v24[582], type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
    }

    else
    {
      v79 = *v73;
      v80 = *(v73 + 32);
      v833 = *(v73 + 16);
      v834 = v80;
      *v835 = *(v73 + 48);
      *&v835[9] = *(v73 + 57);
      v81 = *(v78 + *(v813 + 32));

      outlined destroy of InferenceRequest(v78, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v76 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v76[2] + 1, 1, v76);
      }

      v83 = v76[2];
      v82 = v76[3];
      v84 = v76;
      if (v83 >= v82 >> 1)
      {
        v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v82 > 1), v83 + 1, 1, v76);
      }

      *(v840 + 9) = *&v835[9];
      v839 = v834;
      v840[0] = *v835;
      v838 = v833;
      v84[2] = v83 + 1;
      v76 = v84;
      v85 = &v84[11 * v83];
      v85[4] = v81;
      v85[5] = v79;
      v85[6] = v77;
      v86 = v838;
      v87 = v839;
      v88 = v840[0];
      *(v85 + 97) = *(v840 + 9);
      *(v85 + 11) = v88;
      *(v85 + 9) = v87;
      *(v85 + 7) = v86;
      v24 = v816;
    }

    v74 += v75;
    --v56;
  }

  while (v56);
LABEL_56:
  if (v61[2])
  {

    v89 = v61;
  }

  else
  {

    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = v24[617];
      v93 = v24[616];
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *&v838 = v95;
      *v94 = 136446210;
      *(v94 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v92, &v838);
      _os_log_impl(&dword_220940000, v90, v91, "Using draft model as target model for %{public}s", v94, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v95);
      MEMORY[0x223D90A10](v95, -1, -1);
      MEMORY[0x223D90A10](v94, -1, -1);
    }

    v76 = MEMORY[0x277D84F90];
    v89 = v818;
  }

  v24[636] = v76;
  v24[635] = v89;
  v814 = v76;
  if (!v89[2])
  {
    v120 = v24[619];
    v121 = v24[615];
    v122 = v24[600];
    v123 = v24[598];

    v120(v122, v121, v123);

    v124 = Logger.logObject.getter();
    v125 = static os_log_type_t.error.getter();

    v126 = os_log_type_enabled(v124, v125);
    v127 = v24[621];
    if (v126)
    {
      v819 = v24[617];
      v808 = v24[616];
      v128 = v24[600];
      v129 = v24[598];
      v130 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      *&v838 = v131;
      *v130 = 136446466;
      _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v132 = dispatch thunk of CustomStringConvertible.description.getter();
      v134 = v133;
      v127(v128, v129);
      v135 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v132, v134, &v838);

      *(v130 + 4) = v135;
      *(v130 + 12) = 2082;
      *(v130 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v808, v819, &v838);
      _os_log_impl(&dword_220940000, v124, v125, "Failed to create inference context for request %{public}s, inference runner not loaded for asset bundle %{public}s", v130, 0x16u);
      swift_arrayDestroy();
      v136 = v131;
      v24 = v816;
      MEMORY[0x223D90A10](v136, -1, -1);
      MEMORY[0x223D90A10](v130, -1, -1);
    }

    else
    {
      v185 = v24[600];
      v186 = v24[598];

      v127(v185, v186);
    }

    v187 = v24[621];
    v188 = v24[617];
    v189 = v24[616];
    v190 = v24[615];
    v191 = v24[598];
    v192 = *(v816 + 4720);
    v193 = *(v816 + 4712);
    v194 = *(v816 + 4704);
    *&v838 = 0;
    *(&v838 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(50);

    *&v838 = 0xD000000000000022;
    *(&v838 + 1) = 0x8000000220AFD700;
    MEMORY[0x223D8E780](v189, v188);

    MEMORY[0x223D8E780](0x20746F6E20736920, 0xEE00646564616F6CLL);
    TokenGenerationError.Context.init(debugDescription:underlyingError:)();
    v195 = type metadata accessor for TokenGenerationError();
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, MEMORY[0x277D71B08], MEMORY[0x277D71B10]);
    v20 = swift_allocError();
    v197 = v196;
    (*(v193 + 16))(v196, v192, v194);
    (*(*(v195 - 8) + 104))(v197, *MEMORY[0x277D71AF0], v195);
    swift_willThrow();
    v198 = v192;
    v24 = v816;
    (*(v193 + 8))(v198, v194);
    v187(v190, v191);
    goto LABEL_93;
  }

  v96 = v24[621];
  v97 = v24[613];
  v98 = v24[599];
  v99 = v76;
  v100 = v24[598];
  v101 = v24[581];
  v102 = v24[579];
  v103 = *(v24[580] + 80);
  outlined init with copy of OnDeviceInferenceAssetObjectTokenizer(v89 + ((v103 + 32) & ~v103), v101, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
  InferenceProviderRequestConfiguration.requestUUID.getter();
  v104 = UUID.uuidString.getter();
  v106 = v105;
  v24[637] = (v98 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v96(v97, v100);
  v107 = *(v102 + 28);
  v108 = v104;
  v109 = (v101 + v107);
  v24[638] = *v109;
  v110 = v109[1];
  v24[639] = v110;
  ObjectType = swift_getObjectType();
  v24[640] = ObjectType;
  (*(v110 + 120))(v104, v106, ObjectType, v110);
  if (v99[2])
  {
    v112 = *(v99[4] + 48);
    v113 = swift_getObjectType();
    v114 = *(v112 + 120);
    swift_unknownObjectRetain();
    v114(v104, v106, v113, v112);
    swift_unknownObjectRelease();
  }

  v115 = Logger.logObject.getter();
  v116 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v115, v116))
  {
    v117 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    *&v838 = v118;
    *v117 = 136446210;
    v119 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v108, v106, &v838);

    *(v117 + 4) = v119;
    _os_log_impl(&dword_220940000, v115, v116, "Setting E5Runner telemetry identifier to %{public}s", v117, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v118);
    MEMORY[0x223D90A10](v118, -1, -1);
    MEMORY[0x223D90A10](v117, -1, -1);
  }

  else
  {
  }

  v137 = v24[576];
  v138 = v811;
  v139 = *(v811 + 16);
  v140 = v811 + 32;
  v141 = (v137 + 56);
  v142 = (v137 + 48);

  v146 = 0;
  if (v139)
  {
    v147 = v811 + 32;
    while (1)
    {
      v148 = v24[575];
      v149 = v24[573];
      outlined init with copy of DeterministicLanguageModelProtocol(v147, (v24 + 388));
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pMR);
      v150 = swift_dynamicCast();
      (*v141)(v149, v150 ^ 1u, 1, v148);
      LODWORD(v149) = (*v142)(v149, 1, v148);
      v143 = outlined destroy of [Int](v24[573], &_s24TokenGenerationInference08OnDeviceC20AssetObjectTokenizerVSgMd, &_s24TokenGenerationInference08OnDeviceC20AssetObjectTokenizerVSgMR);
      if (v149 != 1)
      {
        break;
      }

      ++v146;
      v147 += 40;
      if (v139 == v146)
      {
        v146 = v139;
        break;
      }
    }

    v138 = v811;
    v140 = v811 + 32;
  }

  v151 = *(v138 + 16);
  if (v146 == v151)
  {
    (*v141)(v24[574], 1, 1, v24[575]);

    v152 = *v142;
  }

  else
  {
    if (v146 >= v151)
    {
      __break(1u);
      goto LABEL_257;
    }

    v153 = v140;
    v154 = v24[575];
    v155 = v24[572];
    v156 = v24[571];
    outlined init with copy of DeterministicLanguageModelProtocol(v153 + 40 * v146, (v24 + 333));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pMR);
    v157 = swift_dynamicCast();
    v158 = v24;
    v159 = *v141;
    (*v141)(v155, v157 ^ 1u, 1, v154);
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v155, v156, &_s24TokenGenerationInference08OnDeviceC20AssetObjectTokenizerVSgMd, &_s24TokenGenerationInference08OnDeviceC20AssetObjectTokenizerVSgMR);
    v152 = *v142;
    v143 = (*v142)(v156, 1, v154);
    if (v143 == 1)
    {
LABEL_260:
      __break(1u);
      goto LABEL_261;
    }

    v160 = v158[575];
    v161 = v158[574];
    v162 = v158[572];
    _s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVWObTm_0(v158[571], v161, type metadata accessor for OnDeviceInferenceAssetObjectTokenizer);
    outlined destroy of [Int](v162, &_s24TokenGenerationInference08OnDeviceC20AssetObjectTokenizerVSgMd, &_s24TokenGenerationInference08OnDeviceC20AssetObjectTokenizerVSgMR);
    v159(v161, 0, 1, v160);

    v24 = v158;
  }

  v163 = v24[575];
  v164 = v24[574];
  if (v152(v164, 1, v163) == 1)
  {
    v165 = v24[619];
    v166 = v24[615];
    v167 = v24[601];
    v168 = v24[598];

    outlined destroy of [Int](v164, &_s24TokenGenerationInference08OnDeviceC20AssetObjectTokenizerVSgMd, &_s24TokenGenerationInference08OnDeviceC20AssetObjectTokenizerVSgMR);
    v165(v167, v166, v168);

    v169 = Logger.logObject.getter();
    v170 = static os_log_type_t.error.getter();

    v171 = os_log_type_enabled(v169, v170);
    v172 = v24[621];
    if (v171)
    {
      v820 = v24[617];
      v809 = v24[616];
      v173 = v24[601];
      v174 = v24[598];
      v175 = swift_slowAlloc();
      v176 = swift_slowAlloc();
      *&v838 = v176;
      *v175 = 136446466;
      _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v177 = dispatch thunk of CustomStringConvertible.description.getter();
      v179 = v178;
      v172(v173, v174);
      v180 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v177, v179, &v838);

      *(v175 + 4) = v180;
      *(v175 + 12) = 2082;
      *(v175 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v809, v820, &v838);
      _os_log_impl(&dword_220940000, v169, v170, "Failed to create inference context for request %{public}s, tokenizer not loaded for asset bundle %{public}s", v175, 0x16u);
      swift_arrayDestroy();
      v181 = v176;
      v24 = v816;
      MEMORY[0x223D90A10](v181, -1, -1);
      MEMORY[0x223D90A10](v175, -1, -1);
    }

    else
    {
      v199 = v24[601];
      v200 = v24[598];

      v172(v199, v200);
    }

    v201 = v24[621];
    v202 = v24[617];
    v203 = v24[616];
    v204 = v24[615];
    v205 = *(v816 + 4784);
    v206 = *(v816 + 4720);
    v207 = *(v816 + 4712);
    v208 = *(v816 + 4704);
    v209 = *(v816 + 4648);
    *&v838 = 0;
    *(&v838 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(44);

    *&v838 = 0xD00000000000001CLL;
    *(&v838 + 1) = 0x8000000220AFD6E0;
    MEMORY[0x223D8E780](v203, v202);

    MEMORY[0x223D8E780](0x20746F6E20736920, 0xEE00646564616F6CLL);
    TokenGenerationError.Context.init(debugDescription:underlyingError:)();
    v210 = type metadata accessor for TokenGenerationError();
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, MEMORY[0x277D71B08], MEMORY[0x277D71B10]);
    v20 = swift_allocError();
    v212 = v211;
    (*(v207 + 16))(v211, v206, v208);
    (*(*(v210 - 8) + 104))(v212, *MEMORY[0x277D71AF0], v210);
    swift_willThrow();
    (*(v207 + 8))(v206, v208);
    v213 = v205;
    v24 = v816;
    v201(v204, v213);
    v214 = v209;
    goto LABEL_92;
  }

  v182 = v24 + 321;
  v183 = v24[577];

  _s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVWObTm_0(v164, v183, type metadata accessor for OnDeviceInferenceAssetObjectTokenizer);
  v184 = *(v163 + 24);
  *(v24 + 103) = v184;
  v24[641] = *(v183 + v184);
  if (!*(v183 + *(v163 + 36)))
  {
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #0 of OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:));
    outlined destroy of [Int](&unk_28344E320, &_sSS_SStMd, &_sSS_SStMR);
  }

  v217 = v24[581];
  v218 = v24[579];
  v24[642] = type metadata accessor for TokenIDToTextConverter();
  swift_allocObject();

  v24[643] = TokenIDToTextConverter.init(tokenizer:replacementTextByTokenText:isOneShot:)();
  v219 = *(v217 + *(v218 + 32));
  if (v814[2])
  {
    v24[281] = type metadata accessor for E5TransformerLanguageModel(0);
    v24[282] = &protocol witness table for E5TransformerLanguageModel;
    v24[278] = v219;
  }

  else
  {
    v248 = v24[615];
    v24[196] = type metadata accessor for E5TransformerLanguageModel(0);
    v24[197] = &protocol witness table for E5TransformerLanguageModel;
    v24[193] = v219;

    addPromptLookup #1 (_:) in OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:)((v24 + 193), v807, v248, (v24 + 198));
    __swift_destroy_boxed_opaque_existential_1(v24 + 193);
    addPriorOutputSpeculation #1 (_:) in OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:)((v24 + 198), v24 + 278);
    if (v800)
    {
      v20 = v800;
      v249 = v24[621];
      v250 = v24[615];
      v251 = v24[598];
      v252 = v24[581];
      v253 = v24[577];

      __swift_destroy_boxed_opaque_existential_1(v24 + 198);
      v249(v250, v251);
      outlined destroy of InferenceRequest(v253, type metadata accessor for OnDeviceInferenceAssetObjectTokenizer);
      v214 = v252;
LABEL_92:
      outlined destroy of InferenceRequest(v214, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
LABEL_93:

LABEL_94:
      v215 = v811;
      goto LABEL_95;
    }

    __swift_destroy_boxed_opaque_existential_1(v24 + 198);
    v800 = 0;
    v182 = v24 + 321;
  }

  v220 = (v24 + 253);
  v221 = v24[586];
  v222 = v24[569];
  v223 = v24[568];
  v224 = v24[567];
  v225 = v24[536];
  outlined init with take of RandomNumberGenerator(v24 + 139, (v24 + 293));
  *(v24 + 253) = 0u;
  *(v24 + 255) = 0u;
  v24[257] = 0;
  v226 = *(v221 + 28);
  *(v24 + 125) = v226;
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v225 + v226, v224, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  if ((*(v222 + 48))(v224, 1, v223) == 1)
  {
    v227 = (v24 + 218);
    outlined destroy of [Int](v24[567], &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    v228 = v24[593];
    v229 = v24[586];
    v230 = v24[536];
    *(v24 + 109) = 0u;
    *(v24 + 110) = 0u;
    v24[222] = 0;
    v231 = _s24TokenGenerationInference08OnDeviceC14ContextFactoryC14supportedTools33_6E70D024FF4C54BC34814633D058F7394fromSay29GenerativeFunctionsFoundation4ToolV8FunctionVGSay0aB00U11DescriptionVG_t20ModelManagerServices0C5ErrorOYKF(*(v230 + *(v229 + 24)), v228);
    if (v800)
    {
      v810 = v24[621];
      v232 = *(v816 + 4920);
      v233 = v227;
      v234 = *(v816 + 4784);
      v235 = *(v816 + 4744);
      v236 = *(v816 + 4736);
      v237 = v220;
      v238 = *(v816 + 4728);
      v815 = *(v816 + 4648);
      v239 = *(v816 + 4616);

      _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
      v20 = swift_allocError();
      (*(v236 + 32))(v240, v235, v238);

      outlined destroy of [Int](v233, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
      outlined destroy of [Int](v237, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
      v241 = v232;
      v24 = v816;
      v810(v241, v234);
      outlined destroy of InferenceRequest(v239, type metadata accessor for OnDeviceInferenceAssetObjectTokenizer);
      __swift_destroy_boxed_opaque_existential_1((v816 + 2344));
      outlined destroy of InferenceRequest(v815, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);

      v215 = *(v816 + 5056);
LABEL_95:
      v24[652] = v215;
      v24[651] = v20;
      v216 = __swift_project_boxed_opaque_existential_1((v24[538] + 16), *(v24[538] + 40));
      v24[653] = v216;
      v144 = *v216;
      v143 = OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:);
      v145 = 0;

      return MEMORY[0x2822009F8](v143, v144, v145);
    }

    v254 = v231;
    v255 = v24[581];
    v256 = v24[561];
    v257 = v24[560];
    v258 = v24[559];
    v259 = *(v24[579] + 72);
    *(v24 + 147) = v259;
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v255 + v259, v258, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMR);
    v260 = *(v256 + 48);
    v24[646] = v260;
    v24[647] = (v256 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v261 = v260(v258, 1, v257);
    v262 = v24[565];
    v263 = v24[561];
    v264 = v24[560];
    v265 = v24[559];
    v806 = (v24 + 218);
    v794 = v182;
    if (v261 == 1)
    {
      (*(v263 + 104))(v262, *MEMORY[0x277D71EC8], v264);
      if (v260(v265, 1, v264) != 1)
      {
        outlined destroy of [Int](v24[559], &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMR);
      }
    }

    else
    {
      (*(v263 + 32))(v262, v265, v264);
    }

    v266 = v24;
    v267 = v24[633];
    __swift_project_boxed_opaque_existential_1((v266[538] + 56), *(v266[538] + 80));
    v268 = off_283451338(v267);
    v266[648] = specialized static OnDeviceInferenceContextFactory.startToolCallTokenIntValue(startToolCallTokenOverride:tokenizer:version:)(v268, v269 & 1);
    if (v254[2])
    {
      (*(v266[561] + 104))(v266[564], *MEMORY[0x277D71ED0], v266[560]);
      _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type PromptPreprocessingTemplateVersion and conformance PromptPreprocessingTemplateVersion, MEMORY[0x277D71ED8], MEMORY[0x277D71EF0]);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v266[525] == v266[529] && v266[526] == v266[530])
      {
        v270 = 1;
      }

      else
      {
        v270 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v266 = v816;
      (*(*(v816 + 4488) + 8))(*(v816 + 4512), *(v816 + 4480));

      if (v270)
      {
        (*(*(v816 + 4488) + 16))(*(v816 + 4504), *(v816 + 4520), *(v816 + 4480));
        Grammar.init(tools:version:)();
        *(v816 + 5192) = 0;
        v337 = *(v816 + 4304);
        v338 = swift_task_alloc();
        *(v816 + 5200) = v338;
        *v338 = v816;
        v338[1] = OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:);
        v339 = *(v816 + 4648);
        v340 = *(v816 + 4616);
        v341 = *(v816 + 4456);

        return OnDeviceInferenceContextFactory.createLanguageModel(fromGrammar:tokenizerAsset:e5RunnerAsset:assetRepository:)(v816 + 1944, v341, v340, v339, v337 + 16);
      }
    }

    v271 = v266[648];
    v272 = dispatch thunk of TokenizerRunner.vocabularyCount.getter();
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v220, (v266 + 178), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v806, (v266 + 463), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
    type metadata accessor for ToolCallLanguageModel();
    v273 = swift_allocObject();
    v273[2] = 0;
    v273[3] = v271;
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)((v266 + 178), (v273 + 6), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)((v266 + 463), (v273 + 11), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
    v821 = v273;
    v273[4] = v272;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24TokenGenerationInference21ToolCallLanguageModelC4NodeVGMd, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference21ToolCallLanguageModelC4NodeVGMR);
    v274 = swift_allocObject();
    v784 = xmmword_220AE8A30;
    *(v274 + 16) = xmmword_220AE8A30;
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)((v266 + 178), (v266 + 148), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
    v275 = v266[151];
    v24 = v266;
    if (v275)
    {
      v276 = v266[152];
      __swift_project_boxed_opaque_existential_1(v266 + 148, v266[151]);
      v277 = (*(v276 + 8))(v275, v276);
      __swift_destroy_boxed_opaque_existential_1(v266 + 148);
    }

    else
    {
      outlined destroy of [Int]((v266 + 148), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
      v277 = 0;
    }

    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)((v266 + 463), (v266 + 153), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
    v278 = v266[156];
    v799 = v220;
    if (v278)
    {
      v279 = v266[157];
      __swift_project_boxed_opaque_existential_1(v266 + 153, v278);
      v280 = (*(v279 + 8))(v278, v279);
      __swift_destroy_boxed_opaque_existential_1(v266 + 153);
    }

    else
    {
      outlined destroy of [Int]((v266 + 153), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
      v280 = 0;
    }

    v281 = v278 == 0;
    v282 = v275 == 0;
    v283 = v266[619];
    v284 = v266[615];
    v285 = v266[612];
    v286 = v24[598];
    v287 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    *(v274 + 32) = v277;
    *(v274 + 40) = v282;
    *(v274 + 48) = v280;
    *(v274 + 56) = v281;
    *(v274 + 57) = 2;
    *(v274 + 64) = v287;
    outlined destroy of [Int]((v24 + 463), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
    outlined destroy of [Int]((v24 + 178), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
    v821[5] = v274;
    outlined init with copy of DeterministicLanguageModelProtocol((v24 + 293), (v24 + 163));
    v288 = type metadata accessor for MaskedLanguageModel();
    v289 = swift_allocObject();

    v291 = specialized MaskedLanguageModel.init(_:_:)(v290, v24 + 163, v289);
    v24[161] = v288;
    v24[162] = &protocol witness table for MaskedLanguageModel;
    v24[158] = v291;
    __swift_destroy_boxed_opaque_existential_1(v24 + 293);
    outlined init with take of RandomNumberGenerator(v24 + 79, (v24 + 293));
    v283(v285, v284, v286);
    v292 = Logger.logObject.getter();
    v293 = static os_log_type_t.default.getter();
    v294 = os_log_type_enabled(v292, v293);
    v295 = v24[621];
    v296 = v24[612];
    v297 = v24[598];
    v800 = v288;
    if (v294)
    {
      v298 = swift_slowAlloc();
      v299 = swift_slowAlloc();
      *&v838 = v299;
      *v298 = 136446466;
      swift_beginAccess();
      outlined init with copy of DeterministicLanguageModelProtocol(v816 + 2344, v816 + 2064);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pMR);
      v300 = String.init<A>(describing:)();
      v302 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v300, v301, &v838);

      *(v298 + 4) = v302;
      *(v298 + 12) = 2082;
      _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v303 = dispatch thunk of CustomStringConvertible.description.getter();
      v305 = v304;
      v295(v296, v297);
      v306 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v303, v305, &v838);

      *(v298 + 14) = v306;
      _os_log_impl(&dword_220940000, v292, v293, "Using base language model %{public}s for request %{public}s", v298, 0x16u);
      swift_arrayDestroy();
      v307 = v299;
      v24 = v816;
      MEMORY[0x223D90A10](v307, -1, -1);
      MEMORY[0x223D90A10](v298, -1, -1);
    }

    else
    {

      v295(v296, v297);
    }

    v308 = v24[581];
    v309 = v24[579];
    v310 = COERCE_DOUBLE(SamplingParameters.temperature.getter());
    if (v311)
    {
      v312 = 1.0;
    }

    else
    {
      v312 = v310;
    }

    v313 = SamplingParameters.randomSeed.getter();
    v315 = (v308 + *(v309 + 64));
    v317 = *v315;
    v316 = v315[1];
    v807 = v315[2];
    v812 = v316;
    v811 = *v315;
    if (v316)
    {
      v59 = type metadata accessor for ClassificationSampling();
      swift_allocObject();

      v35 = ClassificationSampling.init(defaultClass:outputClasses:)(v317, v316);
LABEL_140:
      v24[286] = v59;
      v24[287] = &protocol witness table for ClassificationSampling;
      v24[283] = v35;
      v328 = (v24 + 283);
LABEL_141:
      outlined init with take of RandomNumberGenerator(v328, (v24 + 168));
LABEL_151:
      (v24[619])(v24[611], v24[615], v24[598]);
      v345 = Logger.logObject.getter();
      v346 = static os_log_type_t.info.getter();
      v347 = os_log_type_enabled(v345, v346);
      v348 = v24[621];
      v349 = v24[611];
      v350 = v24[598];
      if (v347)
      {
        v351 = swift_slowAlloc();
        v352 = swift_slowAlloc();
        *&v838 = v352;
        *v351 = 136446466;
        swift_beginAccess();
        outlined init with copy of DeterministicLanguageModelProtocol(v816 + 1344, v816 + 2824);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference0A8Sampling_pMd, &_s24TokenGenerationInference0A8Sampling_pMR);
        v353 = String.init<A>(describing:)();
        v355 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v353, v354, &v838);

        *(v351 + 4) = v355;
        *(v351 + 12) = 2082;
        _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v356 = dispatch thunk of CustomStringConvertible.description.getter();
        v358 = v357;
        v348(v349, v350);
        v359 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v356, v358, &v838);

        *(v351 + 14) = v359;
        _os_log_impl(&dword_220940000, v345, v346, "Using sampling %{public}s for request %{public}s", v351, 0x16u);
        swift_arrayDestroy();
        v360 = v352;
        v24 = v816;
        MEMORY[0x223D90A10](v360, -1, -1);
        MEMORY[0x223D90A10](v351, -1, -1);
      }

      else
      {

        v348(v349, v350);
      }

      v792 = v24 + 96;
      *(v24 + 48) = xmmword_220AED900;
      *(v24 + 49) = 0u;
      *(v24 + 50) = 0u;
      *(v24 + 51) = 0u;
      *(v24 + 825) = 0u;
      v361 = SamplingParameters.tokenHealing.getter();
      if (v361 == 2 || (v361 & 1) == 0)
      {
        (v24[619])(v24[606], v24[615], v24[598]);
        v375 = Logger.logObject.getter();
        v376 = static os_log_type_t.default.getter();
        v377 = os_log_type_enabled(v375, v376);
        v378 = v24[621];
        v379 = v24[606];
        v380 = v24[598];
        v795 = v24 + 188;
        if (v377)
        {
          v381 = swift_slowAlloc();
          v382 = swift_slowAlloc();
          *&v838 = v382;
          *v381 = 136446210;
          _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v383 = dispatch thunk of CustomStringConvertible.description.getter();
          v385 = v384;
          v378(v379, v380);
          v386 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v383, v385, &v838);

          *(v381 + 4) = v386;
          _os_log_impl(&dword_220940000, v375, v376, "Not using token healing for request %{public}s", v381, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v382);
          v387 = v382;
          v24 = v816;
          MEMORY[0x223D90A10](v387, -1, -1);
          MEMORY[0x223D90A10](v381, -1, -1);
        }

        else
        {

          v378(v379, v380);
        }

        v388 = v24[581];
        v389 = v24[579];
        v827 = 0;
        v828 = 1;
        v390 = *(v388 + *(v389 + 44));
        if (v390 < 1)
        {
          v409 = v24[636];
          if (*(v409 + 16))
          {
            v410 = v24[549];
            v411 = v24[548];
            v412 = v24[546];
            v413 = *(v409 + 48);
            *(v24 + 85) = *(v409 + 32);
            *(v24 + 87) = v413;
            v415 = *(v409 + 80);
            v414 = *(v409 + 96);
            v416 = *(v409 + 64);
            *(v24 + 760) = *(v409 + 112);
            *(v24 + 91) = v415;
            *(v24 + 93) = v414;
            *(v24 + 89) = v416;
            v765 = v24[85];
            v417 = (v24 + 86);
            v786 = (v24 + 85);
            outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)((v24 + 85), (v24 + 74), &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMd, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMR);
            SamplingParameters.speculationParameters.getter();
            if ((*(v410 + 48))(v412, 1, v411) == 1)
            {
              outlined destroy of [Int](v24[546], &_s15TokenGeneration21SpeculationParametersVSgMd, &_s15TokenGeneration21SpeculationParametersVSgMR);
              v822 = *v417;
              v823 = *(v24 + 44);
              v824 = *(v24 + 45);
              v825 = v24[92];
              v418 = v24[93];
              v419 = v24[94];
              v420 = *(v24 + 760);
            }

            else
            {
              (*(v24[549] + 32))(v24[550], v24[546], v24[548]);
              v500 = Logger.logObject.getter();
              v501 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v500, v501))
              {
                v502 = swift_slowAlloc();
                *v502 = 0;
                _os_log_impl(&dword_220940000, v500, v501, "Overriding default speculation behavior from sampling parameters", v502, 2u);
                MEMORY[0x223D90A10](v502, -1, -1);
              }

              v24 = v816;
              v503 = *(v816 + 4400);
              v504 = *(v816 + 4392);
              v505 = *(v816 + 4384);

              v506 = v417[3];
              v840[0] = v417[2];
              v840[1] = v506;
              *(&v840[1] + 9) = *(v417 + 57);
              v507 = v417[1];
              v838 = *v417;
              v839 = v507;
              DraftingBehavior.updated(with:)(&v833);
              (*(v504 + 8))(v503, v505);
              v822 = v833;
              v823 = v834;
              v824 = *v835;
              v418 = *&v835[24];
              v825 = *&v835[16];
              v419 = v836;
              v420 = v837;
            }

            v508 = v24[634];
            v509 = v24[619];
            v510 = v24[615];
            v511 = v24[604];
            v512 = v24[598];
            swift_beginAccess();
            *v792 = v822;
            *(v792 + 1) = v823;
            *(v792 + 2) = v824;
            v792[6] = v825;
            v781 = v418;
            v24[103] = v418;
            v775 = v419;
            v24[104] = v419;
            v770 = v420;
            *(v24 + 840) = v420;
            v24[216] = type metadata accessor for E5TransformerLanguageModel(0);
            v24[217] = &protocol witness table for E5TransformerLanguageModel;
            v24[213] = v765;
            outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v786, (v24 + 63), &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMd, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMR);
            addPromptLookup #1 (_:) in OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:)((v24 + 213), v508, v510, (v24 + 208));
            __swift_destroy_boxed_opaque_existential_1(v24 + 213);
            outlined init with copy of DeterministicLanguageModelProtocol((v24 + 208), (v24 + 223));
            v513 = v800;
            v514 = swift_allocObject();

            v516 = specialized MaskedLanguageModel.init(_:_:)(v515, v24 + 223, v514);
            v509(v511, v510, v512);

            v517 = Logger.logObject.getter();
            v518 = static os_log_type_t.default.getter();

            v519 = os_log_type_enabled(v517, v518);
            v520 = v24[621];
            v521 = v24[604];
            v522 = v24[598];
            if (v519)
            {
              v523 = swift_slowAlloc();
              v762 = swift_slowAlloc();
              *&v838 = v762;
              *v523 = 136446466;
              v24[531] = v516;

              v524 = String.init<A>(describing:)();
              v526 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v524, v525, &v838);

              *(v523 + 4) = v526;
              *(v523 + 12) = 2082;
              _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
              v527 = dispatch thunk of CustomStringConvertible.description.getter();
              v529 = v528;
              v520(v521, v522);
              v530 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v527, v529, &v838);
              v513 = v800;

              *(v523 + 14) = v530;
              _os_log_impl(&dword_220940000, v517, v518, "Using draft language model %{public}s for request %{public}s", v523, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x223D90A10](v762, -1, -1);
              MEMORY[0x223D90A10](v523, -1, -1);
            }

            else
            {

              v520(v521, v522);
            }

            v24[231] = v513;
            v24[232] = &protocol witness table for MaskedLanguageModel;
            v24[228] = v516;
            v531 = v781;
            if (v781 < 1)
            {
              outlined init with copy of DeterministicLanguageModelProtocol((v24 + 228), (v24 + 233));

              v544 = v775;
            }

            else
            {
              (v24[619])(v24[603], v24[615], v24[598]);

              v532 = Logger.logObject.getter();
              v533 = static os_log_type_t.default.getter();
              v534 = os_log_type_enabled(v532, v533);
              v535 = v24[621];
              v536 = v24[603];
              v537 = v24[598];
              if (v534)
              {
                v538 = swift_slowAlloc();
                v539 = swift_slowAlloc();
                *&v838 = v539;
                *v538 = 136446722;
                _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
                v540 = dispatch thunk of CustomStringConvertible.description.getter();
                v542 = v541;
                v535(v536, v537);
                v543 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v540, v542, &v838);
                v531 = v781;

                *(v538 + 4) = v543;
                *(v538 + 12) = 2050;
                *(v538 + 14) = v781;
                *(v538 + 22) = 2050;
                v544 = v775;
                *(v538 + 24) = v775;
                _os_log_impl(&dword_220940000, v532, v533, "Using speculative streaming for draft model for request %{public}s, gamma: %{public}ld, streamTreeFactor: %{public}ld", v538, 0x20u);
                __swift_destroy_boxed_opaque_existential_1(v539);
                v545 = v539;
                v24 = v816;
                MEMORY[0x223D90A10](v545, -1, -1);
                MEMORY[0x223D90A10](v538, -1, -1);
              }

              else
              {

                v535(v536, v537);
                v544 = v775;
              }

              v556 = (*(v24[639] + 88))(v24[640]);

              v557 = specialized static SpeculativeStreamingLanguageModel.makeStreamTokenIDs(streamCount:vocabularyCount:tokenIDForText:)(v531, v556);

              outlined init with copy of DeterministicLanguageModelProtocol((v24 + 228), (v24 + 318));
              v558 = type metadata accessor for SpeculativeStreamingLanguageModel();
              v559 = swift_allocObject();
              v560 = MEMORY[0x277D84F90];
              v559[9] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_24TokenGenerationInference15LogitCollection_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
              v559[10] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(v560);
              outlined init with take of RandomNumberGenerator(v24 + 159, (v559 + 2));
              v559[7] = v544;
              v559[8] = v557;
              v24[236] = v558;
              v24[237] = &protocol witness table for SpeculativeStreamingLanguageModel;
              v24[233] = v559;
            }

            swift_beginAccess();
            outlined init with copy of DeterministicLanguageModelProtocol((v24 + 293), (v24 + 238));
            SamplingParameters.priorInferenceOutput.getter();
            if (v561)
            {
              v562 = dispatch thunk of TokenizerRunner.tokenize(_:)();
              LookupLanguageModelState<>.init(priorOutputTokens:)(v562, &v838);
              v565 = v838;
              v566 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference19LookupLanguageModelCyAA20PriorOutputNodeStateVGMd, &_s24TokenGenerationInference19LookupLanguageModelCyAA20PriorOutputNodeStateVGMR);
              v567 = swift_allocObject();
              *(v567 + 16) = v565;
              *(v567 + 32) = 2;
              v24[251] = v566;
              v24[252] = &protocol witness table for LookupLanguageModel<A>;

              v24[248] = v567;
            }

            else
            {
              v24[252] = 0;
              *(v24 + 124) = 0u;
              *(v24 + 125) = 0u;
            }

            v568 = v24[581];
            v569 = v24[538];
            v838 = v822;
            v839 = v823;
            v840[0] = v824;
            *&v840[1] = v825;
            *(&v840[1] + 1) = v531;
            *&v840[2] = v544;
            BYTE8(v840[2]) = v770;
            swift_beginAccess();
            v570 = specialized getter of stopTokenID #1 in buildDecoder #1 (_:) in OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:)(&v827, v569, v568);
            DraftingBehavior.makeDecoder(draftModel:targetModel:outerDraftModel:sampler:stopTokenId:)((v24 + 233), (v24 + 238), (v24 + 248), (v24 + 168), v570, v24 + 132);
            v571 = v24[135];
            v572 = v24[136];
            v573 = __swift_project_boxed_opaque_existential_1(v24 + 132, v571);
            v24[191] = v571;
            v24[192] = v572;
            v431 = v795;
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v795);
            (*(*(v571 - 8) + 16))(boxed_opaque_existential_1, v573, v571);

            outlined destroy of [Int](v786, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMd, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMR);
            __swift_destroy_boxed_opaque_existential_1(v24 + 238);
            __swift_destroy_boxed_opaque_existential_1(v24 + 228);
            __swift_destroy_boxed_opaque_existential_1(v24 + 208);
            outlined destroy of [Int]((v24 + 248), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
            __swift_destroy_boxed_opaque_existential_1(v24 + 233);
            __swift_destroy_boxed_opaque_existential_1(v24 + 132);
          }

          else
          {
            v476 = type metadata accessor for BasicDecoder();
            swift_beginAccess();
            outlined init with copy of DeterministicLanguageModelProtocol((v24 + 293), (v24 + 328));
            swift_beginAccess();
            outlined init with copy of DeterministicLanguageModelProtocol((v24 + 168), (v24 + 343));
            v477 = v24[331];
            v478 = v24[332];
            v479 = __swift_mutable_project_boxed_opaque_existential_1((v24 + 328), v477);
            v480 = *(v477 - 8);
            v481 = swift_task_alloc();
            (*(v480 + 16))(v481, v479, v477);
            v482 = specialized BasicDecoder.__allocating_init(languageModel:sampler:)(v481, v24 + 343, v476, v477, v478);
            __swift_destroy_boxed_opaque_existential_1(v24 + 328);

            v24[191] = v476;
            v24[192] = &protocol witness table for BasicDecoder;
            v24[188] = v482;
            v431 = v795;
          }
        }

        else
        {
          v391 = v388 + *(v389 + 36);
          v392 = *(v391 + 8);
          v393 = *(v391 + 64);
          if (v392 == 2)
          {
            v394 = 1;
          }

          else
          {
            v394 = v393;
          }

          (v24[619])(v24[605], v24[615], v24[598]);
          v395 = Logger.logObject.getter();
          v396 = static os_log_type_t.default.getter();
          v397 = os_log_type_enabled(v395, v396);
          v398 = v24[621];
          v399 = v24[605];
          v400 = v24[598];
          if (v397)
          {
            v401 = swift_slowAlloc();
            v801 = swift_slowAlloc();
            *&v838 = v801;
            *v401 = 136446722;
            _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
            v785 = v396;
            v402 = dispatch thunk of CustomStringConvertible.description.getter();
            v403 = v394;
            v404 = v390;
            v406 = v405;
            v398(v399, v400);
            v407 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v402, v406, &v838);
            v390 = v404;
            v394 = v403;

            *(v401 + 4) = v407;
            *(v401 + 12) = 2050;
            *(v401 + 14) = v390;
            *(v401 + 22) = 2050;
            *(v401 + 24) = v403;
            _os_log_impl(&dword_220940000, v395, v785, "Using speculative streaming for request %{public}s, gamma = %{public}ld, treeFactor = %{public}ld", v401, 0x20u);
            __swift_destroy_boxed_opaque_existential_1(v801);
            MEMORY[0x223D90A10](v801, -1, -1);
            v408 = v401;
            v24 = v816;
            MEMORY[0x223D90A10](v408, -1, -1);
          }

          else
          {

            v398(v399, v400);
          }

          v421 = v24[640];
          v422 = v24[639];
          swift_beginAccess();
          outlined init with copy of DeterministicLanguageModelProtocol((v24 + 293), (v24 + 348));
          v423 = (*(v422 + 88))(v421, v422);

          v424 = specialized static SpeculativeStreamingLanguageModel.makeStreamTokenIDs(streamCount:vocabularyCount:tokenIDForText:)(v390, v423);

          outlined init with copy of DeterministicLanguageModelProtocol((v24 + 348), (v24 + 358));
          type metadata accessor for SpeculativeStreamingLanguageModel();
          v425 = swift_allocObject();
          v426 = MEMORY[0x277D84F90];
          v425[9] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_24TokenGenerationInference15LogitCollection_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
          v425[10] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(v426);
          v143 = outlined init with take of RandomNumberGenerator(v24 + 179, (v425 + 2));
          v425[7] = v394;
          v425[8] = v424;
          if (v394 < 1)
          {
            goto LABEL_258;
          }

          LOBYTE(v833) = 1;
          LOBYTE(v838) = 1;
          v24[116] = v390;
          *(v24 + 936) = 0;
          v24[118] = v394;
          v24[119] = 0;
          *(v24 + 960) = 1;
          *(v24 + 241) = 0;
          *(v24 + 968) = 1;
          *(v24 + 969) = 0;
          *(v24 + 243) = 0;
          *(v24 + 488) = 1;
          v24[123] = 0;
          v24[124] = 1;
          *(v24 + 1000) = 0;
          swift_beginAccess();
          outlined init with copy of DeterministicLanguageModelProtocol((v24 + 168), (v24 + 368));
          v427 = type metadata accessor for SpeculativeStreamingPerformanceLoggingDecoder();
          v428 = swift_allocObject();

          v430 = specialized SpeculativeStreamingPerformanceLoggingDecoder.init(languageModel:behavior:sampler:)(v429, v24 + 116, v24 + 368, v428);
          v24[191] = v427;
          v24[192] = &protocol witness table for SpeculativeStreamingPerformanceLoggingDecoder;

          v24[188] = v430;
          __swift_destroy_boxed_opaque_existential_1(v24 + 348);
          v431 = v795;
        }
      }

      else
      {
        (v24[619])(v24[610], v24[615], v24[598]);
        v362 = Logger.logObject.getter();
        v363 = static os_log_type_t.default.getter();
        v364 = os_log_type_enabled(v362, v363);
        v365 = v24[621];
        v366 = v24[610];
        v367 = v24[598];
        if (v364)
        {
          v368 = swift_slowAlloc();
          v369 = swift_slowAlloc();
          *&v838 = v369;
          *v368 = 136446210;
          _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v370 = dispatch thunk of CustomStringConvertible.description.getter();
          v372 = v371;
          v365(v366, v367);
          v373 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v370, v372, &v838);

          *(v368 + 4) = v373;
          _os_log_impl(&dword_220940000, v362, v363, "Using token healing for request %{public}s", v368, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v369);
          v374 = v369;
          v24 = v816;
          MEMORY[0x223D90A10](v374, -1, -1);
          MEMORY[0x223D90A10](v368, -1, -1);
        }

        else
        {

          v365(v366, v367);
        }

        v435 = *(v24 + 125);
        v436 = v24[641];
        v437 = v24[633];
        v779 = v24[581];
        v774 = v24[579];
        v438 = v24[566];
        v439 = v24[538];
        v440 = v24[536];
        v441 = (v779 + *(v774 + 68));
        v442 = *v441;
        v443 = v441[1];
        v444 = v441[2];
        v445 = v441[3];
        __swift_project_boxed_opaque_existential_1((v439 + 56), *(v439 + 80));
        v446 = off_2834512B0(v437);
        v448 = specialized static OnDeviceInferenceContextFactory.stopTokenIntValue(stopTokenOverride:stopToken:tokenizer:)(v446, v447, v442, v443, v444, v445);

        v449 = type metadata accessor for TokenizerRunnerPrefixMatchingTextProcessor();
        v450 = swift_allocObject();
        *(v450 + 32) = 1;
        *(v450 + 40) = 0;
        *(v450 + 48) = 513;
        *(v450 + 16) = v436;
        *(v450 + 24) = 0;
        *(v816 + 3048) = v449;
        *(v816 + 3056) = &protocol witness table for TokenizerRunnerPrefixMatchingTextProcessor;
        *(v816 + 3024) = v450;
        outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v440 + v435, v438, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
        v451 = swift_allocObject();
        *(v451 + 16) = v784;
        *(v451 + 32) = v448;
        v24 = v816;
        v452 = type metadata accessor for TokenHealingDecoder(0);
        v453 = swift_allocObject();
        v454 = (v453 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_bufferedPrompt);
        v455 = MEMORY[0x277D84F90];
        *v454 = MEMORY[0x277D84F90];
        v454[1] = v455;
        v454[2] = v455;
        *(v453 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_tokensAreHealed) = 0;

        outlined init with copy of DeterministicLanguageModelProtocol(v816 + 3024, v453 + 16);
        outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v438, v453 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_overflowConstraints, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
        *(v453 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_stopTokenIDs) = v451;
        v826 = v455;
        v827 = 0;
        v828 = 1;
        v456 = *(v779 + *(v774 + 44));
        if (v456 < 1)
        {
          v483 = *(v816 + 5088);
          if (*(v483 + 16))
          {
            v766 = v452;
            v484 = *(v816 + 4392);
            v485 = *(v816 + 4384);
            v486 = *(v816 + 4376);
            v487 = *(v483 + 48);
            *(v816 + 416) = *(v483 + 32);
            *(v816 + 432) = v487;
            v489 = *(v483 + 80);
            v488 = *(v483 + 96);
            v490 = *(v483 + 64);
            *(v816 + 496) = *(v483 + 112);
            *(v816 + 464) = v489;
            *(v816 + 480) = v488;
            *(v816 + 448) = v490;
            v491 = v816;
            v769 = *(v816 + 416);
            v492 = (v816 + 424);
            outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v816 + 416, v816 + 328, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMd, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMR);
            SamplingParameters.speculationParameters.getter();
            v788 = v453;
            if ((*(v484 + 48))(v486, 1, v485) == 1)
            {
              outlined destroy of [Int](*(v816 + 4376), &_s15TokenGeneration21SpeculationParametersVSgMd, &_s15TokenGeneration21SpeculationParametersVSgMR);
              v493 = *(v816 + 440);
              v829 = *v492;
              v830 = v493;
              v831 = *(v816 + 456);
              v832 = *(v816 + 472);
              v495 = *(v816 + 480);
              v494 = *(v816 + 488);
              v496 = *(v816 + 496);
            }

            else
            {
              (*(*(v816 + 4392) + 32))(*(v816 + 4408), *(v816 + 4376), *(v816 + 4384));
              v582 = Logger.logObject.getter();
              v583 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v582, v583))
              {
                v584 = swift_slowAlloc();
                *v584 = 0;
                _os_log_impl(&dword_220940000, v582, v583, "Overriding default speculation behavior from sampling parameters", v584, 2u);
                MEMORY[0x223D90A10](v584, -1, -1);
              }

              v491 = v816;
              v585 = *(v816 + 4408);
              v586 = *(v816 + 4392);
              v587 = *(v816 + 4384);

              v588 = *(v816 + 472);
              v840[0] = *(v816 + 456);
              v840[1] = v588;
              *(&v840[1] + 9) = *(v816 + 481);
              v589 = *(v816 + 440);
              v838 = *v492;
              v839 = v589;
              DraftingBehavior.updated(with:)(&v833);
              (*(v586 + 8))(v585, v587);
              v829 = v833;
              v830 = v834;
              v831 = *v835;
              v495 = *&v835[24];
              v832 = *&v835[16];
              v494 = v836;
              v496 = v837;
            }

            v590 = *(v491 + 5072);
            v591 = *(v491 + 4952);
            v592 = *(v491 + 4920);
            v593 = *(v491 + 4864);
            v594 = *(v491 + 4784);
            swift_beginAccess();
            v595 = v830;
            *v792 = v829;
            *(v792 + 1) = v595;
            *(v792 + 2) = v831;
            v792[6] = v832;
            v776 = v495;
            *(v491 + 824) = v495;
            *(v491 + 832) = v494;
            v763 = v496;
            *(v491 + 840) = v496;
            *(v491 + 3288) = type metadata accessor for E5TransformerLanguageModel(0);
            *(v491 + 3296) = &protocol witness table for E5TransformerLanguageModel;
            *(v491 + 3264) = v769;
            outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v491 + 416, v491 + 240, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMd, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMR);
            addPromptLookup #1 (_:) in OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:)(v491 + 3264, v590, v592, v491 + 3224);
            __swift_destroy_boxed_opaque_existential_1((v491 + 3264));
            outlined init with copy of DeterministicLanguageModelProtocol(v491 + 3224, v491 + 3344);
            v596 = swift_allocObject();

            v598 = specialized MaskedLanguageModel.init(_:_:)(v597, (v491 + 3344), v596);
            v591(v593, v592, v594);
            v599 = v598;

            v600 = Logger.logObject.getter();
            v601 = static os_log_type_t.default.getter();

            v602 = os_log_type_enabled(v600, v601);
            v603 = *(v491 + 4968);
            v604 = *(v491 + 4864);
            v605 = *(v491 + 4784);
            v771 = v599;
            if (v602)
            {
              v606 = swift_slowAlloc();
              v761 = swift_slowAlloc();
              *&v838 = v761;
              *v606 = 136446466;
              *(v491 + 4280) = v599;

              v607 = String.init<A>(describing:)();
              v609 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v607, v608, &v838);

              *(v606 + 4) = v609;
              *(v606 + 12) = 2082;
              _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
              v610 = dispatch thunk of CustomStringConvertible.description.getter();
              v612 = v611;
              v603(v604, v605);
              v613 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v610, v612, &v838);
              v599 = v771;

              *(v606 + 14) = v613;
              _os_log_impl(&dword_220940000, v600, v601, "Using draft language model %{public}s for request %{public}s", v606, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x223D90A10](v761, -1, -1);
              MEMORY[0x223D90A10](v606, -1, -1);
            }

            else
            {

              v603(v604, v605);
            }

            *(v491 + 3448) = v800;
            *(v491 + 3456) = &protocol witness table for MaskedLanguageModel;
            *(v491 + 3424) = v599;

            closure #1 in TokenHealingDecoder.init(processor:overflowConstraints:stopTokenIDs:buildDecoder:)(v491 + 3424, &v826, (v491 + 3384));
            __swift_destroy_boxed_opaque_existential_1((v491 + 3424));
            v614 = v776;
            v24 = v491;
            v615 = v794;
            if (v776 < 1)
            {
              outlined init with copy of DeterministicLanguageModelProtocol(v491 + 3384, v491 + 3464);
            }

            else
            {
              (*(v491 + 4952))(*(v491 + 4856), *(v491 + 4920), *(v491 + 4784));
              v616 = Logger.logObject.getter();
              v617 = static os_log_type_t.default.getter();
              v618 = os_log_type_enabled(v616, v617);
              v619 = *(v491 + 4968);
              v620 = v24[607];
              v621 = v24[598];
              if (v618)
              {
                v622 = swift_slowAlloc();
                v803 = swift_slowAlloc();
                *&v838 = v803;
                *v622 = 136446722;
                _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
                v623 = dispatch thunk of CustomStringConvertible.description.getter();
                v625 = v624;
                v619(v620, v621);
                v626 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v623, v625, &v838);
                v615 = v794;

                *(v622 + 4) = v626;
                *(v622 + 12) = 2050;
                v614 = v776;
                *(v622 + 14) = v776;
                *(v622 + 22) = 2050;
                *(v622 + 24) = v494;
                _os_log_impl(&dword_220940000, v616, v617, "Using speculative streaming for draft model for request %{public}s, gamma: %{public}ld, streamTreeFactor: %{public}ld", v622, 0x20u);
                __swift_destroy_boxed_opaque_existential_1(v803);
                v24 = v816;
                MEMORY[0x223D90A10](v803, -1, -1);
                MEMORY[0x223D90A10](v622, -1, -1);
              }

              else
              {

                v619(v620, v621);
                v614 = v776;
              }

              v627 = (*(v24[639] + 88))(v24[640]);

              v628 = specialized static SpeculativeStreamingLanguageModel.makeStreamTokenIDs(streamCount:vocabularyCount:tokenIDForText:)(v614, v627);

              outlined init with copy of DeterministicLanguageModelProtocol((v24 + 423), (v24 + 143));
              v629 = type metadata accessor for SpeculativeStreamingLanguageModel();
              v630 = swift_allocObject();
              v631 = MEMORY[0x277D84F90];
              v630[9] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_24TokenGenerationInference15LogitCollection_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
              v630[10] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(v631);
              outlined init with take of RandomNumberGenerator((v24 + 143), (v630 + 2));
              v630[7] = v494;
              v630[8] = v628;
              v24[436] = v629;
              v24[437] = &protocol witness table for SpeculativeStreamingLanguageModel;
              v24[433] = v630;
            }

            v452 = v766;
            swift_beginAccess();
            closure #1 in TokenHealingDecoder.init(processor:overflowConstraints:stopTokenIDs:buildDecoder:)((v24 + 293), &v826, v24 + 438);
            SamplingParameters.priorInferenceOutput.getter();
            if (v632)
            {
              v633 = dispatch thunk of TokenizerRunner.tokenize(_:)();
              LookupLanguageModelState<>.init(priorOutputTokens:)(v633, &v838);
              v634 = v838;
              v635 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference19LookupLanguageModelCyAA20PriorOutputNodeStateVGMd, &_s24TokenGenerationInference19LookupLanguageModelCyAA20PriorOutputNodeStateVGMR);
              v636 = swift_allocObject();
              *(v636 + 16) = v634;
              *(v636 + 32) = 2;
              v24[451] = v635;
              v24[452] = &protocol witness table for LookupLanguageModel<A>;

              v24[448] = v636;
            }

            else
            {
              v24[452] = 0;
              *(v24 + 224) = 0u;
              *(v24 + 225) = 0u;
            }

            v637 = v24[581];
            v638 = v24[538];
            v838 = v829;
            v839 = v830;
            v840[0] = v831;
            *&v840[1] = v832;
            *(&v840[1] + 1) = v614;
            *&v840[2] = v494;
            BYTE8(v840[2]) = v763;
            swift_beginAccess();
            v639 = specialized getter of stopTokenID #1 in buildDecoder #1 (_:) in OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:)(&v827, v638, v637);
            DraftingBehavior.makeDecoder(draftModel:targetModel:outerDraftModel:sampler:stopTokenId:)((v24 + 433), (v24 + 438), (v24 + 448), (v24 + 168), v639, v24 + 126);
            v804 = *(v615 + 711);
            v640 = *(v615 + 711);
            v641 = __swift_project_boxed_opaque_existential_1(v24 + 126, v640);
            *(v24 + 193) = v804;
            v642 = __swift_allocate_boxed_opaque_existential_1(v24 + 383);
            (*(*(v640 - 8) + 16))(v642, v641, v640);

            outlined destroy of [Int]((v24 + 52), &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMd, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMR);
            __swift_destroy_boxed_opaque_existential_1(v24 + 438);
            __swift_destroy_boxed_opaque_existential_1(v24 + 423);
            __swift_destroy_boxed_opaque_existential_1(v24 + 403);
            outlined destroy of [Int]((v24 + 448), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
            __swift_destroy_boxed_opaque_existential_1(v24 + 433);
            __swift_destroy_boxed_opaque_existential_1(v24 + 126);
            v453 = v788;
          }

          else
          {
            v575 = type metadata accessor for BasicDecoder();
            swift_beginAccess();
            closure #1 in TokenHealingDecoder.init(processor:overflowConstraints:stopTokenIDs:buildDecoder:)(v816 + 2344, &v826, (v816 + 3664));
            swift_beginAccess();
            outlined init with copy of DeterministicLanguageModelProtocol(v816 + 1344, v816 + 3624);
            v576 = *(v816 + 3688);
            v577 = *(v816 + 3696);
            v578 = __swift_mutable_project_boxed_opaque_existential_1(v816 + 3664, v576);
            v579 = *(v576 - 8);
            v580 = swift_task_alloc();
            (*(v579 + 16))(v580, v578, v576);
            v581 = specialized BasicDecoder.__allocating_init(languageModel:sampler:)(v580, (v816 + 3624), v575, v576, v577);
            __swift_destroy_boxed_opaque_existential_1((v816 + 3664));

            *(v816 + 3088) = v575;
            *(v816 + 3096) = &protocol witness table for BasicDecoder;
            *(v816 + 3064) = v581;
          }
        }

        else
        {
          v787 = v453;
          v457 = *(v816 + 4648) + *(*(v816 + 4632) + 36);
          v458 = *(v457 + 8);
          v459 = *(v457 + 64);
          if (v458 == 2)
          {
            v460 = 1;
          }

          else
          {
            v460 = v459;
          }

          (*(v816 + 4952))(*(v816 + 4872), *(v816 + 4920), *(v816 + 4784));
          v461 = Logger.logObject.getter();
          v462 = static os_log_type_t.default.getter();
          v463 = os_log_type_enabled(v461, v462);
          v464 = *(v816 + 4968);
          v465 = *(v816 + 4872);
          v466 = *(v816 + 4784);
          if (v463)
          {
            v467 = swift_slowAlloc();
            v802 = swift_slowAlloc();
            *&v838 = v802;
            *v467 = 136446722;
            _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
            v780 = v460;
            v468 = dispatch thunk of CustomStringConvertible.description.getter();
            v796 = v462;
            v469 = v456;
            v470 = v452;
            v472 = v471;
            v464(v465, v466);
            v473 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v468, v472, &v838);
            v452 = v470;
            v456 = v469;

            *(v467 + 4) = v473;
            *(v467 + 12) = 2050;
            *(v467 + 14) = v469;
            *(v467 + 22) = 2050;
            v474 = v780;
            *(v467 + 24) = v780;
            _os_log_impl(&dword_220940000, v461, v796, "Using speculative streaming for request %{public}s, gamma = %{public}ld, treeFactor = %{public}ld", v467, 0x20u);
            __swift_destroy_boxed_opaque_existential_1(v802);
            MEMORY[0x223D90A10](v802, -1, -1);
            v475 = v467;
            v24 = v816;
            MEMORY[0x223D90A10](v475, -1, -1);
          }

          else
          {

            v464(v465, v466);
            v474 = v460;
          }

          v546 = v24[640];
          v547 = v24[639];
          swift_beginAccess();
          closure #1 in TokenHealingDecoder.init(processor:overflowConstraints:stopTokenIDs:buildDecoder:)((v24 + 293), &v826, v24 + 443);
          v548 = (*(v547 + 88))(v546, v547);

          v549 = specialized static SpeculativeStreamingLanguageModel.makeStreamTokenIDs(streamCount:vocabularyCount:tokenIDForText:)(v456, v548);

          outlined init with copy of DeterministicLanguageModelProtocol((v24 + 443), (v24 + 398));
          type metadata accessor for SpeculativeStreamingLanguageModel();
          v550 = swift_allocObject();
          v551 = MEMORY[0x277D84F90];
          v550[9] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_24TokenGenerationInference15LogitCollection_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
          v550[10] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(v551);
          v143 = outlined init with take of RandomNumberGenerator(v24 + 199, (v550 + 2));
          v550[7] = v474;
          v550[8] = v549;
          v453 = v787;
          if (v474 < 1)
          {
            goto LABEL_259;
          }

          LOBYTE(v833) = 1;
          LOBYTE(v838) = 1;
          v24[106] = v456;
          *(v24 + 856) = 0;
          v24[108] = v474;
          v24[109] = 0;
          *(v24 + 880) = 1;
          *(v24 + 221) = 0;
          *(v24 + 888) = 1;
          *(v24 + 889) = 0;
          *(v24 + 223) = 0;
          *(v24 + 448) = 1;
          v24[113] = 0;
          v24[114] = 1;
          *(v24 + 920) = 0;
          swift_beginAccess();
          outlined init with copy of DeterministicLanguageModelProtocol((v24 + 168), (v24 + 363));
          v552 = type metadata accessor for SpeculativeStreamingPerformanceLoggingDecoder();
          v553 = swift_allocObject();

          v555 = specialized SpeculativeStreamingPerformanceLoggingDecoder.init(languageModel:behavior:sampler:)(v554, v24 + 106, v24 + 363, v553);
          v24[386] = v552;
          v24[387] = &protocol witness table for SpeculativeStreamingPerformanceLoggingDecoder;

          v24[383] = v555;
          __swift_destroy_boxed_opaque_existential_1(v24 + 443);
        }

        v431 = (v24 + 373);
        outlined destroy of [Int](v24[566], &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
        __swift_destroy_boxed_opaque_existential_1(v24 + 378);
        outlined init with take of RandomNumberGenerator((v24 + 383), v453 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_baseDecoder);
        *(v453 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_delayedLanguageModels) = v826;
        v24[376] = v452;
        v24[377] = &protocol witness table for TokenHealingDecoder;
        v24[373] = v453;
      }

      outlined init with take of RandomNumberGenerator(v431, (v24 + 183));
      v643 = v24[619];
      v644 = v24[615];
      v645 = v24[602];
      v646 = v24[598];
      outlined init with copy of DeterministicLanguageModelProtocol((v24 + 183), (v24 + 263));
      v643(v645, v644, v646);
      v647 = Logger.logObject.getter();
      v648 = static os_log_type_t.info.getter();
      v649 = os_log_type_enabled(v647, v648);
      v650 = v24[621];
      v651 = v24[602];
      v652 = v24[598];
      if (v649)
      {
        v653 = swift_slowAlloc();
        v654 = swift_slowAlloc();
        *&v838 = v654;
        *v653 = 136446466;
        outlined init with copy of DeterministicLanguageModelProtocol(v816 + 2104, v816 + 2504);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference15SamplingDecoder_pMd, &_s24TokenGenerationInference15SamplingDecoder_pMR);
        v655 = String.init<A>(describing:)();
        v657 = v656;
        __swift_destroy_boxed_opaque_existential_1((v816 + 2104));
        v658 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v655, v657, &v838);

        *(v653 + 4) = v658;
        *(v653 + 12) = 2082;
        _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v659 = dispatch thunk of CustomStringConvertible.description.getter();
        v661 = v660;
        v650(v651, v652);
        v662 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v659, v661, &v838);

        *(v653 + 14) = v662;
        _os_log_impl(&dword_220940000, v647, v648, "Using decoder %{public}s for request %{public}s", v653, 0x16u);
        swift_arrayDestroy();
        v663 = v654;
        v24 = v816;
        MEMORY[0x223D90A10](v663, -1, -1);
        MEMORY[0x223D90A10](v653, -1, -1);
      }

      else
      {

        v650(v651, v652);
        __swift_destroy_boxed_opaque_existential_1(v24 + 263);
      }

      v664 = *(v24[632] + 16);

      v665 = 0;
      if (v664)
      {
        v666 = 32;
        while (1)
        {
          v667 = v24[544];
          outlined init with copy of DeterministicLanguageModelProtocol(v24[632] + v666, (v24 + 268));
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pMR);
          v668 = type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer(0);
          v669 = swift_dynamicCast();
          v670 = *(v668 - 8);
          (*(v670 + 56))(v667, v669 ^ 1u, 1, v668);
          v671 = (*(v670 + 48))(v667, 1, v668);
          v24 = v816;
          LODWORD(v667) = v671;
          v143 = outlined destroy of [Int](*(v816 + 4352), &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMR);
          if (v667 != 1)
          {
            break;
          }

          ++v665;
          v666 += 40;
          if (v664 == v665)
          {
            v665 = v664;
            break;
          }
        }
      }

      v672 = v24[632];
      v673 = *(v672 + 16);
      if (v665 == v673)
      {
        v674 = v24[545];
        v675 = type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer(0);
        (*(*(v675 - 8) + 56))(v674, 1, 1, v675);
LABEL_246:
        v684 = v24[577];
        v685 = *(v816 + 4600);
        v686 = *(v816 + 4360);
        v687 = *(v816 + 4328);

        v688 = v816;
        v689 = *(v684 + *(v685 + 28));

        v797 = SamplingParameters.useHighQualityImageTokenization.getter();
        outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v686, v687, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMR);
        type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer(0);
        v690 = (*(*(v675 - 8) + 48))(v687, 1, v675);
        v691 = *(v816 + 4328);
        v805 = v689;
        if (v690 == 1)
        {
          outlined destroy of [Int](v691, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMR);
          v692 = 0;
        }

        else
        {
          v693 = *(v675 + 32);
          v694 = (v691 + *(v675 + 28));
          v696 = *v694;
          v695 = v694[1];
          v697 = v694[2];
          v767 = v697;
          v772 = *v694;
          v759 = v694[3];
          v698 = v694[4];
          v699 = v694[5];
          v700 = v694[6];
          v782 = *(v816 + 4328);
          v789 = *(v691 + v693);
          v701 = type metadata accessor for OnDeviceImagePreprocessor();
          v702 = swift_allocObject();
          type metadata accessor for ImageTokenizer();
          v777 = *(v782 + 16);
          v702[2] = v696;
          v702[3] = v695;
          v702[4] = v697;
          v702[5] = v759;
          v702[6] = v698;
          v702[7] = v699;
          v702[8] = v700;
          *(v816 + 2488) = v701;
          *(v816 + 2496) = &protocol witness table for OnDeviceImagePreprocessor;
          *(v816 + 2464) = v702;
          v692 = swift_allocObject();
          v703 = __swift_mutable_project_boxed_opaque_existential_1(v816 + 2464, v701);
          v704 = *(v701 - 8);
          v705 = swift_task_alloc();
          (*(v704 + 16))(v705, v703, v701);
          v706 = *v705;
          *(v692 + 40) = v701;
          *(v692 + 48) = &protocol witness table for OnDeviceImagePreprocessor;
          *(v692 + 16) = v706;
          *(v692 + 56) = v772;
          *(v692 + 64) = v695;
          *(v692 + 72) = v767;
          *(v692 + 80) = v759;
          *(v692 + 88) = v698;
          *(v692 + 96) = v699;
          *(v692 + 104) = v700;
          *(v692 + 112) = v777;
          *(v692 + 128) = v789;
          swift_unknownObjectRetain();

          __swift_destroy_boxed_opaque_existential_1((v816 + 2464));

          outlined destroy of InferenceRequest(v782, type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer);
        }

        v760 = *(v816 + 5168);
        v707 = *(v816 + 5144);
        v790 = *(v816 + 412);
        v708 = *(v816 + 4648);
        v709 = *(v816 + 4632);
        v710 = *(v816 + 4616);
        v757 = *(v816 + 588);
        v758 = *(v816 + 4480);
        v711 = *(v816 + 4464);

        v798 = specialized OnDeviceAttachmentTokenizer.__allocating_init(imageTokenIDGenerator:useHighQualityImageTokenization:imageTokenizer:)(v712, v797 & 1, v692);

        outlined copy of ClassifierMetadata?(v811, v812, v807);
        _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF24TokenGenerationInference18ClassifierMetadataV_s5NeverOAD18ClassifyingDecoderVTg504_s24cd165Inference08OnDeviceC14ContextFactoryC06createcF07request13configuration9isOneShotAA0decF0CAA0C7RequestV_20ModelManagerServices0c8ProviderN13ConfigurationVSbtYaKFAA18ij5VAA18fG7VXEfU6_AD34DeterministicLanguageModelProtocol_p0cD4Core0C17IDToTextConverterCTf1ncn_n(v811, v812, v807, v816 + 2344, v707, v816 + 128);

        outlined init with copy of DeterministicLanguageModelProtocol(v816 + 1464, v816 + 2304);
        outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v816 + 128, v816 + 16, &_s24TokenGenerationInference18ClassifyingDecoderVSgMd, &_s24TokenGenerationInference18ClassifyingDecoderVSgMR);
        swift_beginAccess();
        v713 = *(v792 + 3);
        v840[0] = *(v792 + 2);
        v840[1] = v713;
        *(&v840[1] + 9) = *(v792 + 57);
        v714 = *(v792 + 1);
        v838 = *v792;
        v839 = v714;
        v715 = *(v710 + v790);
        v716 = *(v708 + v709[10]);
        v717 = *(v708 + v709[12]);
        v718 = (v708 + v709[17]);
        v719 = *v718;
        v720 = v718[1];
        v721 = v718[2];
        v722 = v718[3];
        outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v708 + v757, v711, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMR);
        LODWORD(v708) = v760(v711, 1, v758);

        outlined copy of StopToken?(v719, v720, v721, v722);
        v793 = v716;
        v783 = v719;
        v791 = v717;
        v773 = v721;
        v778 = v720;
        v764 = v722;
        v768 = v715;
        if (v708 == 1)
        {
          v723 = *(v816 + 5168);
          v724 = *(v816 + 4520);
          v725 = *(v816 + 4488);
          v726 = *(v816 + 4480);
          v727 = *(v816 + 4464);
          v728 = *(v816 + 4360);
          static PromptPreprocessingTemplateVersion.default.getter();

          outlined destroy of [Int](v816 + 128, &_s24TokenGenerationInference18ClassifyingDecoderVSgMd, &_s24TokenGenerationInference18ClassifyingDecoderVSgMR);
          outlined destroy of [Int](v728, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMR);
          __swift_destroy_boxed_opaque_existential_1((v816 + 1464));
          (*(v725 + 8))(v724, v726);
          v688 = v816;
          outlined destroy of [Int](v806, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
          outlined destroy of [Int](v799, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
          if (v723(v727, 1, v726) != 1)
          {
            outlined destroy of [Int](*(v816 + 4464), &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMR);
          }
        }

        else
        {
          v729 = *(v816 + 4520);
          v730 = *(v816 + 4496);
          v731 = *(v816 + 4488);
          v732 = *(v816 + 4480);
          v733 = *(v816 + 4464);
          v734 = *(v816 + 4360);

          outlined destroy of [Int](v816 + 128, &_s24TokenGenerationInference18ClassifyingDecoderVSgMd, &_s24TokenGenerationInference18ClassifyingDecoderVSgMR);
          outlined destroy of [Int](v734, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMR);
          __swift_destroy_boxed_opaque_existential_1((v816 + 1464));
          (*(v731 + 8))(v729, v732);
          outlined destroy of [Int](v806, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
          outlined destroy of [Int](v799, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
          (*(v731 + 32))(v730, v733, v732);
        }

        v735 = *(v688 + 643);
        v736 = *(v688 + 642);
        v737 = v688;
        v756 = *(v688 + 632);
        v738 = *(v688 + 621);
        v739 = *(v737 + 615);
        v740 = *(v737 + 598);
        v755 = *(v737 + 581);
        v753 = *(v737 + 577);
        v741 = *(v737 + 562);
        v742 = *(v737 + 561);
        v754 = *(v737 + 560);
        v743 = *(v737 + 540);
        outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v753 + *(*(v737 + 575) + 44), v743, &_s19TokenGenerationCore06GuidedB17VocabularyManagerVSgMd, &_s19TokenGenerationCore06GuidedB17VocabularyManagerVSgMR);
        *(v737 + 306) = v736;
        *(v737 + 307) = MEMORY[0x277D71E08];
        *(v737 + 303) = v735;
        v738(v739, v740);
        type metadata accessor for OnDeviceInferenceContext(0);
        v744 = swift_allocObject();
        v745 = v744 + OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext____lazy_storage___maximumContextLength;
        *v745 = 0;
        *(v745 + 8) = 1;
        *(v744 + OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext____lazy_storage___assets) = 0;
        *(v744 + OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext____lazy_storage___modelVersion) = xmmword_220AE5250;
        outlined init with take of RandomNumberGenerator(v737 + 144, v744 + 16);
        v746 = v737[3];
        *(v744 + 104) = v737[4];
        v747 = v737[6];
        *(v744 + 120) = v737[5];
        *(v744 + 136) = v747;
        *(v744 + 152) = v737[7];
        v748 = v737[2];
        *(v744 + 56) = v737[1];
        *(v744 + 72) = v748;
        *(v744 + 88) = v746;
        v749 = v839;
        *(v744 + 168) = v838;
        v750 = v840[0];
        v751 = v840[1];
        *(v744 + 225) = *(&v840[1] + 9);
        *(v744 + 216) = v751;
        *(v744 + 200) = v750;
        *(v744 + 184) = v749;
        *(v744 + 248) = v768;
        *(v744 + 304) = v805;
        outlined init with take of RandomNumberGenerator((v737 + 2424), v744 + 256);
        *(v744 + 296) = v756;
        *(v744 + 312) = v793;
        *(v744 + 320) = v791;
        *(v744 + 328) = v811;
        *(v744 + 336) = v812;
        *(v744 + 344) = v807;
        *(v744 + 352) = v783;
        *(v744 + 360) = v778;
        *(v744 + 368) = v773;
        *(v744 + 376) = v764;
        *(v744 + 384) = v798;
        (*(v742 + 32))(v744 + OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext_promptPreprocessingTemplateVersion, v741, v754);
        outlined init with take of Asset?(v743, v744 + OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext_guidedGenerationVocabularyManager, &_s19TokenGenerationCore06GuidedB17VocabularyManagerVSgMd, &_s19TokenGenerationCore06GuidedB17VocabularyManagerVSgMR);
        outlined destroy of InferenceRequest(v753, type metadata accessor for OnDeviceInferenceAssetObjectTokenizer);
        __swift_destroy_boxed_opaque_existential_1(v737 + 168);
        __swift_destroy_boxed_opaque_existential_1(v737 + 293);
        outlined destroy of InferenceRequest(v755, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);

        v752 = *(v737 + 1);

        return v752(v744);
      }

      if (v665 < v673)
      {
        v676 = v24[543];
        v677 = v24[542];
        outlined init with copy of DeterministicLanguageModelProtocol(v672 + 40 * v665 + 32, (v24 + 273));
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pMR);
        v675 = type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer(0);
        v678 = swift_dynamicCast();
        v679 = v24;
        v680 = *(v675 - 8);
        v681 = *(v680 + 56);
        v681(v676, v678 ^ 1u, 1, v675);
        outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v676, v677, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMR);
        v143 = (*(v680 + 48))(v677, 1, v675);
        if (v143 != 1)
        {
          v682 = v679[545];
          v683 = v679[543];
          _s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVWObTm_0(v679[542], v682, type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer);
          outlined destroy of [Int](v683, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMR);
          v681(v682, 0, 1, v675);
          v24 = v679;
          goto LABEL_246;
        }

LABEL_261:
        __break(1u);
        return MEMORY[0x2822009F8](v143, v144, v145);
      }

LABEL_257:
      __break(1u);
LABEL_258:
      __break(1u);
LABEL_259:
      __break(1u);
      goto LABEL_260;
    }

    v318 = v24;
    v319 = v314;
    v320 = v313;
    v321 = v318[552];
    SamplingParameters.strategy.getter();
    v322 = type metadata accessor for SamplingStrategy();
    v323 = *(v322 - 8);
    v324 = (*(v323 + 48))(v321, 1, v322);
    v325 = v318[554];
    if (v324 == 1)
    {
      outlined destroy of [Int](v318[552], &_s15TokenGeneration16SamplingStrategyVSgMd, &_s15TokenGeneration16SamplingStrategyVSgMR);
      v326 = type metadata accessor for SamplingStrategy.Choice();
      (*(*(v326 - 8) + 56))(v325, 1, 1, v326);
      outlined destroy of [Int](v325, &_s15TokenGeneration16SamplingStrategyV6ChoiceOSgMd, &_s15TokenGeneration16SamplingStrategyV6ChoiceOSgMR);
    }

    else
    {
      v329 = v318[553];
      v330 = v318[552];
      SamplingStrategy.choice.getter();
      (*(v323 + 8))(v330, v322);
      v331 = type metadata accessor for SamplingStrategy.Choice();
      v332 = *(v331 - 8);
      (*(v332 + 56))(v325, 0, 1, v331);
      outlined init with take of Asset?(v325, v329, &_s15TokenGeneration16SamplingStrategyV6ChoiceOSgMd, &_s15TokenGeneration16SamplingStrategyV6ChoiceOSgMR);
      v333 = (*(v332 + 88))(v329, v331);
      if (v333 == *MEMORY[0x277D71C40])
      {
        v334 = v318[553];
        (*(v332 + 96))(v334, v331);
        v335 = *v334;
        if (v319)
        {
          v336 = 0;
        }

        else
        {
          v336 = [objc_allocWithZone(TGIMersenneTwisterEngine) initWithSeed_];
        }

        v24 = v816;
        *(&v839 + 1) = &type metadata for SeedableRandomNumberGenerator;
        *&v840[0] = lazy protocol witness table accessor for type SeedableRandomNumberGenerator and conformance SeedableRandomNumberGenerator();
        *&v838 = v336;
        v497 = type metadata accessor for NucleusSampling();
        swift_allocObject();
        v498 = NucleusSampling.init(p:temperature:generator:)(&v838, v335, v312);
        *(v816 + 2408) = v497;
        *(v816 + 2416) = &protocol witness table for NucleusSampling;
        *(v816 + 2384) = v498;
        v328 = (v816 + 2384);
        goto LABEL_141;
      }

      if (v333 == *MEMORY[0x277D71C48])
      {
        v432 = *(v816 + 4424);
        (*(v332 + 96))(v432, v331);
        v433 = *v432;
        if (v319)
        {
          v434 = 0;
        }

        else
        {
          v434 = [objc_allocWithZone(TGIMersenneTwisterEngine) initWithSeed_];
        }

        v24 = v816;
        *(&v839 + 1) = &type metadata for SeedableRandomNumberGenerator;
        *&v840[0] = lazy protocol witness table accessor for type SeedableRandomNumberGenerator and conformance SeedableRandomNumberGenerator();
        *&v838 = v434;
        v563 = type metadata accessor for TopK();
        swift_allocObject();
        v564 = TopK.init(k:temperature:generator:)(v433, &v838, v312);
        *(v816 + 2608) = v563;
        *(v816 + 2616) = &protocol witness table for TopK;
        *(v816 + 2584) = v564;
        v328 = (v816 + 2584);
        goto LABEL_141;
      }

      if (v333 != *MEMORY[0x277D71C50])
      {
        (*(v332 + 8))(*(v816 + 4424), v331);
        if (v319)
        {
          v499 = 0;
        }

        else
        {
          v499 = [objc_allocWithZone(TGIMersenneTwisterEngine) initWithSeed_];
        }

        v24 = v816;
        *(v816 + 2728) = &type metadata for SeedableRandomNumberGenerator;
        *(v816 + 2736) = lazy protocol witness table accessor for type SeedableRandomNumberGenerator and conformance SeedableRandomNumberGenerator();
        *(v816 + 2704) = v499;
        v342 = type metadata accessor for GreedySampling();
        v343 = swift_allocObject();
        v344 = (v816 + 2704);
        goto LABEL_150;
      }
    }

    if (v319)
    {
      v327 = 0;
    }

    else
    {
      v327 = [objc_allocWithZone(TGIMersenneTwisterEngine) initWithSeed_];
    }

    v24 = v816;
    *(v816 + 1408) = &type metadata for SeedableRandomNumberGenerator;
    *(v816 + 1416) = lazy protocol witness table accessor for type SeedableRandomNumberGenerator and conformance SeedableRandomNumberGenerator();
    *(v816 + 1384) = v327;
    v342 = type metadata accessor for GreedySampling();
    v343 = swift_allocObject();
    v344 = (v816 + 1384);
LABEL_150:
    outlined init with take of RandomNumberGenerator(v344, v343 + 16);
    v24[171] = v342;
    v24[172] = &protocol witness table for GreedySampling;
    v24[168] = v343;
    goto LABEL_151;
  }

  v242 = v24[538];
  (*(v24[569] + 32))(v24[570], v24[567], v24[568]);
  v243 = swift_task_alloc();
  v24[644] = v243;
  *v243 = v24;
  v243[1] = OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:);
  v244 = v24[581];
  v245 = v24[577];
  v246 = v24[570];

  return OnDeviceInferenceContextFactory.createLanguageModel(fromConstraints:tokenizerAsset:e5RunnerAsset:assetRepository:)((v24 + 203), v246, v245, v244, v242 + 16);
}

{
  v1 = v0[626];
  v2 = v0[621];
  v3 = v0[615];
  v4 = v0[598];
  v5 = v0[597];
  v6 = v0[591];
  _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
  v7 = swift_allocError();
  v1(v8, v5, v6);
  v2(v3, v4);
  __swift_destroy_boxed_opaque_existential_1(v0 + 138);
  v0[652] = MEMORY[0x277D84F90];
  v0[651] = v7;
  v9 = __swift_project_boxed_opaque_existential_1((v0[538] + 16), *(v0[538] + 40));
  v0[653] = v9;
  v10 = *v9;

  return MEMORY[0x2822009F8](OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:), v10, 0);
}

{
  v841 = v0;
  v800 = *(v0 + 5032);
  v1 = *(v0 + 4304);
  v811 = *(v0 + 4184);
  *(v0 + 5056) = v811;
  __swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));
  v2 = off_283451310[0];
  *(v0 + 5064) = type metadata accessor for OnDeviceInferenceOverrides(0);
  v3 = v2();
  if (v4)
  {
    v5 = SamplingParameters.promptLookupDraftSteps.getter();
    if (v6)
    {
      v7 = 0;
    }

    else
    {
      v7 = v5;
    }
  }

  else
  {
    v7 = v3;
  }

  *(v0 + 5072) = v7;
  v8 = *(v0 + 4288);
  v9 = *(*(v0 + 4688) + 20);
  *(v0 + 324) = v9;
  SamplingParameters.priorInferenceOutput.getter();
  v816 = v0;
  if (v10)
  {

    if (v7 >= 1)
    {

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        *v13 = 0;
        _os_log_impl(&dword_220940000, v11, v12, "Invalid speculation options. Cannot mix promptLookup and priorInferenceOutput options", v13, 2u);
        MEMORY[0x223D90A10](v13, -1, -1);
      }

      v817 = *(v0 + 4968);
      v14 = *(v0 + 4920);
      v15 = *(v0 + 4784);
      v16 = *(v0 + 4720);
      v17 = *(v0 + 4712);
      v18 = *(v0 + 4704);

      TokenGenerationError.Context.init(debugDescription:underlyingError:)();
      v19 = type metadata accessor for TokenGenerationError();
      _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, MEMORY[0x277D71B08], MEMORY[0x277D71B10]);
      v20 = swift_allocError();
      v22 = v21;
      (*(v17 + 16))(v21, v16, v18);
      (*(*(v19 - 8) + 104))(v22, *MEMORY[0x277D71AE0], v19);
      swift_willThrow();
      v23 = v18;
      v24 = v0;
      (*(v17 + 8))(v16, v23);
      v817(v14, v15);
      goto LABEL_94;
    }
  }

  v799 = v9;
  v806 = v8;
  v807 = v7;
  outlined init with copy of OnDeviceInferenceAssetObjectTokenizer(*(v0 + 4288), *(v0 + 4696), type metadata accessor for InferenceRequest);

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *&v838 = v28;
    *v27 = 136315650;
    __swift_project_boxed_opaque_existential_1((v1 + 56), *(v1 + 80));
    v29 = v2();
    if (v30)
    {
      v31 = 0xE300000000000000;
      v32 = 7104878;
      v33 = v816;
    }

    else
    {
      v33 = v816;
      *(v816 + 4272) = v29;
      lazy protocol witness table accessor for type Int and conformance Int();
      v32 = BinaryInteger.description.getter();
      v31 = v47;
    }

    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v31, &v838);

    *(v27 + 4) = v48;
    *(v27 + 12) = 2080;
    v49 = SamplingParameters.promptLookupDraftSteps.getter();
    if (v50)
    {
      v51 = 0xE300000000000000;
      v36 = v811;
      v52 = 7104878;
    }

    else
    {
      v33[533] = v49;
      lazy protocol witness table accessor for type Int and conformance Int();
      v52 = BinaryInteger.description.getter();
      v51 = v53;
      v36 = v811;
    }

    outlined destroy of InferenceRequest(v33[587], type metadata accessor for InferenceRequest);
    v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v51, &v838);

    *(v27 + 14) = v54;
    *(v27 + 22) = 2048;
    *(v27 + 24) = v807;
    _os_log_impl(&dword_220940000, v25, v26, "inferenceOverrides.promptLookupDraftSteps = %s, request.parameters.promptLookupDraftSteps = %s, promptLookupDraftSteps = %ld", v27, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223D90A10](v28, -1, -1);
    MEMORY[0x223D90A10](v27, -1, -1);

    v24 = v33;
    v37 = *(v36 + 16);
    if (!v37)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v34 = *(v0 + 4696);

    v35 = outlined destroy of InferenceRequest(v34, type metadata accessor for InferenceRequest);
    v24 = v0;
    v36 = v811;
    v37 = *(v811 + 16);
    if (!v37)
    {
LABEL_30:
      v818 = MEMORY[0x277D84F90];
      goto LABEL_31;
    }
  }

  v38 = v24[580];
  v39 = v36 + 32;
  v818 = MEMORY[0x277D84F90];
  do
  {
    v40 = v24[579];
    v41 = v24[578];
    outlined init with copy of DeterministicLanguageModelProtocol(v39, (v24 + 413));
    outlined init with take of RandomNumberGenerator((v24 + 413), (v24 + 393));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pMR);
    v42 = swift_dynamicCast();
    (*(v38 + 56))(v41, v42 ^ 1u, 1, v40);
    if ((*(v38 + 48))(v41, 1, v40) == 1)
    {
      v35 = outlined destroy of [Int](v24[578], &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMd, &_s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVSgMR);
    }

    else
    {
      _s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVWObTm_0(v24[578], v24[585], type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
      if (swift_isUniquelyReferenced_nonNull_native())
      {
        v43 = v818;
      }

      else
      {
        v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v818[2] + 1, 1, v818);
      }

      v45 = v43[2];
      v44 = v43[3];
      if (v45 >= v44 >> 1)
      {
        v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v44 > 1), v45 + 1, 1, v43);
      }

      v46 = v24[585];
      v43[2] = v45 + 1;
      v818 = v43;
      v35 = _s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVWObTm_0(v46, v43 + ((*(v38 + 80) + 32) & ~*(v38 + 80)) + *(v38 + 72) * v45, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
    }

    v39 += 40;
    --v37;
  }

  while (v37);
LABEL_31:
  v55 = v818;
  v56 = v818[2];
  if (v56)
  {
    v57 = 0;
    v58 = v24[584] + 8;
    v59 = v24[580];
    v60 = v24[579];
    v61 = MEMORY[0x277D84F90];
    v812 = v58;
    while (v57 < v55[2])
    {
      v62 = v24[584];
      v63 = (*(v59 + 80) + 32) & ~*(v59 + 80);
      v64 = v24;
      v65 = *(v59 + 72);
      outlined init with copy of OnDeviceInferenceAssetObjectTokenizer(v55 + v63 + v65 * v57, v62, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
      v66 = v64[584];
      if (*(v58 + *(v60 + 36)) == 2)
      {
        _s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVWObTm_0(v66, v64[583], type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v838 = v61;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v61[2] + 1, 1);
          v61 = v838;
        }

        v69 = v61[2];
        v68 = v61[3];
        if (v69 >= v68 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v68 > 1), v69 + 1, 1);
          v61 = v838;
        }

        v70 = *(v816 + 4664);
        v61[2] = v69 + 1;
        v35 = _s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVWObTm_0(v70, v61 + v63 + v69 * v65, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
        v58 = v812;
      }

      else
      {
        v35 = outlined destroy of InferenceRequest(v66, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
      }

      ++v57;
      v24 = v816;
      v55 = v818;
      if (v56 == v57)
      {
        goto LABEL_43;
      }
    }

    __break(1u);
    goto LABEL_140;
  }

  v61 = MEMORY[0x277D84F90];
LABEL_43:
  if (v807 > 0 || (v71 = SamplingParameters.speculativeDecoding.getter(), v71 == 2))
  {
    if (!v56)
    {
      v76 = MEMORY[0x277D84F90];
      goto LABEL_56;
    }
  }

  else
  {
    v76 = MEMORY[0x277D84F90];
    if (!v56 || (v71 & 1) == 0)
    {
      goto LABEL_56;
    }
  }

  v72 = v24[580];
  v813 = v24[579];
  v73 = v24[582] + *(v813 + 36);
  v74 = v818 + ((*(v72 + 80) + 32) & ~*(v72 + 80));
  v75 = *(v72 + 72);
  v76 = MEMORY[0x277D84F90];
  do
  {
    outlined init with copy of OnDeviceInferenceAssetObjectTokenizer(v74, v24[582], type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
    v77 = *(v73 + 8);
    v78 = v24[582];
    if (v77 == 2)
    {
      outlined destroy of InferenceRequest(v24[582], type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
    }

    else
    {
      v79 = *v73;
      v80 = *(v73 + 32);
      v833 = *(v73 + 16);
      v834 = v80;
      *v835 = *(v73 + 48);
      *&v835[9] = *(v73 + 57);
      v81 = *(v78 + *(v813 + 32));

      outlined destroy of InferenceRequest(v78, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v76 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v76[2] + 1, 1, v76);
      }

      v83 = v76[2];
      v82 = v76[3];
      v84 = v76;
      if (v83 >= v82 >> 1)
      {
        v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v82 > 1), v83 + 1, 1, v76);
      }

      *(v840 + 9) = *&v835[9];
      v839 = v834;
      v840[0] = *v835;
      v838 = v833;
      v84[2] = v83 + 1;
      v76 = v84;
      v85 = &v84[11 * v83];
      v85[4] = v81;
      v85[5] = v79;
      v85[6] = v77;
      v86 = v838;
      v87 = v839;
      v88 = v840[0];
      *(v85 + 97) = *(v840 + 9);
      *(v85 + 11) = v88;
      *(v85 + 9) = v87;
      *(v85 + 7) = v86;
      v24 = v816;
    }

    v74 += v75;
    --v56;
  }

  while (v56);
LABEL_56:
  if (v61[2])
  {

    v89 = v61;
  }

  else
  {

    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v90, v91))
    {
      v92 = v24[617];
      v93 = v24[616];
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      *&v838 = v95;
      *v94 = 136446210;
      *(v94 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v93, v92, &v838);
      _os_log_impl(&dword_220940000, v90, v91, "Using draft model as target model for %{public}s", v94, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v95);
      MEMORY[0x223D90A10](v95, -1, -1);
      MEMORY[0x223D90A10](v94, -1, -1);
    }

    v76 = MEMORY[0x277D84F90];
    v89 = v818;
  }

  v24[636] = v76;
  v24[635] = v89;
  v814 = v76;
  if (!v89[2])
  {
    v120 = v24[619];
    v121 = v24[615];
    v122 = v24[600];
    v123 = v24[598];

    v120(v122, v121, v123);

    v124 = Logger.logObject.getter();
    v125 = static os_log_type_t.error.getter();

    v126 = os_log_type_enabled(v124, v125);
    v127 = v24[621];
    if (v126)
    {
      v819 = v24[617];
      v808 = v24[616];
      v128 = v24[600];
      v129 = v24[598];
      v130 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      *&v838 = v131;
      *v130 = 136446466;
      _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v132 = dispatch thunk of CustomStringConvertible.description.getter();
      v134 = v133;
      v127(v128, v129);
      v135 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v132, v134, &v838);

      *(v130 + 4) = v135;
      *(v130 + 12) = 2082;
      *(v130 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v808, v819, &v838);
      _os_log_impl(&dword_220940000, v124, v125, "Failed to create inference context for request %{public}s, inference runner not loaded for asset bundle %{public}s", v130, 0x16u);
      swift_arrayDestroy();
      v136 = v131;
      v24 = v816;
      MEMORY[0x223D90A10](v136, -1, -1);
      MEMORY[0x223D90A10](v130, -1, -1);
    }

    else
    {
      v185 = v24[600];
      v186 = v24[598];

      v127(v185, v186);
    }

    v187 = v24[621];
    v188 = v24[617];
    v189 = v24[616];
    v190 = v24[615];
    v191 = v24[598];
    v192 = *(v816 + 4720);
    v193 = *(v816 + 4712);
    v194 = *(v816 + 4704);
    *&v838 = 0;
    *(&v838 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(50);

    *&v838 = 0xD000000000000022;
    *(&v838 + 1) = 0x8000000220AFD700;
    MEMORY[0x223D8E780](v189, v188);

    MEMORY[0x223D8E780](0x20746F6E20736920, 0xEE00646564616F6CLL);
    TokenGenerationError.Context.init(debugDescription:underlyingError:)();
    v195 = type metadata accessor for TokenGenerationError();
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, MEMORY[0x277D71B08], MEMORY[0x277D71B10]);
    v20 = swift_allocError();
    v197 = v196;
    (*(v193 + 16))(v196, v192, v194);
    (*(*(v195 - 8) + 104))(v197, *MEMORY[0x277D71AF0], v195);
    swift_willThrow();
    v198 = v192;
    v24 = v816;
    (*(v193 + 8))(v198, v194);
    v187(v190, v191);
    goto LABEL_93;
  }

  v96 = v24[621];
  v97 = v24[613];
  v98 = v24[599];
  v99 = v76;
  v100 = v24[598];
  v101 = v24[581];
  v102 = v24[579];
  v103 = *(v24[580] + 80);
  outlined init with copy of OnDeviceInferenceAssetObjectTokenizer(v89 + ((v103 + 32) & ~v103), v101, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
  InferenceProviderRequestConfiguration.requestUUID.getter();
  v104 = UUID.uuidString.getter();
  v106 = v105;
  v24[637] = (v98 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v96(v97, v100);
  v107 = *(v102 + 28);
  v108 = v104;
  v109 = (v101 + v107);
  v24[638] = *v109;
  v110 = v109[1];
  v24[639] = v110;
  ObjectType = swift_getObjectType();
  v24[640] = ObjectType;
  (*(v110 + 120))(v104, v106, ObjectType, v110);
  if (v99[2])
  {
    v112 = *(v99[4] + 48);
    v113 = swift_getObjectType();
    v114 = *(v112 + 120);
    swift_unknownObjectRetain();
    v114(v104, v106, v113, v112);
    swift_unknownObjectRelease();
  }

  v115 = Logger.logObject.getter();
  v116 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v115, v116))
  {
    v117 = swift_slowAlloc();
    v118 = swift_slowAlloc();
    *&v838 = v118;
    *v117 = 136446210;
    v119 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v108, v106, &v838);

    *(v117 + 4) = v119;
    _os_log_impl(&dword_220940000, v115, v116, "Setting E5Runner telemetry identifier to %{public}s", v117, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v118);
    MEMORY[0x223D90A10](v118, -1, -1);
    MEMORY[0x223D90A10](v117, -1, -1);
  }

  else
  {
  }

  v137 = v24[576];
  v138 = v811;
  v139 = *(v811 + 16);
  v140 = v811 + 32;
  v141 = (v137 + 56);
  v142 = (v137 + 48);

  v146 = 0;
  if (v139)
  {
    v147 = v811 + 32;
    while (1)
    {
      v148 = v24[575];
      v149 = v24[573];
      outlined init with copy of DeterministicLanguageModelProtocol(v147, (v24 + 388));
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pMR);
      v150 = swift_dynamicCast();
      (*v141)(v149, v150 ^ 1u, 1, v148);
      LODWORD(v149) = (*v142)(v149, 1, v148);
      v143 = outlined destroy of [Int](v24[573], &_s24TokenGenerationInference08OnDeviceC20AssetObjectTokenizerVSgMd, &_s24TokenGenerationInference08OnDeviceC20AssetObjectTokenizerVSgMR);
      if (v149 != 1)
      {
        break;
      }

      ++v146;
      v147 += 40;
      if (v139 == v146)
      {
        v146 = v139;
        break;
      }
    }

    v138 = v811;
    v140 = v811 + 32;
  }

  v151 = *(v138 + 16);
  if (v146 == v151)
  {
    (*v141)(v24[574], 1, 1, v24[575]);

    v152 = *v142;
  }

  else
  {
    if (v146 >= v151)
    {
      __break(1u);
      goto LABEL_257;
    }

    v153 = v140;
    v154 = v24[575];
    v155 = v24[572];
    v156 = v24[571];
    outlined init with copy of DeterministicLanguageModelProtocol(v153 + 40 * v146, (v24 + 333));
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pMR);
    v157 = swift_dynamicCast();
    v158 = v24;
    v159 = *v141;
    (*v141)(v155, v157 ^ 1u, 1, v154);
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v155, v156, &_s24TokenGenerationInference08OnDeviceC20AssetObjectTokenizerVSgMd, &_s24TokenGenerationInference08OnDeviceC20AssetObjectTokenizerVSgMR);
    v152 = *v142;
    v143 = (*v142)(v156, 1, v154);
    if (v143 == 1)
    {
LABEL_260:
      __break(1u);
      goto LABEL_261;
    }

    v160 = v158[575];
    v161 = v158[574];
    v162 = v158[572];
    _s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVWObTm_0(v158[571], v161, type metadata accessor for OnDeviceInferenceAssetObjectTokenizer);
    outlined destroy of [Int](v162, &_s24TokenGenerationInference08OnDeviceC20AssetObjectTokenizerVSgMd, &_s24TokenGenerationInference08OnDeviceC20AssetObjectTokenizerVSgMR);
    v159(v161, 0, 1, v160);

    v24 = v158;
  }

  v163 = v24[575];
  v164 = v24[574];
  if (v152(v164, 1, v163) == 1)
  {
    v165 = v24[619];
    v166 = v24[615];
    v167 = v24[601];
    v168 = v24[598];

    outlined destroy of [Int](v164, &_s24TokenGenerationInference08OnDeviceC20AssetObjectTokenizerVSgMd, &_s24TokenGenerationInference08OnDeviceC20AssetObjectTokenizerVSgMR);
    v165(v167, v166, v168);

    v169 = Logger.logObject.getter();
    v170 = static os_log_type_t.error.getter();

    v171 = os_log_type_enabled(v169, v170);
    v172 = v24[621];
    if (v171)
    {
      v820 = v24[617];
      v809 = v24[616];
      v173 = v24[601];
      v174 = v24[598];
      v175 = swift_slowAlloc();
      v176 = swift_slowAlloc();
      *&v838 = v176;
      *v175 = 136446466;
      _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v177 = dispatch thunk of CustomStringConvertible.description.getter();
      v179 = v178;
      v172(v173, v174);
      v180 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v177, v179, &v838);

      *(v175 + 4) = v180;
      *(v175 + 12) = 2082;
      *(v175 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v809, v820, &v838);
      _os_log_impl(&dword_220940000, v169, v170, "Failed to create inference context for request %{public}s, tokenizer not loaded for asset bundle %{public}s", v175, 0x16u);
      swift_arrayDestroy();
      v181 = v176;
      v24 = v816;
      MEMORY[0x223D90A10](v181, -1, -1);
      MEMORY[0x223D90A10](v175, -1, -1);
    }

    else
    {
      v199 = v24[601];
      v200 = v24[598];

      v172(v199, v200);
    }

    v201 = v24[621];
    v202 = v24[617];
    v203 = v24[616];
    v204 = v24[615];
    v205 = *(v816 + 4784);
    v206 = *(v816 + 4720);
    v207 = *(v816 + 4712);
    v208 = *(v816 + 4704);
    v209 = *(v816 + 4648);
    *&v838 = 0;
    *(&v838 + 1) = 0xE000000000000000;
    _StringGuts.grow(_:)(44);

    *&v838 = 0xD00000000000001CLL;
    *(&v838 + 1) = 0x8000000220AFD6E0;
    MEMORY[0x223D8E780](v203, v202);

    MEMORY[0x223D8E780](0x20746F6E20736920, 0xEE00646564616F6CLL);
    TokenGenerationError.Context.init(debugDescription:underlyingError:)();
    v210 = type metadata accessor for TokenGenerationError();
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type TokenGenerationError and conformance TokenGenerationError, MEMORY[0x277D71B08], MEMORY[0x277D71B10]);
    v20 = swift_allocError();
    v212 = v211;
    (*(v207 + 16))(v211, v206, v208);
    (*(*(v210 - 8) + 104))(v212, *MEMORY[0x277D71AF0], v210);
    swift_willThrow();
    (*(v207 + 8))(v206, v208);
    v213 = v205;
    v24 = v816;
    v201(v204, v213);
    v214 = v209;
    goto LABEL_92;
  }

  v182 = v24 + 321;
  v183 = v24[577];

  _s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVWObTm_0(v164, v183, type metadata accessor for OnDeviceInferenceAssetObjectTokenizer);
  v184 = *(v163 + 24);
  *(v24 + 103) = v184;
  v24[641] = *(v183 + v184);
  if (!*(v183 + *(v163 + 36)))
  {
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(&outlined read-only object #0 of OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:));
    outlined destroy of [Int](&unk_28344E320, &_sSS_SStMd, &_sSS_SStMR);
  }

  v217 = v24[581];
  v218 = v24[579];
  v24[642] = type metadata accessor for TokenIDToTextConverter();
  swift_allocObject();

  v24[643] = TokenIDToTextConverter.init(tokenizer:replacementTextByTokenText:isOneShot:)();
  v219 = *(v217 + *(v218 + 32));
  if (v814[2])
  {
    v24[281] = type metadata accessor for E5TransformerLanguageModel(0);
    v24[282] = &protocol witness table for E5TransformerLanguageModel;
    v24[278] = v219;
  }

  else
  {
    v248 = v24[615];
    v24[196] = type metadata accessor for E5TransformerLanguageModel(0);
    v24[197] = &protocol witness table for E5TransformerLanguageModel;
    v24[193] = v219;

    addPromptLookup #1 (_:) in OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:)((v24 + 193), v807, v248, (v24 + 198));
    __swift_destroy_boxed_opaque_existential_1(v24 + 193);
    addPriorOutputSpeculation #1 (_:) in OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:)((v24 + 198), v24 + 278);
    if (v800)
    {
      v20 = v800;
      v249 = v24[621];
      v250 = v24[615];
      v251 = v24[598];
      v252 = v24[581];
      v253 = v24[577];

      __swift_destroy_boxed_opaque_existential_1(v24 + 198);
      v249(v250, v251);
      outlined destroy of InferenceRequest(v253, type metadata accessor for OnDeviceInferenceAssetObjectTokenizer);
      v214 = v252;
LABEL_92:
      outlined destroy of InferenceRequest(v214, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);
LABEL_93:

LABEL_94:
      v215 = v811;
      goto LABEL_95;
    }

    __swift_destroy_boxed_opaque_existential_1(v24 + 198);
    v800 = 0;
    v182 = v24 + 321;
  }

  v220 = (v24 + 253);
  v221 = v24[586];
  v222 = v24[569];
  v223 = v24[568];
  v224 = v24[567];
  v225 = v24[536];
  outlined init with take of RandomNumberGenerator(v24 + 139, (v24 + 293));
  *(v24 + 253) = 0u;
  *(v24 + 255) = 0u;
  v24[257] = 0;
  v226 = *(v221 + 28);
  *(v24 + 125) = v226;
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v225 + v226, v224, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  if ((*(v222 + 48))(v224, 1, v223) == 1)
  {
    v227 = (v24 + 218);
    outlined destroy of [Int](v24[567], &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    v228 = v24[593];
    v229 = v24[586];
    v230 = v24[536];
    *(v24 + 109) = 0u;
    *(v24 + 110) = 0u;
    v24[222] = 0;
    v231 = _s24TokenGenerationInference08OnDeviceC14ContextFactoryC14supportedTools33_6E70D024FF4C54BC34814633D058F7394fromSay29GenerativeFunctionsFoundation4ToolV8FunctionVGSay0aB00U11DescriptionVG_t20ModelManagerServices0C5ErrorOYKF(*(v230 + *(v229 + 24)), v228);
    if (v800)
    {
      v810 = v24[621];
      v232 = *(v816 + 4920);
      v233 = v227;
      v234 = *(v816 + 4784);
      v235 = *(v816 + 4744);
      v236 = *(v816 + 4736);
      v237 = v220;
      v238 = *(v816 + 4728);
      v815 = *(v816 + 4648);
      v239 = *(v816 + 4616);

      _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
      v20 = swift_allocError();
      (*(v236 + 32))(v240, v235, v238);

      outlined destroy of [Int](v233, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
      outlined destroy of [Int](v237, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
      v241 = v232;
      v24 = v816;
      v810(v241, v234);
      outlined destroy of InferenceRequest(v239, type metadata accessor for OnDeviceInferenceAssetObjectTokenizer);
      __swift_destroy_boxed_opaque_existential_1((v816 + 2344));
      outlined destroy of InferenceRequest(v815, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);

      v215 = *(v816 + 5056);
LABEL_95:
      v24[652] = v215;
      v24[651] = v20;
      v216 = __swift_project_boxed_opaque_existential_1((v24[538] + 16), *(v24[538] + 40));
      v24[653] = v216;
      v144 = *v216;
      v143 = OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:);
      v145 = 0;

      return MEMORY[0x2822009F8](v143, v144, v145);
    }

    v254 = v231;
    v255 = v24[581];
    v256 = v24[561];
    v257 = v24[560];
    v258 = v24[559];
    v259 = *(v24[579] + 72);
    *(v24 + 147) = v259;
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v255 + v259, v258, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMR);
    v260 = *(v256 + 48);
    v24[646] = v260;
    v24[647] = (v256 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
    v261 = v260(v258, 1, v257);
    v262 = v24[565];
    v263 = v24[561];
    v264 = v24[560];
    v265 = v24[559];
    v806 = (v24 + 218);
    v794 = v182;
    if (v261 == 1)
    {
      (*(v263 + 104))(v262, *MEMORY[0x277D71EC8], v264);
      if (v260(v265, 1, v264) != 1)
      {
        outlined destroy of [Int](v24[559], &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMR);
      }
    }

    else
    {
      (*(v263 + 32))(v262, v265, v264);
    }

    v266 = v24;
    v267 = v24[633];
    __swift_project_boxed_opaque_existential_1((v266[538] + 56), *(v266[538] + 80));
    v268 = off_283451338(v267);
    v266[648] = specialized static OnDeviceInferenceContextFactory.startToolCallTokenIntValue(startToolCallTokenOverride:tokenizer:version:)(v268, v269 & 1);
    if (v254[2])
    {
      (*(v266[561] + 104))(v266[564], *MEMORY[0x277D71ED0], v266[560]);
      _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type PromptPreprocessingTemplateVersion and conformance PromptPreprocessingTemplateVersion, MEMORY[0x277D71ED8], MEMORY[0x277D71EF0]);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      if (v266[525] == v266[529] && v266[526] == v266[530])
      {
        v270 = 1;
      }

      else
      {
        v270 = _stringCompareWithSmolCheck(_:_:expecting:)();
      }

      v266 = v816;
      (*(*(v816 + 4488) + 8))(*(v816 + 4512), *(v816 + 4480));

      if (v270)
      {
        (*(*(v816 + 4488) + 16))(*(v816 + 4504), *(v816 + 4520), *(v816 + 4480));
        Grammar.init(tools:version:)();
        *(v816 + 5192) = 0;
        v337 = *(v816 + 4304);
        v338 = swift_task_alloc();
        *(v816 + 5200) = v338;
        *v338 = v816;
        v338[1] = OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:);
        v339 = *(v816 + 4648);
        v340 = *(v816 + 4616);
        v341 = *(v816 + 4456);

        return OnDeviceInferenceContextFactory.createLanguageModel(fromGrammar:tokenizerAsset:e5RunnerAsset:assetRepository:)(v816 + 1944, v341, v340, v339, v337 + 16);
      }
    }

    v271 = v266[648];
    v272 = dispatch thunk of TokenizerRunner.vocabularyCount.getter();
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v220, (v266 + 178), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v806, (v266 + 463), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
    type metadata accessor for ToolCallLanguageModel();
    v273 = swift_allocObject();
    v273[2] = 0;
    v273[3] = v271;
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)((v266 + 178), (v273 + 6), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)((v266 + 463), (v273 + 11), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
    v821 = v273;
    v273[4] = v272;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24TokenGenerationInference21ToolCallLanguageModelC4NodeVGMd, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference21ToolCallLanguageModelC4NodeVGMR);
    v274 = swift_allocObject();
    v784 = xmmword_220AE8A30;
    *(v274 + 16) = xmmword_220AE8A30;
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)((v266 + 178), (v266 + 148), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
    v275 = v266[151];
    v24 = v266;
    if (v275)
    {
      v276 = v266[152];
      __swift_project_boxed_opaque_existential_1(v266 + 148, v266[151]);
      v277 = (*(v276 + 8))(v275, v276);
      __swift_destroy_boxed_opaque_existential_1(v266 + 148);
    }

    else
    {
      outlined destroy of [Int]((v266 + 148), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
      v277 = 0;
    }

    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)((v266 + 463), (v266 + 153), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
    v278 = v266[156];
    v799 = v220;
    if (v278)
    {
      v279 = v266[157];
      __swift_project_boxed_opaque_existential_1(v266 + 153, v278);
      v280 = (*(v279 + 8))(v278, v279);
      __swift_destroy_boxed_opaque_existential_1(v266 + 153);
    }

    else
    {
      outlined destroy of [Int]((v266 + 153), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
      v280 = 0;
    }

    v281 = v278 == 0;
    v282 = v275 == 0;
    v283 = v266[619];
    v284 = v266[615];
    v285 = v266[612];
    v286 = v24[598];
    v287 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    *(v274 + 32) = v277;
    *(v274 + 40) = v282;
    *(v274 + 48) = v280;
    *(v274 + 56) = v281;
    *(v274 + 57) = 2;
    *(v274 + 64) = v287;
    outlined destroy of [Int]((v24 + 463), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
    outlined destroy of [Int]((v24 + 178), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
    v821[5] = v274;
    outlined init with copy of DeterministicLanguageModelProtocol((v24 + 293), (v24 + 163));
    v288 = type metadata accessor for MaskedLanguageModel();
    v289 = swift_allocObject();

    v291 = specialized MaskedLanguageModel.init(_:_:)(v290, v24 + 163, v289);
    v24[161] = v288;
    v24[162] = &protocol witness table for MaskedLanguageModel;
    v24[158] = v291;
    __swift_destroy_boxed_opaque_existential_1(v24 + 293);
    outlined init with take of RandomNumberGenerator(v24 + 79, (v24 + 293));
    v283(v285, v284, v286);
    v292 = Logger.logObject.getter();
    v293 = static os_log_type_t.default.getter();
    v294 = os_log_type_enabled(v292, v293);
    v295 = v24[621];
    v296 = v24[612];
    v297 = v24[598];
    v800 = v288;
    if (v294)
    {
      v298 = swift_slowAlloc();
      v299 = swift_slowAlloc();
      *&v838 = v299;
      *v298 = 136446466;
      swift_beginAccess();
      outlined init with copy of DeterministicLanguageModelProtocol(v816 + 2344, v816 + 2064);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pMR);
      v300 = String.init<A>(describing:)();
      v302 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v300, v301, &v838);

      *(v298 + 4) = v302;
      *(v298 + 12) = 2082;
      _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v303 = dispatch thunk of CustomStringConvertible.description.getter();
      v305 = v304;
      v295(v296, v297);
      v306 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v303, v305, &v838);

      *(v298 + 14) = v306;
      _os_log_impl(&dword_220940000, v292, v293, "Using base language model %{public}s for request %{public}s", v298, 0x16u);
      swift_arrayDestroy();
      v307 = v299;
      v24 = v816;
      MEMORY[0x223D90A10](v307, -1, -1);
      MEMORY[0x223D90A10](v298, -1, -1);
    }

    else
    {

      v295(v296, v297);
    }

    v308 = v24[581];
    v309 = v24[579];
    v310 = COERCE_DOUBLE(SamplingParameters.temperature.getter());
    if (v311)
    {
      v312 = 1.0;
    }

    else
    {
      v312 = v310;
    }

    v313 = SamplingParameters.randomSeed.getter();
    v315 = (v308 + *(v309 + 64));
    v317 = *v315;
    v316 = v315[1];
    v807 = v315[2];
    v812 = v316;
    v811 = *v315;
    if (v316)
    {
      v59 = type metadata accessor for ClassificationSampling();
      swift_allocObject();

      v35 = ClassificationSampling.init(defaultClass:outputClasses:)(v317, v316);
LABEL_140:
      v24[286] = v59;
      v24[287] = &protocol witness table for ClassificationSampling;
      v24[283] = v35;
      v328 = (v24 + 283);
LABEL_141:
      outlined init with take of RandomNumberGenerator(v328, (v24 + 168));
LABEL_151:
      (v24[619])(v24[611], v24[615], v24[598]);
      v345 = Logger.logObject.getter();
      v346 = static os_log_type_t.info.getter();
      v347 = os_log_type_enabled(v345, v346);
      v348 = v24[621];
      v349 = v24[611];
      v350 = v24[598];
      if (v347)
      {
        v351 = swift_slowAlloc();
        v352 = swift_slowAlloc();
        *&v838 = v352;
        *v351 = 136446466;
        swift_beginAccess();
        outlined init with copy of DeterministicLanguageModelProtocol(v816 + 1344, v816 + 2824);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference0A8Sampling_pMd, &_s24TokenGenerationInference0A8Sampling_pMR);
        v353 = String.init<A>(describing:)();
        v355 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v353, v354, &v838);

        *(v351 + 4) = v355;
        *(v351 + 12) = 2082;
        _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v356 = dispatch thunk of CustomStringConvertible.description.getter();
        v358 = v357;
        v348(v349, v350);
        v359 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v356, v358, &v838);

        *(v351 + 14) = v359;
        _os_log_impl(&dword_220940000, v345, v346, "Using sampling %{public}s for request %{public}s", v351, 0x16u);
        swift_arrayDestroy();
        v360 = v352;
        v24 = v816;
        MEMORY[0x223D90A10](v360, -1, -1);
        MEMORY[0x223D90A10](v351, -1, -1);
      }

      else
      {

        v348(v349, v350);
      }

      v792 = v24 + 96;
      *(v24 + 48) = xmmword_220AED900;
      *(v24 + 49) = 0u;
      *(v24 + 50) = 0u;
      *(v24 + 51) = 0u;
      *(v24 + 825) = 0u;
      v361 = SamplingParameters.tokenHealing.getter();
      if (v361 == 2 || (v361 & 1) == 0)
      {
        (v24[619])(v24[606], v24[615], v24[598]);
        v375 = Logger.logObject.getter();
        v376 = static os_log_type_t.default.getter();
        v377 = os_log_type_enabled(v375, v376);
        v378 = v24[621];
        v379 = v24[606];
        v380 = v24[598];
        v795 = v24 + 188;
        if (v377)
        {
          v381 = swift_slowAlloc();
          v382 = swift_slowAlloc();
          *&v838 = v382;
          *v381 = 136446210;
          _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v383 = dispatch thunk of CustomStringConvertible.description.getter();
          v385 = v384;
          v378(v379, v380);
          v386 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v383, v385, &v838);

          *(v381 + 4) = v386;
          _os_log_impl(&dword_220940000, v375, v376, "Not using token healing for request %{public}s", v381, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v382);
          v387 = v382;
          v24 = v816;
          MEMORY[0x223D90A10](v387, -1, -1);
          MEMORY[0x223D90A10](v381, -1, -1);
        }

        else
        {

          v378(v379, v380);
        }

        v388 = v24[581];
        v389 = v24[579];
        v827 = 0;
        v828 = 1;
        v390 = *(v388 + *(v389 + 44));
        if (v390 < 1)
        {
          v409 = v24[636];
          if (*(v409 + 16))
          {
            v410 = v24[549];
            v411 = v24[548];
            v412 = v24[546];
            v413 = *(v409 + 48);
            *(v24 + 85) = *(v409 + 32);
            *(v24 + 87) = v413;
            v415 = *(v409 + 80);
            v414 = *(v409 + 96);
            v416 = *(v409 + 64);
            *(v24 + 760) = *(v409 + 112);
            *(v24 + 91) = v415;
            *(v24 + 93) = v414;
            *(v24 + 89) = v416;
            v765 = v24[85];
            v417 = (v24 + 86);
            v786 = (v24 + 85);
            outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)((v24 + 85), (v24 + 74), &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMd, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMR);
            SamplingParameters.speculationParameters.getter();
            if ((*(v410 + 48))(v412, 1, v411) == 1)
            {
              outlined destroy of [Int](v24[546], &_s15TokenGeneration21SpeculationParametersVSgMd, &_s15TokenGeneration21SpeculationParametersVSgMR);
              v822 = *v417;
              v823 = *(v24 + 44);
              v824 = *(v24 + 45);
              v825 = v24[92];
              v418 = v24[93];
              v419 = v24[94];
              v420 = *(v24 + 760);
            }

            else
            {
              (*(v24[549] + 32))(v24[550], v24[546], v24[548]);
              v500 = Logger.logObject.getter();
              v501 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v500, v501))
              {
                v502 = swift_slowAlloc();
                *v502 = 0;
                _os_log_impl(&dword_220940000, v500, v501, "Overriding default speculation behavior from sampling parameters", v502, 2u);
                MEMORY[0x223D90A10](v502, -1, -1);
              }

              v24 = v816;
              v503 = *(v816 + 4400);
              v504 = *(v816 + 4392);
              v505 = *(v816 + 4384);

              v506 = v417[3];
              v840[0] = v417[2];
              v840[1] = v506;
              *(&v840[1] + 9) = *(v417 + 57);
              v507 = v417[1];
              v838 = *v417;
              v839 = v507;
              DraftingBehavior.updated(with:)(&v833);
              (*(v504 + 8))(v503, v505);
              v822 = v833;
              v823 = v834;
              v824 = *v835;
              v418 = *&v835[24];
              v825 = *&v835[16];
              v419 = v836;
              v420 = v837;
            }

            v508 = v24[634];
            v509 = v24[619];
            v510 = v24[615];
            v511 = v24[604];
            v512 = v24[598];
            swift_beginAccess();
            *v792 = v822;
            *(v792 + 1) = v823;
            *(v792 + 2) = v824;
            v792[6] = v825;
            v781 = v418;
            v24[103] = v418;
            v775 = v419;
            v24[104] = v419;
            v770 = v420;
            *(v24 + 840) = v420;
            v24[216] = type metadata accessor for E5TransformerLanguageModel(0);
            v24[217] = &protocol witness table for E5TransformerLanguageModel;
            v24[213] = v765;
            outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v786, (v24 + 63), &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMd, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMR);
            addPromptLookup #1 (_:) in OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:)((v24 + 213), v508, v510, (v24 + 208));
            __swift_destroy_boxed_opaque_existential_1(v24 + 213);
            outlined init with copy of DeterministicLanguageModelProtocol((v24 + 208), (v24 + 223));
            v513 = v800;
            v514 = swift_allocObject();

            v516 = specialized MaskedLanguageModel.init(_:_:)(v515, v24 + 223, v514);
            v509(v511, v510, v512);

            v517 = Logger.logObject.getter();
            v518 = static os_log_type_t.default.getter();

            v519 = os_log_type_enabled(v517, v518);
            v520 = v24[621];
            v521 = v24[604];
            v522 = v24[598];
            if (v519)
            {
              v523 = swift_slowAlloc();
              v762 = swift_slowAlloc();
              *&v838 = v762;
              *v523 = 136446466;
              v24[531] = v516;

              v524 = String.init<A>(describing:)();
              v526 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v524, v525, &v838);

              *(v523 + 4) = v526;
              *(v523 + 12) = 2082;
              _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
              v527 = dispatch thunk of CustomStringConvertible.description.getter();
              v529 = v528;
              v520(v521, v522);
              v530 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v527, v529, &v838);
              v513 = v800;

              *(v523 + 14) = v530;
              _os_log_impl(&dword_220940000, v517, v518, "Using draft language model %{public}s for request %{public}s", v523, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x223D90A10](v762, -1, -1);
              MEMORY[0x223D90A10](v523, -1, -1);
            }

            else
            {

              v520(v521, v522);
            }

            v24[231] = v513;
            v24[232] = &protocol witness table for MaskedLanguageModel;
            v24[228] = v516;
            v531 = v781;
            if (v781 < 1)
            {
              outlined init with copy of DeterministicLanguageModelProtocol((v24 + 228), (v24 + 233));

              v544 = v775;
            }

            else
            {
              (v24[619])(v24[603], v24[615], v24[598]);

              v532 = Logger.logObject.getter();
              v533 = static os_log_type_t.default.getter();
              v534 = os_log_type_enabled(v532, v533);
              v535 = v24[621];
              v536 = v24[603];
              v537 = v24[598];
              if (v534)
              {
                v538 = swift_slowAlloc();
                v539 = swift_slowAlloc();
                *&v838 = v539;
                *v538 = 136446722;
                _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
                v540 = dispatch thunk of CustomStringConvertible.description.getter();
                v542 = v541;
                v535(v536, v537);
                v543 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v540, v542, &v838);
                v531 = v781;

                *(v538 + 4) = v543;
                *(v538 + 12) = 2050;
                *(v538 + 14) = v781;
                *(v538 + 22) = 2050;
                v544 = v775;
                *(v538 + 24) = v775;
                _os_log_impl(&dword_220940000, v532, v533, "Using speculative streaming for draft model for request %{public}s, gamma: %{public}ld, streamTreeFactor: %{public}ld", v538, 0x20u);
                __swift_destroy_boxed_opaque_existential_1(v539);
                v545 = v539;
                v24 = v816;
                MEMORY[0x223D90A10](v545, -1, -1);
                MEMORY[0x223D90A10](v538, -1, -1);
              }

              else
              {

                v535(v536, v537);
                v544 = v775;
              }

              v556 = (*(v24[639] + 88))(v24[640]);

              v557 = specialized static SpeculativeStreamingLanguageModel.makeStreamTokenIDs(streamCount:vocabularyCount:tokenIDForText:)(v531, v556);

              outlined init with copy of DeterministicLanguageModelProtocol((v24 + 228), (v24 + 318));
              v558 = type metadata accessor for SpeculativeStreamingLanguageModel();
              v559 = swift_allocObject();
              v560 = MEMORY[0x277D84F90];
              v559[9] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_24TokenGenerationInference15LogitCollection_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
              v559[10] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(v560);
              outlined init with take of RandomNumberGenerator(v24 + 159, (v559 + 2));
              v559[7] = v544;
              v559[8] = v557;
              v24[236] = v558;
              v24[237] = &protocol witness table for SpeculativeStreamingLanguageModel;
              v24[233] = v559;
            }

            swift_beginAccess();
            outlined init with copy of DeterministicLanguageModelProtocol((v24 + 293), (v24 + 238));
            SamplingParameters.priorInferenceOutput.getter();
            if (v561)
            {
              v562 = dispatch thunk of TokenizerRunner.tokenize(_:)();
              LookupLanguageModelState<>.init(priorOutputTokens:)(v562, &v838);
              v565 = v838;
              v566 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference19LookupLanguageModelCyAA20PriorOutputNodeStateVGMd, &_s24TokenGenerationInference19LookupLanguageModelCyAA20PriorOutputNodeStateVGMR);
              v567 = swift_allocObject();
              *(v567 + 16) = v565;
              *(v567 + 32) = 2;
              v24[251] = v566;
              v24[252] = &protocol witness table for LookupLanguageModel<A>;

              v24[248] = v567;
            }

            else
            {
              v24[252] = 0;
              *(v24 + 124) = 0u;
              *(v24 + 125) = 0u;
            }

            v568 = v24[581];
            v569 = v24[538];
            v838 = v822;
            v839 = v823;
            v840[0] = v824;
            *&v840[1] = v825;
            *(&v840[1] + 1) = v531;
            *&v840[2] = v544;
            BYTE8(v840[2]) = v770;
            swift_beginAccess();
            v570 = specialized getter of stopTokenID #1 in buildDecoder #1 (_:) in OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:)(&v827, v569, v568);
            DraftingBehavior.makeDecoder(draftModel:targetModel:outerDraftModel:sampler:stopTokenId:)((v24 + 233), (v24 + 238), (v24 + 248), (v24 + 168), v570, v24 + 132);
            v571 = v24[135];
            v572 = v24[136];
            v573 = __swift_project_boxed_opaque_existential_1(v24 + 132, v571);
            v24[191] = v571;
            v24[192] = v572;
            v431 = v795;
            boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v795);
            (*(*(v571 - 8) + 16))(boxed_opaque_existential_1, v573, v571);

            outlined destroy of [Int](v786, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMd, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMR);
            __swift_destroy_boxed_opaque_existential_1(v24 + 238);
            __swift_destroy_boxed_opaque_existential_1(v24 + 228);
            __swift_destroy_boxed_opaque_existential_1(v24 + 208);
            outlined destroy of [Int]((v24 + 248), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
            __swift_destroy_boxed_opaque_existential_1(v24 + 233);
            __swift_destroy_boxed_opaque_existential_1(v24 + 132);
          }

          else
          {
            v476 = type metadata accessor for BasicDecoder();
            swift_beginAccess();
            outlined init with copy of DeterministicLanguageModelProtocol((v24 + 293), (v24 + 328));
            swift_beginAccess();
            outlined init with copy of DeterministicLanguageModelProtocol((v24 + 168), (v24 + 343));
            v477 = v24[331];
            v478 = v24[332];
            v479 = __swift_mutable_project_boxed_opaque_existential_1((v24 + 328), v477);
            v480 = *(v477 - 8);
            v481 = swift_task_alloc();
            (*(v480 + 16))(v481, v479, v477);
            v482 = specialized BasicDecoder.__allocating_init(languageModel:sampler:)(v481, v24 + 343, v476, v477, v478);
            __swift_destroy_boxed_opaque_existential_1(v24 + 328);

            v24[191] = v476;
            v24[192] = &protocol witness table for BasicDecoder;
            v24[188] = v482;
            v431 = v795;
          }
        }

        else
        {
          v391 = v388 + *(v389 + 36);
          v392 = *(v391 + 8);
          v393 = *(v391 + 64);
          if (v392 == 2)
          {
            v394 = 1;
          }

          else
          {
            v394 = v393;
          }

          (v24[619])(v24[605], v24[615], v24[598]);
          v395 = Logger.logObject.getter();
          v396 = static os_log_type_t.default.getter();
          v397 = os_log_type_enabled(v395, v396);
          v398 = v24[621];
          v399 = v24[605];
          v400 = v24[598];
          if (v397)
          {
            v401 = swift_slowAlloc();
            v801 = swift_slowAlloc();
            *&v838 = v801;
            *v401 = 136446722;
            _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
            v785 = v396;
            v402 = dispatch thunk of CustomStringConvertible.description.getter();
            v403 = v394;
            v404 = v390;
            v406 = v405;
            v398(v399, v400);
            v407 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v402, v406, &v838);
            v390 = v404;
            v394 = v403;

            *(v401 + 4) = v407;
            *(v401 + 12) = 2050;
            *(v401 + 14) = v390;
            *(v401 + 22) = 2050;
            *(v401 + 24) = v403;
            _os_log_impl(&dword_220940000, v395, v785, "Using speculative streaming for request %{public}s, gamma = %{public}ld, treeFactor = %{public}ld", v401, 0x20u);
            __swift_destroy_boxed_opaque_existential_1(v801);
            MEMORY[0x223D90A10](v801, -1, -1);
            v408 = v401;
            v24 = v816;
            MEMORY[0x223D90A10](v408, -1, -1);
          }

          else
          {

            v398(v399, v400);
          }

          v421 = v24[640];
          v422 = v24[639];
          swift_beginAccess();
          outlined init with copy of DeterministicLanguageModelProtocol((v24 + 293), (v24 + 348));
          v423 = (*(v422 + 88))(v421, v422);

          v424 = specialized static SpeculativeStreamingLanguageModel.makeStreamTokenIDs(streamCount:vocabularyCount:tokenIDForText:)(v390, v423);

          outlined init with copy of DeterministicLanguageModelProtocol((v24 + 348), (v24 + 358));
          type metadata accessor for SpeculativeStreamingLanguageModel();
          v425 = swift_allocObject();
          v426 = MEMORY[0x277D84F90];
          v425[9] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_24TokenGenerationInference15LogitCollection_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
          v425[10] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(v426);
          v143 = outlined init with take of RandomNumberGenerator(v24 + 179, (v425 + 2));
          v425[7] = v394;
          v425[8] = v424;
          if (v394 < 1)
          {
            goto LABEL_258;
          }

          LOBYTE(v833) = 1;
          LOBYTE(v838) = 1;
          v24[116] = v390;
          *(v24 + 936) = 0;
          v24[118] = v394;
          v24[119] = 0;
          *(v24 + 960) = 1;
          *(v24 + 241) = 0;
          *(v24 + 968) = 1;
          *(v24 + 969) = 0;
          *(v24 + 243) = 0;
          *(v24 + 488) = 1;
          v24[123] = 0;
          v24[124] = 1;
          *(v24 + 1000) = 0;
          swift_beginAccess();
          outlined init with copy of DeterministicLanguageModelProtocol((v24 + 168), (v24 + 368));
          v427 = type metadata accessor for SpeculativeStreamingPerformanceLoggingDecoder();
          v428 = swift_allocObject();

          v430 = specialized SpeculativeStreamingPerformanceLoggingDecoder.init(languageModel:behavior:sampler:)(v429, v24 + 116, v24 + 368, v428);
          v24[191] = v427;
          v24[192] = &protocol witness table for SpeculativeStreamingPerformanceLoggingDecoder;

          v24[188] = v430;
          __swift_destroy_boxed_opaque_existential_1(v24 + 348);
          v431 = v795;
        }
      }

      else
      {
        (v24[619])(v24[610], v24[615], v24[598]);
        v362 = Logger.logObject.getter();
        v363 = static os_log_type_t.default.getter();
        v364 = os_log_type_enabled(v362, v363);
        v365 = v24[621];
        v366 = v24[610];
        v367 = v24[598];
        if (v364)
        {
          v368 = swift_slowAlloc();
          v369 = swift_slowAlloc();
          *&v838 = v369;
          *v368 = 136446210;
          _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v370 = dispatch thunk of CustomStringConvertible.description.getter();
          v372 = v371;
          v365(v366, v367);
          v373 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v370, v372, &v838);

          *(v368 + 4) = v373;
          _os_log_impl(&dword_220940000, v362, v363, "Using token healing for request %{public}s", v368, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v369);
          v374 = v369;
          v24 = v816;
          MEMORY[0x223D90A10](v374, -1, -1);
          MEMORY[0x223D90A10](v368, -1, -1);
        }

        else
        {

          v365(v366, v367);
        }

        v435 = *(v24 + 125);
        v436 = v24[641];
        v437 = v24[633];
        v779 = v24[581];
        v774 = v24[579];
        v438 = v24[566];
        v439 = v24[538];
        v440 = v24[536];
        v441 = (v779 + *(v774 + 68));
        v442 = *v441;
        v443 = v441[1];
        v444 = v441[2];
        v445 = v441[3];
        __swift_project_boxed_opaque_existential_1((v439 + 56), *(v439 + 80));
        v446 = off_2834512B0(v437);
        v448 = specialized static OnDeviceInferenceContextFactory.stopTokenIntValue(stopTokenOverride:stopToken:tokenizer:)(v446, v447, v442, v443, v444, v445);

        v449 = type metadata accessor for TokenizerRunnerPrefixMatchingTextProcessor();
        v450 = swift_allocObject();
        *(v450 + 32) = 1;
        *(v450 + 40) = 0;
        *(v450 + 48) = 513;
        *(v450 + 16) = v436;
        *(v450 + 24) = 0;
        *(v816 + 3048) = v449;
        *(v816 + 3056) = &protocol witness table for TokenizerRunnerPrefixMatchingTextProcessor;
        *(v816 + 3024) = v450;
        outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v440 + v435, v438, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
        v451 = swift_allocObject();
        *(v451 + 16) = v784;
        *(v451 + 32) = v448;
        v24 = v816;
        v452 = type metadata accessor for TokenHealingDecoder(0);
        v453 = swift_allocObject();
        v454 = (v453 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_bufferedPrompt);
        v455 = MEMORY[0x277D84F90];
        *v454 = MEMORY[0x277D84F90];
        v454[1] = v455;
        v454[2] = v455;
        *(v453 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_tokensAreHealed) = 0;

        outlined init with copy of DeterministicLanguageModelProtocol(v816 + 3024, v453 + 16);
        outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v438, v453 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_overflowConstraints, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
        *(v453 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_stopTokenIDs) = v451;
        v826 = v455;
        v827 = 0;
        v828 = 1;
        v456 = *(v779 + *(v774 + 44));
        if (v456 < 1)
        {
          v483 = *(v816 + 5088);
          if (*(v483 + 16))
          {
            v766 = v452;
            v484 = *(v816 + 4392);
            v485 = *(v816 + 4384);
            v486 = *(v816 + 4376);
            v487 = *(v483 + 48);
            *(v816 + 416) = *(v483 + 32);
            *(v816 + 432) = v487;
            v489 = *(v483 + 80);
            v488 = *(v483 + 96);
            v490 = *(v483 + 64);
            *(v816 + 496) = *(v483 + 112);
            *(v816 + 464) = v489;
            *(v816 + 480) = v488;
            *(v816 + 448) = v490;
            v491 = v816;
            v769 = *(v816 + 416);
            v492 = (v816 + 424);
            outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v816 + 416, v816 + 328, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMd, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMR);
            SamplingParameters.speculationParameters.getter();
            v788 = v453;
            if ((*(v484 + 48))(v486, 1, v485) == 1)
            {
              outlined destroy of [Int](*(v816 + 4376), &_s15TokenGeneration21SpeculationParametersVSgMd, &_s15TokenGeneration21SpeculationParametersVSgMR);
              v493 = *(v816 + 440);
              v829 = *v492;
              v830 = v493;
              v831 = *(v816 + 456);
              v832 = *(v816 + 472);
              v495 = *(v816 + 480);
              v494 = *(v816 + 488);
              v496 = *(v816 + 496);
            }

            else
            {
              (*(*(v816 + 4392) + 32))(*(v816 + 4408), *(v816 + 4376), *(v816 + 4384));
              v582 = Logger.logObject.getter();
              v583 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v582, v583))
              {
                v584 = swift_slowAlloc();
                *v584 = 0;
                _os_log_impl(&dword_220940000, v582, v583, "Overriding default speculation behavior from sampling parameters", v584, 2u);
                MEMORY[0x223D90A10](v584, -1, -1);
              }

              v491 = v816;
              v585 = *(v816 + 4408);
              v586 = *(v816 + 4392);
              v587 = *(v816 + 4384);

              v588 = *(v816 + 472);
              v840[0] = *(v816 + 456);
              v840[1] = v588;
              *(&v840[1] + 9) = *(v816 + 481);
              v589 = *(v816 + 440);
              v838 = *v492;
              v839 = v589;
              DraftingBehavior.updated(with:)(&v833);
              (*(v586 + 8))(v585, v587);
              v829 = v833;
              v830 = v834;
              v831 = *v835;
              v495 = *&v835[24];
              v832 = *&v835[16];
              v494 = v836;
              v496 = v837;
            }

            v590 = *(v491 + 5072);
            v591 = *(v491 + 4952);
            v592 = *(v491 + 4920);
            v593 = *(v491 + 4864);
            v594 = *(v491 + 4784);
            swift_beginAccess();
            v595 = v830;
            *v792 = v829;
            *(v792 + 1) = v595;
            *(v792 + 2) = v831;
            v792[6] = v832;
            v776 = v495;
            *(v491 + 824) = v495;
            *(v491 + 832) = v494;
            v763 = v496;
            *(v491 + 840) = v496;
            *(v491 + 3288) = type metadata accessor for E5TransformerLanguageModel(0);
            *(v491 + 3296) = &protocol witness table for E5TransformerLanguageModel;
            *(v491 + 3264) = v769;
            outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v491 + 416, v491 + 240, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMd, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMR);
            addPromptLookup #1 (_:) in OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:)(v491 + 3264, v590, v592, v491 + 3224);
            __swift_destroy_boxed_opaque_existential_1((v491 + 3264));
            outlined init with copy of DeterministicLanguageModelProtocol(v491 + 3224, v491 + 3344);
            v596 = swift_allocObject();

            v598 = specialized MaskedLanguageModel.init(_:_:)(v597, (v491 + 3344), v596);
            v591(v593, v592, v594);
            v599 = v598;

            v600 = Logger.logObject.getter();
            v601 = static os_log_type_t.default.getter();

            v602 = os_log_type_enabled(v600, v601);
            v603 = *(v491 + 4968);
            v604 = *(v491 + 4864);
            v605 = *(v491 + 4784);
            v771 = v599;
            if (v602)
            {
              v606 = swift_slowAlloc();
              v761 = swift_slowAlloc();
              *&v838 = v761;
              *v606 = 136446466;
              *(v491 + 4280) = v599;

              v607 = String.init<A>(describing:)();
              v609 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v607, v608, &v838);

              *(v606 + 4) = v609;
              *(v606 + 12) = 2082;
              _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
              v610 = dispatch thunk of CustomStringConvertible.description.getter();
              v612 = v611;
              v603(v604, v605);
              v613 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v610, v612, &v838);
              v599 = v771;

              *(v606 + 14) = v613;
              _os_log_impl(&dword_220940000, v600, v601, "Using draft language model %{public}s for request %{public}s", v606, 0x16u);
              swift_arrayDestroy();
              MEMORY[0x223D90A10](v761, -1, -1);
              MEMORY[0x223D90A10](v606, -1, -1);
            }

            else
            {

              v603(v604, v605);
            }

            *(v491 + 3448) = v800;
            *(v491 + 3456) = &protocol witness table for MaskedLanguageModel;
            *(v491 + 3424) = v599;

            closure #1 in TokenHealingDecoder.init(processor:overflowConstraints:stopTokenIDs:buildDecoder:)(v491 + 3424, &v826, (v491 + 3384));
            __swift_destroy_boxed_opaque_existential_1((v491 + 3424));
            v614 = v776;
            v24 = v491;
            v615 = v794;
            if (v776 < 1)
            {
              outlined init with copy of DeterministicLanguageModelProtocol(v491 + 3384, v491 + 3464);
            }

            else
            {
              (*(v491 + 4952))(*(v491 + 4856), *(v491 + 4920), *(v491 + 4784));
              v616 = Logger.logObject.getter();
              v617 = static os_log_type_t.default.getter();
              v618 = os_log_type_enabled(v616, v617);
              v619 = *(v491 + 4968);
              v620 = v24[607];
              v621 = v24[598];
              if (v618)
              {
                v622 = swift_slowAlloc();
                v803 = swift_slowAlloc();
                *&v838 = v803;
                *v622 = 136446722;
                _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
                v623 = dispatch thunk of CustomStringConvertible.description.getter();
                v625 = v624;
                v619(v620, v621);
                v626 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v623, v625, &v838);
                v615 = v794;

                *(v622 + 4) = v626;
                *(v622 + 12) = 2050;
                v614 = v776;
                *(v622 + 14) = v776;
                *(v622 + 22) = 2050;
                *(v622 + 24) = v494;
                _os_log_impl(&dword_220940000, v616, v617, "Using speculative streaming for draft model for request %{public}s, gamma: %{public}ld, streamTreeFactor: %{public}ld", v622, 0x20u);
                __swift_destroy_boxed_opaque_existential_1(v803);
                v24 = v816;
                MEMORY[0x223D90A10](v803, -1, -1);
                MEMORY[0x223D90A10](v622, -1, -1);
              }

              else
              {

                v619(v620, v621);
                v614 = v776;
              }

              v627 = (*(v24[639] + 88))(v24[640]);

              v628 = specialized static SpeculativeStreamingLanguageModel.makeStreamTokenIDs(streamCount:vocabularyCount:tokenIDForText:)(v614, v627);

              outlined init with copy of DeterministicLanguageModelProtocol((v24 + 423), (v24 + 143));
              v629 = type metadata accessor for SpeculativeStreamingLanguageModel();
              v630 = swift_allocObject();
              v631 = MEMORY[0x277D84F90];
              v630[9] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_24TokenGenerationInference15LogitCollection_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
              v630[10] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(v631);
              outlined init with take of RandomNumberGenerator((v24 + 143), (v630 + 2));
              v630[7] = v494;
              v630[8] = v628;
              v24[436] = v629;
              v24[437] = &protocol witness table for SpeculativeStreamingLanguageModel;
              v24[433] = v630;
            }

            v452 = v766;
            swift_beginAccess();
            closure #1 in TokenHealingDecoder.init(processor:overflowConstraints:stopTokenIDs:buildDecoder:)((v24 + 293), &v826, v24 + 438);
            SamplingParameters.priorInferenceOutput.getter();
            if (v632)
            {
              v633 = dispatch thunk of TokenizerRunner.tokenize(_:)();
              LookupLanguageModelState<>.init(priorOutputTokens:)(v633, &v838);
              v634 = v838;
              v635 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference19LookupLanguageModelCyAA20PriorOutputNodeStateVGMd, &_s24TokenGenerationInference19LookupLanguageModelCyAA20PriorOutputNodeStateVGMR);
              v636 = swift_allocObject();
              *(v636 + 16) = v634;
              *(v636 + 32) = 2;
              v24[451] = v635;
              v24[452] = &protocol witness table for LookupLanguageModel<A>;

              v24[448] = v636;
            }

            else
            {
              v24[452] = 0;
              *(v24 + 224) = 0u;
              *(v24 + 225) = 0u;
            }

            v637 = v24[581];
            v638 = v24[538];
            v838 = v829;
            v839 = v830;
            v840[0] = v831;
            *&v840[1] = v832;
            *(&v840[1] + 1) = v614;
            *&v840[2] = v494;
            BYTE8(v840[2]) = v763;
            swift_beginAccess();
            v639 = specialized getter of stopTokenID #1 in buildDecoder #1 (_:) in OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:)(&v827, v638, v637);
            DraftingBehavior.makeDecoder(draftModel:targetModel:outerDraftModel:sampler:stopTokenId:)((v24 + 433), (v24 + 438), (v24 + 448), (v24 + 168), v639, v24 + 126);
            v804 = *(v615 + 711);
            v640 = *(v615 + 711);
            v641 = __swift_project_boxed_opaque_existential_1(v24 + 126, v640);
            *(v24 + 193) = v804;
            v642 = __swift_allocate_boxed_opaque_existential_1(v24 + 383);
            (*(*(v640 - 8) + 16))(v642, v641, v640);

            outlined destroy of [Int]((v24 + 52), &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMd, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMR);
            __swift_destroy_boxed_opaque_existential_1(v24 + 438);
            __swift_destroy_boxed_opaque_existential_1(v24 + 423);
            __swift_destroy_boxed_opaque_existential_1(v24 + 403);
            outlined destroy of [Int]((v24 + 448), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
            __swift_destroy_boxed_opaque_existential_1(v24 + 433);
            __swift_destroy_boxed_opaque_existential_1(v24 + 126);
            v453 = v788;
          }

          else
          {
            v575 = type metadata accessor for BasicDecoder();
            swift_beginAccess();
            closure #1 in TokenHealingDecoder.init(processor:overflowConstraints:stopTokenIDs:buildDecoder:)(v816 + 2344, &v826, (v816 + 3664));
            swift_beginAccess();
            outlined init with copy of DeterministicLanguageModelProtocol(v816 + 1344, v816 + 3624);
            v576 = *(v816 + 3688);
            v577 = *(v816 + 3696);
            v578 = __swift_mutable_project_boxed_opaque_existential_1(v816 + 3664, v576);
            v579 = *(v576 - 8);
            v580 = swift_task_alloc();
            (*(v579 + 16))(v580, v578, v576);
            v581 = specialized BasicDecoder.__allocating_init(languageModel:sampler:)(v580, (v816 + 3624), v575, v576, v577);
            __swift_destroy_boxed_opaque_existential_1((v816 + 3664));

            *(v816 + 3088) = v575;
            *(v816 + 3096) = &protocol witness table for BasicDecoder;
            *(v816 + 3064) = v581;
          }
        }

        else
        {
          v787 = v453;
          v457 = *(v816 + 4648) + *(*(v816 + 4632) + 36);
          v458 = *(v457 + 8);
          v459 = *(v457 + 64);
          if (v458 == 2)
          {
            v460 = 1;
          }

          else
          {
            v460 = v459;
          }

          (*(v816 + 4952))(*(v816 + 4872), *(v816 + 4920), *(v816 + 4784));
          v461 = Logger.logObject.getter();
          v462 = static os_log_type_t.default.getter();
          v463 = os_log_type_enabled(v461, v462);
          v464 = *(v816 + 4968);
          v465 = *(v816 + 4872);
          v466 = *(v816 + 4784);
          if (v463)
          {
            v467 = swift_slowAlloc();
            v802 = swift_slowAlloc();
            *&v838 = v802;
            *v467 = 136446722;
            _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
            v780 = v460;
            v468 = dispatch thunk of CustomStringConvertible.description.getter();
            v796 = v462;
            v469 = v456;
            v470 = v452;
            v472 = v471;
            v464(v465, v466);
            v473 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v468, v472, &v838);
            v452 = v470;
            v456 = v469;

            *(v467 + 4) = v473;
            *(v467 + 12) = 2050;
            *(v467 + 14) = v469;
            *(v467 + 22) = 2050;
            v474 = v780;
            *(v467 + 24) = v780;
            _os_log_impl(&dword_220940000, v461, v796, "Using speculative streaming for request %{public}s, gamma = %{public}ld, treeFactor = %{public}ld", v467, 0x20u);
            __swift_destroy_boxed_opaque_existential_1(v802);
            MEMORY[0x223D90A10](v802, -1, -1);
            v475 = v467;
            v24 = v816;
            MEMORY[0x223D90A10](v475, -1, -1);
          }

          else
          {

            v464(v465, v466);
            v474 = v460;
          }

          v546 = v24[640];
          v547 = v24[639];
          swift_beginAccess();
          closure #1 in TokenHealingDecoder.init(processor:overflowConstraints:stopTokenIDs:buildDecoder:)((v24 + 293), &v826, v24 + 443);
          v548 = (*(v547 + 88))(v546, v547);

          v549 = specialized static SpeculativeStreamingLanguageModel.makeStreamTokenIDs(streamCount:vocabularyCount:tokenIDForText:)(v456, v548);

          outlined init with copy of DeterministicLanguageModelProtocol((v24 + 443), (v24 + 398));
          type metadata accessor for SpeculativeStreamingLanguageModel();
          v550 = swift_allocObject();
          v551 = MEMORY[0x277D84F90];
          v550[9] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_24TokenGenerationInference15LogitCollection_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
          v550[10] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(v551);
          v143 = outlined init with take of RandomNumberGenerator(v24 + 199, (v550 + 2));
          v550[7] = v474;
          v550[8] = v549;
          v453 = v787;
          if (v474 < 1)
          {
            goto LABEL_259;
          }

          LOBYTE(v833) = 1;
          LOBYTE(v838) = 1;
          v24[106] = v456;
          *(v24 + 856) = 0;
          v24[108] = v474;
          v24[109] = 0;
          *(v24 + 880) = 1;
          *(v24 + 221) = 0;
          *(v24 + 888) = 1;
          *(v24 + 889) = 0;
          *(v24 + 223) = 0;
          *(v24 + 448) = 1;
          v24[113] = 0;
          v24[114] = 1;
          *(v24 + 920) = 0;
          swift_beginAccess();
          outlined init with copy of DeterministicLanguageModelProtocol((v24 + 168), (v24 + 363));
          v552 = type metadata accessor for SpeculativeStreamingPerformanceLoggingDecoder();
          v553 = swift_allocObject();

          v555 = specialized SpeculativeStreamingPerformanceLoggingDecoder.init(languageModel:behavior:sampler:)(v554, v24 + 106, v24 + 363, v553);
          v24[386] = v552;
          v24[387] = &protocol witness table for SpeculativeStreamingPerformanceLoggingDecoder;

          v24[383] = v555;
          __swift_destroy_boxed_opaque_existential_1(v24 + 443);
        }

        v431 = (v24 + 373);
        outlined destroy of [Int](v24[566], &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
        __swift_destroy_boxed_opaque_existential_1(v24 + 378);
        outlined init with take of RandomNumberGenerator((v24 + 383), v453 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_baseDecoder);
        *(v453 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_delayedLanguageModels) = v826;
        v24[376] = v452;
        v24[377] = &protocol witness table for TokenHealingDecoder;
        v24[373] = v453;
      }

      outlined init with take of RandomNumberGenerator(v431, (v24 + 183));
      v643 = v24[619];
      v644 = v24[615];
      v645 = v24[602];
      v646 = v24[598];
      outlined init with copy of DeterministicLanguageModelProtocol((v24 + 183), (v24 + 263));
      v643(v645, v644, v646);
      v647 = Logger.logObject.getter();
      v648 = static os_log_type_t.info.getter();
      v649 = os_log_type_enabled(v647, v648);
      v650 = v24[621];
      v651 = v24[602];
      v652 = v24[598];
      if (v649)
      {
        v653 = swift_slowAlloc();
        v654 = swift_slowAlloc();
        *&v838 = v654;
        *v653 = 136446466;
        outlined init with copy of DeterministicLanguageModelProtocol(v816 + 2104, v816 + 2504);
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference15SamplingDecoder_pMd, &_s24TokenGenerationInference15SamplingDecoder_pMR);
        v655 = String.init<A>(describing:)();
        v657 = v656;
        __swift_destroy_boxed_opaque_existential_1((v816 + 2104));
        v658 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v655, v657, &v838);

        *(v653 + 4) = v658;
        *(v653 + 12) = 2082;
        _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v659 = dispatch thunk of CustomStringConvertible.description.getter();
        v661 = v660;
        v650(v651, v652);
        v662 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v659, v661, &v838);

        *(v653 + 14) = v662;
        _os_log_impl(&dword_220940000, v647, v648, "Using decoder %{public}s for request %{public}s", v653, 0x16u);
        swift_arrayDestroy();
        v663 = v654;
        v24 = v816;
        MEMORY[0x223D90A10](v663, -1, -1);
        MEMORY[0x223D90A10](v653, -1, -1);
      }

      else
      {

        v650(v651, v652);
        __swift_destroy_boxed_opaque_existential_1(v24 + 263);
      }

      v664 = *(v24[632] + 16);

      v665 = 0;
      if (v664)
      {
        v666 = 32;
        while (1)
        {
          v667 = v24[544];
          outlined init with copy of DeterministicLanguageModelProtocol(v24[632] + v666, (v24 + 268));
          __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pMR);
          v668 = type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer(0);
          v669 = swift_dynamicCast();
          v670 = *(v668 - 8);
          (*(v670 + 56))(v667, v669 ^ 1u, 1, v668);
          v671 = (*(v670 + 48))(v667, 1, v668);
          v24 = v816;
          LODWORD(v667) = v671;
          v143 = outlined destroy of [Int](*(v816 + 4352), &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMR);
          if (v667 != 1)
          {
            break;
          }

          ++v665;
          v666 += 40;
          if (v664 == v665)
          {
            v665 = v664;
            break;
          }
        }
      }

      v672 = v24[632];
      v673 = *(v672 + 16);
      if (v665 == v673)
      {
        v674 = v24[545];
        v675 = type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer(0);
        (*(*(v675 - 8) + 56))(v674, 1, 1, v675);
LABEL_246:
        v684 = v24[577];
        v685 = *(v816 + 4600);
        v686 = *(v816 + 4360);
        v687 = *(v816 + 4328);

        v688 = v816;
        v689 = *(v684 + *(v685 + 28));

        v797 = SamplingParameters.useHighQualityImageTokenization.getter();
        outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v686, v687, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMR);
        type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer(0);
        v690 = (*(*(v675 - 8) + 48))(v687, 1, v675);
        v691 = *(v816 + 4328);
        v805 = v689;
        if (v690 == 1)
        {
          outlined destroy of [Int](v691, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMR);
          v692 = 0;
        }

        else
        {
          v693 = *(v675 + 32);
          v694 = (v691 + *(v675 + 28));
          v696 = *v694;
          v695 = v694[1];
          v697 = v694[2];
          v767 = v697;
          v772 = *v694;
          v759 = v694[3];
          v698 = v694[4];
          v699 = v694[5];
          v700 = v694[6];
          v782 = *(v816 + 4328);
          v789 = *(v691 + v693);
          v701 = type metadata accessor for OnDeviceImagePreprocessor();
          v702 = swift_allocObject();
          type metadata accessor for ImageTokenizer();
          v777 = *(v782 + 16);
          v702[2] = v696;
          v702[3] = v695;
          v702[4] = v697;
          v702[5] = v759;
          v702[6] = v698;
          v702[7] = v699;
          v702[8] = v700;
          *(v816 + 2488) = v701;
          *(v816 + 2496) = &protocol witness table for OnDeviceImagePreprocessor;
          *(v816 + 2464) = v702;
          v692 = swift_allocObject();
          v703 = __swift_mutable_project_boxed_opaque_existential_1(v816 + 2464, v701);
          v704 = *(v701 - 8);
          v705 = swift_task_alloc();
          (*(v704 + 16))(v705, v703, v701);
          v706 = *v705;
          *(v692 + 40) = v701;
          *(v692 + 48) = &protocol witness table for OnDeviceImagePreprocessor;
          *(v692 + 16) = v706;
          *(v692 + 56) = v772;
          *(v692 + 64) = v695;
          *(v692 + 72) = v767;
          *(v692 + 80) = v759;
          *(v692 + 88) = v698;
          *(v692 + 96) = v699;
          *(v692 + 104) = v700;
          *(v692 + 112) = v777;
          *(v692 + 128) = v789;
          swift_unknownObjectRetain();

          __swift_destroy_boxed_opaque_existential_1((v816 + 2464));

          outlined destroy of InferenceRequest(v782, type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer);
        }

        v760 = *(v816 + 5168);
        v707 = *(v816 + 5144);
        v790 = *(v816 + 412);
        v708 = *(v816 + 4648);
        v709 = *(v816 + 4632);
        v710 = *(v816 + 4616);
        v757 = *(v816 + 588);
        v758 = *(v816 + 4480);
        v711 = *(v816 + 4464);

        v798 = specialized OnDeviceAttachmentTokenizer.__allocating_init(imageTokenIDGenerator:useHighQualityImageTokenization:imageTokenizer:)(v712, v797 & 1, v692);

        outlined copy of ClassifierMetadata?(v811, v812, v807);
        _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF24TokenGenerationInference18ClassifierMetadataV_s5NeverOAD18ClassifyingDecoderVTg504_s24cd165Inference08OnDeviceC14ContextFactoryC06createcF07request13configuration9isOneShotAA0decF0CAA0C7RequestV_20ModelManagerServices0c8ProviderN13ConfigurationVSbtYaKFAA18ij5VAA18fG7VXEfU6_AD34DeterministicLanguageModelProtocol_p0cD4Core0C17IDToTextConverterCTf1ncn_n(v811, v812, v807, v816 + 2344, v707, v816 + 128);

        outlined init with copy of DeterministicLanguageModelProtocol(v816 + 1464, v816 + 2304);
        outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v816 + 128, v816 + 16, &_s24TokenGenerationInference18ClassifyingDecoderVSgMd, &_s24TokenGenerationInference18ClassifyingDecoderVSgMR);
        swift_beginAccess();
        v713 = *(v792 + 3);
        v840[0] = *(v792 + 2);
        v840[1] = v713;
        *(&v840[1] + 9) = *(v792 + 57);
        v714 = *(v792 + 1);
        v838 = *v792;
        v839 = v714;
        v715 = *(v710 + v790);
        v716 = *(v708 + v709[10]);
        v717 = *(v708 + v709[12]);
        v718 = (v708 + v709[17]);
        v719 = *v718;
        v720 = v718[1];
        v721 = v718[2];
        v722 = v718[3];
        outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v708 + v757, v711, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMR);
        LODWORD(v708) = v760(v711, 1, v758);

        outlined copy of StopToken?(v719, v720, v721, v722);
        v793 = v716;
        v783 = v719;
        v791 = v717;
        v773 = v721;
        v778 = v720;
        v764 = v722;
        v768 = v715;
        if (v708 == 1)
        {
          v723 = *(v816 + 5168);
          v724 = *(v816 + 4520);
          v725 = *(v816 + 4488);
          v726 = *(v816 + 4480);
          v727 = *(v816 + 4464);
          v728 = *(v816 + 4360);
          static PromptPreprocessingTemplateVersion.default.getter();

          outlined destroy of [Int](v816 + 128, &_s24TokenGenerationInference18ClassifyingDecoderVSgMd, &_s24TokenGenerationInference18ClassifyingDecoderVSgMR);
          outlined destroy of [Int](v728, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMR);
          __swift_destroy_boxed_opaque_existential_1((v816 + 1464));
          (*(v725 + 8))(v724, v726);
          v688 = v816;
          outlined destroy of [Int](v806, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
          outlined destroy of [Int](v799, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
          if (v723(v727, 1, v726) != 1)
          {
            outlined destroy of [Int](*(v816 + 4464), &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMR);
          }
        }

        else
        {
          v729 = *(v816 + 4520);
          v730 = *(v816 + 4496);
          v731 = *(v816 + 4488);
          v732 = *(v816 + 4480);
          v733 = *(v816 + 4464);
          v734 = *(v816 + 4360);

          outlined destroy of [Int](v816 + 128, &_s24TokenGenerationInference18ClassifyingDecoderVSgMd, &_s24TokenGenerationInference18ClassifyingDecoderVSgMR);
          outlined destroy of [Int](v734, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMR);
          __swift_destroy_boxed_opaque_existential_1((v816 + 1464));
          (*(v731 + 8))(v729, v732);
          outlined destroy of [Int](v806, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
          outlined destroy of [Int](v799, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
          (*(v731 + 32))(v730, v733, v732);
        }

        v735 = *(v688 + 643);
        v736 = *(v688 + 642);
        v737 = v688;
        v756 = *(v688 + 632);
        v738 = *(v688 + 621);
        v739 = *(v737 + 615);
        v740 = *(v737 + 598);
        v755 = *(v737 + 581);
        v753 = *(v737 + 577);
        v741 = *(v737 + 562);
        v742 = *(v737 + 561);
        v754 = *(v737 + 560);
        v743 = *(v737 + 540);
        outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v753 + *(*(v737 + 575) + 44), v743, &_s19TokenGenerationCore06GuidedB17VocabularyManagerVSgMd, &_s19TokenGenerationCore06GuidedB17VocabularyManagerVSgMR);
        *(v737 + 306) = v736;
        *(v737 + 307) = MEMORY[0x277D71E08];
        *(v737 + 303) = v735;
        v738(v739, v740);
        type metadata accessor for OnDeviceInferenceContext(0);
        v744 = swift_allocObject();
        v745 = v744 + OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext____lazy_storage___maximumContextLength;
        *v745 = 0;
        *(v745 + 8) = 1;
        *(v744 + OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext____lazy_storage___assets) = 0;
        *(v744 + OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext____lazy_storage___modelVersion) = xmmword_220AE5250;
        outlined init with take of RandomNumberGenerator(v737 + 144, v744 + 16);
        v746 = v737[3];
        *(v744 + 104) = v737[4];
        v747 = v737[6];
        *(v744 + 120) = v737[5];
        *(v744 + 136) = v747;
        *(v744 + 152) = v737[7];
        v748 = v737[2];
        *(v744 + 56) = v737[1];
        *(v744 + 72) = v748;
        *(v744 + 88) = v746;
        v749 = v839;
        *(v744 + 168) = v838;
        v750 = v840[0];
        v751 = v840[1];
        *(v744 + 225) = *(&v840[1] + 9);
        *(v744 + 216) = v751;
        *(v744 + 200) = v750;
        *(v744 + 184) = v749;
        *(v744 + 248) = v768;
        *(v744 + 304) = v805;
        outlined init with take of RandomNumberGenerator((v737 + 2424), v744 + 256);
        *(v744 + 296) = v756;
        *(v744 + 312) = v793;
        *(v744 + 320) = v791;
        *(v744 + 328) = v811;
        *(v744 + 336) = v812;
        *(v744 + 344) = v807;
        *(v744 + 352) = v783;
        *(v744 + 360) = v778;
        *(v744 + 368) = v773;
        *(v744 + 376) = v764;
        *(v744 + 384) = v798;
        (*(v742 + 32))(v744 + OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext_promptPreprocessingTemplateVersion, v741, v754);
        outlined init with take of Asset?(v743, v744 + OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext_guidedGenerationVocabularyManager, &_s19TokenGenerationCore06GuidedB17VocabularyManagerVSgMd, &_s19TokenGenerationCore06GuidedB17VocabularyManagerVSgMR);
        outlined destroy of InferenceRequest(v753, type metadata accessor for OnDeviceInferenceAssetObjectTokenizer);
        __swift_destroy_boxed_opaque_existential_1(v737 + 168);
        __swift_destroy_boxed_opaque_existential_1(v737 + 293);
        outlined destroy of InferenceRequest(v755, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);

        v752 = *(v737 + 1);

        return v752(v744);
      }

      if (v665 < v673)
      {
        v676 = v24[543];
        v677 = v24[542];
        outlined init with copy of DeterministicLanguageModelProtocol(v672 + 40 * v665 + 32, (v24 + 273));
        __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pMR);
        v675 = type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer(0);
        v678 = swift_dynamicCast();
        v679 = v24;
        v680 = *(v675 - 8);
        v681 = *(v680 + 56);
        v681(v676, v678 ^ 1u, 1, v675);
        outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v676, v677, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMR);
        v143 = (*(v680 + 48))(v677, 1, v675);
        if (v143 != 1)
        {
          v682 = v679[545];
          v683 = v679[543];
          _s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVWObTm_0(v679[542], v682, type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer);
          outlined destroy of [Int](v683, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMR);
          v681(v682, 0, 1, v675);
          v24 = v679;
          goto LABEL_246;
        }

LABEL_261:
        __break(1u);
        return MEMORY[0x2822009F8](v143, v144, v145);
      }

LABEL_257:
      __break(1u);
LABEL_258:
      __break(1u);
LABEL_259:
      __break(1u);
      goto LABEL_260;
    }

    v318 = v24;
    v319 = v314;
    v320 = v313;
    v321 = v318[552];
    SamplingParameters.strategy.getter();
    v322 = type metadata accessor for SamplingStrategy();
    v323 = *(v322 - 8);
    v324 = (*(v323 + 48))(v321, 1, v322);
    v325 = v318[554];
    if (v324 == 1)
    {
      outlined destroy of [Int](v318[552], &_s15TokenGeneration16SamplingStrategyVSgMd, &_s15TokenGeneration16SamplingStrategyVSgMR);
      v326 = type metadata accessor for SamplingStrategy.Choice();
      (*(*(v326 - 8) + 56))(v325, 1, 1, v326);
      outlined destroy of [Int](v325, &_s15TokenGeneration16SamplingStrategyV6ChoiceOSgMd, &_s15TokenGeneration16SamplingStrategyV6ChoiceOSgMR);
    }

    else
    {
      v329 = v318[553];
      v330 = v318[552];
      SamplingStrategy.choice.getter();
      (*(v323 + 8))(v330, v322);
      v331 = type metadata accessor for SamplingStrategy.Choice();
      v332 = *(v331 - 8);
      (*(v332 + 56))(v325, 0, 1, v331);
      outlined init with take of Asset?(v325, v329, &_s15TokenGeneration16SamplingStrategyV6ChoiceOSgMd, &_s15TokenGeneration16SamplingStrategyV6ChoiceOSgMR);
      v333 = (*(v332 + 88))(v329, v331);
      if (v333 == *MEMORY[0x277D71C40])
      {
        v334 = v318[553];
        (*(v332 + 96))(v334, v331);
        v335 = *v334;
        if (v319)
        {
          v336 = 0;
        }

        else
        {
          v336 = [objc_allocWithZone(TGIMersenneTwisterEngine) initWithSeed_];
        }

        v24 = v816;
        *(&v839 + 1) = &type metadata for SeedableRandomNumberGenerator;
        *&v840[0] = lazy protocol witness table accessor for type SeedableRandomNumberGenerator and conformance SeedableRandomNumberGenerator();
        *&v838 = v336;
        v497 = type metadata accessor for NucleusSampling();
        swift_allocObject();
        v498 = NucleusSampling.init(p:temperature:generator:)(&v838, v335, v312);
        *(v816 + 2408) = v497;
        *(v816 + 2416) = &protocol witness table for NucleusSampling;
        *(v816 + 2384) = v498;
        v328 = (v816 + 2384);
        goto LABEL_141;
      }

      if (v333 == *MEMORY[0x277D71C48])
      {
        v432 = *(v816 + 4424);
        (*(v332 + 96))(v432, v331);
        v433 = *v432;
        if (v319)
        {
          v434 = 0;
        }

        else
        {
          v434 = [objc_allocWithZone(TGIMersenneTwisterEngine) initWithSeed_];
        }

        v24 = v816;
        *(&v839 + 1) = &type metadata for SeedableRandomNumberGenerator;
        *&v840[0] = lazy protocol witness table accessor for type SeedableRandomNumberGenerator and conformance SeedableRandomNumberGenerator();
        *&v838 = v434;
        v563 = type metadata accessor for TopK();
        swift_allocObject();
        v564 = TopK.init(k:temperature:generator:)(v433, &v838, v312);
        *(v816 + 2608) = v563;
        *(v816 + 2616) = &protocol witness table for TopK;
        *(v816 + 2584) = v564;
        v328 = (v816 + 2584);
        goto LABEL_141;
      }

      if (v333 != *MEMORY[0x277D71C50])
      {
        (*(v332 + 8))(*(v816 + 4424), v331);
        if (v319)
        {
          v499 = 0;
        }

        else
        {
          v499 = [objc_allocWithZone(TGIMersenneTwisterEngine) initWithSeed_];
        }

        v24 = v816;
        *(v816 + 2728) = &type metadata for SeedableRandomNumberGenerator;
        *(v816 + 2736) = lazy protocol witness table accessor for type SeedableRandomNumberGenerator and conformance SeedableRandomNumberGenerator();
        *(v816 + 2704) = v499;
        v342 = type metadata accessor for GreedySampling();
        v343 = swift_allocObject();
        v344 = (v816 + 2704);
        goto LABEL_150;
      }
    }

    if (v319)
    {
      v327 = 0;
    }

    else
    {
      v327 = [objc_allocWithZone(TGIMersenneTwisterEngine) initWithSeed_];
    }

    v24 = v816;
    *(v816 + 1408) = &type metadata for SeedableRandomNumberGenerator;
    *(v816 + 1416) = lazy protocol witness table accessor for type SeedableRandomNumberGenerator and conformance SeedableRandomNumberGenerator();
    *(v816 + 1384) = v327;
    v342 = type metadata accessor for GreedySampling();
    v343 = swift_allocObject();
    v344 = (v816 + 1384);
LABEL_150:
    outlined init with take of RandomNumberGenerator(v344, v343 + 16);
    v24[171] = v342;
    v24[172] = &protocol witness table for GreedySampling;
    v24[168] = v343;
    goto LABEL_151;
  }

  v242 = v24[538];
  (*(v24[569] + 32))(v24[570], v24[567], v24[568]);
  v243 = swift_task_alloc();
  v24[644] = v243;
  *v243 = v24;
  v243[1] = OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:);
  v244 = v24[581];
  v245 = v24[577];
  v246 = v24[570];

  return OnDeviceInferenceContextFactory.createLanguageModel(fromConstraints:tokenizerAsset:e5RunnerAsset:assetRepository:)((v24 + 203), v246, v245, v244, v242 + 16);
}

{
  v1 = v0[630];
  v2 = v0[621];
  v3 = v0[615];
  v4 = v0[598];
  v5 = v0[595];
  v6 = v0[591];
  _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
  v7 = swift_allocError();
  v1(v8, v5, v6);
  v2(v3, v4);
  v0[652] = MEMORY[0x277D84F90];
  v0[651] = v7;
  v9 = __swift_project_boxed_opaque_existential_1((v0[538] + 16), *(v0[538] + 40));
  v0[653] = v9;
  v10 = *v9;

  return MEMORY[0x2822009F8](OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:), v10, 0);
}

{
  *(*v1 + 5160) = v0;

  if (v0)
  {

    v2 = OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:);
  }

  else
  {
    v2 = OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v588 = v0;
  (*(*(v0 + 4552) + 8))(*(v0 + 4560), *(v0 + 4544));
  outlined destroy of [Int](v0 + 2024, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
  v1 = *(v0 + 1640);
  *(v0 + 2024) = *(v0 + 1624);
  *(v0 + 2040) = v1;
  *(v0 + 2056) = *(v0 + 1656);
  v2 = *(v0 + 5160);
  v3 = *(v0 + 4744);
  v4 = *(v0 + 4688);
  v5 = *(v0 + 4288);
  *(v0 + 1744) = 0u;
  *(v0 + 1760) = 0u;
  *(v0 + 1776) = 0;
  v6 = _s24TokenGenerationInference08OnDeviceC14ContextFactoryC14supportedTools33_6E70D024FF4C54BC34814633D058F7394fromSay29GenerativeFunctionsFoundation4ToolV8FunctionVGSay0aB00U11DescriptionVG_t20ModelManagerServices0C5ErrorOYKF(*(v5 + *(v4 + 24)), v3);
  if (v2)
  {
    v559 = *(v0 + 4968);
    v7 = *(v0 + 4920);
    v8 = *(v0 + 4784);
    v9 = *(v0 + 4744);
    v10 = *(v0 + 4736);
    v11 = *(v0 + 4728);
    v562 = *(v0 + 4648);
    v12 = *(v0 + 4616);

    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type InferenceError and conformance InferenceError, MEMORY[0x277D29DE0], MEMORY[0x277D29DE8]);
    v13 = swift_allocError();
    (*(v10 + 32))(v14, v9, v11);

    outlined destroy of [Int](v0 + 1744, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
    outlined destroy of [Int](v0 + 2024, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
    v559(v7, v8);
    outlined destroy of InferenceRequest(v12, type metadata accessor for OnDeviceInferenceAssetObjectTokenizer);
    __swift_destroy_boxed_opaque_existential_1((v0 + 2344));
    outlined destroy of InferenceRequest(v562, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);

    *(v0 + 5216) = *(v0 + 5056);
    *(v0 + 5208) = v13;
    v15 = __swift_project_boxed_opaque_existential_1((*(v0 + 4304) + 16), *(*(v0 + 4304) + 40));
    *(v0 + 5224) = v15;
    v16 = *v15;
    v17 = OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:);
    v18 = 0;

    return MEMORY[0x2822009F8](v17, v16, v18);
  }

  v19 = v6;
  v20 = *(v0 + 4648);
  v21 = *(v0 + 4488);
  v22 = *(v0 + 4480);
  v23 = *(v0 + 4472);
  v24 = *(*(v0 + 4632) + 72);
  *(v0 + 588) = v24;
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v20 + v24, v23, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMR);
  v25 = *(v21 + 48);
  *(v0 + 5168) = v25;
  *(v0 + 5176) = (v21 + 48) & 0xFFFFFFFFFFFFLL | 0x60F0000000000000;
  v26 = v25(v23, 1, v22);
  v27 = *(v0 + 4520);
  v28 = *(v0 + 4488);
  v29 = *(v0 + 4480);
  v30 = *(v0 + 4472);
  if (v26 == 1)
  {
    (*(v28 + 104))(v27, *MEMORY[0x277D71EC8], *(v0 + 4480));
    if (v25(v30, 1, v29) != 1)
    {
      outlined destroy of [Int](*(v0 + 4472), &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMR);
    }
  }

  else
  {
    (*(v28 + 32))(v27, *(v0 + 4472), *(v0 + 4480));
  }

  v31 = *(v0 + 5064);
  __swift_project_boxed_opaque_existential_1((*(v0 + 4304) + 56), *(*(v0 + 4304) + 80));
  v32 = off_283451338(v31);
  *(v0 + 5184) = specialized static OnDeviceInferenceContextFactory.startToolCallTokenIntValue(startToolCallTokenOverride:tokenizer:version:)(v32, v33 & 1);
  if (v19[2])
  {
    (*(*(v0 + 4488) + 104))(*(v0 + 4512), *MEMORY[0x277D71ED0], *(v0 + 4480));
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type PromptPreprocessingTemplateVersion and conformance PromptPreprocessingTemplateVersion, MEMORY[0x277D71ED8], MEMORY[0x277D71EF0]);
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (*(v0 + 4200) == *(v0 + 4232) && *(v0 + 4208) == *(v0 + 4240))
    {
      v34 = 1;
    }

    else
    {
      v34 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    (*(*(v0 + 4488) + 8))(*(v0 + 4512), *(v0 + 4480));

    if (v34)
    {
      (*(*(v0 + 4488) + 16))(*(v0 + 4504), *(v0 + 4520), *(v0 + 4480));
      Grammar.init(tools:version:)();
      *(v0 + 5192) = 0;
      v100 = *(v0 + 4304);
      v101 = swift_task_alloc();
      *(v0 + 5200) = v101;
      *v101 = v0;
      v101[1] = OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:);
      v102 = *(v0 + 4648);
      v103 = *(v0 + 4616);
      v104 = *(v0 + 4456);

      return OnDeviceInferenceContextFactory.createLanguageModel(fromGrammar:tokenizerAsset:e5RunnerAsset:assetRepository:)(v0 + 1944, v104, v103, v102, v100 + 16);
    }
  }

  v35 = *(v0 + 5184);
  v36 = dispatch thunk of TokenizerRunner.vocabularyCount.getter();
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 2024, v0 + 1424, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 1744, v0 + 3704, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
  type metadata accessor for ToolCallLanguageModel();
  v37 = swift_allocObject();
  v37[2] = 0;
  v37[3] = v35;
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 1424, (v37 + 6), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 3704, (v37 + 11), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
  v561 = v37;
  v37[4] = v36;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24TokenGenerationInference21ToolCallLanguageModelC4NodeVGMd, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference21ToolCallLanguageModelC4NodeVGMR);
  v38 = swift_allocObject();
  *(v38 + 16) = xmmword_220AE8A30;
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 1424, v0 + 1184, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
  v39 = *(v0 + 1208);
  if (v39)
  {
    v40 = *(v0 + 1216);
    __swift_project_boxed_opaque_existential_1((v0 + 1184), *(v0 + 1208));
    v41 = (*(v40 + 8))(v39, v40);
    __swift_destroy_boxed_opaque_existential_1((v0 + 1184));
  }

  else
  {
    outlined destroy of [Int](v0 + 1184, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
    v41 = 0;
  }

  v558 = v0 + 2024;
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 3704, v0 + 1224, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
  v42 = *(v0 + 1248);
  if (v42)
  {
    v43 = *(v0 + 1256);
    __swift_project_boxed_opaque_existential_1((v0 + 1224), *(v0 + 1248));
    v44 = (*(v43 + 8))(v42, v43);
    __swift_destroy_boxed_opaque_existential_1((v0 + 1224));
  }

  else
  {
    outlined destroy of [Int](v0 + 1224, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
    v44 = 0;
  }

  v45 = v42 == 0;
  v46 = v39 == 0;
  v47 = *(v0 + 4952);
  v48 = *(v0 + 4920);
  v49 = *(v0 + 4896);
  v50 = *(v0 + 4784);
  v51 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(v38 + 32) = v41;
  *(v38 + 40) = v46;
  *(v38 + 48) = v44;
  *(v38 + 56) = v45;
  *(v38 + 57) = 2;
  *(v38 + 64) = v51;
  outlined destroy of [Int](v0 + 3704, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
  outlined destroy of [Int](v0 + 1424, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
  v561[5] = v38;
  outlined init with copy of DeterministicLanguageModelProtocol(v0 + 2344, v0 + 1304);
  v52 = type metadata accessor for MaskedLanguageModel();
  v53 = swift_allocObject();

  v55 = specialized MaskedLanguageModel.init(_:_:)(v54, (v0 + 1304), v53);
  *(v0 + 1288) = v52;
  *(v0 + 1296) = &protocol witness table for MaskedLanguageModel;
  *(v0 + 1264) = v55;
  __swift_destroy_boxed_opaque_existential_1((v0 + 2344));
  outlined init with take of RandomNumberGenerator((v0 + 1264), v0 + 2344);
  v47(v49, v48, v50);
  v56 = Logger.logObject.getter();
  v57 = static os_log_type_t.default.getter();
  v58 = os_log_type_enabled(v56, v57);
  v59 = *(v0 + 4968);
  v60 = *(v0 + 4896);
  v61 = *(v0 + 4784);
  v551 = v52;
  if (v58)
  {
    v62 = swift_slowAlloc();
    v564 = swift_slowAlloc();
    *&v584 = v564;
    *v62 = 136446466;
    swift_beginAccess();
    outlined init with copy of DeterministicLanguageModelProtocol(v0 + 2344, v0 + 2064);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pMR);
    v63 = String.init<A>(describing:)();
    v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v64, &v584);

    *(v62 + 4) = v65;
    *(v62 + 12) = 2082;
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v66 = dispatch thunk of CustomStringConvertible.description.getter();
    v68 = v67;
    v59(v60, v61);
    v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v68, &v584);

    *(v62 + 14) = v69;
    _os_log_impl(&dword_220940000, v56, v57, "Using base language model %{public}s for request %{public}s", v62, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D90A10](v564, -1, -1);
    MEMORY[0x223D90A10](v62, -1, -1);
  }

  else
  {

    v59(v60, v61);
  }

  v70 = *(v0 + 4648);
  v71 = *(v0 + 4632);
  v72 = COERCE_DOUBLE(SamplingParameters.temperature.getter());
  if (v73)
  {
    v74 = 1.0;
  }

  else
  {
    v74 = v72;
  }

  v75 = SamplingParameters.randomSeed.getter();
  v77 = (v70 + *(v71 + 64));
  v79 = *v77;
  v78 = v77[1];
  v560 = v77[2];
  v565 = v78;
  v563 = *v77;
  if (v78)
  {
    v80 = type metadata accessor for ClassificationSampling();
    swift_allocObject();

    v81 = ClassificationSampling.init(defaultClass:outputClasses:)(v79, v78);
    *(v0 + 2288) = v80;
    *(v0 + 2296) = &protocol witness table for ClassificationSampling;
    *(v0 + 2264) = v81;
    v91 = (v0 + 2264);
LABEL_34:
    outlined init with take of RandomNumberGenerator(v91, v0 + 1344);
    goto LABEL_44;
  }

  v82 = v76;
  v83 = v75;
  v84 = *(v0 + 4416);
  SamplingParameters.strategy.getter();
  v85 = type metadata accessor for SamplingStrategy();
  v86 = *(v85 - 8);
  v87 = (*(v86 + 48))(v84, 1, v85);
  v88 = *(v0 + 4432);
  if (v87 == 1)
  {
    outlined destroy of [Int](*(v0 + 4416), &_s15TokenGeneration16SamplingStrategyVSgMd, &_s15TokenGeneration16SamplingStrategyVSgMR);
    v89 = type metadata accessor for SamplingStrategy.Choice();
    (*(*(v89 - 8) + 56))(v88, 1, 1, v89);
    outlined destroy of [Int](v88, &_s15TokenGeneration16SamplingStrategyV6ChoiceOSgMd, &_s15TokenGeneration16SamplingStrategyV6ChoiceOSgMR);
  }

  else
  {
    v92 = *(v0 + 4424);
    v93 = *(v0 + 4416);
    SamplingStrategy.choice.getter();
    (*(v86 + 8))(v93, v85);
    v94 = type metadata accessor for SamplingStrategy.Choice();
    v95 = *(v94 - 8);
    (*(v95 + 56))(v88, 0, 1, v94);
    outlined init with take of Asset?(v88, v92, &_s15TokenGeneration16SamplingStrategyV6ChoiceOSgMd, &_s15TokenGeneration16SamplingStrategyV6ChoiceOSgMR);
    v96 = (*(v95 + 88))(v92, v94);
    if (v96 == *MEMORY[0x277D71C40])
    {
      v97 = *(v0 + 4424);
      (*(v95 + 96))(v97, v94);
      v98 = *v97;
      if (v82)
      {
        v99 = 0;
      }

      else
      {
        v99 = [objc_allocWithZone(TGIMersenneTwisterEngine) initWithSeed_];
      }

      *(&v585 + 1) = &type metadata for SeedableRandomNumberGenerator;
      *&v586 = lazy protocol witness table accessor for type SeedableRandomNumberGenerator and conformance SeedableRandomNumberGenerator();
      *&v584 = v99;
      v254 = type metadata accessor for NucleusSampling();
      swift_allocObject();
      v255 = NucleusSampling.init(p:temperature:generator:)(&v584, v98, v74);
      *(v0 + 2408) = v254;
      *(v0 + 2416) = &protocol witness table for NucleusSampling;
      *(v0 + 2384) = v255;
      v91 = (v0 + 2384);
      goto LABEL_34;
    }

    if (v96 == *MEMORY[0x277D71C48])
    {
      v192 = *(v0 + 4424);
      (*(v95 + 96))(v192, v94);
      v193 = *v192;
      if (v82)
      {
        v194 = 0;
      }

      else
      {
        v194 = [objc_allocWithZone(TGIMersenneTwisterEngine) initWithSeed_];
      }

      *(&v585 + 1) = &type metadata for SeedableRandomNumberGenerator;
      *&v586 = lazy protocol witness table accessor for type SeedableRandomNumberGenerator and conformance SeedableRandomNumberGenerator();
      *&v584 = v194;
      v319 = type metadata accessor for TopK();
      swift_allocObject();
      v320 = TopK.init(k:temperature:generator:)(v193, &v584, v74);
      *(v0 + 2608) = v319;
      *(v0 + 2616) = &protocol witness table for TopK;
      *(v0 + 2584) = v320;
      v91 = (v0 + 2584);
      goto LABEL_34;
    }

    if (v96 != *MEMORY[0x277D71C50])
    {
      (*(v95 + 8))(*(v0 + 4424), v94);
      if (v82)
      {
        v256 = 0;
      }

      else
      {
        v256 = [objc_allocWithZone(TGIMersenneTwisterEngine) initWithSeed_];
      }

      *(v0 + 2728) = &type metadata for SeedableRandomNumberGenerator;
      *(v0 + 2736) = lazy protocol witness table accessor for type SeedableRandomNumberGenerator and conformance SeedableRandomNumberGenerator();
      *(v0 + 2704) = v256;
      v106 = type metadata accessor for GreedySampling();
      v107 = swift_allocObject();
      v108 = (v0 + 2704);
      goto LABEL_43;
    }
  }

  if (v82)
  {
    v90 = 0;
  }

  else
  {
    v90 = [objc_allocWithZone(TGIMersenneTwisterEngine) initWithSeed_];
  }

  *(v0 + 1408) = &type metadata for SeedableRandomNumberGenerator;
  *(v0 + 1416) = lazy protocol witness table accessor for type SeedableRandomNumberGenerator and conformance SeedableRandomNumberGenerator();
  *(v0 + 1384) = v90;
  v106 = type metadata accessor for GreedySampling();
  v107 = swift_allocObject();
  v108 = (v0 + 1384);
LABEL_43:
  outlined init with take of RandomNumberGenerator(v108, v107 + 16);
  *(v0 + 1368) = v106;
  *(v0 + 1376) = &protocol witness table for GreedySampling;
  *(v0 + 1344) = v107;
LABEL_44:
  (*(v0 + 4952))(*(v0 + 4888), *(v0 + 4920), *(v0 + 4784));
  v109 = Logger.logObject.getter();
  v110 = static os_log_type_t.info.getter();
  v111 = os_log_type_enabled(v109, v110);
  v112 = *(v0 + 4968);
  v113 = *(v0 + 4888);
  v114 = *(v0 + 4784);
  if (v111)
  {
    v115 = swift_slowAlloc();
    v548 = swift_slowAlloc();
    *&v584 = v548;
    *v115 = 136446466;
    swift_beginAccess();
    outlined init with copy of DeterministicLanguageModelProtocol(v0 + 1344, v0 + 2824);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference0A8Sampling_pMd, &_s24TokenGenerationInference0A8Sampling_pMR);
    v116 = String.init<A>(describing:)();
    v118 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v116, v117, &v584);

    *(v115 + 4) = v118;
    *(v115 + 12) = 2082;
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v119 = dispatch thunk of CustomStringConvertible.description.getter();
    v121 = v120;
    v112(v113, v114);
    v122 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v119, v121, &v584);

    *(v115 + 14) = v122;
    _os_log_impl(&dword_220940000, v109, v110, "Using sampling %{public}s for request %{public}s", v115, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D90A10](v548, -1, -1);
    MEMORY[0x223D90A10](v115, -1, -1);
  }

  else
  {

    v112(v113, v114);
  }

  v549 = (v0 + 768);
  *(v0 + 768) = xmmword_220AED900;
  *(v0 + 784) = 0u;
  *(v0 + 800) = 0u;
  *(v0 + 816) = 0u;
  *(v0 + 825) = 0u;
  v123 = SamplingParameters.tokenHealing.getter();
  if (v123 != 2 && (v123 & 1) != 0)
  {
    (*(v0 + 4952))(*(v0 + 4880), *(v0 + 4920), *(v0 + 4784));
    v124 = Logger.logObject.getter();
    v125 = static os_log_type_t.default.getter();
    v126 = os_log_type_enabled(v124, v125);
    v127 = *(v0 + 4968);
    v128 = *(v0 + 4880);
    v129 = *(v0 + 4784);
    if (v126)
    {
      v130 = swift_slowAlloc();
      v131 = swift_slowAlloc();
      *&v584 = v131;
      *v130 = 136446210;
      _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v132 = dispatch thunk of CustomStringConvertible.description.getter();
      v134 = v133;
      v127(v128, v129);
      v135 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v132, v134, &v584);

      *(v130 + 4) = v135;
      _os_log_impl(&dword_220940000, v124, v125, "Using token healing for request %{public}s", v130, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v131);
      MEMORY[0x223D90A10](v131, -1, -1);
      MEMORY[0x223D90A10](v130, -1, -1);
    }

    else
    {

      v127(v128, v129);
    }

    v522 = *(v0 + 500);
    v195 = *(v0 + 5128);
    v196 = *(v0 + 5064);
    v529 = *(v0 + 4632);
    v539 = *(v0 + 4648);
    v197 = *(v0 + 4528);
    v198 = *(v0 + 4288);
    v199 = (v539 + *(v529 + 68));
    v200 = *v199;
    v201 = v199[1];
    v202 = v199[2];
    v203 = v199[3];
    __swift_project_boxed_opaque_existential_1((*(v0 + 4304) + 56), *(*(v0 + 4304) + 80));
    v204 = off_2834512B0(v196);
    v206 = specialized static OnDeviceInferenceContextFactory.stopTokenIntValue(stopTokenOverride:stopToken:tokenizer:)(v204, v205, v200, v201, v202, v203);

    v207 = type metadata accessor for TokenizerRunnerPrefixMatchingTextProcessor();
    v208 = swift_allocObject();
    *(v208 + 32) = 1;
    *(v208 + 40) = 0;
    *(v208 + 48) = 513;
    *(v208 + 16) = v195;
    *(v208 + 24) = 0;
    *(v0 + 3048) = v207;
    *(v0 + 3056) = &protocol witness table for TokenizerRunnerPrefixMatchingTextProcessor;
    *(v0 + 3024) = v208;
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v198 + v522, v197, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v209 = swift_allocObject();
    *(v209 + 16) = xmmword_220AE8A30;
    *(v209 + 32) = v206;
    v210 = type metadata accessor for TokenHealingDecoder(0);
    v211 = swift_allocObject();
    v212 = (v211 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_bufferedPrompt);
    v213 = MEMORY[0x277D84F90];
    *v212 = MEMORY[0x277D84F90];
    v212[1] = v213;
    v212[2] = v213;
    *(v211 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_tokensAreHealed) = 0;

    outlined init with copy of DeterministicLanguageModelProtocol(v0 + 3024, v211 + 16);
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v197, v211 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_overflowConstraints, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    *(v211 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_stopTokenIDs) = v209;
    v570 = v213;
    v571 = 0;
    v572 = 1;
    v214 = *(v539 + *(v529 + 44));
    if (v214 < 1)
    {
      v541 = v210;
      v240 = *(v0 + 5088);
      if (!*(v240 + 16))
      {
        v331 = type metadata accessor for BasicDecoder();
        swift_beginAccess();
        closure #1 in TokenHealingDecoder.init(processor:overflowConstraints:stopTokenIDs:buildDecoder:)(v0 + 2344, &v570, (v0 + 3664));
        swift_beginAccess();
        outlined init with copy of DeterministicLanguageModelProtocol(v0 + 1344, v0 + 3624);
        v332 = *(v0 + 3688);
        v333 = *(v0 + 3696);
        v334 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 3664, v332);
        v335 = *(v332 - 8);
        v336 = swift_task_alloc();
        (*(v335 + 16))(v336, v334, v332);
        v337 = specialized BasicDecoder.__allocating_init(languageModel:sampler:)(v336, (v0 + 3624), v331, v332, v333);
        __swift_destroy_boxed_opaque_existential_1((v0 + 3664));

        *(v0 + 3088) = v331;
        *(v0 + 3096) = &protocol witness table for BasicDecoder;
        *(v0 + 3064) = v337;
        v210 = v541;
LABEL_126:
        v191 = (v0 + 2984);
        outlined destroy of [Int](*(v0 + 4528), &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
        __swift_destroy_boxed_opaque_existential_1((v0 + 3024));
        outlined init with take of RandomNumberGenerator((v0 + 3064), v211 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_baseDecoder);
        *(v211 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_delayedLanguageModels) = v570;
        *(v0 + 3008) = v210;
        *(v0 + 3016) = &protocol witness table for TokenHealingDecoder;
        *(v0 + 2984) = v211;
        goto LABEL_127;
      }

      v241 = *(v0 + 4392);
      v242 = *(v0 + 4384);
      v243 = *(v0 + 4376);
      v244 = *(v240 + 48);
      *(v0 + 416) = *(v240 + 32);
      *(v0 + 432) = v244;
      v246 = *(v240 + 80);
      v245 = *(v240 + 96);
      v247 = *(v240 + 64);
      *(v0 + 496) = *(v240 + 112);
      *(v0 + 464) = v246;
      *(v0 + 480) = v245;
      *(v0 + 448) = v247;
      v248 = *(v0 + 416);
      v249 = (v0 + 424);
      outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 416, v0 + 328, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMd, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMR);
      SamplingParameters.speculationParameters.getter();
      v545 = v211;
      v531 = v248;
      if ((*(v241 + 48))(v243, 1, v242) == 1)
      {
        outlined destroy of [Int](*(v0 + 4376), &_s15TokenGeneration21SpeculationParametersVSgMd, &_s15TokenGeneration21SpeculationParametersVSgMR);
        v250 = *(v0 + 440);
        v573 = *v249;
        v574 = v250;
        v575 = *(v0 + 456);
        v576 = *(v0 + 472);
        v251 = *(v0 + 480);
        v252 = *(v0 + 488);
        v253 = *(v0 + 496);
      }

      else
      {
        (*(*(v0 + 4392) + 32))(*(v0 + 4408), *(v0 + 4376), *(v0 + 4384));
        v338 = Logger.logObject.getter();
        v339 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v338, v339))
        {
          v340 = swift_slowAlloc();
          *v340 = 0;
          _os_log_impl(&dword_220940000, v338, v339, "Overriding default speculation behavior from sampling parameters", v340, 2u);
          MEMORY[0x223D90A10](v340, -1, -1);
        }

        v341 = *(v0 + 4408);
        v342 = *(v0 + 4392);
        v343 = *(v0 + 4384);

        v344 = *(v0 + 472);
        v586 = *(v0 + 456);
        v587[0] = v344;
        *(v587 + 9) = *(v0 + 481);
        v345 = *(v0 + 440);
        v584 = *v249;
        v585 = v345;
        DraftingBehavior.updated(with:)(&v577);
        (*(v342 + 8))(v341, v343);
        v573 = v577;
        v574 = v578;
        v575 = v579;
        v251 = v581;
        v576 = v580;
        v252 = v582;
        v253 = v583;
      }

      v346 = *(v0 + 5072);
      v347 = *(v0 + 4952);
      v348 = *(v0 + 4920);
      v349 = *(v0 + 4864);
      v350 = *(v0 + 4784);
      swift_beginAccess();
      v351 = v574;
      *v549 = v573;
      *(v0 + 784) = v351;
      *(v0 + 800) = v575;
      *(v0 + 816) = v576;
      v518 = v252;
      v524 = v251;
      *(v0 + 824) = v251;
      *(v0 + 832) = v252;
      *(v0 + 840) = v253;
      *(v0 + 3288) = type metadata accessor for E5TransformerLanguageModel(0);
      *(v0 + 3296) = &protocol witness table for E5TransformerLanguageModel;
      *(v0 + 3264) = v531;
      outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 416, v0 + 240, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMd, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMR);
      addPromptLookup #1 (_:) in OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:)(v0 + 3264, v346, v348, v0 + 3224);
      __swift_destroy_boxed_opaque_existential_1((v0 + 3264));
      outlined init with copy of DeterministicLanguageModelProtocol(v0 + 3224, v0 + 3344);
      v352 = swift_allocObject();

      v354 = specialized MaskedLanguageModel.init(_:_:)(v353, (v0 + 3344), v352);
      v347(v349, v348, v350);

      v355 = Logger.logObject.getter();
      v356 = static os_log_type_t.default.getter();

      v357 = os_log_type_enabled(v355, v356);
      v358 = *(v0 + 4968);
      v359 = *(v0 + 4864);
      v360 = *(v0 + 4784);
      v533 = v354;
      v511 = v253;
      if (v357)
      {
        v361 = swift_slowAlloc();
        v362 = swift_slowAlloc();
        *&v584 = v362;
        *v361 = 136446466;
        *(v0 + 4280) = v354;

        v363 = String.init<A>(describing:)();
        v365 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v363, v364, &v584);

        *(v361 + 4) = v365;
        *(v361 + 12) = 2082;
        _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v366 = dispatch thunk of CustomStringConvertible.description.getter();
        v368 = v367;
        v358(v359, v360);
        v369 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v366, v368, &v584);
        v354 = v533;

        *(v361 + 14) = v369;
        _os_log_impl(&dword_220940000, v355, v356, "Using draft language model %{public}s for request %{public}s", v361, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223D90A10](v362, -1, -1);
        MEMORY[0x223D90A10](v361, -1, -1);
      }

      else
      {

        v358(v359, v360);
      }

      *(v0 + 3448) = v551;
      *(v0 + 3456) = &protocol witness table for MaskedLanguageModel;
      *(v0 + 3424) = v354;

      closure #1 in TokenHealingDecoder.init(processor:overflowConstraints:stopTokenIDs:buildDecoder:)(v0 + 3424, &v570, (v0 + 3384));
      __swift_destroy_boxed_opaque_existential_1((v0 + 3424));
      v370 = v524;
      if (v524 < 1)
      {
        outlined init with copy of DeterministicLanguageModelProtocol(v0 + 3384, v0 + 3464);
        v210 = v541;
        v211 = v545;
        v382 = v518;
      }

      else
      {
        (*(v0 + 4952))(*(v0 + 4856), *(v0 + 4920), *(v0 + 4784));
        v371 = Logger.logObject.getter();
        v372 = static os_log_type_t.default.getter();
        v373 = os_log_type_enabled(v371, v372);
        v374 = *(v0 + 4968);
        v375 = *(v0 + 4856);
        v376 = *(v0 + 4784);
        if (v373)
        {
          v377 = swift_slowAlloc();
          v554 = swift_slowAlloc();
          *&v584 = v554;
          *v377 = 136446722;
          _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v378 = dispatch thunk of CustomStringConvertible.description.getter();
          v380 = v379;
          v374(v375, v376);
          v381 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v378, v380, &v584);
          v370 = v524;

          *(v377 + 4) = v381;
          *(v377 + 12) = 2050;
          *(v377 + 14) = v524;
          *(v377 + 22) = 2050;
          v382 = v518;
          *(v377 + 24) = v518;
          _os_log_impl(&dword_220940000, v371, v372, "Using speculative streaming for draft model for request %{public}s, gamma: %{public}ld, streamTreeFactor: %{public}ld", v377, 0x20u);
          __swift_destroy_boxed_opaque_existential_1(v554);
          MEMORY[0x223D90A10](v554, -1, -1);
          MEMORY[0x223D90A10](v377, -1, -1);
        }

        else
        {

          v374(v375, v376);
          v382 = v518;
        }

        v383 = (*(*(v0 + 5112) + 88))(*(v0 + 5120));

        v384 = specialized static SpeculativeStreamingLanguageModel.makeStreamTokenIDs(streamCount:vocabularyCount:tokenIDForText:)(v370, v383);

        outlined init with copy of DeterministicLanguageModelProtocol(v0 + 3384, v0 + 1144);
        v385 = type metadata accessor for SpeculativeStreamingLanguageModel();
        v386 = swift_allocObject();
        v387 = MEMORY[0x277D84F90];
        v386[9] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_24TokenGenerationInference15LogitCollection_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
        v386[10] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(v387);
        outlined init with take of RandomNumberGenerator((v0 + 1144), (v386 + 2));
        v386[7] = v382;
        v386[8] = v384;
        *(v0 + 3488) = v385;
        *(v0 + 3496) = &protocol witness table for SpeculativeStreamingLanguageModel;
        *(v0 + 3464) = v386;
        v210 = v541;
        v211 = v545;
      }

      swift_beginAccess();
      closure #1 in TokenHealingDecoder.init(processor:overflowConstraints:stopTokenIDs:buildDecoder:)(v0 + 2344, &v570, (v0 + 3504));
      SamplingParameters.priorInferenceOutput.getter();
      if (v388)
      {
        v389 = dispatch thunk of TokenizerRunner.tokenize(_:)();
        LookupLanguageModelState<>.init(priorOutputTokens:)(v389, &v584);
        v391 = *(&v584 + 1);
        v390 = v584;
        v392 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference19LookupLanguageModelCyAA20PriorOutputNodeStateVGMd, &_s24TokenGenerationInference19LookupLanguageModelCyAA20PriorOutputNodeStateVGMR);
        v393 = swift_allocObject();
        v393[2] = v390;
        v393[3] = v391;
        v210 = v541;
        v393[4] = 2;
        *(v0 + 3608) = v392;
        *(v0 + 3616) = &protocol witness table for LookupLanguageModel<A>;

        *(v0 + 3584) = v393;
      }

      else
      {
        *(v0 + 3616) = 0;
        *(v0 + 3584) = 0u;
        *(v0 + 3600) = 0u;
      }

      v394 = *(v0 + 4648);
      v395 = *(v0 + 4304);
      v584 = v573;
      v585 = v574;
      v586 = v575;
      *&v587[0] = v576;
      *(&v587[0] + 1) = v370;
      *&v587[1] = v382;
      BYTE8(v587[1]) = v511;
      swift_beginAccess();
      v396 = specialized getter of stopTokenID #1 in buildDecoder #1 (_:) in OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:)(&v571, v395, v394);
      DraftingBehavior.makeDecoder(draftModel:targetModel:outerDraftModel:sampler:stopTokenId:)(v0 + 3464, v0 + 3504, v0 + 3584, v0 + 1344, v396, (v0 + 1008));
      v555 = *(v0 + 1032);
      v397 = *(v0 + 1032);
      v398 = __swift_project_boxed_opaque_existential_1((v0 + 1008), v397);
      *(v0 + 3088) = v555;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 3064));
      (*(*(v397 - 8) + 16))(boxed_opaque_existential_1, v398, v397);

      outlined destroy of [Int](v0 + 416, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMd, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMR);
      __swift_destroy_boxed_opaque_existential_1((v0 + 3504));
      __swift_destroy_boxed_opaque_existential_1((v0 + 3384));
      __swift_destroy_boxed_opaque_existential_1((v0 + 3224));
      outlined destroy of [Int](v0 + 3584, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
      __swift_destroy_boxed_opaque_existential_1((v0 + 3464));
      v311 = (v0 + 1008);
    }

    else
    {
      v544 = v211;
      v215 = *(v0 + 4648) + *(*(v0 + 4632) + 36);
      v216 = *(v215 + 8);
      v217 = *(v215 + 64);
      if (v216 == 2)
      {
        v218 = 1;
      }

      else
      {
        v218 = v217;
      }

      (*(v0 + 4952))(*(v0 + 4872), *(v0 + 4920), *(v0 + 4784));
      v219 = Logger.logObject.getter();
      v220 = static os_log_type_t.default.getter();
      v221 = os_log_type_enabled(v219, v220);
      v222 = *(v0 + 4968);
      v223 = *(v0 + 4872);
      v224 = *(v0 + 4784);
      if (v221)
      {
        v540 = v210;
        v225 = swift_slowAlloc();
        v553 = swift_slowAlloc();
        *&v584 = v553;
        *v225 = 136446722;
        _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v523 = v218;
        v226 = dispatch thunk of CustomStringConvertible.description.getter();
        v530 = v220;
        v227 = v214;
        v229 = v228;
        v222(v223, v224);
        v230 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v226, v229, &v584);
        v214 = v227;

        *(v225 + 4) = v230;
        *(v225 + 12) = 2050;
        *(v225 + 14) = v227;
        *(v225 + 22) = 2050;
        v231 = v523;
        *(v225 + 24) = v523;
        _os_log_impl(&dword_220940000, v219, v530, "Using speculative streaming for request %{public}s, gamma = %{public}ld, treeFactor = %{public}ld", v225, 0x20u);
        __swift_destroy_boxed_opaque_existential_1(v553);
        MEMORY[0x223D90A10](v553, -1, -1);
        v232 = v225;
        v210 = v540;
        MEMORY[0x223D90A10](v232, -1, -1);
      }

      else
      {

        v222(v223, v224);
        v231 = v218;
      }

      v301 = *(v0 + 5120);
      v302 = *(v0 + 5112);
      swift_beginAccess();
      closure #1 in TokenHealingDecoder.init(processor:overflowConstraints:stopTokenIDs:buildDecoder:)(v0 + 2344, &v570, (v0 + 3544));
      v303 = (*(v302 + 88))(v301, v302);

      v304 = specialized static SpeculativeStreamingLanguageModel.makeStreamTokenIDs(streamCount:vocabularyCount:tokenIDForText:)(v214, v303);

      outlined init with copy of DeterministicLanguageModelProtocol(v0 + 3544, v0 + 3184);
      type metadata accessor for SpeculativeStreamingLanguageModel();
      v305 = swift_allocObject();
      v306 = MEMORY[0x277D84F90];
      v305[9] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_24TokenGenerationInference15LogitCollection_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      v305[10] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(v306);
      v17 = outlined init with take of RandomNumberGenerator((v0 + 3184), (v305 + 2));
      v305[7] = v231;
      v305[8] = v304;
      v211 = v544;
      if (v231 < 1)
      {
        goto LABEL_152;
      }

      LOBYTE(v577) = 1;
      LOBYTE(v584) = 1;
      *(v0 + 848) = v214;
      *(v0 + 856) = 0;
      *(v0 + 864) = v231;
      *(v0 + 872) = 0;
      *(v0 + 880) = 1;
      *(v0 + 884) = 0;
      *(v0 + 888) = 1;
      *(v0 + 889) = 0;
      *(v0 + 892) = 0;
      *(v0 + 896) = 1;
      *(v0 + 904) = 0;
      *(v0 + 912) = 1;
      *(v0 + 920) = 0;
      swift_beginAccess();
      outlined init with copy of DeterministicLanguageModelProtocol(v0 + 1344, v0 + 2904);
      v307 = type metadata accessor for SpeculativeStreamingPerformanceLoggingDecoder();
      v308 = swift_allocObject();

      v310 = specialized SpeculativeStreamingPerformanceLoggingDecoder.init(languageModel:behavior:sampler:)(v309, (v0 + 848), (v0 + 2904), v308);
      *(v0 + 3088) = v307;
      *(v0 + 3096) = &protocol witness table for SpeculativeStreamingPerformanceLoggingDecoder;

      *(v0 + 3064) = v310;
      v311 = (v0 + 3544);
    }

    __swift_destroy_boxed_opaque_existential_1(v311);
    goto LABEL_126;
  }

  (*(v0 + 4952))(*(v0 + 4848), *(v0 + 4920), *(v0 + 4784));
  v136 = Logger.logObject.getter();
  v137 = static os_log_type_t.default.getter();
  v138 = os_log_type_enabled(v136, v137);
  v139 = *(v0 + 4968);
  v140 = *(v0 + 4848);
  v141 = *(v0 + 4784);
  if (v138)
  {
    v142 = swift_slowAlloc();
    v143 = swift_slowAlloc();
    *&v584 = v143;
    *v142 = 136446210;
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v144 = dispatch thunk of CustomStringConvertible.description.getter();
    v146 = v145;
    v139(v140, v141);
    v147 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v144, v146, &v584);

    *(v142 + 4) = v147;
    _os_log_impl(&dword_220940000, v136, v137, "Not using token healing for request %{public}s", v142, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v143);
    MEMORY[0x223D90A10](v143, -1, -1);
    MEMORY[0x223D90A10](v142, -1, -1);
  }

  else
  {

    v139(v140, v141);
  }

  v148 = *(v0 + 4648);
  v149 = *(v0 + 4632);
  v571 = 0;
  v572 = 1;
  v150 = *(v148 + *(v149 + 44));
  if (v150 < 1)
  {
    v168 = *(v0 + 5088);
    if (*(v168 + 16))
    {
      v169 = *(v0 + 4392);
      v170 = *(v0 + 4384);
      v171 = *(v0 + 4368);
      v172 = *(v168 + 48);
      *(v0 + 680) = *(v168 + 32);
      *(v0 + 696) = v172;
      v174 = *(v168 + 80);
      v173 = *(v168 + 96);
      v175 = *(v168 + 64);
      *(v0 + 760) = *(v168 + 112);
      *(v0 + 728) = v174;
      *(v0 + 744) = v173;
      *(v0 + 712) = v175;
      v176 = *(v0 + 680);
      v177 = (v0 + 688);
      v538 = v0 + 680;
      outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 680, v0 + 592, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMd, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMR);
      SamplingParameters.speculationParameters.getter();
      v515 = v176;
      if ((*(v169 + 48))(v171, 1, v170) == 1)
      {
        outlined destroy of [Int](*(v0 + 4368), &_s15TokenGeneration21SpeculationParametersVSgMd, &_s15TokenGeneration21SpeculationParametersVSgMR);
        v566 = *v177;
        v567 = *(v0 + 704);
        v568 = *(v0 + 720);
        v569 = *(v0 + 736);
        v178 = *(v0 + 744);
        v179 = *(v0 + 752);
        v180 = *(v0 + 760);
      }

      else
      {
        (*(*(v0 + 4392) + 32))(*(v0 + 4400), *(v0 + 4368), *(v0 + 4384));
        v257 = Logger.logObject.getter();
        v258 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v257, v258))
        {
          v259 = swift_slowAlloc();
          *v259 = 0;
          _os_log_impl(&dword_220940000, v257, v258, "Overriding default speculation behavior from sampling parameters", v259, 2u);
          MEMORY[0x223D90A10](v259, -1, -1);
        }

        v260 = *(v0 + 4400);
        v261 = *(v0 + 4392);
        v262 = *(v0 + 4384);

        v263 = *(v0 + 736);
        v586 = *(v0 + 720);
        v587[0] = v263;
        *(v587 + 9) = *(v0 + 745);
        v264 = *(v0 + 704);
        v584 = *v177;
        v585 = v264;
        DraftingBehavior.updated(with:)(&v577);
        (*(v261 + 8))(v260, v262);
        v566 = v577;
        v567 = v578;
        v568 = v579;
        v178 = v581;
        v569 = v580;
        v179 = v582;
        v180 = v583;
      }

      v265 = *(v0 + 5072);
      v266 = *(v0 + 4952);
      v267 = *(v0 + 4920);
      v268 = *(v0 + 4832);
      v269 = *(v0 + 4784);
      swift_beginAccess();
      *v549 = v566;
      *(v0 + 784) = v567;
      *(v0 + 800) = v568;
      *(v0 + 816) = v569;
      v532 = v178;
      *(v0 + 824) = v178;
      v506 = v179;
      *(v0 + 832) = v179;
      *(v0 + 840) = v180;
      *(v0 + 1728) = type metadata accessor for E5TransformerLanguageModel(0);
      *(v0 + 1736) = &protocol witness table for E5TransformerLanguageModel;
      *(v0 + 1704) = v515;
      outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v538, v0 + 504, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMd, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMR);
      addPromptLookup #1 (_:) in OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:)(v0 + 1704, v265, v267, v0 + 1664);
      __swift_destroy_boxed_opaque_existential_1((v0 + 1704));
      outlined init with copy of DeterministicLanguageModelProtocol(v0 + 1664, v0 + 1784);
      v270 = v551;
      v271 = swift_allocObject();

      v273 = specialized MaskedLanguageModel.init(_:_:)(v272, (v0 + 1784), v271);
      v266(v268, v267, v269);

      v274 = Logger.logObject.getter();
      v275 = static os_log_type_t.default.getter();

      v276 = os_log_type_enabled(v274, v275);
      v277 = *(v0 + 4968);
      v278 = *(v0 + 4832);
      v279 = *(v0 + 4784);
      if (v276)
      {
        v508 = *(v0 + 4968);
        v280 = swift_slowAlloc();
        v516 = swift_slowAlloc();
        *&v584 = v516;
        *v280 = 136446466;
        *(v0 + 4248) = v273;

        v281 = String.init<A>(describing:)();
        v283 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v281, v282, &v584);

        *(v280 + 4) = v283;
        *(v280 + 12) = 2082;
        _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v284 = dispatch thunk of CustomStringConvertible.description.getter();
        v286 = v285;
        v508(v278, v279);
        v287 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v284, v286, &v584);
        v270 = v551;

        *(v280 + 14) = v287;
        _os_log_impl(&dword_220940000, v274, v275, "Using draft language model %{public}s for request %{public}s", v280, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223D90A10](v516, -1, -1);
        MEMORY[0x223D90A10](v280, -1, -1);
      }

      else
      {

        v277(v278, v279);
      }

      *(v0 + 1848) = v270;
      *(v0 + 1856) = &protocol witness table for MaskedLanguageModel;
      *(v0 + 1824) = v273;
      v288 = v532;
      if (v532 < 1)
      {
        outlined init with copy of DeterministicLanguageModelProtocol(v0 + 1824, v0 + 1864);

        v300 = v506;
      }

      else
      {
        (*(v0 + 4952))(*(v0 + 4824), *(v0 + 4920), *(v0 + 4784));

        v289 = Logger.logObject.getter();
        v290 = static os_log_type_t.default.getter();
        v291 = os_log_type_enabled(v289, v290);
        v292 = *(v0 + 4968);
        v293 = *(v0 + 4824);
        v294 = *(v0 + 4784);
        if (v291)
        {
          v295 = swift_slowAlloc();
          v517 = swift_slowAlloc();
          *&v584 = v517;
          *v295 = 136446722;
          _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
          v296 = dispatch thunk of CustomStringConvertible.description.getter();
          v298 = v297;
          v292(v293, v294);
          v299 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v296, v298, &v584);
          v288 = v532;

          *(v295 + 4) = v299;
          *(v295 + 12) = 2050;
          *(v295 + 14) = v532;
          *(v295 + 22) = 2050;
          v300 = v506;
          *(v295 + 24) = v506;
          _os_log_impl(&dword_220940000, v289, v290, "Using speculative streaming for draft model for request %{public}s, gamma: %{public}ld, streamTreeFactor: %{public}ld", v295, 0x20u);
          __swift_destroy_boxed_opaque_existential_1(v517);
          MEMORY[0x223D90A10](v517, -1, -1);
          MEMORY[0x223D90A10](v295, -1, -1);
        }

        else
        {

          v292(v293, v294);
          v300 = v506;
        }

        v312 = (*(*(v0 + 5112) + 88))(*(v0 + 5120));

        v313 = specialized static SpeculativeStreamingLanguageModel.makeStreamTokenIDs(streamCount:vocabularyCount:tokenIDForText:)(v288, v312);

        outlined init with copy of DeterministicLanguageModelProtocol(v0 + 1824, v0 + 2544);
        v314 = type metadata accessor for SpeculativeStreamingLanguageModel();
        v315 = swift_allocObject();
        v316 = MEMORY[0x277D84F90];
        v315[9] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_24TokenGenerationInference15LogitCollection_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
        v315[10] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(v316);
        outlined init with take of RandomNumberGenerator((v0 + 2544), (v315 + 2));
        v315[7] = v300;
        v315[8] = v313;
        *(v0 + 1888) = v314;
        *(v0 + 1896) = &protocol witness table for SpeculativeStreamingLanguageModel;
        *(v0 + 1864) = v315;
      }

      swift_beginAccess();
      outlined init with copy of DeterministicLanguageModelProtocol(v0 + 2344, v0 + 1904);
      SamplingParameters.priorInferenceOutput.getter();
      if (v317)
      {
        v318 = dispatch thunk of TokenizerRunner.tokenize(_:)();
        LookupLanguageModelState<>.init(priorOutputTokens:)(v318, &v584);
        v321 = v584;
        v322 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference19LookupLanguageModelCyAA20PriorOutputNodeStateVGMd, &_s24TokenGenerationInference19LookupLanguageModelCyAA20PriorOutputNodeStateVGMR);
        v323 = swift_allocObject();
        *(v323 + 16) = v321;
        *(v323 + 32) = 2;
        *(v0 + 2008) = v322;
        *(v0 + 2016) = &protocol witness table for LookupLanguageModel<A>;

        *(v0 + 1984) = v323;
      }

      else
      {
        *(v0 + 2016) = 0;
        *(v0 + 1984) = 0u;
        *(v0 + 2000) = 0u;
      }

      v324 = *(v0 + 4648);
      v325 = *(v0 + 4304);
      v584 = v566;
      v585 = v567;
      v586 = v568;
      *&v587[0] = v569;
      *(&v587[0] + 1) = v288;
      *&v587[1] = v300;
      BYTE8(v587[1]) = v180;
      swift_beginAccess();
      v326 = specialized getter of stopTokenID #1 in buildDecoder #1 (_:) in OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:)(&v571, v325, v324);
      DraftingBehavior.makeDecoder(draftModel:targetModel:outerDraftModel:sampler:stopTokenId:)(v0 + 1864, v0 + 1904, v0 + 1984, v0 + 1344, v326, (v0 + 1056));
      v327 = *(v0 + 1080);
      v328 = *(v0 + 1088);
      v329 = __swift_project_boxed_opaque_existential_1((v0 + 1056), v327);
      *(v0 + 1528) = v327;
      *(v0 + 1536) = v328;
      v191 = (v0 + 1504);
      v330 = __swift_allocate_boxed_opaque_existential_1((v0 + 1504));
      (*(*(v327 - 8) + 16))(v330, v329, v327);

      outlined destroy of [Int](v538, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMd, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMR);
      __swift_destroy_boxed_opaque_existential_1((v0 + 1904));
      __swift_destroy_boxed_opaque_existential_1((v0 + 1824));
      __swift_destroy_boxed_opaque_existential_1((v0 + 1664));
      outlined destroy of [Int](v0 + 1984, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
      __swift_destroy_boxed_opaque_existential_1((v0 + 1864));
      __swift_destroy_boxed_opaque_existential_1((v0 + 1056));
    }

    else
    {
      v233 = type metadata accessor for BasicDecoder();
      swift_beginAccess();
      outlined init with copy of DeterministicLanguageModelProtocol(v0 + 2344, v0 + 2624);
      swift_beginAccess();
      outlined init with copy of DeterministicLanguageModelProtocol(v0 + 1344, v0 + 2744);
      v234 = *(v0 + 2648);
      v235 = *(v0 + 2656);
      v236 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 2624, v234);
      v237 = *(v234 - 8);
      v238 = swift_task_alloc();
      (*(v237 + 16))(v238, v236, v234);
      v239 = specialized BasicDecoder.__allocating_init(languageModel:sampler:)(v238, (v0 + 2744), v233, v234, v235);
      __swift_destroy_boxed_opaque_existential_1((v0 + 2624));

      *(v0 + 1528) = v233;
      *(v0 + 1536) = &protocol witness table for BasicDecoder;
      *(v0 + 1504) = v239;
      v191 = (v0 + 1504);
    }
  }

  else
  {
    v151 = v148 + *(v149 + 36);
    v152 = *(v151 + 8);
    v153 = *(v151 + 64);
    if (v152 == 2)
    {
      v154 = 1;
    }

    else
    {
      v154 = v153;
    }

    (*(v0 + 4952))(*(v0 + 4840), *(v0 + 4920), *(v0 + 4784));
    v155 = Logger.logObject.getter();
    v156 = static os_log_type_t.default.getter();
    v157 = os_log_type_enabled(v155, v156);
    v158 = *(v0 + 4968);
    v159 = *(v0 + 4840);
    v160 = *(v0 + 4784);
    if (v157)
    {
      v552 = v154;
      v161 = swift_slowAlloc();
      v537 = swift_slowAlloc();
      *&v584 = v537;
      *v161 = 136446722;
      _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v528 = v156;
      v162 = dispatch thunk of CustomStringConvertible.description.getter();
      v163 = v150;
      v165 = v164;
      v158(v159, v160);
      v166 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v162, v165, &v584);
      v150 = v163;

      *(v161 + 4) = v166;
      *(v161 + 12) = 2050;
      *(v161 + 14) = v163;
      *(v161 + 22) = 2050;
      *(v161 + 24) = v552;
      _os_log_impl(&dword_220940000, v155, v528, "Using speculative streaming for request %{public}s, gamma = %{public}ld, treeFactor = %{public}ld", v161, 0x20u);
      __swift_destroy_boxed_opaque_existential_1(v537);
      MEMORY[0x223D90A10](v537, -1, -1);
      v167 = v161;
      v154 = v552;
      MEMORY[0x223D90A10](v167, -1, -1);
    }

    else
    {

      v158(v159, v160);
    }

    v181 = *(v0 + 5120);
    v182 = *(v0 + 5112);
    swift_beginAccess();
    outlined init with copy of DeterministicLanguageModelProtocol(v0 + 2344, v0 + 2784);
    v183 = (*(v182 + 88))(v181, v182);

    v184 = specialized static SpeculativeStreamingLanguageModel.makeStreamTokenIDs(streamCount:vocabularyCount:tokenIDForText:)(v150, v183);

    outlined init with copy of DeterministicLanguageModelProtocol(v0 + 2784, v0 + 2864);
    type metadata accessor for SpeculativeStreamingLanguageModel();
    v185 = swift_allocObject();
    v186 = MEMORY[0x277D84F90];
    v185[9] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_24TokenGenerationInference15LogitCollection_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v185[10] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(v186);
    v17 = outlined init with take of RandomNumberGenerator((v0 + 2864), (v185 + 2));
    v185[7] = v154;
    v185[8] = v184;
    if (v154 < 1)
    {
LABEL_151:
      __break(1u);
LABEL_152:
      __break(1u);
      goto LABEL_153;
    }

    LOBYTE(v577) = 1;
    LOBYTE(v584) = 1;
    *(v0 + 928) = v150;
    *(v0 + 936) = 0;
    *(v0 + 944) = v154;
    *(v0 + 952) = 0;
    *(v0 + 960) = 1;
    *(v0 + 964) = 0;
    *(v0 + 968) = 1;
    *(v0 + 969) = 0;
    *(v0 + 972) = 0;
    *(v0 + 976) = 1;
    *(v0 + 984) = 0;
    *(v0 + 992) = 1;
    *(v0 + 1000) = 0;
    swift_beginAccess();
    outlined init with copy of DeterministicLanguageModelProtocol(v0 + 1344, v0 + 2944);
    v187 = type metadata accessor for SpeculativeStreamingPerformanceLoggingDecoder();
    v188 = swift_allocObject();

    v190 = specialized SpeculativeStreamingPerformanceLoggingDecoder.init(languageModel:behavior:sampler:)(v189, (v0 + 928), (v0 + 2944), v188);
    *(v0 + 1528) = v187;
    *(v0 + 1536) = &protocol witness table for SpeculativeStreamingPerformanceLoggingDecoder;

    *(v0 + 1504) = v190;
    __swift_destroy_boxed_opaque_existential_1((v0 + 2784));
    v191 = (v0 + 1504);
  }

LABEL_127:
  outlined init with take of RandomNumberGenerator(v191, v0 + 1464);
  v400 = *(v0 + 4952);
  v401 = *(v0 + 4920);
  v402 = *(v0 + 4816);
  v403 = *(v0 + 4784);
  outlined init with copy of DeterministicLanguageModelProtocol(v0 + 1464, v0 + 2104);
  v400(v402, v401, v403);
  v404 = Logger.logObject.getter();
  v405 = static os_log_type_t.info.getter();
  v406 = os_log_type_enabled(v404, v405);
  v407 = *(v0 + 4968);
  v408 = *(v0 + 4816);
  v409 = *(v0 + 4784);
  if (v406)
  {
    v410 = swift_slowAlloc();
    v556 = swift_slowAlloc();
    *&v584 = v556;
    *v410 = 136446466;
    outlined init with copy of DeterministicLanguageModelProtocol(v0 + 2104, v0 + 2504);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference15SamplingDecoder_pMd, &_s24TokenGenerationInference15SamplingDecoder_pMR);
    v411 = String.init<A>(describing:)();
    v413 = v412;
    __swift_destroy_boxed_opaque_existential_1((v0 + 2104));
    v414 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v411, v413, &v584);

    *(v410 + 4) = v414;
    *(v410 + 12) = 2082;
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v415 = dispatch thunk of CustomStringConvertible.description.getter();
    v417 = v416;
    v407(v408, v409);
    v418 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v415, v417, &v584);

    *(v410 + 14) = v418;
    _os_log_impl(&dword_220940000, v404, v405, "Using decoder %{public}s for request %{public}s", v410, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D90A10](v556, -1, -1);
    MEMORY[0x223D90A10](v410, -1, -1);
  }

  else
  {

    v407(v408, v409);
    __swift_destroy_boxed_opaque_existential_1((v0 + 2104));
  }

  v419 = *(*(v0 + 5056) + 16);

  v420 = 0;
  if (v419)
  {
    v421 = 32;
    while (1)
    {
      v422 = *(v0 + 4352);
      outlined init with copy of DeterministicLanguageModelProtocol(*(v0 + 5056) + v421, v0 + 2144);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pMR);
      v423 = type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer(0);
      v424 = swift_dynamicCast();
      v425 = *(v423 - 8);
      (*(v425 + 56))(v422, v424 ^ 1u, 1, v423);
      LODWORD(v422) = (*(v425 + 48))(v422, 1, v423);
      v17 = outlined destroy of [Int](*(v0 + 4352), &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMR);
      if (v422 != 1)
      {
        break;
      }

      ++v420;
      v421 += 40;
      if (v419 == v420)
      {
        v420 = v419;
        break;
      }
    }
  }

  v426 = *(v0 + 5056);
  v427 = *(v426 + 16);
  if (v420 != v427)
  {
    if (v420 < v427)
    {
      v430 = *(v0 + 4344);
      v431 = *(v0 + 4336);
      outlined init with copy of DeterministicLanguageModelProtocol(v426 + 40 * v420 + 32, v0 + 2184);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pMR);
      v429 = type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer(0);
      v432 = swift_dynamicCast();
      v433 = *(v429 - 8);
      v434 = *(v433 + 56);
      v434(v430, v432 ^ 1u, 1, v429);
      outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v430, v431, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMR);
      v17 = (*(v433 + 48))(v431, 1, v429);
      if (v17 != 1)
      {
        v435 = *(v0 + 4360);
        v436 = *(v0 + 4344);
        _s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVWObTm_0(*(v0 + 4336), v435, type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer);
        outlined destroy of [Int](v436, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMR);
        v434(v435, 0, 1, v429);
        goto LABEL_140;
      }

LABEL_153:
      __break(1u);
      return MEMORY[0x2822009F8](v17, v16, v18);
    }

    __break(1u);
    goto LABEL_151;
  }

  v428 = *(v0 + 4360);
  v429 = type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer(0);
  (*(*(v429 - 8) + 56))(v428, 1, 1, v429);
LABEL_140:
  v437 = *(v0 + 4616);
  v438 = *(v0 + 4600);
  v439 = *(v0 + 4360);
  v440 = *(v0 + 4328);

  v557 = *(v437 + *(v438 + 28));

  v546 = SamplingParameters.useHighQualityImageTokenization.getter();
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v439, v440, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMR);
  type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer(0);
  v441 = (*(*(v429 - 8) + 48))(v440, 1, v429);
  v442 = *(v0 + 4328);
  if (v441 == 1)
  {
    outlined destroy of [Int](v442, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMR);
    v443 = 0;
  }

  else
  {
    v444 = (v442 + *(v429 + 28));
    v445 = *v444;
    v446 = v444[1];
    v447 = v444[2];
    v448 = v444[3];
    v512 = v448;
    v519 = *v444;
    v450 = v444[4];
    v449 = v444[5];
    v507 = v444[6];
    v509 = v447;
    v534 = *(v0 + 4328);
    v542 = *(v442 + *(v429 + 32));
    v451 = type metadata accessor for OnDeviceImagePreprocessor();
    v452 = swift_allocObject();
    type metadata accessor for ImageTokenizer();
    v525 = *(v534 + 16);
    v452[2] = v445;
    v452[3] = v446;
    v452[4] = v447;
    v452[5] = v448;
    v452[6] = v450;
    v452[7] = v449;
    v452[8] = v507;
    *(v0 + 2488) = v451;
    *(v0 + 2496) = &protocol witness table for OnDeviceImagePreprocessor;
    *(v0 + 2464) = v452;
    v443 = swift_allocObject();
    v453 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 2464, v451);
    v454 = *(v451 - 8);
    v455 = swift_task_alloc();
    (*(v454 + 16))(v455, v453, v451);
    v456 = *v455;
    *(v443 + 40) = v451;
    *(v443 + 16) = v456;
    *(v443 + 48) = &protocol witness table for OnDeviceImagePreprocessor;
    *(v443 + 56) = v519;
    *(v443 + 64) = v446;
    *(v443 + 72) = v509;
    *(v443 + 80) = v512;
    *(v443 + 88) = v450;
    *(v443 + 96) = v449;
    *(v443 + 104) = v507;
    *(v443 + 112) = v525;
    *(v443 + 128) = v542;
    swift_unknownObjectRetain();

    __swift_destroy_boxed_opaque_existential_1((v0 + 2464));

    outlined destroy of InferenceRequest(v534, type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer);
  }

  v535 = *(v0 + 5168);
  v457 = *(v0 + 5144);
  v458 = *(v0 + 412);
  v459 = *(v0 + 4648);
  v460 = *(v0 + 4632);
  v461 = *(v0 + 4616);
  v520 = *(v0 + 588);
  v526 = *(v0 + 4480);
  v513 = *(v0 + 4464);

  v547 = specialized OnDeviceAttachmentTokenizer.__allocating_init(imageTokenIDGenerator:useHighQualityImageTokenization:imageTokenizer:)(v462, v546 & 1, v443);

  outlined copy of ClassifierMetadata?(v563, v565, v560);
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF24TokenGenerationInference18ClassifierMetadataV_s5NeverOAD18ClassifyingDecoderVTg504_s24cd165Inference08OnDeviceC14ContextFactoryC06createcF07request13configuration9isOneShotAA0decF0CAA0C7RequestV_20ModelManagerServices0c8ProviderN13ConfigurationVSbtYaKFAA18ij5VAA18fG7VXEfU6_AD34DeterministicLanguageModelProtocol_p0cD4Core0C17IDToTextConverterCTf1ncn_n(v563, v565, v560, v0 + 2344, v457, v0 + 128);

  outlined init with copy of DeterministicLanguageModelProtocol(v0 + 1464, v0 + 2304);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 128, v0 + 16, &_s24TokenGenerationInference18ClassifyingDecoderVSgMd, &_s24TokenGenerationInference18ClassifyingDecoderVSgMR);
  swift_beginAccess();
  v463 = *(v0 + 816);
  v586 = *(v0 + 800);
  v587[0] = v463;
  *(v587 + 9) = *(v0 + 825);
  v464 = *(v0 + 784);
  v584 = *v549;
  v585 = v464;
  v465 = *(v461 + v458);
  v466 = *(v459 + v460[10]);
  v467 = *(v459 + v460[12]);
  v468 = (v459 + v460[17]);
  v469 = *v468;
  v470 = v468[1];
  v472 = v468[2];
  v471 = v468[3];
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v459 + v520, v513, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMR);
  LODWORD(v457) = v535(v513, 1, v526);
  v543 = v467;

  v514 = v465;

  v550 = v466;

  v536 = v469;
  v521 = v472;
  v527 = v470;
  v510 = v471;
  outlined copy of StopToken?(v469, v470, v472, v471);
  if (v457 == 1)
  {
    v473 = *(v0 + 5168);
    v474 = *(v0 + 4520);
    v475 = *(v0 + 4488);
    v476 = *(v0 + 4480);
    v477 = *(v0 + 4464);
    v478 = *(v0 + 4360);
    static PromptPreprocessingTemplateVersion.default.getter();

    outlined destroy of [Int](v0 + 128, &_s24TokenGenerationInference18ClassifyingDecoderVSgMd, &_s24TokenGenerationInference18ClassifyingDecoderVSgMR);
    outlined destroy of [Int](v478, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMR);
    __swift_destroy_boxed_opaque_existential_1((v0 + 1464));
    (*(v475 + 8))(v474, v476);
    outlined destroy of [Int](v0 + 1744, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
    outlined destroy of [Int](v558, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
    if (v473(v477, 1, v476) != 1)
    {
      outlined destroy of [Int](*(v0 + 4464), &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMR);
    }
  }

  else
  {
    v479 = *(v0 + 4520);
    v480 = *(v0 + 4496);
    v481 = *(v0 + 4488);
    v482 = *(v0 + 4480);
    v483 = *(v0 + 4464);
    v484 = *(v0 + 4360);

    outlined destroy of [Int](v0 + 128, &_s24TokenGenerationInference18ClassifyingDecoderVSgMd, &_s24TokenGenerationInference18ClassifyingDecoderVSgMR);
    outlined destroy of [Int](v484, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMR);
    __swift_destroy_boxed_opaque_existential_1((v0 + 1464));
    (*(v481 + 8))(v479, v482);
    outlined destroy of [Int](v0 + 1744, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
    outlined destroy of [Int](v558, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
    (*(v481 + 32))(v480, v483, v482);
  }

  v485 = *(v0 + 5144);
  v486 = *(v0 + 5136);
  v505 = *(v0 + 5056);
  v487 = *(v0 + 4968);
  v488 = *(v0 + 4920);
  v489 = *(v0 + 4784);
  v504 = *(v0 + 4648);
  v502 = *(v0 + 4616);
  v490 = *(v0 + 4496);
  v491 = *(v0 + 4488);
  v503 = *(v0 + 4480);
  v492 = *(v0 + 4320);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v502 + *(*(v0 + 4600) + 44), v492, &_s19TokenGenerationCore06GuidedB17VocabularyManagerVSgMd, &_s19TokenGenerationCore06GuidedB17VocabularyManagerVSgMR);
  *(v0 + 2448) = v486;
  *(v0 + 2456) = MEMORY[0x277D71E08];
  *(v0 + 2424) = v485;
  v487(v488, v489);
  type metadata accessor for OnDeviceInferenceContext(0);
  v493 = swift_allocObject();
  v494 = v493 + OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext____lazy_storage___maximumContextLength;
  *v494 = 0;
  *(v494 + 8) = 1;
  *(v493 + OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext____lazy_storage___assets) = 0;
  *(v493 + OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext____lazy_storage___modelVersion) = xmmword_220AE5250;
  outlined init with take of RandomNumberGenerator((v0 + 2304), v493 + 16);
  v495 = *(v0 + 48);
  *(v493 + 104) = *(v0 + 64);
  v496 = *(v0 + 96);
  *(v493 + 120) = *(v0 + 80);
  *(v493 + 136) = v496;
  *(v493 + 152) = *(v0 + 112);
  v497 = *(v0 + 32);
  *(v493 + 56) = *(v0 + 16);
  *(v493 + 72) = v497;
  *(v493 + 88) = v495;
  v498 = v585;
  *(v493 + 168) = v584;
  v499 = v586;
  v500 = v587[0];
  *(v493 + 225) = *(v587 + 9);
  *(v493 + 216) = v500;
  *(v493 + 200) = v499;
  *(v493 + 184) = v498;
  *(v493 + 248) = v514;
  *(v493 + 304) = v557;
  outlined init with take of RandomNumberGenerator((v0 + 2424), v493 + 256);
  *(v493 + 296) = v505;
  *(v493 + 312) = v550;
  *(v493 + 320) = v543;
  *(v493 + 328) = v563;
  *(v493 + 336) = v565;
  *(v493 + 344) = v560;
  *(v493 + 352) = v536;
  *(v493 + 360) = v527;
  *(v493 + 368) = v521;
  *(v493 + 376) = v510;
  *(v493 + 384) = v547;
  (*(v491 + 32))(v493 + OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext_promptPreprocessingTemplateVersion, v490, v503);
  outlined init with take of Asset?(v492, v493 + OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext_guidedGenerationVocabularyManager, &_s19TokenGenerationCore06GuidedB17VocabularyManagerVSgMd, &_s19TokenGenerationCore06GuidedB17VocabularyManagerVSgMR);
  outlined destroy of InferenceRequest(v502, type metadata accessor for OnDeviceInferenceAssetObjectTokenizer);
  __swift_destroy_boxed_opaque_existential_1((v0 + 1344));
  __swift_destroy_boxed_opaque_existential_1((v0 + 2344));
  outlined destroy of InferenceRequest(v504, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);

  v501 = *(v0 + 8);

  return v501(v493);
}

{
  v1 = *(*v0 + 4456);
  v2 = *(*v0 + 4448);
  v3 = *(*v0 + 4440);

  (*(v2 + 8))(v1, v3);

  return MEMORY[0x2822009F8](OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:), 0, 0);
}

{
  v567 = v0;
  outlined destroy of [Int](v0 + 1744, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
  v1 = *(v0 + 1960);
  *(v0 + 1744) = *(v0 + 1944);
  *(v0 + 1760) = v1;
  *(v0 + 1776) = *(v0 + 1976);
  v542 = *(v0 + 5192);
  v2 = *(v0 + 5184);
  v3 = dispatch thunk of TokenizerRunner.vocabularyCount.getter();
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 2024, v0 + 1424, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 1744, v0 + 3704, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
  type metadata accessor for ToolCallLanguageModel();
  v4 = swift_allocObject();
  v4[2] = 0;
  v4[3] = v2;
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 1424, (v4 + 6), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 3704, (v4 + 11), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
  v544 = v4;
  v4[4] = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24TokenGenerationInference21ToolCallLanguageModelC4NodeVGMd, &_ss23_ContiguousArrayStorageCy24TokenGenerationInference21ToolCallLanguageModelC4NodeVGMR);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_220AE8A30;
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 1424, v0 + 1184, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
  v6 = *(v0 + 1208);
  if (v6)
  {
    v7 = *(v0 + 1216);
    __swift_project_boxed_opaque_existential_1((v0 + 1184), *(v0 + 1208));
    v8 = (*(v7 + 8))(v6, v7);
    __swift_destroy_boxed_opaque_existential_1((v0 + 1184));
  }

  else
  {
    outlined destroy of [Int](v0 + 1184, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
    v8 = 0;
  }

  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 3704, v0 + 1224, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
  v9 = *(v0 + 1248);
  if (v9)
  {
    v10 = *(v0 + 1256);
    __swift_project_boxed_opaque_existential_1((v0 + 1224), *(v0 + 1248));
    v11 = (*(v10 + 8))(v9, v10);
    __swift_destroy_boxed_opaque_existential_1((v0 + 1224));
  }

  else
  {
    outlined destroy of [Int](v0 + 1224, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
    v11 = 0;
  }

  v12 = v9 == 0;
  v13 = v6 == 0;
  v14 = *(v0 + 4952);
  v15 = *(v0 + 4920);
  v16 = *(v0 + 4896);
  v17 = *(v0 + 4784);
  v18 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(v5 + 32) = v8;
  *(v5 + 40) = v13;
  *(v5 + 48) = v11;
  *(v5 + 56) = v12;
  *(v5 + 57) = 2;
  *(v5 + 64) = v18;
  outlined destroy of [Int](v0 + 3704, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
  outlined destroy of [Int](v0 + 1424, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
  v544[5] = v5;
  outlined init with copy of DeterministicLanguageModelProtocol(v0 + 2344, v0 + 1304);
  v19 = type metadata accessor for MaskedLanguageModel();
  v20 = swift_allocObject();

  v22 = specialized MaskedLanguageModel.init(_:_:)(v21, (v0 + 1304), v20);
  v529 = v19;
  *(v0 + 1288) = v19;
  *(v0 + 1296) = &protocol witness table for MaskedLanguageModel;
  *(v0 + 1264) = v22;
  __swift_destroy_boxed_opaque_existential_1((v0 + 2344));
  outlined init with take of RandomNumberGenerator((v0 + 1264), v0 + 2344);
  v14(v16, v15, v17);
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  v25 = os_log_type_enabled(v23, v24);
  v26 = *(v0 + 4968);
  v27 = *(v0 + 4896);
  v28 = *(v0 + 4784);
  if (v25)
  {
    v29 = swift_slowAlloc();
    v539 = swift_slowAlloc();
    *&v563 = v539;
    *v29 = 136446466;
    swift_beginAccess();
    outlined init with copy of DeterministicLanguageModelProtocol(v0 + 2344, v0 + 2064);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pMR);
    v30 = String.init<A>(describing:)();
    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v31, &v563);

    *(v29 + 4) = v32;
    *(v29 + 12) = 2082;
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v33 = dispatch thunk of CustomStringConvertible.description.getter();
    v35 = v34;
    v26(v27, v28);
    v36 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v35, &v563);

    *(v29 + 14) = v36;
    _os_log_impl(&dword_220940000, v23, v24, "Using base language model %{public}s for request %{public}s", v29, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D90A10](v539, -1, -1);
    MEMORY[0x223D90A10](v29, -1, -1);
  }

  else
  {

    v26(v27, v28);
  }

  v37 = *(v0 + 4648);
  v38 = *(v0 + 4632);
  v39 = COERCE_DOUBLE(SamplingParameters.temperature.getter());
  if (v40)
  {
    v41 = 1.0;
  }

  else
  {
    v41 = v39;
  }

  v42 = SamplingParameters.randomSeed.getter();
  v44 = (v37 + *(v38 + 64));
  v46 = *v44;
  v45 = v44[1];
  v540 = v44[2];
  if (v45)
  {
    v47 = type metadata accessor for ClassificationSampling();
    swift_allocObject();

    v48 = v542;
    v49 = ClassificationSampling.init(defaultClass:outputClasses:)(v46, v45);
    if (v542)
    {
LABEL_15:
      v50 = *(v0 + 4968);
      v51 = *(v0 + 4920);
      v52 = *(v0 + 4784);
      v541 = *(v0 + 4648);
      v537 = *(v0 + 4616);
      v53 = *(v0 + 4520);
      v54 = *(v0 + 4488);
      v55 = *(v0 + 4480);

      (*(v54 + 8))(v53, v55);
      outlined destroy of [Int](v0 + 1744, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
      outlined destroy of [Int](v0 + 2024, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
      v50(v51, v52);
      outlined destroy of InferenceRequest(v537, type metadata accessor for OnDeviceInferenceAssetObjectTokenizer);
      __swift_destroy_boxed_opaque_existential_1((v0 + 2344));
      outlined destroy of InferenceRequest(v541, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);

      *(v0 + 5216) = *(v0 + 5056);
      *(v0 + 5208) = v48;
      v56 = __swift_project_boxed_opaque_existential_1((*(v0 + 4304) + 16), *(*(v0 + 4304) + 40));
      *(v0 + 5224) = v56;
      v57 = *v56;
      v58 = OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:);
      v59 = 0;

      return MEMORY[0x2822009F8](v58, v57, v59);
    }

    *(v0 + 2288) = v47;
    *(v0 + 2296) = &protocol witness table for ClassificationSampling;
    *(v0 + 2264) = v49;
    v69 = (v0 + 2264);
    goto LABEL_23;
  }

  v60 = v43;
  v61 = v42;
  v62 = *(v0 + 4416);
  SamplingParameters.strategy.getter();
  v63 = type metadata accessor for SamplingStrategy();
  v64 = *(v63 - 8);
  v65 = (*(v64 + 48))(v62, 1, v63);
  v66 = *(v0 + 4432);
  if (v65 == 1)
  {
    outlined destroy of [Int](*(v0 + 4416), &_s15TokenGeneration16SamplingStrategyVSgMd, &_s15TokenGeneration16SamplingStrategyVSgMR);
    v67 = type metadata accessor for SamplingStrategy.Choice();
    (*(*(v67 - 8) + 56))(v66, 1, 1, v67);
    outlined destroy of [Int](v66, &_s15TokenGeneration16SamplingStrategyV6ChoiceOSgMd, &_s15TokenGeneration16SamplingStrategyV6ChoiceOSgMR);
    goto LABEL_20;
  }

  v70 = *(v0 + 4424);
  v71 = *(v0 + 4416);
  SamplingStrategy.choice.getter();
  (*(v64 + 8))(v71, v63);
  v72 = type metadata accessor for SamplingStrategy.Choice();
  v73 = *(v72 - 8);
  (*(v73 + 56))(v66, 0, 1, v72);
  outlined init with take of Asset?(v66, v70, &_s15TokenGeneration16SamplingStrategyV6ChoiceOSgMd, &_s15TokenGeneration16SamplingStrategyV6ChoiceOSgMR);
  v74 = (*(v73 + 88))(v70, v72);
  if (v74 == *MEMORY[0x277D71C40])
  {
    v75 = *(v0 + 4424);
    (*(v73 + 96))(v75, v72);
    v76 = *v75;
    if (v60)
    {
      v77 = 0;
    }

    else
    {
      v77 = [objc_allocWithZone(TGIMersenneTwisterEngine) initWithSeed_];
    }

    v48 = v542;
    *(&v564 + 1) = &type metadata for SeedableRandomNumberGenerator;
    *&v565 = lazy protocol witness table accessor for type SeedableRandomNumberGenerator and conformance SeedableRandomNumberGenerator();
    *&v563 = v77;
    v228 = type metadata accessor for NucleusSampling();
    swift_allocObject();
    v229 = NucleusSampling.init(p:temperature:generator:)(&v563, v76, v41);
    if (v542)
    {
      goto LABEL_15;
    }

    *(v0 + 2408) = v228;
    *(v0 + 2416) = &protocol witness table for NucleusSampling;
    *(v0 + 2384) = v229;
    v69 = (v0 + 2384);
    goto LABEL_23;
  }

  if (v74 == *MEMORY[0x277D71C48])
  {
    v164 = *(v0 + 4424);
    (*(v73 + 96))(v164, v72);
    v165 = *v164;
    if (v60)
    {
      v166 = 0;
    }

    else
    {
      v166 = [objc_allocWithZone(TGIMersenneTwisterEngine) initWithSeed_];
    }

    v48 = v542;
    *(&v564 + 1) = &type metadata for SeedableRandomNumberGenerator;
    *&v565 = lazy protocol witness table accessor for type SeedableRandomNumberGenerator and conformance SeedableRandomNumberGenerator();
    *&v563 = v166;
    v294 = type metadata accessor for TopK();
    swift_allocObject();
    v295 = TopK.init(k:temperature:generator:)(v165, &v563, v41);
    if (v542)
    {
      goto LABEL_15;
    }

    *(v0 + 2608) = v294;
    *(v0 + 2616) = &protocol witness table for TopK;
    *(v0 + 2584) = v295;
    v69 = (v0 + 2584);
LABEL_23:
    outlined init with take of RandomNumberGenerator(v69, v0 + 1344);
    v542 = 0;
    goto LABEL_30;
  }

  if (v74 != *MEMORY[0x277D71C50])
  {
    (*(v73 + 8))(*(v0 + 4424), v72);
    if (v60)
    {
      v230 = 0;
    }

    else
    {
      v230 = [objc_allocWithZone(TGIMersenneTwisterEngine) initWithSeed_];
    }

    *(v0 + 2728) = &type metadata for SeedableRandomNumberGenerator;
    *(v0 + 2736) = lazy protocol witness table accessor for type SeedableRandomNumberGenerator and conformance SeedableRandomNumberGenerator();
    *(v0 + 2704) = v230;
    v78 = type metadata accessor for GreedySampling();
    v79 = swift_allocObject();
    v80 = (v0 + 2704);
    goto LABEL_29;
  }

LABEL_20:
  if (v60)
  {
    v68 = 0;
  }

  else
  {
    v68 = [objc_allocWithZone(TGIMersenneTwisterEngine) initWithSeed_];
  }

  *(v0 + 1408) = &type metadata for SeedableRandomNumberGenerator;
  *(v0 + 1416) = lazy protocol witness table accessor for type SeedableRandomNumberGenerator and conformance SeedableRandomNumberGenerator();
  *(v0 + 1384) = v68;
  v78 = type metadata accessor for GreedySampling();
  v79 = swift_allocObject();
  v80 = (v0 + 1384);
LABEL_29:
  outlined init with take of RandomNumberGenerator(v80, v79 + 16);
  *(v0 + 1368) = v78;
  *(v0 + 1376) = &protocol witness table for GreedySampling;
  *(v0 + 1344) = v79;
LABEL_30:
  (*(v0 + 4952))(*(v0 + 4888), *(v0 + 4920), *(v0 + 4784));
  v81 = Logger.logObject.getter();
  v82 = static os_log_type_t.info.getter();
  v83 = os_log_type_enabled(v81, v82);
  v84 = *(v0 + 4968);
  v85 = *(v0 + 4888);
  v86 = *(v0 + 4784);
  v538 = v45;
  v536 = v46;
  if (v83)
  {
    v87 = swift_slowAlloc();
    v526 = swift_slowAlloc();
    *&v563 = v526;
    *v87 = 136446466;
    swift_beginAccess();
    outlined init with copy of DeterministicLanguageModelProtocol(v0 + 1344, v0 + 2824);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference0A8Sampling_pMd, &_s24TokenGenerationInference0A8Sampling_pMR);
    v88 = String.init<A>(describing:)();
    v90 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v89, &v563);

    *(v87 + 4) = v90;
    *(v87 + 12) = 2082;
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v91 = dispatch thunk of CustomStringConvertible.description.getter();
    v93 = v92;
    v84(v85, v86);
    v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v93, &v563);

    *(v87 + 14) = v94;
    _os_log_impl(&dword_220940000, v81, v82, "Using sampling %{public}s for request %{public}s", v87, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D90A10](v526, -1, -1);
    MEMORY[0x223D90A10](v87, -1, -1);
  }

  else
  {

    v84(v85, v86);
  }

  v527 = (v0 + 768);
  *(v0 + 768) = xmmword_220AED900;
  *(v0 + 784) = 0u;
  *(v0 + 800) = 0u;
  *(v0 + 816) = 0u;
  *(v0 + 825) = 0u;
  v95 = SamplingParameters.tokenHealing.getter();
  if (v95 != 2 && (v95 & 1) != 0)
  {
    (*(v0 + 4952))(*(v0 + 4880), *(v0 + 4920), *(v0 + 4784));
    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.default.getter();
    v98 = os_log_type_enabled(v96, v97);
    v99 = *(v0 + 4968);
    v100 = *(v0 + 4880);
    v101 = *(v0 + 4784);
    if (v98)
    {
      v102 = swift_slowAlloc();
      v103 = swift_slowAlloc();
      *&v563 = v103;
      *v102 = 136446210;
      _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v104 = dispatch thunk of CustomStringConvertible.description.getter();
      v106 = v105;
      v99(v100, v101);
      v107 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v106, &v563);

      *(v102 + 4) = v107;
      _os_log_impl(&dword_220940000, v96, v97, "Using token healing for request %{public}s", v102, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v103);
      MEMORY[0x223D90A10](v103, -1, -1);
      MEMORY[0x223D90A10](v102, -1, -1);
    }

    else
    {

      v99(v100, v101);
    }

    v500 = *(v0 + 500);
    v167 = *(v0 + 5128);
    v168 = *(v0 + 5064);
    v509 = *(v0 + 4632);
    v517 = *(v0 + 4648);
    v169 = *(v0 + 4528);
    v170 = *(v0 + 4288);
    v171 = (v517 + *(v509 + 68));
    v172 = *v171;
    v173 = v171[1];
    v174 = v171[2];
    v175 = v171[3];
    __swift_project_boxed_opaque_existential_1((*(v0 + 4304) + 56), *(*(v0 + 4304) + 80));
    v176 = off_2834512B0(v168);
    v178 = specialized static OnDeviceInferenceContextFactory.stopTokenIntValue(stopTokenOverride:stopToken:tokenizer:)(v176, v177, v172, v173, v174, v175);

    v179 = type metadata accessor for TokenizerRunnerPrefixMatchingTextProcessor();
    v180 = swift_allocObject();
    *(v180 + 32) = 1;
    *(v180 + 40) = 0;
    *(v180 + 48) = 513;
    *(v180 + 16) = v167;
    *(v180 + 24) = 0;
    *(v0 + 3048) = v179;
    *(v0 + 3056) = &protocol witness table for TokenizerRunnerPrefixMatchingTextProcessor;
    *(v0 + 3024) = v180;
    v181 = v169;
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v170 + v500, v169, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v182 = swift_allocObject();
    *(v182 + 16) = xmmword_220AE8A30;
    *(v182 + 32) = v178;
    v183 = type metadata accessor for TokenHealingDecoder(0);
    v184 = swift_allocObject();
    v185 = (v184 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_bufferedPrompt);
    v186 = MEMORY[0x277D84F90];
    *v185 = MEMORY[0x277D84F90];
    v185[1] = v186;
    v185[2] = v186;
    *(v184 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_tokensAreHealed) = 0;

    outlined init with copy of DeterministicLanguageModelProtocol(v0 + 3024, v184 + 16);
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v181, v184 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_overflowConstraints, &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    v523 = v184;
    *(v184 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_stopTokenIDs) = v182;
    v549 = v186;
    v550 = 0;
    v551 = 1;
    v187 = *(v517 + *(v509 + 44));
    if (v187 >= 1)
    {
      v501 = v183;
      v188 = *(v0 + 4648) + *(*(v0 + 4632) + 36);
      v189 = *(v188 + 8);
      v190 = *(v188 + 64);
      if (v189 == 2)
      {
        v191 = 1;
      }

      else
      {
        v191 = v190;
      }

      (*(v0 + 4952))(*(v0 + 4872), *(v0 + 4920), *(v0 + 4784));
      v192 = Logger.logObject.getter();
      v193 = static os_log_type_t.default.getter();
      v194 = os_log_type_enabled(v192, v193);
      v195 = *(v0 + 4968);
      v196 = *(v0 + 4872);
      v197 = *(v0 + 4784);
      if (v194)
      {
        v198 = swift_slowAlloc();
        v531 = swift_slowAlloc();
        *&v563 = v531;
        *v198 = 136446722;
        _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v518 = v193;
        v199 = v187;
        v200 = dispatch thunk of CustomStringConvertible.description.getter();
        v510 = v191;
        v202 = v201;
        v195(v196, v197);
        v203 = v200;
        v187 = v199;
        v204 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v203, v202, &v563);

        *(v198 + 4) = v204;
        *(v198 + 12) = 2050;
        *(v198 + 14) = v199;
        *(v198 + 22) = 2050;
        v205 = v510;
        *(v198 + 24) = v510;
        _os_log_impl(&dword_220940000, v192, v518, "Using speculative streaming for request %{public}s, gamma = %{public}ld, treeFactor = %{public}ld", v198, 0x20u);
        __swift_destroy_boxed_opaque_existential_1(v531);
        MEMORY[0x223D90A10](v531, -1, -1);
        MEMORY[0x223D90A10](v198, -1, -1);
      }

      else
      {

        v195(v196, v197);
        v205 = v191;
      }

      v275 = *(v0 + 5120);
      v276 = *(v0 + 5112);
      swift_beginAccess();
      closure #1 in TokenHealingDecoder.init(processor:overflowConstraints:stopTokenIDs:buildDecoder:)(v0 + 2344, &v549, (v0 + 3544));
      v277 = (*(v276 + 88))(v275, v276);

      v278 = specialized static SpeculativeStreamingLanguageModel.makeStreamTokenIDs(streamCount:vocabularyCount:tokenIDForText:)(v187, v277);

      outlined init with copy of DeterministicLanguageModelProtocol(v0 + 3544, v0 + 3184);
      type metadata accessor for SpeculativeStreamingLanguageModel();
      v279 = swift_allocObject();
      v280 = MEMORY[0x277D84F90];
      v279[9] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_24TokenGenerationInference15LogitCollection_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      v279[10] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(v280);
      v58 = outlined init with take of RandomNumberGenerator((v0 + 3184), (v279 + 2));
      v279[7] = v205;
      v279[8] = v278;
      v281 = v501;
      if (v205 < 1)
      {
        goto LABEL_144;
      }

      LOBYTE(v556) = 1;
      LOBYTE(v563) = 1;
      *(v0 + 848) = v187;
      *(v0 + 856) = 0;
      *(v0 + 864) = v205;
      *(v0 + 872) = 0;
      *(v0 + 880) = 1;
      *(v0 + 884) = 0;
      *(v0 + 888) = 1;
      *(v0 + 889) = 0;
      *(v0 + 892) = 0;
      *(v0 + 896) = 1;
      *(v0 + 904) = 0;
      *(v0 + 912) = 1;
      *(v0 + 920) = 0;
      swift_beginAccess();
      outlined init with copy of DeterministicLanguageModelProtocol(v0 + 1344, v0 + 2904);
      v282 = type metadata accessor for SpeculativeStreamingPerformanceLoggingDecoder();
      v283 = swift_allocObject();

      v285 = specialized SpeculativeStreamingPerformanceLoggingDecoder.init(languageModel:behavior:sampler:)(v284, (v0 + 848), (v0 + 2904), v283);
      *(v0 + 3088) = v282;
      *(v0 + 3096) = &protocol witness table for SpeculativeStreamingPerformanceLoggingDecoder;

      *(v0 + 3064) = v285;
      v286 = (v0 + 3544);
      goto LABEL_117;
    }

    v213 = v183;
    v214 = *(v0 + 5088);
    if (!*(v214 + 16))
    {
      v306 = type metadata accessor for BasicDecoder();
      swift_beginAccess();
      closure #1 in TokenHealingDecoder.init(processor:overflowConstraints:stopTokenIDs:buildDecoder:)(v0 + 2344, &v549, (v0 + 3664));
      swift_beginAccess();
      outlined init with copy of DeterministicLanguageModelProtocol(v0 + 1344, v0 + 3624);
      v307 = *(v0 + 3688);
      v308 = *(v0 + 3696);
      v309 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 3664, v307);
      v310 = *(v307 - 8);
      v311 = swift_task_alloc();
      (*(v310 + 16))(v311, v309, v307);
      v312 = specialized BasicDecoder.__allocating_init(languageModel:sampler:)(v311, (v0 + 3624), v306, v307, v308);
      __swift_destroy_boxed_opaque_existential_1((v0 + 3664));

      *(v0 + 3088) = v306;
      *(v0 + 3096) = &protocol witness table for BasicDecoder;
      *(v0 + 3064) = v312;
      v281 = v213;
LABEL_118:
      v163 = (v0 + 2984);
      outlined destroy of [Int](*(v0 + 4528), &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
      __swift_destroy_boxed_opaque_existential_1((v0 + 3024));
      outlined init with take of RandomNumberGenerator((v0 + 3064), v523 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_baseDecoder);
      *(v523 + OBJC_IVAR____TtC24TokenGenerationInference19TokenHealingDecoder_delayedLanguageModels) = v549;
      *(v0 + 3008) = v281;
      *(v0 + 3016) = &protocol witness table for TokenHealingDecoder;
      *(v0 + 2984) = v523;
      goto LABEL_119;
    }

    v215 = *(v0 + 4392);
    v216 = *(v0 + 4384);
    v217 = *(v0 + 4376);
    v218 = *(v214 + 48);
    *(v0 + 416) = *(v214 + 32);
    *(v0 + 432) = v218;
    v220 = *(v214 + 80);
    v219 = *(v214 + 96);
    v221 = *(v214 + 64);
    *(v0 + 496) = *(v214 + 112);
    *(v0 + 464) = v220;
    *(v0 + 480) = v219;
    *(v0 + 448) = v221;
    v222 = *(v0 + 416);
    v223 = (v0 + 424);
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 416, v0 + 328, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMd, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMR);
    SamplingParameters.speculationParameters.getter();
    v493 = v222;
    v502 = v213;
    if ((*(v215 + 48))(v217, 1, v216) == 1)
    {
      outlined destroy of [Int](*(v0 + 4376), &_s15TokenGeneration21SpeculationParametersVSgMd, &_s15TokenGeneration21SpeculationParametersVSgMR);
      v224 = *(v0 + 440);
      v552 = *v223;
      v553 = v224;
      v554 = *(v0 + 456);
      v555 = *(v0 + 472);
      v225 = *(v0 + 480);
      v226 = *(v0 + 488);
      v227 = *(v0 + 496);
    }

    else
    {
      (*(*(v0 + 4392) + 32))(*(v0 + 4408), *(v0 + 4376), *(v0 + 4384));
      v313 = Logger.logObject.getter();
      v314 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v313, v314))
      {
        v315 = swift_slowAlloc();
        *v315 = 0;
        _os_log_impl(&dword_220940000, v313, v314, "Overriding default speculation behavior from sampling parameters", v315, 2u);
        MEMORY[0x223D90A10](v315, -1, -1);
      }

      v316 = *(v0 + 4408);
      v317 = *(v0 + 4392);
      v318 = *(v0 + 4384);

      v319 = *(v0 + 472);
      v565 = *(v0 + 456);
      v566[0] = v319;
      *(v566 + 9) = *(v0 + 481);
      v320 = *(v0 + 440);
      v563 = *v223;
      v564 = v320;
      DraftingBehavior.updated(with:)(&v556);
      (*(v317 + 8))(v316, v318);
      v552 = v556;
      v553 = v557;
      v554 = v558;
      v225 = v560;
      v555 = v559;
      v226 = v561;
      v227 = v562;
    }

    v321 = *(v0 + 5072);
    v322 = *(v0 + 4952);
    v323 = *(v0 + 4920);
    v324 = *(v0 + 4864);
    v325 = *(v0 + 4784);
    swift_beginAccess();
    v326 = v553;
    *v527 = v552;
    *(v0 + 784) = v326;
    *(v0 + 800) = v554;
    *(v0 + 816) = v555;
    v520 = v225;
    *(v0 + 824) = v225;
    v486 = v226;
    *(v0 + 832) = v226;
    *(v0 + 840) = v227;
    *(v0 + 3288) = type metadata accessor for E5TransformerLanguageModel(0);
    *(v0 + 3296) = &protocol witness table for E5TransformerLanguageModel;
    *(v0 + 3264) = v493;
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 416, v0 + 240, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMd, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMR);
    addPromptLookup #1 (_:) in OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:)(v0 + 3264, v321, v323, v0 + 3224);
    __swift_destroy_boxed_opaque_existential_1((v0 + 3264));
    outlined init with copy of DeterministicLanguageModelProtocol(v0 + 3224, v0 + 3344);
    v327 = v529;
    v328 = swift_allocObject();

    v330 = specialized MaskedLanguageModel.init(_:_:)(v329, (v0 + 3344), v328);
    v322(v324, v323, v325);

    v331 = Logger.logObject.getter();
    v332 = static os_log_type_t.default.getter();

    v333 = os_log_type_enabled(v331, v332);
    v334 = *(v0 + 4968);
    v335 = *(v0 + 4864);
    v336 = *(v0 + 4784);
    v511 = v227;
    if (v333)
    {
      v337 = swift_slowAlloc();
      v495 = swift_slowAlloc();
      *&v563 = v495;
      *v337 = 136446466;
      *(v0 + 4280) = v330;

      v338 = String.init<A>(describing:)();
      v340 = v330;
      v341 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v338, v339, &v563);

      *(v337 + 4) = v341;
      *(v337 + 12) = 2082;
      _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v342 = dispatch thunk of CustomStringConvertible.description.getter();
      v344 = v343;
      v334(v335, v336);
      v345 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v342, v344, &v563);
      v330 = v340;

      *(v337 + 14) = v345;
      _os_log_impl(&dword_220940000, v331, v332, "Using draft language model %{public}s for request %{public}s", v337, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D90A10](v495, -1, -1);
      v346 = v337;
      v327 = v529;
      MEMORY[0x223D90A10](v346, -1, -1);
    }

    else
    {

      v334(v335, v336);
    }

    *(v0 + 3448) = v327;
    *(v0 + 3456) = &protocol witness table for MaskedLanguageModel;
    *(v0 + 3424) = v330;

    closure #1 in TokenHealingDecoder.init(processor:overflowConstraints:stopTokenIDs:buildDecoder:)(v0 + 3424, &v549, (v0 + 3384));
    __swift_destroy_boxed_opaque_existential_1((v0 + 3424));
    v347 = v520;
    if (v520 < 1)
    {
      outlined init with copy of DeterministicLanguageModelProtocol(v0 + 3384, v0 + 3464);
      v281 = v502;
      v359 = v486;
    }

    else
    {
      (*(v0 + 4952))(*(v0 + 4856), *(v0 + 4920), *(v0 + 4784));
      v348 = Logger.logObject.getter();
      v349 = static os_log_type_t.default.getter();
      v350 = os_log_type_enabled(v348, v349);
      v351 = *(v0 + 4968);
      v352 = *(v0 + 4856);
      v353 = *(v0 + 4784);
      if (v350)
      {
        v354 = swift_slowAlloc();
        v496 = swift_slowAlloc();
        *&v563 = v496;
        *v354 = 136446722;
        _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v355 = dispatch thunk of CustomStringConvertible.description.getter();
        v357 = v356;
        v351(v352, v353);
        v358 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v355, v357, &v563);
        v347 = v520;

        *(v354 + 4) = v358;
        *(v354 + 12) = 2050;
        *(v354 + 14) = v520;
        *(v354 + 22) = 2050;
        v359 = v486;
        *(v354 + 24) = v486;
        _os_log_impl(&dword_220940000, v348, v349, "Using speculative streaming for draft model for request %{public}s, gamma: %{public}ld, streamTreeFactor: %{public}ld", v354, 0x20u);
        __swift_destroy_boxed_opaque_existential_1(v496);
        MEMORY[0x223D90A10](v496, -1, -1);
        MEMORY[0x223D90A10](v354, -1, -1);
      }

      else
      {

        v351(v352, v353);
        v359 = v486;
      }

      v360 = (*(*(v0 + 5112) + 88))(*(v0 + 5120));

      v361 = specialized static SpeculativeStreamingLanguageModel.makeStreamTokenIDs(streamCount:vocabularyCount:tokenIDForText:)(v347, v360);

      outlined init with copy of DeterministicLanguageModelProtocol(v0 + 3384, v0 + 1144);
      v362 = type metadata accessor for SpeculativeStreamingLanguageModel();
      v363 = swift_allocObject();
      v364 = MEMORY[0x277D84F90];
      v363[9] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_24TokenGenerationInference15LogitCollection_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      v363[10] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(v364);
      outlined init with take of RandomNumberGenerator((v0 + 1144), (v363 + 2));
      v363[7] = v359;
      v363[8] = v361;
      *(v0 + 3488) = v362;
      *(v0 + 3496) = &protocol witness table for SpeculativeStreamingLanguageModel;
      *(v0 + 3464) = v363;
      v281 = v502;
    }

    swift_beginAccess();
    closure #1 in TokenHealingDecoder.init(processor:overflowConstraints:stopTokenIDs:buildDecoder:)(v0 + 2344, &v549, (v0 + 3504));
    SamplingParameters.priorInferenceOutput.getter();
    if (v365)
    {
      v366 = dispatch thunk of TokenizerRunner.tokenize(_:)();
      if (!v542)
      {
        LookupLanguageModelState<>.init(priorOutputTokens:)(v366, &v563);
        v367 = v563;
        v368 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference19LookupLanguageModelCyAA20PriorOutputNodeStateVGMd, &_s24TokenGenerationInference19LookupLanguageModelCyAA20PriorOutputNodeStateVGMR);
        v369 = swift_allocObject();
        *(v369 + 16) = v367;
        *(v369 + 32) = 2;
        *(v0 + 3608) = v368;
        *(v0 + 3616) = &protocol witness table for LookupLanguageModel<A>;

        *(v0 + 3584) = v369;
        goto LABEL_116;
      }
    }

    *(v0 + 3616) = 0;
    *(v0 + 3584) = 0u;
    *(v0 + 3600) = 0u;
LABEL_116:
    v370 = *(v0 + 4648);
    v371 = *(v0 + 4304);
    v563 = v552;
    v564 = v553;
    v565 = v554;
    *&v566[0] = v555;
    *(&v566[0] + 1) = v347;
    *&v566[1] = v359;
    BYTE8(v566[1]) = v511;
    swift_beginAccess();
    v372 = specialized getter of stopTokenID #1 in buildDecoder #1 (_:) in OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:)(&v550, v371, v370);
    DraftingBehavior.makeDecoder(draftModel:targetModel:outerDraftModel:sampler:stopTokenId:)(v0 + 3464, v0 + 3504, v0 + 3584, v0 + 1344, v372, (v0 + 1008));
    v533 = *(v0 + 1032);
    v373 = *(v0 + 1032);
    v374 = __swift_project_boxed_opaque_existential_1((v0 + 1008), v373);
    *(v0 + 3088) = v533;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 3064));
    (*(*(v373 - 8) + 16))(boxed_opaque_existential_1, v374, v373);

    outlined destroy of [Int](v0 + 416, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMd, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMR);
    __swift_destroy_boxed_opaque_existential_1((v0 + 3504));
    __swift_destroy_boxed_opaque_existential_1((v0 + 3384));
    __swift_destroy_boxed_opaque_existential_1((v0 + 3224));
    outlined destroy of [Int](v0 + 3584, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
    __swift_destroy_boxed_opaque_existential_1((v0 + 3464));
    v286 = (v0 + 1008);
LABEL_117:
    __swift_destroy_boxed_opaque_existential_1(v286);
    goto LABEL_118;
  }

  (*(v0 + 4952))(*(v0 + 4848), *(v0 + 4920), *(v0 + 4784));
  v108 = Logger.logObject.getter();
  v109 = static os_log_type_t.default.getter();
  v110 = os_log_type_enabled(v108, v109);
  v111 = *(v0 + 4968);
  v112 = *(v0 + 4848);
  v113 = *(v0 + 4784);
  if (v110)
  {
    v114 = swift_slowAlloc();
    v115 = swift_slowAlloc();
    *&v563 = v115;
    *v114 = 136446210;
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v116 = dispatch thunk of CustomStringConvertible.description.getter();
    v118 = v117;
    v111(v112, v113);
    v119 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v116, v118, &v563);

    *(v114 + 4) = v119;
    _os_log_impl(&dword_220940000, v108, v109, "Not using token healing for request %{public}s", v114, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v115);
    MEMORY[0x223D90A10](v115, -1, -1);
    MEMORY[0x223D90A10](v114, -1, -1);
  }

  else
  {

    v111(v112, v113);
  }

  v120 = *(v0 + 4648);
  v121 = *(v0 + 4632);
  v550 = 0;
  v551 = 1;
  v122 = *(v120 + *(v121 + 44));
  if (v122 < 1)
  {
    v140 = *(v0 + 5088);
    if (!*(v140 + 16))
    {
      v206 = type metadata accessor for BasicDecoder();
      swift_beginAccess();
      outlined init with copy of DeterministicLanguageModelProtocol(v0 + 2344, v0 + 2624);
      swift_beginAccess();
      outlined init with copy of DeterministicLanguageModelProtocol(v0 + 1344, v0 + 2744);
      v207 = *(v0 + 2648);
      v208 = *(v0 + 2656);
      v209 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 2624, v207);
      v210 = *(v207 - 8);
      v211 = swift_task_alloc();
      (*(v210 + 16))(v211, v209, v207);
      v212 = specialized BasicDecoder.__allocating_init(languageModel:sampler:)(v211, (v0 + 2744), v206, v207, v208);
      __swift_destroy_boxed_opaque_existential_1((v0 + 2624));

      *(v0 + 1528) = v206;
      *(v0 + 1536) = &protocol witness table for BasicDecoder;
      *(v0 + 1504) = v212;
      v163 = (v0 + 1504);
      goto LABEL_119;
    }

    v141 = *(v0 + 4392);
    v142 = *(v0 + 4384);
    v143 = *(v0 + 4368);
    v144 = *(v140 + 48);
    *(v0 + 680) = *(v140 + 32);
    *(v0 + 696) = v144;
    v146 = *(v140 + 80);
    v145 = *(v140 + 96);
    v147 = *(v140 + 64);
    *(v0 + 760) = *(v140 + 112);
    *(v0 + 728) = v146;
    *(v0 + 744) = v145;
    *(v0 + 712) = v147;
    v148 = *(v0 + 680);
    v149 = (v0 + 688);
    v508 = v0 + 680;
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 680, v0 + 592, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMd, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMR);
    SamplingParameters.speculationParameters.getter();
    v516 = v148;
    if ((*(v141 + 48))(v143, 1, v142) == 1)
    {
      outlined destroy of [Int](*(v0 + 4368), &_s15TokenGeneration21SpeculationParametersVSgMd, &_s15TokenGeneration21SpeculationParametersVSgMR);
      v545 = *v149;
      v546 = *(v0 + 704);
      v547 = *(v0 + 720);
      v548 = *(v0 + 736);
      v150 = *(v0 + 744);
      v151 = *(v0 + 752);
      v152 = *(v0 + 760);
    }

    else
    {
      (*(*(v0 + 4392) + 32))(*(v0 + 4400), *(v0 + 4368), *(v0 + 4384));
      v231 = Logger.logObject.getter();
      v232 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v231, v232))
      {
        v233 = swift_slowAlloc();
        *v233 = 0;
        _os_log_impl(&dword_220940000, v231, v232, "Overriding default speculation behavior from sampling parameters", v233, 2u);
        MEMORY[0x223D90A10](v233, -1, -1);
      }

      v234 = *(v0 + 4400);
      v235 = *(v0 + 4392);
      v236 = *(v0 + 4384);

      v237 = *(v0 + 736);
      v565 = *(v0 + 720);
      v566[0] = v237;
      *(v566 + 9) = *(v0 + 745);
      v238 = *(v0 + 704);
      v563 = *v149;
      v564 = v238;
      DraftingBehavior.updated(with:)(&v556);
      (*(v235 + 8))(v234, v236);
      v545 = v556;
      v546 = v557;
      v547 = v558;
      v150 = v560;
      v548 = v559;
      v151 = v561;
      v152 = v562;
    }

    v239 = *(v0 + 5072);
    v240 = *(v0 + 4952);
    v241 = *(v0 + 4920);
    v242 = *(v0 + 4832);
    v243 = *(v0 + 4784);
    swift_beginAccess();
    *v527 = v545;
    *(v0 + 784) = v546;
    *(v0 + 800) = v547;
    *(v0 + 816) = v548;
    v494 = v151;
    v503 = v150;
    *(v0 + 824) = v150;
    *(v0 + 832) = v151;
    v489 = v152;
    *(v0 + 840) = v152;
    *(v0 + 1728) = type metadata accessor for E5TransformerLanguageModel(0);
    *(v0 + 1736) = &protocol witness table for E5TransformerLanguageModel;
    *(v0 + 1704) = v516;
    outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v508, v0 + 504, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMd, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMR);
    addPromptLookup #1 (_:) in OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:)(v0 + 1704, v239, v241, v0 + 1664);
    __swift_destroy_boxed_opaque_existential_1((v0 + 1704));
    outlined init with copy of DeterministicLanguageModelProtocol(v0 + 1664, v0 + 1784);
    v244 = v529;
    v245 = swift_allocObject();

    v247 = specialized MaskedLanguageModel.init(_:_:)(v246, (v0 + 1784), v245);
    v240(v242, v241, v243);

    v248 = Logger.logObject.getter();
    v249 = static os_log_type_t.default.getter();

    v250 = os_log_type_enabled(v248, v249);
    v251 = *(v0 + 4968);
    v252 = *(v0 + 4832);
    v253 = *(v0 + 4784);
    v519 = v247;
    if (v250)
    {
      v254 = swift_slowAlloc();
      v487 = swift_slowAlloc();
      *&v563 = v487;
      *v254 = 136446466;
      *(v0 + 4248) = v247;

      v255 = String.init<A>(describing:)();
      v257 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v255, v256, &v563);

      *(v254 + 4) = v257;
      *(v254 + 12) = 2082;
      _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
      v258 = dispatch thunk of CustomStringConvertible.description.getter();
      v260 = v259;
      v251(v252, v253);
      v261 = v258;
      v247 = v519;
      v262 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v261, v260, &v563);
      v244 = v529;

      *(v254 + 14) = v262;
      _os_log_impl(&dword_220940000, v248, v249, "Using draft language model %{public}s for request %{public}s", v254, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x223D90A10](v487, -1, -1);
      MEMORY[0x223D90A10](v254, -1, -1);
    }

    else
    {

      v251(v252, v253);
    }

    *(v0 + 1848) = v244;
    *(v0 + 1856) = &protocol witness table for MaskedLanguageModel;
    *(v0 + 1824) = v247;
    v263 = v503;
    if (v503 < 1)
    {
      outlined init with copy of DeterministicLanguageModelProtocol(v0 + 1824, v0 + 1864);
    }

    else
    {
      (*(v0 + 4952))(*(v0 + 4824), *(v0 + 4920), *(v0 + 4784));

      v264 = Logger.logObject.getter();
      v265 = static os_log_type_t.default.getter();
      v266 = os_log_type_enabled(v264, v265);
      v267 = *(v0 + 4968);
      v268 = *(v0 + 4824);
      v269 = *(v0 + 4784);
      if (v266)
      {
        v270 = swift_slowAlloc();
        v532 = swift_slowAlloc();
        *&v563 = v532;
        *v270 = 136446722;
        _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
        v271 = dispatch thunk of CustomStringConvertible.description.getter();
        v273 = v272;
        v267(v268, v269);
        v274 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v271, v273, &v563);
        v263 = v503;

        *(v270 + 4) = v274;
        *(v270 + 12) = 2050;
        *(v270 + 14) = v503;
        *(v270 + 22) = 2050;
        v151 = v494;
        *(v270 + 24) = v494;
        _os_log_impl(&dword_220940000, v264, v265, "Using speculative streaming for draft model for request %{public}s, gamma: %{public}ld, streamTreeFactor: %{public}ld", v270, 0x20u);
        __swift_destroy_boxed_opaque_existential_1(v532);
        MEMORY[0x223D90A10](v532, -1, -1);
        MEMORY[0x223D90A10](v270, -1, -1);
      }

      else
      {

        v267(v268, v269);
        v151 = v494;
      }

      v287 = (*(*(v0 + 5112) + 88))(*(v0 + 5120));

      v288 = specialized static SpeculativeStreamingLanguageModel.makeStreamTokenIDs(streamCount:vocabularyCount:tokenIDForText:)(v263, v287);

      outlined init with copy of DeterministicLanguageModelProtocol(v0 + 1824, v0 + 2544);
      v289 = type metadata accessor for SpeculativeStreamingLanguageModel();
      v290 = swift_allocObject();
      v291 = MEMORY[0x277D84F90];
      v290[9] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_24TokenGenerationInference15LogitCollection_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
      v290[10] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(v291);
      outlined init with take of RandomNumberGenerator((v0 + 2544), (v290 + 2));
      v290[7] = v151;
      v290[8] = v288;
      *(v0 + 1888) = v289;
      *(v0 + 1896) = &protocol witness table for SpeculativeStreamingLanguageModel;
      *(v0 + 1864) = v290;
    }

    swift_beginAccess();
    outlined init with copy of DeterministicLanguageModelProtocol(v0 + 2344, v0 + 1904);
    SamplingParameters.priorInferenceOutput.getter();
    if (v292)
    {
      v293 = dispatch thunk of TokenizerRunner.tokenize(_:)();
      if (!v542)
      {
        LookupLanguageModelState<>.init(priorOutputTokens:)(v293, &v563);
        v296 = v563;
        v297 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference19LookupLanguageModelCyAA20PriorOutputNodeStateVGMd, &_s24TokenGenerationInference19LookupLanguageModelCyAA20PriorOutputNodeStateVGMR);
        v298 = swift_allocObject();
        *(v298 + 16) = v296;
        *(v298 + 32) = 2;
        *(v0 + 2008) = v297;
        *(v0 + 2016) = &protocol witness table for LookupLanguageModel<A>;

        *(v0 + 1984) = v298;
        goto LABEL_95;
      }
    }

    *(v0 + 2016) = 0;
    *(v0 + 1984) = 0u;
    *(v0 + 2000) = 0u;
LABEL_95:
    v299 = *(v0 + 4648);
    v300 = *(v0 + 4304);
    v563 = v545;
    v564 = v546;
    v565 = v547;
    *&v566[0] = v548;
    *(&v566[0] + 1) = v263;
    *&v566[1] = v151;
    BYTE8(v566[1]) = v489;
    swift_beginAccess();
    v301 = specialized getter of stopTokenID #1 in buildDecoder #1 (_:) in OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:)(&v550, v300, v299);
    DraftingBehavior.makeDecoder(draftModel:targetModel:outerDraftModel:sampler:stopTokenId:)(v0 + 1864, v0 + 1904, v0 + 1984, v0 + 1344, v301, (v0 + 1056));
    v302 = *(v0 + 1080);
    v303 = *(v0 + 1088);
    v304 = __swift_project_boxed_opaque_existential_1((v0 + 1056), v302);
    *(v0 + 1528) = v302;
    *(v0 + 1536) = v303;
    v163 = (v0 + 1504);
    v305 = __swift_allocate_boxed_opaque_existential_1((v0 + 1504));
    (*(*(v302 - 8) + 16))(v305, v304, v302);

    outlined destroy of [Int](v508, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMd, &_s24TokenGenerationInference26E5TransformerLanguageModelC05draftG0_AA16DraftingBehaviorV8behaviortMR);
    __swift_destroy_boxed_opaque_existential_1((v0 + 1904));
    __swift_destroy_boxed_opaque_existential_1((v0 + 1824));
    __swift_destroy_boxed_opaque_existential_1((v0 + 1664));
    outlined destroy of [Int](v0 + 1984, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
    __swift_destroy_boxed_opaque_existential_1((v0 + 1864));
    __swift_destroy_boxed_opaque_existential_1((v0 + 1056));
    goto LABEL_119;
  }

  v123 = v120 + *(v121 + 36);
  v124 = *(v123 + 8);
  v125 = *(v123 + 64);
  if (v124 == 2)
  {
    v126 = 1;
  }

  else
  {
    v126 = v125;
  }

  (*(v0 + 4952))(*(v0 + 4840), *(v0 + 4920), *(v0 + 4784));
  v127 = Logger.logObject.getter();
  v128 = static os_log_type_t.default.getter();
  v129 = os_log_type_enabled(v127, v128);
  v130 = *(v0 + 4968);
  v131 = *(v0 + 4840);
  v132 = *(v0 + 4784);
  if (v129)
  {
    v530 = v126;
    v133 = swift_slowAlloc();
    v515 = swift_slowAlloc();
    *&v563 = v515;
    *v133 = 136446722;
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v507 = v128;
    v134 = dispatch thunk of CustomStringConvertible.description.getter();
    v135 = v122;
    v137 = v136;
    v130(v131, v132);
    v138 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v134, v137, &v563);
    v122 = v135;

    *(v133 + 4) = v138;
    *(v133 + 12) = 2050;
    *(v133 + 14) = v135;
    *(v133 + 22) = 2050;
    *(v133 + 24) = v530;
    _os_log_impl(&dword_220940000, v127, v507, "Using speculative streaming for request %{public}s, gamma = %{public}ld, treeFactor = %{public}ld", v133, 0x20u);
    __swift_destroy_boxed_opaque_existential_1(v515);
    MEMORY[0x223D90A10](v515, -1, -1);
    v139 = v133;
    v126 = v530;
    MEMORY[0x223D90A10](v139, -1, -1);
  }

  else
  {

    v130(v131, v132);
  }

  v153 = *(v0 + 5120);
  v154 = *(v0 + 5112);
  swift_beginAccess();
  outlined init with copy of DeterministicLanguageModelProtocol(v0 + 2344, v0 + 2784);
  v155 = (*(v154 + 88))(v153, v154);

  v156 = specialized static SpeculativeStreamingLanguageModel.makeStreamTokenIDs(streamCount:vocabularyCount:tokenIDForText:)(v122, v155);

  outlined init with copy of DeterministicLanguageModelProtocol(v0 + 2784, v0 + 2864);
  type metadata accessor for SpeculativeStreamingLanguageModel();
  v157 = swift_allocObject();
  v158 = MEMORY[0x277D84F90];
  v157[9] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_24TokenGenerationInference15LogitCollection_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v157[10] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(v158);
  v58 = outlined init with take of RandomNumberGenerator((v0 + 2864), (v157 + 2));
  v157[7] = v126;
  v157[8] = v156;
  if (v126 < 1)
  {
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  LOBYTE(v556) = 1;
  LOBYTE(v563) = 1;
  *(v0 + 928) = v122;
  *(v0 + 936) = 0;
  *(v0 + 944) = v126;
  *(v0 + 952) = 0;
  *(v0 + 960) = 1;
  *(v0 + 964) = 0;
  *(v0 + 968) = 1;
  *(v0 + 969) = 0;
  *(v0 + 972) = 0;
  *(v0 + 976) = 1;
  *(v0 + 984) = 0;
  *(v0 + 992) = 1;
  *(v0 + 1000) = 0;
  swift_beginAccess();
  outlined init with copy of DeterministicLanguageModelProtocol(v0 + 1344, v0 + 2944);
  v159 = type metadata accessor for SpeculativeStreamingPerformanceLoggingDecoder();
  v160 = swift_allocObject();

  v162 = specialized SpeculativeStreamingPerformanceLoggingDecoder.init(languageModel:behavior:sampler:)(v161, (v0 + 928), (v0 + 2944), v160);
  *(v0 + 1528) = v159;
  *(v0 + 1536) = &protocol witness table for SpeculativeStreamingPerformanceLoggingDecoder;

  *(v0 + 1504) = v162;
  __swift_destroy_boxed_opaque_existential_1((v0 + 2784));
  v163 = (v0 + 1504);
LABEL_119:
  outlined init with take of RandomNumberGenerator(v163, v0 + 1464);
  v376 = *(v0 + 4952);
  v377 = *(v0 + 4920);
  v378 = *(v0 + 4816);
  v379 = *(v0 + 4784);
  outlined init with copy of DeterministicLanguageModelProtocol(v0 + 1464, v0 + 2104);
  v376(v378, v377, v379);
  v380 = Logger.logObject.getter();
  v381 = static os_log_type_t.info.getter();
  v382 = os_log_type_enabled(v380, v381);
  v383 = *(v0 + 4968);
  v384 = *(v0 + 4816);
  v385 = *(v0 + 4784);
  if (v382)
  {
    v386 = swift_slowAlloc();
    v534 = swift_slowAlloc();
    *&v563 = v534;
    *v386 = 136446466;
    outlined init with copy of DeterministicLanguageModelProtocol(v0 + 2104, v0 + 2504);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference15SamplingDecoder_pMd, &_s24TokenGenerationInference15SamplingDecoder_pMR);
    v387 = String.init<A>(describing:)();
    v389 = v388;
    __swift_destroy_boxed_opaque_existential_1((v0 + 2104));
    v390 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v387, v389, &v563);

    *(v386 + 4) = v390;
    *(v386 + 12) = 2082;
    _s20ModelManagerServices14InferenceErrorOACs0E0AAWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC95F0], MEMORY[0x277CC9628]);
    v391 = dispatch thunk of CustomStringConvertible.description.getter();
    v393 = v392;
    v383(v384, v385);
    v394 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v391, v393, &v563);

    *(v386 + 14) = v394;
    _os_log_impl(&dword_220940000, v380, v381, "Using decoder %{public}s for request %{public}s", v386, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223D90A10](v534, -1, -1);
    MEMORY[0x223D90A10](v386, -1, -1);
  }

  else
  {

    v383(v384, v385);
    __swift_destroy_boxed_opaque_existential_1((v0 + 2104));
  }

  v395 = *(*(v0 + 5056) + 16);

  v396 = 0;
  if (v395)
  {
    v397 = 32;
    while (1)
    {
      v398 = *(v0 + 4352);
      outlined init with copy of DeterministicLanguageModelProtocol(*(v0 + 5056) + v397, v0 + 2144);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pMR);
      v399 = type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer(0);
      v400 = swift_dynamicCast();
      v401 = *(v399 - 8);
      (*(v401 + 56))(v398, v400 ^ 1u, 1, v399);
      LODWORD(v398) = (*(v401 + 48))(v398, 1, v399);
      v58 = outlined destroy of [Int](*(v0 + 4352), &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMR);
      if (v398 != 1)
      {
        break;
      }

      ++v396;
      v397 += 40;
      if (v395 == v396)
      {
        v396 = v395;
        break;
      }
    }
  }

  v402 = *(v0 + 5056);
  v403 = *(v402 + 16);
  if (v396 != v403)
  {
    if (v396 < v403)
    {
      v406 = *(v0 + 4344);
      v407 = *(v0 + 4336);
      outlined init with copy of DeterministicLanguageModelProtocol(v402 + 40 * v396 + 32, v0 + 2184);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s24TokenGenerationInference08OnDeviceC11AssetObject_pMd, &_s24TokenGenerationInference08OnDeviceC11AssetObject_pMR);
      v405 = type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer(0);
      v408 = swift_dynamicCast();
      v409 = *(v405 - 8);
      v410 = *(v409 + 56);
      v410(v406, v408 ^ 1u, 1, v405);
      outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v406, v407, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMR);
      v58 = (*(v409 + 48))(v407, 1, v405);
      if (v58 != 1)
      {
        v411 = *(v0 + 4360);
        v412 = *(v0 + 4344);
        _s24TokenGenerationInference08OnDeviceC19AssetObjectE5RunnerVWObTm_0(*(v0 + 4336), v411, type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer);
        outlined destroy of [Int](v412, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMR);
        v410(v411, 0, 1, v405);
        goto LABEL_132;
      }

LABEL_145:
      __break(1u);
      return MEMORY[0x2822009F8](v58, v57, v59);
    }

    __break(1u);
    goto LABEL_143;
  }

  v404 = *(v0 + 4360);
  v405 = type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer(0);
  (*(*(v405 - 8) + 56))(v404, 1, 1, v405);
LABEL_132:
  v413 = *(v0 + 4616);
  v414 = *(v0 + 4600);
  v415 = *(v0 + 4360);
  v416 = *(v0 + 4328);

  v535 = *(v413 + *(v414 + 28));

  v417 = SamplingParameters.useHighQualityImageTokenization.getter();
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v415, v416, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMR);
  type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer(0);
  v418 = (*(*(v405 - 8) + 48))(v416, 1, v405);
  v419 = *(v0 + 4328);
  if (v418 == 1)
  {
    outlined destroy of [Int](v419, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMR);
    v420 = 0;
  }

  else
  {
    v421 = *(v405 + 32);
    v422 = (v419 + *(v405 + 28));
    v423 = *v422;
    v424 = v422[1];
    v524 = v417;
    v425 = v422[3];
    v485 = v422[2];
    v427 = v422[4];
    v426 = v422[5];
    v488 = v427;
    v490 = v426;
    v497 = *v422;
    v428 = v422[6];
    v512 = *(v0 + 4328);
    v521 = *(v419 + v421);
    v429 = type metadata accessor for OnDeviceImagePreprocessor();
    v430 = swift_allocObject();
    type metadata accessor for ImageTokenizer();
    v504 = *(v512 + 16);
    v430[2] = v423;
    v430[3] = v424;
    v430[4] = v485;
    v430[5] = v425;
    v430[6] = v427;
    v430[7] = v426;
    v430[8] = v428;
    *(v0 + 2488) = v429;
    *(v0 + 2496) = &protocol witness table for OnDeviceImagePreprocessor;
    *(v0 + 2464) = v430;
    v420 = swift_allocObject();
    v431 = __swift_mutable_project_boxed_opaque_existential_1(v0 + 2464, v429);
    v432 = *(v429 - 8);
    v433 = swift_task_alloc();
    (*(v432 + 16))(v433, v431, v429);
    v434 = *v433;
    *(v420 + 40) = v429;
    *(v420 + 48) = &protocol witness table for OnDeviceImagePreprocessor;
    *(v420 + 16) = v434;
    *(v420 + 56) = v497;
    *(v420 + 64) = v424;
    v417 = v524;
    *(v420 + 72) = v485;
    *(v420 + 80) = v425;
    *(v420 + 88) = v488;
    *(v420 + 96) = v490;
    *(v420 + 104) = v428;
    *(v420 + 112) = v504;
    *(v420 + 128) = v521;
    swift_unknownObjectRetain();

    __swift_destroy_boxed_opaque_existential_1((v0 + 2464));

    outlined destroy of InferenceRequest(v512, type metadata accessor for OnDeviceInferenceAssetObjectImageTokenizer);
  }

  v513 = *(v0 + 5168);
  v435 = *(v0 + 5144);
  v491 = *(v0 + 412);
  v498 = *(v0 + 588);
  v436 = *(v0 + 4648);
  v437 = *(v0 + 4632);
  v438 = *(v0 + 4616);
  v505 = *(v0 + 4480);
  v439 = *(v0 + 4464);

  v525 = specialized OnDeviceAttachmentTokenizer.__allocating_init(imageTokenIDGenerator:useHighQualityImageTokenization:imageTokenizer:)(v440, v417 & 1, v420);

  outlined copy of ClassifierMetadata?(v536, v538, v540);
  _sSq3mapyqd_0_Sgqd_0_xqd__YKXEqd__YKs5ErrorRd__Ri_d_0_r0_lF24TokenGenerationInference18ClassifierMetadataV_s5NeverOAD18ClassifyingDecoderVTg504_s24cd165Inference08OnDeviceC14ContextFactoryC06createcF07request13configuration9isOneShotAA0decF0CAA0C7RequestV_20ModelManagerServices0c8ProviderN13ConfigurationVSbtYaKFAA18ij5VAA18fG7VXEfU6_AD34DeterministicLanguageModelProtocol_p0cD4Core0C17IDToTextConverterCTf1ncn_n(v536, v538, v540, v0 + 2344, v435, v0 + 128);

  outlined init with copy of DeterministicLanguageModelProtocol(v0 + 1464, v0 + 2304);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v0 + 128, v0 + 16, &_s24TokenGenerationInference18ClassifyingDecoderVSgMd, &_s24TokenGenerationInference18ClassifyingDecoderVSgMR);
  swift_beginAccess();
  v441 = *(v0 + 816);
  v565 = *(v0 + 800);
  v566[0] = v441;
  *(v566 + 9) = *(v0 + 825);
  v442 = *(v0 + 784);
  v563 = *v527;
  v564 = v442;
  v443 = *(v438 + v491);
  v444 = *(v436 + v437[10]);
  v445 = *(v436 + v437[12]);
  v446 = (v436 + v437[17]);
  v447 = *v446;
  v448 = v446[1];
  v449 = v446[2];
  v450 = v446[3];
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v436 + v498, v439, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMR);
  LODWORD(v436) = v513(v439, 1, v505);
  v528 = v445;

  v499 = v443;

  v543 = v444;

  v514 = v448;
  v522 = v447;
  v506 = v449;
  v492 = v450;
  outlined copy of StopToken?(v447, v448, v449, v450);
  if (v436 == 1)
  {
    v451 = *(v0 + 5168);
    v452 = *(v0 + 4520);
    v453 = *(v0 + 4488);
    v454 = *(v0 + 4480);
    v455 = *(v0 + 4464);
    v456 = *(v0 + 4360);
    static PromptPreprocessingTemplateVersion.default.getter();

    outlined destroy of [Int](v0 + 128, &_s24TokenGenerationInference18ClassifyingDecoderVSgMd, &_s24TokenGenerationInference18ClassifyingDecoderVSgMR);
    outlined destroy of [Int](v456, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMR);
    __swift_destroy_boxed_opaque_existential_1((v0 + 1464));
    (*(v453 + 8))(v452, v454);
    outlined destroy of [Int](v0 + 1744, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
    outlined destroy of [Int](v0 + 2024, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
    if (v451(v455, 1, v454) != 1)
    {
      outlined destroy of [Int](*(v0 + 4464), &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMd, &_s19TokenGenerationCore34PromptPreprocessingTemplateVersionOSgMR);
    }
  }

  else
  {
    v457 = *(v0 + 4520);
    v458 = *(v0 + 4496);
    v459 = *(v0 + 4488);
    v460 = *(v0 + 4480);
    v461 = *(v0 + 4464);
    v462 = *(v0 + 4360);

    outlined destroy of [Int](v0 + 128, &_s24TokenGenerationInference18ClassifyingDecoderVSgMd, &_s24TokenGenerationInference18ClassifyingDecoderVSgMR);
    outlined destroy of [Int](v462, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMd, &_s24TokenGenerationInference08OnDeviceC25AssetObjectImageTokenizerVSgMR);
    __swift_destroy_boxed_opaque_existential_1((v0 + 1464));
    (*(v459 + 8))(v457, v460);
    outlined destroy of [Int](v0 + 1744, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
    outlined destroy of [Int](v0 + 2024, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
    (*(v459 + 32))(v458, v461, v460);
  }

  v463 = *(v0 + 5144);
  v464 = *(v0 + 5136);
  v484 = *(v0 + 5056);
  v465 = *(v0 + 4968);
  v466 = *(v0 + 4920);
  v467 = *(v0 + 4784);
  v483 = *(v0 + 4648);
  v481 = *(v0 + 4616);
  v468 = *(v0 + 4496);
  v469 = *(v0 + 4488);
  v482 = *(v0 + 4480);
  v470 = *(v0 + 4320);
  outlined init with copy of (String, AppAssetGarbageCollector.Manifest.Entry)(v481 + *(*(v0 + 4600) + 44), v470, &_s19TokenGenerationCore06GuidedB17VocabularyManagerVSgMd, &_s19TokenGenerationCore06GuidedB17VocabularyManagerVSgMR);
  *(v0 + 2448) = v464;
  *(v0 + 2456) = MEMORY[0x277D71E08];
  *(v0 + 2424) = v463;
  v465(v466, v467);
  type metadata accessor for OnDeviceInferenceContext(0);
  v471 = swift_allocObject();
  v472 = v471 + OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext____lazy_storage___maximumContextLength;
  *v472 = 0;
  *(v472 + 8) = 1;
  *(v471 + OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext____lazy_storage___assets) = 0;
  *(v471 + OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext____lazy_storage___modelVersion) = xmmword_220AE5250;
  outlined init with take of RandomNumberGenerator((v0 + 2304), v471 + 16);
  v473 = *(v0 + 48);
  *(v471 + 104) = *(v0 + 64);
  v474 = *(v0 + 96);
  *(v471 + 120) = *(v0 + 80);
  *(v471 + 136) = v474;
  *(v471 + 152) = *(v0 + 112);
  v475 = *(v0 + 32);
  *(v471 + 56) = *(v0 + 16);
  *(v471 + 72) = v475;
  *(v471 + 88) = v473;
  v476 = v564;
  *(v471 + 168) = v563;
  v477 = v565;
  v478 = v566[0];
  *(v471 + 225) = *(v566 + 9);
  *(v471 + 216) = v478;
  *(v471 + 200) = v477;
  *(v471 + 184) = v476;
  *(v471 + 248) = v499;
  *(v471 + 304) = v535;
  outlined init with take of RandomNumberGenerator((v0 + 2424), v471 + 256);
  *(v471 + 296) = v484;
  *(v471 + 312) = v543;
  *(v471 + 320) = v528;
  *(v471 + 328) = v536;
  *(v471 + 336) = v538;
  *(v471 + 344) = v540;
  *(v471 + 352) = v522;
  *(v471 + 360) = v514;
  *(v471 + 368) = v506;
  *(v471 + 376) = v492;
  *(v471 + 384) = v525;
  (*(v469 + 32))(v471 + OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext_promptPreprocessingTemplateVersion, v468, v482);
  outlined init with take of Asset?(v470, v471 + OBJC_IVAR____TtC24TokenGenerationInference24OnDeviceInferenceContext_guidedGenerationVocabularyManager, &_s19TokenGenerationCore06GuidedB17VocabularyManagerVSgMd, &_s19TokenGenerationCore06GuidedB17VocabularyManagerVSgMR);
  outlined destroy of InferenceRequest(v481, type metadata accessor for OnDeviceInferenceAssetObjectTokenizer);
  __swift_destroy_boxed_opaque_existential_1((v0 + 1344));
  __swift_destroy_boxed_opaque_existential_1((v0 + 2344));
  outlined destroy of InferenceRequest(v483, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);

  v479 = *(v0 + 8);

  return v479(v471);
}

{
  OnDeviceInferenceAssetRepository.releaseAssetObjects(assetObjects:)(v0[652]);

  return MEMORY[0x2822009F8](OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:), 0, 0);
}

{
  v1 = v0[621];
  v2 = v0[615];
  v3 = v0[598];
  v4 = v0[581];
  v5 = v0[577];
  v6 = v0[570];
  v7 = v0[569];
  v8 = v0[568];

  (*(v7 + 8))(v6, v8);
  outlined destroy of [Int]((v0 + 253), &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMd, &_s24TokenGenerationInference34DeterministicLanguageModelProtocol_pSgMR);
  v1(v2, v3);
  outlined destroy of InferenceRequest(v5, type metadata accessor for OnDeviceInferenceAssetObjectTokenizer);
  __swift_destroy_boxed_opaque_existential_1(v0 + 293);
  outlined destroy of InferenceRequest(v4, type metadata accessor for OnDeviceInferenceAssetObjectE5Runner);

  v9 = v0[645];
  v0[652] = v0[632];
  v0[651] = v9;
  v10 = __swift_project_boxed_opaque_existential_1((v0[538] + 16), *(v0[538] + 40));
  v0[653] = v10;
  v11 = *v10;

  return MEMORY[0x2822009F8](OnDeviceInferenceContextFactory.createInferenceContext(request:configuration:isOneShot:), v11, 0);
}