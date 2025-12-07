uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance RomanNumerals(char *a1, char *a2)
{
  v2 = *a2;
  v3 = RomanNumerals.rawValue.getter(*a1);
  v5 = v4;
  if (v3 == RomanNumerals.rawValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance RomanNumerals()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  RomanNumerals.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

double protocol witness for Hashable.hash(into:) in conformance RomanNumerals(uint64_t a1)
{
  RomanNumerals.rawValue.getter(*v1);
  String.hash(into:)();

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RomanNumerals(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  RomanNumerals.rawValue.getter(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance RomanNumerals@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized RomanNumerals.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance RomanNumerals@<X0>(uint64_t *a1@<X8>)
{
  result = RomanNumerals.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int one-time initialization function for all()
{
  result = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo23NSDirectionalEdgeInsetsV14MusicUtilitiesE0F0O_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for all);
  static NSDirectionalEdgeInsets.Edge.all = result;
  return result;
}

uint64_t *NSDirectionalEdgeInsets.Edge.all.unsafeMutableAddressor()
{
  if (one-time initialization token for all != -1)
  {
    swift_once();
  }

  return &static NSDirectionalEdgeInsets.Edge.all;
}

double static NSDirectionalEdgeInsets.Edge.all.getter()
{
  if (one-time initialization token for all != -1)
  {
    swift_once();
  }

  return result;
}

double NSDirectionalEdgeInsets.init(edge:length:)(uint64_t a1, double a2)
{
  if (specialized Set.contains(_:)(0, a1))
  {
    v4 = a2;
  }

  else
  {
    v4 = 0.0;
  }

  specialized Set.contains(_:)(1u, a1);
  specialized Set.contains(_:)(2u, a1);
  specialized Set.contains(_:)(3u, a1);

  return v4;
}

id @nonobjc NSRegularExpression.init(pattern:options:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = String._bridgeToObjectiveC()();

  v10 = 0;
  v6 = [v3 initWithPattern:v5 options:a3 error:&v10];

  if (v6)
  {
    v7 = v10;
  }

  else
  {
    v8 = v10;
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

uint64_t _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5Tm_0(uint64_t a1, uint64_t a2, void (*a3)(void *, uint64_t, uint64_t), uint64_t (*a4)(uint64_t, uint64_t, Swift::Int))
{
  Hasher.init(_seed:)();
  a3(v10, a1, a2);
  v7 = Hasher._finalize()();

  return a4(a1, a2, v7);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(Swift::UInt a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(a1);
  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  Hasher.init(_seed:)();
  if (a2)
  {
    Hasher._combine(_:)(1uLL);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  v6 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, a3, v6);
}

unint64_t _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlF_0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = dispatch thunk of Hashable._rawHashValue(seed:)();

  return _ss22__RawDictionaryStorageC4find_9hashValues10_HashTableV6BucketV6bucket_Sb5foundtx_SitSHRzlF_0(a1, v6, a2, a3);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4 + 64;
  v6 = -1 << *(v4 + 32);
  v7 = a4 & ~v6;
  if ((*(v4 + 64 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v8 = v4;
    v11 = ~v6;
    do
    {
      v14 = (*(v8 + 48) + 24 * v7);
      v15 = v14[1];
      v16 = v14[2];
      if (v15)
      {
        if (a2)
        {
          v17 = *v14 == a1 && v15 == a2;
          if (v17 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
LABEL_3:
            type metadata accessor for UIAction(0, &_sSo8NSObjectCML_1, NSObject_ptr);

            v12 = v16;
            v13 = static NSObject.== infix(_:_:)();

            if (v13)
            {
              return v7;
            }
          }
        }
      }

      else if (!a2)
      {
        goto LABEL_3;
      }

      v7 = (v7 + 1) & v11;
    }

    while (((*(v5 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) != 0);
  }

  return v7;
}

unint64_t _ss22__RawDictionaryStorageC4find_9hashValues10_HashTableV6BucketV6bucket_Sb5foundtx_SitSHRzlF_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v22[1] = a1;
  v22[2] = a4;
  v7 = __chkstk_darwin();
  v9 = v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = v4;
  v10 = -1 << *(v4 + 32);
  v12 = v11 & ~v10;
  v22[0] = v4 + 64;
  if ((*(v4 + 64 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v10;
    v16 = *(v6 + 16);
    v14 = v6 + 16;
    v15 = v16;
    v17 = *(v14 + 56);
    v18 = (v14 - 8);
    do
    {
      v19 = v14;
      v15(v9, *(v23 + 48) + v17 * v12, a3, v7);
      v20 = dispatch thunk of static Equatable.== infix(_:_:)();
      (*v18)(v9, a3);
      if (v20)
      {
        break;
      }

      v12 = (v12 + 1) & v13;
      v14 = v19;
    }

    while (((*(v22[0] + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  return v12;
}

void specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2)
{
  v2 = _swiftEmptyArrayStorage;
  v21 = a2 < 1;
  if (a2 < 1)
  {
    v4 = 0;
  }

  else
  {
    v3 = a1;
    if (__OFADD__(a1, a2))
    {
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v4 = 0;
    if (a1 <= a1 + a2)
    {
      v5 = a1 + a2;
    }

    else
    {
      v5 = a1;
    }

    v6 = &_swiftEmptyArrayStorage[4];
    while (v5 != v3)
    {
      if (!v4)
      {
        v7 = v2[3];
        if (((v7 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_30;
        }

        v8 = v7 & 0xFFFFFFFFFFFFFFFELL;
        if (v8 <= 1)
        {
          v9 = 1;
        }

        else
        {
          v9 = v8;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR);
        v10 = swift_allocObject();
        v11 = _swift_stdlib_malloc_size(v10);
        v12 = v11 - 32;
        if (v11 < 32)
        {
          v12 = v11 - 25;
        }

        v13 = v12 >> 3;
        v10[2] = v9;
        v10[3] = 2 * (v12 >> 3);
        v14 = (v10 + 4);
        v15 = v2[3] >> 1;
        if (v2[2])
        {
          v16 = v2 + 4;
          if (v10 != v2 || v14 >= v16 + 8 * v15)
          {
            memmove(v10 + 4, v16, 8 * v15);
          }

          v2[2] = 0;
        }

        v6 = (v14 + 8 * v15);
        v4 = (v13 & 0x7FFFFFFFFFFFFFFFLL) - v15;

        v2 = v10;
      }

      v17 = __OFSUB__(v4--, 1);
      if (v17)
      {
        __break(1u);
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      *v6++ = v3++;
      if (v21)
      {
        break;
      }
    }
  }

  v18 = v2[3];
  if (v18 < 2)
  {
    return;
  }

  v19 = v18 >> 1;
  v17 = __OFSUB__(v19, v4);
  v20 = v19 - v4;
  if (v17)
  {
LABEL_32:
    __break(1u);
    return;
  }

  v2[2] = v20;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCTf4gn_n_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v10 = *(v9 + 64);
  __chkstk_darwin();
  v12 = v23 - v11;
  if (Array.count.getter())
  {
    type metadata accessor for _DictionaryStorage();
    v13 = static _DictionaryStorage.allocate(capacity:)();
  }

  else
  {
    v13 = _swiftEmptyDictionarySingleton;
  }

  result = Array._getCount()();
  if (result)
  {
    if (result >= 1)
    {
      v23[0] = v10;
      v27 = a4;
      v15 = 0;
      v16 = *(TupleTypeMetadata2 + 48);
      v25 = a3;
      v26 = (v9 + 16);
      v23[2] = a2 - 8;
      v24 = v16;
      v23[1] = a3 - 8;
      while (1)
      {
        v17 = result;
        if (Array._hoistableIsNativeTypeChecked()())
        {
          (*(v9 + 16))(v12, a1 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, TupleTypeMetadata2);
        }

        else
        {
          result = _ArrayBuffer._getElementSlowPath(_:)();
          if (v23[0] != 8)
          {
            goto LABEL_19;
          }

          v28 = result;
          (*v26)(v12, &v28, TupleTypeMetadata2);
          swift_unknownObjectRelease();
        }

        result = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlF_0(v12, a2, v27);
        if (v18)
        {
          break;
        }

        v19 = result;
        *(v13 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
        (*(*(a2 - 8) + 32))(v13[6] + *(*(a2 - 8) + 72) * result, v12, a2);
        result = (*(*(v25 - 8) + 32))(v13[7] + *(*(v25 - 8) + 72) * v19, &v12[v24]);
        v20 = v13[2];
        v21 = __OFADD__(v20, 1);
        v22 = v20 + 1;
        if (v21)
        {
          goto LABEL_17;
        }

        ++v15;
        v13[2] = v22;
        result = v17;
        if (v17 == v15)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_17:
      __break(1u);
    }

    __break(1u);
LABEL_19:
    __break(1u);
  }

  else
  {
LABEL_15:

    return v13;
  }

  return result;
}

unint64_t _sS2SSysWl_1()
{
  result = _sS2SSysWL_1;
  if (!_sS2SSysWL_1)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &_sS2SSysWL_1);
  }

  return result;
}

uint64_t _s10Foundation16AttributedStringVSgWOc_0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation16AttributedStringVSgMd_1, &_s10Foundation16AttributedStringVSgMR_1);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type _NSRange.ConversionError and conformance _NSRange.ConversionError()
{
  result = lazy protocol witness table cache variable for type _NSRange.ConversionError and conformance _NSRange.ConversionError;
  if (!lazy protocol witness table cache variable for type _NSRange.ConversionError and conformance _NSRange.ConversionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _NSRange.ConversionError and conformance _NSRange.ConversionError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type _NSRange.ConversionError and conformance _NSRange.ConversionError;
  if (!lazy protocol witness table cache variable for type _NSRange.ConversionError and conformance _NSRange.ConversionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _NSRange.ConversionError and conformance _NSRange.ConversionError);
  }

  return result;
}

void specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v9 = __DataStorage._bytes.getter();
  if (v9)
  {
    v10 = __DataStorage._offset.getter();
    if (__OFSUB__(a1, v10))
    {
      goto LABEL_7;
    }

    v9 = (v9 + a1 - v10);
  }

  if (!__OFSUB__(a2, a1))
  {
    __DataStorage._length.getter();
    closure #1 in Data.hexRepresentation.getter(v9, a4, a5, &v11);
    return;
  }

  __break(1u);
LABEL_7:
  __break(1u);
}

unint64_t specialized RomanNumerals.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of RomanNumerals.init(rawValue:), v2);

  if (v3 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type _NSRange.NSRangeIterator and conformance _NSRange.NSRangeIterator()
{
  result = lazy protocol witness table cache variable for type _NSRange.NSRangeIterator and conformance _NSRange.NSRangeIterator;
  if (!lazy protocol witness table cache variable for type _NSRange.NSRangeIterator and conformance _NSRange.NSRangeIterator)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type _NSRange.NSRangeIterator and conformance _NSRange.NSRangeIterator);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RomanNumerals and conformance RomanNumerals()
{
  result = lazy protocol witness table cache variable for type RomanNumerals and conformance RomanNumerals;
  if (!lazy protocol witness table cache variable for type RomanNumerals and conformance RomanNumerals)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RomanNumerals and conformance RomanNumerals);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type NSDirectionalEdgeInsets.Edge and conformance NSDirectionalEdgeInsets.Edge()
{
  result = lazy protocol witness table cache variable for type NSDirectionalEdgeInsets.Edge and conformance NSDirectionalEdgeInsets.Edge;
  if (!lazy protocol witness table cache variable for type NSDirectionalEdgeInsets.Edge and conformance NSDirectionalEdgeInsets.Edge)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NSDirectionalEdgeInsets.Edge and conformance NSDirectionalEdgeInsets.Edge);
  }

  return result;
}

__n128 __swift_memcpy25_8_1(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for _NSRange.NSRangeIterator(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 25))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for _NSRange.NSRangeIterator(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
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

  *(result + 25) = v3;
  return result;
}

uint64_t type metadata instantiation function for WeakWrapper(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t lazy protocol witness table accessor for type CharacterSet and conformance CharacterSet(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::Int _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo23NSDirectionalEdgeInsetsV14MusicUtilitiesE0F0O_Tt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySo23NSDirectionalEdgeInsetsV14MusicUtilitiesE0D0OGMd, &_ss11_SetStorageCySo23NSDirectionalEdgeInsetsV14MusicUtilitiesE0D0OGMR);
    v3 = static _SetStorage.allocate(capacity:)();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      Hasher.init(_seed:)();
      Hasher._combine(_:)(v10);
      result = Hasher._finalize()();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

void MPModelObject.humanDescription(including:)(uint64_t a1)
{
  v2 = v1;
  swift_getObjectType();
  v4._countAndFlagsBits = _typeName(_:qualified:)();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 8250;
  v5._object = 0xE200000000000000;
  String.append(_:)(v5);
  _print_unlocked<A, B>(_:_:)();
  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  v6 = objc_opt_self();
  v7 = swift_allocObject();
  v7[2] = a1;
  v7[3] = v12;
  v7[4] = v2;
  v8 = swift_allocObject();
  *(v8 + 16) = partial apply for closure #1 in MPModelObject.humanDescription(including:);
  *(v8 + 24) = v7;
  v11[4] = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  v11[5] = v8;
  v11[0] = _NSConcreteStackBlock;
  v11[1] = 1107296256;
  v11[2] = thunk for @escaping @callee_guaranteed () -> ();
  v11[3] = &block_descriptor_74;
  v9 = _Block_copy(v11);

  v10 = v2;

  [v6 performWithoutEnforcement:v9];
  _Block_release(v9);
  LOBYTE(v2) = swift_isEscapingClosureAtFileLocation();

  if (v2)
  {
    __break(1u);
  }

  else
  {
  }
}

void closure #1 in MPModelObject.humanDescription(including:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 16);
  if (!v4)
  {
    goto LABEL_4;
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCSo13MPModelObjectC14MusicUtilitiesE16LoggingComponentO_Tt1g5(*(a1 + 16), 0);
  v30 = specialized Sequence._copySequenceContents(initializing:)(v32, v6 + 32, v4, a1);
  v7 = *&v32[0];

  outlined consume of Set<Library.Menu.Identifier>.Iterator._Variant(v7);
  if (v30 != v4)
  {
    __break(1u);
LABEL_4:
    v6 = _swiftEmptyArrayStorage;
  }

  *&v32[0] = v6;
  specialized MutableCollection<>.sort(by:)(v32);
  v8 = *&v32[0];
  v9 = *(*&v32[0] + 16);
  if (!v9)
  {
LABEL_20:

    return;
  }

  v10 = 0;
  v11 = *&v32[0] + 32;
  while (v10 < *(v8 + 16))
  {
    if (!*(v11 + v10))
    {
      strcpy(v32, " identifiers=");
      HIWORD(v32[0]) = -4864;
      v12 = [a3 identifiers];
      v13 = [v12 description];
      v14 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v16 = v15;

      v17._countAndFlagsBits = v14;
      v17._object = v16;
      String.append(_:)(v17);

LABEL_8:
      v19 = *(&v32[0] + 1);
      v18 = *&v32[0];
      goto LABEL_9;
    }

    if (*(v11 + v10) == 1)
    {
      *&v32[0] = 23328;
      *(&v32[0] + 1) = 0xE200000000000000;
      v21 = [a3 shortDescription];
      v22 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v24 = v23;

      v25._countAndFlagsBits = v22;
      v25._object = v24;
      String.append(_:)(v25);

      v26._countAndFlagsBits = 93;
      v26._object = 0xE100000000000000;
      String.append(_:)(v26);
      goto LABEL_8;
    }

    type metadata accessor for MPModelObject();
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    InstanceVariable = class_getInstanceVariable(ObjCClassFromMetadata, "_storage");
    if (!InstanceVariable)
    {
      goto LABEL_10;
    }

    strcpy(v31, " properties=");
    BYTE5(v31[1]) = 0;
    HIWORD(v31[1]) = -5120;
    if (object_getIvar(a3, InstanceVariable))
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      memset(v32, 0, sizeof(v32));
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd_2, &_sypSgMR_2);
    v29._countAndFlagsBits = String.init<A>(describing:)();
    String.append(_:)(v29);

    v18 = v31[0];
    v19 = v31[1];
LABEL_9:
    v20 = v19;
    String.append(_:)(*&v18);

LABEL_10:
    if (v9 == ++v10)
    {
      goto LABEL_20;
    }
  }

  __break(1u);

  __break(1u);
}

uint64_t sub_1003FBC98()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_74(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t lazy protocol witness table accessor for type MPModelObject.LoggingComponent and conformance MPModelObject.LoggingComponent()
{
  result = lazy protocol witness table cache variable for type MPModelObject.LoggingComponent and conformance MPModelObject.LoggingComponent;
  if (!lazy protocol witness table cache variable for type MPModelObject.LoggingComponent and conformance MPModelObject.LoggingComponent)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MPModelObject.LoggingComponent and conformance MPModelObject.LoggingComponent);
  }

  return result;
}

uint64_t MPModelSong.shortDescription.getter()
{
  v1 = v0;
  v2 = [v0 title];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0xED0000676E6F5320;
    v4 = 0x64656C7469746E55;
  }

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 34;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  v9 = [v1 album];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 shortDescription];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15._countAndFlagsBits = v12;
    v15._object = v14;
    String.append(_:)(v15);

    v16._countAndFlagsBits = 0x206D75626C41203BLL;
    v16._object = 0xE800000000000000;
    String.append(_:)(v16);
  }

  v17 = [v1 artist];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 shortDescription];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23._countAndFlagsBits = v20;
    v23._object = v22;
    String.append(_:)(v23);

    v24._countAndFlagsBits = 0x747369747241203BLL;
    v24._object = 0xE900000000000020;
    String.append(_:)(v24);
  }

  return 0x22203A656C746954;
}

uint64_t MPModelPlaylist.shortDescription.getter()
{
  v1 = [v0 name];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v5 = 0x80000001004CE1A0;
    v3 = 0xD000000000000011;
  }

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 34;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return 0x22203A656D614ELL;
}

uint64_t MPModelPlaylistEntry.shortDescription.getter()
{
  v1 = swift_allocObject();
  *(v1 + 16) = v0;
  v2 = swift_allocObject();
  *(v2 + 16) = partial apply for implicit closure #2 in implicit closure #1 in MPModelPlaylistEntry.shortDescription.getter;
  *(v2 + 24) = v1;
  v12 = v2;
  v3 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo24MPModelPlaylistEntryTypeVycMd, &_sSo24MPModelPlaylistEntryTypeVycMR);
  v4._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v4);

  v5._countAndFlagsBits = 2236475;
  v5._object = 0xE300000000000000;
  String.append(_:)(v5);
  v6 = [v3 anyObject];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 shortDescription];

    static String._unconditionallyBridgeFromObjectiveC(_:)();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd_1, &_sSSSgMR_1);
  v9._countAndFlagsBits = String.init<A>(describing:)();
  String.append(_:)(v9);

  v10._countAndFlagsBits = 34;
  v10._object = 0xE100000000000000;
  String.append(_:)(v10);
  return 0x203A65707954;
}

uint64_t MPModelTVEpisode.shortDescription.getter()
{
  v1 = v0;
  v2 = [v0 title];
  if (v2)
  {
    v3 = v2;
    v4 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;
  }

  else
  {
    v6 = 0x80000001004D5C10;
    v4 = 0xD000000000000010;
  }

  v7._countAndFlagsBits = v4;
  v7._object = v6;
  String.append(_:)(v7);

  v8._countAndFlagsBits = 34;
  v8._object = 0xE100000000000000;
  String.append(_:)(v8);
  v9 = [v1 show];
  if (v9)
  {
    v10 = v9;
    v11 = [v9 shortDescription];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    v15._countAndFlagsBits = v12;
    v15._object = v14;
    String.append(_:)(v15);

    v16._countAndFlagsBits = 0x20776F6853203BLL;
    v16._object = 0xE700000000000000;
    String.append(_:)(v16);
  }

  v17 = [v1 season];
  if (v17)
  {
    v18 = v17;
    v19 = [v17 shortDescription];
    v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v22 = v21;

    v23._countAndFlagsBits = v20;
    v23._object = v22;
    String.append(_:)(v23);

    v24._countAndFlagsBits = 0x6E6F73616553203BLL;
    v24._object = 0xE900000000000020;
    String.append(_:)(v24);
  }

  return 0x22203A656C746954;
}

id @objc MPModelSong.shortDescription.getter(void *a1, uint64_t a2, void (*a3)(void))
{
  v4 = a1;
  a3();

  v5 = String._bridgeToObjectiveC()();

  return v5;
}

uint64_t MPModelRadioStation.shortDescription.getter()
{
  v1 = [v0 name];
  if (v1)
  {
    v2 = v1;
    v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v5 = v4;
  }

  else
  {
    v5 = 0x80000001004D5BF0;
    v3 = 0xD000000000000010;
  }

  v6._countAndFlagsBits = v3;
  v6._object = v5;
  String.append(_:)(v6);

  v7._countAndFlagsBits = 34;
  v7._object = 0xE100000000000000;
  String.append(_:)(v7);
  return 0x22203A656D614ELL;
}

uint64_t sub_1003FCC00()
{

  return swift_deallocObject();
}

uint64_t sub_1003FCC48()
{

  return swift_deallocObject();
}

uint64_t partial apply for thunk for @escaping @callee_guaranteed () -> (@unowned MPModelPlaylistEntryType)@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

unint64_t type metadata accessor for MPModelObject()
{
  result = _sSo13MPModelObjectCML_0;
  if (!_sSo13MPModelObjectCML_0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &_sSo13MPModelObjectCML_0);
  }

  return result;
}

void _sSa6append10contentsOfyqd__n_t7ElementQyd__RszSTRd__lFSS_SaySSGTg5_0(uint64_t a1)
{
  v2 = *(a1 + 16);
  New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 3) >> 1)
  {
    if (*(a1 + 16))
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

  New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1(isUniquelyReferenced_nonNull_native, v11, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 3) >> 1) - *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 2) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1;
    return;
  }

  v8 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 2);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 2) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void _sSa6append10contentsOfyqd__n_t7ElementQyd__RszSTRd__lFSo15UIBarButtonItemC_SayAFGTg5_0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = _CocoaArrayWrapper.endIndex.getter();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    v6 = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = _CocoaArrayWrapper.endIndex.getter();
  v5 = __OFADD__(v13, v3);
  v6 = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  specialized Array._reserveCapacityImpl(minimumCapacity:growForAppend:)(v6, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  _sSa13_copyContents12initializings16IndexingIteratorVySayxGG_SitSryxG_tFSo15UIBarButtonItemC_Tg5_0(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
}

void _sSa6append10contentsOfyqd__n_t7ElementQyd__RszSTRd__lF10Foundation12URLQueryItemV_SayAGGTg5_0(uint64_t a1)
{
  v2 = *(a1 + 16);
  New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_1 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_1[3] >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_1 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_1(isUniquelyReferenced_nonNull_native, v12, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_1);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_1[3] >> 1) - New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_1[2];
  type metadata accessor for URLQueryItem();
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_1;
    return;
  }

  v9 = New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_1[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtF10Foundation12URLQueryItemV_Tg5_1[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

char *String.components(wrappedToLineLength:bullet:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, void *a5)
{
  v78 = a1;
  v9 = type metadata accessor for CharacterSet();
  v10 = *(v9 - 8);
  __chkstk_darwin();
  v12 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79._countAndFlagsBits = a4;
  v79._object = a5;
  static CharacterSet.newlines.getter();
  v68 = _sS2SSysWl_1();
  v13 = StringProtocol.components(separatedBy:)();
  v14 = *(v10 + 8);
  v14(v12, v9);
  result = v13;
  v73 = *(v13 + 16);
  if (v73)
  {
    v16 = 0;
    v71 = a2;
    v72 = v13 + 32;
    v17 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v17 = a2 & 0xFFFFFFFFFFFFLL;
    }

    v66 = v17;
    v18 = _swiftEmptyArrayStorage;
    v69 = v13;
    v70 = a3;
    while (1)
    {
      if (v16 >= *(result + 2))
      {
LABEL_50:
        __break(1u);
LABEL_51:
        __break(1u);
        return result;
      }

      v19 = (v72 + 16 * v16);
      v20 = *v19;
      v21 = v19[1];
      v85 = v18;
      v22 = HIBYTE(v21) & 0xF;
      if ((v21 & 0x2000000000000000) == 0)
      {
        v22 = v20 & 0xFFFFFFFFFFFFLL;
      }

      if (v22)
      {
        v76 = v16;
        v23 = objc_allocWithZone(NSScanner);

        v75 = v21;
        v24 = v18;
        v25 = String._bridgeToObjectiveC()();
        v26 = [v23 initWithString:v25];

        v84._countAndFlagsBits = specialized getter of leftIndent #1 in closure #1 in String.components(wrappedToLineLength:bullet:)(v71, a3, &v85);
        v84._object = v27;
        static CharacterSet.whitespaces.getter();
        v28 = NSScanner.scanUpToCharacters(from:)();
        v30 = v29;
        v14(v12, v9);
        v74 = v24;
        v77 = v24;
        if (v30)
        {
          v77 = v74;
          while (1)
          {
            v31 = v84;
            v32 = String.count.getter();
            result = String.count.getter();
            v33 = &result[v32];
            if (__OFADD__(v32, result))
            {
              break;
            }

            v34 = __OFADD__(v33, 1);
            v35 = (v33 + 1);
            if (v34)
            {
              goto LABEL_49;
            }

            if (v35 > v78)
            {
              v79 = v31;
              v82 = 606827356;
              v83 = 0xE400000000000000;
              v80 = 0;
              v81 = 0xE000000000000000;
              v38 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
              v67 = v39;

              swift_beginAccess();
              if (swift_isUniquelyReferenced_nonNull_native())
              {
                New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 = v77;
              }

              else
              {
                New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1(0, *(v77 + 2) + 1, 1, v77);
              }

              v42 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 2);
              v41 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 3);
              if (v42 >= v41 >> 1)
              {
                New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1((v41 > 1), v42 + 1, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1);
              }

              *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 2) = v42 + 1;
              v43 = &New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1[16 * v42];
              v44 = v67;
              *(v43 + 4) = v38;
              *(v43 + 5) = v44;
              v77 = New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1;
              v85 = New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1;
              swift_endAccess();
              if (v66)
              {
                result = String.count.getter();
                v45 = (result + 1);
                if (__OFADD__(result, 1))
                {
                  goto LABEL_51;
                }

                v46._countAndFlagsBits = 32;
                v46._object = 0xE100000000000000;
                v48 = String.init(repeating:count:)(v46, v45);
                countAndFlagsBits = v48._countAndFlagsBits;
                object = v48._object;
              }

              else
              {
                countAndFlagsBits = 0;
                object = 0xE000000000000000;
              }

              v79._countAndFlagsBits = countAndFlagsBits;
              v79._object = object;

              v50._countAndFlagsBits = v28;
              v50._object = v30;
              String.append(_:)(v50);

              v51._countAndFlagsBits = 32;
              v51._object = 0xE100000000000000;
              String.append(_:)(v51);

              v84 = v79;
            }

            else
            {
              v79._countAndFlagsBits = v28;
              v79._object = v30;

              v36._countAndFlagsBits = 32;
              v36._object = 0xE100000000000000;
              String.append(_:)(v36);

              String.append(_:)(v79);
            }

            static CharacterSet.whitespaces.getter();
            v28 = NSScanner.scanUpToCharacters(from:)();
            v30 = v37;
            v14(v12, v9);
            if (!v30)
            {
              goto LABEL_31;
            }
          }

          __break(1u);
LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

LABEL_31:
        v52 = (v84._object >> 56) & 0xF;
        if ((v84._object & 0x2000000000000000) == 0)
        {
          v52 = v84._countAndFlagsBits & 0xFFFFFFFFFFFFLL;
        }

        if (v52)
        {
          v79 = v84;
          v82 = 606827356;
          v83 = 0xE400000000000000;
          v80 = 0;
          v81 = 0xE000000000000000;
          v53 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
          v55 = v54;

          if (swift_isUniquelyReferenced_nonNull_native())
          {
            v56 = v77;
          }

          else
          {
            v56 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1(0, *(v77 + 2) + 1, 1, v77);
          }

          v58 = *(v56 + 2);
          v57 = *(v56 + 3);
          if (v58 >= v57 >> 1)
          {
            v56 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1((v57 > 1), v58 + 1, 1, v56);
          }

          *(v56 + 2) = v58 + 1;
          v59 = &v56[16 * v58];
          *(v59 + 4) = v53;
          *(v59 + 5) = v55;
          a3 = v70;
          v18 = v56;
        }

        else
        {

          a3 = v70;
          v18 = v77;
        }
      }

      else
      {
        v60 = *(v18 + 2);
        if (!v60)
        {
          goto LABEL_8;
        }

        v75 = v21;
        v76 = v16;

        v61 = v18;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v61 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1(0, v60 + 1, 1, v18);
        }

        v63 = *(v61 + 2);
        v62 = *(v61 + 3);
        if (v63 >= v62 >> 1)
        {
          v61 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1((v62 > 1), v63 + 1, 1, v61);
        }

        *(v61 + 2) = v63 + 1;
        v64 = &v61[16 * v63];
        v65 = v75;
        *(v64 + 4) = v20;
        *(v64 + 5) = v65;
        v18 = v61;
      }

      result = v69;
      v16 = v76;
LABEL_8:
      if (++v16 == v73)
      {
        goto LABEL_47;
      }
    }
  }

  v18 = _swiftEmptyArrayStorage;
