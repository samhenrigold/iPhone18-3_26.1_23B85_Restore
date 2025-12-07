void specialized _copySequenceToContiguousArray<A>(_:)(void *a1, uint64_t a2)
{
  *&v35 = a1;
  *(&v35 + 1) = a2;
  v2 = a1;
  CMSampleBufferRef.PerSampleAttachmentsDictionary.makeIterator()(v38);

  v3 = 0;
  v4 = MEMORY[0x277D84F90];
  for (i = MEMORY[0x277D84F90] + 32; ; i += 40)
  {
    v6 = v38[0];
    v7 = v41;
    if (!v41)
    {
      break;
    }

    v8 = v40;
LABEL_8:
    v11 = (v7 - 1) & v7;
    v12 = __clz(__rbit64(v7)) | (v8 << 6);
    v13 = *(*(v38[0] + 48) + 8 * v12);
    outlined init with copy of Any(*(v38[0] + 56) + 32 * v12, v31);
    *&v32 = v13;
    outlined init with take of Any(v31, (&v32 + 8));
    v14 = v32;
    v40 = v8;
    v41 = v11;
    v15 = v13;
    if (!v14)
    {
      goto LABEL_26;
    }

    v35 = v32;
    v36 = v33;
    v37 = v34;
    if (!v3)
    {
      v16 = v4[3];
      if (((v16 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_32;
      }

      v17 = v16 & 0xFFFFFFFFFFFFFFFELL;
      if (v17 <= 1)
      {
        v18 = 1;
      }

      else
      {
        v18 = v17;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo17CMSampleBufferRefa9CoreMediaE30PerSampleAttachmentsDictionaryV3KeyV3key_yp5valuetGMd, &_ss23_ContiguousArrayStorageCySo17CMSampleBufferRefa9CoreMediaE30PerSampleAttachmentsDictionaryV3KeyV3key_yp5valuetGMR);
      v19 = swift_allocObject();
      v20 = (_swift_stdlib_malloc_size(v19) - 32) / 40;
      v19[2] = v18;
      v19[3] = 2 * v20;
      v21 = (v19 + 4);
      v22 = v4[3] >> 1;
      if (v4[2])
      {
        v23 = v4 + 4;
        if (v19 != v4 || v21 >= v23 + 40 * v22)
        {
          memmove(v19 + 4, v23, 40 * v22);
        }

        v4[2] = 0;
      }

      i = v21 + 40 * v22;
      v3 = (v20 & 0x7FFFFFFFFFFFFFFFLL) - v22;

      v4 = v19;
    }

    v24 = __OFSUB__(v3--, 1);
    if (v24)
    {
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
      goto LABEL_33;
    }

    v25 = v35;
    v26 = v36;
    *(i + 32) = v37;
    *i = v25;
    *(i + 16) = v26;
  }

  v9 = (v39 + 64) >> 6;
  v10 = v40;
  while (1)
  {
    v8 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      __break(1u);
      goto LABEL_31;
    }

    if (v8 >= v9)
    {
      break;
    }

    v7 = *(v38[1] + 8 * v8);
    ++v10;
    if (v7)
    {
      goto LABEL_8;
    }
  }

  if (v9 <= (v40 + 1))
  {
    v27 = v40 + 1;
  }

  else
  {
    v27 = (v39 + 64) >> 6;
  }

  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  v40 = v27 - 1;
  v41 = 0;
LABEL_26:
  outlined consume of [CMSampleBufferRef.PerSampleAttachmentsDictionary.Key : Any].Iterator._Variant(v6);
  outlined destroy of CMAttachmentBearerAttachments.Value?(&v32, &_sSo17CMSampleBufferRefa9CoreMediaE30PerSampleAttachmentsDictionaryV3KeyV3key_yp5valuetSgMd, &_sSo17CMSampleBufferRefa9CoreMediaE30PerSampleAttachmentsDictionaryV3KeyV3key_yp5valuetSgMR);
  v28 = v4[3];
  if (v28 < 2)
  {
    return;
  }

  v29 = v28 >> 1;
  v24 = __OFSUB__(v29, v3);
  v30 = v29 - v3;
  if (!v24)
  {
    v4[2] = v30;
    return;
  }

LABEL_33:
  __break(1u);
}

uint64_t outlined init with copy of Any?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, "lR");
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
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

  memcpy((v3 + 8 * v7 + 32), (v6 + 32), 8 * v2);

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

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> (@unowned Int)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Swift.AnyObject) -> (@out Int)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Swift.AnyObject, @in_guaranteed Swift.AnyObject) -> (@out CFComparisonResult)(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 16);
  v6 = a2;
  v7 = a1;
  v3(&v5, &v7, &v6);
  return v5;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject, @guaranteed Swift.AnyObject) -> (@unowned CFComparisonResult)@<X0>(void *a1@<X0>, void *a2@<X1>, uint64_t *a3@<X8>)
{
  result = (*(v3 + 16))(*a1, *a2);
  *a3 = result;
  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Swift.AnyObject) -> (@out Bool)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> (@unowned Bool)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result & 1;
  return result;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed Swift.AnyObject) -> (@out CMTime)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v5 = a1;
  v2(&v4, &v5);
  return v4;
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed (@guaranteed Swift.AnyObject) -> (@unowned CMTime)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  result = (*(v2 + 16))(*a1);
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 12) = v6;
  *(a2 + 16) = v7;
  return result;
}

BOOL specialized == infix<A>(_:_:)(_BYTE *a1, _BYTE *a2)
{
  if (a1[24])
  {
    v4 = 0;
  }

  else
  {
    v4 = 32;
  }

  if ((a1[32] & 1) == 0)
  {
    v4 |= 0x10u;
  }

  if ((a1[40] & 1) == 0)
  {
    v4 |= 8u;
  }

  if (a1[48])
  {
    v5 = v4;
  }

  else
  {
    v5 = v4 | 4;
  }

  if ((v5 & 0x20) != 0)
  {
    v6 = 24;
  }

  else
  {
    v6 = 0;
  }

  v19 = specialized Data.init(count:)(v6 + ((((v5 >> 2) & 4) + ((v5 >> 1) & 4) + (v5 & 4)) | 1));
  v20 = v7;
  specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(&v19, v5, a1);
  v8 = v19;
  v9 = v20;
  v10.super.isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v8, v9);
  if (a2[24])
  {
    v11 = 0;
  }

  else
  {
    v11 = 32;
  }

  if ((a2[32] & 1) == 0)
  {
    v11 |= 0x10u;
  }

  if ((a2[40] & 1) == 0)
  {
    v11 |= 8u;
  }

  if (a2[48])
  {
    v12 = v11;
  }

  else
  {
    v12 = v11 | 4;
  }

  if ((v12 & 0x20) != 0)
  {
    v13 = 24;
  }

  else
  {
    v13 = 0;
  }

  v19 = specialized Data.init(count:)(v13 + ((((v12 >> 2) & 4) + ((v12 >> 1) & 4) + (v12 & 4)) | 1));
  v20 = v14;
  specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(&v19, v12, a2);
  v15 = v19;
  v16 = v20;
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v15, v16);
  LODWORD(v15) = CFEqual(v10.super.isa, isa);

  return v15 != 0;
}

uint64_t specialized Collection<>.subscript.getter@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  v6 = a4 - a3;
  if (!a3)
  {
    v6 = 0;
  }

  v7 = __OFADD__(a5, v6);
  v8 = a5 + v6;
  if (v7)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v8 < a5)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (result < a5)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (v8 >= a2)
  {
    a6[2] = a3;
    a6[3] = a4;
    a6[4] = a5;
    *a6 = result;
    a6[1] = a2;
    return result;
  }

LABEL_11:
  __break(1u);
  return result;
}

uint64_t specialized Collection<>.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = a2 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    v7 = __CocoaDictionary.startIndex.getter();
    v9 = v8;
    v10 = __CocoaDictionary.endIndex.getter();
    v12 = v11;
    result = MEMORY[0x2318E2B50]();
    if (result)
    {
      goto LABEL_7;
    }

LABEL_6:
    v14[0] = v6 != 0;
    outlined copy of [A : B].Index._Variant<A, B>(v7, v9, v6 != 0);
    outlined copy of [A : B].Index._Variant<A, B>(v10, v12, v6 != 0);
    outlined consume of [CFStringRef : Swift.AnyObject].Index._Variant(v10, v12, v6 != 0);
    outlined consume of [CFStringRef : Swift.AnyObject].Index._Variant(v7, v9, v6 != 0);
    v14[48] = v6 != 0;
    v15[0] = v7;
    v15[1] = v9;
    v16 = v6 != 0;
    v17 = v10;
    v18 = v12;
    v19 = v6 != 0;
    specialized Collection._failEarlyRangeCheck(_:bounds:)(a1, v15);
    outlined consume of [CFStringRef : Swift.AnyObject].Index._Variant(v7, v9, v6 != 0);
    outlined consume of [CFStringRef : Swift.AnyObject].Index._Variant(v10, v12, v6 != 0);
    *(a3 + 48) = a2;
    *a3 = *a1;
    *(a3 + 16) = *(a1 + 16);
    *(a3 + 24) = *(a1 + 24);
    *(a3 + 40) = *(a1 + 40);

    return outlined init with copy of CMAttachmentBearerAttachments.Value?(a1, v14, &_sSnySo22CMFormatDescriptionRefa9CoreMediaE10ExtensionsV5IndexVGMd, &_sSnySo22CMFormatDescriptionRefa9CoreMediaE10ExtensionsV5IndexVGMR);
  }

  result = _HashTable.startBucket.getter();
  v10 = 1 << *(a2 + 32);
  if (v10 >= result)
  {
    v7 = result;
    v12 = *(a2 + 36);
    v9 = v12;
    goto LABEL_6;
  }

LABEL_7:
  __break(1u);
  return result;
}

BOOL specialized Collection.isEmpty.getter(uint64_t a1)
{
  if ((a1 & 0xC000000000000001) == 0)
  {
    return _HashTable.startBucket.getter() == 1 << *(a1 + 32);
  }

  v1 = __CocoaDictionary.startIndex.getter();
  v3 = v2;
  v4 = __CocoaDictionary.endIndex.getter();
  LOBYTE(v3) = MEMORY[0x2318E2B60](v1, v3, v4, v5);

  return v3 & 1;
}

uint64_t specialized Collection.count.getter(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v3 = __CocoaDictionary.startIndex.getter();
    v5 = v4;
    v6 = __CocoaDictionary.endIndex.getter();
    v8 = v7;
  }

  else
  {
    v3 = _HashTable.startBucket.getter();
    v8 = *(a1 + 36);
    v6 = 1 << *(a1 + 32);
    v5 = v8;
  }

  v9 = v2 != 0;
  specialized Collection.distance(from:to:)(v3, v5, v9, v6, v8, v9, a1);
  v11 = v10;
  outlined consume of [CFStringRef : Swift.AnyObject].Index._Variant(v6, v8, v9);
  outlined consume of [CFStringRef : Swift.AnyObject].Index._Variant(v3, v5, v9);
  return v11;
}

uint64_t CMFormatDescriptionRef.mediaType.getter@<X0>(_DWORD *a1@<X8>)
{
  result = CMFormatDescriptionGetMediaType(v1);
  *a1 = result;
  return result;
}

void specialized RawRepresentable<>.hash(into:)()
{
  if (v0[24])
  {
    v1 = 0;
  }

  else
  {
    v1 = 32;
  }

  if ((v0[32] & 1) == 0)
  {
    v1 |= 0x10u;
  }

  if ((v0[40] & 1) == 0)
  {
    v1 |= 8u;
  }

  if (v0[48])
  {
    v2 = v1;
  }

  else
  {
    v2 = v1 | 4;
  }

  v3 = 24;
  if ((v2 & 0x20) == 0)
  {
    v3 = 0;
  }

  v9 = specialized Data.init(count:)(v3 + ((((v2 >> 2) & 4) + ((v2 >> 1) & 4) + (v2 & 4)) | 1));
  v10 = v4;
  specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(&v9, v2, v0);
  v5 = v9;
  v6 = v10;
  cf = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v5, v6);
  v7 = CFHash(cf);
  MEMORY[0x2318E2D50](v7);
}

uint64_t _CMFormatDescriptionInitTrampoline.init(pixelBuffer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  type metadata accessor for CVBufferRef(0);

  _s9CoreVideo21CVReadOnlyPixelBufferC010withUnsafeF0yxxSo11CVBufferRefaKYTXEKRi_zlF();

  v8 = v6;
  _CMInitTrampoline.init(_:)(partial apply for closure #1 in _CMFormatDescriptionInitTrampoline.init(imageBuffer:), v7, a2, *(a3 + 8));
}

void specialized Dictionary.subscript.setter(uint64_t a1, void *a2)
{
  if (*(a1 + 24))
  {
    outlined init with take of Any(a1, v6);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v5 = *v2;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v6, a2, isUniquelyReferenced_nonNull_native);

    *v2 = v5;
  }

  else
  {
    outlined destroy of CMAttachmentBearerAttachments.Value?(a1, &_sypSgMd, "lR");
    specialized Dictionary._Variant.removeValue(forKey:)(a2, v6);

    outlined destroy of CMAttachmentBearerAttachments.Value?(v6, &_sypSgMd, "lR");
  }
}

uint64_t specialized Dictionary.subscript.getter(void *a1, uint64_t a2)
{
  if ((a2 & 0xC000000000000001) != 0)
  {
    v2 = a1;
    v3 = __CocoaDictionary.lookup(_:)();

    return v3;
  }

  else if (*(a2 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(a1), (v5 & 1) != 0))
  {
    return swift_unknownObjectRetain();
  }

  else
  {
    return 0;
  }
}

uint64_t specialized TypedCFDictionary.subscript.getter(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v4 & 1) != 0))
  {
    outlined init with copy of Any(*(a2 + 56) + 32 * v3, v8);
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, "lR");
  v5 = swift_dynamicCast();
  v6 = v9;
  if (!v5)
  {
    return 0;
  }

  return v6;
}

{
  if (*(a2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v4 & 1) != 0))
  {
    outlined init with copy of Any(*(a2 + 56) + 32 * v3, v6);
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, "lR");
  type metadata accessor for CFStringRef(0);
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

{
  if (*(a2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v4 & 1) != 0))
  {
    outlined init with copy of Any(*(a2 + 56) + 32 * v3, v6);
  }

  else
  {
    memset(v6, 0, sizeof(v6));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, "lR");
  if (swift_dynamicCast())
  {
    return v7;
  }

  else
  {
    return 2;
  }
}

{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if ((v4 & 1) == 0)
  {
    return 0;
  }

  outlined init with copy of Any(*(a2 + 56) + 32 * v3, &v7);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo11CFStringRefaypGMd, &_sSDySo11CFStringRefaypGMR);
  if (!swift_dynamicCast())
  {
    return 0;
  }

  type metadata accessor for CGSize(0);
  off_2841BD880(v6, &v7);
  return v7;
}

{
  if (*(a2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v4 & 1) != 0))
  {
    outlined init with copy of Any(*(a2 + 56) + 32 * v3, v8);
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, "lR");
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
  if ((swift_dynamicCast() & 1) != 0 && v9)
  {
    if (*(v9 + 16) == 4)
    {
      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(v9);
      v7 = v5;

      return v7;
    }
  }

  return 0;
}

{
  if (*(a2 + 16) && (v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v4 & 1) != 0))
  {
    outlined init with copy of Any(*(a2 + 56) + 32 * v3, v8);
  }

  else
  {
    memset(v8, 0, sizeof(v8));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, "lR");
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySfGMd, &_sSaySfGMR);
  if ((swift_dynamicCast() & 1) != 0 && v9)
  {
    if (*(v9 + 16) == 3)
    {
      _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(v9);
      v7 = v5;

      return v7;
    }
  }

  return 0;
}

unint64_t specialized TypedCFDictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a2 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v5 & 1) != 0))
  {
    outlined init with copy of Any(*(a2 + 56) + 32 * v4, v9);
  }

  else
  {
    memset(v9, 0, sizeof(v9));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, "lR");
  v6 = swift_dynamicCast();
  v7 = v10;
  if (!v6)
  {
    v7 = 0;
  }

  return v7 | ((v6 ^ 1u) << 32);
}

void specialized TypedCFDictionary.subscript.getter(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (*(a2 + 16) && (v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    outlined init with copy of Any(*(a2 + 56) + 32 * v5, v14);
  }

  else
  {
    memset(v14, 0, sizeof(v14));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, "lR");
  type metadata accessor for CFStringRef(0);
  if ((swift_dynamicCast() & 1) != 0 && (v7 = v15) != 0)
  {
    _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);
    v8 = v7;
    v9 = static _CFObject.== infix(_:_:)();

    if (v9)
    {

      v10 = 0;
    }

    else
    {
      v11 = v8;
      v12 = static _CFObject.== infix(_:_:)();

      if (v12)
      {

        v10 = 1;
      }

      else
      {
        v13 = static _CFObject.== infix(_:_:)();

        if (v13)
        {
          v10 = 2;
        }

        else
        {
          v10 = 3;
        }
      }
    }
  }

  else
  {
    v10 = 3;
  }

  *a3 = v10;
}

void specialized Collection.index(_:offsetBy:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  if (a4 < 0)
  {
    goto LABEL_32;
  }

  v7 = a3;
  v8 = a2;
  v9 = a1;
  if (!a4)
  {
    outlined copy of [A : B].Index._Variant<A, B>(a1, a2, a3 & 1);
LABEL_26:
    *a6 = v9;
    *(a6 + 8) = v8;
    *(a6 + 16) = v7 & 1;
    return;
  }

  v11 = a5 & 0xC000000000000001;
  outlined copy of [A : B].Index._Variant<A, B>(a1, a2, a3 & 1);
  v12 = 0;
  v13 = a4 - 1;
  while (1)
  {
    if (v11)
    {
      if ((v7 & 1) == 0)
      {
        goto LABEL_33;
      }

      v14 = __CocoaDictionary.index(after:)();
      v16 = v15;
LABEL_6:
      v7 = 1;
      outlined consume of [CFStringRef : Swift.AnyObject].Index._Variant(v9, v8, 1);
      v9 = v14;
      v8 = v16;
      goto LABEL_7;
    }

    if (v7)
    {
      break;
    }

    if ((v9 & 0x8000000000000000) != 0)
    {
      goto LABEL_28;
    }

    v21 = 1 << *(a5 + 32);
    if (v9 >= v21)
    {
      goto LABEL_28;
    }

    v22 = v9 >> 6;
    v23 = *(a5 + 64 + 8 * (v9 >> 6));
    if (((v23 >> v9) & 1) == 0)
    {
      goto LABEL_30;
    }

    if (*(a5 + 36) != v8)
    {
      goto LABEL_31;
    }

    v24 = v23 & (-2 << (v9 & 0x3F));
    if (v24)
    {
      outlined consume of [CFStringRef : Swift.AnyObject].Index._Variant(v9, v8, 0);
      v21 = __clz(__rbit64(v24)) | v9 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v25 = v22 << 6;
      v26 = v22 + 1;
      v27 = (a5 + 72 + 8 * v22);
      while (v26 < (v21 + 63) >> 6)
      {
        v29 = *v27++;
        v28 = v29;
        v25 += 64;
        ++v26;
        if (v29)
        {
          outlined consume of [CFStringRef : Swift.AnyObject].Index._Variant(v9, v8, 0);
          v21 = __clz(__rbit64(v28)) + v25;
          goto LABEL_24;
        }
      }

      outlined consume of [CFStringRef : Swift.AnyObject].Index._Variant(v9, v8, 0);
    }

LABEL_24:
    v7 = 0;
    v8 = v8;
    v9 = v21;
LABEL_7:
    if (v12++ == v13)
    {
      goto LABEL_26;
    }
  }

  if (__CocoaDictionary.Index.age.getter() == *(a5 + 36))
  {
    __CocoaDictionary.Index.key.getter();
    type metadata accessor for CFStringRef(0);
    swift_dynamicCast();
    specialized __RawDictionaryStorage.find<A>(_:)(v31);
    v19 = v18;

    if ((v19 & 1) == 0)
    {
      goto LABEL_29;
    }

    __CocoaDictionary.Index.dictionary.getter();
    v14 = __CocoaDictionary.index(after:)();
    v16 = v20;
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  __break(1u);
}

void specialized Collection.index(_:offsetBy:limitedBy:)(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>)
{
  if (a4 < 0)
  {
    goto LABEL_39;
  }

  v14 = a2;
  v15 = a1;
  v36 = a3 & 1;
  outlined copy of [A : B].Index._Variant<A, B>(a1, a2, a3 & 1);
  if (!a4)
  {
LABEL_30:
    *a9 = v15;
    *(a9 + 8) = v14;
    *(a9 + 16) = v36;
    return;
  }

  v16 = 0;
  v39 = a8 & 0xC000000000000001;
  v17 = a4 - 1;
  v38 = a7;
  while (1)
  {
    if (a3)
    {
      if ((a7 & 1) == 0)
      {
        goto LABEL_40;
      }

      if (MEMORY[0x2318E2B60](v15, v14, a5, a6))
      {
        a5 = v15;
LABEL_32:
        outlined consume of [CFStringRef : Swift.AnyObject].Index._Variant(a5, v14, a3 & 1);
        *a9 = 0;
        *(a9 + 8) = 0;
        *(a9 + 16) = -1;
        return;
      }

      if (v39)
      {
        v18 = __CocoaDictionary.index(after:)();
        v20 = v19;
        outlined consume of [CFStringRef : Swift.AnyObject].Index._Variant(v15, v14, 1);
        v15 = v18;
        v14 = v20;
      }

      else
      {
        if (__CocoaDictionary.Index.age.getter() != *(a8 + 36))
        {
          goto LABEL_37;
        }

        __CocoaDictionary.Index.key.getter();
        type metadata accessor for CFStringRef(0);
        swift_dynamicCast();
        specialized __RawDictionaryStorage.find<A>(_:)(v41);
        v23 = v22;

        if ((v23 & 1) == 0)
        {
          goto LABEL_38;
        }

        __CocoaDictionary.Index.dictionary.getter();
        v24 = __CocoaDictionary.index(after:)();
        v26 = v25;
        swift_unknownObjectRelease();
        outlined consume of [CFStringRef : Swift.AnyObject].Index._Variant(v15, v14, 1);
        v15 = v24;
        v14 = v26;
        a7 = v38;
      }

      goto LABEL_5;
    }

    if (a7)
    {
      goto LABEL_40;
    }

    if (v14 != a6)
    {
      break;
    }

    if (v15 == a5)
    {
      goto LABEL_32;
    }

    if (v39)
    {
      goto LABEL_41;
    }

    if ((v15 & 0x8000000000000000) != 0)
    {
      goto LABEL_34;
    }

    v27 = 1 << *(a8 + 32);
    if (v15 >= v27)
    {
      goto LABEL_34;
    }

    v28 = v15 >> 6;
    v29 = *(a8 + 64 + 8 * (v15 >> 6));
    if (((v29 >> v15) & 1) == 0)
    {
      goto LABEL_35;
    }

    if (*(a8 + 36) != v14)
    {
      goto LABEL_36;
    }

    v30 = v29 & (-2 << (v15 & 0x3F));
    if (v30)
    {
      outlined consume of [CFStringRef : Swift.AnyObject].Index._Variant(v15, v14, 0);
      v27 = __clz(__rbit64(v30)) | v15 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v31 = v28 << 6;
      v32 = v28 + 1;
      v33 = (a8 + 72 + 8 * v28);
      while (v32 < (v27 + 63) >> 6)
      {
        v35 = *v33++;
        v34 = v35;
        v31 += 64;
        ++v32;
        if (v35)
        {
          outlined consume of [CFStringRef : Swift.AnyObject].Index._Variant(v15, v14, 0);
          v27 = __clz(__rbit64(v34)) + v31;
          goto LABEL_28;
        }
      }

      outlined consume of [CFStringRef : Swift.AnyObject].Index._Variant(v15, v14, 0);
LABEL_28:
      a7 = v38;
    }

    v14 = v14;
    v15 = v27;
LABEL_5:
    if (v16++ == v17)
    {
      goto LABEL_30;
    }
  }

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
}

void specialized Collection.distance(from:to:)(int64_t a1, uint64_t a2, uint64_t a3, int64_t a4, uint64_t a5, char a6, uint64_t a7)
{
  v8 = a6;
  v11 = a2;
  v12 = a1;
  if (a6)
  {
    if (a3)
    {
      v13 = a3;
      if (MEMORY[0x2318E2B50](a4, a5, a1, a2))
      {
        goto LABEL_45;
      }

      v14 = MEMORY[0x2318E2B60](v12, v11, a4, a5);
      outlined copy of [A : B].Index._Variant<A, B>(v12, v11, 1);
      LOBYTE(a3) = v13;
      if (v14)
      {
        goto LABEL_5;
      }

LABEL_10:
      v15 = 1;
      v32 = v8;
      while (1)
      {
        if ((a7 & 0xC000000000000001) != 0)
        {
          if ((a3 & 1) == 0)
          {
            goto LABEL_49;
          }

          v17 = __CocoaDictionary.index(after:)();
          v19 = v18;
        }

        else
        {
          if ((a3 & 1) == 0)
          {
            if ((v12 & 0x8000000000000000) != 0)
            {
              goto LABEL_40;
            }

            v17 = 1 << *(a7 + 32);
            if (v12 >= v17)
            {
              goto LABEL_40;
            }

            v24 = v12 >> 6;
            v25 = *(a7 + 64 + 8 * (v12 >> 6));
            if (((v25 >> v12) & 1) == 0)
            {
              goto LABEL_41;
            }

            if (*(a7 + 36) != v11)
            {
              goto LABEL_43;
            }

            v26 = v25 & (-2 << (v12 & 0x3F));
            if (v26)
            {
              outlined consume of [CFStringRef : Swift.AnyObject].Index._Variant(v12, v11, 0);
              v17 = __clz(__rbit64(v26)) | v12 & 0x7FFFFFFFFFFFFFC0;
            }

            else
            {
              v27 = v24 << 6;
              v28 = v24 + 1;
              v29 = (a7 + 72 + 8 * v24);
              while (v28 < (v17 + 63) >> 6)
              {
                v31 = *v29++;
                v30 = v31;
                v27 += 64;
                ++v28;
                if (v31)
                {
                  outlined consume of [CFStringRef : Swift.AnyObject].Index._Variant(v12, v11, 0);
                  v17 = __clz(__rbit64(v30)) + v27;
                  goto LABEL_33;
                }
              }

              outlined consume of [CFStringRef : Swift.AnyObject].Index._Variant(v12, v11, 0);
            }

LABEL_33:
            v8 = v32;
            if (v32)
            {
              goto LABEL_48;
            }

            if (a5 != v11)
            {
              goto LABEL_44;
            }

            LOBYTE(a3) = 0;
            v11 = v11;
            if (v17 == a4)
            {
              v17 = a4;
              v19 = v11;
LABEL_37:
              outlined consume of [CFStringRef : Swift.AnyObject].Index._Variant(v17, v19, a3);
              return;
            }

            goto LABEL_11;
          }

          if (__CocoaDictionary.Index.age.getter() != *(a7 + 36))
          {
            goto LABEL_39;
          }

          __CocoaDictionary.Index.key.getter();
          type metadata accessor for CFStringRef(0);
          swift_dynamicCast();
          specialized __RawDictionaryStorage.find<A>(_:)(v33);
          v21 = v20;

          if ((v21 & 1) == 0)
          {
            goto LABEL_42;
          }

          __CocoaDictionary.Index.dictionary.getter();
          v17 = __CocoaDictionary.index(after:)();
          v19 = v22;
          v8 = v32;
          swift_unknownObjectRelease();
        }

        outlined consume of [CFStringRef : Swift.AnyObject].Index._Variant(v12, v11, 1);
        if ((v8 & 1) == 0)
        {
          goto LABEL_48;
        }

        v23 = MEMORY[0x2318E2B60](v17, v19, a4, a5);
        LOBYTE(a3) = 1;
        v11 = v19;
        if (v23)
        {
          goto LABEL_37;
        }

LABEL_11:
        v12 = v17;
        if (__OFADD__(v15++, 1))
        {
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
LABEL_44:
          __break(1u);
LABEL_45:
          __break(1u);
LABEL_46:
          __break(1u);
          goto LABEL_47;
        }
      }
    }
  }

  else if ((a3 & 1) == 0)
  {
    if (a4 < a1)
    {
      goto LABEL_46;
    }

    if (a5 == a2)
    {
      if (a1 == a4)
      {
LABEL_5:
        outlined consume of [CFStringRef : Swift.AnyObject].Index._Variant(v12, v11, a3 & 1);
        return;
      }

      goto LABEL_10;
    }

LABEL_47:
    __break(1u);
LABEL_48:
    __break(1u);
LABEL_49:
    __break(1u);
  }

  __break(1u);
}

uint64_t specialized _CMFormatDescriptionFourCCConvertible.description.getter(unsigned int a1)
{
  v2 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v2 - 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22E0F1050;
  *(v3 + 32) = HIBYTE(a1);
  *(v3 + 33) = BYTE2(a1);
  *(v3 + 34) = BYTE1(a1);
  *(v3 + 35) = a1;
  if (isprint(HIBYTE(a1)) && isprint(BYTE2(a1)) && isprint(BYTE1(a1)) && isprint(a1))
  {
    static String.Encoding.utf8.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    lazy protocol witness table accessor for type Slice<CMTaggedBufferGroupRef> and conformance Slice<A>(&lazy protocol witness table cache variable for type [UInt8] and conformance [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR, MEMORY[0x277D83970]);
    v4 = String.init<A>(bytes:encoding:)();
    v6 = v5;

    if (v6)
    {
      MEMORY[0x2318E2800](v4, v6);

      MEMORY[0x2318E2800](39, 0xE100000000000000);
      return 39;
    }
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v8 = swift_allocObject();
  v9 = MEMORY[0x277D84CC0];
  *(v8 + 16) = xmmword_22E0EF920;
  v10 = MEMORY[0x277D84D30];
  *(v8 + 56) = v9;
  *(v8 + 64) = v10;
  *(v8 + 32) = a1;
  return String.init(format:_:)();
}

uint64_t _CMFormatDescriptionFourCCConvertible.description.getter(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v2 - 8);
  v16[1] = v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  dispatch thunk of RawRepresentable.rawValue.getter();
  v4 = BYTE3(v17);
  dispatch thunk of RawRepresentable.rawValue.getter();
  v5 = BYTE2(v17);
  v6 = WORD1(v17);
  dispatch thunk of RawRepresentable.rawValue.getter();
  v7 = BYTE1(v17);
  dispatch thunk of RawRepresentable.rawValue.getter();
  v8 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22E0F1050;
  *(v9 + 32) = v4;
  *(v9 + 33) = v6;
  *(v9 + 34) = v7;
  *(v9 + 35) = v8;
  if (isprint(v4) && isprint(v5) && isprint(v7) && isprint(v8))
  {
    v17 = v9;
    static String.Encoding.utf8.getter();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays5UInt8VGMd, &_sSays5UInt8VGMR);
    lazy protocol witness table accessor for type Slice<CMTaggedBufferGroupRef> and conformance Slice<A>(&lazy protocol witness table cache variable for type [UInt8] and conformance [A], &_sSays5UInt8VGMd, &_sSays5UInt8VGMR, MEMORY[0x277D83970]);
    v10 = String.init<A>(bytes:encoding:)();
    v12 = v11;

    if (v12)
    {
      v17 = 39;
      v18 = 0xE100000000000000;
      MEMORY[0x2318E2800](v10, v12);

      MEMORY[0x2318E2800](39, 0xE100000000000000);
      return v17;
    }
  }

  else
  {
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_22E0EF920;
  v15 = MEMORY[0x277D84D30];
  *(v14 + 56) = MEMORY[0x277D84CC0];
  *(v14 + 64) = v15;
  dispatch thunk of RawRepresentable.rawValue.getter();
  return String.init(format:_:)();
}

uint64_t _CMFormatDescriptionInitTrampoline.init(taggedBuffers:extensions:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a2;
  v6[2] = a1;
  v6[3] = v4;
  _CMInitTrampoline.init(_:)(partial apply for closure #1 in _CMFormatDescriptionInitTrampoline.init(taggedBuffers:extensions:), v6, a3, *(a4 + 8));
}

{
  v6 = *a2;
  v7 = Array<A>.taggedBufferGroup.getter(a1);

  v9[2] = v7;
  v9[3] = v6;
  _CMInitTrampoline.init(_:)(partial apply for closure #1 in _CMFormatDescriptionInitTrampoline.init(taggedBuffers:extensions:), v9, a3, *(a4 + 8));
}

id static CMFormatDescriptionRef.Extensions.Key.protectedContentOriginalFormat.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x277CC03A0];
  *a1 = *MEMORY[0x277CC03A0];
  return v1;
}

id static CMFormatDescriptionRef.Extensions.Key.contentColorVolume.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x277CC02E0];
  *a1 = *MEMORY[0x277CC02E0];
  return v1;
}

