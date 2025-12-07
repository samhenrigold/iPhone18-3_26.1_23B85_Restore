uint64_t IncrementalIdentifier.Stream.Identifier.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  String.hash(into:)();
  return MEMORY[0x259C330A0](v2);
}

Swift::Int IncrementalIdentifier.Stream.Identifier.hashValue.getter(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = OUTLINED_FUNCTION_54(a1);
  OUTLINED_FUNCTION_59(v3, v4, v5, v6, v7, v8, v9, v10, v12, v13);
  String.hash(into:)();
  MEMORY[0x259C330A0](v2);
  return Hasher._finalize()();
}

void IncrementalIdentifier.Stream.Identifier.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, __int16 a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_57();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy25IntelligencePlatformQuery21IncrementalIdentifierO6StreamO0H0V10CodingKeys33_28C5D20B109144296BB7A903D000DD20LLOGMd, &_ss22KeyedDecodingContainerVy25IntelligencePlatformQuery21IncrementalIdentifierO6StreamO0H0V10CodingKeys33_28C5D20B109144296BB7A903D000DD20LLOGMR);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_5_2();
  v26 = lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Identifier.CodingKeys and conformance IncrementalIdentifier.Stream.Identifier.CodingKeys();
  OUTLINED_FUNCTION_25(&unk_286735050, v27, v26);
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_0(v22);
  }

  else
  {
    OUTLINED_FUNCTION_32();
    v28 = KeyedDecodingContainer.decode(_:forKey:)();
    v30 = v29;
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_32();
    v31 = KeyedDecodingContainer.decode(_:forKey:)();
    v32 = OUTLINED_FUNCTION_14_0();
    v33(v32);
    *v24 = v28;
    v24[1] = v30;
    v24[2] = v31;

    __swift_destroy_boxed_opaque_existential_0(v22);
  }

  OUTLINED_FUNCTION_24();
}

uint64_t protocol witness for IncrementalIdentifier.Identifier.asDatabaseType.getter in conformance IncrementalIdentifier.Stream.Identifier@<X0>(uint64_t *a1@<X8>)
{
  result = specialized IncrementalIdentifier.Identifier<>.asDatabaseType.getter(*v1, v1[1], v1[2]);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

double specialized IncrementalIdentifier.Identifier<>.init(dbType:)@<D0>(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = MEMORY[0x259C331C0]();
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Identifier and conformance IncrementalIdentifier.Stream.Identifier();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  objc_autoreleasePoolPop(v7);
  outlined consume of Data._Representation(a1, a2);
  if (!v3)
  {
    result = *&v9;
    *a3 = v9;
    *(a3 + 16) = v10;
  }

  return result;
}

{
  v7 = MEMORY[0x259C331C0]();
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Store and conformance IncrementalIdentifier.Stream.Store();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  objc_autoreleasePoolPop(v7);
  outlined consume of Data._Representation(a1, a2);
  if (!v3)
  {
    result = *&v9;
    *a3 = v9;
    *(a3 + 16) = v10;
    *(a3 + 24) = v11;
  }

  return result;
}

__n128 specialized IncrementalIdentifier.Identifier<>.init(dbType:)@<Q0>(uint64_t a1@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>)
{
  v7 = MEMORY[0x259C331C0]();
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Bookmark and conformance IncrementalIdentifier.Stream.Bookmark();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  objc_autoreleasePoolPop(v7);
  outlined consume of Data._Representation(a1, a2);
  if (!v3)
  {
    result = v11;
    a3->n128_u64[0] = v9;
    a3->n128_u64[1] = v10;
    a3[1] = v11;
    a3[2].n128_u64[0] = v12;
    a3[2].n128_u64[1] = v13;
  }

  return result;
}

uint64_t specialized IncrementalIdentifier.Identifier<>.init(dbType:)@<X0>(uint64_t a1@<X0>, unint64_t a2@<X1>, void *a3@<X8>)
{
  v7 = MEMORY[0x259C331C0]();
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type IncrementalIdentifier.View.Store and conformance IncrementalIdentifier.View.Store();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  objc_autoreleasePoolPop(v7);
  result = outlined consume of Data._Representation(a1, a2);
  if (!v3)
  {
    *a3 = v9;
    a3[1] = v10;
  }

  return result;
}

uint64_t IncrementalIdentifier.Identifier<>.init(dbType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  return (*(a4 + 96))(a1, a2, a3);
}

{
  return (*(a4 + 80))(a1, a2, a3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance IncrementalIdentifier.Stream.Identifier(uint64_t a1)
{
  v2 = *(v1 + 16);
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x259C330A0](v2);
  return Hasher._finalize()();
}

uint64_t IncrementalIdentifier.Stream.Bookmark.init(file:offset:tombstoneFile:tombstoneOffset:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, void *a7@<X8>)
{
  *a7 = result;
  a7[1] = a2;
  a7[2] = a3;
  a7[3] = a4;
  a7[4] = a5;
  a7[5] = a6;
  return result;
}

BOOL static IncrementalIdentifier.Stream.Bookmark.< infix(_:_:)(void *a1, void *a2)
{
  v2 = a1[2];
  v3 = a2[2];
  v4 = a2[3];
  v5 = a2[4];
  v6 = *a1 == *a2 && a1[1] == a2[1];
  v7 = v6;
  if (v6)
  {
    if (v3 < v2)
    {
      return 1;
    }

    v13 = a2[5];
    v14 = a1[5];
    v15 = a1[4];
    v16 = a1[3];
    if (v2 != v3)
    {
      goto LABEL_24;
    }
  }

  else
  {
    v13 = a2[5];
    v14 = a1[5];
    v15 = a1[4];
    v16 = a1[3];
    v8 = 1;
    OUTLINED_FUNCTION_7_1();
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
    if (v9)
    {
      return v8;
    }

    OUTLINED_FUNCTION_7_1();
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 && v3 < v2)
    {
      return v8;
    }

    OUTLINED_FUNCTION_7_1();
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || v2 != v3)
    {
      goto LABEL_26;
    }
  }

  if (v16 != v4 || v15 != v5)
  {
    v8 = 1;
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return v8;
    }
  }

  if (v7)
  {
LABEL_24:
    if (v2 != v3)
    {
      return 0;
    }

    goto LABEL_28;
  }

LABEL_26:
  OUTLINED_FUNCTION_7_1();
  v8 = 0;
  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0 && v2 == v3)
  {
LABEL_28:
    v11 = v16 == v4 && v15 == v5;
    if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      return v13 < v14;
    }

    return 0;
  }

  return v8;
}

BOOL static IncrementalIdentifier.Stream.Bookmark.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_63(a1);
  v4 = v3[2];
  v5 = v3[3];
  v6 = v3[4];
  v7 = v3[5];
  v9 = v2[2];
  v8 = v2[3];
  v10 = v2[4];
  v11 = v2[5];
  if (v1 == *v2 && v3[1] == v2[1])
  {
    if (v4 != v9)
    {
      return 0;
    }

LABEL_9:
    if (v5 == v8 && v6 == v10)
    {
      return v7 == v11;
    }

    OUTLINED_FUNCTION_6_1();
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return v7 == v11;
    }

    return 0;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if ((v13 & 1) != 0 && v4 == v9)
  {
    goto LABEL_9;
  }

  return result;
}

uint64_t IncrementalIdentifier.Stream.Bookmark.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701603686 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x74657366666FLL && a2 == 0xE600000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6E6F7473626D6F74 && a2 == 0xED0000656C694665;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x6E6F7473626D6F74 && a2 == 0xEF74657366664F65)
      {

        return 3;
      }

      else
      {
        v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v9)
        {
          return 3;
        }

        else
        {
          return 4;
        }
      }
    }
  }
}

Swift::Int IncrementalIdentifier.PersistableGlobalIdentifier.CodingKeys.hashValue.getter(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_54(a1);
  MEMORY[0x259C33090](v1);
  return Hasher._finalize()();
}

uint64_t IncrementalIdentifier.Stream.Bookmark.CodingKeys.stringValue.getter(char a1)
{
  result = 1701603686;
  switch(a1)
  {
    case 1:
      result = 0x74657366666FLL;
      break;
    case 2:
    case 3:
      result = 0x6E6F7473626D6F74;
      break;
    default:
      return result;
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance IncrementalIdentifier.PersistableGlobalIdentifier.CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x259C33090](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance IncrementalIdentifier.Stream.Bookmark.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = IncrementalIdentifier.Stream.Bookmark.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance IncrementalIdentifier.Stream.Bookmark.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Bookmark.CodingKeys and conformance IncrementalIdentifier.Stream.Bookmark.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance IncrementalIdentifier.Stream.Bookmark.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Bookmark.CodingKeys and conformance IncrementalIdentifier.Stream.Bookmark.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void IncrementalIdentifier.Stream.Bookmark.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_23();
  v27 = v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy25IntelligencePlatformQuery21IncrementalIdentifierO6StreamO8BookmarkV10CodingKeys33_28C5D20B109144296BB7A903D000DD20LLOGMd, &_ss22KeyedEncodingContainerVy25IntelligencePlatformQuery21IncrementalIdentifierO6StreamO8BookmarkV10CodingKeys33_28C5D20B109144296BB7A903D000DD20LLOGMR);
  OUTLINED_FUNCTION_0_2();
  v30 = v29;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v31);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_9_0(v27);
  lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Bookmark.CodingKeys and conformance IncrementalIdentifier.Stream.Bookmark.CodingKeys();
  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_39();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v24)
  {
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_50();
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_74();
    OUTLINED_FUNCTION_50();
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_50();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  (*(v30 + 8))(v25, v28);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_24();
}

unint64_t lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Bookmark.CodingKeys and conformance IncrementalIdentifier.Stream.Bookmark.CodingKeys()
{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark.CodingKeys and conformance IncrementalIdentifier.Stream.Bookmark.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark.CodingKeys and conformance IncrementalIdentifier.Stream.Bookmark.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark.CodingKeys and conformance IncrementalIdentifier.Stream.Bookmark.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark.CodingKeys and conformance IncrementalIdentifier.Stream.Bookmark.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark.CodingKeys and conformance IncrementalIdentifier.Stream.Bookmark.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark.CodingKeys and conformance IncrementalIdentifier.Stream.Bookmark.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark.CodingKeys and conformance IncrementalIdentifier.Stream.Bookmark.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark.CodingKeys and conformance IncrementalIdentifier.Stream.Bookmark.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark.CodingKeys and conformance IncrementalIdentifier.Stream.Bookmark.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark.CodingKeys and conformance IncrementalIdentifier.Stream.Bookmark.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark.CodingKeys and conformance IncrementalIdentifier.Stream.Bookmark.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark.CodingKeys and conformance IncrementalIdentifier.Stream.Bookmark.CodingKeys);
  }

  return result;
}

uint64_t IncrementalIdentifier.Stream.Bookmark.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 40);
  String.hash(into:)();
  MEMORY[0x259C330A0](v2);
  String.hash(into:)();
  return MEMORY[0x259C330A0](v3);
}

Swift::Int IncrementalIdentifier.Stream.Bookmark.hashValue.getter(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 40);
  v4 = OUTLINED_FUNCTION_54(a1);
  OUTLINED_FUNCTION_59(v4, v5, v6, v7, v8, v9, v10, v11, v13, v14);
  String.hash(into:)();
  MEMORY[0x259C330A0](v2);
  String.hash(into:)();
  MEMORY[0x259C330A0](v3);
  return Hasher._finalize()();
}

void IncrementalIdentifier.Stream.Bookmark.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_23();
  v26 = v25;
  v28 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy25IntelligencePlatformQuery21IncrementalIdentifierO6StreamO8BookmarkV10CodingKeys33_28C5D20B109144296BB7A903D000DD20LLOGMd, &_ss22KeyedDecodingContainerVy25IntelligencePlatformQuery21IncrementalIdentifierO6StreamO8BookmarkV10CodingKeys33_28C5D20B109144296BB7A903D000DD20LLOGMR);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_56();
  OUTLINED_FUNCTION_38(v26, v26[3]);
  lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Bookmark.CodingKeys and conformance IncrementalIdentifier.Stream.Bookmark.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v24)
  {
    __swift_destroy_boxed_opaque_existential_0(v26);
  }

  else
  {
    OUTLINED_FUNCTION_31();
    v30 = KeyedDecodingContainer.decode(_:forKey:)();
    v32 = v31;
    OUTLINED_FUNCTION_73();
    OUTLINED_FUNCTION_31();
    v38 = KeyedDecodingContainer.decode(_:forKey:)();
    OUTLINED_FUNCTION_31();
    v37 = KeyedDecodingContainer.decode(_:forKey:)();
    v39 = v33;
    OUTLINED_FUNCTION_31();
    v34 = KeyedDecodingContainer.decode(_:forKey:)();
    v35 = OUTLINED_FUNCTION_34();
    v36(v35);
    *v28 = v30;
    v28[1] = v32;
    v28[2] = v38;
    v28[3] = v37;
    v28[4] = v39;
    v28[5] = v34;

    __swift_destroy_boxed_opaque_existential_0(v26);
  }

  OUTLINED_FUNCTION_24();
}

uint64_t protocol witness for IncrementalIdentifier.Identifier.asDatabaseType.getter in conformance IncrementalIdentifier.Stream.Bookmark@<X0>(uint64_t *a1@<X8>)
{
  result = specialized IncrementalIdentifier.Identifier<>.asDatabaseType.getter();
  if (!v1)
  {
    *a1 = result;
    a1[1] = v4;
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance IncrementalIdentifier.Stream.Bookmark(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 40);
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x259C330A0](v2);
  String.hash(into:)();
  MEMORY[0x259C330A0](v3);
  return Hasher._finalize()();
}

BOOL protocol witness for static Comparable.<= infix(_:_:) in conformance IncrementalIdentifier.Stream.Bookmark(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return _sSLsE2leoiySbx_xtFZ25IntelligencePlatformQuery21IncrementalIdentifierO6StreamO8BookmarkV_Tt1B5(v7, v8);
}

BOOL protocol witness for static Comparable.>= infix(_:_:) in conformance IncrementalIdentifier.Stream.Bookmark(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return _sSLsE2geoiySbx_xtFZ25IntelligencePlatformQuery21IncrementalIdentifierO6StreamO8BookmarkV_Tt1B5(v7, v8);
}

BOOL protocol witness for static Comparable.> infix(_:_:) in conformance IncrementalIdentifier.Stream.Bookmark(_OWORD *a1, __int128 *a2)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v3 = *a2;
  v4 = a2[1];
  v7[2] = a1[2];
  v8[0] = v3;
  v5 = a2[2];
  v8[1] = v4;
  v8[2] = v5;
  return _sSLsE1goiySbx_xtFZ25IntelligencePlatformQuery21IncrementalIdentifierO6StreamO8BookmarkV_Tt1B5(v7, v8);
}

IntelligencePlatformQuery::IncrementalIdentifier::Stream::Store __swiftcall IncrementalIdentifier.Stream.Store.init(source:storage:)(IntelligencePlatformQuery::IncrementalIdentifier::Stream::Source source, IntelligencePlatformQuery::IncrementalIdentifier::Stream::Storage storage)
{
  v3 = *(source.value._countAndFlagsBits + 8);
  v4 = *source.value._object;
  v5 = *(source.value._object + 1);
  *v2 = *source.value._countAndFlagsBits;
  v2[1] = v3;
  v2[2] = v4;
  v2[3] = v5;
  result.storage = storage;
  result.source = source;
  return result;
}

BOOL static IncrementalIdentifier.Stream.Store.== infix(_:_:)(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_63(a1);
  v4 = v3[2];
  v5 = v3[3];
  v6 = v2[2];
  v7 = v2[3];
  v8 = v1 == *v2 && v3[1] == v2[1];
  result = 0;
  if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {
    if (v4 == v6 && v5 == v7)
    {
      return 1;
    }

    OUTLINED_FUNCTION_6_1();
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return 1;
    }
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance IncrementalIdentifier.Stream.Store.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Store.CodingKeys and conformance IncrementalIdentifier.Stream.Store.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance IncrementalIdentifier.Stream.Store.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Store.CodingKeys and conformance IncrementalIdentifier.Stream.Store.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void IncrementalIdentifier.Stream.Store.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  OUTLINED_FUNCTION_23();
  v16 = v15;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy25IntelligencePlatformQuery21IncrementalIdentifierO6StreamO5StoreV10CodingKeys33_28C5D20B109144296BB7A903D000DD20LLOGMd, &_ss22KeyedEncodingContainerVy25IntelligencePlatformQuery21IncrementalIdentifierO6StreamO5StoreV10CodingKeys33_28C5D20B109144296BB7A903D000DD20LLOGMR);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_38(v16, v16[3]);
  lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Store.CodingKeys and conformance IncrementalIdentifier.Stream.Store.CodingKeys();

  OUTLINED_FUNCTION_68();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Source and conformance IncrementalIdentifier.Stream.Source();
  OUTLINED_FUNCTION_3_2();
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v14)
  {
    OUTLINED_FUNCTION_72();
    lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Storage and conformance IncrementalIdentifier.Stream.Storage();

    OUTLINED_FUNCTION_3_2();
    OUTLINED_FUNCTION_50();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v18 = OUTLINED_FUNCTION_28();
  v19(v18);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_24();
}

unint64_t lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Store.CodingKeys and conformance IncrementalIdentifier.Stream.Store.CodingKeys()
{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store.CodingKeys and conformance IncrementalIdentifier.Stream.Store.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store.CodingKeys and conformance IncrementalIdentifier.Stream.Store.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store.CodingKeys and conformance IncrementalIdentifier.Stream.Store.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store.CodingKeys and conformance IncrementalIdentifier.Stream.Store.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store.CodingKeys and conformance IncrementalIdentifier.Stream.Store.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store.CodingKeys and conformance IncrementalIdentifier.Stream.Store.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store.CodingKeys and conformance IncrementalIdentifier.Stream.Store.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store.CodingKeys and conformance IncrementalIdentifier.Stream.Store.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store.CodingKeys and conformance IncrementalIdentifier.Stream.Store.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store.CodingKeys and conformance IncrementalIdentifier.Stream.Store.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store.CodingKeys and conformance IncrementalIdentifier.Stream.Store.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store.CodingKeys and conformance IncrementalIdentifier.Stream.Store.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Source and conformance IncrementalIdentifier.Stream.Source()
{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Source and conformance IncrementalIdentifier.Stream.Source;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Source and conformance IncrementalIdentifier.Stream.Source)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Source and conformance IncrementalIdentifier.Stream.Source);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Source and conformance IncrementalIdentifier.Stream.Source;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Source and conformance IncrementalIdentifier.Stream.Source)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Source and conformance IncrementalIdentifier.Stream.Source);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Source and conformance IncrementalIdentifier.Stream.Source;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Source and conformance IncrementalIdentifier.Stream.Source)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Source and conformance IncrementalIdentifier.Stream.Source);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Source and conformance IncrementalIdentifier.Stream.Source;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Source and conformance IncrementalIdentifier.Stream.Source)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Source and conformance IncrementalIdentifier.Stream.Source);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Source and conformance IncrementalIdentifier.Stream.Source;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Source and conformance IncrementalIdentifier.Stream.Source)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Source and conformance IncrementalIdentifier.Stream.Source);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Source and conformance IncrementalIdentifier.Stream.Source;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Source and conformance IncrementalIdentifier.Stream.Source)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Source and conformance IncrementalIdentifier.Stream.Source);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Source and conformance IncrementalIdentifier.Stream.Source;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Source and conformance IncrementalIdentifier.Stream.Source)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Source and conformance IncrementalIdentifier.Stream.Source);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Storage and conformance IncrementalIdentifier.Stream.Storage()
{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage and conformance IncrementalIdentifier.Stream.Storage;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage and conformance IncrementalIdentifier.Stream.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage and conformance IncrementalIdentifier.Stream.Storage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage and conformance IncrementalIdentifier.Stream.Storage;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage and conformance IncrementalIdentifier.Stream.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage and conformance IncrementalIdentifier.Stream.Storage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage and conformance IncrementalIdentifier.Stream.Storage;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage and conformance IncrementalIdentifier.Stream.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage and conformance IncrementalIdentifier.Stream.Storage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage and conformance IncrementalIdentifier.Stream.Storage;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage and conformance IncrementalIdentifier.Stream.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage and conformance IncrementalIdentifier.Stream.Storage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage and conformance IncrementalIdentifier.Stream.Storage;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage and conformance IncrementalIdentifier.Stream.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage and conformance IncrementalIdentifier.Stream.Storage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage and conformance IncrementalIdentifier.Stream.Storage;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage and conformance IncrementalIdentifier.Stream.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage and conformance IncrementalIdentifier.Stream.Storage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage and conformance IncrementalIdentifier.Stream.Storage;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage and conformance IncrementalIdentifier.Stream.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Storage and conformance IncrementalIdentifier.Stream.Storage);
  }

  return result;
}

uint64_t IncrementalIdentifier.Stream.Store.hash(into:)(uint64_t a1)
{
  String.hash(into:)();

  return String.hash(into:)();
}

Swift::Int IncrementalIdentifier.Stream.Store.hashValue.getter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_54(a1);
  OUTLINED_FUNCTION_59(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  String.hash(into:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

void IncrementalIdentifier.Stream.Store.init(from:)(uint64_t a1)
{
  OUTLINED_FUNCTION_23();
  v3 = v2;
  v5 = v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy25IntelligencePlatformQuery21IncrementalIdentifierO6StreamO5StoreV10CodingKeys33_28C5D20B109144296BB7A903D000DD20LLOGMd, &_ss22KeyedDecodingContainerVy25IntelligencePlatformQuery21IncrementalIdentifierO6StreamO5StoreV10CodingKeys33_28C5D20B109144296BB7A903D000DD20LLOGMR);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_5_2();
  lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Store.CodingKeys and conformance IncrementalIdentifier.Stream.Store.CodingKeys();
  OUTLINED_FUNCTION_39();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(v3);
  }

  else
  {
    lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Source and conformance IncrementalIdentifier.Stream.Source();
    OUTLINED_FUNCTION_12_0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    OUTLINED_FUNCTION_72();
    lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Storage and conformance IncrementalIdentifier.Stream.Storage();
    OUTLINED_FUNCTION_12_0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v8 = OUTLINED_FUNCTION_33();
    v9(v8, v6);
    *v5 = v10;
    v5[1] = v11;
    v5[2] = v10;
    v5[3] = v11;

    __swift_destroy_boxed_opaque_existential_0(v3);
  }

  OUTLINED_FUNCTION_24();
}

uint64_t protocol witness for IncrementalIdentifier.Identifier.asDatabaseType.getter in conformance IncrementalIdentifier.Stream.Store@<X0>(uint64_t *a1@<X8>)
{
  result = specialized IncrementalIdentifier.Identifier<>.asDatabaseType.getter(*v1, v1[1], v1[2], v1[3]);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance IncrementalIdentifier.Stream.Store(uint64_t a1)
{
  v2 = *(v1 + 2);
  v3 = *(v1 + 3);
  v6 = *v1;
  v7 = v2;
  v8 = v3;
  Hasher.init(_seed:)();
  IncrementalIdentifier.Stream.Store.hash(into:)(v5);
  return Hasher._finalize()();
}

uint64_t _s25IntelligencePlatformQuery21IncrementalIdentifierO05StoreE0PAAE1loiySbx_xtFZAC6StreamO0F0V_Tt1B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a1 != a5 || a2 != a6)
  {
    v13 = 1;
    if (_stringCompareWithSmolCheck(_:_:expecting:)())
    {
      return v13;
    }

    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      return 0;
    }
  }

  if (a3 == a7 && a4 == a8)
  {
    return 0;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t _s25IntelligencePlatformQuery21IncrementalIdentifierO05StoreE0PAAE1loiySbx_xtFZAC4ViewO0F0V_Tt1B5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 0;
  }

  v5 = 1;
  if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    _stringCompareWithSmolCheck(_:_:expecting:)();
    return 0;
  }

  return v5;
}

