char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    v14 = v13 - 32;
    if (v13 < 32)
    {
      v14 = v13 - 1;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 5);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[32 * v10])
    {
      memmove(v15, v16, 32 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 32 * v10);
  }

  return v12;
}

{
  v7 = result;
  if (a3)
  {
    v8 = *(a4 + 3);
    v9 = v8 >> 1;
    if ((v8 >> 1) < a2)
    {
      if (v9 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
      if ((v8 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v9 = a2;
      }
    }
  }

  else
  {
    v9 = a2;
  }

  v10 = *(a4 + 2);
  if (v9 <= v10)
  {
    v11 = *(a4 + 2);
  }

  else
  {
    v11 = v9;
  }

  if (v11)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v12 = swift_allocObject();
    v13 = _swift_stdlib_malloc_size(v12);
    *(v12 + 2) = v10;
    *(v12 + 3) = (v13 - 32 + ((v13 - 32) >> 63)) & 0xFFFFFFFFFFFFFFFELL;
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v14 = v12 + 32;
  v15 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v14 >= &v15[2 * v10])
    {
      memmove(v14, v15, 2 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v14, v15, 2 * v10);
  }

  return v12;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy17RealityFoundation19AnimationDefinition_pGMd, &_ss23_ContiguousArrayStorageCy17RealityFoundation19AnimationDefinition_pGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation19AnimationDefinition_pMd, &_s17RealityFoundation19AnimationDefinition_pMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit17AnimationResourceC04animG0_Si11trackNumbertGMd, &_ss23_ContiguousArrayStorageCy10RealityKit17AnimationResourceC04animG0_Si11trackNumbertGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit17AnimationResourceC04animD0_Si11trackNumbertMd, &_s10RealityKit17AnimationResourceC04animD0_Si11trackNumbertMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySay10RealityKit17AnimationResourceCG_SitGMd, &_ss23_ContiguousArrayStorageCySay10RealityKit17AnimationResourceCG_SitGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10RealityKit17AnimationResourceCG_SitMd, &_sSay10RealityKit17AnimationResourceCG_SitMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo16RIOPxrTfTokenRefa_So0d7VtValueG0atGMd, &_ss23_ContiguousArrayStorageCySo16RIOPxrTfTokenRefa_So0d7VtValueG0atGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo16RIOPxrTfTokenRefa_So0a7VtValueD0atMd, &_sSo16RIOPxrTfTokenRefa_So0a7VtValueD0atMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6, uint64_t a7)
{
  v8 = result;
  if (a3)
  {
    v9 = *(a4 + 3);
    v10 = v9 >> 1;
    if ((v9 >> 1) < a2)
    {
      if (v10 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v10 = v9 & 0xFFFFFFFFFFFFFFFELL;
      if ((v9 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v10 = a2;
      }
    }
  }

  else
  {
    v10 = a2;
  }

  v11 = *(a4 + 2);
  if (v10 <= v11)
  {
    v12 = *(a4 + 2);
  }

  else
  {
    v12 = v10;
  }

  if (v12)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v13 = swift_allocObject();
    v14 = _swift_stdlib_malloc_size(v13);
    v15 = v14 - 32;
    if (v14 < 32)
    {
      v15 = v14 - 25;
    }

    *(v13 + 2) = v11;
    *(v13 + 3) = 2 * (v15 >> 3);
  }

  else
  {
    v13 = MEMORY[0x277D84F90];
  }

  v16 = v13 + 32;
  v17 = a4 + 32;
  if (v8)
  {
    if (v13 != a4 || v16 >= &v17[8 * v11])
    {
      memmove(v16, v17, 8 * v11);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, lazy protocol witness table accessor for type ToolsFoundations.Token and conformance ToolsFoundations.Token, &type metadata for ToolsFoundations.Token, lazy protocol witness table accessor for type ToolsFoundations.Token and conformance ToolsFoundations.Token);
}

{
  return specialized __RawDictionaryStorage.find<A>(_:)(a1, lazy protocol witness table accessor for type SceneDescriptionFoundations.Path and conformance SceneDescriptionFoundations.Path, &type metadata for SceneDescriptionFoundations.Path, lazy protocol witness table accessor for type SceneDescriptionFoundations.Path and conformance SceneDescriptionFoundations.Path);
}

{
  Hasher.init(_seed:)();
  type metadata accessor for RIOPxrTfTokenRef(0);
  _sSo16RIOPxrTfTokenRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef, 255, type metadata accessor for RIOPxrTfTokenRef, &protocol conformance descriptor for RIOPxrTfTokenRef);
  _CFObject.hash(into:)();
  v2 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2, type metadata accessor for RIOPxrTfTokenRef, &lazy protocol witness table cache variable for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef, type metadata accessor for RIOPxrTfTokenRef, &protocol conformance descriptor for RIOPxrTfTokenRef);
}

{
  Hasher.init(_seed:)();
  type metadata accessor for RIOPxrSdfLayerRef(0);
  _sSo16RIOPxrTfTokenRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type RIOPxrSdfLayerRef and conformance RIOPxrSdfLayerRef, 255, type metadata accessor for RIOPxrSdfLayerRef, &protocol conformance descriptor for RIOPxrSdfLayerRef);
  _CFObject.hash(into:)();
  v2 = Hasher._finalize()();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2, type metadata accessor for RIOPxrSdfLayerRef, &lazy protocol witness table cache variable for type RIOPxrSdfLayerRef and conformance RIOPxrSdfLayerRef, type metadata accessor for RIOPxrSdfLayerRef, &protocol conformance descriptor for RIOPxrSdfLayerRef);
}

{
  Hasher.init(_seed:)();
  MEMORY[0x26670FA20](a1);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t (*a2)(void), uint64_t a3, uint64_t (*a4)(void))
{
  a2();
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();
  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v6, a4, a3);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, float a2)
{
  type metadata accessor for UUID();
  _sSo16RIOPxrTfTokenRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
  v3 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v3, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a2 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = v4;
    v9 = ~v6;
    a3();
    do
    {
      v13 = *(*(v8 + 48) + 8 * v7);
      v10 = v13;
      v11 = dispatch thunk of static Equatable.== infix(_:_:)();

      if (v11)
      {
        break;
      }

      v7 = (v7 + 1) & v9;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), unint64_t *a4, uint64_t (*a5)(uint64_t), uint64_t a6)
{
  v7 = -1 << *(v6 + 32);
  v8 = a2 & ~v7;
  if ((*(v6 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v12 = ~v7;
    a3(0);
    _sSo16RIOPxrTfTokenRefaAB14CoreFoundation9_CFObjectSCWlTm_0(a4, 255, a5, a6);
    do
    {
      v13 = *(*(v6 + 48) + 8 * v8);
      v14 = static _CFObject.== infix(_:_:)();

      if (v14)
      {
        break;
      }

      v8 = (v8 + 1) & v12;
    }

    while (((*(v6 + 64 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) != 0);
  }

  return v8;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, float a3)
{
  v22 = a1;
  v5 = type metadata accessor for UUID();
  v6 = *(v5 - 8);
  v8.n128_f32[0] = MEMORY[0x28223BE20](v5, v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v3;
  v11 = -1 << *(v3 + 32);
  v12 = a2 & ~v11;
  v21 = v3 + 64;
  if ((*(v3 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v16 = *(v6 + 16);
    v15 = v6 + 16;
    v14 = v16;
    v17 = *(v15 + 56);
    do
    {
      v14(v10, *(v23 + 48) + v17 * v12, v5, v8);
      _sSo16RIOPxrTfTokenRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9610]);
      v18 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*(v15 - 8))(v10, v5);
      if (v18)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
    }

    while (((*(v21 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

id specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9RealityIO16ToolsFoundationsO5TokenVSo16RIOPxrVtValueRefaGMd, &_ss18_DictionaryStorageCy9RealityIO16ToolsFoundationsO5TokenVSo16RIOPxrVtValueRefaGMR);
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVs13OpaquePointerVGMd, &_ss18_DictionaryStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVs13OpaquePointerVGMR);
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo16RIOPxrTfTokenRefaSo0c7VtValueF0aGMd, &_ss18_DictionaryStorageCySo16RIOPxrTfTokenRefaSo0c7VtValueF0aGMR);
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

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
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

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSShy9RealityIO13ImportSessionC15EvaluationFaultOGGMd, &_ss18_DictionaryStorageCySSShy9RealityIO13ImportSessionC15EvaluationFaultOGGMR);
}

{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
  v32 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v31 = &v30 - v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation3URLV_10RealityKit9__REAssetCtGMd, &_ss18_DictionaryStorageCySS10Foundation3URLV_10RealityKit9__REAssetCtGMR);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v30 = v1;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v33 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = *(v5 + 64);
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
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = 16 * v21;
        v23 = (*(v5 + 48) + 16 * v21);
        v24 = *v23;
        v25 = v23[1];
        v26 = v31;
        v27 = *(v32 + 72) * v21;
        outlined init with copy of (URL, __REAsset)(*(v5 + 56) + v27, v31);
        v28 = v33;
        v29 = (*(v33 + 48) + v22);
        *v29 = v24;
        v29[1] = v25;
        outlined init with take of (URL, __REAsset)(v26, *(v28 + 56) + v27);
      }

      while (v16);
    }

    v19 = v11;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v17)
      {

        v1 = v30;
        v7 = v33;
        goto LABEL_18;
      }

      v20 = *(v9 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v16 = (v20 - 1) & v20;
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo17RIOPxrSdfLayerRefa9RealityIO27SceneDescriptionFoundationsO0E0C27ReplicationMessagePublisherCGMd, &_ss18_DictionaryStorageCySo17RIOPxrSdfLayerRefa9RealityIO27SceneDescriptionFoundationsO0E0C27ReplicationMessagePublisherCGMR);
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

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVSayAC7Builder_pGGMd, &_ss18_DictionaryStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVSayAC7Builder_pGGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo19REComponentClassPtraSo8RETypeIDaGMd, &_ss18_DictionaryStorageCySo19REComponentClassPtraSo8RETypeIDaGMR);
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 16 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 16 * v14);
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

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGGMd, &_ss18_DictionaryStorageCySS9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGGMR);
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

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSShySSGGMd, &_ss18_DictionaryStorageCySSShySSGGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS9RealityIO13ImportSessionC17MeshAssetEstimateVGMd, &_ss18_DictionaryStorageCySS9RealityIO13ImportSessionC17MeshAssetEstimateVGMR);
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
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v17 *= 32;
        v22 = (*(v2 + 56) + v17);
        v23 = (*(v4 + 48) + v18);
        v24 = *v22;
        v25 = v22[1];
        *v23 = v21;
        v23[1] = v20;
        v26 = (*(v4 + 56) + v17);
        *v26 = v24;
        v26[1] = v25;
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

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCySSSay9RealityIO13ImportSessionC15EvaluationFaultOGGMd, &_ss18_DictionaryStorageCySSSay9RealityIO13ImportSessionC15EvaluationFaultOGGMR);
}

{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
  v2 = *v0;
  v3 = static _DictionaryStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    v24 = v1;
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
        v19 = (*(v2 + 48) + 16 * v17);
        v21 = *v19;
        v20 = v19[1];
        v22 = 32 * v17;
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v25);
        v23 = (*(v4 + 48) + v18);
        *v23 = v21;
        v23[1] = v20;
        outlined init with take of Any(v25, (*(v4 + 56) + v22));
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

        v1 = v24;
        goto LABEL_21;
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

LABEL_21:
    *v1 = v4;
  }

  return result;
}

{
  return specialized _NativeDictionary.copy()(&_ss18_DictionaryStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVSayAC05ToolsG0O5TokenVGGMd, &_ss18_DictionaryStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVSayAC05ToolsG0O5TokenVGGMR);
}

char *specialized _NativeDictionary.copy()(float a1)
{
  v2 = v1;
  v37 = type metadata accessor for UUID();
  v39 = *(v37 - 8);
  MEMORY[0x28223BE20](v37, v3);
  v36 = &v31 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4UUIDVGMd, &_ss18_DictionaryStorageCySS10Foundation4UUIDVGMR);
  v5 = *v1;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v32 = v2;
    v33 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v34 = v39 + 32;
    v35 = v39 + 16;
    if (v15)
    {
      do
      {
        v17 = __clz(__rbit64(v15));
        v40 = (v15 - 1) & v15;
LABEL_14:
        v20 = v17 | (v11 << 6);
        v21 = 16 * v20;
        v22 = (*(v5 + 48) + 16 * v20);
        v23 = *v22;
        v24 = v22[1];
        v25 = v39;
        v26 = *(v39 + 72) * v20;
        v27 = v36;
        v28 = v37;
        (*(v39 + 16))(v36, *(v5 + 56) + v26, v37);
        v29 = v38;
        v30 = (*(v38 + 48) + v21);
        *v30 = v23;
        v30[1] = v24;
        (*(v25 + 32))(*(v29 + 56) + v26, v27, v28);

        v15 = v40;
      }

      while (v40);
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

        v2 = v32;
        v7 = v38;
        goto LABEL_18;
      }

      v19 = *(v33 + 8 * v11);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v40 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v2 = v7;
  }

  return result;
}

id specialized _NativeDictionary.copy()(float a1)
{
  v2 = v1;
  v31 = type metadata accessor for __RKEntityInteractionSpecification();
  v33 = *(v31 - 8);
  MEMORY[0x28223BE20](v31, v3);
  v30 = v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9RealityIO27SceneDescriptionFoundationsO4PathV0C3Kit34__RKEntityInteractionSpecificationVGMd, &_ss18_DictionaryStorageCy9RealityIO27SceneDescriptionFoundationsO4PathV0C3Kit34__RKEntityInteractionSpecificationVGMR);
  v5 = *v1;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    v28[0] = v2;
    result = (v6 + 64);
    v9 = v5 + 64;
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    if (v7 != v5 || result >= v9 + 8 * v10)
    {
      result = memmove(result, (v5 + 64), 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v32 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v28[1] = v33 + 32;
    v28[2] = v33 + 16;
    for (i = v5; v15; v5 = i)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_14:
      v20 = v17 | (v11 << 6);
      v21 = *(v5 + 56);
      v22 = *(*(v5 + 48) + 8 * v20);
      v23 = v33;
      v24 = *(v33 + 72) * v20;
      v26 = v30;
      v25 = v31;
      (*(v33 + 16))(v30, v21 + v24, v31);
      v27 = v32;
      *(*(v32 + 48) + 8 * v20) = v22;
      (*(v23 + 32))(*(v27 + 56) + v24, v26, v25);
      result = v22;
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

        v2 = v28[0];
        v7 = v32;
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
    *v2 = v7;
  }

  return result;
}

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
        v20 = (*(v4 + 48) + 16 * v19);
        v21 = v20[1];
        v22 = *(*(v4 + 56) + 8 * v19);
        v23 = (*(v6 + 48) + 16 * v19);
        *v23 = *v20;
        v23[1] = v21;
        *(*(v6 + 56) + 8 * v19) = v22;
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
        v20 = *(*(v4 + 48) + 8 * v19);
        v21 = *(*(v4 + 56) + 8 * v19);
        *(*(v6 + 48) + 8 * v19) = v20;
        *(*(v6 + 56) + 8 * v19) = v21;
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

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9RealityIO16ToolsFoundationsO5TokenVSo16RIOPxrVtValueRefaGMd, &_ss18_DictionaryStorageCy9RealityIO16ToolsFoundationsO5TokenVSo16RIOPxrVtValueRefaGMR);
  v31 = v4;
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
      v32 = *(*(v5 + 48) + 8 * v19);
      v20 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
        v21 = *(*(v5 + 48) + 8 * v19);
        v22 = v20;
      }

      lazy protocol witness table accessor for type ToolsFoundations.Token and conformance ToolsFoundations.Token();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v32;
      *(*(v7 + 56) + 8 * v15) = v20;
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

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVs13OpaquePointerVGMd, &_ss18_DictionaryStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVs13OpaquePointerVGMR);
  v30 = v4;
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
      v31 = *(*(v5 + 48) + 8 * v19);
      v20 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
        v21 = *(*(v5 + 48) + 8 * v19);
      }

      lazy protocol witness table accessor for type SceneDescriptionFoundations.Path and conformance SceneDescriptionFoundations.Path();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
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

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v31;
      *(*(v7 + 56) + 8 * v15) = v20;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_33:
  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVSayAC7Builder_pGGMd, &_ss18_DictionaryStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVSayAC7Builder_pGGMR);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySSypGMd, &_ss18_DictionaryStorageCySSypGMR);
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 32 * v20);
      if (v33)
      {
        outlined init with take of Any(v24, v34);
      }

      else
      {
        outlined init with copy of Any(v24, v34);
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = outlined init with take of Any(v34, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
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

LABEL_34:
  *v3 = v7;
  return result;
}

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVSayAC05ToolsG0O5TokenVGGMd, &_ss18_DictionaryStorageCy9RealityIO27SceneDescriptionFoundationsO4PathVSayAC05ToolsG0O5TokenVGGMR);
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCyS2SGMd, &_ss18_DictionaryStorageCyS2SGMR);
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

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSShy9RealityIO13ImportSessionC15EvaluationFaultOGGMd, &_ss18_DictionaryStorageCySSShy9RealityIO13ImportSessionC15EvaluationFaultOGGMR);
}