id static CMFormatDescriptionRef.Extensions.Key.horizontalFieldOfView.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x277CC0350];
  *a1 = *MEMORY[0x277CC0350];
  return v1;
}

id static CMFormatDescriptionRef.Extensions.Key.logTransferFunction.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x277CC0378];
  *a1 = *MEMORY[0x277CC0378];
  return v1;
}

id static CMFormatDescriptionRef.Extensions.Key.heroEye.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x277CC0340];
  *a1 = *MEMORY[0x277CC0340];
  return v1;
}

id static CMFormatDescriptionRef.Extensions.Key.stereoCameraBaseline.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x277CC03C8];
  *a1 = *MEMORY[0x277CC03C8];
  return v1;
}

id static CMFormatDescriptionRef.Extensions.Key.horizontalDisparityAdjustment.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x277CC0348];
  *a1 = *MEMORY[0x277CC0348];
  return v1;
}

id static CMFormatDescriptionRef.Extensions.Key.hasLeftStereoEyeView.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x277CC0330];
  *a1 = *MEMORY[0x277CC0330];
  return v1;
}

id static CMFormatDescriptionRef.Extensions.Key.hasRightStereoEyeView.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x277CC0338];
  *a1 = *MEMORY[0x277CC0338];
  return v1;
}

id static CMFormatDescriptionRef.Extensions.Key.hasAdditionalViews.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x277CC0328];
  *a1 = *MEMORY[0x277CC0328];
  return v1;
}

id static CMFormatDescriptionRef.Extensions.Key.projectionKind.getter@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x277CC0398];
  *a1 = *MEMORY[0x277CC0398];
  return v1;
}

uint64_t CMFormatDescriptionRef.Extensions.Value.propertyListRepresentation.setter(uint64_t a1)
{
  result = swift_unknownObjectRelease();
  *v1 = a1;
  return result;
}

uint64_t static CMFormatDescriptionRef.Extensions.Value.number<A>(_:)@<X0>(uint64_t *a3@<X8>)
{
  result = _bridgeAnythingToObjectiveC<A>(_:)();
  *a3 = result;
  return result;
}

uint64_t static CMFormatDescriptionRef.Extensions.Value.string(_:)@<X0>(uint64_t *a1@<X8>)
{
  result = MEMORY[0x2318E2770]();
  *a1 = result;
  return result;
}

uint64_t static CMFormatDescriptionRef.Extensions.Value.cleanAperture<A, B, C, D>(width:height:horizontalOffet:verticalOffset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, Class *a9@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMR);
  inited = swift_initStackObject();
  v17 = MEMORY[0x277CC0478];
  *(inited + 16) = xmmword_22E0F1050;
  v18 = *v17;
  *(inited + 32) = *v17;
  *(inited + 64) = a5;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 40));
  (*(*(a5 - 8) + 16))(boxed_opaque_existential_0, a1, a5);
  v20 = *MEMORY[0x277CC0448];
  *(inited + 72) = *MEMORY[0x277CC0448];
  *(inited + 104) = a6;
  v21 = __swift_allocate_boxed_opaque_existential_0((inited + 80));
  (*(*(a6 - 8) + 16))(v21, a2, a6);
  v22 = *MEMORY[0x277CC0458];
  *(inited + 112) = *MEMORY[0x277CC0458];
  *(inited + 144) = a7;
  v23 = __swift_allocate_boxed_opaque_existential_0((inited + 120));
  (*(*(a7 - 8) + 16))(v23, a3, a7);
  v24 = *MEMORY[0x277CC0468];
  *(inited + 152) = *MEMORY[0x277CC0468];
  *(inited + 184) = a8;
  v25 = __swift_allocate_boxed_opaque_existential_0((inited + 160));
  (*(*(a8 - 8) + 16))(v25, a4, a8);
  v26 = v18;
  v27 = v20;
  v28 = v22;
  v29 = v24;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CFStringRefa_yptMd, &_sSo11CFStringRefa_yptMR);
  swift_arrayDestroy();
  type metadata accessor for CFStringRef(0);
  _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *a9 = isa;
  return result;
}

uint64_t static CMFormatDescriptionRef.Extensions.Value.cleanAperture(width:height:horizontalOffet:verticalOffset:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, Class *a9@<X8>)
{
  v12 = a1 / a2;
  v13 = a3 / a4;
  v14 = a5 / a6;
  v15 = a7 / a8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22E0F1060;
  v41 = *MEMORY[0x277CC0478];
  *(inited + 32) = *MEMORY[0x277CC0478];
  v17 = MEMORY[0x277D839F8];
  *(inited + 40) = v12;
  v18 = *MEMORY[0x277CC0448];
  *(inited + 64) = v17;
  *(inited + 72) = v18;
  *(inited + 80) = v13;
  v19 = *MEMORY[0x277CC0458];
  *(inited + 104) = v17;
  *(inited + 112) = v19;
  *(inited + 120) = v14;
  v20 = *MEMORY[0x277CC0468];
  *(inited + 144) = v17;
  *(inited + 152) = v20;
  *(inited + 160) = v15;
  v21 = *MEMORY[0x277CC0480];
  *(inited + 184) = v17;
  *(inited + 192) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  v22 = swift_allocObject();
  *(v22 + 16) = xmmword_22E0F1070;
  *(v22 + 32) = a1;
  *(v22 + 40) = a2;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
  *(inited + 200) = v22;
  v24 = *MEMORY[0x277CC0450];
  *(inited + 224) = v23;
  *(inited + 232) = v24;
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_22E0F1070;
  *(v25 + 32) = a3;
  *(v25 + 40) = a4;
  *(inited + 240) = v25;
  v26 = *MEMORY[0x277CC0460];
  *(inited + 264) = v23;
  *(inited + 272) = v26;
  v27 = swift_allocObject();
  *(v27 + 16) = xmmword_22E0F1070;
  *(v27 + 32) = a5;
  *(v27 + 40) = a6;
  *(inited + 280) = v27;
  v28 = *MEMORY[0x277CC0470];
  *(inited + 304) = v23;
  *(inited + 312) = v28;
  v29 = swift_allocObject();
  *(v29 + 16) = xmmword_22E0F1070;
  *(v29 + 32) = a7;
  *(v29 + 40) = a8;
  *(inited + 344) = v23;
  *(inited + 320) = v29;
  v30 = v41;
  v31 = v18;
  v32 = v19;
  v33 = v20;
  v34 = v21;
  v35 = v24;
  v36 = v26;
  v37 = v28;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CFStringRefa_yptMd, &_sSo11CFStringRefa_yptMR);
  swift_arrayDestroy();
  type metadata accessor for CFStringRef(0);
  _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *a9 = isa;
  return result;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CMFormatDescriptionRef.Extensions.Key(uint64_t a1)
{
  type metadata accessor for CFStringRef(0);
  _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);
  return _CFObject.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CMFormatDescriptionRef.Extensions.Key(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for CFStringRef(0);
  _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CMFormatDescriptionRef.Extensions.Key(uint64_t *a1, uint64_t *a2)
{
  type metadata accessor for CFStringRef(0);
  _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);
  return static _CFObject.== infix(_:_:)() & 1;
}

id static CMFormatDescriptionRef.Extensions.Value.fieldDetail(_:)@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v2 = *a1;
  *a2 = v2;
  return v2;
}

uint64_t static CMFormatDescriptionRef.Extensions.Value.pixelAspectRatio<A, B>(horizontalSpacing:verticalSpacing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, Class *a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMR);
  inited = swift_initStackObject();
  v11 = MEMORY[0x277CC0488];
  *(inited + 16) = xmmword_22E0F1070;
  v12 = *v11;
  *(inited + 32) = *v11;
  *(inited + 64) = a3;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 40));
  (*(*(a3 - 8) + 16))(boxed_opaque_existential_0, a1, a3);
  v14 = *MEMORY[0x277CC0490];
  *(inited + 72) = *MEMORY[0x277CC0490];
  *(inited + 104) = a4;
  v15 = __swift_allocate_boxed_opaque_existential_0((inited + 80));
  (*(*(a4 - 8) + 16))(v15, a2, a4);
  v16 = v12;
  v17 = v14;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CFStringRefa_yptMd, &_sSo11CFStringRefa_yptMR);
  swift_arrayDestroy();
  type metadata accessor for CFStringRef(0);
  _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *a5 = isa;
  return result;
}

id one-time initialization function for itu_R_709_2()
{
  static CMFormatDescriptionRef.Extensions.Value.ColorPrimaries.itu_R_709_2 = *MEMORY[0x277CC0250];
  return static CMFormatDescriptionRef.Extensions.Value.ColorPrimaries.itu_R_709_2;
}

{
  static CMFormatDescriptionRef.Extensions.Value.TransferFunction.itu_R_709_2 = *MEMORY[0x277CC04D8];
  return static CMFormatDescriptionRef.Extensions.Value.TransferFunction.itu_R_709_2;
}

{
  static CMFormatDescriptionRef.Extensions.Value.YCbCrMatrix.itu_R_709_2 = *MEMORY[0x277CC0538];
  return static CMFormatDescriptionRef.Extensions.Value.YCbCrMatrix.itu_R_709_2;
}

id one-time initialization function for itu_R_2020()
{
  static CMFormatDescriptionRef.Extensions.Value.ColorPrimaries.itu_R_2020 = *MEMORY[0x277CC0248];
  return static CMFormatDescriptionRef.Extensions.Value.ColorPrimaries.itu_R_2020;
}

{
  static CMFormatDescriptionRef.Extensions.Value.TransferFunction.itu_R_2020 = *MEMORY[0x277CC04C8];
  return static CMFormatDescriptionRef.Extensions.Value.TransferFunction.itu_R_2020;
}

{
  static CMFormatDescriptionRef.Extensions.Value.YCbCrMatrix.itu_R_2020 = *MEMORY[0x277CC0528];
  return static CMFormatDescriptionRef.Extensions.Value.YCbCrMatrix.itu_R_2020;
}

id one-time initialization function for left()
{
  static CMFormatDescriptionRef.Extensions.Value.ChromaLocation.left = *MEMORY[0x277CC0220];
  return static CMFormatDescriptionRef.Extensions.Value.ChromaLocation.left;
}

{
  static CMFormatDescriptionRef.Extensions.Value.HeroEye.left = *MEMORY[0x277CC0438];
  return static CMFormatDescriptionRef.Extensions.Value.HeroEye.left;
}

NSNumber static CMFormatDescriptionRef.Extensions.Value.mpeg2VideoProfile(_:)@<X0>(NSNumber *a1@<X8>)
{
  result.super.super.isa = UInt32._bridgeToObjectiveC()().super.super.isa;
  a1->super.super.isa = result.super.super.isa;
  return result;
}

uint64_t static CMFormatDescriptionRef.Extensions.Value.qtTextColor(red:green:blue:alpha:)@<X0>(Class *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_12CoreGraphics7CGFloatVtGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_12CoreGraphics7CGFloatVtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22E0F1080;
  v9 = *MEMORY[0x277CC07B8];
  *(inited + 32) = *MEMORY[0x277CC07B8];
  *(inited + 40) = a2 * 65535.0;
  v10 = *MEMORY[0x277CC07B0];
  *(inited + 48) = *MEMORY[0x277CC07B0];
  *(inited + 56) = a3 * 65535.0;
  v11 = *MEMORY[0x277CC07A8];
  *(inited + 64) = *MEMORY[0x277CC07A8];
  *(inited + 72) = a4 * 65535.0;
  v12 = v9;
  v13 = v10;
  v14 = v11;
  v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_12CoreGraphics7CGFloatVTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CFStringRefa_12CoreGraphics7CGFloatVtMd, &_sSo11CFStringRefa_12CoreGraphics7CGFloatVtMR);
  swift_arrayDestroy();
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v15);

  type metadata accessor for CFStringRef(0);
  _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *a1 = isa;
  return result;
}

unint64_t specialized _dictionaryUpCast<A, B, C, D>(_:)(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo11CFStringRefaypGMd, &_ss18_DictionaryStorageCySo11CFStringRefaypGMR);
    v2 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v2 = MEMORY[0x277D84F98];
  }

  type metadata accessor for CFStringRef(0);
  v4 = a1 + 64;
  v5 = 1 << *(a1 + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(a1 + 64);
  if (v3 == MEMORY[0x277D837D0])
  {
    v24 = (v5 + 63) >> 6;

    v25 = 0;
    if (v7)
    {
      goto LABEL_28;
    }

LABEL_29:
    while (1)
    {
      v30 = v25 + 1;
      if (__OFADD__(v25, 1))
      {
        break;
      }

      if (v30 >= v24)
      {
LABEL_37:

        return v2;
      }

      v7 = *(v4 + 8 * v30);
      ++v25;
      if (v7)
      {
        while (1)
        {
          v31 = __clz(__rbit64(v7));
          v7 &= v7 - 1;
          v32 = *(*(a1 + 48) + ((v30 << 9) | (8 * v31)));
          swift_dynamicCast();
          outlined init with take of Any((v39 + 8), (v38 + 8));
          outlined init with take of Any((v38 + 8), v37);
          outlined init with take of Any(v37, v38);
          result = specialized __RawDictionaryStorage.find<A>(_:)(v32);
          if (v33)
          {
            v26 = *(v2 + 48);
            v27 = *(v26 + 8 * result);
            *(v26 + 8 * result) = v32;
            v28 = result;

            v29 = (*(v2 + 56) + 32 * v28);
            __swift_destroy_boxed_opaque_existential_1(v29);
            result = outlined init with take of Any(v38, v29);
            v25 = v30;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

          else
          {
            if (*(v2 + 16) >= *(v2 + 24))
            {
              goto LABEL_41;
            }

            *(v2 + 64 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
            *(*(v2 + 48) + 8 * result) = v32;
            result = outlined init with take of Any(v38, (*(v2 + 56) + 32 * result));
            v34 = *(v2 + 16);
            v35 = __OFADD__(v34, 1);
            v36 = v34 + 1;
            if (v35)
            {
              goto LABEL_42;
            }

            *(v2 + 16) = v36;
            v25 = v30;
            if (!v7)
            {
              goto LABEL_29;
            }
          }

LABEL_28:
          v30 = v25;
        }
      }
    }
  }

  else
  {
    v8 = (v5 + 63) >> 6;
    v9 = v2 + 64;

    v11 = 0;
    while (v7)
    {
LABEL_16:
      v14 = (v11 << 9) | (8 * __clz(__rbit64(v7)));
      v15 = *(*(a1 + 48) + v14);
      *&v37[0] = *(*(a1 + 56) + v14);
      v16 = v15;
      swift_dynamicCast();
      outlined init with take of Any((v39 + 8), (v38 + 8));
      outlined init with take of Any((v38 + 8), v39);
      Hasher.init(_seed:)();
      _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);
      _CFObject.hash(into:)();
      result = Hasher._finalize()();
      v17 = -1 << *(v2 + 32);
      v18 = result & ~v17;
      v19 = v18 >> 6;
      if (((-1 << v18) & ~*(v9 + 8 * (v18 >> 6))) == 0)
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
          v23 = *(v9 + 8 * v19);
          if (v23 != -1)
          {
            v12 = __clz(__rbit64(~v23)) + (v19 << 6);
            goto LABEL_10;
          }
        }

        goto LABEL_39;
      }

      v12 = __clz(__rbit64((-1 << v18) & ~*(v9 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_10:
      *(v9 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v7 &= v7 - 1;
      *(*(v2 + 48) + 8 * v12) = v16;
      result = outlined init with take of Any(v39, (*(v2 + 56) + 32 * v12));
      ++*(v2 + 16);
    }

    while (1)
    {
      v13 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v13 >= v8)
      {
        goto LABEL_37;
      }

      v7 = *(v4 + 8 * v13);
      ++v11;
      if (v7)
      {
        v11 = v13;
        goto LABEL_16;
      }
    }

    __break(1u);
LABEL_39:
    __break(1u);
  }

  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  __break(1u);
  return result;
}

uint64_t static CMFormatDescriptionRef.Extensions.Value.mobile3GPPTextColor(red:green:blue:alpha:)@<X0>(Class *a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_12CoreGraphics7CGFloatVtGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_12CoreGraphics7CGFloatVtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22E0F1050;
  v11 = *MEMORY[0x277CC07B8];
  *(inited + 32) = *MEMORY[0x277CC07B8];
  *(inited + 40) = a2 * 255.0;
  v12 = *MEMORY[0x277CC07B0];
  *(inited + 48) = *MEMORY[0x277CC07B0];
  *(inited + 56) = a3 * 255.0;
  v13 = *MEMORY[0x277CC07A8];
  *(inited + 64) = *MEMORY[0x277CC07A8];
  *(inited + 72) = a4 * 255.0;
  v14 = *MEMORY[0x277CC07A0];
  *(inited + 80) = *MEMORY[0x277CC07A0];
  *(inited + 88) = a5 * 255.0;
  v15 = v11;
  v16 = v12;
  v17 = v13;
  v18 = v14;
  v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_12CoreGraphics7CGFloatVTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CFStringRefa_12CoreGraphics7CGFloatVtMd, &_sSo11CFStringRefa_12CoreGraphics7CGFloatVtMR);
  swift_arrayDestroy();
  specialized _dictionaryUpCast<A, B, C, D>(_:)(v19);

  type metadata accessor for CFStringRef(0);
  _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *a1 = isa;
  return result;
}

uint64_t static CMFormatDescriptionRef.Extensions.Value.fontTable(_:)@<X0>(uint64_t a1@<X0>, Class *a2@<X8>)
{
  v7 = MEMORY[0x277D84F98];
  v4 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySo11CFStringRefaypGMd, &_sSDySo11CFStringRefaypGMR);
  Dictionary.reserveCapacity(_:)(v4);
  specialized Sequence.forEach(_:)(a1, &v7);
  type metadata accessor for CFStringRef(0);
  _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *a2 = isa;
  return result;
}

