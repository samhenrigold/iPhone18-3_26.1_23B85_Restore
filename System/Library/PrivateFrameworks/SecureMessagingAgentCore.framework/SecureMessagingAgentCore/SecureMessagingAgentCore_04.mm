uint64_t specialized SqliteStore.query<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  return MEMORY[0x2822009F8](specialized SqliteStore.query<A>(_:), v4, 0);
}

{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  return MEMORY[0x2822009F8](specialized SqliteStore.query<A>(_:), v4, 0);
}

{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  return MEMORY[0x2822009F8](specialized SqliteStore.query<A>(_:), v4, 0);
}

{
  v5[11] = a4;
  v5[12] = v4;
  v5[9] = a2;
  v5[10] = a3;
  v5[8] = a1;
  return MEMORY[0x2822009F8](specialized SqliteStore.query<A>(_:), v4, 0);
}

{
  v5[18] = a4;
  v5[19] = v4;
  v5[16] = a2;
  v5[17] = a3;
  v5[15] = a1;
  return MEMORY[0x2822009F8](specialized SqliteStore.query<A>(_:), v4, 0);
}

{
  v5[17] = a4;
  v5[18] = v4;
  v5[15] = a2;
  v5[16] = a3;
  v5[14] = a1;
  return MEMORY[0x2822009F8](specialized SqliteStore.query<A>(_:), v4, 0);
}

uint64_t specialized SqliteStore.query<A>(_:)(uint64_t a1)
{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](specialized SqliteStore.query<A>(_:), v1, 0);
}

{
  *(v2 + 64) = a1;
  *(v2 + 72) = v1;
  return MEMORY[0x2822009F8](specialized SqliteStore.query<A>(_:), v1, 0);
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t specialized _StringGuts._deconstructUTF8<A>(scratch:)(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t specialized Array.append<A>(contentsOf:)(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v11, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO15PersistedMemberVGMd, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO15PersistedMemberVGMR, MEMORY[0x277D4CD38]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierVGMd, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO22UniqueClientIdentifierVGMR, MEMORY[0x277D4D000]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO8EpochKeyVGMd, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO8EpochKeyVGMR, MEMORY[0x277D4D200]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO6RecordVGMd, &_ss23_ContiguousArrayStorageCy15SecureMessaging3MLSO6RecordVGMR, MEMORY[0x277D4D1F0]);
  *v3 = result;
  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy24SecureMessagingAgentCore16GroupMemberModelVGMd, &_ss23_ContiguousArrayStorageCy24SecureMessagingAgentCore16GroupMemberModelVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 3);
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

  v8 = *(a4 + 2);
  if (v7 <= v8)
  {
    v9 = *(a4 + 2);
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys12StaticStringV_SbtGMd, &_ss23_ContiguousArrayStorageCys12StaticStringV_SbtGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 24 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t (*specialized Dictionary._Variant.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3))()
{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = specialized Dictionary._Variant.asNative.modify(v7);
  v7[9] = specialized _NativeDictionary.subscript.modify(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = specialized Dictionary._Variant.asNative.modify(v7);
  v7[9] = specialized _NativeDictionary.subscript.modify(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

{
  if (MEMORY[0x277D84FD8])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = specialized Dictionary._Variant.asNative.modify(v7);
  v7[9] = specialized _NativeDictionary.subscript.modify(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

void Dictionary._Variant.subscript.modifyspecialized (uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

void (*specialized _NativeDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t **a1, uint64_t a2)
{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
      goto LABEL_11;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a4 & 1);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return _NativeDictionary.subscript.modifyspecialized ;
}

{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
      goto LABEL_11;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a4 & 1);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return _NativeDictionary.subscript.modifyspecialized ;
}

{
  v5 = v4;
  if (MEMORY[0x277D84FD8])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x30uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[2] = a3;
  v10[3] = v4;
  v10[1] = a2;
  v12 = *v4;
  v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  *(v11 + 40) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      specialized _NativeDictionary.copy()();
      v13 = v21;
      goto LABEL_11;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v18, a4 & 1);
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[4] = v13;
  if (v19)
  {
    v23 = *(*(*v5 + 56) + 8 * v13);
  }

  else
  {
    v23 = 0;
  }

  *v11 = v23;
  return _NativeDictionary.subscript.modifyspecialized ;
}

void _NativeDictionary.subscript.modifyspecialized (uint64_t **a1, uint64_t a2, void (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t), void (*a4)(uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = **a1;
  v6 = *(*a1 + 40);
  if (v5)
  {
    v7 = v4[4];
    v8 = *v4[3];
    if (v6)
    {
      *(*(v8 + 56) + 8 * v7) = v5;
    }

    else
    {
      a3(v7, v4[1], v4[2], v5, v8);
    }
  }

  else if ((*a1)[5])
  {
    v9 = v4[4];
    v10 = *v4[3];
    outlined destroy of String(*(v10 + 48) + 16 * v9);
    a4(v9, v10);
  }

  free(v4);
}

uint64_t (*specialized Dictionary._Variant.asNative.modify(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return Dictionary._Variant.asNative.modifyspecialized ;
}

{
  *a1 = *v1;
  a1[1] = v1;
  return Dictionary._Variant.asNative.modifyspecialized ;
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

uint64_t sub_2652A84D4()
{
  outlined consume of Data._Representation(v0[2], v0[3]);

  v1 = v0[7];
  if (v1 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[6], v1);
  }

  v2 = v0[9];
  if (v2 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[8], v2);
  }

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2652A86A4()
{
  outlined consume of Data._Representation(v0[2], v0[3]);

  v1 = v0[9];
  if (v1 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[8], v1);
  }

  return MEMORY[0x2821FE8E8](v0, 85, 7);
}

uint64_t sub_2652A8704()
{
  outlined consume of Data._Representation(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2652A87FC()
{
  outlined consume of Data._Representation(v0[2], v0[3]);
  outlined consume of Data._Representation(v0[4], v0[5]);
  v1 = v0[7];
  if (v1 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[6], v1);
  }

  v2 = v0[9];
  if (v2 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[8], v2);
  }

  v3 = v0[11];
  if (v3 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[10], v3);
  }

  outlined consume of Data._Representation(v0[12], v0[13]);

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t outlined init with copy of MLS.OutgoingEventState?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO18OutgoingEventStateVSgMd, &_s15SecureMessaging3MLSO18OutgoingEventStateVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2652A89AC()
{
  outlined consume of Data._Representation(*(v0 + 16), *(v0 + 24));
  outlined consume of Data._Representation(*(v0 + 32), *(v0 + 40));
  outlined consume of Data._Representation(*(v0 + 48), *(v0 + 56));
  outlined consume of Data._Representation(*(v0 + 64), *(v0 + 72));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t objectdestroy_28Tm(uint64_t a1)
{
  outlined consume of Data._Representation(*(v1 + 16), *(v1 + 24));

  return MEMORY[0x2821FE8E8](v1, a1, 7);
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4DataV_SayAFGTt0g5Tf4g_n(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = lazy protocol witness table accessor for type Data and conformance Data();
  result = MEMORY[0x266756B80](v2, MEMORY[0x277CC9318], v3);
  v9 = result;
  if (v2)
  {
    v5 = (a1 + 40);
    do
    {
      v7 = *(v5 - 1);
      v6 = *v5;
      outlined copy of Data._Representation(v7, *v5);
      specialized Set._Variant.insert(_:)(v8, v7, v6);
      outlined consume of Data._Representation(v8[0], v8[1]);
      v5 += 2;
      --v2;
    }

    while (v2);
    return v9;
  }

  return result;
}

uint64_t _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFShy10Foundation4DataVG_15SecureMessaging3MLSO22UniqueClientIdentifierVsAE_pTg504_s24fg33AgentCore15DaemonPersisterC31loadj35IdentifiersWithEventsSay0aB03MLSO06i3H10k22VGyYaKFAI10Foundation4E7VKXEfU_0fgM4Core0oP0CTf1cn_nTf4ng_n(uint64_t a1, uint64_t a2)
{
  v44 = type metadata accessor for MLS.UniqueClientIdentifier();
  v5 = *(v44 - 8);
  MEMORY[0x28223BE20](v44, v6);
  v43 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v8)
  {
    v42 = v2;
    v45 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v41 = v45;
    v10 = a1 + 56;
    result = _HashTable.startBucket.getter();
    v11 = result;
    v12 = 0;
    v13 = *(a2 + OBJC_IVAR____TtC24SecureMessagingAgentCore15DaemonPersister_decoder);
    v38 = v5;
    v39 = v13;
    v36 = v8;
    v37 = v5 + 32;
    v35 = a1 + 64;
    while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(a1 + 32))
    {
      v16 = v11 >> 6;
      if ((*(v10 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
      {
        goto LABEL_24;
      }

      v40 = v12;
      v17 = v10;
      v18 = *(a1 + 36);
      v19 = a1;
      v20 = (*(a1 + 48) + 16 * v11);
      v22 = *v20;
      v21 = v20[1];
      outlined copy of Data._Representation(*v20, v21);
      _s15SecureMessaging8MLSActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D020]);
      v23 = v42;
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      if (v23)
      {
        outlined consume of Data._Representation(v22, v21);
      }

      v42 = 0;
      outlined consume of Data._Representation(v22, v21);
      v24 = v41;
      v45 = v41;
      v26 = *(v41 + 16);
      v25 = *(v41 + 24);
      if (v26 >= v25 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v26 + 1, 1);
        v24 = v45;
      }

      *(v24 + 16) = v26 + 1;
      v27 = (*(v38 + 80) + 32) & ~*(v38 + 80);
      v41 = v24;
      result = (*(v38 + 32))(v24 + v27 + *(v38 + 72) * v26, v43, v44);
      v14 = 1 << *(v19 + 32);
      if (v11 >= v14)
      {
        goto LABEL_25;
      }

      v28 = *(v17 + 8 * v16);
      if ((v28 & (1 << v11)) == 0)
      {
        goto LABEL_26;
      }

      a1 = v19;
      if (v18 != *(v19 + 36))
      {
        goto LABEL_27;
      }

      v10 = v17;
      v29 = v28 & (-2 << (v11 & 0x3F));
      if (v29)
      {
        v14 = __clz(__rbit64(v29)) | v11 & 0x7FFFFFFFFFFFFFC0;
        v15 = v36;
      }

      else
      {
        v30 = v16 << 6;
        v31 = v16 + 1;
        v15 = v36;
        v32 = (v35 + 8 * v16);
        while (v31 < (v14 + 63) >> 6)
        {
          v34 = *v32++;
          v33 = v34;
          v30 += 64;
          ++v31;
          if (v34)
          {
            result = outlined consume of Set<Data>.Index._Variant(v11, v18, 0);
            v14 = __clz(__rbit64(v33)) + v30;
            goto LABEL_4;
          }
        }

        result = outlined consume of Set<Data>.Index._Variant(v11, v18, 0);
      }

LABEL_4:
      v12 = v40 + 1;
      v11 = v14;
      if (v40 + 1 == v15)
      {
        return v41;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
  }

  return result;
}

uint64_t outlined init with take of MLS.OutgoingEventState?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

uint64_t sub_2652A9A0C()
{

  outlined consume of Data._Representation(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_2652A9A4C()
{
  outlined consume of Data._Representation(*(v0 + 16), *(v0 + 24));
  outlined consume of Data._Representation(*(v0 + 32), *(v0 + 40));
  outlined consume of Data._Representation(*(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_2652A9A94()
{
  outlined consume of Data._Representation(v0[2], v0[3]);
  outlined consume of Data._Representation(v0[8], v0[9]);
  v1 = v0[11];
  if (v1 >> 60 != 15)
  {
    outlined consume of Data._Representation(v0[10], v1);
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t type metadata accessor for DaemonPersister(uint64_t a1)
{
  result = type metadata singleton initialization cache for DaemonPersister;
  if (!type metadata singleton initialization cache for DaemonPersister)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2652A9BE8@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  return result;
}

uint64_t sub_2652A9C34(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 176);

  return v2(v3);
}

uint64_t sub_2652A9C88@<X0>(uint64_t a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result & 1;
  return result;
}

uint64_t sub_2652A9D20@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 216))();
  *a2 = result;
  return result;
}

uint64_t sub_2652A9D6C(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 224);

  return v2(v3);
}

uint64_t sub_2652A9DC0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 240))();
  *a2 = result;
  return result;
}

uint64_t sub_2652A9E0C(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 248);

  return v2(v3);
}

uint64_t type metadata completion function for DaemonPersister(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SMAFeatureFlagsStore();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t dispatch thunk of DaemonPersister.setupDB()()
{
  v4 = (*(*v0 + 280) + **(*v0 + 280));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v4();
}

uint64_t dispatch thunk of DaemonPersister.closeDB()()
{
  v4 = (*(*v0 + 288) + **(*v0 + 288));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v4();
}

uint64_t dispatch thunk of DaemonPersister.deleteDB()()
{
  v4 = (*(*v0 + 296) + **(*v0 + 296));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v4();
}

uint64_t dispatch thunk of DaemonPersister.atomically<A>(with:do:rollback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v20 = (*(*v8 + 304) + **(*v8 + 304));
  v18 = swift_task_alloc();
  *(v9 + 16) = v18;
  *v18 = v9;
  v18[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v20(a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t dispatch thunk of DaemonPersister.save(swiftMLSClientID:forIdentifier:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 312) + **(*v2 + 312));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v8(a1, a2);
}

uint64_t dispatch thunk of DaemonPersister.loadSwiftMLSClientID(identifier:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 320) + **(*v2 + 320));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v8(a1, a2);
}

uint64_t dispatch thunk of DaemonPersister.save(swiftMLSGroupID:forIdentifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 328) + **(*v5 + 328));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v14(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of DaemonPersister.loadSwiftMLSGroupID(identifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 336) + **(*v3 + 336));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = dispatch thunk of DaemonPersister.loadSwiftMLSGroupID(identifier:clientIdentifier:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of DaemonPersister.loadSecureMessagingGroupID(swiftMLSGroupID:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 344) + **(*v3 + 344));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = dispatch thunk of DaemonPersister.loadSecureMessagingGroupID(swiftMLSGroupID:clientIdentifier:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of DaemonPersister.loadSecureMessagingGroupID(swiftMLSGroupID:clientIdentifier:)(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

uint64_t dispatch thunk of DaemonPersister.save(groupClientContextBlob:forIdentifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 352) + **(*v5 + 352));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v14(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of DaemonPersister.loadGroupClientContextBlob(identifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 360) + **(*v3 + 360));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = dispatch thunk of DaemonPersister.loadSwiftMLSGroupID(identifier:clientIdentifier:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of DaemonPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 368) + **(*v4 + 368));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = dispatch thunk of DaemonPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:);

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DaemonPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:)(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t dispatch thunk of DaemonPersister.saveGroupMembers(identifier:membersToAdd:membersToDelete:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 376) + **(*v5 + 376));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v14(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of DaemonPersister.replaceGroupMembers(identifier:newMembers:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 384) + **(*v4 + 384));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DaemonPersister.loadRetryCount(forGroup:messageID:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 392) + **(*v5 + 392));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = dispatch thunk of DaemonPersister.loadRetryCount(forGroup:messageID:clientIdentifier:);

  return v14(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of DaemonPersister.loadRetryCount(forGroup:messageID:clientIdentifier:)(uint64_t a1, char a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2 & 1);
}

uint64_t dispatch thunk of DaemonPersister.save(retryCount:forGroup:messageID:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 400) + **(*v6 + 400));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of DaemonPersister.deleteGroup(identifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 408) + **(*v3 + 408));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of DaemonPersister.deleteSecureMessagingGroup(identifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 416) + **(*v3 + 416));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = protocol witness for MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:) in conformance KDSRegistrationKeyPackageExchanger;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of DaemonPersister.save(outgoingEventUpdate:forGroup:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 424) + **(*v4 + 424));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DaemonPersister.save(incomingEvent:forGroup:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 432) + **(*v4 + 432));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DaemonPersister.delete(incomingEvent:forGroup:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 440) + **(*v4 + 440));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DaemonPersister.save(eventsSinceLastKeyUpdate:forIdentifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 448) + **(*v4 + 448));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DaemonPersister.loadEventsSinceLastKeyUpdate(forIdentifier:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 456) + **(*v4 + 456));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DaemonPersister.loadClientIdentifiersWithEvents()()
{
  v4 = (*(*v0 + 464) + **(*v0 + 464));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = dispatch thunk of DaemonPersister.loadClientIdentifiersWithEvents();

  return v4();
}

uint64_t dispatch thunk of DaemonPersister.loadEvents(clientIdentifier:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 472) + **(*v2 + 472));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v8(a1, a2);
}

uint64_t dispatch thunk of DaemonPersister.loadRetriableEventStates(clientIdentifier:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 480) + **(*v2 + 480));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v8(a1, a2);
}

uint64_t dispatch thunk of DaemonPersister.read(clientUUID:)(uint64_t a1)
{
  v6 = (*(*v1 + 488) + **(*v1 + 488));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of DaemonPersister.loadSwiftMLSGroupID(identifier:clientIdentifier:);

  return v6(a1);
}

uint64_t dispatch thunk of DaemonPersister.write(clientUUID:clientState:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 496) + **(*v3 + 496));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of DaemonPersister.write(groupID:groupStateUpdate:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 504) + **(*v4 + 504));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DaemonPersister.readGroupState(groupID:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 512) + **(*v3 + 512));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = dispatch thunk of DaemonPersister.loadSwiftMLSGroupID(identifier:clientIdentifier:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of DaemonPersister.readEpochData(groupID:epochID:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 520) + **(*v4 + 520));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = dispatch thunk of DaemonPersister.loadSwiftMLSGroupID(identifier:clientIdentifier:);

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of DaemonPersister.readGroupState(swiftMLSGroupRead:clientIdentifier:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 528) + **(*v2 + 528));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = dispatch thunk of DaemonPersister.loadSwiftMLSGroupID(identifier:clientIdentifier:);

  return v8(a1, a2);
}

uint64_t dispatch thunk of DaemonPersister.readEpochData(swiftMLSEpochRead:clientIdentifier:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 536) + **(*v2 + 536));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = dispatch thunk of DaemonPersister.loadSwiftMLSGroupID(identifier:clientIdentifier:);

  return v8(a1, a2);
}

uint64_t dispatch thunk of DaemonPersister.write(swiftMLSGroupWrite:clientIdentifier:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 544) + **(*v2 + 544));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v8(a1, a2);
}

uint64_t dispatch thunk of DaemonPersister.getSwiftMLSPersister(forClientIdentifier:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 552) + **(*v2 + 552));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v8(a1, a2);
}

uint64_t _s24SecureMessagingAgentCore17StateMachineModelVSgWOg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t _s15SecureMessaging8MLSActorCACScAAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined consume of Set<Data>.Index._Variant(uint64_t result, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return v3;
}

uint64_t KeyPackageExchangerBroadcaster.__allocating_init(clientConnection:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t KeyPackageExchangerBroadcaster.retrieveKeyPackage(members:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  type metadata accessor for MLSActor();
  v4[6] = static MLSActor.shared.getter();
  _s15SecureMessaging8MLSActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v6 = dispatch thunk of Actor.unownedExecutor.getter();
  v4[7] = v6;
  v4[8] = v5;

  return MEMORY[0x2822009F8](KeyPackageExchangerBroadcaster.retrieveKeyPackage(members:context:), v6, v5);
}

uint64_t KeyPackageExchangerBroadcaster.retrieveKeyPackage(members:context:)()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO25KeyPackageRetrievalResultVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO25KeyPackageRetrievalResultVy_AC9AllMemberOGMR);
  v2 = type metadata accessor for MLS.KeyPackageRetrievalError();
  v3 = swift_task_alloc();
  *(v0 + 72) = v3;
  *(v3 + 16) = *(v0 + 24);
  v4 = swift_task_alloc();
  *(v0 + 80) = v4;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataV_ACtMd, &_s10Foundation4DataV_ACtMR);
  lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>, MEMORY[0x277D4D068]);
  lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(&lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>, MEMORY[0x277D4D060]);
  _s15SecureMessaging8MLSActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError and conformance MLS.KeyPackageRetrievalError, MEMORY[0x277D4D050], MEMORY[0x277D4D048]);
  *v4 = v0;
  v4[1] = DelegateBroadcaster.fetchMember(uri:context:);
  v5 = *(v0 + 40);
  v6 = *(v0 + 16);

  return MEMORY[0x2821ACBF8](v6, v1, v2, partial apply for closure #1 in KeyPackageExchangerBroadcaster.retrieveKeyPackage(members:context:), v3, partial apply for closure #2 in KeyPackageExchangerBroadcaster.retrieveKeyPackage(members:context:), v5, v1);
}

void closure #1 in KeyPackageExchangerBroadcaster.retrieveKeyPackage(members:context:)(uint64_t *a3@<X8>)
{
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15SecureMessaging3MLSO9AllMemberOGMd, &_sSay15SecureMessaging3MLSO9AllMemberOGMR);
  lazy protocol witness table accessor for type [MLS.AllMember] and conformance <A> [A]();
  v5 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v7 = v6;

  if (!v3)
  {
    swift_allocObject();
    JSONEncoder.init()();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO26KeyPackageRetrievalContextVSgMd, &_s15SecureMessaging3MLSO26KeyPackageRetrievalContextVSgMR);
    lazy protocol witness table accessor for type MLS.KeyPackageRetrievalContext? and conformance <A> A?();
    v8 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v10 = v9;

    *a3 = v5;
    a3[1] = v7;
    a3[2] = v8;
    a3[3] = v10;
  }
}

void closure #2 in KeyPackageExchangerBroadcaster.retrieveKeyPackage(members:context:)(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *a1;
  v7 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = *(a4 + 16);
  outlined copy of Data._Representation(*a1, v7);
  outlined copy of Data._Representation(v8, v9);
  isa = Data._bridgeToObjectiveC()().super.isa;
  v12 = Data._bridgeToObjectiveC()().super.isa;
  v14[4] = a2;
  v14[5] = a3;
  v14[0] = MEMORY[0x277D85DD0];
  v14[1] = 1107296256;
  v14[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed Data?, @guaranteed Data?) -> ();
  v14[3] = &block_descriptor_3;
  v13 = _Block_copy(v14);

  [v10 retrieveKeyPackageWithMembers:isa context:v12 completion:v13];
  _Block_release(v13);

  outlined consume of Data._Representation(v8, v9);
  outlined consume of Data._Representation(v6, v7);
}

uint64_t lazy protocol witness table accessor for type MLS.KeyPackageRetrievalResult<MLS.AllMember> and conformance MLS.KeyPackageRetrievalResult<A>(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15SecureMessaging3MLSO25KeyPackageRetrievalResultVy_AC9AllMemberOGMd, &_s15SecureMessaging3MLSO25KeyPackageRetrievalResultVy_AC9AllMemberOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t KeyPackageExchangerBroadcaster.__deallocating_deinit(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  swift_unknownObjectRelease(*(v8 + 16), a2, a3, a4, a5, a6, a7, a8);

  return MEMORY[0x2821FE8D8](v8, 24, 7);
}

uint64_t protocol witness for MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:) in conformance KeyPackageExchangerBroadcaster(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 96) + **(*v3 + 96));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = protocol witness for MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:) in conformance KDSRegistrationKeyPackageExchanger;

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of KeyPackageExchangerBroadcaster.retrieveKeyPackage(members:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 96) + **(*v3 + 96));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = protocol witness for MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:) in conformance KDSRegistrationKeyPackageExchanger;

  return v10(a1, a2, a3);
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type [MLS.AllMember] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [MLS.AllMember] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [MLS.AllMember] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15SecureMessaging3MLSO9AllMemberOGMd, &_sSay15SecureMessaging3MLSO9AllMemberOGMR);
    _s15SecureMessaging8MLSActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type MLS.AllMember and conformance MLS.AllMember, MEMORY[0x277D4D218], MEMORY[0x277D4D220]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [MLS.AllMember] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [MLS.AllMember] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [MLS.AllMember] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15SecureMessaging3MLSO9AllMemberOGMd, &_sSay15SecureMessaging3MLSO9AllMemberOGMR);
    _s15SecureMessaging8MLSActorCACScAAAWlTm_3(&lazy protocol witness table cache variable for type MLS.AllMember and conformance MLS.AllMember, MEMORY[0x277D4D218], MEMORY[0x277D4D238]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [MLS.AllMember] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.KeyPackageRetrievalContext? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalContext? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalContext? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15SecureMessaging3MLSO26KeyPackageRetrievalContextVSgMd, &_s15SecureMessaging3MLSO26KeyPackageRetrievalContextVSgMR);
    _s15SecureMessaging8MLSActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalContext and conformance MLS.KeyPackageRetrievalContext, MEMORY[0x277D4D140], MEMORY[0x277D4D148]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalContext? and conformance <A> A?);
  }

  return result;
}

uint64_t _s15SecureMessaging8MLSActorCACScAAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t KDSRegistrationDaemon.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

void *KDSRegistrationDaemon.keyPackageExchanger.getter()
{
  v1 = type metadata accessor for SMAFeatureFlagsStore();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon____lazy_storage___keyPackageExchanger;
  if (*(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon____lazy_storage___keyPackageExchanger))
  {
    v7 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon____lazy_storage___keyPackageExchanger);
  }

  else
  {
    v8 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_stateMachineNetworkOperator);
    v9 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_pushHandler);
    swift_retain_n();
    v10 = v9;
    default argument 0 of SMAFeatureFlagsStore.init(overrides:)();
    SMAFeatureFlagsStore.init(overrides:)();
    v14 = &type metadata for SMAUserDefaults;
    v15 = &protocol witness table for SMAUserDefaults;
    type metadata accessor for KDSRegistrationKeyPackageExchanger(0);
    v7 = swift_allocObject();
    v7[10] = type metadata accessor for KDSRegistrationPushHandler();
    v7[11] = &protocol witness table for KDSRegistrationPushHandler;
    v7[7] = v10;
    v7[15] = type metadata accessor for KDSRegistrationStateMachineNetworkOperator();
    v7[16] = &protocol witness table for KDSRegistrationStateMachineNetworkOperator;
    v7[12] = v8;
    outlined init with take of SMAUserDefaultsProtocol(&v13, (v7 + 2));
    (*(v2 + 32))(v7 + OBJC_IVAR____TtC24SecureMessagingAgentCore34KDSRegistrationKeyPackageExchanger_featureFlagStore, v5, v1);

    *(v0 + v6) = v7;
  }

  return v7;
}

uint64_t (*KDSRegistrationDaemon.keyPackageExchanger.modify(void *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = KDSRegistrationDaemon.keyPackageExchanger.getter();
  return KDSRegistrationDaemon.keyPackageExchanger.modify;
}

uint64_t KDSRegistrationDaemon.heartbeatBGActivity.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_heartbeatBGActivity);

  return v1;
}

uint64_t KDSRegistrationDaemon.registrationStateMachineBySimUniqueID.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_registrationStateMachineBySimUniqueID;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t KDSRegistrationDaemon.testPhoneNumber.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_testPhoneNumber);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t KDSRegistrationDaemon.testPhoneNumber.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_testPhoneNumber);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