{
  v3 = v2;
  v4 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
  v40 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v42 = &v38 - v7;
  v8 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation3URLV_10RealityKit9__REAssetCtGMd, &_ss18_DictionaryStorageCySS10Foundation3URLV_10RealityKit9__REAssetCtGMR);
  v41 = v4;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v10 = result;
  if (*(v8 + 16))
  {
    v38 = v2;
    v39 = v8;
    v11 = 0;
    v12 = (v8 + 64);
    v13 = 1 << *(v8 + 32);
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    else
    {
      v14 = -1;
    }

    v15 = v14 & *(v8 + 64);
    v16 = (v13 + 63) >> 6;
    v17 = result + 64;
    while (v15)
    {
      v20 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_15:
      v23 = v20 | (v11 << 6);
      v24 = *(v8 + 56);
      v25 = (*(v8 + 48) + 16 * v23);
      v26 = *v25;
      v27 = v25[1];
      v28 = *(v40 + 72);
      v29 = v24 + v28 * v23;
      if (v41)
      {
        outlined init with take of (URL, __REAsset)(v29, v42);
      }

      else
      {
        outlined init with copy of (URL, __REAsset)(v29, v42);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v30 = -1 << *(v10 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v17 + 8 * (v31 >> 6))) == 0)
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
          v36 = *(v17 + 8 * v32);
          if (v36 != -1)
          {
            v18 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v18 = __clz(__rbit64((-1 << v31) & ~*(v17 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v17 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      v19 = (*(v10 + 48) + 16 * v18);
      *v19 = v26;
      v19[1] = v27;
      result = outlined init with take of (URL, __REAsset)(v42, *(v10 + 56) + v28 * v18);
      ++*(v10 + 16);
      v8 = v39;
    }

    v21 = v11;
    while (1)
    {
      v11 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v11 >= v16)
      {
        break;
      }

      v22 = v12[v11];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v15 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v41 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v8 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v12, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v12 = -1 << v37;
    }

    *(v8 + 16) = 0;
  }

LABEL_34:
  *v3 = v10;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo16RIOPxrTfTokenRefaSo0c7VtValueF0aGMd, &_ss18_DictionaryStorageCySo16RIOPxrTfTokenRefaSo0c7VtValueF0aGMR);
  v32 = v4;
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
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v32 & 1) == 0)
      {
        v22 = v20;
        v23 = v21;
      }

      Hasher.init(_seed:)();
      type metadata accessor for RIOPxrTfTokenRef(0);
      _sSo16RIOPxrTfTokenRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef, 255, type metadata accessor for RIOPxrTfTokenRef, &protocol conformance descriptor for RIOPxrTfTokenRef);
      _CFObject.hash(into:)();
      result = Hasher._finalize()();
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

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v31 = 1 << *(v5 + 32);
    v3 = v2;
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

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo17RIOPxrSdfLayerRefa9RealityIO27SceneDescriptionFoundationsO0E0C27ReplicationMessagePublisherCGMd, &_ss18_DictionaryStorageCySo17RIOPxrSdfLayerRefa9RealityIO27SceneDescriptionFoundationsO0E0C27ReplicationMessagePublisherCGMR);
  v31 = v4;
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
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v31 & 1) == 0)
      {
        v22 = v20;
      }

      Hasher.init(_seed:)();
      type metadata accessor for RIOPxrSdfLayerRef(0);
      _sSo16RIOPxrTfTokenRefaAB14CoreFoundation9_CFObjectSCWlTm_0(&lazy protocol witness table cache variable for type RIOPxrSdfLayerRef and conformance RIOPxrSdfLayerRef, 255, type metadata accessor for RIOPxrSdfLayerRef, &protocol conformance descriptor for RIOPxrSdfLayerRef);
      _CFObject.hash(into:)();
      result = Hasher._finalize()();
      v23 = -1 << *(v7 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v14 + 8 * (v24 >> 6))) == 0)
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
          v29 = *(v14 + 8 * v25);
          if (v29 != -1)
          {
            v15 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
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

    if ((v31 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v30 = 1 << *(v5 + 32);
    v3 = v2;
    if (v30 >= 64)
    {
      bzero((v5 + 64), ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v30;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo19REComponentClassPtraSo8RETypeIDaGMd, &_ss18_DictionaryStorageCySo19REComponentClassPtraSo8RETypeIDaGMR);
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v7 = result;
  if (*(v5 + 16))
  {
    v29 = v4;
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
      v30 = *(*(v5 + 56) + 16 * v19);
      Hasher.init(_seed:)();
      MEMORY[0x26670FA20](v20);
      result = Hasher._finalize()();
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

LABEL_33:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      *(*(v7 + 56) + 16 * v15) = v30;
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

    if ((v29 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_31;
    }

    v28 = 1 << *(v5 + 32);
    v3 = v2;
    if (v28 >= 64)
    {
      bzero((v5 + 64), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    *(v5 + 16) = 0;
  }

LABEL_31:
  *v3 = v7;
  return result;
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGGMd, &_ss18_DictionaryStorageCySS9RealityIO21RESharedObjectWrapperCys13OpaquePointerVGGMR);
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

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSShySSGGMd, &_ss18_DictionaryStorageCySSShySSGGMR);
}

{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS9RealityIO13ImportSessionC17MeshAssetEstimateVGMd, &_ss18_DictionaryStorageCySS9RealityIO13ImportSessionC17MeshAssetEstimateVGMR);
  v34 = v4;
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
      v21 = v18 | (v8 << 6);
      v22 = (*(v5 + 48) + 16 * v21);
      v23 = *v22;
      v24 = v22[1];
      v25 = (*(v5 + 56) + 32 * v21);
      v35 = v25[1];
      v36 = *v25;
      if ((v34 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
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
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v23;
      v16[1] = v24;
      v17 = (*(v7 + 56) + 32 * v15);
      *v17 = v36;
      v17[1] = v35;
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

    if ((v34 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v33 = 1 << *(v5 + 32);
    v3 = v2;
    if (v33 >= 64)
    {
      bzero((v5 + 64), ((v33 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
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

{
  return specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(a1, a2, &_ss18_DictionaryStorageCySSSay9RealityIO13ImportSessionC15EvaluationFaultOGGMd, &_ss18_DictionaryStorageCySSSay9RealityIO13ImportSessionC15EvaluationFaultOGGMR);
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2, float a3)
{
  v4 = v3;
  v5 = a2;
  v47 = type metadata accessor for UUID();
  v6 = *(v47 - 8);
  MEMORY[0x28223BE20](v47, v7);
  v46 = &v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS10Foundation4UUIDVGMd, &_ss18_DictionaryStorageCySS10Foundation4UUIDVGMR);
  v44 = v5;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v11 = result;
  if (*(v9 + 16))
  {
    v12 = 0;
    v13 = (v9 + 64);
    v14 = 1 << *(v9 + 32);
    if (v14 < 64)
    {
      v15 = ~(-1 << v14);
    }

    else
    {
      v15 = -1;
    }

    v16 = v15 & *(v9 + 64);
    v17 = (v14 + 63) >> 6;
    v40 = v3;
    v41 = (v6 + 16);
    v42 = v9;
    v43 = v6;
    v45 = (v6 + 32);
    v18 = result + 64;
    while (v16)
    {
      v21 = __clz(__rbit64(v16));
      v16 &= v16 - 1;
LABEL_15:
      v24 = v21 | (v12 << 6);
      v25 = *(v9 + 56);
      v26 = (*(v9 + 48) + 16 * v24);
      v28 = *v26;
      v27 = v26[1];
      v29 = *(v43 + 72);
      v30 = v25 + v29 * v24;
      if (v44)
      {
        (*v45)(v46, v30, v47);
      }

      else
      {
        (*v41)(v46, v30, v47);
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v31 = -1 << *(v11 + 32);
      v32 = result & ~v31;
      v33 = v32 >> 6;
      if (((-1 << v32) & ~*(v18 + 8 * (v32 >> 6))) == 0)
      {
        v34 = 0;
        v35 = (63 - v31) >> 6;
        while (++v33 != v35 || (v34 & 1) == 0)
        {
          v36 = v33 == v35;
          if (v33 == v35)
          {
            v33 = 0;
          }

          v34 |= v36;
          v37 = *(v18 + 8 * v33);
          if (v37 != -1)
          {
            v19 = __clz(__rbit64(~v37)) + (v33 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v19 = __clz(__rbit64((-1 << v32) & ~*(v18 + 8 * (v32 >> 6)))) | v32 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v18 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      v20 = (*(v11 + 48) + 16 * v19);
      *v20 = v28;
      v20[1] = v27;
      result = (*v45)(*(v11 + 56) + v29 * v19, v46, v47);
      ++*(v11 + 16);
      v9 = v42;
    }

    v22 = v12;
    while (1)
    {
      v12 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v12 >= v17)
      {
        break;
      }

      v23 = v13[v12];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v16 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v4 = v40;
      goto LABEL_34;
    }

    v38 = 1 << *(v9 + 32);
    v4 = v40;
    if (v38 >= 64)
    {
      bzero(v13, ((v38 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v13 = -1 << v38;
    }

    *(v9 + 16) = 0;
  }

LABEL_34:
  *v4 = v11;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2, float a3)
{
  v4 = v3;
  v5 = a2;
  v6 = type metadata accessor for __RKEntityInteractionSpecification();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6, v8);
  v46 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9RealityIO27SceneDescriptionFoundationsO4PathV0C3Kit34__RKEntityInteractionSpecificationVGMd, &_ss18_DictionaryStorageCy9RealityIO27SceneDescriptionFoundationsO4PathV0C3Kit34__RKEntityInteractionSpecificationVGMR);
  v45 = v5;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v12 = result;
  if (*(v10 + 16))
  {
    v40 = v3;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v41 = (v7 + 16);
    v42 = v10;
    v43 = v7;
    v44 = v6;
    v19 = (v7 + 32);
    v20 = result + 64;
    while (v17)
    {
      v23 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v26 = v23 | (v13 << 6);
      v27 = *(v10 + 56);
      v28 = *(*(v10 + 48) + 8 * v26);
      v47 = v28;
      v29 = *(v43 + 72);
      v30 = v27 + v29 * v26;
      if (v45)
      {
        (*v19)(v46, v30, v6);
      }

      else
      {
        (*v41)(v46, v30, v6);
        v31 = v28;
      }

      lazy protocol witness table accessor for type SceneDescriptionFoundations.Path and conformance SceneDescriptionFoundations.Path();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
      v32 = -1 << *(v12 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v20 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        v6 = v44;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v20 + 8 * v34);
          if (v38 != -1)
          {
            v21 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v21 = __clz(__rbit64((-1 << v33) & ~*(v20 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
      v6 = v44;
LABEL_7:
      *(v20 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v22 = v46;
      *(*(v12 + 48) + 8 * v21) = v47;
      result = (*v19)(*(v12 + 56) + v29 * v21, v22, v6);
      ++*(v12 + 16);
      v10 = v42;
    }

    v24 = v13;
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v25 = v14[v13];
      ++v24;
      if (v25)
      {
        v23 = __clz(__rbit64(v25));
        v17 = (v25 - 1) & v25;
        goto LABEL_15;
      }
    }

    if ((v45 & 1) == 0)
    {

      v4 = v40;
      goto LABEL_34;
    }

    v39 = 1 << *(v10 + 32);
    v4 = v40;
    if (v39 >= 64)
    {
      bzero(v14, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v39;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v4 = v12;
  return result;
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v36 = v6;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
    v35 = v7;
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
      v19 = __clz(__rbit64(v14));
      v14 &= v14 - 1;
LABEL_15:
      v22 = v19 | (v10 << 6);
      v23 = (*(v7 + 48) + 16 * v22);
      v24 = *v23;
      v25 = v23[1];
      v26 = *(*(v7 + 56) + 8 * v22);
      if ((v36 & 1) == 0)
      {
      }

      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v27 = -1 << *(v9 + 32);
      v28 = result & ~v27;
      v29 = v28 >> 6;
      if (((-1 << v28) & ~*(v16 + 8 * (v28 >> 6))) == 0)
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
          v33 = *(v16 + 8 * v29);
          if (v33 != -1)
          {
            v17 = __clz(__rbit64(~v33)) + (v29 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v17 = __clz(__rbit64((-1 << v28) & ~*(v16 + 8 * (v28 >> 6)))) | v28 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v16 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v18 = (*(v9 + 48) + 16 * v17);
      *v18 = v24;
      v18[1] = v25;
      *(*(v9 + 56) + 8 * v17) = v26;
      ++*(v9 + 16);
      v7 = v35;
    }

    v20 = v10;
    while (1)
    {
      v10 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v10 >= v15)
      {
        break;
      }

      v21 = v11[v10];
      ++v20;
      if (v21)
      {
        v19 = __clz(__rbit64(v21));
        v14 = (v21 - 1) & v21;
        goto LABEL_15;
      }
    }

    if ((v36 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v34 = 1 << *(v7 + 32);
    v5 = v4;
    if (v34 >= 64)
    {
      bzero(v11, ((v34 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v11 = -1 << v34;
    }

    *(v7 + 16) = 0;
  }

LABEL_33:
  *v5 = v9;
  return result;
}

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a2;
  v7 = *v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v32 = v6;
  result = static _DictionaryStorage.resize(original:capacity:move:)();
  v9 = result;
  if (*(v7 + 16))
  {
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
      v33 = *(*(v7 + 48) + 8 * v21);
      v22 = *(*(v7 + 56) + 8 * v21);
      if ((v32 & 1) == 0)
      {
        v23 = *(*(v7 + 48) + 8 * v21);
      }

      lazy protocol witness table accessor for type SceneDescriptionFoundations.Path and conformance SceneDescriptionFoundations.Path();
      result = dispatch thunk of Hashable._rawHashValue(seed:)();
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
      *(*(v9 + 48) + 8 * v17) = v33;
      *(*(v9 + 56) + 8 * v17) = v22;
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

    if ((v32 & 1) == 0)
    {

      v5 = v4;
      goto LABEL_33;
    }

    v31 = 1 << *(v7 + 32);
    v5 = v4;
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

LABEL_33:
  *v5 = v9;
  return result;
}

char *specialized StaticTypePrim.init(prim:type:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v7 = *(*v5 + 80);
  v8 = type metadata accessor for Properties(0, v7, a3, a4);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v14 - v11;
  *(v5 + 2) = a1;

  Prim.properties<A>(of:)(v7, v12);
  (*(v9 + 32))(&v5[*(*v5 + 96)], v12, v8);
  return v5;
}

uint64_t specialized StaticTypePrim.subscript.setter(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = MEMORY[0x28223BE20](a1, a3);
  v6 = *(v3 + 16);
  (*(v7 + 16))(v9 - v5, v4);
  v9[1] = v6;

  swift_setAtReferenceWritableKeyPath();
}

id specialized Properties.subscript.setter(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for Optional();
  v10 = MEMORY[0x28223BE20](v8, v9);
  v12 = &v15 - v11;
  (*(v13 + 16))(&v15 - v11, a1, v10);
  return Properties.subscript.setter(v12, a2, 0, 0, a3, a4, NAN);
}

uint64_t specialized StaticTypePrim.subscript.setter(uint64_t a1, void *a2, uint64_t a3)
{
  v7 = *v3;
  swift_beginAccess();
  v10 = type metadata accessor for Properties(0, *(v7 + 80), v8, v9);
  specialized Properties.subscript.setter(a1, a2, v10, a3);
  return swift_endAccess();
}

uint64_t specialized StaticTypePrim.subscript.setter(uint64_t a1, void *a2, int a3, unint64_t a4, uint64_t a5, double a6)
{
  v13 = *v6;
  v14 = type metadata accessor for Optional();
  v16 = MEMORY[0x28223BE20](v14, v15);
  v18 = &v24 - v17;
  (*(v19 + 16))(&v24 - v17, a1, v16);
  swift_beginAccess();
  v22 = type metadata accessor for Properties(0, *(v13 + 80), v20, v21);
  Properties.subscript.setter(v18, a2, a3, a4, v22, a5, a6);
  return swift_endAccess();
}

unint64_t specialized Properties.subscript.getter(uint64_t a1, uint64_t a2)
{
  swift_getAtKeyPath();
  if (String.count.getter() < 1)
  {

    v2 = RIOPxrTfTokenEmpty();
  }

  else
  {
    String.utf8CString.getter();

    v2 = RIOPxrTfTokenCreateWithCString();
  }

  if (RIOPxrUsdPrimHasRelationship())
  {
    v3 = RIOPxrUsdPrimCopyRelationship();

    type metadata accessor for Relationship();
    v4 = swift_allocObject();
    v4[2] = v3;

    v5 = Relationship.targets.getter();
    outlined consume of Result<AnyAttribute, Object.Error>(v4, 0);
    outlined consume of Result<AnyAttribute, Object.Error>(v4, 0);
    return v5;
  }

  else
  {

    lazy protocol witness table accessor for type Object.Error and conformance Object.Error();
    swift_willThrowTypedImpl();
    outlined consume of Object.Error(0);
    return 0;
  }
}

uint64_t specialized Properties.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getAtKeyPath();
  if (a1)
  {
    if (String.count.getter() < 1)
    {

      v4 = RIOPxrTfTokenEmpty();
    }

    else
    {
      String.utf8CString.getter();

      v4 = RIOPxrTfTokenCreateWithCString();
    }

    Relationship = RIOPxrUsdPrimCreateCreateRelationship();
    v6 = *(a1 + 16);
    if (v6)
    {
      specialized ContiguousArray.reserveCapacity(_:)();
      v7 = 32;
      do
      {
        v8 = *(a1 + v7);
        specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
        specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
        specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        specialized ContiguousArray._endMutation()();
        v7 += 8;
        --v6;
      }

      while (v6);
    }

    type metadata accessor for RIOPxrSdfPathRef(0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    RIOPxrUsdRelationshipSetTargets();
  }

  else
  {
  }
}

uint64_t keypath_get_75Tm@<X0>(uint64_t *a1@<X1>, uint64_t a2@<X2>, uint64_t (*a3)(uint64_t, uint64_t)@<X3>, uint64_t *a4@<X8>)
{
  v6 = *a1;
  v7 = type metadata accessor for Properties(0, *(a1 + a2 - 8), a2, a3);
  result = a3(v6, v7);
  *a4 = result;
  return result;
}

uint64_t get_enum_tag_for_layout_string_9RealityIO6ObjectC5ErrorO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for Object.Error(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Object.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t type metadata completion function for Properties(uint64_t a1)
{
  type metadata accessor for Prim();
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Properties(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
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

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 16) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void storeEnumTagSinglePayload for Properties(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

uint64_t type metadata completion function for StaticTypePrim(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  result = type metadata accessor for Properties(319, *(a1 + 80), a3, a4);
  if (v5 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of StaticTypePrim.subscript.getter()
{
  return (*(*v0 + 136))();
}

{
  return (*(*v0 + 144))();
}

{
  return (*(*v0 + 168))();
}

{
  return (*(*v0 + 192))();
}

{
  return (*(*v0 + 216))();
}

{
  return (*(*v0 + 240))();
}

uint64_t dispatch thunk of StaticTypePrim.subscript.setter()
{
  return (*(*v0 + 152))();
}

{
  return (*(*v0 + 176))();
}

{
  return (*(*v0 + 200))();
}

{
  return (*(*v0 + 224))();
}

{
  return (*(*v0 + 248))();
}

uint64_t dispatch thunk of StaticTypePrim.subscript.modify()
{
  return (*(*v0 + 160))();
}

{
  return (*(*v0 + 184))();
}

{
  return (*(*v0 + 208))();
}

{
  return (*(*v0 + 232))();
}

{
  return (*(*v0 + 256))();
}

uint64_t outlined init with copy of (URL, __REAsset)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of (URL, __REAsset)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV_10RealityKit9__REAssetCtMd, &_s10Foundation3URLV_10RealityKit9__REAssetCtMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t _sSo16RIOPxrTfTokenRefaAB14CoreFoundation9_CFObjectSCWlTm_0(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void estimateTextureImportMemoryAndSelectDownsamplingModeCDM(textureDownsampleConfig:session:)(uint64_t a1, uint64_t a2, double a3)
{
  v66 = *(a2 + 16);
  v73 = MEMORY[0x277D84F90];
  ImportSession.gatherTexturesAsImportOperations(onlyUsedTextures:)(0);
  ImportSession.TextureOperatorContainer.makeIterator()();
  dispatch thunk of _AnyIteratorBoxBase.next()();
  v4 = v72;
  if (v72)
  {
    v5 = v71;
    while (1)
    {
      v6 = v4;
      v7 = RETextureImportOperationGetImageUTType();
      if (!v7)
      {
        goto LABEL_9;
      }

      v8 = v7;
      v9 = RETextureImportOperationCopyImageProperties();
      if (!v9)
      {
        break;
      }

      v10 = v9;
      PixelFormatMode = RETextureImportOperationGetPixelFormatMode();
      v12 = RETextureImportOperationCopyTextureDescriptorTemplate();
      v69 = RETextureImportOperationGetMipmapMode() != 2;
      v13 = v12;
      v14 = specialized RIOPixelFormat.init(pixelFormatMode:textureDescriptor:)(PixelFormatMode, v13);
      v16 = v15;
      v17 = objc_allocWithZone(RIOTextureDescription);
      v18 = v10;
      v19 = v8;
      v20 = MEMORY[0x26670EFB0](v5, v6);

      v21 = [v17 initWithName:v20 destinationPixelFormat:v14 imageProperties:v16 fileType:v18 generateMipmaps:v19, v69];

      if (v21)
      {
        v25 = v21;
        MEMORY[0x26670F130]();
        if (*((v73 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v73 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();

        dispatch thunk of _AnyIteratorBoxBase.next()();
        v5 = v71;
        v4 = v72;
      }

      else
      {

LABEL_3:
        dispatch thunk of _AnyIteratorBoxBase.next()();
        v5 = v71;
        v4 = v72;
        if (!v72)
        {
          goto LABEL_16;
        }
      }
    }

LABEL_9:

    if (one-time initialization token for rioComplexityAnalysis != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.rioComplexityAnalysis);
    v19 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v19, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_26187B000, v19, v23, "Either file type and/or image properties is NULL", v24, 2u);
      MEMORY[0x266713AD0](v24, -1, -1);
    }

    goto LABEL_3;
  }

LABEL_16:

  isa = [objc_opt_self() defaultTextureConverters];
  if (!isa)
  {
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for RIOTextureConverter, off_279AEDB00);
    static Array._unconditionallyBridgeFromObjectiveC(_:)();
    isa = Array._bridgeToObjectiveC()().super.isa;
  }

  v27 = objc_opt_self();
  type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for RIOTextureDescription, &off_279AEDB08);
  v28 = Array._bridgeToObjectiveC()().super.isa;
  v29 = [v27 conversionEstimatesFromTextureDescriptions:v28 toFitAvailableMemory:a1 withConverters:isa preferredMaxTextureSize:0 outcome:a3];

  if (v29)
  {
    type metadata accessor for OS_os_log(0, &lazy cache variable for type metadata for RIOTextureConversionEstimate, off_279AEDAF8);
    v70 = static Array._unconditionallyBridgeFromObjectiveC(_:)();
    if (v70 >> 62)
    {
LABEL_51:
      v67 = __CocoaSet.count.getter();
    }

    else
    {
      v67 = *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v30 = v68;
    v58 = v27;
    v59 = v29;
    if (!v67)
    {
LABEL_41:

      [v58 peakMemoryForConversionEstimates_];

      return;
    }

    v31 = 0;
    v29 = (v70 & 0xC000000000000001);
    v32 = &unk_279AF0000;
    while (1)
    {
      if (v29)
      {
        v33 = MEMORY[0x26670F670](v31, v70);
        v34 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          goto LABEL_48;
        }
      }

      else
      {
        if (v31 >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_50;
        }

        v33 = *(v70 + 8 * v31 + 32);
        v34 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
LABEL_48:
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }
      }

      v35 = v33;
      v36 = [v35 v32[114]];
      if (v36 == 1)
      {
      }

      else
      {
        v27 = v36;
        if (HIDWORD(v36))
        {

          __break(1u);
          return;
        }

        v68 = v30;
        if (one-time initialization token for rioComplexityAnalysis != -1)
        {
          swift_once();
        }

        v37 = type metadata accessor for Logger();
        __swift_project_value_buffer(v37, static Logger.rioComplexityAnalysis);
        v38 = v35;
        v39 = Logger.logObject.getter();
        v40 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v39, v40))
        {
          v63 = v39;
          v41 = swift_slowAlloc();
          v62 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          v71 = v64;
          *v41 = 136316162;
          v42 = [v38 name];
          v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v45 = v44;

          v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, &v71);

          *(v41 + 4) = v46;
          *(v41 + 12) = 1024;
          *(v41 + 14) = v27;
          *(v41 + 18) = 1024;
          [v38 originalSize];
          v60 = v47;

          *(v41 + 20) = v60;
          *(v41 + 24) = 1024;
          [v38 originalSize];
          v61 = v48;

          *(v41 + 26) = v61;
          *(v41 + 30) = 2112;
          v49 = [objc_opt_self() currentThread];
          *(v41 + 32) = v49;
          *v62 = v49;
          _os_log_impl(&dword_26187B000, v63, v40, "Downsampling %s by a factor of %u, original size: %dx%d, Thread: %@", v41, 0x28u);
          outlined destroy of NSObject?(v62);
          MEMORY[0x266713AD0](v62, -1, -1);
          v29 = v64;
          __swift_destroy_boxed_opaque_existential_0(v64);
          MEMORY[0x266713AD0](v64, -1, -1);
          MEMORY[0x266713AD0](v41, -1, -1);
        }

        else
        {
        }

        if ((v27 & 0x80000000) != 0)
        {
          goto LABEL_49;
        }

        v50 = [v38 name];

        v51 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v53 = v52;

        ImportSession.TextureOperatorContainer.setDownsample(factor:for:in:)(v27, v51, v53, v66);
        v30 = v68;
        if (v68)
        {

          return;
        }

        v29 = (v70 & 0xC000000000000001);
        v32 = &unk_279AF0000;
      }

      ++v31;
      if (v34 == v67)
      {
        goto LABEL_41;
      }
    }
  }

  if (one-time initialization token for rioComplexityAnalysis != -1)
  {
    swift_once();
  }

  v54 = type metadata accessor for Logger();
  __swift_project_value_buffer(v54, static Logger.rioComplexityAnalysis);
  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    *v57 = 0;
    _os_log_impl(&dword_26187B000, v55, v56, "File too big to load on this device", v57, 2u);
    MEMORY[0x266713AD0](v57, -1, -1);
  }

  lazy protocol witness table accessor for type EstimateError and conformance EstimateError();
  swift_allocError();
  swift_willThrow();
}

uint64_t one-time initialization function for rioComplexityAnalysis()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.rioComplexityAnalysis);
  __swift_project_value_buffer(v0, static Logger.rioComplexityAnalysis);
  return Logger.init(subsystem:category:)();
}

Swift::Int EstimateError.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x26670FA20](0);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type EstimateError and conformance EstimateError()
{
  result = lazy protocol witness table cache variable for type EstimateError and conformance EstimateError;
  if (!lazy protocol witness table cache variable for type EstimateError and conformance EstimateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EstimateError and conformance EstimateError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EstimateError and conformance EstimateError;
  if (!lazy protocol witness table cache variable for type EstimateError and conformance EstimateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EstimateError and conformance EstimateError);
  }

  return result;
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized RIOPixelFormat.init(pixelFormatMode:textureDescriptor:)(int a1, id a2)
{
  if (a1 != 1)
  {
LABEL_12:
    v4 = 0;
    goto LABEL_13;
  }

  v3 = [a2 pixelFormat];
  if ((v3 - 10) < 2)
  {
    v4 = 4;
    goto LABEL_13;
  }

  if (v3 != 71 && v3 != 70)
  {
    if (one-time initialization token for rioComplexityAnalysis != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.rioComplexityAnalysis);
    v6 = a2;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 134217984;
      *(v9 + 4) = [v6 pixelFormat];

      _os_log_impl(&dword_26187B000, v7, v8, "Unexpected pixel format %lu", v9, 0xCu);
      MEMORY[0x266713AD0](v9, -1, -1);
    }

    else
    {
    }

    goto LABEL_12;
  }

  v4 = 2;
LABEL_13:

  return v4;
}

uint64_t *__swift_allocate_value_buffer(uint64_t a1, uint64_t *a2)
{
  if ((*(*(a1 - 8) + 80) & 0x20000) != 0)
  {
    v3 = swift_slowAlloc();
    *a2 = v3;
    return v3;
  }

  return a2;
}

uint64_t closure #1 in static ActionBuilder.generateVisibilityActionSpecifications(inputs:)(double a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t *a8, uint64_t a9, uint64_t a10, uint64_t a11)
{
  v92 = a9;
  v98 = a8;
  v90 = a4;
  v94 = a10;
  v95 = a11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit41__RKEntityHideActionBuildOutAnimationTypeOSgMd, &_s10RealityKit41__RKEntityHideActionBuildOutAnimationTypeOSgMR);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v78 = &v75 - v15;
  v80 = type metadata accessor for __RKEntityHideActionBuildOutAnimationType();
  v79 = *(v80 - 8);
  v17.n128_f32[0] = MEMORY[0x28223BE20](v80, v16);
  v76 = &v75 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v17);
  v77 = &v75 - v20;
  v21 = type metadata accessor for __RKEntityActionAnimationStyle();
  v88 = *(v21 - 8);
  v89 = v21;
  MEMORY[0x28223BE20](v21, v22);
  v93 = &v75 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for __RKEntityMoveEaseType();
  v85 = *(v24 - 8);
  v86 = v24;
  MEMORY[0x28223BE20](v24, v25);
  v91 = &v75 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for __RKEntityMoveEase();
  v82 = *(v27 - 8);
  v83 = v27;
  MEMORY[0x28223BE20](v27, v28);
  v87 = &v75 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = type metadata accessor for UUID();
  v81 = *(v30 - 8);
  MEMORY[0x28223BE20](v30, v31);
  v84 = &v75 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for __RKEntityActionSpecification();
  v96 = *(v33 - 8);
  v97 = v33;
  v35.n128_f32[0] = MEMORY[0x28223BE20](v33, v34);
  v75 = &v75 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37, v35);
  v39 = &v75 - v38;
  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit40__RKEntityShowActionBuildInAnimationTypeOSgMd, &_s10RealityKit40__RKEntityShowActionBuildInAnimationTypeOSgMR);
  MEMORY[0x28223BE20](v40 - 8, v41);
  v43 = &v75 - v42;
  v44 = type metadata accessor for __RKEntityShowActionBuildInAnimationType();
  v45 = *(v44 - 8);
  v47.n128_f32[0] = MEMORY[0x28223BE20](v44, v46);
  v49 = &v75 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50, v47);
  v52 = &v75 - v51;
  if (a5 == 2003789939 && a6 == 0xE400000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    __RKEntityShowActionBuildInAnimationType.init(inputs:)(v43);
    (*(v45 + 56))(v43, 0, 1, v44);
    (*(v45 + 32))(v52, v43, v44);
    (*(v81 + 16))(v84, v90, v30);
    (*(v82 + 16))(v87, v92, v83);
    (*(v85 + 16))(v91, v94, v86);
    (*(v88 + 16))(v93, v95, v89);
    (*(v45 + 16))(v49, v52, v44);
    __RKEntityShowActionArguments.init(target:duration:distance:ease:easeType:fadeIn:finalOpacity:respectPhysics:physicsLinearCoefficient:physicsAngularCoefficient:animationStyle:buildInAnimationType:)();
    v54 = v96;
    v53 = v97;
    (*(v96 + 104))(v39, *MEMORY[0x277CDAF78], v97);
    v55 = v98;
    v56 = *v98;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *v55 = v56;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v56[2] + 1, 1, v56);
      *v55 = v56;
    }

    v59 = v56[2];
    v58 = v56[3];
    if (v59 >= v58 >> 1)
    {
      *v55 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1, v56);
    }

    (*(v45 + 8))(v52, v44);
    v60 = *v55;
    *(v60 + 16) = v59 + 1;
    return (*(v54 + 32))(v60 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v59, v39, v53);
  }

  else if (a5 == 1701079400 && a6 == 0xE400000000000000 || (result = _stringCompareWithSmolCheck(_:_:expecting:)(), (result & 1) != 0))
  {

    v62 = v78;
    __RKEntityHideActionBuildOutAnimationType.init(inputs:)(v78);
    v63 = v79;
    v64 = v80;
    (*(v79 + 56))(v62, 0, 1, v80);
    v65 = v77;
    (*(v63 + 32))(v77, v62, v64);
    (*(v81 + 16))(v84, v90, v30);
    (*(v82 + 16))(v87, v92, v83);
    (*(v85 + 16))(v91, v94, v86);
    (*(v88 + 16))(v93, v95, v89);
    (*(v63 + 16))(v76, v65, v64);
    v66 = v75;
    __RKEntityHideActionArguments.init(target:duration:distance:ease:easeType:fadeOut:finalOpacity:respectPhysics:physicsLinearCoefficient:physicsAngularCoefficient:animationStyle:buildOutAnimationType:)();
    v68 = v96;
    v67 = v97;
    (*(v96 + 104))(v66, *MEMORY[0x277CDAF70], v97);
    v69 = v98;
    v70 = *v98;
    v71 = swift_isUniquelyReferenced_nonNull_native();
    *v69 = v70;
    if ((v71 & 1) == 0)
    {
      v70 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v70[2] + 1, 1, v70);
      *v69 = v70;
    }

    v73 = v70[2];
    v72 = v70[3];
    if (v73 >= v72 >> 1)
    {
      *v69 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v72 > 1), v73 + 1, 1, v70);
    }

    (*(v63 + 8))(v65, v64);
    v74 = *v69;
    *(v74 + 16) = v73 + 1;
    return (*(v68 + 32))(v74 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v73, v66, v67);
  }

  return result;
}

uint64_t specialized static ActionBuilder.generateVisibilityActionSpecifications(inputs:)(char *a1)
{
  v2 = type metadata accessor for __RKEntityGroupActionOrder();
  v74 = *(v2 - 8);
  v75 = v2;
  MEMORY[0x28223BE20](v2, v3);
  v73 = &v65 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit22__RKEntityMoveEaseTypeOSgMd, &_s10RealityKit22__RKEntityMoveEaseTypeOSgMR);
  MEMORY[0x28223BE20](v5 - 8, v6);
  v76 = &v65 - v7;
  v8 = type metadata accessor for __RKEntityMoveEaseType();
  v9 = *(v8 - 8);
  v77 = v8;
  v78 = v9;
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit18__RKEntityMoveEaseOSgMd, &_s10RealityKit18__RKEntityMoveEaseOSgMR);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v16 = &v65 - v15;
  v17 = type metadata accessor for __RKEntityMoveEase();
  v79 = *(v17 - 8);
  MEMORY[0x28223BE20](v17, v18);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit30__RKEntityActionAnimationStyleOSgMd, &_s10RealityKit30__RKEntityActionAnimationStyleOSgMR);
  MEMORY[0x28223BE20](v21 - 8, v22);
  v24 = &v65 - v23;
  v25 = type metadata accessor for __RKEntityActionAnimationStyle();
  v26 = *(v25 - 8);
  MEMORY[0x28223BE20](v25, v27);
  v29 = &v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFAA16ToolsFoundationsO5TokenV_Tt1g5(v80);
  v70 = v24;
  v71 = v26;
  v67 = v16;
  v68 = v29;
  v65 = v12;
  v66 = v20;
  v69 = v17;
  v72 = v25;
  v30 = v80[0];
  v31 = RIOPxrTfTokenCopyString();
  v32 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v34 = v33;

  _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFSd_Tt1g5Tf4ndn_n(0x6E6F697461727564, 0xE800000000000000, v35);
  v37 = v36;
  _s9RealityIO6InputsC17valueForAttribute5named4type14requestContextxSS_xmAC020PropertyValueRequestJ0OtKAA03UsdfL0RzlFSd_Tt1g5Tf4ndn_n(0x7473694465766F6DLL, 0xEC00000065636E61, *&v36);
  v39 = v38;

  v40 = v70;
  __RKEntityActionAnimationStyle.init(inputs:)(v70);
  v42 = v71;
  v41 = v72;
  (*(v71 + 56))(v40, 0, 1, v72);
  (*(v42 + 32))(v68, v40, v41);

  v43 = v67;
  __RKEntityMoveEase.init(inputs:)(v67);
  v70 = v32;
  v44 = v34;
  v45 = v79;
  v46 = v69;
  (*(v79 + 56))(v43, 0, 1, v69);
  v47 = v66;
  (*(v45 + 32))(v66, v43, v46);

  v48 = v76;
  __RKEntityMoveEaseType.init(inputs:)(v76);
  v49 = v78;
  v50 = v48;
  v51 = v48;
  v52 = v77;
  (*(v78 + 56))(v50, 0, 1, v77);
  v53 = *(v49 + 32);
  v54 = v65;
  v55 = v53(v65, v51, v52);
  v80[0] = MEMORY[0x277D84F90];
  MEMORY[0x28223BE20](v55, v56);
  *(&v65 - 10) = v70;
  *(&v65 - 9) = v44;
  *(&v65 - 8) = a1;
  *(&v65 - 7) = v80;
  *(&v65 - 6) = v37;
  *(&v65 - 5) = v39;
  *(&v65 - 4) = v47;
  *(&v65 - 3) = v54;
  *(&v65 - 2) = v57;
  specialized Inputs.forEachAffectedObject(requestContext:callback:)(partial apply for closure #1 in static ActionBuilder.generateVisibilityActionSpecifications(inputs:), (&v65 - 12));

  v58 = v80[0];
  if (*(v80[0] + 16) >= 2uLL)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMd, &_ss23_ContiguousArrayStorageCy10RealityKit29__RKEntityActionSpecificationOGMR);
    v59 = type metadata accessor for __RKEntityActionSpecification();
    v60 = *(v59 - 8);
    v61 = (*(v60 + 80) + 32) & ~*(v60 + 80);
    v58 = swift_allocObject();
    *(v58 + 16) = xmmword_2619891C0;
    (*(v74 + 104))(v73, *MEMORY[0x277CDAEF8], v75);

    v54 = v65;
    __RKEntityActionGroupArguments.init(order:actions:exclusive:loopCount:)();
    v62 = v58 + v61;
    v47 = v66;
    (*(v60 + 104))(v62, *MEMORY[0x277CDAFA0], v59);
    v41 = v72;
  }

  v63 = v69;
  (*(v78 + 8))(v54, v52);
  (*(v45 + 8))(v47, v63);
  (*(v42 + 8))(v68, v41);
  return v58;
}

uint64_t ObjectsChangeInfo.changedFields(_:)(uint64_t *a1)
{
  if (*(*v1 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(*a1), (v2 & 1) != 0))
  {
  }

  else
  {
    return MEMORY[0x277D84F90];
  }
}

uint64_t ObjectsChangeInfo.hasChangedFields(_:)(uint64_t *a1)
{
  if (*(*v1 + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(*a1);
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

uint64_t ObjectsChangeInfo.description.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  if (*(v2 + 16))
  {
    _StringGuts.grow(_:)(18);

    v3 = MEMORY[0x26670F180](v2, &type metadata for SceneDescriptionFoundations.Path);
    MEMORY[0x26670F080](v3);

    MEMORY[0x26670F080](32, 0xE100000000000000);
    v4 = 0x6465636E79736572;
  }

  else
  {
    v4 = 0;
  }

  v5 = 0xE000000000000000;
  if (*(v1 + 16))
  {
    _StringGuts.grow(_:)(24);

    v6 = MEMORY[0x26670F180](v1, &type metadata for SceneDescriptionFoundations.Path);
    MEMORY[0x26670F080](v6);

    v7 = 0xD000000000000016;
    v5 = 0x8000000261997B40;
  }

  else
  {
    v7 = 0;
  }

  MEMORY[0x26670F080](v7, v5);

  return v4;
}

uint64_t ObjectsChangeInfo.init(_:)@<X0>(uint64_t a1@<X0>, unint64_t *a2@<X8>)
{
  v4 = MEMORY[0x277D84F90];
  v5 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC9RealityIO27SceneDescriptionFoundationsO4PathV_SayAC05ToolsG0O5TokenVGTt0g5Tf4g_n(MEMORY[0x277D84F90]);

  v6 = RIOPxrUsdNoticeObjectsChangedCopyStageRef();
  if (v6)
  {
    v7 = v6;
    type metadata accessor for Stage();
    v8 = swift_allocObject();
    *(v8 + 16) = v7;
  }

  else
  {
    v8 = 0;
  }

  v9 = RIOPxrUsdNoticeObjectsChangedCopyResyncedPaths();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v57 = 0;
    type metadata accessor for RIOPxrSdfPathRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v10 = v4;
    if (!(v4 >> 62))
    {
      goto LABEL_6;
    }

LABEL_15:
    v11 = __CocoaSet.count.getter();
    v55 = v8;
    if (v11)
    {
      goto LABEL_7;
    }

LABEL_16:

    v10 = 0;
    v12 = MEMORY[0x277D84F90];
    goto LABEL_23;
  }

  v10 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_15;
  }

LABEL_6:
  v11 = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v55 = v8;
  if (!v11)
  {
    goto LABEL_16;
  }

LABEL_7:
  v57 = v4;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11 & ~(v11 >> 63), 0);
  if (v11 < 0)
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v12 = v57;
  if ((v10 & 0xC000000000000001) != 0)
  {
    v52 = a2;
    v13 = v5;
    for (i = 0; i != v11; ++i)
    {
      v15 = MEMORY[0x26670F670](i, v10);
      v57 = v12;
      v17 = *(v12 + 16);
      v16 = *(v12 + 24);
      if (v17 >= v16 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
        v12 = v57;
      }

      *(v12 + 16) = v17 + 1;
      *(v12 + 8 * v17 + 32) = v15;
    }

    v10 = 0;
    v5 = v13;
    a2 = v52;
  }

  else
  {
    v18 = 32;
    do
    {
      v19 = *(v10 + v18);
      v57 = v12;
      v21 = *(v12 + 16);
      v20 = *(v12 + 24);
      v22 = v19;
      if (v21 >= v20 >> 1)
      {
        v23 = v5;
        v24 = a2;
        v25 = v22;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v20 > 1), v21 + 1, 1);
        v22 = v25;
        a2 = v24;
        v5 = v23;
        v12 = v57;
      }

      *(v12 + 16) = v21 + 1;
      *(v12 + 8 * v21 + 32) = v22;
      v18 += 8;
      --v11;
    }

    while (v11);

    v10 = 0;
  }

  v4 = MEMORY[0x277D84F90];
LABEL_23:

  v26 = RIOPxrUsdNoticeObjectsChangedCopyChangedInfoOnlyPaths();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    v57 = 0;
    type metadata accessor for RIOPxrSdfPathRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v27 = v4;
    if (!(v4 >> 62))
    {
      goto LABEL_25;
    }
  }

  else
  {

    v27 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_25:
      v28 = *((v27 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v28)
      {
        goto LABEL_26;
      }

LABEL_35:

      v29 = MEMORY[0x277D84F90];
LABEL_41:
      v57 = v5;
      v42 = *(v12 + 16);

      if (v42)
      {
        v43 = 0;
        while (v43 < *(v12 + 16))
        {
          v56 = *(v12 + 32 + 8 * v43);
          v44 = v56;
          closure #1 in ObjectsChangeInfo.init(_:)(&v57, &v56, a1);
          ++v43;

          if (v42 == v43)
          {
            v45 = v57;
            goto LABEL_47;
          }
        }

        __break(1u);
      }

      else
      {
        v45 = v5;
LABEL_47:

        v57 = v45;
        v46 = *(v29 + 16);
        v47 = v45;
        if (!v46)
        {
LABEL_52:

          *a2 = v47;
          a2[1] = v29;
          a2[2] = v12;
          a2[3] = v55;
          return result;
        }

        v48 = 0;
        while (v48 < *(v29 + 16))
        {
          v56 = *(v29 + 32 + 8 * v48);
          v49 = v56;
          closure #1 in ObjectsChangeInfo.init(_:)(&v57, &v56, a1);
          ++v48;

          if (v46 == v48)
          {
            v47 = v57;
            goto LABEL_52;
          }
        }
      }

      __break(1u);
      goto LABEL_55;
    }
  }

  v28 = __CocoaSet.count.getter();
  if (!v28)
  {
    goto LABEL_35;
  }

LABEL_26:
  v57 = v4;
  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v28 & ~(v28 >> 63), 0);
  if ((v28 & 0x8000000000000000) == 0)
  {
    v51 = v5;
    v29 = v57;
    if ((v27 & 0xC000000000000001) != 0)
    {
      for (j = 0; j != v28; ++j)
      {
        v31 = MEMORY[0x26670F670](j, v27);
        v57 = v29;
        v33 = *(v29 + 16);
        v32 = *(v29 + 24);
        if (v33 >= v32 >> 1)
        {
          v53 = a2;
          v34 = v31;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1);
          v31 = v34;
          a2 = v53;
          v29 = v57;
        }

        *(v29 + 16) = v33 + 1;
        *(v29 + 8 * v33 + 32) = v31;
      }

      v5 = v51;
    }

    else
    {
      v54 = a2;
      v35 = 32;
      do
      {
        v36 = *(v27 + v35);
        v57 = v29;
        v38 = *(v29 + 16);
        v37 = *(v29 + 24);
        v39 = v36;
        if (v38 >= v37 >> 1)
        {
          v40 = v37 > 1;
          v41 = v39;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v40, v38 + 1, 1);
          v39 = v41;
          v29 = v57;
        }

        *(v29 + 16) = v38 + 1;
        *(v29 + 8 * v38 + 32) = v39;
        v35 += 8;
        --v28;
      }

      while (v28);

      v5 = v51;
      a2 = v54;
    }

    goto LABEL_41;
  }

LABEL_56:
  __break(1u);

  __break(1u);
  return result;
}

void closure #1 in ObjectsChangeInfo.init(_:)(uint64_t *a1, void **a2, uint64_t a3)
{
  v4 = v3;
  v6 = *a2;
  if ((RIOPxrSdfPathIsPropertyPath() & 1) == 0 && !RIOPxrSdfPathIsNamespacedPropertyPath())
  {
    v27 = v6;
    v28 = RIOPxrUsdNoticeObjectsChangedCopyChangedFields();
    objc_opt_self();
    v29 = swift_dynamicCastObjCClass();
    v30 = MEMORY[0x277D84F90];
    if (v29)
    {
      type metadata accessor for RIOPxrTfTokenRef(0);
      static Array._conditionallyBridgeFromObjectiveC(_:result:)();

      v31 = v30;
      if (!(v30 >> 62))
      {
        goto LABEL_18;
      }
    }

    else
    {

      v31 = MEMORY[0x277D84F90];
      if (!(MEMORY[0x277D84F90] >> 62))
      {
LABEL_18:
        v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v32)
        {
LABEL_19:
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32 & ~(v32 >> 63), 0);
          if (v32 < 0)
          {
            goto LABEL_46;
          }

          v33 = v30;
          if ((v31 & 0xC000000000000001) != 0)
          {
            for (i = 0; i != v32; ++i)
            {
              v35 = MEMORY[0x26670F670](i, v31);
              v58 = v33;
              v37 = *(v33 + 16);
              v36 = *(v33 + 24);
              if (v37 >= v36 >> 1)
              {
                v38 = v35;
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1);
                v35 = v38;
                v33 = v58;
              }

              *(v33 + 16) = v37 + 1;
              *(v33 + 8 * v37 + 32) = v35;
            }
          }

          else
          {
            v49 = 32;
            do
            {
              v61 = v33;
              v51 = *(v33 + 16);
              v50 = *(v33 + 24);
              v52 = *(v31 + v49);
              if (v51 >= v50 >> 1)
              {
                v53 = v52;
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1);
                v52 = v53;
                v33 = v61;
              }

              *(v33 + 16) = v51 + 1;
              *(v33 + 8 * v51 + 32) = v52;
              v49 += 8;
              --v32;
            }

            while (v32);
          }

LABEL_44:
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v62 = *a1;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v33, v27, isUniquelyReferenced_nonNull_native);

          *a1 = v62;
          return;
        }

LABEL_38:

        v33 = MEMORY[0x277D84F90];
        goto LABEL_44;
      }
    }

    v32 = __CocoaSet.count.getter();
    if (v32)
    {
      goto LABEL_19;
    }

    goto LABEL_38;
  }

  v56 = a1;
  v7 = RIOPxrSdfPathCopyPrimPath();
  v8 = RIOPxrSdfPathCopyElementString();
  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = specialized Collection.dropFirst(_:)(1uLL, v9, v11);
  v14 = v13;
  v16 = v15;
  v18 = v17;

  MEMORY[0x26670F020](v12, v14, v16, v18);

  v55 = v7;
  v19 = RIOPxrUsdNoticeObjectsChangedCopyChangedFields();
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    type metadata accessor for RIOPxrTfTokenRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v20 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
      goto LABEL_5;
    }