uint64_t static IncrementalIdentifier.StoreIdentifier.< infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_2();
  v41 = v9;
  v42 = v8;
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_11_0();
  v40 = (v10 - v11);
  MEMORY[0x28223BE20](v12);
  v39 = &v38 - v13;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_2();
  v16 = v15;
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_11_0();
  v20 = v18 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v38 - v22;
  v24 = *(a4 + 48);
  v43 = a1;
  v24(a3, a4);
  v44 = a2;
  v24(a3, a4);
  v45 = a3;
  v25 = *(*(swift_getAssociatedConformanceWitness() + 8) + 8);
  OUTLINED_FUNCTION_40();
  LOBYTE(a1) = dispatch thunk of static Comparable.< infix(_:_:)();
  v26 = *(v16 + 8);
  v26(v20, AssociatedTypeWitness);
  v26(v23, AssociatedTypeWitness);
  if (a1)
  {
    v27 = 1;
  }

  else
  {
    v38 = v25;
    v28 = v45;
    v24(v45, a4);
    v24(v28, a4);
    OUTLINED_FUNCTION_40();
    v29 = dispatch thunk of static Equatable.== infix(_:_:)();
    v26(v20, AssociatedTypeWitness);
    v26(v23, AssociatedTypeWitness);
    if (v29)
    {
      v30 = *(a4 + 56);
      v31 = v39;
      v32 = OUTLINED_FUNCTION_70();
      v30(v32);
      v33 = v40;
      v34 = OUTLINED_FUNCTION_70();
      v30(v34);
      v35 = v42;
      swift_getAssociatedConformanceWitness();
      OUTLINED_FUNCTION_40();
      v27 = dispatch thunk of static Comparable.< infix(_:_:)();
      v36 = *(v41 + 8);
      v36(v33, v35);
      v36(v31, v35);
    }

    else
    {
      v27 = 0;
    }
  }

  return v27 & 1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance IncrementalIdentifier.View.Source.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IncrementalIdentifier.View.Source.CodingKeys and conformance IncrementalIdentifier.View.Source.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance IncrementalIdentifier.View.Source.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IncrementalIdentifier.View.Source.CodingKeys and conformance IncrementalIdentifier.View.Source.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t lazy protocol witness table accessor for type IncrementalIdentifier.View.Source.CodingKeys and conformance IncrementalIdentifier.View.Source.CodingKeys()
{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source.CodingKeys and conformance IncrementalIdentifier.View.Source.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source.CodingKeys and conformance IncrementalIdentifier.View.Source.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source.CodingKeys and conformance IncrementalIdentifier.View.Source.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source.CodingKeys and conformance IncrementalIdentifier.View.Source.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source.CodingKeys and conformance IncrementalIdentifier.View.Source.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source.CodingKeys and conformance IncrementalIdentifier.View.Source.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source.CodingKeys and conformance IncrementalIdentifier.View.Source.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source.CodingKeys and conformance IncrementalIdentifier.View.Source.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source.CodingKeys and conformance IncrementalIdentifier.View.Source.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source.CodingKeys and conformance IncrementalIdentifier.View.Source.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source.CodingKeys and conformance IncrementalIdentifier.View.Source.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source.CodingKeys and conformance IncrementalIdentifier.View.Source.CodingKeys);
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance IncrementalIdentifier.View.Storage.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = IncrementalIdentifier.View.Storage.CodingKeys.init(stringValue:)();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance IncrementalIdentifier.View.Storage.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IncrementalIdentifier.View.Storage.CodingKeys and conformance IncrementalIdentifier.View.Storage.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance IncrementalIdentifier.View.Storage.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IncrementalIdentifier.View.Storage.CodingKeys and conformance IncrementalIdentifier.View.Storage.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t IncrementalIdentifier.View.Storage.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy25IntelligencePlatformQuery21IncrementalIdentifierO4ViewO7StorageV10CodingKeys33_28C5D20B109144296BB7A903D000DD20LLOGMd, &_ss22KeyedEncodingContainerVy25IntelligencePlatformQuery21IncrementalIdentifierO4ViewO7StorageV10CodingKeys33_28C5D20B109144296BB7A903D000DD20LLOGMR);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_38(a1, a1[3]);
  lazy protocol witness table accessor for type IncrementalIdentifier.View.Storage.CodingKeys and conformance IncrementalIdentifier.View.Storage.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v3 = OUTLINED_FUNCTION_46();
  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type IncrementalIdentifier.View.Storage.CodingKeys and conformance IncrementalIdentifier.View.Storage.CodingKeys()
{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage.CodingKeys and conformance IncrementalIdentifier.View.Storage.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage.CodingKeys and conformance IncrementalIdentifier.View.Storage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage.CodingKeys and conformance IncrementalIdentifier.View.Storage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage.CodingKeys and conformance IncrementalIdentifier.View.Storage.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage.CodingKeys and conformance IncrementalIdentifier.View.Storage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage.CodingKeys and conformance IncrementalIdentifier.View.Storage.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage.CodingKeys and conformance IncrementalIdentifier.View.Storage.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage.CodingKeys and conformance IncrementalIdentifier.View.Storage.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage.CodingKeys and conformance IncrementalIdentifier.View.Storage.CodingKeys);
  }

  return result;
}

uint64_t protocol witness for IncrementalIdentifier.Identifier.asDatabaseType.getter in conformance IncrementalIdentifier.View.Storage@<X0>(uint64_t *a1@<X8>)
{
  result = specialized OptionSet<>.init()();
  *a1 = result;
  return result;
}

uint64_t static IncrementalIdentifier.Stream.Source.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_63(a1);
  if (v2 == *v3 && *(v4 + 8) == v3[1])
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)();
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance IncrementalIdentifier.View.StringIdentifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IncrementalIdentifier.View.StringIdentifier.CodingKeys and conformance IncrementalIdentifier.View.StringIdentifier.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance IncrementalIdentifier.View.StringIdentifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IncrementalIdentifier.View.StringIdentifier.CodingKeys and conformance IncrementalIdentifier.View.StringIdentifier.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void IncrementalIdentifier.Stream.Source.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_23();
  v28 = v18;
  OUTLINED_FUNCTION_76(v19, v20, v21);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v22);
  OUTLINED_FUNCTION_56();
  v23 = OUTLINED_FUNCTION_43();
  v25 = OUTLINED_FUNCTION_38(v23, v24);
  v28(v25);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  v26 = OUTLINED_FUNCTION_47();
  v27(v26);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_24();
}

unint64_t lazy protocol witness table accessor for type IncrementalIdentifier.View.StringIdentifier.CodingKeys and conformance IncrementalIdentifier.View.StringIdentifier.CodingKeys()
{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier.CodingKeys and conformance IncrementalIdentifier.View.StringIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier.CodingKeys and conformance IncrementalIdentifier.View.StringIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier.CodingKeys and conformance IncrementalIdentifier.View.StringIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier.CodingKeys and conformance IncrementalIdentifier.View.StringIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier.CodingKeys and conformance IncrementalIdentifier.View.StringIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier.CodingKeys and conformance IncrementalIdentifier.View.StringIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier.CodingKeys and conformance IncrementalIdentifier.View.StringIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier.CodingKeys and conformance IncrementalIdentifier.View.StringIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier.CodingKeys and conformance IncrementalIdentifier.View.StringIdentifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier.CodingKeys and conformance IncrementalIdentifier.View.StringIdentifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier.CodingKeys and conformance IncrementalIdentifier.View.StringIdentifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier.CodingKeys and conformance IncrementalIdentifier.View.StringIdentifier.CodingKeys);
  }

  return result;
}

void IncrementalIdentifier.Stream.Source.init(from:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_23();
  v4 = v3;
  v6 = v5;
  v17 = v7;
  OUTLINED_FUNCTION_76(v5, v8, v9);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_55();
  v11 = OUTLINED_FUNCTION_38(v6, v6[3]);
  v4(v11);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v12 = KeyedDecodingContainer.decode(_:forKey:)();
    v14 = v13;
    v15 = OUTLINED_FUNCTION_43();
    v16(v15);
    *v17 = v12;
    v17[1] = v14;
  }

  __swift_destroy_boxed_opaque_existential_0(v6);
  OUTLINED_FUNCTION_24();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance IncrementalIdentifier.View.Int64Identifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IncrementalIdentifier.View.Int64Identifier.CodingKeys and conformance IncrementalIdentifier.View.Int64Identifier.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance IncrementalIdentifier.View.Int64Identifier.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IncrementalIdentifier.View.Int64Identifier.CodingKeys and conformance IncrementalIdentifier.View.Int64Identifier.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void IncrementalIdentifier.View.Int64Identifier.encode(to:)(uint64_t a1)
{
  OUTLINED_FUNCTION_23();
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy25IntelligencePlatformQuery21IncrementalIdentifierO4ViewO05Int64H0V10CodingKeys33_28C5D20B109144296BB7A903D000DD20LLOGMd, &_ss22KeyedEncodingContainerVy25IntelligencePlatformQuery21IncrementalIdentifierO4ViewO05Int64H0V10CodingKeys33_28C5D20B109144296BB7A903D000DD20LLOGMR);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_9_0(v2);
  lazy protocol witness table accessor for type IncrementalIdentifier.View.Int64Identifier.CodingKeys and conformance IncrementalIdentifier.View.Int64Identifier.CodingKeys();
  OUTLINED_FUNCTION_39();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  OUTLINED_FUNCTION_64();
  KeyedEncodingContainer.encode(_:forKey:)();
  v4 = OUTLINED_FUNCTION_43();
  v5(v4);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_24();
}

unint64_t lazy protocol witness table accessor for type IncrementalIdentifier.View.Int64Identifier.CodingKeys and conformance IncrementalIdentifier.View.Int64Identifier.CodingKeys()
{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier.CodingKeys and conformance IncrementalIdentifier.View.Int64Identifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier.CodingKeys and conformance IncrementalIdentifier.View.Int64Identifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier.CodingKeys and conformance IncrementalIdentifier.View.Int64Identifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier.CodingKeys and conformance IncrementalIdentifier.View.Int64Identifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier.CodingKeys and conformance IncrementalIdentifier.View.Int64Identifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier.CodingKeys and conformance IncrementalIdentifier.View.Int64Identifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier.CodingKeys and conformance IncrementalIdentifier.View.Int64Identifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier.CodingKeys and conformance IncrementalIdentifier.View.Int64Identifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier.CodingKeys and conformance IncrementalIdentifier.View.Int64Identifier.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier.CodingKeys and conformance IncrementalIdentifier.View.Int64Identifier.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier.CodingKeys and conformance IncrementalIdentifier.View.Int64Identifier.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier.CodingKeys and conformance IncrementalIdentifier.View.Int64Identifier.CodingKeys);
  }

  return result;
}

Swift::Int IncrementalIdentifier.View.Int64Identifier.hashValue.getter(uint64_t a1)
{
  v2 = *v1;
  OUTLINED_FUNCTION_54(a1);
  MEMORY[0x259C330A0](v2);
  return Hasher._finalize()();
}

void IncrementalIdentifier.View.Int64Identifier.init(from:)(uint64_t a1)
{
  OUTLINED_FUNCTION_23();
  OUTLINED_FUNCTION_57();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy25IntelligencePlatformQuery21IncrementalIdentifierO4ViewO05Int64H0V10CodingKeys33_28C5D20B109144296BB7A903D000DD20LLOGMd, &_ss22KeyedDecodingContainerVy25IntelligencePlatformQuery21IncrementalIdentifierO4ViewO05Int64H0V10CodingKeys33_28C5D20B109144296BB7A903D000DD20LLOGMR);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_5_2();
  v5 = lazy protocol witness table accessor for type IncrementalIdentifier.View.Int64Identifier.CodingKeys and conformance IncrementalIdentifier.View.Int64Identifier.CodingKeys();
  OUTLINED_FUNCTION_25(&unk_286734D60, v6, v5);
  if (!v2)
  {
    OUTLINED_FUNCTION_32();
    v7 = KeyedDecodingContainer.decode(_:forKey:)();
    v8 = OUTLINED_FUNCTION_14_0();
    v9(v8);
    *v3 = v7;
  }

  __swift_destroy_boxed_opaque_existential_0(v1);
  OUTLINED_FUNCTION_24();
}

uint64_t protocol witness for IncrementalIdentifier.SingleValueIdentifier.value.getter in conformance IncrementalIdentifier.View.Int64Identifier@<X0>(uint64_t *a1@<X8>)
{
  result = IncrementalIdentifier.View.Int64Identifier.value.getter();
  *a1 = result;
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance IncrementalIdentifier.View.Int64Identifier(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x259C330A0](v2);
  return Hasher._finalize()();
}

uint64_t IncrementalIdentifier.Stream.Source.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v4 = 0;
  }

  else
  {
    v3 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v4 = v3 ^ 1;
  }

  return v4 & 1;
}

Swift::Int IncrementalIdentifier.Stream.Source.CodingKeys.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_54(a1);
  MEMORY[0x259C33090](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance IncrementalIdentifier.Stream.Source.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x259C33090](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance IncrementalIdentifier.View.Bookmark.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IncrementalIdentifier.View.Bookmark.CodingKeys and conformance IncrementalIdentifier.View.Bookmark.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance IncrementalIdentifier.View.Bookmark.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IncrementalIdentifier.View.Bookmark.CodingKeys and conformance IncrementalIdentifier.View.Bookmark.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void IncrementalIdentifier.View.Bookmark.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy25IntelligencePlatformQuery21IncrementalIdentifierO4ViewO8BookmarkV10CodingKeys33_28C5D20B109144296BB7A903D000DD20LLOGMd, &_ss22KeyedEncodingContainerVy25IntelligencePlatformQuery21IncrementalIdentifierO4ViewO8BookmarkV10CodingKeys33_28C5D20B109144296BB7A903D000DD20LLOGMR);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_55();
  OUTLINED_FUNCTION_38(a1, a1[3]);
  lazy protocol witness table accessor for type IncrementalIdentifier.View.Bookmark.CodingKeys and conformance IncrementalIdentifier.View.Bookmark.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  OUTLINED_FUNCTION_64();
  KeyedEncodingContainer.encode(_:forKey:)();
  v3 = OUTLINED_FUNCTION_43();
  v4(v3);
  OUTLINED_FUNCTION_44();
}

unint64_t lazy protocol witness table accessor for type IncrementalIdentifier.View.Bookmark.CodingKeys and conformance IncrementalIdentifier.View.Bookmark.CodingKeys()
{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark.CodingKeys and conformance IncrementalIdentifier.View.Bookmark.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark.CodingKeys and conformance IncrementalIdentifier.View.Bookmark.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark.CodingKeys and conformance IncrementalIdentifier.View.Bookmark.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark.CodingKeys and conformance IncrementalIdentifier.View.Bookmark.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark.CodingKeys and conformance IncrementalIdentifier.View.Bookmark.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark.CodingKeys and conformance IncrementalIdentifier.View.Bookmark.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark.CodingKeys and conformance IncrementalIdentifier.View.Bookmark.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark.CodingKeys and conformance IncrementalIdentifier.View.Bookmark.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark.CodingKeys and conformance IncrementalIdentifier.View.Bookmark.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark.CodingKeys and conformance IncrementalIdentifier.View.Bookmark.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark.CodingKeys and conformance IncrementalIdentifier.View.Bookmark.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark.CodingKeys and conformance IncrementalIdentifier.View.Bookmark.CodingKeys);
  }

  return result;
}

uint64_t IncrementalIdentifier.View.Bookmark.hash(into:)()
{
  v1 = *v0;
  if (*v0 == 0.0)
  {
    v1 = 0.0;
  }

  return MEMORY[0x259C330A0](*&v1);
}

Swift::Int IncrementalIdentifier.View.Bookmark.hashValue.getter(uint64_t a1)
{
  v2 = *v1;
  OUTLINED_FUNCTION_54(a1);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x259C330A0](*&v3);
  return Hasher._finalize()();
}

uint64_t IncrementalIdentifier.View.Bookmark.init(from:)(uint64_t a1)
{
  OUTLINED_FUNCTION_57();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy25IntelligencePlatformQuery21IncrementalIdentifierO4ViewO8BookmarkV10CodingKeys33_28C5D20B109144296BB7A903D000DD20LLOGMd, &_ss22KeyedDecodingContainerVy25IntelligencePlatformQuery21IncrementalIdentifierO4ViewO8BookmarkV10CodingKeys33_28C5D20B109144296BB7A903D000DD20LLOGMR);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_5_2();
  v5 = lazy protocol witness table accessor for type IncrementalIdentifier.View.Bookmark.CodingKeys and conformance IncrementalIdentifier.View.Bookmark.CodingKeys();
  OUTLINED_FUNCTION_25(&unk_286734CD0, v6, v5);
  if (!v2)
  {
    OUTLINED_FUNCTION_32();
    KeyedDecodingContainer.decode(_:forKey:)();
    v8 = v7;
    v9 = OUTLINED_FUNCTION_14_0();
    v10(v9);
    *v3 = v8;
  }

  return __swift_destroy_boxed_opaque_existential_0(v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance IncrementalIdentifier.View.Bookmark(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x259C330A0](*&v3);
  return Hasher._finalize()();
}

void *IncrementalIdentifier.View.Store.init(source:storage:)@<X0>(void *result@<X0>, void *a2@<X8>)
{
  v2 = result[1];
  *a2 = *result;
  a2[1] = v2;
  return result;
}

uint64_t static IncrementalIdentifier.View.Store.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_63(a1);
  if (v2 == *v3 && *(v4 + 8) == v3[1])
  {
    return 1;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v6)
  {
    return 1;
  }

  return result;
}

uint64_t IncrementalIdentifier.Stream.Store.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656372756F73 && a2 == 0xE600000000000000;
  if (v4 || (OUTLINED_FUNCTION_71(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
  {

    return 0;
  }

  else if (a1 == 0x656761726F7473 && a2 == 0xE700000000000000)
  {

    return 1;
  }

  else
  {
    OUTLINED_FUNCTION_71();
    v7 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

Swift::Int IncrementalIdentifier.Stream.Identifier.CodingKeys.hashValue.getter(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_54(a1);
  MEMORY[0x259C33090](v1 & 1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance IncrementalIdentifier.View.Store.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IncrementalIdentifier.View.Store.CodingKeys and conformance IncrementalIdentifier.View.Store.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance IncrementalIdentifier.View.Store.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type IncrementalIdentifier.View.Store.CodingKeys and conformance IncrementalIdentifier.View.Store.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void IncrementalIdentifier.View.Store.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_23();
  v18 = v17;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy25IntelligencePlatformQuery21IncrementalIdentifierO4ViewO5StoreV10CodingKeys33_28C5D20B109144296BB7A903D000DD20LLOGMd, &_ss22KeyedEncodingContainerVy25IntelligencePlatformQuery21IncrementalIdentifierO4ViewO5StoreV10CodingKeys33_28C5D20B109144296BB7A903D000DD20LLOGMR);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_30();
  OUTLINED_FUNCTION_9_0(v18);
  lazy protocol witness table accessor for type IncrementalIdentifier.View.Store.CodingKeys and conformance IncrementalIdentifier.View.Store.CodingKeys();

  OUTLINED_FUNCTION_68();
  OUTLINED_FUNCTION_39();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type IncrementalIdentifier.View.Source and conformance IncrementalIdentifier.View.Source();
  OUTLINED_FUNCTION_3_2();
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v16)
  {
    lazy protocol witness table accessor for type IncrementalIdentifier.View.Storage and conformance IncrementalIdentifier.View.Storage();
    OUTLINED_FUNCTION_50();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  v20 = OUTLINED_FUNCTION_28();
  v21(v20);
  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_24();
}

unint64_t lazy protocol witness table accessor for type IncrementalIdentifier.View.Store.CodingKeys and conformance IncrementalIdentifier.View.Store.CodingKeys()
{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store.CodingKeys and conformance IncrementalIdentifier.View.Store.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store.CodingKeys and conformance IncrementalIdentifier.View.Store.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store.CodingKeys and conformance IncrementalIdentifier.View.Store.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store.CodingKeys and conformance IncrementalIdentifier.View.Store.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store.CodingKeys and conformance IncrementalIdentifier.View.Store.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store.CodingKeys and conformance IncrementalIdentifier.View.Store.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store.CodingKeys and conformance IncrementalIdentifier.View.Store.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store.CodingKeys and conformance IncrementalIdentifier.View.Store.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store.CodingKeys and conformance IncrementalIdentifier.View.Store.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store.CodingKeys and conformance IncrementalIdentifier.View.Store.CodingKeys;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store.CodingKeys and conformance IncrementalIdentifier.View.Store.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store.CodingKeys and conformance IncrementalIdentifier.View.Store.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IncrementalIdentifier.View.Source and conformance IncrementalIdentifier.View.Source()
{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source and conformance IncrementalIdentifier.View.Source;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source and conformance IncrementalIdentifier.View.Source)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source and conformance IncrementalIdentifier.View.Source);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source and conformance IncrementalIdentifier.View.Source;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source and conformance IncrementalIdentifier.View.Source)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source and conformance IncrementalIdentifier.View.Source);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source and conformance IncrementalIdentifier.View.Source;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source and conformance IncrementalIdentifier.View.Source)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source and conformance IncrementalIdentifier.View.Source);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source and conformance IncrementalIdentifier.View.Source;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source and conformance IncrementalIdentifier.View.Source)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source and conformance IncrementalIdentifier.View.Source);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source and conformance IncrementalIdentifier.View.Source;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source and conformance IncrementalIdentifier.View.Source)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source and conformance IncrementalIdentifier.View.Source);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source and conformance IncrementalIdentifier.View.Source;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source and conformance IncrementalIdentifier.View.Source)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source and conformance IncrementalIdentifier.View.Source);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source and conformance IncrementalIdentifier.View.Source;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source and conformance IncrementalIdentifier.View.Source)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Source and conformance IncrementalIdentifier.View.Source);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IncrementalIdentifier.View.Storage and conformance IncrementalIdentifier.View.Storage()
{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage and conformance IncrementalIdentifier.View.Storage;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage and conformance IncrementalIdentifier.View.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage and conformance IncrementalIdentifier.View.Storage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage and conformance IncrementalIdentifier.View.Storage;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage and conformance IncrementalIdentifier.View.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage and conformance IncrementalIdentifier.View.Storage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage and conformance IncrementalIdentifier.View.Storage;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage and conformance IncrementalIdentifier.View.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage and conformance IncrementalIdentifier.View.Storage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage and conformance IncrementalIdentifier.View.Storage;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage and conformance IncrementalIdentifier.View.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage and conformance IncrementalIdentifier.View.Storage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage and conformance IncrementalIdentifier.View.Storage;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage and conformance IncrementalIdentifier.View.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage and conformance IncrementalIdentifier.View.Storage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage and conformance IncrementalIdentifier.View.Storage;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage and conformance IncrementalIdentifier.View.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage and conformance IncrementalIdentifier.View.Storage);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage and conformance IncrementalIdentifier.View.Storage;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage and conformance IncrementalIdentifier.View.Storage)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Storage and conformance IncrementalIdentifier.View.Storage);
  }

  return result;
}

Swift::Int IncrementalIdentifier.Stream.Source.hashValue.getter(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_54(a1);
  OUTLINED_FUNCTION_59(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  String.hash(into:)();
  return Hasher._finalize()();
}

void IncrementalIdentifier.View.Store.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_23();
  v20 = v19;
  v22 = v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy25IntelligencePlatformQuery21IncrementalIdentifierO4ViewO5StoreV10CodingKeys33_28C5D20B109144296BB7A903D000DD20LLOGMd, &_ss22KeyedDecodingContainerVy25IntelligencePlatformQuery21IncrementalIdentifierO4ViewO5StoreV10CodingKeys33_28C5D20B109144296BB7A903D000DD20LLOGMR);
  OUTLINED_FUNCTION_0_2();
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_1_2();
  OUTLINED_FUNCTION_5_2();
  lazy protocol witness table accessor for type IncrementalIdentifier.View.Store.CodingKeys and conformance IncrementalIdentifier.View.Store.CodingKeys();
  OUTLINED_FUNCTION_39();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    __swift_destroy_boxed_opaque_existential_0(v20);
  }

  else
  {
    lazy protocol witness table accessor for type IncrementalIdentifier.View.Source and conformance IncrementalIdentifier.View.Source();
    OUTLINED_FUNCTION_12_0();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    lazy protocol witness table accessor for type IncrementalIdentifier.View.Storage and conformance IncrementalIdentifier.View.Storage();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v25 = OUTLINED_FUNCTION_33();
    v26(v25, v23);
    *v22 = v27;
    v22[1] = v28;

    __swift_destroy_boxed_opaque_existential_0(v20);
  }

  OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_24();
}