id KDSRegistrationDaemon.init(mlsDaemon:)(uint64_t a1)
{
  v2 = v1;
  v36 = a1;
  v3 = type metadata accessor for LogCategory();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(v4 + 104);
  v8(v7, *MEMORY[0x277D4C900], v3);
  secureMessagingLogger(category:)();
  v9 = *(v4 + 8);
  v9(v7, v3);
  v10 = OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_clientXPCServer;
  type metadata accessor for RegistrationClientXPCServer();
  v11 = swift_allocObject();
  *(v11 + 16) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC15SecureMessaging15KDSRegistrationO22UniqueClientIdentifierV_0cD9AgentCore0eG0VTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *&v2[v10] = v11;
  v12 = OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_phoneNumberProvider;
  type metadata accessor for PhoneNumberProvider(0);
  v13 = swift_allocObject();
  v8(v7, *MEMORY[0x277D4C908], v3);
  secureMessagingLogger(category:)();
  v9(v7, v3);
  *&v2[v12] = v13;
  v14 = OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_pushHandler;
  *&v2[v14] = [objc_allocWithZone(type metadata accessor for KDSRegistrationPushHandler()) init];
  v15 = OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_registrationPersister;
  v38 = 0;
  v39 = 0xE000000000000000;
  _StringGuts.grow(_:)(27);

  v16 = NSHomeDirectory();
  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  v38 = v17;
  v39 = v19;
  MEMORY[0x266756A70](0xD000000000000019, 0x80000002653491A0);
  v20 = v38;
  v21 = v39;
  type metadata accessor for KDSRegistrationPersister(0);
  swift_allocObject();
  *&v2[v15] = KDSRegistrationPersister.init(fileDir:dbFileName:)(v20, v21, 0xD000000000000012, 0x80000002653491C0);
  type metadata accessor for KDSRegistrationStateMachineNetworkOperator();
  v22 = swift_allocObject();
  type metadata accessor for RequestManager();
  v23 = swift_allocObject();
  v24 = [objc_opt_self() sharedInstance];
  v25 = [objc_allocWithZone(MEMORY[0x277D07DD0]) initWithIDSServerBag_];

  if (v25)
  {
    [v25 setLogToRegistration_];
  }

  v26 = OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_stateMachineNetworkOperator;
  *(v23 + 16) = v25;
  *(v22 + 16) = v23;
  static ServerBag.kdsBag.getter();
  *&v2[v26] = v22;
  *&v2[OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon____lazy_storage___keyPackageExchanger] = 0;
  v27 = &v2[OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_heartbeatBGActivity];
  *v27 = 0xD000000000000028;
  *(v27 + 1) = 0x800000026534A690;
  v28 = OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_registrationStateMachineBySimUniqueID;
  *&v2[v28] = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_24SecureMessagingAgentCore27KDSRegistrationStateMachineCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v29 = &v2[OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_testPhoneNumber];
  *v29 = 0;
  *(v29 + 1) = 0;
  *&v2[OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_mlsDaemon] = v36;
  v30 = OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_mlsDaemonID;
  v31 = *MEMORY[0x277D4CD40];
  v32 = type metadata accessor for MLS.ClientIdentifier();
  (*(*(v32 - 8) + 104))(&v2[v30], v31, v32);
  v33 = type metadata accessor for KDSRegistrationDaemon(0);
  v37.receiver = v2;
  v37.super_class = v33;
  return objc_msgSendSuper2(&v37, sel_init);
}

id KDSRegistrationDaemon.__deallocating_deinit()
{
  v1 = v0;
  v2 = type metadata accessor for Logger();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1 + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_logger, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_26524C000, v7, v8, "KDSRegistrationDaemon deinitialized", v9, 2u);
    MEMORY[0x2667577B0](v9, -1, -1);
  }

  (*(v3 + 8))(v6, v2);
  v10 = type metadata accessor for KDSRegistrationDaemon(0);
  v12.receiver = v1;
  v12.super_class = v10;
  return objc_msgSendSuper2(&v12, sel_dealloc);
}

uint64_t KDSRegistrationDaemon.start()()
{
  *(v1 + 64) = v0;
  return MEMORY[0x2822009F8](KDSRegistrationDaemon.start(), 0, 0);
}

{
  v3 = (*(**(*(v0 + 64) + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_registrationPersister) + 128) + **(**(*(v0 + 64) + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_registrationPersister) + 128));
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = KDSRegistrationDaemon.start();

  return v3();
}

{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](KDSRegistrationDaemon.start(), 0, 0);
  }
}

{
  v1 = v0[8];
  v0[10] = *(v1 + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_mlsDaemon);
  v2 = ((*MEMORY[0x277D85000] & *v1) + 184) & 0xFFFFFFFFFFFFLL | 0xB7E1000000000000;
  v0[11] = *((*MEMORY[0x277D85000] & *v1) + 0xB8);
  v0[12] = v2;
  type metadata accessor for RegistrationActor();
  v3 = v1;
  v0[13] = static RegistrationActor.shared.getter();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20], MEMORY[0x277D4CC28]);
  v5 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](KDSRegistrationDaemon.start(), v5, v4);
}

{
  v1 = *(v0 + 88);

  *(v0 + 112) = v1(v2);

  return MEMORY[0x2822009F8](KDSRegistrationDaemon.start(), 0, 0);
}

{
  *(v0 + 120) = OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_mlsDaemonID;
  type metadata accessor for MLSActor();
  *(v0 + 128) = static MLSActor.shared.getter();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type MLSActor and conformance MLSActor, MEMORY[0x277D4D280], MEMORY[0x277D4D288]);
  v2 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](KDSRegistrationDaemon.start(), v2, v1);
}

{
  v1 = v0[15];
  v2 = v0[14];
  v3 = v0[10];
  v4 = v0[8];

  specialized MLSDaemon.setupInternalConnection(mlsDaemonClient:regClientKeyPackageExchanger:identifier:)(v4, v2, v4 + v1, v3);

  v5 = *((*MEMORY[0x277D85000] & *v4) + 0x140);
  v8 = (v5 + *v5);
  v6 = swift_task_alloc();
  v0[17] = v6;
  *v6 = v0;
  v6[1] = KDSRegistrationDaemon.start();

  return v8();
}

{
  v1 = *v0;
  v2 = *(*v0 + 64);
  v7 = *v0;

  v3 = *((*MEMORY[0x277D85000] & *v2) + 0x148);
  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  *(v1 + 144) = v4;
  *v4 = v7;
  v4[1] = KDSRegistrationDaemon.start();

  return v6();
}

{

  return MEMORY[0x2822009F8](KDSRegistrationDaemon.start(), 0, 0);
}

{
  v1 = v0[8];
  v2 = [objc_opt_self() sharedScheduler];
  v3 = MEMORY[0x266756A10](*&v1[OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_heartbeatBGActivity], *&v1[OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_heartbeatBGActivity + 8]);
  type metadata accessor for OS_dispatch_queue();
  v4 = static OS_dispatch_queue.main.getter();
  v5 = swift_allocObject();
  *(v5 + 16) = v1;
  v0[6] = partial apply for closure #1 in KDSRegistrationDaemon.start();
  v0[7] = v5;
  v0[2] = MEMORY[0x277D85DD0];
  v0[3] = 1107296256;
  v0[4] = thunk for @escaping @callee_guaranteed (@guaranteed BGSystemTask) -> ();
  v0[5] = &block_descriptor_4;
  v6 = _Block_copy(v0 + 2);
  v7 = v1;

  [v2 registerForTaskWithIdentifier:v3 usingQueue:v4 launchHandler:v6];
  _Block_release(v6);

  v8 = v0[1];

  return v8();
}

uint64_t closure #1 in KDSRegistrationDaemon.start()(void *a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v13 - v6;
  v8 = type metadata accessor for TaskPriority();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a2;
  v9[5] = a1;
  v10 = a2;
  v11 = a1;
  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in closure #1 in KDSRegistrationDaemon.start(), v9);
}

uint64_t closure #1 in closure #1 in KDSRegistrationDaemon.start()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x2822009F8](closure #1 in closure #1 in KDSRegistrationDaemon.start(), 0, 0);
}

uint64_t closure #1 in closure #1 in KDSRegistrationDaemon.start()(uint64_t a1)
{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26524C000, v2, v3, "Heartbeat background task fired.", v4, 2u);
    MEMORY[0x2667577B0](v4, -1, -1);
  }

  v5 = v1[2];

  v6 = *((*MEMORY[0x277D85000] & *v5) + 0x158);
  v10 = (v6 + *v6);
  v7 = swift_task_alloc();
  v1[4] = v7;
  *v7 = v1;
  v7[1] = closure #1 in closure #1 in KDSRegistrationDaemon.start();
  v8 = v1[3];

  return v10(v8);
}

uint64_t closure #1 in closure #1 in KDSRegistrationDaemon.start()()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

void thunk for @escaping @callee_guaranteed (@guaranteed BGSystemTask) -> ()(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

uint64_t KDSRegistrationDaemon.setupXPCConnection(client:uniqueClientIdentifier:clientIdentifier:simUniqueID:simLabelID:uriSupportedState:testPhoneNumber:completion:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, unint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v16 = v15;
  type metadata accessor for KDSRegistration.ClientCreationError();
  v21 = swift_allocObject();
  v21[2] = a10;
  v21[3] = a11;
  v21[4] = a2;
  v21[5] = a3;
  v21[6] = a6;
  v21[7] = a7;
  v21[8] = a8;
  v21[9] = a9;
  v22 = swift_allocObject();
  v22[2] = a4;
  v22[3] = a5;
  v22[4] = v16;
  v22[5] = a12;
  v22[6] = a13;
  v22[7] = a1;
  v23 = swift_allocObject();
  *(v23 + 16) = &async function pointer to partial apply for closure #2 in KDSRegistrationDaemon.setupXPCConnection(client:uniqueClientIdentifier:clientIdentifier:simUniqueID:simLabelID:uriSupportedState:testPhoneNumber:completion:);
  *(v23 + 24) = v22;
  outlined copy of Data._Representation(a10, a11);
  outlined copy of Data._Representation(a2, a3);
  swift_unknownObjectRetain();

  v24 = v16;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SS15SecureMessaging15KDSRegistrationO17URISupportedStateOAC22UniqueClientIdentifierVtMd, &_sSS_SS15SecureMessaging15KDSRegistrationO17URISupportedStateOAC22UniqueClientIdentifierVtMR);
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type KDSRegistration.ClientCreationError and conformance KDSRegistration.ClientCreationError, MEMORY[0x277D4CA88], MEMORY[0x277D4CA80]);
  static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)();
}

uint64_t closure #2 in KDSRegistrationDaemon.setupXPCConnection(client:uniqueClientIdentifier:clientIdentifier:simUniqueID:simLabelID:uriSupportedState:testPhoneNumber:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  *(v8 + 248) = v16;
  *(v8 + 256) = v17;
  *(v8 + 232) = v15;
  *(v8 + 216) = a7;
  *(v8 + 224) = a8;
  *(v8 + 200) = a5;
  *(v8 + 208) = a6;
  *(v8 + 184) = a3;
  *(v8 + 192) = a4;
  *(v8 + 168) = a1;
  *(v8 + 176) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  *(v8 + 264) = swift_task_alloc();
  type metadata accessor for JSONEncoder.OutputFormatting();
  *(v8 + 272) = swift_task_alloc();
  v9 = type metadata accessor for LogCategory();
  *(v8 + 280) = v9;
  *(v8 + 288) = *(v9 - 8);
  *(v8 + 296) = swift_task_alloc();
  v10 = type metadata accessor for KDSRegistration.URISupportedState();
  *(v8 + 304) = v10;
  *(v8 + 312) = *(v10 - 8);
  *(v8 + 320) = swift_task_alloc();
  *(v8 + 328) = swift_task_alloc();
  v11 = type metadata accessor for KDSRegistration.UniqueClientIdentifier();
  *(v8 + 336) = v11;
  *(v8 + 344) = *(v11 - 8);
  *(v8 + 352) = swift_task_alloc();
  *(v8 + 360) = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15KDSRegistrationO16ClientIdentifierOSgMd, &_s15SecureMessaging15KDSRegistrationO16ClientIdentifierOSgMR);
  *(v8 + 368) = swift_task_alloc();
  v12 = type metadata accessor for KDSRegistration.ClientIdentifier();
  *(v8 + 376) = v12;
  *(v8 + 384) = *(v12 - 8);
  *(v8 + 392) = swift_task_alloc();
  *(v8 + 400) = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in KDSRegistrationDaemon.setupXPCConnection(client:uniqueClientIdentifier:clientIdentifier:simUniqueID:simLabelID:uriSupportedState:testPhoneNumber:completion:), 0, 0);
}

uint64_t closure #2 in KDSRegistrationDaemon.setupXPCConnection(client:uniqueClientIdentifier:clientIdentifier:simUniqueID:simLabelID:uriSupportedState:testPhoneNumber:completion:)()
{
  v72 = v0;
  v1 = *(v0 + 376);
  v2 = *(v0 + 384);
  v3 = *(v0 + 368);

  KDSRegistration.ClientIdentifier.init(rawValue:)();
  v4 = (*(v2 + 48))(v3, 1, v1);
  *(v0 + 656) = v4;
  if (v4 == 1)
  {
    outlined destroy of MLS.KeyPackageProvider?(*(v0 + 368), &_s15SecureMessaging15KDSRegistrationO16ClientIdentifierOSgMd, &_s15SecureMessaging15KDSRegistrationO16ClientIdentifierOSgMR);

    v5 = *(v0 + 8);
    v6 = *(v0 + 656) != 1;

    return v5(v6);
  }

  else
  {
    v8 = *(v0 + 400);
    v9 = *(v0 + 376);
    v10 = *(v0 + 384);
    v11 = *(v0 + 368);
    v12 = *(v10 + 32);
    *(v0 + 408) = v12;
    *(v0 + 416) = (v10 + 32) & 0xFFFFFFFFFFFFLL | 0x48D8000000000000;
    v12(v8, v11, v9);
    if (specialized SMAUserDefaults.shouldUseTestNumber()())
    {

      v13 = Logger.logObject.getter();
      v14 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v13, v14))
      {
        v16 = *(v0 + 240);
        v15 = *(v0 + 248);
        v17 = swift_slowAlloc();
        v18 = swift_slowAlloc();
        v71 = v18;
        *v17 = 136315138;
        *(v0 + 152) = v16;
        *(v0 + 160) = v15;

        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
        v19 = String.init<A>(describing:)();
        v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, &v71);

        *(v17 + 4) = v21;
        _os_log_impl(&dword_26524C000, v13, v14, "KDSRegistrationDaemon -- Using Test Phone Number setupXPCConnection: %s", v17, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v18);
        MEMORY[0x2667577B0](v18, -1, -1);
        MEMORY[0x2667577B0](v17, -1, -1);
      }

      v22 = *(v0 + 248);
      if (v22)
      {
        v23 = *(v0 + 240);
        v24 = *((*MEMORY[0x277D85000] & **(v0 + 232)) + 0xF0);

        v24(v23, v22);
      }
    }

    if (*(v0 + 256))
    {
      v25 = *(v0 + 360);
      v26 = *(v0 + 336);
      v27 = *(v0 + 344);
      v28 = *(v0 + 328);
      v29 = *(v0 + 304);
      v30 = *(v0 + 312);
      v32 = *(v0 + 200);
      v31 = *(v0 + 208);
      *(v0 + 424) = OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_logger;
      v33 = *(v27 + 16);
      *(v0 + 432) = v33;
      *(v0 + 440) = (v27 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v33(v25, v31, v26);
      v34 = *(v30 + 16);
      *(v0 + 448) = v34;
      *(v0 + 456) = (v30 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
      v69 = v34;
      v34(v28, v32, v29);

      swift_unknownObjectRetain();

      v35 = Logger.logObject.getter();
      v36 = static os_log_type_t.default.getter();

      v37 = os_log_type_enabled(v35, v36);
      v38 = *(v0 + 360);
      v40 = *(v0 + 336);
      v39 = *(v0 + 344);
      v41 = *(v0 + 328);
      if (v37)
      {
        v68 = *(v0 + 312);
        v66 = *(v0 + 320);
        v67 = *(v0 + 304);
        v60 = *(v0 + 216);
        v61 = *(v0 + 224);
        v64 = *(v0 + 184);
        v65 = *(v0 + 192);
        v62 = *(v0 + 168);
        v63 = *(v0 + 176);
        v42 = swift_slowAlloc();
        v70 = swift_slowAlloc();
        v71 = v70;
        *v42 = 136316162;
        _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type KDSRegistration.UniqueClientIdentifier and conformance KDSRegistration.UniqueClientIdentifier, MEMORY[0x277D4CAE8], MEMORY[0x277D4CB10]);
        v43 = dispatch thunk of CustomStringConvertible.description.getter();
        v45 = v44;
        (*(v39 + 8))(v38, v40);
        v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v45, &v71);

        *(v42 + 4) = v46;
        *(v42 + 12) = 2080;
        *(v42 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v61, &v71);
        *(v42 + 22) = 2080;
        *(v42 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v63, &v71);
        *(v42 + 32) = 2080;
        *(v42 + 34) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v65, &v71);
        *(v42 + 42) = 2080;
        v69(v66, v41, v67);
        v47 = String.init<A>(describing:)();
        v49 = v48;
        (*(v68 + 8))(v41, v67);
        v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, &v71);

        *(v42 + 44) = v50;
        _os_log_impl(&dword_26524C000, v35, v36, "KDSRegistrationDaemon -- added client with uniqueClientIdentifier: %s, clientIdentifier: %s, simUniqueID: %s, simLabelID: %s, uriSupportedState: %s", v42, 0x34u);
        swift_arrayDestroy();
        MEMORY[0x2667577B0](v70, -1, -1);
        MEMORY[0x2667577B0](v42, -1, -1);
      }

      else
      {
        v58 = *(v0 + 304);
        v57 = *(v0 + 312);

        (*(v57 + 8))(v41, v58);
        (*(v39 + 8))(v38, v40);
      }

      (*(*(v0 + 384) + 16))(*(v0 + 392), *(v0 + 400), *(v0 + 376));
      *(v0 + 496) = type metadata accessor for RegistrationActor();
      swift_unknownObjectRetain();
      *(v0 + 504) = static RegistrationActor.shared.getter();
      *(v0 + 512) = _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20], MEMORY[0x277D4CC28]);
      v53 = dispatch thunk of Actor.unownedExecutor.getter();
      v55 = v59;
      v56 = closure #2 in KDSRegistrationDaemon.setupXPCConnection(client:uniqueClientIdentifier:clientIdentifier:simUniqueID:simLabelID:uriSupportedState:testPhoneNumber:completion:);
    }

    else
    {
      v51 = *(*(v0 + 232) + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_clientXPCServer);
      *(v0 + 464) = v51;
      v52 = *v51 + 120;
      *(v0 + 472) = *v52;
      *(v0 + 480) = v52 & 0xFFFFFFFFFFFFLL | 0x6765000000000000;
      type metadata accessor for RegistrationActor();
      *(v0 + 488) = static RegistrationActor.shared.getter();
      _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20], MEMORY[0x277D4CC28]);
      v53 = dispatch thunk of Actor.unownedExecutor.getter();
      v55 = v54;
      v56 = closure #2 in KDSRegistrationDaemon.setupXPCConnection(client:uniqueClientIdentifier:clientIdentifier:simUniqueID:simLabelID:uriSupportedState:testPhoneNumber:completion:);
    }

    return MEMORY[0x2822009F8](v56, v53, v55);
  }
}

{
  v1 = *(v0 + 472);
  v2 = *(v0 + 208);

  v1(v2);

  return MEMORY[0x2822009F8](closure #2 in KDSRegistrationDaemon.setupXPCConnection(client:uniqueClientIdentifier:clientIdentifier:simUniqueID:simLabelID:uriSupportedState:testPhoneNumber:completion:), 0, 0);
}

{
  (*(*(v0 + 384) + 8))(*(v0 + 400), *(v0 + 376));

  v1 = *(v0 + 8);
  v2 = *(v0 + 656) != 1;

  return v1(v2);
}

{
  v1 = v0[51];
  v2 = v0[49];
  v3 = v0[47];
  v4 = v0[32];

  type metadata accessor for KDSRegistrationXPCBroadcaster(0);
  v5 = swift_allocObject();
  v0[65] = v5;
  v1(v5 + OBJC_IVAR____TtC24SecureMessagingAgentCore29KDSRegistrationXPCBroadcaster_clientIdentifier, v2, v3);
  *(v5 + OBJC_IVAR____TtC24SecureMessagingAgentCore29KDSRegistrationXPCBroadcaster_clientConnection) = v4;

  return MEMORY[0x2822009F8](closure #2 in KDSRegistrationDaemon.setupXPCConnection(client:uniqueClientIdentifier:clientIdentifier:simUniqueID:simLabelID:uriSupportedState:testPhoneNumber:completion:), 0, 0);
}

{
  v1 = *(v0[29] + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_clientXPCServer);
  v0[66] = v1;
  v2 = *v1 + 112;
  v0[67] = *v2;
  v0[68] = v2 & 0xFFFFFFFFFFFFLL | 0x5563000000000000;
  swift_unknownObjectRetain();

  v0[69] = static RegistrationActor.shared.getter();
  v4 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in KDSRegistrationDaemon.setupXPCConnection(client:uniqueClientIdentifier:clientIdentifier:simUniqueID:simLabelID:uriSupportedState:testPhoneNumber:completion:), v4, v3);
}

{
  v1 = v0[67];
  v2 = v0[65];
  v3 = v0[32];
  v4 = v0[26];

  v1(v3, v2, v4);
  swift_unknownObjectRelease(v3, v5, v6, v7, v8, v9, v10, v11);

  return MEMORY[0x2822009F8](closure #2 in KDSRegistrationDaemon.setupXPCConnection(client:uniqueClientIdentifier:clientIdentifier:simUniqueID:simLabelID:uriSupportedState:testPhoneNumber:completion:), 0, 0);
}

{
  v22 = v0;
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & **(v0 + 232)) + 0xD0))();
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 168), *(v0 + 176)), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
    *(v0 + 608) = v5;

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v9 = *(v0 + 168);
      v8 = *(v0 + 176);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v21 = v11;
      *v10 = 136315138;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v21);
      _os_log_impl(&dword_26524C000, v6, v7, "KDSRegistrationDaemon -- Updating state machine for simUniqueID: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x2667577B0](v11, -1, -1);
      MEMORY[0x2667577B0](v10, -1, -1);
    }

    v20 = (*(*v5 + 568) + **(*v5 + 568));
    v12 = swift_task_alloc();
    *(v0 + 616) = v12;
    *v12 = v0;
    v12[1] = closure #2 in KDSRegistrationDaemon.setupXPCConnection(client:uniqueClientIdentifier:clientIdentifier:simUniqueID:simLabelID:uriSupportedState:testPhoneNumber:completion:);
    v13 = *(v0 + 200);

    return v20(v13);
  }

  else
  {
    v15 = *(v0 + 232);

    v16 = *(v15 + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_pushHandler);
    *(v0 + 560) = v16;
    v17 = (*v1 & *v16) + 176;
    *(v0 + 568) = *((*v1 & *v16) + 0xB0);
    *(v0 + 576) = v17 & 0xFFFFFFFFFFFFLL | 0x4AE000000000000;
    *(v0 + 584) = static RegistrationActor.shared.getter();
    v19 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](closure #2 in KDSRegistrationDaemon.setupXPCConnection(client:uniqueClientIdentifier:clientIdentifier:simUniqueID:simLabelID:uriSupportedState:testPhoneNumber:completion:), v19, v18);
  }
}

{
  v1 = v0[71];

  v0[74] = v1(v2);
  v0[75] = v3;

  return MEMORY[0x2822009F8](closure #2 in KDSRegistrationDaemon.setupXPCConnection(client:uniqueClientIdentifier:clientIdentifier:simUniqueID:simLabelID:uriSupportedState:testPhoneNumber:completion:), 0, 0);
}

{
  v21 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = v0[21];
    v3 = v0[22];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v20 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v20);
    _os_log_impl(&dword_26524C000, v1, v2, "KDSRegistrationDaemon -- Initializing new state machine for simUniqueID: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x2667577B0](v6, -1, -1);
    MEMORY[0x2667577B0](v5, -1, -1);
  }

  v7 = v0[75];
  v8 = v0[74];
  v9 = v0[56];
  v10 = v0[54];
  v11 = v0[44];
  v12 = v0[42];
  v13 = v0[40];
  v14 = v0[38];
  v15 = v0[25];
  v16 = v0[26];
  v0[79] = *(v0[29] + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_stateMachineNetworkOperator);
  v9(v13, v15, v14);
  v10(v11, v16, v12);

  outlined copy of Data?(v8, v7);
  v0[80] = static RegistrationActor.shared.getter();
  v18 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in KDSRegistrationDaemon.setupXPCConnection(client:uniqueClientIdentifier:clientIdentifier:simUniqueID:simLabelID:uriSupportedState:testPhoneNumber:completion:), v18, v17);
}

{
  *(*v1 + 624) = v0;

  if (v0)
  {
    v2 = closure #2 in KDSRegistrationDaemon.setupXPCConnection(client:uniqueClientIdentifier:clientIdentifier:simUniqueID:simLabelID:uriSupportedState:testPhoneNumber:completion:);
  }

  else
  {
    v2 = closure #2 in KDSRegistrationDaemon.setupXPCConnection(client:uniqueClientIdentifier:clientIdentifier:simUniqueID:simLabelID:uriSupportedState:testPhoneNumber:completion:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 256);

  swift_unknownObjectRelease(v1, v2, v3, v4, v5, v6, v7, v8);
  (*(*(v0 + 384) + 8))(*(v0 + 400), *(v0 + 376));

  v9 = *(v0 + 8);
  v10 = *(v0 + 656) != 1;

  return v9(v10);
}

{
  v1 = v0[79];
  v32 = v0[74];
  v33 = v0[75];
  v35 = v0[64];
  v29 = v0[56];
  v31 = v0[54];
  v30 = v0[44];
  v39 = v0[40];
  v40 = v0[42];
  v36 = v0[43];
  v37 = v0[39];
  v2 = v0[37];
  v38 = v0[38];
  v3 = v0[35];
  v4 = v0[36];
  v34 = v0[33];
  v5 = v0[29];
  v27 = v0[23];
  v28 = v0[24];
  v25 = v0[21];
  v26 = v0[22];

  type metadata accessor for KDSRegistrationStateMachine(0);
  v6 = swift_allocObject();
  v0[81] = v6;
  v0[5] = type metadata accessor for KDSRegistrationDaemon(0);
  v0[6] = &protocol witness table for KDSRegistrationDaemon;
  v0[2] = v5;
  v0[10] = type metadata accessor for KDSRegistrationStateMachineNetworkOperator();
  v0[11] = &protocol witness table for KDSRegistrationStateMachineNetworkOperator;
  v0[7] = v1;
  (*(v4 + 104))(v2, *MEMORY[0x277D4C918], v3);

  v7 = v5;
  secureMessagingLogger(category:)();
  (*(v4 + 8))(v2, v3);
  v8 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_phoneAuthInfo;
  v9 = type metadata accessor for KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo();
  (*(*(v9 - 8) + 56))(v6 + v8, 1, 1, v9);
  *(v6 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_participantInfo) = xmmword_2653419D0;
  *(v6 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_CSR) = xmmword_2653419D0;
  v10 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_telURI;
  v11 = type metadata accessor for URI();
  (*(*(v11 - 8) + 56))(v6 + v10, 1, 1, v11);
  v12 = (v6 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_phoneNumberCredential);
  *v12 = 0;
  v12[1] = 0;
  *(v6 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_phoneNumberCredentialType) = 4;
  v13 = (v6 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_serverVendedClientID);
  *v13 = 0;
  v13[1] = 0;
  v14 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_keyPackage;
  v15 = type metadata accessor for MLS.KeyPackageInfo();
  (*(*(v15 - 8) + 56))(v6 + v14, 1, 1, v15);
  v16 = v6 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_nextHeartbeatInterval;
  *v16 = 0;
  *(v16 + 8) = 1;
  *(v6 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_devicePushToken) = xmmword_2653419D0;
  *(v6 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_heartbeatTransaction) = 0;
  v17 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_encoder;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  *(v6 + v17) = JSONEncoder.init()();
  *(v6 + 16) = 18;
  *(v6 + 24) = v25;
  *(v6 + 32) = v26;
  *(v6 + 40) = v27;
  *(v6 + 48) = v28;
  v29(v6 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_uriSupportedState, v39, v38);
  outlined init with copy of SMAUserDefaultsProtocol((v0 + 2), v6 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator);
  outlined init with copy of SMAUserDefaultsProtocol((v0 + 7), v6 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_networkOperator);
  v31(v6 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_uniqueClientIdentifier, v30, v40);
  v18 = (v6 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_devicePushToken);
  swift_beginAccess();
  v19 = *v18;
  v20 = v18[1];
  *v18 = v32;
  v18[1] = v33;

  outlined copy of Data?(v32, v33);
  outlined consume of Data?(v19, v20);
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v34, 1, 1, v21);

  v22 = static RegistrationActor.shared.getter();
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = v35;
  v23[4] = v6;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v34, &closure #1 in KDSRegistrationStateMachine.rerun()partial apply, v23);

  outlined consume of Data?(v32, v33);
  (*(v36 + 8))(v30, v40);
  (*(v37 + 8))(v39, v38);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  return MEMORY[0x2822009F8](closure #2 in KDSRegistrationDaemon.setupXPCConnection(client:uniqueClientIdentifier:clientIdentifier:simUniqueID:simLabelID:uriSupportedState:testPhoneNumber:completion:), 0, 0);
}

{
  v1 = *(v0 + 648);
  v2 = *(v0 + 600);
  v3 = *(v0 + 592);
  v20 = *(v0 + 256);
  v5 = *(v0 + 168);
  v4 = *(v0 + 176);
  v6 = (*((*MEMORY[0x277D85000] & **(v0 + 232)) + 0xE0))(v0 + 96);
  v8 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v21 = *v8;
  *v8 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v1, v5, v4, isUniquelyReferenced_nonNull_native);

  *v8 = v21;
  v6(v0 + 96, 0);
  outlined consume of Data?(v3, v2);

  swift_unknownObjectRelease(v20, v10, v11, v12, v13, v14, v15, v16);
  (*(*(v0 + 384) + 8))(*(v0 + 400), *(v0 + 376));

  v17 = *(v0 + 8);
  v18 = *(v0 + 656) != 1;

  return v17(v18);
}