LABEL_14:
    v21 = __CocoaSet.count.getter();
    if (v21)
    {
      goto LABEL_6;
    }

    goto LABEL_15;
  }

  v20 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_14;
  }

LABEL_5:
  v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v21)
  {
LABEL_6:
    v57 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v21 & ~(v21 >> 63), 0);
    if ((v21 & 0x8000000000000000) == 0)
    {
      v22 = v57;
      if ((v20 & 0xC000000000000001) != 0)
      {
        for (j = 0; j != v21; ++j)
        {
          v24 = MEMORY[0x26670F670](j, v20);
          v26 = *(v57 + 16);
          v25 = *(v57 + 24);
          if (v26 >= v25 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
          }

          *(v57 + 16) = v26 + 1;
          *(v57 + 8 * v26 + 32) = v24;
        }
      }

      else
      {
        v39 = 32;
        do
        {
          v59 = v22;
          v41 = *(v22 + 2);
          v40 = *(v22 + 3);
          v42 = *(v20 + v39);
          if (v41 >= v40 >> 1)
          {
            v43 = v4;
            v44 = v42;
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1);
            v42 = v44;
            v4 = v43;
            v22 = v59;
          }

          *(v22 + 2) = v41 + 1;
          *&v22[8 * v41 + 32] = v42;
          v39 += 8;
          --v21;
        }

        while (v21);
      }

      goto LABEL_31;
    }

    __break(1u);