uint64_t protocol witness for IncrementalIdentifier.Identifier.asDatabaseType.getter in conformance IncrementalIdentifier.View.Store@<X0>(uint64_t *a1@<X8>)
{
  result = specialized IncrementalIdentifier.Identifier<>.asDatabaseType.getter(*v1, v1[1]);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance IncrementalIdentifier.Stream.Source(uint64_t a1)
{
  v1 = Hasher.init(_seed:)();
  OUTLINED_FUNCTION_59(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11);
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t IncrementalIdentifier.SourceType.asDatabaseType.getter()
{
  v1 = 7628147;
  if (*v0 != 1)
  {
    v1 = 2003134838;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6D6165727473;
  }
}

IntelligencePlatformQuery::IncrementalIdentifier::SourceType __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> IncrementalIdentifier.SourceType.init(dbType:)(Swift::String dbType)
{
  object = dbType._object;
  v3._countAndFlagsBits = dbType._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of IncrementalIdentifier.SourceType.init(rawValue:), v3);

  if (v5 >= 3)
  {
    v7 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_13(&type metadata for SQLConnection.Error, v7);
    v9 = v8;
    v10 = OUTLINED_FUNCTION_26(v8, 27);
    memcpy(v10, __src, 0x48uLL);
    *(v9 + 88) = 0;
    return swift_willThrow();
  }

  else
  {
    *v4 = v5;
  }

  return result;
}

IntelligencePlatformQuery::IncrementalIdentifier::SourceType_optional __swiftcall IncrementalIdentifier.SourceType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of IncrementalIdentifier.SourceType.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

uint64_t static IncrementalIdentifier.SourceType.< infix(_:_:)(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE300000000000000;
  v4 = 7628147;
  if (v2 != 1)
  {
    v4 = 2003134838;
    v3 = 0xE400000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6D6165727473;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  v7 = 0xE300000000000000;
  v8 = 7628147;
  if (*a2 != 1)
  {
    v8 = 2003134838;
    v7 = 0xE400000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6D6165727473;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE600000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v12 = 0;
  }

  else
  {
    v12 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v12 & 1;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, char a2)
{
  v2 = 0x6D6165727473;
  v3 = a1;
  if (a1)
  {
    if (a1 == 1)
    {
      v4 = 7628147;
    }

    else
    {
      v4 = 2003134838;
    }

    if (v3 == 1)
    {
      v5 = 0xE300000000000000;
    }

    else
    {
      v5 = 0xE400000000000000;
    }
  }

  else
  {
    v5 = 0xE600000000000000;
    v4 = 0x6D6165727473;
  }

  if (a2)
  {
    if (a2 == 1)
    {
      v2 = 7628147;
    }

    else
    {
      v2 = 2003134838;
    }

    if (a2 == 1)
    {
      v6 = 0xE300000000000000;
    }

    else
    {
      v6 = 0xE400000000000000;
    }
  }

  else
  {
    v6 = 0xE600000000000000;
  }

  if (v4 == v2 && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, unsigned __int8 a2)
{
  String.hash(into:)();
}

{
  String.hash(into:)();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance IncrementalIdentifier.SourceType@<X0>(uint64_t *a1@<X8>)
{
  result = IncrementalIdentifier.SourceType.asDatabaseType.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for IncrementalIdentifier.Identifier.asDatabaseType.getter in conformance IncrementalIdentifier.SourceType@<X0>(uint64_t *a1@<X8>)
{
  result = IncrementalIdentifier.SourceType.asDatabaseType.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

_BYTE *specialized closure #1 in IncrementalIdentifier.Identifier.asString.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &__src[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v19 = a1;
  v20 = a2;
  v21 = a3;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Identifier and conformance IncrementalIdentifier.Stream.Identifier();
  v10 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v3)
  {
    v12 = v10;
    v13 = v11;
    static String.Encoding.utf8.getter();
    v9 = String.init(data:encoding:)();
    v15 = v14;
    outlined consume of Data._Representation(v12, v13);
    if (!v15)
    {
      lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
      swift_allocError();
      v9 = v17;
      *v17 = 0xD00000000000001BLL;
      v17[1] = 0x80000002553A7DB0;
      memcpy(v17 + 2, __src, 0x48uLL);
      v9[88] = 0;
      swift_willThrow();
    }
  }

  return v9;
}

_BYTE *specialized closure #1 in IncrementalIdentifier.Identifier.asString.getter(__int128 *a1)
{
  v3 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &__src[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v6 = a1[1];
  v17 = *a1;
  v18 = v6;
  v19 = a1[2];
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Bookmark and conformance IncrementalIdentifier.Stream.Bookmark();
  v7 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v1)
  {
    v9 = v7;
    v10 = v8;
    static String.Encoding.utf8.getter();
    v5 = String.init(data:encoding:)();
    v12 = v11;
    outlined consume of Data._Representation(v9, v10);
    if (!v12)
    {
      lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
      swift_allocError();
      v5 = v14;
      *v14 = 0xD00000000000001BLL;
      v14[1] = 0x80000002553A7DB0;
      memcpy(v14 + 2, __src, 0x48uLL);
      v5[88] = 0;
      swift_willThrow();
    }
  }

  return v5;
}

_BYTE *specialized closure #1 in IncrementalIdentifier.Identifier.asString.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &__src[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v22 = a1;
  v23 = a2;
  v24 = a3;
  v25 = a4;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Store and conformance IncrementalIdentifier.Stream.Store();
  v12 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v4)
  {
    v14 = v12;
    v15 = v13;
    static String.Encoding.utf8.getter();
    v11 = String.init(data:encoding:)();
    v17 = v16;
    outlined consume of Data._Representation(v14, v15);
    if (!v17)
    {
      lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
      swift_allocError();
      v11 = v19;
      *v19 = 0xD00000000000001BLL;
      v19[1] = 0x80000002553A7DB0;
      memcpy(v19 + 2, __src, 0x48uLL);
      v11[88] = 0;
      swift_willThrow();
    }
  }

  return v11;
}

uint64_t specialized closure #1 in IncrementalIdentifier.Identifier.asString.getter(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4)
{
  v8 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v8 - 8);
  OUTLINED_FUNCTION_3();
  v11 = v10 - v9;
  v23 = a1;
  v24 = a2;
  v12 = type metadata accessor for JSONEncoder();
  OUTLINED_FUNCTION_53(v12);
  JSONEncoder.init()();
  a3();
  v13 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v4)
  {
    v15 = v13;
    v16 = v14;
    static String.Encoding.utf8.getter();
    v11 = String.init(data:encoding:)();
    v18 = v17;
    outlined consume of Data._Representation(v15, v16);
    if (v18)
    {

      return v11;
    }

    v20 = lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
    OUTLINED_FUNCTION_13(&type metadata for SQLConnection.Error, v20);
    v11 = v21;
    *v21 = 0xD00000000000001BLL;
    v21[1] = 0x80000002553A7DB0;
    memcpy(v21 + 2, __src, 0x48uLL);
    *(v11 + 88) = 0;
    swift_willThrow();
  }

  return v11;
}

_BYTE *specialized closure #1 in IncrementalIdentifier.Identifier.asString.getter(uint64_t a1)
{
  v3 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &__src[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v15 = a1;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  lazy protocol witness table accessor for type IncrementalIdentifier.View.Int64Identifier and conformance IncrementalIdentifier.View.Int64Identifier();
  v6 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v1)
  {
    v8 = v6;
    v9 = v7;
    static String.Encoding.utf8.getter();
    v5 = String.init(data:encoding:)();
    v11 = v10;
    outlined consume of Data._Representation(v8, v9);
    if (!v11)
    {
      lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
      swift_allocError();
      v5 = v13;
      *v13 = 0xD00000000000001BLL;
      v13[1] = 0x80000002553A7DB0;
      memcpy(v13 + 2, __src, 0x48uLL);
      v5[88] = 0;
      swift_willThrow();
    }
  }

  return v5;
}

_BYTE *specialized closure #1 in IncrementalIdentifier.Identifier.asString.getter(double a1)
{
  v3 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &__src[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v16 = a1;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  lazy protocol witness table accessor for type IncrementalIdentifier.View.Bookmark and conformance IncrementalIdentifier.View.Bookmark();
  v6 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v1)
  {
    v8 = v6;
    v9 = v7;
    static String.Encoding.utf8.getter();
    v5 = String.init(data:encoding:)();
    v11 = v10;
    outlined consume of Data._Representation(v8, v9);
    if (!v11)
    {
      lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
      swift_allocError();
      v5 = v13;
      *v13 = 0xD00000000000001BLL;
      v13[1] = 0x80000002553A7DB0;
      memcpy(v13 + 2, __src, 0x48uLL);
      v5[88] = 0;
      swift_willThrow();
    }
  }

  return v5;
}

_BYTE *specialized closure #1 in IncrementalIdentifier.Identifier.asString.getter(uint64_t a1, uint64_t a2)
{
  v5 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &__src[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v18 = a1;
  v19 = a2;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  lazy protocol witness table accessor for type IncrementalIdentifier.View.Store and conformance IncrementalIdentifier.View.Store();
  v8 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v2)
  {
    v10 = v8;
    v11 = v9;
    static String.Encoding.utf8.getter();
    v7 = String.init(data:encoding:)();
    v13 = v12;
    outlined consume of Data._Representation(v10, v11);
    if (!v13)
    {
      lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
      swift_allocError();
      v7 = v15;
      *v15 = 0xD00000000000001BLL;
      v15[1] = 0x80000002553A7DB0;
      memcpy(v15 + 2, __src, 0x48uLL);
      v7[88] = 0;
      swift_willThrow();
    }
  }

  return v7;
}

_BYTE *specialized closure #1 in IncrementalIdentifier.Identifier.asString.getter(char a1)
{
  v3 = type metadata accessor for String.Encoding();
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &__src[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  __src[79] = a1;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  lazy protocol witness table accessor for type IncrementalIdentifier.SourceType and conformance IncrementalIdentifier.SourceType();
  v6 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  if (!v1)
  {
    v8 = v6;
    v9 = v7;
    static String.Encoding.utf8.getter();
    v5 = String.init(data:encoding:)();
    v11 = v10;
    outlined consume of Data._Representation(v8, v9);
    if (!v11)
    {
      lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
      swift_allocError();
      v5 = v13;
      *v13 = 0xD00000000000001BLL;
      v13[1] = 0x80000002553A7DB0;
      memcpy(v13 + 2, __src, 0x48uLL);
      v5[88] = 0;
      swift_willThrow();
    }
  }

  return v5;
}

uint64_t specialized closure #1 in IncrementalIdentifier.Identifier.init(string:)(uint64_t a1, uint64_t a2)
{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &__src[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  static String.Encoding.utf8.getter();
  v6 = String.data(using:allowLossyConversion:)();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  if (v8 >> 60 == 15)
  {
    lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
    swift_allocError();
    v10 = v9;
    *v9 = 0xD00000000000001FLL;
    v9[1] = 0x80000002553A7DD0;
    memcpy(v9 + 2, __src, 0x48uLL);
    *(v10 + 88) = 0;
    return swift_willThrow();
  }

  else
  {
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Identifier and conformance IncrementalIdentifier.Stream.Identifier();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    return outlined consume of Data?(v6, v8);
  }
}

{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &__src[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  static String.Encoding.utf8.getter();
  v6 = String.data(using:allowLossyConversion:)();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  if (v8 >> 60 == 15)
  {
    lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
    swift_allocError();
    v10 = v9;
    *v9 = 0xD00000000000001FLL;
    v9[1] = 0x80000002553A7DD0;
    memcpy(v9 + 2, __src, 0x48uLL);
    *(v10 + 88) = 0;
    return swift_willThrow();
  }

  else
  {
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Bookmark and conformance IncrementalIdentifier.Stream.Bookmark();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    return outlined consume of Data?(v6, v8);
  }
}

{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &__src[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  static String.Encoding.utf8.getter();
  v6 = String.data(using:allowLossyConversion:)();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  if (v8 >> 60 == 15)
  {
    lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
    swift_allocError();
    v10 = v9;
    *v9 = 0xD00000000000001FLL;
    v9[1] = 0x80000002553A7DD0;
    memcpy(v9 + 2, __src, 0x48uLL);
    *(v10 + 88) = 0;
    return swift_willThrow();
  }

  else
  {
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Store and conformance IncrementalIdentifier.Stream.Store();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    return outlined consume of Data?(v6, v8);
  }
}

{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &__src[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  static String.Encoding.utf8.getter();
  v6 = String.data(using:allowLossyConversion:)();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  if (v8 >> 60 == 15)
  {
    lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
    swift_allocError();
    v10 = v9;
    *v9 = 0xD00000000000001FLL;
    v9[1] = 0x80000002553A7DD0;
    memcpy(v9 + 2, __src, 0x48uLL);
    *(v10 + 88) = 0;
    return swift_willThrow();
  }

  else
  {
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type IncrementalIdentifier.View.Int64Identifier and conformance IncrementalIdentifier.View.Int64Identifier();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    return outlined consume of Data?(v6, v8);
  }
}

{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &__src[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  static String.Encoding.utf8.getter();
  v6 = String.data(using:allowLossyConversion:)();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  if (v8 >> 60 == 15)
  {
    lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
    swift_allocError();
    v10 = v9;
    *v9 = 0xD00000000000001FLL;
    v9[1] = 0x80000002553A7DD0;
    memcpy(v9 + 2, __src, 0x48uLL);
    *(v10 + 88) = 0;
    return swift_willThrow();
  }

  else
  {
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type IncrementalIdentifier.View.Bookmark and conformance IncrementalIdentifier.View.Bookmark();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    return outlined consume of Data?(v6, v8);
  }
}

{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &__src[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  static String.Encoding.utf8.getter();
  v6 = String.data(using:allowLossyConversion:)();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  if (v8 >> 60 == 15)
  {
    lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
    swift_allocError();
    v10 = v9;
    *v9 = 0xD00000000000001FLL;
    v9[1] = 0x80000002553A7DD0;
    memcpy(v9 + 2, __src, 0x48uLL);
    *(v10 + 88) = 0;
    return swift_willThrow();
  }

  else
  {
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type IncrementalIdentifier.View.Store and conformance IncrementalIdentifier.View.Store();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    return outlined consume of Data?(v6, v8);
  }
}

{
  v2 = type metadata accessor for String.Encoding();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &__src[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  static String.Encoding.utf8.getter();
  v6 = String.data(using:allowLossyConversion:)();
  v8 = v7;
  (*(v3 + 8))(v5, v2);
  if (v8 >> 60 == 15)
  {
    lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
    swift_allocError();
    v10 = v9;
    *v9 = 0xD00000000000001FLL;
    v9[1] = 0x80000002553A7DD0;
    memcpy(v9 + 2, __src, 0x48uLL);
    *(v10 + 88) = 0;
    return swift_willThrow();
  }

  else
  {
    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type IncrementalIdentifier.SourceType and conformance IncrementalIdentifier.SourceType();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    return outlined consume of Data?(v6, v8);
  }
}

void specialized closure #1 in IncrementalIdentifier.Identifier.init(string:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_23();
  v3 = v2;
  v4 = type metadata accessor for String.Encoding();
  OUTLINED_FUNCTION_0_2();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3();
  v10 = v9 - v8;
  static String.Encoding.utf8.getter();
  String.data(using:allowLossyConversion:)();
  v12 = v11;
  (*(v6 + 8))(v10, v4);
  if (v12 >> 60 == 15)
  {
    v13 = OUTLINED_FUNCTION_20();
    OUTLINED_FUNCTION_13(&type metadata for SQLConnection.Error, v13);
    v15 = v14;
    v16 = OUTLINED_FUNCTION_26(v14, 31);
    memcpy(v16, v20, 0x48uLL);
    *(v15 + 88) = 0;
    swift_willThrow();
  }

  else
  {
    v17 = type metadata accessor for JSONDecoder();
    OUTLINED_FUNCTION_53(v17);
    JSONDecoder.init()();
    v3();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    v18 = OUTLINED_FUNCTION_37();
    outlined consume of Data?(v18, v19);
  }

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_24();
}

uint64_t Int.bindTo(_:index:)(sqlite3_stmt *a1, int a2, sqlite3_int64 a3)
{
  type metadata accessor for SQLConnection();
  sqlite3_bind_int64(a1, a2, a3);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_64();
  return static SQLConnection.isOk(resultCode:statement:context:)(v6, v7, v8, v9);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Double.bindTo(_:index:)(Swift::OpaquePointer _, Swift::Int32 index)
{
  v3 = v2;
  type metadata accessor for SQLConnection();
  sqlite3_bind_double(_._rawValue, index, v3);
  OUTLINED_FUNCTION_36();
  static SQLConnection.isOk(resultCode:statement:context:)(v6, v7, v8, v9);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> String.bindTo(_:index:)(Swift::OpaquePointer _, Swift::Int32 index)
{
  v4 = v3;
  v5 = v2;
  type metadata accessor for SQLConnection();
  if ((v4 & 0x1000000000000000) != 0)
  {
    goto LABEL_12;
  }

  if ((v4 & 0x2000000000000000) != 0)
  {
    *v15 = v5;
    v16 = v4 & 0xFFFFFFFFFFFFFFLL;
    if (one-time initialization token for SQLITE_TRANSIENT != -1)
    {
      OUTLINED_FUNCTION_29(&one-time initialization token for SQLITE_TRANSIENT);
    }

    v9 = static SQLConnection.SQLITE_TRANSIENT;
    v10 = v15;
    goto LABEL_10;
  }

  if ((v5 & 0x1000000000000000) == 0)
  {
LABEL_12:
    _StringGuts._slowWithCString<A>(_:)();
    goto LABEL_11;
  }

  v8 = v4 & 0xFFFFFFFFFFFFFFFLL;
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    OUTLINED_FUNCTION_29(&one-time initialization token for SQLITE_TRANSIENT);
  }

  v9 = static SQLConnection.SQLITE_TRANSIENT;
  v10 = (v8 + 32);
LABEL_10:
  sqlite3_bind_text(_._rawValue, index, v10, -1, v9);
LABEL_11:
  OUTLINED_FUNCTION_36();
  static SQLConnection.isOk(resultCode:statement:context:)(v11, v12, v13, v14);
}

uint64_t closure #1 in closure #1 in String.bindTo(_:index:)@<X0>(char *a1@<X0>, sqlite3_stmt *a2@<X1>, int a3@<W2>, _DWORD *a4@<X8>)
{
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    swift_once();
  }

  result = sqlite3_bind_text(a2, a3, a1, -1, static SQLConnection.SQLITE_TRANSIENT);
  *a4 = result;
  return result;
}

Swift::String __swiftcall String.init(value:)(Swift::OpaquePointer value)
{
  v1 = sqlite3_value_text(value._rawValue);
  if (v1)
  {

    v1 = String.init(cString:)();
  }

  else
  {
    __break(1u);
  }

  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

uint64_t protocol witness for SQLConnection.DatabaseType.init(value:) in conformance String@<X0>(Swift::OpaquePointer a1@<X0>, Swift::String *a2@<X8>)
{
  v4 = String.init(value:)(a1);
  result = v4._countAndFlagsBits;
  *a2 = v4;
  return result;
}

uint64_t static Int.sqlite3Type.getter@<X0>(unsigned int *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  v4 = type metadata accessor for LibraryArtifact.SQLDataType();
  v5 = *(*(v4 - 8) + 104);

  return v5(a2, v3, v4);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> Data.bindTo(_:index:)(Swift::OpaquePointer _, Swift::Int32 index)
{
  v5 = v3;
  v6 = v2;
  v7 = *&index;
  OUTLINED_FUNCTION_65();
  type metadata accessor for SQLConnection();
  specialized Data.withUnsafeBytes<A>(_:)(v6, v5, v4, v7);
  OUTLINED_FUNCTION_36();
  static SQLConnection.isOk(resultCode:statement:context:)(v8, v9, v10, v11);
}

uint64_t specialized Data.withUnsafeBytes<A>(_:)(uint64_t result, unint64_t a2, sqlite3_stmt *a3, uint64_t a4)
{
  v4 = a4;
  switch(a2 >> 62)
  {
    case 1uLL:
      v10 = result >> 32;
      if (result >> 32 >= result)
      {
        result = result;
        v8 = a2;
        v9 = v10;
        goto LABEL_9;
      }

      __break(1u);
      break;
    case 2uLL:
      v7 = *(result + 24);
      v8 = a2;
      result = *(result + 16);
      v9 = v7;
LABEL_9:
      result = specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(result, v9, v8, a3, v4);
      break;
    case 3uLL:
      result = 0;
      v6 = 0;
      goto LABEL_5;
    default:
      v6 = a2 & 0xFFFFFFFFFFFFFFLL;
LABEL_5:
      result = specialized Data.InlineData.withUnsafeBytes<A>(_:)(result, v6, a3, v4);
      break;
  }

  return result;
}

void Data.init(value:)(sqlite3_value *a1)
{
  if (sqlite3_value_blob(a1))
  {
    sqlite3_value_bytes(a1);
  }

  else
  {
    __break(1u);
  }

  JUMPOUT(0x259C323E0);
}

void protocol witness for SQLConnection.DatabaseType.init(value:) in conformance Data(sqlite3_value *a1@<X0>, void *a2@<X8>)
{
  Data.init(value:)(a1);
  *a2 = v3;
  a2[1] = v4;
}

void IncrementalIdentifier.StoreIdentifier.init(persistentIdentifier:)(uint64_t a1, uint64_t a2)
{
  IncrementalIdentifier.StoreIdentifier.init(persistentIdentifier:)(a1, a2);
}

{
  OUTLINED_FUNCTION_23();
  v64 = v3;
  v56 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v54 = v10;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_2();
  v55 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_11_0();
  v53 = v13 - v14;
  MEMORY[0x28223BE20](v15);
  v60 = &v50 - v16;
  v17 = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_2();
  v57 = v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_11_0();
  v22 = v20 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v50 - v24;
  v26 = v9[4];
  v62 = v9[3];
  v63 = v26;
  v27 = v9[6];
  v65 = v9[5];
  v66 = v27;
  v58 = v7;
  v59 = v5;
  v28 = *(*(swift_getAssociatedConformanceWitness() + 8) + 96);
  v29 = OUTLINED_FUNCTION_69();
  outlined copy of Data._Representation(v29, v30);
  v31 = OUTLINED_FUNCTION_69();
  v32 = v64;
  v28(v31);
  if (v32)
  {
    v33 = OUTLINED_FUNCTION_69();
    outlined consume of Data._Representation(v33, v34);
    outlined consume of Data._Representation(v62, v63);
    outlined consume of Data._Representation(v65, v66);
  }

  else
  {
    v51 = v22;
    v52 = v17;
    v64 = v25;
    v35 = *(*(swift_getAssociatedConformanceWitness() + 8) + 96);
    v36 = OUTLINED_FUNCTION_60();
    outlined copy of Data._Representation(v36, v37);
    v38 = OUTLINED_FUNCTION_60();
    v35(v38);
    v39 = OUTLINED_FUNCTION_69();
    outlined consume of Data._Representation(v39, v40);
    v41 = OUTLINED_FUNCTION_60();
    outlined consume of Data._Representation(v41, v42);
    outlined consume of Data._Representation(v65, v66);
    v43 = v57;
    v44 = v51;
    v45 = v52;
    v46 = v64;
    (*(v57 + 16))(v51, v64, v52);
    v47 = v55;
    v48 = v53;
    (*(v55 + 16))(v53, v60, AssociatedTypeWitness);
    OUTLINED_FUNCTION_66();
    v49(v44, v48);
    (*(v47 + 8))(v60, AssociatedTypeWitness);
    (*(v43 + 8))(v46, v45);
  }

  OUTLINED_FUNCTION_24();
}

uint64_t _s25IntelligencePlatformQuery21IncrementalIdentifierO05StoreE0PAAE010persistentE0xAC017PersistableGlobalE0V_tKcfCAC6StreamO0F0V_Tt1B5Tm(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  OUTLINED_FUNCTION_67();
  v6 = OUTLINED_FUNCTION_37();
  v8 = outlined copy of Data._Representation(v6, v7);
  v9 = MEMORY[0x259C331C0](v8);
  v10 = type metadata accessor for JSONDecoder();
  OUTLINED_FUNCTION_53(v10);
  JSONDecoder.init()();
  lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Source and conformance IncrementalIdentifier.Stream.Source();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  objc_autoreleasePoolPop(v9);
  if (v2)
  {
    a2(v3);
    v11 = OUTLINED_FUNCTION_37();
    return outlined consume of Data._Representation(v11, v18);
  }

  else
  {
    v12 = OUTLINED_FUNCTION_37();
    outlined consume of Data._Representation(v12, v13);
    v14 = OUTLINED_FUNCTION_74();
    v16 = outlined copy of Data._Representation(v14, v15);
    v17 = MEMORY[0x259C331C0](v16);
    swift_allocObject();
    JSONDecoder.init()();
    lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Storage and conformance IncrementalIdentifier.Stream.Storage();
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    objc_autoreleasePoolPop(v17);
    a2(v3);
    v20 = OUTLINED_FUNCTION_74();
    result = outlined consume of Data._Representation(v20, v21);
    *v4 = v22;
    v4[1] = v23;
    v4[2] = v22;
    v4[3] = v23;
  }

  return result;
}

uint64_t _s25IntelligencePlatformQuery21IncrementalIdentifierO05StoreE0PAAE010persistentE0xAC017PersistableGlobalE0V_tKcfCAC4ViewO0F0V_Tt1B5Tm@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t)@<X1>, void *a3@<X8>)
{
  v7 = OUTLINED_FUNCTION_35();
  v9 = outlined copy of Data._Representation(v7, v8);
  v10 = MEMORY[0x259C331C0](v9);
  v11 = type metadata accessor for JSONDecoder();
  OUTLINED_FUNCTION_53(v11);
  JSONDecoder.init()();
  lazy protocol witness table accessor for type IncrementalIdentifier.View.Source and conformance IncrementalIdentifier.View.Source();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  objc_autoreleasePoolPop(v10);
  if (v3)
  {
    a2(a1);
    v12 = OUTLINED_FUNCTION_35();
    return outlined consume of Data._Representation(v12, v13);
  }

  else
  {
    v15 = OUTLINED_FUNCTION_35();
    outlined consume of Data._Representation(v15, v16);
    result = a2(a1);
    *a3 = v17;
    a3[1] = v18;
  }

  return result;
}

uint64_t IncrementalIdentifier.PersistableGlobalIdentifier.storeIdentifier()@<X0>(void (*a1)(_OWORD *, _BYTE *)@<X0>, uint64_t (*a2)(uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  v8 = *(v3 + 16);
  v15[0] = *v3;
  v15[1] = v8;
  v15[2] = *(v3 + 32);
  v16 = *(v3 + 48);
  if (LOBYTE(v15[0]))
  {
    if (LOBYTE(v15[0]) == 1)
    {
      v9 = OUTLINED_FUNCTION_20();
      OUTLINED_FUNCTION_13(&type metadata for SQLConnection.Error, v9);
      v11 = v10;
      v12 = OUTLINED_FUNCTION_26(v10, 27);
      memcpy(v12, __src, 0x48uLL);
      *(v11 + 88) = 0;
      return swift_willThrow();
    }

    a3[3] = &type metadata for IncrementalIdentifier.View.Store;
    a3[4] = lazy protocol witness table accessor for type IncrementalIdentifier.View.Store and conformance IncrementalIdentifier.View.Store();
    a1(v15, __src);
    result = _s25IntelligencePlatformQuery21IncrementalIdentifierO05StoreE0PAAE010persistentE0xAC017PersistableGlobalE0V_tKcfCAC4ViewO0F0V_Tt1B5Tm(v15, a2, a3);
  }

  else
  {
    a3[3] = &type metadata for IncrementalIdentifier.Stream.Store;
    a3[4] = lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Store and conformance IncrementalIdentifier.Stream.Store();
    *a3 = swift_allocObject();
    a1(v15, __src);
    result = _s25IntelligencePlatformQuery21IncrementalIdentifierO05StoreE0PAAE010persistentE0xAC017PersistableGlobalE0V_tKcfCAC6StreamO0F0V_Tt1B5Tm(v15, a2);
  }

  if (v4)
  {
    return __swift_deallocate_boxed_opaque_existential_1(a3);
  }

  return result;
}

void IncrementalIdentifier.StoreIdentifier.persistableEntityIdentifier(entityIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15)
{
  OUTLINED_FUNCTION_23();
  v52 = v18;
  v53 = v17;
  swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_2();
  v56 = v20;
  v57 = v19;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v21);
  v54 = &v51 - v22;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  OUTLINED_FUNCTION_0_2();
  v25 = v24;
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v26);
  v28 = &v51 - v27;
  OUTLINED_FUNCTION_47();
  swift_getAssociatedConformanceWitness();
  v29 = OUTLINED_FUNCTION_28();
  v30(v29);
  v55 = v15;
  v31 = OUTLINED_FUNCTION_37();
  v32(v31);
  OUTLINED_FUNCTION_58();
  v34 = v33(AssociatedTypeWitness);
  if (v16)
  {
    (*(v25 + 8))(v28, AssociatedTypeWitness);
  }

  else
  {
    v51 = v34;
    v58 = v35;
    (*(v25 + 8))(v28, AssociatedTypeWitness);
    v36 = OUTLINED_FUNCTION_37();
    v37(v36);
    OUTLINED_FUNCTION_47();
    v38 = v57;
    swift_getAssociatedConformanceWitness();
    OUTLINED_FUNCTION_58();
    OUTLINED_FUNCTION_64();
    v40 = v39(v38);
    v42 = v41;
    v43 = OUTLINED_FUNCTION_43();
    v44(v43);
    v45 = v53[3];
    __swift_project_boxed_opaque_existential_0(v53, v45);
    OUTLINED_FUNCTION_58();
    v47 = v46(v45);
    v48 = v52;
    *v52 = a13;
    v49 = v58;
    v48[1] = v51;
    v48[2] = v49;
    v48[3] = v40;
    v48[4] = v42;
    v48[5] = v47;
    v48[6] = v50;
  }

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_24();
}

unint64_t lazy protocol witness table accessor for type IncrementalIdentifier.View.Store and conformance IncrementalIdentifier.View.Store()
{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store and conformance IncrementalIdentifier.View.Store;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store and conformance IncrementalIdentifier.View.Store)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store and conformance IncrementalIdentifier.View.Store);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store and conformance IncrementalIdentifier.View.Store;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store and conformance IncrementalIdentifier.View.Store)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store and conformance IncrementalIdentifier.View.Store);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store and conformance IncrementalIdentifier.View.Store;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store and conformance IncrementalIdentifier.View.Store)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store and conformance IncrementalIdentifier.View.Store);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store and conformance IncrementalIdentifier.View.Store;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store and conformance IncrementalIdentifier.View.Store)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store and conformance IncrementalIdentifier.View.Store);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store and conformance IncrementalIdentifier.View.Store;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store and conformance IncrementalIdentifier.View.Store)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store and conformance IncrementalIdentifier.View.Store);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store and conformance IncrementalIdentifier.View.Store;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store and conformance IncrementalIdentifier.View.Store)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store and conformance IncrementalIdentifier.View.Store);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store and conformance IncrementalIdentifier.View.Store;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store and conformance IncrementalIdentifier.View.Store)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Store and conformance IncrementalIdentifier.View.Store);
  }

  return result;
}

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x259C33C60);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Store and conformance IncrementalIdentifier.Stream.Store()
{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store and conformance IncrementalIdentifier.Stream.Store;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store and conformance IncrementalIdentifier.Stream.Store)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store and conformance IncrementalIdentifier.Stream.Store);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store and conformance IncrementalIdentifier.Stream.Store;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store and conformance IncrementalIdentifier.Stream.Store)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store and conformance IncrementalIdentifier.Stream.Store);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store and conformance IncrementalIdentifier.Stream.Store;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store and conformance IncrementalIdentifier.Stream.Store)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store and conformance IncrementalIdentifier.Stream.Store);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store and conformance IncrementalIdentifier.Stream.Store;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store and conformance IncrementalIdentifier.Stream.Store)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store and conformance IncrementalIdentifier.Stream.Store);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store and conformance IncrementalIdentifier.Stream.Store;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store and conformance IncrementalIdentifier.Stream.Store)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store and conformance IncrementalIdentifier.Stream.Store);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store and conformance IncrementalIdentifier.Stream.Store;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store and conformance IncrementalIdentifier.Stream.Store)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store and conformance IncrementalIdentifier.Stream.Store);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store and conformance IncrementalIdentifier.Stream.Store;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store and conformance IncrementalIdentifier.Stream.Store)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Store and conformance IncrementalIdentifier.Stream.Store);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for IncrementalIdentifier.Stream.Identifier(uint64_t a1)
{
  result = lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Identifier and conformance IncrementalIdentifier.Stream.Identifier();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Identifier and conformance IncrementalIdentifier.Stream.Identifier()
{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier and conformance IncrementalIdentifier.Stream.Identifier;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier and conformance IncrementalIdentifier.Stream.Identifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier and conformance IncrementalIdentifier.Stream.Identifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier and conformance IncrementalIdentifier.Stream.Identifier;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier and conformance IncrementalIdentifier.Stream.Identifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier and conformance IncrementalIdentifier.Stream.Identifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier and conformance IncrementalIdentifier.Stream.Identifier;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier and conformance IncrementalIdentifier.Stream.Identifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier and conformance IncrementalIdentifier.Stream.Identifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier and conformance IncrementalIdentifier.Stream.Identifier;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier and conformance IncrementalIdentifier.Stream.Identifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier and conformance IncrementalIdentifier.Stream.Identifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier and conformance IncrementalIdentifier.Stream.Identifier;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier and conformance IncrementalIdentifier.Stream.Identifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier and conformance IncrementalIdentifier.Stream.Identifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier and conformance IncrementalIdentifier.Stream.Identifier;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier and conformance IncrementalIdentifier.Stream.Identifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Identifier and conformance IncrementalIdentifier.Stream.Identifier);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for IncrementalIdentifier.Stream.Bookmark(uint64_t a1)
{
  result = lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Bookmark and conformance IncrementalIdentifier.Stream.Bookmark();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Bookmark and conformance IncrementalIdentifier.Stream.Bookmark()
{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark and conformance IncrementalIdentifier.Stream.Bookmark;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark and conformance IncrementalIdentifier.Stream.Bookmark)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark and conformance IncrementalIdentifier.Stream.Bookmark);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark and conformance IncrementalIdentifier.Stream.Bookmark;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark and conformance IncrementalIdentifier.Stream.Bookmark)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark and conformance IncrementalIdentifier.Stream.Bookmark);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark and conformance IncrementalIdentifier.Stream.Bookmark;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark and conformance IncrementalIdentifier.Stream.Bookmark)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark and conformance IncrementalIdentifier.Stream.Bookmark);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark and conformance IncrementalIdentifier.Stream.Bookmark;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark and conformance IncrementalIdentifier.Stream.Bookmark)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark and conformance IncrementalIdentifier.Stream.Bookmark);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark and conformance IncrementalIdentifier.Stream.Bookmark;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark and conformance IncrementalIdentifier.Stream.Bookmark)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark and conformance IncrementalIdentifier.Stream.Bookmark);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark and conformance IncrementalIdentifier.Stream.Bookmark;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark and conformance IncrementalIdentifier.Stream.Bookmark)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.Stream.Bookmark and conformance IncrementalIdentifier.Stream.Bookmark);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for IncrementalIdentifier.Stream.Store(uint64_t a1)
{
  result = lazy protocol witness table accessor for type IncrementalIdentifier.Stream.Store and conformance IncrementalIdentifier.Stream.Store();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type IncrementalIdentifier.View.StringIdentifier and conformance IncrementalIdentifier.View.StringIdentifier()
{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier and conformance IncrementalIdentifier.View.StringIdentifier;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier and conformance IncrementalIdentifier.View.StringIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier and conformance IncrementalIdentifier.View.StringIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier and conformance IncrementalIdentifier.View.StringIdentifier;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier and conformance IncrementalIdentifier.View.StringIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier and conformance IncrementalIdentifier.View.StringIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier and conformance IncrementalIdentifier.View.StringIdentifier;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier and conformance IncrementalIdentifier.View.StringIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier and conformance IncrementalIdentifier.View.StringIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier and conformance IncrementalIdentifier.View.StringIdentifier;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier and conformance IncrementalIdentifier.View.StringIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier and conformance IncrementalIdentifier.View.StringIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier and conformance IncrementalIdentifier.View.StringIdentifier;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier and conformance IncrementalIdentifier.View.StringIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier and conformance IncrementalIdentifier.View.StringIdentifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier and conformance IncrementalIdentifier.View.StringIdentifier;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier and conformance IncrementalIdentifier.View.StringIdentifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.StringIdentifier and conformance IncrementalIdentifier.View.StringIdentifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IncrementalIdentifier.View.Int64Identifier and conformance IncrementalIdentifier.View.Int64Identifier()
{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier and conformance IncrementalIdentifier.View.Int64Identifier;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier and conformance IncrementalIdentifier.View.Int64Identifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier and conformance IncrementalIdentifier.View.Int64Identifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier and conformance IncrementalIdentifier.View.Int64Identifier;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier and conformance IncrementalIdentifier.View.Int64Identifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier and conformance IncrementalIdentifier.View.Int64Identifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier and conformance IncrementalIdentifier.View.Int64Identifier;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier and conformance IncrementalIdentifier.View.Int64Identifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier and conformance IncrementalIdentifier.View.Int64Identifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier and conformance IncrementalIdentifier.View.Int64Identifier;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier and conformance IncrementalIdentifier.View.Int64Identifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier and conformance IncrementalIdentifier.View.Int64Identifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier and conformance IncrementalIdentifier.View.Int64Identifier;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier and conformance IncrementalIdentifier.View.Int64Identifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier and conformance IncrementalIdentifier.View.Int64Identifier);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier and conformance IncrementalIdentifier.View.Int64Identifier;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier and conformance IncrementalIdentifier.View.Int64Identifier)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Int64Identifier and conformance IncrementalIdentifier.View.Int64Identifier);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type IncrementalIdentifier.View.Bookmark and conformance IncrementalIdentifier.View.Bookmark()
{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark and conformance IncrementalIdentifier.View.Bookmark;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark and conformance IncrementalIdentifier.View.Bookmark)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark and conformance IncrementalIdentifier.View.Bookmark);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark and conformance IncrementalIdentifier.View.Bookmark;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark and conformance IncrementalIdentifier.View.Bookmark)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark and conformance IncrementalIdentifier.View.Bookmark);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark and conformance IncrementalIdentifier.View.Bookmark;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark and conformance IncrementalIdentifier.View.Bookmark)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark and conformance IncrementalIdentifier.View.Bookmark);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark and conformance IncrementalIdentifier.View.Bookmark;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark and conformance IncrementalIdentifier.View.Bookmark)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark and conformance IncrementalIdentifier.View.Bookmark);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark and conformance IncrementalIdentifier.View.Bookmark;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark and conformance IncrementalIdentifier.View.Bookmark)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark and conformance IncrementalIdentifier.View.Bookmark);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark and conformance IncrementalIdentifier.View.Bookmark;
  if (!lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark and conformance IncrementalIdentifier.View.Bookmark)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type IncrementalIdentifier.View.Bookmark and conformance IncrementalIdentifier.View.Bookmark);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for IncrementalIdentifier.View.Store(uint64_t a1)
{
  result = lazy protocol witness table accessor for type IncrementalIdentifier.View.Store and conformance IncrementalIdentifier.View.Store();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for IncrementalIdentifier.Stream.Source(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  a1[3] = a6();
  result = a7();
  a1[4] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type [IncrementalIdentifier.SourceType] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [IncrementalIdentifier.SourceType] and conformance [A];
  if (!lazy protocol witness table cache variable for type [IncrementalIdentifier.SourceType] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay25IntelligencePlatformQuery21IncrementalIdentifierO10SourceTypeOGMd, &_sSay25IntelligencePlatformQuery21IncrementalIdentifierO10SourceTypeOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [IncrementalIdentifier.SourceType] and conformance [A]);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10Foundation4DataV15_RepresentationO(uint64_t a1)
{
  v1 = *(a1 + 8) >> 62;
  if (v1 == 3)
  {
    return (*a1 + 3);
  }

  else
  {
    return v1;
  }
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

uint64_t getEnumTagSinglePayload for IncrementalIdentifier.PersistableGlobalIdentifier(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && a1[56])
    {
      return OUTLINED_FUNCTION_52(*a1 + 253);
    }

    v3 = *a1;
    v4 = v3 >= 3;
    v5 = v3 - 3;
    if (!v4)
    {
      return OUTLINED_FUNCTION_52(-1);
    }
  }

  else
  {
    v5 = -1;
  }

  return OUTLINED_FUNCTION_52(v5);
}

_BYTE *storeEnumTagSinglePayload for IncrementalIdentifier.PersistableGlobalIdentifier(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      result[56] = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      result[56] = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_51(result, a2 + 2);
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IncrementalIdentifier.Stream.Identifier(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 24))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for IncrementalIdentifier.Stream.Identifier(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

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

uint64_t getEnumTagSinglePayload for IncrementalIdentifier.Stream.Bookmark(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 48))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for IncrementalIdentifier.Stream.Bookmark(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for IncrementalIdentifier.Stream.Store(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 32))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for IncrementalIdentifier.Stream.Store(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for IncrementalIdentifier.Stream.Source(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for IncrementalIdentifier.Stream.Source(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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
      *(result + 8) = (a2 - 1);
      return result;
    }

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IncrementalIdentifier.SourceType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for IncrementalIdentifier.SourceType(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IncrementalIdentifier.View.Store.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_52(-1);
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
      return OUTLINED_FUNCTION_52((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_52((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_52((*a1 | (v4 << 8)) - 2);
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

  return OUTLINED_FUNCTION_52(v8);
}

_BYTE *storeEnumTagSinglePayload for IncrementalIdentifier.View.Store.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_51(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IncrementalIdentifier(unsigned __int8 *a1, int a2)
{
  if (!a2)
  {
    return _s25IntelligencePlatformQuery21IncrementalIdentifierO05EmptyE0PAAE1loiySbx_xtFZAC4ViewO7StorageV_Ttt0t1g5();
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

  return OUTLINED_FUNCTION_62(a1);
}

_BYTE *storeEnumTagSinglePayload for IncrementalIdentifier(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for IncrementalIdentifier.Stream.Bookmark.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_52(-1);
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return OUTLINED_FUNCTION_52((*a1 | (v4 << 8)) - 4);
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

      return OUTLINED_FUNCTION_52((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_52((*a1 | (v4 << 8)) - 4);
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return OUTLINED_FUNCTION_52(v8);
}

_BYTE *storeEnumTagSinglePayload for IncrementalIdentifier.Stream.Bookmark.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFD)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFC)
  {
    v6 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          result = OUTLINED_FUNCTION_51(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

uint64_t specialized Data.InlineData.withUnsafeBytes<A>(_:)(uint64_t a1, uint64_t a2, sqlite3_stmt *a3, int a4)
{
  v6 = BYTE6(a2);
  v11 = *MEMORY[0x277D85DE8];
  v8 = a1;
  v10 = WORD2(a2);
  v9 = a2;
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    swift_once();
  }

  return sqlite3_bind_blob(a3, a4, &v8, v6, static SQLConnection.SQLITE_TRANSIENT);
}

uint64_t specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, int a3, sqlite3_stmt *a4, int a5)
{
  LODWORD(v7) = a3;
  v10 = __DataStorage._bytes.getter();
  if (!v10)
  {
LABEL_4:
    v12 = __OFSUB__(a2, a1);
    v13 = a2 - a1;
    if (v12)
    {
      __break(1u);
    }

    else
    {
      v14 = MEMORY[0x259C322F0]();
      if (v14 >= v13)
      {
        v15 = v13;
      }

      else
      {
        v15 = v14;
      }

      if (v10)
      {
        v7 = v15;
      }

      else
      {
        v7 = 0;
      }

      if (v7 >= 0xFFFFFFFF80000000)
      {
        if (v7 <= 0x7FFFFFFF)
        {
          if (one-time initialization token for SQLITE_TRANSIENT == -1)
          {
            return sqlite3_bind_blob(a4, a5, v10, v7, static SQLConnection.SQLITE_TRANSIENT);
          }

LABEL_18:
          swift_once();
          return sqlite3_bind_blob(a4, a5, v10, v7, static SQLConnection.SQLITE_TRANSIENT);
        }

LABEL_17:
        __break(1u);
        goto LABEL_18;
      }
    }

    __break(1u);
    goto LABEL_17;
  }

  result = __DataStorage._offset.getter();
  if (!__OFSUB__(a1, result))
  {
    v10 += a1 - result;
    goto LABEL_4;
  }

  __break(1u);
  return result;
}

uint64_t OUTLINED_FUNCTION_2_2@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = v2;
  a2[1] = a1;
}

uint64_t OUTLINED_FUNCTION_25(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of Decoder.container<A>(keyedBy:)();
}

unint64_t *OUTLINED_FUNCTION_26@<X0>(unint64_t *a1@<X1>, uint64_t a2@<X8>)
{
  *a1 = a2 & 0xFFFFFFFFFFFFLL | 0xD000000000000000;
  a1[1] = v2;
  return a1 + 2;
}

uint64_t OUTLINED_FUNCTION_27(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return _s25IntelligencePlatformQuery21IncrementalIdentifierO0E0PAAE4datax10Foundation4DataV_tKcfCAC6StreamO6SourceV_Tt1g5Tm(a1, a2, lazy protocol witness table accessor for type IncrementalIdentifier.View.Source and conformance IncrementalIdentifier.View.Source, a4);
}

uint64_t OUTLINED_FUNCTION_29(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_49(uint64_t a1)
{

  return KeyedDecodingContainer.decode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_53(uint64_t a1)
{

  return swift_allocObject();
}

void *OUTLINED_FUNCTION_54(uint64_t a1, ...)
{

  return Hasher.init(_seed:)();
}

uint64_t OUTLINED_FUNCTION_76(uint64_t a1, uint64_t *a2, uint64_t *a3)
{

  return __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
}

uint64_t specialized Dictionary.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  if (*(a3 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v7 & 1) != 0))
  {
    v8 = v6;
    v9 = *(a3 + 56);
    v10 = type metadata accessor for URL();
    (*(*(v10 - 8) + 16))(a4, v9 + *(*(v10 - 8) + 72) * v8, v10);
    v11 = a4;
    v12 = 0;
    v13 = v10;
  }

  else
  {
    v13 = type metadata accessor for URL();
    v11 = a4;
    v12 = 1;
  }

  return __swift_storeEnumTagSinglePayload(v11, v12, 1, v13);
}

uint64_t specialized Dictionary.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v3)
  {
  }

  else
  {
    return 0;
  }
}

double specialized Dictionary.subscript.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, _OWORD *a4@<X8>)
{
  if (*(a3 + 16) && (v6 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v7 & 1) != 0))
  {
    v8 = *(a3 + 56) + 32 * v6;

    outlined init with copy of Any(v8, a4);
  }

  else
  {
    result = 0.0;
    *a4 = 0u;
    a4[1] = 0u;
  }

  return result;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLConnection.isDone(_:context:)(Swift::Int32 _, Swift::String_optional context)
{
  if (_ == 101)
  {
    v2 = 1;
  }

  else if (_ == 100)
  {
    v2 = 0;
  }

  else
  {
    object = context.value._object;
    countAndFlagsBits = context.value._countAndFlagsBits;
    v5 = lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
    OUTLINED_FUNCTION_13(&type metadata for SQLConnection.Error, v5);
    v6 = OUTLINED_FUNCTION_21_1();
    static SQLConnection.sqlError(db:resultCode:statement:message:)(v6, v7, v8, countAndFlagsBits, object, v9);
    swift_willThrow();
  }

  return v2 & 1;
}

uint64_t specialized Dictionary.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v17 - v9;
  v11 = type metadata accessor for URL();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (__swift_getEnumTagSinglePayload(a1, 1, v11) == 1)
  {
    outlined destroy of URL?(a1, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    specialized Dictionary._Variant.removeValue(forKey:)(a2, a3, v10);

    return outlined destroy of URL?(v10, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }

  else
  {
    (*(v12 + 32))(v14, a1, v11);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v4;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v14, a2, a3, isUniquelyReferenced_nonNull_native);

    *v4 = v18;
  }

  return result;
}

uint64_t SQLConnection.__allocating_init(useCase:account:)(uint64_t a1, void *a2)
{
  v3 = [objc_opt_self() current];
  v4 = [objc_opt_self() policyForProcess:v3 connectionFlags:4 useCase:a1];

  v5 = [v4 explicitlyAuthorizedResourcesOfType:3 withAccessMode:1];
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v6 = [v4 explicitlyAuthorizedResourcesOfType:4 withAccessMode:1];
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  v7 = [v4 explicitlyAuthorizedResourcesOfType:1 withAccessMode:1];
  static Set._unconditionallyBridgeFromObjectiveC(_:)();

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd, &_sShySSGMR);
  lazy protocol witness table accessor for type Set<String> and conformance Set<A>();
  static UnifiedLibrary.library.getter();
  SQLConnection.__allocating_init(streamIdentifiers:databaseIdentifiers:setIdentifiers:useCase:library:privileges:account:)();
  v9 = v8;

  return v9;
}

unint64_t lazy protocol witness table accessor for type Set<String> and conformance Set<A>()
{
  result = lazy protocol witness table cache variable for type Set<String> and conformance Set<A>;
  if (!lazy protocol witness table cache variable for type Set<String> and conformance Set<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShySSGMd, &_sShySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Set<String> and conformance Set<A>);
  }

  return result;
}

void SQLConnection.__allocating_init(streamIdentifiers:databaseIdentifiers:setIdentifiers:useCase:library:privileges:account:)()
{
  OUTLINED_FUNCTION_23();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v19 = v11;
  v13 = v12;
  v15 = v14;
  OUTLINED_FUNCTION_11_1();
  swift_allocObject();
  v18 = v2;
  v16 = v10;
  v17 = SQLConnection.init(library:privileges:useCase:account:)(v8, v6, v4, v16, v2);
  if (v0)
  {
    __swift_destroy_boxed_opaque_existential_0(v19);

    __swift_destroy_boxed_opaque_existential_0(v13);
    __swift_destroy_boxed_opaque_existential_0(v15);
  }

  else
  {
    MEMORY[0x28223BE20](v17);

    SQLConnection.withoutAuthorizer(block:)(partial apply for closure #1 in SQLConnection.init(streamIdentifiers:databaseIdentifiers:setIdentifiers:useCase:library:privileges:account:));
    __swift_destroy_boxed_opaque_existential_0(v19);

    __swift_destroy_boxed_opaque_existential_0(v13);
    __swift_destroy_boxed_opaque_existential_0(v15);
  }

  OUTLINED_FUNCTION_24();
}

uint64_t SQLConnection.__allocating_init(library:privileges:useCase:account:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  OUTLINED_FUNCTION_11_1();
  v10 = swift_allocObject();
  SQLConnection.init(library:privileges:useCase:account:)(a1, a2, a3, a4, a5);
  return v10;
}

void *SQLConnection.init(library:privileges:useCase:account:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v7 = v5;
  ppDb[1] = *MEMORY[0x277D85DE8];
  type metadata accessor for URL();
  *(v5 + 72) = 0;
  *(v5 + 80) = 0;
  *(v5 + 64) = 0;
  *(v5 + 88) = Dictionary.init(dictionaryLiteral:)();
  *(v5 + 104) = 0;
  ppDb[0] = 0;
  v12 = sqlite3_open_v2(":memory:", ppDb, 65538, 0);
  v13 = ppDb[0];
  if (!ppDb[0])
  {

    __src[0] = 0;
    __src[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(52);
    OUTLINED_FUNCTION_24_0();
    MEMORY[0x259C32B90](0xD000000000000032);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x259C32B90](v14);

    v15 = lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
    OUTLINED_FUNCTION_13(&type metadata for SQLConnection.Error, v15);
    v17 = v16;
    *v16 = 0;
    v16[1] = 0xE000000000000000;
    memcpy(v16 + 2, __src, 0x48uLL);
    *(v17 + 88) = 0;
    swift_willThrow();
    goto LABEL_5;
  }

  static SQLConnection.isOk(_:resultCode:context:)(ppDb[0], v12, 0, 0);
  if (v6)
  {

LABEL_5:
    v18 = 0;
    v19 = a4;
    goto LABEL_6;
  }

  *(v5 + 16) = v13;
  *(v5 + 24) = a1;
  *(v5 + 32) = a2;
  *(v5 + 40) = a3;
  v19 = a4;
  *(v5 + 48) = a4;
  *(v5 + 56) = a5;
  *(v5 + 64) = 0;
  v21 = a4;
  v22 = a5;

  *(v5 + 72) = 0;

  *(v5 + 80) = 0;

  *(v5 + 96) = 0;
  SQLConnection.setAuthorizor()();
  if (!v23)
  {

    return v7;
  }

  v18 = 1;
LABEL_6:
  if (ppDb[0])
  {
    sqlite3_close(ppDb[0]);
  }

  swift_willThrow();

  if (!v18)
  {

    swift_deallocPartialClassInstance();
  }

  return v7;
}

sqlite3 *static SQLConnection.isOk(_:resultCode:context:)(sqlite3 *result, int a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v7 = result;
    v8 = lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
    OUTLINED_FUNCTION_13(&type metadata for SQLConnection.Error, v8);
    static SQLConnection.sqlError(db:resultCode:statement:message:)(v7, a2, 0, a3, a4, v9);
    return swift_willThrow();
  }

  return result;
}

char *closure #1 in SQLConnection.init(streamIdentifiers:databaseIdentifiers:setIdentifiers:useCase:library:privileges:account:)(void *a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v61 = a6;
  v62 = a4;
  v63 = a5;
  v55 = a3;
  v60 = type metadata accessor for URL();
  v57 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v59 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for DatabaseResourceToken();
  v56 = *(v58 - 8);
  MEMORY[0x28223BE20](v58);
  v64 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_project_boxed_opaque_existential_0(a1, a1[3]);
  MEMORY[0x28223BE20](v12);
  (*(v14 + 16))(&v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  __src[3] = swift_getAssociatedTypeWitness();
  __src[4] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(__src);
  dispatch thunk of Sequence.makeIterator()();
  v70 = "No database for ";
  while (1)
  {
    __swift_mutable_project_boxed_opaque_existential_1(__src, __src[3]);
    dispatch thunk of IteratorProtocol.next()();
    v15 = v67;
    if (!v67)
    {
      break;
    }

    v16 = v66;
    v17 = SQLConnection.streamVtabModule()();
    if (v7)
    {

      goto LABEL_29;
    }

    v18 = *(v17 + 16);
    v19 = *(v17 + 24);

    if (*(a2 + 96) == 1)
    {
      v20 = *(a2 + 16);

      v21 = sqlite3_set_authorizer(v20, 0, 0);
      SQLConnection.isOk(_:context:)(v21, 0);
      if (v22)
      {
        goto LABEL_27;
      }

      *(a2 + 96) = 0;
      closure #1 in SQLConnection.createVirtualTable(tableName:moduleName:)(v16, v15, v18, v19, a2);
      SQLConnection.setAuthorizor()();
    }

    else
    {
      v66 = 0;
      v67 = 0xE000000000000000;

      _StringGuts.grow(_:)(54);
      MEMORY[0x259C32B90](0xD000000000000028, v70 | 0x8000000000000000);
      MEMORY[0x259C32B90](v16, v15);
      MEMORY[0x259C32B90](0x20474E4953552022, 0xE900000000000022);
      MEMORY[0x259C32B90](v18, v19);
      MEMORY[0x259C32B90](34, 0xE100000000000000);
      v20 = *(a2 + 16);
      v24 = String.utf8CString.getter();
      v25 = sqlite3_exec(v20, (v24 + 32), 0, 0, 0);

      SQLConnection.isOk(_:context:)(v25, 0);
    }

    if (v23)
    {
LABEL_27:

      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();
      goto LABEL_29;
    }

    swift_bridgeObjectRelease_n();
    v66 = v16;
    v67 = v15;
    MEMORY[0x259C32B90](0x4F5453424D4F542ELL, 0xEA0000000000454ELL);
    v26 = v66;
    v27 = v67;
    v28 = SQLConnection.streamTombstoneVtabModule()();
    v29 = *(v28 + 16);
    v30 = *(v28 + 24);

    if (*(a2 + 96) == 1)
    {

      v31 = sqlite3_set_authorizer(v20, 0, 0);
      SQLConnection.isOk(_:context:)(v31, 0);
      if (v32)
      {
        goto LABEL_28;
      }

      *(a2 + 96) = 0;
      closure #1 in SQLConnection.createVirtualTable(tableName:moduleName:)(v26, v27, v29, v30, a2);
      SQLConnection.setAuthorizor()();
    }

    else
    {
      v66 = 0;
      v67 = 0xE000000000000000;

      _StringGuts.grow(_:)(54);
      MEMORY[0x259C32B90](0xD000000000000028, v70 | 0x8000000000000000);
      MEMORY[0x259C32B90](v26, v27);
      MEMORY[0x259C32B90](0x20474E4953552022, 0xE900000000000022);
      MEMORY[0x259C32B90](v29, v30);
      MEMORY[0x259C32B90](34, 0xE100000000000000);
      v34 = String.utf8CString.getter();
      v35 = sqlite3_exec(v20, (v34 + 32), 0, 0, 0);

      SQLConnection.isOk(_:context:)(v35, 0);
    }

    v7 = v33;
    if (v33)
    {
LABEL_28:
      swift_bridgeObjectRelease_n();
      swift_bridgeObjectRelease_n();

LABEL_29:
      v49 = __src;
      return __swift_destroy_boxed_opaque_existential_0(v49);
    }

    swift_bridgeObjectRelease_n();
    swift_bridgeObjectRelease_n();
  }

  __swift_destroy_boxed_opaque_existential_0(__src);
  v36 = __swift_project_boxed_opaque_existential_0(v55, v55[3]);
  MEMORY[0x28223BE20](v36);
  (*(v38 + 16))(&v54 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0));
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_1(&v66);
  dispatch thunk of Sequence.makeIterator()();
  v39 = (v57 + 8);
  v70 = (v56 + 8);
LABEL_17:
  __swift_mutable_project_boxed_opaque_existential_1(&v66, AssociatedTypeWitness);
  dispatch thunk of IteratorProtocol.next()();
  v40 = __src[1];
  if (!__src[1])
  {
LABEL_26:
    v49 = &v66;
    return __swift_destroy_boxed_opaque_existential_0(v49);
  }

  v41 = __src[0];
  if (!dispatch thunk of static LibraryBase.lookupDatabaseResource(identifier:)())
  {
    __src[0] = 0;
    __src[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(18);

    __src[0] = 0xD000000000000010;
    __src[1] = 0x80000002553A8340;
    MEMORY[0x259C32B90](v41, v40);

    v50 = __src[0];
    v51 = __src[1];
    lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
    swift_allocError();
    v53 = v52;
    *v52 = v50;
    v52[1] = v51;
    memcpy(v52 + 2, __src, 0x48uLL);
    *(v53 + 88) = 0;
    swift_willThrow();
    goto LABEL_26;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  dispatch thunk of static DatabaseResource.databaseResourceToken(useCase:)();
  if (v7)
  {

    goto LABEL_26;
  }

  v42 = v59;
  DatabaseResourceToken.url.getter();
  dispatch thunk of static DataResource.identifier.getter();
  SQLConnection.attachDatabase(url:as:readwrite:)();
  (*v39)(v42, v60);

  v43 = dispatch thunk of static DatabaseResource.views.getter();
  v44 = v43 + 40;
  v45 = -*(v43 + 16);
  v46 = -1;
  while (1)
  {
    result = v64;
    if (v45 + v46 == -1)
    {
      (*v70)(v64, v58);

      goto LABEL_17;
    }

    if (++v46 >= *(v43 + 16))
    {
      break;
    }

    v48 = v44 + 16;
    SQLConnection.createTempSQLView(for:)();
    v44 = v48;
  }

  __break(1u);
  return result;
}

uint64_t SQLConnection.streamVtabModule()()
{
  if (*(v0 + 64))
  {
    v0 = *(v0 + 64);
  }

  else
  {
    v2 = type metadata accessor for VirtualTable.Stream.Module();
    OUTLINED_FUNCTION_9_1(v2);
    v3 = OUTLINED_FUNCTION_15_1();
    VirtualTable.Stream.Module.init(ipsqlDb:)(v3);
    OUTLINED_FUNCTION_15_1();

    v4 = OUTLINED_FUNCTION_6_2();
    specialized SQLConnection.withoutAuthorizer(block:)(v4, v5, v6);
    if (v1)
    {

      return v0;
    }

    *(v0 + 64) = v0;
  }

  return v0;
}

uint64_t SQLConnection.streamTombstoneVtabModule()()
{
  if (*(v0 + 72))
  {
    v0 = *(v0 + 72);
  }

  else
  {
    v2 = type metadata accessor for VirtualTable.StreamTombstone.Module();
    OUTLINED_FUNCTION_9_1(v2);
    v3 = OUTLINED_FUNCTION_15_1();
    VirtualTable.StreamTombstone.Module.init(ipsqlDb:)(v3);
    OUTLINED_FUNCTION_15_1();

    v4 = OUTLINED_FUNCTION_6_2();
    specialized SQLConnection.withoutAuthorizer(block:)(v4, v5, v6);
    if (v1)
    {

      return v0;
    }

    *(v0 + 72) = v0;
  }

  return v0;
}

void SQLConnection.attachDatabase(url:as:readwrite:)()
{
  OUTLINED_FUNCTION_23();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_21(v9);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v28[-1] - v11;
  v13 = type metadata accessor for URL();
  OUTLINED_FUNCTION_0_2();
  v29 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3();
  v18 = v17 - v16;
  specialized Dictionary.subscript.getter(v6, v4, *(v0 + 88), v12);
  if (__swift_getEnumTagSinglePayload(v12, 1, v13) == 1)
  {
    v19 = outlined destroy of URL?(v12, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    MEMORY[0x28223BE20](v19);
    *(&v27 - 48) = v2 & 1;
    *(&v27 - 5) = v0;
    *(&v27 - 4) = v8;
    *(&v27 - 3) = v6;
    *(&v27 - 2) = v4;
    SQLConnection.withoutAuthorizer(block:)(partial apply for closure #1 in SQLConnection.attachDatabase(url:as:readwrite:));
  }

  else
  {
    (*(v29 + 32))(v18, v12, v13);
    lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9278]);
    if ((dispatch thunk of static Equatable.== infix(_:_:)() & 1) == 0)
    {
      v28[0] = 0;
      v28[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(54);
      MEMORY[0x259C32B90](0xD000000000000010, 0x80000002553A7E80);
      lazy protocol witness table accessor for type URL and conformance URL(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9290]);
      v20 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x259C32B90](v20);

      MEMORY[0x259C32B90](0x616261746144203ALL, 0xEB00000000206573);
      MEMORY[0x259C32B90](v6, v4);
      MEMORY[0x259C32B90](0xD000000000000015, 0x80000002553A7EA0);
      v21 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x259C32B90](v21);

      v22 = v28[0];
      v23 = v28[1];
      v24 = lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
      OUTLINED_FUNCTION_13(&type metadata for SQLConnection.Error, v24);
      v26 = v25;
      *v25 = v22;
      v25[1] = v23;
      memcpy(v25 + 2, v28, 0x48uLL);
      *(v26 + 88) = 2;
      swift_willThrow();
    }

    (*(v29 + 8))(v18, v13);
  }

  OUTLINED_FUNCTION_24();
}

void SQLConnection.createTempSQLView(for:)()
{
  OUTLINED_FUNCTION_23();
  type metadata accessor for LibraryArtifact.Table();
  OUTLINED_FUNCTION_0_2();
  v25 = v1;
  v26 = v0;
  MEMORY[0x28223BE20](v0);
  OUTLINED_FUNCTION_3();
  v4 = v3 - v2;
  _StringGuts.grow(_:)(29);

  OUTLINED_FUNCTION_10_0();
  v5 = dispatch thunk of static LibraryArtifact.DataArtifact.identifier.getter();
  MEMORY[0x259C32B90](v5);

  MEMORY[0x259C32B90](34, 0xE100000000000000);
  String.utf8CString.getter();
  OUTLINED_FUNCTION_20_1();

  OUTLINED_FUNCTION_5_3();
  sqlite3_exec(v6, v7, v8, v9, v10);

  OUTLINED_FUNCTION_0_0();
  SQLConnection.isOk(_:context:)(v11, v12);
  if (!v13)
  {
    _StringGuts.grow(_:)(102);
    MEMORY[0x259C32B90](0xD00000000000002CLL, 0x80000002553A8280);
    OUTLINED_FUNCTION_10_0();
    v14 = dispatch thunk of static LibraryArtifact.DataArtifact.identifier.getter();
    MEMORY[0x259C32B90](v14);

    MEMORY[0x259C32B90](0xD000000000000030, 0x80000002553A82B0);
    dispatch thunk of static IntelligencePlatformView.database.getter();
    v15 = dispatch thunk of static DataResource.identifier.getter();
    MEMORY[0x259C32B90](v15);

    MEMORY[0x259C32B90](2240034, 0xE300000000000000);
    OUTLINED_FUNCTION_10_0();
    v16 = dispatch thunk of static LibraryArtifact.DataArtifact.metadata.getter();
    MEMORY[0x259C32550](v16);
    (*(v25 + 8))(v4, v26);
    v17 = OUTLINED_FUNCTION_13_1();
    MEMORY[0x259C32B90](v17);

    MEMORY[0x259C32B90](34, 0xE100000000000000);
    String.utf8CString.getter();
    OUTLINED_FUNCTION_20_1();

    OUTLINED_FUNCTION_5_3();
    sqlite3_exec(v18, v19, v20, v21, v22);

    OUTLINED_FUNCTION_0_0();
    SQLConnection.isOk(_:context:)(v23, v24);
  }

  OUTLINED_FUNCTION_24();
}

uint64_t SQLConnection.deinit()
{
  sqlite3_close(*(v0 + 16));

  return v0;
}

uint64_t SQLConnection.__deallocating_deinit()
{
  SQLConnection.deinit();
  v0 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t closure #1 in SQLConnection.streamVtabModule()(uint64_t a1, void *a2, uint64_t a3)
{
  v10[4] = a3;
  v10[3] = *a2;
  v10[0] = a2;

  v6 = static VirtualTable.createModule(with:)(v10);
  if (!v3)
  {
    specialized closure #1 in SQLConnection.register(module:)(a1, a2, v6);
    OUTLINED_FUNCTION_0_0();
    SQLConnection.isOk(_:context:)(v7, v8);
  }

  return __swift_destroy_boxed_opaque_existential_0(v10);
}

uint64_t SQLConnection.viewVtabModule()()
{
  if (*(v0 + 80))
  {
    v0 = *(v0 + 80);
  }

  else
  {
    v2 = type metadata accessor for VirtualTable.View.Module();
    OUTLINED_FUNCTION_9_1(v2);
    v3 = OUTLINED_FUNCTION_15_1();
    VirtualTable.View.Module.init(ipsqlDb:)(v3);
    OUTLINED_FUNCTION_15_1();

    v4 = OUTLINED_FUNCTION_6_2();
    specialized SQLConnection.withoutAuthorizer(block:)(v4, v5, v6);
    if (v1)
    {

      return v0;
    }

    *(v0 + 80) = v0;
  }

  return v0;
}

void SQLConnection.execute(query:bindings:block:)(uint64_t a1, uint64_t a2, Swift::OpaquePointer a3, void (*a4)(void))
{
  v6._rawValue = SQLConnection.prepareStatement(query:)(*&a1)._rawValue;
  if (!v7)
  {
    rawValue = v6._rawValue;
    SQLConnection.addBindings(stmt:bindings:)(v6, a3);
    if (!v9)
    {
      v10 = type metadata accessor for ResultSetCursor();
      OUTLINED_FUNCTION_9_1(v10);

      ResultSetCursor.init(db:statement:)(v11, rawValue);
      a4();

      sqlite3_finalize(rawValue);
    }
  }
}

Swift::OpaquePointer __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLConnection.prepareStatement(query:)(Swift::String query)
{
  ppStmt[1] = *MEMORY[0x277D85DE8];
  ppStmt[0] = 0;
  if ((query._object & 0x1000000000000000) == 0)
  {
    if ((query._object & 0x2000000000000000) != 0)
    {
      *zSql = query._countAndFlagsBits;
      *&zSql[8] = query._object & 0xFFFFFFFFFFFFFFLL;
      query._countAndFlagsBits = *(v1 + 16);
      query._object = zSql;
      goto LABEL_6;
    }

    if ((query._countAndFlagsBits & 0x1000000000000000) != 0)
    {
      query._countAndFlagsBits = *(v1 + 16);
      query._object = ((query._object & 0xFFFFFFFFFFFFFFFLL) + 32);
LABEL_6:
      sqlite3_prepare_v2(query._countAndFlagsBits, query._object, -1, ppStmt, 0);
      goto LABEL_7;
    }
  }

  _StringGuts._slowWithCString<A>(_:)();
LABEL_7:
  OUTLINED_FUNCTION_0_0();
  SQLConnection.isOk(_:context:)(v3, v4);
  if (!v6)
  {
    result._rawValue = ppStmt[0];
    if (!ppStmt[0])
    {
      v7 = lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
      OUTLINED_FUNCTION_13(&type metadata for SQLConnection.Error, v7);
      v9 = v8;
      *v8 = 0xD000000000000020;
      v8[1] = 0x80000002553A82F0;
      memcpy(v8 + 2, zSql, 0x48uLL);
      *(v9 + 88) = 0;
      return swift_willThrow();
    }
  }

  return result;
}

void SQLConnection.execute(query:against:block:)()
{
  OUTLINED_FUNCTION_23();
  v29 = v1;
  v27 = v3;
  v28 = v2;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = type metadata accessor for SQLParseResult(0);
  OUTLINED_FUNCTION_0_2();
  v25 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_3();
  v15 = v14 - v13;
  v24 = *v5;
  v16 = v5[2];
  v26 = v5[1];
  v17 = v5[3];
  v18 = v5[4];
  v20 = v5[5];
  v19 = v5[6];

  SQLParseResult.init(sql:)(v9, v7, v15);
  if (!v0)
  {
    (*(v25 + 8))(v15, v10);
    if (v24)
    {
      if (v24 == 1)
      {
        v21 = lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
        OUTLINED_FUNCTION_13(&type metadata for SQLConnection.Error, v21);
        v23 = v22;
        *v22 = 0xD000000000000014;
        v22[1] = 0x80000002553A7EC0;
        memcpy(v22 + 2, v30, 0x48uLL);
        *(v23 + 88) = 0;
        swift_willThrow();
      }

      else
      {
        LOBYTE(v30[0]) = 2;
        v30[1] = v26;
        v30[2] = v16;
        v30[3] = v17;
        v30[4] = v18;
        v30[5] = v20;
        v30[6] = v19;
        SQLConnection.executeView(query:against:block:)(v9, v7, v30, v28, v29, v27);
      }
    }

    else
    {
      LOBYTE(v30[0]) = 0;
      v30[1] = v26;
      v30[2] = v16;
      v30[3] = v17;
      v30[4] = v18;
      v30[5] = v20;
      v30[6] = v19;
      SQLConnection.executeStream(query:against:block:)(v9, v7, v30, v28, v27);
    }
  }

  OUTLINED_FUNCTION_24();
}

uint64_t SQLConnection.executeStream(query:against:block:)@<X0>(uint64_t a1@<X0>, void *a2@<X1>, char *a3@<X2>, void (*a4)(Swift::String *)@<X3>, uint64_t a5@<X8>)
{
  v52._countAndFlagsBits = a1;
  v52._object = a2;
  v6 = *a3;
  v7 = *(a3 + 1);
  v8 = *(a3 + 2);
  v10 = *(a3 + 3);
  v9 = *(a3 + 4);
  v11 = *(a3 + 5);
  v12 = *(a3 + 6);
  type metadata accessor for VirtualTable.Stream.QueryState();
  LOBYTE(v55._countAndFlagsBits) = v6;
  v55._object = v7;
  v56 = v8;
  v57 = v10;
  v58 = v9;
  v59 = v11;
  v60 = v12;
  v13 = OUTLINED_FUNCTION_13_1();
  outlined copy of Data._Representation(v13, v14);
  v15 = OUTLINED_FUNCTION_22_1();
  outlined copy of Data._Representation(v15, v16);
  outlined copy of Data._Representation(v11, v12);
  result = VirtualTable.Stream.QueryState.__allocating_init(globalBookmark:)(&v55);
  if (!v5)
  {
    v18 = result;
    v49 = v6;
    v19 = *(result + 16);
    v20 = *(result + 24);

    SQLConnection.streamVtabModule()();
    v48 = v18;
    v21 = VirtualTable.Stream.Module.vtabCreatingIfNeeded(for:)(v19, v20);

    *(v21 + OBJC_IVAR____TtCOO25IntelligencePlatformQuery12VirtualTable6Stream5Table_sourceState) = v48;

    v22 = SQLConnection.streamTombstoneVtabModule()();
    v47 = v19;
    v55._countAndFlagsBits = v19;
    v55._object = v20;
    v24 = v22;

    MEMORY[0x259C32B90](0x4F5453424D4F542ELL, 0xEA0000000000454ELL);
    VirtualTable.StreamTombstone.Module.vtabCreatingIfNeeded(for:)(v55._countAndFlagsBits, v55._object);
    OUTLINED_FUNCTION_23_0();

    *(v24 + 56) = v48;

    v55._countAndFlagsBits = 0;
    v55._object = 0xE000000000000000;
    _StringGuts.grow(_:)(65);
    OUTLINED_FUNCTION_24_0();
    MEMORY[0x259C32B90](0xD000000000000034);
    MEMORY[0x259C32B90](v47, v20);

    MEMORY[0x259C32B90](0x4F5453424D4F542ELL, 0xEB0000000022454ELL);
    v25._rawValue = SQLConnection.prepareStatement(query:)(v55)._rawValue;
    if (v26)
    {

      VirtualTable.StreamTombstone.Table.resetIncrementalState()();
      if (v27)
      {
      }

      VirtualTable.Stream.Table.resetIncrementalState()();
      if (v28)
      {
      }
    }

    else
    {
      rawValue = v25._rawValue;

      v30._rawValue = SQLConnection.prepareStatement(query:)(v52)._rawValue;
      if (v31)
      {
        sqlite3_finalize(rawValue);
        VirtualTable.StreamTombstone.Table.resetIncrementalState()();
        if (v32)
        {
        }

        VirtualTable.Stream.Table.resetIncrementalState()();
        if (v23)
        {
        }
      }

      else
      {
        pStmt = v30._rawValue;
        v33 = type metadata accessor for ResultSetCursor();
        OUTLINED_FUNCTION_9_1(v33);
        OUTLINED_FUNCTION_23_0();

        v53 = ResultSetCursor.init(db:statement:)(v34, rawValue);
        OUTLINED_FUNCTION_9_1(v33);
        OUTLINED_FUNCTION_23_0();

        v36 = ResultSetCursor.init(db:statement:)(v35, pStmt);
        v55._countAndFlagsBits = v53;
        v55._object = v36;
        a4(&v55);

        VirtualTable.Stream.QueryState.finalBookmark.getter(v61);
        v37 = OUTLINED_FUNCTION_13_1();
        outlined copy of Data._Representation(v37, v38);
        v39 = v10;
        v40 = v10;
        v41 = v9;
        outlined copy of Data._Representation(v40, v9);
        v42 = specialized IncrementalIdentifier.Identifier.asData.getter();
        v44 = v43;
        outlined destroy of IncrementalIdentifier.Stream.Bookmark(v61);
        *a5 = v49;
        *(a5 + 8) = v7;
        *(a5 + 16) = v8;
        *(a5 + 24) = v39;
        *(a5 + 32) = v41;
        *(a5 + 40) = v42;
        *(a5 + 48) = v44;
        sqlite3_finalize(pStmt);
        sqlite3_finalize(rawValue);
        VirtualTable.StreamTombstone.Table.resetIncrementalState()();
        if (v45)
        {
        }

        VirtualTable.Stream.Table.resetIncrementalState()();
        if (v46)
        {
        }
      }
    }
  }

  return result;
}

void SQLConnection.executeView(query:against:block:)(uint64_t a1@<X0>, void *a2@<X1>, void *a3@<X2>, void (*a4)(Swift::String *)@<X3>, uint64_t a5@<X4>, _BYTE *a6@<X8>)
{
  v93 = a5;
  v94 = a4;
  v95 = a1;
  v96 = a2;
  v90 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams23UpdatedObjectDiffConfigVSgMd, &_s12BiomeStreams23UpdatedObjectDiffConfigVSgMR);
  OUTLINED_FUNCTION_21(v8);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v9);
  v11 = (&v85 - v10);
  v12 = type metadata accessor for UpdatedObjectDiffConfig();
  OUTLINED_FUNCTION_0_2();
  v97 = v13;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3();
  v17 = v16 - v15;
  v89 = *a3;
  v19 = a3[1];
  v18 = a3[2];
  v20 = a3[4];
  v91 = a3[3];
  v92 = v20;
  v21 = a3[5];
  v99 = a3[6];
  v100 = v21;
  v22 = OUTLINED_FUNCTION_22_1();
  v24 = outlined copy of Data._Representation(v22, v23);
  v25 = MEMORY[0x259C331C0](v24);
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type IncrementalIdentifier.View.Source and conformance IncrementalIdentifier.View.Source();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();
  if (v6)
  {

    objc_autoreleasePoolPop(v25);
    v26 = OUTLINED_FUNCTION_22_1();
    outlined consume of Data._Representation(v26, v27);
    return;
  }

  v87 = v11;
  v86 = v17;
  v88 = v12;

  objc_autoreleasePoolPop(v25);
  v28 = OUTLINED_FUNCTION_22_1();
  v30 = outlined consume of Data._Representation(v28, v29);
  object = __src[0]._object;
  v32 = MEMORY[0x259C331C0](v30);
  swift_allocObject();
  JSONDecoder.init()();
  lazy protocol witness table accessor for type IncrementalIdentifier.View.Bookmark and conformance IncrementalIdentifier.View.Bookmark();
  dispatch thunk of JSONDecoder.decode<A>(_:from:)();

  objc_autoreleasePoolPop(v32);
  v33 = *&__src[0]._countAndFlagsBits;
  v34 = v98;
  SQLConnection.viewVtabModule()();
  v35 = OUTLINED_FUNCTION_23_0();
  v36 = VirtualTable.View.Module.vtabCreatingIfNeeded(for:)(v35, object);

  v37 = VirtualTable.View.Table.currentState()();
  if (v38)
  {
    goto LABEL_4;
  }

  v40 = v88;
  v41 = v87;
  if (v33 <= 0.0)
  {
    goto LABEL_12;
  }

  if (v33 >= v37.pruneByTimestamp)
  {
    if (v37.latestTimestamp < v33)
    {
      OUTLINED_FUNCTION_12_1();
      _StringGuts.grow(_:)(89);
      MEMORY[0x259C32B90](0xD00000000000004ALL, 0x80000002553A8210);
      OUTLINED_FUNCTION_25_0();
      MEMORY[0x259C32B90](0x6574616C20737620, 0xEB00000000207473);
      goto LABEL_11;
    }

LABEL_12:
    *(v36 + 56) = v33;
    *(v36 + 64) = 0;
    dispatch thunk of static IntelligencePlatformView.updatedObjectDiffConfig.getter();
    if (__swift_getEnumTagSinglePayload(v41, 1, v40) == 1)
    {
      outlined destroy of URL?(v41, &_s12BiomeStreams23UpdatedObjectDiffConfigVSgMd, &_s12BiomeStreams23UpdatedObjectDiffConfigVSgMR);
      v47 = lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
      OUTLINED_FUNCTION_13(&type metadata for SQLConnection.Error, v47);
      v49 = v48;
      *v48 = 0xD000000000000035;
      v48[1] = 0x80000002553A8150;
      memcpy(v48 + 2, __src, 0x48uLL);
      *(v49 + 88) = 0;
      swift_willThrow();
      *(v36 + 56) = 0;
      *(v36 + 64) = 1;
      goto LABEL_4;
    }

    v99 = v19;
    v100 = v18;
    v50 = v97;
    v51 = v40;
    v52 = v86;
    (*(v97 + 32))(v86, v41, v51);
    OUTLINED_FUNCTION_12_1();
    _StringGuts.grow(_:)(110);
    OUTLINED_FUNCTION_24_0();
    MEMORY[0x259C32B90](0xD000000000000014);
    UpdatedObjectDiffConfig.identifierColumn.getter();
    OUTLINED_FUNCTION_16_1();

    OUTLINED_FUNCTION_24_0();
    MEMORY[0x259C32B90](0xD000000000000014);
    dispatch thunk of static IntelligencePlatformView.database.getter();
    dispatch thunk of static DataResource.identifier.getter();
    OUTLINED_FUNCTION_16_1();

    MEMORY[0x259C32B90](2240034, 0xE300000000000000);
    UpdatedObjectDiffConfig.tableName.getter();
    OUTLINED_FUNCTION_16_1();

    MEMORY[0x259C32B90](0xD000000000000015, 0x80000002553A81D0);
    UpdatedObjectDiffConfig.updatedTimestampColumn.getter();
    OUTLINED_FUNCTION_16_1();

    MEMORY[0x259C32B90](0xD000000000000017, 0x80000002553A81F0);
    UpdatedObjectDiffConfig.identifierColumn.getter();
    OUTLINED_FUNCTION_16_1();

    MEMORY[0x259C32B90](0x544F4E2053492022, 0xED00004C4C554E20);
    v53._rawValue = SQLConnection.prepareStatement(query:)(__src[0])._rawValue;
    if (v54)
    {
      (*(v50 + 8))(v52, v51);

LABEL_26:
      *(v36 + 56) = 0;
      *(v36 + 64) = 1;
      goto LABEL_4;
    }

    rawValue = v53._rawValue;

    if (v33 == 0.0)
    {
      v56 = v37.latestTimestamp + 0.0;
      v57 = v96;
      v58 = v97;
      v59 = v95;
      if (v37.latestTimestamp != INFINITY)
      {
        *&v56 += (*&v56 >> 63) | 1;
      }

      sqlite3_bind_double(rawValue, 1, v56);
      OUTLINED_FUNCTION_0_0();
      v60 = rawValue;
      SQLConnection.isOk(_:context:)(v61, v62);
      if (v63)
      {
        v64 = rawValue;
LABEL_25:
        sqlite3_finalize(v64);
        (*(v58 + 8))(v86, v51);
        goto LABEL_26;
      }
    }

    else
    {
      sqlite3_bind_double(rawValue, 1, v33);
      OUTLINED_FUNCTION_0_0();
      v60 = rawValue;
      SQLConnection.isOk(_:context:)(v65, v66);
      v57 = v96;
      v58 = v97;
      v67 = v86;
      v59 = v95;
      if (v68)
      {
        sqlite3_finalize(v60);
        (*(v58 + 8))(v67, v51);
        goto LABEL_26;
      }
    }

    v87 = v60;
    v69._countAndFlagsBits = v59;
    v69._object = v57;
    v70._rawValue = SQLConnection.prepareStatement(query:)(v69)._rawValue;
    if (!v71)
    {
      v72 = v70._rawValue;
      v73 = type metadata accessor for ResultSetCursor();
      OUTLINED_FUNCTION_9_1(v73);

      v75 = ResultSetCursor.init(db:statement:)(v74, v87);
      OUTLINED_FUNCTION_9_1(v73);

      v77 = ResultSetCursor.init(db:statement:)(v76, v72);
      __src[0]._countAndFlagsBits = v75;
      __src[0]._object = v77;
      v94(__src);

      outlined copy of Data._Representation(v99, v100);
      outlined copy of Data._Representation(v91, v92);
      v78 = specialized IncrementalIdentifier.Identifier.asData.getter(v37.latestTimestamp);
      v79 = v90;
      *v90 = v89;
      v80 = v100;
      v79[1] = v99;
      v79[2] = v80;
      v81 = v92;
      v79[3] = v91;
      v79[4] = v81;
      v79[5] = v78;
      v79[6] = v82;
      sqlite3_finalize(v72);
      sqlite3_finalize(v87);
      v83 = OUTLINED_FUNCTION_19_1();
      v84(v83, v88);
      *(v36 + 56) = 0;
      *(v36 + 64) = 1;
      v39 = v98;
      goto LABEL_5;
    }

    v64 = v87;
    goto LABEL_25;
  }

  OUTLINED_FUNCTION_12_1();
  _StringGuts.grow(_:)(88);
  MEMORY[0x259C32B90](0xD00000000000004ALL, 0x80000002553A8210);
  OUTLINED_FUNCTION_25_0();
  MEMORY[0x259C32B90](0x6E75727020737620, 0xEA00000000002065);
LABEL_11:
  Double.write<A>(to:)();
  countAndFlagsBits = __src[0]._countAndFlagsBits;
  v43 = __src[0]._object;
  v44 = lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
  OUTLINED_FUNCTION_13(&type metadata for SQLConnection.Error, v44);
  v46 = v45;
  *v45 = countAndFlagsBits;
  v45[1] = v43;
  memcpy(v45 + 2, __src, 0x48uLL);
  *(v46 + 88) = 0;
  swift_willThrow();
LABEL_4:
  v39 = v34;
LABEL_5:
  $defer #1 () in SQLConnection.executeView(query:against:block:)(v39, v36);
}

uint64_t closure #1 in closure #1 in SQLConnection.prepareStatement(query:)@<X0>(char *zSql@<X0>, sqlite3_stmt **ppStmt@<X2>, uint64_t a3@<X1>, _DWORD *a4@<X8>)
{
  result = sqlite3_prepare_v2(*(a3 + 16), zSql, -1, ppStmt, 0);
  *a4 = result;
  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLConnection.isOk(_:context:)(Swift::Int32 _, Swift::String_optional context)
{
  if (_)
  {
    object = context.value._object;
    countAndFlagsBits = context.value._countAndFlagsBits;
    v4 = lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
    OUTLINED_FUNCTION_13(&type metadata for SQLConnection.Error, v4);
    v5 = OUTLINED_FUNCTION_21_1();
    static SQLConnection.sqlError(db:resultCode:statement:message:)(v5, v6, v7, countAndFlagsBits, object, v8);
    swift_willThrow();
  }
}

const char *static SQLConnection.sqlError(db:resultCode:statement:message:)@<X0>(sqlite3 *a1@<X0>, int a2@<W1>, sqlite3_stmt *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v22 = sqlite3_errcode(a1);
  v11 = sqlite3_extended_errcode(a1);
  result = sqlite3_errmsg(a1);
  if (!result)
  {
    __break(1u);
    goto LABEL_11;
  }

  v13 = String.init(cString:)();
  v15 = v14;
  v16 = sqlite3_error_offset(a1);
  result = sqlite3_errstr(v11);
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v17 = String.init(cString:)();
  v19 = v18;
  if (!a3)
  {
    v20 = 0;
    v21 = 0;
    goto LABEL_7;
  }

  result = sqlite3_sql(a3);
  if (!result)
  {
LABEL_12:
    __break(1u);
    return result;
  }

  v20 = String.init(cString:)();
LABEL_7:
  *a6 = a2;
  *(a6 + 4) = v22;
  *(a6 + 8) = v11;
  *(a6 + 16) = v17;
  *(a6 + 24) = v19;
  *(a6 + 32) = v13;
  *(a6 + 40) = v15;
  *(a6 + 48) = v16;
  *(a6 + 56) = v20;
  *(a6 + 64) = v21;
  *(a6 + 72) = a4;
  *(a6 + 80) = a5;
  *(a6 + 88) = 3;
}

uint64_t static SQLConnection.isOk(resultCode:statement:context:)(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
    v6 = result;
    v7 = lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
    OUTLINED_FUNCTION_13(&type metadata for SQLConnection.Error, v7);
    static SQLConnection.sqlErrorLite(resultCode:statement:message:)(v6, 0, a3, a4, v8);
    return swift_willThrow();
  }

  return result;
}

const char *static SQLConnection.sqlErrorLite(resultCode:statement:message:)@<X0>(int a1@<W0>, sqlite3_stmt *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  result = sqlite3_errstr(a1);
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v11 = String.init(cString:)();
  v13 = v12;
  if (!a2)
  {
    v14 = 0;
    v15 = 0;
    goto LABEL_6;
  }

  result = sqlite3_sql(a2);
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v14 = String.init(cString:)();
LABEL_6:
  *a5 = a1;
  *(a5 + 8) = v11;
  *(a5 + 16) = v13;
  *(a5 + 24) = v14;
  *(a5 + 32) = v15;
  *(a5 + 40) = a3;
  *(a5 + 48) = a4;
  *(a5 + 88) = 4;
}

uint64_t $defer #1 () in SQLConnection.executeView(query:against:block:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Logger();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();

  return specialized SQLConnection.withoutAuthorizer(block:)(a1, a1, a2);
}