LABEL_47:

  return v18;
}

uint64_t specialized getter of leftIndent #1 in closure #1 in String.components(wrappedToLineLength:bullet:)(uint64_t a1, unint64_t a2, uint64_t a3)
{
  v3 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v3 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v3)
  {
    return 0;
  }

  swift_beginAccess();
  if (*(*a3 + 16))
  {
    result = String.count.getter();
    v7 = result + 1;
    if (__OFADD__(result, 1))
    {
      __break(1u);
    }

    else
    {
      v8._countAndFlagsBits = 32;
      v8._object = 0xE100000000000000;
      return String.init(repeating:count:)(v8, v7)._countAndFlagsBits;
    }
  }

  else
  {

    v9._countAndFlagsBits = 32;
    v9._object = 0xE100000000000000;
    String.append(_:)(v9);
    return a1;
  }

  return result;
}

char *Array<A>.asciiBoxed()(uint64_t a1)
{
  v45 = *(a1 + 16);
  if (v45)
  {
    v46 = 0;
    v5 = 0;
    v43 = a1 + 32;
    while (1)
    {
      v2 = *(v43 + 8 * v5);
      New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 = v2[2];
      if (New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1)
      {
        v4 = v2[4];
        v3 = v2[5];

        if (New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 != 1)
        {
          v8 = v2 + 5;
          v1 = 1;
          v42 = v5;
LABEL_10:
          v9 = &v8[2 * v1];
          while (1)
          {
            v10 = v2[2];
            if (v1 >= v10)
            {
              break;
            }

            v12 = *(v9 - 1);
            v11 = *v9;
            v13 = (v1 + 1);

            v14 = String.count.getter();
            if (v14 < String.count.getter())
            {

              v3 = v11;
              v4 = v12;
              v5 = v42;
              v15 = New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 - 1 == v1++;
              v8 = v2 + 5;
              if (v15)
              {
                goto LABEL_17;
              }

              goto LABEL_10;
            }

            v9 += 2;
            ++v1;
            if (New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 == v13)
            {
              v5 = v42;
              goto LABEL_17;
            }
          }

          __break(1u);
          goto LABEL_44;
        }

LABEL_17:
        v3 = String.count.getter();
      }

      else
      {
        v3 = 0;
      }

      ++v5;
      v6 = v46;
      if (v3 > v46)
      {
        v6 = v3;
      }

      v46 = v6;
      if (v5 == v45)
      {
        goto LABEL_19;
      }
    }
  }

  v46 = 0;
LABEL_19:
  v10 = v46;
  New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 = (v46 + 2);
  if (__OFADD__(v46, 2))
  {
LABEL_44:
    __break(1u);
LABEL_45:
    New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1((v10 > 1), v1, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1);
    goto LABEL_40;
  }

  _sS2SSysWl_1();
  v47 = StringProtocol.padding<A>(toLength:withPad:startingAt:)();
  v50 = v16;

  v17._countAndFlagsBits = 11441634;
  v17._object = 0xA300000000000000;
  String.append(_:)(v17);

  v40 = v47;
  v41 = v50;
  v48 = StringProtocol.padding<A>(toLength:withPad:startingAt:)();
  v51 = v18;

  v19._countAndFlagsBits = 10786018;
  v19._object = 0xA300000000000000;
  String.append(_:)(v19);

  if (!v45)
  {
    New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 = _swiftEmptyArrayStorage;
    goto LABEL_42;
  }

  v20 = 0;
  v39 = a1 + 32;
  New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 = _swiftEmptyArrayStorage;
  do
  {
    v21 = *(v39 + 8 * v20);
    if (v20)
    {
      v22 = v51;
    }

    else
    {
      v22 = v41;
    }

    if (v20)
    {
      v23 = v48;
    }

    else
    {
      v23 = v40;
    }

    v44 = v20;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1(0, *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 2) + 1, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1);
    }

    v25 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 2);
    v24 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 3);
    if (v25 >= v24 >> 1)
    {
      New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1((v24 > 1), v25 + 1, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1);
    }

    *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 2) = v25 + 1;
    v26 = &New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1[16 * v25];
    *(v26 + 4) = v23;
    *(v26 + 5) = v22;
    v27 = *(v21 + 16);
    if (v27)
    {
      v28 = v21 + 40;
      do
      {
        v29._countAndFlagsBits = StringProtocol.padding<A>(toLength:withPad:startingAt:)();
        String.append(_:)(v29);

        v30._countAndFlagsBits = 8557794;
        v30._object = 0xA300000000000000;
        String.append(_:)(v30);

        v32 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 2);
        v31 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 3);
        if (v32 >= v31 >> 1)
        {
          New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1((v31 > 1), v32 + 1, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1);
        }

        *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 2) = v32 + 1;
        v33 = &New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1[16 * v32];
        *(v33 + 4) = 545428706;
        *(v33 + 5) = 0xA400000000000000;
        v28 += 16;
        --v27;
      }

      while (v27);
    }

    v20 = v44 + 1;
  }

  while (v44 + 1 != v45);
  v49 = StringProtocol.padding<A>(toLength:withPad:startingAt:)();
  v52 = v34;

  v35._countAndFlagsBits = 11507170;
  v35._object = 0xA300000000000000;
  String.append(_:)(v35);

  v2 = v49;
  v3 = v52;
  v4 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 2);
  v10 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 3);
  v1 = v4 + 1;
  if (v4 >= v10 >> 1)
  {
    goto LABEL_45;
  }

LABEL_40:
  *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 2) = v1;
  v36 = &New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1[16 * v4];
  *(v36 + 4) = v2;
  *(v36 + 5) = v3;
LABEL_42:

  return New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySSGGMd_0, &_ss23_ContiguousArrayStorageCySaySSGGMR_0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1004F2400;
  *(inited + 32) = a1;

  v3 = Array<A>.asciiBoxed()(inited);
  swift_setDeallocating();
  outlined destroy of [String](inited + 32);
  return v3;
}

void Array<A>.appendStringComponents(_:lineLength:bullet:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v5 = String.components(wrappedToLineLength:bullet:)(a3, a4, a5, a1, a2);

  _sSa6append10contentsOfyqd__n_t7ElementQyd__RszSTRd__lFSS_SaySSGTg5_0(v5);
}

uint64_t outlined destroy of [String](uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd_1, &_sSaySSGMR_1);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t _sSa13_copyContents12initializings16IndexingIteratorVySayxGG_SitSryxG_tFSo15UIBarButtonItemC_Tg5_0(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = _CocoaArrayWrapper.endIndex.getter();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = _CocoaArrayWrapper.endIndex.getter();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          _sSaySo15UIBarButtonItemCGSayxGSlsWl_0();
          for (i = 0; i != v6; ++i)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo15UIBarButtonItemCGMd_0, &_sSaySo15UIBarButtonItemCGMR_0);
            v9 = specialized protocol witness for Collection.subscript.read in conformance [A](v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        type metadata accessor for UIBarButtonItem();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

unint64_t type metadata accessor for UIBarButtonItem()
{
  result = _sSo15UIBarButtonItemCML_1;
  if (!_sSo15UIBarButtonItemCML_1)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &_sSo15UIBarButtonItemCML_1);
  }

  return result;
}

unint64_t _sSaySo15UIBarButtonItemCGSayxGSlsWl_0()
{
  result = _sSaySo15UIBarButtonItemCGSayxGSlsWL_0;
  if (!_sSaySo15UIBarButtonItemCGSayxGSlsWL_0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo15UIBarButtonItemCGMd_0, &_sSaySo15UIBarButtonItemCGMR_0);
    result = swift_getWitnessTable();
    atomic_store(result, &_sSaySo15UIBarButtonItemCGSayxGSlsWL_0);
  }

  return result;
}

id Optional<A>.isArtworkVisuallyIdentical(to:)(uint64_t a1, id a2)
{
  if (a2)
  {
    if (a1)
    {
      return [a2 isArtworkVisuallyIdenticalToCatalog:a1];
    }

    return 0;
  }

  return !a1;
}

uint64_t MPCPlaybackIntentOptions.debugDescription.getter(char a1)
{
  if ((a1 & 1) == 0)
  {
    New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 = _swiftEmptyArrayStorage;
    if ((a1 & 2) == 0)
    {
      goto LABEL_12;
    }

    goto LABEL_7;
  }

  New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1(0, 1, 1, _swiftEmptyArrayStorage);
  v4 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 2);
  v3 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 3);
  if (v4 >= v3 >> 1)
  {
    New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1((v3 > 1), v4 + 1, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1);
  }

  *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 2) = v4 + 1;
  v5 = &New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1[16 * v4];
  *(v5 + 4) = 0x656D6D4979616C70;
  *(v5 + 5) = 0xEF796C6574616964;
  if ((a1 & 2) != 0)
  {
LABEL_7:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1(0, *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 2) + 1, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1);
    }

    v7 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 2);
    v6 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 3);
    if (v7 >= v6 >> 1)
    {
      New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1((v6 > 1), v7 + 1, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1);
    }

    *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 2) = v7 + 1;
    v8 = &New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1[16 * v7];
    *(v8 + 4) = 0x6575517465736572;
    *(v8 + 5) = 0xEA00000000006575;
  }

LABEL_12:
  if ((a1 & 4) != 0)
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1(0, *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 2) + 1, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1);
    }

    v10 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 2);
    v9 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 3);
    if (v10 >= v9 >> 1)
    {
      New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1((v9 > 1), v10 + 1, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1);
    }

    *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 2) = v10 + 1;
    v11 = &New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1[16 * v10];
    *(v11 + 4) = 0x4E70556F54646461;
    *(v11 + 5) = 0xEF64616548747865;
    if ((a1 & 8) == 0)
    {
LABEL_14:
      if ((a1 & 0x10) == 0)
      {
        goto LABEL_31;
      }

      goto LABEL_26;
    }
  }

  else if ((a1 & 8) == 0)
  {
    goto LABEL_14;
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1(0, *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 2) + 1, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1);
  }

  v13 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 2);
  v12 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 3);
  if (v13 >= v12 >> 1)
  {
    New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1((v12 > 1), v13 + 1, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1);
  }

  *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 2) = v13 + 1;
  v14 = &New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1[16 * v13];
  *(v14 + 4) = 0x4E70556F54646461;
  *(v14 + 5) = 0xEF6C696154747865;
  if ((a1 & 0x10) != 0)
  {
LABEL_26:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1(0, *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 2) + 1, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1);
    }

    v16 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 2);
    v15 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 3);
    if (v16 >= v15 >> 1)
    {
      New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1((v15 > 1), v16 + 1, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1);
    }

    *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1 + 2) = v16 + 1;
    v17 = &New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSS_Tg5_1[16 * v16];
    *(v17 + 4) = 0x5074726174736572;
    *(v17 + 5) = 0xEF6B63616279616CLL;
  }

LABEL_31:
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd_1, &_sSaySSGMR_1);
  _sSaySSGSayxGSKsWl_1();
  v18 = BidirectionalCollection<>.joined(separator:)();
  v20 = v19;

  v21._countAndFlagsBits = v18;
  v21._object = v20;
  String.append(_:)(v21);

  v22._countAndFlagsBits = 93;
  v22._object = 0xE100000000000000;
  String.append(_:)(v22);
  return 91;
}

__C::MPMediaLibraryFilteringOptions __swiftcall MPMediaLibraryFilteringOptions.init(_:)(NSNumber_optional a1)
{
  if (a1.value.super.super.isa)
  {
    isa = a1.value.super.super.isa;
    v2 = [(objc_class *)a1.value.super.super.isa unsignedIntegerValue];

    a1.value.super.super.isa = v2;
  }

  return a1.value.super.super.isa;
}

id static PropertySetCombinator.buildBlock(_:)(unint64_t a1)
{
  v2 = [objc_opt_self() emptyPropertySet];
  if (a1 >> 62)
  {
    goto LABEL_15;
  }

  v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v2 = v2;
    v4 = v2;
    v11 = v2;
    if (!v3)
    {
      break;
    }

    v5 = 0;
    v6 = v2;
    while (1)
    {
      if ((a1 & 0xC000000000000001) != 0)
      {
        v2 = specialized _ArrayBuffer._getElementSlowPath(_:)();
      }

      else
      {
        if (v5 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_14;
        }

        v2 = *(a1 + 8 * v5 + 32);
      }

      v7 = v2;
      v8 = v5 + 1;
      if (__OFADD__(v5, 1))
      {
        break;
      }

      v4 = [v6 propertySetByCombiningWithPropertySet:v2];

      ++v5;
      v6 = v4;
      if (v8 == v3)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_14:
    __break(1u);
LABEL_15:
    v10 = v2;
    v3 = _CocoaArrayWrapper.endIndex.getter();
    v2 = v10;
  }

LABEL_12:

  return v4;
}

unint64_t _sSaySSGSayxGSKsWl_1()
{
  result = _sSaySSGSayxGSKsWL_1;
  if (!_sSaySSGSayxGSKsWL_1)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySSGMd_1, &_sSaySSGMR_1);
    result = swift_getWitnessTable();
    atomic_store(result, &_sSaySSGSayxGSKsWL_1);
  }

  return result;
}

uint64_t GenericMusicItem.innerMusicItem.getter@<X0>(uint64_t *a1@<X8>)
{
  v124 = a1;
  v72 = type metadata accessor for UploadedVideo();
  v71 = *(v72 - 8);
  __chkstk_darwin();
  v70 = &v70 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v75 = type metadata accessor for UploadedAudio();
  v74 = *(v75 - 8);
  __chkstk_darwin();
  v73 = &v70 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v78 = type metadata accessor for TVShow();
  v77 = *(v78 - 8);
  __chkstk_darwin();
  v76 = &v70 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v81 = type metadata accessor for TVSeason();
  v80 = *(v81 - 8);
  __chkstk_darwin();
  v79 = &v70 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for TVEpisode();
  v83 = *(v84 - 8);
  __chkstk_darwin();
  v82 = &v70 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = type metadata accessor for Station();
  v86 = *(v87 - 8);
  __chkstk_darwin();
  v85 = &v70 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v90 = type metadata accessor for Song();
  v89 = *(v90 - 8);
  __chkstk_darwin();
  v88 = &v70 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = type metadata accessor for SocialProfile();
  v92 = *(v93 - 8);
  __chkstk_darwin();
  v91 = &v70 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = type metadata accessor for RecordLabel();
  v95 = *(v96 - 8);
  __chkstk_darwin();
  v94 = &v70 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v99 = type metadata accessor for RadioShow();
  v98 = *(v99 - 8);
  __chkstk_darwin();
  v97 = &v70 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for Playlist();
  v101 = *(v102 - 8);
  __chkstk_darwin();
  v100 = &v70 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MusicVideo();
  v104 = *(v12 - 8);
  v105 = v12;
  __chkstk_darwin();
  v103 = &v70 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for MusicMovie();
  v107 = *(v14 - 8);
  v108 = v14;
  __chkstk_darwin();
  v106 = &v70 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Genre();
  v110 = *(v16 - 8);
  v111 = v16;
  __chkstk_darwin();
  v109 = &v70 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for EditorialItem();
  v113 = *(v18 - 8);
  v114 = v18;
  __chkstk_darwin();
  v112 = &v70 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Curator();
  v116 = *(v20 - 8);
  v117 = v20;
  __chkstk_darwin();
  v115 = &v70 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for CreditArtist();
  v119 = *(v22 - 8);
  v120 = v22;
  __chkstk_darwin();
  v118 = &v70 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for Composer();
  v121 = *(v24 - 8);
  v122 = v24;
  __chkstk_darwin();
  v26 = &v70 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for Artist();
  v28 = *(v27 - 8);
  __chkstk_darwin();
  v30 = &v70 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = type metadata accessor for Album();
  v32 = *(v31 - 8);
  __chkstk_darwin();
  v34 = &v70 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for GenericMusicItem();
  v36 = *(v35 - 8);
  v37 = __chkstk_darwin();
  v39 = &v70 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v36 + 16))(v39, v123, v35, v37);
  v40 = (*(v36 + 88))(v39, v35);
  if (v40 == enum case for GenericMusicItem.album(_:))
  {
    (*(v36 + 96))(v39, v35);
    v41 = *(v32 + 32);
    v41(v34, v39, v31);
    v42 = v124;
    v124[3] = v31;
    v42[4] = &protocol witness table for Album;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v42);
    return (v41)(boxed_opaque_existential_1, v34, v31);
  }

  v45 = v124;
  if (v40 == enum case for GenericMusicItem.artist(_:))
  {
    (*(v36 + 96))(v39, v35);
    v46 = *(v28 + 32);
    v46(v30, v39, v27);
    v45[3] = v27;
    v45[4] = &protocol witness table for Artist;
    v47 = __swift_allocate_boxed_opaque_existential_1(v45);
    return (v46)(v47, v30, v27);
  }

  if (v40 == enum case for GenericMusicItem.composer(_:))
  {
    (*(v36 + 96))(v39, v35);
    v48 = v122;
    v49 = *(v121 + 32);
    v49(v26, v39, v122);
    v45[3] = v48;
    v45[4] = lazy protocol witness table accessor for type UploadedVideo and conformance UploadedVideo(&_s16MusicKitInternal8ComposerVAC0aB00A4ItemAAWL_0, &type metadata accessor for Composer, &protocol conformance descriptor for Composer);
    v50 = __swift_allocate_boxed_opaque_existential_1(v45);
    v51 = v26;
    return (v49)(v50, v51, v48);
  }

  if (v40 == enum case for GenericMusicItem.creditArtist(_:))
  {
    (*(v36 + 96))(v39, v35);
    v52 = v118;
    v49 = *(v119 + 32);
    v48 = v120;
    v49(v118, v39, v120);
    v45[3] = v48;
    v53 = &lazy protocol witness table cache variable for type CreditArtist and conformance CreditArtist;
    v54 = &type metadata accessor for CreditArtist;
    v55 = &protocol conformance descriptor for CreditArtist;
LABEL_9:
    v45[4] = lazy protocol witness table accessor for type UploadedVideo and conformance UploadedVideo(v53, v54, v55);
    v50 = __swift_allocate_boxed_opaque_existential_1(v45);
    v51 = v52;
    return (v49)(v50, v51, v48);
  }

  v56 = v124;
  if (v40 == enum case for GenericMusicItem.curator(_:))
  {
    (*(v36 + 96))(v39, v35);
    v57 = v115;
    v58 = *(v116 + 32);
    v59 = v117;
    v58(v115, v39, v117);
    v60 = &protocol witness table for Curator;
LABEL_13:
    v56[3] = v59;
    v56[4] = v60;
LABEL_17:
    v64 = __swift_allocate_boxed_opaque_existential_1(v56);
    return (v58)(v64, v57, v59);
  }

  if (v40 == enum case for GenericMusicItem.editorialItem(_:))
  {
    (*(v36 + 96))(v39, v35);
    v57 = v112;
    v58 = *(v113 + 32);
    v59 = v114;
    v58(v112, v39, v114);
    v56[3] = v59;
    v61 = &_s16MusicKitInternal13EditorialItemVAC0aB00aE0AAWL_0;
    v62 = &type metadata accessor for EditorialItem;
    v63 = &protocol conformance descriptor for EditorialItem;
LABEL_16:
    v56[4] = lazy protocol witness table accessor for type UploadedVideo and conformance UploadedVideo(v61, v62, v63);
    goto LABEL_17;
  }

  if (v40 == enum case for GenericMusicItem.genre(_:))
  {
    (*(v36 + 96))(v39, v35);
    v57 = v109;
    v58 = *(v110 + 32);
    v59 = v111;
    v58(v109, v39, v111);
    v60 = &protocol witness table for Genre;
    goto LABEL_13;
  }

  if (v40 == enum case for GenericMusicItem.musicMovie(_:))
  {
    (*(v36 + 96))(v39, v35);
    v57 = v106;
    v58 = *(v107 + 32);
    v59 = v108;
    v58(v106, v39, v108);
    v56[3] = v59;
    v61 = &_s16MusicKitInternal0A5MovieVAC0aB00A4ItemAAWL_0;
    v62 = &type metadata accessor for MusicMovie;
    v63 = &protocol conformance descriptor for MusicMovie;
    goto LABEL_16;
  }

  if (v40 == enum case for GenericMusicItem.musicVideo(_:))
  {
    (*(v36 + 96))(v39, v35);
    v59 = v105;
    v58 = *(v104 + 32);
    v57 = v103;
    v58(v103, v39, v105);
    v60 = &protocol witness table for MusicVideo;
    goto LABEL_13;
  }

  if (v40 == enum case for GenericMusicItem.playlist(_:))
  {
    (*(v36 + 96))(v39, v35);
    v58 = *(v101 + 32);
    v57 = v100;
    v59 = v102;
    v58(v100, v39, v102);
    v60 = &protocol witness table for Playlist;
    goto LABEL_13;
  }

  if (v40 == enum case for GenericMusicItem.radioShow(_:))
  {
    (*(v36 + 96))(v39, v35);
    v58 = *(v98 + 32);
    v57 = v97;
    v59 = v99;
    v58(v97, v39, v99);
    v60 = &protocol witness table for RadioShow;
    goto LABEL_13;
  }

  if (v40 == enum case for GenericMusicItem.recordLabel(_:))
  {
    (*(v36 + 96))(v39, v35);
    v58 = *(v95 + 32);
    v57 = v94;
    v59 = v96;
    v58(v94, v39, v96);
    v60 = &protocol witness table for RecordLabel;
    goto LABEL_13;
  }

  if (v40 == enum case for GenericMusicItem.socialProfile(_:))
  {
    (*(v36 + 96))(v39, v35);
    v58 = *(v92 + 32);
    v57 = v91;
    v59 = v93;
    v58(v91, v39, v93);
    v56[3] = v59;
    v61 = &_s16MusicKitInternal13SocialProfileVAC0aB00A4ItemAAWL_0;
    v62 = &type metadata accessor for SocialProfile;
    v63 = &protocol conformance descriptor for SocialProfile;
    goto LABEL_16;
  }

  if (v40 == enum case for GenericMusicItem.song(_:))
  {
    (*(v36 + 96))(v39, v35);
    v58 = *(v89 + 32);
    v57 = v88;
    v59 = v90;
    v58(v88, v39, v90);
    v60 = &protocol witness table for Song;
    goto LABEL_13;
  }

  if (v40 == enum case for GenericMusicItem.station(_:))
  {
    (*(v36 + 96))(v39, v35);
    v65 = *(v86 + 32);
    v66 = v85;
    v67 = v87;
    v65(v85, v39, v87);
    v45[3] = v67;
    v45[4] = &protocol witness table for Station;
    v68 = __swift_allocate_boxed_opaque_existential_1(v45);
    return (v65)(v68, v66, v67);
  }

  else
  {
    if (v40 == enum case for GenericMusicItem.tvEpisode(_:))
    {
      (*(v36 + 96))(v39, v35);
      v49 = *(v83 + 32);
      v52 = v82;
      v48 = v84;
      v49(v82, v39, v84);
      v45[3] = v48;
      v53 = &_s16MusicKitInternal9TVEpisodeVAC0aB00A4ItemAAWL_0;
      v54 = &type metadata accessor for TVEpisode;
      v55 = &protocol conformance descriptor for TVEpisode;
      goto LABEL_9;
    }

    if (v40 == enum case for GenericMusicItem.tvSeason(_:))
    {
      (*(v36 + 96))(v39, v35);
      v49 = *(v80 + 32);
      v52 = v79;
      v48 = v81;
      v49(v79, v39, v81);
      v45[3] = v48;
      v53 = &_s16MusicKitInternal8TVSeasonVAC0aB00A4ItemAAWL_0;
      v54 = &type metadata accessor for TVSeason;
      v55 = &protocol conformance descriptor for TVSeason;
      goto LABEL_9;
    }

    if (v40 == enum case for GenericMusicItem.tvShow(_:))
    {
      (*(v36 + 96))(v39, v35);
      v49 = *(v77 + 32);
      v52 = v76;
      v48 = v78;
      v49(v76, v39, v78);
      v45[3] = v48;
      v53 = &_s16MusicKitInternal6TVShowVAC0aB00A4ItemAAWL_0;
      v54 = &type metadata accessor for TVShow;
      v55 = &protocol conformance descriptor for TVShow;
      goto LABEL_9;
    }

    if (v40 == enum case for GenericMusicItem.uploadedAudio(_:))
    {
      (*(v36 + 96))(v39, v35);
      v49 = *(v74 + 32);
      v52 = v73;
      v48 = v75;
      v49(v73, v39, v75);
      v45[3] = v48;
      v53 = &_s16MusicKitInternal13UploadedAudioVAC0aB00A4ItemAAWL_0;
      v54 = &type metadata accessor for UploadedAudio;
      v55 = &protocol conformance descriptor for UploadedAudio;
      goto LABEL_9;
    }

    if (v40 == enum case for GenericMusicItem.uploadedVideo(_:))
    {
      (*(v36 + 96))(v39, v35);
      v49 = *(v71 + 32);
      v52 = v70;
      v48 = v72;
      v49(v70, v39, v72);
      v45[3] = v48;
      v53 = &_s16MusicKitInternal13UploadedVideoVAC0aB00A4ItemAAWL_0;
      v54 = &type metadata accessor for UploadedVideo;
      v55 = &protocol conformance descriptor for UploadedVideo;
      goto LABEL_9;
    }

    v69 = (v36 + 8);
    if (v40 == enum case for GenericMusicItem.other(_:))
    {
      result = (*v69)(v39, v35);
      v45[4] = 0;
      *v45 = 0u;
      *(v45 + 1) = 0u;
    }

    else
    {
      v124[4] = 0;
      *v45 = 0u;
      *(v45 + 1) = 0u;
      return (*v69)(v39, v35);
    }
  }

  return result;
}