uint64_t specialized Sequence.forEach(_:)(uint64_t a1, void *a2)
{
  v3 = a1 + 64;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  v7 = (v4 + 63) >> 6;

  v8 = 0;
  while (v6)
  {
LABEL_11:
    v11 = __clz(__rbit64(v6)) | (v8 << 6);
    v12 = *(*(a1 + 48) + 8 * v11);
    v13 = (*(a1 + 56) + 16 * v11);
    v15 = *v13;
    v14 = v13[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v16 = swift_allocObject();
    *(v16 + 16) = xmmword_22E0EF920;
    *(v16 + 56) = MEMORY[0x277D83B88];
    *(v16 + 64) = MEMORY[0x277D83C10];
    *(v16 + 32) = v12;

    v17 = String.init(format:_:)();
    v18 = MEMORY[0x2318E2770](v17);

    v37 = MEMORY[0x277D837D0];
    *&v36 = v15;
    *(&v36 + 1) = v14;
    outlined init with take of Any(&v36, v35);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *a2;
    v20 = v38;
    v21 = specialized __RawDictionaryStorage.find<A>(_:)(v18);
    v23 = v20[2];
    v24 = (v22 & 1) == 0;
    v25 = __OFADD__(v23, v24);
    v26 = v23 + v24;
    if (v25)
    {
      goto LABEL_23;
    }

    v27 = v22;
    if (v20[3] < v26)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v26, isUniquelyReferenced_nonNull_native);
      v21 = specialized __RawDictionaryStorage.find<A>(_:)(v18);
      if ((v27 & 1) != (v28 & 1))
      {
        goto LABEL_25;
      }

LABEL_16:
      v29 = v38;
      if (v27)
      {
        goto LABEL_4;
      }

      goto LABEL_17;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_16;
    }

    v32 = v21;
    specialized _NativeDictionary.copy()();
    v21 = v32;
    v29 = v38;
    if (v27)
    {
LABEL_4:
      v9 = (v29[7] + 32 * v21);
      __swift_destroy_boxed_opaque_existential_1(v9);
      outlined init with take of Any(v35, v9);

      goto LABEL_5;
    }

LABEL_17:
    v29[(v21 >> 6) + 8] |= 1 << v21;
    *(v29[6] + 8 * v21) = v18;
    outlined init with take of Any(v35, (v29[7] + 32 * v21));
    v30 = v29[2];
    v25 = __OFADD__(v30, 1);
    v31 = v30 + 1;
    if (v25)
    {
      goto LABEL_24;
    }

    v29[2] = v31;
LABEL_5:
    v6 &= v6 - 1;
    *a2 = v29;
  }

  while (1)
  {
    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v10 >= v7)
    {
    }

    v6 = *(v3 + 8 * v10);
    ++v8;
    if (v6)
    {
      v8 = v10;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  type metadata accessor for CFStringRef(0);
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void specialized Sequence.forEach(_:)(unint64_t a1, char **a2, uint64_t *a3)
{
  if (a1 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = MEMORY[0x2318E2C00](v11))
  {
    v7 = 0;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x2318E2A60](v7, a1);
      }

      else
      {
        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v8 = *(a1 + 8 * v7 + 32);
      }

      v9 = v8;
      v10 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v13 = v8;
      closure #1 in _CMFormatDescriptionInitTrampoline.init(h264ParameterSets:nalUnitHeaderLength:)(&v13, a2, a3);

      if (!v3)
      {
        ++v7;
        if (v10 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    if ((a1 & 0x8000000000000000) != 0)
    {
      v11 = a1;
    }

    else
    {
      v11 = a1 & 0xFFFFFFFFFFFFFF8;
    }
  }
}

BOOL protocol witness for SetAlgebra.insert(_:) in conformance CMFormatDescriptionRef.Extensions.Value.FontFace(_BYTE *a1, unsigned __int8 *a2)
{
  v3 = *a2;
  v4 = *v2;
  if ((v4 & v3) != v3)
  {
    *v2 = v4 | v3;
  }

  *a1 = v3;
  return (v4 & v3) != v3;
}

unsigned __int8 *protocol witness for SetAlgebra.remove(_:) in conformance CMFormatDescriptionRef.Extensions.Value.FontFace@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  v5 = v4 & v3;
  if ((v4 & v3) != 0)
  {
    *v2 = v4 & ~v3;
  }

  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

unsigned __int8 *protocol witness for SetAlgebra.update(with:) in conformance CMFormatDescriptionRef.Extensions.Value.FontFace@<X0>(unsigned __int8 *result@<X0>, _BYTE *a2@<X8>)
{
  v3 = *result;
  v4 = *v2;
  *v2 = v4 | v3;
  v5 = v4 & v3;
  *a2 = v5;
  a2[1] = v5 == 0;
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance CMFormatDescriptionRef.Extensions.Value.FontFace@<X0>(_BYTE *a1@<X8>)
{
  result = static UInt8._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  return result;
}

uint64_t static CMFormatDescriptionRef.Extensions.Value.qtTextDefaultStyle(startChar:height:ascent:localFontID:fontFace:fontSize:foregroundColor:defaultFontName:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X6>, uint64_t a8@<X7>, Class *a9@<X8>, uint64_t a10)
{
  v15 = *a5;
  v16 = *a7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22E0F1090;
  v18 = *MEMORY[0x277CC0860];
  *(inited + 32) = *MEMORY[0x277CC0860];
  v19 = MEMORY[0x277D83B88];
  v20 = MEMORY[0x277CC0858];
  *(inited + 40) = a1;
  v21 = *v20;
  *(inited + 64) = v19;
  *(inited + 72) = v21;
  v22 = MEMORY[0x277CC0828];
  *(inited + 80) = a2;
  v23 = *v22;
  *(inited + 104) = v19;
  *(inited + 112) = v23;
  v24 = MEMORY[0x277CC0838];
  *(inited + 120) = a3;
  v25 = *v24;
  *(inited + 144) = v19;
  *(inited + 152) = v25;
  v26 = MEMORY[0x277CC0840];
  *(inited + 160) = a4;
  v27 = *v26;
  *(inited + 184) = v19;
  *(inited + 192) = v27;
  *(inited + 200) = v15;
  v28 = *MEMORY[0x277CC0848];
  *(inited + 224) = &type metadata for CMFormatDescriptionRef.Extensions.Value.FontFace;
  *(inited + 232) = v28;
  *(inited + 240) = a6;
  v29 = *MEMORY[0x277CC0850];
  *(inited + 264) = v19;
  *(inited + 272) = v29;
  *(inited + 304) = swift_getObjectType();
  *(inited + 280) = v16;
  swift_unknownObjectRetain();
  v30 = v18;
  v31 = v21;
  v32 = v23;
  v33 = v25;
  v34 = v27;
  v35 = v28;
  v36 = v29;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CFStringRefa_yptMd, &_sSo11CFStringRefa_yptMR);
  swift_arrayDestroy();
  if (a10)
  {
    v37 = *MEMORY[0x277CC07C8];
    v45 = MEMORY[0x277D837D0];
    *&v44 = a8;
    *(&v44 + 1) = a10;
    outlined init with take of Any(&v44, v43);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v43, v37, isUniquelyReferenced_nonNull_native);
  }

  type metadata accessor for CFStringRef(0);
  _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *a9 = isa;
  return result;
}

uint64_t static CMFormatDescriptionRef.Extensions.Value.mobile3GPPTextDefaultStyle(startChar:endChar:localFontID:fontFace:fontSize:foregroundColor:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, Class *a7@<X8>)
{
  v12 = *a4;
  v13 = *a6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22E0F10A0;
  v15 = *MEMORY[0x277CC0860];
  *(inited + 32) = *MEMORY[0x277CC0860];
  v16 = MEMORY[0x277D83B88];
  v17 = MEMORY[0x277CC0830];
  *(inited + 40) = a1;
  v18 = *v17;
  *(inited + 64) = v16;
  *(inited + 72) = v18;
  v19 = MEMORY[0x277CC0838];
  *(inited + 80) = a2;
  v20 = *v19;
  *(inited + 104) = v16;
  *(inited + 112) = v20;
  v21 = MEMORY[0x277CC0840];
  *(inited + 120) = a3;
  v22 = *v21;
  *(inited + 144) = v16;
  *(inited + 152) = v22;
  *(inited + 160) = v12;
  v23 = *MEMORY[0x277CC0848];
  *(inited + 184) = &type metadata for CMFormatDescriptionRef.Extensions.Value.FontFace;
  *(inited + 192) = v23;
  *(inited + 200) = a5;
  v24 = *MEMORY[0x277CC0850];
  *(inited + 224) = v16;
  *(inited + 232) = v24;
  *(inited + 264) = swift_getObjectType();
  *(inited + 240) = v13;
  swift_unknownObjectRetain();
  v25 = v15;
  v26 = v18;
  v27 = v20;
  v28 = v22;
  v29 = v23;
  v30 = v24;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CFStringRefa_yptMd, &_sSo11CFStringRefa_yptMR);
  swift_arrayDestroy();
  type metadata accessor for CFStringRef(0);
  _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *a7 = isa;
  return result;
}

uint64_t static CMFormatDescriptionRef.Extensions.Value.textRect(top:left:bottom:right:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, Class *a5@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMR);
  inited = swift_initStackObject();
  v11 = *MEMORY[0x277CC0820];
  *(inited + 32) = *MEMORY[0x277CC0820];
  v12 = MEMORY[0x277D83B88];
  *(inited + 40) = a1;
  v13 = MEMORY[0x277CC0810];
  *(inited + 16) = xmmword_22E0F1050;
  v14 = *v13;
  *(inited + 80) = a2;
  v15 = MEMORY[0x277CC0808];
  *(inited + 64) = v12;
  *(inited + 72) = v14;
  v16 = *v15;
  *(inited + 120) = a3;
  v17 = MEMORY[0x277CC0818];
  *(inited + 104) = v12;
  *(inited + 112) = v16;
  v18 = *v17;
  *(inited + 144) = v12;
  *(inited + 152) = v18;
  *(inited + 184) = v12;
  *(inited + 160) = a4;
  v19 = v11;
  v20 = v14;
  v21 = v16;
  v22 = v18;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CFStringRefa_yptMd, &_sSo11CFStringRefa_yptMR);
  swift_arrayDestroy();
  type metadata accessor for CFStringRef(0);
  _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *a5 = isa;
  return result;
}

Class static CMFormatDescriptionRef.Extensions.Value.textDisplayFlags(_:)@<X0>(Class result@<X0>, Class *a2@<X8>)
{
  v3 = 0;
  v4 = 0;
  v5 = 1 << *(result + 32);
  v6 = -1;
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  v7 = v6 & *(result + 7);
  for (i = (v5 + 63) >> 6; v7; v4 |= *(*(result + 6) + ((v9 << 8) | (4 * v10))))
  {
    v9 = v3;
LABEL_9:
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
  }

  while (1)
  {
    v9 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v9 >= i)
    {
      result = UInt32._bridgeToObjectiveC()().super.super.isa;
      *a2 = result;
      return result;
    }

    v7 = *(result + v9 + 7);
    ++v3;
    if (v7)
    {
      v3 = v9;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._forceBridgeFromObjectiveC(_:result:) in conformance CMFormatDescriptionRef.Extensions.Value.FontFace(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, __int16 *, uint64_t, uint64_t))
{
  v7 = 256;
  result = a5(a1, &v7, a3, a4);
  if ((v7 & 0x100) != 0)
  {
    __break(1u);
  }

  else
  {
    *a2 = v7;
    a2[1] = 0;
  }

  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._conditionallyBridgeFromObjectiveC(_:result:) in conformance CMFormatDescriptionRef.Extensions.Value.FontFace(uint64_t a1, _BYTE *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, __int16 *, uint64_t, uint64_t))
{
  v7 = 256;
  result = a5(a1, &v7, a3, a4);
  if ((result & 1) == 0)
  {
    return result & 1;
  }

  if ((v7 & 0x100) == 0)
  {
    *a2 = v7;
    a2[1] = 0;
    return result & 1;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static _ObjectiveCBridgeable._unconditionallyBridgeFromObjectiveC(_:) in conformance CMFormatDescriptionRef.Extensions.Value.TextJustification@<X0>(_BYTE *a1@<X8>)
{
  result = static Int8._unconditionallyBridgeFromObjectiveC(_:)();
  *a1 = result;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CMFormatDescriptionRef.Extensions.Value.FontFace()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CMFormatDescriptionRef.Extensions.Value.FontFace(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

NSNumber static CMFormatDescriptionRef.Extensions.Value.textJustification(_:)@<X0>(NSNumber *a1@<X8>)
{
  result.super.super.isa = Int8._bridgeToObjectiveC()().super.super.isa;
  a1->super.super.isa = result.super.super.isa;
  return result;
}

uint64_t static CMFormatDescriptionRef.Extensions.Value.sourceReferenceName(value:langCode:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, Class *a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMR);
  inited = swift_initStackObject();
  v9 = *MEMORY[0x277CC0878];
  *(inited + 32) = *MEMORY[0x277CC0878];
  v10 = MEMORY[0x277D837D0];
  *(inited + 16) = xmmword_22E0F1070;
  *(inited + 40) = a1;
  *(inited + 48) = a2;
  v11 = *MEMORY[0x277CC0870];
  *(inited + 64) = v10;
  *(inited + 72) = v11;
  *(inited + 104) = MEMORY[0x277D83B88];
  *(inited + 80) = a3;
  v12 = v9;

  v13 = v11;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSo11CFStringRefa_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CFStringRefa_yptMd, &_sSo11CFStringRefa_yptMR);
  swift_arrayDestroy();
  type metadata accessor for CFStringRef(0);
  _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  *a4 = isa;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CMFormatDescriptionRef.Extensions.Value.LogTransferFunction()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  type metadata accessor for CFStringRef(0);
  _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);
  v2 = v1;
  _CFObject.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance CMFormatDescriptionRef.Extensions.Value.LogTransferFunction(uint64_t a1)
{
  v2 = *v1;
  type metadata accessor for CFStringRef(0);
  _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);
  v3 = v2;
  _CFObject.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CMFormatDescriptionRef.Extensions.Value.LogTransferFunction(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  type metadata accessor for CFStringRef(0);
  _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);
  v3 = v2;
  _CFObject.hash(into:)();

  return Hasher._finalize()();
}

void CMFormatDescriptionRef.Extensions.Value.ContentColorVolume.ColorVolume.hash(into:)(int a1, unint64_t a2, Swift::UInt32 a3)
{
  v4 = HIDWORD(a2);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(a3);
}

Swift::Int CMFormatDescriptionRef.Extensions.Value.ContentColorVolume.ColorVolume.hashValue.getter(unint64_t a1, Swift::UInt32 a2)
{
  v3 = a1;
  v4 = HIDWORD(a1);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(a2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CMFormatDescriptionRef.Extensions.Value.ContentColorVolume.ColorVolume()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance CMFormatDescriptionRef.Extensions.Value.ContentColorVolume.ColorVolume()
{
  v1 = v0[1];
  v2 = v0[2];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CMFormatDescriptionRef.Extensions.Value.ContentColorVolume.ColorVolume(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  return Hasher._finalize()();
}

uint64_t CMFormatDescriptionRef.Extensions.Value.ContentColorVolume.ColorPrimaries.x.setter(uint64_t result, int a2)
{
  *v2 = result;
  *(v2 + 8) = a2;
  return result;
}

uint64_t CMFormatDescriptionRef.Extensions.Value.ContentColorVolume.ColorPrimaries.y.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(&v4 + 1) = a3;
  *&v4 = a2;
  return v4 >> 32;
}

uint64_t CMFormatDescriptionRef.Extensions.Value.ContentColorVolume.ColorPrimaries.y.setter(uint64_t result, int a2)
{
  *(v2 + 12) = result;
  *(v2 + 20) = a2;
  return result;
}

uint64_t static CMFormatDescriptionRef.Extensions.Value.ContentColorVolume.ColorPrimaries.== infix(_:_:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  if ((a5 ^ a2) >> 32)
  {
    v6 = 0;
  }

  else
  {
    v6 = a3 == a6;
  }

  v7 = v6;
  if (a2 != a5)
  {
    v7 = 0;
  }

  if (a1 == a4)
  {
    return v7;
  }

  else
  {
    return 0;
  }
}

void CMFormatDescriptionRef.Extensions.Value.ContentColorVolume.ColorPrimaries.hash(into:)(int a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v4 = a4;
  v5 = a3;
  v6 = HIDWORD(a2);
  v7 = HIDWORD(a3);
  v8 = HIDWORD(a4);
  Hasher._combine(_:)(a2);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v8);
}

Swift::Int CMFormatDescriptionRef.Extensions.Value.ContentColorVolume.ColorPrimaries.hashValue.getter(unint64_t a1, unint64_t a2, unint64_t a3)
{
  v3 = a3;
  v4 = a2;
  v5 = a1;
  v6 = HIDWORD(a1);
  v7 = HIDWORD(a2);
  v8 = HIDWORD(a3);
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v7);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v8);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CMFormatDescriptionRef.Extensions.Value.ContentColorVolume.ColorPrimaries()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance CMFormatDescriptionRef.Extensions.Value.ContentColorVolume.ColorPrimaries()
{
  v1 = v0[1];
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = v0[5];
  Hasher._combine(_:)(*v0);
  Hasher._combine(_:)(v1);
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CMFormatDescriptionRef.Extensions.Value.ContentColorVolume.ColorPrimaries(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  Hasher._combine(_:)(v3);
  Hasher._combine(_:)(v4);
  Hasher._combine(_:)(v5);
  Hasher._combine(_:)(v6);
  Hasher._combine(_:)(v7);
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance CMFormatDescriptionRef.Extensions.Value.ContentColorVolume.ColorPrimaries(_DWORD *a1, _DWORD *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1] || a1[2] != a2[2])
  {
    return 0;
  }

  return a1[3] == a2[3] && a1[4] == a2[4] && a1[5] == a2[5];
}

uint64_t CMFormatDescriptionRef.Extensions.Value.ContentColorVolume.colorPrimaries.setter(uint64_t result, uint64_t a2, uint64_t a3, char a4)
{
  *v4 = result;
  *(v4 + 8) = a2;
  *(v4 + 16) = a3;
  *(v4 + 24) = a4 & 1;
  return result;
}

uint64_t CMFormatDescriptionRef.Extensions.Value.ContentColorVolume.minimumLuminance.setter(uint64_t result)
{
  *(v1 + 28) = result;
  *(v1 + 32) = BYTE4(result) & 1;
  return result;
}

uint64_t CMFormatDescriptionRef.Extensions.Value.ContentColorVolume.maximumLuminance.setter(uint64_t result)
{
  *(v1 + 36) = result;
  *(v1 + 40) = BYTE4(result) & 1;
  return result;
}

uint64_t CMFormatDescriptionRef.Extensions.Value.ContentColorVolume.averageLuminance.setter(uint64_t result)
{
  *(v1 + 44) = result;
  *(v1 + 48) = BYTE4(result) & 1;
  return result;
}

uint64_t CMFormatDescriptionRef.Extensions.Value.ContentColorVolume.init(colorPrimaries:minimumLuminance:maximumLuminance:averageLuminance:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3;
  *(a8 + 24) = a4 & 1;
  *(a8 + 28) = a5;
  *(a8 + 32) = BYTE4(a5) & 1;
  *(a8 + 36) = a6;
  *(a8 + 40) = BYTE4(a6) & 1;
  *(a8 + 44) = a7;
  *(a8 + 48) = BYTE4(a7) & 1;
  return result;
}

uint64_t CMFormatDescriptionRef.Extensions.Value.ContentColorVolume.rawValue.getter@<X0>(NSData *a1@<X8>)
{
  v3 = v1[2];
  v15 = v1[1];
  v16 = v3;
  v4 = *(v1 + 48);
  v17 = v4;
  v14 = *v1;
  if (BYTE8(v15))
  {
    v5 = 0;
  }

  else
  {
    v5 = 32;
  }

  if ((v16 & 1) == 0)
  {
    v5 |= 0x10u;
  }

  if ((BYTE8(v16) & 1) == 0)
  {
    v5 |= 8u;
  }

  if (v4)
  {
    v6 = v5;
  }

  else
  {
    v6 = v5 | 4;
  }

  v7 = 24;
  if ((v6 & 0x20) == 0)
  {
    v7 = 0;
  }

  v12 = specialized Data.init(count:)(v7 + ((((v6 >> 2) & 4) + ((v6 >> 1) & 4) + (v6 & 4)) | 1));
  v13 = v8;
  specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(&v12, v6, &v14);
  v9 = v12;
  v10 = v13;
  a1->super.isa = Data._bridgeToObjectiveC()().super.isa;

  return outlined consume of Data._Representation(v9, v10);
}

uint64_t closure #1 in CMFormatDescriptionRef.Extensions.Value.ContentColorVolume.rawValue.getter(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  *result = a3;
  if ((*(a4 + 24) & 1) == 0)
  {
    *(result + 1) = *a4;
    *(result + 9) = *(a4 + 8);
    v4 = 25;
    if (*(a4 + 32))
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  v4 = 1;
  if ((*(a4 + 32) & 1) == 0)
  {
LABEL_5:
    *(result + v4) = *(a4 + 28);
    v4 |= 4uLL;
  }

LABEL_6:
  if (*(a4 + 40))
  {
    if (*(a4 + 48))
    {
      return result;
    }

LABEL_10:
    *(result + v4) = *(a4 + 44);
    return result;
  }

  *(result + v4) = *(a4 + 36);
  v4 += 4;
  if ((*(a4 + 48) & 1) == 0)
  {
    goto LABEL_10;
  }

  return result;
}

double CMFormatDescriptionRef.Extensions.Value.ContentColorVolume.init(rawValue:)@<D0>(uint64_t a2@<X8>)
{
  v35 = *MEMORY[0x277D85DE8];
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_24;
  }

  v4 = v29;
  v3 = v30;
  v5 = v30 >> 62;
  if ((v30 >> 62) > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_23;
    }

    v7 = *(v29 + 16);
    v6 = *(v29 + 24);
    v8 = __OFSUB__(v6, v7);
    v9 = v6 - v7;
    if (!v8)
    {
      if (v9 <= 1)
      {
        goto LABEL_23;
      }

      goto LABEL_12;
    }

    __break(1u);
LABEL_46:
    __break(1u);
    goto LABEL_47;
  }

  if (!v5)
  {
    if (BYTE6(v30) <= 1uLL)
    {
      goto LABEL_23;
    }

LABEL_12:
    v10 = Data._Representation.subscript.getter();
    v11 = v10;
    if (v5 == 2)
    {
      v14 = *(v29 + 16);
      v13 = *(v29 + 24);
      v8 = __OFSUB__(v13, v14);
      v12 = v13 - v14;
      if (!v8)
      {
        goto LABEL_20;
      }

      __break(1u);
    }

    else if (v5 == 1)
    {
      LODWORD(v12) = HIDWORD(v29) - v29;
      if (!__OFSUB__(HIDWORD(v29), v29))
      {
        v12 = v12;
LABEL_20:
        v15 = 24;
        if ((v10 & 0x20) == 0)
        {
          v15 = 0;
        }

        if (v12 < v15 + ((((v10 >> 2) & 4) + ((v10 >> 1) & 4) + (v10 & 4)) | 1))
        {
          goto LABEL_23;
        }

        LOBYTE(v29) = 1;
        *&v32 = 0;
        v31 = 0uLL;
        BYTE8(v32) = 1;
        HIDWORD(v32) = 0;
        LOBYTE(v33) = 1;
        DWORD1(v33) = 0;
        BYTE8(v33) = 1;
        HIDWORD(v33) = 0;
        v34 = 1;
        if (v5 == 2)
        {
          v20 = *(v4 + 16);
          v21 = *(v4 + 24);
          v18 = __DataStorage._bytes.getter();
          if (v18)
          {
            v22 = __DataStorage._offset.getter();
            if (__OFSUB__(v20, v22))
            {
LABEL_50:
              __break(1u);
              goto LABEL_51;
            }

            v18 += v20 - v22;
          }

          v8 = __OFSUB__(v21, v20);
          v17 = v21 - v20;
          if (!v8)
          {
            goto LABEL_36;
          }

LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        if (v5 != 1)
        {
          v29 = v4;
          v26 = &v29 + BYTE6(v30);
          v27 = &v29;
LABEL_44:
          closure #1 in CMFormatDescriptionRef.Extensions.Value.ContentColorVolume.init(rawValue:)(v27, v26, v11, &v31);
          outlined consume of Data._Representation(v4, v3);
          LOBYTE(v29) = 0;
          v28 = v32;
          *a2 = v31;
          *(a2 + 16) = v28;
          result = *&v33;
          *(a2 + 32) = v33;
          *(a2 + 48) = v34;
          *(a2 + 49) = 0;
          return result;
        }

        v17 = (v4 >> 32) - v4;
        if (v4 >> 32 >= v4)
        {
          v18 = __DataStorage._bytes.getter();
          if (!v18)
          {
LABEL_36:
            v23 = MEMORY[0x2318E24F0]();
            if (v23 >= v17)
            {
              v24 = v17;
            }

            else
            {
              v24 = v23;
            }

            v25 = (v24 + v18);
            if (v18)
            {
              v26 = v25;
            }

            else
            {
              v26 = 0;
            }

            v27 = v18;
            goto LABEL_44;
          }

          v19 = __DataStorage._offset.getter();
          if (!__OFSUB__(v4, v19))
          {
            v18 += v4 - v19;
            goto LABEL_36;
          }

LABEL_51:
          __break(1u);
        }

LABEL_48:
        __break(1u);
        goto LABEL_49;
      }

LABEL_47:
      __break(1u);
      goto LABEL_48;
    }

    v12 = BYTE6(v30);
    goto LABEL_20;
  }

  if (__OFSUB__(HIDWORD(v29), v29))
  {
    goto LABEL_46;
  }

  if (HIDWORD(v29) - v29 > 1)
  {
    goto LABEL_12;
  }

LABEL_23:
  outlined consume of Data._Representation(v29, v30);
LABEL_24:
  result = 0.0;
  *a2 = 0u;
  *(a2 + 16) = 0u;
  *(a2 + 32) = 0u;
  *(a2 + 48) = 256;
  return result;
}

uint64_t closure #1 in CMFormatDescriptionRef.Extensions.Value.ContentColorVolume.init(rawValue:)(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 0x20) == 0)
  {
    if ((a3 & 0x10) == 0)
    {
      if ((a3 & 8) == 0)
      {
        if ((a3 & 4) == 0)
        {
          return result;
        }

        if (result)
        {
          v4 = 1;
LABEL_17:
          *(a4 + 44) = *(result + v4);
          *(a4 + 48) = 0;
          return result;
        }

LABEL_27:
        __break(1u);
        return result;
      }

      if (result)
      {
        v4 = 1;
        goto LABEL_22;
      }

LABEL_26:
      __break(1u);
      goto LABEL_27;
    }

    if (result)
    {
      v6 = 1;
      goto LABEL_15;
    }

LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (!result)
  {
    __break(1u);
    goto LABEL_25;
  }

  v5 = *(result + 17);
  *a4 = *(result + 1);
  *(a4 + 16) = v5;
  *(a4 + 24) = 0;
  if ((a3 & 0x10) != 0)
  {
    v6 = 25;
LABEL_15:
    *(a4 + 28) = *(result + v6);
    *(a4 + 32) = 0;
    v4 = v6 | 4;
    if ((a3 & 8) == 0)
    {
      if ((a3 & 4) == 0)
      {
        return result;
      }

      goto LABEL_17;
    }

    goto LABEL_22;
  }

  if ((a3 & 8) == 0)
  {
    if ((a3 & 4) == 0)
    {
      return result;
    }

    v4 = 25;
    goto LABEL_17;
  }

  v4 = 25;
LABEL_22:
  *(a4 + 36) = *(result + v4);
  *(a4 + 40) = 0;
  v4 += 4;
  if ((a3 & 4) != 0)
  {
    goto LABEL_17;
  }

  return result;
}

uint64_t specialized Data.withUnsafeBytes<A>(_:)(uint64_t a1, unint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t), uint64_t a4, uint64_t a5)
{
  v13[2] = *MEMORY[0x277D85DE8];
  v5 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v5 != 2)
    {
      memset(v13, 0, 14);
      v8 = a5;
      v7 = 0;
      goto LABEL_9;
    }

    v9 = *(a1 + 16);
    v10 = *(a1 + 24);
  }

  else
  {
    if (!v5)
    {
      v13[0] = a1;
      LOWORD(v13[1]) = a2;
      BYTE2(v13[1]) = BYTE2(a2);
      BYTE3(v13[1]) = BYTE3(a2);
      v6 = a2 >> 40;
      BYTE4(v13[1]) = BYTE4(a2);
      v7 = BYTE6(a2);
      BYTE5(v13[1]) = v6;
      v8 = a5;
LABEL_9:
      v11 = a3(v8, v7, v13);

      return v11;
    }

    v9 = a1;
    v10 = a1 >> 32;
    if (a1 >> 32 < a1)
    {
      __break(1u);
    }
  }

  v11 = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v9, v10, a2 & 0x3FFFFFFFFFFFFFFFLL, a3, a4, a5);

  return v11;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CMFormatDescriptionRef.Extensions.Value.ContentColorVolume()
{
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CMFormatDescriptionRef.Extensions.Value.ContentColorVolume(uint64_t a1)
{
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)();
  return Hasher._finalize()();
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance CMFormatDescriptionRef.Extensions.Value.ContentColorVolume(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v5[0] = *a1;
  v5[1] = v2;
  v5[2] = *(a1 + 32);
  v6 = *(a1 + 48);
  v3 = *(a2 + 16);
  v7[0] = *a2;
  v7[1] = v3;
  v7[2] = *(a2 + 32);
  v8 = *(a2 + 48);
  return specialized == infix<A>(_:_:)(v5, v7);
}

void CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.AlgorithmKind.init(rawValue:)(void *a1@<X0>, BOOL *a3@<X8>)
{
  CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.AlgorithmKind.init(rawValue:)(a1, a3);
}

{
  type metadata accessor for CFStringRef(0);
  _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);
  v5 = static _CFObject.== infix(_:_:)();

  *a3 = (v5 & 1) == 0;
}