LABEL_46:
    __break(1u);
    return;
  }

LABEL_15:

  v22 = MEMORY[0x277D84F90];
LABEL_31:
  String.utf8CString.getter();

  v45 = RIOPxrTfTokenCreateWithCString();

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
  }

  v47 = *(v22 + 2);
  v46 = *(v22 + 3);
  if (v47 >= v46 >> 1)
  {
    v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v22);
  }

  *(v22 + 2) = v47 + 1;
  *&v22[8 * v47 + 32] = v45;
  v48 = swift_isUniquelyReferenced_nonNull_native();
  v60 = *v56;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v22, v55, v48);

  *v56 = v60;
}

uint64_t getEnumTagSinglePayload for ObjectsChangeInfo(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t storeEnumTagSinglePayload for ObjectsChangeInfo(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t specialized Collection.dropFirst(_:)(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    return result;
  }

  if ((a3 & 0x2000000000000000) != 0)
  {
    v3 = HIBYTE(a3) & 0xF;
  }

  else
  {
    v3 = a2 & 0xFFFFFFFFFFFFLL;
  }

  v4 = 7;
  if (((a3 >> 60) & ((a2 & 0x800000000000000) == 0)) != 0)
  {
    v4 = 11;
  }

  v5 = v4 | (v3 << 16);
  result = String.index(_:offsetBy:limitedBy:)();
  if (v6)
  {
    result = v5;
  }

  if (4 * v3 < result >> 14)
  {
    goto LABEL_14;
  }

  return String.subscript.getter();
}

void *NamedPropertyDirtyState.__allocating_init(propertyName:)(void **a1)
{
  v1 = *a1;
  type metadata accessor for NamedPropertyDirtyState();
  v2 = swift_allocObject();
  v2[4] = v1;
  v3 = v1;
  v4 = MEMORY[0x277D84FA0];
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d9IO15Stagej13StateC26stagek45ContainsAnyOf012primsContainiJ04coreACShyAA16fg2O5h38VG_ShyAA04PrimdE0CGSo010RIOBuilderdC13L27RefaSgtcfcSo0rdgsT0aAJXEfU_Tf1cn_n(MEMORY[0x277D84FA0]);
  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v6 = RIOBuilderAnyValueDirtyPropertyDescriptorCreateWithNameAndMetadataDescriptors();

  v2[2] = v4;
  v2[3] = v6;
  return v2;
}

uint64_t PropertyDirtyState.description.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO18PropertyDirtyStateCmMd, &_s9RealityIO18PropertyDirtyStateCmMR);
  v0 = String.init<A>(describing:)();
  _StringGuts.grow(_:)(35);

  lazy protocol witness table accessor for type ToolsFoundations.Token and conformance ToolsFoundations.Token();
  v1 = Set.description.getter();
  MEMORY[0x26670F080](v1);

  MEMORY[0x26670F080](41, 0xE100000000000000);

  MEMORY[0x26670F080](0xD000000000000020, 0x8000000261997B60);

  return v0;
}

uint64_t PropertyDirtyState.__allocating_init(propertyMetadataContainsAnyOf:core:)(uint64_t a1, uint64_t a2)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  if (!a2)
  {
    v5 = result;

    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So08RIOPxrTfH3Refas5NeverOTg503_s9d105IO22TypeNamePrimDirtyStateC04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h88VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13DescriptorRefaSgtcfc12generateCoreL_AQyFSo08I60TftX0aAKcfu_33_1208ebe0c1611b0e36169838b3b02464AkUTf3nnnpk_nTf1cn_n(v6);

    type metadata accessor for RIOPxrTfTokenRef(0);
    isa = Array._bridgeToObjectiveC()().super.isa;

    a2 = RIOBuilderDirtyPropertyDescriptorCreateWithMetadataDescriptors();

    result = v5;
  }

  *(result + 24) = a2;
  return result;
}

char *PropertyDirtyState.__allocating_init(core:)(uint64_t a1)
{
  v2 = v1;
  v4 = MEMORY[0x266710690]();
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    type metadata accessor for RIOPxrTfTokenRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v7 = v6;
    if (!(v6 >> 62))
    {
      goto LABEL_3;
    }

LABEL_12:
    v8 = __CocoaSet.count.getter();
    if (v8)
    {
      goto LABEL_4;
    }

LABEL_13:

    v10 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  v7 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_12;
  }

LABEL_3:
  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_4:
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8 & ~(v8 >> 63), 0);
  if (v8 < 0)
  {
    __break(1u);
    return result;
  }

  v10 = v6;
  if ((v7 & 0xC000000000000001) != 0)
  {
    for (i = 0; i != v8; ++i)
    {
      v12 = MEMORY[0x26670F670](i, v7);
      v14 = *(v10 + 16);
      v13 = *(v10 + 24);
      if (v14 >= v13 >> 1)
      {
        v15 = v12;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        v12 = v15;
      }

      *(v10 + 16) = v14 + 1;
      *(v10 + 8 * v14 + 32) = v12;
    }
  }

  else
  {
    v16 = 32;
    do
    {
      v17 = *(v6 + 16);
      v18 = *(v6 + 24);
      v19 = *(v7 + v16);
      if (v17 >= v18 >> 1)
      {
        v20 = v18 > 1;
        v21 = v19;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v20, v17 + 1, 1);
        v19 = v21;
      }

      *(v6 + 16) = v17 + 1;
      *(v6 + 8 * v17 + 32) = v19;
      v16 += 8;
      --v8;
    }

    while (v8);
  }

LABEL_19:
  v22 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO16ToolsFoundationsO5TokenV_SayAHGTt0g5Tf4g_n(v10);

  v23 = *(v2 + 144);

  return v23(v22, a1);
}

uint64_t PropertyDirtyState.deinit()
{

  return v0;
}

uint64_t PropertyDirtyState.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::Int PropertyDirtyState.hashValue.getter()
{
  Hasher.init(_seed:)();
  (*(*v0 + 120))(v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PropertyDirtyState()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  (*(*v1 + 120))(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PropertyDirtyState()
{
  Hasher.init(_seed:)();
  (*(**v0 + 120))(v2);
  return Hasher._finalize()();
}

id NamedPropertyDirtyState.propertyName.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = v2;
  return v2;
}

void *NamedPropertyDirtyState.__allocating_init(propertyName:propertyMetadataContainsAnyOf:)(void **a1, uint64_t a2)
{
  v3 = *a1;
  type metadata accessor for NamedPropertyDirtyState();
  v4 = swift_allocObject();
  v4[4] = v3;
  v5 = v3;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d9IO15Stagej13StateC26stagek45ContainsAnyOf012primsContainiJ04coreACShyAA16fg2O5h38VG_ShyAA04PrimdE0CGSo010RIOBuilderdC13L27RefaSgtcfcSo0rdgsT0aAJXEfU_Tf1cn_n(a2);
  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v7 = RIOBuilderAnyValueDirtyPropertyDescriptorCreateWithNameAndMetadataDescriptors();

  v4[2] = a2;
  v4[3] = v7;
  return v4;
}

void NamedPropertyDirtyState.hash(into:)(__int128 *a1)
{
  type metadata accessor for RIOPxrTfTokenRef(0);
  _sSo16RIOPxrTfTokenRefaAB14CoreFoundation9_CFObjectSCWlTm_1(&lazy protocol witness table cache variable for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef, 255, type metadata accessor for RIOPxrTfTokenRef, &protocol conformance descriptor for RIOPxrTfTokenRef);
  _CFObject.hash(into:)();
  v3 = *(v1 + 16);

  specialized Set.hash(into:)(a1, v3);
}

uint64_t NamedPropertyDirtyState.isEqual(to:)(uint64_t a1)
{
  v2 = v1;
  v3 = swift_dynamicCastClass();
  if (v3)
  {
    v4 = v3;
    v5 = *(v1 + 32);
    v6 = *(v3 + 32);
    type metadata accessor for RIOPxrTfTokenRef(0);
    _sSo16RIOPxrTfTokenRefaAB14CoreFoundation9_CFObjectSCWlTm_1(&lazy protocol witness table cache variable for type RIOPxrTfTokenRef and conformance RIOPxrTfTokenRef, 255, type metadata accessor for RIOPxrTfTokenRef, &protocol conformance descriptor for RIOPxrTfTokenRef);

    v7 = v5;
    v8 = v6;
    v9 = static _CFObject.== infix(_:_:)();

    if (v9)
    {
      v10 = *(v2 + 16);
      v11 = *(v4 + 16);

      v12 = _sSh2eeoiySbShyxG_ABtFZ9RealityIO16ToolsFoundationsO5TokenV_Tt1g5(v10, v11);
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    v12 = 0;
  }

  return v12 & 1;
}

uint64_t NamedPropertyDirtyState.description.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO23NamedPropertyDirtyStateCmMd, &_s9RealityIO23NamedPropertyDirtyStateCmMR);
  v0 = String.init<A>(describing:)();
  _StringGuts.grow(_:)(19);

  v1 = RIOPxrTfTokenCopyString();
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  MEMORY[0x26670F080](v2, v4);

  MEMORY[0x26670F080](8236, 0xE200000000000000);

  MEMORY[0x26670F080](0x747265706F727028, 0xEF203A656D614E79);

  _StringGuts.grow(_:)(34);

  lazy protocol witness table accessor for type ToolsFoundations.Token and conformance ToolsFoundations.Token();
  v5 = Set.description.getter();
  MEMORY[0x26670F080](v5);

  MEMORY[0x26670F080](41, 0xE100000000000000);

  MEMORY[0x26670F080](0xD00000000000001FLL, 0x8000000261997B90);

  return v0;
}

uint64_t NamedPropertyDirtyState.deinit()
{

  return v0;
}

uint64_t NamedPropertyDirtyState.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t NamespacedPropertyDirtyState.propertyNamespace.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void *NamespacedPropertyDirtyState.__allocating_init(propertyNamespace:propertyMetadataContainsAnyOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for NamespacedPropertyDirtyState();
  v6 = swift_allocObject();
  v6[4] = a1;
  v6[5] = a2;

  v7 = MEMORY[0x26670EFB0](a1, a2);

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d9IO15Stagej13StateC26stagek45ContainsAnyOf012primsContainiJ04coreACShyAA16fg2O5h38VG_ShyAA04PrimdE0CGSo010RIOBuilderdC13L27RefaSgtcfcSo0rdgsT0aAJXEfU_Tf1cn_n(a3);
  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v9 = RIOBuilderAnyValueNamespacedDirtyPropertyDescriptorCreateWithNamespacePrefixAndMetadataDescriptors();

  v6[2] = a3;
  v6[3] = v9;
  return v6;
}

void NamespacedPropertyDirtyState.hash(into:)(__int128 *a1)
{
  String.hash(into:)();
  v3 = *(v1 + 16);

  specialized Set.hash(into:)(a1, v3);
}

uint64_t NamespacedPropertyDirtyState.isEqual(to:)(uint64_t a1)
{
  v2 = swift_dynamicCastClass();
  if (!v2)
  {
    return 0;
  }

  if (v1[4] != v2[4] || v1[5] != v2[5])
  {
    v4 = v2;
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v2 = v4;
    if ((v5 & 1) == 0)
    {
      return 0;
    }
  }

  v6 = v1[2];
  v7 = v2[2];

  LOBYTE(v6) = _sSh2eeoiySbShyxG_ABtFZ9RealityIO16ToolsFoundationsO5TokenV_Tt1g5(v6, v7);

  return v6 & 1;
}

uint64_t NamespacedPropertyDirtyState.description.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO28NamespacedPropertyDirtyStateCmMd, &_s9RealityIO28NamespacedPropertyDirtyStateCmMR);
  v1 = String.init<A>(describing:)();
  _StringGuts.grow(_:)(24);

  MEMORY[0x26670F080](*(v0 + 32), *(v0 + 40));
  MEMORY[0x26670F080](8236, 0xE200000000000000);

  MEMORY[0x26670F080](0xD000000000000014, 0x8000000261997BB0);

  _StringGuts.grow(_:)(35);

  lazy protocol witness table accessor for type ToolsFoundations.Token and conformance ToolsFoundations.Token();
  v2 = Set.description.getter();
  MEMORY[0x26670F080](v2);

  MEMORY[0x26670F080](41, 0xE100000000000000);

  MEMORY[0x26670F080](0xD000000000000020, 0x8000000261997BD0);

  return v1;
}