{
  v1 = v0[50];
  v2 = v0[47];
  v3 = v0[48];
  v4 = v0[32];

  swift_unknownObjectRelease(v4, v5, v6, v7, v8, v9, v10, v11);
  (*(v3 + 8))(v1, v2);

  v12 = v0[1];

  return v12(0);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String, @guaranteed String, @in_guaranteed KDSRegistration.URISupportedState, @in_guaranteed KDSRegistration.UniqueClientIdentifier) -> (@unowned Bool, @error @owned Error)(uint64_t a1, char *a2, int *a3)
{
  *(v3 + 16) = a1;
  v6 = *a2;
  v7 = *(a2 + 1);
  v8 = *(a2 + 2);
  v9 = *(a2 + 3);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SS15SecureMessaging15KDSRegistrationO17URISupportedStateOAC22UniqueClientIdentifierVtMd, &_sSS_SS15SecureMessaging15KDSRegistrationO17URISupportedStateOAC22UniqueClientIdentifierVtMR);
  v11 = *(v10 + 64);
  v12 = *(v10 + 80);
  v15 = (a3 + *a3);
  v13 = swift_task_alloc();
  *(v3 + 24) = v13;
  *v13 = v3;
  v13[1] = thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String, @guaranteed String, @in_guaranteed KDSRegistration.URISupportedState, @in_guaranteed KDSRegistration.UniqueClientIdentifier) -> (@unowned Bool, @error @owned Error);

  return v15(v6, v7, v8, v9, &a2[v11], &a2[v12]);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String, @guaranteed String, @in_guaranteed KDSRegistration.URISupportedState, @in_guaranteed KDSRegistration.UniqueClientIdentifier) -> (@unowned Bool, @error @owned Error)(char a1)
{
  v4 = *v2;
  v5 = *v2;

  if (!v1)
  {
    **(v4 + 16) = a1 & 1;
  }

  v6 = *(v5 + 8);

  return v6();
}

uint64_t KDSRegistrationDaemon.update(simUniqueID:simLabelID:supportedState:uniqueClientIdentifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unint64_t a6, uint64_t a7, unint64_t a8, uint64_t a9, uint64_t a10)
{
  type metadata accessor for KDSRegistration.UpdateSupportedStateError();
  v19 = swift_allocObject();
  v19[2] = a5;
  v19[3] = a6;
  v19[4] = a7;
  v19[5] = a8;
  v19[6] = a1;
  v19[7] = a2;
  v19[8] = a3;
  v19[9] = a4;
  v20 = swift_allocObject();
  *(v20 + 16) = v10;
  v21 = swift_allocObject();
  *(v21 + 16) = &async function pointer to partial apply for closure #2 in KDSRegistrationDaemon.update(simUniqueID:simLabelID:supportedState:uniqueClientIdentifier:completion:);
  *(v21 + 24) = v20;
  outlined copy of Data._Representation(a5, a6);
  outlined copy of Data._Representation(a7, a8);

  v22 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SS15SecureMessaging15KDSRegistrationO17URISupportedStateOAC22UniqueClientIdentifierVtMd, &_sSS_SS15SecureMessaging15KDSRegistrationO17URISupportedStateOAC22UniqueClientIdentifierVtMR);
  type metadata accessor for KDSRegistration.SupportedStateUpdateProcessedContext();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type KDSRegistration.UpdateSupportedStateError and conformance KDSRegistration.UpdateSupportedStateError, MEMORY[0x277D4CBA0], MEMORY[0x277D4CB98]);
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type KDSRegistration.SupportedStateUpdateProcessedContext and conformance KDSRegistration.SupportedStateUpdateProcessedContext, MEMORY[0x277D4CC10], MEMORY[0x277D4CC18]);
  static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)();
}

uint64_t closure #1 in KDSRegistrationDaemon.setupXPCConnection(client:uniqueClientIdentifier:clientIdentifier:simUniqueID:simLabelID:uriSupportedState:testPhoneNumber:completion:)@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v29 = a6;
  v30 = a8;
  v28 = a7;
  v26 = a5;
  v32 = a3;
  v33 = a4;
  v31 = a9;
  v10 = type metadata accessor for KDSRegistration.UniqueClientIdentifier();
  v27 = *(v10 - 8);
  MEMORY[0x28223BE20](v10, v11);
  v34 = &v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for KDSRegistration.URISupportedState();
  v14 = *(v13 - 8);
  MEMORY[0x28223BE20](v13, v15);
  v17 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type KDSRegistration.URISupportedState and conformance KDSRegistration.URISupportedState, MEMORY[0x277D4CA38], MEMORY[0x277D4CA48]);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v9)
  {
    v19 = v14;
    v20 = v31;
    swift_allocObject();
    JSONDecoder.init()();
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type KDSRegistration.UniqueClientIdentifier and conformance KDSRegistration.UniqueClientIdentifier, MEMORY[0x277D4CAE8], MEMORY[0x277D4CB08]);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SS15SecureMessaging15KDSRegistrationO17URISupportedStateOAC22UniqueClientIdentifierVtMd, &_sSS_SS15SecureMessaging15KDSRegistrationO17URISupportedStateOAC22UniqueClientIdentifierVtMR);
    v22 = *(v21 + 64);
    v23 = *(v21 + 80);
    v25 = v29;
    v24 = v30;
    *v20 = v26;
    *(v20 + 1) = v25;
    *(v20 + 2) = v28;
    *(v20 + 3) = v24;
    (*(v19 + 32))(&v20[v22], v17, v13);
    (*(v27 + 32))(&v20[v23], v34, v10);
  }

  return result;
}

uint64_t closure #2 in KDSRegistrationDaemon.update(simUniqueID:simLabelID:supportedState:uniqueClientIdentifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[27] = a7;
  v8[28] = a8;
  v8[25] = a5;
  v8[26] = a6;
  v8[23] = a3;
  v8[24] = a4;
  v8[21] = a1;
  v8[22] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v8[29] = swift_task_alloc();
  type metadata accessor for JSONEncoder.OutputFormatting();
  v8[30] = swift_task_alloc();
  v9 = type metadata accessor for LogCategory();
  v8[31] = v9;
  v8[32] = *(v9 - 8);
  v8[33] = swift_task_alloc();
  v10 = type metadata accessor for KDSRegistration.UniqueClientIdentifier();
  v8[34] = v10;
  v8[35] = *(v10 - 8);
  v8[36] = swift_task_alloc();
  v11 = type metadata accessor for KDSRegistration.URISupportedState();
  v8[37] = v11;
  v8[38] = *(v11 - 8);
  v8[39] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in KDSRegistrationDaemon.update(simUniqueID:simLabelID:supportedState:uniqueClientIdentifier:completion:), 0, 0);
}

uint64_t closure #2 in KDSRegistrationDaemon.update(simUniqueID:simLabelID:supportedState:uniqueClientIdentifier:completion:)()
{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & **(v0 + 224)) + 0xD0))();
  if (*(v2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 176), *(v0 + 184)), (v4 & 1) != 0))
  {
    v5 = *(*(v2 + 56) + 8 * v3);
    *(v0 + 320) = v5;

    v14 = (*(*v5 + 568) + **(*v5 + 568));
    v6 = swift_task_alloc();
    *(v0 + 328) = v6;
    *v6 = v0;
    v6[1] = closure #2 in KDSRegistrationDaemon.update(simUniqueID:simLabelID:supportedState:uniqueClientIdentifier:completion:);
    v7 = *(v0 + 208);

    return v14(v7);
  }

  else
  {
    v9 = *(v0 + 224);

    v10 = *(v9 + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_pushHandler);
    *(v0 + 344) = v10;
    v11 = (*v1 & *v10) + 176;
    *(v0 + 352) = *((*v1 & *v10) + 0xB0);
    *(v0 + 360) = v11 & 0xFFFFFFFFFFFFLL | 0x4AE000000000000;
    *(v0 + 368) = type metadata accessor for RegistrationActor();
    *(v0 + 376) = static RegistrationActor.shared.getter();
    *(v0 + 384) = _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20], MEMORY[0x277D4CC28]);
    v13 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](closure #2 in KDSRegistrationDaemon.update(simUniqueID:simLabelID:supportedState:uniqueClientIdentifier:completion:), v13, v12);
  }
}

{
  *(*v1 + 336) = v0;

  if (v0)
  {
    v2 = closure #2 in KDSRegistrationDaemon.update(simUniqueID:simLabelID:supportedState:uniqueClientIdentifier:completion:);
  }

  else
  {
    v2 = closure #2 in KDSRegistrationDaemon.update(simUniqueID:simLabelID:supportedState:uniqueClientIdentifier:completion:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[44];

  v0[49] = v1(v2);
  v0[50] = v3;

  return MEMORY[0x2822009F8](closure #2 in KDSRegistrationDaemon.update(simUniqueID:simLabelID:supportedState:uniqueClientIdentifier:completion:), 0, 0);
}

{
  v28 = v0;
  v2 = v0[49];
  v1 = v0[50];
  outlined copy of Data?(v2, v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  outlined consume of Data?(v2, v1);
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[49];
    v5 = v0[50];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v27 = v8;
    *v7 = 136315138;
    v0[19] = v6;
    v0[20] = v5;
    outlined copy of Data?(v6, v5);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    v9 = String.init<A>(describing:)();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v27);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_26524C000, v3, v4, "PUSH TOKEN: %s", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x2667577B0](v8, -1, -1);
    MEMORY[0x2667577B0](v7, -1, -1);
  }

  v13 = v0[49];
  v12 = v0[50];
  v15 = v0[38];
  v14 = v0[39];
  v17 = v0[36];
  v16 = v0[37];
  v18 = v0[34];
  v19 = v0[35];
  v20 = v0[27];
  v21 = v0[26];
  v0[51] = *(v0[28] + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_stateMachineNetworkOperator);
  v22 = *(v15 + 16);
  v0[52] = v22;
  v0[53] = (v15 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v22(v14, v21, v16);
  v23 = *(v19 + 16);
  v0[54] = v23;
  v0[55] = (v19 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v23(v17, v20, v18);
  outlined copy of Data?(v13, v12);

  v0[56] = static RegistrationActor.shared.getter();
  v25 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](closure #2 in KDSRegistrationDaemon.update(simUniqueID:simLabelID:supportedState:uniqueClientIdentifier:completion:), v25, v24);
}

{

  v3 = (*((*MEMORY[0x277D85000] & **(v0 + 224)) + 0x148) + **((*MEMORY[0x277D85000] & **(v0 + 224)) + 0x148));
  v1 = swift_task_alloc();
  *(v0 + 464) = v1;
  *v1 = v0;
  v1[1] = closure #2 in KDSRegistrationDaemon.update(simUniqueID:simLabelID:supportedState:uniqueClientIdentifier:completion:);

  return v3();
}

{
  v31 = v0[54];
  v1 = v0[51];
  v29 = v0[52];
  v32 = v0[49];
  v33 = v0[50];
  v35 = v0[48];
  v37 = v0[38];
  v38 = v0[37];
  v39 = v0[39];
  v30 = v0[36];
  v36 = v0[35];
  v40 = v0[34];
  v3 = v0[32];
  v2 = v0[33];
  v4 = v0[31];
  v5 = v0[28];
  v34 = v0[29];
  v27 = v0[24];
  v28 = v0[25];
  v25 = v0[22];
  v26 = v0[23];

  type metadata accessor for KDSRegistrationStateMachine(0);
  v6 = swift_allocObject();
  v0[57] = v6;
  v0[5] = type metadata accessor for KDSRegistrationDaemon(0);
  v0[6] = &protocol witness table for KDSRegistrationDaemon;
  v0[2] = v5;
  v0[10] = type metadata accessor for KDSRegistrationStateMachineNetworkOperator();
  v0[11] = &protocol witness table for KDSRegistrationStateMachineNetworkOperator;
  v0[7] = v1;
  (*(v3 + 104))(v2, *MEMORY[0x277D4C918], v4);

  v7 = v5;
  secureMessagingLogger(category:)();
  (*(v3 + 8))(v2, v4);
  v8 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_phoneAuthInfo;
  v9 = type metadata accessor for KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo();
  (*(*(v9 - 8) + 56))(v6 + v8, 1, 1, v9);
  *(v6 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_participantInfo) = xmmword_2653419D0;
  *(v6 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_CSR) = xmmword_2653419D0;
  v10 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_telURI;
  v11 = type metadata accessor for URI();
  (*(*(v11 - 8) + 56))(v6 + v10, 1, 1, v11);
  v12 = (v6 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_phoneNumberCredential);
  *v12 = 0;
  v12[1] = 0;
  *(v6 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_phoneNumberCredentialType) = 4;
  v13 = (v6 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_serverVendedClientID);
  *v13 = 0;
  v13[1] = 0;
  v14 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_keyPackage;
  v15 = type metadata accessor for MLS.KeyPackageInfo();
  (*(*(v15 - 8) + 56))(v6 + v14, 1, 1, v15);
  v16 = v6 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_nextHeartbeatInterval;
  *v16 = 0;
  *(v16 + 8) = 1;
  *(v6 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_devicePushToken) = xmmword_2653419D0;
  *(v6 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_heartbeatTransaction) = 0;
  v17 = OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_encoder;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  *(v6 + v17) = JSONEncoder.init()();
  *(v6 + 16) = 18;
  *(v6 + 24) = v25;
  *(v6 + 32) = v26;
  *(v6 + 40) = v27;
  *(v6 + 48) = v28;
  v29(v6 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_uriSupportedState, v39, v38);
  outlined init with copy of SMAUserDefaultsProtocol((v0 + 2), v6 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_stateMachineOperator);
  outlined init with copy of SMAUserDefaultsProtocol((v0 + 7), v6 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_networkOperator);
  v31(v6 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_uniqueClientIdentifier, v30, v40);
  v18 = (v6 + OBJC_IVAR____TtC24SecureMessagingAgentCore27KDSRegistrationStateMachine_devicePushToken);
  swift_beginAccess();
  v19 = *v18;
  v20 = v18[1];
  *v18 = v32;
  v18[1] = v33;
  outlined copy of Data?(v32, v33);

  outlined consume of Data?(v19, v20);
  static JSONEncoder.OutputFormatting.sortedKeys.getter();
  dispatch thunk of JSONEncoder.outputFormatting.setter();
  v21 = type metadata accessor for TaskPriority();
  (*(*(v21 - 8) + 56))(v34, 1, 1, v21);

  v22 = static RegistrationActor.shared.getter();
  v23 = swift_allocObject();
  v23[2] = v22;
  v23[3] = v35;
  v23[4] = v6;
  _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfCyt_Tt2g5(0, 0, v34, &async function pointer to partial apply for closure #1 in KDSRegistrationStateMachine.rerun(), v23);

  outlined consume of Data?(v32, v33);
  (*(v36 + 8))(v30, v40);
  (*(v37 + 8))(v39, v38);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  return MEMORY[0x2822009F8](closure #2 in KDSRegistrationDaemon.update(simUniqueID:simLabelID:supportedState:uniqueClientIdentifier:completion:), 0, 0);
}

{
  v1 = *(v0 + 456);
  v3 = *(v0 + 392);
  v2 = *(v0 + 400);
  v5 = *(v0 + 176);
  v4 = *(v0 + 184);
  v6 = (*((*MEMORY[0x277D85000] & **(v0 + 224)) + 0xE0))(v0 + 96);
  v8 = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v14 = *v8;
  *v8 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v1, v5, v4, isUniquelyReferenced_nonNull_native);

  *v8 = v14;
  v6(v0 + 96, 0);
  outlined consume of Data?(v3, v2);
  v10 = *((*MEMORY[0x277D85000] & **(v0 + 224)) + 0x148);
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v0 + 464) = v11;
  *v11 = v0;
  v11[1] = closure #2 in KDSRegistrationDaemon.update(simUniqueID:simLabelID:supportedState:uniqueClientIdentifier:completion:);

  return v13();
}

{

  return MEMORY[0x2822009F8](closure #2 in KDSRegistrationDaemon.update(simUniqueID:simLabelID:supportedState:uniqueClientIdentifier:completion:), 0, 0);
}

{
  KDSRegistration.SupportedStateUpdateProcessedContext.init()();

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String, @guaranteed String, @in_guaranteed KDSRegistration.URISupportedState, @in_guaranteed KDSRegistration.UniqueClientIdentifier) -> (@out KDSRegistration.SupportedStateUpdateProcessedContext, @error @owned Error)(uint64_t a1, char *a2, int *a3)
{
  v7 = *a2;
  v8 = *(a2 + 1);
  v9 = *(a2 + 2);
  v10 = *(a2 + 3);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SS15SecureMessaging15KDSRegistrationO17URISupportedStateOAC22UniqueClientIdentifierVtMd, &_sSS_SS15SecureMessaging15KDSRegistrationO17URISupportedStateOAC22UniqueClientIdentifierVtMR);
  v12 = *(v11 + 64);
  v13 = *(v11 + 80);
  v16 = (a3 + *a3);
  v14 = swift_task_alloc();
  *(v3 + 16) = v14;
  *v14 = v3;
  v14[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v16(a1, v7, v8, v9, v10, &a2[v12], &a2[v13]);
}

uint64_t KDSRegistrationDaemon.isRegistered(simUniqueID:context:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for KDSRegistration.IsRegisteredError();
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a1;
  v11[5] = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  v13 = swift_allocObject();
  *(v13 + 16) = &async function pointer to partial apply for closure #2 in KDSRegistrationDaemon.isRegistered(simUniqueID:context:completion:);
  *(v13 + 24) = v12;
  outlined copy of Data._Representation(a3, a4);

  v14 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_15SecureMessaging15KDSRegistrationO19IsRegisteredContextVSgtMd, &_sSS_15SecureMessaging15KDSRegistrationO19IsRegisteredContextVSgtMR);
  type metadata accessor for KDSRegistration.IsRegisteredResult();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError and conformance KDSRegistration.IsRegisteredError, MEMORY[0x277D4CA10], MEMORY[0x277D4CA08]);
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredResult and conformance KDSRegistration.IsRegisteredResult, MEMORY[0x277D4CA70], MEMORY[0x277D4CA78]);
  static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)();
}

uint64_t closure #1 in KDSRegistrationDaemon.isRegistered(simUniqueID:context:completion:)@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15KDSRegistrationO19IsRegisteredContextVSgMd, &_s15SecureMessaging15KDSRegistrationO19IsRegisteredContextVSgMR);
  MEMORY[0x28223BE20](v9, v10);
  v12 = &v15 - v11;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type KDSRegistration.IsRegisteredContext? and conformance <A> A?();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v5)
  {
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_15SecureMessaging15KDSRegistrationO19IsRegisteredContextVSgtMd, &_sSS_15SecureMessaging15KDSRegistrationO19IsRegisteredContextVSgtMR) + 48);
    *a5 = a3;
    a5[1] = a4;
    outlined init with take of KDSRegistration.IsRegisteredContext?(v12, a5 + v14);
  }

  return result;
}

uint64_t closure #2 in KDSRegistrationDaemon.isRegistered(simUniqueID:context:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[4] = a3;
  v5[5] = a5;
  v5[2] = a1;
  v5[3] = a2;
  IsRegistered = type metadata accessor for KDSRegistration.IsRegisteredError.ErrorType();
  v5[6] = IsRegistered;
  v5[7] = *(IsRegistered - 8);
  v5[8] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in KDSRegistrationDaemon.isRegistered(simUniqueID:context:completion:), 0, 0);
}

uint64_t closure #2 in KDSRegistrationDaemon.isRegistered(simUniqueID:context:completion:)()
{
  v20 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v1, v2))
  {
    v4 = *(v0 + 24);
    v3 = *(v0 + 32);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v19 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v4, v3, &v19);
    _os_log_impl(&dword_26524C000, v1, v2, "KDSRegistrationDaemon isRegistered called for uniqueID: %s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x2667577B0](v6, -1, -1);
    MEMORY[0x2667577B0](v5, -1, -1);
  }

  v7 = (*((*MEMORY[0x277D85000] & **(v0 + 40)) + 0xD0))();
  if (*(v7 + 16) && (v8 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 24), *(v0 + 32)), (v9 & 1) != 0))
  {
    v10 = *(*(v7 + 56) + 8 * v8);
    *(v0 + 72) = v10;

    v11 = (*v10 + 240) & 0xFFFFFFFFFFFFLL | 0x9D01000000000000;
    *(v0 + 80) = *(*v10 + 240);
    *(v0 + 88) = v11;
    type metadata accessor for RegistrationActor();
    *(v0 + 96) = static RegistrationActor.shared.getter();
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20], MEMORY[0x277D4CC28]);
    v13 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](closure #2 in KDSRegistrationDaemon.isRegistered(simUniqueID:context:completion:), v13, v12);
  }

  else
  {
    v15 = *(v0 + 56);
    v14 = *(v0 + 64);
    v16 = *(v0 + 48);

    (*(v15 + 104))(v14, *MEMORY[0x277D4CA00], v16);
    type metadata accessor for KDSRegistration.IsRegisteredError();
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredError and conformance KDSRegistration.IsRegisteredError, MEMORY[0x277D4CA10], MEMORY[0x277D4CA18]);
    swift_allocError();
    KDSRegistration.IsRegisteredError.init(type:underlyingErrorDescription:)();
    swift_willThrow();

    v17 = *(v0 + 8);

    return v17();
  }
}

{
  v1 = *(v0 + 80);

  *(v0 + 104) = v1(v2);

  return MEMORY[0x2822009F8](closure #2 in KDSRegistrationDaemon.isRegistered(simUniqueID:context:completion:), 0, 0);
}

{
  KDSRegistration.IsRegisteredResult.init(isRegistered:)();

  v1 = *(v0 + 8);

  return v1();
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String, @in_guaranteed KDSRegistration.IsRegisteredContext?) -> (@out KDSRegistration.IsRegisteredResult, @error @owned Error)(uint64_t a1, char *a2, int *a3)
{
  v7 = *a2;
  v8 = *(a2 + 1);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_15SecureMessaging15KDSRegistrationO19IsRegisteredContextVSgtMd, &_sSS_15SecureMessaging15KDSRegistrationO19IsRegisteredContextVSgtMR) + 48);
  v12 = (a3 + *a3);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v12(a1, v7, v8, &a2[v9]);
}

uint64_t KDSRegistrationDaemon.signWithParticipantKey(simUniqueID:input:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6)
{
  type metadata accessor for KDSRegistration.SignWithParticipantKeyError();
  v11 = swift_allocObject();
  v11[2] = a3;
  v11[3] = a4;
  v11[4] = a1;
  v11[5] = a2;
  v12 = swift_allocObject();
  *(v12 + 16) = v6;
  v13 = swift_allocObject();
  *(v13 + 16) = &async function pointer to partial apply for closure #2 in KDSRegistrationDaemon.signWithParticipantKey(simUniqueID:input:completion:);
  *(v13 + 24) = v12;
  outlined copy of Data._Representation(a3, a4);

  v14 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_15SecureMessaging15KDSRegistrationO12SigningInputVtMd, &_sSS_15SecureMessaging15KDSRegistrationO12SigningInputVtMR);
  type metadata accessor for KDSRegistration.SigningOutput();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError, MEMORY[0x277D4CBC8], MEMORY[0x277D4CBC0]);
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type KDSRegistration.SigningOutput and conformance KDSRegistration.SigningOutput, MEMORY[0x277D4C978], MEMORY[0x277D4C980]);
  static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventBlock:)();
}

uint64_t closure #1 in KDSRegistrationDaemon.signWithParticipantKey(simUniqueID:input:completion:)@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v16 = a3;
  v8 = type metadata accessor for KDSRegistration.SigningInput();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type KDSRegistration.SigningInput and conformance KDSRegistration.SigningInput, MEMORY[0x277D4C968], MEMORY[0x277D4C970]);
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  if (!v5)
  {
    v14 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_15SecureMessaging15KDSRegistrationO12SigningInputVtMd, &_sSS_15SecureMessaging15KDSRegistrationO12SigningInputVtMR) + 48);
    *a5 = v16;
    *(a5 + 1) = a4;
    (*(v9 + 32))(&a5[v14], v12, v8);
  }

  return result;
}

uint64_t closure #2 in KDSRegistrationDaemon.signWithParticipantKey(simUniqueID:input:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for KDSRegistration.SignWithParticipantKeyError.ErrorType();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = type metadata accessor for KDSRegistration.SigningInput.InputType();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR);
  v5[13] = swift_task_alloc();
  v8 = type metadata accessor for URI();
  v5[14] = v8;
  v5[15] = *(v8 - 8);
  v5[16] = swift_task_alloc();
  v9 = type metadata accessor for KDSRegistration.SigningInput();
  v5[17] = v9;
  v5[18] = *(v9 - 8);
  v5[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in KDSRegistrationDaemon.signWithParticipantKey(simUniqueID:input:completion:), 0, 0);
}

uint64_t closure #2 in KDSRegistrationDaemon.signWithParticipantKey(simUniqueID:input:completion:)()
{
  v36 = v0;
  v2 = *(v0 + 144);
  v1 = *(v0 + 152);
  v3 = *(v0 + 136);
  v4 = *(v0 + 40);
  *(v0 + 160) = OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_logger;
  (*(v2 + 16))(v1, v4, v3);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  v7 = os_log_type_enabled(v5, v6);
  v9 = *(v0 + 144);
  v8 = *(v0 + 152);
  v10 = *(v0 + 136);
  if (v7)
  {
    v12 = *(v0 + 24);
    v11 = *(v0 + 32);
    v13 = swift_slowAlloc();
    v35[0] = swift_slowAlloc();
    v14 = v35[0];
    *v13 = 136315394;
    *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, v35);
    *(v13 + 12) = 2080;
    v15 = KDSRegistration.SigningInput.description.getter();
    v17 = v16;
    (*(v9 + 8))(v8, v10);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, v35);

    *(v13 + 14) = v18;
    _os_log_impl(&dword_26524C000, v5, v6, "KDSRegistrationDaemon signWithParticipantKey called for uniqueID: %s. { signingInput: %s", v13, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2667577B0](v14, -1, -1);
    MEMORY[0x2667577B0](v13, -1, -1);
  }

  else
  {

    v19 = (*(v9 + 8))(v8, v10);
  }

  v20 = (*((*MEMORY[0x277D85000] & **(v0 + 48)) + 0xD0))(v19);
  if (*(v20 + 16) && (v21 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 24), *(v0 + 32)), (v22 & 1) != 0))
  {
    v23 = *(*(v20 + 56) + 8 * v21);
    *(v0 + 168) = v23;

    v24 = *v23 + 360;
    *(v0 + 176) = *v24;
    *(v0 + 184) = v24 & 0xFFFFFFFFFFFFLL | 0xBFD4000000000000;
    type metadata accessor for RegistrationActor();
    *(v0 + 192) = static RegistrationActor.shared.getter();
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20], MEMORY[0x277D4CC28]);
    v26 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](closure #2 in KDSRegistrationDaemon.signWithParticipantKey(simUniqueID:input:completion:), v26, v25);
  }

  else
  {

    v27 = Logger.logObject.getter();
    v28 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 0;
      _os_log_impl(&dword_26524C000, v27, v28, "KDSRegistrationDaemon signWithParticipantKey failed, no state machine found.", v29, 2u);
      MEMORY[0x2667577B0](v29, -1, -1);
    }

    v31 = *(v0 + 64);
    v30 = *(v0 + 72);
    v32 = *(v0 + 56);

    (*(v31 + 104))(v30, *MEMORY[0x277D4CBB0], v32);
    type metadata accessor for KDSRegistration.SignWithParticipantKeyError();
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError, MEMORY[0x277D4CBC8], MEMORY[0x277D4CBD0]);
    swift_allocError();
    KDSRegistration.IsRegisteredError.init(type:underlyingErrorDescription:)();
    swift_willThrow();

    v33 = *(v0 + 8);

    return v33();
  }
}

