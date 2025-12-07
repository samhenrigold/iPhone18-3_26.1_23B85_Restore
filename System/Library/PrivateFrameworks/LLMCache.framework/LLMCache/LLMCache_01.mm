uint64_t specialized Array.remove(at:)(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = specialized _ArrayBuffer._consumeAndCreateNew()(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = v3 + 16 * a1;
    v8 = *(v7 + 32);
    memmove((v7 + 32), (v7 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for AnnotatedCacheEntry(0);
  v7 = *(*(result - 8) + 72);
  if (!v7)
  {
    __break(1u);
LABEL_17:
    __break(1u);
    return result;
  }

  if (v5 - v4 == 0x8000000000000000 && v7 == -1)
  {
    goto LABEL_17;
  }

  if (v3 < v4 || v3 >= v4 + (v5 - v4) / v7 * v7)
  {

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (v3 != v4)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
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

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
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
LABEL_30:
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

  if (!v9)
  {
    v13 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMd, &_ss23_ContiguousArrayStorageCy8LLMCache19AnnotatedCacheEntryVGMR);
  v10 = *(type metadata accessor for AnnotatedCacheEntry(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(type metadata accessor for AnnotatedCacheEntry(0) - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8LLMCache10CacheEntryVGMd, &_ss23_ContiguousArrayStorageCy8LLMCache10CacheEntryVGMR);
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
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[24 * v8])
    {
      memmove(v12, v13, 24 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t *closure #2 in Data.init<A>(_:)@<X0>(uint64_t *__return_ptr a1@<X8>, _BYTE *__src@<X0>, unint64_t a3@<X1>)
{
  result = 0;
  v6 = 0xC000000000000000;
  if (__src && a3)
  {
    if (a3 <= 14)
    {
      result = specialized Data.InlineData.init(_:)(__src, &__src[a3]);
      v6 = v9 & 0xFFFFFFFFFFFFFFLL;
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      v8 = __DataStorage.init(bytes:length:)();
      if (a3 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        result[2] = 0;
        result[3] = a3;
        v6 = v8 | 0x8000000000000000;
      }

      else
      {
        result = (a3 << 32);
        v6 = v8 | 0x4000000000000000;
      }
    }
  }

  *a1 = result;
  a1[1] = v6;
  return result;
}

char *specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(void *(*a1)(uint64_t *__return_ptr, char *, char *), uint64_t a2)
{
  v4 = v2;
  v19[2] = *MEMORY[0x277D85DE8];
  v7 = *v2;
  v6 = v2[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v8)
    {
      outlined consume of Data._Representation(v7, v6);
      v19[0] = v7;
      LOWORD(v19[1]) = v6;
      BYTE2(v19[1]) = BYTE2(v6);
      BYTE3(v19[1]) = BYTE3(v6);
      BYTE4(v19[1]) = BYTE4(v6);
      BYTE5(v19[1]) = BYTE5(v6);
      BYTE6(v19[1]) = BYTE6(v6);
      result = a1(&v17, v19, v19 + BYTE6(v6));
      if (!v3)
      {
        result = v17;
      }

      v10 = LODWORD(v19[1]) | ((WORD2(v19[1]) | (BYTE6(v19[1]) << 16)) << 32);
      *v4 = v19[0];
      v4[1] = v10;
      return result;
    }

    v12 = v6 & 0x3FFFFFFFFFFFFFFFLL;

    outlined consume of Data._Representation(v7, v6);
    *v4 = xmmword_255A4CA80;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    v13 = v7 >> 32;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      if (v13 < v7)
      {
LABEL_25:
        __break(1u);
        goto LABEL_26;
      }

      if (__DataStorage._bytes.getter() && __OFSUB__(v7, __DataStorage._offset.getter()))
      {
LABEL_26:
        __break(1u);
      }

      type metadata accessor for __DataStorage();
      swift_allocObject();
      v14 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

      v12 = v14;
    }

    if (v13 >= v7)
    {

      v15 = specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(v7, v7 >> 32, a1);

      v11 = v12 | 0x4000000000000000;
      if (!v3)
      {
        *v4 = v7;
        v4[1] = v11;
        return v15;
      }

      *v4 = v7;
      goto LABEL_21;
    }

    __break(1u);
    goto LABEL_25;
  }

  if (v8 == 2)
  {

    outlined consume of Data._Representation(v7, v6);
    v17 = v7;
    v18 = v6 & 0x3FFFFFFFFFFFFFFFLL;
    *v4 = xmmword_255A4CA80;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    result = specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(*(v17 + 2), *(v17 + 3), a1);
    v11 = v18 | 0x8000000000000000;
    if (!v3)
    {
      *v4 = v17;
      v4[1] = v11;
      return result;
    }

    *v4 = v17;
LABEL_21:
    v4[1] = v11;
    return result;
  }

  memset(v19, 0, 15);
  result = a1(&v17, v19, v19);
  if (!v3)
  {
    return v17;
  }

  return result;
}

_BYTE *closure #1 in Data.init<A>(_:)@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X1>, void *a3@<X8>)
{
  if (!result)
  {
    goto LABEL_4;
  }

  v3 = a2 - result;
  if (a2 == result)
  {
    result = 0;
LABEL_4:
    *a3 = result;
    a3[1] = 0xC000000000000000;
    return result;
  }

  if (v3 <= 14)
  {
    result = specialized Data.InlineData.init(_:)(result, a2);
    v8 = a3;
    v6 = v9 & 0xFFFFFFFFFFFFFFLL;
  }

  else
  {
    if (v3 >= 0x7FFFFFFF)
    {
      result = specialized Data.LargeSlice.init(_:)(result, a2);
      v6 = v10 | 0x8000000000000000;
    }

    else
    {
      result = specialized Data.InlineSlice.init(_:)(result, a2);
      v6 = v5 | 0x4000000000000000;
    }

    v8 = a3;
  }

  *v8 = result;
  v8[1] = v6;
  return result;
}

void *_sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySS8UTF8ViewVG_SitTt1g5(void *(*a1)(uint64_t *__return_ptr, uint64_t, uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a3)
  {
    result = a1(&v6, a3, a4 - a3);
    if (!v4)
    {
      return v6;
    }
  }

  else
  {
    result = (a1)(&v6, 0, 0, 0, a4);
    if (!v4)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

char *specialized __DataStorage.withUnsafeMutableBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, void *(*a3)(uint64_t *__return_ptr, char *, char *))
{
  result = __DataStorage._bytes.getter();
  if (!result)
  {
    goto LABEL_12;
  }

  v8 = result;
  result = __DataStorage._offset.getter();
  v9 = a1 - result;
  if (__OFSUB__(a1, result))
  {
    __break(1u);
    goto LABEL_11;
  }

  v10 = __OFSUB__(a2, a1);
  v11 = a2 - a1;
  if (v10)
  {
LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  v12 = MEMORY[0x259C46E70]();
  if (v12 >= v11)
  {
    v13 = v11;
  }

  else
  {
    v13 = v12;
  }

  result = a3(&v14, &v8[v9], &v8[v9 + v13]);
  if (!v3)
  {
    return v14;
  }

  return result;
}

uint64_t specialized LLMCacheManager.__allocating_init(namespace:databaseAccess:ttl:logEmitter:)(_BYTE *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v19 = a7;
  v20 = a8;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v18);
  (*(*(a7 - 8) + 32))(boxed_opaque_existential_1, a2, a7);
  type metadata accessor for LLMCacheManager();
  v15 = swift_allocObject();
  LOBYTE(a2) = *a1;
  swift_defaultActor_initialize();
  *(v15 + 112) = a2;
  _s8LLMCache13CacheDatabase_pWOb_0(&v18, v15 + 120);
  v16 = *&a3;
  if (a4)
  {
    v16 = 15552000.0;
  }

  *(v15 + 160) = v16;
  *(v15 + 168) = a5;
  return v15;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1, void *a2)
{
  if (*a1 == *a2 && a1[1] == a2[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t specialized Data._Representation.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = a2 >> 62;
  if ((a2 >> 62) <= 1)
  {
    if (!v3)
    {
      type metadata accessor for Insecure.SHA1();
      lazy protocol witness table accessor for type Insecure.SHA1 and conformance Insecure.SHA1(&lazy protocol witness table cache variable for type Insecure.SHA1 and conformance Insecure.SHA1, MEMORY[0x277CC5598], MEMORY[0x277CC5590]);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    v5 = a1;
    v6 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }

    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v5, v6);
  }

  if (v3 == 2)
  {
    v5 = *(a1 + 16);
    v6 = *(a1 + 24);
    return specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v5, v6);
  }

  type metadata accessor for Insecure.SHA1();
  lazy protocol witness table accessor for type Insecure.SHA1 and conformance Insecure.SHA1(&lazy protocol witness table cache variable for type Insecure.SHA1 and conformance Insecure.SHA1, MEMORY[0x277CC5598], MEMORY[0x277CC5590]);
  return dispatch thunk of HashFunction.update(bufferPointer:)();
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2)
{
  result = __DataStorage._bytes.getter();
  if (!result || (result = __DataStorage._offset.getter(), !__OFSUB__(a1, result)))
  {
    if (!__OFSUB__(a2, a1))
    {
      MEMORY[0x259C46E70]();
      type metadata accessor for Insecure.SHA1();
      lazy protocol witness table accessor for type Insecure.SHA1 and conformance Insecure.SHA1(&lazy protocol witness table cache variable for type Insecure.SHA1 and conformance Insecure.SHA1, MEMORY[0x277CC5598], MEMORY[0x277CC5590]);
      return dispatch thunk of HashFunction.update(bufferPointer:)();
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized closure #1 in closure #3 in Data.init<A>(_:)@<X0>(uint64_t result@<X0>, void *a4@<X8>)
{
  if (result)
  {
    result = _StringGuts.copyUTF8(into:)();
    if ((v5 & 1) == 0)
    {
      *a4 = 0;
      a4[1] = 0xE000000000000000;
      a4[2] = 15;
      a4[3] = result;
      return result;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized static LLMCacheManager.sortAndFilterListResult(_:request:)(uint64_t a1, uint64_t a2)
{
  v17[2] = a2;
  v18 = a1;

  specialized MutableCollection<>.sort(by:)(partial apply for closure #1 in static LLMCacheManager.sortAndFilterListResult(_:request:), v17);
  v3 = v18;
  v4 = type metadata accessor for ListRequest(0);
  v8 = specialized Collection.prefix(_:)(*(a2 + *(v4 + 28)), v3);
  if ((v7 & 1) == 0)
  {
    goto LABEL_2;
  }

  v11 = v7;
  v12 = v6;
  v13 = v5;
  type metadata accessor for __ContiguousArrayStorageBase();
  swift_unknownObjectRetain_n();
  v14 = swift_dynamicCastClass();
  if (!v14)
  {
    swift_unknownObjectRelease();
    v14 = MEMORY[0x277D84F90];
  }

  v15 = *(v14 + 16);

  if (__OFSUB__(v11 >> 1, v12))
  {
    __break(1u);
    goto LABEL_12;
  }

  if (v15 != (v11 >> 1) - v12)
  {
LABEL_12:
    swift_unknownObjectRelease();
    v7 = v11;
    v6 = v12;
    v5 = v13;
LABEL_2:
    specialized _copyCollectionToContiguousArray<A>(_:)(v8, v5, v6, v7);
    v10 = v9;
LABEL_9:
    swift_unknownObjectRelease();
    return v10;
  }

  v10 = swift_dynamicCastClass();
  swift_unknownObjectRelease();
  if (!v10)
  {
    v10 = MEMORY[0x277D84F90];
    goto LABEL_9;
  }

  return v10;
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1)
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

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

uint64_t outlined destroy of ListRequest(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of ListRequest(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t specialized Data.InlineData.init(_:)(_BYTE *__src, _BYTE *a2)
{
  v10 = *MEMORY[0x277D85DE8];
  v2 = a2 - __src;
  if (__src)
  {
    v3 = a2 - __src;
  }

  else
  {
    v3 = 0;
  }

  if ((v3 & 0x8000000000000000) != 0)
  {
    __break(1u);
LABEL_11:
    __break(1u);
  }

  if (v3 > 0xFF)
  {
    goto LABEL_11;
  }

  result = 0;
  __dst = 0;
  v9 = v3;
  v8 = 0;
  v7 = 0;
  if (__src)
  {
    if (a2 != __src)
    {
      memcpy(&__dst, __src, v2);
      return __dst;
    }
  }

  return result;
}

uint64_t specialized Data._Representation.init(count:)(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      if (result < 0)
      {
        __break(1u);
      }

      else
      {
        return 0;
      }
    }

    else
    {
      type metadata accessor for __DataStorage();
      swift_allocObject();
      __DataStorage.init(length:)();
      if (v1 >= 0x7FFFFFFF)
      {
        type metadata accessor for Data.RangeReference();
        result = swift_allocObject();
        *(result + 16) = 0;
        *(result + 24) = v1;
      }

      else
      {
        return v1 << 32;
      }
    }
  }

  return result;
}

uint64_t specialized Data.LargeSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0)
  {
    __break(1u);
  }

  else
  {
    type metadata accessor for Data.RangeReference();
    result = swift_allocObject();
    *(result + 16) = 0;
    *(result + 24) = v2;
  }

  return result;
}

uint64_t specialized Data.InlineSlice.init(_:)(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
    v2 = a2 - a1;
  }

  else
  {
    v2 = 0;
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  result = __DataStorage.init(bytes:length:)();
  if (v2 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v2 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if ((v2 & 0x8000000000000000) == 0)
  {
    return v2 << 32;
  }

LABEL_10:
  __break(1u);
  return result;
}

uint64_t specialized static LLMCacheManager.generateEntryId(searchKey:llmOutput:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v53 = *MEMORY[0x277D85DE8];
  v8 = type metadata accessor for Insecure.SHA1();
  v46 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Insecure.SHA1Digest();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = a1;
  v50 = a2;

  MEMORY[0x259C47680](45, 0xE100000000000000);
  MEMORY[0x259C47680](a3, a4);
  v15 = _s10Foundation4DataVyACxcSTRzs5UInt8V7ElementRtzlufCSS8UTF8ViewV_Tt0g5(v49, v50);
  v17 = v16;
  lazy protocol witness table accessor for type Insecure.SHA1 and conformance Insecure.SHA1(&lazy protocol witness table cache variable for type Insecure.SHA1 and conformance Insecure.SHA1, MEMORY[0x277CC5598], MEMORY[0x277CC5590]);
  dispatch thunk of HashFunction.init()();
  outlined copy of Data._Representation(v15, v17);
  specialized Data._Representation.withUnsafeBytes<A>(_:)(v15, v17, v10);
  outlined consume of Data._Representation(v15, v17);
  dispatch thunk of HashFunction.finalize()();
  outlined consume of Data._Representation(v15, v17);
  (*(v46 + 8))(v10, v8);
  v51 = v11;
  v52 = lazy protocol witness table accessor for type Insecure.SHA1 and conformance Insecure.SHA1(&lazy protocol witness table cache variable for type Insecure.SHA1Digest and conformance Insecure.SHA1Digest, MEMORY[0x277CC5578], MEMORY[0x277CC5568]);
  v18 = __swift_allocate_boxed_opaque_existential_1(&v49);
  (*(v12 + 16))(v18, v14, v11);
  __swift_project_boxed_opaque_existential_1(&v49, v51);
  dispatch thunk of ContiguousBytes.withUnsafeBytes<A>(_:)();
  (*(v12 + 8))(v14, v11);
  v19 = v47;
  v20 = v48;
  outlined copy of Data._Representation(v47, v48);
  __swift_destroy_boxed_opaque_existential_0Tm(&v49);
  v21 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v21 + 16) = 8;
  *(v21 + 32) = 0;
  v22 = v21 + 32;
  v23 = v20 >> 62;
  if ((v20 >> 62) > 1)
  {
    if (v23 != 2)
    {
      goto LABEL_30;
    }

    v24 = *(v19 + 16);
    v25 = *(v19 + 24);
  }

  else
  {
    if (!v23)
    {
      v24 = 0;
      v25 = BYTE6(v20);
      goto LABEL_8;
    }

    v24 = v19;
    v25 = v19 >> 32;
  }

  if (v25 < v24)
  {
    goto LABEL_41;
  }

LABEL_8:
  if (v24 != v25)
  {
    v45 = BYTE6(v20);
    v46 = v19;
    v43 = v19 >> 8;
    v44 = v19 >> 32;
    v41 = v19 >> 24;
    v42 = v19 >> 16;
    v39 = v19 >> 40;
    v40 = HIDWORD(v19);
    v37 = HIBYTE(v19);
    v38 = HIWORD(v19);
    while (1)
    {
      if (v24 >= v25)
      {
        __break(1u);
LABEL_32:
        __break(1u);
LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
LABEL_35:
        __break(1u);
LABEL_36:
        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
LABEL_43:
        __break(1u);
      }

      v26 = *(v21 + 16);
      if (!v26)
      {
        goto LABEL_32;
      }

      if (v23 == 2)
      {
        break;
      }

      if (v23 == 1)
      {
        if (v24 < v46 || v24 >= v44)
        {
          goto LABEL_37;
        }

        v27 = __DataStorage._bytes.getter();
        if (!v27)
        {
          goto LABEL_42;
        }

        v28 = v27;
        v29 = __DataStorage._offset.getter();
        v30 = v24 - v29;
        if (__OFSUB__(v24, v29))
        {
          goto LABEL_39;
        }

LABEL_24:
        v33 = *(v28 + v30);
        goto LABEL_27;
      }

      if (v24 >= v45)
      {
        goto LABEL_36;
      }

      LOBYTE(v49) = v19;
      BYTE1(v49) = v43;
      BYTE2(v49) = v42;
      BYTE3(v49) = v41;
      BYTE4(v49) = v40;
      BYTE5(v49) = v39;
      BYTE6(v49) = v38;
      HIBYTE(v49) = v37;
      LOWORD(v50) = v20;
      BYTE2(v50) = BYTE2(v20);
      BYTE3(v50) = BYTE3(v20);
      BYTE4(v50) = BYTE4(v20);
      BYTE5(v50) = BYTE5(v20);
      v33 = *(&v49 + v24);
LABEL_27:
      v34 = v24 % v26;
      if (v24 % v26 < 0)
      {
        goto LABEL_33;
      }

      if (v34 >= *(v21 + 16))
      {
        goto LABEL_34;
      }

      ++v24;
      *(v22 + v34) ^= v33;
      if (v25 == v24)
      {
        goto LABEL_30;
      }
    }

    if (v24 < *(v19 + 16))
    {
      goto LABEL_35;
    }

    if (v24 >= *(v19 + 24))
    {
      goto LABEL_38;
    }

    v31 = __DataStorage._bytes.getter();
    if (!v31)
    {
      goto LABEL_43;
    }

    v28 = v31;
    v32 = __DataStorage._offset.getter();
    v30 = v24 - v32;
    if (__OFSUB__(v24, v32))
    {
      goto LABEL_40;
    }

    goto LABEL_24;
  }

LABEL_30:
  outlined consume of Data._Representation(v19, v20);
  v49 = 0;
  v35 = [objc_allocWithZone(MEMORY[0x277CBEA90]) initWithBytes:v22 length:*(v21 + 16)];

  [v35 getBytes:&v49 length:8];

  outlined consume of Data._Representation(v19, v20);
  return v49;
}

uint64_t outlined assign with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of LLMCacheManaging.list(with:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 8) + **(a4 + 8));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = dispatch thunk of CacheDatabase.describe(identifier:);

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of LLMCacheManaging.insert(with:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 16) + **(a3 + 16));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of CacheDatabase.describe(identifier:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of LLMCacheManaging.insert(searchKey:llmOutput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v15 = (*(a6 + 24) + **(a6 + 24));
  v13 = swift_task_alloc();
  *(v6 + 16) = v13;
  *v13 = v6;
  v13[1] = dispatch thunk of CacheDatabase.describe(identifier:);

  return v15(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of LLMCacheManaging.deleteAll()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 32) + **(a2 + 32));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of CacheDatabase.describe(identifier:);

  return v7(a1, a2);
}

uint64_t dispatch thunk of LLMCacheManaging.warmup()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 40) + **(a2 + 40));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of CacheDatabase.describe(identifier:);

  return v7(a1, a2);
}

uint64_t dispatch thunk of LLMCacheManaging.pruneExpiredEntries()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 48) + **(a2 + 48));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of CacheDatabase.describe(identifier:);

  return v7(a1, a2);
}

uint64_t dispatch thunk of LLMCacheManager.list(with:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 128) + **(*v2 + 128));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = dispatch thunk of CacheDatabase.describe(identifier:);

  return v8(a1, a2);
}

uint64_t dispatch thunk of LLMCacheManager.insert(searchKey:llmOutput:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 152) + **(*v4 + 152));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = dispatch thunk of CacheDatabase.describe(identifier:);

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of LLMCacheManager.insert(with:)(uint64_t a1)
{
  v6 = (*(*v1 + 160) + **(*v1 + 160));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of CacheDatabase.describe(identifier:);

  return v6(a1);
}

uint64_t dispatch thunk of LLMCacheManager.deleteAll()()
{
  v4 = (*(*v0 + 168) + **(*v0 + 168));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = dispatch thunk of CacheDatabase.describe(identifier:);

  return v4();
}

uint64_t dispatch thunk of LLMCacheManager.warmup()()
{
  v4 = (*(*v0 + 176) + **(*v0 + 176));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = dispatch thunk of CacheDatabase.describe(identifier:);

  return v4();
}

uint64_t dispatch thunk of LLMCacheManager.pruneExpiredEntries()()
{
  v4 = (*(*v0 + 184) + **(*v0 + 184));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = dispatch thunk of CacheDatabase.delete(entries:);

  return v4();
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

uint64_t outlined consume of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t lazy protocol witness table accessor for type Insecure.SHA1 and conformance Insecure.SHA1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t outlined destroy of AnnotatedCacheEntry?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

void *partial apply for specialized closure #3 in Data.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v7 = *v5;
  v6 = v5[1];
  v13[0] = v7;
  v13[1] = v6;
  v12[2] = v13;
  result = _sSw17withMemoryRebound2to_q0_xm_q0_SryxGq_YKXEtq_YKs5ErrorR_Ri_zRi_0_r1_lFs5UInt8V_s5NeverOs16IndexingIteratorVySS8UTF8ViewVG_SitTt1g5(partial apply for specialized closure #1 in closure #3 in Data.init<A>(_:), v12, a1, a2);
  *a3 = result;
  a3[1] = v9;
  a3[2] = v10;
  a3[3] = v11;
  return result;
}

uint64_t outlined consume of Data._Representation?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(result, a2);
  }

  return result;
}