id protocol witness for RawRepresentable.rawValue.getter in conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.AlgorithmKind@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x277CC0170];
  *a1 = *MEMORY[0x277CC0170];
  return v1;
}

void CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.LensRole.init(rawValue:)(void *a1@<X0>, char *a2@<X8>)
{
  type metadata accessor for CFStringRef(0);
  _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);
  v4 = a1;
  v5 = static _CFObject.== infix(_:_:)();

  if (v5)
  {

    v6 = 0;
  }

  else
  {
    v7 = v4;
    v8 = static _CFObject.== infix(_:_:)();

    if (v8)
    {

      v6 = 1;
    }

    else
    {
      v9 = static _CFObject.== infix(_:_:)();

      if (v9)
      {
        v6 = 2;
      }

      else
      {
        v6 = 3;
      }
    }
  }

  *a2 = v6;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.LensRole(char *a1, char *a2)
{
  v2 = *qword_2787B2AC0[*a1];
  v3 = *qword_2787B2AC0[*a2];
  type metadata accessor for CFStringRef(0);
  _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);
  v4 = v2;
  v5 = v3;
  v6 = static _CFObject.== infix(_:_:)();

  return v6 & 1;
}

void protocol witness for Hashable.hash(into:) in conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.LensRole(uint64_t a1)
{
  v2 = *qword_2787B2AC0[*v1];
  type metadata accessor for CFStringRef(0);
  _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);
  v3 = v2;
  _CFObject.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.LensRole(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  v3 = *qword_2787B2AC0[v2];
  type metadata accessor for CFStringRef(0);
  _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);
  v4 = v3;
  _CFObject.hash(into:)();

  return Hasher._finalize()();
}

id protocol witness for RawRepresentable.rawValue.getter in conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.LensRole@<X0>(void **a1@<X8>)
{
  v2 = qword_2787B2AC0[*v1];
  v3 = *v2;
  *a1 = *v2;
  return v3;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.AlgorithmKind(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  type metadata accessor for CFStringRef(0);
  _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);
  return static _CFObject.== infix(_:_:)() & 1;
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.AlgorithmKind(uint64_t a1)
{
  type metadata accessor for CFStringRef(0);
  _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);
  return _CFObject.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.AlgorithmKind(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for CFStringRef(0);
  _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);
  _CFObject.hash(into:)();
  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.init(rawValue:) in conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.AlgorithmKind(void **a1@<X0>, BOOL *a3@<X8>)
{
  v4 = *a1;
  type metadata accessor for CFStringRef(0);
  _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);
  v5 = static _CFObject.== infix(_:_:)();

  *a3 = (v5 & 1) == 0;
}

id protocol witness for RawRepresentable.rawValue.getter in conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.LensDomain@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x277CC0178];
  *a1 = *MEMORY[0x277CC0178];
  return v1;
}

id protocol witness for RawRepresentable.rawValue.getter in conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.ExtrinsicOriginSource@<X0>(void *a1@<X8>)
{
  v1 = *MEMORY[0x277CC0168];
  *a1 = *MEMORY[0x277CC0168];
  return v1;
}

__n128 CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.Calibration.intrinsicMatrix.getter@<Q0>(uint64_t a1@<X8>)
{
  result = *(v1 + 80);
  v3 = *(v1 + 96);
  v4 = *(v1 + 112);
  *a1 = result;
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  return result;
}

__n128 CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.Calibration.intrinsicMatrix.setter(uint64_t a1)
{
  v2 = *(a1 + 16);
  *(v1 + 80) = *a1;
  *(v1 + 96) = v2;
  result = *(a1 + 32);
  *(v1 + 112) = result;
  return result;
}

__n128 CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.Calibration.init(algorithmKind:identifier:domain:role:distortionCoefficients:xFrameAdjustmentsPolynomial:yFrameAdjustmentsPolynomial:radialAngleLimit:intrinsicMatrix:intrinsicMatrixProjectionOffset:intrinsicMatrixReferenceDimensions:extrinsicOriginSource:extrinsicOrientationQuaternion:)@<Q0>(int a1@<W1>, char *a2@<X3>, _OWORD *a3@<X4>, uint64_t a4@<X8>, __n128 a5@<Q0>, __n128 a6@<Q1>, __n128 a7@<Q2>, float a8@<S3>, float a9@<S4>, double a10@<D5>, double a11@<D6>, __n128 a12@<Q7>)
{
  *&v14[12] = *a3;
  *&v14[28] = a3[1];
  v12 = *a2;
  *&v14[44] = a3[2];
  *a4 = a1;
  *(a4 + 4) = v12;
  *(a4 + 16) = a5;
  *(a4 + 32) = a6;
  *(a4 + 48) = a7;
  *(a4 + 64) = a8;
  result = *v14;
  *(a4 + 112) = *&v14[44];
  *(a4 + 100) = *&v14[32];
  *(a4 + 84) = *&v14[16];
  *(a4 + 68) = *v14;
  *(a4 + 128) = a9;
  *(a4 + 136) = a10;
  *(a4 + 144) = a11;
  *(a4 + 160) = a12;
  return result;
}

Class CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.Calibration.rawValue.getter()
{
  v1 = v0[9];
  v68 = v0[8];
  v69 = v1;
  v70 = v0[10];
  v2 = v0[5];
  v64 = v0[4];
  v65 = v2;
  v3 = v0[7];
  v66 = v0[6];
  v67 = v3;
  v4 = v0[1];
  v60 = *v0;
  v61 = v4;
  v5 = v0[3];
  v62 = v0[2];
  v63 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa_yptGMR);
  inited = swift_initStackObject();
  v7 = *MEMORY[0x277CC01C0];
  *(inited + 32) = *MEMORY[0x277CC01C0];
  v55 = v7;
  v8 = MEMORY[0x277CC01E8];
  *(inited + 16) = xmmword_22E0F10B0;
  v54 = *v8;
  *(inited + 64) = &type metadata for CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.AlgorithmKind;
  *(inited + 72) = v54;
  v9 = MEMORY[0x277D849A8];
  *(inited + 80) = v60;
  v53 = *MEMORY[0x277CC01D0];
  v10 = *MEMORY[0x277CC01D0];
  *(inited + 104) = v9;
  *(inited + 112) = v10;
  v52 = *MEMORY[0x277CC01F0];
  v11 = *MEMORY[0x277CC01F0];
  *(inited + 144) = &type metadata for CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.LensDomain;
  *(inited + 152) = v11;
  *(inited + 160) = BYTE4(v60);
  v51 = *MEMORY[0x277CC01C8];
  v12 = *MEMORY[0x277CC01C8];
  *(inited + 184) = &type metadata for CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.LensRole;
  *(inited + 192) = v12;
  v50 = v61;
  *(inited + 224) = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD4VySfGMd, &_ss5SIMD4VySfGMR);
  v13 = swift_allocObject();
  *(inited + 200) = v13;
  *(v13 + 16) = v50;
  *&v50 = *MEMORY[0x277CC01D8];
  *(inited + 232) = *MEMORY[0x277CC01D8];
  v47 = v62;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5SIMD3VySfGMd, &_ss5SIMD3VySfGMR);
  *(inited + 264) = v14;
  v15 = swift_allocObject();
  *(inited + 240) = v15;
  *(v15 + 16) = v47;
  v16 = *MEMORY[0x277CC01E0];
  *(inited + 272) = *MEMORY[0x277CC01E0];
  v48 = v63;
  *(inited + 304) = v14;
  v17 = swift_allocObject();
  *(inited + 280) = v17;
  *(v17 + 16) = v48;
  v18 = v68;
  *(inited + 320) = v64;
  v19 = *MEMORY[0x277CC01F8];
  v20 = MEMORY[0x277D83A90];
  *(inited + 312) = *MEMORY[0x277CC01F8];
  v21 = *MEMORY[0x277CC01B0];
  *(inited + 344) = v20;
  *(inited + 352) = v21;
  *(inited + 360) = v18;
  v22 = *MEMORY[0x277CC01B8];
  *(inited + 384) = v20;
  *(inited + 392) = v22;
  type metadata accessor for CGSize(0);
  *(inited + 400) = *(v0 + 136);
  v23 = *MEMORY[0x277CC01A0];
  v24 = MEMORY[0x277CC0198];
  *(inited + 424) = v25;
  *(inited + 432) = v23;
  v26 = *v24;
  *(inited + 464) = &type metadata for CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.ExtrinsicOriginSource;
  *(inited + 472) = v26;
  v49 = v70;
  *(inited + 504) = v14;
  v27 = swift_allocObject();
  *(inited + 480) = v27;
  *(v27 + 16) = v49;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo11CFStringRefaypGMd, &_ss18_DictionaryStorageCySo11CFStringRefaypGMR);
  *&v57 = static _DictionaryStorage.allocate(capacity:)();
  v28 = v55;
  v29 = v54;
  v30 = v53;
  v31 = v52;
  v32 = v51;
  v33 = v50;
  v34 = v16;
  v35 = v19;
  v36 = v21;
  v37 = v22;
  v38 = v23;
  v39 = v26;

  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v40, 1, &v57);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo11CFStringRefa_yptMd, &_sSo11CFStringRefa_yptMR);
  swift_arrayDestroy();
  type metadata accessor for __DataStorage();
  swift_allocObject();
  v41 = __DataStorage.init(length:)();
  *&v59 = 0x3000000000;
  *(&v59 + 1) = v41 | 0x4000000000000000;
  specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(&v59, &v60);
  v42 = *MEMORY[0x277CC01A8];
  v43 = v59;
  v58 = MEMORY[0x277CC9318];
  v57 = v59;
  outlined init with take of Any(&v57, v56);
  outlined copy of Data._Representation(v43, *(&v43 + 1));
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v56, v42, isUniquelyReferenced_nonNull_native);
  type metadata accessor for CFStringRef(0);
  _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  outlined consume of Data._Representation(v59, *(&v59 + 1));
  return isa;
}

void CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.Calibration.init(rawValue:)()
{
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  *&v2 = 0;
  type metadata accessor for CFStringRef(0);
  _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);
  static Dictionary._forceBridgeFromObjectiveC(_:result:)();
  __break(1u);
  __break(1u);
  __break(1u);
  __break(1u);
  MEMORY[0x2318E24F0]();
  __break(1u);
  MEMORY[0x2318E24F0]();
  __break(1u);
  __break(1u);
}

Class protocol witness for RawRepresentable.rawValue.getter in conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.Calibration@<X0>(Class *a1@<X8>)
{
  result = CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.Calibration.rawValue.getter();
  *a1 = result;
  return result;
}

Class CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.rawValue.getter()
{
  memcpy(__dst, v0, sizeof(__dst));
  v1 = _sSo22CMFormatDescriptionRefa9CoreMediaE10ExtensionsV5ValueV35CameraCalibrationDataLensCollectionOWOg(__dst);
  destructiveProjectEnumData for CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection(__dst);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v2 = swift_allocObject();
  if (v1 == 1)
  {
    *(v2 + 16) = xmmword_22E0F1100;
    *(v2 + 32) = CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.Calibration.rawValue.getter();
    *(v2 + 40) = CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.Calibration.rawValue.getter();
  }

  else
  {
    *(v2 + 16) = xmmword_22E0F10F0;
    *(v2 + 32) = CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.Calibration.rawValue.getter();
  }

  type metadata accessor for CFDictionaryRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  return isa;
}

void CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.init(rawValue:)(void *a1@<X0>, void *a2@<X8>)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    *&__dst[0] = 0;
    type metadata accessor for CFDictionaryRef(0);
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();
  }

  _sSo22CMFormatDescriptionRefa9CoreMediaE10ExtensionsV5ValueV35CameraCalibrationDataLensCollectionOSgWOi0_(__dst);
  memcpy(a2, __dst, 0x160uLL);
}

Class protocol witness for RawRepresentable.rawValue.getter in conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection@<X0>(Class *a1@<X8>)
{
  result = CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.rawValue.getter();
  *a1 = result;
  return result;
}

Class static CMFormatDescriptionRef.Extensions.Value.cameraCalibrationDataLensCollection(_:)@<X0>(Class *a1@<X8>)
{
  result = CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t CMFormatDescriptionRef.Extensions.init(base:)@<X0>(uint64_t result@<X0>, uint64_t *a2@<X8>)
{
  v2 = MEMORY[0x277D84F98];
  if (result)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

void CMFormatDescriptionRef.Extensions.subscript.getter(void **a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *a1;
  v5 = *v2;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = v4;
    v7 = __CocoaDictionary.lookup(_:)();

    if (!v7)
    {
LABEL_7:
      v7 = 0;
    }
  }

  else
  {
    if (!*(v5 + 16))
    {
      goto LABEL_7;
    }

    v8 = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    if ((v9 & 1) == 0)
    {
      goto LABEL_7;
    }

    v7 = *(*(v5 + 56) + 8 * v8);
    swift_unknownObjectRetain();
  }

  *a2 = v7;
}

void key path getter for CMFormatDescriptionRef.Extensions.subscript(_:) : CMFormatDescriptionRef.Extensions(uint64_t *a1@<X0>, id *a2@<X1>, uint64_t *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = specialized Dictionary.subscript.getter(v5, v4);

  *a3 = v6;
}

void key path setter for CMFormatDescriptionRef.Extensions.subscript(_:) : CMFormatDescriptionRef.Extensions(uint64_t *a1, uint64_t a2, void **a3)
{
  v3 = *a3;
  if (*a1)
  {
    v6 = v3;
    v4 = swift_unknownObjectRetain();
    specialized Dictionary._Variant.setValue(_:forKey:)(v4, v6);
  }

  else
  {
    v5 = v3;
    specialized Dictionary._Variant.removeValue(forKey:)(v5);

    swift_unknownObjectRelease();
  }
}

uint64_t CMFormatDescriptionRef.Extensions.subscript.setter(uint64_t *a1, void **a2)
{
  v3 = *a1;
  v4 = *a2;
  if (*a1)
  {
    v5 = *v2;
    if ((*v2 & 0xC000000000000001) == 0)
    {
      swift_unknownObjectRetain();
      goto LABEL_12;
    }

    if (v5 < 0)
    {
      v6 = *v2;
    }

    else
    {
      v6 = v5 & 0xFFFFFFFFFFFFFF8;
    }

    swift_unknownObjectRetain();
    result = MEMORY[0x2318E2B90](v6);
    if (!__OFADD__(result, 1))
    {
      *v2 = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfCSo11CFStringRefa_yXlTt1g5(v6, result + 1);
LABEL_12:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = *v2;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v3, v4, isUniquelyReferenced_nonNull_native);

      result = swift_unknownObjectRelease();
      *v2 = v9;
      return result;
    }

    __break(1u);
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(*a2);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t CMFormatDescriptionRef.Extensions.subscript.getter(void *a1)
{
  v2 = *v1;
  if ((v2 & 0xC000000000000001) != 0)
  {
    v3 = a1;
    v4 = __CocoaDictionary.lookup(_:)();

    return v4;
  }

  else if (*(v2 + 16) && (specialized __RawDictionaryStorage.find<A>(_:)(a1), (v6 & 1) != 0))
  {
    return swift_unknownObjectRetain();
  }

  else
  {
    return 0;
  }
}

uint64_t CMFormatDescriptionRef.Extensions.subscript.setter(uint64_t a1, void *a2)
{
  if (a1)
  {
    v5 = *v2;
    if ((*v2 & 0xC000000000000001) == 0)
    {
      swift_unknownObjectRetain();
      goto LABEL_12;
    }

    if (v5 < 0)
    {
      v6 = *v2;
    }

    else
    {
      v6 = v5 & 0xFFFFFFFFFFFFFF8;
    }

    swift_unknownObjectRetain();
    result = MEMORY[0x2318E2B90](v6);
    if (!__OFADD__(result, 1))
    {
      *v2 = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfCSo11CFStringRefa_yXlTt1g5(v6, result + 1);
LABEL_12:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = *v2;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, a2, isUniquelyReferenced_nonNull_native);

      result = swift_unknownObjectRelease();
      *v2 = v9;
      return result;
    }

    __break(1u);
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(a2);

    return swift_unknownObjectRelease();
  }

  return result;
}

void (*CMFormatDescriptionRef.Extensions.subscript.modify(uint64_t *a1, void **a2))(uint64_t *a1, char a2)
{
  v4 = *a2;
  a1[1] = v2;
  a1[2] = v4;
  v5 = *v2;
  a1[3] = v5;
  if ((v5 & 0xC000000000000001) != 0)
  {
    v6 = v4;
    v7 = __CocoaDictionary.lookup(_:)();
    if (!v7)
    {
LABEL_7:
      v7 = 0;
    }
  }

  else
  {
    v8 = *(v5 + 16);
    v9 = v4;
    if (!v8)
    {
      goto LABEL_7;
    }

    specialized __RawDictionaryStorage.find<A>(_:)(v9);
    if ((v10 & 1) == 0)
    {
      goto LABEL_7;
    }

    v7 = swift_unknownObjectRetain();
  }

  *a1 = v7;
  return CMFormatDescriptionRef.Extensions.subscript.modify;
}

void CMFormatDescriptionRef.Extensions.subscript.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    if (v3)
    {
      v4 = a1[3];
      if ((v4 & 0xC000000000000001) == 0)
      {
        v7 = a1[1];
        swift_unknownObjectRetain_n();
        goto LABEL_19;
      }

      if (v4 < 0)
      {
        v5 = a1[3];
      }

      else
      {
        v5 = v4 & 0xFFFFFFFFFFFFFF8;
      }

      swift_unknownObjectRetain_n();
      v6 = MEMORY[0x2318E2B90](v5);
      if (!__OFADD__(v6, 1))
      {
        v7 = a1[1];
        *v7 = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfCSo11CFStringRefa_yXlTt1g5(v5, v6 + 1);
LABEL_19:
        v14 = a1[2];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v18 = *v7;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v3, v14, isUniquelyReferenced_nonNull_native);
        swift_unknownObjectRelease();

        *v7 = v18;
        goto LABEL_20;
      }

      __break(1u);
LABEL_26:
      __break(1u);
      return;
    }

    v12 = a1[2];
    specialized Dictionary._Variant.removeValue(forKey:)(v12);

    swift_unknownObjectRelease();
  }

  else
  {
    if (v3)
    {
      v8 = a1[3];
      if ((v8 & 0xC000000000000001) != 0)
      {
        if (v8 < 0)
        {
          v9 = a1[3];
        }

        else
        {
          v9 = v8 & 0xFFFFFFFFFFFFFF8;
        }

        swift_unknownObjectRetain();
        v10 = MEMORY[0x2318E2B90](v9);
        if (__OFADD__(v10, 1))
        {
          goto LABEL_26;
        }

        v11 = a1[1];
        *v11 = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfCSo11CFStringRefa_yXlTt1g5(v9, v10 + 1);
      }

      else
      {
        v11 = a1[1];
        swift_unknownObjectRetain();
      }

      v16 = a1[2];
      v17 = swift_isUniquelyReferenced_nonNull_native();
      v19 = *v11;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v3, v16, v17);
      swift_unknownObjectRelease();

      *v11 = v19;
      return;
    }

    v13 = a1[2];
    specialized Dictionary._Variant.removeValue(forKey:)(v13);
  }

LABEL_20:

  swift_unknownObjectRelease();
}

id key path setter for CMFormatDescriptionRef.Extensions.subscript(_:) : CMFormatDescriptionRef.Extensions(uint64_t *a1, uint64_t a2, void **a3)
{
  v3 = *a3;
  if (*a1)
  {
    v4 = swift_unknownObjectRetain();
    return specialized Dictionary._Variant.setValue(_:forKey:)(v4, v3);
  }

  else
  {
    specialized Dictionary._Variant.removeValue(forKey:)(*a3);

    return swift_unknownObjectRelease();
  }
}

uint64_t (*CMFormatDescriptionRef.Extensions.subscript.modify(uint64_t *a1, void *a2))(uint64_t *a1, char a2)
{
  a1[1] = a2;
  a1[2] = v2;
  v4 = *v2;
  a1[3] = v4;
  if ((v4 & 0xC000000000000001) != 0)
  {
    v5 = a2;
    v6 = __CocoaDictionary.lookup(_:)();
  }

  else if (*(v4 + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(a2), (v8 & 1) != 0))
  {
    v6 = *(*(v4 + 56) + 8 * v7);
    swift_unknownObjectRetain();
  }

  else
  {
    v6 = 0;
  }

  *a1 = v6;
  return CMFormatDescriptionRef.Extensions.subscript.modify;
}

uint64_t CMFormatDescriptionRef.Extensions.subscript.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  if (a2)
  {
    if (v3)
    {
      v4 = a1[3];
      if ((v4 & 0xC000000000000001) == 0)
      {
        v7 = a1[2];
        swift_unknownObjectRetain_n();
        goto LABEL_19;
      }

      if (v4 < 0)
      {
        v5 = a1[3];
      }

      else
      {
        v5 = v4 & 0xFFFFFFFFFFFFFF8;
      }

      swift_unknownObjectRetain_n();
      result = MEMORY[0x2318E2B90](v5);
      if (!__OFADD__(result, 1))
      {
        v7 = a1[2];
        *v7 = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfCSo11CFStringRefa_yXlTt1g5(v5, result + 1);
LABEL_19:
        v11 = a1[1];
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v15 = *v7;
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v3, v11, isUniquelyReferenced_nonNull_native);
        swift_unknownObjectRelease();
        *v7 = v15;
        goto LABEL_20;
      }

      __break(1u);
LABEL_26:
      __break(1u);
      return result;
    }

    specialized Dictionary._Variant.removeValue(forKey:)(a1[1]);
    swift_unknownObjectRelease();
  }

  else
  {
    if (v3)
    {
      v8 = a1[3];
      if ((v8 & 0xC000000000000001) != 0)
      {
        if (v8 < 0)
        {
          v9 = a1[3];
        }

        else
        {
          v9 = v8 & 0xFFFFFFFFFFFFFF8;
        }

        swift_unknownObjectRetain();
        result = MEMORY[0x2318E2B90](v9);
        if (__OFADD__(result, 1))
        {
          goto LABEL_26;
        }

        v10 = a1[2];
        *v10 = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfCSo11CFStringRefa_yXlTt1g5(v9, result + 1);
      }

      else
      {
        v10 = a1[2];
        swift_unknownObjectRetain();
      }

      v13 = a1[1];
      v14 = swift_isUniquelyReferenced_nonNull_native();
      v16 = *v10;
      specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v3, v13, v14);
      result = swift_unknownObjectRelease();
      *v10 = v16;
      return result;
    }

    specialized Dictionary._Variant.removeValue(forKey:)(a1[1]);
  }