{
  v1 = *(v0 + 176);

  v1(v2);

  return MEMORY[0x2822009F8](closure #2 in KDSRegistrationDaemon.signWithParticipantKey(simUniqueID:input:completion:), 0, 0);
}

{
  v1 = v0[14];
  v2 = v0[15];
  v3 = v0[13];
  if ((*(v2 + 48))(v3, 1, v1) == 1)
  {
    outlined destroy of MLS.KeyPackageProvider?(v3, &_s15SecureMessaging3URIVSgMd, &_s15SecureMessaging3URIVSgMR);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_26524C000, v4, v5, "KDSRegistrationDaemon signWithParticipantKey failed, no tel uri found.", v6, 2u);
      MEMORY[0x2667577B0](v6, -1, -1);
    }

    v8 = v0[8];
    v7 = v0[9];
    v9 = v0[7];

    (*(v8 + 104))(v7, *MEMORY[0x277D4CBA8], v9);
    type metadata accessor for KDSRegistration.SignWithParticipantKeyError();
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type KDSRegistration.SignWithParticipantKeyError and conformance KDSRegistration.SignWithParticipantKeyError, MEMORY[0x277D4CBC8], MEMORY[0x277D4CBD0]);
    swift_allocError();
    KDSRegistration.IsRegisteredError.init(type:underlyingErrorDescription:)();
    swift_willThrow();

    v10 = v0[1];

    return v10();
  }

  else
  {
    v13 = v0[11];
    v12 = v0[12];
    v14 = v0[10];
    (*(v2 + 32))(v0[16], v3, v1);
    KDSRegistration.SigningInput.inputType.getter();
    if ((*(v13 + 88))(v12, v14) == *MEMORY[0x277D4C960])
    {
      v15 = v0[12];
      (*(v0[11] + 96))(v15, v0[10]);
      v16 = *v15;
      v0[25] = *v15;
      v17 = v15[1];
      v0[26] = v17;
      v18 = Logger.logObject.getter();
      v19 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v18, v19))
      {
        v20 = swift_slowAlloc();
        *v20 = 0;
        _os_log_impl(&dword_26524C000, v18, v19, "KDSRegistrationDaemon signWithParticipantKey getting nonce signature.", v20, 2u);
        MEMORY[0x2667577B0](v20, -1, -1);
      }

      v21 = v0[6];

      v22 = OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_mlsDaemonID;
      v23 = swift_task_alloc();
      v0[27] = v23;
      *v23 = v0;
      v23[1] = closure #2 in KDSRegistrationDaemon.signWithParticipantKey(simUniqueID:input:completion:);
      v24 = v0[16];

      return MLSDaemon.signWithParticipantKey(nonce:for:with:)(v16, v17, v24, v21 + v22);
    }

    else
    {
      v25 = v0[10];

      return MEMORY[0x2821FDEB8](v25, v25);
    }
  }
}

{
  v1 = v0[25];
  v2 = v0[26];
  v4 = v0[15];
  v3 = v0[16];
  v5 = v0[14];
  KDSRegistration.SigningOutput.init(signature:)();
  outlined consume of Data._Representation(v1, v2);

  (*(v4 + 8))(v3, v5);

  v6 = v0[1];

  return v6();
}

{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  outlined consume of Data._Representation(v0[25], v0[26]);

  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t closure #2 in KDSRegistrationDaemon.signWithParticipantKey(simUniqueID:input:completion:)(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 224) = v2;

  if (v2)
  {
    v7 = closure #2 in KDSRegistrationDaemon.signWithParticipantKey(simUniqueID:input:completion:);
  }

  else
  {
    *(v6 + 232) = a2;
    *(v6 + 240) = a1;
    v7 = closure #2 in KDSRegistrationDaemon.signWithParticipantKey(simUniqueID:input:completion:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t KDSRegistrationDaemon.signWithParticipantKey(nonce:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](KDSRegistrationDaemon.signWithParticipantKey(nonce:for:), 0, 0);
}

uint64_t KDSRegistrationDaemon.signWithParticipantKey(nonce:for:)()
{
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_mlsDaemonID;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = KDSRegistrationDaemon.signWithParticipantKey(nonce:for:);
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  return MLSDaemon.signWithParticipantKey(nonce:for:with:)(v6, v4, v5, v1 + v2);
}

uint64_t KDSRegistrationDaemon.signWithParticipantKey(nonce:for:)(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String, @in_guaranteed KDSRegistration.SigningInput) -> (@out KDSRegistration.SigningOutput, @error @owned Error)(uint64_t a1, char *a2, int *a3)
{
  v7 = *a2;
  v8 = *(a2 + 1);
  v9 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_15SecureMessaging15KDSRegistrationO12SigningInputVtMd, &_sSS_15SecureMessaging15KDSRegistrationO12SigningInputVtMR) + 48);
  v12 = (a3 + *a3);
  v10 = swift_task_alloc();
  *(v3 + 16) = v10;
  *v10 = v3;
  v10[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v12(a1, v7, v8, &a2[v9]);
}

uint64_t KDSRegistrationDaemon.save(registrationStateMachine:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](KDSRegistrationDaemon.save(registrationStateMachine:), 0, 0);
}

uint64_t KDSRegistrationDaemon.save(registrationStateMachine:)()
{
  v4 = (*(**(v0[3] + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_registrationPersister) + 152) + **(**(v0[3] + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_registrationPersister) + 152));
  v1 = swift_task_alloc();
  v0[4] = v1;
  *v1 = v0;
  v1[1] = closure #1 in closure #1 in KDSRegistrationDaemon.start();
  v2 = v0[2];

  return v4(v2);
}

uint64_t KDSRegistrationDaemon.loadRegistrationStateMachines()()
{
  *(v1 + 48) = v0;
  return MEMORY[0x2822009F8](KDSRegistrationDaemon.loadRegistrationStateMachines(), 0, 0);
}

{
  v4 = (*(**(*(v0 + 48) + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_registrationPersister) + 160) + **(**(*(v0 + 48) + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_registrationPersister) + 160));
  v1 = swift_task_alloc();
  *(v0 + 56) = v1;
  *v1 = v0;
  v1[1] = KDSRegistrationDaemon.loadRegistrationStateMachines();
  v2 = *(v0 + 48);

  return v4(v2);
}

{
  v40 = v0;
  v1 = *(v0 + 64);
  if (v1 >> 62)
  {
LABEL_28:
    result = __CocoaSet.count.getter();
    if (result)
    {
      goto LABEL_3;
    }

LABEL_29:

    v32 = *(v37 + 8);

    return v32();
  }

  result = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_29;
  }

LABEL_3:
  if (result < 1)
  {
    __break(1u);
    return result;
  }

  v3 = 0;
  v4 = v37 + 16;
  v36 = *((*MEMORY[0x277D85000] & **(v37 + 48)) + 0xE0);
  v35 = v1 & 0xC000000000000001;
  v33 = *(v37 + 64) + 32;
  v34 = result;
  while (1)
  {
    v38 = v3;
    if (v35)
    {
      v5 = MEMORY[0x266756D10](v3, *(v37 + 64));
    }

    else
    {
      v5 = *(v33 + 8 * v3);
    }

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v39 = v9;
      *v8 = 136315138;
      v10 = *(v5 + 24);
      v11 = *(v5 + 32);

      v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v39);

      *(v8 + 4) = v12;
      _os_log_impl(&dword_26524C000, v6, v7, "KDSRegistrationDaemon loaded state machine for uniqueID: %s", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x2667577B0](v9, -1, -1);
      MEMORY[0x2667577B0](v8, -1, -1);
    }

    v14 = *(v5 + 24);
    v13 = *(v5 + 32);

    v15 = v4;
    v16 = v36(v4);
    v18 = v17;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v39 = *v18;
    v1 = v39;
    *v18 = 0x8000000000000000;
    v21 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v13);
    v22 = *(v1 + 16);
    v23 = (v20 & 1) == 0;
    v24 = v22 + v23;
    if (__OFADD__(v22, v23))
    {
      __break(1u);
LABEL_27:
      __break(1u);
      goto LABEL_28;
    }

    v25 = v20;
    if (*(v1 + 24) < v24)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      v1 = v39;
      if (v20)
      {
        goto LABEL_5;
      }
    }

    else
    {
      specialized _NativeDictionary.copy()();
      v1 = v39;
      if (v25)
      {
LABEL_5:
        *(*(v1 + 56) + 8 * v21) = v5;

        goto LABEL_6;
      }
    }

LABEL_19:
    *(v1 + 8 * (v21 >> 6) + 64) |= 1 << v21;
    v28 = (*(v1 + 48) + 16 * v21);
    *v28 = v14;
    v28[1] = v13;
    *(*(v1 + 56) + 8 * v21) = v5;
    v29 = *(v1 + 16);
    v30 = __OFADD__(v29, 1);
    v31 = v29 + 1;
    if (v30)
    {
      goto LABEL_27;
    }

    *(v1 + 16) = v31;
LABEL_6:
    v3 = v38 + 1;
    *v18 = v1;
    v4 = v15;
    v16(v15, 0);

    if (v34 == v38 + 1)
    {
      goto LABEL_29;
    }
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v24, isUniquelyReferenced_nonNull_native);
  v26 = specialized __RawDictionaryStorage.find<A>(_:)(v14, v13);
  if ((v25 & 1) == (v27 & 1))
  {
    v21 = v26;
    v1 = v39;
    if (v25)
    {
      goto LABEL_5;
    }

    goto LABEL_19;
  }

  return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
}

{
  v1 = *(v0 + 72);
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.fault.getter();

  v5 = os_log_type_enabled(v3, v4);
  v6 = *(v0 + 72);
  if (v5)
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    *v7 = 138412290;
    v9 = v6;
    v10 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 4) = v10;
    *v8 = v10;
    _os_log_impl(&dword_26524C000, v3, v4, "failed to load state machines. error: %@", v7, 0xCu);
    outlined destroy of MLS.KeyPackageProvider?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x2667577B0](v8, -1, -1);
    MEMORY[0x2667577B0](v7, -1, -1);
  }

  else
  {
  }

  v11 = *(v0 + 8);

  return v11();
}

uint64_t KDSRegistrationDaemon.loadRegistrationStateMachines()(uint64_t a1)
{
  v3 = *v2;
  *(v3 + 64) = a1;
  *(v3 + 72) = v1;

  if (v1)
  {
    v4 = KDSRegistrationDaemon.loadRegistrationStateMachines();
  }

  else
  {
    v4 = KDSRegistrationDaemon.loadRegistrationStateMachines();
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

uint64_t KDSRegistrationDaemon.updatePushHandlerIfNeeded()()
{
  *(v1 + 16) = v0;
  return MEMORY[0x2822009F8](KDSRegistrationDaemon.updatePushHandlerIfNeeded(), 0, 0);
}

{
  v1 = MEMORY[0x277D85000];
  v2 = (*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0xD0))();
  *(v0 + 24) = v2;
  v3 = *(v2 + 32);
  *(v0 + 160) = v3;
  v4 = -1;
  v5 = -1 << v3;
  if (-(-1 << v3) < 64)
  {
    v4 = ~(-1 << -(-1 << v3));
  }

  v6 = v4 & *(v2 + 64);
  if (v6)
  {
    v7 = 0;
LABEL_8:
    *(v0 + 32) = v6;
    *(v0 + 40) = v7;
    v10 = *(*(v2 + 56) + ((v7 << 9) | (8 * __clz(__rbit64(v6)))));
    *(v0 + 48) = v10;
    v11 = (*v10 + 240) & 0xFFFFFFFFFFFFLL | 0x9D01000000000000;
    *(v0 + 56) = *(*v10 + 240);
    *(v0 + 64) = v11;
    *(v0 + 72) = type metadata accessor for RegistrationActor();

    *(v0 + 80) = static RegistrationActor.shared.getter();
    *(v0 + 88) = _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20], MEMORY[0x277D4CC28]);
    v12 = dispatch thunk of Actor.unownedExecutor.getter();
    v14 = v13;
    v15 = KDSRegistrationDaemon.updatePushHandlerIfNeeded();
  }

  else
  {
    v8 = 0;
    v9 = ((63 - v5) >> 6) - 1;
    while (v9 != v8)
    {
      v7 = v8 + 1;
      v6 = *(v2 + 8 * v8++ + 72);
      if (v6)
      {
        goto LABEL_8;
      }
    }

    v16 = *(v0 + 16);

    v17 = *(v16 + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_pushHandler);
    *(v0 + 96) = v17;
    v18 = (*v1 & *v17) + 168;
    *(v0 + 104) = *((*v1 & *v17) + 0xA8);
    *(v0 + 112) = v18 & 0xFFFFFFFFFFFFLL | 0x3646000000000000;
    type metadata accessor for RegistrationActor();
    *(v0 + 120) = static RegistrationActor.shared.getter();
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20], MEMORY[0x277D4CC28]);
    v12 = dispatch thunk of Actor.unownedExecutor.getter();
    v14 = v19;
    v15 = KDSRegistrationDaemon.updatePushHandlerIfNeeded();
  }

  return MEMORY[0x2822009F8](v15, v12, v14);
}

{
  v1 = *(v0 + 56);

  *(v0 + 161) = v1(v2);

  return MEMORY[0x2822009F8](KDSRegistrationDaemon.updatePushHandlerIfNeeded(), 0, 0);
}

{
  v1 = *(v0 + 104);

  v1(0);
  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(v0 + 136);

  v1(1);

  return MEMORY[0x2822009F8](KDSRegistrationDaemon.updatePushHandlerIfNeeded(), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t KDSRegistrationDaemon.updatePushHandlerIfNeeded()(uint64_t a1)
{
  if (*(v1 + 161) == 26)
  {
    v2 = *(*(v1 + 16) + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_pushHandler);
    *(v1 + 128) = v2;
    v3 = (*MEMORY[0x277D85000] & *v2) + 168;
    *(v1 + 136) = *((*MEMORY[0x277D85000] & *v2) + 0xA8);
    *(v1 + 144) = v3 & 0xFFFFFFFFFFFFLL | 0x3646000000000000;
    *(v1 + 152) = static RegistrationActor.shared.getter();
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v5;
    v7 = KDSRegistrationDaemon.updatePushHandlerIfNeeded();
LABEL_10:
    v9 = v7;
    v10 = v4;
    v11 = v6;

    return MEMORY[0x2822009F8](v9, v10, v11);
  }

  v8 = *(v1 + 32);

  v12 = *(v1 + 40);
  v13 = (v8 - 1) & v8;
  if (v13)
  {
    v9 = *(v1 + 24);
LABEL_9:
    *(v1 + 32) = v13;
    *(v1 + 40) = v12;
    v15 = *(*(v9 + 56) + ((v12 << 9) | (8 * __clz(__rbit64(v13)))));
    *(v1 + 48) = v15;
    v16 = (*v15 + 240) & 0xFFFFFFFFFFFFLL | 0x9D01000000000000;
    *(v1 + 56) = *(*v15 + 240);
    *(v1 + 64) = v16;
    *(v1 + 72) = type metadata accessor for RegistrationActor();

    *(v1 + 80) = static RegistrationActor.shared.getter();
    *(v1 + 88) = _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20], MEMORY[0x277D4CC28]);
    v4 = dispatch thunk of Actor.unownedExecutor.getter();
    v6 = v17;
    v7 = KDSRegistrationDaemon.updatePushHandlerIfNeeded();
    goto LABEL_10;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    v9 = *(v1 + 24);
    if (v14 >= (((1 << *(v1 + 160)) + 63) >> 6))
    {
      v18 = *(v1 + 16);

      v19 = *(v18 + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_pushHandler);
      *(v1 + 96) = v19;
      v20 = (*MEMORY[0x277D85000] & *v19) + 168;
      *(v1 + 104) = *((*MEMORY[0x277D85000] & *v19) + 0xA8);
      *(v1 + 112) = v20 & 0xFFFFFFFFFFFFLL | 0x3646000000000000;
      type metadata accessor for RegistrationActor();
      *(v1 + 120) = static RegistrationActor.shared.getter();
      _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20], MEMORY[0x277D4CC28]);
      v4 = dispatch thunk of Actor.unownedExecutor.getter();
      v6 = v21;
      v7 = KDSRegistrationDaemon.updatePushHandlerIfNeeded();
      goto LABEL_10;
    }

    v13 = *(v9 + 8 * v14 + 64);
    ++v12;
    if (v13)
    {
      v12 = v14;
      goto LABEL_9;
    }
  }

  __break(1u);
  return MEMORY[0x2822009F8](v9, v10, v11);
}

uint64_t KDSRegistrationDaemon.setupHeartbeat(nextHeartbeatInterval:)(double a1)
{
  *(v2 + 32) = v1;
  *(v2 + 24) = a1;

  return MEMORY[0x2822009F8](KDSRegistrationDaemon.setupHeartbeat(nextHeartbeatInterval:), 0, 0);
}

uint64_t KDSRegistrationDaemon.setupHeartbeat(nextHeartbeatInterval:)()
{
  v1 = *(v0 + 4);
  v2 = objc_opt_self();
  v3 = [v2 sharedScheduler];
  v4 = *(v1 + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_heartbeatBGActivity);
  v5 = *(v1 + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_heartbeatBGActivity + 8);
  v6 = MEMORY[0x266756A10](v4, v5);
  v7 = [v3 taskRequestForIdentifier_];

  if (v7)
  {

    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_26524C000, v8, v9, "KDSRegistrationDaemon -- SetupHeartbeat already has tasked scheduled. Canceling and rescheduling.", v10, 2u);
      MEMORY[0x2667577B0](v10, -1, -1);
    }

    v11 = [v2 sharedScheduler];
    v12 = MEMORY[0x266756A10](v4, v5);
    v0[2] = 0.0;
    v13 = [v11 cancelTaskRequestWithIdentifier:v12 error:v0 + 2];

    v14 = *(v0 + 2);
    if (v13)
    {
      v15 = v14;
    }

    else
    {
      v16 = v14;
      v17 = _convertNSErrorToError(_:)();

      swift_willThrow();
      v18 = v17;
      v19 = Logger.logObject.getter();
      v20 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        *v21 = 138412290;
        v23 = v17;
        v24 = _swift_stdlib_bridgeErrorToNSError();
        *(v21 + 4) = v24;
        *v22 = v24;
        _os_log_impl(&dword_26524C000, v19, v20, "KDSRegistraitonDaemon -- SetupHeartbeat hit error canceling existing scheduled task. { error: %@ }", v21, 0xCu);
        outlined destroy of MLS.KeyPackageProvider?(v22, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x2667577B0](v22, -1, -1);
        MEMORY[0x2667577B0](v21, -1, -1);
      }

      else
      {
      }
    }
  }

  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = *(v0 + 3);
    v28 = swift_slowAlloc();
    *v28 = 134217984;
    *(v28 + 4) = v27;
    _os_log_impl(&dword_26524C000, v25, v26, "KDSRegistrationDaemon -- SetupHeartbeat scheduling new heartbeat with interval: %f", v28, 0xCu);
    MEMORY[0x2667577B0](v28, -1, -1);
  }

  v29 = v0[3];

  v30 = objc_allocWithZone(MEMORY[0x277CF07C8]);
  v31 = MEMORY[0x266756A10](v4, v5);
  v32 = [v30 initWithIdentifier_];

  [v32 setScheduleAfter_];
  v33 = v32;
  [v33 setRequiresExternalPower_];
  [v33 setRequiresNetworkConnectivity_];
  [v33 setPriority_];
  [v33 setRequiresProtectionClass_];

  v34 = [v2 sharedScheduler];
  v0[2] = 0.0;
  v35 = [v34 submitTaskRequest:v33 error:v0 + 2];

  v36 = *(v0 + 2);
  if (v35)
  {
    v37 = v36;
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = 0;
      _os_log_impl(&dword_26524C000, v38, v39, "KDSRegistrationDaemon -- SetupHeartbeat submitted background task.", v40, 2u);
      MEMORY[0x2667577B0](v40, -1, -1);
    }

    v41 = *(v0 + 1);
  }

  else
  {
    v42 = v36;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    v41 = *(v0 + 1);
  }

  return v41();
}

uint64_t KDSRegistrationDaemon.heartbeatRegistration(heartbeatBGTask:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](KDSRegistrationDaemon.heartbeatRegistration(heartbeatBGTask:), 0, 0);
}

void KDSRegistrationDaemon.heartbeatRegistration(heartbeatBGTask:)(uint64_t a1)
{
  v108 = v1;
  *(v1 + 32) = OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_logger;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_26524C000, v2, v3, "KDSRegistrationDaemon -- heartbeatRegistration called", v4, 2u);
    MEMORY[0x2667577B0](v4, -1, -1);
  }

  v5 = *(v1 + 24);

  v6 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_So17OS_os_transaction_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v103 = *((*MEMORY[0x277D85000] & *v5) + 0xD0);
  v7 = v103();
  v8 = v1;
  v9 = 0;
  v10 = v7 + 64;
  v11 = -1;
  v12 = -1 << *(v7 + 32);
  if (-v12 < 64)
  {
    v11 = ~(-1 << -v12);
  }

  v13 = v11 & *(v7 + 64);
  v14 = (63 - v12) >> 6;
  v106 = v7;
  v104 = v8;
LABEL_6:
  *(v8 + 40) = v6;
  while (v13)
  {
LABEL_12:
    v16 = __clz(__rbit64(v13));
    v13 &= v13 - 1;
    v17 = (*(v106 + 48) + ((v9 << 10) | (16 * v16)));
    v19 = *v17;
    v18 = v17[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_2653419E0;
    *(v20 + 56) = MEMORY[0x277D837D0];
    *(v20 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v20 + 32) = v19;
    *(v20 + 40) = v18;
    swift_bridgeObjectRetain_n();
    String.init(format:_:)();
    String.utf8CString.getter();

    v21 = os_transaction_create();

    if (v21)
    {
      swift_unknownObjectRetain();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v107 = v6;
      v33 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v18);
      v41 = v6[2];
      v42 = (v34 & 1) == 0;
      v43 = __OFADD__(v41, v42);
      v44 = v41 + v42;
      if (v43)
      {
        __break(1u);
      }

      else
      {
        if (v6[3] < v44)
        {
          v45 = v34;
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v44, isUniquelyReferenced_nonNull_native);
          v33 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v18);
          if ((v45 & 1) == (v46 & 1))
          {
            v34 = v45;
            if ((v45 & 1) == 0)
            {
              goto LABEL_26;
            }

LABEL_24:
            v47 = v33;

            v6 = v107;
            v48 = v107[7];
            v49 = *(v48 + 8 * v47);
            *(v48 + 8 * v47) = v21;
            swift_unknownObjectRelease(v49, v50, v51, v52, v53, v54, v55, v56);
            swift_unknownObjectRelease(v21, v57, v58, v59, v60, v61, v62, v63);
            v8 = v104;
            goto LABEL_6;
          }

LABEL_53:

          KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          return;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          if (v34)
          {
            goto LABEL_24;
          }
        }

        else
        {
          v64 = v33;
          v65 = v34;
          specialized _NativeDictionary.copy()();
          v34 = v65;
          v33 = v64;
          if (v65)
          {
            goto LABEL_24;
          }
        }

LABEL_26:
        v6 = v107;
        v107[(v33 >> 6) + 8] |= 1 << v33;
        v66 = (v6[6] + 16 * v33);
        *v66 = v19;
        v66[1] = v18;
        *(v6[7] + 8 * v33) = v21;
        swift_unknownObjectRelease(v21, v34, v35, v36, v37, v38, v39, v40);
        v67 = v6[2];
        v43 = __OFADD__(v67, 1);
        v68 = v67 + 1;
        if (!v43)
        {
          v6[2] = v68;
          v8 = v104;
          goto LABEL_6;
        }
      }

      __break(1u);
      return;
    }

    v22 = specialized __RawDictionaryStorage.find<A>(_:)(v19, v18);
    v24 = v23;

    if (v24)
    {
      v107 = v6;
      if (!swift_isUniquelyReferenced_nonNull_native())
      {
        specialized _NativeDictionary.copy()();
        v6 = v107;
      }

      swift_unknownObjectRelease(*(v6[7] + 8 * v22), v25, v26, v27, v28, v29, v30, v31);
      specialized _NativeDictionary._delete(at:)(v22, v6);
      v8 = v104;
      goto LABEL_6;
    }
  }

  while (1)
  {
    v15 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      __break(1u);
      goto LABEL_53;
    }

    if (v15 >= v14)
    {
      break;
    }

    v13 = *(v10 + 8 * v15);
    ++v9;
    if (v13)
    {
      v9 = v15;
      goto LABEL_12;
    }
  }

  v69 = Logger.logObject.getter();
  v70 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v69, v70))
  {
    v71 = swift_slowAlloc();
    *v71 = 0;
    _os_log_impl(&dword_26524C000, v69, v70, "KDSRegistrationDaemon -- heartbeatRegistration transactions taken", v71, 2u);
    MEMORY[0x2667577B0](v71, -1, -1);
  }

  v72 = v104;
  v73 = *(v104 + 16);

  [v73 setTaskCompleted];
  v74 = Logger.logObject.getter();
  v75 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v74, v75))
  {
    v76 = swift_slowAlloc();
    *v76 = 0;
    _os_log_impl(&dword_26524C000, v74, v75, "KDSRegistrationDaemon -- heartbeatRegistration set background task completed, heartbeating registration.", v76, 2u);
    MEMORY[0x2667577B0](v76, -1, -1);
  }

  v77 = v103();
  *(v104 + 48) = v77;
  v78 = *(v77 + 32);
  *(v104 + 112) = v78;
  v79 = -1;
  v80 = -1 << v78;
  if (-(-1 << v78) < 64)
  {
    v79 = ~(-1 << -(-1 << v78));
  }

  v81 = v79 & *(v77 + 64);
  if (v81)
  {
    v82 = 0;
LABEL_39:
    *(v104 + 56) = v81;
    *(v104 + 64) = v82;
    v85 = *(v104 + 40);
    v86 = __clz(__rbit64(v81)) | (v82 << 6);
    v87 = (*(v77 + 48) + 16 * v86);
    v88 = *v87;
    *(v104 + 72) = *v87;
    v89 = v87[1];
    *(v104 + 80) = v89;
    v90 = *(*(v77 + 56) + 8 * v86);
    *(v104 + 88) = v90;
    v91 = *(v85 + 16);

    if (v91)
    {
      v92 = specialized __RawDictionaryStorage.find<A>(_:)(v88, v89);
      if (v93)
      {
        v94 = *(*(*(v104 + 40) + 56) + 8 * v92);
        *(v104 + 96) = v94;
        v95 = *(*v90 + 576);
        swift_unknownObjectRetain();
        v105 = (v95 + *v95);
        v96 = swift_task_alloc();
        *(v104 + 104) = v96;
        *v96 = v104;
        v96[1] = KDSRegistrationDaemon.heartbeatRegistration(heartbeatBGTask:);

        v105(v94);
        return;
      }
    }

    v97 = Logger.logObject.getter();
    v98 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v97, v98))
    {
      v99 = swift_slowAlloc();
      v100 = swift_slowAlloc();
      v107 = v100;
      *v99 = 136315138;
      v101 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v88, v89, &v107);

      *(v99 + 4) = v101;
      _os_log_impl(&dword_26524C000, v97, v98, "KDSRegistrationDaemon -- heartbeatRegistration found no transaction for simUniqueID: %s", v99, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v100);
      v72 = v104;
      MEMORY[0x2667577B0](v100, -1, -1);
      MEMORY[0x2667577B0](v99, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    v83 = 0;
    v84 = ((63 - v80) >> 6) - 1;
    while (v84 != v83)
    {
      v82 = v83 + 1;
      v81 = *(v77 + 8 * v83++ + 72);
      if (v81)
      {
        goto LABEL_39;
      }
    }
  }

  v102 = *(v72 + 8);

  v102();
}

uint64_t KDSRegistrationDaemon.heartbeatRegistration(heartbeatBGTask:)()
{

  return MEMORY[0x2822009F8](KDSRegistrationDaemon.heartbeatRegistration(heartbeatBGTask:), 0, 0);
}