uint64_t static SQLConnection.SQLITE_TRANSIENT.getter()
{
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    OUTLINED_FUNCTION_29(&one-time initialization token for SQLITE_TRANSIENT);
  }

  return static SQLConnection.SQLITE_TRANSIENT;
}

uint64_t static SQLConnection.SQLITE_TRANSIENT.setter(uint64_t result)
{
  v1 = result;
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    result = OUTLINED_FUNCTION_29(&one-time initialization token for SQLITE_TRANSIENT);
  }

  static SQLConnection.SQLITE_TRANSIENT = v1;
  return result;
}

void (*static SQLConnection.SQLITE_TRANSIENT.modify())()
{
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    OUTLINED_FUNCTION_29(&one-time initialization token for SQLITE_TRANSIENT);
  }

  return ResultSetCursor.columns.modify;
}

void static SQLConnection.sqlite_result_string(context:string:)(sqlite3_context *a1, uint64_t a2, uint64_t a3)
{
  if ((a3 & 0x1000000000000000) != 0)
  {
    goto LABEL_12;
  }

  if ((a3 & 0x2000000000000000) == 0)
  {
    if ((a2 & 0x1000000000000000) != 0)
    {
      v4 = a3 & 0xFFFFFFFFFFFFFFFLL;
      if (one-time initialization token for SQLITE_TRANSIENT != -1)
      {
        OUTLINED_FUNCTION_29(&one-time initialization token for SQLITE_TRANSIENT);
      }

      v5 = static SQLConnection.SQLITE_TRANSIENT;

      sqlite3_result_text(a1, (v4 + 32), -1, v5);
      return;
    }

LABEL_12:
    _StringGuts._slowWithCString<A>(_:)();
    return;
  }

  *v6 = a2;
  v7 = a3 & 0xFFFFFFFFFFFFFFLL;
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    OUTLINED_FUNCTION_29(&one-time initialization token for SQLITE_TRANSIENT);
  }

  sqlite3_result_text(a1, v6, -1, static SQLConnection.SQLITE_TRANSIENT);
}