LABEL_20:

  return swift_unknownObjectRelease();
}

Swift::Int CMFormatDescriptionRef.Extensions.Value.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = CFHash(v1);
  MEMORY[0x2318E2D50](v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CMFormatDescriptionRef.Extensions.Value()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  v2 = CFHash(v1);
  MEMORY[0x2318E2D50](v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CMFormatDescriptionRef.Extensions.Value(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  v3 = CFHash(v2);
  MEMORY[0x2318E2D50](v3);
  return Hasher._finalize()();
}

uint64_t CMFormatDescriptionRef.Extensions.startIndex.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *v1 & 0xC000000000000001;
  if (v4)
  {
    result = __CocoaDictionary.startIndex.getter();
  }

  else
  {
    result = _HashTable.startBucket.getter();
    v6 = *(v3 + 36);
  }

  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v4 != 0;
  return result;
}

uint64_t CMFormatDescriptionRef.Extensions.endIndex.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *v1 & 0xC000000000000001;
  if (v4)
  {
    result = __CocoaDictionary.endIndex.getter();
  }

  else
  {
    result = 1 << *(v3 + 32);
    v6 = *(v3 + 36);
  }

  *a1 = result;
  *(a1 + 8) = v6;
  *(a1 + 16) = v4 != 0;
  return result;
}

void specialized Dictionary.subscript.getter(void *a1, unint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  if ((a5 & 0xC000000000000001) != 0)
  {
    if (a4)
    {
      __CocoaDictionary.lookup(_:)();
      v9 = v8;
      type metadata accessor for CFStringRef(0);
      swift_dynamicCast();
      *a1 = v9;
      return;
    }

    goto LABEL_18;
  }

  if ((a4 & 1) == 0)
  {
LABEL_8:
    if ((a2 & 0x8000000000000000) == 0 && 1 << *(a5 + 32) > a2)
    {
      if ((*(a5 + 8 * (a2 >> 6) + 64) >> a2))
      {
        if (*(a5 + 36) == a3)
        {
          goto LABEL_12;
        }

LABEL_17:
        __break(1u);
LABEL_18:
        __break(1u);
        return;
      }

LABEL_16:
      __break(1u);
      goto LABEL_17;
    }

LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (__CocoaDictionary.Index.age.getter() != *(a5 + 36))
  {
    __break(1u);
    goto LABEL_15;
  }

  __CocoaDictionary.Index.key.getter();
  type metadata accessor for CFStringRef(0);
  swift_dynamicCast();
  a2 = specialized __RawDictionaryStorage.find<A>(_:)(v13);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_8;
  }

LABEL_12:
  v12 = *(*(a5 + 48) + 8 * a2);
  *a1 = *(*(a5 + 56) + 8 * a2);
  v12;
  swift_unknownObjectRetain();
}

void CMFormatDescriptionRef.Extensions.index(after:)(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    specialized _NativeDictionary.index(after:)(v5, *(a1 + 8), *(a1 + 16), *v2);
    goto LABEL_5;
  }

  if (*(a1 + 16))
  {
    v6 = __CocoaDictionary.index(after:)();
    v8 = 1;
LABEL_5:
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = v8 & 1;
    return;
  }

  __break(1u);
}

uint64_t (*protocol witness for Collection.subscript.read in conformance CMFormatDescriptionRef.Extensions(void *a1, uint64_t a2))(id *a1)
{
  specialized Dictionary.subscript.getter(a1 + 1, *a2, *(a2 + 8), *(a2 + 16), *v2);
  *a1 = v4;
  return protocol witness for Collection.subscript.read in conformance CMFormatDescriptionRef.Extensions;
}

uint64_t protocol witness for Collection.subscript.read in conformance CMFormatDescriptionRef.Extensions(id *a1)
{

  return swift_unknownObjectRelease();
}

uint64_t protocol witness for Collection.subscript.getter in conformance CMFormatDescriptionRef.Extensions@<X0>(__int128 *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = a1[1];
  v5 = *a1;
  v6[0] = v3;
  *(v6 + 9) = *(a1 + 25);
  return specialized Collection<>.subscript.getter(&v5, *v2, a2);
}

uint64_t protocol witness for Collection.indices.getter in conformance CMFormatDescriptionRef.Extensions@<X0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;
  v3 = a1 + 4;

  CMFormatDescriptionRef.Extensions.startIndex.getter((a1 + 1));
  return CMFormatDescriptionRef.Extensions.endIndex.getter(v3);
}

uint64_t protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance CMFormatDescriptionRef.Extensions(uint64_t *a1, __int128 *a2, uint64_t a3, uint64_t a4)
{
  return protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance CMFormatDescriptionRef.Extensions(a1, a2, a3, a4, specialized Collection._failEarlyRangeCheck(_:bounds:));
}

{
  return protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance CMFormatDescriptionRef.Extensions(a1, a2, a3, a4, specialized Collection._failEarlyRangeCheck(_:bounds:));
}

uint64_t protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance CMFormatDescriptionRef.Extensions(uint64_t *a1, __int128 *a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t, __int128 *))
{
  v5 = *a1;
  v6 = a1[1];
  v7 = *(a1 + 16);
  v8 = a2[1];
  v10 = *a2;
  v11[0] = v8;
  *(v11 + 9) = *(a2 + 25);
  return a5(v5, v6, v7, &v10);
}

uint64_t protocol witness for Collection._failEarlyRangeCheck(_:bounds:) in conformance CMFormatDescriptionRef.Extensions(__int128 *a1, __int128 *a2)
{
  v2 = a1[1];
  v5 = *a1;
  v6[0] = v2;
  *(v6 + 9) = *(a1 + 25);
  v3 = a2[1];
  v7 = *a2;
  v8[0] = v3;
  *(v8 + 9) = *(a2 + 25);
  return specialized Collection._failEarlyRangeCheck(_:bounds:)(&v5, &v7);
}

void protocol witness for Collection.index(after:) in conformance CMFormatDescriptionRef.Extensions(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *a1;
  if ((*v2 & 0xC000000000000001) == 0)
  {
    specialized _NativeDictionary.index(after:)(v5, *(a1 + 8), *(a1 + 16), *v2);
    goto LABEL_5;
  }

  if (*(a1 + 16))
  {
    v6 = __CocoaDictionary.index(after:)();
    v8 = 1;
LABEL_5:
    *a2 = v6;
    *(a2 + 8) = v7;
    *(a2 + 16) = v8 & 1;
    return;
  }

  __break(1u);
}

