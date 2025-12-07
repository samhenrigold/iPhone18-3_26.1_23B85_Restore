Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy19_RealityKit_SwiftUI26ImplicitAnimationComponentV3KeyVAC0H5State_pGMd, &_ss18_DictionaryStorageCy19_RealityKit_SwiftUI26ImplicitAnimationComponentV3KeyVAC0H5State_pGMR);
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
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = *(v5 + 48) + 24 * v20;
      v22 = *v21;
      v33 = *(v21 + 8);
      v23 = (*(v5 + 56) + 40 * v20);
      if (v32)
      {
        outlined init with take of Animation(v23, v34);
      }

      else
      {
        outlined init with copy of Cancellable(v23, v34);
      }

      Hasher.init(_seed:)();
      type metadata accessor for Entity();
      lazy protocol witness table accessor for type SwiftUIImplicitAnimation and conformance SwiftUIImplicitAnimation(&lazy protocol witness table cache variable for type Entity and conformance Entity, 255, MEMORY[0x277CDB1C8], MEMORY[0x277CDB1D0]);
      dispatch thunk of Hashable.hash(into:)();
      MEMORY[0x23EEAFE40](v33);
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v25) & ~*(v14 + 8 * (v25 >> 6)))) | v25 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = *(v7 + 48) + 24 * v15;
      *v16 = v22;
      *(v16 + 8) = v33;
      result = outlined init with take of Animation(v34, *(v7 + 56) + 40 * v15);
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

    if ((v32 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
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

LABEL_34:
  *v3 = v7;
  return result;
}

unint64_t specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  result = MEMORY[0x28223BE20](v4);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v41 = a2;
    v12 = ~v10;
    v13 = _HashTable.previousHole(before:)();
    v14 = v12;
    a2 = v41;
    v40 = (v13 + 1) & v14;
    v16 = *(v5 + 16);
    v15 = v5 + 16;
    v38 = v9;
    v39 = v16;
    v17 = *(v15 + 56);
    v37 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v39(v8, *(a2 + 48) + v17 * v11, v4);
      lazy protocol witness table accessor for type SwiftUIImplicitAnimation and conformance SwiftUIImplicitAnimation(&lazy protocol witness table cache variable for type UUID and conformance UUID, 255, MEMORY[0x277CC95F0], MEMORY[0x277CC9600]);
      v22 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v37)(v8, v4);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v40)
      {
        if (v23 >= v40 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v41 + 48) + v18 * a1 >= (*(v41 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v41;
          v26 = *(v41 + 56);
          v27 = *(*(type metadata accessor for FreeformMeshManager.MeshAnchor(0) - 8) + 72);
          v28 = v27 * a1;
          result = v26 + v27 * a1;
          v29 = v27 * v11;
          v30 = v26 + v27 * v11 + v27;
          if (v28 < v29 || result >= v30)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v38;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v32 = v28 == v29;
            v9 = v38;
            v14 = v20;
            if (!v32)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v40 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v38;
      a2 = v41;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v33 = *(a2 + 16);
  v34 = __OFSUB__(v33, 1);
  v35 = v33 - 1;
  if (v34)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v35;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t specialized _NativeDictionary._delete(at:)(uint64_t result, uint64_t a2)
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
      v9 = *(a2 + 48);
      v10 = (v9 + 8 * v6);
      result = MEMORY[0x23EEAFE20](*(a2 + 40), *v10);
      v11 = result & v7;
      if (v3 >= v8)
      {
        if (v11 >= v8 && v3 >= v11)
        {
LABEL_15:
          v14 = (v9 + 8 * v3);
          if (v3 != v6 || v14 >= v10 + 1)
          {
            *v14 = *v10;
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
      }

      else if (v11 >= v8 || v3 >= v11)
      {
        goto LABEL_15;
      }

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

{
  v2 = a2;
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    v26 = v4;
    do
    {
      v11 = v2;
      v12 = *(*(v2 + 48) + 24 * v6 + 8);
      v13 = v8;
      Hasher.init(_seed:)();
      type metadata accessor for Entity();
      lazy protocol witness table accessor for type SwiftUIImplicitAnimation and conformance SwiftUIImplicitAnimation(&lazy protocol witness table cache variable for type Entity and conformance Entity, 255, MEMORY[0x277CDB1C8], MEMORY[0x277CDB1D0]);

      dispatch thunk of Hashable.hash(into:)();
      MEMORY[0x23EEAFE40](v12);
      v14 = Hasher._finalize()();

      v8 = v13;
      v15 = v14 & v7;
      if (v3 >= v13)
      {
        if (v15 < v13)
        {
          v4 = v26;
          v2 = v11;
        }

        else
        {
          v4 = v26;
          v2 = v11;
          if (v3 >= v15)
          {
            goto LABEL_11;
          }
        }
      }

      else
      {
        v4 = v26;
        v2 = v11;
        if (v15 >= v8 || v3 >= v15)
        {
LABEL_11:
          v16 = *(v2 + 48);
          v17 = v16 + 24 * v3;
          v18 = (v16 + 24 * v6);
          if (v3 != v6 || v17 >= v18 + 24)
          {
            v19 = *v18;
            *(v17 + 16) = *(v18 + 2);
            *v17 = v19;
          }

          v20 = *(v2 + 56);
          v21 = v20 + 40 * v3;
          v22 = (v20 + 40 * v6);
          if (v3 != v6 || v21 >= v22 + 40)
          {
            v9 = *v22;
            v10 = v22[1];
            *(v21 + 32) = *(v22 + 4);
            *v21 = v9;
            *(v21 + 16) = v10;
            v3 = v6;
          }
        }
      }

      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v23 = *(v2 + 16);
  v24 = __OFSUB__(v23, 1);
  v25 = v23 - 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v2 + 16) = v25;
    ++*(v2 + 36);
  }

  return result;
}

unint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = *v3;
  result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 < v14 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, a3 & 1);
      result = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v15 & 1) != (v18 & 1))
      {
LABEL_16:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v17 = result;
      specialized _NativeDictionary.copy()();
      result = v17;
    }
  }

  v19 = *v4;
  if ((v15 & 1) == 0)
  {
    v19[(result >> 6) + 8] |= 1 << result;
    *(v19[6] + 8 * result) = a2;
    *(v19[7] + 8 * result) = a1;
    v20 = v19[2];
    v13 = __OFADD__(v20, 1);
    v21 = v20 + 1;
    if (!v13)
    {
      v19[2] = v21;
      return result;
    }

    goto LABEL_15;
  }

  *(v19[7] + 8 * result) = a1;
}

uint64_t specialized _NativeDictionary.setValue(_:forKey:isUnique:)(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  v6 = v5;
  v12 = *v5;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4);
  v15 = v12[2];
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = v12[3];
  if (v20 < v18 || (a5 & 1) == 0)
  {
    if (v20 >= v18 && (a5 & 1) == 0)
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a5 & 1);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4);
    if ((v19 & 1) != (v22 & 1))
    {
LABEL_16:
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v23 = *v6;
  if (v19)
  {
    v24 = (v23[7] + 40 * v13);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);

    return outlined init with take of Animation(a1, v24);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v13, a2, a3, a4, a1, v23);
  }
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v8 = a4[6];
  v9 = type metadata accessor for UUID();
  (*(*(v9 - 8) + 32))(v8 + *(*(v9 - 8) + 72) * a1, a2, v9);
  v10 = a4[7];
  v11 = type metadata accessor for FreeformMeshManager.MeshAnchor(0);
  result = outlined init with take of FreeformMeshManager.MeshAnchor(a3, v10 + *(*(v11 - 8) + 72) * a1);
  v13 = a4[2];
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v15;
  }

  return result;
}

uint64_t specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, void *a6)
{
  a6[(a1 >> 6) + 8] |= 1 << a1;
  v7 = (a6[6] + 24 * a1);
  *v7 = a2;
  v7[1] = a3;
  v7[2] = a4;
  result = outlined init with take of Animation(a5, a6[7] + 40 * a1);
  v9 = a6[2];
  v10 = __OFADD__(v9, 1);
  v11 = v9 + 1;
  if (v10)
  {
    __break(1u);
  }

  else
  {
    a6[2] = v11;
  }

  return result;
}

char *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  v2 = type metadata accessor for FreeformMeshManager.MeshAnchor(0);
  v36 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = type metadata accessor for UUID();
  v37 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy10Foundation4UUIDV19_RealityKit_SwiftUI19FreeformMeshManagerC0J6AnchorVGMd, &_ss18_DictionaryStorageCy10Foundation4UUIDV19_RealityKit_SwiftUI19FreeformMeshManagerC0J6AnchorVGMR);
  v5 = *v0;
  v6 = static _DictionaryStorage.copy(original:)();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
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
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        outlined init with copy of FreeformMeshManager.MeshAnchor(*(v5 + 56) + v26, v35);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = outlined init with take of FreeformMeshManager.MeshAnchor(v25, *(v27 + 56) + v26);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
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

void *specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi10RealityKit6EntityCGMd, &_ss18_DictionaryStorageCySi10RealityKit6EntityCGMR);
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
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy19_RealityKit_SwiftUI26ImplicitAnimationComponentV3KeyVAC0H5State_pGMd, &_ss18_DictionaryStorageCy19_RealityKit_SwiftUI26ImplicitAnimationComponentV3KeyVAC0H5State_pGMR);
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
        v18 = 24 * v17;
        v19 = *(v2 + 48) + 24 * v17;
        v20 = *(v19 + 16);
        v23 = *v19;
        v21 = 40 * v17;
        outlined init with copy of Cancellable(*(v2 + 56) + 40 * v17, v24);
        v22 = *(v4 + 48) + v18;
        *v22 = v23;
        *(v22 + 16) = v20;
        outlined init with take of Animation(v24, *(v4 + 56) + v21);
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

Swift::Void __swiftcall Array._checkSubscript_mutating(_:)(Swift::Int a1)
{
  v2 = v1;
  isClassOrObjCExistentialType = _swift_isClassOrObjCExistentialType();
  if (a1 < 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    return;
  }

  v5 = v2 & 0xFFFFFFFFFFFFFF8;
  if ((isClassOrObjCExistentialType & 1) == 0)
  {
    v5 = v2;
  }

  if (*(v5 + 16) <= a1)
  {
    goto LABEL_7;
  }
}

uint64_t specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(uint64_t a1, char a2)
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

  __CocoaSet.count.getter();
LABEL_9:
  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
  *v2 = result;
  return result;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v5 = a3 - v4;
  if (__OFSUB__(a3, v4))
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v5)
  {
    goto LABEL_13;
  }

  v6 = *v3;
  v7 = *(v6 + 16);
  v8 = __OFSUB__(v7, a2);
  v9 = v7 - a2;
  if (v8)
  {
    goto LABEL_17;
  }

  result = v6 + 32 + 48 * result + 48 * a3;
  v10 = (v6 + 32 + 48 * a2);
  if (result != v10 || result >= v10 + 48 * v9)
  {
    v12 = a3;
    result = memmove(result, v10, 48 * v9);
    a3 = v12;
  }

  v13 = *(v6 + 16);
  v8 = __OFADD__(v13, v5);
  v14 = v13 + v5;
  if (v8)
  {
    goto LABEL_18;
  }

  *(v6 + 16) = v14;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 32 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAA21FreeformCloudRendererC08ResourceH033_3779DB7E999291C1C0BBA21A79DFAE44LLV_GMd, &_s19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAA21FreeformCloudRendererC08ResourceH033_3779DB7E999291C1C0BBA21A79DFAE44LLV_GMR);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 32 * a3;
  v13 = (v7 + 32 + 32 * a2);
  if (result != v13 || result >= v13 + 32 * v12)
  {
    result = memmove(result, v13, 32 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

{
  v4 = a2 - result;
  if (__OFSUB__(a2, result))
  {
    __break(1u);
    goto LABEL_16;
  }

  v7 = *v3;
  v8 = v7 + 32 + 16 * result;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_syycMd, &_syycMR);
  result = swift_arrayDestroy();
  v9 = __OFSUB__(a3, v4);
  v10 = a3 - v4;
  if (v9)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v10)
  {
    goto LABEL_13;
  }

  v11 = *(v7 + 16);
  v9 = __OFSUB__(v11, a2);
  v12 = v11 - a2;
  if (v9)
  {
    goto LABEL_17;
  }

  result = v8 + 16 * a3;
  v13 = (v7 + 32 + 16 * a2);
  if (result != v13 || result >= v13 + 16 * v12)
  {
    result = memmove(result, v13, 16 * v12);
  }

  v15 = *(v7 + 16);
  v9 = __OFADD__(v15, v10);
  v16 = v15 + v10;
  if (v9)
  {
    goto LABEL_18;
  }

  *(v7 + 16) = v16;
LABEL_13:
  if (a3 > 0)
  {
LABEL_19:
    __break(1u);
  }

  return result;
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t a1, uint64_t a2)
{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
}

{
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = a2;
    v5 = a1;
    v6 = *v4;
    v7 = *v4 >> 62;
    if (!v7)
    {
      result = *((*v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (result >= a2)
      {
        goto LABEL_4;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }
  }

  result = __CocoaSet.count.getter();
  if (result < v3)
  {
    goto LABEL_15;
  }

LABEL_4:
  if (__OFSUB__(v3, v5))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v9 = v5 - v3;
  if (__OFSUB__(0, v3 - v5))
  {
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    return result;
  }

  if (v7)
  {
    v10 = __CocoaSet.count.getter();
  }

  else
  {
    v10 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v11 = __OFADD__(v10, v9);
  result = v10 + v9;
  if (v11)
  {
    goto LABEL_18;
  }

  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(result, 1);

  return specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v5, v3, 0);
}

uint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
  type metadata accessor for FrameCache.CacheEntry();
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
  result = __CocoaSet.count.getter();
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
    result = __CocoaSet.count.getter();
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

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t a1, uint64_t a2)
{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &_s19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAA21CoveragePointRendererC08ResourceH033_5B9EEC18CAADE25D2C0394A3CF8442B0LLV_GMd, &_s19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAA21CoveragePointRendererC08ResourceH033_5B9EEC18CAADE25D2C0394A3CF8442B0LLV_GMR);
}

{
  return specialized Array.replaceSubrange<A>(_:with:)(a1, a2, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), &_s19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAA32FullscreenCoveragePointsRendererC08ResourceH033_EBAA0A78FD80C51EE584E033B8F33CA2LLV_GMd, &_s19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAA32FullscreenCoveragePointsRendererC08ResourceH033_EBAA0A78FD80C51EE584E033B8F33CA2LLV_GMR);
}

unint64_t specialized Array.replaceSubrange<A>(_:with:)(unint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t *a4, uint64_t *a5)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v7 = *v5;
  v8 = *(*v5 + 16);
  if (v8 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v9 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v10 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = v8 + v10;
  if (__OFADD__(v8, v10))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v5 = v7;
  if (!isUniquelyReferenced_nonNull_native || v11 > *(v7 + 24) >> 1)
  {
    v7 = a3();
    *v5 = v7;
  }

  result = specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(v9, a2, 0, a4, a5);
  *v5 = v7;
  return result;
}

void specialized ImplicitAnimationState.tick(_:_:)(uint64_t a1)
{
  v2 = v1;
  v169 = a1;
  v3 = *v1;
  v219 = type metadata accessor for Date();
  v171 = *(v219 - 8);
  v4 = MEMORY[0x28223BE20](v219);
  v174 = &v163 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v176 = &v163 - v6;
  v7 = *(v3 + 80);
  v8 = *(v3 + 88);
  v220 = type metadata accessor for ImplicitAnimationState.State(0, v7, v8, v9);
  v170 = *(v220 - 8);
  v10 = MEMORY[0x28223BE20](v220);
  v187 = &v163 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v186 = &v163 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v182 = &v163 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v212 = &v163 - v17;
  MEMORY[0x28223BE20](v16);
  v209 = &v163 - v18;
  v20 = type metadata accessor for ImplicitAnimationState.AnimationEntry(0, v7, v8, v19);
  v183 = *(v20 - 8);
  v21 = MEMORY[0x28223BE20](v20);
  v167 = &v163 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v21);
  v200 = &v163 - v24;
  v25 = MEMORY[0x28223BE20](v23);
  v181 = &v163 - v26;
  MEMORY[0x28223BE20](v25);
  v28 = &v163 - v27;
  v214 = v8;
  v29 = *(v8 + 8);
  v30 = type metadata accessor for ComponentAnimatableData();
  v31 = *(v30 - 8);
  v32 = MEMORY[0x28223BE20](v30);
  v168 = &v163 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = MEMORY[0x28223BE20](v32);
  v36 = &v163 - v35;
  v37 = MEMORY[0x28223BE20](v34);
  v177 = &v163 - v38;
  MEMORY[0x28223BE20](v37);
  v40 = &v163 - v39;
  v215 = v7;
  v173 = v29;
  MEMORY[0x23EEADD60](v7, v29);
  v41 = *(*v2 + 96);
  swift_beginAccess();
  v42 = *(v31 + 40);
  v205 = v41;
  v206 = v40;
  v192 = v31 + 40;
  v191 = v42;
  v42(&v2[v41], v40, v30);
  swift_endAccess();
  v43 = *(*v2 + 104);
  swift_beginAccess();
  v216 = v43;
  v44 = *&v2[v43];
  v222 = v20;
  *&v223 = v44;
  v45 = type metadata accessor for Array();
  WitnessTable = swift_getWitnessTable();
  v190 = v45;
  v172 = WitnessTable;
  RandomAccessCollection<>.indices.getter();
  v202 = 0;
  v47 = *(&v224 + 1);
  v48 = v224;
  if (v224 == *(&v224 + 1))
  {
LABEL_2:

    v50 = MEMORY[0x23EEAF6A0](v49, v222);

    if (v202 == v50)
    {
      v51 = v209;
      (*(v171 + 56))(v209, 2, 2, v219);
      v52 = *(*v2 + 112);
      swift_beginAccess();
      (*(v170 + 40))(&v2[v52], v51, v220);
      swift_endAccess();
      swift_beginAccess();
      Array.removeAll(keepingCapacity:)(1);
      swift_endAccess();
    }

    return;
  }

  if (*(&v224 + 1) < v224)
  {
    goto LABEL_59;
  }

  v53 = *(*v2 + 112);
  swift_beginAccess();
  v202 = 0;
  v54 = (v170 + 16);
  v55 = (v183 + 8);
  v213 = (v171 + 56);
  v210 = (v170 + 8);
  v207 = (v31 + 16);
  v189 = (v31 + 8);
  v199 = (v171 + 48);
  v178 = (v171 + 32);
  v194 = (v170 + 40);
  v175 = (v171 + 8);
  v164 = (v31 + 24);
  v165 = v215 - 8;
  v217 = (v183 + 8);
  v201 = v28;
  v203 = v30;
  v166 = v36;
  v198 = v47;
  v180 = v53;
  v208 = (v170 + 16);
  while (v48 < v47)
  {
    v58 = v216;
    swift_beginAccess();
    v59 = v222;
    Array.subscript.getter();
    v60 = &v28[*(v59 + 48)];
    v61 = v209;
    v62 = v220;
    v218 = *v54;
    (v218)(v209, v60, v220);
    swift_endAccess();
    v221 = *v55;
    v221(v28, v59);
    v63 = v58;
    v64 = v28;
    v65 = v212;
    v211 = *v213;
    v211(v212, 2, 2, v219);
    LOBYTE(v59) = static ImplicitAnimationState.State.== infix(_:_:)(v61, v65, v215, v214);
    v66 = *v210;
    (*v210)(v65, v62);
    v66(v61, v62);
    if ((v59 & 1) == 0)
    {
      v71 = v66;
      v204 = v48;
      v72 = v205;
      v73 = v206;
      v74 = v203;
      v195 = *v207;
      v195(v206, &v2[v205], v203);
      v75 = ComponentAnimatableData.hasValues()();
      v188 = *v189;
      v188(v73, v74);
      v76 = v63;
      v77 = v221;
      if (!v75)
      {
        swift_beginAccess();
        v78 = v201;
        v79 = v222;
        Array.subscript.getter();
        v80 = v206;
        v195(v206, v78, v74);
        v77(v78, v79);
        swift_endAccess();
        swift_beginAccess();
        v191(&v2[v72], v80, v74);
        swift_endAccess();
      }

      swift_beginAccess();
      v81 = v181;
      v48 = v204;
      v82 = v222;
      Array.subscript.getter();
      v83 = v186;
      (v218)(v186, &v81[*(v82 + 48)], v220);
      swift_endAccess();
      v221(v81, v82);
      v84 = *v199;
      v85 = (*v199)(v83, 2, v219);
      v86 = v180;
      v197 = v71;
      v196 = v84;
      if (v85)
      {
        v87 = v85;
        v88 = v182;
        if (v85 == 1)
        {
          Date.init()();
          goto LABEL_21;
        }
      }

      else
      {
        v88 = v182;
        (*v178)(v182, v186, v219);
LABEL_21:
        v87 = 0;
      }

      v89 = v219;
      v90 = v211;
      v211(v88, v87, 2, v219);
      swift_beginAccess();
      Array._makeMutableAndUnique()();
      v91 = *&v2[v76];
      v92 = v222;
      Array._checkSubscript_mutating(_:)(v48);
      v184 = (*(v183 + 80) + 32) & ~*(v183 + 80);
      v93 = v91 + v184 + *(v92 + 48);
      v94 = *v194;
      v185 = *(v183 + 72) * v48;
      v95 = v220;
      v193 = v94;
      v94((v93 + v185), v88, v220);
      swift_endAccess();
      v96 = &v2[v86];
      v97 = v209;
      v98 = v86;
      v99 = v208;
      (v218)(v209, v96, v95);
      v100 = v212;
      v101 = v89;
      v102 = v95;
      v90(v212, 1, 2, v101);
      LOBYTE(v95) = static ImplicitAnimationState.State.== infix(_:_:)(v97, v100, v215, v214);
      v103 = v197;
      v197(v100, v102);
      v103(v97, v102);
      v28 = v201;
      v104 = v221;
      if (v95 & 1) != 0 || (v105 = v220, (v218)(v97, &v2[v98], v220), v106 = v212, v211(v212, 2, 2, v219), v179 = static ImplicitAnimationState.State.== infix(_:_:)(v97, v106, v215, v214), v107 = v106, v28 = v201, v103(v107, v105), v103(v97, v105), v104 = v221, (v179))
      {
        swift_beginAccess();
        v108 = v222;
        Array.subscript.getter();
        v109 = v220;
        (v218)(v97, &v28[*(v108 + 48)], v220);
        v104(v28, v108);
        swift_endAccess();
        swift_beginAccess();
        v193(&v2[v98], v97, v109);
        swift_endAccess();
      }

      swift_beginAccess();
      v110 = v200;
      v111 = v222;
      Array.subscript.getter();
      v112 = &v110[*(v111 + 48)];
      v113 = v187;
      (v218)(v187, v112, v220);
      swift_endAccess();
      v114 = v219;
      v54 = v99;
      if (v196(v113, 2, v219))
      {
        v55 = v217;
        v56 = v200;
        v57 = v222;
      }

      else
      {
        v115 = v176;
        (*v178)(v176, v187, v114);
        v116 = v174;
        Date.init()();
        Date.timeIntervalSince(_:)();
        v118 = v117;
        v119 = v116;
        v120 = *v175;
        (*v175)(v119, v114);
        if (v118 <= 0.001)
        {
          v120(v115, v114);
        }

        else
        {
          v197 = v120;
          swift_beginAccess();
          v121 = v222;
          Array.subscript.getter();
          swift_endAccess();

          v122 = v221;
          v221(v28, v121);
          LODWORD(v225) = 1065353216;
          swift_beginAccess();
          Array._makeMutableAndUnique()();
          Array._checkSubscript_mutating(_:)(v48);
          Animation.animate<A>(value:time:context:)();
          swift_endAccess();

          v123 = *&v223;
          LODWORD(v218) = BYTE4(v223);
          swift_beginAccess();
          Array.subscript.getter();
          v124 = v203;
          v125 = v195;
          v195(v177, &v28[*(v121 + 36)], v203);
          v122(v28, v121);
          swift_endAccess();
          v126 = v206;
          v125(v206, &v2[v205], v124);
          v127 = ComponentAnimatableData.hasValues()();
          v128 = v126;
          v129 = v188;
          v188(v128, v124);
          if (v127)
          {
            v130 = v206;
            v131 = v203;
            v195(v206, &v2[v205], v203);
            static ComponentAnimatableData.-= infix(_:_:)();
            v129(v130, v131);
          }

          if (v218)
          {
            v132 = v209;
            v211(v209, 2, 2, v219);
            v133 = v216;
            swift_beginAccess();
            Array._makeMutableAndUnique()();
            v134 = *&v2[v133];
            v135 = v222;
            Array._checkSubscript_mutating(_:)(v48);
            v193((v134 + v184 + *(v135 + 48) + v185), v132, v220);
            swift_endAccess();
            if (__OFADD__(v202, 1))
            {
              goto LABEL_58;
            }

            ++v202;
            v136 = v205;
            v137 = v206;
            v138 = v203;
            v195(v206, &v2[v205], v203);
            v139 = ComponentAnimatableData.hasValues()();
            v188(v137, v138);
            swift_beginAccess();
            if (v139)
            {
              static ComponentAnimatableData.+= infix(_:_:)();
            }

            else
            {
              (*v164)(&v2[v136], v177, v138);
            }

            swift_endAccess();
            swift_beginAccess();
            v146 = v167;
            v147 = v222;
            Array.subscript.getter();
            v148 = *&v146[*(v147 + 44)];

            v221(v146, v147);
            swift_endAccess();
            if (v148)
            {
              v28 = v201;
              v54 = v208;
              if (*(v148 + 32))
              {
              }

              else
              {
                if (one-time initialization token for perFrameCompletionClosures != -1)
                {
                  swift_once();
                }

                v149 = *(v148 + 16);
                v150 = *(v148 + 24);
                v151 = swift_allocObject();
                *(v151 + 16) = v149;
                *(v151 + 24) = v150;
                swift_beginAccess();
                rawValue = perFrameCompletionClosures._rawValue;

                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                perFrameCompletionClosures._rawValue = rawValue;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, rawValue[2] + 1, 1, rawValue);
                  perFrameCompletionClosures._rawValue = rawValue;
                }

                v155 = rawValue[2];
                v154 = rawValue[3];
                if (v155 >= v154 >> 1)
                {
                  rawValue = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v154 > 1), v155 + 1, 1, rawValue);
                }

                rawValue[2] = v155 + 1;
                v156 = &rawValue[2 * v155];
                v156[4] = partial apply for thunk for @callee_guaranteed () -> ();
                v156[5] = v151;
                perFrameCompletionClosures._rawValue = rawValue;
                swift_endAccess();
                *(v148 + 32) = 1;

                v138 = v203;
              }
            }

            else
            {
              v28 = v201;
              v54 = v208;
            }
          }

          else
          {
            v140 = v166;
            v138 = v203;
            v141 = v195;
            v195(v166, v177, v203);
            ComponentAnimatableData.scale(by:)(v123);
            v142 = v205;
            v143 = v206;
            v141(v206, &v2[v205], v138);
            v144 = ComponentAnimatableData.hasValues()();
            v145 = v188;
            v188(v143, v138);
            v54 = v208;
            swift_beginAccess();
            if (v144)
            {
              static ComponentAnimatableData.+= infix(_:_:)();
              swift_endAccess();
              v145(v140, v138);
            }

            else
            {
              v191(&v2[v142], v140, v138);
              swift_endAccess();
            }

            v48 = v204;
          }

          v227 = *&v2[v216];
          RandomAccessCollection<>.indices.getter();
          v223 = v224;
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSnySiGMd, &_sSnySiGMR);
          lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>();
          BidirectionalCollection.last.getter();
          if ((v226 & 1) == 0 && v48 == v225)
          {
            v157 = v168;
            (v195)();
            v218 = dispatch thunk of Entity.components.modify();
            v158 = v138;
            v159 = v215;
            v211 = Entity.ComponentSet.subscript.modify();
            v161 = (*(*(v159 - 8) + 48))(v160, 1, v159);
            v55 = v217;
            if (v161 == 1)
            {
              goto LABEL_60;
            }

            v221(v200, v222);
            ComponentAnimatableData.assignProperties(toComponent:)();
            v162 = v188;
            v188(v157, v158);
            (v211)(&v223, 0);
            (v218)(&v224, 0);
            v162(v177, v158);
            v197(v176, v219);
            goto LABEL_9;
          }

          v188(v177, v138);
          v197(v176, v219);
        }

        v56 = v200;
        v57 = v222;
        v55 = v217;
      }

      v221(v56, v57);