uint64_t closure #1 in Sequence<>.contains(_:)specialized partial apply(uint64_t *a1)
{
  return partial apply for specialized closure #1 in Sequence<>.contains(_:)(a1) & 1;
}

{
  return _sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0(a1) & 1;
}

LLMCache::CacheNamespace_optional __swiftcall CacheNamespace.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CacheNamespace.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

unint64_t CacheNamespace.rawValue.getter()
{
  v1 = 1819047270;
  if (*v0 != 1)
  {
    v1 = 0xD000000000000012;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1953718630;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CacheNamespace(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1819047270;
  v5 = 0x8000000255A4D5C0;
  if (v2 != 1)
  {
    v4 = 0xD000000000000012;
    v3 = 0x8000000255A4D5C0;
  }

  if (*a1)
  {
    v6 = v4;
  }

  else
  {
    v6 = 1953718630;
  }

  if (v2)
  {
    v7 = v3;
  }

  else
  {
    v7 = 0xE400000000000000;
  }

  v8 = 1819047270;
  if (*a2 == 1)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xD000000000000012;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 1953718630;
  }

  if (*a2)
  {
    v10 = v5;
  }

  else
  {
    v10 = 0xE400000000000000;
  }

  if (v6 == v9 && v7 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

unint64_t lazy protocol witness table accessor for type CacheNamespace and conformance CacheNamespace()
{
  result = lazy protocol witness table cache variable for type CacheNamespace and conformance CacheNamespace;
  if (!lazy protocol witness table cache variable for type CacheNamespace and conformance CacheNamespace)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CacheNamespace and conformance CacheNamespace);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CacheNamespace and conformance CacheNamespace;
  if (!lazy protocol witness table cache variable for type CacheNamespace and conformance CacheNamespace)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CacheNamespace and conformance CacheNamespace);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CacheNamespace and conformance CacheNamespace;
  if (!lazy protocol witness table cache variable for type CacheNamespace and conformance CacheNamespace)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CacheNamespace and conformance CacheNamespace);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CacheNamespace and conformance CacheNamespace;
  if (!lazy protocol witness table cache variable for type CacheNamespace and conformance CacheNamespace)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CacheNamespace and conformance CacheNamespace);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CacheNamespace()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CacheNamespace(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CacheNamespace(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance CacheNamespace(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE400000000000000;
  v4 = 0xE400000000000000;
  v5 = 1819047270;
  if (v2 != 1)
  {
    v5 = 0xD000000000000012;
    v4 = 0x8000000255A4D5C0;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 1953718630;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t VectorDatabaseAccess.__allocating_init(path:embeddingProvider:)(uint64_t a1, uint64_t a2)
{
  swift_allocObject();
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = VectorDatabaseAccess.__allocating_init(path:embeddingProvider:);

  return VectorDatabaseAccess.init(path:embeddingProvider:)(a1, a2);
}

uint64_t VectorDatabaseAccess.__allocating_init(path:embeddingProvider:)(uint64_t a1)
{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t one-time initialization function for jsonEncoder(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

uint64_t *VectorDatabaseAccess.jsonDecoder.unsafeMutableAddressor()
{
  if (one-time initialization token for jsonDecoder != -1)
  {
    swift_once();
  }

  return &static VectorDatabaseAccess.jsonDecoder;
}

uint64_t static VectorDatabaseAccess.jsonDecoder.getter()
{
  if (one-time initialization token for jsonDecoder != -1)
  {
    swift_once();
  }
}

uint64_t VectorDatabaseAccess.init(path:embeddingProvider:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  v4 = type metadata accessor for ColumnType();
  v3[5] = v4;
  v3[6] = *(v4 - 8);
  v3[7] = swift_task_alloc();
  v5 = type metadata accessor for VectorDatabaseMetric();
  v3[8] = v5;
  v3[9] = *(v5 - 8);
  v3[10] = swift_task_alloc();
  v6 = type metadata accessor for VectorDatabaseConfig();
  v3[11] = v6;
  v3[12] = *(v6 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v7 = type metadata accessor for VectorDatabaseDataType();
  v3[15] = v7;
  v3[16] = *(v7 - 8);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v8 = type metadata accessor for URL();
  v3[19] = v8;
  v3[20] = *(v8 - 8);
  v3[21] = swift_task_alloc();
  v3[22] = swift_task_alloc();

  return MEMORY[0x2822009F8](VectorDatabaseAccess.init(path:embeddingProvider:), 0, 0);
}

uint64_t VectorDatabaseAccess.init(path:embeddingProvider:)()
{
  v27 = v0;
  swift_defaultActor_initialize();
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v1 = v0[22];
  v2 = v0[19];
  v3 = v0[20];
  v4 = v0[2];
  v5 = type metadata accessor for Logger();
  v0[23] = __swift_project_value_buffer(v5, static Logger.logger);
  v6 = *(v3 + 16);
  v0[24] = v6;
  v0[25] = (v3 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v6(v1, v4, v2);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.default.getter();
  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[22];
  v11 = v0[19];
  v12 = v0[20];
  if (v9)
  {
    v13 = swift_slowAlloc();
    v14 = swift_slowAlloc();
    v26 = v14;
    *v13 = 136315138;
    v24 = URL.absoluteString.getter();
    v16 = v15;
    v17 = *(v12 + 8);
    v17(v10, v11);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v16, &v26);

    *(v13 + 4) = v18;
    _os_log_impl(&dword_255A20000, v7, v8, "VectorDatabaseAccess directory: %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v14);
    MEMORY[0x259C47EC0](v14, -1, -1);
    MEMORY[0x259C47EC0](v13, -1, -1);
  }

  else
  {

    v17 = *(v12 + 8);
    v17(v10, v11);
  }

  v0[26] = v17;
  v19 = v0[3];
  outlined init with copy of CacheDatabase(v19, v0[4] + 112);
  v20 = v19[3];
  v21 = v19[4];
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v25 = (*(v21 + 8) + **(v21 + 8));
  v22 = swift_task_alloc();
  v0[27] = v22;
  *v22 = v0;
  v22[1] = VectorDatabaseAccess.init(path:embeddingProvider:);

  return v25(v20, v21);
}

{
  v43 = v0;
  v1 = v0[29];
  specialized static VectorDatabaseAccess.updatePerisistedDimension(_:at:)(v0[28], v0[2]);
  if (v1)
  {
    v30 = v0[26];
    v2 = v0[19];
    v3 = v0[18];
    v4 = v0[16];
    v5 = v0[14];
    v7 = v0[11];
    v6 = v0[12];
    v31 = v0[3];
    v32 = v0[15];
    v8 = v0[2];

    v30(v8, v2);
    (*(v6 + 8))(v5, v7);
    (*(v4 + 8))(v3, v32);
    __swift_destroy_boxed_opaque_existential_0Tm(v31);

    v9 = v0[1];

    return v9();
  }

  else
  {

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    v13 = os_log_type_enabled(v11, v12);
    v14 = v0[31];
    if (v13)
    {
      v15 = v0[30];
      v33 = v0[19];
      v40 = v0[18];
      v16 = v0[16];
      v36 = v0[26];
      v38 = v0[15];
      v17 = v0[12];
      v34 = v0[11];
      v35 = v0[14];
      v18 = v0[2];
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v42 = v20;
      *v19 = 136315138;
      v21 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v14, &v42);

      *(v19 + 4) = v21;
      _os_log_impl(&dword_255A20000, v11, v12, "VectorDatabaseAccess init completed with client version %s", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v20);
      MEMORY[0x259C47EC0](v20, -1, -1);
      MEMORY[0x259C47EC0](v19, -1, -1);

      v36(v18, v33);
      (*(v17 + 8))(v35, v34);
      (*(v16 + 8))(v40, v38);
    }

    else
    {
      v22 = v0[19];
      v41 = v0[18];
      v23 = v0[16];
      v37 = v0[26];
      v39 = v0[15];
      v24 = v0[14];
      v25 = v0[11];
      v26 = v0[12];
      v27 = v0[2];

      v37(v27, v22);
      (*(v26 + 8))(v24, v25);
      (*(v23 + 8))(v41, v39);
    }

    __swift_destroy_boxed_opaque_existential_0Tm(v0[3]);

    v28 = v0[1];
    v29 = v0[4];

    return v28(v29);
  }
}

uint64_t VectorDatabaseAccess.init(path:embeddingProvider:)(uint64_t a1)
{
  *(*v1 + 224) = a1;

  return MEMORY[0x2822009F8](VectorDatabaseAccess.init(path:embeddingProvider:), 0, 0);
}

{
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_255A20000, v2, v3, "VectorDatabaseAccess using float16 data type for this hardware", v4, 2u);
    MEMORY[0x259C47EC0](v4, -1, -1);
  }

  v5 = *(v1 + 144);
  v6 = *(v1 + 120);
  v7 = *(v1 + 128);

  (*(v7 + 104))(v5, *MEMORY[0x277D78210], v6);
  *(v1 + 240) = static VectorDatabaseConfig.getClientVersion(baseDirectory:)();
  *(v1 + 248) = v8;
  *(v1 + 232) = 0;
  v20 = *(v1 + 144);
  v9 = *(v1 + 128);
  v18 = *(v1 + 136);
  v19 = *(v1 + 120);
  v21 = *(v1 + 112);
  v22 = *(v1 + 104);
  v10 = *(v1 + 96);
  v23 = *(v1 + 88);
  v12 = *(v1 + 72);
  v11 = *(v1 + 80);
  v13 = *(v1 + 56);
  v14 = *(v1 + 64);
  v15 = *(v1 + 48);
  v17 = *(v1 + 40);
  v24 = *(v1 + 32);
  (*(v1 + 192))();
  (*(v12 + 104))(v11, *MEMORY[0x277D781F8], v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12VectorSearch0D17DatabaseAttributeVGMd, &_ss23_ContiguousArrayStorageCy12VectorSearch0D17DatabaseAttributeVGMR);
  type metadata accessor for VectorDatabaseAttribute();
  *(swift_allocObject() + 16) = xmmword_255A4CA70;
  *v13 = 0;
  v13[1] = 0;
  (*(v15 + 104))(v13, *MEMORY[0x277D78268], v17);
  VectorDatabaseAttribute.init(name:columnType:)();
  (*(v9 + 16))(v18, v20, v19);

  VectorDatabaseConfig.init(baseDirectory:distanceMetric:filterableAttributes:dimension:averagePartitionSize:batchSize:batchFactor:tradeOffParameterBetweenClusteringAndBalance:enableFTS:dataType:maxIndexConstructionBatches:readOnly:pretokenizationEnabled:prefixIndices:perConnectionPeakMemory:clientVersion:)();
  (*(v10 + 16))(v22, v21, v23);
  type metadata accessor for VectorDatabaseClient();
  swift_allocObject();
  *(v24 + 152) = VectorDatabaseClient.init(config:)();

  return MEMORY[0x2822009F8](VectorDatabaseAccess.init(path:embeddingProvider:), v24, 0);
}

uint64_t VectorDatabaseAccess.deinit()
{
  v1 = v0;

  dispatch thunk of VectorDatabaseClient.cooldown()();

  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.logger);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_255A20000, v3, v4, "VectorDatabaseAccess deinit completed", v5, 2u);
    MEMORY[0x259C47EC0](v5, -1, -1);
  }

  __swift_destroy_boxed_opaque_existential_0Tm((v1 + 112));

  swift_defaultActor_destroy();
  return v1;
}

uint64_t VectorDatabaseAccess.__deallocating_deinit()
{
  VectorDatabaseAccess.deinit();

  return MEMORY[0x282200960](v0);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VectorDatabaseAccess.delete(entries:)(Swift::OpaquePointer entries)
{
  v3 = v2;
  v4 = v1;
  v6 = type metadata accessor for AnnotatedCacheEntry(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v9 = (v52 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (one-time initialization token for logger != -1)
  {
LABEL_90:
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v54 = __swift_project_value_buffer(v10, static Logger.logger);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    _os_log_impl(&dword_255A20000, v11, v12, "VectorDatabaseAccess entering delete...", v13, 2u);
    MEMORY[0x259C47EC0](v13, -1, -1);
  }

  v14 = *(entries._rawValue + 2);
  if (v14)
  {
    v52[2] = v4;
    v53 = v3;
    v4 = 0;
    v15 = v7[80];
    v52[1] = entries._rawValue;
    v3 = entries._rawValue + ((v15 + 32) & ~v15);
    entries._rawValue = *(v7 + 9);
    v55 = v56 + 1;
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      outlined init with copy of AnnotatedCacheEntry(&v3[entries._rawValue * v4], v9);
      v17 = *v9;
      v16 = v9[1];
      v18 = HIBYTE(v16) & 0xF;
      v19 = *v9 & 0xFFFFFFFFFFFFLL;
      if ((v16 & 0x2000000000000000) != 0 ? HIBYTE(v16) & 0xF : *v9 & 0xFFFFFFFFFFFFLL)
      {
        break;
      }

      outlined destroy of AnnotatedCacheEntry(v9);
LABEL_7:
      if (++v4 == v14)
      {
        if (*(v7 + 2) == v14)
        {
          v45 = v53;
          v46 = VectorDatabaseAccess.delete(identifiers:)(v7);
          if (!v45)
          {
            v47 = v46;

            v48 = Logger.logObject.getter();
            v49 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v48, v49))
            {
              v50 = swift_slowAlloc();
              *v50 = 134218240;
              *(v50 + 4) = v47;
              *(v50 + 12) = 2048;
              *(v50 + 14) = v14;

              _os_log_impl(&dword_255A20000, v48, v49, "Deleted %ld entries successfully when %ld were originally requested", v50, 0x16u);
              MEMORY[0x259C47EC0](v50, -1, -1);

              goto LABEL_85;
            }
          }
        }

        else
        {

          lazy protocol witness table accessor for type LLMCacheManagerError and conformance LLMCacheManagerError();
          swift_allocError();
          *v51 = 0;
          swift_willThrow();
        }

        goto LABEL_85;
      }
    }

    if ((v16 & 0x1000000000000000) != 0)
    {

      v23 = specialized _parseInteger<A, B>(ascii:radix:)(v17, v16, 10);
      v41 = v44;
LABEL_70:
      outlined destroy of AnnotatedCacheEntry(v9);

      if ((v41 & 1) == 0)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v7 + 2) + 1, 1, v7);
        }

        v43 = *(v7 + 2);
        v42 = *(v7 + 3);
        if (v43 >= v42 >> 1)
        {
          v7 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1, v7);
        }

        *(v7 + 2) = v43 + 1;
        *&v7[8 * v43 + 32] = v23;
      }

      goto LABEL_7;
    }

    if ((v16 & 0x2000000000000000) != 0)
    {
      v56[0] = *v9;
      v56[1] = v16 & 0xFFFFFFFFFFFFFFLL;
      if (v17 == 43)
      {
        if (!v18)
        {
          goto LABEL_88;
        }

        if (--v18)
        {
          v23 = 0;
          v33 = v55;
          while (1)
          {
            v34 = *v33 - 48;
            if (v34 > 9)
            {
              break;
            }

            v35 = 10 * v23;
            if ((v23 * 10) >> 64 != (10 * v23) >> 63)
            {
              break;
            }

            v23 = v35 + v34;
            if (__OFADD__(v35, v34))
            {
              break;
            }

            ++v33;
            if (!--v18)
            {
              goto LABEL_69;
            }
          }
        }
      }

      else if (v17 == 45)
      {
        if (!v18)
        {
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          __break(1u);
LABEL_89:
          __break(1u);
          goto LABEL_90;
        }

        if (--v18)
        {
          v23 = 0;
          v27 = v55;
          while (1)
          {
            v28 = *v27 - 48;
            if (v28 > 9)
            {
              break;
            }

            v29 = 10 * v23;
            if ((v23 * 10) >> 64 != (10 * v23) >> 63)
            {
              break;
            }

            v23 = v29 - v28;
            if (__OFSUB__(v29, v28))
            {
              break;
            }

            ++v27;
            if (!--v18)
            {
              goto LABEL_69;
            }
          }
        }
      }

      else if (v18)
      {
        v23 = 0;
        v38 = v56;
        while (1)
        {
          v39 = *v38 - 48;
          if (v39 > 9)
          {
            break;
          }

          v40 = 10 * v23;
          if ((v23 * 10) >> 64 != (10 * v23) >> 63)
          {
            break;
          }

          v23 = v40 + v39;
          if (__OFADD__(v40, v39))
          {
            break;
          }

          ++v38;
          if (!--v18)
          {
            goto LABEL_69;
          }
        }
      }

      goto LABEL_68;
    }

    if ((v17 & 0x1000000000000000) != 0)
    {
      v21 = ((v16 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v21 = _StringObject.sharedUTF8.getter();
    }

    v22 = *v21;
    if (v22 == 43)
    {
      if (v19 < 1)
      {
        goto LABEL_87;
      }

      v18 = v19 - 1;
      if (v19 == 1)
      {
        goto LABEL_68;
      }

      v23 = 0;
      if (v21)
      {
        v30 = v21 + 1;
        while (1)
        {
          v31 = *v30 - 48;
          if (v31 > 9)
          {
            goto LABEL_68;
          }

          v32 = 10 * v23;
          if ((v23 * 10) >> 64 != (10 * v23) >> 63)
          {
            goto LABEL_68;
          }

          v23 = v32 + v31;
          if (__OFADD__(v32, v31))
          {
            goto LABEL_68;
          }

          ++v30;
          if (!--v18)
          {
            goto LABEL_69;
          }
        }
      }
    }

    else if (v22 == 45)
    {
      if (v19 < 1)
      {
        goto LABEL_89;
      }

      v18 = v19 - 1;
      if (v19 == 1)
      {
        goto LABEL_68;
      }

      v23 = 0;
      if (v21)
      {
        v24 = v21 + 1;
        while (1)
        {
          v25 = *v24 - 48;
          if (v25 > 9)
          {
            goto LABEL_68;
          }

          v26 = 10 * v23;
          if ((v23 * 10) >> 64 != (10 * v23) >> 63)
          {
            goto LABEL_68;
          }

          v23 = v26 - v25;
          if (__OFSUB__(v26, v25))
          {
            goto LABEL_68;
          }

          ++v24;
          if (!--v18)
          {
            goto LABEL_69;
          }
        }
      }
    }

    else
    {
      if (!v19)
      {
LABEL_68:
        v23 = 0;
        LOBYTE(v18) = 1;
        goto LABEL_69;
      }

      v23 = 0;
      if (v21)
      {
        do
        {
          v36 = *v21 - 48;
          if (v36 > 9)
          {
            goto LABEL_68;
          }

          v37 = 10 * v23;
          if ((v23 * 10) >> 64 != (10 * v23) >> 63)
          {
            goto LABEL_68;
          }

          v23 = v37 + v36;
          if (__OFADD__(v37, v36))
          {
            goto LABEL_68;
          }

          ++v21;
        }

        while (--v19);
      }
    }

    LOBYTE(v18) = 0;
LABEL_69:
    v57 = v18;
    v41 = v18;

    goto LABEL_70;
  }

LABEL_85:
  $defer #1 () in VectorDatabaseAccess.delete(entries:)("VectorDatabaseAccess leaving delete...");
}

