void *specialized _NativeDictionary.copy()(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
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
        v20 = v19 << 6;
        v19 *= 8;
        v21 = v20 - v19;
        v22 = (*(v4 + 48) + v21);
        v24 = *v22;
        v23 = v22[1];
        v25 = v22[2];
        v26 = v22[3];
        v27 = v22[4];
        v28 = *(v22 + 40);
        v29 = v22[6];
        v30 = *(*(v4 + 56) + v19);
        v31 = *(v6 + 48) + v21;
        *v31 = v24;
        *(v31 + 8) = v23;
        *(v31 + 16) = v25;
        *(v31 + 24) = v26;
        *(v31 + 32) = v27;
        *(v31 + 40) = v28;
        *(v31 + 48) = v29;
        *(*(v6 + 56) + v19) = v30;
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

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
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
        v20 = 16 * v19;
        v21 = (*(v4 + 48) + 16 * v19);
        v23 = *v21;
        v22 = v21[1];
        v19 *= 24;
        v24 = (*(v4 + 56) + v19);
        v25 = *v24;
        v26 = v24[1];
        v27 = v24[2];
        v28 = (*(v6 + 48) + v20);
        *v28 = v23;
        v28[1] = v22;
        v29 = (*(v6 + 56) + v19);
        *v29 = v25;
        v29[1] = v26;
        v29[2] = v27;
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

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
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
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 64);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 56) + 8 * v16) = v19)
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      v19 = *(*(v4 + 56) + 8 * v16);
      *(*(v6 + 48) + 8 * v16) = *(*(v4 + 48) + 8 * v16);
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 64 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
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

{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
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
        v20 = 80 * v19;
        v21 = *(v4 + 48) + 80 * v19;
        v22 = *v21;
        v23 = *(v21 + 8);
        v24 = *(v21 + 16);
        v25 = *(v21 + 24);
        v26 = *(v21 + 32);
        v27 = *(v21 + 40);
        v28 = *(v21 + 48);
        v29 = *(v21 + 56);
        v30 = *(v21 + 64);
        LODWORD(v37) = *(v21 + 65);
        *(&v37 + 3) = *(v21 + 68);
        v31 = *(v21 + 72);
        v19 *= 16;
        v32 = (*(v4 + 56) + v19);
        v33 = *v32;
        v34 = v32[1];
        v35 = *(v6 + 48) + v20;
        *v35 = v22;
        *(v35 + 8) = v23;
        *(v35 + 16) = v24;
        *(v35 + 24) = v25;
        *(v35 + 32) = v26;
        *(v35 + 40) = v27;
        *(v35 + 48) = v28;
        *(v35 + 56) = v29;
        *(v35 + 64) = v30;
        *(v35 + 68) = *(&v37 + 3);
        *(v35 + 65) = v37;
        *(v35 + 72) = v31;
        v36 = (*(v6 + 56) + v19);
        *v36 = v33;
        v36[1] = v34;
        outlined copy of SGDataTypeStorage(v22, v23, v24, v25, v26, v27, v28, v29, v30);
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

id specialized _NativeDictionary.copy()()
{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySS11ShaderGraph8SGOutputCGMd, &_ss18_DictionaryStorageCySS11ShaderGraph8SGOutputCGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySS11ShaderGraph7SGInputCGMd, &_ss18_DictionaryStorageCySS11ShaderGraph7SGInputCGMR);
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSo29MTLFunctionStitchingInputNodeCGMd, &_ss18_DictionaryStorageCySSSo29MTLFunctionStitchingInputNodeCGMR);
}

id specialized _NativeDictionary.copy()(uint64_t *a1, uint64_t *a2)
{
  v3 = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
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
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;

        result = v22;
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

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  MEMORY[0x266772770](a2);
  MEMORY[0x266772770](a3);
  v8 = Hasher._finalize()();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v14 = *v12;
      v13 = v12[1];
      if (v14 == a2 && v13 == a3)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_8;
      }
    }

    result = 0;
  }

  else
  {
LABEL_8:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    result = 1;
  }

  *a1 = a2;
  a1[1] = a3;
  return result;
}

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

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, uint64_t *a2)
{
  return specialized Set._Variant.insert(_:)(a1, a2, &_ss11_SetStorageCy11ShaderGraph5InputVGMd, &_ss11_SetStorageCy11ShaderGraph5InputVGMR, &type metadata for Input);
}

{
  return specialized Set._Variant.insert(_:)(a1, a2, &_ss11_SetStorageCy11ShaderGraph6OutputVGMd, &_ss11_SetStorageCy11ShaderGraph6OutputVGMR, &type metadata for Output);
}