LABEL_9:
      v47 = v198;
      goto LABEL_10;
    }

    swift_beginAccess();
    v67 = v222;
    Array.subscript.getter();
    v68 = v206;
    v69 = v203;
    (*v207)(v206, &v64[*(v67 + 36)], v203);
    v221(v64, v67);
    swift_endAccess();
    v70 = v205;
    swift_beginAccess();
    v191(&v2[v70], v68, v69);
    swift_endAccess();
    if (__OFADD__(v202, 1))
    {
      goto LABEL_57;
    }

    v28 = v64;
    ++v202;
    v47 = v198;
    v54 = v208;
    v55 = v217;
LABEL_10:
    if (v47 == ++v48)
    {
      goto LABEL_2;
    }
  }

  __break(1u);
LABEL_57:
  __break(1u);
LABEL_58:
  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
}

uint64_t specialized Array.replaceSubrange<A>(_:with:)(uint64_t result, uint64_t a2, uint64_t (*a3)(void), uint64_t (*a4)(uint64_t, uint64_t, void))
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  v6 = *v4;
  v7 = *(*v4 + 16);
  if (v7 < a2)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v8 = result;
  if (__OFSUB__(a2, result))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v9 = result - a2;
  if (__OFSUB__(0, a2 - result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v7 + v9;
  if (__OFADD__(v7, v9))
  {
LABEL_14:
    __break(1u);
    return result;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *v4 = v6;
  if (!isUniquelyReferenced_nonNull_native || v10 > *(v6 + 24) >> 1)
  {
    v6 = a3();
    *v4 = v6;
  }

  result = a4(v8, a2, 0);
  *v4 = v6;
  return result;
}

uint64_t specialized ImplicitAnimationSystem.update(context:)(uint64_t a1)
{
  v2 = type metadata accessor for Entity.ComponentSet();
  v29 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation11QueryResultV8IteratorVy0A3Kit6EntityC_GMd, &_s17RealityFoundation11QueryResultV8IteratorVy0A3Kit6EntityC_GMR);
  v30 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - v6;
  updated = type metadata accessor for SystemUpdateCondition();
  v8 = *(updated - 8);
  MEMORY[0x28223BE20](updated);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s17RealityFoundation11QueryResultVy0A3Kit6EntityCGMd, &_s17RealityFoundation11QueryResultVy0A3Kit6EntityCGMR);
  v32 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - v12;
  if (one-time initialization token for query != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for EntityQuery();
  __swift_project_value_buffer(v14, static ImplicitAnimationSystem.query);
  static SystemUpdateCondition.rendering.getter();
  SceneUpdateContext.entities(matching:updatingSystemWhen:)();
  (*(v8 + 8))(v10, updated);
  updated = v11;
  v31 = v13;
  QueryResult.makeIterator()();
  QueryResult.Iterator.next()();
  if (v34)
  {
    v15 = (v29 + 8);
    do
    {
      v16 = dispatch thunk of Entity.components.getter();
      lazy protocol witness table accessor for type ImplicitAnimationComponent and conformance ImplicitAnimationComponent(v16, v17, v18);
      Entity.ComponentSet.subscript.getter();
      (*v15)(v4, v2);
      if (v34)
      {
        ImplicitAnimationComponent.update(context:)(a1, v34);
      }

      QueryResult.Iterator.next()();
    }

    while (v34);
  }

  (*(v30 + 8))(v7, v5);
  if (one-time initialization token for perFrameCompletionClosures != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  rawValue = perFrameCompletionClosures._rawValue;
  v20 = *(perFrameCompletionClosures._rawValue + 2);
  if (v20)
  {

    v21 = rawValue + 40;
    do
    {
      v22 = *(v21 - 1);

      v22(v23);

      v21 += 16;
      --v20;
    }

    while (v20);
  }

  swift_beginAccess();
  if (swift_isUniquelyReferenced_nonNull_native())
  {
    specialized Array.replaceSubrange<A>(_:with:)(0, *(perFrameCompletionClosures._rawValue + 2), specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:));
  }

  else
  {
    perFrameCompletionClosures._rawValue = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCyyScMYcc_Tt1g5(0, *(perFrameCompletionClosures._rawValue + 3) >> 1);
  }

  v25 = v32;
  v24 = updated;
  v26 = v31;
  swift_endAccess();
  return (*(v25 + 8))(v26, v24);
}

uint64_t specialized ImplicitAnimationState.init(oldValue:newValue:animation:completion:context:)(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t, uint64_t), uint64_t a3, uint64_t a4, uint64_t a5)
{
  v99 = a5;
  v85 = a4;
  v84 = a3;
  v91 = a2;
  v89 = a1;
  v6 = *v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16AnimationContextVySfGSgMd, &_s7SwiftUI16AnimationContextVySfGSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v70 = &v69 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14AnimationStateVySfGMd, &_s7SwiftUI14AnimationStateVySfGMR);
  MEMORY[0x28223BE20](v9 - 8);
  v69 = &v69 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16AnimationContextVySfGMd, &_s7SwiftUI16AnimationContextVySfGMR);
  v86 = *(v11 - 8);
  v87 = v11;
  MEMORY[0x28223BE20](v11);
  v88 = &v69 - v12;
  v13 = v6[10];
  v14 = v6[11];
  v93 = type metadata accessor for ImplicitAnimationState.State(0, v13, v14, v15);
  v83 = *(v93 - 8);
  v16 = MEMORY[0x28223BE20](v93);
  v78 = &v69 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v79 = &v69 - v19;
  MEMORY[0x28223BE20](v18);
  v98 = &v69 - v20;
  v80 = *(v14 + 8);
  v21 = type metadata accessor for ComponentAnimatableData();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v81 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = MEMORY[0x28223BE20](v23);
  v27 = &v69 - v26;
  MEMORY[0x28223BE20](v25);
  v29 = &v69 - v28;
  v96 = v13;
  v97 = v14;
  v31 = type metadata accessor for ImplicitAnimationState.AnimationEntry(0, v13, v14, v30);
  v95 = *(v31 - 8);
  v32 = MEMORY[0x28223BE20](v31);
  v74 = &v69 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v32);
  v94 = &v69 - v34;
  v35 = v6[13];
  v36 = static Array._allocateUninitialized(_:)();
  v73 = v35;
  *(v5 + v35) = v36;
  v37 = *(*v5 + 112);
  v38 = type metadata accessor for Date();
  v39 = *(v38 - 8);
  v40 = *(v39 + 56);
  v92 = v37;
  v76 = v5;
  v41 = (v5 + v37);
  v42 = v39 + 56;
  v40(v41, 1, 2, v38);
  v82 = v22;
  v43 = *(v22 + 16);
  v71 = v29;
  v43(v29, v89, v21);
  v72 = v27;
  v89 = v21;
  v44 = v21;
  v45 = v99;
  v43(v27, v91, v44);
  v91 = v40;
  v40(v98, 1, 2, v38);
  v46 = v87;
  v47 = v86;
  v48 = *(v86 + 48);
  v49 = v48(v45, 1, v87);
  v90 = v31;
  v77 = v38;
  v75 = v42;
  if (v49 == 1)
  {
    AnimationState.init()();
    v50 = v88;
    AnimationContext.init(state:environment:isLogicallyComplete:)();
    v51 = v50;
  }

  else
  {
    v52 = v88;
    v53 = v45;
    v54 = v70;
    outlined init with copy of AnimationContext<Float>?(v53, v70);
    result = v48(v54, 1, v46);
    if (result == 1)
    {
      __break(1u);
      return result;
    }

    (*(v47 + 32))(v52, v54, v46);
    v31 = v90;
    v51 = v52;
  }

  v56 = v94;
  v57 = v96;
  ImplicitAnimationState.AnimationEntry.init(oldValue:newValue:animation:completion:animationState:floatContext:)(v71, v72, v84, v85, v98, v51, v96, v97, v94);
  (*(v95 + 16))(v74, v56, v31);
  v58 = v76;
  swift_beginAccess();
  type metadata accessor for Array();

  Array.append(_:)();
  swift_endAccess();
  v59 = v92;
  swift_beginAccess();
  v60 = v83;
  v61 = v79;
  v62 = v93;
  (*(v83 + 16))(v79, v58 + v59, v93);
  v63 = v78;
  v64 = v77;
  v91(v78, 2, 2, v77);
  v65 = static ImplicitAnimationState.State.== infix(_:_:)(v61, v63, v57, v97);
  v66 = *(v60 + 8);
  v66(v63, v62);
  v66(v61, v62);
  if (v65)
  {
    v91(v61, 1, 2, v64);
    v67 = v92;
    swift_beginAccess();
    (*(v60 + 40))(v58 + v67, v61, v93);
    swift_endAccess();
  }

  v68 = v81;
  MEMORY[0x23EEADD60](v96, v80);
  (*(v95 + 8))(v94, v90);
  outlined destroy of PerspectiveCameraComponent?(v99, &_s7SwiftUI16AnimationContextVySfGSgMd, &_s7SwiftUI16AnimationContextVySfGSgMR);
  (*(v82 + 32))(v58 + *(*v58 + 96), v68, v89);
  return v58;
}

uint64_t specialized ImplicitAnimationState.shouldMerge(from:to:animation:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v39 = a2;
  v40 = a1;
  v6 = *v4;
  v7 = *(*v4 + 80);
  v8 = *(v6 + 88);
  v9 = type metadata accessor for ImplicitAnimationState.AnimationEntry(255, v7, v8, a4);
  v10 = type metadata accessor for Optional();
  v11 = *(v10 - 8);
  v37 = v10;
  v38 = v11;
  v12 = MEMORY[0x28223BE20](v10);
  v43 = &v37 - v13;
  v41 = v9;
  v42 = *(v9 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v37 - v14;
  v17 = type metadata accessor for ImplicitAnimationState.State(0, v7, v8, v16);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v37 - v19;
  v21 = type metadata accessor for Date();
  v22 = *(v21 - 8);
  v23 = MEMORY[0x28223BE20](v21);
  v25 = &v37 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v27 = &v37 - v26;
  v28 = *(v6 + 112);
  swift_beginAccess();
  (*(v18 + 16))(v20, v5 + v28, v17);
  if ((*(v22 + 48))(v20, 2, v21))
  {
    (*(v18 + 8))(v20, v17);
  }

  else
  {
    v29 = v15;
    (*(v22 + 32))(v27, v20, v21);
    Date.init()();
    Date.timeIntervalSince(_:)();
    v30 = *(v22 + 8);
    v30(v25, v21);
    v31 = *(*v5 + 104);
    swift_beginAccess();
    v44 = *(v5 + v31);
    v32 = v41;
    type metadata accessor for Array();

    swift_getWitnessTable();
    v33 = v43;
    BidirectionalCollection.last.getter();
    v34 = v42;
    if ((*(v42 + 48))(v33, 1, v32) != 1)
    {
      (*(v34 + 32))(v29, v43, v32);

      LODWORD(v44) = 1065353216;
      v35 = Animation.shouldMerge<A>(previous:value:time:context:)();
      v30(v27, v21);
      (*(v34 + 8))(v29, v32);
      return v35 & 1;
    }

    v30(v27, v21);
    (*(v38 + 8))(v43, v37);
  }

  v35 = 0;
  return v35 & 1;
}

uint64_t specialized ImplicitAnimationComponent.mutation<A>(entity:component:from:to:animation:completion:)(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t, uint64_t), void (*a3)(char *, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v42 = a2;
  v43 = a3;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16AnimationContextVySfGSgMd, &_s7SwiftUI16AnimationContextVySfGSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v36 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI14AnimationStateVySfGMd, &_s7SwiftUI14AnimationStateVySfGMR);
  MEMORY[0x28223BE20](v16 - 8);
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16AnimationContextVySfGMd, &_s7SwiftUI16AnimationContextVySfGMR);
  v17 = *(v41 - 8);
  MEMORY[0x28223BE20](v41);
  v39 = &v36 - v18;
  v40 = v7;
  v19 = *v7;
  v20 = *(v19 + 16);
  swift_retain_n();
  if (v20 && (v22 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a6, a7), (v23 & 1) != 0) && (outlined init with copy of Cancellable(*(v19 + 56) + 40 * v22, v45), __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI14AnimationState_pMd, &_s19_RealityKit_SwiftUI14AnimationState_pMR), v25 = type metadata accessor for ImplicitAnimationState(0, a6, a7, v24), (swift_dynamicCast() & 1) != 0))
  {
    v36 = a7;
    v37 = v25;
    v26 = v44;
    AnimationState.init()();
    v27 = v39;
    AnimationContext.init(state:environment:isLogicallyComplete:)();
    v38 = v26;
    if (specialized ImplicitAnimationState.shouldMerge(from:to:animation:context:)(a4, v27, v28, v29))
    {
      v30 = v41;
      (*(v17 + 56))(v15, 1, 1, v41);
      v31 = v37;
      swift_allocObject();

      v32 = specialized ImplicitAnimationState.init(oldValue:newValue:animation:completion:context:)(v42, v43, a4, a5, v15);

      v46 = v31;
      v47 = &protocol witness table for ImplicitAnimationState<A>;
      v45[0] = v32;

      specialized Dictionary.subscript.setter(v45, a1, a6, v36);

      return (*(v17 + 8))(v39, v30);
    }

    else
    {

      ImplicitAnimationState.addAnimation(oldValue:newValue:animation:completion:)(v42, v43, a4, a5);

      return (*(v17 + 8))(v27, v41);
    }
  }

  else
  {
    v34 = type metadata accessor for ImplicitAnimationState(0, a6, a7, v21);
    (*(v17 + 56))(v15, 1, 1, v41);
    swift_allocObject();

    v35 = specialized ImplicitAnimationState.init(oldValue:newValue:animation:completion:context:)(v42, v43, a4, a5, v15);

    v46 = v34;
    v47 = &protocol witness table for ImplicitAnimationState<A>;
    v45[0] = v35;

    specialized Dictionary.subscript.setter(v45, a1, a6, a7);
  }
}

uint64_t specialized SwiftUIImplicitAnimation.setComponent<A>(entity:component:from:to:)(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t, uint64_t), void (*a3)(char *, uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v19 = a4;
  v20 = a5;
  v9 = type metadata accessor for Entity.ComponentSet();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = dispatch thunk of Entity.components.getter();
  lazy protocol witness table accessor for type ImplicitAnimationComponent and conformance ImplicitAnimationComponent(v13, v14, v15);
  Entity.ComponentSet.subscript.getter();
  (*(v10 + 8))(v12, v9);
  v16 = MEMORY[0x277D84F98];
  if (v21[0])
  {
    v16 = v21[0];
  }

  v22 = v16;
  specialized ImplicitAnimationComponent.mutation<A>(entity:component:from:to:animation:completion:)(a1, a2, a3, *(v5 + 16), *(v5 + 24), v19, v20);
  v21[4] = v22;
  v17 = dispatch thunk of Entity.components.modify();
  Entity.ComponentSet.subscript.setter();
  return v17(v21, 0);
}

unint64_t lazy protocol witness table accessor for type ImplicitAnimationComponent and conformance ImplicitAnimationComponent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type ImplicitAnimationComponent and conformance ImplicitAnimationComponent;
  if (!lazy protocol witness table cache variable for type ImplicitAnimationComponent and conformance ImplicitAnimationComponent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImplicitAnimationComponent and conformance ImplicitAnimationComponent);
  }

  return result;
}

uint64_t outlined init with copy of AnimationContext<Float>?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SwiftUI16AnimationContextVySfGSgMd, &_s7SwiftUI16AnimationContextVySfGSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type Range<Int> and conformance <> Range<A>()
{
  result = lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>;
  if (!lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSnySiGMd, &_sSnySiGMR);
    lazy protocol witness table accessor for type Int and conformance Int(v1, v2, v3);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Range<Int> and conformance <> Range<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Int and conformance Int(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

unint64_t specialized _ArrayBufferProtocol.replaceSubrange<A>(_:with:elementsOf:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5)
{
  v9 = *v5;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v12 = *(*(result - 8) + 72);
  v13 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_19;
  }

  v11 = *(*(result - 8) + 80);
  v14 = v9 + ((v11 + 32) & ~v11);
  v15 = v14 + v12 * a1;
  result = swift_arrayDestroy();
  v16 = a3 - v13;
  if (__OFSUB__(a3, v13))
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  v17 = v12 * a3;
  if (v16)
  {
    v18 = *(v9 + 16);
    if (!__OFSUB__(v18, a2))
    {
      result = v15 + v17;
      v19 = v14 + v12 * a2;
      if (v15 + v17 < v19 || result >= v19 + (v18 - a2) * v12)
      {
        result = swift_arrayInitWithTakeFrontToBack();
      }

      else if (result != v19)
      {
        result = swift_arrayInitWithTakeBackToFront();
      }

      v21 = *(v9 + 16);
      v22 = __OFADD__(v21, v16);
      v23 = v21 + v16;
      if (!v22)
      {
        *(v9 + 16) = v23;
        goto LABEL_15;
      }

LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

LABEL_15:
  if (a3 >= 1 && v17 > 0)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SwiftUIImplicitAnimation and conformance SwiftUIImplicitAnimation(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t lazy protocol witness table accessor for type ImplicitAnimationComponent.Key and conformance ImplicitAnimationComponent.Key(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type ImplicitAnimationComponent.Key and conformance ImplicitAnimationComponent.Key;
  if (!lazy protocol witness table cache variable for type ImplicitAnimationComponent.Key and conformance ImplicitAnimationComponent.Key)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImplicitAnimationComponent.Key and conformance ImplicitAnimationComponent.Key);
  }

  return result;
}

void *specialized CircularBuffer.init(capacity:initialValue:)(uint64_t a1, float a2, double a3)
{
  *(v3 + 56) = 0;
  *(v3 + 16) = a2;
  *(v3 + 24) = a3;
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 32) = a1;
  if (a1 < 0)
  {
    __break(1u);
    __break(1u);
    __break(1u);
    swift_once();
    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, logger);
    v10 = v4;
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      *v13 = 138543362;
      v15 = v4;
      v16 = _swift_stdlib_bridgeErrorToNSError();
      *(v13 + 4) = v16;
      *v14 = v16;
      _os_log_impl(&dword_23B824000, v11, v12, "Can't initialize array! %{public}@", v13, 0xCu);
      outlined destroy of NSObject?(v14);
      MEMORY[0x23EEB0B70](v14, -1, -1);
      MEMORY[0x23EEB0B70](v13, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  v5 = v3;

  if (a1)
  {
    v7 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v7 + 16) = a1;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v18 = 0;
  v17[0] = v7 + 32;
  v17[1] = a1;
  result = partial apply for specialized implicit closure #2 in implicit closure #1 in CircularBuffer.init(capacity:initialValue:)(v17, &v18);
  if (v18 > a1)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    __break(1u);
    goto LABEL_18;
  }

  if (v17[0])
  {
    if (v7 + 32 != v17[0])
    {
      goto LABEL_17;
    }

    *(v7 + 16) = v18;

    swift_beginAccess();
    *(v3 + 56) = v7;

    return v5;
  }

LABEL_18:
  __break(1u);
  return result;
}

__n128 *specialized CircularBuffer.init(capacity:initialValue:)(int64_t a1, double a2, __n128 a3, __n128 a4, float a5)
{
  v5[6].n128_u64[0] = 0;
  v5[1].n128_f64[0] = a2;
  v5[2] = a3;
  v5[3] = a4;
  v5[4].n128_f32[0] = a5;
  v5[5].n128_u64[0] = 0;
  v5[5].n128_u64[1] = 0;
  v5[4].n128_u64[1] = a1;
  if (a1 < 0)
  {
    __break(1u);
    __break(1u);
    __break(1u);
    swift_once();
    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, logger);
    v12 = v6;
    v13 = Logger.logObject.getter();
    v14 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v13, v14))
    {
      v15 = swift_slowAlloc();
      v16 = swift_slowAlloc();
      *v15 = 138543362;
      v17 = v6;
      v18 = _swift_stdlib_bridgeErrorToNSError();
      *(v15 + 4) = v18;
      *v16 = v18;
      _os_log_impl(&dword_23B824000, v13, v14, "Can't initialize array! %{public}@", v15, 0xCu);
      outlined destroy of NSObject?(v16);
      MEMORY[0x23EEB0B70](v16, -1, -1);
      MEMORY[0x23EEB0B70](v15, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  v7 = v5;

  if (a1)
  {
    v9 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v9 + 16) = a1;
  }

  else
  {
    v9 = MEMORY[0x277D84F90];
  }

  v20 = 0;
  v19[0] = v9 + 32;
  v19[1] = a1;
  result = partial apply for specialized implicit closure #2 in implicit closure #1 in CircularBuffer.init(capacity:initialValue:)(v19, &v20);
  if (v20 > a1)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    __break(1u);
    goto LABEL_18;
  }

  if (v19[0])
  {
    if (v9 + 32 != v19[0])
    {
      goto LABEL_17;
    }

    *(v9 + 16) = v20;

    swift_beginAccess();
    v5[6].n128_u64[0] = v9;

    return v7;
  }

LABEL_18:
  __break(1u);
  return result;
}

__n128 *specialized CircularBuffer.init(capacity:initialValue:)(int64_t a1, double a2, __n128 a3, __n128 a4)
{
  v4[5].n128_u64[1] = 0;
  v4[1].n128_f64[0] = a2;
  v4[2] = a3;
  v4[3] = a4;
  v4[4].n128_u64[1] = 0;
  v4[5].n128_u64[0] = 0;
  v4[4].n128_u64[0] = a1;
  if (a1 < 0)
  {
    __break(1u);
    __break(1u);
    __break(1u);
    swift_once();
    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, logger);
    v11 = v5;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      *v14 = 138543362;
      v16 = v5;
      v17 = _swift_stdlib_bridgeErrorToNSError();
      *(v14 + 4) = v17;
      *v15 = v17;
      _os_log_impl(&dword_23B824000, v12, v13, "Can't initialize array! %{public}@", v14, 0xCu);
      outlined destroy of NSObject?(v15);
      MEMORY[0x23EEB0B70](v15, -1, -1);
      MEMORY[0x23EEB0B70](v14, -1, -1);
    }

    else
    {
    }

    return 0;
  }

  v6 = v4;

  if (a1)
  {
    v8 = static Array._allocateBufferUninitialized(minimumCapacity:)();
    *(v8 + 16) = a1;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v19 = 0;
  v18[0] = v8 + 32;
  v18[1] = a1;
  result = partial apply for specialized implicit closure #2 in implicit closure #1 in CircularBuffer.init(capacity:initialValue:)(v18, &v19);
  if (v19 > a1)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    __break(1u);
    goto LABEL_18;
  }

  if (v18[0])
  {
    if (v8 + 32 != v18[0])
    {
      goto LABEL_17;
    }

    *(v8 + 16) = v19;

    swift_beginAccess();
    v4[5].n128_u64[1] = v8;

    return v6;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *specialized implicit closure #2 in implicit closure #1 in CircularBuffer.init(capacity:initialValue:)(void *result, void *a2, uint64_t a3)
{
  v3 = *(a3 + 72);
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v3)
    {
      v4 = *(a3 + 16);
      v5 = *(a3 + 32);
      v6 = *(a3 + 48);
      v7 = *(a3 + 64);
      v8 = *result + 32;
      v9 = *(a3 + 72);
      do
      {
        *(v8 - 32) = v4;
        *(v8 - 16) = v5;
        *v8 = v6;
        *(v8 + 16) = v7;
        v8 += 64;
        --v9;
      }

      while (v9);
    }

    *a2 = v3;
  }

  return result;
}