uint64_t GenericMusicItem.catalogID.getter()
{
  v0 = type metadata accessor for TVShow();
  v38 = *(v0 - 8);
  v39 = v0;
  __chkstk_darwin();
  v37 = &v37 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = type metadata accessor for TVSeason();
  v41 = *(v2 - 8);
  v42 = v2;
  __chkstk_darwin();
  v40 = &v37 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TVEpisode();
  v44 = *(v4 - 8);
  v45 = v4;
  __chkstk_darwin();
  v43 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Song();
  v47 = *(v6 - 8);
  v48 = v6;
  __chkstk_darwin();
  v46 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Playlist();
  v50 = *(v8 - 8);
  v51 = v8;
  __chkstk_darwin();
  v49 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for MusicVideo();
  v53 = *(v10 - 8);
  v54 = v10;
  __chkstk_darwin();
  v52 = &v37 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MusicMovie();
  v55 = *(v12 - 8);
  v56 = v12;
  __chkstk_darwin();
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for Artist();
  v16 = *(v15 - 8);
  __chkstk_darwin();
  v18 = &v37 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for Album();
  v20 = *(v19 - 8);
  __chkstk_darwin();
  v22 = &v37 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for GenericMusicItem();
  v24 = *(v23 - 8);
  v25 = __chkstk_darwin();
  v27 = &v37 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 16))(v27, v57, v23, v25);
  v28 = (*(v24 + 88))(v27, v23);
  if (v28 != enum case for GenericMusicItem.album(_:))
  {
    if (v28 == enum case for GenericMusicItem.artist(_:))
    {
      (*(v24 + 96))(v27, v23);
      (*(v16 + 32))(v18, v27, v15);
      v29 = Artist.catalogID.getter();
      (*(v16 + 8))(v18, v15);
      return v29;
    }

    if (v28 != enum case for GenericMusicItem.composer(_:) && v28 != enum case for GenericMusicItem.curator(_:) && v28 != enum case for GenericMusicItem.editorialItem(_:) && v28 != enum case for GenericMusicItem.genre(_:))
    {
      if (v28 == enum case for GenericMusicItem.musicMovie(_:))
      {
        (*(v24 + 96))(v27, v23);
        v31 = v55;
        v30 = v56;
        (*(v55 + 32))(v14, v27, v56);
        v29 = MusicMovie.catalogID.getter();
        (*(v31 + 8))(v14, v30);
        return v29;
      }

      if (v28 == enum case for GenericMusicItem.musicVideo(_:))
      {
        (*(v24 + 96))(v27, v23);
        v32 = v52;
        v33 = v53;
        v34 = v54;
        (*(v53 + 32))(v52, v27, v54);
        v35 = MusicVideo.catalogID.getter();
LABEL_15:
        v29 = v35;
        (*(v33 + 8))(v32, v34);
        return v29;
      }

      if (v28 == enum case for GenericMusicItem.playlist(_:))
      {
        (*(v24 + 96))(v27, v23);
        v32 = v49;
        v33 = v50;
        v34 = v51;
        (*(v50 + 32))(v49, v27, v51);
        v35 = Playlist.catalogID.getter();
        goto LABEL_15;
      }

      if (v28 != enum case for GenericMusicItem.radioShow(_:) && v28 != enum case for GenericMusicItem.recordLabel(_:) && v28 != enum case for GenericMusicItem.socialProfile(_:))
      {
        if (v28 == enum case for GenericMusicItem.song(_:))
        {
          (*(v24 + 96))(v27, v23);
          v32 = v46;
          v33 = v47;
          v34 = v48;
          (*(v47 + 32))(v46, v27, v48);
          v35 = Song.catalogID.getter();
          goto LABEL_15;
        }

        if (v28 != enum case for GenericMusicItem.station(_:))
        {
          if (v28 == enum case for GenericMusicItem.tvEpisode(_:))
          {
            (*(v24 + 96))(v27, v23);
            v32 = v43;
            v33 = v44;
            v34 = v45;
            (*(v44 + 32))(v43, v27, v45);
            v35 = TVEpisode.catalogID.getter();
            goto LABEL_15;
          }

          if (v28 == enum case for GenericMusicItem.tvSeason(_:))
          {
            (*(v24 + 96))(v27, v23);
            v32 = v40;
            v33 = v41;
            v34 = v42;
            (*(v41 + 32))(v40, v27, v42);
            v35 = TVSeason.catalogID.getter();
            goto LABEL_15;
          }

          if (v28 == enum case for GenericMusicItem.tvShow(_:))
          {
            (*(v24 + 96))(v27, v23);
            v32 = v37;
            v33 = v38;
            v34 = v39;
            (*(v38 + 32))(v37, v27, v39);
            v35 = TVShow.catalogID.getter();
            goto LABEL_15;
          }
        }
      }
    }

    (*(v24 + 8))(v27, v23);
    return 0;
  }

  (*(v24 + 96))(v27, v23);
  (*(v20 + 32))(v22, v27, v19);
  v29 = Album.catalogID.getter();
  (*(v20 + 8))(v22, v19);
  return v29;
}

uint64_t Playlist.Entry.InternalItem.musicItem.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for Playlist.Entry.InternalItem();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, v2, v4, v6);
  v9 = (*(v5 + 88))(v8, v4);
  if (v9 == enum case for Playlist.Entry.InternalItem.musicMovie(_:))
  {
    (*(v5 + 96))(v8, v4);
    v10 = type metadata accessor for MusicMovie();
    a1[3] = v10;
    v11 = &_s16MusicKitInternal0A5MovieVAC0aB00A4ItemAAWL_0;
    v12 = &type metadata accessor for MusicMovie;
    v13 = &protocol conformance descriptor for MusicMovie;
LABEL_3:
    v14 = lazy protocol witness table accessor for type UploadedVideo and conformance UploadedVideo(v11, v12, v13);
LABEL_8:
    a1[4] = v14;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
    return (*(*(v10 - 8) + 32))(boxed_opaque_existential_1, v8, v10);
  }

  if (v9 == enum case for Playlist.Entry.InternalItem.musicVideo(_:))
  {
    (*(v5 + 96))(v8, v4);
    v10 = type metadata accessor for MusicVideo();
    a1[3] = v10;
    v14 = &protocol witness table for MusicVideo;
    goto LABEL_8;
  }

  if (v9 == enum case for Playlist.Entry.InternalItem.song(_:))
  {
    (*(v5 + 96))(v8, v4);
    v10 = type metadata accessor for Song();
    a1[3] = v10;
    v14 = &protocol witness table for Song;
    goto LABEL_8;
  }

  if (v9 == enum case for Playlist.Entry.InternalItem.tvEpisode(_:))
  {
    (*(v5 + 96))(v8, v4);
    v10 = type metadata accessor for TVEpisode();
    a1[3] = v10;
    v11 = &_s16MusicKitInternal9TVEpisodeVAC0aB00A4ItemAAWL_0;
    v12 = &type metadata accessor for TVEpisode;
    v13 = &protocol conformance descriptor for TVEpisode;
    goto LABEL_3;
  }

  if (v9 == enum case for Playlist.Entry.InternalItem.uploadedAudio(_:))
  {
    (*(v5 + 96))(v8, v4);
    v10 = type metadata accessor for UploadedAudio();
    a1[3] = v10;
    v11 = &_s16MusicKitInternal13UploadedAudioVAC0aB00A4ItemAAWL_0;
    v12 = &type metadata accessor for UploadedAudio;
    v13 = &protocol conformance descriptor for UploadedAudio;
    goto LABEL_3;
  }

  if (v9 == enum case for Playlist.Entry.InternalItem.uploadedVideo(_:))
  {
    (*(v5 + 96))(v8, v4);
    v10 = type metadata accessor for UploadedVideo();
    a1[3] = v10;
    v11 = &_s16MusicKitInternal13UploadedVideoVAC0aB00A4ItemAAWL_0;
    v12 = &type metadata accessor for UploadedVideo;
    v13 = &protocol conformance descriptor for UploadedVideo;
    goto LABEL_3;
  }

  v18 = 0;
  v19 = 0xE000000000000000;
  _StringGuts.grow(_:)(42);

  v18 = 0xD000000000000028;
  v19 = 0x80000001004D5C80;
  lazy protocol witness table accessor for type UploadedVideo and conformance UploadedVideo(&_s8MusicKit8PlaylistV5EntryV0aB8InternalE0E4ItemOAHs23CustomStringConvertibleAFWL_0, &type metadata accessor for Playlist.Entry.InternalItem, &protocol conformance descriptor for Playlist.Entry.InternalItem);
  v17._countAndFlagsBits = dispatch thunk of CustomStringConvertible.description.getter();
  String.append(_:)(v17);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t Artist.pinPlayabilityStatus(isOnline:explicitContentIsAllowed:)@<X0>(char a1@<W0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v6 = Artist.trackCount.getter();
  if (v7)
  {
    v8 = 0;
  }

  else
  {
    v8 = v6;
  }

  v9 = Artist.cleanTrackCount.getter();
  if (v10)
  {
    v11 = 0;
  }

  else
  {
    v11 = v9;
  }

  v12 = Artist.downloadedTrackCount.getter();
  if (v13)
  {
    v14 = 0;
  }

  else
  {
    v14 = v12;
  }

  v15 = Artist.downloadedCleanTrackCount.getter();
  if (v16)
  {
    if ((a1 & 1) == 0)
    {
      if ((a2 & 1) == 0)
      {
        if (v11 <= 0)
        {
          if (v14 <= 0)
          {
            goto LABEL_36;
          }

          goto LABEL_20;
        }

LABEL_27:
        v18 = &enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.networkUnavailable(_:);
        goto LABEL_28;
      }

      goto LABEL_22;
    }
  }

  else if ((a1 & 1) == 0)
  {
    if (a2)
    {
LABEL_22:
      if (v14 <= 0)
      {
        goto LABEL_27;
      }

LABEL_23:
      v17 = &enum case for MusicPlayer.PlayabilityStatus.playable(_:);
      goto LABEL_30;
    }

    if (v11 >= 1 && !v15)
    {
      goto LABEL_27;
    }

    if (v14 < 1 || v15)
    {
      if (v15 <= 0)
      {
LABEL_36:
        v20 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
        v21 = *(*(v20 - 8) + 104);
        if (v8 < 1)
        {
          v28 = &enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.unsupportedType(_:);
        }

        else
        {
          v28 = &enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.explicitRestricted(_:);
        }

        v23 = *v28;
        v22 = a3;
        goto LABEL_29;
      }

      goto LABEL_23;
    }

LABEL_20:
    v18 = &enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.explicitRestricted(_:);
LABEL_28:
    v19 = *v18;
    v20 = type metadata accessor for MusicPlayer.PlayabilityStatus.UnplayableReason();
    v21 = *(*(v20 - 8) + 104);
    v22 = a3;
    v23 = v19;
LABEL_29:
    v21(v22, v23, v20);
    v17 = &enum case for MusicPlayer.PlayabilityStatus.unplayable(_:);
    goto LABEL_30;
  }

  if (!v8)
  {
    v18 = &enum case for MusicPlayer.PlayabilityStatus.UnplayableReason.unsupportedType(_:);
    goto LABEL_28;
  }

  v17 = &enum case for MusicPlayer.PlayabilityStatus.playable(_:);
  if ((a2 & 1) == 0 && v11 <= 0)
  {
    goto LABEL_20;
  }

LABEL_30:
  v24 = *v17;
  v25 = type metadata accessor for MusicPlayer.PlayabilityStatus();
  v26 = *(*(v25 - 8) + 104);

  return v26(a3, v24, v25);
}

uint64_t MusicPin.Action.symbolName.getter()
{
  v1 = v0;
  v2 = type metadata accessor for MusicPin.Action();
  v3 = *(v2 - 8);
  v4 = __chkstk_darwin();
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v3 + 16))(v6, v1, v2, v4);
  v7 = (*(v3 + 88))(v6, v2);
  if (v7 == enum case for MusicPin.Action.navigate(_:))
  {
    return 0;
  }

  if (v7 == enum case for MusicPin.Action.play(_:))
  {
    return 0x6C69662E79616C70;
  }

  if (v7 != enum case for MusicPin.Action.shuffle(_:))
  {
    (*(v3 + 8))(v6, v2);
    return 0;
  }

  return 0x656C6666756873;
}

uint64_t _s10Foundation4DateVSgWOh_0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd_1, &_s10Foundation4DateVSgMR_1);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type UploadedVideo and conformance UploadedVideo(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Album.releaseYearString.getter(uint64_t (*a1)(__n128))
{
  v39 = type metadata accessor for TimeZone();
  v2 = *(v39 - 8);
  __chkstk_darwin();
  v4 = v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = type metadata accessor for Date.FormatStyle.Symbol.Year();
  v34 = *(v36 - 8);
  __chkstk_darwin();
  v33 = v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Date.FormatStyle();
  v37 = *(v6 - 8);
  v38 = v6;
  __chkstk_darwin();
  v32 = v31 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v35 = v31 - v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8TimeZoneVSgMd, &_s10Foundation8TimeZoneVSgMR);
  __chkstk_darwin();
  v10 = v31 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation8CalendarVSgMd, &_s10Foundation8CalendarVSgMR);
  __chkstk_darwin();
  v12 = v31 - v11;
  v13 = type metadata accessor for DateComponents();
  v14 = *(v13 - 8);
  __chkstk_darwin();
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd_1, &_s10Foundation4DateVSgMR_1);
  v17 = __chkstk_darwin();
  v19 = v31 - v18;
  a1(v17);
  if (v20)
  {
    v21 = type metadata accessor for Date();
    (*(*(v21 - 8) + 56))(v19, 1, 1, v21);
LABEL_6:
    _s10Foundation4DateVSgWOh_0(v19);
    return 0;
  }

  v31[1] = v4;
  if (one-time initialization token for musicDefaultCalendar != -1)
  {
    swift_once();
  }

  v22 = type metadata accessor for Calendar();
  __swift_project_value_buffer(v22, static Calendar.musicDefaultCalendar);
  (*(*(v22 - 8) + 56))(v12, 1, 1, v22);
  (*(v2 + 56))(v10, 1, 1, v39);
  DateComponents.init(calendar:timeZone:era:year:month:day:hour:minute:second:nanosecond:weekday:weekdayOrdinal:quarter:weekOfMonth:weekOfYear:yearForWeekOfYear:)();
  Calendar.date(from:)();
  (*(v14 + 8))(v16, v13);
  v23 = type metadata accessor for Date();
  v24 = *(v23 - 8);
  if ((*(v24 + 48))(v19, 1, v23) == 1)
  {
    goto LABEL_6;
  }

  v26 = v32;
  static ParseableFormatStyle<>.dateTime.getter();
  v27 = v33;
  static Date.FormatStyle.Symbol.Year.defaultDigits.getter();
  v28 = v35;
  Date.FormatStyle.year(_:)();
  (*(v34 + 8))(v27, v36);
  v29 = v38;
  v30 = *(v37 + 8);
  v30(v26, v38);
  Calendar.timeZone.getter();
  Date.FormatStyle.timeZone.setter();
  lazy protocol witness table accessor for type UploadedVideo and conformance UploadedVideo(&lazy protocol witness table cache variable for type Date.FormatStyle and conformance Date.FormatStyle, &type metadata accessor for Date.FormatStyle, &protocol conformance descriptor for Date.FormatStyle);
  Date.formatted<A>(_:)();
  v30(v28, v29);
  (*(v24 + 8))(v19, v23);
  return v40;
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1);
  if (v4)
  {
    return *(*(a2 + 56) + 8 * v3);
  }

  else
  {
    return 0;
  }
}

void AIDiffingUpdate.init<A>(oldItems:newItems:visibleIndexPaths:startingSectionIndex:finalSectionIndex:modelUpdateHandler:identityComparator:visualComparator:)(NSObject *a1@<X0>, uint64_t a2@<X1>, NSObject *a3@<X2>, uint64_t a4@<X3>, void (**a5)(uint64_t, uint64_t *, NSObject *, __n128)@<X4>, int a6@<W5>, unint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void *a14, uint64_t a15)
{
  LODWORD(v735) = a6;
  v723 = a5;
  v725 = a4;
  v716 = a3;
  v720 = a2;
  v19 = a14;
  v718 = a13;
  v714 = a11;
  v713 = a10;
  v703 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathV_ACtMd, &_s10Foundation9IndexPathV_ACtMR);
  v702 = *(v703 - 8);
  __chkstk_darwin();
  v701 = v630 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v704 = v630 - v21;
  swift_getAssociatedTypeWitness();
  v715 = a15;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v731 = type metadata accessor for CollectionDifference.Change();
  *&v666 = v731[-1];
  __chkstk_darwin();
  v740 = (v630 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v730 = (v630 - v25);
  v26 = type metadata accessor for CollectionDifference();
  WitnessTable = swift_getWitnessTable();
  v695 = type metadata accessor for IndexingIterator();
  *&v665 = *(v695 - 8);
  __chkstk_darwin();
  v738 = v630 - v27;
  v685 = *(v26 - 8);
  __chkstk_darwin();
  v699 = v630 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v680 = v630 - v29;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v682 = type metadata accessor for Optional();
  v664 = *(v682 - 8);
  __chkstk_darwin();
  v692 = (v630 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0));
  __chkstk_darwin();
  v732 = (v630 - v31);
  v736 = v26;
  type metadata accessor for Optional();
  __chkstk_darwin();
  v687 = v630 - v32;
  v675 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss16IndexingIteratorVys20CollectionDifferenceVySSGGMd, &_ss16IndexingIteratorVys20CollectionDifferenceVySSGGMR);
  __chkstk_darwin();
  v743 = (v630 - v33);
  v739 = AssociatedTypeWitness;
  v676 = *(AssociatedTypeWitness - 8);
  __chkstk_darwin();
  *&v726 = v630 - v34;
  v35 = a1;
  v686 = swift_checkMetadataState();
  v667 = *(v686 - 8);
  __chkstk_darwin();
  v672 = v630 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v684 = v630 - v37;
  v673 = *(a14 - 1);
  __chkstk_darwin();
  v660 = v630 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v662 = v630 - v39;
  __chkstk_darwin();
  v661 = v630 - v40;
  __chkstk_darwin();
  v671 = v630 - v41;
  __chkstk_darwin();
  v679 = v630 - v42;
  __chkstk_darwin();
  v694 = v630 - v43;
  __chkstk_darwin();
  v724 = (v630 - v44);
  __chkstk_darwin();
  v742 = (v630 - v45);
  v744 = type metadata accessor for IndexPath();
  v727 = *(v744 - 8);
  __chkstk_darwin();
  v683 = v630 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v677 = v630 - v47;
  __chkstk_darwin();
  v670 = v630 - v48;
  __chkstk_darwin();
  v669 = v630 - v49;
  __chkstk_darwin();
  v668 = v630 - v50;
  __chkstk_darwin();
  v681 = v630 - v51;
  __chkstk_darwin();
  v663 = v630 - v52;
  __chkstk_darwin();
  v712 = v630 - v53;
  __chkstk_darwin();
  v700 = v630 - v54;
  __chkstk_darwin();
  v56 = v630 - v55;
  __chkstk_darwin();
  v689 = v630 - v57;
  __chkstk_darwin();
  v709 = v630 - v58;
  __chkstk_darwin();
  *&v707 = v630 - v59;
  __chkstk_darwin();
  v708 = (v630 - v60);
  __chkstk_darwin();
  v688 = v630 - v61;
  __chkstk_darwin();
  v698 = v630 - v62;
  __chkstk_darwin();
  v697 = v630 - v63;
  __chkstk_darwin();
  v690 = v630 - v64;
  __chkstk_darwin();
  v710 = v630 - v65;
  __chkstk_darwin();
  v711 = v630 - v66;
  __chkstk_darwin();
  v733 = v630 - v67;
  __chkstk_darwin();
  v741 = v630 - v68;
  __chkstk_darwin();
  *&v728 = v630 - v69;
  v705 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss20CollectionDifferenceVySSGMd, &_ss20CollectionDifferenceVySSGMR);
  v674 = *(v705 - 8);
  __chkstk_darwin();
  v678 = v630 - v70;
  *a9 = 0;
  v71 = type metadata accessor for AIDiffingUpdate(0);
  v72 = v71[6];
  IndexSet.init()();
  v722 = v71[7];
  IndexSet.init()();
  v73 = v71[8];
  *(a9 + v73) = _swiftEmptyArrayStorage;
  v74 = (a9 + v71[9]);
  *v74 = 0;
  v74[1] = _swiftEmptyArrayStorage;
  v706 = v74;
  v75 = (a9 + v71[10]);
  *v75 = 0;
  v75[1] = _swiftEmptyArrayStorage;
  v717 = v75;
  v76 = (a9 + v71[11]);
  *v76 = 0;
  v76[1] = _swiftEmptyArrayStorage;
  v719 = v71[12];
  *(a9 + v719) = _swiftEmptyArrayStorage;
  *(a9 + 8) = a7;
  *(a9 + 16) = a8;
  v737 = a9;
  if (!v35)
  {
    outlined copy of (@escaping @callee_guaranteed () -> ())?(a7, a8);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(a12, v718);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v713, v714);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(a7, a8);

LABEL_14:

    *v737 = 1;
    return;
  }

  v696 = a12;
  if (!v720)
  {
    outlined copy of (@escaping @callee_guaranteed () -> ())?(a7, a8);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v696, v718);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v713, v714);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(a7, a8);
LABEL_13:

    goto LABEL_14;
  }

  v659 = v73;
  v656 = AssociatedConformanceWitness;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(a7, a8);

  v77 = Array.count.getter();
  v78 = v35;
  v79 = v718;
  v80 = v696;
  if (v77 <= 0 || (v643 = v77, v691 = v78, v81 = Array.count.getter(), v81 < 1))
  {

    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v80, v79);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v713, v714);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(a7, a8);

    goto LABEL_13;
  }

  TupleTypeMetadata3 = v81;
  v647 = v72;
  v652 = v56;
  if (one-time initialization token for aiDiff != -1)
  {
    goto LABEL_370;
  }

  while (1)
  {
    v83 = type metadata accessor for Logger();
    v84 = __swift_project_value_buffer(v83, static Logger.aiDiff);

    v729 = v84;
    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.default.getter();

    v87 = os_log_type_enabled(v85, v86);
    v721 = v19;
    v658 = TupleTypeMetadata3;
    if (v87)
    {
      v88 = swift_slowAlloc();
      v748 = swift_slowAlloc();
      *v88 = 136315394;
      v89 = _typeName(_:qualified:)();
      v91 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v89, v90, &v748);

      *(v88 + 4) = v91;
      *(v88 + 12) = 2080;
      v92 = Array.description.getter();
      v94 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v92, v93, &v748);

      *(v88 + 14) = v94;
      v19 = v721;
      _os_log_impl(&_mh_execute_header, v85, v86, "Building update for section with item type %s, visible index paths: %s", v88, 0x16u);
      swift_arrayDestroy();
    }

    v646 = a8;
    v95 = v713;
    v642 = a7;
    if (v713)
    {
      v96 = swift_allocObject();
      v97 = v715;
      v96[2] = v19;
      v96[3] = v97;
      v98 = v714;
      v96[4] = v95;
      v96[5] = v98;
      v99 = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A.DiffableSection.Items.Sequence.Element, @in_guaranteed A.DiffableSection.Items.Sequence.Element) -> (@unowned Bool);
    }

    else
    {
      v96 = swift_allocObject();
      v97 = v715;
      v96[2] = v19;
      v96[3] = v97;
      v99 = partial apply for closure #1 in implicit closure #3 in AIDiffingUpdate.init<A>(oldItems:newItems:visibleIndexPaths:startingSectionIndex:finalSectionIndex:modelUpdateHandler:identityComparator:visualComparator:);
      v98 = v714;
    }

    v100 = swift_allocObject();
    v100[2] = v19;
    v100[3] = v97;
    v100[4] = v99;
    v100[5] = v96;
    v650 = v100;
    outlined copy of (@escaping @callee_guaranteed () -> ())?(v95, v98);
    v756 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SiTt0g5Tf4g_n(_swiftEmptyArrayStorage);
    v755 = &_swiftEmptySetSingleton;
    v748 = v691;
    __chkstk_darwin();
    v630[-4] = v19;
    v630[-3] = v97;
    v630[-2] = &v755;
    v101 = type metadata accessor for Array();
    v102 = swift_getWitnessTable();
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #2 in AIDiffingUpdate.init<A>(oldItems:newItems:visibleIndexPaths:startingSectionIndex:finalSectionIndex:modelUpdateHandler:identityComparator:visualComparator:), &v630[-6], v101, &type metadata for String, &type metadata for Never, v102, &protocol witness table for Never, v103);
    v649 = v104;
    v746[0] = v720;
    swift_getWitnessTable();
    Sequence.enumerated()();
    v746[0] = v748;
    __chkstk_darwin();
    v630[-4] = v105;
    v630[-3] = v97;
    v630[-2] = &v756;
    __chkstk_darwin();
    v630[-4] = v106;
    v630[-3] = v97;
    v630[-2] = partial apply for closure #3 in AIDiffingUpdate.init<A>(oldItems:newItems:visibleIndexPaths:startingSectionIndex:finalSectionIndex:modelUpdateHandler:identityComparator:visualComparator:);
    v630[-1] = v107;
    v108 = type metadata accessor for EnumeratedSequence();
    v754[1] = v102;
    v109 = swift_getWitnessTable();
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for thunk for @callee_guaranteed (@unowned Int, @in_guaranteed A) -> (@owned String), &v630[-6], v108, &type metadata for String, &type metadata for Never, v109, &protocol witness table for Never, v110);
    v112 = v111;
    v113 = v649;

    v114 = v755;
    if (v755[2] != *(v113 + 16))
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      v170 = Logger.logObject.getter();
      v171 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v170, v171))
      {
        v172 = swift_slowAlloc();
        v173 = swift_slowAlloc();
        v748 = v173;
        *v172 = 136446210;
        v174 = Array.description.getter();
        v176 = v175;

        v177 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v174, v176, &v748);

        *(v172 + 4) = v177;
        v178 = "Found duplicate sections in old items, falling back to reload data. Sections: %{public}s";
LABEL_66:
        _os_log_impl(&_mh_execute_header, v170, v171, v178, v172, 0xCu);
        __swift_destroy_boxed_opaque_existential_0Tm(v173);

        outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v696, v718);
        outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v713, v714);
        outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v642, v646);
LABEL_68:

        *v737 = 1;
        goto LABEL_69;
      }