void KDSRegistrationDaemon.heartbeatRegistration(heartbeatBGTask:)()
{
  v48 = v0;

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.default.getter();

  v3 = os_log_type_enabled(v1, v2);
  v11 = *(v0 + 96);
  v12 = *(v0 + 80);
  if (v3)
  {
    v13 = *(v0 + 72);
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v47 = v15;
    *v14 = 136315138;
    v16 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, &v47);

    *(v14 + 4) = v16;
    _os_log_impl(&dword_26524C000, v1, v2, "KDSRegistrationDaemon -- heartbeatRegistration heartbeat triggered for simUniqueID: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v15);
    MEMORY[0x2667577B0](v15, -1, -1);
    MEMORY[0x2667577B0](v14, -1, -1);
    swift_unknownObjectRelease(v11, v17, v18, v19, v20, v21, v22, v23);
  }

  else
  {
    swift_unknownObjectRelease(*(v0 + 96), v4, v5, v6, v7, v8, v9, v10);
  }

  v24 = *(v0 + 64);
  v25 = (*(v0 + 56) - 1) & *(v0 + 56);
  if (v25)
  {
    v26 = *(v0 + 48);
LABEL_10:
    *(v0 + 56) = v25;
    *(v0 + 64) = v24;
    v28 = *(v0 + 40);
    v29 = __clz(__rbit64(v25)) | (v24 << 6);
    v30 = (*(v26 + 48) + 16 * v29);
    v31 = *v30;
    *(v0 + 72) = *v30;
    v32 = v30[1];
    *(v0 + 80) = v32;
    v33 = *(*(v26 + 56) + 8 * v29);
    *(v0 + 88) = v33;
    v34 = *(v28 + 16);

    if (v34 && (v35 = specialized __RawDictionaryStorage.find<A>(_:)(v31, v32), (v36 & 1) != 0))
    {
      v37 = *(*(*(v0 + 40) + 56) + 8 * v35);
      *(v0 + 96) = v37;
      v38 = *(*v33 + 576);
      swift_unknownObjectRetain();
      v46 = (v38 + *v38);
      v39 = swift_task_alloc();
      *(v0 + 104) = v39;
      *v39 = v0;
      v39[1] = KDSRegistrationDaemon.heartbeatRegistration(heartbeatBGTask:);

      v46(v37);
    }

    else
    {

      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v47 = v43;
        *v42 = 136315138;
        v44 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v47);

        *(v42 + 4) = v44;
        _os_log_impl(&dword_26524C000, v40, v41, "KDSRegistrationDaemon -- heartbeatRegistration found no transaction for simUniqueID: %s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v43);
        MEMORY[0x2667577B0](v43, -1, -1);
        MEMORY[0x2667577B0](v42, -1, -1);
      }

      else
      {
      }

LABEL_20:

      v45 = *(v0 + 8);

      v45();
    }
  }

  else
  {
    while (1)
    {
      v27 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      v26 = *(v0 + 48);
      if (v27 >= (((1 << *(v0 + 112)) + 63) >> 6))
      {

        goto LABEL_20;
      }

      v25 = *(v26 + 8 * v27 + 64);
      ++v24;
      if (v25)
      {
        v24 = v27;
        goto LABEL_10;
      }
    }

    __break(1u);
  }
}

uint64_t KDSRegistrationDaemon.broadcastRegistrationState(uniqueClientIdentifier:simUniqueID:newRegistrationState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  IsRegisteredChanged = type metadata accessor for KDSRegistration.IsRegisteredChangedError.ErrorType();
  v5[7] = IsRegisteredChanged;
  v5[8] = *(IsRegisteredChanged - 8);
  v5[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15KDSRegistrationO28RegistrationCompletedContextVSgMd, &_s15SecureMessaging15KDSRegistrationO28RegistrationCompletedContextVSgMR);
  v5[10] = swift_task_alloc();
  type metadata accessor for RegistrationActor();
  v5[11] = static RegistrationActor.shared.getter();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20], MEMORY[0x277D4CC28]);
  v8 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[12] = v8;
  v5[13] = v7;

  return MEMORY[0x2822009F8](KDSRegistrationDaemon.broadcastRegistrationState(uniqueClientIdentifier:simUniqueID:newRegistrationState:), v8, v7);
}

uint64_t KDSRegistrationDaemon.broadcastRegistrationState(uniqueClientIdentifier:simUniqueID:newRegistrationState:)()
{
  v1 = (*(**(v0[6] + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_clientXPCServer) + 88))();
  if (*(v1 + 16) && (v2 = specialized __RawDictionaryStorage.find<A>(_:)(v0[2]), (v3 & 1) != 0))
  {
    v4 = v0[10];
    v5 = (*(v1 + 56) + 16 * v2);
    v0[14] = *v5;
    v6 = v5[1];
    v0[15] = v6;
    swift_unknownObjectRetain();

    v7 = type metadata accessor for KDSRegistration.RegistrationCompletedContext();
    (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
    v18 = (*(*v6 + 104) + **(*v6 + 104));
    v8 = swift_task_alloc();
    v0[16] = v8;
    *v8 = v0;
    v8[1] = KDSRegistrationDaemon.broadcastRegistrationState(uniqueClientIdentifier:simUniqueID:newRegistrationState:);
    v9 = v0[10];
    v10 = v0[4];
    v11 = v0[5];
    v12 = v0[3];

    return v18(v12, v10, v11, v9, DeregisterKeyPackageRequest.pushTokenForTesting.modify, 0);
  }

  else
  {
    v15 = v0[8];
    v14 = v0[9];
    v16 = v0[7];

    (*(v15 + 104))(v14, *MEMORY[0x277D4CB58], v16);
    type metadata accessor for KDSRegistration.IsRegisteredChangedError();
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredChangedError and conformance KDSRegistration.IsRegisteredChangedError, MEMORY[0x277D4CB68], MEMORY[0x277D4CB70]);
    swift_allocError();
    KDSRegistration.GetClientIDError.init(type:underlyingErrorDescription:)();
    swift_willThrow();

    v17 = v0[1];

    return v17();
  }
}

{
  v2 = *v1;
  v3 = *(*v1 + 80);
  *(*v1 + 136) = v0;

  outlined destroy of MLS.KeyPackageProvider?(v3, &_s15SecureMessaging15KDSRegistrationO28RegistrationCompletedContextVSgMd, &_s15SecureMessaging15KDSRegistrationO28RegistrationCompletedContextVSgMR);
  v4 = *(v2 + 104);
  v5 = *(v2 + 96);
  if (v0)
  {
    v6 = KDSRegistrationDaemon.broadcastRegistrationState(uniqueClientIdentifier:simUniqueID:newRegistrationState:);
  }

  else
  {
    v6 = KDSRegistrationDaemon.broadcastRegistrationState(uniqueClientIdentifier:simUniqueID:newRegistrationState:);
  }

  return MEMORY[0x2822009F8](v6, v5, v4);
}

uint64_t KDSRegistrationDaemon.broadcastRegistrationState(uniqueClientIdentifier:simUniqueID:newRegistrationState:)(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  swift_unknownObjectRelease(*(v8 + 112), a2, a3, a4, a5, a6, a7, a8);

  v9 = *(v8 + 8);

  return v9();
}

{
  swift_unknownObjectRelease(*(v8 + 112), a2, a3, a4, a5, a6, a7, a8);

  v9 = *(v8 + 8);

  return v9();
}

id KDSRegistrationDaemon.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t protocol witness for StateMachineOperator.getPhoneNumberInfo(for:) in conformance KDSRegistrationDaemon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return KDSRegistrationDaemon.getPhoneNumberInfo(for:)(a1, a2, a3);
}

uint64_t KDSRegistrationDaemon.getPhoneNumberInfo(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[6] = a3;
  v4[7] = v3;
  v4[4] = a1;
  v4[5] = a2;
  v4[8] = type metadata accessor for PhoneNumberInfo(0);
  v4[9] = swift_task_alloc();
  v5 = type metadata accessor for KDSRegistration.RegisterKeyPackageError.ErrorType();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v6 = type metadata accessor for URI();
  v4[13] = v6;
  v4[14] = *(v6 - 8);
  v4[15] = swift_task_alloc();

  return MEMORY[0x2822009F8](KDSRegistrationDaemon.getPhoneNumberInfo(for:), 0, 0);
}

uint64_t KDSRegistrationDaemon.getPhoneNumberInfo(for:)(uint64_t a1)
{
  v34 = v1;
  v2 = specialized SMAUserDefaults.shouldUseTestNumber()();
  v3 = v1[7];
  if (v2)
  {
    v4 = v3;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.default.getter();

    v7 = os_log_type_enabled(v5, v6);
    v8 = v1[7];
    v9 = MEMORY[0x277D85000];
    if (v7)
    {
      v10 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v11 = v33;
      *v10 = 136315138;
      v1[2] = (*((*v9 & *v8) + 0xE8))();
      v1[3] = v12;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v13 = String.init<A>(describing:)();
      v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v33);

      *(v10 + 4) = v15;
      _os_log_impl(&dword_26524C000, v5, v6, "test phone number: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x2667577B0](v11, -1, -1);
      MEMORY[0x2667577B0](v10, -1, -1);
    }

    else
    {
    }

    (*((*v9 & *v1[7]) + 0xE8))();
    if (v21)
    {
      URI.init(prefixedURI:)();
      v22 = v1[8];
      v23 = v1[4];
      (*(v1[14] + 32))(v23, v1[15], v1[13]);
      v24 = (v23 + *(v22 + 20));
      *v24 = 0x4552432D54534554;
      v24[1] = 0xEF4C4149544E4544;
      *(v23 + *(v22 + 24)) = 0;

      v25 = v1[1];
    }

    else
    {
      v26 = Logger.logObject.getter();
      v27 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_26524C000, v26, v27, "No test phone number found.", v28, 2u);
        MEMORY[0x2667577B0](v28, -1, -1);
      }

      v30 = v1[11];
      v29 = v1[12];
      v31 = v1[10];

      (*(v30 + 104))(v29, *MEMORY[0x277D4CB38], v31);
      type metadata accessor for KDSRegistration.RegisterKeyPackageError();
      _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type KDSRegistration.RegisterKeyPackageError and conformance KDSRegistration.RegisterKeyPackageError, MEMORY[0x277D4CB48], MEMORY[0x277D4CB50]);
      swift_allocError();
      KDSRegistration.GetClientIDError.init(type:underlyingErrorDescription:)();
      swift_willThrow();

      v25 = v1[1];
    }

    return v25();
  }

  else
  {
    v32 = (*(**&v3[OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_phoneNumberProvider] + 88) + **(**&v3[OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_phoneNumberProvider] + 88));
    v16 = swift_task_alloc();
    v1[16] = v16;
    *v16 = v1;
    v16[1] = KDSRegistrationDaemon.getPhoneNumberInfo(for:);
    v17 = v1[9];
    v18 = v1[5];
    v19 = v1[6];

    return v32(v17, v18, v19);
  }
}

uint64_t KDSRegistrationDaemon.getPhoneNumberInfo(for:)()
{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = KDSRegistrationDaemon.getPhoneNumberInfo(for:);
  }

  else
  {
    v2 = KDSRegistrationDaemon.getPhoneNumberInfo(for:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  outlined init with take of PhoneNumberInfo(v0[9], v0[4]);

  v1 = v0[1];

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t protocol witness for StateMachineOperator.publicSigningKey(for:) in conformance KDSRegistrationDaemon(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](protocol witness for StateMachineOperator.publicSigningKey(for:) in conformance KDSRegistrationDaemon, 0, 0);
}

uint64_t protocol witness for StateMachineOperator.publicSigningKey(for:) in conformance KDSRegistrationDaemon()
{
  v1 = v0[3];
  v2 = OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_mlsDaemonID;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = protocol witness for StateMachineOperator.publicSigningKey(for:) in conformance KDSRegistrationDaemon;
  v4 = v0[2];

  return MLSDaemon.publicSigningKey(for:with:)(v4, v1 + v2);
}

uint64_t KDSRegistrationDaemon.publicSigningKey(for:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](KDSRegistrationDaemon.publicSigningKey(for:), 0, 0);
}

uint64_t KDSRegistrationDaemon.publicSigningKey(for:)()
{
  v1 = v0[3];
  v2 = OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_mlsDaemonID;
  v3 = swift_task_alloc();
  v0[4] = v3;
  *v3 = v0;
  v3[1] = KDSRegistrationDaemon.publicSigningKey(for:);
  v4 = v0[2];

  return MLSDaemon.publicSigningKey(for:with:)(v4, v1 + v2);
}

uint64_t KDSRegistrationDaemon.publicSigningKey(for:)(uint64_t a1, uint64_t a2)
{
  v10 = *v3;

  v8 = *(v10 + 8);
  if (!v2)
  {
    v6 = a1;
    v7 = a2;
  }

  return v8(v6, v7);
}

uint64_t protocol witness for StateMachineOperator.obtainPhoneAuthInfo(uniqueClientIdentifier:accountKey:) in conformance KDSRegistrationDaemon(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return KDSRegistrationDaemon.obtainPhoneAuthInfo(uniqueClientIdentifier:accountKey:)(a1, a2, a3, a4);
}

uint64_t KDSRegistrationDaemon.obtainPhoneAuthInfo(uniqueClientIdentifier:accountKey:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = type metadata accessor for KDSRegistration.ObtainPhoneAuthenticationInfoError.ErrorType();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();
  v7 = type metadata accessor for KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest();
  v5[10] = v7;
  v5[11] = *(v7 - 8);
  v5[12] = swift_task_alloc();
  v8 = type metadata accessor for KDSRegistration.UniqueClientIdentifier();
  v5[13] = v8;
  v5[14] = *(v8 - 8);
  v5[15] = swift_task_alloc();
  type metadata accessor for RegistrationActor();
  v5[16] = static RegistrationActor.shared.getter();
  _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor, MEMORY[0x277D4CC20], MEMORY[0x277D4CC28]);
  v10 = dispatch thunk of Actor.unownedExecutor.getter();
  v5[17] = v10;
  v5[18] = v9;

  return MEMORY[0x2822009F8](KDSRegistrationDaemon.obtainPhoneAuthInfo(uniqueClientIdentifier:accountKey:), v10, v9);
}

uint64_t KDSRegistrationDaemon.obtainPhoneAuthInfo(uniqueClientIdentifier:accountKey:)()
{
  v35 = v0;
  v1 = v0[5];
  v2 = v0[4];
  (*(v0[14] + 16))(v0[15], v0[3], v0[13]);
  outlined copy of Data._Representation(v2, v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  outlined consume of Data._Representation(v2, v1);
  v5 = os_log_type_enabled(v3, v4);
  v7 = v0[14];
  v6 = v0[15];
  v8 = v0[13];
  if (v5)
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v34[0] = v10;
    *v9 = 136315394;
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type KDSRegistration.UniqueClientIdentifier and conformance KDSRegistration.UniqueClientIdentifier, MEMORY[0x277D4CAE8], MEMORY[0x277D4CB10]);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    v13 = v12;
    (*(v7 + 8))(v6, v8);
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v13, v34);

    *(v9 + 4) = v14;
    *(v9 + 12) = 2080;
    v15 = Data.description.getter();
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v34);

    *(v9 + 14) = v17;
    _os_log_impl(&dword_26524C000, v3, v4, "Obtaining phone auth info. { uniqueClientIdentifier: %s, accountKey: %s", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2667577B0](v10, -1, -1);
    MEMORY[0x2667577B0](v9, -1, -1);
  }

  else
  {

    (*(v7 + 8))(v6, v8);
  }

  v18 = v0[6];
  outlined copy of Data._Representation(v0[4], v0[5]);
  v19 = KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.init(accountKey:hasAccountKeyChanged:)();
  v20 = (*(**(v18 + OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_clientXPCServer) + 88))(v19);
  if (*(v20 + 16) && (v21 = specialized __RawDictionaryStorage.find<A>(_:)(v0[3]), (v22 & 1) != 0))
  {
    v23 = (*(v20 + 56) + 16 * v21);
    v0[19] = *v23;
    v24 = v23[1];
    v0[20] = v24;
    swift_unknownObjectRetain();

    v33 = (*(*v24 + 112) + **(*v24 + 112));
    v25 = swift_task_alloc();
    v0[21] = v25;
    *v25 = v0;
    v25[1] = KDSRegistrationDaemon.obtainPhoneAuthInfo(uniqueClientIdentifier:accountKey:);
    v26 = v0[12];
    v27 = v0[2];

    return v33(v27, v26);
  }

  else
  {
    v30 = v0[8];
    v29 = v0[9];
    v31 = v0[7];

    (*(v30 + 104))(v29, *MEMORY[0x277D4CBE8], v31);
    type metadata accessor for KDSRegistration.ObtainPhoneAuthenticationInfoError();
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type KDSRegistration.ObtainPhoneAuthenticationInfoError and conformance KDSRegistration.ObtainPhoneAuthenticationInfoError, MEMORY[0x277D4CC00], MEMORY[0x277D4CC08]);
    swift_allocError();
    KDSRegistration.GetClientIDError.init(type:underlyingErrorDescription:)();
    swift_willThrow();
    (*(v0[11] + 8))(v0[12], v0[10]);

    v32 = v0[1];

    return v32();
  }
}

{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 144);
  v4 = *(v2 + 136);
  if (v0)
  {
    v5 = KDSRegistrationDaemon.obtainPhoneAuthInfo(uniqueClientIdentifier:accountKey:);
  }

  else
  {
    v5 = KDSRegistrationDaemon.obtainPhoneAuthInfo(uniqueClientIdentifier:accountKey:);
  }

  return MEMORY[0x2822009F8](v5, v4, v3);
}

{
  v1 = v0[19];
  v3 = v0[11];
  v2 = v0[12];
  v4 = v0[10];

  swift_unknownObjectRelease(v1, v5, v6, v7, v8, v9, v10, v11);

  (*(v3 + 8))(v2, v4);

  v12 = v0[1];

  return v12();
}

{
  v1 = v0[19];

  swift_unknownObjectRelease(v1, v2, v3, v4, v5, v6, v7, v8);

  (*(v0[11] + 8))(v0[12], v0[10]);

  v9 = v0[1];

  return v9();
}

uint64_t protocol witness for StateMachineOperator.credentialSigningRequest(for:) in conformance KDSRegistrationDaemon(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](protocol witness for StateMachineOperator.credentialSigningRequest(for:) in conformance KDSRegistrationDaemon, 0, 0);
}

uint64_t protocol witness for StateMachineOperator.credentialSigningRequest(for:) in conformance KDSRegistrationDaemon()
{
  v1 = v0[4];
  v2 = OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_mlsDaemonID;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = protocol witness for StateMachineOperator.credentialSigningRequest(for:) in conformance KDSRegistrationDaemon;
  v4 = v0[2];
  v5 = v0[3];

  return MLSDaemon.credentialSigningRequest(for:with:)(v4, v5, v1 + v2);
}

uint64_t KDSRegistrationDaemon.credentialSigningRequest(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](protocol witness for StateMachineOperator.credentialSigningRequest(for:) in conformance KDSRegistrationDaemon, 0, 0);
}

uint64_t protocol witness for StateMachineOperator.updateClientID(clientID:uri:) in conformance KDSRegistrationDaemon(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  return MEMORY[0x2822009F8](protocol witness for StateMachineOperator.updateClientID(clientID:uri:) in conformance KDSRegistrationDaemon, 0, 0);
}

uint64_t protocol witness for StateMachineOperator.updateClientID(clientID:uri:) in conformance KDSRegistrationDaemon()
{
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_mlsDaemonID;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = protocol witness for StateMachineOperator.updateClientID(clientID:uri:) in conformance KDSRegistrationDaemon;
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  return MLSDaemon.updateClientID(swiftMLSClientID:for:with:)(v6, v4, v5, v1 + v2);
}

uint64_t KDSRegistrationDaemon.updateClientID(clientID:uri:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[4] = a3;
  v4[5] = v3;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](KDSRegistrationDaemon.updateClientID(clientID:uri:), 0, 0);
}

uint64_t KDSRegistrationDaemon.updateClientID(clientID:uri:)()
{
  v1 = v0[5];
  v2 = OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_mlsDaemonID;
  v3 = swift_task_alloc();
  v0[6] = v3;
  *v3 = v0;
  v3[1] = KDSRegistrationDaemon.updateClientID(clientID:uri:);
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[2];

  return MLSDaemon.updateClientID(swiftMLSClientID:for:with:)(v6, v4, v5, v1 + v2);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t protocol witness for StateMachineOperator.loadCredential(credential:uri:) in conformance KDSRegistrationDaemon(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](protocol witness for StateMachineOperator.loadCredential(credential:uri:) in conformance KDSRegistrationDaemon, 0, 0);
}

uint64_t protocol witness for StateMachineOperator.loadCredential(credential:uri:) in conformance KDSRegistrationDaemon()
{
  v1 = v0[4];
  v2 = OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_mlsDaemonID;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = protocol witness for StateMachineOperator.credentialSigningRequest(for:) in conformance KDSRegistrationDaemon;
  v5 = v0[2];
  v4 = v0[3];

  return MLSDaemon.loadCredential(credential:uri:with:)(v5, v4, v1 + v2);
}

uint64_t KDSRegistrationDaemon.loadCredential(credential:uri:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](protocol witness for StateMachineOperator.loadCredential(credential:uri:) in conformance KDSRegistrationDaemon, 0, 0);
}

uint64_t protocol witness for StateMachineOperator.getKeyPackage(for:) in conformance KDSRegistrationDaemon(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](protocol witness for StateMachineOperator.getKeyPackage(for:) in conformance KDSRegistrationDaemon, 0, 0);
}

uint64_t protocol witness for StateMachineOperator.getKeyPackage(for:) in conformance KDSRegistrationDaemon()
{
  v1 = v0[4];
  v2 = OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_mlsDaemonID;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = protocol witness for StateMachineOperator.credentialSigningRequest(for:) in conformance KDSRegistrationDaemon;
  v4 = v0[2];
  v5 = v0[3];

  return MLSDaemon.getKeyPackage(for:with:)(v4, v5, v1 + v2);
}

uint64_t KDSRegistrationDaemon.getKeyPackage(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](protocol witness for StateMachineOperator.getKeyPackage(for:) in conformance KDSRegistrationDaemon, 0, 0);
}

uint64_t protocol witness for StateMachineOperator.save(registrationStateMachine:) in conformance KDSRegistrationDaemon(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & **v1) + 0x138);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v7(a1);
}

uint64_t protocol witness for StateMachineOperator.setupHeartbeat(nextHeartbeatInterval:) in conformance KDSRegistrationDaemon(double a1)
{
  v4 = *((*MEMORY[0x277D85000] & **v1) + 0x150);
  v8 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);
  v6.n128_f64[0] = a1;

  return v8(v6);
}

uint64_t protocol witness for StateMachineOperator.updatePushHandlerIfNeeded() in conformance KDSRegistrationDaemon()
{
  v2 = *((*MEMORY[0x277D85000] & **v0) + 0x148);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:) in conformance KDSRegistrationKeyPackageExchanger;

  return v5();
}

uint64_t protocol witness for StateMachineOperator.broadcastRegistrationState(uniqueClientIdentifier:simUniqueID:newRegistrationState:) in conformance KDSRegistrationDaemon(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x277D85000] & **v4) + 0x160);
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = protocol witness for MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:) in conformance KDSRegistrationKeyPackageExchanger;

  return v13(a1, a2, a3, a4);
}

uint64_t protocol witness for StateMachineOperator.getCredential(for:) in conformance KDSRegistrationDaemon(uint64_t a1, uint64_t a2)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = *v2;
  return MEMORY[0x2822009F8](protocol witness for StateMachineOperator.getCredential(for:) in conformance KDSRegistrationDaemon, 0, 0);
}

uint64_t protocol witness for StateMachineOperator.getCredential(for:) in conformance KDSRegistrationDaemon()
{
  v1 = v0[4];
  v2 = OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_mlsDaemonID;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = protocol witness for StateMachineOperator.credentialSigningRequest(for:) in conformance KDSRegistrationDaemon;
  v4 = v0[2];
  v5 = v0[3];

  return MLSDaemon.getCredential(uri:with:)(v4, v5, v1 + v2);
}

uint64_t KDSRegistrationDaemon.getCredential(for:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  return MEMORY[0x2822009F8](KDSRegistrationDaemon.getCredential(for:), 0, 0);
}

uint64_t KDSRegistrationDaemon.getCredential(for:)()
{
  v1 = v0[4];
  v2 = OBJC_IVAR____TtC24SecureMessagingAgentCore21KDSRegistrationDaemon_mlsDaemonID;
  v3 = swift_task_alloc();
  v0[5] = v3;
  *v3 = v0;
  v3[1] = KDSRegistrationDaemon.getCredential(for:);
  v4 = v0[2];
  v5 = v0[3];

  return MLSDaemon.getCredential(uri:with:)(v4, v5, v1 + v2);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

unint64_t specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v43 = type metadata accessor for MLS.UniqueClientIdentifier();
  v4 = *(v43 - 8);
  result = MEMORY[0x28223BE20](v43, v5);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = _HashTable.previousHole(before:)();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v40 = (v13 + 1) & v12;
    v41 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    v39 = a2 + 64;
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v41(v42, *(v7 + 48) + v18 * v11, v14);
      _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D010]);
      v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v21, v14);
      v15 = v22;
      v25 = v24 & v22;
      if (a1 >= v40)
      {
        if (v25 >= v40 && a1 >= v25)
        {
LABEL_15:
          v7 = v44;
          v28 = *(v44 + 48);
          result = v28 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v28 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v29 = *(v7 + 56);
          v30 = (v29 + 48 * a1);
          v31 = (v29 + 48 * v11);
          if (a1 != v11 || v30 >= v31 + 3)
          {
            v32 = *v31;
            v33 = v31[2];
            v30[1] = v31[1];
            v30[2] = v33;
            *v30 = v32;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v40 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

{
  v30 = type metadata accessor for RegClientIdentifier(0);
  v4 = *(v30 - 8);
  result = MEMORY[0x28223BE20](v30, v5);
  v32 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a2 + 64;
  v9 = -1 << *(a2 + 32);
  v10 = (a1 + 1) & ~v9;
  if ((*(a2 + 64 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = (_HashTable.previousHole(before:)() + 1) & ~v9;
    v13 = *(v4 + 72);
    v31 = a2 + 64;
    v14 = v32;
    do
    {
      v15 = v13;
      v16 = v13 * v10;
      outlined init with copy of RegClientIdentifier(*(a2 + 48) + v13 * v10, v14);
      Hasher.init(_seed:)();
      type metadata accessor for MLS.ClientIdentifier();
      _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type MLS.ClientIdentifier and conformance MLS.ClientIdentifier, MEMORY[0x277D4CD48], MEMORY[0x277D4CD58]);
      dispatch thunk of Hashable.hash(into:)();
      v17 = Hasher._finalize()();
      result = outlined destroy of RegClientIdentifier(v14);
      v18 = v17 & v11;
      if (a1 >= v12)
      {
        if (v18 < v12)
        {
          v8 = v31;
          v13 = v15;
          goto LABEL_4;
        }

        v13 = v15;
        if (a1 >= v18)
        {
          goto LABEL_11;
        }
      }

      else
      {
        v13 = v15;
        if (v18 >= v12 || a1 >= v18)
        {
LABEL_11:
          v19 = *(a2 + 48);
          result = v19 + v13 * a1;
          if (v13 * a1 < v16 || result >= v19 + v16 + v13)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v8 = v31;
          }

          else
          {
            v20 = v13 * a1 == v16;
            v8 = v31;
            if (!v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
            }
          }

          v21 = *(a2 + 56);
          v22 = v21 + 56 * a1;
          v23 = (v21 + 56 * v10);
          if (a1 != v10 || v22 >= v23 + 56)
          {
            v24 = *v23;
            v25 = v23[1];
            v26 = v23[2];
            *(v22 + 48) = *(v23 + 6);
            *(v22 + 16) = v25;
            *(v22 + 32) = v26;
            *v22 = v24;
            a1 = v10;
          }

          goto LABEL_4;
        }
      }

      v8 = v31;
LABEL_4:
      v10 = (v10 + 1) & v11;
    }

    while (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) != 0);
  }

  *(v8 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v27 = *(a2 + 16);
  v28 = __OFSUB__(v27, 1);
  v29 = v27 - 1;
  if (v28)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v29;
    ++*(a2 + 36);
  }

  return result;
}

{
  v43 = type metadata accessor for MLS.UniqueClientIdentifier();
  v4 = *(v43 - 8);
  result = MEMORY[0x28223BE20](v43, v5);
  v42 = &v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v44 = v7;
    v13 = _HashTable.previousHole(before:)();
    v14 = v43;
    v7 = v44;
    v15 = v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v40 = (v13 + 1) & v12;
    v41 = v17;
    v18 = *(v16 + 56);
    v38 = (v16 - 8);
    v39 = a2 + 64;
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v42;
      v22 = v15;
      v23 = v16;
      v41(v42, *(v7 + 48) + v18 * v11, v14);
      _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D010]);
      v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v38)(v21, v14);
      v15 = v22;
      v25 = v24 & v22;
      if (a1 >= v40)
      {
        if (v25 >= v40 && a1 >= v25)
        {
LABEL_15:
          v7 = v44;
          v28 = *(v44 + 48);
          result = v28 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v28 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v44;
            v18 = v19;
            v15 = v22;
            v9 = v39;
          }

          else
          {
            v9 = v39;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v44;
              v18 = v19;
              v15 = v22;
            }
          }

          v29 = *(v7 + 56);
          v30 = v29 + 40 * a1;
          v31 = (v29 + 40 * v11);
          if (a1 != v11 || v30 >= v31 + 40)
          {
            v32 = *v31;
            v33 = v31[1];
            *(v30 + 32) = *(v31 + 4);
            *v30 = v32;
            *(v30 + 16) = v33;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v40 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v39;
      v18 = v19;
      v7 = v44;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(v7 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v36;
    ++*(v7 + 36);
  }

  return result;
}