void specialized CircularBuffer.at(_:)(uint64_t a1)
{
  if ((a1 & 0x8000000000000000) == 0 && v1[5] > a1)
  {
    v2 = v1[6];
    v3 = __OFSUB__(v2, a1);
    v4 = v2 - a1;
    if (v3)
    {
      __break(1u);
    }

    else
    {
      v5 = v1[4];
      v6 = v4 + v5;
      if (!__OFADD__(v4, v5))
      {
        if (v5)
        {
          if (v5 == -1 && v6 == 0x8000000000000000)
          {
            goto LABEL_18;
          }

          swift_beginAccess();
          v7 = v1[7];
          if (!v7)
          {
LABEL_19:
            __break(1u);
            return;
          }

          if (((v6 % v5) & 0x8000000000000000) == 0)
          {
            if ((v6 % v5) < *(v7 + 16))
            {
              return;
            }

            goto LABEL_17;
          }

LABEL_16:
          __break(1u);
LABEL_17:
          __break(1u);
LABEL_18:
          __break(1u);
          goto LABEL_19;
        }

LABEL_15:
        __break(1u);
        goto LABEL_16;
      }
    }

    __break(1u);
    goto LABEL_15;
  }
}

void specialized CircularBuffer.at(_:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  if (a1 < 0 || v2[9] <= a1)
  {
    v13 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v11 = 1;
    goto LABEL_13;
  }

  v3 = v2[10];
  v4 = __OFSUB__(v3, a1);
  v5 = v3 - a1;
  if (v4)
  {
    __break(1u);
    goto LABEL_15;
  }

  v6 = v2[8];
  v7 = v5 + v6;
  if (__OFADD__(v5, v6))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v6)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = a2;
  if (v6 == -1 && v7 == 0x8000000000000000)
  {
    goto LABEL_19;
  }

  swift_beginAccess();
  v9 = v2[11];
  if (v9)
  {
    v10 = v7 % v6;
    if (((v7 % v6) & 0x8000000000000000) == 0)
    {
      if (v10 < *(v9 + 16))
      {
        a2 = v8;
        v11 = 0;
        v12 = (v9 + 48 * v10);
        v13 = v12[4];
        v14 = v12[6];
        v15 = v12[7];
        v16 = v12[8];
        v17 = v12[9];
LABEL_13:
        *a2 = v13;
        *(a2 + 8) = 0;
        *(a2 + 16) = v14;
        *(a2 + 24) = v15;
        *(a2 + 32) = v16;
        *(a2 + 40) = v17;
        *(a2 + 48) = v11;
        return;
      }

      goto LABEL_18;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  __break(1u);
}

{
  if (a1 < 0 || v2[10] <= a1)
  {
    v13 = 0;
    v16 = 0;
    v11 = 1;
    v14 = 0uLL;
    v15 = 0uLL;
    goto LABEL_13;
  }

  v3 = v2[11];
  v4 = __OFSUB__(v3, a1);
  v5 = v3 - a1;
  if (v4)
  {
    __break(1u);
    goto LABEL_15;
  }

  v6 = v2[9];
  v7 = v5 + v6;
  if (__OFADD__(v5, v6))
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (!v6)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v8 = a2;
  if (v6 == -1 && v7 == 0x8000000000000000)
  {
    goto LABEL_19;
  }

  swift_beginAccess();
  v9 = v2[12];
  if (v9)
  {
    v10 = v7 % v6;
    if (((v7 % v6) & 0x8000000000000000) == 0)
    {
      if (v10 < *(v9 + 16))
      {
        a2 = v8;
        v11 = 0;
        v12 = v9 + (v10 << 6);
        v13 = *(v12 + 32);
        v14 = *(v12 + 48);
        v15 = *(v12 + 64);
        v16 = *(v12 + 80);
LABEL_13:
        *a2 = v13;
        *(a2 + 8) = 0;
        *(a2 + 16) = v14;
        *(a2 + 32) = v15;
        *(a2 + 48) = v16;
        *(a2 + 52) = v11;
        return;
      }

      goto LABEL_18;
    }

LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
  }

  __break(1u);
}

void specialized CircularBuffer.pushNew(_:)(uint64_t a1@<X8>, double a2@<D0>, __n128 a3@<Q1>, __n128 a4@<Q2>, float a5@<S3>)
{
  v7 = v5[11];
  v8 = __OFADD__(v7, 1);
  v9 = v7 + 1;
  if (v8)
  {
    __break(1u);
    goto LABEL_23;
  }

  v10 = v5[9];
  if (!v10)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v9 == 0x8000000000000000 && v10 == -1)
  {
    goto LABEL_27;
  }

  v14 = v9 % v10;
  v5[11] = v9 % v10;
  if (v5[10] == v10)
  {
    swift_beginAccess();
    v15 = v5[12];
    if (!v15)
    {
LABEL_31:
      __break(1u);
      return;
    }

    if ((v14 & 0x8000000000000000) != 0)
    {
      goto LABEL_28;
    }

    if (v14 >= *(v15 + 16))
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v16 = 0;
    v17 = v15 + (v14 << 6);
    v18 = *(v17 + 32);
    v25 = *(v17 + 64);
    v26 = *(v17 + 48);
    v19 = *(v17 + 80);
  }

  else
  {
    v18 = 0;
    v19 = 0;
    v16 = 1;
    v25 = 0u;
    v26 = 0u;
  }

  swift_beginAccess();
  v20 = v5[12];
  if (!v20)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[12] = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v20);
  }

  if ((v14 & 0x8000000000000000) != 0)
  {
    goto LABEL_24;
  }

  if (v14 >= *(v20 + 2))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v22 = &v20[64 * v14];
  v22[2].n128_f64[0] = a2;
  v22[3] = a3;
  v22[4] = a4;
  v22[5].n128_f32[0] = a5;
  v5[12] = v20;
  swift_endAccess();
  v23 = v5[10];
  v8 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v8)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v10 < v24)
  {
    v24 = v10;
  }

  v5[10] = v24;
  *a1 = v18;
  *(a1 + 8) = 0;
  *(a1 + 16) = v26;
  *(a1 + 32) = v25;
  *(a1 + 48) = v19;
  *(a1 + 52) = v16;
}

void specialized CircularBuffer.pushNew(_:)(float a1, double a2)
{
  v3 = v2[6];
  v4 = __OFADD__(v3, 1);
  v5 = v3 + 1;
  if (v4)
  {
    __break(1u);
    goto LABEL_21;
  }

  v6 = v2[4];
  if (!v6)
  {
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v5 == 0x8000000000000000 && v6 == -1)
  {
    goto LABEL_25;
  }

  v10 = v5 % v6;
  v2[6] = v5 % v6;
  if (v2[5] == v6)
  {
    swift_beginAccess();
    v11 = v2[7];
    if (!v11)
    {
LABEL_29:
      __break(1u);
      return;
    }

    if ((v10 & 0x8000000000000000) != 0)
    {
      goto LABEL_26;
    }

    if (v10 >= *(v11 + 16))
    {
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }
  }

  swift_beginAccess();
  v12 = v2[7];
  if (!v12)
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2[7] = v12;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v12 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v12);
  }

  if ((v10 & 0x8000000000000000) != 0)
  {
    goto LABEL_22;
  }

  if (v10 >= *(v12 + 2))
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v14 = &v12[16 * v10];
  *(v14 + 8) = a1;
  *(v14 + 5) = a2;
  v2[7] = v12;
  v15 = v2[5];
  v4 = __OFADD__(v15, 1);
  v16 = v15 + 1;
  if (v4)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v6 < v16)
  {
    v16 = v6;
  }

  v2[5] = v16;
}

void specialized CircularBuffer.pushNew(_:)(uint64_t a1@<X8>, double a2@<D0>, __n128 a3@<Q1>, __n128 a4@<Q2>)
{
  v6 = v4[10];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
    goto LABEL_23;
  }

  v9 = v4[8];
  if (!v9)
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 0x8000000000000000 && v9 == -1)
  {
    goto LABEL_27;
  }

  v12 = v8 % v9;
  v4[10] = v8 % v9;
  v13 = v4[9];
  if (v13 == v9)
  {
    swift_beginAccess();
    v18 = v4[11];
    if (!v18)
    {
LABEL_31:
      __break(1u);
      return;
    }

    if ((v12 & 0x8000000000000000) != 0)
    {
      goto LABEL_28;
    }

    if (v12 >= *(v18 + 16))
    {
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v19 = (v18 + 48 * v12);
    v25 = v19[4];
    v14 = v19[6];
    v15 = v19[7];
    v16 = v19[8];
    v17 = v19[9];
  }

  else
  {
    v25 = 0;
    v14 = 0;
    v15 = 0;
    v16 = 0;
    v17 = 0;
  }

  swift_beginAccess();
  v20 = v4[11];
  if (!v20)
  {
LABEL_30:
    __break(1u);
    goto LABEL_31;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4[11] = v20;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v20 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v20);
  }

  if ((v12 & 0x8000000000000000) != 0)
  {
    goto LABEL_24;
  }

  if (v12 >= *(v20 + 2))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v22 = &v20[48 * v12];
  v22[2].n128_f64[0] = a2;
  v22[3] = a3;
  v22[4] = a4;
  v4[11] = v20;
  swift_endAccess();
  v23 = v4[9];
  v7 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v7)
  {
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v9 < v24)
  {
    v24 = v9;
  }

  v4[9] = v24;
  *a1 = v25;
  *(a1 + 8) = 0;
  *(a1 + 16) = v14;
  *(a1 + 24) = v15;
  *(a1 + 32) = v16;
  *(a1 + 40) = v17;
  *(a1 + 48) = v13 != v9;
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance DeviceMotionEstimator.ActiveComponents(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

void *protocol witness for SetAlgebra.remove(_:) in conformance DeviceMotionEstimator.ActiveComponents@<X0>(void *result@<X0>, uint64_t a2@<X8>)
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

uint64_t *protocol witness for SetAlgebra.update(with:) in conformance DeviceMotionEstimator.ActiveComponents@<X0>(uint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 |= *result;
  v5 = v4 & v3;
  *a2 = v5;
  *(a2 + 8) = v5 == 0;
  return result;
}

uint64_t protocol witness for ExpressibleByArrayLiteral.init(arrayLiteral:) in conformance DeviceMotionEstimator.ActiveComponents@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = specialized SetAlgebra<>.init(arrayLiteral:)(a1);

  *a2 = v3;
  return result;
}

void *DeviceMotionEstimator.init(desc:)(float32x4_t *a1)
{
  *(v2 + 120) = 0u;
  *(v2 + 104) = 0u;
  *(v2 + 88) = 0u;
  *(v2 + 72) = 0u;
  *(v2 + 136) = 1065353216;
  *(v2 + 140) = 0;
  v4 = a1[1];
  v5 = a1[2];
  *(v2 + 16) = *a1;
  *(v2 + 32) = v4;
  *(v2 + 48) = v5;
  v6 = a1->i64[0];
  v7 = a1->i32[2];
  v8 = a1[2].f32[2];
  v4.i64[0] = a1->i64[0];
  v4.i64[1] = __PAIR64__(LODWORD(v8), v7);
  *(v2 + 144) = 981668463;
  if ((vmaxv_u16(vmovn_s32(vmvnq_s8(vcgezq_f32(v4)))) & 1) != 0 || (v3 = a1, v9 = a1[2].f32[3], v8 >= v9) || v9 <= 0.0 || a1[1].i64[0] < 1 || a1[2].i64[0] < 1)
  {
    __break(1u);
  }

  else
  {
    v1 = v2;
    v40 = v6;
    v41 = *&v7;
    if (one-time initialization token for logger == -1)
    {
      goto LABEL_7;
    }
  }

  swift_once();
LABEL_7:
  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, logger);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v43 = v14;
    *v13 = 136446210;
    v15 = v3[1];
    v42[0] = *v3;
    v42[1] = v15;
    v42[2] = v3[2];
    v16 = String.init<A>(describing:)();
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v43);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_23B824000, v11, v12, "Creating DeviceMotionEstimator with desc=%{public}s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x23EEB0B70](v14, -1, -1);
    MEMORY[0x23EEB0B70](v13, -1, -1);
  }

  Transform.init()();
  v36 = v20;
  v38 = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI14CircularBufferCyAA21DeviceMotionEstimatorC11FrameRecord33_1B4D605E33761C04C87C5DD249421141LLVGMd, &_s19_RealityKit_SwiftUI14CircularBufferCyAA21DeviceMotionEstimatorC11FrameRecord33_1B4D605E33761C04C87C5DD249421141LLVGMR);
  swift_allocObject();
  v1[10] = specialized CircularBuffer.init(capacity:initialValue:)(4, 0.0, v36, v38);

  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of DeviceMotionEstimator.init(desc:));
  v39 = v21;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of DeviceMotionEstimator.init(desc:));
  v37 = v22;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI14CircularBufferCyAA21DeviceMotionEstimatorC16DerivativeRecord33_1B4D605E33761C04C87C5DD249421141LLVGMd, &_s19_RealityKit_SwiftUI14CircularBufferCyAA21DeviceMotionEstimatorC16DerivativeRecord33_1B4D605E33761C04C87C5DD249421141LLVGMR);
  swift_allocObject();
  v1[11] = specialized CircularBuffer.init(capacity:initialValue:)(4, 0.0, v39, v37, 0.0);

  if (*&v40 <= 0.0)
  {
    v23 = 4;
    if (*(&v40 + 1) > 0.0)
    {
      v23 = 6;
    }

    if (v41 <= 0.0)
    {
      v23 = 2 * (*(&v40 + 1) > 0.0);
    }
  }

  else
  {
    v23 = 5;
    if (*(&v40 + 1) > 0.0)
    {
      v23 = 7;
    }

    v24 = 3;
    if (*(&v40 + 1) <= 0.0)
    {
      v24 = 1;
    }

    if (v41 <= 0.0)
    {
      v23 = v24;
    }
  }

  v1[8] = v23;

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    *&v42[0] = v28;
    *v27 = 136446210;
    v43 = v1[8];
    v29 = String.init<A>(describing:)();
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v29, v30, v42);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_23B824000, v25, v26, "Using activeComponents = %{public}s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v28);
    MEMORY[0x23EEB0B70](v28, -1, -1);
    MEMORY[0x23EEB0B70](v27, -1, -1);
  }

  if (!DeviceMotionEstimator.makeCircularBuffersAsNeeded()())
  {
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v32, v33))
    {
      v34 = swift_slowAlloc();
      *v34 = 0;
      _os_log_impl(&dword_23B824000, v32, v33, "Can't create all the CircularBuffer's!  Are we low on memory?", v34, 2u);
      MEMORY[0x23EEB0B70](v34, -1, -1);
    }

    return 0;
  }

  return v1;
}

Swift::Void __swiftcall DeviceMotionEstimator.reset()()
{
  v1 = *(v0 + 80);
  if (!v1)
  {
    __break(1u);
    goto LABEL_14;
  }

  *(v1 + 72) = 0;
  *(v1 + 80) = 0;
  v2 = *(v0 + 88);
  if (!v2)
  {
LABEL_14:
    __break(1u);
    return;
  }

  *(v2 + 80) = 0;
  *(v2 + 88) = 0;
  v3 = *(v0 + 104);
  if (v3)
  {
    *(v3 + 40) = 0;
    *(v3 + 48) = 0;
  }

  v4 = *(v0 + 96);
  if (v4)
  {
    *(v4 + 40) = 0;
    *(v4 + 48) = 0;
  }

  v5 = *(v0 + 112);
  if (v5)
  {
    *(v5 + 40) = 0;
    *(v5 + 48) = 0;
  }

  *(v0 + 132) = 0;
  v6 = *(v0 + 56);
  v7 = 1.0;
  if (v6 <= 0.0)
  {
    v8 = *(v0 + 60);
    v7 = 0.0;
    if (v8 >= 0.0)
    {
      v7 = 1.0 - ((0.0 - v6) / (v8 - v6));
    }
  }

  *(v0 + 136) = v7;
}

BOOL DeviceMotionEstimator.makeCircularBuffersAsNeeded()()
{
  v1 = v0;
  v2 = v0[8];
  if ((v2 & 2) != 0)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, logger);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_23B824000, v4, v5, "Creating linearSpeed buffer.", v6, 2u);
      MEMORY[0x23EEB0B70](v6, -1, -1);
    }

    v7 = v1[4];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI14CircularBufferCyAA21DeviceMotionEstimatorC11SpeedSample33_1B4D605E33761C04C87C5DD249421141LLVGMd, &_s19_RealityKit_SwiftUI14CircularBufferCyAA21DeviceMotionEstimatorC11SpeedSample33_1B4D605E33761C04C87C5DD249421141LLVGMR);
    swift_allocObject();
    v1[12] = specialized CircularBuffer.init(capacity:initialValue:)(v7, 0.0, 0.0);

    if (!v1[12])
    {
      return 0;
    }
  }

  if (v2)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, logger);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_23B824000, v9, v10, "Creating angularSpeed buffer.", v11, 2u);
      MEMORY[0x23EEB0B70](v11, -1, -1);
    }

    v12 = v1[4];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI14CircularBufferCyAA21DeviceMotionEstimatorC11SpeedSample33_1B4D605E33761C04C87C5DD249421141LLVGMd, &_s19_RealityKit_SwiftUI14CircularBufferCyAA21DeviceMotionEstimatorC11SpeedSample33_1B4D605E33761C04C87C5DD249421141LLVGMR);
    swift_allocObject();
    v1[13] = specialized CircularBuffer.init(capacity:initialValue:)(v12, 0.0, 0.0);

    if (!v1[13])
    {
      return 0;
    }
  }

  if ((v2 & 4) == 0)
  {
    return 1;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, logger);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_23B824000, v14, v15, "Creating orbitalSpeed buffer.", v16, 2u);
    MEMORY[0x23EEB0B70](v16, -1, -1);
  }

  v17 = v1[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI14CircularBufferCyAA21DeviceMotionEstimatorC11SpeedSample33_1B4D605E33761C04C87C5DD249421141LLVGMd, &_s19_RealityKit_SwiftUI14CircularBufferCyAA21DeviceMotionEstimatorC11SpeedSample33_1B4D605E33761C04C87C5DD249421141LLVGMR);
  swift_allocObject();
  v1[14] = specialized CircularBuffer.init(capacity:initialValue:)(v17, 0.0, 0.0);

  return v1[14] != 0;
}