LABEL_67:

      outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v696, v718);
      outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v713, v714);
      outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v642, v646);

      goto LABEL_68;
    }

    if (v112[2] != v658)
    {

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

      v170 = Logger.logObject.getter();
      v171 = static os_log_type_t.fault.getter();

      if (os_log_type_enabled(v170, v171))
      {
        v172 = swift_slowAlloc();
        v173 = swift_slowAlloc();
        v748 = v173;
        *v172 = 136446210;
        v179 = Array.description.getter();
        v181 = v180;

        v182 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v179, v181, &v748);

        *(v172 + 4) = v182;
        v178 = "Found duplicate sections in new items, falling back to reload data. Sections: %{public}s";
        goto LABEL_66;
      }

      goto LABEL_67;
    }

    v632 = v112;
    v748 = v112;
    v746[0] = v113;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd_1, &_sSaySSGMR_1);
    lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&_sSaySSGSayxGSKsWL_1, &_sSaySSGMd_1, &_sSaySSGMR_1, &protocol conformance descriptor for [A]);
    BidirectionalCollection<>.difference<A>(from:)();
    v634 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(_swiftEmptyArrayStorage);
    v754[0] = v634;
    v753 = &_swiftEmptySetSingleton;
    v19 = v721;
    v637 = swift_getAssociatedConformanceWitness();
    v115 = type metadata accessor for OrderedSet();
    swift_getTupleTypeMetadata2();
    v116 = static Array._allocateUninitialized(_:)();
    v117 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCTf4gn_n_0(v116, &type metadata for Int, v115, &protocol witness table for Int);
    v118 = v115;

    v657 = v117;
    v752 = v117;
    v119 = static Array._allocateUninitialized(_:)();
    v120 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCTf4gn_n_0(v119, &type metadata for Int, v115, &protocol witness table for Int);

    v751 = v120;
    v748 = v716;

    specialized MutableCollection<>.sort(by:)(&v748);
    v630[1] = 0;
    v633 = v114;
    a8 = v748;
    v121 = v748[2];
    v122 = v728;
    v655 = v118;
    v654 = v121;
    if (v121)
    {
      a7 = 0;
      *&v653 = v748 + ((*(v727 + 80) + 32) & ~*(v727 + 80));
      v658 = (v727 + 16);
      v123 = (v727 + 8);
      v644 = v715 + 40;
      v636 = (v676 + 16);
      v641 = v667 + 8;
      v635 = (v676 + 8);
      v638 = (v715 + 32);
      v639 = (v673 + 8);
      TupleTypeMetadata3 = v736;
      v640 = (v727 + 8);
      v648 = v748;
      while (1)
      {
        if (a7 >= *(a8 + 16))
        {
          goto LABEL_360;
        }

        v124 = *(v727 + 16);
        v124(v122, v653 + *(v727 + 72) * a7, v744);
        if (IndexPath.section.getter() < v725)
        {
          (*v123)(v122, v744);
        }

        else
        {
          a8 = v739;
          if ((v735 & 1) != 0 || IndexPath.section.getter() <= v723)
          {
            v125 = v733;
            v126 = v744;
            v124(v733, v122, v744);
            v127 = v741;
            v128 = v125;
            v118 = v655;
            specialized Set._Variant.insert(_:)(v741, v128);
            v651 = *v123;
            (v651)(v127, v126);
            v746[0] = IndexPath.section.getter();
            TupleTypeMetadata3 = &type metadata for Int;
            v19 = &protocol witness table for Int;
            Dictionary.subscript.getter();
            if (v749)
            {
              outlined consume of NoticeDismissal?(v748, v749);
            }

            else
            {
              v129 = IndexPath.section.getter();
              static Array._allocateUninitialized(_:)();
              v748 = OrderedSet.init(arrayLiteral:)();
              v749 = v130;
              v746[0] = v129;
              type metadata accessor for Dictionary();
              Dictionary.subscript.setter();
              v131 = IndexPath.section.getter();
              v132 = IndexPath.item.getter();
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v748 = v754[0];
              v134 = v132;
              TupleTypeMetadata3 = &type metadata for Int;
              specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v134, v131, isUniquelyReferenced_nonNull_native);
              v634 = v748;
              v754[0] = v748;
            }

            v746[0] = IndexPath.section.getter();
            Dictionary.subscript.getter();
            if (v749)
            {
              outlined consume of NoticeDismissal?(v748, v749);
            }

            else
            {
              v135 = IndexPath.section.getter();
              static Array._allocateUninitialized(_:)();
              v748 = OrderedSet.init(arrayLiteral:)();
              v749 = v136;
              v746[0] = v135;
              type metadata accessor for Dictionary();
              Dictionary.subscript.setter();
            }

            if (__OFSUB__(IndexPath.section.getter(), v725))
            {
              goto LABEL_368;
            }

            Array.subscript.getter();
            v746[0] = IndexPath.section.getter();
            Dictionary.subscript.getter();
            v137 = v749;
            if (v749)
            {
              v645 = ContiguousArray.count.getter();
            }

            else
            {
              v645 = 0;
            }

            v750 = IndexPath.section.getter();
            type metadata accessor for Dictionary();
            v138 = Dictionary.subscript.modify();
            if (*(v139 + 8))
            {
              v140 = v684;
              (*(v715 + 40))(v721);
              v747 = IndexPath.item.getter();
              v141 = v686;
              v142 = dispatch thunk of Collection.subscript.read();
              v143 = v726;
              (*v636)(v726);
              v142(v746, 0);
              v144 = v140;
              v118 = v655;
              v145 = v141;
              v146 = v739;
              (*v641)(v144, v145);
              OrderedSet._append(_:)();
              v147 = v143;
              v122 = v728;
              (*v635)(v147, v146);
            }

            v138(&v748, 0);
            v746[0] = IndexPath.section.getter();
            v657 = v752;
            Dictionary.subscript.getter();
            if (v749)
            {
              v148 = ContiguousArray.count.getter();

              v19 = v721;
              if (v137 && v645 == v148)
              {
LABEL_344:

                swift_bridgeObjectRelease_n();

                swift_bridgeObjectRelease_n();

                v610 = Logger.logObject.getter();
                v611 = static os_log_type_t.fault.getter();
                if (os_log_type_enabled(v610, v611))
                {
                  v612 = swift_slowAlloc();
                  *v612 = 0;
                  _os_log_impl(&_mh_execute_header, v610, v611, "Found duplicate in old visible items, falling back to reload data.", v612, 2u);
                }

                outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v696, v718);

                outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v713, v714);
                outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v642, v646);
                (*v639)(v742, v19);
                (v651)(v122, v744);
                (*(v674 + 8))(v678, v705);
                *v737 = 1;

LABEL_352:

LABEL_69:

                return;
              }
            }

            else
            {
              v19 = v721;
              if (!v137)
              {
                goto LABEL_344;
              }
            }

            v149 = (*(v715 + 32))(v19);
            if (*(v756 + 16) && (_ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_1(v149, v150), (v151 & 1) != 0))
            {

              Array.subscript.getter();
              v152 = IndexPath.item.getter();
              v153 = *(v715 + 40);
              v154 = v684;
              v153(v19);
              v155 = v686;
              v156 = dispatch thunk of Collection.count.getter();
              v157 = *v641;
              v158 = v154;
              v118 = v655;
              (*v641)(v158, v155);
              v159 = v152 < v156;
              v160 = v122;
              if (v159)
              {
                v746[0] = IndexPath.section.getter();
                Dictionary.subscript.getter();
                v645 = v749;
                if (v749)
                {
                  v631 = ContiguousArray.count.getter();
                }

                else
                {
                  v631 = 0;
                }

                v750 = IndexPath.section.getter();
                v161 = Dictionary.subscript.modify();
                if (*(v162 + 8))
                {
                  v163 = v684;
                  v630[0] = v161;
                  (v153)(v721, v715);
                  v747 = IndexPath.item.getter();
                  v164 = v686;
                  v165 = dispatch thunk of Collection.subscript.read();
                  v166 = v726;
                  v167 = v739;
                  (*v636)(v726);
                  v165(v746, 0);
                  v157(v163, v164);
                  v118 = v655;
                  OrderedSet._append(_:)();
                  (*v635)(v166, v167);
                  (v630[0])(&v748, 0);
                }

                else
                {
                  v161(&v748, 0);
                  v118 = v655;
                }

                v746[0] = IndexPath.section.getter();
                Dictionary.subscript.getter();
                if (v749)
                {
                  v168 = ContiguousArray.count.getter();

                  v160 = v728;
                  if (v645 && v631 == v168)
                  {
LABEL_353:

                    swift_bridgeObjectRelease_n();

                    swift_bridgeObjectRelease_n();

                    v625 = Logger.logObject.getter();
                    v626 = static os_log_type_t.fault.getter();
                    if (os_log_type_enabled(v625, v626))
                    {
                      v627 = swift_slowAlloc();
                      *v627 = 0;
                      _os_log_impl(&_mh_execute_header, v625, v626, "Found duplicate in new visible items, falling back to reload data.", v627, 2u);
                    }

                    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v696, v718);

                    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v713, v714);
                    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v642, v646);
                    v628 = *v639;
                    v629 = v721;
                    (*v639)(v724, v721);
                    v628(v742, v629);
                    (v651)(v728, v744);
                    (*(v674 + 8))(v678, v705);

                    *v737 = 1;

                    return;
                  }
                }

                else
                {
                  v160 = v728;
                  if (!v645)
                  {
                    goto LABEL_353;
                  }
                }
              }

              v169 = *v639;
              v19 = v721;
              (*v639)(v724, v721);
              v169(v742, v19);
              v123 = v640;
              (v651)(v160, v744);
              TupleTypeMetadata3 = v736;
              v122 = v160;
            }

            else
            {

              (*v639)(v742, v19);
              v123 = v640;
              (v651)(v122, v744);
              TupleTypeMetadata3 = v736;
            }
          }

          else
          {
            (*v123)(v122, v744);
          }

          a8 = v648;
        }

        if (v654 == ++a7)
        {
          goto LABEL_71;
        }
      }
    }

    TupleTypeMetadata3 = v736;
LABEL_71:

    swift_getTupleTypeMetadata2();
    v183 = static Array._allocateUninitialized(_:)();
    v184 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCTf4gn_n_0(v183, &type metadata for Int, TupleTypeMetadata3, &protocol witness table for Int);

    a7 = v657 + 64;
    v185 = *(v657 + 64);
    v750 = v184;
    v186 = 1 << *(v657 + 32);
    v187 = -1;
    if (v186 < 64)
    {
      v187 = ~(-1 << v186);
    }

    a8 = v187 & v185;
    v188 = (v186 + 63) >> 6;
    v724 = (v685 + 56);

    v189 = 0;
    while (1)
    {
      v190 = v705;
      if (!a8)
      {
        break;
      }

      v191 = v118;
      TupleTypeMetadata3 = v189;
LABEL_81:
      v192 = __clz(__rbit64(a8)) | (TupleTypeMetadata3 << 6);
      v193 = *(*(v657 + 48) + 8 * v192);
      a8 &= a8 - 1;
      v194 = (*(v657 + 56) + 16 * v192);
      v195 = *v194;
      v196 = v194[1];
      v742 = v193;
      v746[0] = v193;
      v197 = v195;

      v198 = v191;
      Dictionary.subscript.getter();
      v199 = v749;
      if (v749)
      {
        *&v726 = v630;
        *&v728 = v748;
        v735 = v197;
        v746[0] = v197;
        v746[1] = v196;
        v733 = v196;
        __chkstk_darwin();
        v200 = v715;
        v630[-12] = v721;
        v630[-11] = v200;
        v201 = v650;
        v630[-10] = partial apply for thunk for @escaping @callee_guaranteed (@in_guaranteed A.DiffableSection.Items.Sequence.Element, @in_guaranteed A.DiffableSection.Items.Sequence.Element) -> (@out Bool);
        v630[-9] = v201;
        v202 = v718;
        v630[-8] = v696;
        v630[-7] = v202;
        v630[-6] = v203;
        v630[-5] = v199;
        v630[-4] = v754;
        v204 = v742;
        v205 = v737;
        v630[-3] = v742;
        v630[-2] = v205;
        swift_getWitnessTable();
        v206 = v687;
        v118 = v655;
        BidirectionalCollection.difference<A>(from:by:)();
        (*v724)(v206, 0, 1, v736);
        v748 = v204;
        type metadata accessor for Dictionary();
        Dictionary.subscript.setter();

        v19 = v721;

        v189 = TupleTypeMetadata3;
      }

      else
      {

        v189 = TupleTypeMetadata3;
        v19 = v721;
        v118 = v198;
      }
    }

    while (1)
    {
      TupleTypeMetadata3 = v189 + 1;
      if (__OFADD__(v189, 1))
      {
        goto LABEL_359;
      }

      if (TupleTypeMetadata3 >= v188)
      {
        break;
      }

      a8 = *(a7 + 8 * TupleTypeMetadata3);
      ++v189;
      if (a8)
      {
        v191 = v118;
        goto LABEL_81;
      }
    }

    v207 = v743;
    (*(v674 + 16))(v743, v678, v190);
    v208 = *(v675 + 36);
    v209 = lazy protocol witness table accessor for type Publishers.Autoconnect<NSTimer.TimerPublisher> and conformance Publishers.Autoconnect<A>(&lazy protocol witness table cache variable for type CollectionDifference<String> and conformance CollectionDifference<A>, &_ss20CollectionDifferenceVySSGMd, &_ss20CollectionDifferenceVySSGMR, &protocol conformance descriptor for CollectionDifference<A>);
    dispatch thunk of Collection.startIndex.getter();
    dispatch thunk of Collection.endIndex.getter();
    if (*(v207 + v208) != v748)
    {
      *&v210 = 134349056;
      v728 = v210;
      *&v210 = 134349312;
      v726 = v210;
      v733 = v208;
      do
      {
        a7 = v19;
        v19 = v209;
        v390 = dispatch thunk of Collection.subscript.read();
        v392 = *v391;
        v393 = *(v391 + 16);
        v394 = *(v391 + 24);
        TupleTypeMetadata3 = *(v391 + 32);
        v395 = *(v391 + 33);
        v396 = *v391;
        v735 = *(v391 + 8);
        v742 = v393;
        v397 = MPCPlaybackEngine.Configuration.options.getter(v396, v735, v393);
        v390(&v748, 0, v397);
        v209 = v19;
        dispatch thunk of Collection.formIndex(after:)();
        a8 = v392 + v725;
        v398 = __OFADD__(v392, v725);
        if (v395)
        {
          if (v398)
          {
            goto LABEL_365;
          }

          if ((TupleTypeMetadata3 & 1) == 0)
          {
            v404 = v392 + v725;
            v405 = v394 + v725;
            if (__OFADD__(v394, v725))
            {
              goto LABEL_372;
            }

            v406 = Logger.logObject.getter();
            v407 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v406, v407))
            {
              v408 = swift_slowAlloc();
              *v408 = v726;
              *(v408 + 4) = v404;
              *(v408 + 12) = 2050;
              *(v408 + 14) = v405;
              _os_log_impl(&_mh_execute_header, v406, v407, "[Remove] Moving section from %{public}ld to %{public}ld", v408, 0x16u);
            }

            v409 = *&v737[v659];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v409 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v409 + 2) + 1, 1, v409);
            }

            v411 = *(v409 + 2);
            v410 = *(v409 + 3);
            if (v411 >= v410 >> 1)
            {
              v409 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v410 > 1), v411 + 1, 1, v409);
            }

            outlined consume of CollectionDifference<String>.Change();
            *(v409 + 2) = v411 + 1;
            v412 = &v409[16 * v411];
            *(v412 + 4) = v404;
            *(v412 + 5) = v405;
LABEL_226:
            *&v737[v659] = v409;
            v19 = v721;
            goto LABEL_196;
          }

          v19 = a7;
          v399 = Logger.logObject.getter();
          v400 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v399, v400))
          {
            v401 = swift_slowAlloc();
            *v401 = v728;
            *(v401 + 4) = a8;
            _os_log_impl(&_mh_execute_header, v399, v400, "Deleting section %{public}ld", v401, 0xCu);
            v19 = v721;
          }
        }

        else
        {
          if (v398)
          {
            goto LABEL_366;
          }

          if ((TupleTypeMetadata3 & 1) == 0)
          {
            v413 = v392 + v725;
            v414 = v394 + v725;
            if (__OFADD__(v394, v725))
            {
              goto LABEL_373;
            }

            v415 = Logger.logObject.getter();
            v416 = static os_log_type_t.default.getter();
            if (os_log_type_enabled(v415, v416))
            {
              v417 = swift_slowAlloc();
              *v417 = v726;
              *(v417 + 4) = v414;
              *(v417 + 12) = 2050;
              *(v417 + 14) = v413;
              _os_log_impl(&_mh_execute_header, v415, v416, "[Insert] Moving section from %{public}ld to %{public}ld", v417, 0x16u);
            }

            v409 = *&v737[v659];
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v409 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v409 + 2) + 1, 1, v409);
            }

            v419 = *(v409 + 2);
            v418 = *(v409 + 3);
            if (v419 >= v418 >> 1)
            {
              v409 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v418 > 1), v419 + 1, 1, v409);
            }

            outlined consume of CollectionDifference<String>.Change();
            *(v409 + 2) = v419 + 1;
            v420 = &v409[16 * v419];
            *(v420 + 4) = v414;
            *(v420 + 5) = v413;
            goto LABEL_226;
          }

          v19 = a7;
          v399 = Logger.logObject.getter();
          v402 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v399, v402))
          {
            v403 = swift_slowAlloc();
            *v403 = v728;
            *(v403 + 4) = a8;
            _os_log_impl(&_mh_execute_header, v399, v402, "Inserting section %{public}ld", v403, 0xCu);
            v19 = v721;
          }
        }

        IndexSet.insert(_:)(a8);
        outlined consume of CollectionDifference<String>.Change();
LABEL_196:
        v389 = v743;
        dispatch thunk of Collection.endIndex.getter();
      }

      while (*(v389 + v733) != v748);
    }

    outlined destroy of IndexingIterator<CollectionDifference<String>>(v743);
    v211 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_SiTt0g5Tf4g_n(_swiftEmptyArrayStorage);
    v213 = (v750 + 64);
    v212 = *(v750 + 64);
    v214 = 1 << *(v750 + 32);
    v215 = -1;
    v747 = v211;
    if (v214 < 64)
    {
      v215 = ~(-1 << v214);
    }

    v659 = v215 & v212;
    v635 = ((v214 + 63) >> 6);
    v216 = TupleTypeMetadata2;
    v640 = (TupleTypeMetadata2 - 8);
    v655 = (v685 + 16);
    v658 = (v685 + 32);
    v639 = (v664 + 32);
    v644 = v715 + 32;
    v724 = (v666 + 16);
    v723 = (v666 + 32);
    v743 = (v727 + 16);
    v742 = (v727 + 8);
    v722 = (v676 + 8);
    v637 = (v665 + 8);
    v645 = (v673 + 8);
    v638 = (v685 + 8);
    v641 = v750;

    v217 = 0;
    *&v218 = 134349312;
    v665 = v218;
    *&v218 = 136446210;
    v666 = v218;
    *&v218 = 136446466;
    v653 = v218;
    a8 = v739;
    TupleTypeMetadata3 = v736;
    v219 = v738;
    v220 = v732;
    v636 = v213;
LABEL_88:
    a7 = v692;
    v221 = v659;
    if (v659)
    {
      v654 = v217;
      v222 = v217;
      goto LABEL_98;
    }

    v223 = v635 <= v217 + 1 ? v217 + 1 : v635;
    v224 = v223 - 1;
LABEL_94:
    v222 = v217 + 1;
    if (!__OFADD__(v217, 1))
    {
      break;
    }

LABEL_358:
    __break(1u);
LABEL_359:
    __break(1u);
LABEL_360:
    __break(1u);
LABEL_361:
    __break(1u);
LABEL_362:
    __break(1u);
LABEL_363:
    __break(1u);
LABEL_364:
    __break(1u);
LABEL_365:
    __break(1u);
LABEL_366:
    __break(1u);
LABEL_367:
    __break(1u);
LABEL_368:
    __break(1u);
LABEL_369:
    __break(1u);
LABEL_370:
    swift_once();
  }

  if (v222 >= v635)
  {
    v659 = 0;
    v233 = 1;
    v654 = v224;
    goto LABEL_99;
  }

  v221 = v213[v222];
  ++v217;
  if (!v221)
  {
    goto LABEL_94;
  }

  v654 = v222;
LABEL_98:
  v659 = (v221 - 1) & v221;
  v225 = __clz(__rbit64(v221)) | (v222 << 6);
  v226 = *(*(v641 + 48) + 8 * v225);
  v227 = v685;
  v228 = v680;
  (*(v685 + 16))(v680, *(v641 + 56) + *(v685 + 72) * v225, TupleTypeMetadata3);
  v229 = TupleTypeMetadata2;
  v230 = *(TupleTypeMetadata2 + 48);
  v231 = v692;
  *v692 = v226;
  v232 = *(v227 + 32);
  v216 = v229;
  v232(v231 + v230, v228, TupleTypeMetadata3);
  a7 = v231;
  v233 = 0;
LABEL_99:
  v234 = *(v216 - 8);
  (*(v234 + 56))(a7, v233, 1, v216);
  (*v639)(v220, a7, v682);
  if ((*(v234 + 48))(v220, 1, v216) == 1)
  {

    v421 = 0;
    v710 = (v715 + 40);
    v422 = *(v715 + 32);
    v730 = (v667 + 8);
    v711 = (v673 + 16);
    v719 = v727 + 32;
    *&v423 = 134350594;
    v707 = v423;
    v424 = v643;
    v425 = v646;
    v722 = v422;
    while (1)
    {
      if (v421 >= v424)
      {
        goto LABEL_375;
      }

      v427 = (v421 + 1);
      if (__OFADD__(v421, 1))
      {
        goto LABEL_376;
      }

      v428 = v679;
      Array.subscript.getter();
      v429 = v422(v19, v715);
      v431 = v756;
      if (!*(v756 + 16))
      {
        (*v645)(v428, v19);

LABEL_229:
        v426 = v718;
        goto LABEL_230;
      }

      v432 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_1(v429, v430);
      v434 = v433;

      if ((v434 & 1) == 0)
      {
        (*v645)(v679, v19);
        goto LABEL_229;
      }

      v723 = (v421 + 1);
      v435 = *(*(v431 + 7) + 8 * v432);
      v436 = v715;
      v437 = *(v715 + 40);
      v437(v19, v715);
      v740 = v435;
      Array.subscript.getter();
      v438 = v684;
      v437(v19, v436);
      v439 = v686;
      v440 = dispatch thunk of Collection.count.getter();
      v441 = *v730;
      (*v730)(v438, v439);
      v442 = dispatch thunk of Collection.count.getter();
      v738 = v440;
      v443 = __OFSUB__(v442, v440);
      v444 = v442 - v440;
      if (v443)
      {
        goto LABEL_377;
      }

      v445 = v661;
      if (v444 < 0)
      {
        v443 = __OFSUB__(0, v444);
        v444 = -v444;
        if (v443)
        {
          goto LABEL_380;
        }
      }

      v736 = v442;
      swift_beginAccess();
      v724 = v747;
      v446 = specialized Dictionary.subscript.getter(v740, v747);
      v448 = v447;
      swift_endAccess();
      if (v448)
      {
        v449 = 0;
      }

      else
      {
        v449 = v446;
      }

      v739 = v444 + v449;
      if (__OFADD__(v444, v449))
      {
        goto LABEL_378;
      }

      v737 = dispatch thunk of Collection.count.getter();
      v450 = *v711;
      v451 = v721;
      (*v711)(v445, v679, v721);
      v452 = v662;
      v708 = v450;
      v450(v662, v671, v451);
      v453 = Logger.logObject.getter();
      v454 = static os_log_type_t.default.getter();
      v455 = os_log_type_enabled(v453, v454);
      *&v728 = v441;
      v709 = v431;
      if (v455)
      {
        v456 = swift_slowAlloc();
        v735 = swift_slowAlloc();
        v745 = v735;
        *v456 = v707;
        *(v456 + 4) = v421;
        *(v456 + 12) = 2082;
        WitnessTable = v453;
        LODWORD(v733) = v454;
        v457 = v722;
        v458 = v722(v451, v715);
        v459 = v445;
        v461 = v460;
        v462 = *v645;
        (*v645)(v459, v451);
        v463 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v458, v461, &v745);

        *(v456 + 14) = v463;
        *(v456 + 22) = 2050;
        *(v456 + 24) = v740;
        *(v456 + 32) = 2080;
        v464 = v662;
        v465 = v457(v451, v715);
        v467 = v466;
        *&v726 = v462;
        v462(v464, v451);
        v468 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v465, v467, &v745);

        *(v456 + 34) = v468;
        *(v456 + 42) = 2050;
        *(v456 + 44) = v444;
        *(v456 + 52) = 2050;
        *(v456 + 54) = v739;
        *(v456 + 62) = 2082;
        v748 = specialized Dictionary.subscript.getter(v740, v724);
        LOBYTE(v749) = v469 & 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, &_sSiSgMR);
        v470 = String.init<A>(describing:)();
        v472 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v470, v471, &v745);

        *(v456 + 64) = v472;
        v473 = WitnessTable;
        _os_log_impl(&_mh_execute_header, WitnessTable, v733, "Section %{public}ld(%{public}s) mapped to section %{public}ld(%s): difference=%{public}ld adjustedDifference=%{public}ld diffAdjustmentMap=%{public}s", v456, 0x48u);
        swift_arrayDestroy();

        v436 = v715;
      }

      else
      {

        v474 = *v645;
        (*v645)(v452, v451);
        *&v726 = v474;
        v474(v445, v451);
      }

      v748 = _swiftEmptyArrayStorage;
      v475 = v738;
      if (v736 > v738)
      {
        v475 = v736;
      }

      v476 = (v475 - 1);
      if (__OFSUB__(v475, 1))
      {
        goto LABEL_379;
      }

      swift_beginAccess();
      isa = _swiftEmptyArrayStorage[2];
      if (isa >= v739)
      {
        v561 = _swiftEmptyArrayStorage;
        v527 = v683;
        goto LABEL_307;
      }

      v735 = v421 + v725;
      v478 = __OFADD__(v421, v725);
      LODWORD(v736) = v478;
      v479 = v740;
      if (v737 >= v738)
      {
        v479 = v421;
      }

      v732 = (v479 + v725);
      v480 = __OFADD__(v479, v725);
      LODWORD(v733) = v480;
      WitnessTable = &_swiftEmptyArrayStorage[2];
      v731 = _swiftEmptyArrayStorage;
      do
      {
        while (1)
        {
          if (v476 < 0)
          {

            v613 = v660;
            v614 = v679;
            v708(v660, v679, v451);
            v615 = Logger.logObject.getter();
            v616 = static os_log_type_t.fault.getter();
            if (os_log_type_enabled(v615, v616))
            {
              v617 = swift_slowAlloc();
              v618 = swift_slowAlloc();
              v745 = v618;
              *v617 = v666;
              v619 = v722(v451, v436);
              v621 = v620;
              v622 = v726;
              (v726)(v613, v451);
              v623 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v619, v621, &v745);

              *(v617 + 4) = v623;
              _os_log_impl(&_mh_execute_header, v615, v616, "We ran out of items while trying to build index paths for section with identifier %{public}s", v617, 0xCu);
              __swift_destroy_boxed_opaque_existential_0Tm(v618);

              outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v696, v718);

              outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v713, v714);
              outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v642, v646);
              v622(v671, v451);
              (v728)(v672, v686);
              v622(v614, v451);
            }

            else
            {

              outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v696, v718);

              outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v713, v714);
              outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v642, v646);
              v624 = v726;
              (v726)(v613, v451);
              v624(v671, v451);
              (v728)(v672, v686);
              v624(v614, v451);
            }

            (*(v674 + 8))(v678, v705);

            goto LABEL_193;
          }

          if (v736)
          {
            __break(1u);
LABEL_372:
            __break(1u);
LABEL_373:
            __break(1u);
LABEL_374:
            __break(1u);
LABEL_375:
            __break(1u);
LABEL_376:
            __break(1u);
LABEL_377:
            __break(1u);
LABEL_378:
            __break(1u);
LABEL_379:
            __break(1u);
LABEL_380:
            __break(1u);

            __break(1u);
            return;
          }

          IndexPath.init(item:section:)();
          v481 = v753;
          v482 = *(v753 + 2);
          v740 = v476;
          if (v482)
          {
            lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
            v483 = dispatch thunk of Hashable._rawHashValue(seed:)();
            v484 = -1 << v481[32];
            v485 = v483 & ~v484;
            if ((*&v481[((v485 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v485))
            {
              v486 = ~v484;
              v487 = *(v727 + 72);
              v488 = *(v727 + 16);
              while (1)
              {
                v489 = v741;
                v488(v741, *(v481 + 6) + v487 * v485, v744);
                lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
                v490 = dispatch thunk of static Equatable.== infix(_:_:)();
                v491 = *v742;
                (*v742)(v489, v744);
                if (v490)
                {
                  break;
                }

                v485 = (v485 + 1) & v486;
                if (((*&v481[((v485 >> 3) & 0xFFFFFFFFFFFFFF8) + 56] >> v485) & 1) == 0)
                {
                  goto LABEL_266;
                }
              }

              v509 = v663;
              v510 = v712;
              v488(v663, v712, v744);
              v511 = Logger.logObject.getter();
              v512 = static os_log_type_t.default.getter();
              if (os_log_type_enabled(v511, v512))
              {
                v513 = swift_slowAlloc();
                v514 = swift_slowAlloc();
                v745 = v514;
                *v513 = v666;
                lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
                v515 = v744;
                v516 = dispatch thunk of CustomStringConvertible.description.getter();
                v518 = v517;
                v491(v509, v515);
                v519 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v516, v518, &v745);

                *(v513 + 4) = v519;
                _os_log_impl(&_mh_execute_header, v511, v512, "%{public}s contained in the visible index paths set, skipping", v513, 0xCu);
                __swift_destroy_boxed_opaque_existential_0Tm(v514);

                v491(v510, v515);
              }

              else
              {

                v526 = v744;
                v491(v509, v744);
                v491(v510, v526);
              }

              v451 = v721;
              v527 = v683;
              v493 = v740;
              goto LABEL_297;
            }
          }

LABEL_266:
          if (v733)
          {
            goto LABEL_374;
          }

          v492 = v681;
          v493 = v740;
          IndexPath.init(item:section:)();
          v494 = (*(v727 + 80) + 32) & ~*(v727 + 80);
          if (v737 < v738)
          {
            break;
          }

          v503 = *v717;
          v502 = v717[1];
          v504 = v502 + v494;
          v505 = *(v502 + 16);
          if (*v717)
          {

            specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v492, v504, v505, (v503 + 16), v503 + 32);
            v507 = v506;

            if (v507)
            {
              goto LABEL_299;
            }

            v508 = *v743;
          }

          else
          {
            if (!v505)
            {
              goto LABEL_299;
            }

            v523 = *(v727 + 72);
            v508 = *(v727 + 16);
            while (1)
            {
              v524 = v741;
              v508(v741, v504, v744);
              lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
              v525 = dispatch thunk of static Equatable.== infix(_:_:)();
              (*v742)(v524, v744);
              if (v525)
              {
                break;
              }

              v504 += v523;
              if (!--v505)
              {
                goto LABEL_299;
              }
            }

            v493 = v740;
          }

          v528 = v669;
          v508(v669, v492, v744);
          v529 = Logger.logObject.getter();
          v543 = static os_log_type_t.default.getter();
          if (!os_log_type_enabled(v529, v543))
          {
LABEL_295:

            v549 = *v742;
            v550 = v744;
            (*v742)(v528, v744);
            v549(v712, v550);
            v549(v492, v550);
            goto LABEL_296;
          }

          v531 = swift_slowAlloc();
          v544 = v528;
          v533 = swift_slowAlloc();
          v745 = v533;
          *v531 = v666;
          lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
          v534 = v744;
          v545 = dispatch thunk of CustomStringConvertible.description.getter();
          v547 = v546;
          v538 = *v742;
          (*v742)(v544, v534);
          v548 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v545, v547, &v745);

          *(v531 + 4) = v548;
          v540 = v543;
          v541 = v529;
          v542 = "%{public}s contained in the deleted index paths set, skipping";