uint64_t specialized Set._Variant.insert(_:)(_BYTE *a1, Swift::Int a2)
{
  v4 = *v2;
  Hasher.init(_seed:)();
  DebugConfig.Group.rawValue.getter(a2);
  String.hash(into:)();

  v5 = Hasher._finalize()();
  v32 = v4;
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  v31 = v4 + 56;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v30 = ~v6;
    while (1)
    {
      v8 = *(*(v32 + 48) + v7);
      if (v8 > 4)
      {
        if (*(*(v32 + 48) + v7) <= 6u)
        {
          if (v8 == 5)
          {
            v13 = 0x6E69686374697473;
            v14 = 0xEE00687061724767;
          }

          else
          {
            v13 = 0x446C616D696E696DLL;
            v14 = 0xEA0000000000746FLL;
          }
        }

        else if (v8 == 7)
        {
          v14 = 0xE800000000000000;
          v13 = 0x6870617247697061;
        }

        else if (v8 == 8)
        {
          v13 = 0xD000000000000011;
          v14 = 0x8000000265F2BCB0;
        }

        else
        {
          v13 = 0xD00000000000001ALL;
          v14 = 0x8000000265F2BCD0;
        }
      }

      else
      {
        if (v8 == 3)
        {
          v9 = 7630692;
        }

        else
        {
          v9 = 0x62694C6C6174656DLL;
        }

        if (v8 == 3)
        {
          v10 = 0xE300000000000000;
        }

        else
        {
          v10 = 0xEC00000079726172;
        }

        if (v8 == 2)
        {
          v9 = 0x65766968637261;
          v10 = 0xE700000000000000;
        }

        v11 = *(*(v32 + 48) + v7) ? 0x7972616D6D7573 : 1701736302;
        v12 = *(*(v32 + 48) + v7) ? 0xE700000000000000 : 0xE400000000000000;
        v13 = *(*(v32 + 48) + v7) <= 1u ? v11 : v9;
        v14 = *(*(v32 + 48) + v7) <= 1u ? v12 : v10;
      }

      v15 = 0xD00000000000001ALL;
      if (a2 == 8)
      {
        v15 = 0xD000000000000011;
      }

      v16 = 0x8000000265F2BCD0;
      if (a2 == 8)
      {
        v16 = 0x8000000265F2BCB0;
      }

      if (a2 == 7)
      {
        v15 = 0x6870617247697061;
        v16 = 0xE800000000000000;
      }

      v17 = 0x6E69686374697473;
      if (a2 != 5)
      {
        v17 = 0x446C616D696E696DLL;
      }

      v18 = 0xEE00687061724767;
      if (a2 != 5)
      {
        v18 = 0xEA0000000000746FLL;
      }

      if (a2 <= 6u)
      {
        v15 = v17;
        v16 = v18;
      }

      if (a2 == 3)
      {
        v19 = 7630692;
      }

      else
      {
        v19 = 0x62694C6C6174656DLL;
      }

      if (a2 == 3)
      {
        v20 = 0xE300000000000000;
      }

      else
      {
        v20 = 0xEC00000079726172;
      }

      if (a2 == 2)
      {
        v19 = 0x65766968637261;
        v20 = 0xE700000000000000;
      }

      if (a2)
      {
        v21 = 0x7972616D6D7573;
      }

      else
      {
        v21 = 1701736302;
      }

      if (a2)
      {
        v22 = 0xE700000000000000;
      }

      else
      {
        v22 = 0xE400000000000000;
      }

      if (a2 <= 1u)
      {
        v19 = v21;
        v20 = v22;
      }

      v23 = a2 <= 4u ? v19 : v15;
      v24 = a2 <= 4u ? v20 : v16;
      if (v13 == v23 && v14 == v24)
      {
        break;
      }

      v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v25)
      {
        goto LABEL_74;
      }

      v7 = (v7 + 1) & v30;
      if (((*(v31 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_72;
      }
    }

LABEL_74:
    result = 0;
    LOBYTE(a2) = *(*(v32 + 48) + v7);
  }

  else
  {
LABEL_72:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v33 = *v28;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v7, isUniquelyReferenced_nonNull_native);
    *v28 = v33;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2)
{
  return specialized Set._Variant.insert(_:)(a1, a2, &_ss11_SetStorageCy11ShaderGraph0cD4NodeV2IDVGMd, &_ss11_SetStorageCy11ShaderGraph0cD4NodeV2IDVGMR, &type metadata for ShaderGraphNode.ID);
}

{
  return specialized Set._Variant.insert(_:)(a1, a2, &_ss11_SetStorageCy11ShaderGraph14FunctionNodeIDVGMd, &_ss11_SetStorageCy11ShaderGraph14FunctionNodeIDVGMR, &type metadata for FunctionNodeID);
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, uint64_t *a3, uint64_t *a4, unint64_t a5)
{
  v11 = *v5;
  Hasher.init(_seed:)();
  MEMORY[0x266772770](a2);
  v12 = Hasher._finalize()();
  v13 = -1 << *(v11 + 32);
  v14 = v12 & ~v13;
  if ((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14))
  {
    v15 = ~v13;
    while (*(*(v11 + 48) + 8 * v14) != a2)
    {
      v14 = (v14 + 1) & v15;
      if (((*(v11 + 56 + ((v14 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v14) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v5;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v14, isUniquelyReferenced_nonNull_native, a3, a4, a5);
    *v5 = v18;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, uint64_t a2)
{
  v5 = *v2;
  v6 = MEMORY[0x266772750](*(*v2 + 40));
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (*(*(v5 + 48) + 8 * v8) != a2)
    {
      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    specialized _NativeSet.insertNew(_:at:isUnique:)(a2, v8, isUniquelyReferenced_nonNull_native);
    *v2 = v12;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t specialized Set._Variant.insert(_:)(void *a1, void *a2)
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

    v8 = __CocoaSet.member(for:)();

    if (v8)
    {

      v21[9] = v8;
      type metadata accessor for MaterialXTarget();
      swift_dynamicCast();
      result = 0;
      *a1 = v21[0];
      return result;
    }

    result = __CocoaSet.count.getter();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v18 = _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC11ShaderGraph15MaterialXTargetC_Tt1g5(v7, result + 1);
    v21[0] = v18;
    v19 = *(v18 + 16);
    if (*(v18 + 24) <= v19)
    {
      specialized _NativeSet.resize(capacity:)(v19 + 1);
      v18 = v21[0];
    }

    specialized _NativeSet._unsafeInsertNew(_:)(v20, v18);

    *v3 = v18;
    goto LABEL_16;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  specialized Optional<A>.hash(into:)(v21, a2[4]);
  v10 = Hasher._finalize()();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v21[0] = *v2;

    specialized _NativeSet.insertNew(_:at:isUnique:)(v17, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v21[0];
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  while (1)
  {

    v15 = specialized static MaterialXTarget.== infix(_:_:)(v14, a2);

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t specialized Set._Variant.insert(_:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v7 = *v5;
  Hasher.init(_seed:)();
  v8 = *a2;
  MEMORY[0x266772770](*a2);
  v45 = a2[1];
  (*(*v45 + 120))(v48);
  v42 = a2[2];
  v43 = a2[3];
  String.hash(into:)();
  v9 = a2[4];
  v40 = *(a2 + 40);
  if (v40 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v9);
  }

  v38 = a2;
  v41 = a2[6];
  MEMORY[0x266772770]();
  v10 = Hasher._finalize()();
  v11 = -1 << *(v7 + 32);
  v12 = v10 & ~v11;
  if ((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    do
    {
      v14 = *(v7 + 48) + 56 * v12;
      if (*v14 != v8)
      {
        goto LABEL_7;
      }

      v15 = *(v14 + 16);
      v16 = *(v14 + 24);
      v44 = *(v14 + 32);
      v46 = *(v14 + 40);
      v47 = *(v14 + 48);
      v17 = *(**(v14 + 8) + 128);

      if ((v17(v45) & 1) == 0)
      {

        goto LABEL_7;
      }

      if (v15 == v42 && v16 == v43)
      {

        if (v46)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v19 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v19 & 1) == 0)
        {
          goto LABEL_7;
        }

        if (v46)
        {
LABEL_16:
          v20 = v40;
          if (v47 != v41)
          {
            v20 = 0;
          }

          if (v20)
          {
            goto LABEL_28;
          }

          goto LABEL_7;
        }
      }

      v21 = v40 ^ 1;
      if (v44 != v9)
      {
        v21 = 0;
      }

      if (v21 == 1 && v47 == v41)
      {
LABEL_28:

        v23 = *(v7 + 48) + 56 * v12;
        v25 = *v23;
        v24 = *(v23 + 8);
        v26 = *(v23 + 16);
        v27 = *(v23 + 24);
        v28 = *(v23 + 32);
        v29 = *(v23 + 40);
        v30 = *(v23 + 48);
        *a1 = v25;
        *(a1 + 8) = v24;
        *(a1 + 16) = v26;
        *(a1 + 24) = v27;
        *(a1 + 32) = v28;
        *(a1 + 40) = v29;
        *(a1 + 48) = v30;

        return 0;
      }

LABEL_7:
      v12 = (v12 + 1) & v13;
    }

    while (((*(v7 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v48[0] = *v37;

  specialized _NativeSet.insertNew(_:at:isUnique:)(v38, v12, isUniquelyReferenced_nonNull_native, a3, a4, a5);
  *v37 = v48[0];
  v33 = *(v38 + 1);
  *a1 = *v38;
  *(a1 + 16) = v33;
  *(a1 + 32) = *(v38 + 2);
  *(a1 + 48) = v38[6];
  return 1;
}

Swift::Int _ss10_NativeSetV_8capacityAByxGs07__CocoaB0Vn_SitcfC11ShaderGraph15MaterialXTargetC_Tt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11ShaderGraph15MaterialXTargetCGMd, &_ss11_SetStorageCy11ShaderGraph15MaterialXTargetCGMR);
    v2 = static _SetStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaSet.makeIterator()();
    v3 = __CocoaSet.Iterator.next()();
    if (v3)
    {
      v4 = v3;
      type metadata accessor for MaterialXTarget();
      v5 = v4;
      do
      {
        v18[0] = v5;
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          specialized _NativeSet.resize(capacity:)(v13 + 1);
        }

        v6 = v18[9];
        v2 = v19;
        Hasher.init(_seed:)();
        String.hash(into:)();
        specialized Optional<A>.hash(into:)(v18, *(v6 + 32));
        result = Hasher._finalize()();
        v8 = v2 + 56;
        v9 = -1 << *(v2 + 32);
        v10 = result & ~v9;
        v11 = v10 >> 6;
        if (((-1 << v10) & ~*(v2 + 56 + 8 * (v10 >> 6))) != 0)
        {
          v12 = __clz(__rbit64((-1 << v10) & ~*(v2 + 56 + 8 * (v10 >> 6)))) | v10 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v9) >> 6;
          do
          {
            if (++v11 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v11 == v15;
            if (v11 == v15)
            {
              v11 = 0;
            }

            v14 |= v16;
            v17 = *(v8 + 8 * v11);
          }

          while (v17 == -1);
          v12 = __clz(__rbit64(~v17)) + (v11 << 6);
        }

        *(v8 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
        *(*(v2 + 48) + 8 * v12) = v6;
        ++*(v2 + 16);
        v5 = __CocoaSet.Iterator.next()();
      }

      while (v5);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84FA0];
  }

  return v2;
}

Swift::Int specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11ShaderGraph0D5IndexVGMd, &_ss11_SetStorageCy11ShaderGraph0D5IndexVGMR);
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
      MEMORY[0x266772770](v19);
      MEMORY[0x266772770](v20);
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

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11ShaderGraph11DebugConfigO5GroupOGMd, &_ss11_SetStorageCy11ShaderGraph11DebugConfigO5GroupOGMR);
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
      v17 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v20 = *(*(v3 + 48) + (v17 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v13 = -1 << *(v5 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v13) >> 6;
        while (++v15 != v22 || (v21 & 1) == 0)
        {
          v23 = v15 == v22;
          if (v15 == v22)
          {
            v15 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v15);
          if (v24 != -1)
          {
            v16 = __clz(__rbit64(~v24)) + (v15 << 6);
            goto LABEL_8;
          }
        }

LABEL_31:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      *(*(v5 + 48) + v16) = v20;
      ++*(v5 + 16);
    }

    v18 = v6;
    while (1)
    {
      v6 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_31;
      }

      if (v6 >= v11)
      {
        break;
      }

      v19 = v7[v6];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v10 = (v19 - 1) & v19;
        goto LABEL_16;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
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

{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11ShaderGraph15MaterialXTargetCGMd, &_ss11_SetStorageCy11ShaderGraph15MaterialXTargetCGMR);
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
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();
      specialized Optional<A>.hash(into:)(v26, *(v17 + 32));
      result = Hasher._finalize()();
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

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
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

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
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
      Hasher.init(_seed:)();
      MEMORY[0x266772770](v19);
      result = Hasher._finalize()();
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

    v4 = v3;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v6 = static _SetStorage.resize(original:capacity:move:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v35 = v4;
    v8 = 0;
    v36 = (v5 + 56);
    v37 = v5;
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
    v13 = v6 + 56;
    v38 = v6;
    while (v11)
    {
      v16 = __clz(__rbit64(v11));
      v39 = (v11 - 1) & v11;
LABEL_15:
      v20 = *(v5 + 48) + 56 * (v16 | (v8 << 6));
      v22 = *v20;
      v21 = *(v20 + 8);
      v23 = *(v20 + 16);
      v24 = *(v20 + 24);
      v25 = *(v20 + 32);
      v26 = *(v20 + 40);
      v40 = *(v20 + 48);
      Hasher.init(_seed:)();
      MEMORY[0x266772770](v22);
      (*(*v21 + 120))(v41);
      String.hash(into:)();
      if (v26 == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x266772770](v25);
      }

      MEMORY[0x266772770](v40);
      result = Hasher._finalize()();
      v7 = v38;
      v27 = -1 << *(v38 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v13 + 8 * (v28 >> 6))) == 0)
      {
        v30 = 0;
        v31 = (63 - v27) >> 6;
        while (++v29 != v31 || (v30 & 1) == 0)
        {
          v32 = v29 == v31;
          if (v29 == v31)
          {
            v29 = 0;
          }

          v30 |= v32;
          v33 = *(v13 + 8 * v29);
          if (v33 != -1)
          {
            v14 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v14 = __clz(__rbit64((-1 << v28) & ~*(v13 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v38 + 48) + 56 * v14;
      v11 = v39;
      *v15 = v22;
      *(v15 + 8) = v21;
      *(v15 + 16) = v23;
      *(v15 + 24) = v24;
      *(v15 + 32) = v25;
      *(v15 + 40) = v26;
      *(v15 + 48) = v40;
      ++*(v38 + 16);
      v5 = v37;
    }

    v17 = v8;
    result = v36;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v8 >= v12)
      {
        break;
      }

      v19 = v36[v8];
      ++v17;
      if (v19)
      {
        v16 = __clz(__rbit64(v19));
        v39 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    v34 = 1 << *(v5 + 32);
    if (v34 >= 64)
    {
      bzero(v36, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v36 = -1 << v34;
    }

    v4 = v35;
    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySiGMd, &_ss11_SetStorageCySiGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
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
      result = MEMORY[0x266772750](*(v5 + 40), v17);
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

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
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

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t specialized _NativeSet._unsafeInsertNew(_:)(void *a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  specialized Optional<A>.hash(into:)(v5, a1[4]);
  Hasher._finalize()();
  result = _HashTable.nextHole(atOrAfter:)();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
  v6 = result;
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_15;
  }

  if (a4)
  {
    specialized _NativeSet.resize(capacity:)(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      v9 = a3;
      result = specialized _NativeSet.copy()();
      a3 = v9;
      goto LABEL_15;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v7 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  MEMORY[0x266772770](v6);
  MEMORY[0x266772770](a2);
  result = Hasher._finalize()();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      v15 = *v13;
      v14 = v13[1];
      if (v15 == v6 && v14 == a2)
      {
        goto LABEL_18;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_15:
  v17 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v18 = (*(v17 + 48) + 16 * a3);
  *v18 = v6;
  v18[1] = a2;
  v19 = *(v17 + 16);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (!v20)
  {
    *(v17 + 16) = v21;
    return result;
  }

  __break(1u);
LABEL_18:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

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

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3)
{
  v35 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_79;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_79;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v5 + 1);
  }

  v7 = *v3;
  Hasher.init(_seed:)();
  DebugConfig.Group.rawValue.getter(v35);
  String.hash(into:)();

  result = Hasher._finalize()();
  v8 = -1 << *(v7 + 32);
  a2 = result & ~v8;
  if ((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v34 = ~v8;
    v9 = 0xEC00000079726172;
    do
    {
      v10 = *(*(v7 + 48) + a2);
      if (v10 > 4)
      {
        if (*(*(v7 + 48) + a2) <= 6u)
        {
          if (v10 == 5)
          {
            v15 = 0x6E69686374697473;
            v16 = 0xEE00687061724767;
          }

          else
          {
            v15 = 0x446C616D696E696DLL;
            v16 = 0xEA0000000000746FLL;
          }
        }

        else if (v10 == 7)
        {
          v16 = 0xE800000000000000;
          v15 = 0x6870617247697061;
        }

        else if (v10 == 8)
        {
          v15 = 0xD000000000000011;
          v16 = 0x8000000265F2BCB0;
        }

        else
        {
          v15 = 0xD00000000000001ALL;
          v16 = 0x8000000265F2BCD0;
        }
      }

      else
      {
        if (v10 == 3)
        {
          v11 = 7630692;
        }

        else
        {
          v11 = 0x62694C6C6174656DLL;
        }

        if (v10 == 3)
        {
          v12 = 0xE300000000000000;
        }

        else
        {
          v12 = v9;
        }

        if (v10 == 2)
        {
          v11 = 0x65766968637261;
          v12 = 0xE700000000000000;
        }

        v13 = *(*(v7 + 48) + a2) ? 0x7972616D6D7573 : 1701736302;
        v14 = *(*(v7 + 48) + a2) ? 0xE700000000000000 : 0xE400000000000000;
        v15 = *(*(v7 + 48) + a2) <= 1u ? v13 : v11;
        v16 = *(*(v7 + 48) + a2) <= 1u ? v14 : v12;
      }

      v17 = 0xD00000000000001ALL;
      if (v35 == 8)
      {
        v17 = 0xD000000000000011;
      }

      v18 = 0x8000000265F2BCD0;
      if (v35 == 8)
      {
        v18 = 0x8000000265F2BCB0;
      }

      if (v35 == 7)
      {
        v17 = 0x6870617247697061;
        v18 = 0xE800000000000000;
      }

      v19 = 0x6E69686374697473;
      if (v35 != 5)
      {
        v19 = 0x446C616D696E696DLL;
      }

      v20 = 0xEE00687061724767;
      if (v35 != 5)
      {
        v20 = 0xEA0000000000746FLL;
      }

      if (v35 <= 6u)
      {
        v17 = v19;
        v18 = v20;
      }

      if (v35 == 3)
      {
        v21 = 7630692;
      }

      else
      {
        v21 = 0x62694C6C6174656DLL;
      }

      v22 = v9;
      if (v35 == 3)
      {
        v23 = 0xE300000000000000;
      }

      else
      {
        v23 = v9;
      }

      if (v35 == 2)
      {
        v21 = 0x65766968637261;
        v23 = 0xE700000000000000;
      }

      if (v35)
      {
        v24 = 0x7972616D6D7573;
      }

      else
      {
        v24 = 1701736302;
      }

      if (v35)
      {
        v25 = 0xE700000000000000;
      }

      else
      {
        v25 = 0xE400000000000000;
      }

      if (v35 <= 1u)
      {
        v21 = v24;
        v23 = v25;
      }

      v26 = v35 <= 4u ? v21 : v17;
      v27 = v35 <= 4u ? v23 : v18;
      if (v15 == v26 && v16 == v27)
      {
        goto LABEL_82;
      }

      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v28)
      {
        goto LABEL_83;
      }

      a2 = (a2 + 1) & v34;
      v9 = v22;
    }

    while (((*(v7 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_79:
  v29 = *v33;
  *(*v33 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v29 + 48) + a2) = v35;
  v30 = *(v29 + 16);
  v31 = __OFADD__(v30, 1);
  v32 = v30 + 1;
  if (!v31)
  {
    *(v29 + 16) = v32;
    return result;
  }

  __break(1u);
LABEL_82:

LABEL_83:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

{
  v5 = result;
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v6 + 1);
  }

  else
  {
    if (v7 > v6)
    {
      result = specialized _NativeSet.copy()();
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v6 + 1);
  }

  v8 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  specialized Optional<A>.hash(into:)(v17, *(v5 + 32));
  result = Hasher._finalize()();
  v9 = -1 << *(v8 + 32);
  a2 = result & ~v9;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v10 = ~v9;
    type metadata accessor for MaterialXTarget();
    do
    {

      v12 = specialized static MaterialXTarget.== infix(_:_:)(v11, v5);

      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v10;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = v5;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t a6)
{
  v7 = result;
  v8 = *(*v6 + 16);
  v9 = *(*v6 + 24);
  if (v9 > v8 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v8 + 1, a4, a5);
  }

  else
  {
    if (v9 > v8)
    {
      v10 = a2;
      result = specialized _NativeSet.copy()(a4, a5);
      a2 = v10;
      goto LABEL_12;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1, a4, a5);
  }

  v11 = *v6;
  Hasher.init(_seed:)();
  MEMORY[0x266772770](v7);
  result = Hasher._finalize()();
  v12 = -1 << *(v11 + 32);
  a2 = result & ~v12;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v13 = ~v12;
    while (*(*(v11 + 48) + 8 * a2) != v7)
    {
      a2 = (a2 + 1) & v13;
      if (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v14 = *v6;
  *(*v6 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = v7;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
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
  result = MEMORY[0x266772750](*(*v3 + 40), v4);
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

Swift::Int specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, uint64_t a6)
{
  v8 = result;
  v9 = *(*v6 + 16);
  v10 = *(*v6 + 24);
  v35 = result;
  if (v10 > v9 && (a3 & 1) != 0)
  {
    goto LABEL_36;
  }

  if (a3)
  {
    specialized _NativeSet.resize(capacity:)(v9 + 1, a4, a5);
  }

  else
  {
    if (v10 > v9)
    {
      result = specialized _NativeSet.copy()(a4, a5);
      goto LABEL_36;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v9 + 1, a4, a5);
  }

  v11 = *v6;
  Hasher.init(_seed:)();
  v12 = *v8;
  MEMORY[0x266772770](*v8);
  v38 = *(v8 + 8);
  (*(*v38 + 120))(v42);
  v36 = *(v8 + 24);
  v37 = *(v8 + 16);
  String.hash(into:)();
  v13 = *(v8 + 32);
  v32 = *(v8 + 40);
  if (v32 == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    MEMORY[0x266772770](v13);
  }

  v33 = *(v8 + 48);
  MEMORY[0x266772770]();
  result = Hasher._finalize()();
  v14 = -1 << *(v11 + 32);
  a2 = result & ~v14;
  if ((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v31 = v13;
    v15 = ~v14;
    do
    {
      v16 = *(v11 + 48) + 56 * a2;
      if (*v16 != v12)
      {
        goto LABEL_14;
      }

      v17 = *(v16 + 16);
      v18 = *(v16 + 24);
      v39 = *(v16 + 32);
      v40 = *(v16 + 40);
      v41 = *(v16 + 48);
      v19 = *(**(v16 + 8) + 128);

      if ((v19(v38) & 1) == 0)
      {

        goto LABEL_14;
      }

      if (v17 == v37 && v18 == v36)
      {

        if (v40)
        {
          goto LABEL_23;
        }
      }

      else
      {
        v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v21 & 1) == 0)
        {
          goto LABEL_14;
        }

        if (v40)
        {
LABEL_23:
          v22 = v32;
          if (v41 != v33)
          {
            v22 = 0;
          }

          if (v22)
          {
            goto LABEL_35;
          }

          goto LABEL_14;
        }
      }

      v23 = v32 ^ 1;
      if (v39 != v31)
      {
        v23 = 0;
      }

      if (v23 == 1 && v41 == v33)
      {
LABEL_35:
        result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        break;
      }

LABEL_14:
      a2 = (a2 + 1) & v15;
    }

    while (((*(v11 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_36:
  v25 = *v34;
  *(*v34 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v26 = *(v25 + 48) + 56 * a2;
  v27 = *(v35 + 16);
  *v26 = *v35;
  *(v26 + 16) = v27;
  *(v26 + 32) = *(v35 + 32);
  *(v26 + 48) = *(v35 + 48);
  v28 = *(v25 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(v25 + 16) = v30;
  }

  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11ShaderGraph0D5IndexVGMd, &_ss11_SetStorageCy11ShaderGraph0D5IndexVGMR);
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11ShaderGraph11DebugConfigO5GroupOGMd, &_ss11_SetStorageCy11ShaderGraph11DebugConfigO5GroupOGMR);
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
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
  return specialized _NativeSet.copy()(&_ss11_SetStorageCy11ShaderGraph14FunctionNodeIDVGMd, &_ss11_SetStorageCy11ShaderGraph14FunctionNodeIDVGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySiGMd, &_ss11_SetStorageCySiGMR);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11ShaderGraph15MaterialXTargetCGMd, &_ss11_SetStorageCy11ShaderGraph15MaterialXTargetCGMR);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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

void *specialized _NativeSet.copy()(uint64_t *a1, uint64_t *a2)
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
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v4 + 56);
    for (i = (v11 + 63) >> 6; v13; *(*(v6 + 48) + 8 * v16) = *(*(v4 + 48) + 8 * v16))
    {
      v15 = __clz(__rbit64(v13));
      v13 &= v13 - 1;
      v16 = v15 | (v10 << 6);
LABEL_17:
      ;
    }

    v17 = v10;
    while (1)
    {
      v10 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v10 >= i)
      {
        goto LABEL_19;
      }

      v18 = *(v4 + 56 + 8 * v10);
      ++v17;
      if (v18)
      {
        v13 = (v18 - 1) & v18;
        v16 = __clz(__rbit64(v18)) | (v10 << 6);
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
        v19 = 56 * (v16 | (v10 << 6));
        v20 = *(v4 + 48) + v19;
        v22 = *v20;
        v21 = *(v20 + 8);
        v23 = *(v20 + 16);
        v24 = *(v20 + 24);
        v25 = *(v20 + 32);
        v26 = *(v20 + 40);
        v27 = *(v20 + 48);
        v28 = *(v6 + 48) + v19;
        *v28 = v22;
        *(v28 + 8) = v21;
        *(v28 + 16) = v23;
        *(v28 + 24) = v24;
        *(v28 + 32) = v25;
        *(v28 + 40) = v26;
        *(v28 + 48) = v27;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11ShaderGraph0D5IndexVGMd, &_ss11_SetStorageCy11ShaderGraph0D5IndexVGMR);
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
      MEMORY[0x266772770](v18);
      MEMORY[0x266772770](v19);
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11ShaderGraph11DebugConfigO5GroupOGMd, &_ss11_SetStorageCy11ShaderGraph11DebugConfigO5GroupOGMR);
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
      v16 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_17:
      v19 = *(*(v3 + 48) + (v16 | (v6 << 6)));
      Hasher.init(_seed:)();
      String.hash(into:)();

      result = Hasher._finalize()();
      v12 = -1 << *(v5 + 32);
      v13 = result & ~v12;
      v14 = v13 >> 6;
      if (((-1 << v13) & ~*(v11 + 8 * (v13 >> 6))) == 0)
      {
        v20 = 0;
        v21 = (63 - v12) >> 6;
        while (++v14 != v21 || (v20 & 1) == 0)
        {
          v22 = v14 == v21;
          if (v14 == v21)
          {
            v14 = 0;
          }

          v20 |= v22;
          v23 = *(v11 + 8 * v14);
          if (v23 != -1)
          {
            v15 = __clz(__rbit64(~v23)) + (v14 << 6);
            goto LABEL_9;
          }
        }

        goto LABEL_29;
      }

      v15 = __clz(__rbit64((-1 << v13) & ~*(v11 + 8 * (v13 >> 6)))) | v13 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
      *(v11 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v5 + 48) + v15) = v19;
      ++*(v5 + 16);
    }

    v17 = v6;
    while (1)
    {
      v6 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_27;
      }

      v18 = *(v3 + 56 + 8 * v6);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v9 = (v18 - 1) & v18;
        goto LABEL_17;
      }
    }

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {

LABEL_27:
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy11ShaderGraph15MaterialXTargetCGMd, &_ss11_SetStorageCy11ShaderGraph15MaterialXTargetCGMR);
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

      String.hash(into:)();
      specialized Optional<A>.hash(into:)(v24, *(v16 + 32));
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

Swift::Int specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
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
      Hasher.init(_seed:)();
      MEMORY[0x266772770](v18);
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

{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v35 = v4;
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
    v36 = (v10 + 63) >> 6;
    v37 = v5;
    v13 = result + 56;
    v38 = result;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v40 = (v12 - 1) & v12;
LABEL_15:
      v19 = *(v5 + 48) + 56 * (v16 | (v8 << 6));
      v21 = *v19;
      v20 = *(v19 + 8);
      v23 = *(v19 + 16);
      v22 = *(v19 + 24);
      v24 = *(v19 + 40);
      v41 = *(v19 + 32);
      v42 = *(v19 + 48);
      Hasher.init(_seed:)();
      v39 = v21;
      MEMORY[0x266772770](v21);
      v25 = *(*v20 + 120);

      v25(v43);
      v26 = v23;
      String.hash(into:)();
      if (v24 == 1)
      {
        Hasher._combine(_:)(0);
        v27 = v41;
      }

      else
      {
        Hasher._combine(_:)(1u);
        v27 = v41;
        MEMORY[0x266772770](v41);
      }

      MEMORY[0x266772770](v42);
      result = Hasher._finalize()();
      v7 = v38;
      v28 = -1 << *(v38 + 32);
      v29 = result & ~v28;
      v30 = v29 >> 6;
      if (((-1 << v29) & ~*(v13 + 8 * (v29 >> 6))) == 0)
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
          v34 = *(v13 + 8 * v30);
          if (v34 != -1)
          {
            v14 = __clz(__rbit64(~v34)) + (v30 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_31;
      }

      v14 = __clz(__rbit64((-1 << v29) & ~*(v13 + 8 * (v29 >> 6)))) | v29 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v13 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      v15 = *(v38 + 48) + 56 * v14;
      v12 = v40;
      *v15 = v39;
      *(v15 + 8) = v20;
      *(v15 + 16) = v26;
      *(v15 + 24) = v22;
      *(v15 + 32) = v27;
      *(v15 + 40) = v24;
      *(v15 + 48) = v42;
      ++*(v38 + 16);
      v5 = v37;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v8 >= v36)
      {

        v4 = v35;
        goto LABEL_29;
      }

      v18 = *(v9 + 8 * v8);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v40 = (v18 - 1) & v18;
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
    *v4 = v7;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySiGMd, &_ss11_SetStorageCySiGMR);
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
      result = MEMORY[0x266772750](*(v5 + 40), v16);
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

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, char a2, void *a3)
{
  v47 = *(a1 + 16);
  if (!v47)
  {
    goto LABEL_24;
  }

  v5 = *(a1 + 80);
  v43 = *(a1 + 64);
  v45 = *(a1 + 48);
  v6 = *(a1 + 32);
  v7 = *(a1 + 40);

  if (!v7)
  {
    goto LABEL_24;
  }

  v8 = *a3;
  v10 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v7);
  v11 = v8[2];
  v12 = (v9 & 1) == 0;
  v13 = v11 + v12;
  if (__OFADD__(v11, v12))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v14 = v9;
  if (v8[3] >= v13)
  {
    if (a2)
    {
      if ((v9 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      if ((v14 & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_10;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a2 & 1);
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v7);
  if ((v14 & 1) == (v16 & 1))
  {
    v10 = v15;
    if ((v14 & 1) == 0)
    {
LABEL_13:
      v19 = *a3;
      *(*a3 + 8 * (v10 >> 6) + 64) |= 1 << v10;
      v20 = (v19[6] + 16 * v10);
      *v20 = v6;
      v20[1] = v7;
      v21 = v19[7] + 40 * v10;
      *v21 = v45;
      *(v21 + 16) = v43;
      *(v21 + 32) = v5;
      v22 = v19[2];
      v23 = __OFADD__(v22, 1);
      v24 = v22 + 1;
      if (v23)
      {
LABEL_27:
        __break(1u);
        goto LABEL_28;
      }

      v19[2] = v24;
      if (v47 != 1)
      {
        v25 = a1 + 88;
        v26 = 1;
        while (v26 < *(a1 + 16))
        {
          v27 = *(v25 + 48);
          v44 = *(v25 + 32);
          v46 = *(v25 + 16);
          v29 = *v25;
          v28 = *(v25 + 8);

          if (!v28)
          {
            goto LABEL_24;
          }

          v30 = *a3;
          v31 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v28);
          v33 = v30[2];
          v34 = (v32 & 1) == 0;
          v23 = __OFADD__(v33, v34);
          v35 = v33 + v34;
          if (v23)
          {
            goto LABEL_26;
          }

          v36 = v32;
          if (v30[3] < v35)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v35, 1);
            v31 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v28);
            if ((v36 & 1) != (v37 & 1))
            {
              goto LABEL_28;
            }
          }

          if (v36)
          {
            goto LABEL_10;
          }

          v38 = *a3;
          *(*a3 + 8 * (v31 >> 6) + 64) |= 1 << v31;
          v39 = (v38[6] + 16 * v31);
          *v39 = v29;
          v39[1] = v28;
          v40 = v38[7] + 40 * v31;
          *v40 = v46;
          *(v40 + 16) = v44;
          *(v40 + 32) = v27;
          v41 = v38[2];
          v23 = __OFADD__(v41, 1);
          v42 = v41 + 1;
          if (v23)
          {
            goto LABEL_27;
          }

          ++v26;
          v38[2] = v42;
          v25 += 56;
          if (v47 == v26)
          {
            goto LABEL_24;
          }
        }

        __break(1u);
        goto LABEL_26;
      }

LABEL_24:

      return;
    }

LABEL_10:
    v17 = swift_allocError();
    swift_willThrow();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_29;
  }

LABEL_28:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_29:
  _StringGuts.grow(_:)(30);
  MEMORY[0x266771550](0xD00000000000001BLL, 0x8000000265F2E0E0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x266771550](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  v45 = *(a1 + 16);
  if (!v45)
  {
    goto LABEL_23;
  }

  v5 = *(a1 + 32);
  v49 = *(a1 + 56);
  v46 = *(a1 + 40);
  v6 = *(a1 + 72);
  v7 = *a3;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = v10 + v11;
  if (__OFADD__(v10, v11))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v13 = v8;
  v14 = v9;
  v15 = v7[3];

  if (v15 >= v12)
  {
    if (a2)
    {
      v18 = v49;
      if ((v14 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      v18 = v49;
      if ((v14 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_9;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v12, a2 & 1);
  v16 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
  if ((v14 & 1) == (v17 & 1))
  {
    v13 = v16;
    v18 = v49;
    if ((v14 & 1) == 0)
    {
LABEL_12:
      v21 = *a3;
      *(*a3 + 8 * (v13 >> 6) + 64) |= 1 << v13;
      *(v21[6] + 8 * v13) = v5;
      v22 = v21[7] + 40 * v13;
      *(v22 + 16) = v18;
      *v22 = v46;
      *(v22 + 32) = v6;
      v23 = v21[2];
      v24 = __OFADD__(v23, 1);
      v25 = v23 + 1;
      if (v24)
      {
LABEL_26:
        __break(1u);
        goto LABEL_27;
      }

      v21[2] = v25;
      if (v45 != 1)
      {
        v26 = a1 + 80;
        v27 = 1;
        while (v27 < *(a1 + 16))
        {
          v28 = *v26;
          v50 = *(v26 + 24);
          v47 = *(v26 + 8);
          v29 = *(v26 + 40);
          v30 = *a3;
          v31 = specialized __RawDictionaryStorage.find<A>(_:)(*v26);
          v33 = v30[2];
          v34 = (v32 & 1) == 0;
          v35 = v33 + v34;
          if (__OFADD__(v33, v34))
          {
            goto LABEL_25;
          }

          v36 = v31;
          v37 = v32;
          v38 = v30[3];

          if (v38 < v35)
          {
            specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v35, 1);
            v39 = specialized __RawDictionaryStorage.find<A>(_:)(v28);
            if ((v37 & 1) != (v40 & 1))
            {
              goto LABEL_27;
            }

            v36 = v39;
          }

          if (v37)
          {
            goto LABEL_9;
          }

          v41 = *a3;
          *(*a3 + 8 * (v36 >> 6) + 64) |= 1 << v36;
          *(v41[6] + 8 * v36) = v28;
          v42 = v41[7] + 40 * v36;
          *(v42 + 16) = v50;
          *v42 = v47;
          *(v42 + 32) = v29;
          v43 = v41[2];
          v24 = __OFADD__(v43, 1);
          v44 = v43 + 1;
          if (v24)
          {
            goto LABEL_26;
          }

          ++v27;
          v41[2] = v44;
          v26 += 48;
          if (v45 == v27)
          {
            goto LABEL_23;
          }
        }

        __break(1u);
        goto LABEL_25;
      }

LABEL_23:

      return;
    }

LABEL_9:
    v19 = swift_allocError();
    swift_willThrow();
    v20 = v19;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      return;
    }

    goto LABEL_28;
  }

LABEL_27:
  KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
LABEL_28:
  _StringGuts.grow(_:)(30);
  MEMORY[0x266771550](0xD00000000000001BLL, 0x8000000265F2E0E0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x266771550](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  v49 = a1;
  v30 = *(a1 + 16);
  if (v30)
  {
    v5 = 0;
    v6 = 32;
    while (1)
    {
      if (v5 >= *(v49 + 16))
      {
        __break(1u);
LABEL_18:
        __break(1u);
LABEL_19:
        __break(1u);
LABEL_20:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        goto LABEL_21;
      }

      v7 = *(v49 + v6 + 80);
      v40 = *(v49 + v6 + 64);
      v41 = v7;
      v8 = *(v49 + v6 + 48);
      v38 = *(v49 + v6 + 32);
      v39 = v8;
      v9 = *(v49 + v6 + 16);
      v36 = *(v49 + v6);
      v37 = v9;
      v10 = v41;
      v11 = v40;
      v33 = v38;
      v34 = v39;
      v31 = v36;
      v32 = v9;
      outlined init with copy of (Key, String)(&v36, v35);
      if (!*(&v11 + 1))
      {
        goto LABEL_14;
      }

      v42 = v31;
      v43 = v32;
      v44 = v33;
      v45 = v34;
      v46 = v11;
      v36 = v31;
      v37 = v32;
      v38 = v33;
      v39 = v34;
      v40 = v11;
      v12 = *a3;
      v13 = specialized __RawDictionaryStorage.find<A>(_:)();
      v15 = v12[2];
      v16 = (v14 & 1) == 0;
      v17 = __OFADD__(v15, v16);
      v18 = v15 + v16;
      if (v17)
      {
        goto LABEL_18;
      }

      v19 = v14;
      if (v12[3] >= v18)
      {
        if ((a2 & 1) == 0)
        {
          v27 = v13;
          specialized _NativeDictionary.copy()();
          v13 = v27;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a2 & 1);
        v13 = specialized __RawDictionaryStorage.find<A>(_:)();
        if ((v19 & 1) != (v20 & 1))
        {
          goto LABEL_20;
        }
      }

      v47[2] = v44;
      v47[3] = v45;
      v48 = v46;
      v47[0] = v42;
      v47[1] = v43;
      if (v19)
      {
        break;
      }

      v21 = *a3;
      *(*a3 + 8 * (v13 >> 6) + 64) |= 1 << v13;
      v22 = (v21[6] + 80 * v13);
      v23 = v45;
      v22[2] = v44;
      v22[3] = v23;
      v22[4] = v46;
      v24 = v43;
      *v22 = v42;
      v22[1] = v24;
      *(v21[7] + 16 * v13) = v10;
      v25 = v21[2];
      v17 = __OFADD__(v25, 1);
      v26 = v25 + 1;
      if (v17)
      {
        goto LABEL_19;
      }

      ++v5;
      v21[2] = v26;
      v6 += 96;
      a2 = 1;
      if (v30 == v5)
      {
        goto LABEL_14;
      }
    }

    v28 = swift_allocError();
    swift_willThrow();
    v29 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      outlined destroy of SGDataTypeStorage(v47);

      return;
    }

LABEL_21:
    v35[0] = 0;
    v35[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(30);
    MEMORY[0x266771550](0xD00000000000001BLL, 0x8000000265F2E0E0);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x266771550](39, 0xE100000000000000);
    _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  else
  {
LABEL_14:
  }
}

{
  v40 = a1;
  v32 = *(a1 + 16);
  if (!v32)
  {
LABEL_18:

    return;
  }

  v4 = 0;
  v5 = 32;
  while (1)
  {
    if (v4 >= *(v40 + 16))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_24;
    }

    *&v39[25] = *(v40 + v5 + 57);
    v6 = *(v40 + v5 + 48);
    *v39 = *(v40 + v5 + 32);
    *&v39[16] = v6;
    v7 = *(v40 + v5 + 16);
    v37 = *(v40 + v5);
    v38 = v7;
    v8 = v39[40];
    v10 = *&v39[24];
    v9 = *&v39[32];
    v11 = *&v39[16];
    v34 = v7;
    v35 = *v39;
    v12 = v37;
    outlined init with copy of [Input](&v37, &v36, &_sSS_11ShaderGraph11GeomPropDefVtMd, &_sSS_11ShaderGraph11GeomPropDefVtMR);
    if (!*(&v12 + 1))
    {
      goto LABEL_18;
    }

    v36 = v12;
    v37 = v34;
    v38 = v35;
    *v39 = v11;
    *&v39[8] = v10;
    *&v39[16] = v9;
    v39[24] = v8;
    v13 = *a3;
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(v12, *(&v12 + 1));
    v16 = v13[2];
    v17 = (v14 & 1) == 0;
    v18 = v16 + v17;
    if (__OFADD__(v16, v17))
    {
      goto LABEL_21;
    }

    v19 = v14;
    if (v13[3] < v18)
    {
      break;
    }

    if (a2)
    {
      if (v14)
      {
        goto LABEL_16;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      if (v19)
      {
        goto LABEL_16;
      }
    }

LABEL_12:
    v22 = *a3;
    *(*a3 + 8 * (v15 >> 6) + 64) |= 1 << v15;
    *(v22[6] + 16 * v15) = v12;
    v23 = (v22[7] + (v15 << 6));
    v24 = v37;
    v25 = v38;
    v26 = *v39;
    *(v23 + 41) = *&v39[9];
    v23[1] = v25;
    v23[2] = v26;
    *v23 = v24;
    v27 = v22[2];
    v28 = __OFADD__(v27, 1);
    v29 = v27 + 1;
    if (v28)
    {
      goto LABEL_22;
    }

    ++v4;
    v22[2] = v29;
    v5 += 80;
    a2 = 1;
    if (v32 == v4)
    {
      goto LABEL_18;
    }
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a2 & 1);
  v20 = specialized __RawDictionaryStorage.find<A>(_:)(v12, *(&v12 + 1));
  if ((v19 & 1) != (v21 & 1))
  {
    goto LABEL_23;
  }

  v15 = v20;
  if ((v19 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_16:
  v30 = swift_allocError();
  swift_willThrow();
  v31 = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {

    outlined destroy of GeomPropDef(&v37);

    return;
  }

LABEL_24:
  _StringGuts.grow(_:)(30);
  MEMORY[0x266771550](0xD00000000000001BLL, 0x8000000265F2E0E0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x266771550](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  v77 = a3;
  v4 = 0;
  v5 = *(a1 + 16);
  v43 = a1 + 32;
  if (v5)
  {
    goto LABEL_3;
  }

LABEL_2:
  _sSS_11ShaderGraph7NodeDefVtSgWOi0_(&v55);
  v74 = v63;
  v75 = v64;
  v76 = v65;
  v70 = v59;
  v71 = v60;
  v72 = v61;
  v73 = v62;
  v66 = v55;
  v67 = v56;
  v4 = v5;
  v68 = v57;
  v69 = v58;
  while (1)
  {
    v63 = v74;
    v64 = v75;
    v65 = v76;
    v59 = v70;
    v60 = v71;
    v61 = v72;
    v62 = v73;
    v55 = v66;
    v56 = v67;
    v57 = v68;
    v58 = v69;
    if (getEnumTag for IOAttachment(&v55) == 1)
    {

      return;
    }

    v18 = v5;
    v19 = v66;
    v51 = v73;
    v52 = v74;
    v53 = v75;
    v54 = v76;
    v47 = v69;
    v48 = v70;
    v49 = v71;
    v50 = v72;
    v45 = v67;
    v46 = v68;
    v20 = *v77;
    v22 = specialized __RawDictionaryStorage.find<A>(_:)(v66, *(&v66 + 1));
    v23 = v20[2];
    v24 = (v21 & 1) == 0;
    v25 = v23 + v24;
    if (__OFADD__(v23, v24))
    {
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
LABEL_24:
      __break(1u);
LABEL_25:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_26;
    }

    v26 = v21;
    if (v20[3] < v25)
    {
      break;
    }

    if (a2)
    {
      if (v21)
      {
        goto LABEL_18;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      if (v26)
      {
        goto LABEL_18;
      }
    }

LABEL_14:
    v29 = *v77;
    v29[(v22 >> 6) + 8] |= 1 << v22;
    *(v29[6] + 16 * v22) = v19;
    v30 = v29[7] + 152 * v22;
    v31 = v46;
    *v30 = v45;
    *(v30 + 16) = v31;
    v32 = v47;
    v33 = v48;
    v34 = v50;
    *(v30 + 64) = v49;
    *(v30 + 80) = v34;
    *(v30 + 32) = v32;
    *(v30 + 48) = v33;
    v35 = v51;
    v36 = v52;
    v37 = v53;
    *(v30 + 144) = v54;
    *(v30 + 112) = v36;
    *(v30 + 128) = v37;
    *(v30 + 96) = v35;
    v38 = v29[2];
    v39 = __OFADD__(v38, 1);
    v40 = v38 + 1;
    if (v39)
    {
      goto LABEL_22;
    }

    v29[2] = v40;
    a2 = 1;
    v5 = v18;
    if (v4 == v18)
    {
      goto LABEL_2;
    }

LABEL_3:
    if ((v4 & 0x8000000000000000) != 0)
    {
      goto LABEL_23;
    }

    if (v4 >= *(a1 + 16))
    {
      goto LABEL_24;
    }

    v6 = (v43 + 168 * v4);
    v7 = v6[7];
    v8 = v6[9];
    v63 = v6[8];
    v64 = v8;
    v9 = v6[3];
    v10 = v6[5];
    v59 = v6[4];
    v60 = v10;
    v11 = v6[5];
    v12 = v6[7];
    v61 = v6[6];
    v62 = v12;
    v13 = v6[1];
    v55 = *v6;
    v56 = v13;
    v14 = v6[3];
    v16 = *v6;
    v15 = v6[1];
    v57 = v6[2];
    v58 = v14;
    v17 = v6[9];
    v74 = v63;
    v75 = v17;
    v70 = v59;
    v71 = v11;
    v72 = v61;
    v73 = v7;
    v66 = v16;
    v67 = v15;
    v65 = *(v6 + 20);
    v76 = *(v6 + 20);
    ++v4;
    v68 = v57;
    v69 = v9;
    destructiveProjectEnumData for NodePersonality.ShaderType();
    outlined init with copy of [Input](&v55, &v45, &_sSS_11ShaderGraph7NodeDefVtMd, &_sSS_11ShaderGraph7NodeDefVtMR);
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v25, a2 & 1);
  v27 = specialized __RawDictionaryStorage.find<A>(_:)(v19, *(&v19 + 1));
  if ((v26 & 1) != (v28 & 1))
  {
    goto LABEL_25;
  }

  v22 = v27;
  if ((v26 & 1) == 0)
  {
    goto LABEL_14;
  }

LABEL_18:
  v41 = swift_allocError();
  swift_willThrow();
  v42 = v41;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {

    outlined destroy of NodeDef(&v45);

    return;
  }

LABEL_26:
  _StringGuts.grow(_:)(30);
  MEMORY[0x266771550](0xD00000000000001BLL, 0x8000000265F2E0E0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x266771550](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

{
  v5 = 0;
  v6 = 0;
  v7 = 0;
  v8 = a1 + 32;
  while (2)
  {
    if (v5)
    {
      v9 = *(v5 + 16);
      if (v6 != v9)
      {
        goto LABEL_14;
      }

      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      outlined destroy of [Input](&v31, &_s11ShaderGraph14FunctionNodeIDV_AA05MetalcD0_ptSgMd, &_s11ShaderGraph14FunctionNodeIDV_AA05MetalcD0_ptSgMR);
    }

    v10 = *(a1 + 16);
    if (v7 == v10)
    {
LABEL_28:

      v35 = 0u;
      v36 = 0u;
      v34 = 0u;
LABEL_29:

      return;
    }

    if (v7 >= v10)
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      goto LABEL_36;
    }

    while (1)
    {
      v5 = *(v8 + 8 * v7);

      if (v5)
      {
        break;
      }

LABEL_10:
      ++v7;
      v11 = *(a1 + 16);
      if (v7 == v11)
      {
        goto LABEL_28;
      }

      if (v7 >= v11)
      {
        goto LABEL_31;
      }
    }

    v9 = *(v5 + 16);
    if (!v9)
    {
      v32 = 0u;
      v33 = 0u;
      v31 = 0u;
      outlined destroy of [Input](&v31, &_s11ShaderGraph14FunctionNodeIDV_AA05MetalcD0_ptSgMd, &_s11ShaderGraph14FunctionNodeIDV_AA05MetalcD0_ptSgMR);
      goto LABEL_10;
    }

    v6 = 0;
    ++v7;
LABEL_14:
    if (v6 >= v9)
    {
      goto LABEL_32;
    }

    outlined init with copy of [Input](v5 + 48 * v6 + 32, &v31, &_s11ShaderGraph14FunctionNodeIDV_AA05MetalcD0_ptMd, &_s11ShaderGraph14FunctionNodeIDV_AA05MetalcD0_ptMR);
    v35 = v32;
    v36 = v33;
    v34 = v31;
    if (!v33)
    {

      goto LABEL_29;
    }

    v29 = v6;
    v12 = a2;
    v13 = v34;
    v37 = v34;
    outlined init with take of MetalFunctionNode((&v34 + 8), &v31);
    v14 = *a3;
    v16 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
    v17 = v14[2];
    v18 = (v15 & 1) == 0;
    v19 = v17 + v18;
    if (__OFADD__(v17, v18))
    {
      goto LABEL_33;
    }

    v20 = v15;
    if (v14[3] >= v19)
    {
      if (v12)
      {
        if (v15)
        {
          goto LABEL_26;
        }
      }

      else
      {
        specialized _NativeDictionary.copy()();
        if (v20)
        {
          goto LABEL_26;
        }
      }

LABEL_23:
      v23 = *a3;
      *(*a3 + 8 * (v16 >> 6) + 64) |= 1 << v16;
      *(v23[6] + 8 * v16) = v13;
      outlined init with take of MetalFunctionNode(&v31, v23[7] + 40 * v16);
      v24 = v23[2];
      v25 = __OFADD__(v24, 1);
      v26 = v24 + 1;
      if (v25)
      {
        goto LABEL_34;
      }

      v6 = v29 + 1;
      v23[2] = v26;
      a2 = 1;
      continue;
    }

    break;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v19, v12 & 1);
  v21 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
  if ((v20 & 1) != (v22 & 1))
  {
    goto LABEL_35;
  }

  v16 = v21;
  if ((v20 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_26:
  v27 = swift_allocError();
  swift_willThrow();
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v31);

    return;
  }

LABEL_36:
  _StringGuts.grow(_:)(30);
  MEMORY[0x266771550](0xD00000000000001BLL, 0x8000000265F2E0E0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x266771550](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

uint64_t specialized Array<A>.hash(into:)(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x266772770](v4);
  v13 = v4;
  if (v4)
  {
    v6 = 0;
    do
    {
      v7 = a2 + 32 + 48 * v6;
      v8 = *(v7 + 16);
      v9 = *(v7 + 24);
      v10 = *(v7 + 32);
      v14 = *(v7 + 40);

      String.hash(into:)();
      (*(*v8 + 120))(a1);
      MEMORY[0x266772770](*(v9 + 16));
      v11 = *(v9 + 16);
      if (v11)
      {
        v12 = v9 + 40;
        do
        {

          String.hash(into:)();

          v12 += 16;
          --v11;
        }

        while (v11);
      }

      ++v6;
      Hasher._combine(_:)(v10);
      MEMORY[0x266772770](v14);
    }

    while (v6 != v13);
  }

  return result;
}

{
  v3 = *(a2 + 16);
  result = MEMORY[0x266772770](v3);
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      v6 = v5[7];
      v36 = v5[6];
      v37 = v6;
      v7 = v5[9];
      v38 = v5[8];
      v39 = v7;
      v8 = v5[3];
      v32 = v5[2];
      v33 = v8;
      v9 = v5[5];
      v34 = v5[4];
      v35 = v9;
      v10 = v5[1];
      v30 = *v5;
      v31 = v10;
      outlined init with copy of NodeDef.Availability(&v30, v29);
      String.hash(into:)();

      if (BYTE10(v37))
      {
        v11 = 1;
        goto LABEL_8;
      }

      v12 = *(&v30 + 1);
      v14 = v31;
      v13 = v32;
      v15 = BYTE8(v32);
      v22 = v33;
      v23 = v34;
      v18 = *(&v33 + 1);
      v19 = *(&v34 + 1);
      v24 = v35;
      v16 = BYTE1(v35);
      v25 = *(&v35 + 1);
      v26 = BYTE8(v36);
      v20 = v36;
      v21 = v37;
      v27 = BYTE8(v37);
      v28 = BYTE9(v37);
      v17 = BYTE9(v32);
      MEMORY[0x266772770](0);
      if (v17)
      {
        Hasher._combine(_:)(0);
        if (v16)
        {
          goto LABEL_12;
        }
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x266772770](v12);
        if (BYTE8(v14))
        {
          Hasher._combine(_:)(0);
        }

        else
        {
          Hasher._combine(_:)(1u);
          MEMORY[0x266772770](v14);
        }

        if (v15)
        {
          Hasher._combine(_:)(0);
        }

        else
        {
          Hasher._combine(_:)(1u);
          MEMORY[0x266772770](v13);
        }

        if (v16)
        {
LABEL_12:
          Hasher._combine(_:)(0);
          if (v28)
          {
            goto LABEL_30;
          }

          goto LABEL_28;
        }
      }

      Hasher._combine(_:)(1u);
      MEMORY[0x266772770](v22);
      if (v23)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x266772770](v18);
      }

      if (v24)
      {
        Hasher._combine(_:)(0);
        if (v28)
        {
          goto LABEL_30;
        }
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x266772770](v19);
        if (v28)
        {
          goto LABEL_30;
        }
      }

LABEL_28:
      Hasher._combine(_:)(1u);
      MEMORY[0x266772770](v25);
      if (v26)
      {
        Hasher._combine(_:)(0);
        if ((v27 & 1) == 0)
        {
          goto LABEL_34;
        }
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x266772770](v20);
        if ((v27 & 1) == 0)
        {
LABEL_34:
          Hasher._combine(_:)(1u);
          v11 = v21;
LABEL_8:
          MEMORY[0x266772770](v11);
          if (!*(&v38 + 1))
          {
            goto LABEL_3;
          }

          goto LABEL_31;
        }
      }

LABEL_30:
      Hasher._combine(_:)(0);
      if (!*(&v38 + 1))
      {
LABEL_3:
        Hasher._combine(_:)(0);
        if (!*(&v39 + 1))
        {
          goto LABEL_32;
        }

        goto LABEL_4;
      }

LABEL_31:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
      if (!*(&v39 + 1))
      {
LABEL_32:
        Hasher._combine(_:)(0);
        goto LABEL_5;
      }

LABEL_4:
      Hasher._combine(_:)(1u);
      String.hash(into:)();
LABEL_5:
      result = outlined destroy of NodeDef.Availability(&v30);
      v5 += 10;
      --v3;
    }

    while (v3);
  }

  return result;
}

{
  v4 = *(a2 + 16);
  result = MEMORY[0x266772770](v4);
  v22 = v4;
  if (v4)
  {
    v6 = 0;
    v21 = a2 + 32;
    do
    {
      v7 = v21 + (v6 << 6);
      v8 = *(v7 + 16);
      v9 = *(v7 + 32);
      v10 = *(v7 + 48);
      v11 = *(v7 + 56);

      String.hash(into:)();
      swift_beginAccess();
      v12 = *(v8 + 16);
      v13 = *(v12 + 16);
      MEMORY[0x266772770](v13);
      v26 = v13;
      if (v13)
      {
        v23 = v10;
        v24 = v6;
        v25 = v12 + 32;

        v14 = 0;
        do
        {
          v15 = v25 + 48 * v14;
          v17 = *(v15 + 16);
          v16 = *(v15 + 24);
          v18 = *(v15 + 32);
          v27 = *(v15 + 40);

          String.hash(into:)();
          (*(*v17 + 120))(a1);
          MEMORY[0x266772770](*(v16 + 16));
          v19 = *(v16 + 16);
          if (v19)
          {
            v20 = v16 + 40;
            do
            {

              String.hash(into:)();

              v20 += 16;
              --v19;
            }

            while (v19);
          }

          ++v14;
          Hasher._combine(_:)(v18);
          MEMORY[0x266772770](v27);
        }

        while (v14 != v26);

        v6 = v24;
        v10 = v23;
      }

      if (v9)
      {
        Hasher._combine(_:)(1u);
        String.hash(into:)();
        if (!v10)
        {
          goto LABEL_17;
        }
      }

      else
      {
        Hasher._combine(_:)(0);
        if (!v10)
        {
LABEL_17:
          Hasher._combine(_:)(0);
          goto LABEL_4;
        }
      }

      Hasher._combine(_:)(1u);
      String.hash(into:)();
LABEL_4:
      ++v6;
      Hasher._combine(_:)(v11);
    }

    while (v6 != v22);
  }

  return result;
}

{
  v4 = *(a2 + 16);
  result = MEMORY[0x266772770](v4);
  if (v4)
  {
    v6 = (a2 + 80);
    do
    {
      v7 = *(v6 - 5);
      v8 = *(v6 - 8);
      v10 = *(v6 - 2);
      v11 = *v6;
      MEMORY[0x266772770](*(v6 - 6));
      v9 = *(*v7 + 120);

      v9(a1);
      String.hash(into:)();
      if (v8 == 1)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x266772770](v10);
      }

      v6 += 7;
      MEMORY[0x266772770](v11);

      --v4;
    }

    while (v4);
  }

  return result;
}

{
  v4 = *(a2 + 16);
  result = MEMORY[0x266772770](v4);
  v22 = v4;
  if (v4)
  {
    v6 = 0;
    v21 = a2 + 32;
    do
    {
      v27 = v6;
      v7 = v21 + 48 * v6;
      v9 = *v7;
      v8 = *(v7 + 8);
      v10 = *(v7 + 16);
      v23 = *(v7 + 32);
      v24 = *(v7 + 24);
      v25 = *(v7 + 40);
      outlined copy of NodePersonality(*v7);

      v26 = v9;
      NodePersonality.hash(into:)(a1, v9);
      MEMORY[0x266772770](*(v8 + 16));
      v11 = *(v8 + 16);
      if (v11)
      {
        v12 = (v8 + 80);
        do
        {
          v13 = *(v12 - 5);
          v14 = *(v12 - 8);
          v28 = *(v12 - 2);
          v30 = *v12;
          MEMORY[0x266772770](*(v12 - 6));
          v15 = *(*v13 + 120);

          v15(a1);
          String.hash(into:)();
          if (v14 == 1)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x266772770](v28);
          }

          v12 += 7;
          MEMORY[0x266772770](v30);

          --v11;
        }

        while (v11);
      }

      MEMORY[0x266772770](*(v10 + 16));
      v16 = *(v10 + 16);
      if (v16)
      {
        v17 = (v10 + 80);
        do
        {
          v18 = *(v17 - 5);
          v19 = *(v17 - 8);
          v29 = *(v17 - 2);
          v31 = *v17;
          MEMORY[0x266772770](*(v17 - 6));
          v20 = *(*v18 + 120);

          v20(a1);
          String.hash(into:)();
          if (v19 == 1)
          {
            Hasher._combine(_:)(0);
          }

          else
          {
            Hasher._combine(_:)(1u);
            MEMORY[0x266772770](v29);
          }

          v17 += 7;
          MEMORY[0x266772770](v31);

          --v16;
        }

        while (v16);
      }

      MEMORY[0x266772770](v24);
      if (v25)
      {
        Hasher._combine(_:)(0);
      }

      else
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x266772770](v23);
      }

      outlined consume of NodePersonality(v26);

      v6 = v27 + 1;
    }

    while (v27 + 1 != v22);
  }

  return result;
}

uint64_t specialized Array<A>.hash(into:)(__int128 *a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  result = MEMORY[0x266772770](v4);
  v32 = v4;
  if (v4)
  {
    v6 = 0;
    v31 = a2 + 32;
    while (1)
    {
      v34 = v6;
      v7 = (v31 + 88 * v6);
      v9 = *v7;
      v8 = v7[1];
      v11 = v7[2];
      v10 = v7[3];
      v12 = v7[6];
      v38 = v11;
      v40 = v10;
      v41 = v7[4];
      v13 = v7[9];
      v39 = v7[10];
      v36 = *v7;
      v35 = v8;
      v37 = v7[7];
      if (v41)
      {
        Hasher._combine(_:)(1u);
        MEMORY[0x266772770](v9);
        MEMORY[0x266772770](v8);
        v14 = v11 >> 62;
        v15 = v11;
        if (v11 >> 62)
        {
          v16 = v9;
          v17 = v13;
          if (v14 == 1)
          {
            v18 = *((v15 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
            v47 = *((v15 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
            v48 = v18;
            v46 = *((v15 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
            v19 = *((v15 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
            v55 = *(&v47 + 1);
            v56 = v18;
            v54 = v19;
            v20 = v15;
            MEMORY[0x266772770](1);
            outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v16, v8, v20, v40, v41);

            v21 = v37;

            outlined init with copy of String(&v54, v42);
            outlined init with copy of [Input](&v55, v42, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
            outlined init with copy of [Input](&v56, v42, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
            outlined init with copy of [Input](&v56 + 8, v42, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);
            SGDataTypeGraph.hash(into:)(a1);
            outlined destroy of String(&v54);
            outlined destroy of [Input](&v55, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
            outlined destroy of [Input](&v56, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
            v17 = v13;
            outlined destroy of [Input](&v56 + 8, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph0B0VyAA010SGDataTypeB0V11PersonalityVGMR);
          }

          else
          {
            v23 = v8;
            v24 = *((v15 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
            v25 = *((v15 & 0x3FFFFFFFFFFFFFFFLL) + 0x50);
            v51 = *((v15 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
            v52 = v25;
            v53 = *((v15 & 0x3FFFFFFFFFFFFFFFLL) + 0x60);
            v26 = *((v15 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
            v49 = *((v15 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
            v50 = v26;
            MEMORY[0x266772770](2);
            MEMORY[0x266772770](v24);
            outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v16, v23, v38, v40, v41);

            v21 = v37;

            SGDataTypeStorage.hash(into:)(a1);
          }
        }

        else
        {
          v22 = *(v11 + 32);
          v43 = *(v11 + 16);
          v44 = v22;
          v45 = *(v11 + 48);
          v57 = v43;
          v58 = v22;
          v59[0] = v45;
          MEMORY[0x266772770](0);
          outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v9, v8, v11, v10, v41);

          v21 = v37;

          outlined init with copy of String(&v57, v42);
          outlined init with copy of [Input](&v58, v42, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
          outlined init with copy of [Input](&v58 + 8, v42, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
          outlined init with copy of MaterialXAvailability(v59, v42);
          BuiltInDefinition.hash(into:)(a1);
          outlined destroy of String(&v57);
          v17 = v13;
          outlined destroy of [Input](&v58, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV9InputSpecVGMR);
          outlined destroy of [Input](&v58 + 8, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMd, &_sSay11ShaderGraph17BuiltInDefinitionV10OutputSpecVGMR);
          outlined destroy of MaterialXAvailability(v59);
        }

        String.hash(into:)();
      }

      else
      {
        v33 = v7[9];
        Hasher._combine(_:)(0);
        outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(v9, v8, v11, v10, 0);

        v17 = v33;

        v21 = v37;
      }

      v27 = *(v21 + 16);
      MEMORY[0x266772770](v27);

      if (v27)
      {
        break;
      }

LABEL_3:

      ++v6;
      specialized OrderedDictionary<>.hash(into:)(a1, v17, v39);
      outlined consume of Graph<SGDataTypeGraph.Personality>.Node?(v36, v35, v38, v40, v41);

      if (v34 + 1 == v32)
      {
        return result;
      }
    }

    v28 = 0;
    while (v28 < *(v12 + 16))
    {
      v29 = *(v12 + 32 + 8 * v28);
      v30 = *(v21 + 32 + 8 * v28++);
      MEMORY[0x266772770](v29);

      specialized Set.hash(into:)(a1, v30);
      v17 = v13;

      if (v27 == v28)
      {
        goto LABEL_3;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t specialized static SGDataTypeGraph.PersonalityKind.== infix(_:_:)(unint64_t a1, unint64_t a2)
{
  if (!(a1 >> 62))
  {
    v11 = *(a1 + 32);
    v20 = *(a1 + 16);
    v21 = v11;
    v22 = *(a1 + 48);
    if (!(a2 >> 62))
    {
      v12 = *(a2 + 32);
      v25 = *(a2 + 16);
      v26 = v12;
      v27 = *(a2 + 48);
      v10 = specialized static BuiltInDefinition.== infix(_:_:)(&v20, &v25);
      return v10 & 1;
    }

LABEL_19:
    v10 = 0;
    return v10 & 1;
  }

  if (a1 >> 62 != 1)
  {
    v13 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v14 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x50);
    v22 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
    v23 = v14;
    v24 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x60);
    v15 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
    v20 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
    v21 = v15;
    if (a2 >> 62 == 2)
    {
      v16 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v17 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x50);
      v27 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
      v28 = v17;
      v29 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x60);
      v18 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v25 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v26 = v18;
      if (v13 == v16)
      {
        v10 = specialized static SGDataTypeStorage.== infix(_:_:)(&v20, &v25);
        return v10 & 1;
      }
    }

    goto LABEL_19;
  }

  if (a2 >> 62 != 1 || *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) != *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10))
  {
    goto LABEL_19;
  }

  v3 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
  v2 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
  v4 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
  v5 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
  v6 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
  v7 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x38);
  v8 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) == *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18) && *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20) == *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
  if (!v8 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_19;
  }

  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph17BuiltInDefinitionV9InputSpecV_Tt1g5(v3, v5) & 1) == 0)
  {
    goto LABEL_19;
  }

  if ((_sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph17BuiltInDefinitionV10OutputSpecV_Tt1g5(v2, v6) & 1) == 0)
  {
    goto LABEL_19;
  }

  v9 = _sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph0C0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAC010SGDataTypeC0V11PersonalityV_G_Tt1g5(v4, v7);

  if ((v9 & 1) == 0)
  {
    goto LABEL_19;
  }

  v10 = 1;
  return v10 & 1;
}

BOOL specialized static SGDataTypeGraph.TopologicalSort.Element.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  v2 = a1[3];
  v4 = a1[4];
  v5 = a2[3];
  v7 = a2[4];
  if ((specialized static SGDataTypeGraph.PersonalityKind.== infix(_:_:)(a1[2], a2[2]) & 1) == 0 || (v2 != v5 || v4 != v7) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (a1[5] != a2[5])
  {
    return 0;
  }

  v8 = a1;
  v9 = a2;
  if (a1[6] != a2[6] || a1[7] != a2[7])
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v9 = a2;
    v8 = a1;
    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  v11 = *(v9 + 72);
  if (v8[9])
  {
    if (!*(v9 + 72))
    {
      return 0;
    }
  }

  else
  {
    if (v8[8] != v9[8])
    {
      v11 = 1;
    }

    if (v11)
    {
      return 0;
    }
  }

  return v8[10] == v9[10];
}

Swift::Int specialized static SGDataTypeGraph.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v4 = a1[1] == a2[1] && a1[2] == a2[2];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph17BuiltInDefinitionV9InputSpecV_Tt1g5(a1[3], a2[3]) & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph17BuiltInDefinitionV10OutputSpecV_Tt1g5(a1[4], a2[4]) & 1) == 0)
  {
    return 0;
  }

  v5 = a1[5];
  v6 = a2[5];

  return _sSasSQRzlE2eeoiySbSayxG_ABtFZ11ShaderGraph0C0V9NodeEntry33_1E9EB0C8C270EB44124EB51E91E406F3LLVyAC010SGDataTypeC0V11PersonalityV_G_Tt1g5(v5, v6);
}

unint64_t specialized SGDataTypeGraph.Personality.input(at:)(unint64_t result, unint64_t a2)
{
  if (a2 >> 62)
  {
    if (a2 >> 62 != 1)
    {
      return 0x64696C61766E69;
    }

    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_12;
    }

    v2 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
    if (*(v2 + 16) > result)
    {
LABEL_8:
      v3 = *(v2 + 32 * result + 32);

      return v3;
    }

    __break(1u);
  }

  if ((result & 0x8000000000000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v2 = *(a2 + 32);
  if (*(v2 + 16) > result)
  {
    goto LABEL_8;
  }

LABEL_13:
  __break(1u);
  return result;
}

unint64_t specialized SGDataTypeGraph.Personality.output(at:)(unint64_t result, unint64_t a2)
{
  if (a2 >> 62)
  {
    if (a2 >> 62 != 1)
    {
      return 7632239;
    }

    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_12;
    }

    v2 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
    if (*(v2 + 16) > result)
    {
LABEL_8:
      v3 = *(v2 + 24 * result + 32);

      return v3;
    }

    __break(1u);
  }

  if ((result & 0x8000000000000000) != 0)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v2 = *(a2 + 40);
  if (*(v2 + 16) > result)
  {
    goto LABEL_8;
  }

LABEL_13:
  __break(1u);
  return result;
}

uint64_t _s11ShaderGraph17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufCSi_s16IndexingIteratorVySayAA0B5IndexVGGSaySi_AMtGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v19 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  specialized OrderedSet._reserveCapacity(_:persistent:)(v3, 0, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), _s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVySiG_Tt2g5);
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
  v4 = v2;
  v18 = v3;
  if (!v3)
  {
    return 0;
  }

  v5 = 0;
  v17 = a1 + 32;
  while (1)
  {
    v6 = (v17 + 24 * v5);
    v8 = *v6;
    v7 = v6[1];
    v9 = v6[2];
    v10 = (v19 + 32);
    v11 = *(v19 + 16);
    if (v11)
    {
      break;
    }

LABEL_6:

    specialized OrderedSet._appendNew(_:in:)(v8, 0);
    v14 = *(v4 + 16);
    v13 = *(v4 + 24);
    if (v14 >= v13 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
    }

    ++v5;
    *(v4 + 16) = v14 + 1;
    v15 = v4 + 16 * v14;
    *(v15 + 32) = v7;
    *(v15 + 40) = v9;
    if (v5 == v18)
    {
      return 0;
    }
  }

  while (1)
  {
    v12 = *v10++;
    if (v12 == v8)
    {
      break;
    }

    if (!--v11)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t specialized SGDataTypeGraph.Personality.debugDescription.getter(unint64_t a1)
{
  if (a1 >> 62)
  {
    if (a1 >> 62 == 1)
    {
      v1 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v2 = *((a1 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);

      MEMORY[0x266771550](v1, v2);

      MEMORY[0x266771550](41, 0xE100000000000000);
      return 0x706172476C6C6163;
    }

    else
    {
      v6 = SGDataTypeStorage.valueString.getter();
      MEMORY[0x266771550](8250, 0xE200000000000000);
      v5 = SGDataType.stringValue.getter();
      MEMORY[0x266771550](v5);

      return v6;
    }
  }

  else
  {
    v4 = *(a1 + 16);

    return v4;
  }
}

uint64_t _s11ShaderGraph17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufCAA0aB4NodeV2IDV_AA04UserB0V8AdjacentVSayAK_AOtGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v25 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  specialized OrderedSet._reserveCapacity(_:persistent:)(v3, 0, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), _s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVyAA0aB4NodeV2IDVG_Tt2g5);
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
  v4 = v2;
  v22 = v3;
  if (v3)
  {
    v5 = 0;
    v21 = a1 + 32;
    do
    {
      v6 = (v21 + 56 * v5);
      v8 = v6[5];
      v7 = v6[6];
      v10 = v6[2];
      v9 = v6[3];
      v11 = v6[4];
      v13 = *v6;
      v12 = v6[1];

      if (!v10)
      {
        break;
      }

      v23 = v9;
      v24 = v8;
      v14 = (v25 + 32);
      v15 = *(v25 + 16);
      if (v15)
      {
        while (1)
        {
          v16 = *v14++;
          if (v16 == v13)
          {
            break;
          }

          if (!--v15)
          {
            goto LABEL_7;
          }
        }

        __break(1u);
        result = _assertionFailure(_:_:file:line:flags:)();
        __break(1u);
        return result;
      }

LABEL_7:
      specialized OrderedSet._appendNew(_:in:)(v13, 0);
      v18 = *(v4 + 16);
      v17 = *(v4 + 24);
      if (v18 >= v17 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
      }

      ++v5;
      *(v4 + 16) = v18 + 1;
      v19 = (v4 + 48 * v18);
      v19[4] = v12;
      v19[5] = v10;
      v19[6] = v23;
      v19[7] = v11;
      v19[8] = v24;
      v19[9] = v7;
    }

    while (v5 != v22);
  }

  return 0;
}

__n128 specialized SGDataTypeGraph.argumentsNode.getter@<Q0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v3 = specialized Graph.nodes.getter(a2);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 64);
    while (1)
    {
      v6 = *(v5 - 2);
      if (!(v6 >> 62))
      {
        v10 = *(v5 - 1);
        v11 = *(v5 - 2);
        v7 = *v5;
        v8 = *(v6 + 16) == 0x656D756772615F5FLL && *(v6 + 24) == 0xEB0000000073746ELL;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      v5 += 5;
      if (!--v4)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v7 = 0;
    v10 = 0u;
    v11 = 0u;
  }

  result = v11;
  *a1 = v11;
  *(a1 + 16) = v10;
  *(a1 + 32) = v7;
  return result;
}

__n128 specialized SGDataTypeGraph.resultNode.getter@<Q0>(uint64_t a1@<X8>, uint64_t a2@<X0>)
{
  v3 = specialized Graph.nodes.getter(a2);
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = (v3 + 64);
    while (1)
    {
      v6 = *(v5 - 2);
      if (!(v6 >> 62))
      {
        v10 = *(v5 - 1);
        v11 = *(v5 - 2);
        v7 = *v5;
        v8 = *(v6 + 16) == 0x746C757365725F5FLL && *(v6 + 24) == 0xE900000000000073;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          break;
        }
      }

      v5 += 5;
      if (!--v4)
      {
        goto LABEL_11;
      }
    }
  }

  else
  {
LABEL_11:
    v7 = 0;
    v10 = 0u;
    v11 = 0u;
  }

  result = v11;
  *a1 = v11;
  *(a1 + 16) = v10;
  *(a1 + 32) = v7;
  return result;
}

uint64_t _s11ShaderGraph17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufCSi_ShyAA0B5IndexVGSaySi_AJtGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v15 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  specialized OrderedSet._reserveCapacity(_:persistent:)(v3, 0, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), _s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVySiG_Tt2g5);
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
  v4 = v2;
  if (!v3)
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    v6 = (a1 + 32 + 16 * v5);
    v7 = *v6;
    v14 = v6[1];
    v8 = (v15 + 32);
    v9 = *(v15 + 16);
    if (v9)
    {
      break;
    }

LABEL_6:

    specialized OrderedSet._appendNew(_:in:)(v7, 0);
    v12 = *(v4 + 16);
    v11 = *(v4 + 24);
    if (v12 >= v11 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
    }

    ++v5;
    *(v4 + 16) = v12 + 1;
    *(v4 + 8 * v12 + 32) = v14;
    if (v5 == v3)
    {
      return 0;
    }
  }

  while (1)
  {
    v10 = *v8++;
    if (v10 == v7)
    {
      break;
    }

    if (!--v9)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _s11ShaderGraph17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufCSi_AA0B5IndexVSgSaySi_AJtGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v18 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  specialized OrderedSet._reserveCapacity(_:persistent:)(v3, 0, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), _s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVySiG_Tt2g5);
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
  v4 = v2;
  if (!v3)
  {
    return 0;
  }

  v5 = 0;
  v16 = a1 + 32;
  while (1)
  {
    v6 = v16 + 32 * v5;
    v7 = *v6;
    v17 = *(v6 + 8);
    v8 = *(v6 + 24);
    v9 = (v18 + 32);
    v10 = *(v18 + 16);
    if (v10)
    {
      break;
    }

LABEL_6:
    specialized OrderedSet._appendNew(_:in:)(v7, 0);
    v13 = *(v4 + 16);
    v12 = *(v4 + 24);
    if (v13 >= v12 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
    }

    ++v5;
    *(v4 + 16) = v13 + 1;
    v14 = v4 + 24 * v13;
    *(v14 + 32) = v17;
    *(v14 + 48) = v8;
    if (v5 == v3)
    {
      return 0;
    }
  }

  while (1)
  {
    v11 = *v9++;
    if (v11 == v7)
    {
      break;
    }

    if (!--v10)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _s11ShaderGraph0B0V8AdjacentVyAEyx_GAC4NodeVyx_GcfCAA010SGDataTypeB0V11PersonalityV_Tt0g5Tf4g_n@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 16);
  v4 = *(a1 + 16);
  v47[0] = *a1;
  v47[1] = v4;
  v48 = *(a1 + 32);
  if (v3 >> 62)
  {
    if (v3 >> 62 == 1)
    {
      MEMORY[0x28223BE20](a1);
      v43 = v47;
      v6 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_11ShaderGraph0E5IndexVs5NeverOTg5(partial apply for specialized closure #1 in Graph.Adjacent.init(_:), v42, 0, v5);
    }

    else
    {
      MEMORY[0x28223BE20](a1);
      v43 = v47;
      v6 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_11ShaderGraph0E5IndexVs5NeverOTg5(partial apply for specialized closure #1 in Graph.Adjacent.init(_:), v42, 0, 1);
    }

    v7 = v6;
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    v43 = v47;
    v6 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_11ShaderGraph0E5IndexVs5NeverOTg5(partial apply for specialized closure #1 in Graph.Adjacent.init(_:), v42, 0, v8);
    v7 = v6;
  }

  MEMORY[0x28223BE20](v6);
  v43 = v47;
  v10 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSnySiG_11ShaderGraph0E5IndexVs5NeverOTg5(partial apply for specialized closure #2 in Graph.Adjacent.init(_:), v42, 0, v9);
  v11 = *(v7 + 16);
  v12 = MEMORY[0x277D84F90];
  if (v11)
  {
    v46 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11, 0);
    v13 = v46;
    v14 = *(v46 + 16);
    v15 = 16 * v14;
    v16 = 40;
    v17 = MEMORY[0x277D84FA0];
    do
    {
      v18 = *(v7 + v16);
      v46 = v13;
      v19 = *(v13 + 24);
      v20 = v14 + 1;
      if (v14 >= v19 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v14 + 1, 1);
        v13 = v46;
      }

      *(v13 + 16) = v20;
      v21 = v13 + v15;
      *(v21 + 32) = v18;
      *(v21 + 40) = v17;
      v15 += 16;
      v16 += 16;
      v14 = v20;
      --v11;
    }

    while (v11);

    v12 = MEMORY[0x277D84F90];
  }

  else
  {

    v13 = MEMORY[0x277D84F90];
  }

  v22 = _s11ShaderGraph17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufCSi_ShyAA0B5IndexVGSaySi_AJtGTt0g5Tf4g_n(v13);
  v24 = v23;
  v26 = v25;

  v27 = *(v10 + 16);
  if (v27)
  {
    v44 = v24;
    v45 = v22;
    v46 = v12;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27, 0);
    v28 = v46;
    v29 = *(v46 + 16);
    v30 = 32 * v29;
    v31 = 40;
    do
    {
      v32 = *(v10 + v31);
      v46 = v28;
      v33 = *(v28 + 24);
      v34 = v29 + 1;
      if (v29 >= v33 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v29 + 1, 1);
        v28 = v46;
      }

      *(v28 + 16) = v34;
      v35 = v28 + v30;
      *(v35 + 40) = 0;
      *(v35 + 48) = 0;
      *(v35 + 32) = v32;
      v30 += 32;
      v31 += 16;
      v29 = v34;
      *(v35 + 56) = 1;
      --v27;
    }

    while (v27);

    v24 = v44;
    v22 = v45;
  }

  else
  {

    v28 = MEMORY[0x277D84F90];
  }

  v36 = _s11ShaderGraph17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufCSi_AA0B5IndexVSgSaySi_AJtGTt0g5Tf4g_n(v28);
  v38 = v37;
  v40 = v39;

  *a2 = v22;
  a2[1] = v24;
  a2[2] = v26;
  a2[3] = v36;
  a2[4] = v38;
  a2[5] = v40;
  return result;
}

uint64_t specialized Graph.Node<>.output(named:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = result;
  if (a4 >> 62)
  {
    if (a4 >> 62 != 1)
    {
      v13 = 0;
LABEL_22:
      result = specialized Graph.Node.subscript.getter(v13, a3, a4, v22);
      v12 = v22[0];
      v21 = v22[1];
      v20 = v23;
      goto LABEL_23;
    }

    v10 = *((a4 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
    v11 = *(v10 + 16);
    v12 = 0uLL;
    if (v11)
    {
      v13 = 0;
      v14 = (v10 + 40);
      while (*(v14 - 1) != v8 || *v14 != a2)
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if (result)
        {
          break;
        }

        ++v13;
        v14 += 3;
        v12 = 0uLL;
        if (v11 == v13)
        {
          goto LABEL_20;
        }
      }

      goto LABEL_22;
    }
  }

  else
  {
    v16 = *(a4 + 40);
    v17 = *(v16 + 16);
    v12 = 0uLL;
    if (v17)
    {
      v13 = 0;
      v18 = (v16 + 40);
      while (*(v18 - 1) != v8 || *v18 != a2)
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if (result)
        {
          break;
        }

        ++v13;
        v18 += 3;
        v12 = 0uLL;
        if (v17 == v13)
        {
          goto LABEL_20;
        }
      }

      goto LABEL_22;
    }
  }

LABEL_20:
  v20 = 0;
  v21 = 0uLL;
LABEL_23:
  *a5 = v12;
  *(a5 + 16) = v21;
  *(a5 + 32) = v20;
  return result;
}

uint64_t specialized Graph.Node<>.input(named:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v8 = result;
  v10 = 0uLL;
  v22 = 0u;
  if (a4 >> 62)
  {
    if (a4 >> 62 == 1)
    {
      v11 = *((a4 & 0x3FFFFFFFFFFFFFFFLL) + 0x28);
      v12 = *(v11 + 16);
      if (v12)
      {
        v13 = 0;
        v14 = (v11 + 40);
        while (*(v14 - 1) != v8 || *v14 != a2)
        {
          result = _stringCompareWithSmolCheck(_:_:expecting:)();
          if (result)
          {
            break;
          }

          ++v13;
          v14 += 4;
          if (v12 == v13)
          {
            goto LABEL_20;
          }
        }

LABEL_22:
        result = specialized Graph.Node.subscript.getter(v13, a3, a4, v23);
        v10 = v23[1];
        v22 = v23[0];
        v20 = v24;
        v21 = v25;
        goto LABEL_23;
      }
    }
  }

  else
  {
    v16 = *(a4 + 32);
    v17 = *(v16 + 16);
    if (v17)
    {
      v13 = 0;
      v18 = (v16 + 40);
      while (*(v18 - 1) != v8 || *v18 != a2)
      {
        result = _stringCompareWithSmolCheck(_:_:expecting:)();
        if (result)
        {
          break;
        }

        ++v13;
        v18 += 4;
        if (v17 == v13)
        {
LABEL_20:
          v20 = 0;
          v21 = 0;
          v10 = 0uLL;
          goto LABEL_23;
        }
      }

      goto LABEL_22;
    }
  }

  v20 = 0;
  v21 = 0;
LABEL_23:
  *a5 = v22;
  *(a5 + 16) = v10;
  *(a5 + 32) = v20;
  *(a5 + 40) = v21;
  return result;
}

uint64_t specialized Graph.connect(_:_:)(unint64_t a1, unint64_t a2, unint64_t a3, Swift::Int a4)
{
  v8 = v5;
  v13 = *v5;
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    if ((a1 & 0x8000000000000000) == 0)
    {
      goto LABEL_3;
    }

LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v13 = specialized _ArrayBuffer._consumeAndCreateNew()(v13);
  if ((a1 & 0x8000000000000000) != 0)
  {
    goto LABEL_27;
  }

LABEL_3:
  v14 = v13[2];
  if (v14 <= a1)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v4 = v13 + 4;
  v15 = &v13[11 * a1 + 4];
  v16 = specialized OrderedSet._append(_:)(a2);
  v7 = v17;
  v19 = *(v15 + 56);
  v6 = (v15 + 56);
  v18 = v19;
  if ((v16 & 1) == 0)
  {
    goto LABEL_9;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v6 = v18;
  v39 = a2;
  v40 = v8;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18[2] + 1, 1);
    v18 = *v6;
  }

  v8 = v18[2];
  v14 = v18[3];
  a2 = v8 + 1;
  if (v8 >= v14 >> 1)
  {
    goto LABEL_31;
  }

  while (1)
  {
    v18[2] = a2;
    v18[v8 + 4] = MEMORY[0x277D84FA0];
    *v6 = v18;
    a2 = v39;
    v8 = v40;
LABEL_9:
    v21 = swift_isUniquelyReferenced_nonNull_native();
    *v6 = v18;
    if ((v21 & 1) == 0)
    {
      v18 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v18);
      *v6 = v18;
    }

    v22 = v18[v7 + 4];
    *v6 = v18;
    v41 = v22;
    specialized Set._Variant.insert(_:)(v42, a3, a4);
    v23 = *v6;
    v24 = swift_isUniquelyReferenced_nonNull_native();
    *v6 = v23;
    if ((v24 & 1) == 0)
    {
      v23 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v23);
    }

    v14 = v41;
    v23[v7 + 4] = v41;
    *v6 = v23;
    if ((a3 & 0x8000000000000000) != 0)
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v14 = v13[2];
    if (v14 > a3)
    {
      break;
    }

LABEL_30:
    __break(1u);
LABEL_31:
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), a2, 1);
    v18 = *v6;
  }

  v25 = &v4[11 * a3];
  v26 = specialized OrderedSet._append(_:)(a4);
  v28 = v27;
  v31 = v25[10];
  v30 = (v25 + 10);
  v29 = v31;
  if (v26)
  {
    v32 = swift_isUniquelyReferenced_nonNull_native();
    *v30 = v29;
    if ((v32 & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v29 + 2) + 1, 1);
      v29 = *v30;
    }

    v34 = *(v29 + 2);
    v33 = *(v29 + 3);
    if (v34 >= v33 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1);
      v29 = *v30;
    }

    *(v29 + 2) = v34 + 1;
    v35 = &v29[24 * v34];
    *(v35 + 4) = 0;
    *(v35 + 5) = 0;
    v35[48] = 1;
    *v30 = v29;
  }

  v36 = swift_isUniquelyReferenced_nonNull_native();
  *v30 = v29;
  if ((v36 & 1) == 0)
  {
    v29 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v29);
  }

  *v30 = v29;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v30 = v29;
  if ((result & 1) == 0)
  {
    result = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v29);
    v29 = result;
  }

  v38 = &v29[24 * v28];
  *(v38 + 4) = a1;
  *(v38 + 5) = a2;
  v38[48] = 0;
  *v30 = v29;
  *v8 = v13;
  return result;
}

uint64_t specialized SGDataTypeGraph.init(_:idSequence:constants:)@<X0>(char *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *(a3 + 16);
  v8 = MEMORY[0x277D84F90];
  v72 = a1;
  if (v7)
  {
    v82 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7, 0);
    v10 = v82;
    v11 = (a3 + 40);
    do
    {
      v4 = *(v11 - 1);
      v12 = *v11;
      v82 = v10;
      v5 = *(v10 + 16);
      v13 = *(v10 + 24);

      if (v5 >= v13 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v5 + 1, 1);
        v10 = v82;
      }

      *(v10 + 16) = v5 + 1;
      v14 = v10 + 16 * v5;
      *(v14 + 32) = v4;
      *(v14 + 40) = v12;
      v11 += 14;
      --v7;
    }

    while (v7);
    v15 = v72;
  }

  else
  {
    v15 = a1;
  }

  v16 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n();

  v17 = OBJC_IVAR___SGGraph_inputs;
  swift_beginAccess();
  v18 = *&v15[v17];
  if (v18 >> 62)
  {
    goto LABEL_36;
  }

  for (i = *((v18 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v73 = i;
    v81[0] = v8;
    v20 = i & ~(i >> 63);

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20, 0);
    v21 = v73;
    if (v73 < 0)
    {
      goto LABEL_79;
    }

    v22 = 0;
    v23 = v81[0];
    v69 = v18 + 32;
    v70 = v18 & 0xFFFFFFFFFFFFFF8;
    v6 = v16 + 56;
    v75 = v16 + 56;
    v76 = v18 & 0xC000000000000001;
    while (1)
    {
      v5 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      v77 = v23;
      if (v76)
      {
        v24 = MEMORY[0x266772030]();
      }

      else
      {
        if (v22 >= *(v70 + 16))
        {
          goto LABEL_35;
        }

        v24 = *(v69 + 8 * v22);
      }

      v25 = v24;
      v15 = *&v24[OBJC_IVAR___SGInput_name];
      v4 = *&v24[OBJC_IVAR___SGInput_name + 8];
      v26 = OBJC_IVAR___SGInput_type;
      swift_beginAccess();
      v27 = *&v25[v26];
      if (*(v16 + 16))
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v28 = Hasher._finalize()();
        v29 = -1 << *(v16 + 32);
        v30 = v28 & ~v29;
        if ((*(v6 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30))
        {
          v31 = ~v29;
          while (1)
          {
            v32 = (*(v16 + 48) + 16 * v30);
            v33 = *v32 == v15 && v32[1] == v4;
            if (v33 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {
              break;
            }

            v30 = (v30 + 1) & v31;
            if (((*(v6 + ((v30 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v30) & 1) == 0)
            {
              goto LABEL_26;
            }
          }

          v34 = v27;
          v8 = 1;
        }

        else
        {
LABEL_26:
          v34 = v27;
          v8 = 0;
        }

        v21 = v73;
      }

      else
      {
        v34 = *&v25[v26];

        v8 = 0;
      }

      v23 = v77;
      v81[0] = v77;
      v36 = *(v77 + 16);
      v35 = *(v77 + 24);
      v18 = v36 + 1;
      if (v36 >= v35 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1);
        v21 = v73;
        v23 = v81[0];
      }

      *(v23 + 16) = v18;
      v37 = v23 + 32 * v36;
      *(v37 + 32) = v15;
      *(v37 + 40) = v4;
      *(v37 + 48) = v34;
      *(v37 + 56) = v8;
      v22 = v5;
      v6 = v16 + 56;
      if (v5 == v21)
      {
        v77 = v23;

        v15 = v72;
        goto LABEL_38;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    ;
  }

  v77 = MEMORY[0x277D84F90];
LABEL_38:
  v38 = OBJC_IVAR___SGGraph_outputs;
  swift_beginAccess();
  v39 = *&v15[v38];
  if (v39 >> 62)
  {
    goto LABEL_77;
  }

  v8 = *((v39 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v40 = MEMORY[0x277D84F90];
    if (v8)
    {
      v80[0] = MEMORY[0x277D84F90];
      v41 = v39;

      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8 & ~(v8 >> 63), 0);
      if (v8 < 0)
      {
        goto LABEL_80;
      }

      v42 = 0;
      v5 = v80[0];
      v43 = v41;
      v75 = v41 & 0xC000000000000001;
      v76 = v41;
      do
      {
        if (v75)
        {
          v44 = MEMORY[0x266772030](v42, v43);
        }

        else
        {
          v44 = *(v43 + 8 * v42 + 32);
        }

        v45 = v44;
        v6 = *&v44[OBJC_IVAR___SGOutput_name];
        v46 = *&v44[OBJC_IVAR___SGOutput_name + 8];
        v47 = OBJC_IVAR___SGOutput_type;
        swift_beginAccess();
        v48 = *&v45[v47];

        v80[0] = v5;
        v15 = *(v5 + 16);
        v49 = *(v5 + 24);
        if (v15 >= v49 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), (v15 + 1), 1);
          v5 = v80[0];
        }

        ++v42;
        *(v5 + 16) = v15 + 1;
        v50 = (v5 + 24 * v15);
        v50[4] = v6;
        v50[5] = v46;
        v50[6] = v48;
        v43 = v76;
      }

      while (v8 != v42);

      v40 = MEMORY[0x277D84F90];
    }

    else
    {
      v5 = MEMORY[0x277D84F90];
    }

    v8 = *&v72[OBJC_IVAR___SGGraph_name];
    v16 = *&v72[OBJC_IVAR___SGGraph_name + 8];
    v83 = v40;
    v4 = *a2;
    if (__OFADD__(*a2, 1))
    {
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
      goto LABEL_81;
    }

    ++*a2;
    swift_beginAccess();

    v52 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11ShaderGraph6SGNodeCG_SO_AF0E0V4NodeVyAF010SGDataTypeE0V11PersonalityV_GtsAE_pTg504_s11d8Graph010hi104B0V_10idSequence9constantsAcA7SGGraphC_AA015InfiniteIntegerF0VzSayAA21FunctionConstantValueVGtKcfcSO_AA0m2V4g6VyAC11j7V_GtAA6F8CKXEfU1_SiAF0tU8SequenceVAKyAQGTf1cn_n(v51, v4, a2, &v83);
    if (v66)
    {
      break;
    }

    v54 = v52;

    if (*(v54 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySO11ShaderGraph0D0V4NodeVyAC010SGDataTypeD0V11PersonalityV_GGMd, &_ss18_DictionaryStorageCySO11ShaderGraph0D0V4NodeVyAC010SGDataTypeD0V11PersonalityV_GGMR);
      v55 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v55 = MEMORY[0x277D84F98];
    }

    v79[0] = v55;

    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v56, 1, v79);

    v76 = v79[0];
    if (*(_sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay11ShaderGraph21FunctionConstantValueVG_SS_AF0E0V4NodeVyAF010SGDataTypeE0V11PersonalityV_Gts5NeverOTg504_s11d8Graph010jk70B0V_10idSequence9constantsAcA7SGGraphC_AA015InfiniteIntegerF0VzSayAA21fgh13VGtKcfcSS_AA0p2V4i6VyAC11L12V_GtAKXEfU2_SiAKyAQGTf1cn_n(a3, v4, &v83) + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS11ShaderGraph0D0V4NodeVyAC010SGDataTypeD0V11PersonalityV_GGMd, &_ss18_DictionaryStorageCySS11ShaderGraph0D0V4NodeVyAC010SGDataTypeD0V11PersonalityV_GGMR);
      v57 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v57 = MEMORY[0x277D84F98];
    }

    v79[0] = v57;

    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v58, 1, v79);
    v15 = 0;

    v75 = v79[0];
    v59 = OBJC_IVAR___SGGraph_edges;
    swift_beginAccess();
    v6 = *&v72[v59];
    if (!(v6 >> 62))
    {
      v60 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      goto LABEL_63;
    }

LABEL_81:
    v60 = __CocoaSet.count.getter();
LABEL_63:
    v71 = v4;
    v74 = v16;

    v72 = v72;

    if (!v60)
    {
LABEL_73:

      swift_bridgeObjectRelease_n();

      v63 = v83;
      *a4 = v71;
      a4[1] = v8;
      a4[2] = v74;
      a4[3] = v77;
      a4[4] = v5;
      a4[5] = v63;
      return result;
    }

    v16 = 0;
    v4 = v6 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v39 = MEMORY[0x266772030](v16, v6);
      }

      else
      {
        if (v16 >= *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_76;
        }

        v39 = *(v6 + 8 * v16 + 32);
      }

      v61 = v39;
      v62 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      v78 = v39;
      closure #5 in SGDataTypeGraph.init(_:idSequence:constants:)(&v78, v76, a3, v72, v75, &v83);
      if (v15)
      {

        goto LABEL_54;
      }

      ++v16;
      if (v62 == v60)
      {
        goto LABEL_73;
      }
    }

    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    v64 = v39;
    v8 = __CocoaSet.count.getter();
    v39 = v64;
  }

LABEL_54:
}

uint64_t specialized SGDataTypeGraph.Personality.operationalDescription(replacements:)(uint64_t a1, unint64_t a2)
{
  if (a2 >> 62)
  {
    if (a2 >> 62 == 1)
    {
      return 0x6870617267627573;
    }

    else
    {
      v4 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x20);
      v5 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x30);
      v6 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x40);
      v7 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x50);
      v19 = *((a2 & 0x3FFFFFFFFFFFFFFFLL) + 0x60);
      v18[0] = v4;
      v18[1] = v5;
      v18[2] = v6;
      v18[3] = v7;
      if (v19 == 6)
      {
        v9 = *(&v18[0] + 1);
        v10 = *&v18[0];
        v11 = *(a1 + 16);

        if (v11)
        {
          v12 = specialized __RawDictionaryStorage.find<A>(_:)(*&v18[0], *(&v18[0] + 1));
          if (v13)
          {
            v14 = (*(a1 + 56) + 16 * v12);
            v10 = *v14;
            v9 = v14[1];

            outlined destroy of SGDataTypeStorage(v18);
          }
        }

        v15 = SGDataType.stringValue.getter();
        MEMORY[0x266771550](v15);

        MEMORY[0x266771550](95, 0xE100000000000000);
        MEMORY[0x266771550](v10, v9);
      }

      else
      {
        v16 = SGDataType.stringValue.getter();
        MEMORY[0x266771550](v16);

        MEMORY[0x266771550](95, 0xE100000000000000);
        v17 = SGDataTypeStorage.valueString.getter();
        MEMORY[0x266771550](v17);
      }

      return 24419;
    }
  }

  else
  {
    v3 = *(a2 + 16);

    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type SGDataTypeGraph.NodeID and conformance SGDataTypeGraph.NodeID()
{
  result = lazy protocol witness table cache variable for type SGDataTypeGraph.NodeID and conformance SGDataTypeGraph.NodeID;
  if (!lazy protocol witness table cache variable for type SGDataTypeGraph.NodeID and conformance SGDataTypeGraph.NodeID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGDataTypeGraph.NodeID and conformance SGDataTypeGraph.NodeID);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SGDataTypeGraph.NodeID and conformance SGDataTypeGraph.NodeID;
  if (!lazy protocol witness table cache variable for type SGDataTypeGraph.NodeID and conformance SGDataTypeGraph.NodeID)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGDataTypeGraph.NodeID and conformance SGDataTypeGraph.NodeID);
  }

  return result;
}