uint64_t VectorDatabaseAccess.delete(identifiers:)(uint64_t a1)
{
  v2 = type metadata accessor for VectorDatabaseError();
  v48 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = (&v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v9 = static Logger.log;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v10 = dispatch thunk of VectorDatabaseClient.delete(identifiers:)();
  if (v1)
  {
    v50 = v1;
    v11 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v12 = v48;
      v13 = (*(v48 + 88))(v4, v2);
      if (v13 == *MEMORY[0x277D781C0])
      {
        v46 = v13;
        v47 = v5;

        (*(v12 + 96))(v4, v2);
        v14 = *v4;
        v15 = v4[1];
        v44 = v14;
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v16 = type metadata accessor for Logger();
        __swift_project_value_buffer(v16, static Logger.logger);

        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.error.getter();

        v19 = os_log_type_enabled(v17, v18);
        v45 = v15;
        if (v19)
        {
          v20 = swift_slowAlloc();
          v43 = v10;
          v21 = v20;
          v22 = swift_slowAlloc();
          v49 = v22;
          *v21 = 136315138;
          v23 = v44;
          *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &v49);
          _os_log_impl(&dword_255A20000, v17, v18, "Failed to delete assets due to deletion failure, error detail: %s", v21, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v22);
          v24 = v22;
          v12 = v48;
          MEMORY[0x259C47EC0](v24, -1, -1);
          v25 = v21;
          v10 = v43;
          MEMORY[0x259C47EC0](v25, -1, -1);

          v5 = v47;
        }

        else
        {

          v5 = v47;
          v23 = v44;
        }

        lazy protocol witness table accessor for type AnnotatedCacheEntry and conformance AnnotatedCacheEntry(&lazy protocol witness table cache variable for type VectorDatabaseError and conformance VectorDatabaseError, MEMORY[0x277D781D0], MEMORY[0x277D781D8]);
        swift_allocError();
        v38 = v45;
        *v39 = v23;
        v39[1] = v38;
        (*(v12 + 104))(v39, v46, v2);
LABEL_20:
        swift_willThrow();
        goto LABEL_21;
      }

      if (v13 == *MEMORY[0x277D781B8])
      {
        v46 = v13;
        v47 = v5;

        (*(v12 + 96))(v4, v2);
        v26 = *v4;
        v27 = v4[1];
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v28 = type metadata accessor for Logger();
        __swift_project_value_buffer(v28, static Logger.logger);

        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v44 = v27;
          v45 = v26;
          v32 = v31;
          v33 = v29;
          v34 = swift_slowAlloc();
          v49 = v34;
          *v32 = 136315138;
          *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v44, &v49);
          v35 = v30;
          v36 = v33;
          _os_log_impl(&dword_255A20000, v33, v35, "Failed to delete assets due to client failure, error detail: %s", v32, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v34);
          MEMORY[0x259C47EC0](v34, -1, -1);
          v37 = v32;
          v27 = v44;
          v26 = v45;
          MEMORY[0x259C47EC0](v37, -1, -1);
        }

        else
        {
        }

        v5 = v47;
        lazy protocol witness table accessor for type AnnotatedCacheEntry and conformance AnnotatedCacheEntry(&lazy protocol witness table cache variable for type VectorDatabaseError and conformance VectorDatabaseError, MEMORY[0x277D781D0], MEMORY[0x277D781D8]);
        swift_allocError();
        *v40 = v26;
        v40[1] = v27;
        (*(v48 + 104))(v40, v46, v2);
        goto LABEL_20;
      }

      (*(v12 + 8))(v4, v2);
    }

LABEL_21:
  }

  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v6 + 8))(v8, v5);
  return v10;
}

uint64_t VectorDatabaseAccess.describe(identifier:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v73 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8LLMCache19AnnotatedCacheEntryVSgMd, &_s8LLMCache19AnnotatedCacheEntryVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v74 = &v70 - v6;
  v7 = type metadata accessor for Asset();
  v76 = *(v7 - 8);
  v77 = v7;
  MEMORY[0x28223BE20](v7);
  v75 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for OSSignpostID();
  v79 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v12 = static Logger.log;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v13 = HIBYTE(a2) & 0xF;
  v14 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v15 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v15)
  {
    goto LABEL_65;
  }

  if ((a2 & 0x1000000000000000) != 0)
  {

    v18 = specialized _parseInteger<A, B>(ascii:radix:)(a1, a2, 10);
    v43 = v42;

    if (v43)
    {
      goto LABEL_65;
    }

    goto LABEL_72;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v80[0] = a1;
    v80[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    if (a1 == 43)
    {
      if (v13)
      {
        if (--v13)
        {
          v18 = 0;
          v28 = v80 + 1;
          while (1)
          {
            v29 = *v28 - 48;
            if (v29 > 9)
            {
              break;
            }

            v30 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              break;
            }

            v18 = v30 + v29;
            if (__OFADD__(v30, v29))
            {
              break;
            }

            ++v28;
            if (!--v13)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_63;
      }

LABEL_93:
      __break(1u);
      goto LABEL_94;
    }

    if (a1 != 45)
    {
      if (v13)
      {
        v18 = 0;
        v33 = v80;
        while (1)
        {
          v34 = *v33 - 48;
          if (v34 > 9)
          {
            break;
          }

          v35 = 10 * v18;
          if ((v18 * 10) >> 64 != (10 * v18) >> 63)
          {
            break;
          }

          v18 = v35 + v34;
          if (__OFADD__(v35, v34))
          {
            break;
          }

          v33 = (v33 + 1);
          if (!--v13)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    if (v13)
    {
      if (--v13)
      {
        v18 = 0;
        v22 = v80 + 1;
        while (1)
        {
          v23 = *v22 - 48;
          if (v23 > 9)
          {
            break;
          }

          v24 = 10 * v18;
          if ((v18 * 10) >> 64 != (10 * v18) >> 63)
          {
            break;
          }

          v18 = v24 - v23;
          if (__OFSUB__(v24, v23))
          {
            break;
          }

          ++v22;
          if (!--v13)
          {
            goto LABEL_64;
          }
        }
      }

      goto LABEL_63;
    }

    goto LABEL_91;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v16 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v16 = _StringObject.sharedUTF8.getter();
  }

  v17 = *v16;
  if (v17 == 43)
  {
    if (v14 >= 1)
    {
      v13 = v14 - 1;
      if (v14 != 1)
      {
        v18 = 0;
        if (v16)
        {
          v25 = v16 + 1;
          while (1)
          {
            v26 = *v25 - 48;
            if (v26 > 9)
            {
              goto LABEL_63;
            }

            v27 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              goto LABEL_63;
            }

            v18 = v27 + v26;
            if (__OFADD__(v27, v26))
            {
              goto LABEL_63;
            }

            ++v25;
            if (!--v13)
            {
              goto LABEL_64;
            }
          }
        }

        goto LABEL_55;
      }

      goto LABEL_63;
    }

    goto LABEL_92;
  }

  if (v17 == 45)
  {
    if (v14 >= 1)
    {
      v13 = v14 - 1;
      if (v14 != 1)
      {
        v18 = 0;
        if (v16)
        {
          v19 = v16 + 1;
          while (1)
          {
            v20 = *v19 - 48;
            if (v20 > 9)
            {
              goto LABEL_63;
            }

            v21 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              goto LABEL_63;
            }

            v18 = v21 - v20;
            if (__OFSUB__(v21, v20))
            {
              goto LABEL_63;
            }

            ++v19;
            if (!--v13)
            {
              goto LABEL_64;
            }
          }
        }

LABEL_55:
        LOBYTE(v13) = 0;
        goto LABEL_64;
      }

      goto LABEL_63;
    }

    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  if (v14)
  {
    v18 = 0;
    if (v16)
    {
      while (1)
      {
        v31 = *v16 - 48;
        if (v31 > 9)
        {
          goto LABEL_63;
        }

        v32 = 10 * v18;
        if ((v18 * 10) >> 64 != (10 * v18) >> 63)
        {
          goto LABEL_63;
        }

        v18 = v32 + v31;
        if (__OFADD__(v32, v31))
        {
          goto LABEL_63;
        }

        ++v16;
        if (!--v14)
        {
          goto LABEL_55;
        }
      }
    }

    goto LABEL_55;
  }

LABEL_63:
  v18 = 0;
  LOBYTE(v13) = 1;
LABEL_64:
  v81 = v13;
  if (v13)
  {
LABEL_65:
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logger.logger);

    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      v80[0] = v40;
      *v39 = 136315138;
      *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v80);
      _os_log_impl(&dword_255A20000, v37, v38, "Skip describing entry with invalid id %s", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v40);
      MEMORY[0x259C47EC0](v40, -1, -1);
      MEMORY[0x259C47EC0](v39, -1, -1);
    }

    lazy protocol witness table accessor for type LLMCacheManagerError and conformance LLMCacheManagerError();
    swift_allocError();
    *v41 = 0;
LABEL_70:
    swift_willThrow();
LABEL_83:
    static os_signpost_type_t.end.getter();
    os_signpost(_:dso:log:name:signpostID:)();
    return (*(v79 + 8))(v11, v9);
  }

LABEL_72:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5Int64VGMd, &_ss23_ContiguousArrayStorageCys5Int64VGMR);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_255A4CA70;
  *(v44 + 32) = v18;
  v45 = v78;
  v46 = VectorDatabaseAccess.listAll(identifiers:pagination:)(v44, 0, 0, 1);
  if (v45)
  {

    goto LABEL_83;
  }

  v47 = v46;

  if (!*(v47 + 16))
  {

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    __swift_project_value_buffer(v61, static Logger.logger);

    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      v65 = swift_slowAlloc();
      v72 = v9;
      v66 = v65;
      v80[0] = v65;
      *v64 = 136315138;
      *(v64 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v80);
      _os_log_impl(&dword_255A20000, v62, v63, "Entry with id %s is not found", v64, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v66);
      v9 = v72;
      MEMORY[0x259C47EC0](v66, -1, -1);
      MEMORY[0x259C47EC0](v64, -1, -1);
    }

    lazy protocol witness table accessor for type LLMCacheManagerError and conformance LLMCacheManagerError();
    swift_allocError();
    *v67 = 2;
    goto LABEL_70;
  }

  (*(v76 + 16))(v75, v47 + ((*(v76 + 80) + 32) & ~*(v76 + 80)), v77);

  v48 = Asset.payload.getter();
  v72 = v9;
  if (v49 >> 60 == 15)
  {
    v53 = type metadata accessor for AnnotatedCacheEntry(0);
    v54 = v74;
    (*(*(v53 - 8) + 56))(v74, 1, 1, v53);
    outlined destroy of AnnotatedCacheEntry?(v54, &_s8LLMCache19AnnotatedCacheEntryVSgMd, &_s8LLMCache19AnnotatedCacheEntryVSgMR);
    if (one-time initialization token for logger == -1)
    {
LABEL_80:
      v55 = type metadata accessor for Logger();
      __swift_project_value_buffer(v55, static Logger.logger);

      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        v59 = swift_slowAlloc();
        v80[0] = v59;
        *v58 = 136315138;
        *(v58 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v80);
        _os_log_impl(&dword_255A20000, v56, v57, "Entry with id %s either does not have payload or payload fails to be decoded", v58, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v59);
        v9 = v72;
        MEMORY[0x259C47EC0](v59, -1, -1);
        MEMORY[0x259C47EC0](v58, -1, -1);
      }

      lazy protocol witness table accessor for type LLMCacheManagerError and conformance LLMCacheManagerError();
      swift_allocError();
      *v60 = 1;
      swift_willThrow();
      (*(v76 + 8))(v75, v77);
      goto LABEL_83;
    }

LABEL_94:
    swift_once();
    goto LABEL_80;
  }

  v50 = v49;
  v78 = v48;
  if (one-time initialization token for jsonDecoder != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for AnnotatedCacheEntry(0);
  lazy protocol witness table accessor for type AnnotatedCacheEntry and conformance AnnotatedCacheEntry(&lazy protocol witness table cache variable for type AnnotatedCacheEntry and conformance AnnotatedCacheEntry, type metadata accessor for AnnotatedCacheEntry, &protocol conformance descriptor for AnnotatedCacheEntry);
  v52 = v78;
  v71 = v51;
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  (*(v76 + 8))(v75, v77);
  outlined consume of Data._Representation?(v52, v50);
  v68 = v74;
  (*(*(v71 - 8) + 56))(v74, 0, 1);
  outlined init with take of AnnotatedCacheEntry(v68, v73);
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  return (*(v79 + 8))(v11, v72);
}

uint64_t Asset.toAnnotatedCachedEntry()@<X0>(uint64_t a2@<X8>)
{
  v3 = Asset.payload.getter();
  if (v4 >> 60 == 15)
  {
    v5 = type metadata accessor for AnnotatedCacheEntry(0);
    v6 = *(*(v5 - 8) + 56);
    v7 = v5;
    v8 = a2;
    v9 = 1;
  }

  else
  {
    v10 = v3;
    v11 = v4;
    if (one-time initialization token for jsonDecoder != -1)
    {
      swift_once();
    }

    v12 = type metadata accessor for AnnotatedCacheEntry(0);
    lazy protocol witness table accessor for type AnnotatedCacheEntry and conformance AnnotatedCacheEntry(&lazy protocol witness table cache variable for type AnnotatedCacheEntry and conformance AnnotatedCacheEntry, type metadata accessor for AnnotatedCacheEntry, &protocol conformance descriptor for AnnotatedCacheEntry);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    outlined consume of Data._Representation?(v10, v11);
    v6 = *(*(v12 - 8) + 56);
    v8 = a2;
    v9 = 0;
    v7 = v12;
  }

  return v6(v8, v9, 1, v7);
}

uint64_t VectorDatabaseAccess.insert(entries:)(uint64_t a1)
{
  v2[4] = a1;
  v2[5] = v1;
  v3 = type metadata accessor for Asset();
  v2[6] = v3;
  v2[7] = *(v3 - 8);
  v2[8] = swift_task_alloc();
  v2[9] = swift_task_alloc();
  v4 = type metadata accessor for ColumnType();
  v2[10] = v4;
  v2[11] = *(v4 - 8);
  v2[12] = swift_task_alloc();
  v5 = type metadata accessor for AnnotatedCacheEntry(0);
  v2[13] = v5;
  v2[14] = *(v5 - 8);
  v2[15] = swift_task_alloc();
  v2[16] = swift_task_alloc();

  return MEMORY[0x2822009F8](VectorDatabaseAccess.insert(entries:), v1, 0);
}

{
  v3 = *v2;
  v3[24] = a1;
  v3[25] = v1;

  if (v1)
  {
    v4 = v3[5];

    v5 = VectorDatabaseAccess.insert(entries:);
    v6 = v4;
  }

  else
  {
    v6 = v3[5];
    v5 = VectorDatabaseAccess.insert(entries:);
  }

  return MEMORY[0x2822009F8](v5, v6, 0);
}