LABEL_294:
          _os_log_impl(&_mh_execute_header, v541, v540, v542, v531, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v533);

          v538(v712, v534);
          v538(v681, v534);
          v493 = v740;
LABEL_296:
          v451 = v721;
          v527 = v683;
LABEL_297:
          v476 = v493 - 1;
          isa = WitnessTable->isa;
          v436 = v715;
          if (WitnessTable->isa >= v739)
          {
            goto LABEL_306;
          }
        }

        v496 = *v706;
        v495 = v706[1];
        v497 = v495 + v494;
        v498 = *(v495 + 16);
        if (*v706)
        {

          specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v492, v497, v498, (v496 + 16), v496 + 32);
          v500 = v499;

          if ((v500 & 1) == 0)
          {
            v501 = *v743;
LABEL_289:
            v528 = v668;
            v501(v668, v492, v744);
            v529 = Logger.logObject.getter();
            v530 = static os_log_type_t.default.getter();
            if (!os_log_type_enabled(v529, v530))
            {
              goto LABEL_295;
            }

            v531 = swift_slowAlloc();
            v532 = v528;
            v533 = swift_slowAlloc();
            v745 = v533;
            *v531 = v666;
            lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
            v534 = v744;
            v535 = dispatch thunk of CustomStringConvertible.description.getter();
            v537 = v536;
            v538 = *v742;
            (*v742)(v532, v534);
            v539 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v535, v537, &v745);

            *(v531 + 4) = v539;
            v540 = v530;
            v541 = v529;
            v542 = "%{public}s contained in the inserted index paths set, skipping";
            goto LABEL_294;
          }
        }

        else if (v498)
        {
          v520 = *(v727 + 72);
          v501 = *(v727 + 16);
          while (1)
          {
            v521 = v741;
            v501(v741, v497, v744);
            lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
            v522 = dispatch thunk of static Equatable.== infix(_:_:)();
            (*v742)(v521, v744);
            if (v522)
            {
              break;
            }

            v497 += v520;
            if (!--v498)
            {
              goto LABEL_299;
            }
          }

          v493 = v740;
          goto LABEL_289;
        }

LABEL_299:
        (*v743)(v670, v492, v744);
        v551 = v731;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v551 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v551[2].isa + 1, 1, v551);
        }

        v451 = v721;
        v436 = v715;
        v552 = v712;
        v553 = v740;
        v555 = v551[2].isa;
        v554 = v551[3].isa;
        if (v555 >= v554 >> 1)
        {
          v551 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v554 > 1), v555 + 1, 1, v551);
        }

        v551[2].isa = (v555 + 1);
        v556 = v551 + 2;
        v557 = v727;
        v558 = v551 + v494 + *(v727 + 72) * v555;
        v559 = v744;
        (*(v727 + 32))(v558, v670, v744);
        v731 = v551;
        v748 = v551;
        v560 = *(v557 + 8);
        v560(v552, v559);
        v560(v681, v559);
        v476 = v553 - 1;
        WitnessTable = v551 + 2;
        isa = v551[2].isa;
      }

      while (v556->isa < v739);
      v527 = v683;
LABEL_306:
      v561 = v731;
LABEL_307:
      v731 = v561;

      if (v737 >= v738)
      {
        if (isa)
        {
          v578 = 0;
          v579 = *(v727 + 72);
          v580 = (*(v727 + 80) + 32) & ~*(v727 + 80);
          v581 = v731 + v580;
          v582 = *(v727 + 16);
          v740 = (v731 + v580);
          v582(v527, v731 + v580, v744);
          while (1)
          {
            v584 = *v717;
            v583 = v717[1];
            v585 = v583 + v580;
            v586 = *(v583 + 16);
            if (*v717)
            {

              specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v527, v585, v586, (v584 + 16), v584 + 32);
              v588 = v587;
              v590 = v589;

              if (v588)
              {
                v527 = v683;
                goto LABEL_336;
              }

              v527 = v683;
            }

            else if (v586)
            {
              while (1)
              {
                v591 = v741;
                v582(v741, v585, v744);
                lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
                v592 = dispatch thunk of static Equatable.== infix(_:_:)();
                (*v742)(v591, v744);
                if (v592)
                {
                  break;
                }

                v585 += v579;
                if (!--v586)
                {
                  v590 = 0;
                  v581 = v740;
                  goto LABEL_336;
                }
              }

              v581 = v740;
            }

            else
            {
              v590 = 0;
LABEL_336:
              specialized OrderedSet._appendNew(_:in:)(v527, v590);
            }

            v578 = (v578 + 1);
            (*v742)(v527, v744);
            if (v578 == isa)
            {
              break;
            }

            v582(v527, (v581 + v579 * v578), v744);
          }
        }

        v593 = Logger.logObject.getter();
        v604 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v593, v604))
        {
          v595 = swift_slowAlloc();
          v596 = swift_slowAlloc();
          v745 = v596;
          *v595 = v666;

          v605 = Array.description.getter();
          v607 = v606;

          v608 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v605, v607, &v745);

          *(v595 + 4) = v608;
          v601 = v604;
          v602 = v593;
          v603 = "Non visible adjustment: deleting %{public}s";
LABEL_342:
          _os_log_impl(&_mh_execute_header, v602, v601, v603, v595, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v596);
        }
      }

      else
      {
        if (isa)
        {
          v562 = 0;
          v563 = *(v727 + 72);
          v564 = (*(v727 + 80) + 32) & ~*(v727 + 80);
          v565 = v731 + v564;
          v566 = *(v727 + 16);
          v567 = v677;
          v740 = (v731 + v564);
          v566(v677, v731 + v564, v744);
          while (1)
          {
            v569 = *v706;
            v568 = v706[1];
            v570 = v568 + v564;
            v571 = *(v568 + 16);
            if (*v706)
            {

              specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v567, v570, v571, (v569 + 16), v569 + 32);
              v573 = v572;
              v575 = v574;

              if (v573)
              {
                v567 = v677;
                goto LABEL_321;
              }

              v567 = v677;
            }

            else if (v571)
            {
              while (1)
              {
                v576 = v741;
                v566(v741, v570, v744);
                lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
                v577 = dispatch thunk of static Equatable.== infix(_:_:)();
                (*v742)(v576, v744);
                if (v577)
                {
                  break;
                }

                v570 += v563;
                if (!--v571)
                {
                  v575 = 0;
                  v565 = v740;
                  goto LABEL_321;
                }
              }

              v565 = v740;
            }

            else
            {
              v575 = 0;
LABEL_321:
              specialized OrderedSet._appendNew(_:in:)(v567, v575);
            }

            v562 = (v562 + 1);
            (*v742)(v567, v744);
            if (v562 == isa)
            {
              break;
            }

            v566(v567, (v565 + v563 * v562), v744);
          }
        }

        v593 = Logger.logObject.getter();
        v594 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v593, v594))
        {
          v595 = swift_slowAlloc();
          v596 = swift_slowAlloc();
          v745 = v596;
          *v595 = v666;

          v597 = Array.description.getter();
          v599 = v598;

          v600 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v597, v599, &v745);

          *(v595 + 4) = v600;
          v601 = v594;
          v602 = v593;
          v603 = "Non visible adjustment: inserting %{public}s";
          goto LABEL_342;
        }
      }

      v19 = v721;
      v609 = v726;
      (v726)(v671, v721);
      (v728)(v672, v686);
      v609(v679, v19);

      v425 = v646;
      v426 = v718;
      v422 = v722;
      v427 = v723;
LABEL_230:
      v424 = v643;
      v421 = v427;
      if (v427 == v643)
      {

        outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v696, v426);

        outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v713, v714);

        outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v642, v425);

        (*(v674 + 8))(v678, v705);

        goto LABEL_352;
      }
    }
  }

  v235 = *v220;
  (*v658)(v699, v220 + *(v216 + 48), TupleTypeMetadata3);
  v733 = v235;
  if (__OFSUB__(v235, v725))
  {
    goto LABEL_367;
  }

  Array.subscript.getter();
  v236 = (*(v715 + 32))(v19);
  v238 = *(v756 + 16);
  v664 = v756;
  if (v238 && (v239 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_1(v236, v237), (v240 & 1) != 0))
  {
    v241 = *(*(v664 + 56) + 8 * v239);

    v242 = swift_isUniquelyReferenced_nonNull_native();
    v748 = v747;
    v687 = v241;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(0, v241, v242);
    LODWORD(v726) = 0;
    v747 = v748;
  }

  else
  {

    v687 = 0;
    LODWORD(v726) = 1;
  }

  (*v655)(v219, v699, TupleTypeMetadata3);
  v243 = *(v695 + 36);
  a7 = WitnessTable;
  dispatch thunk of Collection.startIndex.getter();
  dispatch thunk of Collection.endIndex.getter();
  if (static CollectionDifference.Index.== infix(_:_:)())
  {
LABEL_87:
    (*v637)(v219, v695);
    (*v645)(v694, v19);
    (*v638)(v699, TupleTypeMetadata3);
    v216 = TupleTypeMetadata2;
    v213 = v636;
    v217 = v654;
    goto LABEL_88;
  }

  v675 = v687 + v725;
  v244 = __OFADD__(v687, v725);
  LODWORD(v676) = v244;
  v735 = v243;
  while (1)
  {
    v248 = dispatch thunk of Collection.subscript.read();
    v249 = v730;
    v250 = v731;
    (*v724)(v730);
    v248(&v748, 0);
    dispatch thunk of Collection.formIndex(after:)();
    v251 = v740;
    (*v723)(v740, v249, v250);
    LODWORD(v248) = swift_getEnumCaseMultiPayload();
    v252 = *v251;
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSiSgMd, &_sSiSgMR);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    v253 = v251 + *(TupleTypeMetadata3 + 64);
    v254 = *v253;
    a8 = v253[8];
    v255 = v754[0];
    v256 = *(v754[0] + 16);
    if (v248 != 1)
    {
      if (v256)
      {
        v259 = specialized __RawDictionaryStorage.find<A>(_:)(v733);
        if (v260)
        {
          v256 = *(*(v255 + 56) + 8 * v259);
        }

        else
        {
          v256 = 0;
        }
      }

      if (__OFADD__(v252, v256))
      {
        __break(1u);
LABEL_357:
        __break(1u);
        goto LABEL_358;
      }

      a7 = v740 + *(TupleTypeMetadata3 + 48);
      if (v726)
      {
        v275 = Logger.logObject.getter();
        v276 = static os_log_type_t.default.getter();
        v277 = os_log_type_enabled(v275, v276);
        TupleTypeMetadata3 = v736;
        if (v277)
        {
          v278 = swift_slowAlloc();
          *v278 = v665;
          *(v278 + 4) = v733;
          *(v278 + 12) = 2050;
          *(v278 + 14) = v252;
          goto LABEL_144;
        }

LABEL_145:

        a8 = v739;
        v219 = v738;
        v220 = v732;
        goto LABEL_113;
      }

      *&v728 = v740 + *(TupleTypeMetadata3 + 48);
      if (a8)
      {
        v280 = specialized Dictionary.subscript.modify(&v748, v687);
        if (*(v279 + 8))
        {
          (v280)(&v748, 0);
          a7 = v698;
        }

        else
        {
          a7 = v698;
          if (__OFADD__(*v279, 1))
          {
            goto LABEL_369;
          }

          ++*v279;
          (v280)(&v748, 0);
        }

        if (v676)
        {
          goto LABEL_363;
        }

        IndexPath.init(item:section:)();
        v343 = *v706;
        v342 = v706[1];
        v344 = v342 + ((*(v727 + 80) + 32) & ~*(v727 + 80));
        v345 = *(v342 + 16);
        if (*v706)
        {

          specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a7, v344, v345, (v343 + 16), v343 + 32);
          v347 = v346;
          v349 = v348;

          if ((v347 & 1) == 0)
          {
            goto LABEL_185;
          }
        }

        else
        {
          if (v345)
          {
            v368 = *(v727 + 72);
            v369 = *(v727 + 16);
            do
            {
              v370 = v741;
              v371 = v744;
              v369(v741, v344, v744);
              lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
              v372 = dispatch thunk of static Equatable.== infix(_:_:)();
              (*v742)(v370, v371);
              if (v372)
              {
                goto LABEL_185;
              }

              v344 += v368;
            }

            while (--v345);
          }

          v349 = 0;
        }

        specialized OrderedSet._appendNew(_:in:)(a7, v349);
LABEL_185:
        v373 = v688;
        (*v743)(v688, a7, v744);
        v374 = Logger.logObject.getter();
        v375 = static os_log_type_t.default.getter();
        if (os_log_type_enabled(v374, v375))
        {
          v376 = swift_slowAlloc();
          v377 = swift_slowAlloc();
          v748 = v377;
          *v376 = v666;
          lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
          v378 = v744;
          v379 = dispatch thunk of CustomStringConvertible.description.getter();
          v381 = v380;
          v382 = *v742;
          (*v742)(v373, v378);
          v383 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v379, v381, &v748);

          *(v376 + 4) = v383;
          _os_log_impl(&_mh_execute_header, v374, v375, "Inserting item %{public}s", v376, 0xCu);
          __swift_destroy_boxed_opaque_existential_0Tm(v377);
          v19 = v721;

          v382(v698, v378);
        }

        else
        {

          v384 = *v742;
          v385 = v744;
          (*v742)(v373, v744);
          v384(a7, v385);
        }

        a8 = v739;
        TupleTypeMetadata3 = v736;
        v219 = v738;
        v220 = v732;
        goto LABEL_112;
      }

      v282 = v711;
      IndexPath.init(item:section:)();
      if (v676)
      {
        goto LABEL_362;
      }

      v283 = v710;
      IndexPath.init(item:section:)();
      v284 = *v743;
      v285 = v690;
      v286 = v282;
      v287 = v744;
      (*v743)(v690, v286, v744);
      v288 = v697;
      v284(v697, v283, v287);
      v289 = Logger.logObject.getter();
      v290 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v289, v290))
      {
        v291 = swift_slowAlloc();
        v651 = swift_slowAlloc();
        v748 = v651;
        *v291 = v653;
        lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
        v292 = v744;
        v293 = dispatch thunk of CustomStringConvertible.description.getter();
        v294 = v285;
        v296 = v295;
        v297 = *v742;
        (*v742)(v294, v292);
        v298 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v293, v296, &v748);

        *(v291 + 4) = v298;
        *(v291 + 12) = 2082;
        v299 = v697;
        v300 = dispatch thunk of CustomStringConvertible.description.getter();
        v302 = v301;
        v297(v299, v292);
        v303 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v300, v302, &v748);

        *(v291 + 14) = v303;
        _os_log_impl(&_mh_execute_header, v289, v290, "[Insert] Moving item %{public}s to %{public}s", v291, 0x16u);
        swift_arrayDestroy();
      }

      else
      {

        v297 = *v742;
        v350 = v288;
        v351 = v744;
        (*v742)(v350, v744);
        v297(v285, v351);
      }

      a8 = v739;
      v219 = v738;
      v220 = v732;
      v352 = *(v703 + 48);
      v353 = v704;
      v354 = v744;
      v284(v704, v711, v744);
      v284(&v353[v352], v710, v354);
      v355 = *&v737[v719];
      v356 = swift_isUniquelyReferenced_nonNull_native();
      v19 = v721;
      if ((v356 & 1) == 0)
      {
        v355 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v355[2] + 1, 1, v355);
      }

      v358 = v355[2];
      v357 = v355[3];
      if (v358 >= v357 >> 1)
      {
        v355 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v357 > 1), v358 + 1, 1, v355);
      }

      v245 = v744;
      v297(v710, v744);
      v297(v711, v245);
      v355[2] = v358 + 1;
      v246 = v355 + ((*(v702 + 80) + 32) & ~*(v702 + 80)) + *(v702 + 72) * v358;
      v247 = &v732;
      goto LABEL_111;
    }

    if (v256)
    {
      v257 = specialized __RawDictionaryStorage.find<A>(_:)(v733);
      if (v258)
      {
        v256 = *(*(v255 + 56) + 8 * v257);
      }

      else
      {
        v256 = 0;
      }
    }

    if (__OFADD__(v252, v256))
    {
      goto LABEL_357;
    }

    if (v726)
    {
      break;
    }

    v262 = specialized Dictionary.subscript.modify(&v748, v687);
    if (*(v261 + 8) != 1)
    {
      if (__OFSUB__(*v261, 1))
      {
        goto LABEL_361;
      }

      --*v261;
    }

    (v262)(&v748, 0);
    *&v728 = v740 + *(TupleTypeMetadata3 + 48);
    if (a8)
    {
      goto LABEL_130;
    }

    v19 = v707;
    IndexPath.init(item:section:)();
    if (v676)
    {
      goto LABEL_364;
    }

    v304 = v709;
    IndexPath.init(item:section:)();
    v305 = v744;
    v306 = *v743;
    v307 = v689;
    (*v743)(v689, v19, v744);
    v308 = v652;
    v306(v652, v304, v305);
    v309 = Logger.logObject.getter();
    v310 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v309, v310))
    {
      v311 = swift_slowAlloc();
      v651 = swift_slowAlloc();
      v748 = v651;
      *v311 = v653;
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v648 = v309;
      v312 = v744;
      v313 = dispatch thunk of CustomStringConvertible.description.getter();
      LODWORD(v647) = v310;
      v315 = v314;
      v316 = *v742;
      (*v742)(v307, v312);
      v317 = v313;
      v19 = v707;
      v318 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v317, v315, &v748);

      *(v311 + 4) = v318;
      *(v311 + 12) = 2082;
      v319 = dispatch thunk of CustomStringConvertible.description.getter();
      v321 = v320;
      v316(v308, v312);
      v322 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v319, v321, &v748);

      *(v311 + 14) = v322;
      v323 = v648;
      _os_log_impl(&_mh_execute_header, v648, v647, "[Remove] Moving item %{public}s to %{public}s", v311, 0x16u);
      swift_arrayDestroy();
    }

    else
    {

      v316 = *v742;
      v359 = v308;
      v360 = v744;
      (*v742)(v359, v744);
      v316(v307, v360);
    }

    v219 = v738;
    v220 = v732;
    v361 = *(v703 + 48);
    v362 = v701;
    v363 = v744;
    v306(v701, v19, v744);
    v306(&v362[v361], v709, v363);
    v355 = *&v737[v719];
    v364 = swift_isUniquelyReferenced_nonNull_native();
    v19 = v721;
    a8 = v739;
    if ((v364 & 1) == 0)
    {
      v355 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v355[2] + 1, 1, v355);
    }

    v366 = v355[2];
    v365 = v355[3];
    if (v366 >= v365 >> 1)
    {
      v355 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v365 > 1), v366 + 1, 1, v355);
    }

    v367 = v744;
    v316(v709, v744);
    v316(v707, v367);
    v355[2] = v366 + 1;
    v246 = v355 + ((*(v702 + 80) + 32) & ~*(v702 + 80)) + *(v702 + 72) * v366;
    v247 = &v729;
LABEL_111:
    outlined init with take of (IndexPath, IndexPath)(*(v247 - 32), v246);
    *&v737[v719] = v355;
    TupleTypeMetadata3 = v736;
LABEL_112:
    a7 = v728;
LABEL_113:
    (*v722)(a7, a8);
    a7 = WitnessTable;
    dispatch thunk of Collection.endIndex.getter();
    if (static CollectionDifference.Index.== infix(_:_:)())
    {
      goto LABEL_87;
    }
  }

  a7 = v740 + *(TupleTypeMetadata3 + 48);
  if (!a8)
  {
    v275 = Logger.logObject.getter();
    v276 = static os_log_type_t.default.getter();
    v281 = os_log_type_enabled(v275, v276);
    TupleTypeMetadata3 = v736;
    if (v281)
    {
      v278 = swift_slowAlloc();
      *v278 = v665;
      *(v278 + 4) = v733;
      *(v278 + 12) = 2050;
      *(v278 + 14) = v254;
LABEL_144:
      _os_log_impl(&_mh_execute_header, v275, v276, "Skipping insert for [%{public}ld,%{public}ld]", v278, 0x16u);
    }

    goto LABEL_145;
  }

  *&v728 = v740 + *(TupleTypeMetadata3 + 48);
LABEL_130:
  v263 = v708;
  IndexPath.init(item:section:)();
  v264 = specialized Set.contains(_:)(v263, v753);
  v265 = v739;
  v266 = v738;
  if (v264)
  {
    v268 = *v717;
    v267 = v717[1];
    v269 = v267 + ((*(v727 + 80) + 32) & ~*(v727 + 80));
    v270 = *(v267 + 16);
    if (*v717)
    {

      specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v263, v269, v270, (v268 + 16), v268 + 32);
      v272 = v271;
      v274 = v273;

      if ((v272 & 1) == 0)
      {
        goto LABEL_158;
      }
    }

    else
    {
      if (v270)
      {
        v324 = *(v727 + 72);
        v325 = *(v727 + 16);
        do
        {
          v326 = v741;
          v327 = v744;
          v325(v741, v269, v744);
          lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
          v328 = dispatch thunk of static Equatable.== infix(_:_:)();
          (*v742)(v326, v327);
          if (v328)
          {
            goto LABEL_158;
          }

          v269 += v324;
        }

        while (--v270);
      }

      v274 = 0;
    }

    specialized OrderedSet._appendNew(_:in:)(v263, v274);
LABEL_158:
    v329 = v700;
    (*v743)(v700, v263, v744);
    v330 = Logger.logObject.getter();
    v331 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v330, v331))
    {
      v332 = swift_slowAlloc();
      v333 = swift_slowAlloc();
      v748 = v333;
      *v332 = v666;
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      v334 = v744;
      v335 = dispatch thunk of CustomStringConvertible.description.getter();
      v337 = v336;
      v338 = *v742;
      (*v742)(v329, v334);
      v339 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v335, v337, &v748);

      *(v332 + 4) = v339;
      _os_log_impl(&_mh_execute_header, v330, v331, "Deleting item %{public}s", v332, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v333);
      v19 = v721;

      v338(v708, v334);
    }

    else
    {

      v340 = *v742;
      v341 = v744;
      (*v742)(v329, v744);
      v340(v263, v341);
    }

    a8 = v739;
    TupleTypeMetadata3 = v736;
    v219 = v738;
    v220 = v732;
    goto LABEL_112;
  }

  swift_bridgeObjectRelease_n();
  swift_bridgeObjectRelease_n();

  v386 = Logger.logObject.getter();
  v387 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v386, v387))
  {
    v388 = swift_slowAlloc();
    *v388 = 0;
    _os_log_impl(&_mh_execute_header, v386, v387, "Tried to delete an index path from the visible items diff that is not present in the visible index paths set. The visible index paths are likely not consecutive and the diff would be inconsistent, bailing and reloading data.", v388, 2u);
    v265 = v739;
  }

  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v696, v718);

  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v713, v714);
  outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v642, v646);
  (*v637)(v266, v695);
  (*v645)(v694, v19);
  (*v638)(v699, v736);
  (*(v674 + 8))(v678, v705);
  (*v742)(v263, v744);
  *v737 = 1;
  (*v722)(v728, v265);

LABEL_193:
}

uint64_t closure #1 in implicit closure #3 in AIDiffingUpdate.init<A>(oldItems:newItems:visibleIndexPaths:startingSectionIndex:finalSectionIndex:modelUpdateHandler:identityComparator:visualComparator:)@<X0>(_BYTE *a5@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  result = dispatch thunk of static Equatable.== infix(_:_:)();
  *a5 = result & 1;
  return result;
}

uint64_t closure #2 in AIDiffingUpdate.init<A>(oldItems:newItems:visibleIndexPaths:startingSectionIndex:finalSectionIndex:modelUpdateHandler:identityComparator:visualComparator:)@<X0>(uint64_t a1@<X2>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v6 = *(a2 + 32);
  v7 = v6(a1, a2);
  specialized Set._Variant.insert(_:)(&v11, v7, v8);

  result = v6(a1, a2);
  *a3 = result;
  a3[1] = v10;
  return result;
}