void DeviceMotionEstimator.updateMotionEstimate(time:orbit:)(uint64_t a1, uint64_t a2, char a3, double a4)
{
  *(v4 + 72) = a4;
  if (!*(v4 + 80))
  {
    __break(1u);
    goto LABEL_36;
  }

  specialized CircularBuffer.at(_:)(0, v38);
  if ((v41 & 1) == 0)
  {
    v8 = v38[0];
    v34 = v40;
    *oslog = v39;
    specialized CircularBuffer.at(_:)(*(v4 + 48), v42);
    if ((v45 & 1) == 0)
    {
      v13 = v8 - v42[0];
      if (v8 - v42[0] <= 0.0)
      {
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v30 = type metadata accessor for Logger();
        __swift_project_value_buffer(v30, logger);
        osloga = Logger.logObject.getter();
        v10 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(osloga, v10))
        {
          goto LABEL_9;
        }

        v11 = swift_slowAlloc();
        *v11 = 0;
        v12 = "dt cannot be 0!  Not updating motion estimate...";
        goto LABEL_8;
      }

      if (*(v4 + 88))
      {
        v32 = v44;
        v33 = v43;

        v16 = DeviceMotionEstimator.computeDerivatives(dt:recordNow:recordPrevious:orbit:)(a1, a2, a3 & 1, v13, v14, *oslog, v34, v15, v33, v32);
        specialized CircularBuffer.pushNew(_:)(v46, v16, v17, v18, v19);

        if (*(v4 + 88))
        {
          specialized CircularBuffer.at(_:)(0, v47);
          if (v51)
          {
            return;
          }

          v20 = v48;
          v21 = v50;
          v22 = *(v4 + 64);
          if ((v22 & 1) == 0)
          {
            goto LABEL_19;
          }

          *oslogb = v48;
          if (*(v4 + 104))
          {
            v23 = vmulq_f32(v49, v49);
            v24 = sqrtf(v23.f32[2] + vaddv_f32(*v23.f32));

            specialized CircularBuffer.pushNew(_:)(v24, v8);

            v20 = *oslogb;
LABEL_19:
            if ((v22 & 2) == 0)
            {
LABEL_22:
              if ((v22 & 4) == 0)
              {
                goto LABEL_25;
              }

              if (*(v4 + 112))
              {

                specialized CircularBuffer.pushNew(_:)(v21, v8);

LABEL_25:
                DeviceMotionEstimator.computeSmoothedSpeeds()();
                v27 = vmul_f32(*(v4 + 20), *(v4 + 124));
                v28 = ((*(v4 + 16) * *(v4 + 120)) + v27.f32[0]) + v27.f32[1];
                *(v4 + 132) = v28;
                v29 = *(v4 + 56);
                if (v28 >= v29)
                {
                  v31 = *(v4 + 60);
                  if (v31 >= v28)
                  {
                    *(v4 + 136) = 1.0 - ((v28 - v29) / (v31 - v29));
                  }

                  else
                  {
                    *(v4 + 136) = 0;
                  }
                }

                else
                {
                  *(v4 + 136) = 1065353216;
                }

                return;
              }

LABEL_40:
              __break(1u);
              return;
            }

            if (*(v4 + 96))
            {
              v25 = vmulq_f32(v20, v20);
              v26 = sqrtf(v25.f32[2] + vaddv_f32(*v25.f32));

              specialized CircularBuffer.pushNew(_:)(v26, v8);

              goto LABEL_22;
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
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, logger);
  osloga = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(osloga, v10))
  {
    goto LABEL_9;
  }

  v11 = swift_slowAlloc();
  *v11 = 0;
  v12 = "Can't get previous framerecords.";
LABEL_8:
  _os_log_impl(&dword_23B824000, osloga, v10, v12, v11, 2u);
  MEMORY[0x23EEB0B70](v11, -1, -1);
LABEL_9:
}

void DeviceMotionEstimator.computeSmoothedSpeeds()()
{
  v1 = v0;
  *(v0 + 120) = 0;
  *(v0 + 128) = 0;
  v2 = *(v0 + 64);
  if (v2)
  {
    v3 = *(v0 + 104);
    if (!v3)
    {
LABEL_152:
      __break(1u);
      goto LABEL_153;
    }

    v4 = *(v1 + 40);
    specialized CircularBuffer.at(_:)(0);
    if (v6)
    {
LABEL_153:
      __break(1u);
      goto LABEL_154;
    }

    v7 = v3[5];
    if (v7 < 1)
    {
      goto LABEL_137;
    }

    if (v7 != 1)
    {
      v9 = v5;
      swift_beginAccess();
      v10 = v3[4];
      if (!v10)
      {
        goto LABEL_140;
      }

      v11 = v9;
      v12 = v3[6];
      v13 = v3[7];
      v8 = 1;
      while (v7 != v8)
      {
        v14 = v12 - v8;
        if (__OFSUB__(v12, v8))
        {
          goto LABEL_120;
        }

        v15 = __OFADD__(v14, v10);
        v16 = v14 + v10;
        if (v15)
        {
          goto LABEL_121;
        }

        if (v10 == -1 && v16 == 0x8000000000000000)
        {
          goto LABEL_134;
        }

        if (!v13)
        {
          goto LABEL_149;
        }

        v17 = v16 % v10;
        if ((v17 & 0x8000000000000000) != 0)
        {
          goto LABEL_122;
        }

        if (v17 >= *(v13 + 16))
        {
          goto LABEL_123;
        }

        if (v4 <= v11 - *(v13 + 32 + 16 * v17 + 8))
        {
          goto LABEL_21;
        }

        if (v7 == ++v8)
        {
          v8 = v7;
          goto LABEL_21;
        }
      }

      goto LABEL_119;
    }

    v8 = 1;
LABEL_21:
    v18 = 0;
    v19 = 0.0;
    while (1)
    {
      v20 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v18 >= v3[5])
      {
        goto LABEL_143;
      }

      v21 = v3[6];
      v15 = __OFSUB__(v21, v18);
      v22 = v21 - v18;
      if (v15)
      {
        goto LABEL_99;
      }

      v23 = v3[4];
      v24 = v22 + v23;
      if (__OFADD__(v22, v23))
      {
        goto LABEL_100;
      }

      if (!v23)
      {
        goto LABEL_101;
      }

      if (v23 == -1 && v24 == 0x8000000000000000)
      {
        goto LABEL_116;
      }

      swift_beginAccess();
      v25 = v3[7];
      if (!v25)
      {
        goto LABEL_144;
      }

      v26 = v24 % v23;
      if (v24 % v23 < 0)
      {
        goto LABEL_102;
      }

      if (v26 >= *(v25 + 16))
      {
        goto LABEL_103;
      }

      v19 = v19 + ((1.0 / v8) * *(v25 + 16 * v26 + 32));
      *(v1 + 120) = v19;
      ++v18;
      if (v20 == v8)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_99:
    __break(1u);
LABEL_100:
    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    __break(1u);
LABEL_103:
    __break(1u);
    goto LABEL_104;
  }

LABEL_33:
  if ((v2 & 2) != 0)
  {
    v27 = *(v1 + 96);
    if (!v27)
    {
LABEL_154:
      __break(1u);
      goto LABEL_155;
    }

    v28 = *(v1 + 40);
    specialized CircularBuffer.at(_:)(0);
    if (v30)
    {
LABEL_155:
      __break(1u);
      goto LABEL_156;
    }

    v31 = v27[5];
    if (v31 < 1)
    {
      goto LABEL_138;
    }

    if (v31 != 1)
    {
      v33 = v29;
      swift_beginAccess();
      v34 = v27[4];
      if (!v34)
      {
        goto LABEL_141;
      }

      v35 = v33;
      v36 = v27[6];
      v37 = v27[7];
      v32 = 1;
      while (v31 != v32)
      {
        v38 = v36 - v32;
        if (__OFSUB__(v36, v32))
        {
          goto LABEL_125;
        }

        v15 = __OFADD__(v38, v34);
        v39 = v38 + v34;
        if (v15)
        {
          goto LABEL_126;
        }

        if (v34 == -1 && v39 == 0x8000000000000000)
        {
          goto LABEL_135;
        }

        if (!v37)
        {
          goto LABEL_150;
        }

        v40 = v39 % v34;
        if ((v40 & 0x8000000000000000) != 0)
        {
          goto LABEL_127;
        }

        if (v40 >= *(v37 + 16))
        {
          goto LABEL_128;
        }

        if (v28 <= v35 - *(v37 + 32 + 16 * v40 + 8))
        {
          goto LABEL_53;
        }

        if (v31 == ++v32)
        {
          v32 = v31;
          goto LABEL_53;
        }
      }

      goto LABEL_124;
    }

    v32 = 1;
LABEL_53:
    v41 = 0;
    v42 = 0.0;
    while (1)
    {
      v43 = v41 + 1;
      if (__OFADD__(v41, 1))
      {
        break;
      }

      if (v41 >= v27[5])
      {
        goto LABEL_145;
      }

      v44 = v27[6];
      v15 = __OFSUB__(v44, v41);
      v45 = v44 - v41;
      if (v15)
      {
        goto LABEL_105;
      }

      v46 = v27[4];
      v47 = v45 + v46;
      if (__OFADD__(v45, v46))
      {
        goto LABEL_106;
      }

      if (!v46)
      {
        goto LABEL_107;
      }

      if (v46 == -1 && v47 == 0x8000000000000000)
      {
        goto LABEL_117;
      }

      swift_beginAccess();
      v48 = v27[7];
      if (!v48)
      {
        goto LABEL_146;
      }

      v49 = v47 % v46;
      if (v47 % v46 < 0)
      {
        goto LABEL_108;
      }

      if (v49 >= *(v48 + 16))
      {
        goto LABEL_109;
      }

      v42 = v42 + ((1.0 / v32) * *(v48 + 16 * v49 + 32));
      *(v1 + 124) = v42;
      ++v41;
      if (v43 == v32)
      {
        goto LABEL_65;
      }
    }

LABEL_104:
    __break(1u);
LABEL_105:
    __break(1u);
LABEL_106:
    __break(1u);
LABEL_107:
    __break(1u);
LABEL_108:
    __break(1u);
LABEL_109:
    __break(1u);
LABEL_110:
    __break(1u);
LABEL_111:
    __break(1u);
LABEL_112:
    __break(1u);
LABEL_113:
    __break(1u);
LABEL_114:
    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
LABEL_120:
    __break(1u);
LABEL_121:
    __break(1u);
LABEL_122:
    __break(1u);
LABEL_123:
    __break(1u);
LABEL_124:
    __break(1u);
LABEL_125:
    __break(1u);
LABEL_126:
    __break(1u);
LABEL_127:
    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
LABEL_130:
    __break(1u);
LABEL_131:
    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    __break(1u);
LABEL_139:
    __break(1u);
LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

LABEL_65:
  if ((v2 & 4) != 0)
  {
    v50 = *(v1 + 112);
    if (!v50)
    {
LABEL_156:
      __break(1u);
      goto LABEL_157;
    }

    v51 = *(v1 + 40);
    specialized CircularBuffer.at(_:)(0);
    if (v53)
    {
LABEL_157:
      __break(1u);
      return;
    }

    v54 = v50[5];
    if (v54 < 1)
    {
      goto LABEL_139;
    }

    if (v54 != 1)
    {
      v56 = v52;
      swift_beginAccess();
      v57 = v50[4];
      if (!v57)
      {
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

      v58 = v56;
      v59 = v50[6];
      v60 = v50[7];
      v55 = 1;
      while (v54 != v55)
      {
        v61 = v59 - v55;
        if (__OFSUB__(v59, v55))
        {
          goto LABEL_130;
        }

        v15 = __OFADD__(v61, v57);
        v62 = v61 + v57;
        if (v15)
        {
          goto LABEL_131;
        }

        if (v57 == -1 && v62 == 0x8000000000000000)
        {
          goto LABEL_136;
        }

        if (!v60)
        {
          goto LABEL_151;
        }

        v63 = v62 % v57;
        if ((v63 & 0x8000000000000000) != 0)
        {
          goto LABEL_132;
        }

        if (v63 >= *(v60 + 16))
        {
          goto LABEL_133;
        }

        if (v51 <= v58 - *(v60 + 32 + 16 * v63 + 8))
        {
          goto LABEL_85;
        }

        if (v54 == ++v55)
        {
          v55 = v54;
          goto LABEL_85;
        }
      }

      goto LABEL_129;
    }

    v55 = 1;
LABEL_85:
    v64 = 0;
    v65 = 0.0;
    while (1)
    {
      v66 = v64 + 1;
      if (__OFADD__(v64, 1))
      {
        goto LABEL_110;
      }

      if (v64 >= v50[5])
      {
        goto LABEL_147;
      }

      v67 = v50[6];
      v15 = __OFSUB__(v67, v64);
      v68 = v67 - v64;
      if (v15)
      {
        goto LABEL_111;
      }

      v69 = v50[4];
      v70 = v68 + v69;
      if (__OFADD__(v68, v69))
      {
        goto LABEL_112;
      }

      if (!v69)
      {
        goto LABEL_113;
      }

      if (v69 == -1 && v70 == 0x8000000000000000)
      {
        goto LABEL_118;
      }

      swift_beginAccess();
      v71 = v50[7];
      if (!v71)
      {
        goto LABEL_148;
      }

      v72 = v70 % v69;
      if (v70 % v69 < 0)
      {
        goto LABEL_114;
      }

      if (v72 >= *(v71 + 16))
      {
        goto LABEL_115;
      }

      v65 = v65 + ((1.0 / v55) * *(v71 + 16 * v72 + 32));
      *(v1 + 128) = v65;
      ++v64;
      if (v66 == v55)
      {
        return;
      }
    }
  }
}

double DeviceMotionEstimator.computeDerivatives(dt:recordNow:recordPrevious:orbit:)(uint64_t a1, uint64_t a2, char a3, double a4, double a5, float32x4_t a6, float32x4_t a7, double a8, float32x4_t a9, float32x4_t a10)
{
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of DeviceMotionEstimator.computeDerivatives(dt:recordNow:recordPrevious:orbit:));
  v15 = *(v10 + 64);
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of DeviceMotionEstimator.computeDerivatives(dt:recordNow:recordPrevious:orbit:));
  if (v15)
  {
    v16 = vmulq_f32(a10, a10);
    *v16.i8 = vadd_f32(*v16.i8, *&vextq_s8(v16, v16, 8uLL));
    v16.i32[0] = vadd_f32(*v16.i8, vdup_lane_s32(*v16.i8, 1)).u32[0];
    v17 = vrecpe_f32(v16.u32[0]);
    v18 = vmul_f32(v17, vrecps_f32(v16.u32[0], v17));
    v19 = vmulq_n_f32(vmulq_f32(a10, xmmword_23B91C020), vmul_f32(v18, vrecps_f32(v16.u32[0], v18)).f32[0]);
    v20 = vnegq_f32(v19);
    v21 = vtrn2q_s32(v19, vtrn1q_s32(v19, v20));
    v22 = vmlaq_n_f32(vmulq_lane_f32(vextq_s8(v19, v20, 8uLL), *a7.f32, 1), vextq_s8(v21, v21, 8uLL), a7.f32[0]);
    v23 = vrev64q_s32(v19);
    v23.i32[0] = v20.i32[1];
    v23.i32[3] = v20.i32[2];
    v24 = vaddq_f32(vmlaq_laneq_f32(vmulq_laneq_f32(v19, a7, 3), v23, a7, 2), v22);
    v25 = vmulq_f32(v24, v24);
    atan2f(sqrtf(v25.f32[2] + vaddv_f32(*v25.f32)), v24.f32[3]);
  }

  if ((v15 & 4) != 0 && (a3 & 1) == 0)
  {
    v26.i64[0] = a1;
    v26.i64[1] = a2;
    specialized DeviceMotionEstimator.computeOrbitAngle(posNow:posPrev:orbit:)(a6, a9, v26);
  }

  return a4;
}

uint64_t DeviceMotionEstimator.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

__n128 __swift_memcpy52_16(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for DeviceMotionEstimator.DerivativeRecord(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 52))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DeviceMotionEstimator.DerivativeRecord(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
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

  *(result + 52) = v3;
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

unint64_t lazy protocol witness table accessor for type DeviceMotionEstimator.ActiveComponents and conformance DeviceMotionEstimator.ActiveComponents(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type DeviceMotionEstimator.ActiveComponents and conformance DeviceMotionEstimator.ActiveComponents;
  if (!lazy protocol witness table cache variable for type DeviceMotionEstimator.ActiveComponents and conformance DeviceMotionEstimator.ActiveComponents)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DeviceMotionEstimator.ActiveComponents and conformance DeviceMotionEstimator.ActiveComponents);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DeviceMotionEstimator.ActiveComponents and conformance DeviceMotionEstimator.ActiveComponents;
  if (!lazy protocol witness table cache variable for type DeviceMotionEstimator.ActiveComponents and conformance DeviceMotionEstimator.ActiveComponents)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DeviceMotionEstimator.ActiveComponents and conformance DeviceMotionEstimator.ActiveComponents);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DeviceMotionEstimator.ActiveComponents and conformance DeviceMotionEstimator.ActiveComponents;
  if (!lazy protocol witness table cache variable for type DeviceMotionEstimator.ActiveComponents and conformance DeviceMotionEstimator.ActiveComponents)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DeviceMotionEstimator.ActiveComponents and conformance DeviceMotionEstimator.ActiveComponents);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DeviceMotionEstimator.ActiveComponents and conformance DeviceMotionEstimator.ActiveComponents;
  if (!lazy protocol witness table cache variable for type DeviceMotionEstimator.ActiveComponents and conformance DeviceMotionEstimator.ActiveComponents)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DeviceMotionEstimator.ActiveComponents and conformance DeviceMotionEstimator.ActiveComponents);
  }

  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew()(uint64_t a1)
{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

{
  return specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 16), 0, a1);
}

uint64_t specialized SetAlgebra<>.init(arrayLiteral:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

float specialized DeviceMotionEstimator.computeOrbitAngle(posNow:posPrev:orbit:)(float32x4_t a1, float32x4_t a2, float32x4_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23B91BFD0;
  v4 = vsubq_f32(a1, a3);
  *(inited + 32) = vzip1_s32(*v4.i8, *&vextq_s8(v4, v4, 8uLL));
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(inited);
  v6 = v5;
  swift_setDeallocating();
  v7 = swift_initStackObject();
  *(v7 + 16) = xmmword_23B91BFD0;
  v8 = vsubq_f32(a2, a3);
  *(v7 + 32) = vzip1_s32(*v8.i8, *&vextq_s8(v8, v8, 8uLL));
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(v7);
  v10 = v9;
  v11 = swift_setDeallocating();
  v14 = vmul_f32(v6, v6);
  v15 = vmul_f32(v10, v10);
  v16 = vcgt_f32(vsqrt_f32(vadd_f32(vzip1_s32(v15, v14), vzip2_s32(v15, v14))), vdup_n_s32(0x3A83126Fu));
  v17 = 0.0;
  if (v16.i32[1] & v16.i32[0])
  {
    v18 = vadd_f32(v14, vdup_lane_s32(v14, 1)).u32[0];
    v19 = vrsqrte_f32(v18);
    v20 = vmul_f32(v19, vrsqrts_f32(v18, vmul_f32(v19, v19)));
    LODWORD(v21) = vmul_f32(v20, vrsqrts_f32(v18, vmul_f32(v20, v20))).u32[0];
    v22 = vadd_f32(v15, vdup_lane_s32(v15, 1)).u32[0];
    v23 = vrsqrte_f32(v22);
    v24 = vmul_f32(v23, vrsqrts_f32(v22, vmul_f32(v23, v23)));
    specialized static MathHelpers.angleBetween(_:_:)(v11, v12, v13, vmul_n_f32(v6, v21), vmul_n_f32(v10, vmul_f32(v24, vrsqrts_f32(v22, vmul_f32(v24, v24))).f32[0]));
    return v25;
  }

  return v17;
}

void *partial apply for specialized implicit closure #2 in implicit closure #1 in CircularBuffer.init(capacity:initialValue:)(void *result, void *a2)
{
  v3 = *(v2 + 32);
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v3)
    {
      v4 = *(v2 + 16);
      v5 = *(v2 + 24);
      v6 = (*result + 8);
      v7 = *(v2 + 32);
      do
      {
        *(v6 - 2) = v4;
        *v6 = v5;
        v6 += 2;
        --v7;
      }

      while (v7);
    }

    *a2 = v3;
  }

  return result;
}

{
  v3 = *(v2 + 64);
  if (v3 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v3)
    {
      v4 = *(v2 + 16);
      v5 = *(v2 + 32);
      v6 = *(v2 + 48);
      v7 = (*result + 32);
      v8 = *(v2 + 64);
      do
      {
        *(v7 - 4) = v4;
        *(v7 - 1) = v5;
        *v7 = v6;
        v7 += 3;
        --v8;
      }

      while (v8);
    }

    *a2 = v3;
  }

  return result;
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t specialized Collection.first.getter(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaSet.startIndex.getter();
    v5 = v4;
    v6 = __CocoaSet.endIndex.getter();
    v8 = v7;
    v9 = MEMORY[0x23EEAFB30](v3, v5, v6, v7);
    outlined consume of [String : Entity.ConfigurationCatalog.ConfigurationSet].Index._Variant(v6, v8, 1);
    if (v9)
    {
LABEL_3:
      outlined consume of [String : Entity.ConfigurationCatalog.ConfigurationSet].Index._Variant(v3, v5, v2 != 0);
      return 0;
    }
  }

  else
  {
    v3 = _HashTable.startBucket.getter();
    v5 = *(a1 + 36);
    if (v3 == 1 << *(a1 + 32))
    {
      goto LABEL_3;
    }
  }

  specialized Set.subscript.getter(v3, v5, v2 != 0, a1);
  v12 = v11;
  outlined consume of [String : Entity.ConfigurationCatalog.ConfigurationSet].Index._Variant(v3, v5, v2 != 0);
  return v12;
}

uint64_t DragGestureRecognizer.touchesBegan(_:with:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for UITouch();
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v28.receiver = v3;
  v28.super_class = type metadata accessor for DragGestureRecognizer();
  objc_msgSendSuper2(&v28, sel_touchesBegan_withEvent_, isa, a2);

  v7 = specialized Collection.first.getter(a1);
  if (v7)
  {
    v8 = [v3 view];
    [v7 locationInView_];
    v10 = v9;
    v12 = v11;

    v13 = v10;
    v14 = v12;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, logger);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v27 = v19;
    *v18 = 136446210;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7CGPointVSgMd, &_sSo7CGPointVSgMR);
    v20 = String.init<A>(describing:)();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v27);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_23B824000, v16, v17, "StartDrag: %{public}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    MEMORY[0x23EEB0B70](v19, -1, -1);
    MEMORY[0x23EEB0B70](v18, -1, -1);
  }

  v23 = &v3[OBJC_IVAR____TtC19_RealityKit_SwiftUI21DragGestureRecognizer_draggable];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v25 = *(v23 + 1);
    ObjectType = swift_getObjectType();
    (*(v25 + 8))(v13, v14, v7 == 0, ObjectType, v25);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t DragGestureRecognizer.touchesEnded(_:with:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  type metadata accessor for UITouch();
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  isa = Set._bridgeToObjectiveC()().super.isa;
  v28.receiver = v3;
  v28.super_class = type metadata accessor for DragGestureRecognizer();
  objc_msgSendSuper2(&v28, sel_touchesEnded_withEvent_, isa, a2);

  v7 = specialized Collection.first.getter(a1);
  if (v7)
  {
    v8 = [v3 view];
    [v7 locationInView_];
    v10 = v9;
    v12 = v11;

    v13 = v10;
    v14 = v12;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  __swift_project_value_buffer(v15, logger);
  v16 = Logger.logObject.getter();
  v17 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v27 = v19;
    *v18 = 136446210;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo7CGPointVSgMd, &_sSo7CGPointVSgMR);
    v20 = String.init<A>(describing:)();
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v21, &v27);

    *(v18 + 4) = v22;
    _os_log_impl(&dword_23B824000, v16, v17, "Ending drag gesture... %{public}s", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v19);
    MEMORY[0x23EEB0B70](v19, -1, -1);
    MEMORY[0x23EEB0B70](v18, -1, -1);
  }

  v23 = &v3[OBJC_IVAR____TtC19_RealityKit_SwiftUI21DragGestureRecognizer_draggable];
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v25 = *(v23 + 1);
    ObjectType = swift_getObjectType();
    (*(v25 + 16))(v13, v14, v7 == 0, ObjectType, v25);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t @objc DragGestureRecognizer.touchesBegan(_:with:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void (*a5)(uint64_t, id))
{
  type metadata accessor for UITouch();
  lazy protocol witness table accessor for type UITouch and conformance NSObject();
  v8 = static Set._unconditionallyBridgeFromObjectiveC(_:)();
  v9 = a4;
  v10 = a1;
  a5(v8, v9);
}

id DragGestureRecognizer.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DragGestureRecognizer();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t type metadata accessor for UITouch()
{
  result = lazy cache variable for type metadata for UITouch;
  if (!lazy cache variable for type metadata for UITouch)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for UITouch);
  }

  return result;
}

void specialized Set.subscript.getter(unint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      if (a4 < 0)
      {
        v7 = a4;
      }

      else
      {
        v7 = a4 & 0xFFFFFFFFFFFFFF8;
      }

      MEMORY[0x23EEAFB80](a1, a2, v7);
      type metadata accessor for UITouch();
      swift_dynamicCast();
      return;
    }

LABEL_26:
    __break(1u);
    return;
  }

  if (a3)
  {
    type metadata accessor for UITouch();
    if (__CocoaSet.Index.age.getter() != *(a4 + 36))
    {
      __break(1u);
LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

    __CocoaSet.Index.element.getter();
    swift_dynamicCast();
    v4 = v15;
    v8 = NSObject._rawHashValue(seed:)(*(a4 + 40));
    v9 = -1 << *(a4 + 32);
    v6 = v8 & ~v9;
    if ((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
    {
      v10 = ~v9;
      do
      {
        v11 = *(*(a4 + 48) + 8 * v6);
        v12 = static NSObject.== infix(_:_:)();

        if (v12)
        {
          goto LABEL_19;
        }

        v6 = (v6 + 1) & v10;
      }

      while (((*(a4 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    __break(1u);
  }

  if ((v6 & 0x8000000000000000) != 0 || 1 << *(a4 + 32) <= v6)
  {
    goto LABEL_24;
  }

  if (((*(a4 + 8 * (v6 >> 6) + 56) >> v6) & 1) == 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_19:
  }

  v13 = *(*(a4 + 48) + 8 * v6);

  v14 = v13;
}

uint64_t type metadata accessor for __RealityKitOverlayRegistry(uint64_t a1)
{
  result = type metadata singleton initialization cache for __RealityKitOverlayRegistry;
  if (!type metadata singleton initialization cache for __RealityKitOverlayRegistry)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

id @objc __RealityKitOverlayRegistry.init()(void *a1)
{
  v2.receiver = a1;
  v2.super_class = type metadata accessor for __RealityKitOverlayRegistry(0);
  return objc_msgSendSuper2(&v2, sel_init);
}

id __RealityKitOverlayRegistry.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for __RealityKitOverlayRegistry(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ExperimentSettings.PointCloudRenderStyle()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ExperimentSettings.PointCloudRenderStyle(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ExperimentSettings.PointCloudRenderStyle(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ExperimentSettings.PointCloudRenderStyle@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ExperimentSettings.PointCloudRenderStyle.init(rawValue:), *a1);

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ExperimentSettings.PointCloudRenderStyle(uint64_t *a1@<X8>)
{
  v2 = 0x73746E696F70;
  if (*v1)
  {
    v2 = 0x7365627563;
  }

  v3 = 0xE600000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ExperimentSettings.PointCloudRenderStyle(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7365627563;
  }

  else
  {
    v3 = 0x73746E696F70;
  }

  if (v2)
  {
    v4 = 0xE600000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x7365627563;
  }

  else
  {
    v5 = 0x73746E696F70;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

unint64_t lazy protocol witness table accessor for type ExperimentSettings.PointCloudRenderStyle and conformance ExperimentSettings.PointCloudRenderStyle(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type ExperimentSettings.PointCloudRenderStyle and conformance ExperimentSettings.PointCloudRenderStyle;
  if (!lazy protocol witness table cache variable for type ExperimentSettings.PointCloudRenderStyle and conformance ExperimentSettings.PointCloudRenderStyle)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExperimentSettings.PointCloudRenderStyle and conformance ExperimentSettings.PointCloudRenderStyle);
  }

  return result;
}

uint64_t specialized static ExperimentSettings.loadDefaults(forKey:)(uint64_t a1, unint64_t a2)
{
  v4 = [objc_opt_self() standardUserDefaults];
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, logger);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v23 = v9;
    *v8 = 136315138;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v23);
    _os_log_impl(&dword_23B824000, v6, v7, "Looking for key=%s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x23EEB0B70](v9, -1, -1);
    MEMORY[0x23EEB0B70](v8, -1, -1);
  }

  v10 = MEMORY[0x23EEAF480](a1, a2);
  v11 = [v4 stringForKey_];

  if (v11)
  {
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15 = Logger.logObject.getter();
    v16 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      v18 = swift_slowAlloc();
      v23 = v18;
      *v17 = 136315394;
      *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v23);
      *(v17 + 12) = 2080;
      *(v17 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v23);
      _os_log_impl(&dword_23B824000, v15, v16, "Found defaults %s == %s", v17, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB0B70](v18, -1, -1);
      MEMORY[0x23EEB0B70](v17, -1, -1);
    }
  }

  else
  {
    v19 = Logger.logObject.getter();
    v20 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v19, v20))
    {
      v21 = swift_slowAlloc();
      *v21 = 0;
      _os_log_impl(&dword_23B824000, v19, v20, "... key not found!", v21, 2u);
      MEMORY[0x23EEB0B70](v21, -1, -1);
    }

    return 0;
  }

  return v12;
}

float specialized static ExperimentSettings.loadDepthHazeStartPercent(default:)(float a1)
{
  v2 = specialized static ExperimentSettings.loadDefaults(forKey:)(0xD000000000000030, 0x800000023B9289B0);
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x800000023B9289B0, &v16);
      *(v9 + 12) = 2080;
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v16);

      *(v9 + 14) = v11;
      _os_log_impl(&dword_23B824000, v7, v8, "Found key %s = %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }

    else
    {
    }

    v12 = [objc_opt_self() standardUserDefaults];
    v13 = MEMORY[0x23EEAF480](0xD000000000000030, 0x800000023B9289B0);
    [v12 floatForKey_];
    a1 = v14;
  }

  return a1;
}

uint64_t specialized static ExperimentSettings.loadCaptureSoundModuleType(default:)(uint64_t a1, uint64_t a2)
{
  v3 = specialized static ExperimentSettings.loadDefaults(forKey:)(0xD000000000000031, 0x800000023B928970);
  if (v4)
  {
    v5 = v3;
    v6 = v4;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, logger);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v10 = 136315394;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000031, 0x800000023B928970, &v13);
      *(v10 + 12) = 2080;
      *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, &v13);
      _os_log_impl(&dword_23B824000, v8, v9, "Found key %s = %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB0B70](v11, -1, -1);
      MEMORY[0x23EEB0B70](v10, -1, -1);
    }
  }

  else
  {

    return a1;
  }

  return v5;
}

uint64_t specialized static ExperimentSettings.loadIsSoundEnabled(default:)(unsigned __int8 a1)
{
  v2 = specialized static ExperimentSettings.loadDefaults(forKey:)(0xD000000000000029, 0x800000023B928940);
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000029, 0x800000023B928940, &v15);
      *(v9 + 12) = 2080;
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v15);

      *(v9 + 14) = v11;
      _os_log_impl(&dword_23B824000, v7, v8, "Found key %s = %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }

    else
    {
    }

    v12 = [objc_opt_self() standardUserDefaults];
    v13 = MEMORY[0x23EEAF480](0xD000000000000029, 0x800000023B928940);
    a1 = [v12 BOOLForKey_];
  }

  return a1 & 1;
}

uint64_t specialized static ExperimentSettings.loadFreeformDynamicScanVolumeEnabled(default:)(unsigned __int8 a1)
{
  v2 = specialized static ExperimentSettings.loadDefaults(forKey:)(0xD00000000000003BLL, 0x800000023B928900);
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003BLL, 0x800000023B928900, &v15);
      *(v9 + 12) = 2080;
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v15);

      *(v9 + 14) = v11;
      _os_log_impl(&dword_23B824000, v7, v8, "Found key %s = %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }

    else
    {
    }

    v12 = [objc_opt_self() standardUserDefaults];
    v13 = MEMORY[0x23EEAF480](0xD00000000000003BLL, 0x800000023B928900);
    a1 = [v12 BOOLForKey_];
  }

  return a1 & 1;
}

uint64_t specialized static ExperimentSettings.loadFreeformPointDensityThreshold(default:)(uint64_t a1)
{
  v2 = specialized static ExperimentSettings.loadDefaults(forKey:)(0xD000000000000038, 0x800000023B9288C0);
  if (!v3)
  {
    return a1;
  }

  v4 = v3;
  v5 = v2;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, logger);

  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.info.getter();

  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v16 = v10;
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000038, 0x800000023B9288C0, &v16);
    *(v9 + 12) = 2080;
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v16);

    *(v9 + 14) = v11;
    _os_log_impl(&dword_23B824000, v7, v8, "Found key %s = %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x23EEB0B70](v10, -1, -1);
    MEMORY[0x23EEB0B70](v9, -1, -1);
  }

  else
  {
  }

  v13 = [objc_opt_self() standardUserDefaults];
  v14 = MEMORY[0x23EEAF480](0xD000000000000038, 0x800000023B9288C0);
  v15 = [v13 integerForKey_];

  return v15;
}