unint64_t specialized Graph.connectedInputIndices(for:)(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (*(a2 + 16) > result)
  {
    v2 = a2 + 88 * result;
    v3 = *(v2 + 104);
    v4 = *(v2 + 112);
    v5 = *(v4 + 16);

    v6 = 0;
    v7 = MEMORY[0x277D84F90];
LABEL_4:
    if (v6 <= v5)
    {
      v8 = v5;
    }

    else
    {
      v8 = v6;
    }

    v9 = (v4 + 48 + 24 * v6);
    while (1)
    {
      if (v8 == v6)
      {

        return v7;
      }

      if (v6 >= *(v3 + 16))
      {
        break;
      }

      if (v6 >= *(v4 + 16))
      {
        goto LABEL_19;
      }

      ++v6;
      v10 = v9 + 24;
      v11 = *v9;
      v9 += 24;
      if ((v11 & 1) == 0)
      {
        v14 = *(v10 - 40);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 16) + 1, 1, v7);
          v7 = result;
        }

        v13 = *(v7 + 16);
        v12 = *(v7 + 24);
        if (v13 >= v12 >> 1)
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1, v7);
          v7 = result;
        }

        *(v7 + 16) = v13 + 1;
        *(v7 + 16 * v13 + 32) = v14;
        goto LABEL_4;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