uint64_t closure #3 in AIDiffingUpdate.init<A>(oldItems:newItems:visibleIndexPaths:startingSectionIndex:finalSectionIndex:modelUpdateHandler:identityComparator:visualComparator:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = *(a5 + 32);
  v10 = v9(a4, a5);
  v12 = v11;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v15 = *a3;
  *a3 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, v10, v12, isUniquelyReferenced_nonNull_native);

  *a3 = v15;

  return v9(a4, a5);
}

uint64_t (*specialized Dictionary.subscript.modify(uint64_t **a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = specialized Dictionary._Variant.subscript.modify(v4, a2);
  return Dictionary.subscript.modifyspecialized ;
}

uint64_t (*specialized Dictionary.subscript.modify(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = specialized Dictionary._Variant.subscript.modify(v8, a2, a3, a4);
  return Dictionary.subscript.modifyspecialized ;
}

void Dictionary.subscript.modifyspecialized (void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t closure #4 in AIDiffingUpdate.init<A>(oldItems:newItems:visibleIndexPaths:startingSectionIndex:finalSectionIndex:modelUpdateHandler:identityComparator:visualComparator:)(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, __n128), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t), uint64_t a6, uint64_t a7, uint64_t a8, uint64_t *a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v37 = a8;
  v19 = type metadata accessor for IndexPath();
  v20 = *(v19 - 8);
  v21 = __chkstk_darwin();
  v23 = &v34 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = a3(a1, a2, v21);
  if ((v24 & 1) == 0 || !a5)
  {
    return v24 & 1;
  }

  if (a5(a1, a2) & 1) != 0 || (v35 = v20, v36 = a7, swift_getAssociatedTypeWitness(), swift_getAssociatedConformanceWitness(), swift_getAssociatedTypeWitness(), swift_getAssociatedConformanceWitness(), v25 = OrderedSet._find(_:)(), (v26))
  {
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(a5, a6);
    return v24 & 1;
  }

  v27 = *a9;
  v28 = *(*a9 + 16);
  if (v28)
  {
    v29 = v25;
    v30 = specialized __RawDictionaryStorage.find<A>(_:)(a10);
    if (v31)
    {
      v28 = *(*(v27 + 56) + 8 * v30);
    }

    else
    {
      v28 = 0;
    }

    v25 = v29;
  }

  v32 = __OFADD__(v25, v28);
  result = v25 + v28;
  if (!v32)
  {
    IndexPath.init(item:section:)();
    type metadata accessor for AIDiffingUpdate(0);
    specialized OrderedSet._append(_:)(v23);
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(a5, a6);
    (*(v35 + 8))(v23, v19);
    return v24 & 1;
  }

  __break(1u);
  return result;
}

void UICollectionView.calculateAIDiff<A>(oldItems:newItems:startingSectionIndex:finalSectionIndex:modelUpdateHandler:identityComparator:visualComparator:)(NSObject *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (**a4)(uint64_t, uint64_t *, NSObject *, __n128)@<X3>, char a5@<W4>, unint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, void *a13, uint64_t a14)
{

  v20 = [v14 indexPathsForVisibleItems];
  type metadata accessor for IndexPath();
  v21 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  outlined copy of (@escaping @callee_guaranteed () -> ())?(a6, a7);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(a8, a10);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(a11, a12);
  AIDiffingUpdate.init<A>(oldItems:newItems:visibleIndexPaths:startingSectionIndex:finalSectionIndex:modelUpdateHandler:identityComparator:visualComparator:)(a1, a2, v21, a3, a4, a5 & 1, a6, a7, a9, a8, a10, a11, a12, a13, a14);
}

uint64_t UICollectionView.calculateAIDiff<A>(oldItems:newItems:sectionIndex:modelUpdateHandler:identityComparator:visualComparator:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (**a3)(uint64_t, uint64_t *, NSObject *, __n128)@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11)
{
  v51 = a4;
  v55 = a7;
  v56 = a8;
  v52 = a5;
  v57 = a9;
  v58 = a3;
  v47 = a1;
  v48 = a2;
  v53 = a10;
  v54 = a6;
  v11 = *(a11 - 8);
  __chkstk_darwin();
  v13 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for _DiffableSection(0, a11, v14, v15);
  v59 = *(v16 - 8);
  __chkstk_darwin();
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __chkstk_darwin();
  v21 = &v47 - v20;
  v22 = *(v11 + 16);
  v22(v13, v47, a11, v19);
  v23 = v21;
  v60 = v21;
  *v21 = 0;
  *(v21 + 1) = 0xE000000000000000;
  v24 = *(v11 + 32);
  v24(&v23[*(v16 + 44)], v13, a11);
  (v22)(v13, v48, a11);
  *v18 = 0;
  *(v18 + 1) = 0xE000000000000000;
  v25 = &v18[*(v16 + 44)];
  v49 = v18;
  v24(v25, v13, a11);
  type metadata accessor for _ContiguousArrayStorage();
  v26 = v59;
  swift_allocObject();
  v27 = static Array._adoptStorage(_:count:)();
  v28 = *(v26 + 16);
  v28(v29, v60, v16);
  _ss27_finalizeUninitializedArrayySayxGABnlF_0(v27, v16);
  v31 = v30;
  swift_allocObject();
  v32 = static Array._adoptStorage(_:count:)();
  v28(v33, v18, v16);
  _ss27_finalizeUninitializedArrayySayxGABnlF_0(v32, v16);
  v35 = v34;
  v36 = [v50 indexPathsForVisibleItems];
  type metadata accessor for IndexPath();
  v37 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v39 = v51;
  v38 = v52;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v51, v52);
  v40 = v54;
  v41 = v55;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v54, v55);
  v42 = v56;
  v43 = v53;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v56, v53);
  WitnessTable = swift_getWitnessTable();
  AIDiffingUpdate.init<A>(oldItems:newItems:visibleIndexPaths:startingSectionIndex:finalSectionIndex:modelUpdateHandler:identityComparator:visualComparator:)(v31, v35, v37, v58, v58, 0, v39, v38, v57, v40, v41, v42, v43, v16, WitnessTable);
  v45 = *(v59 + 8);
  v45(v49, v16);
  return v45(v60, v16);
}

uint64_t UICollectionView.performSectionedAIDiff<A>(oldItems:newItems:startingSectionIndex:finalSectionIndex:animated:modelUpdateHandler:identityComparator:visualComparator:alongsideUpdates:completion:)(NSObject *a1, uint64_t a2, uint64_t a3, void (**a4)(uint64_t, uint64_t *, NSObject *, __n128), int a5, int a6, uint64_t a7, uint64_t a8, __n128 a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, void (*a14)(void), uint64_t a15, void (*a16)(uint64_t), uint64_t a17, void *a18, uint64_t a19)
{
  v39 = a3;
  v33 = a7;
  v34 = a8;
  v45 = a6;
  v38 = a5;
  v30 = a1;
  v43 = a15;
  v44 = a14;
  v42 = a16;
  v40 = a4;
  v41 = a17;
  v35 = a19;
  v36 = a18;
  v31 = a10;
  v32 = a2;
  v37 = *(type metadata accessor for AIDiffingUpdate(0) - 8);
  __chkstk_darwin();
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);

  v22 = [v19 indexPathsForVisibleItems];
  type metadata accessor for IndexPath();
  v23 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v24 = v33;
  v25 = v34;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v33, v34);
  v26 = v31;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v31, a11);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(a12, a13);
  AIDiffingUpdate.init<A>(oldItems:newItems:visibleIndexPaths:startingSectionIndex:finalSectionIndex:modelUpdateHandler:identityComparator:visualComparator:)(v30, v32, v23, v39, v40, v38 & 1, v24, v25, v21, v26, a11, a12, a13, v36, v35);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14MusicUtilities15AIDiffingUpdateVGMd, &_ss23_ContiguousArrayStorageCy14MusicUtilities15AIDiffingUpdateVGMR);
  v27 = (*(v37 + 80) + 32) & ~*(v37 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1004F2400;
  outlined init with copy of AIDiffingUpdate(v21, v28 + v27);
  UICollectionView.applyUpdates(_:animated:alongsideUpdates:completion:)(v28, v45, v44, v43, v42, v41);

  return outlined destroy of AIDiffingUpdate(v21);
}

uint64_t UICollectionView.applyUpdates(_:animated:alongsideUpdates:completion:)(uint64_t a1, int a2, void (*a3)(void), uint64_t a4, void (*a5)(uint64_t), uint64_t a6)
{
  v165 = a4;
  v162 = a3;
  v159 = a2;
  v10 = type metadata accessor for IndexSet();
  v160 = *(v10 - 8);
  __chkstk_darwin();
  v158 = &v155 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for AIDiffingUpdate(0);
  v13 = *(v12 - 1);
  __chkstk_darwin();
  v15 = &v155 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v17 = &v155 - v16;
  v161 = v6;
  swift_unknownObjectWeakInit();
  if (one-time initialization token for aiDiff != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  v19 = __swift_project_value_buffer(v18, static Logger.aiDiff);

  v164 = v19;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.default.getter();
  v22 = os_log_type_enabled(v20, v21);
  v166 = a6;
  v163 = a5;
  if (v22)
  {
    v23 = swift_slowAlloc();
    *v23 = 134217984;
    *(v23 + 4) = *(a1 + 16);

    _os_log_impl(&_mh_execute_header, v20, v21, "applyUpdates called with %ld updates", v23, 0xCu);
  }

  else
  {
  }

  v172 = swift_allocBox();
  v179 = v24;
  IndexSet.init()();
  v168 = swift_allocBox();
  v178 = v25;
  IndexSet.init()();
  v26 = swift_allocObject();
  v167 = v26;
  *(v26 + 16) = _swiftEmptyArrayStorage;
  v177 = (v26 + 16);
  v27 = swift_allocObject();
  *(v27 + 16) = 0;
  v176 = v27 + 16;
  v173 = v27;
  *(v27 + 24) = _swiftEmptyArrayStorage;
  v28 = swift_allocObject();
  *(v28 + 16) = 0;
  v175 = v28 + 16;
  v174 = v28;
  *(v28 + 24) = _swiftEmptyArrayStorage;
  v29 = swift_allocObject();
  *(v29 + 16) = 0;
  v171 = v29;
  *(v29 + 24) = _swiftEmptyArrayStorage;
  v30 = swift_allocObject();
  v170 = v30;
  *(v30 + 16) = _swiftEmptyArrayStorage;
  v31 = (v30 + 16);
  v32 = a1;
  v33 = *(a1 + 16);
  v169 = v32;
  if (v33 == 1)
  {
    outlined init with copy of AIDiffingUpdate(v32 + ((*(v13 + 80) + 32) & ~*(v13 + 80)), v17);
    if (*v17 == 1)
    {
      specialized closure #1 in UICollectionView.applyUpdates(_:animated:alongsideUpdates:completion:)(v32, v186, v162, v34, v165, v163, v166);
      outlined destroy of AIDiffingUpdate(v17);
      swift_unknownObjectWeakDestroy();
LABEL_39:

      v149 = 0;
      v15 = 0;
      goto LABEL_40;
    }

    v72 = *(v160 + 24);
    v72(v179, &v17[v12[6]], v10);
    v72(v178, &v17[v12[7]], v10);
    *v177 = *&v17[v12[8]];

    v73 = &v17[v12[9]];
    v74 = *v73;
    v75 = v73[1];
    v76 = v173;
    *(v173 + 16) = v74;
    *(v76 + 24) = v75;

    v77 = &v17[v12[10]];
    v78 = *v77;
    v79 = v77[1];
    v80 = v174;
    *(v174 + 16) = v78;
    *(v80 + 24) = v79;

    v81 = &v17[v12[11]];
    v82 = v81[1];
    v83 = v31;
    v84 = v171;
    *(v171 + 16) = *v81;
    *(v84 + 24) = v82;

    v85 = *&v17[v12[12]];

    outlined destroy of AIDiffingUpdate(v17);
    v157 = v83;
    *v83 = v85;

    v86 = v172;
    v87 = v168;
    v88 = v163;
    v89 = v165;
    v90 = v170;
    v91 = v162;
  }

  else
  {
    if (v33)
    {
      v35 = v15 + 8;
      v36 = v169 + ((*(v13 + 80) + 32) & ~*(v13 + 80));
      v37 = *(v13 + 72);
      do
      {
        outlined init with copy of AIDiffingUpdate(v36, v15);
        if (*v15 == 1)
        {
          goto LABEL_38;
        }

        IndexSet.formUnion(_:)();
        IndexSet.formUnion(_:)();

        specialized Array.append<A>(contentsOf:)(v39);
        specialized OrderedSet.append<A>(contentsOf:)(*&v35[v12[9]]);
        specialized OrderedSet.append<A>(contentsOf:)(*&v35[v12[10]]);
        specialized OrderedSet.append<A>(contentsOf:)(*&v35[v12[11]]);

        specialized Array.append<A>(contentsOf:)(v40);
        outlined destroy of AIDiffingUpdate(v15);
        v36 += v37;
      }

      while (--v33);
    }

    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v41, v42))
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&_mh_execute_header, v41, v42, "Final update:", v43, 2u);
    }

    v44 = Logger.logObject.getter();
    v45 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v44, v45))
    {
      v46 = swift_slowAlloc();
      v156 = swift_slowAlloc();
      aBlock = v156;
      *v46 = 136315138;
      v47 = v179;
      swift_beginAccess();
      v48 = v160;
      v49 = v158;
      (*(v160 + 16))(v158, v47, v10);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
      v50 = dispatch thunk of CustomStringConvertible.description.getter();
      v52 = v51;
      (*(v48 + 8))(v49, v10);
      v53 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v50, v52, &aBlock);

      *(v46 + 4) = v53;
      _os_log_impl(&_mh_execute_header, v44, v45, " - Inserted sections: %s", v46, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v156);
    }

    v54 = Logger.logObject.getter();
    v55 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v54, v55))
    {
      v56 = swift_slowAlloc();
      v156 = swift_slowAlloc();
      aBlock = v156;
      *v56 = 136315138;
      v57 = v178;
      swift_beginAccess();
      v58 = v160;
      v59 = v158;
      (*(v160 + 16))(v158, v57, v10);
      lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexSet and conformance IndexSet, &type metadata accessor for IndexSet, &protocol conformance descriptor for IndexSet);
      v60 = dispatch thunk of CustomStringConvertible.description.getter();
      v62 = v61;
      (*(v58 + 8))(v59, v10);
      v63 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v60, v62, &aBlock);

      *(v56 + 4) = v63;
      _os_log_impl(&_mh_execute_header, v54, v55, " - Deleted sections: %s", v56, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v156);
    }

    v64 = Logger.logObject.getter();
    v65 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v64, v65))
    {
      v66 = swift_slowAlloc();
      v67 = swift_slowAlloc();
      aBlock = v67;
      *v66 = 136315138;
      swift_beginAccess();

      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_SitMd, &_sSi_SitMR);
      v68 = Array.description.getter();
      v70 = v69;

      v71 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v68, v70, &aBlock);

      *(v66 + 4) = v71;
      _os_log_impl(&_mh_execute_header, v64, v65, " - Section move pairs: %s", v66, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v67);
    }

    else
    {
    }

    v92 = Logger.logObject.getter();
    v93 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v92, v93))
    {
      v94 = swift_slowAlloc();
      v95 = swift_slowAlloc();
      aBlock = v95;
      *v94 = 136315138;
      swift_beginAccess();
      type metadata accessor for IndexPath();

      v96 = Array.description.getter();
      v98 = v97;

      v99 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v96, v98, &aBlock);

      *(v94 + 4) = v99;
      _os_log_impl(&_mh_execute_header, v92, v93, " - Inserted index paths: %s", v94, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v95);
    }

    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.default.getter();

    v102 = os_log_type_enabled(v100, v101);
    v157 = v31;
    if (v102)
    {
      v103 = swift_slowAlloc();
      v104 = swift_slowAlloc();
      aBlock = v104;
      *v103 = 136315138;
      swift_beginAccess();
      type metadata accessor for IndexPath();

      v105 = Array.description.getter();
      v107 = v106;

      v108 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v105, v107, &aBlock);

      *(v103 + 4) = v108;
      _os_log_impl(&_mh_execute_header, v100, v101, " - Deleted index paths: %s", v103, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v104);
    }

    v90 = v170;

    v109 = Logger.logObject.getter();
    v110 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      v112 = swift_slowAlloc();
      aBlock = v112;
      *v111 = 136315138;
      swift_beginAccess();
      type metadata accessor for IndexPath();

      v113 = Array.description.getter();
      v115 = v114;

      v116 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v113, v115, &aBlock);

      *(v111 + 4) = v116;
      _os_log_impl(&_mh_execute_header, v109, v110, " - Updated index paths: %s", v111, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v112);
    }

    v117 = Logger.logObject.getter();
    v118 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v117, v118))
    {
      v119 = swift_slowAlloc();
      v120 = swift_slowAlloc();
      aBlock = v120;
      *v119 = 136315138;
      swift_beginAccess();

      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathV_ACtMd, &_s10Foundation9IndexPathV_ACtMR);
      v121 = Array.description.getter();
      v123 = v122;

      v124 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v121, v123, &aBlock);

      *(v119 + 4) = v124;
      _os_log_impl(&_mh_execute_header, v117, v118, " - Item move pairs: %s", v119, 0xCu);
      __swift_destroy_boxed_opaque_existential_0Tm(v120);
    }

    else
    {
    }

    v87 = v168;
    v91 = v162;
    v89 = v165;
    v84 = v171;
    v86 = v172;
    v88 = v163;
  }

  isEscapingClosureAtFileLocation = swift_allocObject();
  v126 = v161;
  v127 = v169;
  *(isEscapingClosureAtFileLocation + 16) = v161;
  *(isEscapingClosureAtFileLocation + 24) = v127;
  *(isEscapingClosureAtFileLocation + 32) = v87;
  *(isEscapingClosureAtFileLocation + 40) = v86;
  *(isEscapingClosureAtFileLocation + 48) = v167;
  v128 = v174;
  *(isEscapingClosureAtFileLocation + 56) = v173;
  *(isEscapingClosureAtFileLocation + 64) = v128;
  *(isEscapingClosureAtFileLocation + 72) = v90;
  *(isEscapingClosureAtFileLocation + 80) = v91;
  *(isEscapingClosureAtFileLocation + 88) = v89;
  *(isEscapingClosureAtFileLocation + 96) = v84;
  v129 = v166;
  *(isEscapingClosureAtFileLocation + 104) = v88;
  *(isEscapingClosureAtFileLocation + 112) = v129;
  if (v159)
  {

    v130 = v166;
    outlined copy of (@escaping @callee_guaranteed () -> ())?(v88, v166);
    outlined copy of (@escaping @callee_guaranteed () -> ())?(v91, v89);
    v131 = v91;
    v132 = v126;
    v133 = [v132 indexPathsForVisibleItems];
    type metadata accessor for IndexPath();
    v134 = v89;
    v135 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

    v136 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation9IndexPathV_SayAFGTt0g5Tf4g_n(v135);

    v137 = swift_allocObject();
    v137[2] = v169;
    v137[3] = v132;
    v138 = v179;
    v137[4] = v178;
    v137[5] = v138;
    v139 = v176;
    v137[6] = v177;
    v137[7] = v139;
    v140 = v157;
    v137[8] = v175;
    v137[9] = v140;
    v137[10] = v136;
    v137[11] = v131;
    v137[12] = v134;
    v141 = swift_allocObject();
    *(v141 + 16) = partial apply for closure #1 in closure #2 in UICollectionView.applyUpdates(_:animated:alongsideUpdates:completion:);
    *(v141 + 24) = v137;
    v184 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
    v185 = v141;
    aBlock = _NSConcreteStackBlock;
    v181 = 1107296256;
    v142 = v163;
    v182 = thunk for @escaping @callee_guaranteed () -> ();
    v183 = &block_descriptor_27_0;
    v179 = _Block_copy(&aBlock);

    outlined copy of (@escaping @callee_guaranteed () -> ())?(v131, v165);
    v143 = v132;

    v144 = swift_allocObject();
    v145 = v171;
    *(v144 + 2) = v143;
    *(v144 + 3) = v145;
    *(v144 + 4) = v142;
    *(v144 + 5) = v130;
    v184 = partial apply for closure #2 in closure #2 in UICollectionView.applyUpdates(_:animated:alongsideUpdates:completion:);
    v185 = v144;
    aBlock = _NSConcreteStackBlock;
    v181 = 1107296256;
    v182 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
    v183 = &block_descriptor_33_2;
    v146 = _Block_copy(&aBlock);
    v88 = v185;

    outlined copy of (@escaping @callee_guaranteed () -> ())?(v142, v130);
    v147 = v143;

    v148 = v179;
    [v147 performBatchUpdates:v179 completion:v146];
    _Block_release(v146);
    _Block_release(v148);

    swift_unknownObjectWeakDestroy();

    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    v149 = 0;
    v15 = 0;
    if ((isEscapingClosureAtFileLocation & 1) == 0)
    {
      goto LABEL_40;
    }

    __break(1u);
  }

  v179 = objc_opt_self();
  v15 = swift_allocObject();
  *(v15 + 2) = partial apply for closure #2 in UICollectionView.applyUpdates(_:animated:alongsideUpdates:completion:);
  *(v15 + 3) = isEscapingClosureAtFileLocation;
  v150 = swift_allocObject();
  v149 = partial apply for closure #3 in View.actionContextMenu<A>(title:menu:excluding:preview:previewAction:);
  *(v150 + 16) = partial apply for closure #3 in View.actionContextMenu<A>(title:menu:excluding:preview:previewAction:);
  *(v150 + 24) = v15;
  v184 = partial apply for thunk for @escaping @callee_guaranteed () -> ();
  v185 = v150;
  aBlock = _NSConcreteStackBlock;
  v181 = 1107296256;
  v182 = thunk for @escaping @callee_guaranteed () -> ();
  v183 = &block_descriptor_75;
  v151 = _Block_copy(&aBlock);
  v178 = v185;

  outlined copy of (@escaping @callee_guaranteed () -> ())?(v88, v166);
  outlined copy of (@escaping @callee_guaranteed () -> ())?(v162, v165);
  v152 = v161;

  [v179 performWithoutAnimation:v151];
  _Block_release(v151);

  swift_unknownObjectWeakDestroy();
  v153 = swift_isEscapingClosureAtFileLocation();

  if (v153)
  {
    __break(1u);
LABEL_38:
    specialized closure #1 in UICollectionView.applyUpdates(_:animated:alongsideUpdates:completion:)(v169, v186, v162, v38, v165, v163, v166);
    swift_unknownObjectWeakDestroy();
    outlined destroy of AIDiffingUpdate(v15);
    goto LABEL_39;
  }

LABEL_40:

  return outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v149, v15);
}

uint64_t UICollectionView.performAIDiff<A>(oldItems:newItems:sectionIndex:animated:modelUpdateHandler:identityComparator:visualComparator:completion:)(uint64_t a1, uint64_t a2, void (**a3)(uint64_t, uint64_t *, NSObject *, __n128), int a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, __n128 a13, uint64_t a9, uint64_t a10, void (*a11)(uint64_t), uint64_t a12, __int128 a14)
{
  v27 = a8;
  v25 = a6;
  v26 = a7;
  v24 = a5;
  v30 = a4;
  v28 = a12;
  v29 = a11;
  v23 = a14;
  v17 = *(type metadata accessor for AIDiffingUpdate(0) - 8);
  __chkstk_darwin();
  v19 = &v23 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  UICollectionView.calculateAIDiff<A>(oldItems:newItems:sectionIndex:modelUpdateHandler:identityComparator:visualComparator:)(a1, a2, a3, v24, v25, v26, v27, a9, v19, a10, a14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy14MusicUtilities15AIDiffingUpdateVGMd, &_ss23_ContiguousArrayStorageCy14MusicUtilities15AIDiffingUpdateVGMR);
  v20 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1004F2400;
  outlined init with copy of AIDiffingUpdate(v19, v21 + v20);
  UICollectionView.applyUpdates(_:animated:alongsideUpdates:completion:)(v21, v30, 0, 0, v29, v28);

  return outlined destroy of AIDiffingUpdate(v19);
}

void specialized closure #1 in UICollectionView.applyUpdates(_:animated:alongsideUpdates:completion:)(uint64_t a1, uint64_t a2, void (*a3)(void), __n128 a4, uint64_t a5, void (*a6)(uint64_t), uint64_t a7)
{
  v25 = a7;
  v10 = *(type metadata accessor for AIDiffingUpdate(0) - 8);
  __chkstk_darwin();
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for aiDiff != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.aiDiff);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&_mh_execute_header, v14, v15, "Found update with needsReloadData=true, reloading", v16, 2u);
  }

  v17 = *(a1 + 16);
  if (v17)
  {
    v18 = a1 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v19 = *(v10 + 72);
    do
    {
      outlined init with copy of AIDiffingUpdate(v18, v12);
      v21 = *(v12 + 1);
      v20 = *(v12 + 2);
      outlined copy of (@escaping @callee_guaranteed () -> ())?(v21, v20);
      v22 = outlined destroy of AIDiffingUpdate(v12);
      if (v21)
      {
        v21(v22);
        outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v21, v20);
      }

      v18 += v19;
      --v17;
    }

    while (v17);
  }

  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v24 = Strong;
    [Strong reloadData];
  }

  if (a3)
  {
    a3();
  }

  if (a6)
  {
    a6(1);
  }
}

void closure #2 in UICollectionView.applyUpdates(_:animated:alongsideUpdates:completion:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  type metadata accessor for IndexSet();
  v18 = swift_projectBox();
  v19 = swift_projectBox();
  v20 = a5 + 16;
  v21 = a6 + 16;
  v22 = a8 + 16;
  v23 = [a1 indexPathsForVisibleItems];
  type metadata accessor for IndexPath();
  v24 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v25 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation9IndexPathV_SayAFGTt0g5Tf4g_n(v24);

  v26 = swift_allocObject();
  v26[2] = a2;
  v26[3] = a1;
  v26[4] = v18;
  v26[5] = v19;
  v26[6] = v20;
  v26[7] = v21;
  v26[8] = a7 + 16;
  v26[9] = v22;
  v26[10] = v25;
  v26[11] = a9;
  v26[12] = a10;
  v27 = swift_allocObject();
  *(v27 + 16) = closure #1 in closure #2 in UICollectionView.applyUpdates(_:animated:alongsideUpdates:completion:)partial apply;
  *(v27 + 24) = v26;
  v38 = thunk for @escaping @callee_guaranteed () -> ()partial apply;
  v39 = v27;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = thunk for @escaping @callee_guaranteed () -> ();
  v37 = &block_descriptor_52_0;
  v28 = _Block_copy(&aBlock);

  v29 = a1;
  outlined copy of (@escaping @callee_guaranteed () -> ())?(a9, a10);

  v30 = swift_allocObject();
  v30[2] = v29;
  v30[3] = a11;
  v30[4] = a12;
  v30[5] = a13;
  v38 = closure #2 in closure #2 in UICollectionView.applyUpdates(_:animated:alongsideUpdates:completion:)partial apply;
  v39 = v30;
  aBlock = _NSConcreteStackBlock;
  v35 = 1107296256;
  v36 = thunk for @escaping @callee_guaranteed (@unowned Bool) -> ();
  v37 = &block_descriptor_59;
  v31 = _Block_copy(&aBlock);
  v32 = v29;

  outlined copy of (@escaping @callee_guaranteed () -> ())?(a12, a13);

  [v32 performBatchUpdates:v28 completion:v31];
  _Block_release(v31);
  _Block_release(v28);

  LOBYTE(v31) = swift_isEscapingClosureAtFileLocation();

  if (v31)
  {
    __break(1u);
  }
}