{
  v41 = type metadata accessor for KDSRegistration.UniqueClientIdentifier();
  v4 = *(v41 - 8);
  result = MEMORY[0x28223BE20](v41, v5);
  v40 = &v35 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v12 = ~v10;
    v42 = v7;
    v13 = _HashTable.previousHole(before:)();
    v14 = v41;
    v7 = v42;
    v15 = v12;
    v39 = (v13 + 1) & v12;
    v17 = *(v4 + 16);
    v16 = v4 + 16;
    v37 = a2 + 64;
    v38 = v17;
    v18 = *(v16 + 56);
    v36 = (v16 - 8);
    do
    {
      v19 = v18;
      v20 = v18 * v11;
      v21 = v40;
      v22 = v15;
      v23 = v16;
      v38(v40, *(v7 + 48) + v18 * v11, v14);
      _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type KDSRegistration.UniqueClientIdentifier and conformance KDSRegistration.UniqueClientIdentifier, MEMORY[0x277D4CAE8], MEMORY[0x277D4CAF8]);
      v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v36)(v21, v14);
      v15 = v22;
      v25 = v24 & v22;
      if (a1 >= v39)
      {
        if (v25 >= v39 && a1 >= v25)
        {
LABEL_15:
          v7 = v42;
          v28 = *(v42 + 48);
          result = v28 + v19 * a1;
          v16 = v23;
          if (v19 * a1 < v20 || (v18 = v19, result >= v28 + v20 + v19))
          {
            result = swift_arrayInitWithTakeFrontToBack();
            v7 = v42;
            v18 = v19;
            v15 = v22;
            v9 = v37;
          }

          else
          {
            v9 = v37;
            if (v19 * a1 != v20)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v7 = v42;
              v18 = v19;
              v15 = v22;
            }
          }

          v29 = *(v7 + 56);
          v30 = (v29 + 16 * a1);
          v31 = (v29 + 16 * v11);
          if (a1 != v11 || v30 >= v31 + 1)
          {
            *v30 = *v31;
            a1 = v11;
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v39 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v16 = v23;
      v9 = v37;
      v18 = v19;
      v7 = v42;
LABEL_4:
      v11 = (v11 + 1) & v15;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v32 = *(v7 + 16);
  v33 = __OFSUB__(v32, 1);
  v34 = v32 - 1;
  if (v33)
  {
    __break(1u);
  }

  else
  {
    *(v7 + 16) = v34;
    ++*(v7 + 36);
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

unint64_t specialized _NativeDictionary._delete(at:)(uint64_t a1, uint64_t a2)
{
  return specialized _NativeDictionary._delete(at:)(a1, a2, MEMORY[0x277D4CF18]);
}

{
  return specialized _NativeDictionary._delete(at:)(a1, a2, MEMORY[0x277D4CFD0]);
}

unint64_t specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v38 = a3;
  v5 = type metadata accessor for MLS.UniqueClientIdentifier();
  v6 = *(v5 - 8);
  result = MEMORY[0x28223BE20](v5, v7);
  v10 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = a2 + 64;
  v12 = -1 << *(a2 + 32);
  v13 = (a1 + 1) & ~v12;
  if ((*(a2 + 64 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13))
  {
    v43 = a2;
    v14 = ~v12;
    v15 = _HashTable.previousHole(before:)();
    v16 = v14;
    a2 = v43;
    v42 = (v15 + 1) & v16;
    v18 = *(v6 + 16);
    v17 = v6 + 16;
    v40 = v11;
    v41 = v18;
    v19 = *(v17 + 56);
    v39 = (v17 - 8);
    do
    {
      v20 = v19;
      v21 = v19 * v13;
      v22 = v16;
      v23 = v17;
      v41(v10, *(a2 + 48) + v19 * v13, v5);
      _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type MLS.UniqueClientIdentifier and conformance MLS.UniqueClientIdentifier, MEMORY[0x277D4D000], MEMORY[0x277D4D010]);
      v24 = dispatch thunk of Hashable._rawHashValue(seed:)();
      result = (*v39)(v10, v5);
      v16 = v22;
      v25 = v24 & v22;
      if (a1 >= v42)
      {
        if (v25 >= v42 && a1 >= v25)
        {
LABEL_15:
          v17 = v23;
          if (v20 * a1 < v21 || *(v43 + 48) + v20 * a1 >= (*(v43 + 48) + v21 + v20))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v20 * a1 != v21)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v43;
          v28 = *(v43 + 56);
          v29 = *(*(v38(0) - 8) + 72);
          v30 = v29 * a1;
          result = v28 + v29 * a1;
          v31 = v29 * v13;
          v32 = v28 + v29 * v13 + v29;
          if (v30 < v31 || result >= v32)
          {
            result = swift_arrayInitWithTakeFrontToBack();
            a1 = v13;
            v11 = v40;
            v16 = v22;
          }

          else
          {
            a1 = v13;
            v34 = v30 == v31;
            v11 = v40;
            v16 = v22;
            if (!v34)
            {
              result = swift_arrayInitWithTakeBackToFront();
              v16 = v22;
              a1 = v13;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v25 >= v42 || a1 >= v25)
      {
        goto LABEL_15;
      }

      v17 = v23;
      v11 = v40;
      a2 = v43;
LABEL_4:
      v13 = (v13 + 1) & v16;
      v19 = v20;
    }

    while (((*(v11 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) != 0);
  }

  *(v11 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v35 = *(a2 + 16);
  v36 = __OFSUB__(v35, 1);
  v37 = v35 - 1;
  if (v36)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v37;
    ++*(a2 + 36);
  }

  return result;
}

uint64_t specialized MLSDaemon.setupInternalConnection(mlsDaemonClient:regClientKeyPackageExchanger:identifier:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = type metadata accessor for RegClientIdentifier(0);
  v10 = MEMORY[0x28223BE20](v8 - 8, v9);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10, v13);
  v15 = &v32 - v14;
  v35[3] = type metadata accessor for KDSRegistrationDaemon(0);
  v35[4] = &protocol witness table for KDSRegistrationDaemon;
  v35[0] = a1;
  v16 = _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type KDSRegistrationKeyPackageExchanger and conformance KDSRegistrationKeyPackageExchanger, type metadata accessor for KDSRegistrationKeyPackageExchanger, &protocol conformance descriptor for KDSRegistrationKeyPackageExchanger);
  outlined init with copy of RegClientIdentifier(a3, v15);
  v17 = a1;
  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v32 = v16;
    v21 = v20;
    v22 = swift_slowAlloc();
    v33 = a3;
    v34[0] = v22;
    v23 = v22;
    *v21 = 136315138;
    outlined init with copy of RegClientIdentifier(v15, v12);
    v24 = MLS.ClientIdentifier.description.getter();
    v26 = v25;
    outlined destroy of RegClientIdentifier(v12);
    outlined destroy of RegClientIdentifier(v15);
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v26, v34);

    *(v21 + 4) = v27;
    _os_log_impl(&dword_26524C000, v18, v19, "MLSDaemon setupInternalConnection called { clientIdentifier: %s }", v21, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v23);
    v28 = v23;
    a3 = v33;
    MEMORY[0x2667577B0](v28, -1, -1);
    v29 = v21;
    v16 = v32;
    MEMORY[0x2667577B0](v29, -1, -1);
  }

  else
  {

    outlined destroy of RegClientIdentifier(v15);
  }

  outlined init with copy of SMAUserDefaultsProtocol(v35, v34);
  v34[5] = a2;
  v34[6] = v16;
  v30 = *(**(a4 + OBJC_IVAR____TtC24SecureMessagingAgentCore9MLSDaemon_regClientServer) + 112);

  v30(v34, a3);
  outlined destroy of RegistrationClientProxy(v34);
  return __swift_destroy_boxed_opaque_existential_1Tm(v35);
}

uint64_t type metadata accessor for KDSRegistrationDaemon(uint64_t a1)
{
  result = type metadata singleton initialization cache for KDSRegistrationDaemon;
  if (!type metadata singleton initialization cache for KDSRegistrationDaemon)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_2652BC710()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t block_copy_helper_4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t partial apply for closure #1 in KDSRegistrationDaemon.setupXPCConnection(client:uniqueClientIdentifier:clientIdentifier:simUniqueID:simLabelID:uriSupportedState:testPhoneNumber:completion:)@<X0>(char *a1@<X8>)
{
  return partial apply for closure #1 in KDSRegistrationDaemon.setupXPCConnection(client:uniqueClientIdentifier:clientIdentifier:simUniqueID:simLabelID:uriSupportedState:testPhoneNumber:completion:)(a1);
}

{
  return closure #1 in KDSRegistrationDaemon.setupXPCConnection(client:uniqueClientIdentifier:clientIdentifier:simUniqueID:simLabelID:uriSupportedState:testPhoneNumber:completion:)(v1[4], v1[5], v1[6], v1[7], v1[8], v1[9], a1);
}

uint64_t partial apply for closure #2 in KDSRegistrationDaemon.setupXPCConnection(client:uniqueClientIdentifier:clientIdentifier:simUniqueID:simLabelID:uriSupportedState:testPhoneNumber:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(v6 + 16);
  v14 = *(v6 + 24);
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = dispatch thunk of DaemonPersister.loadClientIdentifiersWithEvents();

  return closure #2 in KDSRegistrationDaemon.setupXPCConnection(client:uniqueClientIdentifier:clientIdentifier:simUniqueID:simLabelID:uriSupportedState:testPhoneNumber:completion:)(a1, a2, a3, a4, a5, a6, v13, v14);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String, @guaranteed String, @in_guaranteed KDSRegistration.URISupportedState, @in_guaranteed KDSRegistration.UniqueClientIdentifier) -> (@unowned Bool, @error @owned Error)(uint64_t a1, char *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String, @guaranteed String, @in_guaranteed KDSRegistration.URISupportedState, @in_guaranteed KDSRegistration.UniqueClientIdentifier) -> (@unowned Bool, @error @owned Error)(a1, a2, v6);
}

uint64_t partial apply for closure #2 in KDSRegistrationDaemon.update(simUniqueID:simLabelID:supportedState:uniqueClientIdentifier:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v16 = *(v7 + 16);
  v17 = swift_task_alloc();
  *(v8 + 16) = v17;
  *v17 = v8;
  v17[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #2 in KDSRegistrationDaemon.update(simUniqueID:simLabelID:supportedState:uniqueClientIdentifier:completion:)(a1, a2, a3, a4, a5, a6, a7, v16);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String, @guaranteed String, @in_guaranteed KDSRegistration.URISupportedState, @in_guaranteed KDSRegistration.UniqueClientIdentifier) -> (@out KDSRegistration.SupportedStateUpdateProcessedContext, @error @owned Error)(uint64_t a1, char *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String, @guaranteed String, @in_guaranteed KDSRegistration.URISupportedState, @in_guaranteed KDSRegistration.UniqueClientIdentifier) -> (@out KDSRegistration.SupportedStateUpdateProcessedContext, @error @owned Error)(a1, a2, v6);
}

uint64_t partial apply for closure #2 in KDSRegistrationDaemon.isRegistered(simUniqueID:context:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #2 in KDSRegistrationDaemon.isRegistered(simUniqueID:context:completion:)(a1, a2, a3, a4, v10);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String, @in_guaranteed KDSRegistration.IsRegisteredContext?) -> (@out KDSRegistration.IsRegisteredResult, @error @owned Error)(uint64_t a1, char *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String, @in_guaranteed KDSRegistration.IsRegisteredContext?) -> (@out KDSRegistration.IsRegisteredResult, @error @owned Error)(a1, a2, v6);
}

uint64_t partial apply for closure #2 in KDSRegistrationDaemon.signWithParticipantKey(simUniqueID:input:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #2 in KDSRegistrationDaemon.signWithParticipantKey(simUniqueID:input:completion:)(a1, a2, a3, a4, v10);
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String, @in_guaranteed KDSRegistration.SigningInput) -> (@out KDSRegistration.SigningOutput, @error @owned Error)(uint64_t a1, char *a2)
{
  v6 = *(v2 + 16);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return thunk for @escaping @callee_guaranteed @Sendable @async (@guaranteed String, @in_guaranteed KDSRegistration.SigningInput) -> (@out KDSRegistration.SigningOutput, @error @owned Error)(a1, a2, v6);
}

uint64_t outlined init with take of PhoneNumberInfo(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhoneNumberInfo(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_2652BCEC0@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xB8))();
  *a2 = result;
  return result;
}

uint64_t sub_2652BCF1C(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0xC0);

  return v2(v3);
}

uint64_t sub_2652BCF80@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xD0))();
  *a2 = result;
  return result;
}

uint64_t sub_2652BCFDC(void *a1, void **a2)
{
  v2 = *((*MEMORY[0x277D85000] & **a2) + 0xD8);

  return v2(v3);
}

uint64_t sub_2652BD040@<X0>(void **a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*((*MEMORY[0x277D85000] & **a1) + 0xE8))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2652BD09C(uint64_t *a1, void **a2)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *((*MEMORY[0x277D85000] & **a2) + 0xF0);

  return v4(v2, v3);
}

uint64_t type metadata completion function for KDSRegistrationDaemon(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for MLS.ClientIdentifier();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

uint64_t dispatch thunk of KDSRegistrationDaemon.start()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x108);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v5();
}

uint64_t dispatch thunk of KDSRegistrationDaemon.setupXPCConnection(client:uniqueClientIdentifier:clientIdentifier:simUniqueID:simLabelID:uriSupportedState:testPhoneNumber:completion:)()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x118);

  return v2();
}

uint64_t dispatch thunk of KDSRegistrationDaemon.save(registrationStateMachine:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x138);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v7(a1);
}

uint64_t dispatch thunk of KDSRegistrationDaemon.loadRegistrationStateMachines()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x140);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v5();
}

uint64_t dispatch thunk of KDSRegistrationDaemon.updatePushHandlerIfNeeded()()
{
  v2 = *((*MEMORY[0x277D85000] & *v0) + 0x148);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v5();
}

uint64_t dispatch thunk of KDSRegistrationDaemon.setupHeartbeat(nextHeartbeatInterval:)(double a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x150);
  v8 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);
  v6.n128_f64[0] = a1;

  return v8(v6);
}

uint64_t dispatch thunk of KDSRegistrationDaemon.heartbeatRegistration(heartbeatBGTask:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x277D85000] & *v1) + 0x158);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:) in conformance KDSRegistrationKeyPackageExchanger;

  return v7(a1);
}

uint64_t dispatch thunk of KDSRegistrationDaemon.broadcastRegistrationState(uniqueClientIdentifier:simUniqueID:newRegistrationState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *((*MEMORY[0x277D85000] & *v4) + 0x160);
  v13 = (v10 + *v10);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return v13(a1, a2, a3, a4);
}

uint64_t sub_2652BDE30()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2652BDE68()
{
  _Block_release(*(v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t objectdestroy_28Tm_0()
{
  outlined consume of Data._Representation(*(v0 + 16), *(v0 + 24));

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t closure #2 in KDSRegistrationDaemon.isRegistered(simUniqueID:context:completion:)partial apply(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = *(v4 + 16);
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = protocol witness for MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:) in conformance KDSRegistrationKeyPackageExchanger;

  return closure #2 in KDSRegistrationDaemon.isRegistered(simUniqueID:context:completion:)(a1, a2, a3, a4, v10);
}

uint64_t objectdestroy_6Tm()
{
  outlined consume of Data._Representation(*(v0 + 16), *(v0 + 24));
  outlined consume of Data._Representation(*(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t objectdestroy_9Tm()
{

  swift_unknownObjectRelease(*(v0 + 56), v1, v2, v3, v4, v5, v6, v7);

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t closure #2 in KDSRegistrationDaemon.setupXPCConnection(client:uniqueClientIdentifier:clientIdentifier:simUniqueID:simLabelID:uriSupportedState:testPhoneNumber:completion:)partial apply(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13 = *(v6 + 16);
  v14 = *(v6 + 24);
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = dispatch thunk of DaemonPersister.loadGroupMembers(identifier:includePendingMembers:clientIdentifier:);

  return closure #2 in KDSRegistrationDaemon.setupXPCConnection(client:uniqueClientIdentifier:clientIdentifier:simUniqueID:simLabelID:uriSupportedState:testPhoneNumber:completion:)(a1, a2, a3, a4, a5, a6, v13, v14);
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.IsRegisteredContext? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredContext? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredContext? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15SecureMessaging15KDSRegistrationO19IsRegisteredContextVSgMd, &_s15SecureMessaging15KDSRegistrationO19IsRegisteredContextVSgMR);
    _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredContext and conformance KDSRegistration.IsRegisteredContext, MEMORY[0x277D4CA90], MEMORY[0x277D4CA98]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredContext? and conformance <A> A?);
  }

  return result;
}

uint64_t outlined init with take of KDSRegistration.IsRegisteredContext?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging15KDSRegistrationO19IsRegisteredContextVSgMd, &_s15SecureMessaging15KDSRegistrationO19IsRegisteredContextVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t partial apply for closure #1 in KDSRegistrationStateMachine.rerun()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #1 in KDSRegistrationStateMachine.rerun()(a1, v4, v5, v6);
}

uint64_t objectdestroy_192Tm(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  swift_unknownObjectRelease(*(v8 + 16), a2, a3, a4, a5, a6, a7, a8);

  return MEMORY[0x2821FE8E8](v8, 40, 7);
}

uint64_t sub_2652BE39C(uint64_t a1, const char *a2, void *a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  swift_unknownObjectRelease(*(v8 + 16), a2, a3, a4, a5, a6, a7, a8);

  return MEMORY[0x2821FE8E8](v8, 48, 7);
}

uint64_t partial apply for closure #1 in closure #1 in KDSRegistrationDaemon.start()(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for closure #1 in KDSRegistrationPushHandler.handler(_:didReceiveMessage:forTopic:fromID:messageContext:);

  return closure #1 in closure #1 in KDSRegistrationDaemon.start()(a1, v4, v5, v7, v6);
}

uint64_t _s15SecureMessaging17RegistrationActorCACScAAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned Data?, @error @owned Error)@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  result = a2(*a1);
  if (!v3)
  {
    *a3 = result;
    a3[1] = v6;
  }

  return result;
}

void *thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out Data?, @error @owned Error)(uint64_t a1, void *(*a2)(uint64_t *__return_ptr, uint64_t *))
{
  v5 = a1;
  result = a2(&v4, &v5);
  if (!v2)
  {
    return v4;
  }

  return result;
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned Data?, @error @owned Error)@<X0>(uint64_t (*a1)(void)@<X1>, uint64_t *a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    a2[1] = v5;
  }

  return result;
}

uint64_t IncomingEventModel.init(clientIdentifier:groupID:incomingEventData:eventIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  return result;
}

uint64_t IncomingEventModel.clientIdentifier.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t IncomingEventModel.groupID.getter()
{
  v1 = *(v0 + 16);
  outlined copy of Data._Representation(v1, *(v0 + 24));
  return v1;
}

uint64_t IncomingEventModel.incomingEventData.getter()
{
  v1 = *(v0 + 32);
  outlined copy of Data._Representation(v1, *(v0 + 40));
  return v1;
}

uint64_t IncomingEventModel.eventIdentifier.getter()
{
  v1 = *(v0 + 48);
  outlined copy of Data._Representation(v1, *(v0 + 56));
  return v1;
}

sqlite3_stmt *IncomingEventModel.insertStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v4 = strdup("INSERT OR REPLACE INTO Incoming_Event_Table (client_id, group_id, incoming_event_data, event_identifier) VALUES (?, ?, ?, ?);");
  if (!v4)
  {
LABEL_186:
    __break(1u);
  }

  v5 = sqlite3_prepare_v2(a1, v4, -1, ppStmt, 0);
  if (v5)
  {
LABEL_151:
    *&v84 = 0x726F7272456C7173;
    *(&v84 + 1) = 0xE90000000000003ALL;
    v66 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v66);

    v67 = v84;
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v68 = 0;
    *(v68 + 8) = v67;
    return swift_willThrow();
  }

  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v8)
    {
      *&v84 = *v1;
      DWORD2(v84) = v7;
      WORD6(v84) = WORD2(v7);
      v5 = ppStmt[0];
      LODWORD(v9) = BYTE6(v7);
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_6:
        v10 = SQLITE_TRANSIENT;
        v11 = &v84;
        LODWORD(v12) = v9;
        goto LABEL_42;
      }

LABEL_154:
      v71 = v5;
      swift_once();
      v5 = v71;
      goto LABEL_6;
    }

    goto LABEL_20;
  }

  if (v8 != 2)
  {
    *(&v84 + 6) = 0;
    *&v84 = 0;
    v5 = ppStmt[0];
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_25:
      v10 = SQLITE_TRANSIENT;
      v11 = &v84;
      LODWORD(v12) = 0;
      goto LABEL_42;
    }

LABEL_156:
    v72 = v5;
    swift_once();
    v5 = v72;
    goto LABEL_25;
  }

  v13 = v1;
  v14 = *(v6 + 16);
  v15 = *(v6 + 24);
  v16 = __DataStorage._bytes.getter();
  if (v16)
  {
    v10 = v16;
    v1 = v7 & 0x3FFFFFFFFFFFFFFFLL;
    v5 = __DataStorage._offset.getter();
    if (__OFSUB__(v14, v5))
    {
      __break(1u);
      goto LABEL_160;
    }

    v9 = v10 + v14 - v5;
    v10 = (v15 - v14);
    if (!__OFSUB__(v15, v14))
    {
      goto LABEL_11;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v9 = 0;
  v10 = (v15 - v14);
  if (__OFSUB__(v15, v14))
  {
    goto LABEL_28;
  }

LABEL_11:
  v1 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  v5 = MEMORY[0x2667557A0]();
  if (v5 >= v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = v5;
  }

  if (v9)
  {
    v12 = v17;
  }

  else
  {
    v12 = 0;
  }

  if (v12 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_158;
  }

  v6 = 0x7FFFFFFFLL;
  if (v12 <= 0x7FFFFFFF)
  {
    goto LABEL_38;
  }

  __break(1u);
LABEL_20:
  v2 = v6;
  v18 = v6 >> 32;
  v14 = v18 - v2;
  if (v18 < v2)
  {
    __break(1u);
    goto LABEL_156;
  }

  v13 = v1;
  v19 = __DataStorage._bytes.getter();
  if (!v19)
  {
LABEL_29:
    v9 = 0;
    goto LABEL_30;
  }

  v10 = v19;
  v1 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  v5 = __DataStorage._offset.getter();
  if (__OFSUB__(v2, v5))
  {
LABEL_160:
    __break(1u);
    goto LABEL_161;
  }

  v9 = v10 + v2 - v5;
LABEL_30:
  v1 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  v5 = MEMORY[0x2667557A0]();
  if (v5 >= v14)
  {
    v12 = v14;
  }

  else
  {
    v12 = v5;
  }

  if (v9)
  {
    if (v12 < 0xFFFFFFFF80000000)
    {
      __break(1u);
      goto LABEL_154;
    }

    v1 = v13;
    if (v12 <= 0x7FFFFFFF)
    {
      goto LABEL_39;
    }

    __break(1u);
  }

  LODWORD(v12) = 0;
LABEL_38:
  v1 = v13;
LABEL_39:
  v5 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    v69 = ppStmt[0];
    v70 = v12;
    swift_once();
    v5 = v69;
    LODWORD(v12) = v70;
  }

  v10 = SQLITE_TRANSIENT;
  v11 = v9;
LABEL_42:
  v5 = sqlite3_bind_blob(v5, 1, v11, v12, v10);
  if (v5)
  {
    goto LABEL_151;
  }

  v20 = *(v1 + 16);
  v21 = *(v1 + 24);
  v22 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    if (v22 != 2)
    {
      goto LABEL_71;
    }

    v24 = v1;
    v25 = *(v20 + 16);
    v26 = *(v20 + 24);
    v1 = v21 & 0x3FFFFFFFFFFFFFFFLL;
    v27 = __DataStorage._bytes.getter();
    v9 = v27;
    if (v27)
    {
      v1 = v21 & 0x3FFFFFFFFFFFFFFFLL;
      v27 = __DataStorage._offset.getter();
      if (__OFSUB__(v25, v27))
      {
LABEL_167:
        __break(1u);
        goto LABEL_168;
      }

      v9 += v25 - v27;
    }

    v28 = __OFSUB__(v26, v25);
    v29 = v26 - v25;
    if (v28)
    {
      __break(1u);
    }

    else
    {
      v1 = v21 & 0x3FFFFFFFFFFFFFFFLL;
      v27 = MEMORY[0x2667557A0]();
      if (v27 >= v29)
      {
        v30 = v29;
      }

      else
      {
        v30 = v27;
      }

      if (v9)
      {
        v12 = v30;
      }

      else
      {
        v12 = 0;
      }

      if (v12 >= 0xFFFFFFFF80000000)
      {
        if (v12 <= 0x7FFFFFFF)
        {
          v1 = v24;
          goto LABEL_75;
        }

        goto LABEL_166;
      }
    }

    __break(1u);
LABEL_166:
    __break(1u);
    goto LABEL_167;
  }

  if (!v22)
  {
    *&v84 = *(v1 + 16);
    DWORD2(v84) = v21;
    WORD6(v84) = WORD2(v21);
    v5 = ppStmt[0];
    LODWORD(v2) = BYTE6(v21);
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_46:
      v23 = &v84;
      LODWORD(v12) = v2;
      goto LABEL_77;
    }

LABEL_161:
    v75 = v5;
    swift_once();
    v5 = v75;
    goto LABEL_46;
  }

  v31 = v20;
  v32 = v20 >> 32;
  v33 = v32 - v31;
  if (v32 < v31)
  {
    __break(1u);
    goto LABEL_163;
  }

  v34 = v1;
  v9 = __DataStorage._bytes.getter();
  if (v9)
  {
    v1 = v21 & 0x3FFFFFFFFFFFFFFFLL;
    v27 = __DataStorage._offset.getter();
    if (!__OFSUB__(v31, v27))
    {
      v9 += v31 - v27;
      goto LABEL_65;
    }

LABEL_168:
    __break(1u);
    goto LABEL_169;
  }

LABEL_65:
  v1 = v21 & 0x3FFFFFFFFFFFFFFFLL;
  v35 = MEMORY[0x2667557A0]();
  if (v35 >= v33)
  {
    v12 = v33;
  }

  else
  {
    v12 = v35;
  }

  if (v9)
  {
    if (v12 < 0xFFFFFFFF80000000)
    {
      __break(1u);
LABEL_71:
      *(&v84 + 6) = 0;
      *&v84 = 0;
      v5 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_72:
        v23 = &v84;
        LODWORD(v12) = 0;
        goto LABEL_77;
      }

LABEL_163:
      v76 = v5;
      swift_once();
      v5 = v76;
      goto LABEL_72;
    }

    v1 = v34;
    if (v12 > 0x7FFFFFFF)
    {
LABEL_175:
      __break(1u);
      goto LABEL_176;
    }
  }

  else
  {
    LODWORD(v12) = 0;
    v1 = v34;
  }