LABEL_21:
  __break(1u);
  return result;
}

void *specialized SGDataTypeGraph.subgraphNodes()(uint64_t a1)
{
  specialized SGDataTypeGraph.resultNode.getter(v32, a1);
  v2 = v33;
  if (v33)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph0E0V4NodeVyAC010SGDataTypeE0V11PersonalityV_GGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph0E0V4NodeVyAC010SGDataTypeE0V11PersonalityV_GGMR);
    v3 = swift_allocObject();
    v4 = v32[1];
    *(v3 + 32) = v32[0];
    *(v3 + 48) = v4;
    *(v3 + 16) = xmmword_265F1F670;
    *(v3 + 64) = v2;

    outlined destroy of [Input](v32, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_GSgMd, &_s11ShaderGraph0B0V4NodeVyAA010SGDataTypeB0V11PersonalityV_GSgMR);
  }

  else
  {
    v3 = MEMORY[0x277D84F90];
  }

  v5 = MEMORY[0x277D84F90];
  *&v27 = a1;
  *(&v27 + 1) = v3;
  *&v28 = _s11ShaderGraph10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufCSi_SaySiGTt0g5(MEMORY[0x277D84F90]);
  *(&v28 + 1) = v6;
  *&v29 = _s11ShaderGraph10OrderedSetVyACyxGqd__c7ElementQyd__RszSkRd__lufCSi_SaySiGTt0g5(v5);
  *(&v29 + 1) = v7;
  *&v30 = _s11ShaderGraph17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufCSi_s16IndexingIteratorVySayAA0B5IndexVGGSaySi_AMtGTt0g5Tf4g_n(v5);
  *(&v30 + 1) = v8;
  v31 = v9;
  v24 = v29;
  v25 = v30;
  v26 = v9;
  v22 = v27;
  v23 = v28;
  outlined init with copy of [Input](&v27, v20, &_s11ShaderGraph29ShallowDepthFirstNodeIteratorVyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph29ShallowDepthFirstNodeIteratorVyAA010SGDataTypeB0V11PersonalityVGMR);
  specialized ShallowDepthFirstNodeIterator.next()(&v34);
  v10 = v38;
  if (v38)
  {
    v11 = v36;
    v12 = v37;
    v13 = v35;
    while (v11 >> 62 == 1)
    {
      v14 = v10;
LABEL_11:
      v15 = v34;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v5[2] + 1, 1, v5);
      }

      v17 = v5[2];
      v16 = v5[3];
      if (v17 >= v16 >> 1)
      {
        v5 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1, v5);
      }

      v5[2] = v17 + 1;
      v18 = &v5[5 * v17];
      v18[4] = v15;
      v18[5] = v13;
      v18[6] = v11;
      v18[7] = v12;
      v18[8] = v14;
      specialized ShallowDepthFirstNodeIterator.next()(&v34);
      v13 = v35;
      v11 = v36;
      v12 = v37;
      v10 = v38;
      if (!v38)
      {
        goto LABEL_16;
      }
    }

    while (1)
    {

      specialized ShallowDepthFirstNodeIterator.next()(&v34);
      if (!v38)
      {
        break;
      }

      v11 = v36;
      if (v36 >> 62 == 1)
      {
        v14 = v38;
        v13 = v35;
        v12 = v37;
        goto LABEL_11;
      }
    }
  }