uint64_t NamespacedPropertyDirtyState.deinit()
{

  return v0;
}

uint64_t NamespacedPropertyDirtyState.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t _sSo16RIOPxrTfTokenRefaAB14CoreFoundation9_CFObjectSCWlTm_1(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void *specialized NamedPropertyDirtyState.__allocating_init(core:)(uint64_t a1)
{
  v2 = RIOBuilderAnyValueDirtyPropertyDescriptorCopyName();
  v3 = MEMORY[0x266710470](a1);
  objc_opt_self();
  v4 = swift_dynamicCastObjCClass();
  v5 = MEMORY[0x277D84F90];
  if (v4)
  {
    type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v6 = v5;
    if (!(v5 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {

    v6 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_3:
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v7)
      {
        goto LABEL_4;
      }

LABEL_13:

      v9 = MEMORY[0x277D84F90];
LABEL_19:
      v19 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO16ToolsFoundationsO5TokenV_SayAHGTt0g5Tf4g_n(v9);

      type metadata accessor for NamedPropertyDirtyState();
      result = swift_allocObject();
      result[3] = a1;
      result[4] = v2;
      result[2] = v19;
      return result;
    }
  }

  v7 = __CocoaSet.count.getter();
  if (!v7)
  {
    goto LABEL_13;
  }

LABEL_4:
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v7 & ~(v7 >> 63), 0);
  if ((v7 & 0x8000000000000000) == 0)
  {
    v9 = v5;
    if ((v6 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v7; ++i)
      {
        MEMORY[0x26670F670](i, v6);
        v11 = RIOBuilderDirtyMetadataDescriptorCopyMetadata();
        swift_unknownObjectRelease();
        v13 = *(v9 + 16);
        v12 = *(v9 + 24);
        if (v13 >= v12 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
        }

        *(v9 + 16) = v13 + 1;
        *(v9 + 8 * v13 + 32) = v11;
      }
    }

    else
    {
      v14 = 32;
      do
      {
        v15 = RIOBuilderDirtyMetadataDescriptorCopyMetadata();
        v17 = *(v5 + 16);
        v16 = *(v5 + 24);
        if (v17 >= v16 >> 1)
        {
          v18 = v15;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
          v15 = v18;
        }

        *(v5 + 16) = v17 + 1;
        *(v5 + 8 * v17 + 32) = v15;
        v14 += 8;
        --v7;
      }

      while (v7);
    }

    goto LABEL_19;
  }

  __break(1u);
  return result;
}

Swift::String *specialized NamespacedPropertyDirtyState.__allocating_init(core:)(void *a1)
{
  v2 = RIOBuilderAnyValueNamespacedDirtyPropertyDescriptorCopyNamespacePrefix();
  v3 = String.init(_:)(v2);
  v4 = MEMORY[0x2667104A0](a1);
  objc_opt_self();
  v5 = swift_dynamicCastObjCClass();
  v6 = MEMORY[0x277D84F90];
  if (v5)
  {
    type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

    v7 = v6;
    if (!(v6 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {

    v7 = MEMORY[0x277D84F90];
    if (!(MEMORY[0x277D84F90] >> 62))
    {
LABEL_3:
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
        goto LABEL_4;
      }

LABEL_13:

      v10 = MEMORY[0x277D84F90];
LABEL_19:
      v20 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO16ToolsFoundationsO5TokenV_SayAHGTt0g5Tf4g_n(v10);

      type metadata accessor for NamespacedPropertyDirtyState();
      result = swift_allocObject();
      result[2] = v3;
      result[1]._countAndFlagsBits = v20;
      result[1]._object = a1;
      return result;
    }
  }

  v8 = __CocoaSet.count.getter();
  if (!v8)
  {
    goto LABEL_13;
  }

LABEL_4:
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8 & ~(v8 >> 63), 0);
  if ((v8 & 0x8000000000000000) == 0)
  {
    v10 = v6;
    if ((v7 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v8; ++i)
      {
        MEMORY[0x26670F670](i, v7);
        v12 = RIOBuilderDirtyMetadataDescriptorCopyMetadata();
        swift_unknownObjectRelease();
        v14 = *(v10 + 16);
        v13 = *(v10 + 24);
        if (v14 >= v13 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v13 > 1), v14 + 1, 1);
        }

        *(v10 + 16) = v14 + 1;
        *(v10 + 8 * v14 + 32) = v12;
      }
    }

    else
    {
      v15 = 32;
      do
      {
        v16 = RIOBuilderDirtyMetadataDescriptorCopyMetadata();
        v18 = *(v6 + 16);
        v17 = *(v6 + 24);
        if (v18 >= v17 >> 1)
        {
          v19 = v16;
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
          v16 = v19;
        }

        *(v6 + 16) = v18 + 1;
        *(v6 + 8 * v18 + 32) = v16;
        v15 += 8;
        --v8;
      }

      while (v8);
    }

    goto LABEL_19;
  }

  __break(1u);
  return result;
}

uint64_t one-time initialization function for modelSortComponent()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  static OS_os_log.modelSortComponent = result;
  return result;
}

uint64_t ModelSortGroupComponentBuilder.inputDescriptors()()
{
  v1 = *v0;
  v8 = MEMORY[0x277D84FA0];
  v2 = swift_allocObject();
  v2[2] = specialized closure #2 in ModelSortGroupComponentBuilder.inputDescriptors();
  v2[3] = 0;
  v2[4] = closure #1 in ImageBasedLightReceiverBuilder.inputDescriptors();
  v2[5] = 0;
  v2[6] = v1;
  *&v15 = 0xD000000000000018;
  *(&v15 + 1) = 0x8000000261997DC0;
  v16 = 0xD000000000000014;
  v17 = 0x8000000261994310;
  v18 = partial apply for closure #3 in ModelSortGroupComponentBuilder.inputDescriptors();
  v19 = v2;
  v20 = -127;

  specialized Set._Variant.insert(_:)(&v9, &v15);
  outlined consume of InputDescriptor(v9, *(&v9 + 1), v10, v11, v12, v13, v14);
  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  v3 = static EntityBuilder.OutputName;
  v4 = one-time initialization token for OutputIdentifier;

  if (v4 != -1)
  {
    swift_once();
  }

  v9 = v3;
  v10 = static EntityBuilder.OutputIdentifier;
  v11 = *algn_27FEC8E68;
  v12 = 0;
  v13 = 0;
  v14 = 112;

  specialized Set._Variant.insert(_:)(v6, &v9);

  outlined consume of InputDescriptor(v6[0], v6[1], v6[2], v6[3], v6[4], v6[5], v7);
  return v8;
}

uint64_t closure #3 in ModelSortGroupComponentBuilder.inputDescriptors()(uint64_t a1, id *a2, uint64_t (*a3)(uint64_t, id *), uint64_t a4, uint64_t (*a5)(id *, uint64_t))
{
  v11 = *a2;
  v6 = a3(a1, &v11);
  if (!v6)
  {
    return MEMORY[0x277D84FA0];
  }

  v7 = v6;

  if (one-time initialization token for entityRelationshipName != -1)
  {
    swift_once();
  }

  v11 = static ModelSortGroupComponentBuilder.entityRelationshipName;
  v8 = static ModelSortGroupComponentBuilder.entityRelationshipName;
  v9 = a5(&v11, v7);

  return v9;
}

uint64_t closure #1 in ModelSortGroupComponentBuilder.run(inputs:)(uint64_t a1, uint64_t a2)
{
  v68 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23ModelSortGroupComponentVSgMd, &_s17RealityFoundation23ModelSortGroupComponentVSgMR);
  MEMORY[0x28223BE20](v2 - 8, v3);
  v5 = &v60 - v4;
  v6 = type metadata accessor for ModelSortGroupComponent();
  v64 = *(v6 - 8);
  v65 = v6;
  MEMORY[0x28223BE20](v6, v7);
  v63 = &v60 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation14ModelSortGroupVSgMd, &_s17RealityFoundation14ModelSortGroupVSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = &v60 - v11;
  v13 = type metadata accessor for ModelSortGroup();
  v14 = *(v13 - 8);
  v16.n128_f32[0] = MEMORY[0x28223BE20](v13, v15);
  v18 = &v60 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19, v16);
  v67 = &v60 - v20;
  v21 = Inputs.prim.getter();
  v22 = RIOPxrUsdObjectCopyName();
  v23 = RIOPxrTfTokenCopyString();
  v66 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v25 = v24;

  if (one-time initialization token for infoID != -1)
  {
    swift_once();
  }

  if (!RIOPxrUsdPrimHasAttribute())
  {
    goto LABEL_14;
  }

  v26 = RIOPxrUsdPrimCopyAttribute();
  v27 = RIOPxrUsdAttributeCopyValue();
  if (!v27)
  {

LABEL_15:
    ModelSortGroupComponentBuilder.clear(inputs:)();
  }

  v61 = v14;
  v62 = v13;
  v28 = v27;
  v29 = RIOPxrVtValueCopyToken();

  if (!v29)
  {
    goto LABEL_14;
  }

  v30 = RIOPxrTfTokenCopyString();
  v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v33 = v32;

  if (v31 == 0xD000000000000016 && 0x8000000261997DA0 == v33)
  {

    v34 = v62;
    goto LABEL_11;
  }

  v35 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v34 = v62;
  if ((v35 & 1) == 0)
  {
LABEL_14:

    goto LABEL_15;
  }

LABEL_11:
  Inputs.subscript.getter(&v70, 0xD000000000000018, 0x8000000261997DC0);
  if (!v71)
  {

    outlined destroy of Any?(&v70, &_sypSgMd, &_sypSgMR);
    (*(v61 + 56))(v12, 1, 1, v34);
    return outlined destroy of Any?(v12, &_s17RealityFoundation14ModelSortGroupVSgMd, &_s17RealityFoundation14ModelSortGroupVSgMR);
  }

  v36 = swift_dynamicCast();
  v37 = v61;
  (*(v61 + 56))(v12, v36 ^ 1u, 1, v34);
  if ((*(v37 + 48))(v12, 1, v34) == 1)
  {

    return outlined destroy of Any?(v12, &_s17RealityFoundation14ModelSortGroupVSgMd, &_s17RealityFoundation14ModelSortGroupVSgMR);
  }

  v39 = v67;
  (*(v37 + 32))(v67, v12, v34);
  if (Prim.parent.getter())
  {
    if ((RIOPxrUsdPrimEvaluateEntityOnExport() & 1) == 0)
    {
      if (one-time initialization token for modelSortComponent != -1)
      {
        swift_once();
      }

      v68 = static OS_os_log.modelSortComponent;
      v48 = static os_log_type_t.error.getter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
      v49 = swift_allocObject();
      *(v49 + 16) = xmmword_26198A8E0;
      v50 = RIOPxrUsdObjectCopyPath();
      v51 = RIOPxrSdfPathCopyString();
      v52 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v54 = v53;

      v55 = MEMORY[0x277D837D0];
      *(v49 + 56) = MEMORY[0x277D837D0];
      v56 = lazy protocol witness table accessor for type String and conformance String();
      *(v49 + 64) = v56;
      *(v49 + 32) = v52;
      *(v49 + 40) = v54;

      *(v49 + 96) = v55;
      *(v49 + 104) = v56;
      *(v49 + 72) = v66;
      *(v49 + 80) = v25;
      os_log(_:dso:log:type:_:)("Prim is not an entity: %{public}s for %{public}s.", 53, 2, &dword_26187B000, v68, v48, v49);

      return (*(v61 + 8))(v67, v62);
    }
  }

  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  Inputs.subscript.getter(&v70, static EntityBuilder.OutputName, *(&static EntityBuilder.OutputName + 1));
  if (!v71)
  {
    outlined destroy of Any?(&v70, &_sypSgMd, &_sypSgMR);
    goto LABEL_38;
  }

  type metadata accessor for EntityProxy(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_38:
    if (one-time initialization token for modelSortComponent != -1)
    {
      swift_once();
    }

    v57 = static OS_os_log.modelSortComponent;
    v58 = static os_log_type_t.error.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v59 = swift_allocObject();
    *(v59 + 16) = xmmword_2619891C0;
    *(v59 + 56) = MEMORY[0x277D837D0];
    *(v59 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v59 + 32) = v66;
    *(v59 + 40) = v25;
    os_log(_:dso:log:type:_:)("Input is not an entity %{public}s.", 36, 2, &dword_26187B000, v57, v58, v59);

    return (*(v61 + 8))(v39, v34);
  }

  v40 = v69;
  if ((RIOPxrUsdPrimIsActive() & 1) == 0)
  {
    ModelSortGroupComponentBuilder.clear(inputs:)();

    return (*(v61 + 8))(v39, v34);
  }

  *(v68 + 17) = 1;
  Inputs.prim.getter();
  if (one-time initialization token for priorityAttributeName != -1)
  {
    swift_once();
  }

  _s9RealityIO4PrimC14attributeValue2of4typexSgAA16ToolsFoundationsO5TokenV_xmtAA012UsdAttributeE0RzlFs5Int32V_Tt1B5(static ModelSortGroupComponentBuilder.priorityAttributeName);

  v66 = specialized ModelSortGroupComponentBuilder.targetEntity(for:prim:)(v40, v21);
  if (v66)
  {
    (*(v61 + 16))(v18, v67, v34);
    v41 = v63;
    ModelSortGroupComponent.init(group:order:)();
    v43 = v64;
    v42 = v65;
    v60 = *(v64 + 16);
    v60(v5, v41, v65);
    (*(v43 + 56))(v5, 0, 1, v42);
    v44 = dispatch thunk of Entity.components.modify();
    Entity.ComponentSet.subscript.setter();
    v44(&v70, 0);
    v45 = v68;
    specialized Builder.addComponent<A>(component:)(v41);
    swift_beginAccess();
    v46 = objc_getAssociatedObject(v45, &static BuilderAssociatedKeys.OutputsReference);
    result = swift_endAccess();
    if (v46)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      outlined init with take of Any(&v69, &v70);
      type metadata accessor for Outputs();
      swift_dynamicCast();
      v71 = v42;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v70);
      v60(boxed_opaque_existential_1, v41, v42);
      Outputs.subscript.setter(&v70, 0xD000000000000024, 0x80000002619943D0);

      (*(v43 + 8))(v41, v42);
      return (*(v61 + 8))(v67, v62);
    }

    __break(1u);
  }

  else
  {
    (*(v61 + 8))(v67, v34);
  }

  return result;
}

void ModelSortGroupComponentBuilder.clear(inputs:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation23ModelSortGroupComponentVSgMd, &_s17RealityFoundation23ModelSortGroupComponentVSgMR);
  MEMORY[0x28223BE20](v1 - 8, v2);
  v4 = v10 - v3;
  if (one-time initialization token for OutputName != -1)
  {
    swift_once();
  }

  Inputs.subscript.getter(&v11, static EntityBuilder.OutputName, *(&static EntityBuilder.OutputName + 1));
  if (v12)
  {
    type metadata accessor for EntityProxy(0);
    if (swift_dynamicCast())
    {
      v5 = v10[1];
      if (*(v0 + 17) == 1 && (v6 = Inputs.prim.getter(), v7 = specialized ModelSortGroupComponentBuilder.targetEntity(for:prim:)(v5, v6), , v7))
      {
        v8 = type metadata accessor for ModelSortGroupComponent();
        (*(*(v8 - 8) + 56))(v4, 1, 1, v8);
        v9 = dispatch thunk of Entity.components.modify();
        Entity.ComponentSet.subscript.setter();
        v9(&v11, 0);

        *(v0 + 17) = 0;
      }

      else
      {
      }
    }
  }

  else
  {
    outlined destroy of Any?(&v11, &_sypSgMd, &_sypSgMR);
  }
}