void closure #1 in static SQLConnection.sqlite_result_string(context:string:)(char *a1, sqlite3_context *a2)
{
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
    swift_once();
  }

  sqlite3_result_text(a2, a1, -1, static SQLConnection.SQLITE_TRANSIENT);
}

uint64_t SQLConnection.Error.description.getter()
{
  v1 = *(v0 + 8);
  v3 = *(v0 + 16);
  v2 = *(v0 + 24);
  v5 = *(v0 + 32);
  v4 = *(v0 + 40);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 64);
  result = 0x4D20666F2074754FLL;
  switch(*(v0 + 88))
  {
    case 1:
      v24[0] = 0;
      v24[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(26);

      OUTLINED_FUNCTION_14_1();
      v13 = OUTLINED_FUNCTION_13_1();
      MEMORY[0x259C32B90](v13);
      MEMORY[0x259C32B90](544106784, 0xE400000000000000);
      v14 = v3;
      v15 = v2;
      goto LABEL_8;
    case 2:
      strcpy(v24, "Usage Error: ");
      HIWORD(v24[1]) = -4864;
      goto LABEL_7;
    case 3:
      v21 = *(v0 + 72);
      v22 = *(v0 + 80);
      v24[0] = 0;
      v24[1] = 0xE000000000000000;
      v23 = v4;
      _StringGuts.grow(_:)(43);

      OUTLINED_FUNCTION_3_3();
      dispatch thunk of CustomStringConvertible.description.getter();
      OUTLINED_FUNCTION_29_0();

      OUTLINED_FUNCTION_7_2();
      dispatch thunk of CustomStringConvertible.description.getter();
      OUTLINED_FUNCTION_29_0();

      OUTLINED_FUNCTION_7_2();
      dispatch thunk of CustomStringConvertible.description.getter();
      OUTLINED_FUNCTION_29_0();

      OUTLINED_FUNCTION_7_2();
      MEMORY[0x259C32B90](v3, v2);
      MEMORY[0x259C32B90](32, 0xE100000000000000);
      MEMORY[0x259C32B90](v5, v23);
      MEMORY[0x259C32B90](0x3A6C6F6320746120, 0xE900000000000020);
      v10 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x259C32B90](v10);

      if (v8)
      {
        MEMORY[0x259C32B90](v7, v8);
        MEMORY[0x259C32B90](2964604, 0xE300000000000000);
        v11 = 0x7C3E2D3A4C5153;
        v12 = 0xE700000000000000;
      }

      else
      {
        v11 = 0;
        v12 = 0xE000000000000000;
      }

      MEMORY[0x259C32B90](v11, v12);

      if (v22)
      {
        MEMORY[0x259C32B90](v21);
        v19 = 0x6567617373656D20;
        v20 = 0xEA0000000000203ALL;
      }

      else
      {
        v19 = 0;
        v20 = 0xE000000000000000;
      }

      goto LABEL_25;
    case 4:
      v24[0] = 0;
      v24[1] = 0xE000000000000000;
      v16 = v4;

      _StringGuts.grow(_:)(29);

      OUTLINED_FUNCTION_3_3();
      dispatch thunk of CustomStringConvertible.description.getter();
      OUTLINED_FUNCTION_29_0();

      OUTLINED_FUNCTION_7_2();
      MEMORY[0x259C32B90](v1, v3);
      OUTLINED_FUNCTION_26_0();
      if (v5)
      {
        v17 = v2;
      }

      else
      {
        v17 = 0;
      }

      if (v5)
      {
        v18 = v5;
      }

      else
      {
        v18 = 0xE000000000000000;
      }

      MEMORY[0x259C32B90](v17, v18);

      OUTLINED_FUNCTION_26_0();
      if (v6)
      {
        v19 = v16;
      }

      else
      {
        v19 = 0;
      }

      if (v6)
      {
        v20 = v6;
      }

      else
      {
        v20 = 0xE000000000000000;
      }

LABEL_25:
      MEMORY[0x259C32B90](v19, v20);

      return v24[0];
    case 5:
      return result;
    default:
      v24[0] = 0;
      v24[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(20);

      OUTLINED_FUNCTION_14_1();
LABEL_7:
      v14 = OUTLINED_FUNCTION_13_1();
LABEL_8:
      MEMORY[0x259C32B90](v14, v15);
      return v24[0];
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLConnection.detachDatabase(_:)(Swift::String a1)
{
  v2 = v1;
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_21(v5);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v16 - v7;
  v9 = *(v1 + 88);
  if (*(v9 + 16) && (v10 = specialized __RawDictionaryStorage.find<A>(_:)(countAndFlagsBits, object), (v11 & 1) != 0))
  {
    v12 = v10;
    v13 = *(v9 + 56);
    v14 = type metadata accessor for URL();
    (*(*(v14 - 8) + 16))(v8, v13 + *(*(v14 - 8) + 72) * v12, v14);
    __swift_storeEnumTagSinglePayload(v8, 0, 1, v14);
    outlined destroy of URL?(v8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);

    specialized SQLConnection.withoutAuthorizer(block:)(v2, v2, countAndFlagsBits, object);
  }

  else
  {
    v15 = type metadata accessor for URL();
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v15);
    outlined destroy of URL?(v8, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  }
}

void closure #1 in SQLConnection.detachDatabase(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_21(v5);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v18 - v7;
  v18 = 0;
  v19 = 0xE000000000000000;
  _StringGuts.grow(_:)(20);

  v18 = 0xD000000000000011;
  v19 = 0x80000002553A80F0;
  MEMORY[0x259C32B90](a2, a3);
  MEMORY[0x259C32B90](34, 0xE100000000000000);
  String.utf8CString.getter();

  OUTLINED_FUNCTION_5_3();
  sqlite3_exec(v9, v10, v11, v12, v13);

  OUTLINED_FUNCTION_0_0();
  SQLConnection.isOk(_:context:)(v14, v15);
  if (!v16)
  {
    v17 = type metadata accessor for URL();
    __swift_storeEnumTagSinglePayload(v8, 1, 1, v17);

    specialized Dictionary.subscript.setter(v8, a2, a3);
  }
}

void closure #1 in SQLConnection.attachDatabase(url:as:readwrite:)(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v20 - v11;
  v13 = *(a2 + 16);
  v20 = 0;
  v21 = 0xE000000000000000;
  _StringGuts.grow(_:)(36);

  v20 = 0xD000000000000011;
  v21 = 0x80000002553A8320;
  v14 = URL.absoluteString.getter();
  MEMORY[0x259C32B90](v14);

  if (a1)
  {
    v15 = 0x77723D65646F6D3FLL;
  }

  else
  {
    v15 = 0x6F723D65646F6D3FLL;
  }

  MEMORY[0x259C32B90](v15, 0xEE00222053412022);
  MEMORY[0x259C32B90](a4, a5);
  MEMORY[0x259C32B90](34, 0xE100000000000000);
  v16 = String.utf8CString.getter();

  v17 = sqlite3_exec(v13, (v16 + 32), 0, 0, 0);

  SQLConnection.isOk(_:context:)(v17, 0);
  if (!v18)
  {
    v19 = type metadata accessor for URL();
    (*(*(v19 - 8) + 16))(v12, a3, v19);
    __swift_storeEnumTagSinglePayload(v12, 0, 1, v19);

    specialized Dictionary.subscript.setter(v12, a4, a5);
  }
}