LABEL_16:
  outlined destroy of [Input](&v27, &_s11ShaderGraph29ShallowDepthFirstNodeIteratorVyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph29ShallowDepthFirstNodeIteratorVyAA010SGDataTypeB0V11PersonalityVGMR);
  v20[2] = v24;
  v20[3] = v25;
  v21 = v26;
  v20[0] = v22;
  v20[1] = v23;
  outlined destroy of [Input](v20, &_s11ShaderGraph29ShallowDepthFirstNodeIteratorVyAA010SGDataTypeB0V11PersonalityVGMd, &_s11ShaderGraph29ShallowDepthFirstNodeIteratorVyAA010SGDataTypeB0V11PersonalityVGMR);
  return v5;
}

uint64_t specialized SGDataTypeGraph.structuralEdgeList(topologicalSort:textureMapping:)(uint64_t *a1, uint64_t a2)
{
  v4 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDyS2SG_SS_SSts5NeverOTg5149_s11ShaderGraph010SGDataTypeB0V18structuralEdgeList15topologicalSort14textureMappingSaySSGAC011TopologicalI0V_SDyS2SGtKFSS_SStSS3key_SS5valuet_tXEfU_Tf1cn_n(a2);
  if (*(v4 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
    v5 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v5 = MEMORY[0x277D84F98];
  }

  *&v27[0] = v5;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v4, 1, v27);
  if (v2)
  {

    __break(1u);
  }

  else
  {

    v6 = *&v27[0];
    v7 = *a1;
    v8 = MEMORY[0x277D84F90];
    v29 = MEMORY[0x277D84F90];
    v9 = *(v7 + 16);
    if (v9)
    {
      v10 = v7 + 32;
      do
      {
        v11 = *(v10 + 16);
        v27[0] = *v10;
        v27[1] = v11;
        v12 = *(v10 + 32);
        v13 = *(v10 + 48);
        v14 = *(v10 + 64);
        v28 = *(v10 + 80);
        v27[3] = v13;
        v27[4] = v14;
        v27[2] = v12;
        v15 = *(v10 + 48);
        v23 = *(v10 + 32);
        v24 = v15;
        v25 = *(v10 + 64);
        v26 = *(v10 + 80);
        v16 = *(v10 + 16);
        v21 = *v10;
        v22 = v16;
        outlined init with copy of SGDataTypeGraph.TopologicalSort.Element(v27, v18);
        closure #3 in SGDataTypeGraph.structuralEdgeList(topologicalSort:textureMapping:)(&v21, a1, v6, &v20);
        v18[2] = v23;
        v18[3] = v24;
        v18[4] = v25;
        v19 = v26;
        v18[0] = v21;
        v18[1] = v22;
        outlined destroy of SGDataTypeGraph.TopologicalSort.Element(v18);
        specialized Array.append<A>(contentsOf:)(v20);
        v10 += 88;
        --v9;
      }

      while (v9);
      v8 = v29;
    }

    return v8;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SGDataTypeGraph.PersonalityKind and conformance SGDataTypeGraph.PersonalityKind()
{
  result = lazy protocol witness table cache variable for type SGDataTypeGraph.PersonalityKind and conformance SGDataTypeGraph.PersonalityKind;
  if (!lazy protocol witness table cache variable for type SGDataTypeGraph.PersonalityKind and conformance SGDataTypeGraph.PersonalityKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGDataTypeGraph.PersonalityKind and conformance SGDataTypeGraph.PersonalityKind);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SGDataTypeGraph.Personality and conformance SGDataTypeGraph.Personality()
{
  result = lazy protocol witness table cache variable for type SGDataTypeGraph.Personality and conformance SGDataTypeGraph.Personality;
  if (!lazy protocol witness table cache variable for type SGDataTypeGraph.Personality and conformance SGDataTypeGraph.Personality)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGDataTypeGraph.Personality and conformance SGDataTypeGraph.Personality);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SGDataTypeGraph.Personality and conformance SGDataTypeGraph.Personality;
  if (!lazy protocol witness table cache variable for type SGDataTypeGraph.Personality and conformance SGDataTypeGraph.Personality)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGDataTypeGraph.Personality and conformance SGDataTypeGraph.Personality);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SGDataTypeGraph and conformance SGDataTypeGraph()
{
  result = lazy protocol witness table cache variable for type SGDataTypeGraph and conformance SGDataTypeGraph;
  if (!lazy protocol witness table cache variable for type SGDataTypeGraph and conformance SGDataTypeGraph)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGDataTypeGraph and conformance SGDataTypeGraph);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SGDataTypeGraph.TopologicalSort.GraphNodeIndex and conformance SGDataTypeGraph.TopologicalSort.GraphNodeIndex()
{
  result = lazy protocol witness table cache variable for type SGDataTypeGraph.TopologicalSort.GraphNodeIndex and conformance SGDataTypeGraph.TopologicalSort.GraphNodeIndex;
  if (!lazy protocol witness table cache variable for type SGDataTypeGraph.TopologicalSort.GraphNodeIndex and conformance SGDataTypeGraph.TopologicalSort.GraphNodeIndex)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SGDataTypeGraph.TopologicalSort.GraphNodeIndex and conformance SGDataTypeGraph.TopologicalSort.GraphNodeIndex);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuiltInDefinition.InputSpec and conformance BuiltInDefinition.InputSpec()
{
  result = lazy protocol witness table cache variable for type BuiltInDefinition.InputSpec and conformance BuiltInDefinition.InputSpec;
  if (!lazy protocol witness table cache variable for type BuiltInDefinition.InputSpec and conformance BuiltInDefinition.InputSpec)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuiltInDefinition.InputSpec and conformance BuiltInDefinition.InputSpec);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BuiltInDefinition.InputSpec and conformance BuiltInDefinition.InputSpec;
  if (!lazy protocol witness table cache variable for type BuiltInDefinition.InputSpec and conformance BuiltInDefinition.InputSpec)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuiltInDefinition.InputSpec and conformance BuiltInDefinition.InputSpec);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type BuiltInDefinition.OutputSpec and conformance BuiltInDefinition.OutputSpec()
{
  result = lazy protocol witness table cache variable for type BuiltInDefinition.OutputSpec and conformance BuiltInDefinition.OutputSpec;
  if (!lazy protocol witness table cache variable for type BuiltInDefinition.OutputSpec and conformance BuiltInDefinition.OutputSpec)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuiltInDefinition.OutputSpec and conformance BuiltInDefinition.OutputSpec);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type BuiltInDefinition.OutputSpec and conformance BuiltInDefinition.OutputSpec;
  if (!lazy protocol witness table cache variable for type BuiltInDefinition.OutputSpec and conformance BuiltInDefinition.OutputSpec)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type BuiltInDefinition.OutputSpec and conformance BuiltInDefinition.OutputSpec);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for SGDataTypeGraph.Personality(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SGDataTypeGraph.Personality and conformance SGDataTypeGraph.Personality();
  *(a1 + 8) = result;
  return result;
}