uint64_t protocol witness for Builder.outputDescriptors() in conformance ModelSortGroupComponentBuilder()
{
  v0 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC9RealityIO16OutputDescriptorO_SayAFGTt0g5Tf4g_n(&outlined read-only object #0 of protocol witness for Builder.outputDescriptors() in conformance ModelSortGroupComponentBuilder);
  outlined destroy of OutputDescriptor(&unk_287410DD0);
  return v0;
}

uint64_t protocol witness for Builder.run(inputs:) in conformance ModelSortGroupComponentBuilder(uint64_t a1)
{
  v2 = *v1;
  v7[2] = a1;
  v8 = v1;
  v9 = v2;
  v3 = swift_allocObject();
  *(v3 + 16) = partial apply for closure #1 in ModelSortGroupComponentBuilder.run(inputs:);
  *(v3 + 24) = v7;
  aBlock[4] = partial apply for thunk for @callee_guaranteed () -> ();
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed () -> ();
  aBlock[3] = &block_descriptor_21;
  v4 = _Block_copy(aBlock);

  RIOBuilderInputsPerformBlockSyncOnEngineQueue();
  _Block_release(v4);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  return result;
}

uint64_t block_copy_helper_21(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(void *a1, void *a2)
{
  v2 = a2;
  v3 = a1;
  if (!a1)
  {
    if (!a2)
    {
      v7 = 1;
      return v7 & 1;
    }

    v2 = a2;
    goto LABEL_7;
  }

  if (!a2)
  {
    v3 = a1;
LABEL_7:

    v7 = 0;
    return v7 & 1;
  }

  lazy protocol witness table accessor for type ToolsFoundations.Token and conformance ToolsFoundations.Token();
  v4 = v3;
  v5 = v2;
  v6 = v4;
  v7 = dispatch thunk of static Equatable.== infix(_:_:)();

  return v7 & 1;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(id *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = (a3 + 32);
    v7 = v4 - 1;
    do
    {
      v8 = v7;
      v9 = *v6++;
      v13 = v9;
      v10 = v9;
      v11 = a1(&v13);

      LOBYTE(v4) = (v3 != 0) | v11;
      if ((v3 != 0) | v11 & 1)
      {
        break;
      }

      v7 = v8 - 1;
    }

    while (v8);
  }

  return v4 & 1;
}

uint64_t specialized closure #2 in ModelSortGroupComponentBuilder.inputDescriptors()(uint64_t a1, void *a2)
{
  if (!RIOPxrUsdStageHasPrimAtPrimPath())
  {
    return 0;
  }

  v2 = RIOPxrTfTokenEmpty();
  PrimIfNeeded = RIOPxrUsdStageCreatePrimIfNeeded();

  type metadata accessor for Prim();
  v4 = swift_allocObject();
  *(v4 + 16) = PrimIfNeeded;
  if (one-time initialization token for infoID != -1)
  {
    swift_once();
  }

  if (RIOPxrUsdPrimHasAttribute())
  {
    v5 = RIOPxrUsdPrimCopyAttribute();
    v6 = RIOPxrUsdAttributeCopyValue();
    if (!v6)
    {

      return 0;
    }

    v7 = v6;
    v8 = RIOPxrVtValueCopyToken();

    if (v8)
    {
      v9 = RIOPxrTfTokenCopyString();
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v4;
    }
  }

  return 0;
}

uint64_t specialized closure #1 in closure #1 in ModelSortGroupComponentBuilder.stageSubscription.getter()
{
  if (one-time initialization token for entityRelationshipName != -1)
  {
    swift_once();
  }

  v0 = static ModelSortGroupComponentBuilder.entityRelationshipName;
  type metadata accessor for NamedPropertyDirtyState();
  v1 = swift_allocObject();
  v1[4] = v0;
  v2 = v0;
  v3 = MEMORY[0x277D84FA0];
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(MEMORY[0x277D84FA0]);
  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v5 = RIOBuilderAnyValueDirtyPropertyDescriptorCreateWithNameAndMetadataDescriptors();

  v1[2] = v3;
  v1[3] = v5;
  v6 = one-time initialization token for priorityAttributeName;

  if (v6 != -1)
  {
    swift_once();
  }

  v7 = static ModelSortGroupComponentBuilder.priorityAttributeName;
  v8 = swift_allocObject();
  v8[4] = v7;
  v9 = v7;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(v3);
  v10 = Array._bridgeToObjectiveC()().super.isa;

  v11 = RIOBuilderAnyValueDirtyPropertyDescriptorCreateWithNameAndMetadataDescriptors();

  v8[2] = v3;
  v8[3] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198A9D0;
  *(inited + 32) = v1;
  *(inited + 40) = v8;

  specialized Sequence.forEach(_:)(inited);

  swift_setDeallocating();
  swift_arrayDestroy();
  return v3;
}

uint64_t specialized closure #1 in ModelSortGroupComponentBuilder.stageSubscription.getter()
{
  if (one-time initialization token for realityKitComponentTypeName != -1)
  {
    swift_once();
  }

  v0 = static ModelSortGroupComponentBuilder.realityKitComponentTypeName;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMd, &_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2619891C0;
  *(inited + 32) = v0;
  v2 = v0;
  _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC9RealityIO16ToolsFoundationsO5TokenV_Tt0g5Tf4g_n(inited);
  v4 = v3;
  swift_setDeallocating();
  outlined destroy of ToolsFoundations.Token(inited + 32);
  v5 = specialized closure #1 in closure #1 in ModelSortGroupComponentBuilder.stageSubscription.getter();
  type metadata accessor for TypeNamePrimDirtyState();
  v6 = swift_allocObject();
  v6[5] = v4;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So08RIOPxrTfH3Refas5NeverOTg503_s9d105IO22TypeNamePrimDirtyStateC04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h88VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13DescriptorRefaSgtcfc12generateCoreL_AQyFSo08I60TftX0aAKcfu_33_1208ebe0c1611b0e36169838b3b02464AkUTf3nnnpk_nTf1cn_n(v7);
  type metadata accessor for RIOPxrTfTokenRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO18PropertyDirtyStateCG_So010RIOBuildergF13DescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimgh146C04typeD7IsAnyOf020primMetadataContainsjK0017propertiesContainjK04coreACShyAA16ToolsFoundationsO5TokenVG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13J94RefaSgtcfc12generateCoreL_AQyFSo0vfuwX0aANcfu0_32f9454acde0e12ec4aa46a683ab4ea6ebAnUTf3nnnpk_nTf1cn_n(v5);
  type metadata accessor for RIOBuilderDirtyPropertyDescriptorRef(0);
  v9 = Array._bridgeToObjectiveC()().super.isa;

  v10 = MEMORY[0x277D84FA0];
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy9RealityIO16ToolsFoundationsO5TokenVG_So36RIOBuilderDirtyMetadataDescriptorRefas5NeverOTg503_s9d16IO22TypeNamePrimj28StateC04typeD7IsAnyOf020primk48ContainsjK0017propertiesContainjK04coreACShyAA16fg2O5h44VG_ALShyAA08PropertyfG0CGSo010RIOBuilderfE13L47RefaSgtcfc12generateCoreL_AQyFSo0vfmwX0aAKXEfU_Tf1cn_n(MEMORY[0x277D84FA0]);
  type metadata accessor for RIOBuilderDirtyMetadataDescriptorRef(0);
  v11 = Array._bridgeToObjectiveC()().super.isa;

  v12 = RIOBuilderTypeNameDirtyPrimDescriptorCreateWithPropertyDescriptorsAndMetadataDescriptors();

  v6[2] = v10;
  v6[3] = v5;
  v6[4] = v12;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v13 = swift_initStackObject();
  *(v13 + 16) = xmmword_26198A640;
  *(v13 + 32) = v6;

  specialized Sequence.forEach(_:)(v13);

  swift_setDeallocating();
  swift_arrayDestroy();
  return v10;
}

uint64_t specialized ModelSortGroupComponentBuilder.stageSubscription.getter()
{
  v0 = specialized closure #1 in ModelSortGroupComponentBuilder.stageSubscription.getter();
  type metadata accessor for StageDirtyState();
  swift_allocObject();
  v1 = MEMORY[0x277D84FA0];
  v2 = StageDirtyState.init(stageMetadataContainsAnyOf:primsContainAnyOf:core:)(MEMORY[0x277D84FA0], v0, 0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198A640;
  *(inited + 32) = v2;

  specialized Sequence.forEach(_:)(inited);

  swift_setDeallocating();
  swift_arrayDestroy();
  return v1;
}

uint64_t specialized ModelSortGroupComponentBuilder.targetEntity(for:prim:)(uint64_t a1, uint64_t a2)
{
  v36 = a2;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10RealityKit6EntityC15ChildCollectionV16IndexingIteratorVy__AEGMd, &_s10RealityKit6EntityC15ChildCollectionV16IndexingIteratorVy__AEGMR);
  v35 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v3);
  v5 = &v34 - v4;
  v34 = type metadata accessor for Entity.ChildCollection();
  v37 = *(v34 - 8);
  v7.n128_f32[0] = MEMORY[0x28223BE20](v34, v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v7);
  v12 = &v34 - v11;
  v13 = type metadata accessor for __EntityRef();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Entity();
  v18 = MEMORY[0x277D841D8];
  __AssetRef.__as<A>(_:)();
  v38[3] = v18;
  static __AssetRef.__fromCore(_:)();
  __swift_destroy_boxed_opaque_existential_0(v38);
  v19 = static Entity.__fromCore(_:)();
  (*(v14 + 8))(v17, v13);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVSgGMd, &_ss23_ContiguousArrayStorageCy9RealityIO16ToolsFoundationsO5TokenVSgGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_26198AB50;
  if (String.count.getter() < 1)
  {
    v21 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v21 = RIOPxrTfTokenCreateWithCString();
  }

  *(inited + 32) = v21;
  if (String.count.getter() < 1)
  {
    v22 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v22 = RIOPxrTfTokenCreateWithCString();
  }

  *(inited + 40) = v22;
  if (String.count.getter() < 1)
  {
    v23 = RIOPxrTfTokenEmpty();
  }

  else
  {
    v23 = RIOPxrTfTokenCreateWithCString();
  }

  *(inited + 48) = v23;
  v24 = Prim.parent.getter();
  if (v24)
  {
    v26 = RIOPxrUsdPrimCopyTypeName();
  }

  else
  {
    v26 = 0;
  }

  v38[0] = v26;
  MEMORY[0x28223BE20](v24, v25);
  *(&v34 - 2) = v38;
  v27 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v34 - 4), inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s9RealityIO16ToolsFoundationsO5TokenVSgMd, &_s9RealityIO16ToolsFoundationsO5TokenVSgMR);
  swift_arrayDestroy();

  if (v27)
  {
    v36 = v19;
    HasHierarchy.children.getter();
    v28 = v34;
    v29 = (*(v37 + 16))(v9, v12, v34);
    lazy protocol witness table accessor for type Entity.ChildCollection and conformance Entity.ChildCollection(v29);
    dispatch thunk of Sequence.makeIterator()();
    lazy protocol witness table accessor for type Entity.ChildCollection.IndexingIterator<Entity.ChildCollection> and conformance Entity.ChildCollection.IndexingIterator<A>();
    dispatch thunk of IteratorProtocol.next()();
    v30 = v38[0];
    if (v38[0])
    {
      while (dispatch thunk of Entity.name.getter() != 0xD000000000000010 || 0x8000000261997DE0 != v31)
      {
        v32 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v32)
        {
          goto LABEL_21;
        }

        dispatch thunk of IteratorProtocol.next()();
        v30 = v38[0];
        if (!v38[0])
        {
          goto LABEL_19;
        }
      }

LABEL_21:
      (*(v35 + 8))(v5, v2);
      (*(v37 + 8))(v12, v28);

      return v30;
    }

    else
    {
LABEL_19:
      (*(v35 + 8))(v5, v2);
      (*(v37 + 8))(v12, v28);
      return v36;
    }
  }

  return v19;
}

unint64_t lazy protocol witness table accessor for type Entity.ChildCollection and conformance Entity.ChildCollection(float a1)
{
  result = lazy protocol witness table cache variable for type Entity.ChildCollection and conformance Entity.ChildCollection;
  if (!lazy protocol witness table cache variable for type Entity.ChildCollection and conformance Entity.ChildCollection)
  {
    type metadata accessor for Entity.ChildCollection();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Entity.ChildCollection and conformance Entity.ChildCollection);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Entity.ChildCollection.IndexingIterator<Entity.ChildCollection> and conformance Entity.ChildCollection.IndexingIterator<A>()
{
  result = lazy protocol witness table cache variable for type Entity.ChildCollection.IndexingIterator<Entity.ChildCollection> and conformance Entity.ChildCollection.IndexingIterator<A>;
  if (!lazy protocol witness table cache variable for type Entity.ChildCollection.IndexingIterator<Entity.ChildCollection> and conformance Entity.ChildCollection.IndexingIterator<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10RealityKit6EntityC15ChildCollectionV16IndexingIteratorVy__AEGMd, &_s10RealityKit6EntityC15ChildCollectionV16IndexingIteratorVy__AEGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Entity.ChildCollection.IndexingIterator<Entity.ChildCollection> and conformance Entity.ChildCollection.IndexingIterator<A>);
  }

  return result;
}

uint64_t EditTarget.init(on:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  if (a1)
  {
    v3 = *(a1 + 16);
    v4 = RIOPxrUsdEditTargetCreateWithLayer();
  }

  else
  {
    result = RIOPxrUsdEditTargetCreateEmpty();
    v4 = result;
  }

  *a2 = v4;
  return result;
}

uint64_t EditTarget.init()@<X0>(uint64_t *a1@<X8>)
{
  result = RIOPxrUsdEditTargetCreateEmpty();
  *a1 = result;
  return result;
}

uint64_t EditTarget.layer()()
{
  v0 = RIOPxrUsdEditTargetCopyLayer();
  type metadata accessor for SceneDescriptionFoundations.Layer();
  result = swift_allocObject();
  *(result + 16) = v0;
  return result;
}

uint64_t EditTarget.primSpec(for:)@<X0>(uint64_t *a2@<X8>)
{
  result = RIOPxrUsdEditTargetCopyPrimSpec();
  *a2 = result;
  return result;
}

uint64_t specialized SIMD.init(arrayLiteral:)@<X0>(uint64_t result@<X0>, _OWORD *a2@<X8>)
{
  v3 = *(result + 16);
  if (!v3)
  {

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  v4 = v3 - 1;
  if ((v3 - 1) <= 0xF)
  {
    v5 = 0;
    v6 = 0uLL;
    v7 = 0uLL;
    v8 = 0uLL;
    v9 = 0uLL;
    v10 = 0uLL;
    v11 = 0uLL;
    v12 = 0uLL;
    v13 = 0uLL;
    do
    {
      v14 = *(result + 8 * v5 + 32);
      v23 = v6;
      v24 = v7;
      v25 = v8;
      v26 = v9;
      v27 = v10;
      v28 = v11;
      v29 = v12;
      v30 = v13;
      *(&v23 + (v5 & 0xF)) = v14;
      v12 = v29;
      v13 = v30;
      v10 = v27;
      v11 = v28;
      v8 = v25;
      v9 = v26;
      ++v5;
      v6 = v23;
      v7 = v24;
    }

    while (v3 != v5);
    v15 = v24;
    v16 = v23;
    v17 = v25;
    v18 = v26;
    v19 = v27;
    v20 = v28;
    v21 = v29;
    v22 = v30;

    if (v4 == 15)
    {
      *a2 = v16;
      a2[1] = v15;
      a2[2] = v17;
      a2[3] = v18;
      a2[4] = v19;
      a2[5] = v20;
      a2[6] = v21;
      a2[7] = v22;
      return result;
    }

    goto LABEL_8;
  }

LABEL_9:
  __break(1u);
  return result;
}

void __swiftcall Frame4D.asDouble4x4()(simd_double4x4 *__return_ptr retstr)
{
  v2 = v1[6];
  v3 = v1[7];
  v4 = v1[4];
  v5 = v1[5];
  v6 = v1[2];
  v7 = v1[3];
  v8 = v1[1];
  *retstr->columns[0].f64 = *v1;
  *&retstr->columns[0].f64[2] = v8;
  *retstr->columns[1].f64 = v6;
  *&retstr->columns[1].f64[2] = v7;
  *retstr->columns[2].f64 = v4;
  *&retstr->columns[2].f64[2] = v5;
  *retstr->columns[3].f64 = v2;
  *&retstr->columns[3].f64[2] = v3;
}

uint64_t Frame4D.init(_:)@<X0>(uint64_t result@<X0>, _OWORD *a2@<X8>)
{
  v2 = 0;
  v3 = 0uLL;
  v4 = 0uLL;
  v5 = 0uLL;
  v6 = 0uLL;
  v7 = 0uLL;
  v8 = 0uLL;
  v9 = 0uLL;
  v10 = 0uLL;
  while (1)
  {
    v12 = v2 >> 2;
    v13 = result;
    if (v2 >> 2)
    {
      v13 = result + 32;
      if (v12 != 1)
      {
        v13 = result + 64;
        if (v12 != 2)
        {
          v13 = result + 96;
          if ((v2 & 0x7FFFFFFFFFFFFFFCLL) != 0xC)
          {
            break;
          }
        }
      }
    }

    v11 = *(v13 + 8 * (v2 & 3));
    v14 = v3;
    v15 = v4;
    v16 = v5;
    v17 = v6;
    v18 = v7;
    v19 = v8;
    v20 = v9;
    v21 = v10;
    *(&v14 + (v2 & 0xF)) = v11;
    v9 = v20;
    v10 = v21;
    v7 = v18;
    v8 = v19;
    v5 = v16;
    v6 = v17;
    ++v2;
    v3 = v14;
    v4 = v15;
    if (v2 == 16)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_8:
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
  a2[3] = v6;
  a2[4] = v7;
  a2[5] = v8;
  a2[6] = v9;
  a2[7] = v10;
  return result;
}

double Frame4D.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t TexCoord2.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  MEMORY[0x28223BE20](a1, a4);
  Point3.init()(v5, v6);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.subscript.getter();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.subscript.setter();
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.subscript.setter();
  v7 = type metadata accessor for SIMD2();
  return (*(*(v7 - 8) + 8))(a1, v7);
}

uint64_t SIMD2.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v5 = *(*(a2 - 8) + 64);
  v6.n128_f32[0] = MEMORY[0x28223BE20](a1, a4);
  v8.n128_f32[0] = MEMORY[0x28223BE20](v7, v6);
  MEMORY[0x28223BE20](v9, v8);
  v11 = &v17 - v10;
  v15 = type metadata accessor for TexCoord2(0, v12, v13, v14);
  v18 = a1;
  Point3.subscript.getter(0, v15);
  Point3.subscript.getter(1, v15);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.init()();
  memcpy(&v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v11, v5);
  dispatch thunk of SIMDStorage.subscript.setter();
  dispatch thunk of SIMDStorage.subscript.setter();
  return (*(*(v15 - 8) + 8))(v18, v15);
}

uint64_t TexCoord3.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  return TexCoord3.init(_:)(a1, a2, a3, a4);
}

{
  v5 = MEMORY[0x28223BE20](a1, a4);
  v8(v6, v7, v5);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.subscript.setter();
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.subscript.setter();
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.subscript.setter();
  v9 = type metadata accessor for SIMD3();
  return (*(*(v9 - 8) + 8))(a1, v9);
}

uint64_t SIMD3.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t x8_0@<X8>, __n128 a4@<Q0>)
{
  return SIMD3.init(_:)(a1, a2, TexCoord3.subscript.getter, x8_0, a4);
}

{
  return SIMD3.init(_:)(a1, a2, Point3.subscript.getter, x8_0, a4);
}

uint64_t Color3.init(_:)(uint64_t a1, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x28223BE20](a1, a3);
  Color3.init()(v6, v6, v7);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.subscript.setter();
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.subscript.setter();
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.subscript.setter();
  v8 = type metadata accessor for SIMD3();
  return (*(*(v8 - 8) + 8))(a1, v8);
}

uint64_t SIMD3<>.init(_:)(uint64_t a1, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5)
{
  v6 = *(*(a2 - 8) + 64);
  v7.n128_f32[0] = MEMORY[0x28223BE20](a1, a3);
  v8 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f32[0] = MEMORY[0x28223BE20](v9, v7);
  v27 = &v27 - v11;
  v13.n128_f32[0] = MEMORY[0x28223BE20](v12, v10);
  v15 = &v27 - v14;
  MEMORY[0x28223BE20](v16, v13);
  v18 = &v27 - v17;
  v22 = type metadata accessor for Color3(0, v19, v20, v21);
  v28 = a1;
  v24 = Color3.red.getter(v22, v23);
  v25 = Color3.green.getter(v22, v24);
  Color3.blue.getter(v22, v25);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.init()();
  memcpy(v8, v18, v6);
  dispatch thunk of SIMDStorage.subscript.setter();
  memcpy(v8, v15, v6);
  dispatch thunk of SIMDStorage.subscript.setter();
  dispatch thunk of SIMDStorage.subscript.setter();
  return (*(*(v22 - 8) + 8))(v28, v22);
}