unsigned __int8 *VectorDatabaseAccess.insert(entries:)()
{
  v61 = v0;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  *(v0 + 136) = __swift_project_value_buffer(v1, static Logger.logger);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_255A20000, v2, v3, "VectorDatabaseAccess entering insert...", v4, 2u);
    MEMORY[0x259C47EC0](v4, -1, -1);
  }

  v5 = *(v0 + 32);

  v6 = *(v5 + 16);
  *(v0 + 144) = v6;
  if (!v6)
  {
    $defer #1 () in VectorDatabaseAccess.delete(entries:)("VectorDatabaseAccess leaving insert...");

    v26 = *(v0 + 8);
LABEL_73:

    return v26();
  }

  v7 = *(v0 + 128);
  v8 = *(v0 + 112);
  v9 = *(v0 + 32);
  v10 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v11 = *MEMORY[0x277D78268];
  *(v0 + 212) = *(v8 + 80);
  *(v0 + 216) = v11;
  *(v0 + 220) = *MEMORY[0x277D78288];
  v12 = *(v8 + 72);
  v13 = MEMORY[0x277D84F90];
  *(v0 + 160) = 0;
  *(v0 + 168) = v13;
  *(v0 + 152) = v12;
  result = outlined init with copy of AnnotatedCacheEntry(v9 + v10, v7);
  v16 = *v7;
  v15 = v7[1];
  v17 = HIBYTE(v15) & 0xF;
  v18 = v16 & 0xFFFFFFFFFFFFLL;
  if ((v15 & 0x2000000000000000) != 0)
  {
    v19 = HIBYTE(v15) & 0xF;
  }

  else
  {
    v19 = v16 & 0xFFFFFFFFFFFFLL;
  }

  if (!v19)
  {
LABEL_69:
    v43 = *(v0 + 128);
    v44 = *(v0 + 120);

    outlined init with copy of AnnotatedCacheEntry(v43, v44);
    v45 = Logger.logObject.getter();
    v46 = static os_log_type_t.error.getter();
    v47 = os_log_type_enabled(v45, v46);
    v48 = *(v0 + 120);
    if (v47)
    {
      v49 = swift_slowAlloc();
      v50 = swift_slowAlloc();
      v60 = v50;
      *v49 = 136315138;
      v51 = *v48;
      v52 = v48[1];

      outlined destroy of AnnotatedCacheEntry(v48);
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v52, &v60);

      *(v49 + 4) = v53;
      _os_log_impl(&dword_255A20000, v45, v46, "Skip inserting entry with invalid id %s", v49, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v50);
      MEMORY[0x259C47EC0](v50, -1, -1);
      MEMORY[0x259C47EC0](v49, -1, -1);
    }

    else
    {

      outlined destroy of AnnotatedCacheEntry(v48);
    }

    v54 = *(v0 + 128);
    lazy protocol witness table accessor for type LLMCacheManagerError and conformance LLMCacheManagerError();
    swift_allocError();
    *v55 = 0;
    swift_willThrow();
    outlined destroy of AnnotatedCacheEntry(v54);
    $defer #1 () in VectorDatabaseAccess.delete(entries:)("VectorDatabaseAccess leaving insert...");

    v26 = *(v0 + 8);
    goto LABEL_73;
  }

  if ((v15 & 0x1000000000000000) != 0)
  {

    v22 = specialized _parseInteger<A, B>(ascii:radix:)(v16, v15, 10);
    v57 = v56;

    if (v57)
    {
      goto LABEL_69;
    }

    goto LABEL_77;
  }

  if ((v15 & 0x2000000000000000) != 0)
  {
    *(v0 + 16) = v16;
    *(v0 + 24) = v15 & 0xFFFFFFFFFFFFFFLL;
    if (v16 == 43)
    {
      if (v17)
      {
        v34 = v17 - 1;
        if (v34)
        {
          v22 = 0;
          v35 = (v0 + 17);
          while (1)
          {
            v36 = *v35 - 48;
            if (v36 > 9)
            {
              break;
            }

            v37 = 10 * v22;
            if ((v22 * 10) >> 64 != (10 * v22) >> 63)
            {
              break;
            }

            v22 = v37 + v36;
            if (__OFADD__(v37, v36))
            {
              break;
            }

            LOBYTE(v21) = 0;
            ++v35;
            if (!--v34)
            {
              goto LABEL_68;
            }
          }
        }

        goto LABEL_67;
      }

LABEL_84:
      __break(1u);
      return result;
    }

    if (v16 != 45)
    {
      if (v17)
      {
        v22 = 0;
        v40 = (v0 + 16);
        while (1)
        {
          v41 = *v40 - 48;
          if (v41 > 9)
          {
            break;
          }

          v42 = 10 * v22;
          if ((v22 * 10) >> 64 != (10 * v22) >> 63)
          {
            break;
          }

          v22 = v42 + v41;
          if (__OFADD__(v42, v41))
          {
            break;
          }

          LOBYTE(v21) = 0;
          ++v40;
          if (!--v17)
          {
            goto LABEL_68;
          }
        }
      }

      goto LABEL_67;
    }

    if (v17)
    {
      v27 = v17 - 1;
      if (v27)
      {
        v22 = 0;
        v28 = (v0 + 17);
        while (1)
        {
          v29 = *v28 - 48;
          if (v29 > 9)
          {
            break;
          }

          v30 = 10 * v22;
          if ((v22 * 10) >> 64 != (10 * v22) >> 63)
          {
            break;
          }

          v22 = v30 - v29;
          if (__OFSUB__(v30, v29))
          {
            break;
          }

          LOBYTE(v21) = 0;
          ++v28;
          if (!--v27)
          {
            goto LABEL_68;
          }
        }
      }

      goto LABEL_67;
    }

    goto LABEL_82;
  }

  if ((v16 & 0x1000000000000000) != 0)
  {
    result = ((v15 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
  }

  v20 = *result;
  if (v20 == 43)
  {
    if (v18 >= 1)
    {
      v21 = v18 - 1;
      if (v18 != 1)
      {
        v22 = 0;
        if (result)
        {
          v31 = result + 1;
          while (1)
          {
            v32 = *v31 - 48;
            if (v32 > 9)
            {
              goto LABEL_67;
            }

            v33 = 10 * v22;
            if ((v22 * 10) >> 64 != (10 * v22) >> 63)
            {
              goto LABEL_67;
            }

            v22 = v33 + v32;
            if (__OFADD__(v33, v32))
            {
              goto LABEL_67;
            }

            ++v31;
            if (!--v21)
            {
              goto LABEL_68;
            }
          }
        }

        goto LABEL_59;
      }

      goto LABEL_67;
    }

    goto LABEL_83;
  }

  if (v20 == 45)
  {
    if (v18 >= 1)
    {
      v21 = v18 - 1;
      if (v18 != 1)
      {
        v22 = 0;
        if (result)
        {
          v23 = result + 1;
          while (1)
          {
            v24 = *v23 - 48;
            if (v24 > 9)
            {
              goto LABEL_67;
            }

            v25 = 10 * v22;
            if ((v22 * 10) >> 64 != (10 * v22) >> 63)
            {
              goto LABEL_67;
            }

            v22 = v25 - v24;
            if (__OFSUB__(v25, v24))
            {
              goto LABEL_67;
            }

            ++v23;
            if (!--v21)
            {
              goto LABEL_68;
            }
          }
        }

LABEL_59:
        LOBYTE(v21) = 0;
        goto LABEL_68;
      }

      goto LABEL_67;
    }

    __break(1u);
LABEL_82:
    __break(1u);
LABEL_83:
    __break(1u);
    goto LABEL_84;
  }

  if (v18)
  {
    v22 = 0;
    if (result)
    {
      while (1)
      {
        v38 = *result - 48;
        if (v38 > 9)
        {
          goto LABEL_67;
        }

        v39 = 10 * v22;
        if ((v22 * 10) >> 64 != (10 * v22) >> 63)
        {
          goto LABEL_67;
        }

        v22 = v39 + v38;
        if (__OFADD__(v39, v38))
        {
          goto LABEL_67;
        }

        ++result;
        if (!--v18)
        {
          goto LABEL_59;
        }
      }
    }

    goto LABEL_59;
  }

LABEL_67:
  v22 = 0;
  LOBYTE(v21) = 1;
LABEL_68:
  *(v0 + 208) = v21;
  if (v21)
  {
    goto LABEL_69;
  }

LABEL_77:
  *(v0 + 176) = v22;
  v58 = *(*(v0 + 128) + *(*(v0 + 104) + 36));
  v59 = swift_task_alloc();
  *(v0 + 184) = v59;
  *v59 = v0;
  v59[1] = VectorDatabaseAccess.insert(entries:);

  return VectorDatabaseAccess.searchKeyEmbeddings(_:)(v58);
}

{
  v91 = v0;
  v1 = *(v0 + 216);
  v88 = *(v0 + 220);
  v2 = *(v0 + 96);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12VectorSearch0D17DatabaseAttributeV_AC0F5ValueOtGMd, &_ss23_ContiguousArrayStorageCy12VectorSearch0D17DatabaseAttributeV_AC0F5ValueOtGMR);
  v5 = (__swift_instantiateConcreteTypeFromMangledNameV2(&_s12VectorSearch0A17DatabaseAttributeV_AA0C5ValueOtMd, &_s12VectorSearch0A17DatabaseAttributeV_AA0C5ValueOtMR) - 8);
  v6 = (*(*v5 + 80) + 32) & ~*(*v5 + 80);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_255A4CA70;
  v8 = v7 + v6;
  v9 = (v8 + v5[14]);
  *v2 = 0;
  v2[1] = 0;
  (*(v3 + 104))(v2, v1, v4);
  VectorDatabaseAttribute.init(name:columnType:)();
  *v9 = UserID.sharedUserId.getter();
  v9[1] = v10;
  v11 = type metadata accessor for DatabaseValue();
  (*(*(v11 - 8) + 104))(v9, v88, v11);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12VectorSearch0C17DatabaseAttributeV_AC0E5ValueOTt0g5Tf4g_n(v7);
  swift_setDeallocating();
  outlined destroy of AnnotatedCacheEntry?(v8, &_s12VectorSearch0A17DatabaseAttributeV_AA0C5ValueOtMd, &_s12VectorSearch0A17DatabaseAttributeV_AA0C5ValueOtMR);
  swift_deallocClassInstance();
  if (one-time initialization token for jsonEncoder != -1)
  {
    swift_once();
  }

  v12 = *(v0 + 200);
  lazy protocol witness table accessor for type AnnotatedCacheEntry and conformance AnnotatedCacheEntry(&lazy protocol witness table cache variable for type AnnotatedCacheEntry and conformance AnnotatedCacheEntry, type metadata accessor for AnnotatedCacheEntry, &protocol conformance descriptor for AnnotatedCacheEntry);
  v13 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (v12)
  {
    v15 = *(v0 + 128);

    v16 = v15;
LABEL_5:
    outlined destroy of AnnotatedCacheEntry(v16);
    $defer #1 () in VectorDatabaseAccess.delete(entries:)("VectorDatabaseAccess leaving insert...");

    v17 = *(v0 + 8);
    goto LABEL_6;
  }

  v19 = v13;
  v20 = v14;
  v22 = *(v0 + 64);
  v21 = *(v0 + 72);
  v24 = *(v0 + 48);
  v23 = *(v0 + 56);
  outlined copy of Data._Representation(v13, v14);
  Asset.init(identifier:vectors:attributes:payload:)();
  (*(v23 + 16))(v22, v21, v24);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *(v0 + 168);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v26[2] + 1, 1, *(v0 + 168));
  }

  v28 = v26[2];
  v27 = v26[3];
  if (v28 >= v27 >> 1)
  {
    v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v26);
  }

  v87 = *(v0 + 128);
  v89 = *(v0 + 144);
  v30 = *(v0 + 64);
  v29 = *(v0 + 72);
  v32 = *(v0 + 48);
  v31 = *(v0 + 56);
  v86 = *(v0 + 160) + 1;
  outlined consume of Data._Representation(v19, v20);
  (*(v31 + 8))(v29, v32);
  v26[2] = v28 + 1;
  (*(v31 + 32))(v26 + ((*(v31 + 80) + 32) & ~*(v31 + 80)) + *(v31 + 72) * v28, v30, v32);
  outlined destroy of AnnotatedCacheEntry(v87);
  if (v86 == v89)
  {
    v51 = VectorDatabaseAccess.insert(assets:)(v26);

    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v52, v53))
    {
      v55 = *(v0 + 144);
      v56 = swift_slowAlloc();
      *v56 = 134218240;
      *(v56 + 4) = v51;
      *(v56 + 12) = 2048;
      *(v56 + 14) = v55;

      _os_log_impl(&dword_255A20000, v52, v53, "Inserted %ld entries successfully when %ld were originally requested", v56, 0x16u);
      MEMORY[0x259C47EC0](v56, -1, -1);
    }

    else
    {
    }

    $defer #1 () in VectorDatabaseAccess.delete(entries:)("VectorDatabaseAccess leaving insert...");

    v17 = *(v0 + 8);
LABEL_6:

    return v17();
  }

  v33 = *(v0 + 152);
  v34 = *(v0 + 160) + 1;
  *(v0 + 160) = v34;
  *(v0 + 168) = v26;
  v35 = *(v0 + 128);
  result = outlined init with copy of AnnotatedCacheEntry(*(v0 + 32) + ((*(v0 + 212) + 32) & ~*(v0 + 212)) + v33 * v34, v35);
  v36 = *v35;
  v37 = v35[1];
  v38 = HIBYTE(v37) & 0xF;
  v39 = v36 & 0xFFFFFFFFFFFFLL;
  if ((v37 & 0x2000000000000000) != 0)
  {
    v40 = HIBYTE(v37) & 0xF;
  }

  else
  {
    v40 = v36 & 0xFFFFFFFFFFFFLL;
  }

  if (!v40)
  {
LABEL_81:
    v69 = *(v0 + 128);
    v70 = *(v0 + 120);

    outlined init with copy of AnnotatedCacheEntry(v69, v70);
    v71 = Logger.logObject.getter();
    v72 = static os_log_type_t.error.getter();
    v73 = os_log_type_enabled(v71, v72);
    v74 = *(v0 + 120);
    if (v73)
    {
      v75 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      v90 = v76;
      *v75 = 136315138;
      v77 = *v74;
      v78 = v74[1];

      outlined destroy of AnnotatedCacheEntry(v74);
      v79 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v78, &v90);

      *(v75 + 4) = v79;
      _os_log_impl(&dword_255A20000, v71, v72, "Skip inserting entry with invalid id %s", v75, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v76);
      MEMORY[0x259C47EC0](v76, -1, -1);
      MEMORY[0x259C47EC0](v75, -1, -1);
    }

    else
    {

      outlined destroy of AnnotatedCacheEntry(v74);
    }

    v80 = *(v0 + 128);
    lazy protocol witness table accessor for type LLMCacheManagerError and conformance LLMCacheManagerError();
    swift_allocError();
    *v81 = 0;
    swift_willThrow();
    v16 = v80;
    goto LABEL_5;
  }

  if ((v37 & 0x1000000000000000) != 0)
  {

    v43 = specialized _parseInteger<A, B>(ascii:radix:)(v36, v37, 10);
    v83 = v82;

    if (v83)
    {
      goto LABEL_81;
    }

    goto LABEL_86;
  }

  if ((v37 & 0x2000000000000000) != 0)
  {
    *(v0 + 16) = v36;
    *(v0 + 24) = v37 & 0xFFFFFFFFFFFFFFLL;
    if (v36 == 43)
    {
      if (v38)
      {
        v60 = v38 - 1;
        if (v60)
        {
          v43 = 0;
          v61 = (v0 + 17);
          while (1)
          {
            v62 = *v61 - 48;
            if (v62 > 9)
            {
              break;
            }

            v63 = 10 * v43;
            if ((v43 * 10) >> 64 != (10 * v43) >> 63)
            {
              break;
            }

            v43 = v63 + v62;
            if (__OFADD__(v63, v62))
            {
              break;
            }

            LOBYTE(v42) = 0;
            ++v61;
            if (!--v60)
            {
              goto LABEL_80;
            }
          }
        }

        goto LABEL_79;
      }

LABEL_93:
      __break(1u);
      return result;
    }

    if (v36 != 45)
    {
      if (v38)
      {
        v43 = 0;
        v66 = (v0 + 16);
        while (1)
        {
          v67 = *v66 - 48;
          if (v67 > 9)
          {
            break;
          }

          v68 = 10 * v43;
          if ((v43 * 10) >> 64 != (10 * v43) >> 63)
          {
            break;
          }

          v43 = v68 + v67;
          if (__OFADD__(v68, v67))
          {
            break;
          }

          LOBYTE(v42) = 0;
          ++v66;
          if (!--v38)
          {
            goto LABEL_80;
          }
        }
      }

      goto LABEL_79;
    }

    if (v38)
    {
      v47 = v38 - 1;
      if (v47)
      {
        v43 = 0;
        v48 = (v0 + 17);
        while (1)
        {
          v49 = *v48 - 48;
          if (v49 > 9)
          {
            break;
          }

          v50 = 10 * v43;
          if ((v43 * 10) >> 64 != (10 * v43) >> 63)
          {
            break;
          }

          v43 = v50 - v49;
          if (__OFSUB__(v50, v49))
          {
            break;
          }

          LOBYTE(v42) = 0;
          ++v48;
          if (!--v47)
          {
            goto LABEL_80;
          }
        }
      }

      goto LABEL_79;
    }

    goto LABEL_91;
  }

  if ((v36 & 0x1000000000000000) != 0)
  {
    result = ((v37 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    result = _StringObject.sharedUTF8.getter();
  }

  v41 = *result;
  if (v41 == 43)
  {
    if (v39 >= 1)
    {
      v42 = v39 - 1;
      if (v39 != 1)
      {
        v43 = 0;
        if (result)
        {
          v57 = result + 1;
          while (1)
          {
            v58 = *v57 - 48;
            if (v58 > 9)
            {
              goto LABEL_79;
            }

            v59 = 10 * v43;
            if ((v43 * 10) >> 64 != (10 * v43) >> 63)
            {
              goto LABEL_79;
            }

            v43 = v59 + v58;
            if (__OFADD__(v59, v58))
            {
              goto LABEL_79;
            }

            ++v57;
            if (!--v42)
            {
              goto LABEL_80;
            }
          }
        }

        goto LABEL_71;
      }

      goto LABEL_79;
    }

    goto LABEL_92;
  }

  if (v41 == 45)
  {
    if (v39 >= 1)
    {
      v42 = v39 - 1;
      if (v39 != 1)
      {
        v43 = 0;
        if (result)
        {
          v44 = result + 1;
          while (1)
          {
            v45 = *v44 - 48;
            if (v45 > 9)
            {
              goto LABEL_79;
            }

            v46 = 10 * v43;
            if ((v43 * 10) >> 64 != (10 * v43) >> 63)
            {
              goto LABEL_79;
            }

            v43 = v46 - v45;
            if (__OFSUB__(v46, v45))
            {
              goto LABEL_79;
            }

            ++v44;
            if (!--v42)
            {
              goto LABEL_80;
            }
          }
        }

LABEL_71:
        LOBYTE(v42) = 0;
        goto LABEL_80;
      }

      goto LABEL_79;
    }

    __break(1u);
LABEL_91:
    __break(1u);
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  if (v39)
  {
    v43 = 0;
    if (result)
    {
      while (1)
      {
        v64 = *result - 48;
        if (v64 > 9)
        {
          goto LABEL_79;
        }

        v65 = 10 * v43;
        if ((v43 * 10) >> 64 != (10 * v43) >> 63)
        {
          goto LABEL_79;
        }

        v43 = v65 + v64;
        if (__OFADD__(v65, v64))
        {
          goto LABEL_79;
        }

        ++result;
        if (!--v39)
        {
          goto LABEL_71;
        }
      }
    }

    goto LABEL_71;
  }

LABEL_79:
  v43 = 0;
  LOBYTE(v42) = 1;
LABEL_80:
  *(v0 + 208) = v42;
  if (v42)
  {
    goto LABEL_81;
  }

LABEL_86:
  *(v0 + 176) = v43;
  v84 = *(*(v0 + 128) + *(*(v0 + 104) + 36));
  v85 = swift_task_alloc();
  *(v0 + 184) = v85;
  *v85 = v0;
  v85[1] = VectorDatabaseAccess.insert(entries:);

  return VectorDatabaseAccess.searchKeyEmbeddings(_:)(v84);
}

uint64_t VectorDatabaseAccess.insert(entries:)()
{
  outlined destroy of AnnotatedCacheEntry(*(v0 + 128));
  $defer #1 () in VectorDatabaseAccess.delete(entries:)("VectorDatabaseAccess leaving insert...");

  v1 = *(v0 + 8);

  return v1();
}

uint64_t VectorDatabaseAccess.searchKeyEmbeddings(_:)(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](VectorDatabaseAccess.searchKeyEmbeddings(_:), v1, 0);
}

uint64_t VectorDatabaseAccess.searchKeyEmbeddings(_:)()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = v2[2];
  v0[4] = v3;
  if (v3)
  {
    v0[5] = MEMORY[0x277D84F90];
    v0[6] = 0;
    v4 = v2[5];
    v0[7] = v4;
    v5 = v2[4];
    v6 = v1[17];
    v7 = v1[18];
    __swift_project_boxed_opaque_existential_1(v1 + 14, v6);
    v8 = *(v7 + 24);

    v13 = (v8 + *v8);
    v9 = swift_task_alloc();
    v0[8] = v9;
    *v9 = v0;
    v9[1] = VectorDatabaseAccess.searchKeyEmbeddings(_:);

    return v13(v5, v4, v6, v7);
  }

  else
  {
    v11 = v0[1];
    v12 = MEMORY[0x277D84F90];

    return v11(v12);
  }
}

{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2 = *(v0 + 40);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v2 + 2) + 1, 1, v2);
  }

  v4 = *(v2 + 2);
  v3 = *(v2 + 3);
  if (v4 >= v3 >> 1)
  {
    v2 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v3 > 1), v4 + 1, 1, v2);
  }

  v5 = *(v0 + 32);
  v6 = *(v0 + 48) + 1;
  v7 = *(v0 + 72);
  *(v2 + 2) = v4 + 1;
  *&v2[16 * v4 + 32] = v7;
  if (v6 == v5)
  {
    v8 = *(v0 + 8);

    return v8(v2);
  }

  else
  {
    v10 = *(v0 + 48) + 1;
    *(v0 + 40) = v2;
    *(v0 + 48) = v10;
    v11 = *(v0 + 24);
    v12 = *(v0 + 16) + 16 * v10;
    v13 = *(v12 + 40);
    *(v0 + 56) = v13;
    v14 = *(v12 + 32);
    v15 = v11[17];
    v16 = v11[18];
    __swift_project_boxed_opaque_existential_1(v11 + 14, v15);
    v17 = *(v16 + 24);

    v19 = (v17 + *v17);
    v18 = swift_task_alloc();
    *(v0 + 64) = v18;
    *v18 = v0;
    v18[1] = VectorDatabaseAccess.searchKeyEmbeddings(_:);

    return v19(v14, v13, v15, v16);
  }
}