float specialized static ExperimentSettings.loadPostProcessBloomSigma(default:)(float a1)
{
  v2 = specialized static ExperimentSettings.loadDefaults(forKey:)(0xD000000000000030, 0x800000023B928880);
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x800000023B928880, &v16);
      *(v9 + 12) = 2080;
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v16);

      *(v9 + 14) = v11;
      _os_log_impl(&dword_23B824000, v7, v8, "Found key %s = %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }

    else
    {
    }

    v12 = [objc_opt_self() standardUserDefaults];
    v13 = MEMORY[0x23EEAF480](0xD000000000000030, 0x800000023B928880);
    [v12 floatForKey_];
    a1 = v14;
  }

  return a1;
}

float specialized static ExperimentSettings.loadDepthHazeFloor(default:)(float a1)
{
  v2 = specialized static ExperimentSettings.loadDefaults(forKey:)(0xD000000000000029, 0x800000023B928850);
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000029, 0x800000023B928850, &v16);
      *(v9 + 12) = 2080;
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v16);

      *(v9 + 14) = v11;
      _os_log_impl(&dword_23B824000, v7, v8, "Found key %s = %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }

    else
    {
    }

    v12 = [objc_opt_self() standardUserDefaults];
    v13 = MEMORY[0x23EEAF480](0xD000000000000029, 0x800000023B928850);
    [v12 floatForKey_];
    a1 = v14;
  }

  return a1;
}

uint64_t specialized static ExperimentSettings.loadDepthHazeDisabled(default:)(unsigned __int8 a1)
{
  v2 = specialized static ExperimentSettings.loadDefaults(forKey:)(0xD00000000000002CLL, 0x800000023B928820);
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x800000023B928820, &v15);
      *(v9 + 12) = 2080;
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v15);

      *(v9 + 14) = v11;
      _os_log_impl(&dword_23B824000, v7, v8, "Found key %s = %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }

    else
    {
    }

    v12 = [objc_opt_self() standardUserDefaults];
    v13 = MEMORY[0x23EEAF480](0xD00000000000002CLL, 0x800000023B928820);
    a1 = [v12 BOOLForKey_];
  }

  return a1 & 1;
}

uint64_t specialized static ExperimentSettings.loadOcclusionHazeDisabled(default:)(unsigned __int8 a1)
{
  v2 = specialized static ExperimentSettings.loadDefaults(forKey:)(0xD000000000000030, 0x800000023B9287E0);
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x800000023B9287E0, &v15);
      *(v9 + 12) = 2080;
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v15);

      *(v9 + 14) = v11;
      _os_log_impl(&dword_23B824000, v7, v8, "Found key %s = %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }

    else
    {
    }

    v12 = [objc_opt_self() standardUserDefaults];
    v13 = MEMORY[0x23EEAF480](0xD000000000000030, 0x800000023B9287E0);
    a1 = [v12 BOOLForKey_];
  }

  return a1 & 1;
}

uint64_t specialized static ExperimentSettings.loadDebugBoxSeedEnabled(default:)(unsigned __int8 a1)
{
  v2 = specialized static ExperimentSettings.loadDefaults(forKey:)(0xD000000000000027, 0x800000023B9287B0);
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000027, 0x800000023B9287B0, &v15);
      *(v9 + 12) = 2080;
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v15);

      *(v9 + 14) = v11;
      _os_log_impl(&dword_23B824000, v7, v8, "Found key %s = %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }

    else
    {
    }

    v12 = [objc_opt_self() standardUserDefaults];
    v13 = MEMORY[0x23EEAF480](0xD000000000000027, 0x800000023B9287B0);
    a1 = [v12 BOOLForKey_];
  }

  return a1 & 1;
}

uint64_t specialized static ExperimentSettings.loadMobileSFMDisabled(default:)(unsigned __int8 a1)
{
  v2 = specialized static ExperimentSettings.loadDefaults(forKey:)(0xD00000000000002CLL, 0x800000023B928620);
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x800000023B928620, &v15);
      *(v9 + 12) = 2080;
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v15);

      *(v9 + 14) = v11;
      _os_log_impl(&dword_23B824000, v7, v8, "Found key %s = %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }

    else
    {
    }

    v12 = [objc_opt_self() standardUserDefaults];
    v13 = MEMORY[0x23EEAF480](0xD00000000000002CLL, 0x800000023B928620);
    a1 = [v12 BOOLForKey_];
  }

  return a1 & 1;
}

float specialized static ExperimentSettings.loadAutomaticBoundingBoxPadding(default:)(float a1)
{
  v2 = specialized static ExperimentSettings.loadDefaults(forKey:)(0xD000000000000036, 0x800000023B928550);
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000036, 0x800000023B928550, &v16);
      *(v9 + 12) = 2080;
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v16);

      *(v9 + 14) = v11;
      _os_log_impl(&dword_23B824000, v7, v8, "Found key %s = %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }

    else
    {
    }

    v12 = [objc_opt_self() standardUserDefaults];
    v13 = MEMORY[0x23EEAF480](0xD000000000000036, 0x800000023B928550);
    [v12 floatForKey_];
    a1 = v14;
  }

  return a1;
}

uint64_t specialized static ExperimentSettings.loadCaptureCircleOccupyCriteria(default:)(char a1)
{
  v2 = specialized static ExperimentSettings.loadDefaults(forKey:)(0xD000000000000036, 0x800000023B9285E0);
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000036, 0x800000023B9285E0, &v14);
      *(v9 + 12) = 2080;
      *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, &v14);
      _os_log_impl(&dword_23B824000, v7, v8, "Found key %s = %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }

    v11._countAndFlagsBits = v4;
    v11._object = v5;
    v12 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CaptureCircle.OccupyCriteria.init(rawValue:), v11);

    if (v12)
    {
      if (v12 == 1)
      {
        a1 = 1;
      }
    }

    else
    {
      a1 = 0;
    }
  }

  return a1 & 1;
}

float specialized static ExperimentSettings.loadCaptureCircleVerticalExclusionAngleDegs(default:)(float a1)
{
  v2 = specialized static ExperimentSettings.loadDefaults(forKey:)(0xD000000000000042, 0x800000023B928590);
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000042, 0x800000023B928590, &v16);
      *(v9 + 12) = 2080;
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v16);

      *(v9 + 14) = v11;
      _os_log_impl(&dword_23B824000, v7, v8, "Found key %s = %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }

    else
    {
    }

    v12 = [objc_opt_self() standardUserDefaults];
    v13 = MEMORY[0x23EEAF480](0xD000000000000042, 0x800000023B928590);
    [v12 floatForKey_];
    a1 = v14;
  }

  return a1;
}

float specialized static ExperimentSettings.loadCaptureCircleBinShotNeighborThreshDegs(default:)(float a1)
{
  v2 = specialized static ExperimentSettings.loadDefaults(forKey:)(0xD000000000000041, 0x800000023B928450);
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000041, 0x800000023B928450, &v16);
      *(v9 + 12) = 2080;
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v16);

      *(v9 + 14) = v11;
      _os_log_impl(&dword_23B824000, v7, v8, "Found key %s = %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }

    else
    {
    }

    v12 = [objc_opt_self() standardUserDefaults];
    v13 = MEMORY[0x23EEAF480](0xD000000000000041, 0x800000023B928450);
    [v12 floatForKey_];
    a1 = v14;
  }

  return a1;
}

uint64_t specialized static ExperimentSettings.loadFreeformDynamicScanVolumeDebugDraw(default:)(unsigned __int8 a1)
{
  v2 = specialized static ExperimentSettings.loadDefaults(forKey:)(0xD00000000000003DLL, 0x800000023B928690);
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003DLL, 0x800000023B928690, &v15);
      *(v9 + 12) = 2080;
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v15);

      *(v9 + 14) = v11;
      _os_log_impl(&dword_23B824000, v7, v8, "Found key %s = %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }

    else
    {
    }

    v12 = [objc_opt_self() standardUserDefaults];
    v13 = MEMORY[0x23EEAF480](0xD00000000000003DLL, 0x800000023B928690);
    a1 = [v12 BOOLForKey_];
  }

  return a1 & 1;
}

uint64_t specialized static ExperimentSettings.loadFreeformDynamicScanVolumeBoxViz(default:)(unsigned __int8 a1)
{
  v2 = specialized static ExperimentSettings.loadDefaults(forKey:)(0xD00000000000003ALL, 0x800000023B928650);
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003ALL, 0x800000023B928650, &v15);
      *(v9 + 12) = 2080;
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v15);

      *(v9 + 14) = v11;
      _os_log_impl(&dword_23B824000, v7, v8, "Found key %s = %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }

    else
    {
    }

    v12 = [objc_opt_self() standardUserDefaults];
    v13 = MEMORY[0x23EEAF480](0xD00000000000003ALL, 0x800000023B928650);
    a1 = [v12 BOOLForKey_];
  }

  return a1 & 1;
}

double specialized static ExperimentSettings.loadMotionFilterDurationSecs(default:)(double a1)
{
  v2 = specialized static ExperimentSettings.loadDefaults(forKey:)(0xD00000000000002CLL, 0x800000023B928710);
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000033, 0x800000023B928770, &v16);
      *(v9 + 12) = 2080;
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v16);

      *(v9 + 14) = v11;
      _os_log_impl(&dword_23B824000, v7, v8, "Found key %s = %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }

    else
    {
    }

    v12 = [objc_opt_self() standardUserDefaults];
    v13 = MEMORY[0x23EEAF480](0xD000000000000033, 0x800000023B928770);
    [v12 doubleForKey_];
    a1 = v14;
  }

  return a1;
}

float specialized static ExperimentSettings.loadMinBadMotionScore(default:)(float a1)
{
  v2 = specialized static ExperimentSettings.loadDefaults(forKey:)(0xD00000000000002CLL, 0x800000023B928740);
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x800000023B928740, &v16);
      *(v9 + 12) = 2080;
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v16);

      *(v9 + 14) = v11;
      _os_log_impl(&dword_23B824000, v7, v8, "Found key %s = %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }

    else
    {
    }

    v12 = [objc_opt_self() standardUserDefaults];
    v13 = MEMORY[0x23EEAF480](0xD00000000000002CLL, 0x800000023B928740);
    [v12 floatForKey_];
    a1 = v14;
  }

  return a1;
}

float specialized static ExperimentSettings.loadMaxBadMotionScore(default:)(float a1)
{
  v2 = specialized static ExperimentSettings.loadDefaults(forKey:)(0xD00000000000002CLL, 0x800000023B928710);
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002CLL, 0x800000023B928710, &v16);
      *(v9 + 12) = 2080;
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v16);

      *(v9 + 14) = v11;
      _os_log_impl(&dword_23B824000, v7, v8, "Found key %s = %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }

    else
    {
    }

    v12 = [objc_opt_self() standardUserDefaults];
    v13 = MEMORY[0x23EEAF480](0xD00000000000002CLL, 0x800000023B928710);
    [v12 floatForKey_];
    a1 = v14;
  }

  return a1;
}

uint64_t specialized static ExperimentSettings.loadPointCloudRenderStyle(default:)(char a1)
{
  v2 = specialized static ExperimentSettings.loadDefaults(forKey:)(0xD000000000000030, 0x800000023B9286D0);
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v14 = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000030, 0x800000023B9286D0, &v14);
      *(v9 + 12) = 2080;
      *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v5, &v14);
      _os_log_impl(&dword_23B824000, v7, v8, "Found key %s = %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }

    v11._countAndFlagsBits = v4;
    v11._object = v5;
    v12 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ExperimentSettings.PointCloudRenderStyle.init(rawValue:), v11);

    if (v12)
    {
      if (v12 == 1)
      {
        a1 = 1;
      }
    }

    else
    {
      a1 = 0;
    }
  }

  return a1 & 1;
}

float specialized static ExperimentSettings.loadCaptureCircleDepthHazeFloor(default:)(float a1)
{
  v2 = specialized static ExperimentSettings.loadDefaults(forKey:)(0xD000000000000036, 0x800000023B9284E0);
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000036, 0x800000023B9284E0, &v16);
      *(v9 + 12) = 2080;
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v16);

      *(v9 + 14) = v11;
      _os_log_impl(&dword_23B824000, v7, v8, "Found key %s = %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }

    else
    {
    }

    v12 = [objc_opt_self() standardUserDefaults];
    v13 = MEMORY[0x23EEAF480](0xD000000000000036, 0x800000023B9284E0);
    [v12 floatForKey_];
    a1 = v14;
  }

  return a1;
}

float specialized static ExperimentSettings.loadCaptureCircleDepthHazeDistancePower(default:)(float a1)
{
  v2 = specialized static ExperimentSettings.loadDefaults(forKey:)(0xD00000000000003ELL, 0x800000023B9284A0);
  if (v3)
  {
    v4 = v3;
    v5 = v2;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);

    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v16 = v10;
      *v9 = 136315394;
      *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000003ELL, 0x800000023B9284A0, &v16);
      *(v9 + 12) = 2080;
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v16);

      *(v9 + 14) = v11;
      _os_log_impl(&dword_23B824000, v7, v8, "Found key %s = %s", v9, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }

    else
    {
    }

    v12 = [objc_opt_self() standardUserDefaults];
    v13 = MEMORY[0x23EEAF480](0xD00000000000003ELL, 0x800000023B9284A0);
    [v12 floatForKey_];
    a1 = v14;
  }

  return a1;
}

uint64_t specialized static ExperimentSettings.loadReticleDeltaFilterType(default:)(uint64_t a1, uint64_t a2)
{
  v3 = specialized static ExperimentSettings.loadDefaults(forKey:)(0xD00000000000002FLL, 0x800000023B928520);
  if (v4)
  {
    v5 = v3;
    v6 = v4;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v7 = type metadata accessor for Logger();
    __swift_project_value_buffer(v7, logger);

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v13 = v11;
      *v10 = 136315394;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000002FLL, 0x800000023B928520, &v13);
      *(v10 + 12) = 2080;
      *(v10 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v6, &v13);
      _os_log_impl(&dword_23B824000, v8, v9, "Found key %s = %s", v10, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x23EEB0B70](v11, -1, -1);
      MEMORY[0x23EEB0B70](v10, -1, -1);
    }
  }

  else
  {

    return a1;
  }

  return v5;
}

uint64_t specialized Sequence.contains(where:)(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
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

      v9 = (a1)(v12);

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

uint64_t CircularDeadzoneFilter.apply(to:)(float32x2_t a1, float a2)
{
  if (sqrtf(vaddv_f32(vmul_f32(a1, a1))) <= a2)
  {
    return _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of CircularDeadzoneFilter.apply(to:));
  }

  return result;
}

double SigmoidalDerivativeFilter.apply(to:)(double a1, float a2)
{
  v2 = *(&a1 + 1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23B91BFD0;
  v13 = tanhf(*&a1 / a2);
  v4 = tanhf(v2 / a2);
  __asm { FMOV            V2.2S, #1.0 }

  *(inited + 32) = vmul_f32(vmul_f32(vmul_n_f32(vand_s8(vbsl_s8(0x8000000080000000, _D2, *&a1), vorr_s8(vcltz_f32(*&a1), vcgtz_f32(*&a1))), a2), *&a1), __PAIR64__(LODWORD(v4), LODWORD(v13)));
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(inited);
  v11 = v10;
  swift_setDeallocating();
  return v11;
}

uint64_t protocol witness for Filter2D.apply(to:) in conformance ComposedFilter2D(double a1)
{
  v3 = v1[8];
  v4 = v1[9];
  __swift_project_boxed_opaque_existential_1(v1 + 5, v3);
  v5 = v1[3];
  v6 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v5);
  (*(v6 + 16))(v5, v6, a1);
  return (*(v4 + 16))(v3, v4);
}

void static Filter2DFactory.create(factoryString:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  v7 = __swift_project_value_buffer(v6, logger);

  v78 = v7;
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v79[0] = v11;
    *v10 = 136446210;
    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v79);
    _os_log_impl(&dword_23B824000, v8, v9, "Filter2DFactory: factoryString= %{public}s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v11);
    MEMORY[0x23EEB0B70](v11, -1, -1);
    MEMORY[0x23EEB0B70](v10, -1, -1);
  }

  v79[0] = 32;
  v79[1] = 0xE100000000000000;
  MEMORY[0x28223BE20](v12);
  v72[2] = v79;

  v14 = specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(0x7FFFFFFFFFFFFFFFLL, 1, partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:), v72, a1, a2, v13);
  v15 = v14;
  if (!v14[2])
  {

    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v47, v48))
    {
LABEL_15:

      *(a3 + 32) = 0;
      *a3 = 0u;
      *(a3 + 16) = 0u;
      return;
    }

    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v79[0] = v50;
    *v49 = 136446210;
    *(v49 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v79);
    _os_log_impl(&dword_23B824000, v47, v48, "Got no args for Filter2D factory string= %{public}s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v50);
    MEMORY[0x23EEB0B70](v50, -1, -1);
    v51 = v49;
LABEL_14:
    MEMORY[0x23EEB0B70](v51, -1, -1);
    goto LABEL_15;
  }

  v77 = v14[2];
  v16 = v14[4];
  v17 = v14[5];
  v19 = v14[6];
  v18 = v14[7];
  swift_bridgeObjectRetain_n();
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v76 = a3;
    v23 = v22;
    v24 = swift_slowAlloc();
    v79[0] = v24;
    *v23 = 136446210;

    v25 = MEMORY[0x23EEAF550](v16, v17, v19, v18);
    v75 = v19;
    v26 = v25;
    v27 = v17;
    v28 = v16;
    v30 = v29;

    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v30, v79);
    v16 = v28;
    v17 = v27;

    *(v23 + 4) = v31;
    v19 = v75;
    _os_log_impl(&dword_23B824000, v20, v21, "typeName: %{public}s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v24);
    MEMORY[0x23EEB0B70](v24, -1, -1);
    v32 = v23;
    a3 = v76;
    MEMORY[0x23EEB0B70](v32, -1, -1);
  }

  v33 = v77;
  if (v77 != 1)
  {

    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v74 = v16;
      v75 = v19;
      v73 = v17;
      v76 = a3;
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v79[0] = v37;
      *v36 = 136446210;
      if (v15[2] < 2uLL)
      {
        __break(1u);
LABEL_44:
        __break(1u);
        goto LABEL_45;
      }

      v38 = v37;
      v39 = v15[8];
      v40 = v15[9];
      v42 = v15[10];
      v41 = v15[11];

      v43 = MEMORY[0x23EEAF550](v39, v40, v42, v41);
      v45 = v44;

      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, v79);

      *(v36 + 4) = v46;
      _os_log_impl(&dword_23B824000, v34, v35, "argList[1]: %{public}s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v38);
      MEMORY[0x23EEB0B70](v38, -1, -1);
      MEMORY[0x23EEB0B70](v36, -1, -1);

      v19 = v75;
      a3 = v76;
      v17 = v73;
      v16 = v74;
    }

    else
    {
    }

    v33 = v77;
  }

  if (specialized static StringProtocol.== infix<A>(_:_:)(v16, v17, v19, v18, 0xD000000000000010, 0x800000023B924490))
  {

    if (v33 == 1)
    {

      goto LABEL_27;
    }

    if (v15[2] >= 2uLL)
    {

      v53 = Float.init(_:)();
      if ((v53 & 0x100000000) == 0)
      {
        v52 = *&v53;
LABEL_28:
        v54 = Logger.logObject.getter();
        v55 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v54, v55))
        {
          v56 = swift_slowAlloc();
          *v56 = 134349056;
          *(v56 + 4) = v52;
          _os_log_impl(&dword_23B824000, v54, v55, "Using CircularDeadzoneFilter radius = %{public}f", v56, 0xCu);
          MEMORY[0x23EEB0B70](v56, -1, -1);
        }

        v57 = &type metadata for CircularDeadzoneFilter;
        v58 = &protocol witness table for CircularDeadzoneFilter;
LABEL_39:
        *(a3 + 24) = v57;
        *(a3 + 32) = v58;
        *a3 = v52;
        return;
      }

LABEL_27:
      v52 = 0.2;
      goto LABEL_28;
    }

    goto LABEL_44;
  }

  if ((specialized static StringProtocol.== infix<A>(_:_:)(v16, v17, v19, v18, 0xD000000000000013, 0x800000023B9244B0) & 1) == 0)
  {
    if (specialized static StringProtocol.== infix<A>(_:_:)(v16, v17, v19, v18, 0x6465736F706D6F43, 0xEE007265746C6946))
    {

      static Filter2DFactory.parseComposedFilter(argList:)(v15, a3);

      return;
    }

    v47 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();

    if (!os_log_type_enabled(v47, v63))
    {

      goto LABEL_15;
    }

    v64 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v66 = v19;
    v67 = v65;
    v79[0] = v65;
    *v64 = 136446210;
    v68 = MEMORY[0x23EEAF550](v16, v17, v66, v18);
    v70 = v69;

    v71 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v70, v79);

    *(v64 + 4) = v71;
    _os_log_impl(&dword_23B824000, v47, v63, "Unknown Filter2D type: %{public}s", v64, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v67);
    MEMORY[0x23EEB0B70](v67, -1, -1);
    v51 = v64;
    goto LABEL_14;
  }

  if (v33 == 1)
  {

    v52 = 2.0;
LABEL_36:
    v60 = Logger.logObject.getter();
    v61 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v60, v61))
    {
      v62 = swift_slowAlloc();
      *v62 = 134349056;
      *(v62 + 4) = v52;
      _os_log_impl(&dword_23B824000, v60, v61, "Using SigmoidalDerivativeFilter mu = %{public}f", v62, 0xCu);
      MEMORY[0x23EEB0B70](v62, -1, -1);
    }

    v57 = &type metadata for SigmoidalDerivativeFilter;
    v58 = &protocol witness table for SigmoidalDerivativeFilter;
    goto LABEL_39;
  }

  if (v15[2] >= 2uLL)
  {

    v59 = Float.init(_:)();
    v52 = 2.0;
    if ((v59 & 0x100000000) == 0)
    {
      v52 = *&v59;
    }

    goto LABEL_36;
  }

LABEL_45:
  __break(1u);
}