uint64_t SIMD3.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, float (*a4)(uint64_t, uint64_t)@<X4>, uint64_t a5@<X8>, __n128 a6@<Q0>)
{
  v27 = a5;
  v8 = *(*(a2 - 8) + 64);
  v9.n128_f32[0] = MEMORY[0x28223BE20](a1, a6);
  v10 = v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12.n128_f32[0] = MEMORY[0x28223BE20](v11, v9);
  v25[1] = v25 - v13;
  v15.n128_f32[0] = MEMORY[0x28223BE20](v14, v12);
  v17 = v25 - v16;
  v19 = MEMORY[0x28223BE20](v18, v15);
  v21 = v25 - v20;
  v23 = v22(0, v19);
  v26 = a1;
  a4(0, v23);
  a4(1, v23);
  a4(2, v23);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.init()();
  memcpy(v10, v21, v8);
  dispatch thunk of SIMDStorage.subscript.setter();
  memcpy(v10, v17, v8);
  dispatch thunk of SIMDStorage.subscript.setter();
  dispatch thunk of SIMDStorage.subscript.setter();
  return (*(*(v23 - 8) + 8))(v26, v23);
}

uint64_t SIMD3.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>, __n128 a5@<Q0>)
{
  return SIMD3.init(_:)(a1, a2, Vector3.subscript.getter, a4, a5);
}

{
  return SIMD3.init(_:)(a1, a2, Normal3.subscript.getter, a4, a5);
}

uint64_t Color4.init(_:)(uint64_t a1, uint64_t a2, __n128 a3, uint64_t a4, uint64_t a5)
{
  MEMORY[0x28223BE20](a1, a3);
  Color3.init()(v6, v6, v7);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.subscript.setter();
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.subscript.setter();
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.subscript.setter();
  dispatch thunk of SIMDStorage.subscript.getter();
  dispatch thunk of SIMDStorage.subscript.setter();
  v8 = type metadata accessor for SIMD4();
  return (*(*(v8 - 8) + 8))(a1, v8);
}

uint64_t SIMD4<>.init(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>, __n128 a5@<Q0>)
{
  v33 = a4;
  v6 = *(*(a2 - 8) + 64);
  v7.n128_f32[0] = MEMORY[0x28223BE20](a1, a5);
  v8 = v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10.n128_f32[0] = MEMORY[0x28223BE20](v9, v7);
  v31[1] = v31 - v11;
  v13.n128_f32[0] = MEMORY[0x28223BE20](v12, v10);
  v31[0] = v31 - v14;
  v16.n128_f32[0] = MEMORY[0x28223BE20](v15, v13);
  v18 = v31 - v17;
  MEMORY[0x28223BE20](v19, v16);
  v21 = v31 - v20;
  v25 = type metadata accessor for Color4(0, v22, v23, v24);
  v32 = a1;
  v27 = Color3.red.getter(v25, v26);
  v28 = Color3.green.getter(v25, v27);
  v29 = Color3.blue.getter(v25, v28);
  Color4.alpha.getter(v25, v29);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.init()();
  memcpy(v8, v21, v6);
  dispatch thunk of SIMDStorage.subscript.setter();
  memcpy(v8, v18, v6);
  dispatch thunk of SIMDStorage.subscript.setter();
  memcpy(v8, v31[0], v6);
  dispatch thunk of SIMDStorage.subscript.setter();
  dispatch thunk of SIMDStorage.subscript.setter();
  return (*(*(v25 - 8) + 8))(v32, v25);
}

void ManagedColor.init(color:space:)(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v9 = *a2;
  v10 = *(type metadata accessor for ManagedColor(0, a3, a4, a5) + 44);
  *(a6 + v10) = 0;
  (*(*(a3 - 8) + 32))(a6, a1, a3);

  *(a6 + v10) = v9;
}

float _sSBsEyxqd__cSBRd__lufC9RealityIO4HalfV_SdTt1g5@<S0>(float *a1@<X8>)
{
  _sSBsEyxqd__cSBRd__lufC9RealityIO4HalfV_SdTt1g5(&v3);
  result = v3;
  *a1 = v3;
  return result;
}

float _sSBsEyxqd__cSBRd__lufC9RealityIO4HalfV_12CoreGraphics7CGFloatVTt1g5@<S0>(float *a1@<X8>)
{
  _sSBsEyxqd__cSBRd__lufC9RealityIO4HalfV_SdTt1g5(&v3);
  result = v3;
  *a1 = v3;
  return result;
}

float Color3.red.getter(uint64_t a1, uint64_t a2, float a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  dispatch thunk of SIMDStorage.subscript.getter();
  return result;
}

void ManagedColor.init(_:)(CGColor *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, __n128 a5@<Q0>)
{
  v9 = *(a2 - 8);
  MEMORY[0x28223BE20](a1, a5);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *(type metadata accessor for ManagedColor(0, v12, v13, v14) + 44);
  *(a4 + v15) = 0;
  v16 = CGColorRef.components.getter();
  if (!v16)
  {
    v16 = &outlined read-only object #0 of ManagedColor.init(_:);
  }

  (*(a3 + 8))(v16, a2, a3);
  (*(v9 + 32))(a4, v11, a2);
  specialized static ColorSpaces.ocioName(fromCGColor:)(a1);
  if (v17)
  {
    if (String.count.getter() < 1)
    {
      v18 = RIOPxrTfTokenEmpty();
    }

    else
    {
      String.utf8CString.getter();
      v18 = RIOPxrTfTokenCreateWithCString();
    }
  }

  else
  {

    v18 = 0;
  }

  *(a4 + v15) = v18;
}

float protocol witness for static CGFloatConvertable.from(cgFloat:) in conformance Float@<S0>(float *a1@<X8>, double a2@<D0>)
{
  result = a2;
  *a1 = result;
  return result;
}

float static Half.from(cgFloat:)@<S0>(float *a1@<X8>)
{
  _sSBsEyxqd__cSBRd__lufC9RealityIO4HalfV_SdTt1g5(&v3);
  result = v3;
  *a1 = v3;
  return result;
}