uint64_t VectorDatabaseAccess.searchKeyEmbeddings(_:)(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v5 = *v3;
  v4[9] = a1;
  v4[10] = a2;

  if (v2)
  {

    v6 = v5[1];

    return v6();
  }

  else
  {
    v8 = v4[3];

    return MEMORY[0x2822009F8](VectorDatabaseAccess.searchKeyEmbeddings(_:), v8, 0);
  }
}

uint64_t VectorDatabaseAccess.insert(assets:)(uint64_t a1)
{
  v2 = type metadata accessor for VectorDatabaseError();
  v48 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = (&v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for OSSignpostID();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v42 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v9 = static Logger.log;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v10 = dispatch thunk of VectorDatabaseClient.insert(assets:)();
  if (v1)
  {
    v50 = v1;
    v11 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v12 = v48;
      v13 = (*(v48 + 88))(v4, v2);
      if (v13 == *MEMORY[0x277D781C8])
      {
        v46 = v13;
        v47 = v5;

        (*(v12 + 96))(v4, v2);
        v14 = *v4;
        v15 = v4[1];
        v44 = v14;
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v16 = type metadata accessor for Logger();
        __swift_project_value_buffer(v16, static Logger.logger);

        v17 = Logger.logObject.getter();
        v18 = static os_log_type_t.error.getter();

        v19 = os_log_type_enabled(v17, v18);
        v45 = v15;
        if (v19)
        {
          v20 = swift_slowAlloc();
          v43 = v10;
          v21 = v20;
          v22 = swift_slowAlloc();
          v49 = v22;
          *v21 = 136315138;
          v23 = v44;
          *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v45, &v49);
          _os_log_impl(&dword_255A20000, v17, v18, "Failed to insert assets due to insertion failure, error detail: %s", v21, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v22);
          v24 = v22;
          v12 = v48;
          MEMORY[0x259C47EC0](v24, -1, -1);
          v25 = v21;
          v10 = v43;
          MEMORY[0x259C47EC0](v25, -1, -1);

          v5 = v47;
        }

        else
        {

          v5 = v47;
          v23 = v44;
        }

        lazy protocol witness table accessor for type AnnotatedCacheEntry and conformance AnnotatedCacheEntry(&lazy protocol witness table cache variable for type VectorDatabaseError and conformance VectorDatabaseError, MEMORY[0x277D781D0], MEMORY[0x277D781D8]);
        swift_allocError();
        v38 = v45;
        *v39 = v23;
        v39[1] = v38;
        (*(v12 + 104))(v39, v46, v2);
LABEL_20:
        swift_willThrow();
        goto LABEL_21;
      }

      if (v13 == *MEMORY[0x277D781B8])
      {
        v46 = v13;
        v47 = v5;

        (*(v12 + 96))(v4, v2);
        v26 = *v4;
        v27 = v4[1];
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v28 = type metadata accessor for Logger();
        __swift_project_value_buffer(v28, static Logger.logger);

        v29 = Logger.logObject.getter();
        v30 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v29, v30))
        {
          v31 = swift_slowAlloc();
          v44 = v27;
          v45 = v26;
          v32 = v31;
          v33 = v29;
          v34 = swift_slowAlloc();
          v49 = v34;
          *v32 = 136315138;
          *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v44, &v49);
          v35 = v30;
          v36 = v33;
          _os_log_impl(&dword_255A20000, v33, v35, "Failed to insert assets due to client failure, error detail: %s", v32, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v34);
          MEMORY[0x259C47EC0](v34, -1, -1);
          v37 = v32;
          v27 = v44;
          v26 = v45;
          MEMORY[0x259C47EC0](v37, -1, -1);
        }

        else
        {
        }

        v5 = v47;
        lazy protocol witness table accessor for type AnnotatedCacheEntry and conformance AnnotatedCacheEntry(&lazy protocol witness table cache variable for type VectorDatabaseError and conformance VectorDatabaseError, MEMORY[0x277D781D0], MEMORY[0x277D781D8]);
        swift_allocError();
        *v40 = v26;
        v40[1] = v27;
        (*(v48 + 104))(v40, v46, v2);
        goto LABEL_20;
      }

      (*(v12 + 8))(v4, v2);
    }

LABEL_21:
  }

  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v6 + 8))(v8, v5);
  return v10;
}

uint64_t VectorDatabaseAccess.list(namespace:searchKey:)(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 72) = a3;
  *(v4 + 80) = v3;
  *(v4 + 64) = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8LLMCache19AnnotatedCacheEntryVSgMd, &_s8LLMCache19AnnotatedCacheEntryVSgMR);
  *(v4 + 88) = swift_task_alloc();
  v6 = type metadata accessor for AnnotatedCacheEntry(0);
  *(v4 + 96) = v6;
  *(v4 + 104) = *(v6 - 8);
  *(v4 + 112) = swift_task_alloc();
  *(v4 + 120) = swift_task_alloc();
  v7 = type metadata accessor for VectorDatabaseResult();
  *(v4 + 128) = v7;
  *(v4 + 136) = *(v7 - 8);
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 152) = swift_task_alloc();
  *(v4 + 200) = *a1;

  return MEMORY[0x2822009F8](VectorDatabaseAccess.list(namespace:searchKey:), v3, 0);
}

uint64_t VectorDatabaseAccess.list(namespace:searchKey:)()
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  v0[20] = __swift_project_value_buffer(v1, static Logger.logger);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_255A20000, v2, v3, "VectorDatabaseAccess entering list...", v4, 2u);
    MEMORY[0x259C47EC0](v4, -1, -1);
  }

  v6 = v0[8];
  v5 = v0[9];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  v0[21] = inited;
  *(inited + 16) = xmmword_255A4CA70;
  *(inited + 32) = v6;
  *(inited + 40) = v5;

  v8 = swift_task_alloc();
  v0[22] = v8;
  *v8 = v0;
  v8[1] = VectorDatabaseAccess.list(namespace:searchKey:);

  return VectorDatabaseAccess.searchKeyEmbeddings(_:)(inited);
}

{
  v69 = v0;
  v1 = *(v0 + 184);
  if (!v1[2])
  {

    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v6, v7))
    {
      v9 = *(v0 + 64);
      v8 = *(v0 + 72);
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v68[0] = v11;
      *v10 = 136315138;
      *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, v68);
      _os_log_impl(&dword_255A20000, v6, v7, "Failed to compute embedding for search key %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v11);
      MEMORY[0x259C47EC0](v11, -1, -1);
      MEMORY[0x259C47EC0](v10, -1, -1);
    }

    lazy protocol witness table accessor for type LLMCacheManagerError and conformance LLMCacheManagerError();
    swift_allocError();
    *v12 = 1;
    swift_willThrow();
    goto LABEL_7;
  }

  v2 = *(v0 + 192);
  v4 = v1[4];
  v3 = v1[5];
  outlined copy of Data._Representation(v4, v3);

  result = VectorDatabaseAccess.search(byVector:)(v4, v3);
  if (v2)
  {
    outlined consume of Data._Representation(v4, v3);
LABEL_7:
    $defer #1 () in VectorDatabaseAccess.delete(entries:)("VectorDatabaseAccess leaving list...");

    v13 = *(v0 + 8);

    return v13();
  }

  v59 = v4;
  v60 = v3;
  v14 = result;
  v66 = *(result + 16);
  if (v66)
  {
    v15 = 0;
    v16 = *(v0 + 136);
    v64 = result + ((*(v16 + 80) + 32) & ~*(v16 + 80));
    v61 = *(v0 + 104);
    v17 = MEMORY[0x277D84F90];
    v65 = v16;
    v67 = (v16 + 8);
    v62 = result;
    v63 = MEMORY[0x277D84F90];
    while (v15 < *(v14 + 16))
    {
      v18 = *(v65 + 16);
      v18(*(v0 + 152), v64 + *(v65 + 72) * v15, *(v0 + 128));
      v19 = VectorDatabaseResult.payload.getter();
      if (v20 >> 60 == 15)
      {
        v18(*(v0 + 144), *(v0 + 152), *(v0 + 128));
        v23 = Logger.logObject.getter();
        v24 = static os_log_type_t.error.getter();
        v25 = os_log_type_enabled(v23, v24);
        v26 = *(v0 + 144);
        v27 = *(v0 + 128);
        if (v25)
        {
          v28 = swift_slowAlloc();
          *v28 = 134217984;
          v29 = VectorDatabaseResult.assetIdentifier.getter();
          v30 = *v67;
          (*v67)(v26, v27);
          *(v28 + 4) = v29;
          v14 = v62;
          _os_log_impl(&dword_255A20000, v23, v24, "Asset with id %lld either does not have payload or payload fails to be decoded", v28, 0xCu);
          MEMORY[0x259C47EC0](v28, -1, -1);
        }

        else
        {
          v30 = *v67;
          (*v67)(*(v0 + 144), *(v0 + 128));
        }

        v31 = VectorDatabaseResult.assetIdentifier.getter();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 2) + 1, 1, v17);
        }

        v33 = *(v17 + 2);
        v32 = *(v17 + 3);
        if (v33 >= v32 >> 1)
        {
          v17 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1, v17);
        }

        result = (v30)(*(v0 + 152), *(v0 + 128));
        *(v17 + 2) = v33 + 1;
        *&v17[8 * v33 + 32] = v31;
      }

      else
      {
        v21 = v19;
        v22 = v20;
        if (one-time initialization token for jsonDecoder != -1)
        {
          swift_once();
        }

        lazy protocol witness table accessor for type AnnotatedCacheEntry and conformance AnnotatedCacheEntry(&lazy protocol witness table cache variable for type AnnotatedCacheEntry and conformance AnnotatedCacheEntry, type metadata accessor for AnnotatedCacheEntry, &protocol conformance descriptor for AnnotatedCacheEntry);
        dispatch thunk of JSONDecoder.decode<A>(_:from:)();
        v34 = *(v0 + 120);
        v35 = *(v0 + 88);
        (*(v61 + 56))(v35, 0, 1, *(v0 + 96));
        outlined init with take of AnnotatedCacheEntry(v35, v34);
        v36 = AnnotatedCacheEntry.builder()();
        VectorDatabaseResult.value.getter();
        v38 = (*(*v36 + 432))(v37, 0);

        (*(*v38 + 440))(v39);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v63[2] + 1, 1, v63);
        }

        v42 = v63[2];
        v41 = v63[3];
        if (v42 >= v41 >> 1)
        {
          v63 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v41 > 1), v42 + 1, 1, v63);
        }

        v43 = *(v0 + 152);
        v45 = *(v0 + 120);
        v44 = *(v0 + 128);
        v46 = *(v0 + 112);
        outlined consume of Data._Representation?(v21, v22);
        outlined destroy of AnnotatedCacheEntry(v45);
        (*v67)(v43, v44);
        v63[2] = v42 + 1;
        result = outlined init with take of AnnotatedCacheEntry(v46, v63 + ((*(v61 + 80) + 32) & ~*(v61 + 80)) + *(v61 + 72) * v42);
        v14 = v62;
      }

      if (v66 == ++v15)
      {
        goto LABEL_32;
      }
    }

    __break(1u);
  }

  else
  {
    v17 = MEMORY[0x277D84F90];
    v63 = MEMORY[0x277D84F90];
LABEL_32:

    if (*(v17 + 2))
    {
      VectorDatabaseAccess.delete(identifiers:)(v17);
    }

    v47 = v63;

    v48 = Logger.logObject.getter();
    v49 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v48, v49))
    {
      v50 = *(v0 + 200);
      v51 = swift_slowAlloc();
      v52 = swift_slowAlloc();
      v68[0] = v52;
      *v51 = 134218242;
      *(v51 + 4) = v63[2];
      *(v51 + 12) = 2080;
      v53 = 0xE400000000000000;
      v54 = 1819047270;
      if (v50 != 1)
      {
        v54 = 0xD000000000000012;
        v53 = 0x8000000255A4D5C0;
      }

      if (v50)
      {
        v55 = v54;
      }

      else
      {
        v55 = 1953718630;
      }

      if (v50)
      {
        v56 = v53;
      }

      else
      {
        v56 = 0xE400000000000000;
      }

      v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, v68);

      *(v51 + 14) = v57;

      _os_log_impl(&dword_255A20000, v48, v49, "Found %ld entries that match the requested search key and namespace %s", v51, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v52);
      MEMORY[0x259C47EC0](v52, -1, -1);
      MEMORY[0x259C47EC0](v51, -1, -1);

      outlined consume of Data._Representation(v59, v60);
      v47 = v63;
    }

    else
    {
      outlined consume of Data._Representation(v59, v60);
    }

    $defer #1 () in VectorDatabaseAccess.delete(entries:)("VectorDatabaseAccess leaving list...");

    v58 = *(v0 + 8);

    return v58(v47);
  }

  return result;
}

{
  v1 = *(v0 + 168);
  swift_setDeallocating();
  outlined destroy of String(v1 + 32);
  $defer #1 () in VectorDatabaseAccess.delete(entries:)("VectorDatabaseAccess leaving list...");

  v2 = *(v0 + 8);

  return v2();
}

uint64_t VectorDatabaseAccess.list(namespace:searchKey:)(uint64_t a1)
{
  v3 = *v2;
  v3[23] = a1;
  v3[24] = v1;

  if (v1)
  {
    v4 = v3[10];
    v5 = VectorDatabaseAccess.list(namespace:searchKey:);
  }

  else
  {
    v6 = v3[21];
    v7 = v3[10];
    swift_setDeallocating();
    outlined destroy of String(v6 + 32);
    v5 = VectorDatabaseAccess.list(namespace:searchKey:);
    v4 = v7;
  }

  return MEMORY[0x2822009F8](v5, v4, 0);
}

uint64_t VectorDatabaseAccess.search(byVector:)(uint64_t a1, uint64_t a2)
{
  v40 = type metadata accessor for VectorDatabaseError();
  v3 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v5 = (&v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for OSSignpostID();
  v41 = *(v6 - 8);
  v42 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v36 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v9 = static Logger.log;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v10 = dispatch thunk of VectorDatabaseClient.search(byVector:attributeFilters:limit:includePayload:numberOfProbes:batchSize:numConcurrentReaders:)();
  if (v2)
  {
    v44 = v2;
    v11 = v2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v12 = v40;
    if (swift_dynamicCast())
    {
      v13 = v3;
      v14 = (*(v3 + 88))(v5, v12);
      v15 = *MEMORY[0x277D781B0];
      v39 = v14;
      if (v14 == v15)
      {

        (*(v3 + 96))(v5, v12);
        v16 = *v5;
        v17 = v5[1];
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v18 = type metadata accessor for Logger();
        __swift_project_value_buffer(v18, static Logger.logger);

        v19 = Logger.logObject.getter();
        v20 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v19, v20))
        {
          v21 = swift_slowAlloc();
          v38 = v10;
          v22 = v21;
          v23 = swift_slowAlloc();
          v43 = v23;
          *v22 = 136315138;
          *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, &v43);
          _os_log_impl(&dword_255A20000, v19, v20, "Failed to search assets due to search failure, error detail: %s", v22, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v23);
          v24 = v23;
          v12 = v40;
          MEMORY[0x259C47EC0](v24, -1, -1);
          v25 = v22;
          v10 = v38;
          MEMORY[0x259C47EC0](v25, -1, -1);
        }
      }

      else
      {
        if (v39 != *MEMORY[0x277D781B8])
        {
          (*(v3 + 8))(v5, v12);
          goto LABEL_19;
        }

        (*(v3 + 96))(v5, v12);
        v26 = *v5;
        v17 = v5[1];
        v38 = v26;
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v27 = type metadata accessor for Logger();
        __swift_project_value_buffer(v27, static Logger.logger);

        v28 = Logger.logObject.getter();
        v29 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v28, v29))
        {
          v30 = swift_slowAlloc();
          v37 = v17;
          v31 = v30;
          v32 = swift_slowAlloc();
          v43 = v32;
          *v31 = 136315138;
          *(v31 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v37, &v43);
          _os_log_impl(&dword_255A20000, v28, v29, "Failed to search assets due to client failure, error detail: %s", v31, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v32);
          MEMORY[0x259C47EC0](v32, -1, -1);
          v33 = v31;
          v17 = v37;
          MEMORY[0x259C47EC0](v33, -1, -1);
        }

        v16 = v38;
      }

      lazy protocol witness table accessor for type AnnotatedCacheEntry and conformance AnnotatedCacheEntry(&lazy protocol witness table cache variable for type VectorDatabaseError and conformance VectorDatabaseError, MEMORY[0x277D781D0], MEMORY[0x277D781D8]);
      swift_allocError();
      *v34 = v16;
      v34[1] = v17;
      (*(v13 + 104))(v34, v39, v12);
      swift_willThrow();
    }

LABEL_19:
  }

  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v41 + 8))(v8, v42);
  return v10;
}

void *VectorDatabaseAccess.listAll(namespace:nextToken:)(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8LLMCache19AnnotatedCacheEntryVSgMd, &_s8LLMCache19AnnotatedCacheEntryVSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v67 - v10;
  v74 = type metadata accessor for AnnotatedCacheEntry(0);
  v70 = *(v74 - 8);
  v12 = MEMORY[0x28223BE20](v74);
  v73 = &v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v72 = &v67 - v14;
  v87 = type metadata accessor for Asset();
  v78 = *(v87 - 8);
  v15 = MEMORY[0x28223BE20](v87);
  v17 = &v67 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v82 = &v67 - v18;
  v19 = *a1;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v76 = v17;
  v20 = type metadata accessor for Logger();
  v77 = __swift_project_value_buffer(v20, static Logger.logger);
  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_255A20000, v21, v22, "VectorDatabaseAccess entering listAll...", v23, 2u);
    MEMORY[0x259C47EC0](v23, -1, -1);
  }

  v24 = VectorDatabaseAccess.listAll(identifiers:pagination:)(0, a2, a3, 0);
  v85 = v4;
  if (v4)
  {
LABEL_6:
    $defer #1 () in VectorDatabaseAccess.delete(entries:)("VectorDatabaseAccess leaving listAll...");
    return v75;
  }

  v68 = v19;
  v69 = v5;
  v26 = *(v24 + 16);
  if (!v26)
  {

    v53 = MEMORY[0x277D84F90];
    v75 = MEMORY[0x277D84F90];
    goto LABEL_30;
  }

  v84 = *(v78 + 16);
  v27 = (*(v78 + 80) + 32) & ~*(v78 + 80);
  v67 = v24;
  v28 = v24 + v27;
  v29 = *(v78 + 72);
  v79 = (v70 + 56);
  v80 = v29;
  v83 = (v78 + 8);
  *&v25 = 134217984;
  v71 = v25;
  v75 = MEMORY[0x277D84F90];
  v81 = MEMORY[0x277D84F90];
  v30 = v74;
  v31 = v87;
  v32 = v82;
  v78 += 16;
  do
  {
    v86 = v26;
    v84(v32, v28, v31);
    v33 = Asset.payload.getter();
    if (v34 >> 60 == 15)
    {
      goto LABEL_16;
    }

    v35 = v33;
    v36 = v34;
    if (one-time initialization token for jsonDecoder != -1)
    {
      swift_once();
    }

    lazy protocol witness table accessor for type AnnotatedCacheEntry and conformance AnnotatedCacheEntry(&lazy protocol witness table cache variable for type AnnotatedCacheEntry and conformance AnnotatedCacheEntry, type metadata accessor for AnnotatedCacheEntry, &protocol conformance descriptor for AnnotatedCacheEntry);
    v37 = v85;
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();
    v85 = v37;
    if (v37)
    {

      outlined consume of Data._Representation?(v35, v36);
      v85 = 0;
LABEL_16:
      (*v79)(v11, 1, 1, v30);
      outlined destroy of AnnotatedCacheEntry?(v11, &_s8LLMCache19AnnotatedCacheEntryVSgMd, &_s8LLMCache19AnnotatedCacheEntryVSgMR);
      v38 = v76;
      v84(v76, v82, v31);
      v39 = Logger.logObject.getter();
      v40 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = v71;
        v42 = Asset.identifier.getter();
        v43 = *v83;
        (*v83)(v38, v31);
        *(v41 + 4) = v42;
        _os_log_impl(&dword_255A20000, v39, v40, "Asset with id %lld either does not have payload or payload fails to be decoded", v41, 0xCu);
        v44 = v41;
        v30 = v74;
        MEMORY[0x259C47EC0](v44, -1, -1);
      }

      else
      {
        v43 = *v83;
        (*v83)(v38, v31);
      }

      v32 = v82;
      v45 = Asset.identifier.getter();
      v46 = v81;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v46 + 2) + 1, 1, v46);
      }

      v48 = *(v46 + 2);
      v47 = *(v46 + 3);
      if (v48 >= v47 >> 1)
      {
        v46 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v47 > 1), v48 + 1, 1, v46);
      }

      v43(v32, v87);
      *(v46 + 2) = v48 + 1;
      v81 = v46;
      *&v46[8 * v48 + 32] = v45;
      goto LABEL_10;
    }

    outlined consume of Data._Representation?(v35, v36);
    (*v79)(v11, 0, 1, v30);
    v49 = v72;
    outlined init with take of AnnotatedCacheEntry(v11, v72);
    outlined init with copy of AnnotatedCacheEntry(v49, v73);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v75[2] + 1, 1, v75);
    }

    v51 = v75[2];
    v50 = v75[3];
    if (v51 >= v50 >> 1)
    {
      v75 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v50 > 1), v51 + 1, 1, v75);
    }

    outlined destroy of AnnotatedCacheEntry(v72);
    (*v83)(v32, v87);
    v52 = v75;
    v75[2] = v51 + 1;
    outlined init with take of AnnotatedCacheEntry(v73, v52 + ((*(v70 + 80) + 32) & ~*(v70 + 80)) + *(v70 + 72) * v51);