void static Filter2DFactory.parseComposedFilter(argList:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v6 = a1[2];
  if (v6 < 2)
  {
    __break(1u);
LABEL_43:
    swift_once();
    goto LABEL_14;
  }

  v96 = a2;
  v3 = a1[8];
  v4 = a1[9];
  v5 = a1[10];
  v2 = a1[11];

  v8 = MEMORY[0x23EEAF550](v3, v4, v5, v2);
  v10 = v9;

  *&v104 = v8;
  *(&v104 + 1) = v10;
  MEMORY[0x28223BE20](v11);
  v88 = &v104;
  LOBYTE(v8) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v87, &outlined read-only object #0 of static Filter2DFactory.parseComposedFilter(argList:));

  if (v8)
  {
    v95 = a1;
    swift_bridgeObjectRetain_n();
    if (v6 == 2)
    {
LABEL_7:
      swift_bridgeObjectRelease_n();
      swift_arrayDestroy();
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v20 = type metadata accessor for Logger();
      __swift_project_value_buffer(v20, logger);
      v21 = Logger.logObject.getter();
      v22 = static os_log_type_t.error.getter();
      v23 = os_log_type_enabled(v21, v22);
      v24 = v96;
      if (v23)
      {
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_23B824000, v21, v22, "Can't find the second filter index!", v25, 2u);
        MEMORY[0x23EEB0B70](v25, -1, -1);
      }
    }

    else
    {
      v93 = (2 * v6) | 1;
      v94 = v95 + 4;
      v12 = v95 + 15;
      v13 = 2;
      v14 = 5;
      while (1)
      {
        v15 = *(v12 - 3);
        v16 = *(v12 - 2);
        v17 = *(v12 - 1);
        v18 = *v12;

        *&v104 = MEMORY[0x23EEAF550](v15, v16, v17, v18);
        *(&v104 + 1) = v19;
        MEMORY[0x28223BE20](v104);
        v88 = &v104;
        LOBYTE(v16) = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:), v87, &outlined read-only object #0 of static Filter2DFactory.parseComposedFilter(argList:));

        if (v16)
        {
          break;
        }

        ++v13;
        v14 += 2;
        v12 += 4;
        if (v6 == v13)
        {
          goto LABEL_7;
        }
      }

      swift_arrayDestroy();
      v36 = v94;
      v37 = v95;
      *&v104 = v95;
      *(&v104 + 1) = v94;
      v105 = 1;
      v106 = v14;

      v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss10ArraySliceVySsGMd, &_ss10ArraySliceVySsGMR);
      v39 = lazy protocol witness table accessor for type ArraySlice<Substring> and conformance ArraySlice<A>();
      v42 = lazy protocol witness table accessor for type Substring and conformance Substring(v39, v40, v41);
      v43 = Sequence<>.joined(separator:)();
      v45 = v44;
      static Filter2DFactory.create(factoryString:)(v43, v44, &v101);
      if (v103)
      {

        outlined init with take of Animation(&v101, &v104);

        *&v101 = v37;
        *(&v101 + 1) = v36;
        v102 = v13;
        v103 = v93;
        v46 = Sequence<>.joined(separator:)();
        v48 = v47;
        static Filter2DFactory.create(factoryString:)(v46, v47, &v98);
        if (v100)
        {

          outlined init with take of Animation(&v98, &v101);
          if (one-time initialization token for logger != -1)
          {
            swift_once();
          }

          v91 = v39;
          v49 = type metadata accessor for Logger();
          v92 = __swift_project_value_buffer(v49, logger);
          v50 = Logger.logObject.getter();
          v51 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v50, v51))
          {
            v52 = swift_slowAlloc();
            *v52 = 0;
            _os_log_impl(&dword_23B824000, v50, v51, "Making composed filter...", v52, 2u);
            MEMORY[0x23EEB0B70](v52, -1, -1);
          }

          v90 = v42;

          v53 = Logger.logObject.getter();
          v54 = static os_log_type_t.default.getter();

          v55 = os_log_type_enabled(v53, v54);
          v89 = v38;
          if (v55)
          {
            v56 = swift_slowAlloc();
            v57 = swift_slowAlloc();
            v97 = v57;
            *&v98 = v37;
            *v56 = 136446210;
            *(&v98 + 1) = v36;
            v99 = 1;
            v100 = v14;
            v58 = Sequence<>.joined(separator:)();
            v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v58, v59, &v97);

            *(v56 + 4) = v60;
            _os_log_impl(&dword_23B824000, v53, v54, "First filter: %{public}s", v56, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v57);
            MEMORY[0x23EEB0B70](v57, -1, -1);
            MEMORY[0x23EEB0B70](v56, -1, -1);
          }

          v61 = Logger.logObject.getter();
          v62 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v61, v62))
          {
            v63 = swift_slowAlloc();
            v64 = swift_slowAlloc();
            v97 = v64;
            *&v98 = v37;
            *v63 = 136446210;
            *(&v98 + 1) = v36;
            v99 = v13;
            v100 = v93;
            v65 = Sequence<>.joined(separator:)();
            v67 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v65, v66, &v97);

            *(v63 + 4) = v67;
            _os_log_impl(&dword_23B824000, v61, v62, "Second filter: %{public}s", v63, 0xCu);
            __swift_destroy_boxed_opaque_existential_0Tm(v64);
            MEMORY[0x23EEB0B70](v64, -1, -1);
            MEMORY[0x23EEB0B70](v63, -1, -1);
          }

          v68 = v96;
          v69 = Logger.logObject.getter();
          v70 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v69, v70))
          {
            v71 = swift_slowAlloc();
            *v71 = 0;
            _os_log_impl(&dword_23B824000, v69, v70, "... done making composed filter.", v71, 2u);
            MEMORY[0x23EEB0B70](v71, -1, -1);
          }

          swift_bridgeObjectRelease_n();
          v68[3] = &type metadata for ComposedFilter2D;
          v68[4] = &protocol witness table for ComposedFilter2D;
          v72 = swift_allocObject();
          *v68 = v72;
          outlined init with take of Animation(&v104, v72 + 16);
          outlined init with take of Animation(&v101, v72 + 56);
          return;
        }

        outlined destroy of Filter2D?(&v98);
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v80 = type metadata accessor for Logger();
        __swift_project_value_buffer(v80, logger);

        v81 = Logger.logObject.getter();
        v82 = static os_log_type_t.error.getter();

        v83 = os_log_type_enabled(v81, v82);
        v24 = v96;
        if (v83)
        {
          v84 = swift_slowAlloc();
          v85 = swift_slowAlloc();
          *&v101 = v85;
          *v84 = 136446210;
          v86 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v46, v48, &v101);

          *(v84 + 4) = v86;
          _os_log_impl(&dword_23B824000, v81, v82, "Can't parse the second filter from factory string: %{public}s", v84, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v85);
          MEMORY[0x23EEB0B70](v85, -1, -1);
          MEMORY[0x23EEB0B70](v84, -1, -1);
          swift_bridgeObjectRelease_n();
        }

        else
        {

          swift_bridgeObjectRelease_n();
        }

        __swift_destroy_boxed_opaque_existential_0Tm(&v104);
      }

      else
      {
        swift_bridgeObjectRelease_n();
        outlined destroy of Filter2D?(&v101);
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v73 = type metadata accessor for Logger();
        __swift_project_value_buffer(v73, logger);

        v74 = Logger.logObject.getter();
        v75 = static os_log_type_t.error.getter();

        v76 = os_log_type_enabled(v74, v75);
        v24 = v96;
        if (v76)
        {
          v77 = swift_slowAlloc();
          v78 = swift_slowAlloc();
          *&v104 = v78;
          *v77 = 136446210;
          v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, &v104);

          *(v77 + 4) = v79;
          _os_log_impl(&dword_23B824000, v74, v75, "Can't parse the first filter from factory string: %{public}s", v77, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v78);
          MEMORY[0x23EEB0B70](v78, -1, -1);
          MEMORY[0x23EEB0B70](v77, -1, -1);
        }

        else
        {
        }
      }
    }

    v24[4] = 0;
    *v24 = 0u;
    *(v24 + 1) = 0u;
    return;
  }

  swift_arrayDestroy();
  if (one-time initialization token for logger != -1)
  {
    goto LABEL_43;
  }

LABEL_14:
  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, logger);

  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *&v104 = v30;
    *v29 = 136446210;

    v31 = MEMORY[0x23EEAF550](v3, v4, v5, v2);
    v33 = v32;

    v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v33, &v104);

    *(v29 + 4) = v34;
    _os_log_impl(&dword_23B824000, v27, v28, "Expected first filter name but got: %{public}s", v29, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v30);
    MEMORY[0x23EEB0B70](v30, -1, -1);
    MEMORY[0x23EEB0B70](v29, -1, -1);
  }

  v35 = v96;
  v96[4] = 0;
  *v35 = 0u;
  *(v35 + 1) = 0u;
}

unint64_t specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t (*a3)(void *)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X8>)
{
  v45 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_43;
  }

  v11 = a5;
  v15 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v16 = HIBYTE(a6) & 0xF) : (v16 = a5 & 0xFFFFFFFFFFFFLL), !v16))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v15 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = String.subscript.getter();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, 1, 1, MEMORY[0x277D84F90]);
    v9 = *(v14 + 16);
    a7 = *(v14 + 24);
LABEL_39:
    v10 = v9 + 1;
    if (v9 < a7 >> 1)
    {
LABEL_40:
      *(v14 + 16) = v10;
      v36 = (v14 + 32 * v9);
      v36[4] = v7;
      v36[5] = v11;
      v36[6] = v12;
      v36[7] = v13;
      return v14;
    }

LABEL_43:
    v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((a7 > 1), v10, 1, v14);
    goto LABEL_40;
  }

  v7 = a4;
  v17 = 4 * v16;
  v14 = MEMORY[0x277D84F90];
  v18 = 15;
  while (1)
  {
    v13 = v18 >> 14;
    if (v18 >> 14 == v17)
    {
      goto LABEL_33;
    }

    v41 = v14;
    v39 = a1;
    while (2)
    {
      v42 = v18;
      v14 = v18;
      while (1)
      {
        v19 = String.subscript.getter();
        v12 = v20;
        v44[0] = v19;
        v44[1] = v20;
        v21 = v45(v44);
        if (v8)
        {

          return v14;
        }

        v22 = v21;

        if (v22)
        {
          break;
        }

        v14 = String.index(after:)();
        v13 = v14 >> 14;
        if (v14 >> 14 == v17)
        {
          v14 = v41;
          v18 = v42;
          goto LABEL_33;
        }
      }

      result = v42;
      if (v42 >> 14 == v13 && (a2 & 1) != 0)
      {
        v18 = String.index(after:)();
        v13 = v18 >> 14;
        if (v18 >> 14 != v17)
        {
          continue;
        }

        v14 = v41;
LABEL_33:
        if (v18 >> 14 == v17 && (a2 & 1) != 0)
        {

          return v14;
        }

        if (v17 < v18 >> 14)
        {
          __break(1u);
        }

        else
        {
          v7 = String.subscript.getter();
          v11 = v33;
          v12 = v34;
          v13 = v35;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_38:
            v9 = *(v14 + 16);
            a7 = *(v14 + 24);
            goto LABEL_39;
          }
        }

        v14 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v14 + 16) + 1, 1, v14);
        goto LABEL_38;
      }

      break;
    }

    if (v13 < v42 >> 14)
    {
      break;
    }

    v24 = String.subscript.getter();
    v43 = v25;
    v37 = v27;
    v38 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v41 + 2) + 1, 1, v41);
    }

    v13 = *(v41 + 2);
    v28 = *(v41 + 3);
    v12 = v13 + 1;
    if (v13 >= v28 >> 1)
    {
      v41 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v28 > 1), v13 + 1, 1, v41);
    }

    *(v41 + 2) = v12;
    v29 = &v41[32 * v13];
    *(v29 + 4) = v24;
    *(v29 + 5) = v43;
    *(v29 + 6) = v38;
    *(v29 + 7) = v37;
    v14 = v41;
    v18 = String.index(after:)();
    a1 = v39;
    if (*(v41 + 2) == v39)
    {
      goto LABEL_33;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized static StringProtocol.== infix<A>(_:_:)(unint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(a6) & 0xF;
  }

  else
  {
    v6 = a5 & 0xFFFFFFFFFFFFLL;
  }

  if (a3 == a5 && a4 == a6 && !(a1 >> 16) && a2 >> 16 == v6)
  {
    return 1;
  }

  else
  {
    return _stringCompareInternal(_:_:_:_:expecting:)() & 1;
  }
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

{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

unint64_t lazy protocol witness table accessor for type ArraySlice<Substring> and conformance ArraySlice<A>()
{
  result = lazy protocol witness table cache variable for type ArraySlice<Substring> and conformance ArraySlice<A>;
  if (!lazy protocol witness table cache variable for type ArraySlice<Substring> and conformance ArraySlice<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss10ArraySliceVySsGMd, &_ss10ArraySliceVySsGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ArraySlice<Substring> and conformance ArraySlice<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Substring and conformance Substring(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = lazy protocol witness table cache variable for type Substring and conformance Substring;
  if (!lazy protocol witness table cache variable for type Substring and conformance Substring)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Substring and conformance Substring);
  }

  return result;
}

uint64_t outlined destroy of Filter2D?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI8Filter2D_pSgMd, &_s19_RealityKit_SwiftUI8Filter2D_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

__n128 __swift_memcpy80_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 64);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 64) = v4;
  *(a1 + 16) = result;
  *(a1 + 32) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ComposedFilter2D(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t storeEnumTagSinglePayload for ComposedFilter2D(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed MTLCommandBuffer) -> ()(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v3 = swift_unknownObjectRetain();
  v2(v3);

  return swift_unknownObjectRelease();
}

id one-time initialization function for bundle()
{
  type metadata accessor for FullscreenCoveragePointsRenderer(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  static FullscreenCoveragePointsRenderer.bundle = result;
  return result;
}

{
  type metadata accessor for PostProcessRenderManager(0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  static PostProcessRenderManager.bundle = result;
  return result;
}

{
  type metadata accessor for SoundManager();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  result = [objc_opt_self() bundleForClass_];
  static SoundManager.bundle = result;
  return result;
}

{
  if (one-time initialization token for bundle != -1)
  {
    swift_once();
  }

  v1 = static BaseRenderer.bundle;
  static CaptureCircleRenderer.bundle = static BaseRenderer.bundle;

  return v1;
}

id one-time initialization function for mtlDevice()
{
  result = MTLCreateSystemDefaultDevice();
  if (result)
  {
    static FullscreenCoveragePointsRenderer.mtlDevice = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  result = MTLCreateSystemDefaultDevice();
  if (result)
  {
    static VoxelRenderer.mtlDevice = result;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id one-time initialization function for mtlLibrary()
{
  result = closure #1 in variable initialization expression of static FullscreenCoveragePointsRenderer.mtlLibrary();
  static FullscreenCoveragePointsRenderer.mtlLibrary = result;
  return result;
}

{
  result = closure #1 in variable initialization expression of static VoxelRenderer.mtlLibrary();
  static VoxelRenderer.mtlLibrary = result;
  return result;
}

id closure #1 in variable initialization expression of static FullscreenCoveragePointsRenderer.mtlLibrary()
{
  v7[1] = *MEMORY[0x277D85DE8];
  if (one-time initialization token for mtlDevice != -1)
  {
    swift_once();
  }

  v0 = static FullscreenCoveragePointsRenderer.mtlDevice;
  if (one-time initialization token for bundle != -1)
  {
    v6 = static FullscreenCoveragePointsRenderer.mtlDevice;
    swift_once();
    v0 = v6;
  }

  v7[0] = 0;
  v1 = [v0 newDefaultLibraryWithBundle:static FullscreenCoveragePointsRenderer.bundle error:v7];
  if (v1)
  {
    v2 = v7[0];
  }

  else
  {
    v3 = v7[0];
    v4 = _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v1;
}

uint64_t FullscreenCoveragePointsRenderer.voxelRenderer.getter()
{
  v1 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer____lazy_storage___voxelRenderer;
  v2 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer____lazy_storage___voxelRenderer);
  v3 = v2;
  if (v2 == 1)
  {
    v3 = closure #1 in FullscreenCoveragePointsRenderer.voxelRenderer.getter(v0);
    v4 = *(v0 + v1);
    *(v0 + v1) = v3;

    outlined consume of CaptureCircleRenderer??(v4);
  }

  outlined copy of CaptureCircleRenderer??(v2);
  return v3;
}

uint64_t closure #1 in FullscreenCoveragePointsRenderer.voxelRenderer.getter(uint64_t a1)
{
  v1 = *(a1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_view);
  type metadata accessor for VoxelRenderer();
  swift_allocObject();
  return VoxelRenderer.init(view:)(v1);
}

char *FullscreenCoveragePointsRenderer.init(pointCloud:)(uint64_t a1)
{
  v3 = v2;
  v5 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_coveragePointCloud;
  v6 = type metadata accessor for CoveragePointCloud(0);
  (*(*(v6 - 8) + 56))(&v1[v5], 1, 1, v6);
  v7 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_coveragePoints;
  v8 = type metadata accessor for ObjectCaptureSession.Frame.PointCloud();
  (*(*(v8 - 8) + 56))(&v1[v7], 1, 1, v8);
  v9 = &v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_objectToWorld];
  v10 = *MEMORY[0x277D860B8];
  v11 = *(MEMORY[0x277D860B8] + 16);
  v12 = *(MEMORY[0x277D860B8] + 32);
  v13 = *(MEMORY[0x277D860B8] + 48);
  *v9 = *MEMORY[0x277D860B8];
  v9[1] = v11;
  v9[2] = v12;
  v9[3] = v13;
  v14 = &v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_objectToWorldUnscaled];
  *v14 = v10;
  v14[1] = v11;
  v14[2] = v12;
  v14[3] = v13;
  v15 = &v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_viewToWorld];
  *v15 = v10;
  v15[1] = v11;
  v15[2] = v12;
  v15[3] = v13;
  v16 = &v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_projection];
  *v16 = v10;
  v16[1] = v11;
  v16[2] = v12;
  v16[3] = v13;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_lookAtBoxWorldProvider] = 0;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_commandQueue] = 0;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_renderPrimitivePointsPipeline] = 0;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer____lazy_storage___voxelRenderer] = 1;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_cameraFrustumRendererForShots] = 0;
  v17 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_renderStyle;
  v1[v17] = specialized static ExperimentSettings.loadPointCloudRenderStyle(default:)(0) & 1;
  v18 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_inFlightQueue;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI13InFlightQueueCyAA32FullscreenCoveragePointsRendererC13ResourceEntry33_EBAA0A78FD80C51EE584E033B8F33CA2LLVGMd, &_s19_RealityKit_SwiftUI13InFlightQueueCyAA32FullscreenCoveragePointsRendererC13ResourceEntry33_EBAA0A78FD80C51EE584E033B8F33CA2LLVGMR);
  v19 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMd, &_ss13ManagedBufferCyytSo16os_unfair_lock_sVGMR);
  v20 = swift_allocObject();
  *(v20 + 16) = 0;
  v21 = MEMORY[0x277D84F90];
  v19[2] = v20;
  v19[3] = 0;
  v19[4] = v21;
  *&v1[v18] = v19;
  v22 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_inFlightLock;
  v23 = swift_allocObject();
  *&v1[v22] = v23;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_depthStencilState] = 0;
  *(v23 + 16) = 0;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_baseRenderer] = 0;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_viewportSize] = vdupq_n_s64(0x4059000000000000uLL);
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_turnTableCameraControl] = 0;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_dragGesture] = 0;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_transformProvider + 8] = 0;
  swift_unknownObjectWeakInit();
  v24 = &v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_backgroundColor];
  *v24 = 0u;
  v24[1] = 0u;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_viewportFOVDegs] = 1114636288;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_sphereRadiusGain] = 1045220557;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_localTime] = 0;
  v25 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_colorScheme;
  v26 = *MEMORY[0x277CDF3D0];
  v27 = type metadata accessor for ColorScheme();
  (*(*(v27 - 8) + 104))(&v1[v25], v26, v27);
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_cameraPathRenderer] = 0;
  v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_showShotLocations] = 0;
  if (one-time initialization token for mtlDevice != -1)
  {
    swift_once();
  }

  v28 = static FullscreenCoveragePointsRenderer.mtlDevice;
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_device] = static FullscreenCoveragePointsRenderer.mtlDevice;
  v29 = objc_allocWithZone(MEMORY[0x277CD71F8]);
  swift_unknownObjectRetain();
  v30 = [v29 initWithFrame:v28 device:{0.0, 0.0, 0.0, 0.0}];
  *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_view] = v30;
  v47.receiver = v1;
  v47.super_class = type metadata accessor for FullscreenCoveragePointsRenderer(0);
  v31 = v30;
  v32 = objc_msgSendSuper2(&v47, sel_init);
  FullscreenCoveragePointsRenderer.initPointPrimitiveRenderPipeline()(v32, v33, v34);
  if (v3)
  {
    outlined destroy of PerspectiveCameraComponent?(a1, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);

    return v32;
  }

  [*&v32[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_view] setDelegate_];
  v35 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_device;
  type metadata accessor for BaseRenderer();
  swift_allocObject();
  v36 = swift_unknownObjectRetain();
  specialized BaseRenderer.init(device:width:height:)(v36, 100, 100);
  v38 = v37;
  swift_unknownObjectRelease();
  v39 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_baseRenderer;
  *&v32[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_baseRenderer] = v38;

  if (*&v32[v39])
  {
    v41 = *&v32[v35];
    v42 = objc_allocWithZone(MEMORY[0x277CD6D60]);
    swift_unknownObjectRetain();
    v43 = [v42 init];
    [v43 setDepthCompareFunction_];
    [v43 setDepthWriteEnabled_];
    v44 = [v41 newDepthStencilStateWithDescriptor_];
    swift_unknownObjectRelease();

    *&v32[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_depthStencilState] = v44;
    swift_unknownObjectRelease();
    v45 = [v31 layer];
    [v45 setOpaque_];

    v46 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_coveragePointCloud;
    swift_beginAccess();
    outlined assign with copy of CoveragePointCloud?(a1, &v32[v46]);
    swift_endAccess();
    FullscreenCoveragePointsRenderer.prepareTurnTable()();

    outlined destroy of PerspectiveCameraComponent?(a1, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
    return v32;
  }

  __break(1u);
  return result;
}

id FullscreenCoveragePointsRenderer.__deallocating_deinit()
{
  v1 = *&v0[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_dragGesture];
  *&v0[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_dragGesture] = 0;

  *&v0[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_transformProvider + 8] = 0;
  swift_unknownObjectWeakAssign();
  v3.receiver = v0;
  v3.super_class = type metadata accessor for FullscreenCoveragePointsRenderer(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

void FullscreenCoveragePointsRenderer.colorScheme.didset()
{
  v1 = type metadata accessor for ColorScheme();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, logger);
  v6 = v0;
  v16 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v16, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v8 = 136315138;
    v10 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_colorScheme;
    swift_beginAccess();
    (*(v2 + 16))(v4, &v6[v10], v1);
    v11 = String.init<A>(describing:)();
    v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v17);

    *(v8 + 4) = v13;
    _os_log_impl(&dword_23B824000, v16, v7, "colorScheme = %s", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v9);
    MEMORY[0x23EEB0B70](v9, -1, -1);
    MEMORY[0x23EEB0B70](v8, -1, -1);
  }

  else
  {
    v14 = v16;
  }
}

void FullscreenCoveragePointsRenderer.setRenderPointCloud(pointCloud:)(uint64_t a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v28 - v5;
  v7 = type metadata accessor for CoveragePointCloud(0);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v28 - v12;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, logger);
  outlined init with copy of CoveragePointCloud(a1, v13, type metadata accessor for CoveragePointCloud);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();
  v17 = os_log_type_enabled(v15, v16);
  v30 = v7;
  if (v17)
  {
    v18 = swift_slowAlloc();
    v29 = v2;
    v19 = v18;
    v20 = swift_slowAlloc();
    v31[0] = v20;
    *v19 = 141558274;
    *(v19 + 4) = 1752392040;
    *(v19 + 12) = 2080;
    outlined init with copy of CoveragePointCloud(v13, v11, type metadata accessor for CoveragePointCloud);
    v21 = String.init<A>(describing:)();
    v22 = v8;
    v24 = v23;
    _s19_RealityKit_SwiftUI18CoveragePointCloudVWOhTm_0(v13, type metadata accessor for CoveragePointCloud);
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v24, v31);
    v8 = v22;

    *(v19 + 14) = v25;
    _os_log_impl(&dword_23B824000, v15, v16, "Setting renderPointCloud: %{mask.hash}s", v19, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
    MEMORY[0x23EEB0B70](v20, -1, -1);
    v26 = v19;
    v2 = v29;
    MEMORY[0x23EEB0B70](v26, -1, -1);
  }

  else
  {

    _s19_RealityKit_SwiftUI18CoveragePointCloudVWOhTm_0(v13, type metadata accessor for CoveragePointCloud);
  }

  if (CoveragePointCloud.isValid()())
  {
    outlined init with copy of CoveragePointCloud(a1, v6, type metadata accessor for CoveragePointCloud);
    (*(v8 + 56))(v6, 0, 1, v30);
    v27 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_coveragePointCloud;
    swift_beginAccess();
    outlined assign with take of Cancellable?(v6, v2 + v27, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
    swift_endAccess();
    FullscreenCoveragePointsRenderer.updateInternal()();
  }
}

uint64_t FullscreenCoveragePointsRenderer.setCameraFrustumRendererForShots(to:)(uint64_t a1)
{
  v2 = v1;
  *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_cameraFrustumRendererForShots) = a1;

  if (a1)
  {
    v5 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_device);
    v6 = *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_view);

    result = CameraFrustumRendererForShots.setup(device:pixelFormat:)(v5, [v6 colorPixelFormat]);
    v7 = *(a1 + 24);
  }

  else
  {
    v7 = 0;
  }

  *(v2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_showShotLocations) = v7;
  return result;
}

Swift::Void __swiftcall FullscreenCoveragePointsRenderer.mtkView(_:drawableSizeWillChange:)(MTKView _, CGSize drawableSizeWillChange)
{
  v3 = v2;
  height = drawableSizeWillChange.height;
  width = drawableSizeWillChange.width;
  type metadata accessor for NSObject();
  if (static NSObject.== infix(_:_:)())
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    __swift_project_value_buffer(v6, logger);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v19 = v10;
      *v9 = 136446210;
      type metadata accessor for CGSize(0);
      v11 = String.init<A>(describing:)();
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v19);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_23B824000, v7, v8, "mtkView: size changed!  newSize=%{public}s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v10);
      MEMORY[0x23EEB0B70](v10, -1, -1);
      MEMORY[0x23EEB0B70](v9, -1, -1);
    }

    v14 = (v3 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_viewportSize);
    *v14 = width;
    v14[1] = height;
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, logger);
    oslog = Logger.logObject.getter();
    v16 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(oslog, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_23B824000, oslog, v16, "mtkView delegate expected a different view.  Ignoring...", v17, 2u);
      MEMORY[0x23EEB0B70](v17, -1, -1);
    }
  }
}

void FullscreenCoveragePointsRenderer.prepareTurnTable()()
{
  v1 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_23B824000, v3, v4, "Prepare turntable camera control!", v5, 2u);
    MEMORY[0x23EEB0B70](v5, -1, -1);
  }

  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of FullscreenCoveragePointsRenderer.prepareTurnTable());
  v22 = v6;
  type metadata accessor for TurnTableCameraControl();
  v7 = swift_allocObject();
  *(v7 + 24) = 0;
  swift_unknownObjectWeakInit();
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of FullscreenCoveragePointsRenderer.prepareTurnTable());
  *(v7 + 80) = v8;
  *(v7 + 128) = 0;
  *(v7 + 136) = 0;
  *(v7 + 144) = 1;
  Transform.init()();
  *(v7 + 160) = v9;
  *(v7 + 176) = v10;
  *(v7 + 192) = v11;
  if (one-time initialization token for minElevation != -1)
  {
    swift_once();
  }

  v12 = static TurnTableCameraControl.SphericalCoordinates.minElevation;
  if (*&static TurnTableCameraControl.SphericalCoordinates.minElevation > 1.5608)
  {
    __break(1u);
  }

  else
  {
    v13 = 0.0;
    if (*&static TurnTableCameraControl.SphericalCoordinates.minElevation >= 0.0)
    {
      v13 = *&static TurnTableCameraControl.SphericalCoordinates.minElevation;
    }

    *(v7 + 40) = 0;
    *(v7 + 44) = v13;
    *(v7 + 48) = v12;
    *(v7 + 52) = xmmword_23B920F20;
    *(v7 + 80) = v22;
    *(v7 + 32) = vdup_n_s32(0x3C23D70Au);
    *(v7 + 24) = 0;
    swift_unknownObjectWeakAssign();
    v14 = *(v7 + 64);
    *(v7 + 96) = *(v7 + 40);
    *(v7 + 112) = *(v7 + 56);
    *(v7 + 120) = v14;
    v15 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_turnTableCameraControl;
    *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_turnTableCameraControl) = v7;

    v16 = objc_allocWithZone(type metadata accessor for DragGestureRecognizer());
    v17 = specialized DragGestureRecognizer.init(draggable:)(v7, v16);
    v18 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_dragGesture;
    if (*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_dragGesture))
    {
      [*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_view) removeGestureRecognizer_];
      v19 = *(v1 + v18);
    }

    else
    {
      v19 = 0;
    }

    *(v1 + v18) = v17;
    v20 = v17;

    [*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_view) addGestureRecognizer_];
    v21 = &protocol witness table for TurnTableCameraControl;
    if (!*(v1 + v15))
    {
      v21 = 0;
    }

    *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_transformProvider + 8) = v21;

    swift_unknownObjectWeakAssign();
  }
}