uint64_t protocol witness for Collection.formIndex(after:) in conformance CMFormatDescriptionRef.Extensions(uint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *result;
  v5 = *(result + 8);
  v6 = *(result + 16);
  if ((v3 & 0xC000000000000001) == 0)
  {
    specialized _NativeDictionary.index(after:)(*result, v5, v6, v3);
    v7 = v14;
    v9 = v15;
    v10 = v16;
    v11 = v4;
    v12 = v5;
    v13 = v6;
    goto LABEL_5;
  }

  if (*(result + 16))
  {
    v7 = __CocoaDictionary.index(after:)();
    v9 = v8;
    v10 = 1;
    v11 = v4;
    v12 = v5;
    v13 = 1;
LABEL_5:
    result = outlined consume of [CFStringRef : Swift.AnyObject].Index._Variant(v11, v12, v13);
    *v2 = v7;
    *(v2 + 8) = v9;
    *(v2 + 16) = v10 & 1;
    return result;
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for Sequence.makeIterator() in conformance CMFormatDescriptionRef.Extensions@<X0>(uint64_t *a1@<X8>)
{
  *a1 = *v1;
  v2 = a1 + 1;

  CMFormatDescriptionRef.Extensions.startIndex.getter(v2);
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance CMFormatDescriptionRef.Extensions()
{
  v1 = *v0;
  v2 = specialized Collection.count.getter(*v0);
  if (!v2)
  {

    return MEMORY[0x277D84F90];
  }

  v3 = v2;
  v4 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo08CMSampleC3Refa9CoreMediaE30PerSampleAttachmentsDictionaryV_Tt1g5Tm(v2, 0, &_ss23_ContiguousArrayStorageCySo11CFStringRefa3key_yXl5valuetGMd, &_ss23_ContiguousArrayStorageCySo11CFStringRefa3key_yXl5valuetGMR);

  v5 = specialized Sequence._copySequenceContents(initializing:)(v10, v4 + 4, v3, v1);
  v6 = v10[1];
  v7 = v10[2];
  v8 = v11;

  result = outlined consume of [CFStringRef : Swift.AnyObject].Index._Variant(v6, v7, v8);
  if (v5 == v3)
  {

    return v4;
  }

  __break(1u);
  return result;
}

BOOL static CMFormatDescriptionRef.Extensions.Index.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (a1[2])
  {
    if (*(a2 + 16))
    {
LABEL_9:
      JUMPOUT(0x2318E2B60);
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*(a2 + 16))
  {
    goto LABEL_8;
  }

  if (a1[1] != *(a2 + 8))
  {
    __break(1u);
    goto LABEL_8;
  }

  return v3 == *a2;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance CMFormatDescriptionRef.Extensions.Index(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (a1[2])
  {
    if (*(a2 + 16))
    {
LABEL_9:
      JUMPOUT(0x2318E2B60);
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*(a2 + 16))
  {
    goto LABEL_8;
  }

  if (a1[1] != *(a2 + 8))
  {
    __break(1u);
    goto LABEL_8;
  }

  return v3 == *a2;
}

BOOL static CMFormatDescriptionRef.Extensions.Index.< infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (a1[2])
  {
    if (*(a2 + 16))
    {
LABEL_9:
      JUMPOUT(0x2318E2B50);
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*(a2 + 16))
  {
    goto LABEL_8;
  }

  if (a1[1] != *(a2 + 8))
  {
    __break(1u);
    goto LABEL_8;
  }

  return v3 < *a2;
}

BOOL protocol witness for static Comparable.< infix(_:_:) in conformance CMFormatDescriptionRef.Extensions.Index(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  if (a1[2])
  {
    if (*(a2 + 16))
    {
LABEL_9:
      JUMPOUT(0x2318E2B50);
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (*(a2 + 16))
  {
    goto LABEL_8;
  }

  if (a1[1] != *(a2 + 8))
  {
    __break(1u);
    goto LABEL_8;
  }

  return v3 < *a2;
}

uint64_t protocol witness for static Comparable.<= infix(_:_:) in conformance CMFormatDescriptionRef.Extensions.Index(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  result = *a2;
  v7 = a2[1];
  if (a2[2])
  {
    if (v5)
    {
      v8 = MEMORY[0x2318E2B50](result, v7, v3, v4);
      return (v8 & 1) == 0;
    }
  }

  else if ((v5 & 1) == 0)
  {
    if (v7 == v4)
    {
      v8 = result < v3;
      return (v8 & 1) == 0;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t protocol witness for static Comparable.>= infix(_:_:) in conformance CMFormatDescriptionRef.Extensions.Index(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  v5 = a1[1];
  v6 = *a2;
  v7 = a2[1];
  v8 = *(a2 + 16);
  if (a1[2])
  {
    if (v8)
    {
      v9 = MEMORY[0x2318E2B50](result, v5, v6, v7);
      return (v9 & 1) == 0;
    }
  }

  else if ((v8 & 1) == 0)
  {
    if (v5 == v7)
    {
      v9 = result < v6;
      return (v9 & 1) == 0;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

BOOL protocol witness for static Comparable.> infix(_:_:) in conformance CMFormatDescriptionRef.Extensions.Index(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = *(a1 + 16);
  v6 = *a2;
  v7 = a2[1];
  if (a2[2])
  {
    if (v5)
    {
LABEL_9:
      JUMPOUT(0x2318E2B50);
    }

LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v5)
  {
    goto LABEL_8;
  }

  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_8;
  }

  return v6 < v3;
}

uint64_t CMFormatDescriptionRef.Extensions.Index.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  type metadata accessor for CFStringRef(0);
  v7 = v6;
  v8 = _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);
  v9 = MEMORY[0x277D84F68] + 8;

  return MEMORY[0x2821FB840](a1, v3, v4, v5, v7, v9, v8);
}

Swift::Int CMFormatDescriptionRef.Extensions.Index.hashValue.getter()
{
  Hasher.init(_seed:)();
  lazy protocol witness table accessor for type CMFormatDescriptionRef.Extensions.Index and conformance CMFormatDescriptionRef.Extensions.Index();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CMFormatDescriptionRef.Extensions.Index(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CMFormatDescriptionRef.Extensions.Index(uint64_t a1)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = *(v1 + 16);
  type metadata accessor for CFStringRef(0);
  v7 = v6;
  v8 = _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);
  v9 = MEMORY[0x277D84F68] + 8;

  return MEMORY[0x2821FB840](a1, v3, v4, v5, v7, v9, v8);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CMFormatDescriptionRef.Extensions.Index(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

BOOL static CMFormatDescriptionRef.Extensions.== infix(_:_:)()
{
  type metadata accessor for CFStringRef(0);
  _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v1 = Dictionary._bridgeToObjectiveC()().super.isa;
  v2 = CFEqual(isa, v1);

  return v2 != 0;
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance CMFormatDescriptionRef.Extensions()
{
  type metadata accessor for CFStringRef(0);
  _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v1 = Dictionary._bridgeToObjectiveC()().super.isa;
  v2 = CFEqual(isa, v1);

  return v2 != 0;
}

uint64_t CMFormatDescriptionRef.Extensions.hash(into:)()
{
  type metadata accessor for CFStringRef(0);
  _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v1 = CFHash(isa);

  return MEMORY[0x2318E2D50](v1);
}

Swift::Int CMFormatDescriptionRef.Extensions.hashValue.getter()
{
  Hasher.init(_seed:)();
  lazy protocol witness table accessor for type CMFormatDescriptionRef.Extensions and conformance CMFormatDescriptionRef.Extensions();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CMFormatDescriptionRef.Extensions(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CMFormatDescriptionRef.Extensions()
{
  type metadata accessor for CFStringRef(0);
  _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v1 = CFHash(isa);

  return MEMORY[0x2318E2D50](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CMFormatDescriptionRef.Extensions(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t _CMFormatDescriptionInitTrampoline.init(mediaType:mediaSubType:extensions:)(_DWORD *a1, int *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v5 = *a2;
  v6 = *a3;
  v8[4] = *a1;
  v8[5] = v5;
  v9 = v6;
  _CMInitTrampoline.init(_:)(partial apply for closure #1 in _CMFormatDescriptionInitTrampoline.init(mediaType:mediaSubType:extensions:), v8, a4, *(a5 + 8));
}

uint64_t closure #1 in _CMFormatDescriptionInitTrampoline.init(mediaType:mediaSubType:extensions:)(CMFormatDescriptionRef *a1, CMMediaType a2, FourCharCode a3, uint64_t a4)
{
  v5 = *MEMORY[0x277CBECE8];
  if (a4)
  {
    v6 = a3;
    v7 = a2;
    type metadata accessor for CFStringRef(0);
    _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);

    v8.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    a2 = v7;
    a3 = v6;
  }

  else
  {
    v8.super.isa = 0;
  }

  v9 = CMFormatDescriptionCreate(v5, a2, a3, v8.super.isa, a1);

  return v9;
}

uint64_t _CMFormatDescriptionInitTrampoline.init(audioStreamBasicDescription:layoutSize:layout:magicCookie:extensions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t a6@<X6>, uint64_t a7@<X7>, uint64_t a8@<X8>)
{
  v25 = a7;
  v24 = a8;
  v23 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v15 = &v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v16;
  v18 = swift_allocObject();
  v19 = *(a1 + 16);
  *(v18 + 16) = *a1;
  *(v18 + 32) = v19;
  *(v18 + 48) = *(a1 + 32);
  v20 = swift_allocObject();
  v20[2] = v18;
  v20[3] = a2;
  v20[4] = a3;
  v20[5] = v17;
  v27 = a4;
  v28 = a5;
  v29 = partial apply for closure #1 in _CMFormatDescriptionInitTrampoline.init(audioStreamBasicDescription:layoutSize:layout:magicCookie:extensions:);
  v30 = v20;
  v21 = v31;
  _CMInitTrampoline.init(_:)(partial apply for closure #2 in _CMFormatDescriptionInitTrampoline.init(audioStreamBasicDescription:layoutSize:layout:magicCookie:extensions:), v26, a6, *(v25 + 8));

  outlined consume of Data?(a4, a5);

  if (!v21)
  {
    (*(v23 + 32))(v24, v15, a6);
  }
}

uint64_t closure #1 in _CMFormatDescriptionInitTrampoline.init(audioStreamBasicDescription:layoutSize:layout:magicCookie:extensions:)(CMAudioFormatDescriptionRef *a1, size_t a2, const void *a3, uint64_t a4, size_t a5, const AudioChannelLayout *a6, uint64_t a7)
{
  v13 = *MEMORY[0x277CBECE8];
  if (a7)
  {
    type metadata accessor for CFStringRef(0);
    _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);

    v14.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v14.super.isa = 0;
  }

  swift_beginAccess();
  v15 = CMAudioFormatDescriptionCreate(v13, (a4 + 16), a5, a6, a2, a3, v14.super.isa, a1);
  swift_endAccess();

  return v15;
}

uint64_t closure #2 in _CMFormatDescriptionInitTrampoline.init(audioStreamBasicDescription:layoutSize:layout:magicCookie:extensions:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5)
{
  if (a3 >> 60 == 15)
  {
    return a4(a1, 0, 0);
  }

  outlined copy of Data?(a2, a3);
  v11 = specialized Data.withUnsafeBytes<A>(_:)(a2, a3, a4, a5, a1);
  outlined consume of Data?(a2, a3);
  return v11;
}

uint64_t _CMFormatDescriptionInitTrampoline.init(audioStreamBasicDescription:layout:magicCookie:extensions:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  v33 = a3;
  v30 = a7;
  v34 = a4;
  v31 = a1;
  v28 = a8;
  v27 = *(a6 - 8);
  MEMORY[0x28223BE20](a1);
  v29 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9CoreAudio07ManagedB13ChannelLayoutVSgMd, &_s9CoreAudio07ManagedB13ChannelLayoutVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v26 - v13;
  v15 = type metadata accessor for ManagedAudioChannelLayout();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a5;
  outlined init with copy of CMAttachmentBearerAttachments.Value?(a2, v14, &_s9CoreAudio07ManagedB13ChannelLayoutVSgMd, &_s9CoreAudio07ManagedB13ChannelLayoutVSgMR);
  if ((*(v16 + 48))(v14, 1, v15) == 1)
  {
    outlined destroy of CMAttachmentBearerAttachments.Value?(v14, &_s9CoreAudio07ManagedB13ChannelLayoutVSgMd, &_s9CoreAudio07ManagedB13ChannelLayoutVSgMR);
    v35 = v19;
    v20 = v29;
    v21 = v32;
    _CMFormatDescriptionInitTrampoline.init(audioStreamBasicDescription:layoutSize:layout:magicCookie:extensions:)(v31, 0, 0, v33, v34, a6, v30, v29);
    result = outlined destroy of CMAttachmentBearerAttachments.Value?(a2, &_s9CoreAudio07ManagedB13ChannelLayoutVSgMd, &_s9CoreAudio07ManagedB13ChannelLayoutVSgMR);
    if (!v21)
    {
      return (*(v27 + 32))(v28, v20, a6);
    }
  }

  else
  {
    v29 = a2;
    v27 = a6;
    v23 = (*(v16 + 32))(v18, v14, v15);
    MEMORY[0x28223BE20](v23);
    *(&v26 - 6) = v31;
    *(&v26 - 5) = v18;
    v24 = v34;
    *(&v26 - 4) = v33;
    *(&v26 - 3) = v24;
    *(&v26 - 2) = v19;
    type metadata accessor for CMFormatDescriptionRef(0);
    v25 = v32;
    ManagedAudioChannelLayout.withUnsafePointer<A>(_:)();
    if (v25)
    {
      outlined destroy of CMAttachmentBearerAttachments.Value?(v29, &_s9CoreAudio07ManagedB13ChannelLayoutVSgMd, &_s9CoreAudio07ManagedB13ChannelLayoutVSgMR);
      outlined consume of Data?(v33, v34);
    }

    else
    {

      (*(*(v30 + 8) + 16))(v35, v27);
      outlined consume of Data?(v33, v34);
      outlined destroy of CMAttachmentBearerAttachments.Value?(v29, &_s9CoreAudio07ManagedB13ChannelLayoutVSgMd, &_s9CoreAudio07ManagedB13ChannelLayoutVSgMR);
    }

    return (*(v16 + 8))(v18, v15);
  }

  return result;
}

void closure #1 in _CMFormatDescriptionInitTrampoline.init(audioStreamBasicDescription:layout:magicCookie:extensions:)(const AudioChannelLayout *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X3>, unint64_t a4@<X4>, uint64_t a5@<X5>, void *a6@<X8>)
{
  formatDescriptionOut[1] = *MEMORY[0x277D85DE8];
  v12 = ManagedAudioChannelLayout.sizeInBytes.getter();
  v13 = *(a2 + 16);
  *&asbd.mSampleRate = *a2;
  *&asbd.mBytesPerPacket = v13;
  *&asbd.mBitsPerChannel = *(a2 + 32);
  formatDescriptionOut[0] = 0;
  if (a4 >> 60 != 15)
  {
    v16 = a4 >> 62;

    if ((a4 >> 62) <= 1)
    {
      v47 = v12;
      if (!v16)
      {
        v49[0] = a3;
        LOWORD(v49[1]) = a4;
        BYTE2(v49[1]) = BYTE2(a4);
        BYTE3(v49[1]) = BYTE3(a4);
        BYTE4(v49[1]) = BYTE4(a4);
        v17 = BYTE6(a4);
        BYTE5(v49[1]) = BYTE5(a4);
        v18 = *MEMORY[0x277CBECE8];
        if (a5)
        {
          type metadata accessor for CFStringRef(0);
          _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);
          swift_bridgeObjectRetain_n();
          v17 = BYTE6(a4);
          v19.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
        }

        else
        {
          swift_bridgeObjectRetain_n();
          v19.super.isa = 0;
        }

        swift_beginAccess();
        v34 = v49;
        v35 = v18;
        v36 = v47;
        v37 = a1;
        v38 = v17;
        goto LABEL_45;
      }

      if (a3 >> 32 >= a3)
      {
        swift_bridgeObjectRetain_n();
        outlined copy of Data?(a3, a4);
        v29 = __DataStorage._bytes.getter();
        if (!v29)
        {
LABEL_25:
          v31 = MEMORY[0x2318E24F0]();
          if (v31 >= (a3 >> 32) - a3)
          {
            v32 = (a3 >> 32) - a3;
          }

          else
          {
            v32 = v31;
          }

          if (!v29)
          {
            v32 = 0;
          }

          v43 = v32;
          v45 = v29;
          v33 = *MEMORY[0x277CBECE8];
          if (a5)
          {
            type metadata accessor for CFStringRef(0);
            _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);

            v19.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
          }

          else
          {
            v19.super.isa = 0;
          }

          swift_beginAccess();
          v35 = v33;
          v36 = v12;
          v37 = a1;
          v38 = v43;
          v34 = v45;
          goto LABEL_45;
        }

        v30 = __DataStorage._offset.getter();
        if (!__OFSUB__(a3, v30))
        {
          v29 += a3 - v30;
          goto LABEL_25;
        }

LABEL_52:
        __break(1u);
      }

      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }

    if (v16 == 2)
    {
      v48 = v12;
      v44 = a6;
      v12 = *(a3 + 16);
      a6 = *(a3 + 24);
      swift_bridgeObjectRetain_n();
      outlined copy of Data?(a3, a4);
      v20 = a4 & 0x3FFFFFFFFFFFFFFFLL;
      v21 = __DataStorage._bytes.getter();
      if (v21)
      {
        v22 = v21;
        v20 = a4 & 0x3FFFFFFFFFFFFFFFLL;
        v23 = __DataStorage._offset.getter();
        if (__OFSUB__(v12, v23))
        {
          goto LABEL_51;
        }

        v46 = (v12 - v23 + v22);
        v24 = a6 - v12;
        if (!__OFSUB__(a6, v12))
        {
LABEL_12:
          v25 = MEMORY[0x2318E24F0]();
          if (v25 >= v24)
          {
            v26 = v24;
          }

          else
          {
            v26 = v25;
          }

          a6 = v44;
          if (!v46)
          {
            v26 = 0;
          }

          v42 = v26;
          v27 = *MEMORY[0x277CBECE8];
          if (a5)
          {
            type metadata accessor for CFStringRef(0);
            _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);

            v19.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
          }

          else
          {
            v19.super.isa = 0;
          }

          swift_beginAccess();
          v35 = v27;
          v36 = v48;
          v37 = a1;
          v38 = v42;
          v34 = v46;
          goto LABEL_45;
        }
      }

      else
      {
        v46 = 0;
        v24 = a6 - v12;
        if (!__OFSUB__(a6, v12))
        {
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    else
    {
      memset(v49, 0, 14);
      v20 = *MEMORY[0x277CBECE8];
      if (a5)
      {
        type metadata accessor for CFStringRef(0);
        _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);
        swift_bridgeObjectRetain_n();
        v19.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
LABEL_40:
        swift_beginAccess();
        v34 = v49;
        v35 = v20;
        v36 = v12;
        v37 = a1;
        v38 = 0;
LABEL_45:
        v28 = CMAudioFormatDescriptionCreate(v35, &asbd, v36, v37, v38, v34, v19.super.isa, formatDescriptionOut);
        swift_endAccess();

        outlined consume of Data?(a3, a4);
        goto LABEL_46;
      }
    }

    swift_bridgeObjectRetain_n();
    v19.super.isa = 0;
    goto LABEL_40;
  }

  v14 = *MEMORY[0x277CBECE8];
  if (a5)
  {
    type metadata accessor for CFStringRef(0);
    _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);
    swift_bridgeObjectRetain_n();
    v15.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v15.super.isa = 0;
  }

  swift_beginAccess();
  v28 = CMAudioFormatDescriptionCreate(v14, &asbd, v12, a1, 0, 0, v15.super.isa, formatDescriptionOut);
  swift_endAccess();

LABEL_46:
  if (v28 == noErr.getter())
  {
    if (formatDescriptionOut[0])
    {
      v39 = formatDescriptionOut[0];
      v40 = _swiftInitForCMTimebase(v39);

      swift_bridgeObjectRelease_n();
      *a6 = v40;
    }

    else
    {
      swift_bridgeObjectRelease_n();
      __break(1u);
    }
  }

  else
  {
    v41 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v41 initWithDomain:*MEMORY[0x277CCA590] code:v28 userInfo:0];
    swift_willThrow();
    swift_bridgeObjectRelease_n();
  }
}

uint64_t closure #1 in _CMFormatDescriptionInitTrampoline.init(audioFormatDescriptionArray:)(CMAudioFormatDescriptionRef *a1)
{
  v2 = *MEMORY[0x277CBECE8];
  type metadata accessor for CMFormatDescriptionRef(0);
  isa = Array._bridgeToObjectiveC()().super.isa;
  Summary = CMAudioFormatDescriptionCreateSummary(v2, isa, 0, a1);

  return Summary;
}

id _CMFormatDescriptionInitTrampoline.init(videoCodecType:width:height:extensions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a2 == a2 && a3 == a3)
  {
    v6 = MEMORY[0x28223BE20](*a4);
    v12[4] = v8;
    v12[5] = v7;
    v12[6] = v9;
    v13 = v6;
    _CMInitTrampoline.init(_:)(partial apply for closure #1 in _CMFormatDescriptionInitTrampoline.init(videoCodecType:width:height:extensions:), v12, v11, *(v10 + 8));
  }

  else
  {

    if (one-time initialization token for invalidParameter != -1)
    {
      swift_once();
    }

    v4 = static CMFormatDescriptionRef.Error.invalidParameter;
    swift_willThrow();
    return v4;
  }
}

uint64_t closure #1 in _CMFormatDescriptionInitTrampoline.init(videoCodecType:width:height:extensions:)(CMVideoFormatDescriptionRef *a1, CMVideoCodecType a2, int32_t a3, int32_t a4, uint64_t a5)
{
  v6 = *MEMORY[0x277CBECE8];
  if (a5)
  {
    v7 = a4;
    v8 = a3;
    v9 = a2;
    type metadata accessor for CFStringRef(0);
    _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);

    v10.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    a2 = v9;
    a3 = v8;
    a4 = v7;
  }

  else
  {
    v10.super.isa = 0;
  }

  v11 = CMVideoFormatDescriptionCreate(v6, a2, a3, a4, v10.super.isa, a1);

  return v11;
}

void _CMFormatDescriptionInitTrampoline.init(imageBuffer:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4[2] = a1;
  _CMInitTrampoline.init(_:)(partial apply for closure #1 in _CMFormatDescriptionInitTrampoline.init(imageBuffer:), v4, a2, *(a3 + 8));
}

void _CMFormatDescriptionInitTrampoline.init(pixelBuffer:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_getKeyPath();
  type metadata accessor for CVBufferRef(0);

  _s9CoreVideo20CVMutablePixelBufferV010withUnsafeE0yxxSo11CVBufferRefaKYTXEKRi_zlF();

  v7 = v5;
  _CMInitTrampoline.init(_:)(partial apply for closure #1 in _CMFormatDescriptionInitTrampoline.init(imageBuffer:), v6, a2, *(a3 + 8));
}

id _CMFormatDescriptionInitTrampoline.init(h264ParameterSets:nalUnitHeaderLength:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = MEMORY[0x28223BE20](a1);
  v13 = &v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2841BC938 == v9 || unk_2841BC940 == v9 || qword_2841BC948 == v9)
  {
    v24 = v11;
    v25 = v10;
    v16 = v8;
    v17 = specialized _arrayForceCast<A, B>(_:)(v8);
    v18 = *(v16 + 16);

    v19 = MEMORY[0x277D84F90];
    v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0, MEMORY[0x277D84F90], &_ss23_ContiguousArrayStorageCySPys5UInt8VGGMd, &_ss23_ContiguousArrayStorageCySPys5UInt8VGGMR);
    v20 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0, v19, &_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v26 = v17;
    v27 = v20;
    specialized Sequence.forEach(_:)(v17, &v28, &v27);
    MEMORY[0x28223BE20](v21);
    *(&v24 - 4) = &v28;
    *(&v24 - 3) = &v27;
    *(&v24 - 2) = v18;
    *(&v24 - 1) = a2;
    _CMInitTrampoline.init(_:)(partial apply for closure #2 in _CMFormatDescriptionInitTrampoline.init(h264ParameterSets:nalUnitHeaderLength:), (&v24 - 6), a3, *(a4 + 8));
    if (!v4)
    {
      (*(v24 + 32))(v25, v13, a3);
    }
  }

  else
  {

    if (one-time initialization token for invalidParameter != -1)
    {
      swift_once();
    }

    v23 = static CMFormatDescriptionRef.Error.invalidParameter;
    swift_willThrow();
    return v23;
  }
}

uint64_t specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v2)
  {
    v7 = MEMORY[0x277D84F90];
    specialized ContiguousArray.reserveCapacity(_:)();
    v4 = (a1 + 40);
    do
    {
      v5 = *(v4 - 1);
      v6 = *v4;
      outlined copy of Data._Representation(v5, *v4);
      Data._bridgeToObjectiveC()();
      outlined consume of Data._Representation(v5, v6);
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      v4 += 2;
      --v2;
    }

    while (v2);
    return v7;
  }

  return result;
}

CMFormatDescriptionRef *closure #2 in _CMFormatDescriptionInitTrampoline.init(h264ParameterSets:nalUnitHeaderLength:)(CMFormatDescriptionRef *result, uint64_t *a2, uint64_t *a3, size_t a4, uint64_t a5)
{
  if (a5 < 0xFFFFFFFF80000000)
  {
    __break(1u);
  }

  else
  {
    v5 = a5;
    if (a5 <= 0x7FFFFFFF)
    {
      v7 = result;
      v8 = *a2;
      v9 = *a3;
      v10 = *MEMORY[0x277CBECE8];

      v11 = CMVideoFormatDescriptionCreateFromH264ParameterSets(v10, a4, (v8 + 32), (v9 + 32), v5, v7);

      return v11;
    }
  }

  __break(1u);
  return result;
}

id _CMFormatDescriptionInitTrampoline.init(hevcParameterSets:nalUnitHeaderLength:extensions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = MEMORY[0x28223BE20](a1);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v16;
  if (qword_2841BC970 == v11 || unk_2841BC978 == v11 || qword_2841BC980 == v11)
  {
    v30 = v13;
    v31 = v12;
    v20 = v10;
    v21 = specialized _arrayForceCast<A, B>(_:)(v10);
    v32 = v5;
    v22 = v21;
    v23 = *(v20 + 16);

    v24 = MEMORY[0x277D84F90];
    v35 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23, 0, MEMORY[0x277D84F90], &_ss23_ContiguousArrayStorageCySPys5UInt8VGGMd, &_ss23_ContiguousArrayStorageCySPys5UInt8VGGMR);
    v25 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23, 0, v24, &_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
    v33 = v22;
    v34 = v25;
    specialized Sequence.forEach(_:)(v22, &v35, &v34);
    MEMORY[0x28223BE20](v26);
    *(&v29 - 6) = &v35;
    *(&v29 - 5) = &v34;
    *(&v29 - 4) = v23;
    *(&v29 - 3) = a2;
    *(&v29 - 2) = v17;
    _CMInitTrampoline.init(_:)(partial apply for closure #2 in _CMFormatDescriptionInitTrampoline.init(hevcParameterSets:nalUnitHeaderLength:extensions:), (&v29 - 8), a4, *(a5 + 8));

    if (!v6)
    {
      (*(v30 + 32))(v31, v15, a4);
    }
  }

  else
  {

    if (one-time initialization token for invalidParameter != -1)
    {
      swift_once();
    }

    v28 = static CMFormatDescriptionRef.Error.invalidParameter;
    swift_willThrow();
    return v28;
  }
}

uint64_t closure #1 in _CMFormatDescriptionInitTrampoline.init(h264ParameterSets:nalUnitHeaderLength:)(CFDataRef *a1, char **a2, uint64_t *a3)
{
  v5 = *a1;
  result = CFDataGetBytePtr(*a1);
  if (result)
  {
    v7 = result;
    v8 = *a2;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *a2 = v8;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v8 + 2) + 1, 1, v8, &_ss23_ContiguousArrayStorageCySPys5UInt8VGGMd, &_ss23_ContiguousArrayStorageCySPys5UInt8VGGMR);
      *a2 = v8;
    }

    v11 = *(v8 + 2);
    v10 = *(v8 + 3);
    if (v11 >= v10 >> 1)
    {
      v8 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, v8, &_ss23_ContiguousArrayStorageCySPys5UInt8VGGMd, &_ss23_ContiguousArrayStorageCySPys5UInt8VGGMR);
      *a2 = v8;
    }

    *(v8 + 2) = v11 + 1;
    *&v8[8 * v11 + 32] = v7;
    Length = CFDataGetLength(v5);
    v13 = *a3;
    result = swift_isUniquelyReferenced_nonNull_native();
    *a3 = v13;
    if ((result & 1) == 0)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 16) + 1, 1, v13, &_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
      v13 = result;
      *a3 = result;
    }

    v15 = *(v13 + 16);
    v14 = *(v13 + 24);
    if (v15 >= v14 >> 1)
    {
      result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v14 > 1), v15 + 1, 1, v13, &_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
      v13 = result;
      *a3 = result;
    }

    *(v13 + 16) = v15 + 1;
    *(v13 + 8 * v15 + 32) = Length;
  }

  else
  {
    __break(1u);
  }

  return result;
}

CMFormatDescriptionRef *closure #2 in _CMFormatDescriptionInitTrampoline.init(hevcParameterSets:nalUnitHeaderLength:extensions:)(CMFormatDescriptionRef *result, uint64_t *a2, uint64_t *a3, size_t a4, uint64_t a5, uint64_t a6)
{
  if (a5 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_8;
  }

  v6 = a5;
  if (a5 > 0x7FFFFFFF)
  {
LABEL_8:
    __break(1u);
    return result;
  }

  v8 = result;
  v9 = *a2;
  v10 = *a3;
  v11 = *MEMORY[0x277CBECE8];
  if (a6)
  {
    type metadata accessor for CFStringRef(0);
    _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);

    v12.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {

    v12.super.isa = 0;
  }

  v13 = CMVideoFormatDescriptionCreateFromHEVCParameterSets(v11, a4, (v9 + 32), (v10 + 32), v6, v12.super.isa, v8);

  return v13;
}

uint64_t closure #1 in _CMFormatDescriptionInitTrampoline.init(taggedBuffers:extensions:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    type metadata accessor for CFStringRef(0);
    _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);

    v3.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v3.super.isa = 0;
  }

  v4 = CMTaggedBufferGroupFormatDescriptionCreateForTaggedBufferGroupWithExtensions();

  return v4;
}

{
  v4 = Array<A>.taggedBufferGroup.getter(a2);
  if (a3)
  {
    type metadata accessor for CFStringRef(0);
    _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);

    v5.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;
  }

  else
  {
    v5.super.isa = 0;
  }

  v6 = CMTaggedBufferGroupFormatDescriptionCreateForTaggedBufferGroupWithExtensions();

  return v6;
}

uint64_t partial apply for closure #1 in _CMFormatDescriptionInitTrampoline.init(taggedBuffers:extensions:)(uint64_t a1)
{
  return closure #1 in _CMFormatDescriptionInitTrampoline.init(taggedBuffers:extensions:)(a1, *(v1 + 16), *(v1 + 24));
}

{
  return closure #1 in _CMFormatDescriptionInitTrampoline.init(taggedBuffers:extensions:)(a1, *(v1 + 16), *(v1 + 24));
}

uint64_t _CMFormatDescriptionInitTrampoline.init(muxedStreamType:extensions:)(_DWORD *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a2;
  v6[4] = *a1;
  v7 = v4;
  _CMInitTrampoline.init(_:)(partial apply for closure #1 in _CMFormatDescriptionInitTrampoline.init(muxedStreamType:extensions:), v6, a3, *(a4 + 8));
}

uint64_t closure #1 in _CMFormatDescriptionInitTrampoline.init(muxedStreamType:extensions:)(CMMuxedFormatDescriptionRef *a1, CMMuxedStreamType a2, uint64_t a3)
{
  v4 = *MEMORY[0x277CBECE8];
  if (a3)
  {
    v5 = a2;
    type metadata accessor for CFStringRef(0);
    _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);

    v6.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    a2 = v5;
  }

  else
  {
    v6.super.isa = 0;
  }

  v7 = CMMuxedFormatDescriptionCreate(v4, a2, v6.super.isa, a1);

  return v7;
}

id _CMFormatDescriptionInitTrampoline.init(timeCodeFormatType:frameDuration:frameQuanta:flags:extensions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t *a7)
{
  v7 = *a7;
  if (HIDWORD(a5))
  {

    if (one-time initialization token for invalidParameter != -1)
    {
      swift_once();
    }

    v8 = static CMFormatDescriptionRef.Error.invalidParameter;
    swift_willThrow();
    return v8;
  }

  else
  {
    MEMORY[0x28223BE20](a1);
    v19[4] = v10;
    v20 = v11;
    v21 = v12;
    v22 = v13;
    v23 = v14;
    v24 = v15;
    v25 = v16;
    v26 = v7;
    _CMInitTrampoline.init(_:)(partial apply for closure #1 in _CMFormatDescriptionInitTrampoline.init(timeCodeFormatType:frameDuration:frameQuanta:flags:extensions:), v19, v18, *(v17 + 8));
  }
}

uint64_t closure #1 in _CMFormatDescriptionInitTrampoline.init(timeCodeFormatType:frameDuration:frameQuanta:flags:extensions:)(CMTimeCodeFormatDescriptionRef *a1, CMTimeCodeFormatType a2, CMTimeValue a3, uint64_t a4, CMTimeEpoch a5, uint32_t a6, uint32_t a7, uint64_t a8)
{
  v14 = *MEMORY[0x277CBECE8];
  if (a8)
  {
    timeCodeFormatType = a2;
    type metadata accessor for CFStringRef(0);
    _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);

    v15.super.isa = Dictionary._bridgeToObjectiveC()().super.isa;

    a2 = timeCodeFormatType;
  }

  else
  {
    v15.super.isa = 0;
  }

  frameDuration.value = a3;
  *&frameDuration.timescale = a4;
  frameDuration.epoch = a5;
  v16 = CMTimeCodeFormatDescriptionCreate(v14, a2, &frameDuration, a6, a7, v15.super.isa, a1);

  return v16;
}

uint64_t _CMFormatDescriptionInitTrampoline.init(audioFormatDescriptionArray:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t *))
{
  v5[2] = a1;
  _CMInitTrampoline.init(_:)(a4, v5, a2, *(a3 + 8));
}

uint64_t closure #1 in _CMFormatDescriptionInitTrampoline.init(boxedMetadataKeys:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, Class, uint64_t))
{
  v5 = *MEMORY[0x277CBECE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd, &_sSDySSyXlGMR);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v7 = a3(v5, 1835360888, isa, a1);

  return v7;
}

void _CMFormatDescriptionInitTrampoline.init(sourceMetadata:specifications:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[3] = a2;
  v5[2] = a1;
  _CMInitTrampoline.init(_:)(partial apply for closure #1 in _CMFormatDescriptionInitTrampoline.init(sourceMetadata:specifications:), v5, a3, *(a4 + 8));
}

uint64_t closure #1 in _CMFormatDescriptionInitTrampoline.init(sourceMetadata:specifications:)(CMMetadataFormatDescriptionRef *a1, const opaqueCMFormatDescription *a2)
{
  v4 = *MEMORY[0x277CBECE8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSyXlGMd, &_sSDySSyXlGMR);
  isa = Array._bridgeToObjectiveC()().super.isa;
  v6 = CMMetadataFormatDescriptionCreateWithMetadataFormatDescriptionAndMetadataSpecifications(v4, a2, isa, a1);

  return v6;
}

void _CMFormatDescriptionInitTrampoline.init(sourceMetadata:otherSourceDescription:)(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6[3] = a2;
  v6[2] = a1;
  _CMInitTrampoline.init(_:)(partial apply for closure #1 in _CMFormatDescriptionInitTrampoline.init(sourceMetadata:otherSourceDescription:), v6, a3, *(a4 + 8));
}

uint64_t _CMFormatDescriptionFourCCConvertible.init(string:)@<X0>(uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v7 = type metadata accessor for Optional();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = v16 - v8;
  result = String.utf8CString.getter();
  if (*(result + 16) != 5)
  {
    goto LABEL_14;
  }

  if (*(result + 32) < 0 || *(result + 33) < 0 || *(result + 34) < 0 || *(result + 35) < 0)
  {
    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  v11 = *(result + 32);
  if (v11 < 0)
  {
    goto LABEL_13;
  }

  v12 = *(result + 33);
  if (v12 < 0)
  {
    goto LABEL_13;
  }

  v13 = *(result + 34);
  if (v13 < 0)
  {
    goto LABEL_13;
  }

  v14 = *(result + 35);
  if (v14 < 0)
  {
    goto LABEL_13;
  }

  v16[3] = v14 | (((v11 << 16) | (v12 << 8) | v13) << 8);
  dispatch thunk of RawRepresentable.init(rawValue:)();
  v15 = *(a3 - 8);
  result = (*(v15 + 48))(v9, 1, a3);
  if (result != 1)
  {

    swift_unknownObjectRelease();
    return (*(v15 + 32))(a5, v9, a3);
  }

LABEL_15:
  __break(1u);
  return result;
}

Swift::Bool __swiftcall CMFormatDescriptionRef.equalTo(_:extensionKeysToIgnore:sampleDescriptionExtensionAtomKeysToIgnore:)(CMFormatDescriptionRef _, Swift::OpaquePointer extensionKeysToIgnore, Swift::OpaquePointer sampleDescriptionExtensionAtomKeysToIgnore)
{
  isa = Array._bridgeToObjectiveC()().super.isa;
  v6 = Array._bridgeToObjectiveC()().super.isa;
  v7 = CMFormatDescriptionEqualIgnoringExtensionKeys(v3, _, isa, v6);

  return v7 != 0;
}

uint64_t CMFormatDescriptionRef.mediaSubType.getter@<X0>(_DWORD *a1@<X8>)
{
  result = CMFormatDescriptionGetMediaSubType(v1);
  *a1 = result;
  return result;
}

void CMFormatDescriptionRef.extensions.getter(void *a1@<X8>)
{
  v3 = CMFormatDescriptionGetExtensions(v1);
  v4 = MEMORY[0x277D84F98];
  if (v3)
  {
    v5 = v3;
    objc_opt_self();
    if (swift_dynamicCastObjCClass())
    {
      type metadata accessor for CFStringRef(0);
      _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);
      v5 = v5;
      static Dictionary._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  *a1 = v4;
}

const AudioStreamBasicDescription *CMFormatDescriptionRef.audioStreamBasicDescription.getter@<X0>(uint64_t a1@<X8>)
{
  result = CMAudioFormatDescriptionGetStreamBasicDescription(v1);
  if (result)
  {
    v4 = *&result->mSampleRate;
    v5 = *&result->mBytesPerPacket;
    v6 = *&result->mBitsPerChannel;
  }

  else
  {
    v6 = 0;
    v4 = 0uLL;
    v5 = 0uLL;
  }

  *a1 = v4;
  *(a1 + 16) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = result == 0;
  return result;
}

uint64_t CMFormatDescriptionRef.withMagicCookie<A>(_:)(uint64_t (*a1)(const void *, size_t, BOOL))
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  MagicCookie = CMAudioFormatDescriptionGetMagicCookie(v1, v6);
  if (MagicCookie)
  {
    v4 = MagicCookie + v6[0];
  }

  else
  {
    v4 = 0;
  }

  return a1(MagicCookie, v4, MagicCookie == 0);
}

_BYTE *CMFormatDescriptionRef.magicCookie.getter()
{
  v2[1] = *MEMORY[0x277D85DE8];
  v2[0] = 0;
  result = CMAudioFormatDescriptionGetMagicCookie(v0, v2);
  if (result)
  {
    return specialized Data.init(bytes:count:)(result, v2[0]);
  }

  return result;
}

uint64_t CMFormatDescriptionRef.audioChannelLayout.getter@<X0>(uint64_t a1@<X8>)
{
  sizeOut[1] = *MEMORY[0x277D85DE8];
  v3 = type metadata accessor for AudioChannelLayout.UnsafePointer();
  MEMORY[0x28223BE20](v3 - 8);
  sizeOut[0] = 0;
  if (CMAudioFormatDescriptionGetChannelLayout(v1, sizeOut))
  {
    UnsafeMutableAudioBufferListPointer.init(_:)();
    *(swift_allocObject() + 16) = v1;
    v4 = v1;
    ManagedAudioChannelLayout.init(audioChannelLayoutPointer:deallocator:)();
    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for ManagedAudioChannelLayout();
  return (*(*(v6 - 8) + 56))(a1, v5, 1, v6);
}

void *CMFormatDescriptionRef.audioFormatList.getter()
{
  v6[1] = *MEMORY[0x277D85DE8];
  v6[0] = 0;
  FormatList = CMAudioFormatDescriptionGetFormatList(v0, v6);
  if (!FormatList || v6[0] + 47 < 0x5F)
  {
    return MEMORY[0x277D84F90];
  }

  v3 = v6[0] / 48;
  v4 = FormatList;
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo19AudioFormatListItemV_Tt1g5(v6[0] / 48, 0);
  memcpy(v5 + 4, v4, 48 * v3);
  return v5;
}

__int128 *CMFormatDescriptionRef.richestDecodableFormat.getter@<X0>(uint64_t (*a1)(uint64_t)@<X0>, uint64_t a2@<X8>)
{
  result = a1(v2);
  if (result)
  {
    v5 = *result;
    v6 = result[1];
    v7 = result[2];
  }

  else
  {
    v5 = 0uLL;
    v6 = 0uLL;
    v7 = 0uLL;
  }

  *a2 = v5;
  *(a2 + 16) = v6;
  *(a2 + 32) = v7;
  *(a2 + 48) = result == 0;
  return result;
}

BOOL CMFormatDescriptionRef.equalTo(_:equalityMask:)(CMAudioFormatDescriptionMask *a1, const opaqueCMFormatDescription *a2, CMAudioFormatDescriptionMask *a3)
{
  v8 = *MEMORY[0x277D85DE8];
  v5 = *a3;
  equalityMaskOut = 0;
  result = CMAudioFormatDescriptionEqual(v3, a2, v5, &equalityMaskOut) != 0;
  *a1 = equalityMaskOut;
  return result;
}

unint64_t CMFormatDescriptionRef.ParameterSetCollection.subscript.getter(unint64_t result)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*(*v1 + 16) > result)
  {
    v2 = *v1 + 16 * result;
    v3 = *(v2 + 32);
    outlined copy of Data._Representation(v3, *(v2 + 40));
    return v3;
  }

  __break(1u);
  return result;
}

void *protocol witness for BidirectionalCollection.index(before:) in conformance CMFormatDescriptionRef.ParameterSetCollection@<X0>(void *result@<X0>, unint64_t *a2@<X8>)
{
  v3 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v3 < *(*v2 + 16))
  {
    *a2 = v3;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t *protocol witness for BidirectionalCollection.formIndex(before:) in conformance CMFormatDescriptionRef.ParameterSetCollection(unint64_t *result)
{
  v2 = *result - 1;
  if (__OFSUB__(*result, 1))
  {
    __break(1u);
  }

  else if (v2 < *(*v1 + 16))
  {
    *result = v2;
    return result;
  }

  __break(1u);
  return result;
}

void (*protocol witness for Collection.subscript.read in conformance CMFormatDescriptionRef.ParameterSetCollection(void (*result)(), unint64_t *a2))()
{
  v3 = *a2;
  if ((*a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v3 < *(*v2 + 16))
  {
    *result = *(*v2 + 16 * v3 + 32);
    return CMTimebaseRef.NotificationKey.rawValue.modify;
  }

  __break(1u);
  return result;
}

uint64_t *protocol witness for Collection.subscript.getter in conformance CMFormatDescriptionRef.ParameterSetCollection@<X0>(uint64_t *result@<X0>, void *a2@<X8>)
{
  v3 = *result;
  if (*result < 0 || (v4 = result[1], result = *v2, *(*v2 + 16) < v4))
  {
    __break(1u);
  }

  else
  {
    a2[1] = v4;
    a2[2] = result;
    *a2 = v3;
  }

  return result;
}

void protocol witness for Collection.indices.getter in conformance CMFormatDescriptionRef.ParameterSetCollection(void *a1@<X8>)
{
  v2 = *(*v1 + 16);
  *a1 = 0;
  a1[1] = v2;
}

void *protocol witness for RandomAccessCollection.index(_:offsetBy:) in conformance CMFormatDescriptionRef.ParameterSetCollection@<X0>(void *result@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X8>)
{
  v4 = *result + a2;
  if (__OFADD__(*result, a2))
  {
    __break(1u);
  }

  else if (v4 <= *(*v3 + 16))
  {
    *a3 = v4;
    return result;
  }

  __break(1u);
  return result;
}

unint64_t protocol witness for RandomAccessCollection.index(_:offsetBy:limitedBy:) in conformance CMFormatDescriptionRef.ParameterSetCollection@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, unint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  result = specialized RandomAccessCollection.index(_:offsetBy:limitedBy:)(*a1, a2, *a3, *v4);
  *a4 = result;
  *(a4 + 8) = v7 & 1;
  return result;
}

unint64_t *protocol witness for RandomAccessCollection.distance(from:to:) in conformance CMFormatDescriptionRef.ParameterSetCollection(unint64_t *result, unint64_t *a2)
{
  v3 = *a2;
  v4 = *(*v2 + 16);
  if (*result <= v4 && v3 <= v4)
  {
    return (v3 - *result);
  }

  __break(1u);
  return result;
}

void *protocol witness for Collection.index(after:) in conformance CMFormatDescriptionRef.ParameterSetCollection@<X0>(void *result@<X0>, void *a2@<X8>)
{
  if (*result >= *(*v2 + 16))
  {
    __break(1u);
  }

  else
  {
    *a2 = *result + 1;
  }

  return result;
}

void *protocol witness for Collection.formIndex(after:) in conformance CMFormatDescriptionRef.ParameterSetCollection(void *result)
{
  if (*result >= *(*v1 + 16))
  {
    __break(1u);
  }

  else
  {
    ++*result;
  }

  return result;
}

void *protocol witness for Sequence._copyToContiguousArray() in conformance CMFormatDescriptionRef.ParameterSetCollection()
{
  v1 = specialized _copyCollectionToContiguousArray<A>(_:)(*v0);

  return v1;
}

uint64_t CMFormatDescriptionRef.nalUnitHeaderLength.getter(uint64_t a1)
{
  v6 = *MEMORY[0x277D85DE8];
  NALUnitHeaderLengthOut = 0;
  v2 = noErr.getter();
  if (v2 == CMVideoFormatDescriptionGetH264ParameterSetAtIndex(v1, 0, 0, 0, 0, &NALUnitHeaderLengthOut))
  {
    return NALUnitHeaderLengthOut;
  }

  v3 = noErr.getter();
  if (v3 == CMVideoFormatDescriptionGetHEVCParameterSetAtIndex(v1, 0, 0, 0, 0, &NALUnitHeaderLengthOut))
  {
    return NALUnitHeaderLengthOut;
  }

  else
  {
    return 0;
  }
}

uint64_t CMFormatDescriptionRef.parameterSets.getter@<X0>(void *a1@<X8>)
{
  v2 = swift_allocObject();
  *(v2 + 16) = MEMORY[0x277D84F90];
  v3 = (v2 + 16);
  v7[4] = partial apply for closure #1 in CMFormatDescriptionRef.parameterSets.getter;
  v7[5] = v2;
  v7[0] = MEMORY[0x277D85DD0];
  v7[1] = 1107296256;
  v7[2] = thunk for @escaping @callee_guaranteed (@unowned Int, @unowned UnsafePointer<UInt8>, @unowned Int) -> ();
  v7[3] = &block_descriptor_3;
  v4 = _Block_copy(v7);

  FigVideoFormatDescriptionVisitAllParameterSets();
  _Block_release(v4);
  swift_beginAccess();
  v5 = *v3;

  *a1 = v5;
  return result;
}

uint64_t closure #1 in CMFormatDescriptionRef.parameterSets.getter(char *a1, _BYTE *a2, unint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  if (*(*(a4 + 16) + 16) == a1)
  {
    a3 = specialized Data.init(bytes:count:)(a2, a3);
    a2 = v8;
    swift_beginAccess();
    a1 = *(a4 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(a4 + 16) = a1;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(a1 + 2) + 1, 1, a1);
  *(a4 + 16) = a1;
LABEL_3:
  v11 = *(a1 + 2);
  v10 = *(a1 + 3);
  if (v11 >= v10 >> 1)
  {
    a1 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1, a1);
  }

  *(a1 + 2) = v11 + 1;
  v12 = &a1[16 * v11];
  *(v12 + 4) = a3;
  *(v12 + 5) = a2;
  *(a4 + 16) = a1;
  return swift_endAccess();
}

uint64_t thunk for @escaping @callee_guaranteed (@unowned Int, @unowned UnsafePointer<UInt8>, @unowned Int) -> ()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a1 + 32);

  v7(a2, a3, a4);
}

CGSize __swiftcall CMFormatDescriptionRef.presentationDimensions(usePixelAspectRatio:useCleanAperture:)(Swift::Bool usePixelAspectRatio, Swift::Bool useCleanAperture)
{
  PresentationDimensions = CMVideoFormatDescriptionGetPresentationDimensions(v2, usePixelAspectRatio, useCleanAperture);
  height = PresentationDimensions.height;
  width = PresentationDimensions.width;
  result.height = height;
  result.width = width;
  return result;
}

uint64_t static CMFormatDescriptionRef.extensionKeysCommonWithImageBuffers.getter()
{
  CMVideoFormatDescriptionGetExtensionKeysCommonWithImageBuffers();
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  result = static Array._forceBridgeFromObjectiveC(_:result:)();
  __break(1u);
  return result;
}

uint64_t CMFormatDescriptionRef.tagCollections.getter()
{
  tagCollectionsOut[1] = *MEMORY[0x277D85DE8];
  tagCollectionsOut[0] = 0;
  CMVideoFormatDescriptionCopyTagCollectionArray(v0, tagCollectionsOut);
  v1 = tagCollectionsOut[0];
  if (!tagCollectionsOut[0])
  {
    goto LABEL_4;
  }

  objc_opt_self();
  v2 = swift_dynamicCastObjCClass();
  if (v2)
  {
    type metadata accessor for CMTagCollectionRef(0);
    v3 = v1;
    static Array._conditionallyBridgeFromObjectiveC(_:result:)();

LABEL_4:
    v2 = 0;
  }

  return v2;
}

Swift::Bool __swiftcall CMFormatDescriptionRef.matchesTaggedBufferGroup(_:)(Swift::OpaquePointer a1)
{
  v2 = Array<A>.taggedBufferGroup.getter(a1._rawValue);
  v3 = CMTaggedBufferGroupFormatDescriptionMatchesTaggedBufferGroup(v1, v2);

  return v3 != 0;
}

uint64_t CMFormatDescriptionRef.displayFlags()@<X0>(CMTextDisplayFlags *a1@<X8>)
{
  v2 = v1;
  v8 = *MEMORY[0x277D85DE8];
  displayFlagsOut = 0;
  DisplayFlags = CMTextFormatDescriptionGetDisplayFlags(v2, &displayFlagsOut);
  result = noErr.getter();
  if (DisplayFlags == result)
  {
    *a1 = displayFlagsOut;
  }

  else
  {
    v6 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v6 initWithDomain:*MEMORY[0x277CCA590] code:DisplayFlags userInfo:0];
    return swift_willThrow();
  }

  return result;
}