__n128 __swift_memcpy48_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SGDataTypeGraph(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SGDataTypeGraph(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SGDataTypeGraph.PersonalityKind(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 8))
  {
    return (*a1 + 126);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for SGDataTypeGraph.PersonalityKind(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SGDataTypeGraph.TopologicalSort(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SGDataTypeGraph.TopologicalSort(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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
      *result = (a2 - 1);
      return result;
    }

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy88_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SGDataTypeGraph.TopologicalSort.Element(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SGDataTypeGraph.TopologicalSort.Element(uint64_t result, int a2, int a3)
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
      *(result + 32) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for _HashTable.Header(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _HashTable.Header(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 16) = v3;
  return result;
}

uint64_t _s11ShaderGraph17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufCSO_s16IndexingIteratorVySayAA6SGNodeCGGSaySO_AMtGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = MEMORY[0x277D84F90];
  v16 = MEMORY[0x277D84F90];
  v3 = *(a1 + 16);
  specialized OrderedSet._reserveCapacity(_:persistent:)(v3, 0, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), _s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVySiG_Tt2g5);
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v3, 0);
  v4 = v2;
  if (!v3)
  {
    return 0;
  }

  v5 = 0;
  while (1)
  {
    v6 = (a1 + 32 + 24 * v5);
    v7 = *v6;
    v8 = v6[2];
    v9 = (v16 + 32);
    v15 = v6[1];
    v10 = *(v16 + 16);
    if (v10)
    {
      break;
    }

LABEL_6:

    specialized OrderedSet._appendNew(_:in:)(v7, 0);
    v12 = *(v4 + 16);
    v11 = *(v4 + 24);
    if (v12 >= v11 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1);
    }

    ++v5;
    *(v4 + 16) = v12 + 1;
    v13 = v4 + 16 * v12;
    *(v13 + 32) = v15;
    *(v13 + 40) = v8;
    if (v5 == v3)
    {
      return 0;
    }
  }

  while (*v9 != v7)
  {
    ++v9;
    if (!--v10)
    {
      goto LABEL_6;
    }
  }

  __break(1u);
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t _s11ShaderGraph17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufCSS_So11MTLFunction_pSaySS_SoAH_ptGTt0g5Tf4g_n(uint64_t a1)
{
  v12 = MEMORY[0x277D84F90];
  _ss15ContiguousArrayV12arrayLiteralAByxGxd_tcfCSo11MTLFunction_p_Tt0g5(MEMORY[0x277D84F90]);
  v2 = *(a1 + 16);
  specialized OrderedSet._reserveCapacity(_:persistent:)(v2, 0, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), _s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVySSG_Tt2g5);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = a1 + 32;
  while (1)
  {
    v5 = (v4 + 24 * v3);
    v7 = *v5;
    v6 = v5[1];
    v8 = *(v12 + 16);
    if (v8)
    {
      break;
    }

LABEL_12:

    swift_unknownObjectRetain();
    ++v3;
    specialized OrderedSet._appendNew(_:in:)(v7, v6, 0);
    swift_unknownObjectRetain();
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    swift_unknownObjectRelease();

    if (v3 == v2)
    {
      return 0;
    }
  }

  v9 = (v12 + 40);
  while (1)
  {
    v10 = *(v9 - 1) == v7 && *v9 == v6;
    if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v9 += 2;
    if (!--v8)
    {
      goto LABEL_12;
    }
  }

  result = swift_unknownObjectRetain();
  __break(1u);
  __break(1u);
  return result;
}

id _s11ShaderGraph17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufCSS_AA6SGNodeCSaySS_AItGTt0g5Tf4g_n(uint64_t a1)
{
  v15 = MEMORY[0x277D84F90];
  _ss15ContiguousArrayV12arrayLiteralAByxGxd_tcfC11ShaderGraph6SGNodeC_Tt0g5(MEMORY[0x277D84F90]);
  v2 = *(a1 + 16);
  specialized OrderedSet._reserveCapacity(_:persistent:)(v2, 0, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), _s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVySSG_Tt2g5);
  specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = a1 + 32;
  while (1)
  {
    v6 = (v4 + 24 * v3);
    v8 = *v6;
    v7 = v6[1];
    v9 = v6[2];
    v10 = *(v15 + 16);
    if (v10)
    {
      break;
    }

LABEL_12:

    v13 = v9;
    ++v3;
    specialized OrderedSet._appendNew(_:in:)(v8, v7, 0);
    v5 = v9;
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();

    if (v3 == v2)
    {
      return 0;
    }
  }

  v11 = (v15 + 40);
  while (1)
  {
    v12 = *(v11 - 1) == v8 && *v11 == v7;
    if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v11 += 2;
    if (!--v10)
    {
      goto LABEL_12;
    }
  }

  result = v9;
  __break(1u);
  __break(1u);
  return result;
}