void FullscreenCoveragePointsRenderer.updateInternal()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v160.n128_u64[0] = &v152 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v2);
  v159.i64[0] = &v152 - v5;
  v6 = MEMORY[0x28223BE20](v4);
  v8 = &v152 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v152 - v9;
  v11 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_coveragePointCloud;
  swift_beginAccess();
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v0 + v11, v10, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  v12 = type metadata accessor for CoveragePointCloud(0);
  v13 = *(*(v12 - 8) + 48);
  v14 = v13(v10, 1, v12);
  outlined destroy of PerspectiveCameraComponent?(v10, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  if (v14 == 1)
  {
    return;
  }

  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v0 + v11, v8, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  if (v13(v8, 1, v12) == 1)
  {
    goto LABEL_38;
  }

  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v152 - v16;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v8, &v152 - v16, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
  _s19_RealityKit_SwiftUI18CoveragePointCloudVWOhTm_0(v8, type metadata accessor for CoveragePointCloud);
  v18 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_coveragePoints;
  swift_beginAccess();
  outlined assign with take of Cancellable?(v17, v0 + v18, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
  swift_endAccess();
  v19 = v0;
  v20 = v0 + v11;
  v21 = v159.i64[0];
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v20, v159.i64[0], &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  if (v13(v21, 1, v12) == 1)
  {
LABEL_39:
    __break(1u);
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  v22 = v12;
  *v23.i64 = CoveragePointCloud.bboxWorld.getter();
  v158 = v23;
  v157 = v24;
  v156 = v25;
  v155 = v26;
  _s19_RealityKit_SwiftUI18CoveragePointCloudVWOhTm_0(v21, type metadata accessor for CoveragePointCloud);
  *v27.i64 = Transform.init(matrix:)();
  v30 = v27;
  v31 = v29;
  if (one-time initialization token for automaticBoundingBoxPaddingFactor != -1)
  {
    v159 = v28;
    v158 = v29;
    v157 = v30;
    swift_once();
    v30 = v157;
    v31 = v158;
    v28 = v159;
  }

  v32.n128_u64[0] = vmulq_n_f32(v30, 1.0 / *&static BoundingBoxHelpers.automaticBoundingBoxPaddingFactor).u64[0];
  v32.n128_u64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(1.0 / *&static BoundingBoxHelpers.automaticBoundingBoxPaddingFactor, v30, 2));
  *v33.i64 = specialized simd_float4x4.init(translation:rotation:scale:)(v31, v28, v32);
  v34 = v19;
  v35 = (v19 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_objectToWorld);
  *v35 = v33;
  v35[1] = v36;
  v35[2] = v37;
  v35[3] = v38;
  v39 = v160.n128_u64[0];
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v19 + v11, v160.n128_i64[0], &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  if (v13(v39, 1, v22) == 1)
  {
    goto LABEL_40;
  }

  v40 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  v155.i64[0] = &v152;
  v41 = *(*(v40 - 8) + 64);
  MEMORY[0x28223BE20](v40 - 8);
  v43 = &v152 - v42;
  v44 = *(v22 + 20);
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v39 + v44, &v152 - v42, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  v45 = type metadata accessor for ObjectCaptureSession.Frame.Object();
  v46 = *(v45 - 8);
  v47 = *(v46 + 48);
  if (v47(v43, 1, v45) == 1)
  {
    v48 = outlined destroy of PerspectiveCameraComponent?(v43, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
    v49 = *(MEMORY[0x277D860B8] + 16);
    v159 = *MEMORY[0x277D860B8];
    v158 = v49;
    v50 = *(MEMORY[0x277D860B8] + 48);
    v157 = *(MEMORY[0x277D860B8] + 32);
    v156 = v50;
  }

  else
  {
    ObjectCaptureSession.Frame.Object.transform.getter();
    v159 = v51;
    v158 = v52;
    v157 = v53;
    v156 = v54;
    v48 = (*(v46 + 8))(v43, v45);
  }

  MEMORY[0x28223BE20](v48);
  v55 = &v152 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v160.n128_u64[0];
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v160.n128_u64[0] + v44, v55, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  if (v47(v55, 1, v45) == 1)
  {
    outlined destroy of PerspectiveCameraComponent?(v55, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV0C0VSgMR);
  }

  else
  {
    ObjectCaptureSession.Frame.Object.boundingBox.getter();
    v155 = v57;
    v154 = v58;
    v153 = v59;
    v152 = v60;
    (*(v46 + 8))(v55, v45);
  }

  Transform.init(matrix:)();
  v155 = v61;
  v154 = v62;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of CoveragePointCloud.objectToInitialBoxWorld.getter);
  *v64.i64 = specialized simd_float4x4.init(translation:rotation:scale:)(v154, v155, v63);
  v155 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v159, v64.f32[0]), v158, *v64.f32, 1), v157, v64, 2), v156, v64, 3);
  v154 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v159, v65.f32[0]), v158, *v65.f32, 1), v157, v65, 2), v156, v65, 3);
  v153 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v159, v66.f32[0]), v158, *v66.f32, 1), v157, v66, 2), v156, v66, 3);
  v159 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v159, v67.f32[0]), v158, *v67.f32, 1), v157, v67, 2), v156, v67, 3);
  _s19_RealityKit_SwiftUI18CoveragePointCloudVWOhTm_0(v56, type metadata accessor for CoveragePointCloud);
  v68 = (v34 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_objectToWorldUnscaled);
  v69 = v154;
  *v68 = v155;
  v68[1] = v69;
  v70 = v159;
  v68[2] = v153;
  v68[3] = v70;
  v71 = v35[1];
  v160 = *v35;
  v159 = v71;
  v72 = v35[3];
  v158 = v35[2];
  v157 = v72;
  v73 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_cameraFrustumRendererForShots;
  v74 = *(v34 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_cameraFrustumRendererForShots);
  if (v74)
  {
    if (*(v74 + 24) == 1)
    {
      Strong = swift_unknownObjectWeakLoadStrong();
      if (Strong)
      {
        v76 = Strong + OBJC_IVAR____TtC19_RealityKit_SwiftUI17CameraPathManager_cameraPosesBoundingBox;
        v77 = Strong;
        swift_beginAccess();
        v79 = *v76;
        v78 = *(v76 + 8);
        v81 = *(v76 + 16);
        v80 = *(v76 + 24);
        LOBYTE(v76) = *(v76 + 32);

        if ((v76 & 1) == 0)
        {
          v82.i64[0] = v79;
          v82.i64[1] = v78;
          v156 = v82;
          v82.i64[0] = v81;
          v82.i64[1] = v80;
          v155 = v82;
          _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of FullscreenCoveragePointsRenderer.updateInternal());
          v154 = v83;
          _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of FullscreenCoveragePointsRenderer.updateInternal());
          BoundingBox.init(min:max:)();
          BoundingBox.transformed(by:)();
          v84 = BoundingBox.union(_:)();
          v87.n128_f64[0] = specialized static BoundingBoxHelpers.asSRTMatrix(box:)(v84, v85, v86);
          v160 = v87;
          v159 = v88;
          v158 = v89;
          v157 = v90;
        }
      }
    }
  }

  v91 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_lookAtBoxWorldProvider;
  v92 = *(v34 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_lookAtBoxWorldProvider);
  if (!v92)
  {
    *v102.i64 = Transform.init(matrix:)();
    v155 = v102;
    v154 = v103;
    v156 = v104;
    v101 = *(v34 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_localTime);
LABEL_25:
    type metadata accessor for AnimatedTargetTransformProvider();
    v105 = swift_allocObject();
    *(v105 + 208) = 0u;
    *(v105 + 224) = 0u;
    *(v105 + 240) = 0u;
    *(v105 + 192) = 0x3FC999999999999ALL;
    v161 = 1;
    *(v105 + 256) = 0;
    *(v105 + 264) = 1;
    v106 = v155;
    v107 = v154;
    *(v105 + 96) = v155;
    *(v105 + 112) = v107;
    *(v105 + 32) = vdupq_n_s64(0xFFF0000000000000);
    *(v105 + 48) = v106;
    v108 = v156;
    *(v105 + 64) = v107;
    *(v105 + 80) = v108;
    *(v105 + 128) = v108;
    *(v105 + 144) = v106;
    *(v105 + 160) = v107;
    *(v105 + 176) = v108;
    *(v105 + 24) = v101;
    *(v105 + 16) = 0x4000000000000000;
    *(v34 + v91) = v105;

    goto LABEL_26;
  }

  v93 = *(v34 + v73);
  if (!v93)
  {
    goto LABEL_27;
  }

  v94 = *(v93 + 24);
  if (*(v34 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_showShotLocations) != v94)
  {
    *(v34 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_showShotLocations) = v94;
    v95 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_localTime;
    v96 = *(v34 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_localTime);
    if (*(v92 + 24) > v96)
    {
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    *(v92 + 24) = v96;

    AnimatedTargetTransformProvider.updateAnimation()();
    v97 = *(v92 + 64);
    v156 = *(v92 + 48);
    v155 = v97;
    v154 = *(v92 + 80);

    specialized simd_float4x4.init(translation:rotation:scale:)(v154, v155, v156);
    *v98.i64 = Transform.init(matrix:)();
    v155 = v98;
    v154 = v99;
    v156 = v100;

    v101 = *(v34 + v95);
    goto LABEL_25;
  }

LABEL_26:
  v92 = *(v34 + v91);
  if (!v92)
  {
LABEL_42:
    __break(1u);
    return;
  }

LABEL_27:

  *&v109 = Transform.init(matrix:)();
  v110 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_localTime;
  v111 = *(v34 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_localTime);
  v161 = 0;
  *(v92 + 208) = v109;
  *(v92 + 224) = v112;
  *(v92 + 240) = v113;
  *(v92 + 256) = v111 + 0.5;
  *(v92 + 264) = 0;
  AnimatedTargetTransformProvider.updateAnimation()();

  v114 = *(v34 + v91);
  if (!v114)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v115 = *(v34 + v110);
  if (*(v114 + 24) > v115)
  {
    __break(1u);
    goto LABEL_37;
  }

  *(v114 + 24) = v115;

  AnimatedTargetTransformProvider.updateAnimation()();
  v116 = *(v114 + 64);
  v160 = *(v114 + 48);
  v159 = v116;
  v158 = *(v114 + 80);

  v117.n128_f64[0] = specialized simd_float4x4.init(translation:rotation:scale:)(v158, v159, v160);
  v160 = v117;
  v159 = v118;
  v158 = v119;
  v157 = v120;
  *v35 = v117;
  v35[1] = v118;
  v35[2] = v119;
  v35[3] = v120;
  v121 = (*(v34 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_viewportFOVDegs) * 3.1416) / 180.0;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of static BoundingBoxHelpers.getBoundingSphere(boxWorld:));
  *v122.i64 = Transform.init(matrix:)();
  v159 = v122;
  v123.n128_f64[0] = Transform.init(matrix:)();
  v160 = v123;
  v158 = v124;
  v157 = v125;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23B91BFD0;
  *(inited + 32) = v121;
  *(inited + 36) = v121;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(inited);
  v156 = v127;
  swift_setDeallocating();
  v128 = vmulq_f32(v160, v160);
  v129 = sqrtf(v128.f32[2] + vaddv_f32(*v128.f32));
  v130 = v156.f32[1];
  if (v156.f32[1] >= v156.f32[0])
  {
    v130 = v156.f32[0];
  }

  v131 = (((v129 * 0.5) * 1.1) / tanf(v130 * 0.5)) + 0.001;
  v132.n128_f64[0] = specialized simd_float4x4.init(translation:rotation:scale:)(v157, v158, v160);
  v160 = v132;
  v158 = v133;
  v157 = v134;
  v156 = v135;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of static BoundingBoxHelpers.getBoundingSphere(boxWorld:));
  *v136.i64 = Transform.init(matrix:)();
  v137 = vzip1_s32(*v159.f32, *v136.i8);
  v138 = vzip2_s32(*v159.f32, *v136.i8);
  *v136.i8 = vzip1_s32(*&vextq_s8(v159, v159, 8uLL), *&vextq_s8(v136, v136, 8uLL));
  *v136.i8 = vmul_f32(vsqrt_f32(vadd_f32(vmul_f32(*v136.i8, *v136.i8), vadd_f32(vmul_f32(v137, v137), vmul_f32(v138, v138)))), 0x3F0000003F000000);
  v139 = *v136.i32 + (v131 + *&v136.i32[1]);
  v140 = *(v34 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_viewportSize) / *(v34 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_viewportSize + 8);
  v141 = 1.0 / tanf(v121 * 0.5);
  v142.i64[0] = 0;
  v142.i32[3] = 0;
  *&v143 = v141 / v140;
  LODWORD(v144) = 0;
  *(&v144 + 1) = v141;
  v145.i64[0] = 0;
  v145.f32[2] = v139 / (0.001 - v139);
  v145.i32[3] = -1.0;
  v142.f32[2] = v145.f32[2] * 0.001;
  v146 = (v34 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_projection);
  *v146 = v143;
  v146[1] = v144;
  v146[2] = v145;
  v146[3] = v142;
  FullscreenCoveragePointsRenderer.updateTurnTable()();
  if (*(v34 + v73))
  {
    v147 = *(v34 + v110);
    v162 = __invert_f4(*(v34 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_viewToWorld));
    v160 = v162.columns[0];
    v159 = v162.columns[1];
    v158 = v162.columns[2];
    v157 = v162.columns[3];
    v162.columns[0] = v146[1];
    v156 = *v146;
    v155 = v162.columns[0];
    v162.columns[0] = v146[3];
    v154 = v146[2];
    v153 = v162.columns[0];

    CameraFrustumRendererForShots.update(time:worldToView:viewToClip:)(v147, v148, v149);
  }

  if (*(v34 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_cameraPathRenderer))
  {
    v163 = __invert_f4(*(v34 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_viewToWorld));
    v160 = v163.columns[0];
    v159 = v163.columns[1];
    v158 = v163.columns[2];
    v157 = v163.columns[3];
    v163.columns[0] = v146[1];
    v156 = *v146;
    v155 = v163.columns[0];
    v163.columns[0] = v146[3];
    v154 = v146[2];
    v153 = v163.columns[0];

    CameraPathRenderer.update(worldToView:viewToClip:)(v150, v151);
  }
}

void FullscreenCoveragePointsRenderer.updateTurnTable()()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_objectToWorld);
  *v3.i64 = Transform.init(matrix:)();
  v57 = v3;
  v4 = (v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_projection);
  v5 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_projection);
  v6 = *(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_projection + 20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySfGMd, &_ss23_ContiguousArrayStorageCySfGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_23B91BFD0;
  v70 = atanf(1.0 / v5);
  v8 = atanf(1.0 / v6);
  *(inited + 32) = vadd_f32(__PAIR64__(LODWORD(v8), LODWORD(v70)), __PAIR64__(LODWORD(v8), LODWORD(v70)));
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(inited);
  swift_setDeallocating();
  v60 = *v2;
  v63 = v2[1];
  v66 = v2[2];
  v71 = v2[3];
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of FullscreenCoveragePointsRenderer.updateTurnTable());
  v72 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v60, v9.f32[0]), v63, *v9.f32, 1), v66, v9, 2), v71, v9, 3);
  v10 = swift_initStackObject();
  *(v10 + 16) = xmmword_23B91A6D0;
  *(v10 + 32) = v72.i64[0];
  *(v10 + 40) = v72.i32[2];
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(v10);
  v73 = v11;
  swift_setDeallocating();
  v12 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_turnTableCameraControl;
  v13 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_turnTableCameraControl);
  if (!v13)
  {
    __break(1u);
    goto LABEL_16;
  }

  v13[5] = v73;
  TurnTableCameraControl.update()();
  v14 = *(v1 + v12);
  if (!v14)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  v15 = v14[15];
  v16 = fminf(v14[16], 1.0);
  if (v16 > v15)
  {
    v15 = v16;
  }

  v14[14] = v15;
  TurnTableCameraControl.update()();
  v17 = *(v1 + v12);
  if (!v17)
  {
    goto LABEL_17;
  }

  v18 = vsubq_f32(v17[12], v73);
  v19 = vmulq_f32(v18, v18);
  *&v20 = v19.f32[2] + vaddv_f32(*v19.f32);
  *v19.f32 = vrsqrte_f32(v20);
  *v19.f32 = vmul_f32(*v19.f32, vrsqrts_f32(v20, vmul_f32(*v19.f32, *v19.f32)));
  v53 = vmulq_n_f32(v18, vmul_f32(*v19.f32, vrsqrts_f32(v20, vmul_f32(*v19.f32, *v19.f32))).f32[0]);
  v67 = 0.0 - v53.f32[2];
  v21 = *v4;
  v22 = v4[5];
  v23 = v4[14];
  v24 = v4[10];
  Transform.init()();
  v61 = v25;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of FullscreenCoveragePointsRenderer.updateTurnTable());
  v52 = v26;
  v27 = swift_initStackObject();
  *(v27 + 16) = xmmword_23B91BFD0;
  v54 = atanf(1.0 / v21);
  v28 = atanf(1.0 / v22);
  *(v27 + 32) = vadd_f32(__PAIR64__(LODWORD(v28), LODWORD(v54)), __PAIR64__(LODWORD(v28), LODWORD(v54)));
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(v27);
  v55 = v29;
  swift_setDeallocating();
  v30 = vmulq_f32(v57, v57);
  v31 = sqrtf(v30.f32[2] + vaddv_f32(*v30.f32));
  v32 = *(&v55 + 1);
  if (*(&v55 + 1) >= *&v55)
  {
    v32 = *&v55;
  }

  v58 = (v23 / v24) + (((v31 * 0.5) * 1.1) / tanf(v32 * 0.5));
  v33 = swift_initStackObject();
  *(v33 + 16) = xmmword_23B91A6D0;
  *v34.f32 = vsub_f32(0, *v53.f32);
  v56 = *v34.f32;
  v34.i64[1] = LODWORD(v67);
  *v35.i64 = simd_quaternion(v52, v34);
  v64 = v35;
  *(v33 + 32) = vsub_f32(*v73.f32, vmul_n_f32(v56, v58));
  *(v33 + 40) = v73.f32[2] - (v67 * v58);
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(v33);
  v68 = v36;
  swift_setDeallocating();
  *v37.i64 = specialized simd_float4x4.init(translation:rotation:scale:)(v68, v64, v61);
  v59 = v37;
  v62 = v38;
  v65 = v39;
  v69 = v40;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #2 of FullscreenCoveragePointsRenderer.updateTurnTable());
  v42 = *(v1 + v12);
  if (!v42)
  {
    goto LABEL_18;
  }

  v43 = vsubq_f32(vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v59, v41.f32[0]), v62, *v41.f32, 1), v65, v41, 2), v69, v41, 3), v73);
  v44 = vmulq_f32(v43, v43);
  v45 = sqrtf(v44.f32[2] + vaddv_f32(*v44.f32));
  if (v42[16] < v45)
  {
    v45 = v42[16];
  }

  if (v45 <= v42[15])
  {
    v45 = v42[15];
  }

  v42[14] = v45;
  TurnTableCameraControl.update()();
  v46 = *(v1 + v12);
  if (v46)
  {
    *&v47 = specialized simd_float4x4.init(translation:rotation:scale:)(*(v46 + 192), *(v46 + 176), *(v46 + 160));
    v48 = (v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_viewToWorld);
    *v48 = v47;
    v48[1] = v49;
    v48[2] = v50;
    v48[3] = v51;
    return;
  }

LABEL_19:
  __break(1u);
}

Swift::Void __swiftcall FullscreenCoveragePointsRenderer.draw(in:)(MTKView in)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v12 - v4;
  v6 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_coveragePointCloud;
  swift_beginAccess();
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v1 + v6, v5, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  v7 = type metadata accessor for CoveragePointCloud(0);
  LODWORD(v6) = (*(*(v7 - 8) + 48))(v5, 1, v7);
  outlined destroy of PerspectiveCameraComponent?(v5, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  if (v6 == 1)
  {
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v8 = type metadata accessor for Logger();
    __swift_project_value_buffer(v8, logger);
    v9 = Logger.logObject.getter();
    v10 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_23B824000, v9, v10, "draw() has nil coveragePointCloud!  Not drawing...", v11, 2u);
      MEMORY[0x23EEB0B70](v11, -1, -1);
    }
  }

  else if (*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_renderStyle))
  {
    FullscreenCoveragePointsRenderer.drawCubes(in:)(in.super.super.super.isa);
  }

  else
  {
    FullscreenCoveragePointsRenderer.drawPointPrimitives(in:)(in.super.super.super.isa);
  }
}