uint64_t lazy protocol witness table accessor for type URL and conformance URL(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for URL();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SQLConnection.executeWithoutAuthorizer(_:)(Swift::String a1)
{
  object = a1._object;
  OUTLINED_FUNCTION_20_1();

  specialized SQLConnection.withoutAuthorizer(block:)(v1, v1, v2, object);
}

uint64_t closure #1 in closure #1 in SQLConnection.executeWithoutAuthorizer(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  String.utf8CString.getter();
  OUTLINED_FUNCTION_5_3();
  v8 = sqlite3_exec(v3, v4, v5, v6, v7);

  return v8;
}

uint64_t SQLConnection.executeWithoutAuthorizer(_:block:)(uint64_t a1, uint64_t a2)
{

  return specialized SQLConnection.withoutAuthorizer(block:)(v2, v2, a1, a2);
}

sqlite3_stmt *closure #1 in SQLConnection.executeWithoutAuthorizer(_:block:)(uint64_t a1, Swift::String query, void (*a3)(void))
{
  result = SQLConnection.prepareStatement(query:)(query)._rawValue;
  if (!v5)
  {
    v6 = result;
    v7 = type metadata accessor for ResultSetCursor();
    OUTLINED_FUNCTION_9_1(v7);

    ResultSetCursor.init(db:statement:)(v8, v6);
    a3();

    return sqlite3_finalize(v6);
  }

  return result;
}

uint64_t SQLConnection.extendConnection(block:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_20_1();

  return specialized SQLConnection.withoutAuthorizer(block:)(v5, v3, a2, v2);
}

void closure #1 in SQLConnection.installEntityIdentifierFunction()(sqlite3_context *a1, int a2, sqlite3_value **a3)
{
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](v6);
  v10 = &v57[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = MEMORY[0x28223BE20](v8);
  v13 = &v57[-1] - v12;
  MEMORY[0x28223BE20](v11);
  v15 = &v57[-1] - v14;
  if (a2 == 1)
  {
    if (a3)
    {
      v16 = *a3;
      if (v16)
      {
        v17 = sqlite3_value_type(v16);
        if (v17 != 3)
        {
          if (v17 == 1)
          {
            v18 = sqlite3_value_int64(v16);

            sqlite3_result_int64(a1, v18);
            return;
          }

LABEL_37:
          sqlite3_result_null(a1);
          return;
        }

        if (!sqlite3_value_text(v16))
        {
          static Logging.SQL.getter();
          v37 = Logger.logObject.getter();
          v38 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v37, v38))
          {
            v39 = swift_slowAlloc();
            *v39 = 0;
            _os_log_impl(&dword_254FFD000, v37, v38, "SQLConnection: entityIdentifier: Could not convert value to string", v39, 2u);
            MEMORY[0x259C33C60](v39, -1, -1);
          }

          (*(v7 + 8))(v15, v6);
          goto LABEL_37;
        }

        v22 = String.init(cString:)();
        v24 = v23;
        v59 = v22;
        v60 = v23;

        v25._countAndFlagsBits = 3826797;
        v25._object = 0xE300000000000000;
        v26 = String.hasPrefix(_:)(v25);

        if (v26)
        {
          v27 = String.count.getter();
          specialized RangeReplaceableCollection.removeFirst(_:)(v27);
          v22 = v59;
          v24 = v60;
        }

        v28 = HIBYTE(v24) & 0xF;
        v29 = v22 & 0xFFFFFFFFFFFFLL;
        if ((v24 & 0x2000000000000000) != 0)
        {
          v30 = HIBYTE(v24) & 0xF;
        }

        else
        {
          v30 = v22 & 0xFFFFFFFFFFFFLL;
        }

        if (!v30)
        {
LABEL_85:
          static Logging.SQL.getter();

          v49 = Logger.logObject.getter();
          v50 = static os_log_type_t.error.getter();

          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            v52 = swift_slowAlloc();
            v57[0] = v52;
            *v51 = 136315138;
            v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v57);

            *(v51 + 4) = v53;
            _os_log_impl(&dword_254FFD000, v49, v50, "SQLConnection: entityIdentifier: Could not convert string value %s to uint64_t", v51, 0xCu);
            __swift_destroy_boxed_opaque_existential_0(v52);
            MEMORY[0x259C33C60](v52, -1, -1);
            MEMORY[0x259C33C60](v51, -1, -1);
          }

          else
          {
          }

          (*(v7 + 8))(v13, v6);
          goto LABEL_37;
        }

        if ((v24 & 0x1000000000000000) != 0)
        {
          v58 = 0;

          v33 = specialized _parseInteger<A, B>(ascii:radix:)(v22, v24, 10);
          v55 = v54;

          if (v55)
          {
            goto LABEL_85;
          }

          goto LABEL_90;
        }

        if ((v24 & 0x2000000000000000) != 0)
        {
          v57[0] = v22;
          v57[1] = v24 & 0xFFFFFFFFFFFFFFLL;
          if (v22 == 43)
          {
            if (v28)
            {
              if (--v28)
              {
                v33 = 0;
                v44 = v57 + 1;
                while (1)
                {
                  v45 = *v44 - 48;
                  if (v45 > 9)
                  {
                    break;
                  }

                  if (!is_mul_ok(v33, 0xAuLL))
                  {
                    break;
                  }

                  v36 = __CFADD__(10 * v33, v45);
                  v33 = 10 * v33 + v45;
                  if (v36)
                  {
                    break;
                  }

                  ++v44;
                  if (!--v28)
                  {
                    goto LABEL_84;
                  }
                }
              }

              goto LABEL_83;
            }

LABEL_95:
            __break(1u);
            return;
          }

          if (v22 != 45)
          {
            if (v28)
            {
              v33 = 0;
              v47 = v57;
              while (1)
              {
                v48 = *v47 - 48;
                if (v48 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v33, 0xAuLL))
                {
                  break;
                }

                v36 = __CFADD__(10 * v33, v48);
                v33 = 10 * v33 + v48;
                if (v36)
                {
                  break;
                }

                v47 = (v47 + 1);
                if (!--v28)
                {
                  goto LABEL_84;
                }
              }
            }

            goto LABEL_83;
          }

          if (v28)
          {
            if (--v28)
            {
              v33 = 0;
              v40 = v57 + 1;
              while (1)
              {
                v41 = *v40 - 48;
                if (v41 > 9)
                {
                  break;
                }

                if (!is_mul_ok(v33, 0xAuLL))
                {
                  break;
                }

                v36 = 10 * v33 >= v41;
                v33 = 10 * v33 - v41;
                if (!v36)
                {
                  break;
                }

                ++v40;
                if (!--v28)
                {
                  goto LABEL_84;
                }
              }
            }

            goto LABEL_83;
          }
        }

        else
        {
          if ((v22 & 0x1000000000000000) != 0)
          {
            v31 = ((v24 & 0xFFFFFFFFFFFFFFFLL) + 32);
          }

          else
          {
            v31 = _StringObject.sharedUTF8.getter();
          }

          v32 = *v31;
          if (v32 == 43)
          {
            if (v29 >= 1)
            {
              v28 = v29 - 1;
              if (v29 != 1)
              {
                v33 = 0;
                if (v31)
                {
                  v42 = v31 + 1;
                  while (1)
                  {
                    v43 = *v42 - 48;
                    if (v43 > 9)
                    {
                      goto LABEL_83;
                    }

                    if (!is_mul_ok(v33, 0xAuLL))
                    {
                      goto LABEL_83;
                    }

                    v36 = __CFADD__(10 * v33, v43);
                    v33 = 10 * v33 + v43;
                    if (v36)
                    {
                      goto LABEL_83;
                    }

                    ++v42;
                    if (!--v28)
                    {
                      goto LABEL_84;
                    }
                  }
                }

                goto LABEL_75;
              }

              goto LABEL_83;
            }

            goto LABEL_94;
          }

          if (v32 != 45)
          {
            if (v29)
            {
              v33 = 0;
              if (v31)
              {
                while (1)
                {
                  v46 = *v31 - 48;
                  if (v46 > 9)
                  {
                    goto LABEL_83;
                  }

                  if (!is_mul_ok(v33, 0xAuLL))
                  {
                    goto LABEL_83;
                  }

                  v36 = __CFADD__(10 * v33, v46);
                  v33 = 10 * v33 + v46;
                  if (v36)
                  {
                    goto LABEL_83;
                  }

                  ++v31;
                  if (!--v29)
                  {
                    goto LABEL_75;
                  }
                }
              }

              goto LABEL_75;
            }

LABEL_83:
            v33 = 0;
            LOBYTE(v28) = 1;
LABEL_84:
            v58 = v28;
            if (v28)
            {
              goto LABEL_85;
            }

LABEL_90:

            sqlite3_result_int64(a1, v33);
            return;
          }

          if (v29 >= 1)
          {
            v28 = v29 - 1;
            if (v29 != 1)
            {
              v33 = 0;
              if (v31)
              {
                v34 = v31 + 1;
                while (1)
                {
                  v35 = *v34 - 48;
                  if (v35 > 9)
                  {
                    goto LABEL_83;
                  }

                  if (!is_mul_ok(v33, 0xAuLL))
                  {
                    goto LABEL_83;
                  }

                  v36 = 10 * v33 >= v35;
                  v33 = 10 * v33 - v35;
                  if (!v36)
                  {
                    goto LABEL_83;
                  }

                  ++v34;
                  if (!--v28)
                  {
                    goto LABEL_84;
                  }
                }
              }

LABEL_75:
              LOBYTE(v28) = 0;
              goto LABEL_84;
            }

            goto LABEL_83;
          }

          __break(1u);
        }

        __break(1u);
LABEL_94:
        __break(1u);
        goto LABEL_95;
      }
    }
  }

  sqlite3_result_null(a1);
  static Logging.SQL.getter();
  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_254FFD000, v19, v20, "SQLConnection: entityIdentifier: Invalid arguments to function entityIdentifier", v21, 2u);
    MEMORY[0x259C33C60](v21, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
}

uint64_t specialized RangeReplaceableCollection.removeFirst(_:)(uint64_t result)
{
  if (!result)
  {
    return result;
  }

  if (result < 0)
  {
    __break(1u);
    goto LABEL_9;
  }

  result = String.index(_:offsetBy:limitedBy:)();
  if (v1)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  return String.removeSubrange(_:)();
}

Swift::Void __swiftcall SQLConnection.addUnicodeWrapperTokenizer()()
{
  v1 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_0_2();
  v3 = v2;
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3();
  v7 = v6 - v5;
  if (*(v0 + 104))
  {
    static Logging.SQL.getter();
    v8 = Logger.logObject.getter();
    v9 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_254FFD000, v8, v9, "Unicode61TokenizerWrapper already added to database connection.", v10, 2u);
      MEMORY[0x259C33C60](v10, -1, -1);
    }

    (*(v3 + 8))(v7, v1);
  }

  else
  {
    *(v0 + 104) = specialized SQLConnection.addTokenizer<A>(apiHandler:)();
  }
}