uint64_t CMFormatDescriptionRef.justification()(_BYTE *a1, _BYTE *a2)
{
  v3 = v2;
  v10 = *MEMORY[0x277D85DE8];
  *verticalJustificationOut = 0;
  Justification = CMTextFormatDescriptionGetJustification(v3, &verticalJustificationOut[1], verticalJustificationOut);
  result = noErr.getter();
  if (Justification == result)
  {
    *a1 = verticalJustificationOut[1];
    *a2 = verticalJustificationOut[0];
  }

  else
  {
    v8 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v8 initWithDomain:*MEMORY[0x277CCA590] code:Justification userInfo:0];
    return swift_willThrow();
  }

  return result;
}

uint64_t CMFormatDescriptionRef.defaultTextBox(originIsAtTopLeft:heightOfTextTrack:)(char a1, CGFloat a2)
{
  v7 = *MEMORY[0x277D85DE8];
  memset(&v6, 0, sizeof(v6));
  DefaultTextBox = CMTextFormatDescriptionGetDefaultTextBox(v2, a1 & 1, a2, &v6);
  result = noErr.getter();
  if (DefaultTextBox != result)
  {
    v5 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v5 initWithDomain:*MEMORY[0x277CCA590] code:DefaultTextBox userInfo:0];
    return swift_willThrow();
  }

  return result;
}

uint64_t CMFormatDescriptionRef.defaultStyle()()
{
  v1 = v0;
  v10 = *MEMORY[0x277D85DE8];
  localFontIDOut = 0;
  *italicOut = 0;
  underlineOut = 0;
  fontSizeOut = 0.0;
  v2 = static Array._allocateBufferUninitialized(minimumCapacity:)();
  *(v2 + 16) = 4;
  *(v2 + 48) = 0u;
  *(v2 + 32) = 0u;
  DefaultStyle = CMTextFormatDescriptionGetDefaultStyle(v1, &localFontIDOut, &italicOut[1], italicOut, &underlineOut, &fontSizeOut, (v2 + 32));
  if (DefaultStyle == noErr.getter())
  {
    return localFontIDOut;
  }

  v5 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
  [v5 initWithDomain:*MEMORY[0x277CCA590] code:DefaultStyle userInfo:0];
  swift_willThrow();
}

Swift::String __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> CMFormatDescriptionRef.fontName(localFontID:)(Swift::Int localFontID)
{
  v10[1] = *MEMORY[0x277D85DE8];
  if (localFontID >> 16)
  {
    if (one-time initialization token for invalidParameter != -1)
    {
      swift_once();
    }

    static CMFormatDescriptionRef.Error.invalidParameter;
    v4 = 0;
    goto LABEL_9;
  }

  v10[0] = 0;
  FontName = CMTextFormatDescriptionGetFontName(v1, localFontID, v10);
  v3 = v10[0];
  v4 = v10[0];
  v5 = noErr.getter();
  if (FontName != v5)
  {
    v8 = objc_allocWithZone(MEMORY[0x277CCA9B8]);
    [v8 initWithDomain:*MEMORY[0x277CCA590] code:FontName userInfo:0];
LABEL_9:
    swift_willThrow();

    goto LABEL_10;
  }

  if (!v4)
  {
    __break(1u);
    goto LABEL_12;
  }

  FontName = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v3 = v7;

LABEL_10:
  v5 = FontName;
  v6 = v3;
LABEL_12:
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

uint64_t CMFormatDescriptionRef.timeCodeFlags.getter@<X0>(_DWORD *a1@<X8>)
{
  result = CMTimeCodeFormatDescriptionGetTimeCodeFlags(v1);
  *a1 = result;
  return result;
}

Swift::OpaquePointer_optional __swiftcall CMFormatDescriptionRef.keyWithLocalID(_:)(Swift::UInt32 a1)
{
  if (CMMetadataFormatDescriptionGetKeyWithLocalID(v1, a1))
  {
    objc_opt_self();
    swift_dynamicCastObjCClassUnconditional();
    v3 = static Dictionary._forceBridgeFromObjectiveC(_:result:)();
    __break(1u);
  }

  else
  {
    v3 = 0;
  }

  result.value._rawValue = v3;
  result.is_nil = v2;
  return result;
}

uint64_t CMFormatDescriptionRef.identifiers.getter()
{
  v1 = CMMetadataFormatDescriptionGetIdentifiers(v0);
  if (!v1)
  {
    return MEMORY[0x277D84F90];
  }

  v2 = v1;
  objc_opt_self();
  swift_dynamicCastObjCClassUnconditional();
  v2;
  result = static Array._forceBridgeFromObjectiveC(_:result:)();
  __break(1u);
  return result;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo22CMFormatDescriptionRefa9CoreMediaE10ExtensionsV5ValueV35CameraCalibrationDataLensCollectionO0L0VGMd, &_ss23_ContiguousArrayStorageCySo22CMFormatDescriptionRefa9CoreMediaE10ExtensionsV5ValueV35CameraCalibrationDataLensCollectionO0L0VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 176);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[176 * v8])
    {
      memmove(v12, v13, 176 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 176 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo5CMTagVGMd, &_ss23_ContiguousArrayStorageCySo5CMTagVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 16 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo16CMBlockBufferRefa9CoreMediaE8SubBlockVGMd, &_ss23_ContiguousArrayStorageCySo16CMBlockBufferRefa9CoreMediaE8SubBlockVGMR);
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
    memcpy(v12, v13, 24 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18CMSampleTimingInfoaGMd, &_ss23_ContiguousArrayStorageCySo18CMSampleTimingInfoaGMR);
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
    memcpy(v12, v13, 72 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySvSgGMd, &_ss23_ContiguousArrayStorageCySvSgGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v13, v14, 8 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo17CMSampleBufferRefa9CoreMediaE17SampleAttachmentsVGMd, &_ss23_ContiguousArrayStorageCySo17CMSampleBufferRefa9CoreMediaE17SampleAttachmentsVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 3);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[8 * v8])
    {
      memmove(v13, v14, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char *result, int64_t a2, char a3, char *a4, uint64_t *a5, uint64_t *a6)
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
      v14 = v13 - 25;
    }

    *(v12 + 2) = v10;
    *(v12 + 3) = 2 * (v14 >> 3);
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v15 = v12 + 32;
  v16 = a4 + 32;
  if (v7)
  {
    if (v12 != a4 || v15 >= &v16[8 * v10])
    {
      memmove(v15, v16, 8 * v10);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v15, v16, 8 * v10);
  }

  return v12;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC9CoreMedia08CMTaggedC0V_Tt1gq5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9CoreMedia14CMTaggedBufferVGMd, &_ss23_ContiguousArrayStorageCy9CoreMedia14CMTaggedBufferVGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1g5(uint64_t a1, uint64_t a2)
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

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo08CMSampleC3Refa9CoreMediaE16SamplePropertiesV_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo17CMSampleBufferRefa9CoreMediaE16SamplePropertiesVGMd, &_ss23_ContiguousArrayStorageCySo17CMSampleBufferRefa9CoreMediaE16SamplePropertiesVGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 4) + (v7 >> 63));
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo18CMSampleTimingInfoa_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo18CMSampleTimingInfoaGMd, &_ss23_ContiguousArrayStorageCySo18CMSampleTimingInfoaGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0xE38E38E38E38E39) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 2) + (v7 >> 63));
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSi_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v8 = v5 - 32;
  v7 = v5 < 32;
  v9 = v5 - 25;
  if (!v7)
  {
    v9 = v8;
  }

  v4[2] = a1;
  v4[3] = 2 * (v9 >> 3);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo08CMSampleC3Refa9CoreMediaE30PerSampleAttachmentsDictionaryV_Tt1g5Tm(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  if (a2 <= a1)
  {
    v4 = a1;
  }

  else
  {
    v4 = a2;
  }

  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v6 = swift_allocObject();
  v7 = _swift_stdlib_malloc_size(v6);
  result = v6;
  v10 = v7 - 32;
  v9 = v7 < 32;
  v11 = v7 - 17;
  if (!v9)
  {
    v11 = v10;
  }

  v6[2] = a1;
  v6[3] = 2 * (v11 >> 4);
  return result;
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo19AudioFormatListItemV_Tt1g5(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySo19AudioFormatListItemVGMd, &_ss23_ContiguousArrayStorageCySo19AudioFormatListItemVGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v7 = ((v5 - 32) * 0x2AAAAAAAAAAAAAABLL) >> 64;
  v4[2] = a1;
  v4[3] = 2 * ((v7 >> 3) + (v7 >> 63));
  return result;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  Hasher.init(_seed:)();
  type metadata accessor for CFStringRef(0);
  _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);
  _CFObject.hash(into:)();
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v5 = ~v3;
    type metadata accessor for CFStringRef(0);
    _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);
    do
    {
      v6 = *(*(v2 + 48) + 8 * v4);
      v7 = static _CFObject.== infix(_:_:)();

      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v5;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

void specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(uint64_t a1, char a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_21;
  }

  LOBYTE(v6) = a2;
  outlined init with copy of CMAttachmentBearerAttachments.Value?(a1 + 32, &v35, &_sSo11CFStringRefa_yptMd, &_sSo11CFStringRefa_yptMR);
  v7 = v35;
  v37 = v35;
  outlined init with take of Any(v36, v34);
  v8 = *a3;
  v9 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
  v11 = v8[2];
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  LOBYTE(v15) = v10;
  if (v8[3] < v14)
  {
    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v14, v6 & 1);
    v9 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
    if ((v15 & 1) == (v16 & 1))
    {
      goto LABEL_7;
    }

LABEL_5:
    type metadata accessor for CFStringRef(0);
    v9 = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  if (v6)
  {
LABEL_7:
    if (v15)
    {
      goto LABEL_8;
    }

    goto LABEL_11;
  }

  v19 = v9;
  specialized _NativeDictionary.copy()();
  v9 = v19;
  if (v15)
  {
LABEL_8:
    v17 = swift_allocError();
    swift_willThrow();
    v18 = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if ((swift_dynamicCast() & 1) == 0)
    {

      __swift_destroy_boxed_opaque_existential_1(v34);

      return;
    }

    goto LABEL_25;
  }

LABEL_11:
  v20 = *a3;
  *(*a3 + 8 * (v9 >> 6) + 64) |= 1 << v9;
  *(v20[6] + 8 * v9) = v7;
  outlined init with take of Any(v34, (v20[7] + 32 * v9));
  v21 = v20[2];
  v13 = __OFADD__(v21, 1);
  v22 = v21 + 1;
  if (!v13)
  {
    v20[2] = v22;
    if (v4 != 1)
    {
      v15 = a1 + 72;
      v6 = 1;
      while (v6 < *(a1 + 16))
      {
        outlined init with copy of CMAttachmentBearerAttachments.Value?(v15, &v35, &_sSo11CFStringRefa_yptMd, &_sSo11CFStringRefa_yptMR);
        v7 = v35;
        v37 = v35;
        outlined init with take of Any(v36, v34);
        v23 = *a3;
        v24 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
        v26 = v23[2];
        v27 = (v25 & 1) == 0;
        v13 = __OFADD__(v26, v27);
        v28 = v26 + v27;
        if (v13)
        {
          goto LABEL_22;
        }

        v29 = v25;
        if (v23[3] < v28)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v28, 1);
          v24 = specialized __RawDictionaryStorage.find<A>(_:)(v7);
          if ((v29 & 1) != (v30 & 1))
          {
            goto LABEL_5;
          }
        }

        if (v29)
        {
          goto LABEL_8;
        }

        v31 = *a3;
        *(*a3 + 8 * (v24 >> 6) + 64) |= 1 << v24;
        *(v31[6] + 8 * v24) = v7;
        outlined init with take of Any(v34, (v31[7] + 32 * v24));
        v32 = v31[2];
        v13 = __OFADD__(v32, 1);
        v33 = v32 + 1;
        if (v13)
        {
          goto LABEL_23;
        }

        ++v6;
        v31[2] = v33;
        v15 += 40;
        if (v4 == v6)
        {
          goto LABEL_21;
        }
      }

      goto LABEL_24;
    }

LABEL_21:

    return;
  }

LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  _StringGuts.grow(_:)(30);
  MEMORY[0x2318E2800](0xD00000000000001BLL, 0x800000022E0F8DD0);
  type metadata accessor for CFStringRef(0);
  _print_unlocked<A, B>(_:_:)();
  MEMORY[0x2318E2800](39, 0xE100000000000000);
  _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
}

id specialized _NativeDictionary.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo11CFStringRefaypGMd, &_ss18_DictionaryStorageCySo11CFStringRefaypGMR);
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
        outlined init with copy of Any(*(v2 + 56) + 32 * v17, v19);
        *(*(v4 + 48) + 8 * v17) = v18;
        outlined init with take of Any(v19, (*(v4 + 56) + 32 * v17));
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
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo11CFStringRefayXlGMd, &_ss18_DictionaryStorageCySo11CFStringRefayXlGMR);
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
        result = swift_unknownObjectRetain();
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

uint64_t specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo11CFStringRefaypGMd, &_ss18_DictionaryStorageCySo11CFStringRefaypGMR);
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
      v21 = (*(v5 + 56) + 32 * v19);
      if (v4)
      {
        outlined init with take of Any(v21, v31);
      }

      else
      {
        outlined init with copy of Any(v21, v31);
        v22 = v20;
      }

      Hasher.init(_seed:)();
      type metadata accessor for CFStringRef(0);
      _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);
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

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v24) & ~*(v14 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v20;
      result = outlined init with take of Any(v31, (*(v7 + 56) + 32 * v15));
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_36;
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

    if ((v4 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
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

LABEL_34:
  *v3 = v7;
  return result;
}

Swift::Int specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo11CFStringRefayXlGMd, &_ss18_DictionaryStorageCySo11CFStringRefayXlGMR);
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
        swift_unknownObjectRetain();
      }

      Hasher.init(_seed:)();
      type metadata accessor for CFStringRef(0);
      _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);
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

double specialized Dictionary._Variant.removeValue(forKey:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v9 = *v2;
    v11 = *v3;
    if (!isUniquelyReferenced_nonNull_native)
    {
      specialized _NativeDictionary.copy()();
      v9 = v11;
    }

    outlined init with take of Any((*(v9 + 56) + 32 * v7), a2);
    specialized _NativeDictionary._delete(at:)(v7, v9);
    *v3 = v9;
  }

  else
  {
    result = 0.0;
    *a2 = 0u;
    a2[1] = 0u;
  }

  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(void *a1)
{
  v2 = v1;
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) == 0)
  {
    v13 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
    if (v14)
    {
      v3 = v13;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v8 = *v1;
      v17 = *v1;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_10:

        v12 = *(*(v8 + 56) + 8 * v3);
        specialized _NativeDictionary._delete(at:)(v3, v8);
        goto LABEL_11;
      }

LABEL_15:
      specialized _NativeDictionary.copy()();
      v8 = v17;
      goto LABEL_10;
    }

    return 0;
  }

  if (v3 < 0)
  {
    v4 = *v1;
  }

  else
  {
    v4 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v5 = a1;
  v6 = __CocoaDictionary.lookup(_:)();

  if (!v6)
  {
    return 0;
  }

  swift_unknownObjectRelease();

  v7 = MEMORY[0x2318E2B90](v4);
  v8 = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfCSo11CFStringRefa_yXlTt1g5(v4, v7);

  v9 = specialized __RawDictionaryStorage.find<A>(_:)(v5);
  v11 = v10;

  if ((v11 & 1) == 0)
  {
    __break(1u);
    goto LABEL_15;
  }

  v12 = *(*(v8 + 56) + 8 * v9);
  specialized _NativeDictionary._delete(at:)(v9, v8);

LABEL_11:
  *v2 = v8;
  return v12;
}