uint64_t _s11ShaderGraph17OrderedDictionaryV20uniqueKeysWithValuesACyxq_Gqd___tcSTRd__x_q_t7ElementRtd__lufCAA14FunctionNodeIDV_So020MTLFunctionStitchingK0_pSayAI_SoAJ_ptGTt0g5Tf4g_n(uint64_t a1)
{
  v9 = MEMORY[0x277D84F90];
  _ss15ContiguousArrayV12arrayLiteralAByxGxd_tcfCSo24MTLFunctionStitchingNode_p_Tt0g5(MEMORY[0x277D84F90]);
  v2 = *(a1 + 16);
  specialized OrderedSet._reserveCapacity(_:persistent:)(v2, 0, specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), _s11ShaderGraph10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVyAA0aB4NodeV2IDVG_Tt2g5);
  result = specialized ContiguousArray.reserveCapacity(_:)();
  if (!v2)
  {
    return 0;
  }

  v4 = 0;
  while (1)
  {
    v5 = *(a1 + 32 + 16 * v4);
    v6 = (v9 + 32);
    v7 = *(v9 + 16);
    if (v7)
    {
      break;
    }

LABEL_3:
    ++v4;
    swift_unknownObjectRetain();
    specialized OrderedSet._appendNew(_:in:)(v5, 0);
    swift_unknownObjectRetain();
    specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
    specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
    specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    specialized ContiguousArray._endMutation()();
    result = swift_unknownObjectRelease();
    if (v4 == v2)
    {
      return 0;
    }
  }

  while (1)
  {
    v8 = *v6++;
    if (v8 == v5)
    {
      break;
    }

    if (!--v7)
    {
      goto LABEL_3;
    }
  }

  __break(1u);
  return result;
}

unint64_t lazy protocol witness table accessor for type APIError and conformance APIError()
{
  result = lazy protocol witness table cache variable for type APIError and conformance APIError;
  if (!lazy protocol witness table cache variable for type APIError and conformance APIError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type APIError and conformance APIError);
  }

  return result;
}

double partial apply for specialized closure #1 in Graph.Node.inputs.getter@<D0>(unint64_t *a1@<X0>, _OWORD *a2@<X8>)
{
  return specialized closure #1 in Graph.Node.inputs.getter(a1, *(v2 + 16), a2);
}

{
  specialized closure #1 in Graph.Node.inputs.getter(*a1, **(v2 + 16), *(*(v2 + 16) + 16), &v7);
  if (!v3)
  {
    v6 = v8[0];
    *a2 = v7;
    a2[1] = v6;
    result = *(v8 + 9);
    *(a2 + 25) = *(v8 + 9);
  }

  return result;
}

void outlined copy of Graph<SGDataTypeGraph.Personality>.Node?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
  }
}

uint64_t sub_265DB7410()
{
  outlined consume of SGDataTypeStorage(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96));

  return MEMORY[0x2821FE8E8](v0, 97, 15);
}

uint64_t *partial apply for specialized closure #2 in Graph.Adjacent.init(_:)@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  *a2 = **(v2 + 16);
  a2[1] = v3;
  return result;
}

uint64_t sub_265DB7528()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_265DB75D4()
{

  if ((*(v0 + 56) - 1) >= 3)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

void outlined consume of Graph<SGDataTypeGraph.Personality>.Node?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
  }
}

uint64_t OrderedSet.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18[1] = a5;
  v7 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = ContiguousArray.count.getter();
  result = MEMORY[0x266772770](v10);
  v12 = *(a3 + 16);
  if (v12)
  {
    v15 = *(v7 + 16);
    v13 = v7 + 16;
    v14 = v15;
    v16 = a3 + ((*(v13 + 64) + 32) & ~*(v13 + 64));
    v17 = *(v13 + 56);
    do
    {
      v14(v9, v16, a4);
      dispatch thunk of Hashable.hash(into:)();
      result = (*(v13 - 8))(v9, a4);
      v16 += v17;
      --v12;
    }

    while (v12);
  }

  return result;
}

Swift::Int OrderedSet.hashValue.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  Hasher.init(_seed:)();
  OrderedSet.hash(into:)(v9, v7, a2, a3, a4);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance OrderedSet<A>(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  OrderedSet.hash(into:)(v6, v4, *(v2 + 8), *(a2 + 16), *(a2 + 24));
  return Hasher._finalize()();
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDyS2SG_11ShaderGraph7XMLNode_ps5NeverOTg504_s11d26Graph17XMLParserDelegateC7b39C4name10attributesAESS_SDyS2SGSgtcfcAA7F25_pSS3key_SS5valuet_tXEfU_Tf1cn_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x277D84F90];
  if (!v1)
  {
    return v2;
  }

  v3 = a1;
  v34 = MEMORY[0x277D84F90];
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
  v2 = v34;
  v4 = v3 + 64;
  result = _HashTable.startBucket.getter();
  v6 = result;
  v7 = 0;
  v8 = *(v3 + 36);
  v28 = v3 + 72;
  v29 = v1;
  v30 = v8;
  v31 = v3 + 64;
  v32 = v3;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v3 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_22;
    }

    if (v8 != *(v3 + 36))
    {
      goto LABEL_23;
    }

    v33 = v7;
    v11 = (*(v3 + 48) + 16 * v6);
    v12 = *v11;
    v13 = v11[1];
    v14 = (*(v3 + 56) + 16 * v6);
    v16 = *v14;
    v15 = v14[1];
    type metadata accessor for XMLParserDelegate.StringNode();
    v17 = swift_allocObject();
    v17[3] = 0;
    swift_unknownObjectWeakInit();
    v17[4] = v12;
    v17[5] = v13;
    v17[6] = MEMORY[0x277D84F90];
    v17[7] = v16;
    v17[8] = v15;
    v17[9] = 0;
    v19 = *(v34 + 16);
    v18 = *(v34 + 24);

    if (v19 >= v18 >> 1)
    {
      result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
    }

    *(v34 + 16) = v19 + 1;
    v20 = v34 + 16 * v19;
    *(v20 + 32) = v17;
    *(v20 + 40) = &protocol witness table for XMLParserDelegate.StringNode;
    v3 = v32;
    v9 = 1 << *(v32 + 32);
    if (v6 >= v9)
    {
      goto LABEL_24;
    }

    v4 = v31;
    v21 = *(v31 + 8 * v10);
    if ((v21 & (1 << v6)) == 0)
    {
      goto LABEL_25;
    }

    v8 = v30;
    if (v30 != *(v32 + 36))
    {
      goto LABEL_26;
    }

    v22 = v21 & (-2 << (v6 & 0x3F));
    if (v22)
    {
      v9 = __clz(__rbit64(v22)) | v6 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v23 = v10 << 6;
      v24 = v10 + 1;
      v25 = (v28 + 8 * v10);
      while (v24 < (v9 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = outlined consume of [String : String].Index._Variant(v6, v30, 0);
          v9 = __clz(__rbit64(v26)) + v23;
          goto LABEL_4;
        }
      }

      result = outlined consume of [String : String].Index._Variant(v6, v30, 0);
    }

LABEL_4:
    v7 = v33 + 1;
    v6 = v9;
    if (v33 + 1 == v29)
    {
      return v2;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

uint64_t outlined copy of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t XMLDocument.rootElement()(uint64_t a1, uint64_t a2, char a3)
{
  v4 = objc_allocWithZone(MEMORY[0x277CCAE70]);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v6 = [v4 initWithData_];

  v7 = [objc_allocWithZone(type metadata accessor for XMLParserDelegate()) init];
  [v6 setDelegate_];
  [v6 parse];
  v8 = &v7[OBJC_IVAR____TtC11ShaderGraph17XMLParserDelegate_rootElement];
  swift_beginAccess();
  v9 = *v8;
  if (!*v8)
  {
    v14 = v6;
    v6 = v7;
LABEL_8:

    return v9;
  }

  if ((a3 & 1) == 0)
  {
    swift_unknownObjectRetain();
    goto LABEL_7;
  }

  ObjectType = swift_getObjectType();
  result = swift_conformsToProtocol2();
  if (result)
  {
    v12 = result;
    v13 = *(result + 24);
    swift_unknownObjectRetain_n();
    v13(ObjectType, v12);
    swift_unknownObjectRelease();
LABEL_7:
    v14 = v7;
    goto LABEL_8;
  }

  __break(1u);
  return result;
}

id XMLParserDelegate.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void *protocol witness for SetAlgebra.remove(_:) in conformance XMLDocument.Options@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *v2 & *result;
  if (v3)
  {
    *v2 &= ~*result;
  }

  *a2 = v3;
  *(a2 + 8) = v3 == 0;
  return result;
}

uint64_t *protocol witness for SetAlgebra.update(with:) in conformance XMLDocument.Options@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance XMLDocument.Options@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
  return result;
}

uint64_t XMLNodePrivate.detach()(uint64_t a1, uint64_t a2)
{
  result = (*(*(a2 + 8) + 8))();
  if (result)
  {
    v7 = v6;
    ObjectType = swift_getObjectType();
    v9 = (*(v7 + 24))(ObjectType, v7);
    if (v9)
    {
      v10 = *(v9 + 16);
      if (v10)
      {
        v11 = 0;
        v12 = 32;
        while (*(v9 + v12) != v2)
        {
          ++v11;
          v12 += 16;
          if (v10 == v11)
          {
            goto LABEL_7;
          }
        }

        v13 = swift_getObjectType();
        result = swift_conformsToProtocol2();
        if (!result)
        {
          __break(1u);
          return result;
        }

        v14 = (*(result + 40))(v16, v13, result);
        if (*v15)
        {
          specialized Array.remove(at:)(v11);
          swift_unknownObjectRelease();
        }

        v14(v16, 0);
      }

      else
      {
LABEL_7:
      }
    }

    (*(a2 + 16))(0, 0, a1, a2);
    return swift_unknownObjectRelease();
  }

  return result;
}

Swift::Void __swiftcall XMLNode.dump(indentLevel:)(Swift::Int indentLevel)
{
  v58 = v1;
  v59 = v2;
  v5._countAndFlagsBits = 538976288;
  v5._object = 0xE400000000000000;
  v57 = indentLevel;
  v6 = String.init(repeating:count:)(v5, indentLevel);
  countAndFlagsBits = v6._countAndFlagsBits;
  object = v6._object;
  swift_getObjectType();
  v9 = swift_conformsToProtocol2();
  v10 = 0;
  v11 = 0;
  if (!v9 || !v3)
  {
    goto LABEL_22;
  }

  v12 = v9;
  ObjectType = swift_getObjectType();
  v14 = (*(*(v12 + 8) + 40))(ObjectType);
  if (!v14)
  {
    v10 = 0;
    v11 = 0;
    goto LABEL_22;
  }

  v15 = *(v14 + 16);
  if (!v15)
  {

LABEL_21:
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance [A]();
    v10 = BidirectionalCollection<>.joined(separator:)();
    v11 = v32;

LABEL_22:
    v33 = (*(v59 + 24))(v58);
    if (v33)
    {
      v34 = v33;
      v35 = *(v33 + 16);
      if (v35)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
        v36 = swift_allocObject();
        *(v36 + 16) = xmmword_265F1F670;
        v61 = *(v59 + 16);
        v37 = v61(v58);
        if (v38)
        {
          v39 = v38;
        }

        else
        {
          v37 = 0x3E6C696E3CLL;
          v39 = 0xE500000000000000;
        }

        MEMORY[0x266771550](v37, v39);

        MEMORY[0x266771550](32, 0xE100000000000000);
        if (v11)
        {
          v40 = v10;
        }

        else
        {
          v40 = 0;
        }

        if (v11)
        {
          v41 = v11;
        }

        else
        {
          v41 = 0xE000000000000000;
        }

        MEMORY[0x266771550](v40, v41);

        MEMORY[0x266771550](62, 0xE100000000000000);
        v56 = countAndFlagsBits;

        MEMORY[0x266771550](60, 0xE100000000000000);

        *(v36 + 56) = MEMORY[0x277D837D0];
        *(v36 + 32) = countAndFlagsBits;
        *(v36 + 40) = object;
        print(_:separator:terminator:)();

        v42 = 0;
        v43 = __OFADD__(v57, 1);
        v44 = v34 + 40;
        do
        {
          if (v42 >= *(v34 + 16))
          {
            __break(1u);
LABEL_57:
            __break(1u);
            goto LABEL_58;
          }

          if (v43)
          {
            goto LABEL_57;
          }

          ++v42;
          swift_getObjectType();
          swift_unknownObjectRetain();
          XMLNode.dump(indentLevel:)(v57 + 1);
          swift_unknownObjectRelease();
          v44 += 16;
        }

        while (v35 != v42);

        v45 = swift_allocObject();
        *(v45 + 16) = xmmword_265F1F670;
        v46 = (v61)(v58, v59);
        if (v47)
        {
          v48 = v47;
        }

        else
        {
          v46 = 0x3E6C696E3CLL;
          v48 = 0xE500000000000000;
        }

        MEMORY[0x266771550](v46, v48);

        MEMORY[0x266771550](62, 0xE100000000000000);
        v49 = 12092;
        v50 = 0xE200000000000000;
        v63 = v56;
        goto LABEL_55;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyypGMd, &_ss23_ContiguousArrayStorageCyypGMR);
    v45 = swift_allocObject();
    *(v45 + 16) = xmmword_265F1F670;
    v51 = (*(v59 + 16))(v58);
    if (v52)
    {
      v53 = v52;
    }

    else
    {
      v51 = 0x3E6C696E3CLL;
      v53 = 0xE500000000000000;
    }

    MEMORY[0x266771550](v51, v53);

    MEMORY[0x266771550](32, 0xE100000000000000);
    if (v11)
    {
      v54 = v10;
    }

    else
    {
      v54 = 0;
    }

    if (v11)
    {
      v55 = v11;
    }

    else
    {
      v55 = 0xE000000000000000;
    }

    MEMORY[0x266771550](v54, v55);

    MEMORY[0x266771550](4075296, 0xE300000000000000);
    v49 = 60;
    v50 = 0xE100000000000000;
    v63 = countAndFlagsBits;
LABEL_55:

    MEMORY[0x266771550](v49, v50);

    *(v45 + 56) = MEMORY[0x277D837D0];
    *(v45 + 32) = v63;
    *(v45 + 40) = object;
    print(_:separator:terminator:)();

    return;
  }

  v62 = MEMORY[0x277D84F90];
  v16 = v14;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v15, 0);
  v17 = v16;
  v18 = 0;
  v19 = (v16 + 40);
  v60 = v16;
  while (v18 < *(v17 + 16))
  {
    v20 = *v19;
    v21 = swift_getObjectType();
    v22 = (*(v20 + 16))(v21, v20);
    if (!v23)
    {
      v22 = 0x3E6C696E3CLL;
    }

    v24 = 0xE500000000000000;
    if (v23)
    {
      v25 = v23;
    }

    else
    {
      v25 = 0xE500000000000000;
    }

    MEMORY[0x266771550](v22, v25);

    MEMORY[0x266771550](61, 0xE100000000000000);
    v26 = (*(v20 + 32))(v21, v20);
    if (v27)
    {
      MEMORY[0x266771550](v26);
      MEMORY[0x266771550](34, 0xE100000000000000);

      v28 = 34;
      v24 = 0xE100000000000000;
    }

    else
    {
      v28 = 0x3E6C696E3CLL;
    }

    MEMORY[0x266771550](v28, v24);

    v30 = *(v62 + 16);
    v29 = *(v62 + 24);
    if (v30 >= v29 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v29 > 1), v30 + 1, 1);
    }

    ++v18;
    *(v62 + 16) = v30 + 1;
    v31 = v62 + 16 * v30;
    *(v31 + 32) = 0;
    *(v31 + 40) = 0xE000000000000000;
    v19 += 2;
    v17 = v60;
    if (v15 == v18)
    {

      countAndFlagsBits = v6._countAndFlagsBits;
      object = v6._object;
      goto LABEL_21;
    }
  }

LABEL_58:
  __break(1u);
}