uint64_t specialized SQLConnection.addTokenizer<A>(apiHandler:)()
{
  v11[1] = *MEMORY[0x277D85DE8];
  v11[0] = 0;
  v0._countAndFlagsBits = 0x66205443454C4553;
  v0._object = 0xEE00293F28357374;
  v1._rawValue = SQLConnection.prepareStatement(query:)(v0)._rawValue;
  if (v2)
  {
    goto LABEL_8;
  }

  rawValue = v1._rawValue;
  v4 = sqlite3_bind_pointer(v1._rawValue, 1, v11, "fts5_api_ptr", 0);
  SQLConnection.isOk(_:context:)(v4, 0);
  if (v5)
  {
    goto LABEL_8;
  }

  v6 = sqlite3_step(rawValue);
  SQLConnection.isDone(_:context:)(v6, 0);
  if (v7)
  {
    sqlite3_finalize(rawValue);
LABEL_8:
    _StringGuts.grow(_:)(45);
    MEMORY[0x259C32B90](0xD00000000000002ALL, 0x80000002553A7F80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x259C32B90](46, 0xE100000000000000);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "IntelligencePlatformQuery/SQLConnection.swift", 45, 2, 706, 0);
    goto LABEL_9;
  }

  if (!v11[0])
  {
    while (1)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000015, 0x80000002553A7FC0, "IntelligencePlatformQuery/SQLConnection.swift", 45, 2, 702, 0);
LABEL_9:
      __break(1u);
    }
  }

  static Unicode61Tokenizer.createTokenizer(fts5API:)(v11[0]);
  v9 = v8;
  sqlite3_finalize(rawValue);
  return v9;
}

uint64_t SQLConnection.addTokenizer<A>(apiHandler:)(void (*a1)(void))
{
  v13[1] = *MEMORY[0x277D85DE8];
  v13[0] = 0;
  v2._countAndFlagsBits = 0x66205443454C4553;
  v2._object = 0xEE00293F28357374;
  v3._rawValue = SQLConnection.prepareStatement(query:)(v2)._rawValue;
  if (v4)
  {
    goto LABEL_7;
  }

  rawValue = v3._rawValue;
  sqlite3_bind_pointer(v3._rawValue, 1, v13, "fts5_api_ptr", 0);
  OUTLINED_FUNCTION_0_0();
  SQLConnection.isOk(_:context:)(v6, v7);
  if (v8)
  {
    goto LABEL_7;
  }

  sqlite3_step(rawValue);
  OUTLINED_FUNCTION_0_0();
  SQLConnection.isDone(_:context:)(v9, v10);
  if (v11)
  {
    sqlite3_finalize(rawValue);
LABEL_7:
    _StringGuts.grow(_:)(45);
    MEMORY[0x259C32B90](0xD00000000000002ALL, 0x80000002553A7F80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x259C32B90](46, 0xE100000000000000);
    _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0, 0xE000000000000000, "IntelligencePlatformQuery/SQLConnection.swift", 45, 2, 706, 0);
    goto LABEL_8;
  }

  if (!v13[0])
  {
    while (1)
    {
      _assertionFailure(_:_:file:line:flags:)("Fatal error", 11, 2, 0xD000000000000015, 0x80000002553A7FC0, "IntelligencePlatformQuery/SQLConnection.swift", 45, 2, 702, 0);
LABEL_8:
      __break(1u);
    }
  }

  a1();
  return sqlite3_finalize(rawValue);
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

{
  return a1();
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
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

void closure #1 in OSLogArguments.append(_:)(void **a1, void **a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(a1, a2, a3);
  v7 = *a1;
  *v7 = v6;
  *a1 = v7 + 1;
  v8 = *a2;
  if (*a2)
  {
    *v8 = v6;
    *a2 = v8 + 1;
  }

  else
  {
  }
}

uint64_t get_enum_tag_for_layout_string_25IntelligencePlatformQuery13SQLConnectionC5ErrorO(uint64_t a1)
{
  if ((*(a1 + 88) & 7u) <= 4)
  {
    return *(a1 + 88) & 7;
  }

  else
  {
    return (*a1 + 5);
  }
}

uint64_t getEnumTagSinglePayload for SQLConnection.Error(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFB && *(a1 + 89))
    {
      v2 = *a1 + 250;
    }

    else
    {
      v3 = *(a1 + 88);
      if (v3 <= 5)
      {
        v2 = -1;
      }

      else
      {
        v2 = v3 ^ 0xFF;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SQLConnection.Error(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFA)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 - 251;
    if (a3 >= 0xFB)
    {
      *(result + 89) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFB)
    {
      *(result + 89) = 0;
    }

    if (a2)
    {
      *(result + 88) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for SQLConnection.Error(uint64_t result, unsigned int a2)
{
  if (a2 >= 5)
  {
    *result = a2 - 5;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0u;
    *(result + 56) = 0u;
    *(result + 72) = 0u;
    LOBYTE(a2) = 5;
  }

  *(result + 88) = a2;
  return result;
}

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, int64_t a3)
{
  v69 = a1;
  v70 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = static String._copying(_:)(result, v5);
    v40 = v39;

    v7 = v40;
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
      result = ((v7 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      result = _StringObject.sharedUTF8.getter();
    }

    v9 = *result;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v22 = v8 - 1;
        if (v8 != 1)
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
            v14 = 0;
            v26 = result + 1;
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
                    goto LABEL_129;
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

              if (!is_mul_ok(v14, a3))
              {
                goto LABEL_128;
              }

              v29 = v14 * a3;
              v30 = v27 + v28;
              v21 = __CFADD__(v29, v30);
              v14 = v29 + v30;
              if (v21)
              {
                goto LABEL_128;
              }

              ++v26;
              --v22;
            }

            while (v22);
LABEL_47:
            v18 = v14;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v18 = 0;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v9 != 45)
    {
      if (v8)
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
                  goto LABEL_129;
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

            if (!is_mul_ok(v34, a3))
            {
              goto LABEL_128;
            }

            v37 = v34 * a3;
            v38 = v35 + v36;
            v21 = __CFADD__(v37, v38);
            v34 = v37 + v38;
            if (v21)
            {
              goto LABEL_128;
            }

            ++result;
            --v8;
          }

          while (v8);
          v18 = v34;
          goto LABEL_129;
        }

        goto LABEL_67;
      }

      goto LABEL_128;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v8 != 1)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (result)
        {
          v14 = 0;
          v15 = result + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                v18 = 0;
                if (v16 < 0x61 || v16 >= v13)
                {
                  goto LABEL_129;
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

            if (!is_mul_ok(v14, a3))
            {
              goto LABEL_128;
            }

            v19 = v14 * a3;
            v20 = v16 + v17;
            v21 = v19 >= v20;
            v14 = v19 - v20;
            if (!v21)
            {
              goto LABEL_128;
            }

            ++v15;
            if (!--v10)
            {
              goto LABEL_47;
            }
          }
        }

LABEL_67:
        v18 = 0;
LABEL_129:

        return v18;
      }

      goto LABEL_128;
    }

    __break(1u);
LABEL_132:
    __break(1u);
LABEL_133:
    __break(1u);
    goto LABEL_134;
  }

  v41 = HIBYTE(v7) & 0xF;
  v69 = v6;
  v70 = v7 & 0xFFFFFFFFFFFFFFLL;
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

        v64 = &v69;
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
                goto LABEL_129;
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

          if (!is_mul_ok(v43, a3))
          {
            goto LABEL_128;
          }

          v67 = v43 * a3;
          v68 = v65 + v66;
          v21 = __CFADD__(v67, v68);
          v43 = v67 + v68;
          if (v21)
          {
            goto LABEL_128;
          }

          v64 = (v64 + 1);
          if (!--v41)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
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

        v47 = &v69 + 1;
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
                goto LABEL_129;
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

          if (!is_mul_ok(v43, a3))
          {
            goto LABEL_128;
          }

          v50 = v43 * a3;
          v51 = v48 + v49;
          v21 = v50 >= v51;
          v43 = v50 - v51;
          if (!v21)
          {
            goto LABEL_128;
          }

          ++v47;
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
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

      v56 = &v69 + 1;
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
              goto LABEL_129;
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

        if (!is_mul_ok(v43, a3))
        {
          goto LABEL_128;
        }

        v59 = v43 * a3;
        v60 = v57 + v58;
        v21 = __CFADD__(v59, v60);
        v43 = v59 + v60;
        if (v21)
        {
          goto LABEL_128;
        }

        ++v56;
        --v52;
      }

      while (v52);
LABEL_127:
      v18 = v43;
      goto LABEL_129;
    }

    goto LABEL_128;
  }

LABEL_134:
  __break(1u);
  return result;
}

uint64_t static String._copying(_:)(uint64_t a1, unint64_t a2)
{
  v2 = specialized Collection.subscript.getter(implicit closure #1 in static String._copying(_:), 0, a1, a2);
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
    goto LABEL_36;
  }

  if (a3 < 0)
  {
    goto LABEL_40;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_36:
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
    result = v12;
    if ((v12 & 0xC) == v15)
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
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = _StringObject.sharedUTF8.getter();
        }

        v19 = *(result + v18);
      }
    }

    if ((v12 & 0xC) == v15)
    {
      result = _StringGuts._slowEnsureMatchingEncoding(_:)(v12, a6, a7);
      v12 = result;
      if ((a7 & 0x1000000000000000) == 0)
      {
LABEL_27:
        v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
        goto LABEL_31;
      }
    }

    else if ((a7 & 0x1000000000000000) == 0)
    {
      goto LABEL_27;
    }

    if (v23 <= v12 >> 16)
    {
      goto LABEL_39;
    }

    result = String.UTF8View._foreignIndex(after:)();
    v12 = result;
LABEL_31:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_36;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_38;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_36;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
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
    v5 = MEMORY[0x259C32BE0](15, a1 >> 16);
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

uint64_t outlined destroy of URL?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t specialized closure #1 in SQLConnection.register(module:)(uint64_t a1, uint64_t a2, sqlite3_module *a3)
{
  v4 = *(a1 + 16);
  v5 = String.utf8CString.getter();
  module_v2 = sqlite3_create_module_v2(v4, (v5 + 32), a3, a3, @objc closure #1 in closure #1 in SQLConnection.register(module:));

  return module_v2;
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *a1)
{
  v1 = a1;
  if ((*(*(a1[3] - 8) + 82) & 2) != 0)
  {
    *a1 = swift_allocBox();
    return v2;
  }

  return v1;
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

void OUTLINED_FUNCTION_7_2()
{

  JUMPOUT(0x259C32B90);
}

uint64_t OUTLINED_FUNCTION_9_1(uint64_t a1)
{

  return swift_allocObject();
}

uint64_t OUTLINED_FUNCTION_15_1()
{
}

void OUTLINED_FUNCTION_16_1()
{

  JUMPOUT(0x259C32B90);
}

uint64_t OUTLINED_FUNCTION_25_0()
{

  return Double.write<A>(to:)();
}

void OUTLINED_FUNCTION_26_0()
{

  JUMPOUT(0x259C32B90);
}

void OUTLINED_FUNCTION_29_0()
{

  JUMPOUT(0x259C32B90);
}

uint64_t VirtualTable.StreamTombstone.Module.vtabCreatingIfNeeded(for:)(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v5 = v2;
  if (*(*(v2 + 48) + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
    if (v8)
    {
    }
  }

  v10 = *(v2 + 40);
  swift_unownedRetainStrong();
  v11 = *(v5 + 16);
  v12 = *(v5 + 24);

  specialized SQLConnection.withoutAuthorizer(block:)(v13, a1, a2, v11, v12, v10);

  if (!v4)
  {
    result = specialized Dictionary.subscript.getter();
    if (!result)
    {
      _StringGuts.grow(_:)(36);

      strcpy(__src, "No view named ");
      HIBYTE(__src[1]) = -18;
      MEMORY[0x259C32B90](a1, a2);
      MEMORY[0x259C32B90](0xD000000000000014, 0x80000002553A85F0);
      v14 = __src[1];
      v15 = lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
      OUTLINED_FUNCTION_13(&type metadata for SQLConnection.Error, v15);
      OUTLINED_FUNCTION_17_1();
      *v16 = __src[0];
      v16[1] = v14;
      v17 = memcpy(v16 + 2, __src, 0x48uLL);
      return OUTLINED_FUNCTION_18(v17);
    }
  }

  return result;
}

void VirtualTable.StreamTombstone.Module.createTable(using:databaseName:tableName:args:)(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  if (*(*(v6 + 48) + 16) && (a1 = specialized __RawDictionaryStorage.find<A>(_:)(a5, a6), (a2 & 1) != 0))
  {
  }

  else
  {
    VirtualTable.StreamTombstone.Module.createTableInitial(using:databaseName:tableName:args:)(a1, a2, a3, a4, a5, a6);
  }
}

void VirtualTable.StreamTombstone.Module.createTableInitial(using:databaseName:tableName:args:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, void *a6)
{
  v10 = v6;
  __src[0] = 46;
  __src[1] = 0xE100000000000000;
  v28[2] = __src;

  v13 = specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(0x7FFFFFFFFFFFFFFFLL, 1, partial apply for specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:), v28, a5, a6);
  if (*(v13 + 16))
  {
    v9 = v13;
    v8 = v7;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  specialized _ArrayBuffer._consumeAndCreateNew()(v9);
  v9 = v27;
LABEL_3:
  v14 = *(v9 + 16);
  if (v14)
  {
    *(v9 + 16) = v14 - 1;

    __src[0] = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySsGMd, &_sSaySsGMR);
    lazy protocol witness table accessor for type [Substring] and conformance [A]();
    lazy protocol witness table accessor for type Substring and conformance Substring();
    Sequence<>.joined(separator:)();

    swift_unownedRetainStrong();

    OUTLINED_FUNCTION_11_2();
    v15 = dispatch thunk of static LibraryBase.streamBase(for:)();
    if (v15)
    {
      v16 = v15;

      type metadata accessor for VirtualTable.StreamTombstone.Table();
      v17 = swift_allocObject();

      v18 = v16;

      VirtualTable.StreamTombstone.Table.init(module:tableName:stream:)(v19, a5, a6, v18);
      if (!v8)
      {

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        __src[0] = *(v10 + 48);
        specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v17, a5, a6, isUniquelyReferenced_nonNull_native);
        *(v10 + 48) = __src[0];
      }
    }

    else
    {
      __src[0] = 0;
      __src[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(18);

      __src[0] = 0xD000000000000010;
      __src[1] = 0x80000002553A84E0;
      v20 = OUTLINED_FUNCTION_11_2();
      MEMORY[0x259C32B90](v20);

      v21 = __src[0];
      v22 = __src[1];
      v23 = lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
      OUTLINED_FUNCTION_13(&type metadata for SQLConnection.Error, v23);
      v25 = v24;
      *v24 = v21;
      v24[1] = v22;
      memcpy(v24 + 2, __src, 0x48uLL);
      *(v25 + 88) = 0;
      swift_willThrow();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t VirtualTable.StreamTombstone.Module.init(ipsqlDb:)(uint64_t a1)
{
  *(v1 + 16) = 0xD000000000000013;
  *(v1 + 24) = 0x80000002553A8610;
  *(v1 + 32) = 0;
  *(v1 + 40) = a1;
  swift_unownedRetain();
  type metadata accessor for VirtualTable.StreamTombstone.Table();
  *(v1 + 48) = Dictionary.init(dictionaryLiteral:)();

  return v1;
}

uint64_t VirtualTable.StreamTombstone.Module.deinit()
{

  swift_unownedRelease();

  return v0;
}

uint64_t VirtualTable.StreamTombstone.Module.__deallocating_deinit()
{
  VirtualTable.StreamTombstone.Module.deinit();

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

uint64_t protocol witness for VirtualTable.Module.moduleName.getter in conformance VirtualTable.StreamTombstone.Module()
{
  v1 = *(*v0 + 16);

  return v1;
}

void protocol witness for VirtualTable.Module.createTable(using:databaseName:tableName:args:) in conformance VirtualTable.StreamTombstone.Module(unint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t *a7@<X8>)
{
  VirtualTable.StreamTombstone.Module.createTable(using:databaseName:tableName:args:)(a1, a2, a3, a4, a5, a6);
  if (!v7)
  {
    *a7 = v9;
  }
}

void protocol witness for VirtualTable.Module.createTableInitial(using:databaseName:tableName:args:) in conformance VirtualTable.StreamTombstone.Module(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, void *a6@<X5>, uint64_t *a7@<X8>)
{
  VirtualTable.StreamTombstone.Module.createTableInitial(using:databaseName:tableName:args:)(a1, a2, a3, a4, a5, a6);
  if (!v7)
  {
    *a7 = v9;
  }
}

uint64_t VirtualTable.StreamTombstone.Table.schema.getter@<X0>(uint64_t a1@<X8>)
{
  v241 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams15LibraryArtifactO11EnumerationVSgMd, &_s12BiomeStreams15LibraryArtifactO11EnumerationVSgMR);
  OUTLINED_FUNCTION_21(v2);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v3);
  v254 = &v232 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams15LibraryArtifactO5TableVSgMd, &_s12BiomeStreams15LibraryArtifactO5TableVSgMR);
  OUTLINED_FUNCTION_21(v5);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v6);
  v8 = &v232 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams15LibraryArtifactO18RepresentationTypeOSgMd, &_s12BiomeStreams15LibraryArtifactO18RepresentationTypeOSgMR);
  OUTLINED_FUNCTION_21(v9);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12BiomeStreams15LibraryArtifactO9PredicateOSgMd, &_s12BiomeStreams15LibraryArtifactO9PredicateOSgMR);
  OUTLINED_FUNCTION_21(v11);
  OUTLINED_FUNCTION_8_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v232 - v13;
  v15 = type metadata accessor for LibraryArtifact.SQLDataType();
  OUTLINED_FUNCTION_0_2();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v232 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v251 = v20;
  v21 = *(v1 + 32);
  v240 = *(v1 + 24);
  v238 = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12BiomeStreams15LibraryArtifactO6ColumnVGMd, &_ss23_ContiguousArrayStorageCy12BiomeStreams15LibraryArtifactO6ColumnVGMR);
  v22 = *(type metadata accessor for LibraryArtifact.Column() - 8);
  v253 = *(v22 + 72);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  v24 = swift_allocObject();
  v239 = v24;
  *(v24 + 16) = xmmword_2552FD650;
  v247 = v24 + v23;
  v242 = *MEMORY[0x277CF1848];
  v252 = *(v17 + 104);
  v25 = v15;
  v244 = v15;
  v252(v20);
  v246 = type metadata accessor for LibraryArtifact.Predicate();
  v26 = v14;
  OUTLINED_FUNCTION_4_3();
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  v31 = type metadata accessor for LibraryArtifact.RepresentationType();
  v32 = OUTLINED_FUNCTION_0_3();
  v250 = v31;
  __swift_storeEnumTagSinglePayload(v32, v33, v34, v31);
  v35 = type metadata accessor for LibraryArtifact.Table();
  v36 = OUTLINED_FUNCTION_2_3();
  v249 = v35;
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v35);
  v248 = type metadata accessor for LibraryArtifact.Enumeration();
  v39 = v254;
  v40 = OUTLINED_FUNCTION_3_4();
  __swift_storeEnumTagSinglePayload(v40, v41, v42, v43);

  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_5_4();
  v44 = v251;
  v45 = v26;
  LibraryArtifact.Column.init(name:description:sqlType:predicate:representationType:searchable:repeated:nullable:objectType:enumerationType:)();
  v46 = *MEMORY[0x277CF1850];
  (v252)(v44, v46, v25);
  v47 = v45;
  OUTLINED_FUNCTION_4_3();
  v48 = v246;
  __swift_storeEnumTagSinglePayload(v49, v50, v51, v246);
  v52 = OUTLINED_FUNCTION_0_3();
  __swift_storeEnumTagSinglePayload(v52, v53, v54, v31);
  v243 = v8;
  v55 = OUTLINED_FUNCTION_2_3();
  __swift_storeEnumTagSinglePayload(v55, v56, v57, v35);
  v58 = v39;
  v59 = OUTLINED_FUNCTION_3_4();
  v60 = v248;
  __swift_storeEnumTagSinglePayload(v59, v61, v62, v248);
  v233 = v8;
  v234 = v58;
  OUTLINED_FUNCTION_8_1();
  v63 = v253;
  v64 = v247;
  OUTLINED_FUNCTION_5_4();
  v65 = v251;
  OUTLINED_FUNCTION_14_2(v66);
  v236 = v64 + 2 * v63;
  v67 = v65;
  v237 = v46;
  v68 = v244;
  (v252)(v67, v46, v244);
  v245 = v17 + 104;
  v69 = OUTLINED_FUNCTION_1_3();
  v70 = v48;
  __swift_storeEnumTagSinglePayload(v69, v71, v72, v48);
  v73 = OUTLINED_FUNCTION_0_3();
  v74 = v250;
  __swift_storeEnumTagSinglePayload(v73, v75, v76, v250);
  v77 = v243;
  OUTLINED_FUNCTION_4_3();
  __swift_storeEnumTagSinglePayload(v78, v79, v80, v249);
  v81 = v254;
  OUTLINED_FUNCTION_4_3();
  __swift_storeEnumTagSinglePayload(v82, v83, v84, v60);
  v233 = v77;
  v234 = v81;
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_5_4();
  v85 = v251;
  OUTLINED_FUNCTION_14_2(v86);
  v87 = v252;
  v236 = 3 * v253;
  v88 = v68;
  (v252)(v85, v46, v68);
  v89 = OUTLINED_FUNCTION_1_3();
  __swift_storeEnumTagSinglePayload(v89, v90, v91, v70);
  v92 = OUTLINED_FUNCTION_0_3();
  __swift_storeEnumTagSinglePayload(v92, v93, v94, v74);
  v95 = v243;
  v96 = OUTLINED_FUNCTION_2_3();
  v97 = v249;
  __swift_storeEnumTagSinglePayload(v96, v98, v99, v249);
  v100 = v254;
  OUTLINED_FUNCTION_4_3();
  v101 = v248;
  __swift_storeEnumTagSinglePayload(v102, v103, v104, v248);
  v233 = v95;
  v234 = v100;
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_14_2(v105);
  v106 = v253;
  v236 = &v100[4 * v253];
  v107 = v242;
  (v87)(v85, v242, v88);
  v108 = OUTLINED_FUNCTION_1_3();
  v109 = v246;
  __swift_storeEnumTagSinglePayload(v108, v110, v111, v246);
  v112 = OUTLINED_FUNCTION_0_3();
  __swift_storeEnumTagSinglePayload(v112, v113, v114, v74);
  v115 = v243;
  OUTLINED_FUNCTION_4_3();
  __swift_storeEnumTagSinglePayload(v116, v117, v118, v97);
  v119 = v254;
  v120 = OUTLINED_FUNCTION_3_4();
  __swift_storeEnumTagSinglePayload(v120, v121, v122, v101);
  v233 = v115;
  v234 = v119;
  v123 = v115;
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_5_4();
  v233 = v47;
  LibraryArtifact.Column.init(name:description:sqlType:predicate:representationType:searchable:repeated:nullable:objectType:enumerationType:)();
  v236 = 5 * v106;
  v124 = v252;
  (v252)(v85, v107, v244);
  OUTLINED_FUNCTION_4_3();
  __swift_storeEnumTagSinglePayload(v125, v126, v127, v109);
  OUTLINED_FUNCTION_4_3();
  v128 = v250;
  __swift_storeEnumTagSinglePayload(v129, v130, v131, v250);
  v132 = OUTLINED_FUNCTION_3_4();
  __swift_storeEnumTagSinglePayload(v132, v133, v134, v249);
  v135 = v254;
  OUTLINED_FUNCTION_4_3();
  __swift_storeEnumTagSinglePayload(v136, v137, v138, v248);
  v233 = v123;
  v234 = v135;
  v139 = v123;
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_5_4();
  LibraryArtifact.Column.init(name:description:sqlType:predicate:representationType:searchable:repeated:nullable:objectType:enumerationType:)();
  v140 = v253;
  v235 = &v135[6 * v253];
  LODWORD(v236) = *MEMORY[0x277CF1840];
  v124(v85);
  OUTLINED_FUNCTION_4_3();
  v141 = v246;
  __swift_storeEnumTagSinglePayload(v142, v143, v144, v246);
  OUTLINED_FUNCTION_4_3();
  __swift_storeEnumTagSinglePayload(v145, v146, v147, v128);
  v148 = OUTLINED_FUNCTION_2_3();
  v149 = v249;
  __swift_storeEnumTagSinglePayload(v148, v150, v151, v249);
  v152 = v254;
  v153 = OUTLINED_FUNCTION_1_3();
  v154 = v248;
  __swift_storeEnumTagSinglePayload(v153, v155, v156, v248);
  v233 = v139;
  v234 = v152;
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_5_4();
  LibraryArtifact.Column.init(name:description:sqlType:predicate:representationType:searchable:repeated:nullable:objectType:enumerationType:)();
  v235 = 7 * v140;
  v234 = "not match the stream name: ";
  v157 = v85;
  v158 = v244;
  (v124)(v157, *MEMORY[0x277CF1830], v244);
  v159 = OUTLINED_FUNCTION_0_3();
  __swift_storeEnumTagSinglePayload(v159, v160, v161, v141);
  v162 = OUTLINED_FUNCTION_1_3();
  __swift_storeEnumTagSinglePayload(v162, v163, v164, v250);
  v165 = OUTLINED_FUNCTION_2_3();
  __swift_storeEnumTagSinglePayload(v165, v166, v167, v149);
  v168 = OUTLINED_FUNCTION_3_4();
  __swift_storeEnumTagSinglePayload(v168, v169, v170, v154);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_5_4();
  v171 = v251;
  OUTLINED_FUNCTION_9_2(v172, v173, v174, v175, v251);
  (v124)(v171, v236, v158);
  v176 = OUTLINED_FUNCTION_0_3();
  v177 = v246;
  __swift_storeEnumTagSinglePayload(v176, v178, v179, v246);
  v180 = OUTLINED_FUNCTION_1_3();
  v181 = v250;
  __swift_storeEnumTagSinglePayload(v180, v182, v183, v250);
  v184 = OUTLINED_FUNCTION_2_3();
  v185 = v249;
  __swift_storeEnumTagSinglePayload(v184, v186, v187, v249);
  v188 = OUTLINED_FUNCTION_3_4();
  v189 = v248;
  __swift_storeEnumTagSinglePayload(v188, v190, v191, v248);
  OUTLINED_FUNCTION_13_2();
  BYTE2(v240) = 1;
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_5_4();
  v192 = v251;
  OUTLINED_FUNCTION_9_2(v193, v194, v195, v196, v251);
  v197 = v244;
  (v252)(v192, v242, v244);
  v198 = OUTLINED_FUNCTION_0_3();
  __swift_storeEnumTagSinglePayload(v198, v199, v200, v177);
  v201 = OUTLINED_FUNCTION_1_3();
  __swift_storeEnumTagSinglePayload(v201, v202, v203, v181);
  v204 = OUTLINED_FUNCTION_2_3();
  __swift_storeEnumTagSinglePayload(v204, v205, v206, v185);
  v207 = OUTLINED_FUNCTION_3_4();
  __swift_storeEnumTagSinglePayload(v207, v208, v209, v189);
  OUTLINED_FUNCTION_13_2();
  OUTLINED_FUNCTION_10_1();
  OUTLINED_FUNCTION_12_2();
  OUTLINED_FUNCTION_5_4();
  v210 = v251;
  OUTLINED_FUNCTION_9_2(v211, v212, v213, v214, v251);
  (v252)(v210, v237, v197);
  v215 = OUTLINED_FUNCTION_0_3();
  __swift_storeEnumTagSinglePayload(v215, v216, v217, v246);
  v218 = OUTLINED_FUNCTION_1_3();
  __swift_storeEnumTagSinglePayload(v218, v219, v220, v250);
  v221 = OUTLINED_FUNCTION_2_3();
  __swift_storeEnumTagSinglePayload(v221, v222, v223, v185);
  v224 = OUTLINED_FUNCTION_3_4();
  __swift_storeEnumTagSinglePayload(v224, v225, v226, v189);
  OUTLINED_FUNCTION_13_2();
  BYTE2(v248) = 1;
  OUTLINED_FUNCTION_8_1();
  OUTLINED_FUNCTION_5_4();
  OUTLINED_FUNCTION_9_2(v227, v228, v229, v230, v210);
  OUTLINED_FUNCTION_5_4();
  return MEMORY[0x259C32540]();
}