id specialized Dictionary._Variant.setValue(_:forKey:)(uint64_t a1, void *a2)
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

  result = MEMORY[0x2318E2B90](v7);
  if (!__OFADD__(result, 1))
  {
    *v3 = _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfCSo11CFStringRefa_yXlTt1g5(v7, result + 1);
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

Swift::Int _ss17_NativeDictionaryV_8capacityAByxq_Gs07__CocoaB0Vn_SitcfCSo11CFStringRefa_yXlTt1g5(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySo11CFStringRefayXlGMd, &_ss18_DictionaryStorageCySo11CFStringRefayXlGMR);
    v2 = static _DictionaryStorage.convert(_:capacity:)();
    v19 = v2;
    __CocoaDictionary.makeIterator()();
    if (__CocoaDictionary.Iterator.next()())
    {
      v4 = v3;
      type metadata accessor for CFStringRef(0);
      do
      {
        swift_dynamicCast();
        v13 = *(v2 + 16);
        if (*(v2 + 24) <= v13)
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13 + 1, 1);
        }

        v2 = v19;
        Hasher.init(_seed:)();
        _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);
        _CFObject.hash(into:)();
        result = Hasher._finalize()();
        v6 = v19 + 64;
        v7 = -1 << *(v19 + 32);
        v8 = result & ~v7;
        v9 = v8 >> 6;
        if (((-1 << v8) & ~*(v19 + 64 + 8 * (v8 >> 6))) != 0)
        {
          v10 = __clz(__rbit64((-1 << v8) & ~*(v19 + 64 + 8 * (v8 >> 6)))) | v8 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v14 = 0;
          v15 = (63 - v7) >> 6;
          do
          {
            if (++v9 == v15 && (v14 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v16 = v9 == v15;
            if (v9 == v15)
            {
              v9 = 0;
            }

            v14 |= v16;
            v17 = *(v6 + 8 * v9);
          }

          while (v17 == -1);
          v10 = __clz(__rbit64(~v17)) + (v9 << 6);
        }

        *(v6 + ((v10 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v10;
        *(*(v19 + 48) + 8 * v10) = v18;
        *(*(v19 + 56) + 8 * v10) = v4;
        ++*(v19 + 16);
        v11 = __CocoaDictionary.Iterator.next()();
        v4 = v12;
      }

      while (v11);
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x277D84F98];
  }

  return v2;
}

void specialized _NativeDictionary._delete(at:)(int64_t a1, uint64_t a2)
{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v10 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      type metadata accessor for CFStringRef(0);
      _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);
      v11 = v10;
      _CFObject.hash(into:)();
      v12 = Hasher._finalize()();

      v13 = v12 & v7;
      if (v3 >= v8)
      {
        if (v13 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v13 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v13)
      {
LABEL_10:
        v14 = *(a2 + 48);
        v15 = (v14 + 8 * v3);
        v16 = (v14 + 8 * v6);
        if (v3 != v6 || v15 >= v16 + 1)
        {
          *v15 = *v16;
        }

        v17 = *(a2 + 56);
        v18 = (v17 + 32 * v3);
        v19 = (v17 + 32 * v6);
        if (v3 != v6 || v18 >= v19 + 2)
        {
          v9 = v19[1];
          *v18 = *v19;
          v18[1] = v9;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v20 = *(a2 + 16);
  v21 = __OFSUB__(v20, 1);
  v22 = v20 - 1;
  if (v21)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v22;
    ++*(a2 + 36);
  }
}

{
  v3 = a1;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (a1 + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (_HashTable.previousHole(before:)() + 1) & ~v5;
    do
    {
      v9 = *(*(a2 + 48) + 8 * v6);
      Hasher.init(_seed:)();
      type metadata accessor for CFStringRef(0);
      _sSo11CFStringRefaABSHSCWlTm_0(&lazy protocol witness table cache variable for type CFStringRef and conformance CFStringRef, &protocol conformance descriptor for CFStringRef);
      v10 = v9;
      _CFObject.hash(into:)();
      v11 = Hasher._finalize()();

      v12 = v11 & v7;
      if (v3 >= v8)
      {
        if (v12 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v12)
      {
LABEL_10:
        v13 = *(a2 + 48);
        v14 = (v13 + 8 * v3);
        v15 = (v13 + 8 * v6);
        if (v3 != v6 || v14 >= v15 + 1)
        {
          *v14 = *v15;
        }

        v16 = *(a2 + 56);
        v17 = (v16 + 8 * v3);
        v18 = (v16 + 8 * v6);
        if (v3 != v6 || v17 >= v18 + 1)
        {
          *v17 = *v18;
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v19 = *(a2 + 16);
  v20 = __OFSUB__(v19, 1);
  v21 = v19 - 1;
  if (v20)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v21;
    ++*(a2 + 36);
  }
}

_OWORD *specialized _NativeDictionary.setValue(_:forKey:isUnique:)(_OWORD *a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v10 = v7[2];
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_16;
  }

  v14 = v9;
  v15 = v7[3];
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 >= v13 && (a3 & 1) == 0)
    {
      v16 = v8;
      specialized _NativeDictionary.copy()();
      v8 = v16;
      goto LABEL_8;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
    v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v14 & 1) != (v17 & 1))
    {
LABEL_16:
      type metadata accessor for CFStringRef(0);
      result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
      __break(1u);
      return result;
    }
  }

LABEL_8:
  v18 = *v4;
  if (v14)
  {
    v19 = (v18[7] + 32 * v8);
    __swift_destroy_boxed_opaque_existential_1(v19);

    return outlined init with take of Any(a1, v19);
  }

  else
  {
    specialized _NativeDictionary._insert(at:key:value:)(v8, a2, a1, v18);

    return a2;
  }
}

id specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, void *a2, char a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  v10 = *(v7 + 16);
  v11 = (v9 & 1) == 0;
  v12 = __OFADD__(v10, v11);
  v13 = v10 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  v14 = v9;
  v15 = *(v7 + 24);
  if (v15 < v13 || (a3 & 1) == 0)
  {
    if (v15 < v13 || (a3 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v13, a3 & 1);
      v8 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
      if ((v14 & 1) != (v17 & 1))
      {
LABEL_18:
        type metadata accessor for CFStringRef(0);
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }
    }

    else
    {
      v16 = v8;
      specialized _NativeDictionary.copy()();
      v8 = v16;
    }
  }

  v18 = *v4;
  if (v14)
  {
    *(v18[7] + 8 * v8) = a1;

    return swift_unknownObjectRelease();
  }

  v18[(v8 >> 6) + 8] |= 1 << v8;
  *(v18[6] + 8 * v8) = a2;
  *(v18[7] + 8 * v8) = a1;
  v20 = v18[2];
  v12 = __OFADD__(v20, 1);
  v21 = v20 + 1;
  if (v12)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18[2] = v21;

  return a2;
}

_OWORD *specialized _NativeDictionary._insert(at:key:value:)(unint64_t a1, uint64_t a2, _OWORD *a3, void *a4)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  *(a4[6] + 8 * a1) = a2;
  result = outlined init with take of Any(a3, (a4[7] + 32 * a1));
  v6 = a4[2];
  v7 = __OFADD__(v6, 1);
  v8 = v6 + 1;
  if (v7)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v8;
  }

  return result;
}

void specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  v25 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v6 = a1[1];
  v8 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (v8)
    {

      outlined consume of Data._Representation(v7, v6);
      *&v24 = v7;
      *(&v24 + 1) = v6 & 0x3FFFFFFFFFFFFFFFLL;
      *a1 = xmmword_22E0F1110;
      outlined consume of Data._Representation(0, 0xC000000000000000);
      specialized Data.InlineSlice.withUnsafeMutableBytes<A>(_:)(&v24, v4, a3);
      v9 = v24;
      v10 = *(&v24 + 1) | 0x4000000000000000;
    }

    else
    {
      v22 = a2;
      outlined consume of Data._Representation(v7, v6);
      *&v24 = v7;
      WORD4(v24) = v6;
      BYTE10(v24) = BYTE2(v6);
      BYTE11(v24) = BYTE3(v6);
      BYTE12(v24) = BYTE4(v6);
      BYTE13(v24) = BYTE5(v6);
      BYTE14(v24) = BYTE6(v6);
      closure #1 in CMFormatDescriptionRef.Extensions.Value.ContentColorVolume.rawValue.getter(&v24, &v24 + BYTE6(v6), v22, a3);
      v9 = v24;
      v10 = DWORD2(v24) | ((WORD6(v24) | (BYTE14(v24) << 16)) << 32);
    }

    *a1 = v9;
    a1[1] = v10;
    return;
  }

  if (v8 != 2)
  {
    *(&v24 + 7) = 0;
    *&v24 = 0;
    closure #1 in CMFormatDescriptionRef.Extensions.Value.ContentColorVolume.rawValue.getter(&v24, &v24, a2, a3);
    return;
  }

  outlined consume of Data._Representation(v7, v6);
  *&v24 = v7;
  *(&v24 + 1) = v6 & 0x3FFFFFFFFFFFFFFFLL;
  *a1 = xmmword_22E0F1110;
  outlined consume of Data._Representation(0, 0xC000000000000000);
  Data.LargeSlice.ensureUniqueReference()();
  v11 = *(&v24 + 1);
  v13 = *(v24 + 16);
  v12 = *(v24 + 24);
  v14 = __DataStorage._bytes.getter();
  if (!v14)
  {
    __break(1u);
    return;
  }

  v15 = v14;
  v16 = __DataStorage._offset.getter();
  v17 = v13 - v16;
  if (__OFSUB__(v13, v16))
  {
    __break(1u);
LABEL_17:
    __break(1u);
  }

  v18 = __OFSUB__(v12, v13);
  v19 = v12 - v13;
  if (v18)
  {
    goto LABEL_17;
  }

  v20 = MEMORY[0x2318E24F0]();
  if (v20 >= v19)
  {
    v21 = v19;
  }

  else
  {
    v21 = v20;
  }

  closure #1 in CMFormatDescriptionRef.Extensions.Value.ContentColorVolume.rawValue.getter(v15 + v17, v15 + v17 + v21, v4, a3);
  *a1 = v24;
  a1[1] = v11 | 0x8000000000000000;
}

uint64_t *specialized Data._Representation.withUnsafeMutableBytes<A>(_:)(uint64_t *result, uint64_t a2)
{
  v3 = result;
  v5 = *result;
  v4 = result[1];
  v6 = v4 >> 62;
  if ((v4 >> 62) > 1)
  {
    if (v6 != 2)
    {
      return result;
    }

    v8 = v4 & 0x3FFFFFFFFFFFFFFFLL;
    v9 = result[1];

    outlined consume of Data._Representation(v5, v9);
    *v3 = xmmword_22E0F1110;
    outlined consume of Data._Representation(0, 0xC000000000000000);
    Data.LargeSlice.ensureUniqueReference()();
    v10 = v5;
    v11 = *(v5 + 16);
    result = __DataStorage._bytes.getter();
    if (!result)
    {
      __break(1u);
      goto LABEL_24;
    }

    v12 = result;
    v13 = __DataStorage._offset.getter();
    if (!__OFSUB__(v11, v13))
    {
      v14 = (v12 + v11 - v13);
      result = MEMORY[0x2318E24F0]();
      v15 = *(a2 + 96);
      *v14 = *(a2 + 80);
      v14[1] = v15;
      v14[2] = *(a2 + 112);
      *v3 = v10;
      v3[1] = v8 | 0x8000000000000000;
      return result;
    }

    __break(1u);
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (!v6)
  {
    result = outlined consume of Data._Representation(*result, v4);
    v7 = *(a2 + 88) | (*(a2 + 92) << 32) | (*(a2 + 93) << 40) | (*(a2 + 94) << 48);
    *v3 = *(a2 + 80);
    v3[1] = v7;
    return result;
  }

  v16 = v4 & 0x3FFFFFFFFFFFFFFFLL;
  v17 = result[1];

  outlined consume of Data._Representation(v5, v17);
  *v3 = xmmword_22E0F1110;
  outlined consume of Data._Representation(0, 0xC000000000000000);
  v18 = v5 >> 32;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    if (v18 < v5)
    {
LABEL_21:
      __break(1u);
      goto LABEL_22;
    }

    if (__DataStorage._bytes.getter() && __OFSUB__(v5, __DataStorage._offset.getter()))
    {
LABEL_22:
      __break(1u);
    }

    type metadata accessor for __DataStorage();
    swift_allocObject();
    v19 = __DataStorage.init(bytes:length:copy:deallocator:offset:)();

    v16 = v19;
  }

  if (v18 < v5)
  {
    goto LABEL_19;
  }

  result = __DataStorage._bytes.getter();
  if (!result)
  {
LABEL_24:
    __break(1u);
    return result;
  }

  v20 = result;
  v21 = __DataStorage._offset.getter();
  if (__OFSUB__(v5, v21))
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v22 = (v20 + v5 - v21);
  MEMORY[0x2318E24F0]();
  v23 = *(a2 + 96);
  *v22 = *(a2 + 80);
  v22[1] = v23;
  v22[2] = *(a2 + 112);

  *v3 = v5;
  v3[1] = v16 | 0x4000000000000000;
  return result;
}

void specialized Data.InlineSlice.withUnsafeMutableBytes<A>(_:)(int *a1, char a2, uint64_t a3)
{
  Data.InlineSlice.ensureUniqueReference()();
  v6 = *a1;
  v7 = a1[1];
  if (v7 < v6)
  {
    __break(1u);
    goto LABEL_9;
  }

  v8 = __DataStorage._bytes.getter();
  if (!v8)
  {
LABEL_10:
    __break(1u);
    return;
  }

  v9 = v8;
  v10 = __DataStorage._offset.getter();
  v11 = v6 - v10;
  if (__OFSUB__(v6, v10))
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v12 = v7 - v6;
  v13 = MEMORY[0x2318E24F0]();
  if (v13 >= v12)
  {
    v14 = v12;
  }

  else
  {
    v14 = v13;
  }

  closure #1 in CMFormatDescriptionRef.Extensions.Value.ContentColorVolume.rawValue.getter(v9 + v11, v9 + v11 + v14, a2, a3);
}

void specialized _NativeDictionary.index(after:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if (a3)
  {
    if (__CocoaDictionary.Index.age.getter() == *(a4 + 36))
    {
      __CocoaDictionary.Index.key.getter();
      type metadata accessor for CFStringRef(0);
      swift_dynamicCast();
      specialized __RawDictionaryStorage.find<A>(_:)(v6);
      v5 = v4;

      if (v5)
      {
        __CocoaDictionary.Index.dictionary.getter();
        __CocoaDictionary.index(after:)();
        swift_unknownObjectRelease();
        return;
      }

      goto LABEL_14;
    }

    __break(1u);
    goto LABEL_12;
  }

  if (a1 < 0 || -(-1 << *(a4 + 32)) <= a1)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (((*(a4 + 64 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) >> a1) & 1) == 0)
  {
LABEL_13:
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (*(a4 + 36) != a2)
  {
LABEL_15:
    __break(1u);
    return;
  }

  _HashTable.occupiedBucket(after:)();
}

char *specialized UnsafeBufferPointer._copyContents(initializing:)(void *a1, uint64_t a2, char *__src, uint64_t a4)
{
  v4 = __src;
  if (a4 && a2)
  {
    if (a4 >= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = a4;
    }

    memcpy(a1, __src, 72 * v5);
    v4 += 72 * v5;
  }

  return v4;
}

{
  v4 = __src;
  if (a4 && a2)
  {
    if (a4 >= a2)
    {
      v5 = a2;
    }

    else
    {
      v5 = a4;
    }

    memcpy(a1, __src, 16 * v5);
    v4 += 16 * v5;
  }

  return v4;
}

uint64_t specialized Data.init(count:)(uint64_t result)
{
  if (result)
  {
    v1 = result;
    if (result <= 14)
    {
      return specialized Data.InlineData.init(count:)(result);
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

uint64_t _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD4VySfG_SaySfGTt1g5Tf4g_n(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  if ((v1 - 1) > 3)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 != 4)
  {
LABEL_6:
    __break(1u);
  }

  return result;
}

uint64_t _ss4SIMDPsEyxqd__cSTRd__7ElementQyd__6ScalarRtzlufCs5SIMD3VySfG_SaySfGTt1g5Tf4g_n(uint64_t result)
{
  v1 = *(result + 16);
  if (!v1)
  {
    goto LABEL_6;
  }

  if ((v1 - 1) > 2)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 != 3)
  {
LABEL_6:
    __break(1u);
  }

  return result;
}

uint64_t specialized Collection._failEarlyRangeCheck(_:bounds:)(uint64_t a1, uint64_t a2)
{
  v4 = *a2;
  v5 = *(a2 + 8);
  v6 = *(a2 + 16);
  result = *a1;
  v8 = *(a1 + 8);
  if (*(a1 + 16))
  {
    if (v6)
    {
      result = MEMORY[0x2318E2B50](result, v8, v4, v5);
      if ((result & 1) == 0)
      {
        goto LABEL_4;
      }

LABEL_11:
      __break(1u);
      goto LABEL_12;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v6)
  {
    goto LABEL_18;
  }

  if (v8 != v5)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (result < v4)
  {
    goto LABEL_11;
  }

LABEL_4:
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  result = *(a2 + 24);
  v8 = *(a2 + 32);
  if (*(a2 + 40))
  {
    if (*(a1 + 40))
    {
      result = MEMORY[0x2318E2B50](result, v8, v4, v5);
      if ((result & 1) == 0)
      {
        return result;
      }

LABEL_15:
      __break(1u);
      goto LABEL_16;
    }

LABEL_19:
    __break(1u);
    return result;
  }

LABEL_12:
  if (v6)
  {
    goto LABEL_19;
  }

  if (v8 != v5)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (result < v4)
  {
    goto LABEL_15;
  }

  return result;
}

uint64_t specialized Collection._failEarlyRangeCheck(_:bounds:)(uint64_t result, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *a4;
  v7 = *(a4 + 8);
  if (a3)
  {
    if (*(a4 + 16))
    {
      v8 = result;
      result = MEMORY[0x2318E2B50](result, a2, v6, v7);
      if (result)
      {
LABEL_14:
        __break(1u);
        goto LABEL_15;
      }

      if (*(a4 + 40))
      {
        result = MEMORY[0x2318E2B50](v8, a2, *(a4 + 24), *(a4 + 32));
        if (result)
        {
          return result;
        }

LABEL_13:
        __break(1u);
        goto LABEL_14;
      }

LABEL_19:
      __break(1u);
      return result;
    }

LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (*(a4 + 16))
  {
    goto LABEL_18;
  }

  if (a2 != v7)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v6 > result)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (*(a4 + 40))
  {
    goto LABEL_19;
  }

  if (*(a4 + 32) != a2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (*(a4 + 24) <= result)
  {
    goto LABEL_13;
  }

  return result;
}

{
  v7 = result;
  v8 = *a4;
  v9 = *(a4 + 8);
  if (a3)
  {
    if (*(a4 + 16))
    {
      result = MEMORY[0x2318E2B50](result, a2, v8, v9);
      if ((result & 1) == 0)
      {
        if (*(a4 + 40))
        {
          result = MEMORY[0x2318E2B50](*(a4 + 24), *(a4 + 32), v7, a2);
          if ((result & 1) == 0)
          {
            return result;
          }

LABEL_13:
          __break(1u);
          goto LABEL_14;
        }

LABEL_18:
        __break(1u);
        return result;
      }

LABEL_14:
      __break(1u);
      goto LABEL_15;
    }

LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  if (*(a4 + 16))
  {
    goto LABEL_17;
  }

  if (a2 != v9)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v8 > result)
  {
    goto LABEL_14;
  }

  if (*(a4 + 40))
  {
    goto LABEL_18;
  }

  if (*(a4 + 32) != a2)
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (*(a4 + 24) < result)
  {
    goto LABEL_13;
  }

  return result;
}

uint64_t _sSo11CFStringRefaABSHSCWlTm_0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CFStringRef(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

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

double _sSo22CMFormatDescriptionRefa9CoreMediaE10ExtensionsV5ValueV35CameraCalibrationDataLensCollectionO0I0VSgWOi0_(uint64_t a1)
{
  *a1 = 0x300000000;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0u;
  *(a1 + 72) = 0u;
  *(a1 + 88) = 0u;
  *(a1 + 104) = 0u;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0u;
  *(a1 + 168) = 0;
  return result;
}

uint64_t outlined consume of Data?(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined consume of Data._Representation(result, a2);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.ExtrinsicOriginSource and conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.ExtrinsicOriginSource()
{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.ExtrinsicOriginSource and conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.ExtrinsicOriginSource;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.ExtrinsicOriginSource and conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.ExtrinsicOriginSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.ExtrinsicOriginSource and conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.ExtrinsicOriginSource);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.ExtrinsicOriginSource and conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.ExtrinsicOriginSource;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.ExtrinsicOriginSource and conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.ExtrinsicOriginSource)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.ExtrinsicOriginSource and conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.ExtrinsicOriginSource);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.LensDomain and conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.LensDomain()
{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.LensDomain and conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.LensDomain;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.LensDomain and conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.LensDomain)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.LensDomain and conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.LensDomain);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.LensDomain and conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.LensDomain;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.LensDomain and conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.LensDomain)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.LensDomain and conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.LensDomain);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.AlgorithmKind and conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.AlgorithmKind()
{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.AlgorithmKind and conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.AlgorithmKind;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.AlgorithmKind and conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.AlgorithmKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.AlgorithmKind and conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.AlgorithmKind);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.AlgorithmKind and conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.AlgorithmKind;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.AlgorithmKind and conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.AlgorithmKind)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.AlgorithmKind and conformance CMFormatDescriptionRef.Extensions.Value.CameraCalibrationDataLensCollection.AlgorithmKind);
  }

  return result;
}

double _sSo22CMFormatDescriptionRefa9CoreMediaE10ExtensionsV5ValueV35CameraCalibrationDataLensCollectionOSgWOi0_(_OWORD *a1)
{
  result = NAN;
  *a1 = xmmword_22E0F1120;
  a1[1] = 0u;
  a1[2] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[15] = 0u;
  a1[16] = 0u;
  a1[17] = 0u;
  a1[18] = 0u;
  a1[19] = 0u;
  a1[20] = 0u;
  a1[21] = 0u;
  return result;
}

uint64_t _sSo22CMFormatDescriptionRefa9CoreMediaE10ExtensionsV5ValueV35CameraCalibrationDataLensCollectionO0I0VSgWOg(uint64_t a1)
{
  v1 = *(a1 + 4);
  if (v1 >= 3)
  {
    return v1 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t _sSo22CMFormatDescriptionRefa9CoreMediaE10ExtensionsV5ValueV35CameraCalibrationDataLensCollectionOWOi0_Tm(uint64_t result, uint64_t a2)
{
  v2 = *(result + 64);
  v3 = *(result + 128);
  v4 = *(result + 240);
  v5 = *(result + 304);
  v6 = *(result + 176) & 0x3FFFFFFFFLL;
  *result &= 0x3FFFFFFFFuLL;
  *(result + 8) = 0;
  *(result + 64) = v2;
  *(result + 72) = 0;
  *(result + 128) = v3;
  *(result + 152) = 0;
  *(result + 176) = v6;
  *(result + 184) = 0;
  *(result + 240) = v4;
  *(result + 248) = 0;
  *(result + 304) = v5;
  *(result + 328) = a2;
  return result;
}

unint64_t lazy protocol witness table accessor for type CMFormatDescriptionRef.Extensions.Index and conformance CMFormatDescriptionRef.Extensions.Index()
{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Index and conformance CMFormatDescriptionRef.Extensions.Index;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Index and conformance CMFormatDescriptionRef.Extensions.Index)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Index and conformance CMFormatDescriptionRef.Extensions.Index);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Index and conformance CMFormatDescriptionRef.Extensions.Index;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Index and conformance CMFormatDescriptionRef.Extensions.Index)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Index and conformance CMFormatDescriptionRef.Extensions.Index);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Index and conformance CMFormatDescriptionRef.Extensions.Index;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Index and conformance CMFormatDescriptionRef.Extensions.Index)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Index and conformance CMFormatDescriptionRef.Extensions.Index);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CMFormatDescriptionRef.Extensions and conformance CMFormatDescriptionRef.Extensions()
{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions and conformance CMFormatDescriptionRef.Extensions;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions and conformance CMFormatDescriptionRef.Extensions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions and conformance CMFormatDescriptionRef.Extensions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions and conformance CMFormatDescriptionRef.Extensions;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions and conformance CMFormatDescriptionRef.Extensions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions and conformance CMFormatDescriptionRef.Extensions);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions and conformance CMFormatDescriptionRef.Extensions;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions and conformance CMFormatDescriptionRef.Extensions)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions and conformance CMFormatDescriptionRef.Extensions);
  }

  return result;
}

unint64_t specialized Collection.index(_:offsetBy:limitedBy:)(unint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
LABEL_21:
    __break(1u);
    return result;
  }

  if (a2)
  {
    v3 = a3 - result;
    if (a3 - result >= a2 - 1)
    {
      v3 = a2 - 1;
    }

    if (v3 >= (result ^ 0x7FFFFFFFFFFFFFFFLL))
    {
      v3 = result ^ 0x7FFFFFFFFFFFFFFFLL;
    }

    v4 = v3 + 1;
    if (v4 >= 5)
    {
      v7 = v4 & 3;
      if ((v4 & 3) == 0)
      {
        v7 = 4;
      }

      v5 = v4 - v7;
      v8 = 0uLL;
      v9 = result;
      v10 = vdupq_n_s64(1uLL);
      v11 = v5;
      do
      {
        v8 = vaddq_s64(v8, v10);
        v9 = vaddq_s64(v9, v10);
        v11 -= 4;
      }

      while (v11);
      v6 = vaddvq_s64(vpaddq_s64(v9, v8));
    }

    else
    {
      v5 = 0;
      v6 = result;
    }

    v12 = v5 + result - 0x7FFFFFFFFFFFFFFFLL;
    v13 = v5 + result - a3;
    v14 = a2 - v5;
    result = v6;
    while (1)
    {
      if (!v13)
      {
        return 0;
      }

      if (!v12)
      {
        break;
      }

      ++result;
      ++v12;
      ++v13;
      if (!--v14)
      {
        return result;
      }
    }

    __break(1u);
    goto LABEL_21;
  }

  return result;
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  result = __DataStorage._bytes.getter();
  v11 = result;
  if (result)
  {
    result = __DataStorage._offset.getter();
    if (__OFSUB__(a1, result))
    {
LABEL_13:
      __break(1u);
      return result;
    }

    v11 += a1 - result;
  }

  v12 = __OFSUB__(a2, a1);
  v13 = a2 - a1;
  if (v12)
  {
    __break(1u);
    goto LABEL_13;
  }

  v14 = MEMORY[0x2318E24F0]();
  if (v14 >= v13)
  {
    v15 = v13;
  }

  else
  {
    v15 = v14;
  }

  if (v11)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0;
  }

  return a4(a6, v16, v11);
}

unint64_t specialized Data.init(bytes:count:)(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return specialized Data.InlineData.init(_:)(a1, &a1[a2]);
  }

  type metadata accessor for __DataStorage();
  swift_allocObject();
  __DataStorage.init(bytes:length:)();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  type metadata accessor for Data.RangeReference();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t block_copy_helper_3(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type CMFormatDescriptionRef.Extensions.Key and conformance CMFormatDescriptionRef.Extensions.Key()
{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Key and conformance CMFormatDescriptionRef.Extensions.Key;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Key and conformance CMFormatDescriptionRef.Extensions.Key)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Key and conformance CMFormatDescriptionRef.Extensions.Key);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Key and conformance CMFormatDescriptionRef.Extensions.Key;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Key and conformance CMFormatDescriptionRef.Extensions.Key)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Key and conformance CMFormatDescriptionRef.Extensions.Key);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Key and conformance CMFormatDescriptionRef.Extensions.Key;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Key and conformance CMFormatDescriptionRef.Extensions.Key)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Key and conformance CMFormatDescriptionRef.Extensions.Key);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Key and conformance CMFormatDescriptionRef.Extensions.Key;
  if (!lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Key and conformance CMFormatDescriptionRef.Extensions.Key)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CMFormatDescriptionRef.Extensions.Key and conformance CMFormatDescriptionRef.Extensions.Key);
  }

  return result;
}