void FullscreenCoveragePointsRenderer.drawPointPrimitives(in:)(void *a1)
{
  v2 = v1;
  v93 = a1;
  v3 = type metadata accessor for ColorScheme();
  v89 = *(v3 - 8);
  v90 = v3;
  v4 = MEMORY[0x28223BE20](v3);
  v92 = &v81 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v91 = &v81 - v6;
  v7 = type metadata accessor for FullscreenCoveragePointsRenderer.ResourceEntry(0);
  MEMORY[0x28223BE20](v7);
  v9 = &v81 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v94 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_inFlightLock;
  v10 = *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_inFlightLock];

  os_unfair_lock_lock(v10 + 4);

  FullscreenCoveragePointsRenderer.updateInternal()();
  v11 = type metadata accessor for ObjectCaptureSession.Frame.PointCloud();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v81 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v81 - v16;
  v18 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_coveragePoints;
  swift_beginAccess();
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(&v2[v18], v17, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
  if ((*(v12 + 48))(v17, 1, v11) == 1)
  {
    outlined destroy of PerspectiveCameraComponent?(v17, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v19 = type metadata accessor for Logger();
    __swift_project_value_buffer(v19, logger);
    v20 = Logger.logObject.getter();
    v21 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_23B824000, v20, v21, "No coverage points -- can't render preview!", v22, 2u);
      MEMORY[0x23EEB0B70](v22, -1, -1);
    }

    goto LABEL_44;
  }

  (*(v12 + 32))(v14, v17, v11);
  v23 = ObjectCaptureSession.Frame.PointCloud.points.getter();
  v24 = FullscreenCoveragePointsRenderer.createUniformsForPointPrimitiveRenderPass(pointCloud:)();
  v25 = v7[5];
  (*(v12 + 16))(&v9[v25], v14, v11);
  (*(v12 + 56))(&v9[v25], 0, 1, v11);
  v26 = dispatch thunk of OCDataBuffer.asMTLBuffer(from:)();
  *v9 = v24;
  *&v9[v7[6]] = v26;
  *&v9[v7[7]] = 0;
  v27 = specialized InFlightQueue.retain(_:)(v9, &_s19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAA32FullscreenCoveragePointsRendererC08ResourceH033_EBAA0A78FD80C51EE584E033B8F33CA2LLV_GMd, &_s19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAA32FullscreenCoveragePointsRendererC08ResourceH033_EBAA0A78FD80C51EE584E033B8F33CA2LLV_GMR, type metadata accessor for FullscreenCoveragePointsRenderer.ResourceEntry, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
  v28 = *&v2[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_commandQueue];
  if (!v28)
  {
    __break(1u);
    goto LABEL_53;
  }

  v29 = [v28 commandBuffer];
  if (!v29)
  {
    (*(v12 + 8))(v14, v11);
LABEL_32:

LABEL_43:
    _s19_RealityKit_SwiftUI18CoveragePointCloudVWOhTm_0(v9, type metadata accessor for FullscreenCoveragePointsRenderer.ResourceEntry);
LABEL_44:
    v80 = *&v2[v94];

    os_unfair_lock_unlock(v80 + 4);

    return;
  }

  v30 = v29;
  v85 = v26;
  v31 = [v93 currentRenderPassDescriptor];
  if (!v31)
  {
    (*(v12 + 8))(v14, v11);
    swift_unknownObjectRelease();
    goto LABEL_32;
  }

  v32 = v31;
  v84 = v24;
  v83 = v27;
  v86 = v30;
  v87 = v23;
  v33 = [v31 colorAttachments];
  v34 = [v33 objectAtIndexedSubscript_];

  if (!v34)
  {
LABEL_53:
    __break(1u);
    goto LABEL_54;
  }

  [v34 setLoadAction_];

  v88 = v32;
  v35 = [v32 colorAttachments];
  v36 = [v35 objectAtIndexedSubscript:0];

  if (!v36)
  {
LABEL_54:
    __break(1u);
    goto LABEL_55;
  }

  [v36 setClearColor_];

  v37 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_baseRenderer;
  if (!*&v2[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_baseRenderer])
  {
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v38 = &v2[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_viewportSize];
  v39 = *&v2[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_viewportSize];
  if ((*&v39 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_46;
  }

  if (v39 <= -9.22337204e18)
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (v39 >= 9.22337204e18)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v40 = v38[1];
  if ((*&v40 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (v40 <= -9.22337204e18)
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  if (v40 >= 9.22337204e18)
  {
LABEL_50:
    __break(1u);
    goto LABEL_51;
  }

  v41 = v39;
  v42 = v40;

  BaseRenderer.updateDepthAttachmentTexture(width:height:)(v41, v42);

  v43 = [v88 depthAttachment];
  if (!v43)
  {
LABEL_56:
    __break(1u);
    goto LABEL_57;
  }

  v44 = *&v2[v37];
  v45 = v86;
  if (!v44)
  {
LABEL_57:
    __break(1u);
    goto LABEL_58;
  }

  v46 = v88;
  if (!*(v44 + 32))
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v47 = v43;
  [v43 setTexture_];

  v48 = [v45 renderCommandEncoderWithDescriptor_];
  if (!v48)
  {
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v49 = v48;
  aBlock = 0;
  v96 = 0;
  v97 = *v38;
  v98 = xmmword_23B91C510;
  [v48 setViewport_];
  [v49 setDepthStencilState_];
  if (!*&v2[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_renderPrimitivePointsPipeline])
  {
LABEL_60:
    __break(1u);
    goto LABEL_61;
  }

  [v49 setRenderPipelineState_];
  [v49 setVertexBuffer:v84 offset:0 atIndex:0];
  [v49 setVertexBuffer:v85 offset:0 atIndex:1];
  [v49 drawPrimitives:0 vertexStart:0 vertexCount:dispatch thunk of OCDataBuffer.count.getter()];
  v85 = v49;
  [v49 endEncoding];
  v50 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_cameraFrustumRendererForShots;
  if (*&v2[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_cameraFrustumRendererForShots])
  {

    CameraFrustumRendererForShots.render(into:desc:)(v45, v46);
  }

  v35 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_cameraPathRenderer;
  v51 = *&v2[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_cameraPathRenderer];
  if (v51)
  {
    v52 = *&v2[v50];
    if (v52)
    {
      v53 = *(v52 + 24);
      v38 = (v51 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_enabled);
      v54 = *(v51 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_enabled);
      *(v51 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_enabled) = v53;
      if (v53 == v54)
      {
        goto LABEL_38;
      }
    }

    else
    {
      v38 = (v51 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_enabled);
      v55 = *(v51 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_enabled);
      *(v51 + OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_enabled) = 0;
      if ((v55 & 1) == 0)
      {
        goto LABEL_38;
      }
    }

    v56 = one-time initialization token for logger;

    if (v56 == -1)
    {
LABEL_35:
      v57 = type metadata accessor for Logger();
      __swift_project_value_buffer(v57, logger);

      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.default.getter();
      v84 = v58;
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 67109120;
        *(v60 + 4) = *v38;

        v61 = v59;
        v62 = v84;
        _os_log_impl(&dword_23B824000, v84, v61, "CameraPathRenderer.enabled = %{BOOL}d", v60, 8u);
        v63 = v60;
        v45 = v86;
        MEMORY[0x23EEB0B70](v63, -1, -1);
      }

      else
      {

        v45 = v86;
      }

LABEL_38:
      v64 = *(&v35->isa + v2);
      if (v64)
      {
        v65 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_colorScheme;
        swift_beginAccess();
        v66 = v89;
        v82 = v14;
        v67 = *(v89 + 16);
        v84 = v35;
        v68 = v90;
        v67(v91, &v2[v65], v90);
        v69 = OBJC_IVAR____TtC19_RealityKit_SwiftUI18CameraPathRenderer_colorScheme;
        swift_beginAccess();
        v67(v92, (v64 + v69), v68);
        v14 = v82;
        swift_beginAccess();
        v81 = *(v66 + 24);

        v70 = v64 + v69;
        v71 = v91;
        v81(v70, v91, v68);
        swift_endAccess();
        v72 = v92;
        CameraPathRenderer.colorScheme.didset(v92);

        v73 = *(v66 + 8);
        v74 = v72;
        v45 = v86;
        v73(v74, v68);
        v73(v71, v68);
        if (*(&v84->isa + v2))
        {

          specialized CameraPathRenderer.render(into:viewport:renderPassDescriptor:)(v45, v88);
        }
      }

      goto LABEL_41;
    }

LABEL_51:
    swift_once();
    goto LABEL_35;
  }

LABEL_41:
  v75 = [v93 currentDrawable];
  if (v75)
  {
    [v45 presentDrawable_];
    swift_unknownObjectRelease();
    v76 = swift_allocObject();
    v77 = v83;
    *(v76 + 16) = v2;
    *(v76 + 24) = v77;
    *&v98 = partial apply for closure #1 in FullscreenCoveragePointsRenderer.drawPointPrimitives(in:);
    *(&v98 + 1) = v76;
    aBlock = MEMORY[0x277D85DD0];
    v96 = 1107296256;
    *&v97 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed MTLCommandBuffer) -> ();
    *(&v97 + 1) = &block_descriptor_92;
    v78 = _Block_copy(&aBlock);
    v79 = v2;

    [v45 addCompletedHandler_];
    _Block_release(v78);
    [v45 commit];
    swift_unknownObjectRelease();
    swift_unknownObjectRelease();

    (*(v12 + 8))(v14, v11);
    goto LABEL_43;
  }

LABEL_61:
  __break(1u);
}

void FullscreenCoveragePointsRenderer.drawCubes(in:)(void *a1)
{
  v2 = v1;
  v79 = a1;
  v3 = type metadata accessor for FullscreenCoveragePointsRenderer.ResourceEntry(0);
  MEMORY[0x28223BE20](v3);
  v5 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_inFlightLock;
  v6 = *&v1[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_inFlightLock];

  os_unfair_lock_lock(v6 + 4);

  FullscreenCoveragePointsRenderer.updateInternal()();
  v7 = type metadata accessor for ObjectCaptureSession.Frame.PointCloud();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v78 = v9;
  v10 = &v67 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
  v76 = *(*(v11 - 8) + 64);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v67 - v12;
  v14 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_coveragePoints;
  swift_beginAccess();
  v77 = v14;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(&v2[v14], v13, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
  v15 = *(v8 + 48);
  if (v15(v13, 1, v7) == 1)
  {
    outlined destroy of PerspectiveCameraComponent?(v13, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, logger);
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_23B824000, v17, v18, "No coverage points -- can't render preview!", v19, 2u);
      MEMORY[0x23EEB0B70](v19, -1, -1);
    }

    goto LABEL_35;
  }

  v72 = *(v8 + 32);
  v73 = v8 + 32;
  v72(v10, v13, v7);
  v20 = FullscreenCoveragePointsRenderer.createUniformsForPointPrimitiveRenderPass(pointCloud:)();
  v21 = v3[5];
  (*(v8 + 16))(&v5[v21], v10, v7);
  v75 = v8;
  (*(v8 + 56))(&v5[v21], 0, 1, v7);
  swift_unknownObjectRetain();
  ObjectCaptureSession.Frame.PointCloud.points.getter();
  v22 = dispatch thunk of OCDataBuffer.asMTLBuffer(from:)();

  v74 = v20;
  *v5 = v20;
  *&v5[v3[6]] = v22;
  *&v5[v3[7]] = 0;
  v23 = specialized InFlightQueue.retain(_:)(v5, &_s19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAA32FullscreenCoveragePointsRendererC08ResourceH033_EBAA0A78FD80C51EE584E033B8F33CA2LLV_GMd, &_s19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAA32FullscreenCoveragePointsRendererC08ResourceH033_EBAA0A78FD80C51EE584E033B8F33CA2LLV_GMR, type metadata accessor for FullscreenCoveragePointsRenderer.ResourceEntry, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:));
  v24 = *&v2[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_commandQueue];
  if (!v24)
  {
    __break(1u);
    goto LABEL_44;
  }

  v25 = v5;
  v26 = [v24 commandBuffer];
  v27 = v75;
  if (!v26)
  {
LABEL_29:
    swift_unknownObjectRelease();
LABEL_34:
    _s19_RealityKit_SwiftUI18CoveragePointCloudVWOhTm_0(v25, type metadata accessor for FullscreenCoveragePointsRenderer.ResourceEntry);
    (*(v27 + 8))(v10, v7);
LABEL_35:
    v66 = *&v2[v80];

    os_unfair_lock_unlock(v66 + 4);

    return;
  }

  v28 = v26;
  v29 = [v79 currentRenderPassDescriptor];
  if (!v29)
  {
    swift_unknownObjectRelease();
    goto LABEL_29;
  }

  v30 = v29;
  v70 = v23;
  v68 = v25;
  v31 = [v29 colorAttachments];
  v32 = [v31 objectAtIndexedSubscript_];

  if (!v32)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v69 = v10;
  [v32 setLoadAction_];

  v71 = v30;
  v33 = [v30 colorAttachments];
  v34 = [v33 objectAtIndexedSubscript_];

  if (!v34)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  [v34 setClearColor_];

  v35 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_baseRenderer;
  if (!*&v2[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_baseRenderer])
  {
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v36 = &v2[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_viewportSize];
  v37 = *&v2[OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_viewportSize];
  if ((*&v37 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_37;
  }

  if (v37 <= -9.22337204e18)
  {
LABEL_37:
    __break(1u);
    goto LABEL_38;
  }

  if (v37 >= 9.22337204e18)
  {
LABEL_38:
    __break(1u);
    goto LABEL_39;
  }

  v38 = v36[1];
  if ((*&v38 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_39:
    __break(1u);
    goto LABEL_40;
  }

  if (v38 <= -9.22337204e18)
  {
LABEL_40:
    __break(1u);
    goto LABEL_41;
  }

  if (v38 >= 9.22337204e18)
  {
LABEL_41:
    __break(1u);
    goto LABEL_42;
  }

  v39 = v37;
  v40 = v38;

  BaseRenderer.updateDepthAttachmentTexture(width:height:)(v39, v40);

  v41 = v71;
  v42 = [v71 depthAttachment];
  if (!v42)
  {
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v43 = *&v2[v35];
  if (!v43)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  if (!*(v43 + 32))
  {
LABEL_49:
    __break(1u);
    goto LABEL_50;
  }

  v44 = v42;
  [v42 setTexture_];

  v35 = v28;
  v45 = [v28 renderCommandEncoderWithDescriptor_];
  if (!v45)
  {
LABEL_50:
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  aBlock = 0;
  v82 = 0;
  v83 = *v36;
  v84 = xmmword_23B91C510;
  v67 = v45;
  v46 = [v45 setViewport_];
  v47 = MEMORY[0x28223BE20](v46);
  v49 = &v67 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v51 = &v67 - ((v50 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(&v2[v77], v51, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
  if (v15(v51, 1, v7) == 1)
  {
    swift_unknownObjectRelease();
    outlined destroy of PerspectiveCameraComponent?(v51, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMd, &_s6CoreOC20ObjectCaptureSessionC5FrameV10PointCloudVSgMR);
    if (one-time initialization token for logger == -1)
    {
LABEL_25:
      v52 = type metadata accessor for Logger();
      __swift_project_value_buffer(v52, logger);
      v53 = Logger.logObject.getter();
      v54 = static os_log_type_t.error.getter();
      v55 = os_log_type_enabled(v53, v54);
      v27 = v75;
      v56 = v35;
      if (v55)
      {
        v57 = swift_slowAlloc();
        *v57 = 0;
        _os_log_impl(&dword_23B824000, v53, v54, "coveragePoints is nil!  Not able to render voxels.", v57, 2u);
        MEMORY[0x23EEB0B70](v57, -1, -1);
      }

      v10 = v69;
      v58 = v70;
      v59 = v71;
      v60 = v67;
LABEL_32:
      [v60 endEncoding];
      v62 = [v79 currentDrawable];
      if (v62)
      {
        [v56 presentDrawable_];
        swift_unknownObjectRelease();
        v63 = swift_allocObject();
        *(v63 + 16) = v2;
        *(v63 + 24) = v58;
        *&v84 = partial apply for closure #1 in FullscreenCoveragePointsRenderer.drawCubes(in:);
        *(&v84 + 1) = v63;
        aBlock = MEMORY[0x277D85DD0];
        v82 = 1107296256;
        *&v83 = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed MTLCommandBuffer) -> ();
        *(&v83 + 1) = &block_descriptor_7;
        v64 = _Block_copy(&aBlock);
        v65 = v2;

        [v56 addCompletedHandler_];
        _Block_release(v64);
        [v56 commit];
        swift_unknownObjectRelease();
        swift_unknownObjectRelease();

        v25 = v68;
        goto LABEL_34;
      }

      goto LABEL_51;
    }

LABEL_42:
    swift_once();
    goto LABEL_25;
  }

  v72(v49, v51, v7);
  if (FullscreenCoveragePointsRenderer.voxelRenderer.getter())
  {
    v61 = v67;
    VoxelRenderer.render(encoder:uniforms:pointCloud:)(v67, v74);

    swift_unknownObjectRelease();
    v27 = v75;
    (*(v75 + 8))(v49, v7);
    v60 = v61;
    v56 = v35;
    v10 = v69;
    v58 = v70;
    v59 = v71;
    goto LABEL_32;
  }

LABEL_52:
  __break(1u);
}

void closure #1 in FullscreenCoveragePointsRenderer.drawPointPrimitives(in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAA32FullscreenCoveragePointsRendererC08ResourceH033_EBAA0A78FD80C51EE584E033B8F33CA2LLV_GMd, &_s19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAA32FullscreenCoveragePointsRendererC08ResourceH033_EBAA0A78FD80C51EE584E033B8F33CA2LLV_GMR);
  v6 = *(v5 - 8);
  v7 = MEMORY[0x28223BE20](v5 - 8);
  v40 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v41 = &v37 - v10;
  MEMORY[0x28223BE20](v9);
  v12 = (&v37 - v11);
  v13 = *(a2 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_inFlightQueue);
  os_unfair_lock_lock((*(v13 + 16) + 16));
  swift_beginAccess();
  v42 = v13;
  v14 = *(v13 + 32);
  v16 = v14 + 2;
  v15 = v14[2];
  if (!v15)
  {
LABEL_5:
    v20 = v15;
LABEL_10:
    v21 = v42;
    specialized Array.replaceSubrange<A>(_:with:)(v15, v20);
    swift_endAccess();
    os_unfair_lock_unlock((*(v21 + 16) + 16));
    return;
  }

  v17 = 0;
  v18 = (*(v6 + 80) + 32) & ~*(v6 + 80);
  v19 = *(v6 + 72);
  v39 = v18;
  while (*(v14 + v18) != a3)
  {
    ++v17;
    v18 += v19;
    if (v15 == v17)
    {
      goto LABEL_5;
    }
  }

  v20 = v17 + 1;
  if (!__OFADD__(v17, 1))
  {
    if (v20 == v15)
    {
      v20 = v15;
LABEL_9:
      v15 = v17;
      if (v20 >= v17)
      {
        goto LABEL_10;
      }
    }

    else
    {
      v22 = v19 + v18;
      v23 = &_s19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAA32FullscreenCoveragePointsRendererC08ResourceH033_EBAA0A78FD80C51EE584E033B8F33CA2LLV_GMd;
      v24 = &_s19_RealityKit_SwiftUI13InFlightQueueC5Entry33_29104CBFA5E547639D84C47451781CFELLVyAA32FullscreenCoveragePointsRendererC08ResourceH033_EBAA0A78FD80C51EE584E033B8F33CA2LLV_GMR;
      v38 = v12;
      v43 = v19;
      while (v20 < v15)
      {
        outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v14 + v22, v12, v23, v24);
        v26 = v23;
        v27 = *v12;
        v28 = v24;
        v29 = v26;
        v30 = v28;
        outlined destroy of PerspectiveCameraComponent?(v12, v26, v28);
        if (v27 == a3)
        {
          v23 = v29;
          v24 = v30;
          v25 = v43;
        }

        else
        {
          if (v20 == v17)
          {
            v23 = v29;
            v24 = v30;
            v25 = v43;
          }

          else
          {
            if ((v17 & 0x8000000000000000) != 0)
            {
              goto LABEL_27;
            }

            v31 = a3;
            v32 = *v16;
            if (v17 >= *v16)
            {
              goto LABEL_28;
            }

            v33 = v17 * v43;
            v23 = v29;
            v34 = v29;
            v24 = v30;
            outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v14 + v39 + v17 * v43, v41, v34, v30);
            if (v20 >= v32)
            {
              goto LABEL_29;
            }

            outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v14 + v22, v40, v23, v30);
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            *(v42 + 32) = v14;
            if ((isUniquelyReferenced_nonNull_native & 1) == 0)
            {
              v14 = specialized _ArrayBuffer._consumeAndCreateNew()(v14);
              *(v42 + 32) = v14;
            }

            a3 = v31;
            v25 = v43;
            outlined assign with take of Cancellable?(v40, v14 + v39 + v33, v23, v24);
            v36 = v42;
            *(v42 + 32) = v14;
            v12 = v38;
            if (v20 >= v14[2])
            {
              goto LABEL_30;
            }

            outlined assign with take of Cancellable?(v41, v14 + v22, v23, v24);
            *(v36 + 32) = v14;
          }

          ++v17;
        }

        ++v20;
        v16 = v14 + 2;
        v15 = v14[2];
        v22 += v25;
        if (v20 == v15)
        {
          goto LABEL_9;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      __break(1u);
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
    }

    __break(1u);
  }

  __break(1u);
}

void FullscreenCoveragePointsRenderer.initPointPrimitiveRenderPipeline()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27[1] = *MEMORY[0x277D85DE8];
  if (one-time initialization token for mtlLibrary != -1)
  {
    a1 = swift_once();
  }

  v4 = static FullscreenCoveragePointsRenderer.mtlLibrary;
  if (!static FullscreenCoveragePointsRenderer.mtlLibrary)
  {
    lazy protocol witness table accessor for type FullscreenCoveragePointsRenderer.Error and conformance FullscreenCoveragePointsRenderer.Error(a1, a2, a3);
    swift_allocError();
    swift_willThrow();
    return;
  }

  swift_unknownObjectRetain();
  v5 = MEMORY[0x23EEAF480](0xD00000000000002BLL, 0x800000023B926BB0);
  v6 = [v4 newFunctionWithName_];

  v7 = MEMORY[0x23EEAF480](0xD00000000000002ELL, 0x800000023B9254D0);
  v8 = [v4 newFunctionWithName_];

  v9 = [objc_allocWithZone(MEMORY[0x277CD6F78]) init];
  [v9 setVertexFunction_];
  [v9 setFragmentFunction_];
  v10 = [v9 colorAttachments];
  v11 = [v10 objectAtIndexedSubscript_];

  if (!v11)
  {
    __break(1u);
    goto LABEL_14;
  }

  [v11 setPixelFormat_];

  v12 = [v9 colorAttachments];
  v13 = [v12 objectAtIndexedSubscript_];

  if (!v13)
  {
LABEL_14:
    __break(1u);
    return;
  }

  [v13 setBlendingEnabled_];

  [v9 setAlphaToCoverageEnabled_];
  [v9 setDepthAttachmentPixelFormat_];
  v14 = *(v3 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_device);
  v27[0] = 0;
  v15 = [v14 newRenderPipelineStateWithDescriptor:v9 error:v27];
  v16 = v27[0];
  if (v15)
  {
    *(v3 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_renderPrimitivePointsPipeline) = v15;
    v17 = v16;
    swift_unknownObjectRelease();
    v18 = [v14 newCommandQueue];
    if (v18)
    {
      v21 = v18;
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      *(v3 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_commandQueue) = v21;
      swift_unknownObjectRelease();
      return;
    }

    lazy protocol witness table accessor for type FullscreenCoveragePointsRenderer.Error and conformance FullscreenCoveragePointsRenderer.Error(0, v19, v20);
    swift_allocError();
    swift_willThrow();
  }

  else
  {
    v22 = v27[0];
    v23 = _convertNSErrorToError(_:)();

    v24 = swift_willThrow();
    lazy protocol witness table accessor for type FullscreenCoveragePointsRenderer.Error and conformance FullscreenCoveragePointsRenderer.Error(v24, v25, v26);
    swift_allocError();
    swift_willThrow();
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
}

id FullscreenCoveragePointsRenderer.createUniformsForPointPrimitiveRenderPass(pointCloud:)()
{
  v1 = v0;
  v75.i64[0] = type metadata accessor for CoveragePointCloud(0);
  v2 = *(v75.i64[0] - 8);
  MEMORY[0x28223BE20](v75.i64[0]);
  v4 = &v67 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v67 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v67 - v9;
  result = [*(v0 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_device) newBufferWithLength:880 options:0];
  if (!result)
  {
    goto LABEL_25;
  }

  v12 = result;
  v13 = [swift_unknownObjectRetain() contents];
  v14 = v12;
  ObjectCaptureSession.Frame.PointCloud.points.getter();
  v15 = dispatch thunk of OCDataBuffer.count.getter();

  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_18;
  }

  if (HIDWORD(v15))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  *(v13 + 135) = v15;
  v16 = v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_viewportSize;
  v17 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_viewportSize);
  v18 = v17;
  *(v13 + 137) = v18 * 0.006;
  v13[552] = 0;
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v17 <= -1.0)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v17 >= 4294967300.0)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  *(v13 + 132) = v17;
  v19 = *(v16 + 8);
  if ((*&v19 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v19 <= -1.0)
  {
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v19 >= 4294967300.0)
  {
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
    return result;
  }

  *(v13 + 133) = v19;
  ObjectCaptureSession.Frame.PointCloud.transform.getter();
  *v13 = v20;
  *(v13 + 1) = v21;
  *(v13 + 2) = v22;
  *(v13 + 3) = v23;
  v24 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_objectToWorldUnscaled + 16);
  v25 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_objectToWorldUnscaled + 32);
  v26 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_objectToWorldUnscaled + 48);
  *(v13 + 8) = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_objectToWorldUnscaled);
  *(v13 + 9) = v24;
  *(v13 + 10) = v25;
  *(v13 + 11) = v26;
  v27 = (v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_viewToWorld);
  *(v13 + 3) = __invert_f4(*(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_viewToWorld));
  v82 = __invert_f4(*v27);
  *(v13 + 4) = __invert_f4(v82);
  v83 = *(v1 + OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_projection);
  *(v13 + 5) = v83;
  *(v13 + 464) = __invert_f4(v83);
  v28 = OBJC_IVAR____TtC19_RealityKit_SwiftUI32FullscreenCoveragePointsRenderer_coveragePointCloud;
  swift_beginAccess();
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v1 + v28, v10, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  v29 = *(v2 + 48);
  v30 = 1;
  if (v29(v10, 1, v75.i64[0]))
  {
    outlined destroy of PerspectiveCameraComponent?(v10, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
    v80[0].i8[0] = 1;
    v31 = 0uLL;
    v32 = 0uLL;
    v33 = 0uLL;
    v34 = 0uLL;
  }

  else
  {
    outlined init with copy of CoveragePointCloud(v10, v4, type metadata accessor for CoveragePointCloud);
    outlined destroy of PerspectiveCameraComponent?(v10, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
    *v35.i64 = CoveragePointCloud.bboxWorld.getter();
    v73 = v36;
    v74 = v35;
    v72 = v37;
    v71 = v38;
    _s19_RealityKit_SwiftUI18CoveragePointCloudVWOhTm_0(v4, type metadata accessor for CoveragePointCloud);
    v34 = v71;
    v33 = v72;
    v32 = v73;
    v31 = v74;
    v30 = 0;
    v80[0].i8[0] = 0;
  }

  v80[0] = v31;
  v80[1] = v32;
  v80[2] = v33;
  v80[3] = v34;
  v81 = v30;
  v39 = specialized static BoundingBoxHelpers.getBoundingSphere(boxWorld:)(v80);
  v39.n128_u32[2] = v40;
  *(v13 + 35) = v39;
  *(v13 + 144) = v41;
  outlined init with copy of _ConditionalContent<ARObjectCapturingView, ARFreeformCapturingView>(v1 + v28, v8, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
  if (v29(v8, 1, v75.i64[0]))
  {
    outlined destroy of PerspectiveCameraComponent?(v8, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
    LOBYTE(v78) = 1;
    v77 = 0;
    v42 = 0uLL;
    v76 = 0;
    v43 = 0;
    v44 = 0;
    v45 = 0;
    v50 = 0uLL;
    v51 = 0uLL;
    v52 = 0uLL;
    v53 = 0uLL;
  }

  else
  {
    outlined init with copy of CoveragePointCloud(v8, v4, type metadata accessor for CoveragePointCloud);
    outlined destroy of PerspectiveCameraComponent?(v8, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMd, &_s19_RealityKit_SwiftUI18CoveragePointCloudVSgMR);
    *v46.i64 = CoveragePointCloud.bboxWorld.getter();
    v72 = v46;
    v73 = v47;
    v74 = v48;
    v75 = v49;
    _s19_RealityKit_SwiftUI18CoveragePointCloudVWOhTm_0(v4, type metadata accessor for CoveragePointCloud);
    LOBYTE(v78) = 0;
    v77 = 0;
    v76 = 0;
    *v54.i64 = Transform.init(matrix:)();
    v70 = v55;
    v69 = v56;
    v55.f32[0] = vmuls_lane_f32(0.5, v54, 2);
    v56.i64[0] = 0x3F0000003F000000;
    v56.i64[1] = 0x3F0000003F000000;
    v54.i64[0] = vmulq_f32(v54, v56).u64[0];
    v54.i64[1] = v55.u32[0];
    v57 = vrecpeq_f32(v54);
    v58 = vmulq_f32(v57, vrecpsq_f32(v54, v57));
    v71 = vmulq_f32(v58, vrecpsq_f32(v54, v58));
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #0 of FullscreenCoveragePointsRenderer.createUniformsForPointPrimitiveRenderPass(pointCloud:));
    *v84.columns[0].i64 = specialized simd_float4x4.init(translation:rotation:scale:)(v69, v70, v59);
    v85 = __invert_f4(v84);
    v70 = v85.columns[0];
    v69 = v85.columns[1];
    v68 = v85.columns[2];
    v67 = v85.columns[3];
    _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #1 of FullscreenCoveragePointsRenderer.createUniformsForPointPrimitiveRenderPass(pointCloud:));
    v52 = v67;
    v51 = v68;
    v50 = v69;
    v53 = v71;
    v45 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v72, *&v60), v73, *&v60, 1), v74, v60, 2), v75, v60, 3).i32[1];
    v44 = 0x400000003FC00000;
    v43 = 1;
    v42 = v70;
  }

  v61 = v76;
  v78 = v76;
  v62 = v77;
  v79 = v77;
  *(v13 + 37) = v42;
  *(v13 + 38) = v50;
  *(v13 + 39) = v51;
  *(v13 + 40) = v52;
  *(v13 + 41) = v53;
  *(v13 + 84) = v44;
  v13[680] = v43;
  *(v13 + 681) = v61;
  v13[683] = v62;
  *(v13 + 171) = v45;
  v13[688] = 0;
  _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD2VySfG_SaySfGTt1g5Tf4g_n(&outlined read-only object #2 of FullscreenCoveragePointsRenderer.createUniformsForPointPrimitiveRenderPass(pointCloud:));
  *(v13 + 56) = v63;
  v64 = *(MEMORY[0x277D860B8] + 16);
  v65 = *(MEMORY[0x277D860B8] + 32);
  v66 = *(MEMORY[0x277D860B8] + 48);
  *(v13 + 24) = *MEMORY[0x277D860B8];
  *(v13 + 25) = v64;
  *(v13 + 26) = v65;
  *(v13 + 27) = v66;
  *(v13 + 114) = 1065353216;
  v13[689] = 0;
  return v12;
}