uint64_t VirtualTable.StreamTombstone.Table.createSQL.getter()
{
  v0 = type metadata accessor for LibraryArtifact.Table();
  OUTLINED_FUNCTION_0_2();
  v2 = v1;
  MEMORY[0x28223BE20](v3);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  VirtualTable.StreamTombstone.Table.schema.getter(v5);
  v6 = LibraryArtifact.Table.createTableSQL.getter();
  (*(v2 + 8))(v5, v0);
  return v6;
}

void *VirtualTable.StreamTombstone.Table.init(module:tableName:stream:)(uint64_t a1, void *a2, void *a3, id a4)
{
  v5 = v4;
  v36 = a1;
  v9 = [a4 identifier];
  v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v12 = v11;

  *(&__src[0] + 1) = v12;
  OUTLINED_FUNCTION_20_2();
  if (v10 == a2 && *(&__src[0] + 1) == a3)
  {
  }

  else
  {
    OUTLINED_FUNCTION_11_2();
    v14 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v14 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  v15 = [a4 schema];
  v16 = [v15 tableName];

  v17 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v18;

  *&__src[0] = v17;
  *(&__src[0] + 1) = v19;
  OUTLINED_FUNCTION_20_2();
  if (v17 == a2 && *(&__src[0] + 1) == a3)
  {

    goto LABEL_15;
  }

  OUTLINED_FUNCTION_11_2();
  v21 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v21)
  {
LABEL_15:
    v5[2] = v36;
    v5[3] = a2;
    v5[4] = a3;
    v5[5] = a4;
    v31 = *MEMORY[0x277CF0DF0];
    v5[6] = *MEMORY[0x277CF0DF0];
    v34[0] = a2;
    v34[1] = a3;
    v34[2] = 0;
    v34[3] = 0xE000000000000000;
    type metadata accessor for VirtualTable.Stream.QueryState();
    memset(__src, 0, 48);
    swift_allocObject();
    swift_unownedRetain();

    v32 = v31;
    v5[7] = VirtualTable.Stream.QueryState.init(storeIdentifier:startingBookmark:)(v34, __src);
    goto LABEL_16;
  }

LABEL_13:
  *&__src[0] = 0;
  *(&__src[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(51);
  MEMORY[0x259C32B90](0xD00000000000002BLL, 0x80000002553A8500);
  v22 = OUTLINED_FUNCTION_11_2();
  MEMORY[0x259C32B90](v22);

  MEMORY[0x259C32B90](32, 0xE100000000000000);
  v34[0] = [a4 identifier];
  type metadata accessor for BMStreamIdentifier(0);
  _print_unlocked<A, B>(_:_:)();

  MEMORY[0x259C32B90](32, 0xE100000000000000);
  v23 = [a4 schema];
  v24 = [v23 tableName];

  v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v27 = v26;

  MEMORY[0x259C32B90](v25, v27);

  v28 = lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
  OUTLINED_FUNCTION_13(&type metadata for SQLConnection.Error, v28);
  v30 = v29;
  *v29 = __src[0];
  memcpy(v29 + 1, __src, 0x48uLL);
  *(v30 + 88) = 0;
  swift_willThrow();

  swift_deallocPartialClassInstance();
LABEL_16:

  return v5;
}

void *VirtualTable.StreamTombstone.Table.createCursor()()
{
  v1 = *(v0 + 56);
  type metadata accessor for VirtualTable.StreamTombstone.Cursor();
  v2 = swift_allocObject();
  v2[3] = v1;
  v2[4] = 0;
  v2[2] = v0;

  return v2;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VirtualTable.StreamTombstone.Table.tearDown()()
{
  swift_unownedRetainStrong();
  specialized Dictionary._Variant.removeValue(forKey:)(*(v0 + 24), *(v0 + 32), &_ss17_NativeDictionaryVySS25IntelligencePlatformQuery12VirtualTableO15StreamTombstoneO0G0CGMd, &_ss17_NativeDictionaryVySS25IntelligencePlatformQuery12VirtualTableO15StreamTombstoneO0G0CGMR, v1, type metadata accessor for VirtualTable.StreamTombstone.Table);
}

uint64_t VirtualTable.StreamTombstone.Table.deinit()
{
  swift_unownedRelease();

  return v0;
}

uint64_t VirtualTable.StreamTombstone.Table.__deallocating_deinit()
{
  VirtualTable.StreamTombstone.Table.deinit();

  return MEMORY[0x2821FE8D8](v0, 64, 7);
}

void *protocol witness for VirtualTable.Table.createCursor() in conformance VirtualTable.StreamTombstone.Table@<X0>(void *a1@<X8>)
{
  result = VirtualTable.StreamTombstone.Table.createCursor()();
  if (!v1)
  {
    *a1 = result;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VirtualTable.StreamTombstone.Cursor.filter(idxNum:idxStr:args:)(Swift::Int32 idxNum, Swift::String_optional idxStr, Swift::OpaquePointer args)
{
  v5 = [objc_allocWithZone(MEMORY[0x277CF1A50]) init];
  v6 = VirtualTable.StreamTombstone.Table.iterator(options:queryObject:)(v5, *(v3 + 24));

  if (!v4)
  {
    v7 = *(v3 + 32);
    *(v3 + 32) = v6;
  }
}

char *VirtualTable.StreamTombstone.Table.iterator(options:queryObject:)(char *a1, uint64_t a2)
{
  v5 = *(v2 + 16);
  swift_unownedRetainStrong();
  v6 = *(v5 + 40);
  swift_unownedRetainStrong();

  v7 = *(v6 + 56);
  v8 = v7;

  if (v7)
  {
    v10 = *(v2 + 40);
    v9 = *(v2 + 48);
    v11 = *(a2 + 136);
    v12 = v9;
    v13 = [v10 tombstoneEventPublisherForAccount:v8 device:v11 useCase:v12 options:a1];

    if (v13)
    {
      goto LABEL_3;
    }

LABEL_16:
    v32 = lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
    OUTLINED_FUNCTION_13(&type metadata for SQLConnection.Error, v32);
    OUTLINED_FUNCTION_17_1();
    *v33 = 0xD000000000000017;
    v33[1] = 0x80000002553A85D0;
    v34 = memcpy(v33 + 2, __src, 0x48uLL);
    OUTLINED_FUNCTION_18(v34);
    return a1;
  }

  v30 = *(a2 + 136);
  if (v30)
  {
    v31 = [*(v2 + 40) tombstoneEventPublisherForDevice:v30 useCase:*(v2 + 48) options:a1];
  }

  else
  {
    v31 = [*(v2 + 40) tombstoneEventPublisherWithUseCase:*(v2 + 48) options:a1];
  }

  v13 = v31;
  if (!v13)
  {
    goto LABEL_16;
  }

LABEL_3:
  v14 = v13;
  v15 = VirtualTable.Stream.QueryState.startingTombstoneBMBookmark.getter();
  if (v15)
  {
    v16 = v15;
    v17 = swift_dynamicCastObjCProtocolConditional();
    if (v17)
    {
      [v14 applyBookmark_];
    }
  }

  a1 = [objc_allocWithZone(type metadata accessor for VirtualTable.Stream.TypeErasedStreamIterator()) init];
  [v14 subscribe_];
  v18 = OBJC_IVAR____TtCOO25IntelligencePlatformQuery12VirtualTable6Stream24TypeErasedStreamIterator_currentBookmark;
  v19 = *&a1[OBJC_IVAR____TtCOO25IntelligencePlatformQuery12VirtualTable6Stream24TypeErasedStreamIterator_currentBookmark];
  v20 = *(a2 + 152);
  *(a2 + 152) = v19;
  v21 = v19;

  v22 = VirtualTable.Stream.QueryState.startingTombstoneBMBookmark.getter();
  if (!v22)
  {
    goto LABEL_18;
  }

  v23 = v22;
  v24 = *(a2 + 152);
  if (!v24)
  {

    return a1;
  }

  type metadata accessor for BMStoreBookmark();
  v25 = v24;
  v26 = static NSObject.== infix(_:_:)();

  if ((v26 & 1) == 0)
  {

LABEL_18:
    return a1;
  }

  VirtualTable.Stream.TypeErasedStreamIterator.next()();

  v27 = *&a1[v18];
  v28 = *(a2 + 152);
  *(a2 + 152) = v27;
  v29 = v27;

  return a1;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VirtualTable.StreamTombstone.Cursor.next()()
{
  v1 = v0;
  v2 = *(v0 + 32);
  if (v2)
  {
    v3 = v2;
    VirtualTable.Stream.TypeErasedStreamIterator.next()();

    v5 = *(v1 + 24);
    v4 = *(v1 + 32);
    if (v4)
    {
      v6 = *(v4 + OBJC_IVAR____TtCOO25IntelligencePlatformQuery12VirtualTable6Stream24TypeErasedStreamIterator_currentBookmark);
      v7 = v6;
    }

    else
    {
      v6 = 0;
    }
  }

  else
  {
    v6 = 0;
    v5 = *(v0 + 24);
  }

  v8 = *(v5 + 152);
  *(v5 + 152) = v6;
}

Swift::Bool __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VirtualTable.StreamTombstone.Cursor.eof()()
{
  v1 = *(v0 + 32);
  if (!v1)
  {
    v4 = 0u;
    v5 = 0u;
    goto LABEL_5;
  }

  outlined init with copy of Any?(v1 + OBJC_IVAR____TtCOO25IntelligencePlatformQuery12VirtualTable6Stream24TypeErasedStreamIterator_currentEvent, &v4);
  if (!*(&v5 + 1))
  {
LABEL_5:
    v2 = 1;
    goto LABEL_6;
  }

  v2 = 0;
LABEL_6:
  outlined destroy of Any?(&v4);
  return v2;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VirtualTable.StreamTombstone.Cursor.column(context:index:)(Swift::OpaquePointer context, Swift::Int index)
{
  v54 = *MEMORY[0x277D85DE8];
  v4 = *(v2 + 32);
  if (!v4)
  {
    memset(__src, 0, 32);
    goto LABEL_9;
  }

  outlined init with copy of Any?(v4 + OBJC_IVAR____TtCOO25IntelligencePlatformQuery12VirtualTable6Stream24TypeErasedStreamIterator_currentEvent, __src);
  if (!*&__src[24])
  {
LABEL_9:
    outlined destroy of Any?(__src);
    goto LABEL_10;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo12BMStoreEvent_pMd, &_sSo12BMStoreEvent_pMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_10:
    v13 = lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
    OUTLINED_FUNCTION_13(&type metadata for SQLConnection.Error, v13);
    OUTLINED_FUNCTION_17_1();
    *v14 = 0xD000000000000017;
    v14[1] = 0x80000002553A8590;
    v15 = memcpy(v14 + 2, __src, 0x48uLL);
    OUTLINED_FUNCTION_18(v15);
    return;
  }

  if (![v52 eventBody])
  {
    goto LABEL_13;
  }

  v7 = swift_dynamicCastObjCProtocolConditional();
  if (!v7)
  {
    swift_unknownObjectRelease();
LABEL_13:
    swift_unknownObjectRelease();
    goto LABEL_10;
  }

  v8 = v7;
  switch(index)
  {
    case 0:
      type metadata accessor for SQLConnection();
      v9 = [v8 segmentName];
      v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v12 = v11;

      static SQLConnection.sqlite_result_string(context:string:)(context._rawValue, v10, v12);
      goto LABEL_35;
    case 1:
      v23 = [v7 offset];
      goto LABEL_23;
    case 2:
      v23 = [v7 length];
      goto LABEL_23;
    case 3:
      v23 = [v7 deletionReason];
      if ((v23 & 0x8000000000000000) == 0)
      {
LABEL_23:
        v30 = v23;
        rawValue = context._rawValue;
LABEL_42:
        sqlite3_result_int64(rawValue, v30);
        goto LABEL_43;
      }

      __break(1u);
LABEL_20:
      v24 = [v8 segmentName];
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      v28 = specialized IncrementalIdentifier.Identifier.asData.getter(v25, v27, [v8 offset]);
      if (!v3)
      {
        v45 = v28;
        v46 = v29;

        switch(v46 >> 62)
        {
          case 1uLL:
            v51 = v45 >> 32;
            if (v45 >> 32 >= v45)
            {
              v50 = v45;
              goto LABEL_52;
            }

            __break(1u);
            return;
          case 2uLL:
            v50 = *(v45 + 16);
            v51 = *(v45 + 24);
LABEL_52:
            specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(v50, v51, v46 & 0x3FFFFFFFFFFFFFFFLL, context._rawValue);
            goto LABEL_53;
          case 3uLL:
            *&__src[6] = 0;
            *__src = 0;
            if (one-time initialization token for SQLITE_TRANSIENT != -1)
            {
              OUTLINED_FUNCTION_29(&one-time initialization token for SQLITE_TRANSIENT);
            }

            v47 = static SQLConnection.SQLITE_TRANSIENT;
            v48 = context._rawValue;
            v49 = 0;
            goto LABEL_49;
          default:
            *__src = v45;
            *&__src[8] = v46;
            __src[10] = BYTE2(v46);
            __src[11] = BYTE3(v46);
            __src[12] = BYTE4(v46);
            __src[13] = BYTE5(v46);
            if (one-time initialization token for SQLITE_TRANSIENT != -1)
            {
              OUTLINED_FUNCTION_29(&one-time initialization token for SQLITE_TRANSIENT);
            }

            v47 = static SQLConnection.SQLITE_TRANSIENT;
            v48 = context._rawValue;
            v49 = BYTE6(v46);
LABEL_49:
            sqlite3_result_blob(v48, __src, v49, v47);
LABEL_53:
            swift_unknownObjectRelease();
            swift_unknownObjectRelease();
            outlined consume of Data._Representation(v45, v46);
            break;
        }

        return;
      }

      goto LABEL_35;
    case 4:
      v16 = [v7 policyID];
      goto LABEL_25;
    case 5:
      v16 = [v7 processName];
LABEL_25:
      v32 = v16;
      if (v32)
      {
        v33 = v32;
        v34 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v36 = v35;

        type metadata accessor for SQLConnection();
        static SQLConnection.sqlite_result_string(context:string:)(context._rawValue, v34, v36);
LABEL_35:
      }

      else
      {
        sqlite3_result_null(context._rawValue);
      }

LABEL_43:
      swift_unknownObjectRelease();
LABEL_44:
      swift_unknownObjectRelease();
      break;
    case 6:
      [v7 eventTimestamp];
      sqlite3_result_double(context._rawValue, v37);
      swift_unknownObjectRelease();
      goto LABEL_44;
    case 7:
      goto LABEL_20;
    case 8:
      [v52 timestamp];
      sqlite3_result_double(context._rawValue, v41);
      goto LABEL_43;
    case 9:
      v17 = [v52 bookmark];
      if (v17)
      {
        v18 = v17;
        v19 = [v17 segmentName];

        v20 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v22 = v21;
      }

      else
      {
        v20 = 0;
        v22 = 0xE000000000000000;
      }

      type metadata accessor for SQLConnection();
      static SQLConnection.sqlite_result_string(context:string:)(context._rawValue, v20, v22);
      goto LABEL_35;
    case 10:
      v38 = [v52 bookmark];
      if (v38)
      {
        v39 = v38;
        v40 = [v38 offset];
      }

      else
      {
        v40 = 0;
      }

      rawValue = context._rawValue;
      v30 = v40;
      goto LABEL_42;
    default:
      v42 = lazy protocol witness table accessor for type SQLConnection.Error and conformance SQLConnection.Error();
      OUTLINED_FUNCTION_13(&type metadata for SQLConnection.Error, v42);
      OUTLINED_FUNCTION_17_1();
      *v43 = 0xD000000000000016;
      v43[1] = 0x80000002553A85B0;
      v44 = memcpy(v43 + 2, __src, 0x48uLL);
      OUTLINED_FUNCTION_18(v44);
      goto LABEL_43;
  }
}

void closure #1 in VirtualTable.StreamTombstone.Cursor.column(context:index:)(void *a1, uint64_t a2, sqlite3_context *a3)
{
  if (a1)
  {
    v5 = a2 - a1;
  }

  else
  {
    v5 = 0;
  }

  if (v5 < 0xFFFFFFFF80000000)
  {
    __break(1u);
    goto LABEL_9;
  }

  if (v5 > 0x7FFFFFFF)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  v3 = a3;
  v4 = a1;
  if (one-time initialization token for SQLITE_TRANSIENT != -1)
  {
LABEL_10:
    swift_once();
  }

  sqlite3_result_blob(v3, v4, v5, static SQLConnection.SQLITE_TRANSIENT);
}

void *VirtualTable.StreamTombstone.Cursor.init(table:queryState:)(uint64_t a1, uint64_t a2)
{
  v2[3] = a2;
  v2[4] = 0;
  v2[2] = a1;
  return v2;
}

uint64_t VirtualTable.StreamTombstone.Cursor.deinit()
{

  return v0;
}

uint64_t VirtualTable.StreamTombstone.Cursor.__deallocating_deinit()
{
  VirtualTable.StreamTombstone.Cursor.deinit();

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> VirtualTable.StreamTombstone.Table.resetIncrementalState()()
{
  v1 = v0;
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v5[0] = v2;
  v5[1] = v3;
  v5[2] = 0;
  v5[3] = 0xE000000000000000;
  type metadata accessor for VirtualTable.Stream.QueryState();
  memset(v4, 0, sizeof(v4));
  swift_allocObject();

  *(v1 + 56) = VirtualTable.Stream.QueryState.init(storeIdentifier:startingBookmark:)(v5, v4);
}

uint64_t specialized closure #1 in Collection<>.split(separator:maxSplits:omittingEmptySubsequences:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return _stringCompareWithSmolCheck(_:_:expecting:)() & 1;
  }
}

uint64_t specialized Collection.split(maxSplits:omittingEmptySubsequences:whereSeparator:)(uint64_t a1, char a2, uint64_t (*a3)(void *), uint64_t a4, uint64_t a5, unint64_t a6)
{
  v50 = a3;
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_41;
  }

  v11 = a5;
  v14 = HIBYTE(a6) & 0xF;
  if (!a1 || ((a6 & 0x2000000000000000) != 0 ? (v15 = HIBYTE(a6) & 0xF) : (v15 = a5 & 0xFFFFFFFFFFFFLL), !v15))
  {
    if ((a6 & 0x2000000000000000) == 0)
    {
      v14 = a5 & 0xFFFFFFFFFFFFLL;
    }

    if (!v14 && (a2 & 1) != 0)
    {

      return MEMORY[0x277D84F90];
    }

    v7 = String.subscript.getter();
    v11 = v30;
    v12 = v31;
    v13 = v32;

    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v16 = v33;
    v9 = *(v33 + 16);
    v34 = *(v33 + 24);
LABEL_37:
    v10 = v9 + 1;
    if (v9 < v34 >> 1)
    {
LABEL_38:
      *(v16 + 16) = v10;
      v38 = (v16 + 32 * v9);
      v38[4] = v7;
      v38[5] = v11;
      v38[6] = v12;
      v38[7] = v13;
      return v16;
    }

LABEL_41:
    specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
    v16 = v39;
    goto LABEL_38;
  }

  v7 = a4;
  v16 = 4 * v15;
  v48 = MEMORY[0x277D84F90];
  v17 = 15;
  while (1)
  {
    v46 = v17;
    while (1)
    {
      v13 = v17 >> 14;
      if (v17 >> 14 == v16)
      {
        v17 = v46;
        goto LABEL_30;
      }

      v18 = String.subscript.getter();
      v12 = v19;
      v49[0] = v18;
      v49[1] = v19;
      v20 = v50(v49);
      if (v8)
      {

        return v16;
      }

      v21 = v20;

      if (v21)
      {
        break;
      }

      v17 = String.index(after:)();
    }

    v23 = (v46 >> 14 == v13) & a2;
    if (v23)
    {
      goto LABEL_20;
    }

    if (v13 < v46 >> 14)
    {
      break;
    }

    v47 = String.subscript.getter();
    v42 = v25;
    v43 = v24;
    v41 = v26;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v48 = v28;
    }

    v13 = *(v48 + 16);
    v12 = v13 + 1;
    if (v13 >= *(v48 + 24) >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v48 = v29;
    }

    *(v48 + 16) = v12;
    v27 = (v48 + 32 * v13);
    v27[4] = v47;
    v27[5] = v43;
    v27[6] = v42;
    v27[7] = v41;
LABEL_20:
    v17 = String.index(after:)();
    if ((v23 & 1) == 0 && *(v48 + 16) == a1)
    {
LABEL_30:
      if (v17 >> 14 == v16 && (a2 & 1) != 0)
      {

        return v48;
      }

      if (v16 < v17 >> 14)
      {
        __break(1u);
      }

      else
      {
        v7 = String.subscript.getter();
        v11 = v35;
        v12 = v36;
        v13 = v37;

        v16 = v48;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_36:
          v9 = *(v16 + 16);
          v34 = *(v16 + 24);
          goto LABEL_37;
        }
      }

      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      v16 = v40;
      goto LABEL_36;
    }
  }

  __break(1u);
  return result;
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if (v6)
  {
    v7 = v5;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v3;
    v9 = *(*v3 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS10Foundation3URLVGMd, &_ss17_NativeDictionaryVySS10Foundation3URLVGMR);
    _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v9);

    v10 = *(v17 + 56);
    v11 = type metadata accessor for URL();
    (*(*(v11 - 8) + 32))(a3, v10 + *(*(v11 - 8) + 72) * v7, v11);
    _NativeDictionary._delete(at:)();
    *v3 = v17;
    v12 = a3;
    v13 = 0;
    v14 = 1;
    v15 = v11;
  }

  else
  {
    type metadata accessor for URL();
    OUTLINED_FUNCTION_4_3();
  }

  return __swift_storeEnumTagSinglePayload(v12, v13, v14, v15);
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1, uint64_t a2)
{
  return OUTLINED_FUNCTION_6_3(a1, a2, &_ss17_NativeDictionaryVySS25IntelligencePlatformQuery12VirtualTableO6StreamO0G0CGMd, &_ss17_NativeDictionaryVySS25IntelligencePlatformQuery12VirtualTableO6StreamO0G0CGMR);
}

{
  return OUTLINED_FUNCTION_6_3(a1, a2, &_ss17_NativeDictionaryVySS25IntelligencePlatformQuery12VirtualTableO4ViewO0G0CGMd, &_ss17_NativeDictionaryVySS25IntelligencePlatformQuery12VirtualTableO4ViewO0G0CGMR);
}

uint64_t specialized Dictionary._Variant.removeValue(forKey:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t (*a6)(uint64_t))
{
  v11 = v6;
  v12 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2);
  if ((v13 & 1) == 0)
  {
    return 0;
  }

  v14 = v12;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v19 = *v6;
  v16 = *(*v6 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  _NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v16);

  v17 = *(*(v19 + 56) + 8 * v14);
  a6(a5);
  _NativeDictionary._delete(at:)();
  *v11 = v19;
  return v17;
}

void specialized __DataStorage.withUnsafeBytes<A>(in:apply:)(uint64_t a1, uint64_t a2, uint64_t a3, sqlite3_context *a4)
{
  v7 = __DataStorage._bytes.getter();
  if (v7)
  {
    v8 = __DataStorage._offset.getter();
    if (__OFSUB__(a1, v8))
    {
LABEL_13:
      __break(1u);
      return;
    }

    v7 += a1 - v8;
  }

  v9 = __OFSUB__(a2, a1);
  v10 = a2 - a1;
  if (v9)
  {
    __break(1u);
    goto LABEL_13;
  }

  v11 = MEMORY[0x259C322F0]();
  if (v11 >= v10)
  {
    v12 = v10;
  }

  else
  {
    v12 = v11;
  }

  v13 = &v7[v12];
  if (v7)
  {
    v14 = v13;
  }

  else
  {
    v14 = 0;
  }

  closure #1 in VirtualTable.StreamTombstone.Cursor.column(context:index:)(v7, v14, a4);
}