LABEL_10:
    v28 += v80;
    v31 = v87;
    v26 = v86 - 1;
  }

  while (v86 != 1);

  v53 = v81;
LABEL_30:
  if (*(v53 + 16))
  {
    v54 = v85;
    VectorDatabaseAccess.delete(identifiers:)(v53);
    v85 = v54;
    if (v54)
    {

      goto LABEL_6;
    }
  }

  v55 = Logger.logObject.getter();
  v56 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v58 = swift_slowAlloc();
    v59 = v75;
    v60 = v58;
    v88 = v58;
    *v57 = 134218242;
    *(v57 + 4) = v59[2];
    *(v57 + 12) = 2080;
    v61 = 0xE400000000000000;
    v62 = 1819047270;
    if (v68 != 1)
    {
      v62 = 0xD000000000000012;
      v61 = 0x8000000255A4D5C0;
    }

    if (v68)
    {
      v63 = v62;
    }

    else
    {
      v63 = 1953718630;
    }

    if (v68)
    {
      v64 = v61;
    }

    else
    {
      v64 = 0xE400000000000000;
    }

    v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v64, &v88);

    *(v57 + 14) = v65;

    _os_log_impl(&dword_255A20000, v55, v56, "Found %ld entries that match the requested namespace %s", v57, 0x16u);
    __swift_destroy_boxed_opaque_existential_0Tm(v60);
    MEMORY[0x259C47EC0](v60, -1, -1);
    MEMORY[0x259C47EC0](v57, -1, -1);
  }

  else
  {
  }

  $defer #1 () in VectorDatabaseAccess.delete(entries:)("VectorDatabaseAccess leaving listAll...");
  return v75;
}

uint64_t VectorDatabaseAccess.listAll(identifiers:pagination:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = type metadata accessor for VectorDatabaseError();
  v30 = *(v5 - 8);
  v31 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v28[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = type metadata accessor for OSSignpostID();
  v32 = *(v8 - 8);
  v33 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v28[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v11 = static Logger.log;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  v12 = dispatch thunk of VectorDatabaseClient.getAssets(identifiers:attributeFilters:pagination:orderBy:includeVectors:)();
  if (v4)
  {
    v35 = v4;
    v13 = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v14 = v31;
    if (swift_dynamicCast())
    {
      v15 = v30;
      v16 = (*(v30 + 88))(v7, v14);
      if (v16 == *MEMORY[0x277D781B8])
      {
        v29 = v16;

        (*(v15 + 96))(v7, v14);
        v17 = *v7;
        v18 = v7[1];
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v19 = type metadata accessor for Logger();
        __swift_project_value_buffer(v19, static Logger.logger);

        v20 = Logger.logObject.getter();
        v21 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v20, v21))
        {
          v22 = swift_slowAlloc();
          v23 = swift_slowAlloc();
          v34 = v23;
          *v22 = 136315138;
          *(v22 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v34);
          _os_log_impl(&dword_255A20000, v20, v21, "Failed to get all assets, error detail: %s", v22, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v23);
          v24 = v23;
          v15 = v30;
          MEMORY[0x259C47EC0](v24, -1, -1);
          v25 = v22;
          v14 = v31;
          MEMORY[0x259C47EC0](v25, -1, -1);
        }

        lazy protocol witness table accessor for type AnnotatedCacheEntry and conformance AnnotatedCacheEntry(&lazy protocol witness table cache variable for type VectorDatabaseError and conformance VectorDatabaseError, MEMORY[0x277D781D0], MEMORY[0x277D781D8]);
        swift_allocError();
        *v26 = v17;
        v26[1] = v18;
        (*(v15 + 104))(v26, v29, v14);
        swift_willThrow();
      }

      else
      {
        (*(v15 + 8))(v7, v14);
      }
    }
  }

  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v32 + 8))(v10, v33);
  return v12;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VectorDatabaseAccess.deleteAll(namespace:)(LLMCache::CacheNamespace a1)
{
  v2 = type metadata accessor for VectorDatabaseError();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v6 = type metadata accessor for Logger();
  __swift_project_value_buffer(v6, static Logger.logger);
  v7 = Logger.logObject.getter();
  v8 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    *v9 = 0;
    _os_log_impl(&dword_255A20000, v7, v8, "VectorDatabaseAccess entering deleteAll...", v9, 2u);
    MEMORY[0x259C47EC0](v9, -1, -1);
  }

  dispatch thunk of VectorDatabaseClient.deleteAll()();
  if (v1)
  {
    v22 = v1;
    v10 = v1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {
      v11 = (*(v3 + 88))(v5, v2);
      if (v11 == *MEMORY[0x277D781B8])
      {
        v12 = v11;

        (*(v3 + 96))(v5, v2);
        v14 = *v5;
        v13 = v5[1];

        v15 = Logger.logObject.getter();
        v16 = static os_log_type_t.error.getter();

        if (os_log_type_enabled(v15, v16))
        {
          v17 = swift_slowAlloc();
          v18 = swift_slowAlloc();
          v21 = v18;
          *v17 = 136315138;
          *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v13, &v21);
          _os_log_impl(&dword_255A20000, v15, v16, "Failed to delete all assets, error detail: %s", v17, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v18);
          MEMORY[0x259C47EC0](v18, -1, -1);
          MEMORY[0x259C47EC0](v17, -1, -1);
        }

        lazy protocol witness table accessor for type AnnotatedCacheEntry and conformance AnnotatedCacheEntry(&lazy protocol witness table cache variable for type VectorDatabaseError and conformance VectorDatabaseError, MEMORY[0x277D781D0], MEMORY[0x277D781D8]);
        swift_allocError();
        *v19 = v14;
        v19[1] = v13;
        (*(v3 + 104))(v19, v12, v2);
        swift_willThrow();
      }

      else
      {
        (*(v3 + 8))(v5, v2);
      }
    }
  }

  $defer #1 () in VectorDatabaseAccess.delete(entries:)("VectorDatabaseAccess leaving deleteAll...");
}

void $defer #1 () in VectorDatabaseAccess.delete(entries:)(const char *a1)
{
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.logger);
  oslog = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(oslog, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_255A20000, oslog, v3, a1, v4, 2u);
    MEMORY[0x259C47EC0](v4, -1, -1);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VectorDatabaseAccess.warmup()()
{
  v8 = type metadata accessor for OSSignpostID();
  v1 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for log != -1)
  {
    swift_once();
  }

  v4 = static Logger.log;
  OSSignpostID.init(log:)();
  static os_signpost_type_t.begin.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  dispatch thunk of VectorDatabaseClient.warmup(numConcurrentReaders:)();
  v6 = v0[17];
  v5 = v0[18];
  __swift_project_boxed_opaque_existential_1(v0 + 14, v6);
  (*(v5 + 16))(v6, v5);
  static os_signpost_type_t.end.getter();
  os_signpost(_:dso:log:name:signpostID:)();
  (*(v1 + 8))(v3, v8);
}

uint64_t protocol witness for CacheDatabase.delete(entries:) in conformance VectorDatabaseAccess(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](protocol witness for CacheDatabase.delete(entries:) in conformance VectorDatabaseAccess, v3, 0);
}

uint64_t protocol witness for CacheDatabase.delete(entries:) in conformance VectorDatabaseAccess()
{
  VectorDatabaseAccess.delete(entries:)(v0[2]);
  rawValue = v0[1]._rawValue;

  return rawValue();
}

uint64_t protocol witness for CacheDatabase.describe(identifier:) in conformance VectorDatabaseAccess(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  return MEMORY[0x2822009F8](protocol witness for CacheDatabase.describe(identifier:) in conformance VectorDatabaseAccess, v5, 0);
}

uint64_t protocol witness for CacheDatabase.describe(identifier:) in conformance VectorDatabaseAccess()
{
  VectorDatabaseAccess.describe(identifier:)(v0[3], v0[4], v0[2]);
  v1 = v0[1];

  return v1();
}

uint64_t protocol witness for CacheDatabase.insert(entries:) in conformance VectorDatabaseAccess(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = dispatch thunk of CacheDatabase.delete(entries:);

  return VectorDatabaseAccess.insert(entries:)(a1);
}

uint64_t protocol witness for CacheDatabase.list(namespace:searchKey:) in conformance VectorDatabaseAccess(_BYTE *a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for CacheDatabase.list(namespace:searchKey:) in conformance VectorDatabaseAccess;

  return VectorDatabaseAccess.list(namespace:searchKey:)(a1, a2, a3);
}

uint64_t protocol witness for CacheDatabase.listAll(namespace:nextToken:) in conformance VectorDatabaseAccess(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  v4[3] = a2;
  v5 = *v3;
  v4[4] = a3;
  v4[5] = v5;
  return MEMORY[0x2822009F8](protocol witness for CacheDatabase.listAll(namespace:nextToken:) in conformance VectorDatabaseAccess, v5, 0);
}

uint64_t protocol witness for CacheDatabase.listAll(namespace:nextToken:) in conformance VectorDatabaseAccess()
{
  v1 = VectorDatabaseAccess.listAll(namespace:nextToken:)(*(v0 + 16), *(v0 + 24), *(v0 + 32));
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t protocol witness for CacheDatabase.deleteAll(namespace:) in conformance VectorDatabaseAccess(uint64_t a1)
{
  v3 = *v1;
  *(v2 + 16) = a1;
  *(v2 + 24) = v3;
  return MEMORY[0x2822009F8](protocol witness for CacheDatabase.deleteAll(namespace:) in conformance VectorDatabaseAccess, v3, 0);
}

uint64_t protocol witness for CacheDatabase.deleteAll(namespace:) in conformance VectorDatabaseAccess(LLMCache::CacheNamespace a1)
{
  VectorDatabaseAccess.deleteAll(namespace:)(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t protocol witness for CacheDatabase.warmup() in conformance VectorDatabaseAccess()
{
  v2 = *v0;
  *(v1 + 16) = *v0;
  return MEMORY[0x2822009F8](protocol witness for CacheDatabase.warmup() in conformance VectorDatabaseAccess, v2, 0);
}

{
  VectorDatabaseAccess.warmup()();
  v1 = *(v0 + 8);

  return v1();
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, uint64_t a3)
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

uint64_t static String._copying(_:)(uint64_t a1, unint64_t a2)
{
  v2 = String.subscript.getter();
  v6 = static String._copying(_:)(v2, v3, v4, v5);

  return v6;
}

uint64_t static String._copying(_:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = Substring.UTF8View.distance(from:to:)();
    if (!v9 || (v10 = v9, v11 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v9, 0), v12 = specialized Sequence._copySequenceContents(initializing:)(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = static String._uncheckedFromUTF8(_:)();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return static String._uncheckedFromUTF8(_:)();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  _StringObject.sharedUTF8.getter();
LABEL_4:

  return static String._uncheckedFromUTF8(_:)();
}

unint64_t specialized Sequence._copySequenceContents(initializing:)(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = String.UTF8View._foreignSubscript(position:)();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

unint64_t _StringGuts._slowEnsureMatchingEncoding(_:)(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = String.UTF16View.index(_:offsetBy:)();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x259C476B0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  type metadata accessor for VectorDatabaseAttribute();
  lazy protocol witness table accessor for type AnnotatedCacheEntry and conformance AnnotatedCacheEntry(&lazy protocol witness table cache variable for type VectorDatabaseAttribute and conformance VectorDatabaseAttribute, MEMORY[0x277D78248], MEMORY[0x277D78250]);
  v2 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = type metadata accessor for VectorDatabaseAttribute();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
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
      lazy protocol witness table accessor for type AnnotatedCacheEntry and conformance AnnotatedCacheEntry(&lazy protocol witness table cache variable for type VectorDatabaseAttribute and conformance VectorDatabaseAttribute, MEMORY[0x277D78248], MEMORY[0x277D78258]);
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

uint64_t specialized static VectorDatabaseAccess.persistDimension(_:at:)(uint64_t a1)
{
  v57 = a1;
  v1 = type metadata accessor for String.Encoding();
  v54 = *(v1 - 8);
  v55 = v1;
  MEMORY[0x28223BE20](v1);
  v3 = &v52 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for URL.DirectoryHint();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for URL();
  v56 = *(v58 - 8);
  v8 = MEMORY[0x28223BE20](v58);
  v52 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v12 = &v52 - v11;
  MEMORY[0x28223BE20](v10);
  v14 = &v52 - v13;
  strcpy(v59, "dimension.txt");
  HIWORD(v59[1]) = -4864;
  (*(v5 + 104))(v7, *MEMORY[0x277CC91D8], v4);
  lazy protocol witness table accessor for type String and conformance String();
  URL.appending<A>(component:directoryHint:)();
  (*(v5 + 8))(v7, v4);
  v59[0] = v57;
  v59[0] = dispatch thunk of CustomStringConvertible.description.getter();
  v59[1] = v15;
  static String.Encoding.utf8.getter();
  v16 = v53;
  StringProtocol.write(to:atomically:encoding:)();
  if (v16)
  {
    (*(v54 + 8))(v3, v55);

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v17 = type metadata accessor for Logger();
    __swift_project_value_buffer(v17, static Logger.logger);
    v18 = v56;
    v19 = v52;
    v20 = v58;
    (*(v56 + 16))(v52, v14, v58);
    v21 = v16;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v53 = v16;
      v25 = v18;
      v26 = v24;
      v55 = swift_slowAlloc();
      v59[0] = v55;
      *v26 = 134218498;
      *(v26 + 4) = v57;
      *(v26 + 12) = 2080;
      v27 = URL.absoluteString.getter();
      v29 = v28;
      v30 = *(v25 + 8);
      v30(v19, v58);
      v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v29, v59);

      *(v26 + 14) = v31;
      *(v26 + 22) = 2080;
      swift_getErrorValue();
      v32 = Error.localizedDescription.getter();
      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v33, v59);

      *(v26 + 24) = v34;
      _os_log_impl(&dword_255A20000, v22, v23, "Failed to persist dimension %ld at path %s, file cannot be created, error: %s", v26, 0x20u);
      v35 = v55;
      swift_arrayDestroy();
      MEMORY[0x259C47EC0](v35, -1, -1);
      v20 = v58;
      MEMORY[0x259C47EC0](v26, -1, -1);
    }

    else
    {

      v30 = *(v18 + 8);
      v30(v19, v20);
    }

    swift_willThrow();
    return (v30)(v14, v20);
  }

  else
  {
    v53 = 0;
    (*(v54 + 8))(v3, v55);

    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v36 = type metadata accessor for Logger();
    __swift_project_value_buffer(v36, static Logger.logger);
    v37 = v56;
    v38 = v58;
    (*(v56 + 16))(v12, v14, v58);
    v39 = v14;
    v40 = Logger.logObject.getter();
    v41 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v40, v41))
    {
      v42 = swift_slowAlloc();
      v43 = swift_slowAlloc();
      v59[0] = v43;
      *v42 = 134218242;
      *(v42 + 4) = v57;
      *(v42 + 12) = 2080;
      v57 = v39;
      v44 = URL.absoluteString.getter();
      v45 = v37;
      v47 = v46;
      v48 = *(v45 + 8);
      v48(v12, v38);
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v47, v59);

      *(v42 + 14) = v49;
      _os_log_impl(&dword_255A20000, v40, v41, "Persisted dimension %ld at path %s, new file created", v42, 0x16u);
      __swift_destroy_boxed_opaque_existential_0Tm(v43);
      MEMORY[0x259C47EC0](v43, -1, -1);
      MEMORY[0x259C47EC0](v42, -1, -1);

      return (v48)(v57, v38);
    }

    else
    {

      v51 = *(v37 + 8);
      v51(v12, v38);
      return (v51)(v39, v38);
    }
  }
}

uint64_t specialized static VectorDatabaseAccess.updatePerisistedDimension(_:at:)(uint64_t a1, uint64_t a2)
{
  v84[2] = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = type metadata accessor for URL.DirectoryHint();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v77 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for URL();
  v82 = *(v10 - 8);
  v83 = v10;
  v11 = MEMORY[0x28223BE20](v10);
  v80 = &v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v81 = (&v77 - v14);
  MEMORY[0x28223BE20](v13);
  v16 = (&v77 - v15);
  strcpy(v84, "dimension.txt");
  HIWORD(v84[1]) = -4864;
  (*(v7 + 104))(v9, *MEMORY[0x277CC91D8], v6);
  lazy protocol witness table accessor for type String and conformance String();
  URL.appending<A>(component:directoryHint:)();
  (*(v7 + 8))(v9, v6);
  v17 = objc_opt_self();
  v18 = [v17 defaultManager];
  countAndFlagsBits = URL.path(percentEncoded:)(1)._countAndFlagsBits;
  v20 = MEMORY[0x259C47620](countAndFlagsBits);

  v21 = [v18 fileExistsAtPath_];

  if (!v21)
  {
    specialized static VectorDatabaseAccess.persistDimension(_:at:)(a1);
    return (*(v82 + 8))(v16, v83);
  }

  v79 = a2;
  static String.Encoding.utf8.getter();
  v22 = String.init(contentsOf:encoding:)();
  if (v2)
  {
    return (*(v82 + 8))(v16, v83);
  }

  v24 = v22;
  v25 = v23;
  v84[0] = a1;
  if (v22 == dispatch thunk of CustomStringConvertible.description.getter() && v25 == v26)
  {

    v27 = v83;
    v28 = v81;
LABEL_10:

    v31 = v82;
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logger.logger);
    (*(v31 + 16))(v28, v16, v27);
    v33 = Logger.logObject.getter();
    v34 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      LODWORD(v83) = v34;
      v36 = v35;
      v81 = swift_slowAlloc();
      v84[0] = v81;
      *v36 = 134218242;
      *(v36 + 4) = a1;
      *(v36 + 12) = 2080;
      v37 = URL.absoluteString.getter();
      v38 = v31;
      v40 = v39;
      v41 = *(v38 + 8);
      v41(v28);
      v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v40, v84);

      *(v36 + 14) = v42;
      _os_log_impl(&dword_255A20000, v33, v83, "Dimension %ld at path %s has not changed", v36, 0x16u);
      v43 = v81;
      __swift_destroy_boxed_opaque_existential_0Tm(v81);
      MEMORY[0x259C47EC0](v43, -1, -1);
      MEMORY[0x259C47EC0](v36, -1, -1);

      return (v41)(v16, v27);
    }

    else
    {

      v44 = *(v31 + 8);
      v44(v28, v27);
      return (v44)(v16, v27);
    }
  }

  v30 = _stringCompareWithSmolCheck(_:_:expecting:)();

  v28 = v81;
  if (v30)
  {
    v27 = v83;
    goto LABEL_10;
  }

  v78 = v24;
  v81 = v16;
  v45 = [v17 defaultManager];
  v46 = v79;
  URL._bridgeToObjectiveC()(v47);
  v49 = v48;
  v84[0] = 0;
  v50 = [v45 removeItemAtURL:v48 error:v84];

  v51 = v84[0];
  if (v50 && (v52 = v84[0], v53 = [v17 defaultManager], URL._bridgeToObjectiveC()(v54), v56 = v55, v84[0] = 0, v57 = objc_msgSend(v53, sel_createDirectoryAtURL_withIntermediateDirectories_attributes_error_, v55, 1, 0, v84), v53, v56, v51 = v84[0], v57))
  {
    v58 = one-time initialization token for logger;
    v59 = v84[0];
    v60 = v82;
    if (v58 != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    __swift_project_value_buffer(v61, static Logger.logger);
    v62 = v80;
    (*(v60 + 16))(v80, v46, v83);

    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.info.getter();

    v65 = os_log_type_enabled(v63, v64);
    v66 = v78;
    if (v65)
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v84[0] = v68;
      *v67 = 136315394;
      v69 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v66, v25, v84);

      *(v67 + 4) = v69;
      *(v67 + 12) = 2080;
      v70 = URL.absoluteString.getter();
      v72 = v71;
      LODWORD(v78) = v64;
      v73 = *(v82 + 8);
      v73(v62, v83);
      v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v70, v72, v84);

      *(v67 + 14) = v74;
      _os_log_impl(&dword_255A20000, v63, v78, "Removed previous dimension %s and db file at path %s", v67, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x259C47EC0](v68, -1, -1);
      MEMORY[0x259C47EC0](v67, -1, -1);
    }

    else
    {

      v73 = *(v60 + 8);
      v73(v62, v83);
    }

    v76 = v81;
    specialized static VectorDatabaseAccess.persistDimension(_:at:)(a1);
    return (v73)(v76, v83);
  }

  else
  {
    v75 = v51;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    return (*(v82 + 8))(v81, v83);
  }
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC12VectorSearch0C17DatabaseAttributeV_AC0E5ValueOTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12VectorSearch0A17DatabaseAttributeV_AA0C5ValueOtMd, &_s12VectorSearch0A17DatabaseAttributeV_AA0C5ValueOtMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy12VectorSearch0C17DatabaseAttributeVAC0E5ValueOGMd, &_ss18_DictionaryStorageCy12VectorSearch0C17DatabaseAttributeVAC0E5ValueOGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      outlined init with copy of (VectorDatabaseAttribute, DatabaseValue)(v9, v5);
      result = specialized __RawDictionaryStorage.find<A>(_:)(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = type metadata accessor for VectorDatabaseAttribute();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for DatabaseValue();
      result = (*(*(v17 - 8) + 32))(v16 + *(*(v17 - 8) + 72) * v13, &v5[v8], v17);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t dispatch thunk of VectorDatabaseAccess.__allocating_init(path:embeddingProvider:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(v2 + 104) + **(v2 + 104));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = dispatch thunk of CacheDatabase.listAll(namespace:nextToken:);

  return v8(a1, a2);
}