uint64_t XMLElementPrivate.replaceIncludeStatements()(uint64_t a1, uint64_t a2)
{
  result = (*(*(*(a2 + 8) + 8) + 24))();
  if (result)
  {
    v6 = result;
    v7 = *(result + 16);
    if (v7)
    {
      v8 = 0;
      while (v8 < *(v6 + 16))
      {
        v9 = v8 + 1;
        v10 = *(v6 + 32 + 16 * v8);
        swift_unknownObjectRetain();
        closure #1 in XMLElementPrivate.replaceIncludeStatements()(&v10, v2, a1, a2);
        result = swift_unknownObjectRelease();
        v8 = v9;
        if (v7 == v9)
        {
          goto LABEL_6;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_6:
    }
  }

  return result;
}

uint64_t closure #1 in XMLElementPrivate.replaceIncludeStatements()(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = a1[1];
  ObjectType = swift_getObjectType();
  (*(v7 + 56))(ObjectType, v7);
  v9 = (*(v7 + 16))(ObjectType, v7);
  if (!v10)
  {
    return (*(*(a4 + 8) + 24))(v6, v7, a3);
  }

  if (v9 == 0x756C636E693A6978 && v10 == 0xEA00000000006564)
  {
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v12 & 1) == 0)
    {
      return (*(*(a4 + 8) + 24))(v6, v7, a3);
    }
  }

  v13 = createDoc(for:)(v6, v7);
  if (v15 != 2)
  {
    v16 = v15;
    v17 = v13;
    v18 = v14;
    v19 = XMLDocument.rootElement()(v13, v14, v15 & 1);
    v26 = v20;
    outlined consume of XMLDocument?(v17, v18, v16);
    if (v19)
    {
      v21 = *(v26 + 8);
      v22 = *(a4 + 8);
      v23 = *(v22 + 24);
      v24 = swift_unknownObjectRetain();
      v23(v24, v21, a3, v22);
      return swift_unknownObjectRelease_n();
    }
  }

  return (*(*(a4 + 8) + 24))(v6, v7, a3);
}

uint64_t createDoc(for:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v29[-v5];
  v7 = type metadata accessor for URL();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v29[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v29[-v12];
  ObjectType = swift_getObjectType();
  result = (*(a2 + 16))(ObjectType, a2);
  if (!v16)
  {
    goto LABEL_14;
  }

  if (result != 0x756C636E693A6978 || v16 != 0xEA00000000006564)
  {
    v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v17)
    {
      goto LABEL_6;
    }

    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

LABEL_6:
  swift_getObjectType();
  v18 = swift_conformsToProtocol2();
  result = 0;
  if (v18)
  {
    if (a1)
    {
      v19 = swift_getObjectType();
      result = (*(v18 + 16))(1717924456, 0xE400000000000000, v19, v18);
      if (result)
      {
        v21 = v20;
        v22 = swift_getObjectType();
        (*(v21 + 32))(v22, v21);
        v24 = v23;
        swift_unknownObjectRelease();
        if (v24)
        {
          v25 = [objc_opt_self() defaultManager];
          v26 = [v25 currentDirectoryPath];

          static String._unconditionallyBridgeFromObjectiveC(_:)();
          URL.init(fileURLWithPath:)();

          (*(v8 + 16))(v6, v13, v7);
          (*(v8 + 56))(v6, 0, 1, v7);
          URL.init(fileURLWithPath:relativeTo:)();

          outlined destroy of URL?(v6);
          v27 = Data.init(contentsOf:options:)();
          v28 = *(v8 + 8);
          v28(v10, v7);
          v28(v13, v7);
          return v27;
        }

        else
        {
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t XMLParserDelegate.rootElement.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC11ShaderGraph17XMLParserDelegate_rootElement);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
  return swift_unknownObjectRelease();
}

void *XMLParserDelegate.Element.__allocating_init(name:attributes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  v6[3] = 0;
  swift_unknownObjectWeakInit();
  v6[6] = 0;
  v6[7] = 0;
  v6[4] = a1;
  v6[5] = a2;
  if (a3)
  {
    v7 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDyS2SG_11ShaderGraph7XMLNode_ps5NeverOTg504_s11d26Graph17XMLParserDelegateC7b39C4name10attributesAESS_SDyS2SGSgtcfcAA7F25_pSS3key_SS5valuet_tXEfU_Tf1cn_n(a3);
  }

  else
  {
    v7 = 0;
  }

  swift_beginAccess();
  v6[7] = v7;
  return v6;
}

uint64_t XMLParserDelegate.beginElement(_:)(uint64_t a1)
{
  v2 = v1;
  result = (*(*a1 + 112))(a1);
  v5 = OBJC_IVAR____TtC11ShaderGraph17XMLParserDelegate_currentElement;
  v6 = *(v2 + OBJC_IVAR____TtC11ShaderGraph17XMLParserDelegate_currentElement);
  if (result)
  {
    if (v6)
    {
      v7 = result;
      swift_unknownObjectRelease();
      if (v7 == v6)
      {
        goto LABEL_7;
      }

      __break(1u);
    }

    result = swift_unknownObjectRelease();
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v6)
  {
    goto LABEL_12;
  }

LABEL_7:
  *(v2 + v5) = a1;
}

Swift::Void __swiftcall XMLParserDelegate.endElement()()
{
  v1 = OBJC_IVAR____TtC11ShaderGraph17XMLParserDelegate_currentElement;
  v2 = *(v0 + OBJC_IVAR____TtC11ShaderGraph17XMLParserDelegate_currentElement);
  if (!v2)
  {
    __break(1u);
    return;
  }

  v3 = v0;
  v4 = *(*v2 + 112);

  v6 = v4(v5);

  if (!v6)
  {
    goto LABEL_5;
  }

  type metadata accessor for XMLParserDelegate.Element();
  v7 = swift_dynamicCastClass();
  if (!v7)
  {
    swift_unknownObjectRelease();
LABEL_5:
    v7 = 0;
  }

  *(v3 + v1) = v7;
}

uint64_t (*XMLParserDelegate.Element.parent.modify(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return XMLParserDelegate.Element.parent.modify;
}

uint64_t XMLParserDelegate.Element.attributes.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;
}

void *XMLParserDelegate.Element.init(name:attributes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[3] = 0;
  swift_unknownObjectWeakInit();
  v3[6] = 0;
  v3[7] = 0;
  v3[4] = a1;
  v3[5] = a2;
  if (a3)
  {
    v7 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDyS2SG_11ShaderGraph7XMLNode_ps5NeverOTg504_s11d26Graph17XMLParserDelegateC7b39C4name10attributesAESS_SDyS2SGSgtcfcAA7F25_pSS3key_SS5valuet_tXEfU_Tf1cn_n(a3);
  }

  else
  {
    v7 = 0;
  }

  swift_beginAccess();
  v3[7] = v7;

  return v3;
}

void *XMLParserDelegate.StringNode.__allocating_init(name:stringValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[3] = 0;
  swift_unknownObjectWeakInit();
  v9 = MEMORY[0x277D84F90];
  v8[4] = a1;
  v8[5] = a2;
  v8[6] = v9;
  v8[7] = a3;
  v8[8] = a4;
  v8[9] = 0;
  return v8;
}

uint64_t XMLParserDelegate.Element.attribute(forName:)(uint64_t a1, uint64_t a2)
{
  result = (*(*v2 + 168))();
  if (!result)
  {
    return 0;
  }

  v6 = result;
  v17 = *(result + 16);
  if (!v17)
  {
LABEL_13:

    return 0;
  }

  v7 = 0;
  v8 = (result + 40);
  while (v7 < *(v6 + 16))
  {
    v9 = *(v8 - 1);
    v10 = *v8;
    ObjectType = swift_getObjectType();
    v12 = *(v10 + 16);
    swift_unknownObjectRetain();
    v13 = v12(ObjectType, v10);
    if (v14)
    {
      if (v13 == a1 && v14 == a2)
      {

LABEL_16:

        return v9;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        goto LABEL_16;
      }
    }

    ++v7;
    result = swift_unknownObjectRelease();
    v8 += 2;
    if (v17 == v7)
    {
      goto LABEL_13;
    }
  }

  __break(1u);
  return result;
}

uint64_t XMLParserDelegate.Element.addChild(_:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  if ((*(a2 + 8))(ObjectType, a2))
  {
    result = swift_unknownObjectRelease();
    __break(1u);
  }

  else
  {
    v7 = (*(*v2 + 136))();
    if (v7)
    {
      v8 = v7;
    }

    else
    {
      v8 = MEMORY[0x277D84F90];
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11ShaderGraph7XMLNode_pGMd, &_ss23_ContiguousArrayStorageCy11ShaderGraph7XMLNode_pGMR);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_265F1F670;
    *(inited + 32) = a1;
    *(inited + 40) = a2;
    swift_unknownObjectRetain();
    specialized Array.append<A>(contentsOf:)(inited);
    (*(*v3 + 144))(v8);
    type metadata accessor for XMLParserDelegate.Element();
    v10 = *(*swift_dynamicCastClassUnconditional() + 120);
    v11 = swift_unknownObjectRetain();
    return v10(v11, &protocol witness table for XMLParserDelegate.Element);
  }

  return result;
}

unint64_t XMLParserDelegate.Element.nodes(forXPath:)(unint64_t a1, unint64_t a2)
{
  v5 = (*(*v2 + 136))();
  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = v5;
  v7 = 0xE900000000000066;
  v89 = v5;
  if ((a1 != 0x656465646F6E2F2ELL || a2 != 0xE900000000000066) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    if (a1 == 0x72706D6F65672F2ELL && a2 == 0xED0000666564706FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v19 = *(v6 + 16);
      if (!v19)
      {
        goto LABEL_142;
      }

      v20 = 0;
      a1 = 0xEB00000000666564;
      v21 = v6 + 32;
      v10 = MEMORY[0x277D84F90];
LABEL_30:
      v80 = v10;
      a2 = v20;
      while (1)
      {
        if (a2 >= *(v6 + 16))
        {
          __break(1u);
          goto LABEL_119;
        }

        v83 = *(v21 + 16 * a2);
        ObjectType = swift_getObjectType();
        v23 = *(*(&v83 + 1) + 16);
        swift_unknownObjectRetain();
        v24 = v23(ObjectType, *(&v83 + 1));
        if (v25)
        {
          if (v24 == 0x706F72706D6F6567 && v25 == 0xEB00000000666564)
          {

LABEL_41:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1);
            }

            v29 = *(v10 + 16);
            v28 = *(v10 + 24);
            if (v29 >= v28 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v29 + 1, 1);
            }

            v20 = a2 + 1;
            *(v10 + 16) = v29 + 1;
            *(v10 + 16 * v29 + 32) = v83;
            v6 = v89;
            if (v19 - 1 == a2)
            {
              goto LABEL_143;
            }

            goto LABEL_30;
          }

          v27 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v27)
          {
            goto LABEL_41;
          }
        }

        ++a2;
        swift_unknownObjectRelease();
        v6 = v89;
        if (v19 == a2)
        {
          goto LABEL_141;
        }
      }
    }

    if (a1 == 0x7475706E692F2ELL && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v30 = *(v6 + 16);
      if (!v30)
      {
        goto LABEL_142;
      }

      v31 = 0;
      a1 = 0x7475706E69;
      v32 = v6 + 32;
      v10 = MEMORY[0x277D84F90];
LABEL_52:
      v80 = v10;
      a2 = v31;
      while (1)
      {
        if (a2 >= *(v6 + 16))
        {
          __break(1u);
          goto LABEL_146;
        }

        v84 = *(v32 + 16 * a2);
        v33 = swift_getObjectType();
        v34 = *(*(&v84 + 1) + 16);
        swift_unknownObjectRetain();
        v35 = v34(v33, *(&v84 + 1));
        if (v36)
        {
          if (v35 == 0x7475706E69 && v36 == 0xE500000000000000)
          {

LABEL_63:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1);
            }

            v40 = *(v10 + 16);
            v39 = *(v10 + 24);
            if (v40 >= v39 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1);
            }

            v31 = a2 + 1;
            *(v10 + 16) = v40 + 1;
            *(v10 + 16 * v40 + 32) = v84;
            v6 = v89;
            if (v30 - 1 == a2)
            {
              goto LABEL_143;
            }

            goto LABEL_52;
          }

          v38 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v38)
          {
            goto LABEL_63;
          }
        }

        ++a2;
        swift_unknownObjectRelease();
        v6 = v89;
        if (v30 == a2)
        {
          goto LABEL_141;
        }
      }
    }

    if (a1 == 0x74757074756F2F2ELL && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v41 = *(v6 + 16);
      if (!v41)
      {
        goto LABEL_142;
      }

      v42 = 0;
      a1 = 0x74757074756FLL;
      v43 = v6 + 32;
      v10 = MEMORY[0x277D84F90];
LABEL_74:
      v80 = v10;
      a2 = v42;
      while (1)
      {
        if (a2 >= *(v6 + 16))
        {
LABEL_146:
          __break(1u);
LABEL_147:
          __break(1u);
          goto LABEL_148;
        }

        v85 = *(v43 + 16 * a2);
        v44 = swift_getObjectType();
        v45 = *(*(&v85 + 1) + 16);
        swift_unknownObjectRetain();
        v46 = v45(v44, *(&v85 + 1));
        if (v47)
        {
          if (v46 == 0x74757074756FLL && v47 == 0xE600000000000000)
          {

LABEL_85:
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1);
            }

            v51 = *(v10 + 16);
            v50 = *(v10 + 24);
            if (v51 >= v50 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1);
            }

            v42 = a2 + 1;
            *(v10 + 16) = v51 + 1;
            *(v10 + 16 * v51 + 32) = v85;
            v6 = v89;
            if (v41 - 1 == a2)
            {
              goto LABEL_143;
            }

            goto LABEL_74;
          }

          v49 = _stringCompareWithSmolCheck(_:_:expecting:)();

          if (v49)
          {
            goto LABEL_85;
          }
        }

        ++a2;
        swift_unknownObjectRelease();
        v6 = v89;
        if (v41 == a2)
        {
LABEL_141:
          v10 = v80;
          goto LABEL_143;
        }
      }
    }

    goto LABEL_92;
  }

  v8 = *(v6 + 16);
  if (!v8)
  {
    goto LABEL_142;
  }

  v9 = 0;
  a1 = 0x66656465646F6ELL;
  v7 = v6 + 32;
  v10 = MEMORY[0x277D84F90];
  do
  {
    v80 = v10;
    a2 = v9;
    while (1)
    {
      if (a2 >= *(v6 + 16))
      {
        __break(1u);
LABEL_92:
        v21 = 0xD000000000000010;
        if ((a1 != 0xD000000000000015 || 0x8000000265F2E120 != a2) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
        {
LABEL_119:
          if (a1 == v21 && 0x8000000265F2E140 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v68 = *(v6 + 16);
            if (!v68)
            {
              goto LABEL_142;
            }

            v69 = 0;
            a1 = 0xEE006E6F69746174;
            v70 = v6 + 32;
            v10 = MEMORY[0x277D84F90];
LABEL_124:
            v80 = v10;
            a2 = v69;
            while (a2 < *(v6 + 16))
            {
              v87 = *(v70 + 16 * a2);
              v71 = swift_getObjectType();
              v72 = *(*(&v87 + 1) + 16);
              swift_unknownObjectRetain();
              v73 = v72(v71, *(&v87 + 1));
              if (v74)
              {
                if (v73 == 0x6E656D656C706D69 && v74 == 0xEE006E6F69746174)
                {

LABEL_135:
                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1);
                  }

                  v78 = *(v10 + 16);
                  v77 = *(v10 + 24);
                  if (v78 >= v77 >> 1)
                  {
                    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v77 > 1), v78 + 1, 1);
                  }

                  v69 = a2 + 1;
                  *(v10 + 16) = v78 + 1;
                  *(v10 + 16 * v78 + 32) = v87;
                  v6 = v89;
                  if (v68 - 1 != a2)
                  {
                    goto LABEL_124;
                  }

                  goto LABEL_143;
                }

                v76 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if (v76)
                {
                  goto LABEL_135;
                }
              }

              ++a2;
              swift_unknownObjectRelease();
              v6 = v89;
              if (v68 == a2)
              {
                goto LABEL_141;
              }
            }

LABEL_148:
            __break(1u);
          }

          _StringGuts.grow(_:)(33);

          MEMORY[0x266771550](a1, a2);
          MEMORY[0x266771550](39, 0xE100000000000000);
          result = _assertionFailure(_:_:file:line:flags:)();
          __break(1u);
          return result;
        }

        v52 = *(v6 + 16);
        if (v52)
        {
          v53 = 0;
          v81 = v6 + 32;
          v10 = MEMORY[0x277D84F90];
LABEL_97:
          a1 = v53;
          while (1)
          {
            if (a1 >= *(v6 + 16))
            {
              goto LABEL_147;
            }

            a2 = v10;
            v86 = *(v81 + 16 * a1);
            v58 = *(v81 + 16 * a1);
            v59 = swift_getObjectType();
            v60 = *(*(&v86 + 1) + 16);
            swift_unknownObjectRetain();
            v61 = v60(v59, *(&v86 + 1));
            if (v62)
            {
              if (v61 == 0x7061726765646F6ELL && v62 == v7 + 2)
              {
              }

              else
              {
                v64 = _stringCompareWithSmolCheck(_:_:expecting:)();

                if ((v64 & 1) == 0)
                {
                  goto LABEL_99;
                }
              }

              swift_getObjectType();
              v65 = swift_conformsToProtocol2();
              if (v65)
              {
                if (v58)
                {
                  v54 = v65;
                  v55 = swift_getObjectType();
                  v56 = *(v54 + 16);
                  swift_unknownObjectRetain();
                  v57 = v56(0x66656465646F6ELL, 0xE700000000000000, v55, v54);
                  swift_unknownObjectRelease();
                  if (v57)
                  {
                    swift_unknownObjectRelease();
                    v10 = a2;
                    v88 = a2;
                    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                    {
                      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a2 + 16) + 1, 1);
                      v10 = a2;
                    }

                    v6 = v89;
                    v67 = *(v10 + 16);
                    v66 = *(v10 + 24);
                    a2 = v67 + 1;
                    if (v67 >= v66 >> 1)
                    {
                      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v66 > 1), v67 + 1, 1);
                      v10 = v88;
                    }

                    v53 = a1 + 1;
                    *(v10 + 16) = a2;
                    *(v10 + 16 * v67 + 32) = v86;
                    if (v52 - 1 != a1)
                    {
                      goto LABEL_97;
                    }

                    goto LABEL_143;
                  }
                }
              }
            }

LABEL_99:
            swift_unknownObjectRelease();
            ++a1;
            v6 = v89;
            v10 = a2;
            if (v52 == a1)
            {
              goto LABEL_143;
            }
          }
        }

LABEL_142:
        v10 = MEMORY[0x277D84F90];
        goto LABEL_143;
      }

      v82 = *(v7 + 16 * a2);
      v11 = swift_getObjectType();
      v12 = *(*(&v82 + 1) + 16);
      swift_unknownObjectRetain();
      v13 = v12(v11, *(&v82 + 1));
      if (!v14)
      {
        goto LABEL_8;
      }

      if (v13 == 0x66656465646F6ELL && v14 == 0xE700000000000000)
      {
        break;
      }

      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v16)
      {
        goto LABEL_18;
      }

LABEL_8:
      ++a2;
      swift_unknownObjectRelease();
      v6 = v89;
      if (v8 == a2)
      {
        goto LABEL_141;
      }
    }

LABEL_18:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1);
    }

    v18 = *(v10 + 16);
    v17 = *(v10 + 24);
    if (v18 >= v17 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
    }

    v9 = a2 + 1;
    *(v10 + 16) = v18 + 1;
    *(v10 + 16 * v18 + 32) = v82;
    v6 = v89;
  }

  while (v8 - 1 != a2);
LABEL_143:

  return v10;
}