LABEL_75:
  v5 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_158:
    v73 = v5;
    v74 = v12;
    swift_once();
    v5 = v73;
    LODWORD(v12) = v74;
  }

  v23 = v9;
LABEL_77:
  v27 = sqlite3_bind_blob(v5, 2, v23, v12, v10);
  if (v27)
  {
    goto LABEL_151;
  }

  v36 = *(v1 + 32);
  v37 = *(v1 + 40);
  v38 = v37 >> 62;
  if ((v37 >> 62) > 1)
  {
    if (v38 != 2)
    {
      goto LABEL_107;
    }

    v41 = v1;
    v42 = *(v36 + 16);
    v43 = *(v36 + 24);
    LODWORD(v1) = *(v1 + 40);
    v35 = __DataStorage._bytes.getter();
    v9 = v35;
    if (v35)
    {
      LODWORD(v1) = v37;
      v35 = __DataStorage._offset.getter();
      if (__OFSUB__(v42, v35))
      {
LABEL_176:
        __break(1u);
        goto LABEL_177;
      }

      v9 += v42 - v35;
    }

    v28 = __OFSUB__(v43, v42);
    v44 = v43 - v42;
    if (v28)
    {
      __break(1u);
    }

    else
    {
      LODWORD(v1) = v37;
      v35 = MEMORY[0x2667557A0]();
      if (v35 >= v44)
      {
        v45 = v44;
      }

      else
      {
        v45 = v35;
      }

      if (v9)
      {
        v12 = v45;
      }

      else
      {
        v12 = 0;
      }

      if (v12 >= 0xFFFFFFFF80000000)
      {
        if (v12 <= 0x7FFFFFFF)
        {
          v1 = v41;
          goto LABEL_111;
        }

        goto LABEL_174;
      }
    }

    __break(1u);
LABEL_174:
    __break(1u);
    goto LABEL_175;
  }

  if (v38)
  {
    v46 = v36;
    v47 = v36 >> 32;
    v48 = v47 - v46;
    if (v47 < v46)
    {
      __break(1u);
      goto LABEL_171;
    }

    v49 = v1;
    v9 = __DataStorage._bytes.getter();
    if (!v9)
    {
LABEL_101:
      v1 = v37 & 0x3FFFFFFFFFFFFFFFLL;
      v50 = MEMORY[0x2667557A0]();
      if (v50 >= v48)
      {
        v12 = v48;
      }

      else
      {
        v12 = v50;
      }

      if (v9)
      {
        if (v12 < 0xFFFFFFFF80000000)
        {
          __break(1u);
LABEL_107:
          *(&v84 + 6) = 0;
          *&v84 = 0;
          v27 = ppStmt[0];
          if (one-time initialization token for SQLITE_TRANSIENT == -1)
          {
LABEL_108:
            v40 = &v84;
            LODWORD(v12) = 0;
            goto LABEL_113;
          }

LABEL_171:
          v80 = v27;
          swift_once();
          v27 = v80;
          goto LABEL_108;
        }

        v1 = v49;
        if (v12 > 0x7FFFFFFF)
        {
LABEL_183:
          __break(1u);
          goto LABEL_184;
        }
      }

      else
      {
        LODWORD(v12) = 0;
        v1 = v49;
      }

LABEL_111:
      v27 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_112:
        v40 = v9;
        goto LABEL_113;
      }

LABEL_169:
      v77 = v27;
      v78 = v12;
      swift_once();
      v27 = v77;
      LODWORD(v12) = v78;
      goto LABEL_112;
    }

    LODWORD(v1) = v37;
    v35 = __DataStorage._offset.getter();
    if (!__OFSUB__(v46, v35))
    {
      v9 += v46 - v35;
      goto LABEL_101;
    }

LABEL_177:
    __break(1u);
    goto LABEL_178;
  }

  *&v84 = *(v1 + 32);
  DWORD2(v84) = v37;
  WORD6(v84) = WORD2(v37);
  v27 = ppStmt[0];
  v39 = BYTE6(v37);
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    v79 = ppStmt[0];
    swift_once();
    v27 = v79;
  }

  v40 = &v84;
  LODWORD(v12) = v39;
LABEL_113:
  v35 = sqlite3_bind_blob(v27, 3, v40, v12, v10);
  if (v35)
  {
    goto LABEL_151;
  }

  v51 = *(v1 + 48);
  v52 = *(v1 + 56);
  v53 = v52 >> 62;
  if ((v52 >> 62) <= 1)
  {
    if (!v53)
    {
      *&v84 = *(v1 + 48);
      DWORD2(v84) = v52;
      WORD6(v84) = WORD2(v52);
      v35 = ppStmt[0];
      LODWORD(v1) = BYTE6(v52);
      if (one-time initialization token for SQLITE_TRANSIENT != -1)
      {
        v82 = ppStmt[0];
        swift_once();
        v35 = v82;
      }

      v54 = &v84;
      goto LABEL_149;
    }

    goto LABEL_133;
  }

  if (v53 != 2)
  {
    goto LABEL_143;
  }

  v55 = *(v51 + 16);
  v56 = *(v51 + 24);
  v9 = __DataStorage._bytes.getter();
  if (v9)
  {
    v57 = __DataStorage._offset.getter();
    if (__OFSUB__(v55, v57))
    {
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
      goto LABEL_186;
    }

    v9 += v55 - v57;
  }

  v28 = __OFSUB__(v56, v55);
  v58 = v56 - v55;
  if (v28)
  {
    __break(1u);
LABEL_182:
    __break(1u);
    goto LABEL_183;
  }

  v35 = MEMORY[0x2667557A0]();
  if (v35 >= v58)
  {
    v59 = v58;
  }

  else
  {
    v59 = v35;
  }

  if (v9)
  {
    v1 = v59;
  }

  else
  {
    v1 = 0;
  }

  if (v1 < 0xFFFFFFFF80000000)
  {
    goto LABEL_182;
  }

  v51 = 0x7FFFFFFFLL;
  if (v1 <= 0x7FFFFFFF)
  {
    goto LABEL_147;
  }

  __break(1u);
LABEL_133:
  v60 = v51;
  v61 = v51 >> 32;
  v62 = v61 - v60;
  if (v61 < v60)
  {
    __break(1u);
    goto LABEL_180;
  }

  v9 = __DataStorage._bytes.getter();
  if (v9)
  {
    v63 = __DataStorage._offset.getter();
    if (!__OFSUB__(v60, v63))
    {
      v9 += v60 - v63;
      goto LABEL_137;
    }

    goto LABEL_185;
  }

LABEL_137:
  result = MEMORY[0x2667557A0]();
  if (result >= v62)
  {
    v1 = v62;
  }

  else
  {
    v1 = result;
  }

  if (!v9)
  {
    LODWORD(v1) = 0;
    goto LABEL_147;
  }

  if (v1 >= 0xFFFFFFFF80000000)
  {
    if (v1 > 0x7FFFFFFF)
    {
      __break(1u);
      return result;
    }

LABEL_147:
    v35 = ppStmt[0];
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_148:
      v54 = v9;
LABEL_149:
      v65 = v1;
      goto LABEL_150;
    }

LABEL_178:
    v81 = v35;
    swift_once();
    v35 = v81;
    goto LABEL_148;
  }

  __break(1u);
LABEL_143:
  *(&v84 + 6) = 0;
  *&v84 = 0;
  v35 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_180:
    v83 = v35;
    swift_once();
    v35 = v83;
  }

  v54 = &v84;
  v65 = 0;
LABEL_150:
  if (sqlite3_bind_blob(v35, 4, v54, v65, v10))
  {
    goto LABEL_151;
  }

  return ppStmt[0];
}

sqlite3_stmt *IncomingEventModel.updateStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v4 = strdup("UPDATE Incoming_Event_Table SET\n    incoming_event_data = ?\nWHERE\n    client_id = ? AND group_id = ? AND event_identifier = ?;");
  if (!v4)
  {
LABEL_186:
    __break(1u);
  }

  v5 = sqlite3_prepare_v2(a1, v4, -1, ppStmt, 0);
  if (v5)
  {
LABEL_151:
    *&v84 = 0x726F7272456C7173;
    *(&v84 + 1) = 0xE90000000000003ALL;
    v66 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v66);

    v67 = v84;
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v68 = 0;
    *(v68 + 8) = v67;
    return swift_willThrow();
  }

  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v8)
    {
      *&v84 = *(v1 + 32);
      DWORD2(v84) = v7;
      WORD6(v84) = WORD2(v7);
      v5 = ppStmt[0];
      LODWORD(v9) = BYTE6(v7);
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_6:
        v10 = SQLITE_TRANSIENT;
        v11 = &v84;
        LODWORD(v12) = v9;
        goto LABEL_42;
      }

LABEL_154:
      v71 = v5;
      swift_once();
      v5 = v71;
      goto LABEL_6;
    }

    goto LABEL_20;
  }

  if (v8 != 2)
  {
    *(&v84 + 6) = 0;
    *&v84 = 0;
    v5 = ppStmt[0];
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_25:
      v10 = SQLITE_TRANSIENT;
      v11 = &v84;
      LODWORD(v12) = 0;
      goto LABEL_42;
    }

LABEL_156:
    v72 = v5;
    swift_once();
    v5 = v72;
    goto LABEL_25;
  }

  v13 = v1;
  v14 = *(v6 + 16);
  v15 = *(v6 + 24);
  v16 = __DataStorage._bytes.getter();
  if (v16)
  {
    v10 = v16;
    v1 = v7 & 0x3FFFFFFFFFFFFFFFLL;
    v5 = __DataStorage._offset.getter();
    if (__OFSUB__(v14, v5))
    {
      __break(1u);
      goto LABEL_160;
    }

    v9 = v10 + v14 - v5;
    v10 = (v15 - v14);
    if (!__OFSUB__(v15, v14))
    {
      goto LABEL_11;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v9 = 0;
  v10 = (v15 - v14);
  if (__OFSUB__(v15, v14))
  {
    goto LABEL_28;
  }

LABEL_11:
  v1 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  v5 = MEMORY[0x2667557A0]();
  if (v5 >= v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = v5;
  }

  if (v9)
  {
    v12 = v17;
  }

  else
  {
    v12 = 0;
  }

  if (v12 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_158;
  }

  v6 = 0x7FFFFFFFLL;
  if (v12 <= 0x7FFFFFFF)
  {
    goto LABEL_38;
  }

  __break(1u);
LABEL_20:
  v2 = v6;
  v18 = v6 >> 32;
  v14 = v18 - v2;
  if (v18 < v2)
  {
    __break(1u);
    goto LABEL_156;
  }

  v13 = v1;
  v19 = __DataStorage._bytes.getter();
  if (!v19)
  {
LABEL_29:
    v9 = 0;
    goto LABEL_30;
  }

  v10 = v19;
  v1 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  v5 = __DataStorage._offset.getter();
  if (__OFSUB__(v2, v5))
  {
LABEL_160:
    __break(1u);
    goto LABEL_161;
  }

  v9 = v10 + v2 - v5;
LABEL_30:
  v1 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  v5 = MEMORY[0x2667557A0]();
  if (v5 >= v14)
  {
    v12 = v14;
  }

  else
  {
    v12 = v5;
  }

  if (v9)
  {
    if (v12 < 0xFFFFFFFF80000000)
    {
      __break(1u);
      goto LABEL_154;
    }

    v1 = v13;
    if (v12 <= 0x7FFFFFFF)
    {
      goto LABEL_39;
    }

    __break(1u);
  }

  LODWORD(v12) = 0;
LABEL_38:
  v1 = v13;
LABEL_39:
  v5 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    v69 = ppStmt[0];
    v70 = v12;
    swift_once();
    v5 = v69;
    LODWORD(v12) = v70;
  }

  v10 = SQLITE_TRANSIENT;
  v11 = v9;
LABEL_42:
  v5 = sqlite3_bind_blob(v5, 1, v11, v12, v10);
  if (v5)
  {
    goto LABEL_151;
  }

  v20 = *v1;
  v21 = *(v1 + 8);
  v22 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    if (v22 != 2)
    {
      goto LABEL_71;
    }

    v24 = v1;
    v25 = *(v20 + 16);
    v26 = *(v20 + 24);
    v1 = v21 & 0x3FFFFFFFFFFFFFFFLL;
    v27 = __DataStorage._bytes.getter();
    v9 = v27;
    if (v27)
    {
      v1 = v21 & 0x3FFFFFFFFFFFFFFFLL;
      v27 = __DataStorage._offset.getter();
      if (__OFSUB__(v25, v27))
      {
LABEL_167:
        __break(1u);
        goto LABEL_168;
      }

      v9 += v25 - v27;
    }

    v28 = __OFSUB__(v26, v25);
    v29 = v26 - v25;
    if (v28)
    {
      __break(1u);
    }

    else
    {
      v1 = v21 & 0x3FFFFFFFFFFFFFFFLL;
      v27 = MEMORY[0x2667557A0]();
      if (v27 >= v29)
      {
        v30 = v29;
      }

      else
      {
        v30 = v27;
      }

      if (v9)
      {
        v12 = v30;
      }

      else
      {
        v12 = 0;
      }

      if (v12 >= 0xFFFFFFFF80000000)
      {
        if (v12 <= 0x7FFFFFFF)
        {
          v1 = v24;
          goto LABEL_75;
        }

        goto LABEL_166;
      }
    }

    __break(1u);
LABEL_166:
    __break(1u);
    goto LABEL_167;
  }

  if (!v22)
  {
    *&v84 = *v1;
    DWORD2(v84) = v21;
    WORD6(v84) = WORD2(v21);
    v5 = ppStmt[0];
    LODWORD(v2) = BYTE6(v21);
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_46:
      v23 = &v84;
      LODWORD(v12) = v2;
      goto LABEL_77;
    }

LABEL_161:
    v75 = v5;
    swift_once();
    v5 = v75;
    goto LABEL_46;
  }

  v31 = v20;
  v32 = v20 >> 32;
  v33 = v32 - v31;
  if (v32 < v31)
  {
    __break(1u);
    goto LABEL_163;
  }

  v34 = v1;
  v9 = __DataStorage._bytes.getter();
  if (v9)
  {
    v1 = v21 & 0x3FFFFFFFFFFFFFFFLL;
    v27 = __DataStorage._offset.getter();
    if (!__OFSUB__(v31, v27))
    {
      v9 += v31 - v27;
      goto LABEL_65;
    }

LABEL_168:
    __break(1u);
    goto LABEL_169;
  }

LABEL_65:
  v1 = v21 & 0x3FFFFFFFFFFFFFFFLL;
  v35 = MEMORY[0x2667557A0]();
  if (v35 >= v33)
  {
    v12 = v33;
  }

  else
  {
    v12 = v35;
  }

  if (v9)
  {
    if (v12 < 0xFFFFFFFF80000000)
    {
      __break(1u);
LABEL_71:
      *(&v84 + 6) = 0;
      *&v84 = 0;
      v5 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_72:
        v23 = &v84;
        LODWORD(v12) = 0;
        goto LABEL_77;
      }

LABEL_163:
      v76 = v5;
      swift_once();
      v5 = v76;
      goto LABEL_72;
    }

    v1 = v34;
    if (v12 > 0x7FFFFFFF)
    {
LABEL_175:
      __break(1u);
      goto LABEL_176;
    }
  }

  else
  {
    LODWORD(v12) = 0;
    v1 = v34;
  }

LABEL_75:
  v5 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_158:
    v73 = v5;
    v74 = v12;
    swift_once();
    v5 = v73;
    LODWORD(v12) = v74;
  }

  v23 = v9;
LABEL_77:
  v27 = sqlite3_bind_blob(v5, 2, v23, v12, v10);
  if (v27)
  {
    goto LABEL_151;
  }

  v36 = *(v1 + 16);
  v37 = *(v1 + 24);
  v38 = v37 >> 62;
  if ((v37 >> 62) > 1)
  {
    if (v38 != 2)
    {
      goto LABEL_107;
    }

    v41 = v1;
    v42 = *(v36 + 16);
    v43 = *(v36 + 24);
    LODWORD(v1) = *(v1 + 24);
    v35 = __DataStorage._bytes.getter();
    v9 = v35;
    if (v35)
    {
      LODWORD(v1) = v37;
      v35 = __DataStorage._offset.getter();
      if (__OFSUB__(v42, v35))
      {
LABEL_176:
        __break(1u);
        goto LABEL_177;
      }

      v9 += v42 - v35;
    }

    v28 = __OFSUB__(v43, v42);
    v44 = v43 - v42;
    if (v28)
    {
      __break(1u);
    }

    else
    {
      LODWORD(v1) = v37;
      v35 = MEMORY[0x2667557A0]();
      if (v35 >= v44)
      {
        v45 = v44;
      }

      else
      {
        v45 = v35;
      }

      if (v9)
      {
        v12 = v45;
      }

      else
      {
        v12 = 0;
      }

      if (v12 >= 0xFFFFFFFF80000000)
      {
        if (v12 <= 0x7FFFFFFF)
        {
          v1 = v41;
          goto LABEL_111;
        }

        goto LABEL_174;
      }
    }

    __break(1u);
LABEL_174:
    __break(1u);
    goto LABEL_175;
  }

  if (v38)
  {
    v46 = v36;
    v47 = v36 >> 32;
    v48 = v47 - v46;
    if (v47 < v46)
    {
      __break(1u);
      goto LABEL_171;
    }

    v49 = v1;
    v9 = __DataStorage._bytes.getter();
    if (!v9)
    {
LABEL_101:
      v1 = v37 & 0x3FFFFFFFFFFFFFFFLL;
      v50 = MEMORY[0x2667557A0]();
      if (v50 >= v48)
      {
        v12 = v48;
      }

      else
      {
        v12 = v50;
      }

      if (v9)
      {
        if (v12 < 0xFFFFFFFF80000000)
        {
          __break(1u);
LABEL_107:
          *(&v84 + 6) = 0;
          *&v84 = 0;
          v27 = ppStmt[0];
          if (one-time initialization token for SQLITE_TRANSIENT == -1)
          {
LABEL_108:
            v40 = &v84;
            LODWORD(v12) = 0;
            goto LABEL_113;
          }

LABEL_171:
          v80 = v27;
          swift_once();
          v27 = v80;
          goto LABEL_108;
        }

        v1 = v49;
        if (v12 > 0x7FFFFFFF)
        {
LABEL_183:
          __break(1u);
          goto LABEL_184;
        }
      }

      else
      {
        LODWORD(v12) = 0;
        v1 = v49;
      }

LABEL_111:
      v27 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_112:
        v40 = v9;
        goto LABEL_113;
      }

LABEL_169:
      v77 = v27;
      v78 = v12;
      swift_once();
      v27 = v77;
      LODWORD(v12) = v78;
      goto LABEL_112;
    }

    LODWORD(v1) = v37;
    v35 = __DataStorage._offset.getter();
    if (!__OFSUB__(v46, v35))
    {
      v9 += v46 - v35;
      goto LABEL_101;
    }

LABEL_177:
    __break(1u);
    goto LABEL_178;
  }

  *&v84 = *(v1 + 16);
  DWORD2(v84) = v37;
  WORD6(v84) = WORD2(v37);
  v27 = ppStmt[0];
  v39 = BYTE6(v37);
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    v79 = ppStmt[0];
    swift_once();
    v27 = v79;
  }

  v40 = &v84;
  LODWORD(v12) = v39;
LABEL_113:
  v35 = sqlite3_bind_blob(v27, 3, v40, v12, v10);
  if (v35)
  {
    goto LABEL_151;
  }

  v51 = *(v1 + 48);
  v52 = *(v1 + 56);
  v53 = v52 >> 62;
  if ((v52 >> 62) <= 1)
  {
    if (!v53)
    {
      *&v84 = *(v1 + 48);
      DWORD2(v84) = v52;
      WORD6(v84) = WORD2(v52);
      v35 = ppStmt[0];
      LODWORD(v1) = BYTE6(v52);
      if (one-time initialization token for SQLITE_TRANSIENT != -1)
      {
        v82 = ppStmt[0];
        swift_once();
        v35 = v82;
      }

      v54 = &v84;
      goto LABEL_149;
    }

    goto LABEL_133;
  }

  if (v53 != 2)
  {
    goto LABEL_143;
  }

  v55 = *(v51 + 16);
  v56 = *(v51 + 24);
  v9 = __DataStorage._bytes.getter();
  if (v9)
  {
    v57 = __DataStorage._offset.getter();
    if (__OFSUB__(v55, v57))
    {
LABEL_184:
      __break(1u);
LABEL_185:
      __break(1u);
      goto LABEL_186;
    }

    v9 += v55 - v57;
  }

  v28 = __OFSUB__(v56, v55);
  v58 = v56 - v55;
  if (v28)
  {
    __break(1u);
LABEL_182:
    __break(1u);
    goto LABEL_183;
  }

  v35 = MEMORY[0x2667557A0]();
  if (v35 >= v58)
  {
    v59 = v58;
  }

  else
  {
    v59 = v35;
  }

  if (v9)
  {
    v1 = v59;
  }

  else
  {
    v1 = 0;
  }

  if (v1 < 0xFFFFFFFF80000000)
  {
    goto LABEL_182;
  }

  v51 = 0x7FFFFFFFLL;
  if (v1 <= 0x7FFFFFFF)
  {
    goto LABEL_147;
  }

  __break(1u);
LABEL_133:
  v60 = v51;
  v61 = v51 >> 32;
  v62 = v61 - v60;
  if (v61 < v60)
  {
    __break(1u);
    goto LABEL_180;
  }

  v9 = __DataStorage._bytes.getter();
  if (v9)
  {
    v63 = __DataStorage._offset.getter();
    if (!__OFSUB__(v60, v63))
    {
      v9 += v60 - v63;
      goto LABEL_137;
    }

    goto LABEL_185;
  }

LABEL_137:
  result = MEMORY[0x2667557A0]();
  if (result >= v62)
  {
    v1 = v62;
  }

  else
  {
    v1 = result;
  }

  if (!v9)
  {
    LODWORD(v1) = 0;
    goto LABEL_147;
  }

  if (v1 >= 0xFFFFFFFF80000000)
  {
    if (v1 > 0x7FFFFFFF)
    {
      __break(1u);
      return result;
    }

LABEL_147:
    v35 = ppStmt[0];
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_148:
      v54 = v9;
LABEL_149:
      v65 = v1;
      goto LABEL_150;
    }

LABEL_178:
    v81 = v35;
    swift_once();
    v35 = v81;
    goto LABEL_148;
  }

  __break(1u);
LABEL_143:
  *(&v84 + 6) = 0;
  *&v84 = 0;
  v35 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_180:
    v83 = v35;
    swift_once();
    v35 = v83;
  }

  v54 = &v84;
  v65 = 0;
LABEL_150:
  if (sqlite3_bind_blob(v35, 4, v54, v65, v10))
  {
    goto LABEL_151;
  }

  return ppStmt[0];
}

sqlite3_stmt *IncomingEventModel.deleteStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v4 = strdup("DELETE FROM Incoming_Event_Table WHERE client_id = ? AND group_id = ? AND event_identifier = ?;");
  if (!v4)
  {
LABEL_142:
    __break(1u);
  }

  v5 = sqlite3_prepare_v2(a1, v4, -1, ppStmt, 0);
  if (v5)
  {
LABEL_115:
    *&v66 = 0x726F7272456C7173;
    *(&v66 + 1) = 0xE90000000000003ALL;
    v51 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v51);

    v52 = v66;
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v53 = 0;
    *(v53 + 8) = v52;
    return swift_willThrow();
  }

  v6 = *v1;
  v7 = *(v1 + 8);
  v8 = v7 >> 62;
  if ((v7 >> 62) <= 1)
  {
    if (!v8)
    {
      *&v66 = *v1;
      DWORD2(v66) = v7;
      WORD6(v66) = WORD2(v7);
      v5 = ppStmt[0];
      LODWORD(v9) = BYTE6(v7);
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_6:
        v10 = SQLITE_TRANSIENT;
        v11 = &v66;
        LODWORD(v12) = v9;
        goto LABEL_42;
      }

LABEL_118:
      v57 = v5;
      swift_once();
      v5 = v57;
      goto LABEL_6;
    }

    goto LABEL_20;
  }

  if (v8 != 2)
  {
    *(&v66 + 6) = 0;
    *&v66 = 0;
    v5 = ppStmt[0];
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_25:
      v10 = SQLITE_TRANSIENT;
      v11 = &v66;
      LODWORD(v12) = 0;
      goto LABEL_42;
    }

LABEL_120:
    v58 = v5;
    swift_once();
    v5 = v58;
    goto LABEL_25;
  }

  v13 = v1;
  v14 = *(v6 + 16);
  v15 = *(v6 + 24);
  v16 = __DataStorage._bytes.getter();
  if (v16)
  {
    v10 = v16;
    v1 = v7 & 0x3FFFFFFFFFFFFFFFLL;
    v5 = __DataStorage._offset.getter();
    if (__OFSUB__(v14, v5))
    {
      __break(1u);
      goto LABEL_124;
    }

    v9 = v10 + v14 - v5;
    v10 = (v15 - v14);
    if (!__OFSUB__(v15, v14))
    {
      goto LABEL_11;
    }

LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  v9 = 0;
  v10 = (v15 - v14);
  if (__OFSUB__(v15, v14))
  {
    goto LABEL_28;
  }

LABEL_11:
  v1 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  v5 = MEMORY[0x2667557A0]();
  if (v5 >= v10)
  {
    v17 = v10;
  }

  else
  {
    v17 = v5;
  }

  if (v9)
  {
    v12 = v17;
  }

  else
  {
    v12 = 0;
  }

  if (v12 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_122;
  }

  v6 = 0x7FFFFFFFLL;
  if (v12 <= 0x7FFFFFFF)
  {
    goto LABEL_38;
  }

  __break(1u);
LABEL_20:
  v2 = v6;
  v18 = v6 >> 32;
  v14 = v18 - v2;
  if (v18 < v2)
  {
    __break(1u);
    goto LABEL_120;
  }

  v13 = v1;
  v19 = __DataStorage._bytes.getter();
  if (!v19)
  {
LABEL_29:
    v9 = 0;
    goto LABEL_30;
  }

  v10 = v19;
  v1 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  v5 = __DataStorage._offset.getter();
  if (__OFSUB__(v2, v5))
  {
LABEL_124:
    __break(1u);
    goto LABEL_125;
  }

  v9 = v10 + v2 - v5;
LABEL_30:
  v1 = v7 & 0x3FFFFFFFFFFFFFFFLL;
  v5 = MEMORY[0x2667557A0]();
  if (v5 >= v14)
  {
    v12 = v14;
  }

  else
  {
    v12 = v5;
  }

  if (v9)
  {
    if (v12 < 0xFFFFFFFF80000000)
    {
      __break(1u);
      goto LABEL_118;
    }

    v1 = v13;
    if (v12 <= 0x7FFFFFFF)
    {
      goto LABEL_39;
    }

    __break(1u);
  }

  LODWORD(v12) = 0;
LABEL_38:
  v1 = v13;
LABEL_39:
  v5 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    v55 = ppStmt[0];
    v56 = v12;
    swift_once();
    v5 = v55;
    LODWORD(v12) = v56;
  }

  v10 = SQLITE_TRANSIENT;
  v11 = v9;
LABEL_42:
  v5 = sqlite3_bind_blob(v5, 1, v11, v12, v10);
  if (v5)
  {
    goto LABEL_115;
  }

  v20 = *(v1 + 16);
  v21 = *(v1 + 24);
  v22 = v21 >> 62;
  if ((v21 >> 62) > 1)
  {
    if (v22 != 2)
    {
      goto LABEL_71;
    }

    v24 = v1;
    v25 = *(v20 + 16);
    v26 = *(v20 + 24);
    LODWORD(v1) = *(v1 + 24);
    v27 = __DataStorage._bytes.getter();
    v9 = v27;
    if (v27)
    {
      LODWORD(v1) = v21;
      v27 = __DataStorage._offset.getter();
      if (__OFSUB__(v25, v27))
      {
LABEL_131:
        __break(1u);
        goto LABEL_132;
      }

      v9 += v25 - v27;
    }

    v28 = __OFSUB__(v26, v25);
    v29 = v26 - v25;
    if (v28)
    {
      __break(1u);
    }

    else
    {
      LODWORD(v1) = v21;
      v27 = MEMORY[0x2667557A0]();
      if (v27 >= v29)
      {
        v30 = v29;
      }

      else
      {
        v30 = v27;
      }

      if (v9)
      {
        v12 = v30;
      }

      else
      {
        v12 = 0;
      }

      if (v12 >= 0xFFFFFFFF80000000)
      {
        if (v12 <= 0x7FFFFFFF)
        {
          v1 = v24;
          goto LABEL_75;
        }

        goto LABEL_130;
      }
    }

    __break(1u);
LABEL_130:
    __break(1u);
    goto LABEL_131;
  }

  if (!v22)
  {
    *&v66 = *(v1 + 16);
    DWORD2(v66) = v21;
    WORD6(v66) = WORD2(v21);
    v5 = ppStmt[0];
    LODWORD(v2) = BYTE6(v21);
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_46:
      v23 = &v66;
      LODWORD(v12) = v2;
      goto LABEL_77;
    }