void (*Color3.red.modify(void *a1, uint64_t a2))(uint64_t **a1, uint64_t a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*(*(a2 + 16) - 8) + 64);
  v6[2] = v8;
  if (v5)
  {
    v6[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v6[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v7[4] = v9;
  Color3.red.getter(a2, v10);
  return Color3.red.modify;
}

void (*Color3.green.modify(void *a1, uint64_t a2))(uint64_t **a1, uint64_t a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*(*(a2 + 16) - 8) + 64);
  v6[2] = v8;
  if (v5)
  {
    v6[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v6[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v7[4] = v9;
  Color3.green.getter(a2, v10);
  return Color3.green.modify;
}

void Color3.red.modify(uint64_t **a1, char a2, uint64_t a3, void (*a4)(void *, uint64_t, uint64_t))
{
  v5 = *a1;
  v6 = (*a1)[3];
  v7 = (*a1)[4];
  if (a2)
  {
    v8 = *v5;
    v9 = a3;
    memcpy((*a1)[3], v7, v5[2]);
    v10 = v6;
    v11 = v8;
    a3 = v9;
  }

  else
  {
    v11 = *v5;
    v10 = (*a1)[4];
  }

  a4(v10, v11, a3);
  free(v7);
  free(v6);

  free(v5);
}

void (*Color3.blue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*(*(a2 + 16) - 8) + 64);
  v6[2] = v8;
  if (v5)
  {
    v6[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v6[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v7[4] = v9;
  Color3.blue.getter(a2, v10);
  return Color3.blue.modify;
}

void (*Color3.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, uint64_t a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x30uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = *(*(*(a3 + 16) - 8) + 64);
  v8[3] = v10;
  if (v7)
  {
    v8[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v8[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v9[5] = v11;
  Color3.subscript.getter(a2, a3);
  return Color3.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Color3<A>(void *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = Color3.subscript.modify(v6, a2, a3);
  return protocol witness for SIMDStorage.subscript.modify in conformance Color4<A>;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Color3<A>(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();

  return SIMD.hash(into:)();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color3<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE248](a1, WitnessTable);
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance Color3<A>(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE250](a1, a2, WitnessTable);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Color3<A>(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4)
{
  v5.n128_f32[0] = MEMORY[0x28223BE20](a1, a2);
  MEMORY[0x28223BE20](v6, v5);
  Color3.subscript.getter(0, v7);
  Color3.subscript.getter(0, a4);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  if (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 && (Color3.subscript.getter(1, a4), Color3.subscript.getter(1, a4), swift_getAssociatedTypeWitness(), swift_getAssociatedConformanceWitness(), swift_getAssociatedConformanceWitness(), (dispatch thunk of static Equatable.== infix(_:_:)()))
  {
    Color3.subscript.getter(2, a4);
    Color3.subscript.getter(2, a4);
    v8 = dispatch thunk of static Equatable.== infix(_:_:)();
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t Color3.init(_:_:_:)(const void *a1, const void *a2, const void *a3, uint64_t a4, __n128 a5, uint64_t a6, uint64_t a7)
{
  v10 = *(*(a4 - 8) + 64);
  MEMORY[0x28223BE20](a1, a5);
  Color3.init()(v12, v11, v13);
  memcpy(&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v10);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.subscript.setter();
  memcpy(&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v10);
  dispatch thunk of SIMDStorage.subscript.setter();
  memcpy(&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v10);
  return dispatch thunk of SIMDStorage.subscript.setter();
}

uint64_t (*Color4.red.modify(void *a1, uint64_t a2))(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*(*(a2 + 16) - 8) + 64);
  v6[2] = v8;
  if (v5)
  {
    v6[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v6[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v7[4] = v9;
  Color3.red.getter(a2, v10);
  return Color4.red.modify;
}

uint64_t (*Color4.green.modify(void *a1, uint64_t a2))(uint64_t a1, uint64_t a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*(*(a2 + 16) - 8) + 64);
  v6[2] = v8;
  if (v5)
  {
    v6[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v6[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v7[4] = v9;
  Color3.green.getter(a2, v10);
  return Color4.green.modify;
}

void (*Color4.blue.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*(*(a2 + 16) - 8) + 64);
  v6[2] = v8;
  if (v5)
  {
    v6[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v6[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v7[4] = v9;
  Color3.blue.getter(a2, v10);
  return Color4.blue.modify;
}

void (*Color4.alpha.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*(*(a2 + 16) - 8) + 64);
  v6[2] = v8;
  if (v5)
  {
    v6[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v6[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v7[4] = v9;
  Color4.alpha.getter(a2, v10);
  return Color4.alpha.modify;
}

uint64_t Color3.init(val:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(*(AssociatedTypeWitness - 8) + 32);

  return v7(a3, a1, AssociatedTypeWitness);
}

uint64_t Color3.init()(uint64_t a1, float a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  return dispatch thunk of SIMDStorage.init()();
}

float Color3.subscript.getter(uint64_t a1, uint64_t a2, float a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  dispatch thunk of SIMDStorage.subscript.getter();
  return result;
}

uint64_t (*Color4.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, uint64_t a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x30uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = *(*(*(a3 + 16) - 8) + 64);
  v8[3] = v10;
  if (v7)
  {
    v8[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v8[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v9[5] = v11;
  Color3.subscript.getter(a2, a3);
  return Color4.subscript.modify;
}

void Color3.subscript.modify(uint64_t **a1, char a2, void (*a3)(void *, uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = (*a1)[4];
  v6 = (*a1)[5];
  if (a2)
  {
    v8 = *v4;
    v7 = v4[1];
    memcpy((*a1)[4], v6, v4[3]);
    v9 = v5;
    v10 = v8;
    v11 = v7;
  }

  else
  {
    v11 = v4[1];
    v10 = *v4;
    v9 = (*a1)[5];
  }

  a3(v9, v10, v11);
  free(v6);
  free(v5);

  free(v4);
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Color4<A>(void *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = Color4.subscript.modify(v6, a2, a3);
  return protocol witness for SIMDStorage.subscript.modify in conformance Color4<A>;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Color4<A>(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();

  return SIMD.hash(into:)();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Color4<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE248](a1, WitnessTable);
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance Color4<A>(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE250](a1, a2, WitnessTable);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Color4<A>(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4)
{
  v5.n128_f32[0] = MEMORY[0x28223BE20](a1, a2);
  MEMORY[0x28223BE20](v6, v5);
  v7 = 0;
  v8 = 1;
  do
  {
    if (v8)
    {
      Color3.subscript.getter(v7, a4);
      Color3.subscript.getter(v7, a4);
      swift_getAssociatedTypeWitness();
      swift_getAssociatedConformanceWitness();
      swift_getAssociatedConformanceWitness();
      v8 = dispatch thunk of static Equatable.== infix(_:_:)();
    }

    else
    {
      v8 = 0;
    }

    ++v7;
  }

  while (v7 != 4);
  return v8 & 1;
}

uint64_t Color4.init(_:_:_:_:)(const void *a1, const void *a2, const void *a3, const void *a4, uint64_t a5, __n128 a6, uint64_t a7, uint64_t a8)
{
  v12 = *(*(a5 - 8) + 64);
  MEMORY[0x28223BE20](a1, a6);
  Color3.init()(v14, v13, v15);
  memcpy(&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v12);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.subscript.setter();
  memcpy(&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v12);
  dispatch thunk of SIMDStorage.subscript.setter();
  memcpy(&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v12);
  dispatch thunk of SIMDStorage.subscript.setter();
  memcpy(&v17 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), a4, v12);
  return dispatch thunk of SIMDStorage.subscript.setter();
}

uint64_t Color3.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  MEMORY[0x28223BE20](a1, a5);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = Color3.init()(v11, v11, v12);
  if (*(a1 + 16) < 3uLL)
  {
    __break(1u);
  }

  else
  {
    v14 = *(a3 + 8);
    v14(a2, a3, *(a1 + 32));
    v15 = type metadata accessor for Color3(0, a2, a3, a4);
    specialized Color4.subscript.setter(v10, 0, v15, v16);
    v17.n128_f64[0] = v14(a2, a3, *(a1 + 40));
    specialized Color4.subscript.setter(v10, 1, v15, v17);
    v18.n128_f64[0] = v14(a2, a3, *(a1 + 48));
    specialized Color4.subscript.setter(v10, 2, v15, v18);
  }

  return result;
}

uint64_t Color3.components.getter(uint64_t a1, __n128 a2)
{
  v3 = *(a1 + 16);
  v4.n128_f32[0] = MEMORY[0x28223BE20](a1, a2);
  v13[1] = v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7.n128_f32[0] = MEMORY[0x28223BE20](v6, v4);
  MEMORY[0x28223BE20](v8, v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12CoreGraphics7CGFloatVGMd, &_ss23_ContiguousArrayStorageCy12CoreGraphics7CGFloatVGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_26198AB70;
  Color3.subscript.getter(0, a1);
  v10 = *(a1 + 24);
  v11 = *(v10 + 16);
  *(v9 + 32) = v11(v3, v10);
  Color3.subscript.getter(1, a1);
  *(v9 + 40) = v11(v3, v10);
  Color3.subscript.getter(2, a1);
  *(v9 + 48) = v11(v3, v10);
  *(v9 + 56) = 0x3FF0000000000000;
  return v9;
}

uint64_t Color4.init(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  MEMORY[0x28223BE20](a1, a5);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = Color3.init()(v11, v11, v12);
  if (*(a1 + 16) < 4uLL)
  {
    __break(1u);
  }

  else
  {
    v14 = *(a3 + 8);
    v14(a2, a3, *(a1 + 32));
    v15 = type metadata accessor for Color4(0, a2, a3, a4);
    specialized Color4.subscript.setter(v10, 0, v15, v16);
    v17.n128_f64[0] = v14(a2, a3, *(a1 + 40));
    specialized Color4.subscript.setter(v10, 1, v15, v17);
    v18.n128_f64[0] = v14(a2, a3, *(a1 + 48));
    specialized Color4.subscript.setter(v10, 2, v15, v18);
    v19.n128_f64[0] = v14(a2, a3, *(a1 + 56));
    specialized Color4.subscript.setter(v10, 3, v15, v19);
  }

  return result;
}

uint64_t Color4.components.getter(uint64_t a1, __n128 a2)
{
  v3 = *(a1 + 16);
  v4.n128_f32[0] = MEMORY[0x28223BE20](a1, a2);
  v16[1] = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7.n128_f32[0] = MEMORY[0x28223BE20](v6, v4);
  v16[0] = v16 - v8;
  v10.n128_f32[0] = MEMORY[0x28223BE20](v9, v7);
  MEMORY[0x28223BE20](v11, v10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12CoreGraphics7CGFloatVGMd, &_ss23_ContiguousArrayStorageCy12CoreGraphics7CGFloatVGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_26198AB70;
  Color3.subscript.getter(0, a1);
  v13 = *(a1 + 24);
  v14 = *(v13 + 16);
  *(v12 + 32) = v14(v3, v13);
  Color3.subscript.getter(1, a1);
  *(v12 + 40) = v14(v3, v13);
  Color3.subscript.getter(2, a1);
  *(v12 + 48) = v14(v3, v13);
  Color3.subscript.getter(3, a1);
  *(v12 + 56) = v14(v3, v13);
  return v12;
}

void ManagedColor.cgColor.getter(uint64_t a1)
{
  v3 = (*(*(a1 + 24) + 16))(*(a1 + 16));
  if (*(v1 + *(a1 + 44)))
  {
    v4 = RIOPxrTfTokenCopyString();
    v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v6;

    v8 = v5;
  }

  else
  {
    v8 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v7 = v9;
  }

  v10 = MEMORY[0x26670EFB0](v8, v7);

  v11 = MEMORY[0x266710310](v10);

  if (v11)
  {
    v12 = CGColorSpaceCreateWithName(v11);

    if (v12)
    {

      v13 = CGColorCreate(v12, (v3 + 32));

      if (v13)
      {

        return;
      }
    }
  }

  v14 = *(v3 + 16);
  if (!v14)
  {
    __break(1u);
    goto LABEL_16;
  }

  if (v14 == 1)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v14 < 3)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (v14 == 3)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v15 = *(v3 + 32);
  v16 = *(v3 + 40);
  v17 = *(v3 + 48);
  v18 = *(v3 + 56);

  CGColorCreateGenericRGB(v15, v16, v17, v18);
}

uint64_t (*Frame4D.subscript.modify(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x100uLL);
  }

  *a1 = v5;
  *(v5 + 136) = a2;
  *(v5 + 144) = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v13 = v2[6];
  v12 = v2[7];
  *(v5 + 96) = v13;
  *(v5 + 112) = v12;
  *(v5 + 64) = v11;
  *(v5 + 80) = v10;
  *(v5 + 32) = v9;
  *(v5 + 48) = v8;
  *v5 = v7;
  *(v5 + 16) = v6;
  v15[6] = v13;
  v15[7] = v12;
  v15[4] = v11;
  v15[5] = v10;
  v15[2] = v9;
  v15[3] = v8;
  v15[0] = v7;
  v15[1] = v6;
  *(v5 + 128) = *(v15 + (a2 & 0xF));
  return Frame4D.subscript.modify;
}

__n128 Frame4D.init(val:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = *a1;
  v3 = *(a1 + 16);
  v4 = *(a1 + 32);
  v5 = *(a1 + 48);
  v6 = *(a1 + 64);
  v7 = *(a1 + 80);
  v8 = *(a1 + 112);
  *(a2 + 96) = *(a1 + 96);
  *(a2 + 112) = v8;
  *(a2 + 64) = v6;
  *(a2 + 80) = v7;
  *(a2 + 32) = v4;
  *(a2 + 48) = v5;
  *a2 = result;
  *(a2 + 16) = v3;
  return result;
}

void Frame4D.init(columns:)(__n128 *a1@<X8>, __n128 a2@<Q0>, __n128 a3@<Q1>, __n128 a4@<Q2>, __n128 a5@<Q3>, __n128 a6@<Q4>, __n128 a7@<Q5>, __n128 a8@<Q6>, __n128 a9@<Q7>)
{
  a1[6] = a8;
  a1[7] = a9;
  a1[4] = a6;
  a1[5] = a7;
  a1[2] = a4;
  a1[3] = a5;
  *a1 = a2;
  a1[1] = a3;
}

Swift::Int Frame4D.hashValue.getter()
{
  v24 = v0[6];
  v25 = v0[7];
  v22 = v0[4];
  v23 = v0[5];
  v20 = v0[2];
  v21 = v0[3];
  v18 = *v0;
  v19 = v0[1];
  Hasher.init(_seed:)();
  v1 = *&v18;
  if (*&v18 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x26670FA50](*&v1);
  v2 = *(&v18 + 1);
  if (*(&v18 + 1) == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x26670FA50](*&v2);
  v3 = *&v19;
  if (*&v19 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x26670FA50](*&v3);
  v4 = *(&v19 + 1);
  if (*(&v19 + 1) == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x26670FA50](*&v4);
  v5 = *&v20;
  if (*&v20 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x26670FA50](*&v5);
  v6 = *(&v20 + 1);
  if (*(&v20 + 1) == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x26670FA50](*&v6);
  v7 = *&v21;
  if (*&v21 == 0.0)
  {
    v7 = 0.0;
  }

  MEMORY[0x26670FA50](*&v7);
  v8 = *(&v21 + 1);
  if (*(&v21 + 1) == 0.0)
  {
    v8 = 0.0;
  }

  MEMORY[0x26670FA50](*&v8);
  v9 = *&v22;
  if (*&v22 == 0.0)
  {
    v9 = 0.0;
  }

  MEMORY[0x26670FA50](*&v9);
  v10 = *(&v22 + 1);
  if (*(&v22 + 1) == 0.0)
  {
    v10 = 0.0;
  }

  MEMORY[0x26670FA50](*&v10);
  v11 = *&v23;
  if (*&v23 == 0.0)
  {
    v11 = 0.0;
  }

  MEMORY[0x26670FA50](*&v11);
  v12 = *(&v23 + 1);
  if (*(&v23 + 1) == 0.0)
  {
    v12 = 0.0;
  }

  MEMORY[0x26670FA50](*&v12);
  v13 = *&v24;
  if (*&v24 == 0.0)
  {
    v13 = 0.0;
  }

  MEMORY[0x26670FA50](*&v13);
  v14 = *(&v24 + 1);
  if (*(&v24 + 1) == 0.0)
  {
    v14 = 0.0;
  }

  MEMORY[0x26670FA50](*&v14);
  v15 = *&v25;
  if (*&v25 == 0.0)
  {
    v15 = 0.0;
  }

  MEMORY[0x26670FA50](*&v15);
  v16 = *(&v25 + 1);
  if (*(&v25 + 1) == 0.0)
  {
    v16 = 0.0;
  }

  MEMORY[0x26670FA50](*&v16);
  return Hasher._finalize()();
}

double protocol witness for SIMDStorage.init() in conformance Frame4D@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

double protocol witness for SIMDStorage.subscript.getter in conformance Frame4D@<D0>(char a1@<W0>, double *a2@<X8>)
{
  result = *(v2 + 8 * (a1 & 0xF));
  *a2 = result;
  return result;
}

double protocol witness for SIMDStorage.subscript.setter in conformance Frame4D(double *a1, char a2)
{
  result = *a1;
  *(v2 + 8 * (a2 & 0xF)) = *a1;
  return result;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance Frame4D(uint64_t *a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x100uLL);
  }

  *a1 = v5;
  *(v5 + 136) = a2;
  *(v5 + 144) = v2;
  v7 = *v2;
  v6 = v2[1];
  v9 = v2[2];
  v8 = v2[3];
  v11 = v2[4];
  v10 = v2[5];
  v13 = v2[6];
  v12 = v2[7];
  *(v5 + 96) = v13;
  *(v5 + 112) = v12;
  *(v5 + 64) = v11;
  *(v5 + 80) = v10;
  *(v5 + 32) = v9;
  *(v5 + 48) = v8;
  *v5 = v7;
  *(v5 + 16) = v6;
  v15[6] = v13;
  v15[7] = v12;
  v15[4] = v11;
  v15[5] = v10;
  v15[2] = v9;
  v15[3] = v8;
  v15[0] = v7;
  v15[1] = v6;
  *(v5 + 128) = *(v15 + (a2 & 0xF));
  return protocol witness for SIMDStorage.subscript.modify in conformance Frame4D;
}

__n128 Frame4D.subscript.modify(void **a1)
{
  v1 = *a1;
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[7];
  v9 = *(v1 + 18);
  v10 = *(v1 + 34) & 0xF;
  v11 = *(v1 + 16);
  v26 = v1[6];
  v27 = v8;
  v24 = v6;
  v25 = v7;
  v22 = v4;
  v23 = v5;
  v20 = v2;
  v21 = v3;
  *(&v20 + v10) = v11;
  v13 = v20;
  v12 = v21;
  v15 = v22;
  v14 = v23;
  v17 = v24;
  v16 = v25;
  v18 = v27;
  v9[6] = v26;
  v9[7] = v18;
  v9[4] = v17;
  v9[5] = v16;
  v9[2] = v15;
  v9[3] = v14;
  *v9 = v13;
  v9[1] = v12;
  free(v1);
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Frame4D()
{
  v24 = v0[6];
  v25 = v0[7];
  v22 = v0[4];
  v23 = v0[5];
  v20 = v0[2];
  v21 = v0[3];
  v18 = *v0;
  v19 = v0[1];
  Hasher.init(_seed:)();
  v1 = *&v18;
  if (*&v18 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x26670FA50](*&v1);
  v2 = *(&v18 + 1);
  if (*(&v18 + 1) == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x26670FA50](*&v2);
  v3 = *&v19;
  if (*&v19 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x26670FA50](*&v3);
  v4 = *(&v19 + 1);
  if (*(&v19 + 1) == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x26670FA50](*&v4);
  v5 = *&v20;
  if (*&v20 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x26670FA50](*&v5);
  v6 = *(&v20 + 1);
  if (*(&v20 + 1) == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x26670FA50](*&v6);
  v7 = *&v21;
  if (*&v21 == 0.0)
  {
    v7 = 0.0;
  }

  MEMORY[0x26670FA50](*&v7);
  v8 = *(&v21 + 1);
  if (*(&v21 + 1) == 0.0)
  {
    v8 = 0.0;
  }

  MEMORY[0x26670FA50](*&v8);
  v9 = *&v22;
  if (*&v22 == 0.0)
  {
    v9 = 0.0;
  }

  MEMORY[0x26670FA50](*&v9);
  v10 = *(&v22 + 1);
  if (*(&v22 + 1) == 0.0)
  {
    v10 = 0.0;
  }

  MEMORY[0x26670FA50](*&v10);
  v11 = *&v23;
  if (*&v23 == 0.0)
  {
    v11 = 0.0;
  }

  MEMORY[0x26670FA50](*&v11);
  v12 = *(&v23 + 1);
  if (*(&v23 + 1) == 0.0)
  {
    v12 = 0.0;
  }

  MEMORY[0x26670FA50](*&v12);
  v13 = *&v24;
  if (*&v24 == 0.0)
  {
    v13 = 0.0;
  }

  MEMORY[0x26670FA50](*&v13);
  v14 = *(&v24 + 1);
  if (*(&v24 + 1) == 0.0)
  {
    v14 = 0.0;
  }

  MEMORY[0x26670FA50](*&v14);
  v15 = *&v25;
  if (*&v25 == 0.0)
  {
    v15 = 0.0;
  }

  MEMORY[0x26670FA50](*&v15);
  v16 = *(&v25 + 1);
  if (*(&v25 + 1) == 0.0)
  {
    v16 = 0.0;
  }

  MEMORY[0x26670FA50](*&v16);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Frame4D()
{
  v24 = *(v0 + 6);
  v25 = *(v0 + 7);
  v22 = *(v0 + 4);
  v23 = *(v0 + 5);
  v20 = *(v0 + 2);
  v21 = *(v0 + 3);
  v1 = *v0;
  v18 = *v0;
  v19 = *(v0 + 1);
  if (*v0 == 0.0)
  {
    *&v1 = 0.0;
  }

  MEMORY[0x26670FA50](v1);
  v2 = *(&v18 + 1);
  if (*(&v18 + 1) == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x26670FA50](*&v2);
  v3 = *&v19;
  if (*&v19 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x26670FA50](*&v3);
  v4 = *(&v19 + 1);
  if (*(&v19 + 1) == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x26670FA50](*&v4);
  v5 = *&v20;
  if (*&v20 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x26670FA50](*&v5);
  v6 = *(&v20 + 1);
  if (*(&v20 + 1) == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x26670FA50](*&v6);
  v7 = *&v21;
  if (*&v21 == 0.0)
  {
    v7 = 0.0;
  }

  MEMORY[0x26670FA50](*&v7);
  v8 = *(&v21 + 1);
  if (*(&v21 + 1) == 0.0)
  {
    v8 = 0.0;
  }

  MEMORY[0x26670FA50](*&v8);
  v9 = *&v22;
  if (*&v22 == 0.0)
  {
    v9 = 0.0;
  }

  MEMORY[0x26670FA50](*&v9);
  v10 = *(&v22 + 1);
  if (*(&v22 + 1) == 0.0)
  {
    v10 = 0.0;
  }

  MEMORY[0x26670FA50](*&v10);
  v11 = *&v23;
  if (*&v23 == 0.0)
  {
    v11 = 0.0;
  }

  MEMORY[0x26670FA50](*&v11);
  v12 = *(&v23 + 1);
  if (*(&v23 + 1) == 0.0)
  {
    v12 = 0.0;
  }

  MEMORY[0x26670FA50](*&v12);
  v13 = *&v24;
  if (*&v24 == 0.0)
  {
    v13 = 0.0;
  }

  MEMORY[0x26670FA50](*&v13);
  v14 = *(&v24 + 1);
  if (*(&v24 + 1) == 0.0)
  {
    v14 = 0.0;
  }

  MEMORY[0x26670FA50](*&v14);
  v15 = *&v25;
  if (*&v25 == 0.0)
  {
    v15 = 0.0;
  }

  MEMORY[0x26670FA50](*&v15);
  v16 = *(&v25 + 1);
  if (*(&v25 + 1) == 0.0)
  {
    v16 = 0.0;
  }

  return MEMORY[0x26670FA50](*&v16);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Frame4D()
{
  v24 = v0[6];
  v25 = v0[7];
  v22 = v0[4];
  v23 = v0[5];
  v20 = v0[2];
  v21 = v0[3];
  v18 = *v0;
  v19 = v0[1];
  Hasher.init(_seed:)();
  v1 = *&v18;
  if (*&v18 == 0.0)
  {
    v1 = 0.0;
  }

  MEMORY[0x26670FA50](*&v1);
  v2 = *(&v18 + 1);
  if (*(&v18 + 1) == 0.0)
  {
    v2 = 0.0;
  }

  MEMORY[0x26670FA50](*&v2);
  v3 = *&v19;
  if (*&v19 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x26670FA50](*&v3);
  v4 = *(&v19 + 1);
  if (*(&v19 + 1) == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x26670FA50](*&v4);
  v5 = *&v20;
  if (*&v20 == 0.0)
  {
    v5 = 0.0;
  }

  MEMORY[0x26670FA50](*&v5);
  v6 = *(&v20 + 1);
  if (*(&v20 + 1) == 0.0)
  {
    v6 = 0.0;
  }

  MEMORY[0x26670FA50](*&v6);
  v7 = *&v21;
  if (*&v21 == 0.0)
  {
    v7 = 0.0;
  }

  MEMORY[0x26670FA50](*&v7);
  v8 = *(&v21 + 1);
  if (*(&v21 + 1) == 0.0)
  {
    v8 = 0.0;
  }

  MEMORY[0x26670FA50](*&v8);
  v9 = *&v22;
  if (*&v22 == 0.0)
  {
    v9 = 0.0;
  }

  MEMORY[0x26670FA50](*&v9);
  v10 = *(&v22 + 1);
  if (*(&v22 + 1) == 0.0)
  {
    v10 = 0.0;
  }

  MEMORY[0x26670FA50](*&v10);
  v11 = *&v23;
  if (*&v23 == 0.0)
  {
    v11 = 0.0;
  }

  MEMORY[0x26670FA50](*&v11);
  v12 = *(&v23 + 1);
  if (*(&v23 + 1) == 0.0)
  {
    v12 = 0.0;
  }

  MEMORY[0x26670FA50](*&v12);
  v13 = *&v24;
  if (*&v24 == 0.0)
  {
    v13 = 0.0;
  }

  MEMORY[0x26670FA50](*&v13);
  v14 = *(&v24 + 1);
  if (*(&v24 + 1) == 0.0)
  {
    v14 = 0.0;
  }

  MEMORY[0x26670FA50](*&v14);
  v15 = *&v25;
  if (*&v25 == 0.0)
  {
    v15 = 0.0;
  }

  MEMORY[0x26670FA50](*&v15);
  v16 = *(&v25 + 1);
  if (*(&v25 + 1) == 0.0)
  {
    v16 = 0.0;
  }

  MEMORY[0x26670FA50](*&v16);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Frame4D(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Frame4D and conformance Frame4D();

  return MEMORY[0x2821FE248](a1, v2);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance Frame4D(__int128 *a1, __int128 *a2)
{
  v2 = 0;
  v4 = a1[6];
  v3 = a1[7];
  v6 = a1[4];
  v5 = a1[5];
  v8 = a1[2];
  v7 = a1[3];
  v10 = *a1;
  v9 = a1[1];
  v12 = a2[6];
  v11 = a2[7];
  v14 = a2[4];
  v13 = a2[5];
  v16 = a2[2];
  v15 = a2[3];
  v18 = *a2;
  v17 = a2[1];
  while (1)
  {
    v23[0] = v10;
    v23[1] = v9;
    v23[2] = v8;
    v23[3] = v7;
    v23[4] = v6;
    v23[5] = v5;
    v23[6] = v4;
    v23[7] = v3;
    v19 = 8 * (v2 & 0xF);
    v20 = *(v23 + v19);
    v22[0] = v18;
    v22[1] = v17;
    v22[2] = v16;
    v22[3] = v15;
    v22[4] = v14;
    v22[5] = v13;
    v22[6] = v12;
    v22[7] = v11;
    result = v20 == *(v22 + v19);
    if (v2 == 15)
    {
      break;
    }

    while (1)
    {
      ++v2;
      if (result)
      {
        break;
      }

      result = 0;
      if (v2 == 15)
      {
        return result;
      }
    }
  }

  return result;
}

void (*TexCoord2.x.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*(*(a2 + 16) - 8) + 64);
  v6[2] = v8;
  if (v5)
  {
    v6[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v6[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v7[4] = v9;
  Point3.x.getter(a2, v10);
  return TexCoord3.x.modify;
}

void (*TexCoord2.y.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*(*(a2 + 16) - 8) + 64);
  v6[2] = v8;
  if (v5)
  {
    v6[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v6[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v7[4] = v9;
  Point3.y.getter(a2, v10);
  return TexCoord3.y.modify;
}

float Normal3.x.getter(uint64_t a1, uint64_t a2, float a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  dispatch thunk of SIMDStorage.subscript.getter();
  return result;
}

void (*TexCoord2.z.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*(*(a2 + 16) - 8) + 64);
  v6[2] = v8;
  if (v5)
  {
    v6[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v6[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v7[4] = v9;
  Point3.z.getter(a2, v10);
  return TexCoord3.z.modify;
}

void (*TexCoord2.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x30uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = *(*(*(a3 + 16) - 8) + 64);
  v8[3] = v10;
  if (v7)
  {
    v8[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v8[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v9[5] = v11;
  Point3.subscript.getter(a2, a3);
  return TexCoord3.subscript.modify;
}

uint64_t (*protocol witness for SIMDStorage.subscript.modify in conformance TexCoord2<A>(void *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = TexCoord2.subscript.modify(v6, a2, a3);
  return protocol witness for SIMDStorage.subscript.modify in conformance Color4<A>;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance TexCoord2<A>(uint64_t a1, uint64_t a2)
{
  swift_getWitnessTable();

  return SIMD.hash(into:)();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TexCoord2<A>(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE248](a1, WitnessTable);
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance TexCoord2<A>(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE250](a1, a2, WitnessTable);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance TexCoord2<A>(uint64_t a1, __n128 a2, uint64_t a3, uint64_t a4)
{
  v5.n128_f32[0] = MEMORY[0x28223BE20](a1, a2);
  MEMORY[0x28223BE20](v6, v5);
  Point3.subscript.getter(0, v7);
  Point3.subscript.getter(0, a4);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedConformanceWitness();
  if (dispatch thunk of static Equatable.== infix(_:_:)())
  {
    Point3.subscript.getter(1, a4);
    Point3.subscript.getter(1, a4);
    swift_getAssociatedTypeWitness();
    swift_getAssociatedConformanceWitness();
    swift_getAssociatedConformanceWitness();
    v8 = dispatch thunk of static Equatable.== infix(_:_:)();
  }

  else
  {
    v8 = 0;
  }

  return v8 & 1;
}

uint64_t TexCoord2.init(_:_:)(const void *a1, const void *a2, uint64_t a3, uint64_t a4, __n128 a5)
{
  v7 = *(*(a3 - 8) + 64);
  MEMORY[0x28223BE20](a1, a5);
  Point3.init()(v8, v9);
  memcpy(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v7);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  dispatch thunk of SIMDStorage.subscript.setter();
  memcpy(&v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0), a2, v7);
  return dispatch thunk of SIMDStorage.subscript.setter();
}

void (*TexCoord3.x.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*(*(a2 + 16) - 8) + 64);
  v6[2] = v8;
  if (v5)
  {
    v6[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v6[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v7[4] = v9;
  Point3.x.getter(a2, v10);
  return TexCoord3.x.modify;
}

void (*TexCoord3.y.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*(*(a2 + 16) - 8) + 64);
  v6[2] = v8;
  if (v5)
  {
    v6[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v6[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v7[4] = v9;
  Point3.y.getter(a2, v10);
  return TexCoord3.y.modify;
}

void (*TexCoord3.z.modify(void *a1, uint64_t a2))(uint64_t **a1, char a2)
{
  v5 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v8 = *(*(*(a2 + 16) - 8) + 64);
  v6[2] = v8;
  if (v5)
  {
    v6[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v6[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v7[4] = v9;
  Point3.z.getter(a2, v10);
  return TexCoord3.z.modify;
}

void (*TexCoord3.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t **a1, char a2)
{
  v7 = MEMORY[0x277D84FD8];
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x30uLL);
  }

  v9 = v8;
  *a1 = v8;
  v8[1] = a3;
  v8[2] = v3;
  *v8 = a2;
  v10 = *(*(*(a3 + 16) - 8) + 64);
  v8[3] = v10;
  if (v7)
  {
    v8[4] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v8[4] = malloc(v10);
    v11 = malloc(v10);
  }

  v9[5] = v11;
  Point3.subscript.getter(a2, a3);
  return TexCoord3.subscript.modify;
}