double closure #1 in closure #2 in UICollectionView.applyUpdates(_:animated:alongsideUpdates:completion:)(uint64_t a1, void *a2, uint64_t a3, unint64_t a4, uint64_t *a5, void *a6, uint64_t *a7, uint64_t a8, void *a9, void (*a10)(void), uint64_t a11)
{
  v127 = a8;
  v115 = a7;
  v126 = a6;
  v125 = a5;
  v123 = a4;
  v113 = a3;
  v122 = a2;
  v12 = type metadata accessor for IndexPath();
  v120 = *(v12 - 8);
  __chkstk_darwin();
  v109 = &v104 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v15 = &v104 - v14;
  __chkstk_darwin();
  v124 = (&v104 - v16);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9IndexPathV_ACtMd, &_s10Foundation9IndexPathV_ACtMR);
  v121 = *(v119 - 8);
  __chkstk_darwin();
  v18 = &v104 - v17;
  v112 = type metadata accessor for IndexSet();
  v19 = *(v112 - 8);
  __chkstk_darwin();
  v111 = &v104 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AIDiffingUpdate(0);
  __chkstk_darwin();
  v23 = &v104 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(a1 + 16);
  if (v24)
  {
    v25 = a1 + ((*(v21 + 80) + 32) & ~*(v21 + 80));
    v26 = *(v21 + 72);
    do
    {
      outlined init with copy of AIDiffingUpdate(v25, v23);
      v28 = *(v23 + 1);
      v27 = *(v23 + 2);
      outlined copy of (@escaping @callee_guaranteed () -> ())?(v28, v27);
      v29 = outlined destroy of AIDiffingUpdate(v23);
      if (v28)
      {
        v28(v29);
        outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v28, v27);
      }

      v25 += v26;
      --v24;
    }

    while (v24);
  }

  v30 = v113;
  swift_beginAccess();
  v110 = *(v19 + 16);
  v31 = v111;
  v32 = v112;
  v110(v111, v30, v112);
  IndexSet._bridgeToObjectiveC()(v33);
  v35 = v34;
  v36 = *(v19 + 8);
  v36(v31, v32);
  v37 = v122;
  [v122 deleteSections:v35];

  v38 = v123;
  swift_beginAccess();
  v107 = v19 + 16;
  v110(v31, v38, v32);
  IndexSet._bridgeToObjectiveC()(v39);
  v41 = v40;
  v108 = v19 + 8;
  v106 = v36;
  v36(v31, v32);
  [v37 insertSections:v41];

  v42 = v125;
  swift_beginAccess();
  v43 = *v42;
  v44 = *(v43 + 16);
  if (v44)
  {

    v45 = (v43 + 40);
    do
    {
      [v37 moveSection:*(v45 - 1) toSection:*v45];
      v45 += 2;
      --v44;
    }

    while (v44);
  }

  swift_beginAccess();

  isa = Array._bridgeToObjectiveC()().super.isa;
  swift_endAccess();

  [v37 insertItemsAtIndexPaths:isa];

  swift_beginAccess();

  v47 = Array._bridgeToObjectiveC()().super.isa;
  swift_endAccess();

  [v37 deleteItemsAtIndexPaths:v47];

  v48 = v127;
  swift_beginAccess();
  v49 = *v48;
  v50 = *(*v48 + 16);
  if (v50)
  {
    v51 = *(v119 + 48);
    v52 = v49 + ((*(v121 + 80) + 32) & ~*(v121 + 80));
    v127 = *(v121 + 72);
    v53 = (v120 + 8);
    v126 = v49;

    do
    {
      outlined init with copy of (IndexPath, IndexPath)(v52, v18);
      v54 = IndexPath._bridgeToObjectiveC()().super.isa;
      v55 = *v53;
      (*v53)(v18, v12);
      v56 = IndexPath._bridgeToObjectiveC()().super.isa;
      v55(&v18[v51], v12);
      [v122 moveItemAtIndexPath:v54 toIndexPath:v56];

      v52 += v127;
      --v50;
    }

    while (v50);

    v37 = v122;
  }

  v57 = [v37 _indexPathsForPreparedItems];
  v58 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v118 = *(v58 + 16);
  if (v118)
  {
    v59 = v120;
    v119 = (*(v59 + 80) + 32) & ~*(v59 + 80);
    v116 = v58 + v119;
    swift_beginAccess();
    swift_beginAccess();
    v60 = 0;
    v126 = a9;
    v127 = v59 + 16;
    v125 = a9 + 7;
    v37 = v59 + 8;
    v114 = _swiftEmptyArrayStorage;
    v105 = (v59 + 32);
    v61 = v124;
    v117 = v58;
    while (1)
    {
      if (v60 >= *(v58 + 16))
      {
        __break(1u);
        goto LABEL_52;
      }

      v63 = *(v120 + 72);
      v123 = v60;
      v64 = *(v120 + 16);
      v64(v61, v116 + v63 * v60, v12);
      if (v126[2])
      {
        v65 = v126;
        lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
        v66 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v67 = -1 << *(v65 + 32);
        v68 = v66 & ~v67;
        if ((*(v125 + ((v68 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v68))
        {
          v69 = ~v67;
          while (1)
          {
            v64(v15, v126[6] + v68 * v63, v12);
            lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
            v70 = dispatch thunk of static Equatable.== infix(_:_:)();
            v71 = *v37;
            (*v37)(v15, v12);
            if (v70)
            {
              break;
            }

            v68 = (v68 + 1) & v69;
            if (((*(v125 + ((v68 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v68) & 1) == 0)
            {
              goto LABEL_25;
            }
          }

          v71(v61, v12);
          goto LABEL_17;
        }
      }

LABEL_25:
      v72 = *v115;
      v73 = v115[1];
      v74 = v73 + v119;
      v75 = *(v73 + 16);
      v121 = v37 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
      if (v72)
      {

        specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v61, v74, v75, (v72 + 16), v72 + 32);
        v77 = v76;

        if ((v77 & 1) == 0)
        {
          v78 = *v37;
LABEL_40:
          v89 = v124;
          v78(v124, v12);
          v61 = v89;
          goto LABEL_17;
        }
      }

      else
      {

        if (v75)
        {
          while (1)
          {
            v64(v15, v74, v12);
            lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
            v79 = dispatch thunk of static Equatable.== infix(_:_:)();
            v78 = *v37;
            (*v37)(v15, v12);
            if (v79)
            {
              break;
            }

            v74 += v63;
            --v75;
            v61 = v124;
            if (!v75)
            {
              goto LABEL_31;
            }
          }

          goto LABEL_40;
        }

LABEL_31:
      }

      v80 = v111;
      v81 = v112;
      v110(v111, v113, v112);
      v82 = IndexPath.section.getter();
      v83 = IndexSet.contains(_:)(v82);
      v106(v80, v81);
      if (!v83)
      {
        v64(v109, v61, v12);
        v84 = v114;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v62 = v123;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v84[2] + 1, 1, v84);
        }

        v114 = v84;
        v87 = v84[2];
        v86 = v84[3];
        if (v87 >= v86 >> 1)
        {
          v114 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v86 > 1), v87 + 1, 1, v114);
        }

        v88 = v114;
        v114[2] = v87 + 1;
        (*v105)(&v88[v119 + v87 * v63], v109, v12);
        (*v37)(v61, v12);
        v58 = v117;
        goto LABEL_18;
      }

      (*v37)(v61, v12);
LABEL_17:
      v58 = v117;
      v62 = v123;
LABEL_18:
      v60 = v62 + 1;
      if (v60 == v118)
      {

        v37 = v122;
        goto LABEL_43;
      }
    }
  }

LABEL_43:
  v61 = a10;
  if (one-time initialization token for aiDiff != -1)
  {
LABEL_52:
    swift_once();
  }

  v90 = type metadata accessor for Logger();
  __swift_project_value_buffer(v90, static Logger.aiDiff);
  v91 = Logger.logObject.getter();
  v92 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v91, v92))
  {
    v93 = swift_slowAlloc();
    v94 = swift_slowAlloc();
    v128 = v94;
    *v93 = 136315138;

    v95 = Array.description.getter();
    v97 = v96;

    v98 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v95, v97, &v128);
    v37 = v122;

    *(v93 + 4) = v98;
    _os_log_impl(&_mh_execute_header, v91, v92, "Cleaning up prefetched cells by reloading index paths: %s", v93, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v94);
  }

  v99 = Array._bridgeToObjectiveC()().super.isa;

  [v37 reloadItemsAtIndexPaths:v99];

  if (v61)
  {

    v100 = Logger.logObject.getter();
    v101 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v100, v101))
    {
      v102 = swift_slowAlloc();
      *v102 = 0;
      _os_log_impl(&_mh_execute_header, v100, v101, "Performing alongside updates", v102, 2u);
    }

    v61();
    outlined consume of (@escaping @callee_guaranteed @Sendable () -> (@owned [ActionMenu.Element]))?(v61, a11);
  }

  return result;
}

id closure #2 in closure #2 in UICollectionView.applyUpdates(_:animated:alongsideUpdates:completion:)(char a1, id a2, uint64_t a3, void (*a4)(void))
{
  v7 = [a2 isPrefetchingEnabled];
  [a2 setPrefetchingEnabled:0];
  if (one-time initialization token for aiDiff != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.aiDiff);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v9, v10))
  {
    buf = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v22[0] = v20;
    *buf = 136315138;
    swift_beginAccess();
    v21 = a4;

    v12 = specialized _arrayDescription<A>(for:)(v11);
    v18 = v10;
    v14 = v13;

    v15 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v12, v14, v22);

    *(buf + 4) = v15;
    a4 = v21;
    _os_log_impl(&_mh_execute_header, v9, v18, "Reconfiguring index paths: %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_0Tm(v20);
  }

  swift_beginAccess();
  type metadata accessor for IndexPath();

  isa = Array._bridgeToObjectiveC()().super.isa;
  swift_endAccess();

  [a2 reconfigureItemsAtIndexPaths:isa];

  if (a4)
  {
    a4(a1 & 1);
  }

  return [a2 setPrefetchingEnabled:v7];
}

uint64_t one-time initialization function for aiDiff()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static Logger.aiDiff);
  __swift_project_value_buffer(v0, static Logger.aiDiff);
  return Logger.init(subsystem:category:)();
}

uint64_t type metadata accessor for AIDiffingUpdate(uint64_t a1)
{
  result = type metadata singleton initialization cache for AIDiffingUpdate;
  if (!type metadata singleton initialization cache for AIDiffingUpdate)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with copy of AIDiffingUpdate(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AIDiffingUpdate(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of AIDiffingUpdate(uint64_t a1)
{
  v2 = type metadata accessor for AIDiffingUpdate(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void _s2os14OSLogArgumentsV6appendyySSycFySpys5UInt8VGz_SpySo8NSObjectCSgGSgzSpyypGSgztcfU__1(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(v6, v7, a3);

  v9 = *a1;
  *v9 = v8;
  *a1 = v9 + 1;
}

uint64_t sub_10040C310()
{

  return swift_deallocObject();
}

uint64_t sub_10040C348()
{

  return swift_deallocObject();
}

unint64_t _s2os32getNullTerminatedUTF8PointerImpl_21storingStringOwnersInSVSS_SpyypGSgztF_3(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = _ss11_StringGutsV16_deconstructUTF87scratchyXlSg5owner_xSi6lengthSb11usesScratchSb15allocatedMemorytSwSg_ts8_PointerRzlFSV_Tgq5_3(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = &type metadata for _StringGuts;
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
  __swift_destroy_boxed_opaque_existential_0Tm(v11);
  return v7;
}

unint64_t _ss11_StringGutsV16_deconstructUTF87scratchyXlSg5owner_xSi6lengthSb11usesScratchSb15allocatedMemorytSwSg_ts8_PointerRzlFSV_Tgq5_3(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
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
    result = _ss11_StringGutsV23_allocateForDeconstructyXl5owner_SVSi6lengthtyF_3(a5, a6);
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

void *_ss11_StringGutsV23_allocateForDeconstructyXl5owner_SVSi6lengthtyF_3(uint64_t a1, unint64_t a2)
{
  v3 = _ss32_copyCollectionToContiguousArrayys0dE0Vy7ElementQzGxSlRzlFSS8UTF8ViewV_Tgq5_3(a1, a2);
  _sSa6append10contentsOfyqd__n_t7ElementQyd__RszSTRd__lFs5UInt8V_SayAFGTgq5_3(&_ss11_StringGutsV23_allocateForDeconstructyXl5owner_SVSi6lengthtyFTv_r_3);
  return v3;
}

void *_ss32_copyCollectionToContiguousArrayys0dE0Vy7ElementQzGxSlRzlFSS8UTF8ViewV_Tgq5_3(uint64_t a1, unint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5_3(v5, 0);
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
          return _swiftEmptyArrayStorage;
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5_3(v10, 0);
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

void _sSa6append10contentsOfyqd__n_t7ElementQyd__RszSTRd__lFs5UInt8V_SayAFGTgq5_3(uint64_t a1)
{
  v2 = *(a1 + 16);
  New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFs5UInt8V_Tgq5_3 = *v1;
  v4 = *(*v1 + 2);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFs5UInt8V_Tgq5_3 + 3) >> 1)
  {
    if (*(a1 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFs5UInt8V_Tgq5_3 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFs5UInt8V_Tgq5_3(isUniquelyReferenced_nonNull_native, v12, 1, New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFs5UInt8V_Tgq5_3);
  if (!*(a1 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFs5UInt8V_Tgq5_3 + 2);
  if ((*(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFs5UInt8V_Tgq5_3 + 3) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy(&New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFs5UInt8V_Tgq5_3[v8 + 32], (a1 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFs5UInt8V_Tgq5_3;
    return;
  }

  v9 = *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFs5UInt8V_Tgq5_3 + 2);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(New14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFs5UInt8V_Tgq5_3 + 2) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
}

void *_ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5_3(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd_3, &_ss23_ContiguousArrayStorageCys5UInt8VGMR_3);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

char *_ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFs5UInt8V_Tgq5_3(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd_3, &_ss23_ContiguousArrayStorageCys5UInt8VGMR_3);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t specialized Set._Variant.insert(_:)(Swift::Int *a1, Swift::Int a2, Swift::Int a3)
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

void specialized _NativeSet.insertNew(_:at:isUnique:)(Swift::Int result, Swift::Int a2, unint64_t a3, char a4)
{
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
      specialized _NativeSet.copy()();
      goto LABEL_16;
    }

    specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
  }

  v10 = *v4;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v11 = Hasher._finalize()();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  v10 = *v4;
  v11 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_1(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_15;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      v11 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_1(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_16:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;
    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v21[2] = v24;
}

{
  v5 = v4;
  v10 = *v4;
  v11 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_1(a2, a3);
  v13 = *(v10 + 16);
  v14 = (v12 & 1) == 0;
  v15 = __OFADD__(v13, v14);
  v16 = v13 + v14;
  if (v15)
  {
    __break(1u);
    goto LABEL_17;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a4 & 1) == 0)
  {
    if (v18 < v16 || (a4 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a4 & 1);
      v11 = _ss22__RawDictionaryStorageC4findys10_HashTableV6BucketV6bucket_Sb5foundtxSHRzlFSS_Tg5_1(a2, a3);
      if ((v17 & 1) != (v20 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
    }
  }

  v21 = *v5;
  if (v17)
  {
    *(v21[7] + 8 * v11) = a1;

    return;
  }

  v21[(v11 >> 6) + 8] |= 1 << v11;
  v22 = (v21[6] + 16 * v11);
  *v22 = a2;
  v22[1] = a3;
  *(v21[7] + 8 * v11) = a1;
  v23 = v21[2];
  v15 = __OFADD__(v23, 1);
  v24 = v23 + 1;
  if (v15)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v21[2] = v24;
}

{
  v5 = v4;
  v10 = *v4;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for Lyrics.Transliteration(0);
      outlined assign with take of Lyrics.Translation(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for Lyrics.Transliteration);
      return;
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, a4 & 1);
  v21 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v16 & 1) != (v22 & 1))
  {
LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v12 = v21;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  specialized _NativeDictionary._insert(at:key:value:)(v12, a2, a3, a1, v18, type metadata accessor for Lyrics.Transliteration, type metadata accessor for Lyrics.Transliteration);
}

{
  v5 = v4;
  v10 = *v4;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  v13 = v10[2];
  v14 = (v11 & 1) == 0;
  v15 = v13 + v14;
  if (__OFADD__(v13, v14))
  {
    __break(1u);
    goto LABEL_15;
  }

  v16 = v11;
  v17 = v10[3];
  if (v17 >= v15 && (a4 & 1) != 0)
  {
LABEL_7:
    v18 = *v5;
    if (v16)
    {
LABEL_8:
      v19 = v18[7];
      v20 = type metadata accessor for Lyrics.Translation(0);
      outlined assign with take of Lyrics.Translation(a1, v19 + *(*(v20 - 8) + 72) * v12, type metadata accessor for Lyrics.Translation);
      return;
    }

    goto LABEL_11;
  }

  if (v17 >= v15 && (a4 & 1) == 0)
  {
    specialized _NativeDictionary.copy()();
    goto LABEL_7;
  }

  specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v15, a4 & 1);
  v21 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3);
  if ((v16 & 1) != (v22 & 1))
  {
LABEL_15:
    KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return;
  }

  v12 = v21;
  v18 = *v5;
  if (v16)
  {
    goto LABEL_8;
  }

LABEL_11:
  specialized _NativeDictionary._insert(at:key:value:)(v12, a2, a3, a1, v18, type metadata accessor for Lyrics.Translation, type metadata accessor for Lyrics.Translation);
}

void specialized _NativeDictionary.setValue(_:forKey:isUnique:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, char a5)
{
  v6 = v5;
  v11 = *v5;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4);
  v14 = *(v11 + 16);
  v15 = (v13 & 1) == 0;
  v16 = __OFADD__(v14, v15);
  v17 = v14 + v15;
  if (v16)
  {
    __break(1u);
    goto LABEL_17;
  }

  v18 = v13;
  v19 = *(v11 + 24);
  if (v19 < v17 || (a5 & 1) == 0)
  {
    if (v19 < v17 || (a5 & 1) != 0)
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v17, a5 & 1);
      v12 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4);
      if ((v18 & 1) != (v21 & 1))
      {
LABEL_18:
        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return;
      }
    }

    else
    {
      v20 = v12;
      specialized _NativeDictionary.copy()();
      v12 = v20;
    }
  }

  v22 = *v6;
  if (v18)
  {
    *(v22[7] + 8 * v12) = a1;

    return;
  }

  v22[(v12 >> 6) + 8] |= 1 << v12;
  v23 = (v22[6] + 24 * v12);
  *v23 = a2;
  v23[1] = a3;
  v23[2] = a4;
  *(v22[7] + 8 * v12) = a1;
  v24 = v22[2];
  v16 = __OFADD__(v24, 1);
  v25 = v24 + 1;
  if (v16)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v22[2] = v25;

  v26 = a4;
}

void specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = *(type metadata accessor for IndexPath() - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v5);
  *a1 = v3;
}

{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
  }

  v3 = v2[2];
  v4[0] = (v2 + 4);
  v4[1] = v3;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v4);
  *a1 = v2;
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1, uint64_t a2, void *a3, uint64_t a4)
{
  v5 = v4;
  v119 = a1;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v124 = &v116 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v131 = &v116 - v11;
  __chkstk_darwin();
  v137 = &v116 - v12;
  v13 = __chkstk_darwin();
  v136 = &v116 - v14;
  v15 = a3[1];
  if (v15 < 1)
  {
    NewAByxGyFSnySiG_Tgq5_1 = _swiftEmptyArrayStorage;
LABEL_94:
    v18 = *v119;
    if (!*v119)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_126:
      NewAByxGyFSnySiG_Tgq5_1 = _ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSnySiG_Tgq5_1(NewAByxGyFSnySiG_Tgq5_1);
    }

    v139 = NewAByxGyFSnySiG_Tgq5_1;
    v112 = *(NewAByxGyFSnySiG_Tgq5_1 + 2);
    if (v112 >= 2)
    {
      while (*a3)
      {
        v113 = *&NewAByxGyFSnySiG_Tgq5_1[16 * v112];
        v114 = *&NewAByxGyFSnySiG_Tgq5_1[16 * v112 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)(*a3 + v9[9] * v113, *a3 + v9[9] * *&NewAByxGyFSnySiG_Tgq5_1[16 * v112 + 16], *a3 + v9[9] * v114, v18);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v114 < v113)
        {
          goto LABEL_119;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          NewAByxGyFSnySiG_Tgq5_1 = _ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSnySiG_Tgq5_1(NewAByxGyFSnySiG_Tgq5_1);
        }

        if (v112 - 2 >= *(NewAByxGyFSnySiG_Tgq5_1 + 2))
        {
          goto LABEL_120;
        }

        v115 = &NewAByxGyFSnySiG_Tgq5_1[16 * v112];
        *v115 = v113;
        *(v115 + 1) = v114;
        v139 = NewAByxGyFSnySiG_Tgq5_1;
        _sSa6remove2atxSi_tFSnySiG_Tgq5_1(v112 - 1);
        NewAByxGyFSnySiG_Tgq5_1 = v139;
        v112 = *(v139 + 2);
        if (v112 <= 1)
        {
          goto LABEL_104;
        }
      }

      goto LABEL_130;
    }

LABEL_104:

    return;
  }

  v116 = a4;
  v16 = 0;
  v134 = (v9 + 1);
  v135 = v9 + 2;
  v133 = (v9 + 4);
  NewAByxGyFSnySiG_Tgq5_1 = _swiftEmptyArrayStorage;
  v121 = v9;
  v138 = v8;
  v117 = a3;
  while (1)
  {
    v18 = v16;
    v122 = NewAByxGyFSnySiG_Tgq5_1;
    if (v16 + 1 >= v15)
    {
      v31 = v16 + 1;
    }

    else
    {
      v129 = v15;
      v118 = v5;
      v19 = *a3;
      v20 = v9[9];
      v21 = v16;
      v120 = v16;
      v22 = &v19[v20 * (v16 + 1)];
      v23 = v8;
      v24 = v9[2];
      v25 = v136;
      v24(v136, v22, v23, v13);
      v26 = &v19[v20 * v21];
      v27 = v137;
      v128 = v24;
      (v24)(v137, v26, v23);
      v127 = lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
      LODWORD(v130) = dispatch thunk of static Comparable.< infix(_:_:)();
      v28 = v9[1];
      v28(v27, v23);
      v126 = v28;
      v28(v25, v23);
      v29 = v120 + 2;
      v132 = v20;
      v30 = &v19[v20 * (v120 + 2)];
      while (1)
      {
        v31 = v129;
        if (v129 == v29)
        {
          break;
        }

        v32 = v136;
        v33 = v9;
        v34 = v138;
        v35 = v128;
        (v128)(v136, v30, v138);
        v36 = v137;
        v35(v137, v22, v34);
        v37 = dispatch thunk of static Comparable.< infix(_:_:)() & 1;
        v38 = v126;
        (v126)(v36, v34);
        v39 = v34;
        v9 = v33;
        v38(v32, v39);
        ++v29;
        v30 += v132;
        v22 += v132;
        if ((v130 & 1) != v37)
        {
          v31 = v29 - 1;
          break;
        }
      }

      v5 = v118;
      NewAByxGyFSnySiG_Tgq5_1 = v122;
      v8 = v138;
      a3 = v117;
      v18 = v120;
      if (v130)
      {
        if (v31 < v120)
        {
          goto LABEL_123;
        }

        if (v120 < v31)
        {
          v40 = v31;
          v41 = v132 * (v31 - 1);
          v42 = v31 * v132;
          v129 = v31;
          v43 = v120;
          v44 = v120 * v132;
          do
          {
            if (v43 != --v40)
            {
              v46 = *a3;
              if (!*a3)
              {
                goto LABEL_129;
              }

              v130 = *v133;
              v130(v124, &v46[v44], v138);
              if (v44 < v41 || &v46[v44] >= &v46[v42])
              {
                v45 = v138;
                swift_arrayInitWithTakeFrontToBack();
              }

              else
              {
                v45 = v138;
                if (v44 != v41)
                {
                  swift_arrayInitWithTakeBackToFront();
                }
              }

              v130(&v46[v41], v124, v45);
              v9 = v121;
              NewAByxGyFSnySiG_Tgq5_1 = v122;
            }

            ++v43;
            v41 -= v132;
            v42 -= v132;
            v44 += v132;
          }

          while (v43 < v40);
          v5 = v118;
          v8 = v138;
          v18 = v120;
          v31 = v129;
        }
      }
    }

    v47 = a3[1];
    if (v31 < v47)
    {
      if (__OFSUB__(v31, v18))
      {
        goto LABEL_122;
      }

      if (v31 - v18 < v116)
      {
        if (__OFADD__(v18, v116))
        {
          goto LABEL_124;
        }

        if (v18 + v116 >= v47)
        {
          v48 = a3[1];
        }

        else
        {
          v48 = v18 + v116;
        }

        if (v48 < v18)
        {
LABEL_125:
          __break(1u);
          goto LABEL_126;
        }

        if (v31 != v48)
        {
          break;
        }
      }
    }

    v49 = v31;
    if (v31 < v18)
    {
      goto LABEL_121;
    }

LABEL_33:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      NewAByxGyFSnySiG_Tgq5_1 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_0(0, *(NewAByxGyFSnySiG_Tgq5_1 + 2) + 1, 1, NewAByxGyFSnySiG_Tgq5_1);
    }

    v51 = *(NewAByxGyFSnySiG_Tgq5_1 + 2);
    v50 = *(NewAByxGyFSnySiG_Tgq5_1 + 3);
    v52 = v51 + 1;
    if (v51 >= v50 >> 1)
    {
      NewAByxGyFSnySiG_Tgq5_1 = _ss12_ArrayBufferV20_consumeAndCreateNew14bufferIsUnique15minimumCapacity13growForAppendAByxGSb_SiSbtFSnySiG_Tg5_0((v50 > 1), v51 + 1, 1, NewAByxGyFSnySiG_Tgq5_1);
    }

    *(NewAByxGyFSnySiG_Tgq5_1 + 2) = v52;
    v53 = &NewAByxGyFSnySiG_Tgq5_1[16 * v51];
    *(v53 + 4) = v18;
    *(v53 + 5) = v49;
    v18 = *v119;
    if (!*v119)
    {
      goto LABEL_131;
    }

    v125 = v49;
    if (v51)
    {
      while (1)
      {
        v54 = v52 - 1;
        if (v52 >= 4)
        {
          break;
        }

        if (v52 == 3)
        {
          v55 = *(NewAByxGyFSnySiG_Tgq5_1 + 4);
          v56 = *(NewAByxGyFSnySiG_Tgq5_1 + 5);
          v65 = __OFSUB__(v56, v55);
          v57 = v56 - v55;
          v58 = v65;
LABEL_52:
          if (v58)
          {
            goto LABEL_110;
          }

          v71 = &NewAByxGyFSnySiG_Tgq5_1[16 * v52];
          v73 = *v71;
          v72 = *(v71 + 1);
          v74 = __OFSUB__(v72, v73);
          v75 = v72 - v73;
          v76 = v74;
          if (v74)
          {
            goto LABEL_113;
          }

          v77 = &NewAByxGyFSnySiG_Tgq5_1[16 * v54 + 32];
          v79 = *v77;
          v78 = *(v77 + 1);
          v65 = __OFSUB__(v78, v79);
          v80 = v78 - v79;
          if (v65)
          {
            goto LABEL_116;
          }

          if (__OFADD__(v75, v80))
          {
            goto LABEL_117;
          }

          if (v75 + v80 >= v57)
          {
            if (v57 < v80)
            {
              v54 = v52 - 2;
            }

            goto LABEL_73;
          }

          goto LABEL_66;
        }

        v81 = &NewAByxGyFSnySiG_Tgq5_1[16 * v52];
        v83 = *v81;
        v82 = *(v81 + 1);
        v65 = __OFSUB__(v82, v83);
        v75 = v82 - v83;
        v76 = v65;
LABEL_66:
        if (v76)
        {
          goto LABEL_112;
        }

        v84 = &NewAByxGyFSnySiG_Tgq5_1[16 * v54];
        v86 = *(v84 + 4);
        v85 = *(v84 + 5);
        v65 = __OFSUB__(v85, v86);
        v87 = v85 - v86;
        if (v65)
        {
          goto LABEL_115;
        }

        if (v87 < v75)
        {
          goto LABEL_3;
        }

LABEL_73:
        v92 = v54 - 1;
        if (v54 - 1 >= v52)
        {
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
          goto LABEL_125;
        }

        if (!*a3)
        {
          goto LABEL_128;
        }

        v93 = *&NewAByxGyFSnySiG_Tgq5_1[16 * v92 + 32];
        v94 = *&NewAByxGyFSnySiG_Tgq5_1[16 * v54 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)(*a3 + v9[9] * v93, *a3 + v9[9] * *&NewAByxGyFSnySiG_Tgq5_1[16 * v54 + 32], *a3 + v9[9] * v94, v18);
        if (v5)
        {
          goto LABEL_104;
        }

        if (v94 < v93)
        {
          goto LABEL_106;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          NewAByxGyFSnySiG_Tgq5_1 = _ss12_ArrayBufferV20_consumeAndCreateNewAByxGyFSnySiG_Tgq5_1(NewAByxGyFSnySiG_Tgq5_1);
        }

        if (v92 >= *(NewAByxGyFSnySiG_Tgq5_1 + 2))
        {
          goto LABEL_107;
        }

        v95 = &NewAByxGyFSnySiG_Tgq5_1[16 * v92];
        *(v95 + 4) = v93;
        *(v95 + 5) = v94;
        v139 = NewAByxGyFSnySiG_Tgq5_1;
        _sSa6remove2atxSi_tFSnySiG_Tgq5_1(v54);
        NewAByxGyFSnySiG_Tgq5_1 = v139;
        v52 = *(v139 + 2);
        v8 = v138;
        if (v52 <= 1)
        {
          goto LABEL_3;
        }
      }

      v59 = &NewAByxGyFSnySiG_Tgq5_1[16 * v52 + 32];
      v60 = *(v59 - 64);
      v61 = *(v59 - 56);
      v65 = __OFSUB__(v61, v60);
      v62 = v61 - v60;
      if (v65)
      {
        goto LABEL_108;
      }

      v64 = *(v59 - 48);
      v63 = *(v59 - 40);
      v65 = __OFSUB__(v63, v64);
      v57 = v63 - v64;
      v58 = v65;
      if (v65)
      {
        goto LABEL_109;
      }

      v66 = &NewAByxGyFSnySiG_Tgq5_1[16 * v52];
      v68 = *v66;
      v67 = *(v66 + 1);
      v65 = __OFSUB__(v67, v68);
      v69 = v67 - v68;
      if (v65)
      {
        goto LABEL_111;
      }

      v65 = __OFADD__(v57, v69);
      v70 = v57 + v69;
      if (v65)
      {
        goto LABEL_114;
      }

      if (v70 >= v62)
      {
        v88 = &NewAByxGyFSnySiG_Tgq5_1[16 * v54 + 32];
        v90 = *v88;
        v89 = *(v88 + 1);
        v65 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v65)
        {
          goto LABEL_118;
        }

        if (v57 < v91)
        {
          v54 = v52 - 2;
        }

        goto LABEL_73;
      }

      goto LABEL_52;
    }