uint64_t dispatch thunk of VectorDatabaseAccess.insert(entries:)(uint64_t a1)
{
  v6 = (*(*v1 + 136) + **(*v1 + 136));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of CacheDatabase.delete(entries:);

  return v6(a1);
}

uint64_t dispatch thunk of VectorDatabaseAccess.list(namespace:searchKey:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 160) + **(*v3 + 160));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = dispatch thunk of CacheDatabase.list(namespace:searchKey:);

  return v10(a1, a2, a3);
}

uint64_t outlined init with copy of (VectorDatabaseAttribute, DatabaseValue)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12VectorSearch0A17DatabaseAttributeV_AA0C5ValueOtMd, &_s12VectorSearch0A17DatabaseAttributeV_AA0C5ValueOtMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type AnnotatedCacheEntry and conformance AnnotatedCacheEntry(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Int EmbeddingError.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x259C479E0](a1);
  return Hasher._finalize()();
}

uint64_t dispatch thunk of EmbeddingProviding.dimension()(uint64_t a1, uint64_t a2)
{
  v7 = (*(a2 + 8) + **(a2 + 8));
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for EmbeddingProviding.dimension() in conformance UniversalEmbeddingProvider;

  return v7(a1, a2);
}

uint64_t dispatch thunk of EmbeddingProviding.embedding(input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 24) + **(a4 + 24));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = dispatch thunk of EmbeddingProviding.embedding(input:);

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of EmbeddingProviding.embedding(input:)(uint64_t a1, uint64_t a2)
{
  v7 = *v2;

  v5 = *(v7 + 8);

  return v5(a1, a2);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for NextToken(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for NextToken(uint64_t result, int a2, int a3)
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

uint64_t AnnotatedCacheEntry.builder()()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  MEMORY[0x28223BE20](v1 - 8);
  v68 = v54 - v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v54 - v4;
  v6 = v0[1];
  v58 = *v0;
  v54[1] = v6;
  v69 = v0;
  v7 = type metadata accessor for AnnotatedCacheEntry(0);
  v57 = *(v0 + v7[7]);
  type metadata accessor for AnnotatedCacheEntryBuilder(0);
  v8 = swift_allocObject();
  v9 = OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_lastAccessedTime;
  v56 = OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_lastAccessedTime;
  v10 = type metadata accessor for Date();
  v11 = *(v10 - 8);
  v12 = *(v11 + 56);
  v55 = v12;
  v12(v8 + v9, 1, 1, v10);
  v67 = OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_lastCreatedTime;
  v12(v8 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_lastCreatedTime, 1, 1, v10);
  v13 = (v8 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_llmOutput);
  v59 = (v8 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_llmOutput);
  *v13 = 0;
  v13[1] = 0;
  v14 = v8 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_ttl;
  *v14 = 0;
  v63 = v14;
  *(v14 + 8) = 1;
  v15 = OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_userId;
  v16 = type metadata accessor for UserID();
  v17 = *(v16 - 8);
  v18 = *(v17 + 56);
  v66 = v15;
  v64 = v16;
  v62 = v17 + 56;
  v60 = v17;
  v61 = v18;
  (v18)(v8 + v15, 1, 1);
  v19 = v8 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_score;
  *v19 = 0;
  v65 = v19;
  *(v19 + 8) = 1;
  *(v8 + 16) = v58;
  *(v8 + 24) = v6;
  *(v8 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_namespace) = v57;
  v20 = OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_searchKeys;
  *(v8 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_searchKeys) = MEMORY[0x277D84F90];
  v21 = v7[5];
  v22 = *(v11 + 16);
  v58 = v11 + 16;
  v23 = v69;
  v24 = v5;
  v22(v5, &v69[v21], v10);
  v25 = v55;
  v55(v5, 0, 1, v10);
  v26 = v56;
  swift_beginAccess();

  outlined assign with take of Date?(v24, v8 + v26, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  swift_endAccess();
  v22(v24, &v23[v7[6]], v10);
  v25(v24, 0, 1, v10);
  v27 = v67;
  swift_beginAccess();
  outlined assign with take of Date?(v24, v8 + v27, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  swift_endAccess();
  v28 = &v23[v7[8]];
  v30 = *v28;
  v29 = v28[1];
  v31 = v59;
  swift_beginAccess();
  *v31 = v30;
  v31[1] = v29;
  v67 = v7;
  v32 = *&v23[v7[9]];
  v33 = *(v32 + 16);
  if (v33)
  {

    v35 = (v32 + 40);
    v36 = MEMORY[0x277D84F90];
    do
    {
      v38 = *(v35 - 1);
      v37 = *v35;
      v70[0] = v38;
      v70[1] = v37;
      MEMORY[0x28223BE20](v34);
      v54[-2] = v70;

      v39 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, &v54[-4], v36);

      if (v39)
      {
      }

      else
      {
        swift_beginAccess();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v36 + 2) + 1, 1, v36);
        }

        v41 = *(v36 + 2);
        v40 = *(v36 + 3);
        if (v41 >= v40 >> 1)
        {
          v36 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1, v36);
        }

        *(v36 + 2) = v41 + 1;
        v42 = &v36[16 * v41];
        *(v42 + 4) = v38;
        *(v42 + 5) = v37;
        *(v8 + v20) = v36;
        v34 = swift_endAccess();
      }

      v35 += 2;
      --v33;
    }

    while (v33);
  }

  else
  {
  }

  v43 = v67;
  v44 = v69;
  v45 = *&v69[*(v67 + 40)];
  v46 = v63;
  swift_beginAccess();
  *v46 = v45;
  *(v46 + 8) = 0;
  v47 = v68;
  v48 = v64;
  (*(v60 + 16))(v68, &v44[*(v43 + 44)], v64);
  v61(v47, 0, 1, v48);
  v49 = v66;
  swift_beginAccess();
  outlined assign with take of Date?(v47, v8 + v49, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  swift_endAccess();
  v50 = &v44[*(v43 + 48)];
  v51 = *v50;
  LOBYTE(v44) = v50[8];
  v52 = v65;
  swift_beginAccess();
  *v52 = v51;
  *(v52 + 8) = v44;
  return v8;
}

LLMCache::CacheEntry __swiftcall AnnotatedCacheEntry.toCacheEntry(searchKey:)(Swift::String searchKey)
{
  object = searchKey._object;
  countAndFlagsBits = searchKey._countAndFlagsBits;
  v5 = v1;
  v6 = type metadata accessor for AnnotatedCacheEntry(0);
  v7 = (v2 + *(v6 + 32));
  v9 = *v7;
  v8 = v7[1];
  v10 = *(v2 + *(v6 + 36));
  v15[0] = countAndFlagsBits;
  v15[1] = object;
  v14[2] = v15;

  v11 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v14, v10);
  *v5 = v9;
  *(v5 + 8) = v8;
  *(v5 + 16) = v11 & 1;
  result.llmOutput._object = v12;
  result.llmOutput._countAndFlagsBits = v11;
  result.isExactMatch = v13;
  return result;
}

uint64_t AnnotatedCacheEntryBuilder.__allocating_init(id:namespace:)(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = swift_allocObject();
  AnnotatedCacheEntryBuilder.init(id:namespace:)(a1, a2, a3);
  return v6;
}

id one-time initialization function for dateFormatter()
{
  result = [objc_allocWithZone(MEMORY[0x277CCAA68]) init];
  static AnnotatedCacheEntry.dateFormatter = result;
  return result;
}

uint64_t *AnnotatedCacheEntry.dateFormatter.unsafeMutableAddressor()
{
  if (one-time initialization token for dateFormatter != -1)
  {
    swift_once();
  }

  return &static AnnotatedCacheEntry.dateFormatter;
}

id static AnnotatedCacheEntry.dateFormatter.getter()
{
  if (one-time initialization token for dateFormatter != -1)
  {
    swift_once();
  }

  v1 = static AnnotatedCacheEntry.dateFormatter;

  return v1;
}

uint64_t AnnotatedCacheEntry.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AnnotatedCacheEntry.lastAccessedTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AnnotatedCacheEntry(0) + 20);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AnnotatedCacheEntry.lastCreatedTime.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AnnotatedCacheEntry(0) + 24);
  v4 = type metadata accessor for Date();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t AnnotatedCacheEntry.namespace.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for AnnotatedCacheEntry(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t AnnotatedCacheEntry.llmOutput.getter()
{
  v1 = *(v0 + *(type metadata accessor for AnnotatedCacheEntry(0) + 32));

  return v1;
}

uint64_t AnnotatedCacheEntry.searchKeys.getter()
{
  type metadata accessor for AnnotatedCacheEntry(0);
}

uint64_t AnnotatedCacheEntry.userId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for AnnotatedCacheEntry(0) + 44);
  v4 = type metadata accessor for UserID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

Swift::String __swiftcall AnnotatedCacheEntry.getLastAccessedTimeString()()
{
  if (one-time initialization token for dateFormatter != -1)
  {
    swift_once();
  }

  v0 = static AnnotatedCacheEntry.dateFormatter;
  type metadata accessor for AnnotatedCacheEntry(0);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v2 = [v0 stringFromDate_];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

Swift::String __swiftcall AnnotatedCacheEntry.getLastCreatedTimeString()()
{
  if (one-time initialization token for dateFormatter != -1)
  {
    swift_once();
  }

  v0 = static AnnotatedCacheEntry.dateFormatter;
  type metadata accessor for AnnotatedCacheEntry(0);
  isa = Date._bridgeToObjectiveC()().super.isa;
  v2 = [v0 stringFromDate_];

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  v6 = v3;
  v7 = v5;
  result._object = v7;
  result._countAndFlagsBits = v6;
  return result;
}

uint64_t _sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  if (v2 != *(a2 + 16))
  {
    return 0;
  }

  if (v2 && a1 != a2)
  {
    v3 = (a1 + 40);
    for (i = (a2 + 40); ; i += 2)
    {
      v5 = *(v3 - 1) == *(i - 1) && *v3 == *i;
      if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
      {
        break;
      }

      v3 += 2;
      if (!--v2)
      {
        return 1;
      }
    }

    return 0;
  }

  return 1;
}

unint64_t AnnotatedCacheEntry.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 25705;
    v6 = 0x616572437473616CLL;
    if (a1 != 2)
    {
      v6 = 0x63617073656D616ELL;
    }

    if (a1)
    {
      v5 = 0xD000000000000010;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 7107700;
    v2 = 0x644972657375;
    if (a1 != 7)
    {
      v2 = 0x65726F6373;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x757074754F6D6C6CLL;
    if (a1 != 4)
    {
      v3 = 0x654B686372616573;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AnnotatedCacheEntry.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized AnnotatedCacheEntry.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnnotatedCacheEntry.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnnotatedCacheEntry.CodingKeys and conformance AnnotatedCacheEntry.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnnotatedCacheEntry.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnnotatedCacheEntry.CodingKeys and conformance AnnotatedCacheEntry.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AnnotatedCacheEntry.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8LLMCache19AnnotatedCacheEntryV10CodingKeys33_DD1C39F3D48E32627515FE9C24F7DFB9LLOGMd, &_ss22KeyedEncodingContainerVy8LLMCache19AnnotatedCacheEntryV10CodingKeys33_DD1C39F3D48E32627515FE9C24F7DFB9LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AnnotatedCacheEntry.CodingKeys and conformance AnnotatedCacheEntry.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for AnnotatedCacheEntry(0);
    LOBYTE(v12) = 1;
    type metadata accessor for Date();
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9580]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = *(v3 + *(v9 + 28));
    v13 = 3;
    lazy protocol witness table accessor for type CacheNamespace and conformance CacheNamespace();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = *(v3 + *(v9 + 36));
    v13 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x277D837D8], MEMORY[0x277D83948]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 6;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 7;
    type metadata accessor for UserID();
    lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type UserID and conformance UserID, MEMORY[0x277D5D298], MEMORY[0x277D5D2A0]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v12) = 8;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t AnnotatedCacheEntry.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v41 = a2;
  v3 = type metadata accessor for UserID();
  v4 = *(v3 - 8);
  v43 = v3;
  v44 = v4;
  MEMORY[0x28223BE20](v3);
  v42 = &v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date();
  v47 = *(v6 - 8);
  v7 = MEMORY[0x28223BE20](v6);
  v9 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v40 - v10;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8LLMCache19AnnotatedCacheEntryV10CodingKeys33_DD1C39F3D48E32627515FE9C24F7DFB9LLOGMd, &_ss22KeyedDecodingContainerVy8LLMCache19AnnotatedCacheEntryV10CodingKeys33_DD1C39F3D48E32627515FE9C24F7DFB9LLOGMR);
  v45 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v13 = &v40 - v12;
  v14 = type metadata accessor for AnnotatedCacheEntry(0);
  MEMORY[0x28223BE20](v14);
  v16 = (&v40 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = a1[3];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v17);
  lazy protocol witness table accessor for type AnnotatedCacheEntry.CodingKeys and conformance AnnotatedCacheEntry.CodingKeys();
  v46 = v13;
  v18 = v49;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_0Tm(v50);
  }

  v19 = v9;
  v40 = v14;
  v49 = v16;
  v20 = v47;
  LOBYTE(v51) = 0;
  v21 = KeyedDecodingContainer.decode(_:forKey:)();
  v22 = v49;
  *v49 = v21;
  v22[1] = v23;
  LOBYTE(v51) = 1;
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC95A0]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v24 = v11;
  v25 = *(v20 + 32);
  v25(v22 + v40[5], v24, v6);
  LOBYTE(v51) = 2;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v26 = v40;
  v25(v22 + v40[6], v19, v6);
  v53 = 3;
  lazy protocol witness table accessor for type CacheNamespace and conformance CacheNamespace();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v27 = v45;
  *(v22 + v26[7]) = v51;
  LOBYTE(v51) = 4;
  v28 = KeyedDecodingContainer.decode(_:forKey:)();
  v29 = (v22 + v26[8]);
  *v29 = v28;
  v29[1] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  v53 = 5;
  lazy protocol witness table accessor for type [String] and conformance <A> [A](&lazy protocol witness table cache variable for type [String] and conformance <A> [A], MEMORY[0x277D83808], MEMORY[0x277D83978]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v52 = 1;
  *(v22 + v26[9]) = v51;
  LOBYTE(v51) = 6;
  KeyedDecodingContainer.decode(_:forKey:)();
  v31 = v22;
  *(v22 + v26[10]) = v32;
  LOBYTE(v51) = 7;
  lazy protocol witness table accessor for type Date and conformance Date(&lazy protocol witness table cache variable for type UserID and conformance UserID, MEMORY[0x277D5D298], MEMORY[0x277D5D2B8]);
  v33 = v42;
  v34 = v43;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v44 + 32))(v31 + v26[11], v33, v34);
  LOBYTE(v51) = 8;
  v35 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v37 = v36;
  (*(v27 + 8))(v46, v48);
  v38 = v31 + v26[12];
  *v38 = v35;
  *(v38 + 8) = v37 & 1;
  outlined init with copy of AnnotatedCacheEntry(v31, v41);
  __swift_destroy_boxed_opaque_existential_0Tm(v50);
  return outlined destroy of AnnotatedCacheEntry(v31);
}

uint64_t AnnotatedCacheEntry.init(id:lastAccessedTime:lastCreatedTime:namespace:llmOutput:searchKeys:ttl:userId:score:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, double a10@<D0>, uint64_t a11, uint64_t a12, char a13)
{
  v18 = *a5;
  *a9 = a1;
  *(a9 + 1) = a2;
  v19 = type metadata accessor for AnnotatedCacheEntry(0);
  v20 = v19[5];
  v21 = type metadata accessor for Date();
  v22 = *(*(v21 - 8) + 32);
  v22(&a9[v20], a3, v21);
  v22(&a9[v19[6]], a4, v21);
  a9[v19[7]] = v18;
  v23 = &a9[v19[8]];
  *v23 = a6;
  *(v23 + 1) = a7;
  *&a9[v19[9]] = a8;
  *&a9[v19[10]] = a10;
  v24 = v19[11];
  v25 = type metadata accessor for UserID();
  result = (*(*(v25 - 8) + 32))(&a9[v24], a11, v25);
  v27 = &a9[v19[12]];
  *v27 = a12;
  v27[8] = a13 & 1;
  return result;
}