LABEL_125:
    v61 = v5;
    swift_once();
    v5 = v61;
    goto LABEL_46;
  }

  v31 = v20;
  v32 = v20 >> 32;
  v33 = v32 - v31;
  if (v32 < v31)
  {
    __break(1u);
    goto LABEL_127;
  }

  v34 = v1;
  v9 = __DataStorage._bytes.getter();
  if (v9)
  {
    LODWORD(v1) = v21;
    v27 = __DataStorage._offset.getter();
    if (!__OFSUB__(v31, v27))
    {
      v9 += v31 - v27;
      goto LABEL_65;
    }

LABEL_132:
    __break(1u);
    goto LABEL_133;
  }

LABEL_65:
  v1 = v21 & 0x3FFFFFFFFFFFFFFFLL;
  v35 = MEMORY[0x2667557A0]();
  if (v35 >= v33)
  {
    v12 = v33;
  }

  else
  {
    v12 = v35;
  }

  if (v9)
  {
    if (v12 < 0xFFFFFFFF80000000)
    {
      __break(1u);
LABEL_71:
      *(&v66 + 6) = 0;
      *&v66 = 0;
      v5 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_72:
        v23 = &v66;
        LODWORD(v12) = 0;
        goto LABEL_77;
      }

LABEL_127:
      v62 = v5;
      swift_once();
      v5 = v62;
      goto LABEL_72;
    }

    v1 = v34;
    if (v12 > 0x7FFFFFFF)
    {
LABEL_138:
      __break(1u);
      goto LABEL_139;
    }
  }

  else
  {
    LODWORD(v12) = 0;
    v1 = v34;
  }

LABEL_75:
  v5 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_122:
    v59 = v5;
    v60 = v12;
    swift_once();
    v5 = v59;
    LODWORD(v12) = v60;
  }

  v23 = v9;
LABEL_77:
  v27 = sqlite3_bind_blob(v5, 2, v23, v12, v10);
  if (v27)
  {
    goto LABEL_115;
  }

  v36 = *(v1 + 48);
  v37 = *(v1 + 56);
  v38 = v37 >> 62;
  if ((v37 >> 62) <= 1)
  {
    if (!v38)
    {
      *&v66 = *(v1 + 48);
      DWORD2(v66) = v37;
      WORD6(v66) = WORD2(v37);
      v27 = ppStmt[0];
      LODWORD(v1) = BYTE6(v37);
      if (one-time initialization token for SQLITE_TRANSIENT != -1)
      {
        v64 = ppStmt[0];
        swift_once();
        v27 = v64;
      }

      v39 = &v66;
      goto LABEL_113;
    }

    goto LABEL_97;
  }

  if (v38 != 2)
  {
    goto LABEL_107;
  }

  v40 = *(v36 + 16);
  v41 = *(v36 + 24);
  v9 = __DataStorage._bytes.getter();
  if (v9)
  {
    v42 = __DataStorage._offset.getter();
    if (__OFSUB__(v40, v42))
    {
LABEL_139:
      __break(1u);
      goto LABEL_140;
    }

    v9 += v40 - v42;
  }

  v28 = __OFSUB__(v41, v40);
  v43 = v41 - v40;
  if (v28)
  {
    __break(1u);
LABEL_137:
    __break(1u);
    goto LABEL_138;
  }

  v27 = MEMORY[0x2667557A0]();
  if (v27 >= v43)
  {
    v44 = v43;
  }

  else
  {
    v44 = v27;
  }

  if (v9)
  {
    v1 = v44;
  }

  else
  {
    v1 = 0;
  }

  if (v1 < 0xFFFFFFFF80000000)
  {
    goto LABEL_137;
  }

  v36 = 0x7FFFFFFFLL;
  if (v1 <= 0x7FFFFFFF)
  {
    goto LABEL_111;
  }

  __break(1u);
LABEL_97:
  v45 = v36;
  v46 = v36 >> 32;
  v47 = v46 - v45;
  if (v46 < v45)
  {
    __break(1u);
    goto LABEL_135;
  }

  v9 = __DataStorage._bytes.getter();
  if (v9)
  {
    v48 = __DataStorage._offset.getter();
    if (!__OFSUB__(v45, v48))
    {
      v9 += v45 - v48;
      goto LABEL_101;
    }

LABEL_140:
    __break(1u);
LABEL_141:
    __break(1u);
    goto LABEL_142;
  }

LABEL_101:
  v49 = MEMORY[0x2667557A0]();
  if (v49 >= v47)
  {
    v1 = v47;
  }

  else
  {
    v1 = v49;
  }

  if (!v9)
  {
    LODWORD(v1) = 0;
    goto LABEL_111;
  }

  if (v1 < 0xFFFFFFFF80000000)
  {
    __break(1u);
LABEL_107:
    *(&v66 + 6) = 0;
    *&v66 = 0;
    v27 = ppStmt[0];
    if (one-time initialization token for SQLITE_TRANSIENT == -1)
    {
LABEL_108:
      v39 = &v66;
      v50 = 0;
      goto LABEL_114;
    }

LABEL_135:
    v65 = v27;
    swift_once();
    v27 = v65;
    goto LABEL_108;
  }

  if (v1 > 0x7FFFFFFF)
  {
    goto LABEL_141;
  }

LABEL_111:
  v27 = ppStmt[0];
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_133:
    v63 = v27;
    swift_once();
    v27 = v63;
  }

  v39 = v9;
LABEL_113:
  v50 = v1;
LABEL_114:
  if (sqlite3_bind_blob(v27, 3, v39, v50, v10))
  {
    goto LABEL_115;
  }

  return ppStmt[0];
}

unint64_t closure #1 in variable initialization expression of static IncomingEventModel.converter@<X0>(sqlite3_stmt *a1@<X0>, unint64_t *a2@<X8>)
{
  if (sqlite3_column_type(a1, 1) == 5)
  {
    goto LABEL_12;
  }

  v4 = sqlite3_column_blob(a1, 1);
  if (!v4)
  {
    goto LABEL_12;
  }

  v5 = v4;
  v6 = sqlite3_column_bytes(a1, 1);
  v7 = specialized Data.init(bytes:count:)(v5, v6);
  v9 = v8;
  if (sqlite3_column_type(a1, 2) == 5 || (v10 = sqlite3_column_blob(a1, 2)) == 0)
  {
    v22 = v7;
    v23 = v9;
    goto LABEL_11;
  }

  v11 = v10;
  v12 = sqlite3_column_bytes(a1, 2);
  v13 = specialized Data.init(bytes:count:)(v11, v12);
  v15 = v14;
  if (sqlite3_column_type(a1, 3) == 5 || (v16 = sqlite3_column_blob(a1, 3)) == 0)
  {
    outlined consume of Data._Representation(v7, v9);
    v22 = v13;
    v23 = v15;
    goto LABEL_11;
  }

  v17 = v16;
  v18 = sqlite3_column_bytes(a1, 3);
  v19 = specialized Data.init(bytes:count:)(v17, v18);
  v21 = v20;
  if (sqlite3_column_type(a1, 4) == 5 || (v30 = v21, (v26 = sqlite3_column_blob(a1, 4)) == 0))
  {
    outlined consume of Data._Representation(v7, v9);
    outlined consume of Data._Representation(v13, v15);
    v22 = v19;
    v23 = v21;
LABEL_11:
    outlined consume of Data._Representation(v22, v23);
LABEL_12:
    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v24 = 3;
    *(v24 + 8) = 0;
    *(v24 + 16) = 0;
    return swift_willThrow();
  }

  v27 = v26;
  v28 = sqlite3_column_bytes(a1, 4);
  result = specialized Data.init(bytes:count:)(v27, v28);
  *a2 = v7;
  a2[1] = v9;
  a2[2] = v13;
  a2[3] = v15;
  a2[4] = v19;
  a2[5] = v30;
  a2[6] = result;
  a2[7] = v29;
  return result;
}

uint64_t (*protocol witness for static SqlSchema.converter.getter in conformance IncomingEventModel())()
{
  swift_beginAccess();
  v1 = static IncomingEventModel.converter[0];
  v0 = qword_281EF81C0;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned SecureMessagingGroupModel?, @error @owned Error)partial apply;
}

uint64_t *IncomingEventQuery.converter.unsafeMutableAddressor()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  return &static IncomingEventQuery.converter;
}

uint64_t static IncomingEventQuery.converter.getter()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static IncomingEventQuery.converter;

  return v0;
}

uint64_t static IncomingEventQuery.converter.setter(uint64_t a1, uint64_t a2)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static IncomingEventQuery.converter = a1;
  qword_280016860 = a2;
}

uint64_t (*static IncomingEventQuery.converter.modify(uint64_t a1))()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return static StateMachineQuery.converter.modify;
}

uint64_t key path getter for static IncomingEventQuery.converter : IncomingEventQuery.Type@<X0>(uint64_t (**a1)()@<X8>)
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v3 = static IncomingEventQuery.converter;
  v2 = qword_280016860;
  v4 = swift_allocObject();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  *a1 = partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned SecureMessagingGroupModel?, @error @owned Error);
  a1[1] = v4;
}

uint64_t key path setter for static IncomingEventQuery.converter : IncomingEventQuery.Type(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = one-time initialization token for converter;

  if (v4 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  static IncomingEventQuery.converter = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed OpaquePointer) -> (@out SecureMessagingGroupModel?, @error @owned Error);
  qword_280016860 = v3;
}

sqlite3_stmt *IncomingEventQuery.queryStatement(_:)(sqlite3 *a1, uint64_t a2, unint64_t a3)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v6 = strdup("SELECT * FROM Incoming_Event_Table WHERE client_id = ? ORDER BY id ASC;");
  if (!v6)
  {
LABEL_49:
    __break(1u);
  }

  v7 = sqlite3_prepare_v2(a1, v6, -1, ppStmt, 0);
  if (v7)
  {
    goto LABEL_40;
  }

  v8 = a3 >> 62;
  if ((a3 >> 62) <= 1)
  {
    if (!v8)
    {
      *&v27 = a2;
      WORD4(v27) = a3;
      BYTE10(v27) = BYTE2(a3);
      BYTE11(v27) = BYTE3(a3);
      BYTE12(v27) = BYTE4(a3);
      BYTE13(v27) = BYTE5(a3);
      v9 = ppStmt[0];
      LODWORD(a2) = BYTE6(a3);
      if (one-time initialization token for SQLITE_TRANSIENT == -1)
      {
LABEL_6:
        v10 = SQLITE_TRANSIENT;
        v11 = &v27;
        goto LABEL_39;
      }

LABEL_42:
      v25 = v9;
      swift_once();
      v9 = v25;
      goto LABEL_6;
    }

    goto LABEL_21;
  }

  if (v8 != 2)
  {
    goto LABEL_32;
  }

  v12 = *(a2 + 16);
  v13 = *(a2 + 24);
  v14 = __DataStorage._bytes.getter();
  if (v14)
  {
    v15 = __DataStorage._offset.getter();
    if (__OFSUB__(v12, v15))
    {
LABEL_47:
      __break(1u);
LABEL_48:
      __break(1u);
      goto LABEL_49;
    }

    v14 += v12 - v15;
  }

  v16 = __OFSUB__(v13, v12);
  v17 = v13 - v12;
  if (v16)
  {
    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  v7 = MEMORY[0x2667557A0]();
  if (v7 >= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v7;
  }

  if (v14)
  {
    a2 = v18;
  }

  else
  {
    a2 = 0;
  }

  if (a2 < 0xFFFFFFFF80000000)
  {
    goto LABEL_46;
  }

  if (a2 <= 0x7FFFFFFF)
  {
    goto LABEL_36;
  }

  __break(1u);
LABEL_21:
  if (a2 >> 32 >= a2)
  {
    v14 = __DataStorage._bytes.getter();
    if (!v14)
    {
      goto LABEL_25;
    }

    v19 = __DataStorage._offset.getter();
    if (!__OFSUB__(a2, v19))
    {
      v14 += a2 - v19;
LABEL_25:
      v9 = MEMORY[0x2667557A0]();
      if (v9 >= (a2 >> 32) - a2)
      {
        a2 = (a2 >> 32) - a2;
      }

      else
      {
        a2 = v9;
      }

      if (v14)
      {
        if (a2 < 0xFFFFFFFF80000000)
        {
          __break(1u);
          goto LABEL_42;
        }

        if (a2 > 0x7FFFFFFF)
        {
          __break(1u);
LABEL_32:
          *(&v27 + 6) = 0;
          *&v27 = 0;
          v7 = ppStmt[0];
          if (one-time initialization token for SQLITE_TRANSIENT == -1)
          {
            goto LABEL_33;
          }

          goto LABEL_44;
        }
      }

      else
      {
        LODWORD(a2) = 0;
      }

LABEL_36:
      v9 = ppStmt[0];
      if (one-time initialization token for SQLITE_TRANSIENT != -1)
      {
        v24 = ppStmt[0];
        swift_once();
        v9 = v24;
      }

      v10 = SQLITE_TRANSIENT;
      v11 = v14;
LABEL_39:
      if (sqlite3_bind_blob(v9, 1, v11, a2, v10))
      {
        goto LABEL_40;
      }

      return ppStmt[0];
    }

    goto LABEL_48;
  }

  __break(1u);
LABEL_44:
  v26 = v7;
  swift_once();
  v7 = v26;
LABEL_33:
  if (!sqlite3_bind_blob(v7, 1, &v27, 0, SQLITE_TRANSIENT))
  {
    return ppStmt[0];
  }

LABEL_40:
  *&v27 = 0x726F7272456C7173;
  *(&v27 + 1) = 0xE90000000000003ALL;
  v21 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266756A70](v21);

  v22 = v27;
  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v23 = 0;
  *(v23 + 8) = v22;
  return swift_willThrow();
}

uint64_t (*protocol witness for static SqlQuery.converter.getter in conformance IncomingEventQuery())()
{
  if (one-time initialization token for converter != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v1 = static IncomingEventQuery.converter;
  v0 = qword_280016860;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return partial apply for thunk for @escaping @callee_guaranteed (@unowned OpaquePointer) -> (@owned SecureMessagingGroupModel?, @error @owned Error);
}

uint64_t (*protocol witness for static SqlQuery.converter.getter in conformance IncomingClientWithEventQuery())@<X0>(uint64_t *a1@<X8>)
{
  swift_beginAccess();
  v1 = static IncomingClientWithEventQuery.converter;
  v0 = qword_281EF81D0;
  v2 = swift_allocObject();
  *(v2 + 16) = v1;
  *(v2 + 24) = v0;

  return _ss13OpaquePointerV10Foundation4DataVSgs5Error_pIegyozo_AbFsAG_pIegyrzo_TRTA_0;
}

sqlite3_stmt *specialized static IncomingEventModel.createStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("CREATE TABLE IF NOT EXISTS Incoming_Event_Table (\n    id INTEGER PRIMARY KEY AUTOINCREMENT,\n    client_id BLOB NOT NULL,\n    group_id BLOB NOT NULL,\n    incoming_event_data BLOB NOT NULL,\n    event_identifier BLOB NOT NULL\n);");
  if (!v2)
  {
    __break(1u);
  }

  if (!sqlite3_prepare_v2(a1, v2, -1, ppStmt, 0))
  {
    return ppStmt[0];
  }

  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266756A70](v3);

  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0x726F7272456C7173;
  *(v4 + 16) = 0xE90000000000003ALL;
  return swift_willThrow();
}

uint64_t specialized static IncomingEventModel.createIndexStatements(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("CREATE INDEX IF NOT EXISTS Incoming_Event_Table_Event_ID_Index ON Incoming_Event_Table(event_identifier, group_id, client_id, id);");
  if (!v2)
  {
    __break(1u);
  }

  if (sqlite3_prepare_v2(a1, v2, -1, ppStmt, 0))
  {
    v3 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x266756A70](v3);

    lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
    swift_allocError();
    *v4 = 0;
    *(v4 + 8) = 0x726F7272456C7173;
    *(v4 + 16) = 0xE90000000000003ALL;
    return swift_willThrow();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys13OpaquePointerVSgGMd, &_ss23_ContiguousArrayStorageCys13OpaquePointerVSgGMR);
    result = swift_allocObject();
    *(result + 16) = xmmword_2653419E0;
    *(result + 32) = ppStmt[0];
  }

  return result;
}

sqlite3_stmt *specialized IncomingClientWithEventQuery.queryStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("SELECT DISTINCT client_id FROM Incoming_Event_Table;");
  if (!v2)
  {
    __break(1u);
  }

  if (!sqlite3_prepare_v2(a1, v2, -1, ppStmt, 0))
  {
    return ppStmt[0];
  }

  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266756A70](v3);

  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0x726F7272456C7173;
  *(v4 + 16) = 0xE90000000000003ALL;
  return swift_willThrow();
}

sqlite3_stmt *specialized static IncomingEventModel.dropStatement(_:)(sqlite3 *a1)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  v2 = strdup("DROP TABLE IF EXISTS Incoming_Event_Table");
  if (!v2)
  {
    __break(1u);
  }

  if (!sqlite3_prepare_v2(a1, v2, -1, ppStmt, 0))
  {
    return ppStmt[0];
  }

  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x266756A70](v3);

  lazy protocol witness table accessor for type SqliteError and conformance SqliteError();
  swift_allocError();
  *v4 = 0;
  *(v4 + 8) = 0x726F7272456C7173;
  *(v4 + 16) = 0xE90000000000003ALL;
  return swift_willThrow();
}

uint64_t getEnumTagSinglePayload for IncomingEventModel(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 64))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for IncomingEventModel(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t sub_2652C17A8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

void *_ss13OpaquePointerV10Foundation4DataVSgs5Error_pIegnrzo_AbFsAG_pIegyozo_TRTA_0(uint64_t a1)
{
  v3 = *(v1 + 16);
  v6 = a1;
  result = v3(&v5, &v6);
  if (!v2)
  {
    return v5;
  }

  return result;
}

uint64_t _ss13OpaquePointerV10Foundation4DataVSgs5Error_pIegyozo_AbFsAG_pIegnrzo_TRTA_0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  if (!v3)
  {
    *a2 = result;
    a2[1] = v6;
  }

  return result;
}

uint64_t _ss13OpaquePointerV10Foundation4DataVSgs5Error_pIegyozo_AbFsAG_pIegyrzo_TRTA_0@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t RegisterKeyPackageRequest.telURI.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RegisterKeyPackageRequest.keyPackage.getter()
{
  v1 = *(v0 + 16);
  outlined copy of Data._Representation(v1, *(v0 + 24));
  return v1;
}

uint64_t RegisterKeyPackageRequest.pnaToken.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t RegisterKeyPackageRequest.pnaType.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t RegisterKeyPackageRequest.pushTokenForTesting.getter()
{
  v1 = *(v0 + 64);
  outlined copy of Data?(v1, *(v0 + 72));
  return v1;
}

void RegisterKeyPackageRequest.pushTokenForTesting.setter(uint64_t a1, uint64_t a2)
{
  outlined consume of Data?(*(v2 + 64), *(v2 + 72));
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

void *RegisterKeyPackageRequest.toIDSMessage(with:)(uint64_t a1)
{
  v37 = a1;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMd, &_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMR);
  v2 = *(v38 - 8);
  v35 = *(v2 + 64);
  MEMORY[0x28223BE20](v38, v3);
  v36 = &v31 - v4;
  v5 = *v1;
  v6 = v1[1];
  v7 = v1[2];
  v8 = v1[3];
  v10 = v1[4];
  v9 = v1[5];
  v11 = v1[6];
  v12 = v1[7];
  v13 = v1[9];
  v33 = v1[8];
  v34 = v11;
  v32 = v13;
  v14 = type metadata accessor for RegisterKeyPackageRequestMessage();
  v15 = objc_allocWithZone(v14);
  *&v15[OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_pushTokenForTesting] = xmmword_2653419D0;
  v16 = &v15[OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_telURI];
  *v16 = v5;
  *(v16 + 1) = v6;
  v17 = &v15[OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_keyPackage];
  *v17 = v7;
  v17[1] = v8;
  v18 = &v15[OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_pnaToken];
  *v18 = v10;
  *(v18 + 1) = v9;
  v19 = &v15[OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_pnaType];
  *v19 = v34;
  *(v19 + 1) = v12;

  outlined copy of Data._Representation(v7, v8);
  v40.receiver = v15;
  v40.super_class = v14;
  v20 = objc_msgSendSuper2(&v40, sel_init);
  if (os_variant_has_internal_content())
  {
    v21 = *((*MEMORY[0x277D85000] & *v20) + 0x88);
    v23 = v32;
    v22 = v33;
    outlined copy of Data?(v33, v32);
    v21(v22, v23);
  }

  v24 = v36;
  v25 = v38;
  (*(v2 + 16))(v36, v37, v38);
  v26 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v27 = swift_allocObject();
  (*(v2 + 32))(v27 + v26, v24, v25);
  aBlock[4] = partial apply for closure #1 in RegisterKeyPackageRequest.toIDSMessage(with:);
  aBlock[5] = v27;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed (@guaranteed IDSBaseMessage?, @guaranteed Error?, @unowned Int, @guaranteed [AnyHashable : Any]?) -> ();
  aBlock[3] = &block_descriptor_5;
  v28 = _Block_copy(aBlock);
  v29 = v20;

  [v29 setCompletionBlock_];
  _Block_release(v28);

  return v29;
}

id RegisterKeyPackageRequestMessage.__allocating_init(telURI:keyPackage:pnaToken:pnaType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v17 = objc_allocWithZone(v8);
  *&v17[OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_pushTokenForTesting] = xmmword_2653419D0;
  v18 = &v17[OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_telURI];
  *v18 = a1;
  *(v18 + 1) = a2;
  v19 = &v17[OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_keyPackage];
  *v19 = a3;
  *(v19 + 1) = a4;
  v20 = &v17[OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_pnaToken];
  *v20 = a5;
  *(v20 + 1) = a6;
  v21 = &v17[OBJC_IVAR____TtC24SecureMessagingAgentCore32RegisterKeyPackageRequestMessage_pnaType];
  *v21 = a7;
  *(v21 + 1) = a8;
  v23.receiver = v17;
  v23.super_class = v8;
  return objc_msgSendSuper2(&v23, sel_init);
}

uint64_t closure #1 in RegisterKeyPackageRequest.toIDSMessage(with:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = type metadata accessor for LogCategory();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v11);
  v13 = v57 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Logger();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14, v16);
  v18 = v57 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v10 + 104))(v13, *MEMORY[0x277D4C900], v9);
  secureMessagingLogger(category:)();
  (*(v10 + 8))(v13, v9);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v58 = v14;
    v22 = v21;
    v23 = swift_slowAlloc();
    v57[0] = v15;
    v57[1] = a5;
    v24 = v23;
    v62[0] = v23;
    *v22 = 136315138;
    v61[0] = a4;

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDys11AnyHashableVypGSgMd, &_sSDys11AnyHashableVypGSgMR);
    v25 = String.init<A>(describing:)();
    v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v26, v62);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_26524C000, v19, v20, "resultDictionary: %s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v24);
    v28 = v24;
    v15 = v57[0];
    MEMORY[0x2667577B0](v28, -1, -1);
    v29 = v22;
    v14 = v58;
    MEMORY[0x2667577B0](v29, -1, -1);
  }

  switch(a3)
  {
    case 2:
      lazy protocol witness table accessor for type RequestManagerError and conformance RequestManagerError();
      v37 = swift_allocError();
      *v39 = 1;
LABEL_15:
      v62[0] = v37;
      goto LABEL_16;
    case 1:
      v34 = Logger.logObject.getter();
      v35 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = 0;
        _os_log_impl(&dword_26524C000, v34, v35, "Server told us not to retry.", v36, 2u);
        MEMORY[0x2667577B0](v36, -1, -1);
      }

      lazy protocol witness table accessor for type RequestManagerError and conformance RequestManagerError();
      v37 = swift_allocError();
      *v38 = 0;
      goto LABEL_15;
    case 0:
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_26524C000, v30, v31, "Got success.", v32, 2u);
        MEMORY[0x2667577B0](v32, -1, -1);
      }

      break;
  }

  if (!a2)
  {
    if (!a4)
    {
      v63 = &type metadata for RegisterKeyPackageResponse;
      v64 = &protocol witness table for RegisterKeyPackageResponse;
      v56 = swift_allocObject();
      v62[0] = v56;
      *(v56 + 16) = 0;
      *(v56 + 24) = 1;
      *(v56 + 32) = 0u;
      *(v56 + 48) = 0u;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMd, &_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMR);
      CheckedContinuation.resume(returning:)();
      return (*(v15 + 8))(v18, v14);
    }

    v59 = 0x737574617473;
    v60 = 0xE600000000000000;
    AnyHashable.init<A>(_:)();
    if (*(a4 + 16) && (v41 = specialized __RawDictionaryStorage.find<A>(_:)(v62), (v42 & 1) != 0))
    {
      v43 = v18;
      outlined init with copy of Any(*(a4 + 56) + 32 * v41, v61);
      outlined destroy of AnyHashable(v62);
      if (swift_dynamicCast())
      {
        v44 = 0;
        v45 = v59;
LABEL_26:
        v59 = 0x746E69682D7478;
        v60 = 0xE700000000000000;
        AnyHashable.init<A>(_:)();
        if (*(a4 + 16) && (v46 = specialized __RawDictionaryStorage.find<A>(_:)(v62), (v47 & 1) != 0))
        {
          v48 = a4;
          outlined init with copy of Any(*(a4 + 56) + 32 * v46, v61);
          outlined destroy of AnyHashable(v62);
          if (swift_dynamicCast())
          {
            v50 = v59;
            v49 = v60;
LABEL_32:
            v59 = 0x6567617373656DLL;
            v60 = 0xE700000000000000;
            AnyHashable.init<A>(_:)();
            if (*(v48 + 16) && (v51 = specialized __RawDictionaryStorage.find<A>(_:)(v62), (v52 & 1) != 0))
            {
              outlined init with copy of Any(*(v48 + 56) + 32 * v51, v61);
              outlined destroy of AnyHashable(v62);
              if (swift_dynamicCast())
              {
                v53 = v59;
                v54 = v60;
LABEL_38:
                v63 = &type metadata for RegisterKeyPackageResponse;
                v64 = &protocol witness table for RegisterKeyPackageResponse;
                v55 = swift_allocObject();
                v62[0] = v55;
                *(v55 + 16) = v45;
                *(v55 + 24) = v44;
                *(v55 + 32) = v50;
                *(v55 + 40) = v49;
                *(v55 + 48) = v53;
                *(v55 + 56) = v54;

                __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMd, &_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMR);
                CheckedContinuation.resume(returning:)();
                (*(v15 + 8))(v43, v14);
              }
            }

            else
            {
              outlined destroy of AnyHashable(v62);
            }

            v53 = 0;
            v54 = 0;
            goto LABEL_38;
          }
        }

        else
        {
          v48 = a4;
          outlined destroy of AnyHashable(v62);
        }

        v50 = 0;
        v49 = 0;
        goto LABEL_32;
      }
    }

    else
    {
      v43 = v18;
      outlined destroy of AnyHashable(v62);
    }

    v45 = 0;
    v44 = 1;
    goto LABEL_26;
  }

  v62[0] = a2;
  v33 = a2;
LABEL_16:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMd, &_sScCy24SecureMessagingAgentCore8Response_ps5Error_pGMR);
  CheckedContinuation.resume(throwing:)();
  return (*(v15 + 8))(v18, v14);
}