LABEL_3:
    v15 = a3[1];
    v16 = v125;
    if (v125 >= v15)
    {
      goto LABEL_94;
    }
  }

  v118 = v5;
  v96 = *a3;
  v97 = v9[9];
  v132 = v9[2];
  v98 = v96 + v97 * (v31 - 1);
  v99 = -v97;
  v120 = v18;
  v100 = v18 - v31;
  v130 = v96;
  v123 = v97;
  v101 = v96 + v31 * v97;
  v125 = v48;
LABEL_85:
  v128 = v98;
  v129 = v31;
  v126 = v101;
  v127 = v100;
  v102 = v98;
  while (1)
  {
    v103 = v136;
    v104 = v132;
    (v132)(v136, v101, v8);
    v105 = v137;
    v104(v137, v102, v138);
    lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
    v106 = dispatch thunk of static Comparable.< infix(_:_:)();
    v107 = *v134;
    v108 = v105;
    v8 = v138;
    (*v134)(v108, v138);
    v107(v103, v8);
    if ((v106 & 1) == 0)
    {
LABEL_84:
      v31 = v129 + 1;
      v98 = &v128[v123];
      v100 = v127 - 1;
      v101 = &v126[v123];
      v49 = v125;
      if (v129 + 1 != v125)
      {
        goto LABEL_85;
      }

      v5 = v118;
      a3 = v117;
      v9 = v121;
      NewAByxGyFSnySiG_Tgq5_1 = v122;
      v18 = v120;
      if (v125 < v120)
      {
        goto LABEL_121;
      }

      goto LABEL_33;
    }

    if (!v130)
    {
      break;
    }

    v109 = *v133;
    v110 = v131;
    (*v133)(v131, v101, v8);
    swift_arrayInitWithTakeFrontToBack();
    v109(v102, v110, v8);
    v102 += v99;
    v101 += v99;
    if (__CFADD__(v100++, 1))
    {
      goto LABEL_84;
    }
  }

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
}

void specialized _merge<A>(low:mid:high:buffer:by:)(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v50 = type metadata accessor for IndexPath();
  v8 = *(v50 - 8);
  __chkstk_darwin();
  v48 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v47 = &v38 - v10;
  v12 = *(v11 + 72);
  if (!v12)
  {
    __break(1u);
LABEL_62:
    __break(1u);
LABEL_63:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_62;
  }

  v13 = a3 - a2;
  if (a3 - a2 == 0x8000000000000000 && v12 == -1)
  {
    goto LABEL_63;
  }

  v49 = a3;
  v14 = (a2 - a1) / v12;
  v53 = a1;
  v52 = a4;
  if (v14 >= v13 / v12)
  {
    v16 = v13 / v12 * v12;
    if (a4 < a2 || a2 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v25 = a4 + v16;
    if (v16 >= 1)
    {
      v26 = -v12;
      v41 = a4;
      v42 = (v8 + 16);
      v39 = (v8 + 8);
      v40 = a1;
      v27 = a4 + v16;
      v28 = v49;
      v43 = v26;
      do
      {
        v38 = v25;
        v29 = a2 + v26;
        v45 = a2 + v26;
        v46 = v25;
        v44 = a2;
        while (1)
        {
          if (a2 <= a1)
          {
            v53 = a2;
            v25 = v38;
            goto LABEL_59;
          }

          v31 = v28;
          v49 = v28 + v26;
          v32 = v27 + v26;
          v33 = *v42;
          v34 = v47;
          v35 = v50;
          (*v42)(v47, v27 + v26, v50);
          v36 = v48;
          v33(v48, v29, v35);
          lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
          LOBYTE(v33) = dispatch thunk of static Comparable.< infix(_:_:)();
          v37 = *v39;
          (*v39)(v36, v35);
          v37(v34, v35);
          if (v33)
          {
            break;
          }

          v28 = v49;
          if (v31 < v27 || v49 >= v27)
          {
            swift_arrayInitWithTakeFrontToBack();
            v29 = v45;
            a1 = v40;
          }

          else
          {
            v29 = v45;
            a1 = v40;
            if (v31 != v27)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v46 = v32;
          v27 = v32;
          v30 = v32 > v41;
          v26 = v43;
          a2 = v44;
          if (!v30)
          {
            v25 = v46;
            goto LABEL_58;
          }
        }

        v28 = v49;
        if (v31 < v44 || v49 >= v44)
        {
          a2 = v45;
          swift_arrayInitWithTakeFrontToBack();
          a1 = v40;
        }

        else
        {
          a2 = v45;
          a1 = v40;
          if (v31 != v44)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }

        v25 = v46;
        v26 = v43;
      }

      while (v27 > v41);
    }

LABEL_58:
    v53 = a2;
LABEL_59:
    v51 = v25;
  }

  else
  {
    v15 = v14 * v12;
    if (a4 < a1 || a1 + v15 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v46 = a4 + v15;
    v51 = a4 + v15;
    if (v15 >= 1 && a2 < v49)
    {
      v44 = *(v8 + 16);
      v45 = v8 + 16;
      v42 = v12;
      v43 = (v8 + 8);
      do
      {
        v18 = v47;
        v19 = v50;
        v20 = v44;
        (v44)(v47, a2, v50);
        v21 = v48;
        v20(v48, a4, v19);
        lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
        LOBYTE(v20) = dispatch thunk of static Comparable.< infix(_:_:)();
        v22 = *v43;
        (*v43)(v21, v19);
        v22(v18, v19);
        if (v20)
        {
          v23 = v42;
          if (a1 < a2 || a1 >= &v42[a2])
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v23;
        }

        else
        {
          v23 = v42;
          v24 = &v42[a4];
          if (a1 < a4 || a1 >= v24)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v52 = v24;
          a4 += v23;
        }

        a1 += v23;
        v53 = a1;
      }

      while (a4 < v46 && a2 < v49);
    }
  }

  specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(&v53, &v52, &v51);
}

uint64_t specialized $defer #1 <A>() in _merge<A>(low:mid:high:buffer:by:)(unint64_t *a1, unint64_t *a2, uint64_t *a3)
{
  v3 = *a1;
  v4 = *a2;
  v5 = *a3;
  result = type metadata accessor for IndexPath();
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

uint64_t (*specialized Dictionary._Variant.subscript.modify(uint64_t *a1, uint64_t a2))()
{
  if (&_swift_coroFrameAlloc)
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = specialized Dictionary._Variant.asNative.modify(v5);
  v5[9] = specialized _NativeDictionary.subscript.modify(v5 + 4, a2, isUniquelyReferenced_nonNull_native);
  return Dictionary._Variant.subscript.modifyspecialized ;
}

uint64_t (*specialized Dictionary._Variant.subscript.modify(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))()
{
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x50uLL);
  }

  v9 = v8;
  *a1 = v8;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v9[8] = specialized Dictionary._Variant.asNative.modify(v9);
  v9[9] = specialized _NativeDictionary.subscript.modify(v9 + 4, a2, a3, a4, isUniquelyReferenced_nonNull_native);
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

uint64_t specialized OrderedSet._append(_:)(uint64_t a1)
{
  v3 = type metadata accessor for IndexPath();
  v4 = *(v3 - 8);
  v5 = __chkstk_darwin();
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *v1;
  v8 = v1[1];
  v10 = v8 + ((*(v4 + 80) + 32) & ~*(v4 + 80));
  v11 = *(v8 + 16);
  if (*v1)
  {

    specialized _HashTable.UnsafeHandle._find<A>(_:in:)(a1, v10, v11, (v9 + 16), v9 + 32);
    v13 = v12;
    v15 = v14;

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  else
  {
    if (v11)
    {
      v22[1] = v1;
      v17 = 0;
      v20 = *(v4 + 16);
      v19 = v4 + 16;
      v18 = v20;
      v23 = *(v19 + 56);
      v24 = v11;
      while (1)
      {
        v18(v7, v10, v3, v5);
        lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
        v21 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v19 - 8))(v7, v3);
        if (v21)
        {
          return 0;
        }

        ++v17;
        v10 += v23;
        if (v24 == v17)
        {
          v15 = 0;
          goto LABEL_10;
        }
      }
    }

    v15 = 0;
  }

LABEL_10:
  specialized OrderedSet._appendNew(_:in:)(a1, v15);
  return 1;
}

{
  v2 = v1[1];
  v3 = *(v2 + 16);
  if (*v1)
  {
    v4 = a1;
    specialized _HashTable.UnsafeHandle._find<A>(_:in:)();
    if (v5)
    {
      a1 = v4;
LABEL_9:
      specialized OrderedSet._appendNew(_:in:)(a1, v3);
      return 1;
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_9;
    }

    v6 = 0;
    while (*(v2 + 32 + 8 * v6) != a1)
    {
      if (v3 == ++v6)
      {
        v3 = 0;
        goto LABEL_9;
      }
    }
  }

  return 0;
}

void specialized OrderedSet._appendNew(_:in:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for IndexPath();
  v5 = *(v4 - 8);
  v6 = __chkstk_darwin();
  v8 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v8, a1, v4, v6);
  v9 = v2 + 1;
  v10 = v2[1];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v2[1] = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v10 + 16) + 1, 1);
    v10 = *v9;
  }

  v13 = *(v10 + 16);
  v12 = *(v10 + 24);
  if (v13 >= v12 >> 1)
  {
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
    v10 = *v9;
  }

  *(v10 + 16) = v13 + 1;
  (*(v5 + 32))(v10 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v13, v8, v4);
  v2[1] = v10;
  if (*v2)
  {
    swift_beginAccess();
    if (static _HashTable.maximumCapacity(forScale:)() > v13)
    {
      isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
      v16 = *v2;
      if ((isUniquelyReferenced_native & 1) == 0)
      {
        if (!v16)
        {
LABEL_16:
          __break(1u);
          return;
        }

        v17 = _HashTable.copy()();

        *v2 = v17;
        v16 = v17;
      }

      if (v16)
      {
        _HashTable.UnsafeHandle.subscript.setter();
        return;
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v13 < 0xF)
  {
    return;
  }

  specialized OrderedSet._regenerateHashTable()(v14);
}

{

  specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
  specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
  specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
  specialized ContiguousArray._endMutation()();
  v3 = *(v2[1] + 16);
  if (*v2)
  {
    swift_beginAccess();
    if (static _HashTable.maximumCapacity(forScale:)() >= v3)
    {
      isUniquelyReferenced_native = swift_isUniquelyReferenced_native();
      v5 = *v2;
      if ((isUniquelyReferenced_native & 1) == 0)
      {
        if (!v5)
        {
LABEL_12:
          __break(1u);
          return;
        }

        v6 = _HashTable.copy()();

        *v2 = v6;
        v5 = v6;
      }

      if (v5)
      {
        _HashTable.UnsafeHandle.subscript.setter();
        return;
      }

      __break(1u);
      goto LABEL_12;
    }
  }

  else if (v3 < 0x10)
  {
    return;
  }

  specialized OrderedSet._regenerateHashTable()();
}

void specialized OrderedSet._regenerateHashTable()(__n128 a1)
{
  v2 = *v1;
  if (*v1)
  {
    swift_beginAccess();
    v3 = *(v2 + 24) & 0x3FLL;
  }

  else
  {
    v3 = 0;
  }

  v4 = v1[1];
  if (v3 || *(v4 + 16) >= 0x10uLL)
  {
    v6 = static _HashTable.scale(forCapacity:)();
    if (v3 <= v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v3;
    }

    v5 = _s19CollectionsInternal10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVy10Foundation9IndexPathVG_Tt2g5(v4, v8, 0, v3, v7);
  }

  else
  {
    v5 = 0;
  }

  *v1 = v5;
}

{
  specialized OrderedSet._regenerateHashTable()(specialized closure #1 in _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:), a1);
}

{
  v2 = *v1;
  if (*v1)
  {
    swift_beginAccess();
    v3 = *(v2 + 24) & 0x3FLL;
  }

  else
  {
    v3 = 0;
  }

  v4 = v1[1];
  if (v3 || *(v4 + 16) >= 0x10uLL)
  {
    v6 = static _HashTable.scale(forCapacity:)();
    if (v3 <= v6)
    {
      v8 = v6;
    }

    else
    {
      v8 = v3;
    }

    v5 = _s19CollectionsInternal10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVy7LyricsX06SyncedO8LineViewC0Q0CG_Tt2g5Tm(v4, v8, 0, v3, v7);
  }

  else
  {
    v5 = 0;
  }

  *v1 = v5;
}

{
  specialized OrderedSet._regenerateHashTable()(specialized closure #1 in _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:), a1);
}

uint64_t _s19CollectionsInternal10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVy10Foundation9IndexPathVG_Tt2g5(uint64_t a1, uint64_t a2, char a3, uint64_t a4, __n128 a5)
{
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = static _HashTable.scale(forCapacity:)();
  result = 0;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if (v8 <= a4)
  {
    v8 = a4;
  }

  if (v8 >= 5)
  {
    v10 = _HashTable.init(scale:reservedScale:)();
    specialized _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:)(a1, (v10 + 16), v10 + 32);
    return v10;
  }

  return result;
}

void specialized closure #1 in _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v31 = a4;
  v32 = a1;
  v6 = type metadata accessor for IndexPath();
  v8 = __chkstk_darwin();
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v40 = a2;
  if (a2)
  {
    if ((v40 & 0x8000000000000000) == 0)
    {
      v11 = 0;
      v13 = *(v7 + 16);
      v12 = v7 + 16;
      v28 = *(v12 + 56);
      v29 = v13;
      v30 = v12;
      v27 = (v12 - 8);
      v13(v10, v32, v6, v8);
      while (1)
      {
        lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
        v15 = dispatch thunk of Hashable._rawHashValue(seed:)();
        v16 = 1 << *a3;
        v17 = __OFSUB__(v16, 1);
        v18 = v16 - 1;
        if (v17)
        {
          break;
        }

        v19 = v18 & v15;
        v20 = v31;
        v21 = _HashTable.UnsafeHandle._startIterator(bucket:)();
        v23 = v22;
        v25 = v24;
        (*v27)(v10, v6);
        v33 = a3;
        v34 = v20;
        v35 = v19;
        v36 = v21;
        v37 = v23;
        v38 = v25;
        v39 = 0;
        while (v36)
        {
          _HashTable.BucketIterator.advance()();
        }

        _HashTable.BucketIterator.currentValue.setter();
        if (++v11 == v40)
        {
          return;
        }

        v29(v10, v32 + v28 * v11, v6, v14);
      }

      __break(1u);
    }

    __break(1u);
  }
}

uint64_t specialized _HashTable.UnsafeHandle._find<A>(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t a5)
{
  v29 = a2;
  v8 = type metadata accessor for IndexPath();
  v9 = *(v8 - 8);
  __chkstk_darwin();
  v11 = v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
  v28[1] = a1;
  result = dispatch thunk of Hashable._rawHashValue(seed:)();
  v13 = 1 << *a4;
  v14 = __OFSUB__(v13, 1);
  v15 = v13 - 1;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    v16 = v15 & result;
    v17 = _HashTable.UnsafeHandle._startIterator(bucket:)();
    *&v34 = a4;
    *(&v34 + 1) = a5;
    *&v35 = v16;
    *(&v35 + 1) = v17;
    *&v36 = v18;
    *(&v36 + 1) = v19;
    v37 = 0;
    v20 = _HashTable.BucketIterator.currentValue.getter();
    if ((v21 & 1) == 0)
    {
      v24 = *(v9 + 16);
      v23 = v9 + 16;
      v22 = v24;
      v25 = *(v23 + 56);
      do
      {
        v22(v11, v29 + v25 * v20, v8);
        lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
        v26 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v23 - 8))(v11, v8);
        if (v26)
        {
          break;
        }

        _HashTable.BucketIterator.advance()();
        v30 = v34;
        v31 = v35;
        v32 = v36;
        v33 = v37;
        v20 = _HashTable.BucketIterator.currentValue.getter();
      }

      while ((v27 & 1) == 0);
    }

    return v20;
  }

  return result;
}

void (*specialized _NativeDictionary.subscript.modify(uint64_t *a1, uint64_t a2, char a3))(void **a1, char a2)
{
  v4 = v3;
  if (&_swift_coroFrameAlloc)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  v9 = v8;
  *a1 = v8;
  *(v8 + 16) = a2;
  *(v8 + 24) = v3;
  v10 = *v3;
  v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
  *(v9 + 9) = v12 & 1;
  v13 = *(v10 + 16);
  v14 = v12 ^ 1;
  v15 = __OFADD__(v13, (v12 ^ 1) & 1);
  v16 = v13 + ((v12 ^ 1) & 1);
  if (v15)
  {
    __break(1u);
    goto LABEL_16;
  }

  v17 = v12;
  v18 = *(v10 + 24);
  if (v18 < v16 || (a3 & 1) == 0)
  {
    if (v18 >= v16 && (a3 & 1) == 0)
    {
      v19 = v11;
      specialized _NativeDictionary.copy()();
      v11 = v19;
      goto LABEL_11;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v16, a3 & 1);
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(a2);
    if ((v17 & 1) == (v20 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  *(v9 + 32) = v11;
  if (v17)
  {
    v21 = *(*(*v4 + 56) + 8 * v11);
  }

  else
  {
    v21 = 0;
  }

  *v9 = v21;
  *(v9 + 8) = v14 & 1;
  return _NativeDictionary.subscript.modifyspecialized ;
}

void _NativeDictionary.subscript.modifyspecialized (void **a1, char a2)
{
  v2 = *a1;
  v3 = *v2;
  LOBYTE(v4) = *(v2 + 8);
  LOBYTE(v5) = *(v2 + 9);
  if (a2)
  {
    if (v2[1])
    {
      goto LABEL_8;
    }

    v6 = v2[4];
    v4 = *v2[3];
    if (*(v2 + 9))
    {
      goto LABEL_11;
    }

    v7 = v2[2];
    v4[(v6 >> 6) + 8] |= 1 << v6;
    *(v4[6] + 8 * v6) = v7;
    v5 = v4[7];
    *(v5 + 8 * v6) = v3;
    v8 = v4[2];
    v9 = __OFADD__(v8, 1);
    v3 = v8 + 1;
    if (!v9)
    {
LABEL_13:
      v4[2] = v3;
      goto LABEL_14;
    }

    __break(1u);
  }

  if (v4)
  {
LABEL_8:
    if (v5)
    {
      v10 = v2;
      specialized _NativeDictionary._delete(at:)(v2[4], *v2[3]);
      v2 = v10;
    }

    goto LABEL_14;
  }

  v6 = v2[4];
  v4 = *v2[3];
  if ((v5 & 1) == 0)
  {
    v11 = v2[2];
    v4[(v6 >> 6) + 8] |= 1 << v6;
    *(v4[6] + 8 * v6) = v11;
    *(v4[7] + 8 * v6) = v3;
    v12 = v4[2];
    v9 = __OFADD__(v12, 1);
    v3 = v12 + 1;
    if (v9)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_11:
  *(v4[7] + 8 * v6) = v3;
LABEL_14:

  free(v2);
}

void (*specialized _NativeDictionary.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5))(uint64_t **a1, char a2)
{
  v6 = v5;
  if (&_swift_coroFrameAlloc)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x38uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[3] = a4;
  v12[4] = v5;
  v12[1] = a2;
  v12[2] = a3;
  v14 = *v5;
  v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4);
  *(v13 + 48) = v16 & 1;
  v17 = *(v14 + 16);
  v18 = (v16 & 1) == 0;
  v19 = __OFADD__(v17, v18);
  v20 = v17 + v18;
  if (v19)
  {
    __break(1u);
    goto LABEL_16;
  }

  v21 = v16;
  v22 = *(v14 + 24);
  if (v22 < v20 || (a5 & 1) == 0)
  {
    if (v22 >= v20 && (a5 & 1) == 0)
    {
      v23 = v15;
      specialized _NativeDictionary.copy()();
      v15 = v23;
      goto LABEL_11;
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v20, a5 & 1);
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(a2, a3, a4);
    if ((v21 & 1) == (v24 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
    return result;
  }

LABEL_11:
  v13[5] = v15;
  if (v21)
  {
    v25 = *(*(*v6 + 56) + 8 * v15);
  }

  else
  {
    v25 = 0;
  }

  *v13 = v25;
  return _NativeDictionary.subscript.modifyspecialized ;
}

void _NativeDictionary.subscript.modifyspecialized (uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = **a1;
  LOBYTE(v4) = *(*a1 + 48);
  if (a2)
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    v5 = v2[5];
    v6 = *v2[4];
    if ((*a1)[6])
    {
      goto LABEL_9;
    }

    v7 = v2[3];
    v8 = v6[6] + 24 * v5;
    v9 = *(v2 + 1);
    v6[(v5 >> 6) + 8] |= 1 << v5;
    *v8 = v9;
    *(v8 + 16) = v7;
    *(v6[7] + 8 * v5) = v3;
    v10 = v6[2];
    v11 = __OFADD__(v10, 1);
    v4 = v10 + 1;
    if (!v11)
    {
LABEL_13:
      v18 = v2[3];
      v6[2] = v4;

      v19 = v18;
      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v3)
  {
LABEL_10:
    if (v4)
    {
      v12 = v2[5];
      v13 = *v2[4];
      outlined destroy of NSUserDefaults._Observer.SuiteAssociation(*(v13 + 48) + 24 * v12);
      specialized _NativeDictionary._delete(at:)(v12, v13);
    }

    goto LABEL_14;
  }

  v5 = v2[5];
  v6 = *v2[4];
  if ((v4 & 1) == 0)
  {
    v14 = v2[3];
    v15 = v6[6] + 24 * v5;
    v16 = *(v2 + 1);
    v6[(v5 >> 6) + 8] |= 1 << v5;
    *v15 = v16;
    *(v15 + 16) = v14;
    *(v6[7] + 8 * v5) = v3;
    v17 = v6[2];
    v11 = __OFADD__(v17, 1);
    v4 = v17 + 1;
    if (v11)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  *(v6[7] + 8 * v5) = v3;
LABEL_14:

  free(v2);
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

void specialized OrderedSet.append<A>(contentsOf:)(uint64_t a1)
{
  v2 = type metadata accessor for IndexPath();
  __chkstk_darwin();
  v4 = &v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __chkstk_darwin();
  v8 = &v24 - v7;
  v27 = *(a1 + 16);
  if (v27)
  {
    v9 = 0;
    v12 = *(v5 + 16);
    v10 = v5 + 16;
    v11 = v12;
    v29 = *(v10 + 56);
    v13 = (v10 - 8);
    v26 = (*(v10 + 64) + 32) & ~*(v10 + 64);
    v25 = a1 + v26;
    (v12)(v8, a1 + v26, v2, v6);
    while (1)
    {
      v17 = *v28;
      v16 = v28[1];
      v18 = v16 + v26;
      v19 = *(v16 + 16);
      if (*v28)
      {

        specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v8, v18, v19, (v17 + 16), v17 + 32);
        v21 = v20;
        v14 = v22;

        if (v21)
        {
          goto LABEL_4;
        }
      }

      else
      {
        if (!v19)
        {
LABEL_3:
          v14 = 0;
LABEL_4:
          specialized OrderedSet._appendNew(_:in:)(v8, v14);
          goto LABEL_5;
        }

        while (1)
        {
          v11(v4, v18, v2);
          lazy protocol witness table accessor for type IndexSet and conformance IndexSet(&lazy protocol witness table cache variable for type IndexPath and conformance IndexPath, &type metadata accessor for IndexPath, &protocol conformance descriptor for IndexPath);
          v23 = dispatch thunk of static Equatable.== infix(_:_:)();
          (*v13)(v4, v2);
          if (v23)
          {
            break;
          }

          v18 += v29;
          if (!--v19)
          {
            goto LABEL_3;
          }
        }
      }

LABEL_5:
      ++v9;
      (*v13)(v8, v2);
      if (v9 == v27)
      {
        return;
      }

      (v11)(v8, v25 + v29 * v9, v2, v15);
    }
  }
}