uint64_t key path setter for AnnotatedCacheEntryBuilder.id : AnnotatedCacheEntryBuilder(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

uint64_t AnnotatedCacheEntryBuilder.id.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t key path setter for AnnotatedCacheEntryBuilder.lastAccessedTime : AnnotatedCacheEntryBuilder(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t *a7)
{
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v18 - v13;
  outlined init with copy of Date?(a1, &v18 - v13, a5, a6);
  v15 = *a2;
  v16 = *a7;
  swift_beginAccess();
  outlined assign with take of Date?(v14, v15 + v16, a5, a6);
  return swift_endAccess();
}

uint64_t AnnotatedCacheEntryBuilder.lastAccessedTime.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return outlined init with copy of Date?(v4 + v8, a4, a2, a3);
}

uint64_t AnnotatedCacheEntryBuilder.namespace.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_namespace;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

uint64_t key path setter for AnnotatedCacheEntryBuilder.llmOutput : AnnotatedCacheEntryBuilder(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_llmOutput);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

uint64_t AnnotatedCacheEntryBuilder.llmOutput.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_llmOutput);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t key path setter for AnnotatedCacheEntryBuilder.searchKeys : AnnotatedCacheEntryBuilder(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_searchKeys;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t AnnotatedCacheEntryBuilder.ttl.getter(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  return *v2;
}

uint64_t AnnotatedCacheEntryBuilder.init(id:namespace:)(uint64_t a1, uint64_t a2, char *a3)
{
  v6 = *a3;
  v7 = OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_lastAccessedTime;
  v8 = type metadata accessor for Date();
  v9 = *(*(v8 - 8) + 56);
  v9(v3 + v7, 1, 1, v8);
  v9(v3 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_lastCreatedTime, 1, 1, v8);
  v10 = (v3 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_llmOutput);
  *v10 = 0;
  v10[1] = 0;
  v11 = v3 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_ttl;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_userId;
  v13 = type metadata accessor for UserID();
  (*(*(v13 - 8) + 56))(v3 + v12, 1, 1, v13);
  v14 = v3 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_score;
  *v14 = 0;
  *(v14 + 8) = 1;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_namespace) = v6;
  *(v3 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_searchKeys) = MEMORY[0x277D84F90];
  return v3;
}

uint64_t AnnotatedCacheEntryBuilder.withLastAccessedTime(_:)(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t *a5)
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v18 - v12;
  v14 = a4(0);
  v15 = *(v14 - 8);
  (*(v15 + 16))(v13, a1, v14);
  (*(v15 + 56))(v13, 0, 1, v14);
  v16 = *a5;
  swift_beginAccess();
  outlined assign with take of Date?(v13, v5 + v16, a2, a3);
  swift_endAccess();
}

uint64_t AnnotatedCacheEntryBuilder.withLlmOutput(_:)(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_llmOutput);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t AnnotatedCacheEntryBuilder.appendSearchKey(_:)(uint64_t a1, uint64_t a2)
{
  specialized AnnotatedCacheEntryBuilder.appendSearchKey(_:)(a1, a2);
}

uint64_t AnnotatedCacheEntryBuilder.withSearchKeys(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = *(*v1 + 400);
    v4 = (a1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;

      v3(v5, v6);

      v4 += 2;
      --v2;
    }

    while (v2);
  }
}

uint64_t AnnotatedCacheEntryBuilder.withTtl(_:)(double a1)
{
  v3 = v1 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_ttl;
  swift_beginAccess();
  *v3 = a1;
  *(v3 + 8) = 0;
}

uint64_t type metadata accessor for AnnotatedCacheEntry(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t AnnotatedCacheEntryBuilder.withScore(_:)(uint64_t a1, char a2)
{
  v5 = v2 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_score;
  swift_beginAccess();
  *v5 = a1;
  *(v5 + 8) = a2 & 1;
}

uint64_t AnnotatedCacheEntryBuilder.build()@<X0>(char *a1@<X8>)
{
  v106 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v97 - v3;
  v5 = type metadata accessor for UserID();
  v109 = *(v5 - 8);
  v110 = v5;
  MEMORY[0x28223BE20](v5);
  v108 = &v97 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v8 = MEMORY[0x28223BE20](v7 - 8);
  v10 = &v97 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v12 = &v97 - v11;
  v13 = type metadata accessor for Date();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x28223BE20](v13);
  v111 = &v97 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x28223BE20](v15);
  v19 = &v97 - v18;
  (*(*v1 + 176))(v17);
  v20 = *(v14 + 48);
  if (v20(v12, 1, v13) == 1)
  {
    outlined destroy of AnnotatedCacheEntry?(v12, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.logger);
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_255A20000, v22, v23, "Required cache entry parameter lastAccessedTime is not specified", v24, 2u);
      MEMORY[0x259C47EC0](v24, -1, -1);
    }

    lazy protocol witness table accessor for type LLMCacheManagerError and conformance LLMCacheManagerError();
    swift_allocError();
    *v25 = 1;
    return swift_willThrow();
  }

  v105 = v14;
  v27 = v19;
  v28 = *(v14 + 32);
  v107 = v27;
  v29 = v28();
  (*(*v1 + 200))(v29);
  if (v20(v10, 1, v13) == 1)
  {
    v30 = v13;
    outlined destroy of AnnotatedCacheEntry?(v10, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
    if (one-time initialization token for logger != -1)
    {
      swift_once();
    }

    v31 = type metadata accessor for Logger();
    __swift_project_value_buffer(v31, static Logger.logger);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.error.getter();
    v34 = os_log_type_enabled(v32, v33);
    v35 = v105;
    v36 = v107;
    if (v34)
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_255A20000, v32, v33, "Required cache entry parameter lastCreatedTime is not specified", v37, 2u);
      MEMORY[0x259C47EC0](v37, -1, -1);
    }

    lazy protocol witness table accessor for type LLMCacheManagerError and conformance LLMCacheManagerError();
    swift_allocError();
    *v38 = 1;
    swift_willThrow();
    return (*(v35 + 8))(v36, v30);
  }

  v39 = (v28)(v111, v10, v13);
  v40 = (*(*v1 + 248))(v39);
  if (v41)
  {
    v42 = v40;
    v43 = v41;
    v104 = v13;
    v44 = (*v1 + 272);
    v45 = *v44;
    v46 = *((*v44)() + 16);

    v48 = v107;
    if (v46)
    {
      v49 = (*(*v1 + 296))(v47);
      if (v50)
      {

        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v51 = type metadata accessor for Logger();
        __swift_project_value_buffer(v51, static Logger.logger);
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v52, v53))
        {
          goto LABEL_35;
        }

        v54 = swift_slowAlloc();
        *v54 = 0;
        v55 = "Required cache entry parameter ttl is not specified";
      }

      else
      {
        v103 = v49;
        (*(*v1 + 320))();
        v68 = v109;
        v67 = v110;
        if ((*(v109 + 48))(v4, 1, v110) != 1)
        {
          v73 = (*(v68 + 32))(v108, v4, v67);
          v74 = (*(*v1 + 152))(v73);
          v101 = v75;
          v102 = v74;
          v76 = type metadata accessor for AnnotatedCacheEntry(0);
          v77 = v76[5];
          v78 = v48;
          v79 = v104;
          v80 = v105;
          v99 = v42;
          v100 = v43;
          v81 = *(v105 + 16);
          v82 = v106;
          v81(&v106[v77], v78, v104);
          v83 = (v81)(&v82[v76[6]], v111, v79);
          v84 = (*(*v1 + 224))(&v113, v83);
          v112 = v113;
          v98 = (v45)(v84);
          v86 = v108;
          v85 = v109;
          v87 = v110;
          v88 = (*(v109 + 16))(&v82[v76[11]], v108, v110);
          v89 = (*(*v1 + 344))(v88);
          v91 = v90;
          (*(v85 + 8))(v86, v87);
          v92 = *(v80 + 8);
          v92(v111, v79);
          result = (v92)(v107, v79);
          v93 = v101;
          *v82 = v102;
          *(v82 + 1) = v93;
          v82[v76[7]] = v112;
          v94 = &v82[v76[8]];
          v95 = v100;
          *v94 = v99;
          v94[1] = v95;
          *&v82[v76[9]] = v98;
          *&v82[v76[10]] = v103;
          v96 = &v82[v76[12]];
          *v96 = v89;
          v96[8] = v91 & 1;
          return result;
        }

        outlined destroy of AnnotatedCacheEntry?(v4, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
        if (one-time initialization token for logger != -1)
        {
          swift_once();
        }

        v69 = type metadata accessor for Logger();
        __swift_project_value_buffer(v69, static Logger.logger);
        v52 = Logger.logObject.getter();
        v53 = static os_log_type_t.error.getter();
        if (!os_log_type_enabled(v52, v53))
        {
LABEL_35:

          lazy protocol witness table accessor for type LLMCacheManagerError and conformance LLMCacheManagerError();
          swift_allocError();
          *v70 = 1;
          swift_willThrow();
          v71 = v104;
          v72 = *(v105 + 8);
          v72(v111, v104);
          return (v72)(v48, v71);
        }

        v54 = swift_slowAlloc();
        *v54 = 0;
        v55 = "Required cache entry parameter userId is not specified";
      }
    }

    else
    {

      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v66 = type metadata accessor for Logger();
      __swift_project_value_buffer(v66, static Logger.logger);
      v52 = Logger.logObject.getter();
      v53 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v52, v53))
      {
        goto LABEL_35;
      }

      v54 = swift_slowAlloc();
      *v54 = 0;
      v55 = "Required cache entry parameter searchKeys should have at least one value";
    }

    _os_log_impl(&dword_255A20000, v52, v53, v55, v54, 2u);
    MEMORY[0x259C47EC0](v54, -1, -1);
    goto LABEL_35;
  }

  v56 = v13;
  v57 = v107;
  if (one-time initialization token for logger != -1)
  {
    swift_once();
  }

  v58 = type metadata accessor for Logger();
  __swift_project_value_buffer(v58, static Logger.logger);
  v59 = Logger.logObject.getter();
  v60 = static os_log_type_t.error.getter();
  v61 = os_log_type_enabled(v59, v60);
  v62 = v105;
  if (v61)
  {
    v63 = swift_slowAlloc();
    *v63 = 0;
    _os_log_impl(&dword_255A20000, v59, v60, "Required cache entry parameter llmOutput is not specified", v63, 2u);
    MEMORY[0x259C47EC0](v63, -1, -1);
  }

  lazy protocol witness table accessor for type LLMCacheManagerError and conformance LLMCacheManagerError();
  swift_allocError();
  *v64 = 1;
  swift_willThrow();
  v65 = *(v62 + 8);
  v65(v111, v56);
  return (v65)(v57, v56);
}

uint64_t AnnotatedCacheEntryBuilder.deinit()
{

  outlined destroy of AnnotatedCacheEntry?(v0 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_lastAccessedTime, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of AnnotatedCacheEntry?(v0 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_lastCreatedTime, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);

  outlined destroy of AnnotatedCacheEntry?(v0 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_userId, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);
  return v0;
}

uint64_t AnnotatedCacheEntryBuilder.__deallocating_deinit()
{

  outlined destroy of AnnotatedCacheEntry?(v0 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_lastAccessedTime, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of AnnotatedCacheEntry?(v0 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_lastCreatedTime, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);

  outlined destroy of AnnotatedCacheEntry?(v0 + OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_userId, &_s16SiriMessageTypes6UserIDVSgMd, &_s16SiriMessageTypes6UserIDVSgMR);

  return swift_deallocClassInstance();
}

uint64_t outlined assign with take of Date?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t specialized static AnnotatedCacheEntry.== infix(_:_:)(void *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = type metadata accessor for AnnotatedCacheEntry(0);
  if ((static Date.== infix(_:_:)() & 1) == 0 || (static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v6 = v5[7];
  v7 = *(a1 + v6);
  v8 = *(a2 + v6);
  if (v7)
  {
    if (v7 == 1)
    {
      v9 = 0xE400000000000000;
      v10 = 1819047270;
      if (v8)
      {
        goto LABEL_11;
      }

LABEL_15:
      v11 = 0xE400000000000000;
      if (v10 != 1953718630)
      {
        goto LABEL_22;
      }

      goto LABEL_20;
    }

    v10 = 0xD000000000000012;
    v9 = 0x8000000255A4D5C0;
    if (!v8)
    {
      goto LABEL_15;
    }
  }

  else
  {
    v9 = 0xE400000000000000;
    v10 = 1953718630;
    if (!v8)
    {
      goto LABEL_15;
    }
  }

LABEL_11:
  if (v8 == 1)
  {
    v11 = 0xE400000000000000;
    if (v10 != 1819047270)
    {
      goto LABEL_22;
    }
  }

  else
  {
    v11 = 0x8000000255A4D5C0;
    if (v10 != 0xD000000000000012)
    {
      goto LABEL_22;
    }
  }

LABEL_20:
  if (v9 == v11)
  {

    goto LABEL_23;
  }

LABEL_22:
  v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v12 & 1) == 0)
  {
    return 0;
  }

LABEL_23:
  v13 = v5[8];
  v14 = *(a1 + v13);
  v15 = *(a1 + v13 + 8);
  v16 = (a2 + v13);
  if ((v14 != *v16 || v15 != v16[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (_sSasSQRzlE2eeoiySbSayxG_ABtFZSS_Tt1g5(*(a1 + v5[9]), *(a2 + v5[9])) & 1) == 0 || *(a1 + v5[10]) != *(a2 + v5[10]) || (static UserID.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v17 = v5[12];
  v18 = (a1 + v17);
  v19 = *(a1 + v17 + 8);
  v20 = (a2 + v17);
  v21 = *(a2 + v17 + 8);
  if (v19)
  {
    if ((v21 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (*v18 != *v20)
    {
      v21 = 1;
    }

    if (v21)
    {
      return 0;
    }
  }

  return 1;
}

unint64_t lazy protocol witness table accessor for type AnnotatedCacheEntry.CodingKeys and conformance AnnotatedCacheEntry.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AnnotatedCacheEntry.CodingKeys and conformance AnnotatedCacheEntry.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnnotatedCacheEntry.CodingKeys and conformance AnnotatedCacheEntry.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnotatedCacheEntry.CodingKeys and conformance AnnotatedCacheEntry.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnotatedCacheEntry.CodingKeys and conformance AnnotatedCacheEntry.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnnotatedCacheEntry.CodingKeys and conformance AnnotatedCacheEntry.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnotatedCacheEntry.CodingKeys and conformance AnnotatedCacheEntry.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnotatedCacheEntry.CodingKeys and conformance AnnotatedCacheEntry.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnnotatedCacheEntry.CodingKeys and conformance AnnotatedCacheEntry.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnotatedCacheEntry.CodingKeys and conformance AnnotatedCacheEntry.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AnnotatedCacheEntry.CodingKeys and conformance AnnotatedCacheEntry.CodingKeys;
  if (!lazy protocol witness table cache variable for type AnnotatedCacheEntry.CodingKeys and conformance AnnotatedCacheEntry.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AnnotatedCacheEntry.CodingKeys and conformance AnnotatedCacheEntry.CodingKeys);
  }

  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [String] and conformance <A> [A](unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd, &_sSaySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
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

uint64_t outlined init with copy of Date?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t specialized AnnotatedCacheEntryBuilder.appendSearchKey(_:)(uint64_t a1, uint64_t a2)
{
  v5 = (*(*v2 + 272))();
  v15[0] = a1;
  v15[1] = a2;
  v14[2] = v15;
  v6 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v14, v5);

  if ((v6 & 1) == 0)
  {
    v7 = OBJC_IVAR____TtC8LLMCache26AnnotatedCacheEntryBuilder_searchKeys;
    swift_beginAccess();
    v8 = *(v2 + v7);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v2 + v7) = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8);
      *(v2 + v7) = v8;
    }

    v11 = *(v8 + 2);
    v10 = *(v8 + 3);
    if (v11 >= v10 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v8);
    }

    *(v8 + 2) = v11 + 1;
    v12 = &v8[16 * v11];
    *(v12 + 4) = a1;
    *(v12 + 5) = a2;
    *(v2 + v7) = v8;
    swift_endAccess();
  }

  return v2;
}

uint64_t keypath_set_13Tm(uint64_t *a1, void *a2, uint64_t a3, uint64_t a4, void *a5)
{
  v5 = *a1;
  v6 = *(a1 + 8);
  v7 = *a2 + *a5;
  result = swift_beginAccess();
  *v7 = v5;
  *(v7 + 8) = v6;
  return result;
}

void type metadata completion function for AnnotatedCacheEntry(uint64_t a1)
{
  v1 = MEMORY[0x277D837D0];
  type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    type metadata accessor for [String](319, &lazy cache variable for type metadata for [String], v1, MEMORY[0x277D83940]);
    if (v3 <= 0x3F)
    {
      type metadata accessor for UserID();
      if (v4 <= 0x3F)
      {
        type metadata accessor for [String](319, &lazy cache variable for type metadata for Double?, MEMORY[0x277D839F8], MEMORY[0x277D83D88]);
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for [String](uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata completion function for AnnotatedCacheEntryBuilder(uint64_t a1)
{
  type metadata accessor for Date?(319, &lazy cache variable for type metadata for Date?, MEMORY[0x277CC9578]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Date?(319, &lazy cache variable for type metadata for UserID?, MEMORY[0x277D5D298]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Date?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t getEnumTagSinglePayload for AnnotatedCacheEntry.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF8)
  {
    goto LABEL_17;
  }

  if (a2 + 8 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 8) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 8;
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

      return (*a1 | (v4 << 8)) - 8;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 8;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v8 = v6 - 9;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for AnnotatedCacheEntry.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF8)
  {
    v4 = 0;
  }

  if (a2 > 0xF7)
  {
    v5 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
    *result = a2 + 8;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized AnnotatedCacheEntry.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000255A4D990 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x616572437473616CLL && a2 == 0xEF656D6954646574 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x63617073656D616ELL && a2 == 0xE900000000000065 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x757074754F6D6C6CLL && a2 == 0xE900000000000074 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x654B686372616573 && a2 == 0xEA00000000007379 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 7107700 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x644972657375 && a2 == 0xE600000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x65726F6373 && a2 == 0xE500000000000000)
  {

    return 8;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 8;
    }

    else
    {
      return 9;
    }
  }
}

uint64_t InsertRequest.init(searchKey:llmOutput:loggingTraceId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  *(a6 + 3) = a4;
  v8 = *(type metadata accessor for InsertRequest(0) + 24);
  v9 = type metadata accessor for UUID();
  v10 = *(*(v9 - 8) + 32);

  return v10(&a6[v8], a5, v9);
}

uint64_t type metadata accessor for InsertRequest(uint64_t a1)
{
  result = type metadata singleton initialization cache for InsertRequest;
  if (!type metadata singleton initialization cache for InsertRequest)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t InsertRequest.searchKey.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t InsertRequest.llmOutput.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t InsertRequest.loggingTraceId.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for InsertRequest(0) + 24);
  v4 = type metadata accessor for UUID();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata completion function for InsertRequest(uint64_t a1)
{
  result = type metadata accessor for UUID();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t static LLMCacheManagerFeatureFlags.forceEnabled.setter(char a1)
{
  result = swift_beginAccess();
  static LLMCacheManagerFeatureFlags.forceEnabled = a1;
  return result;
}

const char *LLMCacheManagerFeatureFlags.feature.getter()
{
  v1 = "FullPlanner";
  if (*v0 != 1)
  {
    v1 = "ResponseGeneration";
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return "FastPlanner";
  }
}

Swift::Int LLMCacheManagerFeatureFlags.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x259C479E0](v1);
  return Hasher._finalize()();
}

Swift::String __swiftcall URL.path(percentEncoded:)(Swift::Bool percentEncoded)
{
  v1 = MEMORY[0x28211D098](percentEncoded);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x2821FD9F8]();
}

{
  return MEMORY[0x2821FDA08]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x2821FDB38]();
}

{
  return MEMORY[0x2821FDB48]();
}