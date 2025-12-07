__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for AppDialogParams(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 16))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for AppDialogParams(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

void type metadata accessor for TUCallStatus()
{
  if (!lazy cache variable for type metadata for TUCallStatus)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &lazy cache variable for type metadata for TUCallStatus);
    }
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SharingDialogParams.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x26D5ECD20](v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SharingDialogParams.CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x26D5ECD20](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance SharingDialogParams.CodingKeys()
{
  v1 = 0x656D614E707061;
  if (*v0 != 1)
  {
    v1 = 0x6E65697069636572;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E65657263537369;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SharingDialogParams.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized SharingDialogParams.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SharingDialogParams.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SharingDialogParams.CodingKeys and conformance SharingDialogParams.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SharingDialogParams.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SharingDialogParams.CodingKeys and conformance SharingDialogParams.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SharingDialogParams.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[1] = a3;
  v14[2] = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriExpanseInternal19SharingDialogParamsV10CodingKeys33_8D4ACCBC64109F867D67AA184DE30D39LLOGMd, &_ss22KeyedEncodingContainerVy19SiriExpanseInternal19SharingDialogParamsV10CodingKeys33_8D4ACCBC64109F867D67AA184DE30D39LLOGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SharingDialogParams.CodingKeys and conformance SharingDialogParams.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v16 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v14[3] = a5;
    v15 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16SiriDialogEngine0B6PersonCGMd, &_sSay16SiriDialogEngine0B6PersonCGMR);
    lazy protocol witness table accessor for type [DialogPerson] and conformance <A> [A]();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v12, v8);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance GenericErrorParams.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x5265726168537369 && a2 == 0xEE00747365757165)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance GenericErrorParams.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GenericErrorParams.CodingKeys and conformance GenericErrorParams.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance GenericErrorParams.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type GenericErrorParams.CodingKeys and conformance GenericErrorParams.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AppDialogParams.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656D614E707061 && a2 == 0xE700000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AppDialogParams.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppDialogParams.CodingKeys and conformance AppDialogParams.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AppDialogParams.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AppDialogParams.CodingKeys and conformance AppDialogParams.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance AppDialogParams(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriExpanseInternal15AppDialogParamsV10CodingKeys33_8D4ACCBC64109F867D67AA184DE30D39LLOGMd, &_ss22KeyedEncodingContainerVy19SiriExpanseInternal15AppDialogParamsV10CodingKeys33_8D4ACCBC64109F867D67AA184DE30D39LLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AppDialogParams.CodingKeys and conformance AppDialogParams.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  return (*(v3 + 8))(v6, v2);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AppDialogParams(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a2[1];
  if (v3)
  {
    if (v4)
    {
      v5 = *a1 == *a2 && v3 == v4;
      if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        return 1;
      }
    }
  }

  else if (!v4)
  {
    return 1;
  }

  return 0;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance GenericErrorParams.CodingKeys()
{
  Hasher.init(_seed:)();
  MEMORY[0x26D5ECD20](0);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance GenericErrorParams.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x26D5ECD20](0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ConfirmationDialogParams.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000013 && 0x8000000266BEE3C0 == a2)
  {

    v5 = 0;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    v5 = v6 ^ 1;
  }

  *a3 = v5 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ConfirmationDialogParams.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ConfirmationDialogParams.CodingKeys and conformance ConfirmationDialogParams.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ConfirmationDialogParams.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ConfirmationDialogParams.CodingKeys and conformance ConfirmationDialogParams.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance GenericErrorParams(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void), uint64_t a7)
{
  v15 = a6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v9 + 8))(v12, v8);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance EmptyDialogParams.CodingKeys@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance EmptyDialogParams.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type EmptyDialogParams.CodingKeys and conformance EmptyDialogParams.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance EmptyDialogParams.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type EmptyDialogParams.CodingKeys and conformance EmptyDialogParams.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance EmptyDialogParams(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy19SiriExpanseInternal17EmptyDialogParamsV10CodingKeys33_8D4ACCBC64109F867D67AA184DE30D39LLOGMd, &_ss22KeyedEncodingContainerVy19SiriExpanseInternal17EmptyDialogParamsV10CodingKeys33_8D4ACCBC64109F867D67AA184DE30D39LLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v8 - v5;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type EmptyDialogParams.CodingKeys and conformance EmptyDialogParams.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v3 + 8))(v6, v2);
}

_DWORD *protocol witness for RawRepresentable.init(rawValue:) in conformance TUCallStatus@<X0>(_DWORD *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 4) = 0;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
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

unint64_t lazy protocol witness table accessor for type AppDialogParams.CodingKeys and conformance AppDialogParams.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AppDialogParams.CodingKeys and conformance AppDialogParams.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppDialogParams.CodingKeys and conformance AppDialogParams.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppDialogParams.CodingKeys and conformance AppDialogParams.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppDialogParams.CodingKeys and conformance AppDialogParams.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppDialogParams.CodingKeys and conformance AppDialogParams.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppDialogParams.CodingKeys and conformance AppDialogParams.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppDialogParams.CodingKeys and conformance AppDialogParams.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppDialogParams.CodingKeys and conformance AppDialogParams.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppDialogParams.CodingKeys and conformance AppDialogParams.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AppDialogParams.CodingKeys and conformance AppDialogParams.CodingKeys;
  if (!lazy protocol witness table cache variable for type AppDialogParams.CodingKeys and conformance AppDialogParams.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AppDialogParams.CodingKeys and conformance AppDialogParams.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EmptyDialogParams.CodingKeys and conformance EmptyDialogParams.CodingKeys()
{
  result = lazy protocol witness table cache variable for type EmptyDialogParams.CodingKeys and conformance EmptyDialogParams.CodingKeys;
  if (!lazy protocol witness table cache variable for type EmptyDialogParams.CodingKeys and conformance EmptyDialogParams.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyDialogParams.CodingKeys and conformance EmptyDialogParams.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmptyDialogParams.CodingKeys and conformance EmptyDialogParams.CodingKeys;
  if (!lazy protocol witness table cache variable for type EmptyDialogParams.CodingKeys and conformance EmptyDialogParams.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyDialogParams.CodingKeys and conformance EmptyDialogParams.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type EmptyDialogParams.CodingKeys and conformance EmptyDialogParams.CodingKeys;
  if (!lazy protocol witness table cache variable for type EmptyDialogParams.CodingKeys and conformance EmptyDialogParams.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyDialogParams.CodingKeys and conformance EmptyDialogParams.CodingKeys);
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

uint64_t getEnumTagSinglePayload for SharingDialogParams(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SharingDialogParams(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ConfirmationDialogParams(unsigned __int8 *a1, unsigned int a2)
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
  v8 = (v6 + 2147483646) & 0x7FFFFFFF;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ConfirmationDialogParams(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t lazy protocol witness table accessor for type SharingDialogParams.CodingKeys and conformance SharingDialogParams.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SharingDialogParams.CodingKeys and conformance SharingDialogParams.CodingKeys;
  if (!lazy protocol witness table cache variable for type SharingDialogParams.CodingKeys and conformance SharingDialogParams.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharingDialogParams.CodingKeys and conformance SharingDialogParams.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharingDialogParams.CodingKeys and conformance SharingDialogParams.CodingKeys;
  if (!lazy protocol witness table cache variable for type SharingDialogParams.CodingKeys and conformance SharingDialogParams.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharingDialogParams.CodingKeys and conformance SharingDialogParams.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharingDialogParams.CodingKeys and conformance SharingDialogParams.CodingKeys;
  if (!lazy protocol witness table cache variable for type SharingDialogParams.CodingKeys and conformance SharingDialogParams.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharingDialogParams.CodingKeys and conformance SharingDialogParams.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SharingDialogParams.CodingKeys and conformance SharingDialogParams.CodingKeys;
  if (!lazy protocol witness table cache variable for type SharingDialogParams.CodingKeys and conformance SharingDialogParams.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharingDialogParams.CodingKeys and conformance SharingDialogParams.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [DialogPerson] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [DialogPerson] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [DialogPerson] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay16SiriDialogEngine0B6PersonCGMd, &_sSay16SiriDialogEngine0B6PersonCGMR);
    lazy protocol witness table accessor for type DialogPerson and conformance DialogPerson();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DialogPerson] and conformance <A> [A]);
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

unint64_t lazy protocol witness table accessor for type DialogPerson and conformance DialogPerson()
{
  result = lazy protocol witness table cache variable for type DialogPerson and conformance DialogPerson;
  if (!lazy protocol witness table cache variable for type DialogPerson and conformance DialogPerson)
  {
    type metadata accessor for DialogPerson();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DialogPerson and conformance DialogPerson);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ConfirmationDialogParams.CodingKeys and conformance ConfirmationDialogParams.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ConfirmationDialogParams.CodingKeys and conformance ConfirmationDialogParams.CodingKeys;
  if (!lazy protocol witness table cache variable for type ConfirmationDialogParams.CodingKeys and conformance ConfirmationDialogParams.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConfirmationDialogParams.CodingKeys and conformance ConfirmationDialogParams.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConfirmationDialogParams.CodingKeys and conformance ConfirmationDialogParams.CodingKeys;
  if (!lazy protocol witness table cache variable for type ConfirmationDialogParams.CodingKeys and conformance ConfirmationDialogParams.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConfirmationDialogParams.CodingKeys and conformance ConfirmationDialogParams.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConfirmationDialogParams.CodingKeys and conformance ConfirmationDialogParams.CodingKeys;
  if (!lazy protocol witness table cache variable for type ConfirmationDialogParams.CodingKeys and conformance ConfirmationDialogParams.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConfirmationDialogParams.CodingKeys and conformance ConfirmationDialogParams.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ConfirmationDialogParams.CodingKeys and conformance ConfirmationDialogParams.CodingKeys;
  if (!lazy protocol witness table cache variable for type ConfirmationDialogParams.CodingKeys and conformance ConfirmationDialogParams.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ConfirmationDialogParams.CodingKeys and conformance ConfirmationDialogParams.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type GenericErrorParams.CodingKeys and conformance GenericErrorParams.CodingKeys()
{
  result = lazy protocol witness table cache variable for type GenericErrorParams.CodingKeys and conformance GenericErrorParams.CodingKeys;
  if (!lazy protocol witness table cache variable for type GenericErrorParams.CodingKeys and conformance GenericErrorParams.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericErrorParams.CodingKeys and conformance GenericErrorParams.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GenericErrorParams.CodingKeys and conformance GenericErrorParams.CodingKeys;
  if (!lazy protocol witness table cache variable for type GenericErrorParams.CodingKeys and conformance GenericErrorParams.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericErrorParams.CodingKeys and conformance GenericErrorParams.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GenericErrorParams.CodingKeys and conformance GenericErrorParams.CodingKeys;
  if (!lazy protocol witness table cache variable for type GenericErrorParams.CodingKeys and conformance GenericErrorParams.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericErrorParams.CodingKeys and conformance GenericErrorParams.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type GenericErrorParams.CodingKeys and conformance GenericErrorParams.CodingKeys;
  if (!lazy protocol witness table cache variable for type GenericErrorParams.CodingKeys and conformance GenericErrorParams.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type GenericErrorParams.CodingKeys and conformance GenericErrorParams.CodingKeys);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AppDialogParams.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for AppDialogParams.CodingKeys(_WORD *result, int a2, int a3)
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

uint64_t getEnumTagSinglePayload for SharingDialogParams.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SharingDialogParams.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t specialized SharingDialogParams.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E65657263537369 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656D614E707061 && a2 == 0xE700000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E65697069636572 && a2 == 0xEA00000000007374)
  {

    return 2;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t one-time initialization function for typeName()
{
  type metadata accessor for SharingDirectInvocationIntent(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal29SharingDirectInvocationIntentVmMd, _s19SiriExpanseInternal29SharingDirectInvocationIntentVmMR);
  result = String.init<A>(describing:)();
  static SharingDirectInvocationIntent.typeName = result;
  *algn_2800C0158 = v1;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal0B12FlowProviderVmMd, &_s19SiriExpanseInternal0B12FlowProviderVmMR);
  result = String.init<A>(describing:)();
  static ExpanseFlowProvider.typeName = result;
  *algn_2800C0278 = v1;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal23SharingDirectInvocationOmMd, &_s19SiriExpanseInternal23SharingDirectInvocationOmMR);
  result = String.init<A>(describing:)();
  static SharingDirectInvocation.typeName = result;
  unk_2800C02C0 = v1;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal19SharingIntentHelperOmMd, &_s19SiriExpanseInternal19SharingIntentHelperOmMR);
  result = String.init<A>(describing:)();
  static SharingIntentHelper.typeName = result;
  *algn_2800C02F8 = v1;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal15ScreenShareTypeOmMd, &_s19SiriExpanseInternal15ScreenShareTypeOmMR);
  result = String.init<A>(describing:)();
  static ScreenShareType.typeName = result;
  *algn_2800C0348 = v1;
  return result;
}

{
  type metadata accessor for SimpleSharingYesNoPromptFlowStrategy(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal36SimpleSharingYesNoPromptFlowStrategyCmMd, &_s19SiriExpanseInternal36SimpleSharingYesNoPromptFlowStrategyCmMR);
  result = String.init<A>(describing:)();
  static SimpleSharingYesNoPromptFlowStrategy.typeName = result;
  *algn_2800C03F8 = v1;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal24SharingNLContextProviderOmMd, &_s19SiriExpanseInternal24SharingNLContextProviderOmMR);
  result = String.init<A>(describing:)();
  static SharingNLContextProvider.typeName = result;
  unk_2800C0440 = v1;
  return result;
}

{
  type metadata accessor for StartSharingConfirmationFlow(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal28StartSharingConfirmationFlowCmMd, &_s19SiriExpanseInternal28StartSharingConfirmationFlowCmMR);
  result = String.init<A>(describing:)();
  static StartSharingConfirmationFlow.typeName = result;
  unk_2800C0490 = v1;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal24ScreenSharingCallManagerVmMd, &_s19SiriExpanseInternal24ScreenSharingCallManagerVmMR);
  result = String.init<A>(describing:)();
  static ScreenSharingCallManager.typeName = result;
  *algn_2800C0578 = v1;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal19ConfirmationContextOmMd, ":s");
  result = String.init<A>(describing:)();
  static ConfirmationContext.typeName = result;
  unk_2800C0710 = v1;
  return result;
}

{
  type metadata accessor for ValidateCallStatusFlow();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal22ValidateCallStatusFlowCmMd, &_s19SiriExpanseInternal22ValidateCallStatusFlowCmMR);
  result = String.init<A>(describing:)();
  static ValidateCallStatusFlow.typeName = result;
  *algn_2800C0728 = v1;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal11ShareStatusOmMd, _s19SiriExpanseInternal11ShareStatusOmMR);
  result = String.init<A>(describing:)();
  static ShareStatus.typeName = result;
  unk_2800C07E0 = v1;
  return result;
}

{
  type metadata accessor for DismissSiriFlow();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal07DismissA4FlowCmMd, &_s19SiriExpanseInternal07DismissA4FlowCmMR);
  result = String.init<A>(describing:)();
  static DismissSiriFlow.typeName = result;
  unk_2800C0A80 = v1;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal6SharerVmMd, &_s19SiriExpanseInternal6SharerVmMR);
  result = String.init<A>(describing:)();
  static Sharer.typeName = result;
  *algn_2800C0A98 = v1;
  return result;
}

{
  type metadata accessor for ValidateRecipientsFlow();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal22ValidateRecipientsFlowCmMd, &_s19SiriExpanseInternal22ValidateRecipientsFlowCmMR);
  result = String.init<A>(describing:)();
  static ValidateRecipientsFlow.typeName = result;
  unk_2800C0B30 = v1;
  return result;
}

{
  type metadata accessor for SharingNLv4Intent(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal17SharingNLv4IntentCmMd, &_s19SiriExpanseInternal17SharingNLv4IntentCmMR);
  result = String.init<A>(describing:)();
  static SharingNLv4Intent.typeName = result;
  *algn_2800C0B68 = v1;
  return result;
}

{
  type metadata accessor for ConfirmScreenShareOrMessageSendFlowStrategy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal43ConfirmScreenShareOrMessageSendFlowStrategyCmMd, _s19SiriExpanseInternal43ConfirmScreenShareOrMessageSendFlowStrategyCmMR);
  result = String.init<A>(describing:)();
  static ConfirmScreenShareOrMessageSendFlowStrategy.typeName = result;
  unk_2800C0E60 = v1;
  return result;
}

{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal19ShareTargetResolverVmMd, &_s19SiriExpanseInternal19ShareTargetResolverVmMR);
  result = String.init<A>(describing:)();
  static ShareTargetResolver.typeName = result;
  unk_2800C0E90 = v1;
  return result;
}

{
  type metadata accessor for StartSharingFlow(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal16StartSharingFlowCmMd, &_s19SiriExpanseInternal16StartSharingFlowCmMR);
  result = String.init<A>(describing:)();
  static StartSharingFlow.typeName = result;
  qword_2800C0EB0 = v1;
  return result;
}

{
  type metadata accessor for StopSharingFlow(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal15StopSharingFlowCmMd, &_s19SiriExpanseInternal15StopSharingFlowCmMR);
  result = String.init<A>(describing:)();
  static StopSharingFlow.typeName = result;
  *algn_2800C0FA8 = v1;
  return result;
}

uint64_t SharingDirectInvocationIntent.description.getter()
{
  BYTE8(v3) = 0;
  _StringGuts.grow(_:)(52);
  MEMORY[0x26D5EC8A0](0xD000000000000031, 0x8000000266BEE400);
  *&v3 = *(v0 + *(type metadata accessor for SharingDirectInvocationIntent(0) + 60));
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal17ConfirmationValueOSgMd, &_s19SiriExpanseInternal17ConfirmationValueOSgMR);
  v1 = String.init<A>(describing:)();
  MEMORY[0x26D5EC8A0](v1);

  MEMORY[0x26D5EC8A0](41, 0xE100000000000000);
  return *(&v3 + 1);
}

void SharingDirectInvocationIntent.init(from:)(char a1@<W0>, _BYTE *a2@<X8>)
{
  *a2 = 3;
  v4 = type metadata accessor for SharingDirectInvocationIntent(0);
  v5 = v4[5];
  v6 = type metadata accessor for UsoEntity_common_AttachmentType.DefinedValues();
  (*(*(v6 - 8) + 56))(&a2[v5], 1, 1, v6);
  a2[v4[6]] = 0;
  v7 = &a2[v4[7]];
  *v7 = 0;
  v7[1] = 0;
  v8 = &a2[v4[8]];
  *v8 = 0;
  v8[1] = 0;
  v9 = &a2[v4[9]];
  *v9 = 0;
  v9[1] = 0;
  v10 = &a2[v4[10]];
  *v10 = 0;
  v10[1] = 0;
  a2[v4[11]] = 0;
  a2[v4[12]] = 0;
  a2[v4[13]] = 0;
  *&a2[v4[14]] = 0;
  type metadata accessor for ShareTarget(0);
  swift_storeEnumTagMultiPayload();
  a2[v4[17]] = 0;
  *&a2[v4[18]] = 0;
  a2[v4[19]] = 0;
  a2[v4[20]] = 0;
  a2[v4[21]] = 0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.default);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v20 = v15;
    *v14 = 136315394;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static SharingDirectInvocationIntent.typeName, *algn_2800C0158, &v20);
    *(v14 + 12) = 2080;
    _StringGuts.grow(_:)(26);

    if (a1)
    {
      v16 = 0x7463656A6572;
    }

    else
    {
      v16 = 0x6D7269666E6F63;
    }

    if (a1)
    {
      v17 = 0xE600000000000000;
    }

    else
    {
      v17 = 0xE700000000000000;
    }

    MEMORY[0x26D5EC8A0](v16, v17);

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000018, 0x8000000266BEE3E0, &v20);

    *(v14 + 14) = v18;
    _os_log_impl(&dword_266B9E000, v12, v13, "%s: Initializing self from invocation: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5ED340](v15, -1, -1);
    MEMORY[0x26D5ED340](v14, -1, -1);
  }

  if (a1)
  {
    v19 = 2;
  }

  else
  {
    v19 = 0;
  }

  a2[v4[15]] = v19;
}

uint64_t protocol witness for SharingIntent.appName.getter in conformance SharingDirectInvocationIntent(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 28));

  return v2;
}

uint64_t protocol witness for SharingIntent.appName.setter in conformance SharingDirectInvocationIntent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 28));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t protocol witness for SharingIntent.typeMatchingSpan.getter in conformance SharingDirectInvocationIntent(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 32));

  return v2;
}

uint64_t protocol witness for SharingIntent.typeMatchingSpan.setter in conformance SharingDirectInvocationIntent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 32));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t protocol witness for SharingIntent.appIdentifier.getter in conformance SharingDirectInvocationIntent(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 36));

  return v2;
}

uint64_t protocol witness for SharingIntent.appIdentifier.setter in conformance SharingDirectInvocationIntent(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = (v3 + *(a3 + 36));

  *v6 = a1;
  v6[1] = a2;
  return result;
}

uint64_t protocol witness for SharingIntent.associatedAppIdentifier.getter in conformance SharingDirectInvocationIntent(uint64_t a1)
{
  v2 = *(v1 + *(a1 + 40));

  return v2;
}

uint64_t type metadata accessor for SharingDirectInvocationIntent(uint64_t a1)
{
  result = type metadata singleton initialization cache for SharingDirectInvocationIntent;
  if (!type metadata singleton initialization cache for SharingDirectInvocationIntent)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_266BA24EC(uint64_t a1, uint64_t a2, int *a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMd, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMR);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + a3[5];

    return v9(v10, a2, v8);
  }

  else if (a2 == 2147483646)
  {
    v12 = *(a1 + a3[7] + 8);
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    v13 = v12 - 1;
    if (v13 < 0)
    {
      v13 = -1;
    }

    return (v13 + 1);
  }

  else
  {
    v14 = type metadata accessor for ShareTarget(0);
    v15 = *(*(v14 - 8) + 48);
    v16 = a1 + a3[16];

    return v15(v16, a2, v14);
  }
}

uint64_t sub_266BA2644(uint64_t a1, uint64_t a2, int a3, int *a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMd, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMR);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + a4[5];

    return v11(v12, a2, a2, v10);
  }

  else if (a3 == 2147483646)
  {
    *(a1 + a4[7] + 8) = a2;
  }

  else
  {
    v13 = type metadata accessor for ShareTarget(0);
    v14 = *(*(v13 - 8) + 56);
    v15 = a1 + a4[16];

    return v14(v15, a2, a2, v13);
  }

  return result;
}

void type metadata completion function for SharingDirectInvocationIntent(uint64_t a1)
{
  type metadata accessor for SharingVerb?(319, &lazy cache variable for type metadata for SharingVerb?, &type metadata for SharingVerb);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UsoEntity_common_AttachmentType.DefinedValues?(319, &lazy cache variable for type metadata for UsoEntity_common_AttachmentType.DefinedValues?, MEMORY[0x277D5EF80]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for SharingVerb?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for [INPerson]?(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for SharingVerb?(319, &lazy cache variable for type metadata for ConfirmationValue?, &type metadata for ConfirmationValue);
          if (v5 <= 0x3F)
          {
            type metadata accessor for ShareTarget(319);
            if (v6 <= 0x3F)
            {
              type metadata accessor for UsoEntity_common_AttachmentType.DefinedValues?(319, &lazy cache variable for type metadata for UsoEntity?, MEMORY[0x277D5F498]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void type metadata accessor for [INPerson]?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for [INPerson]?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo8INPersonCGMd, &_sSaySo8INPersonCGMR);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for [INPerson]?);
    }
  }
}

void type metadata accessor for SharingVerb?(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void type metadata accessor for UsoEntity_common_AttachmentType.DefinedValues?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

unint64_t instantiation function for generic protocol witness table for SharingDirectInvocationIntent(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SharingDirectInvocationIntent and conformance SharingDirectInvocationIntent();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type SharingDirectInvocationIntent and conformance SharingDirectInvocationIntent()
{
  result = lazy protocol witness table cache variable for type SharingDirectInvocationIntent and conformance SharingDirectInvocationIntent;
  if (!lazy protocol witness table cache variable for type SharingDirectInvocationIntent and conformance SharingDirectInvocationIntent)
  {
    type metadata accessor for SharingDirectInvocationIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharingDirectInvocationIntent and conformance SharingDirectInvocationIntent);
  }

  return result;
}

uint64_t outlined init with copy of ShareTarget(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ShareTarget(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of UsoEntity_common_AttachmentType.DefinedValues?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMd, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of UsoEntity_common_AttachmentType.DefinedValues?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMd, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t dispatch thunk of SharingPromptFlowStrategy.parseResponse(input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 80) + **(a4 + 80));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for SharingPromptFlowStrategy.makeUserCancelledResponse() in conformance SimpleSharingYesNoPromptFlowStrategy;

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of SharingPromptFlowStrategy.makePrompt()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 88) + **(a3 + 88));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of SharingPromptFlowStrategy.makePrompt();

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of SharingPromptFlowStrategy.makePrompt()()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t dispatch thunk of SharingPromptFlowStrategy.makeUserCancelledResponse()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 96) + **(a3 + 96));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for SharingPromptFlowStrategy.makeUserCancelledResponse() in conformance SimpleSharingYesNoPromptFlowStrategy;

  return v9(a1, a2, a3);
}

uint64_t SharingPromptFlowStrategy.getActionForInput(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v46 = a2;
  v9 = type metadata accessor for Parse();
  v50 = *(v9 - 8);
  MEMORY[0x28223BE20](v9, v10);
  v48 = v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Input();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12, v14);
  v16 = v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  v18 = __swift_project_value_buffer(v17, static Logger.default);
  v19 = *(v13 + 16);
  v49 = a1;
  v19(v16, a1, v12);
  v47 = v18;
  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v45[0] = v9;
    v23 = v22;
    v24 = swift_slowAlloc();
    v45[2] = a4;
    v25 = v24;
    v53[0] = v24;
    *v23 = 136315138;
    lazy protocol witness table accessor for type Input and conformance Input();
    v26 = dispatch thunk of CustomStringConvertible.description.getter();
    v45[1] = v5;
    v27 = a3;
    v29 = v28;
    (*(v13 + 8))(v16, v12);
    v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v29, v53);
    a3 = v27;

    *(v23 + 4) = v30;
    _os_log_impl(&dword_266B9E000, v20, v21, "SharingPromptFlowStrategy: actionForInput received input: %s", v23, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v25);
    MEMORY[0x26D5ED340](v25, -1, -1);
    v31 = v23;
    v9 = v45[0];
    MEMORY[0x26D5ED340](v31, -1, -1);
  }

  else
  {

    (*(v13 + 8))(v16, v12);
  }

  v32 = v48;
  Input.parse.getter();
  v33 = static SharingIntentHelper.makeSharingIntentFrom(parse:)(v32, &v51);
  (*(v50 + 8))(v32, v9, v33);
  if (v52)
  {
    outlined init with take of ConversationParticipant(&v51, v53);
    v34 = v54;
    v35 = v55;
    __swift_project_boxed_opaque_existential_1(v53, v54);
    v36 = (*(v35 + 184))(v34, v35);
    if (v36 > 1)
    {
      if (v36 == 2)
      {

        goto LABEL_15;
      }
    }

    else
    {
      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v41)
      {
LABEL_15:
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          *v44 = 0;
          _os_log_impl(&dword_266B9E000, v42, v43, "SharingPromptFlowStrategy: Found cancel confirmation value -> cancelling request", v44, 2u);
          MEMORY[0x26D5ED340](v44, -1, -1);
        }

        static ActionForInput.cancel()();
        return __swift_destroy_boxed_opaque_existential_1Tm(v53);
      }
    }

    (*(a3 + 72))(v53, v46, a3);
    return __swift_destroy_boxed_opaque_existential_1Tm(v53);
  }

  outlined destroy of SharingResponse?(&v51, &_s19SiriExpanseInternal13SharingIntent_pSgMd, &_s19SiriExpanseInternal13SharingIntent_pSgMR);
  v37 = Logger.logObject.getter();
  v38 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_266B9E000, v37, v38, "SharingPromptFlowStrategy: Unable to create SharingIntent from parse; ignoring input.", v39, 2u);
    MEMORY[0x26D5ED340](v39, -1, -1);
  }

  return static ActionForInput.ignore()();
}

uint64_t SharingPromptFlowStrategy.makePrompt()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[14] = a3;
  v4[15] = v3;
  v4[12] = a1;
  v4[13] = a2;
  return MEMORY[0x2822009F8](SharingPromptFlowStrategy.makePrompt(), 0, 0);
}

uint64_t SharingPromptFlowStrategy.makePrompt()()
{
  v1 = v0[14];
  v2 = v0[13];
  (*(v1 + 56))(v2, v1);
  __swift_project_boxed_opaque_existential_1(v0 + 2, v0[5]);
  (*(v1 + 40))(v2, v1);
  v3 = swift_task_alloc();
  v0[16] = v3;
  *v3 = v0;
  v3[1] = SharingPromptFlowStrategy.makePrompt();
  v4 = v0[12];

  return ResponseExecutor.execute(response:)(v4, (v0 + 7));
}

{
  v2 = *v1;
  *(v2 + 136) = v0;

  __swift_destroy_boxed_opaque_existential_1Tm((v2 + 56));
  if (v0)
  {
    v3 = SharingPromptFlowStrategy.makePrompt();
  }

  else
  {
    v3 = SharingPromptFlowStrategy.makePrompt();
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t SharingPromptFlowStrategy.makeUserCancelledResponse()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[19] = a3;
  v4[20] = v3;
  v4[17] = a1;
  v4[18] = a2;
  return MEMORY[0x2822009F8](SharingPromptFlowStrategy.makeUserCancelledResponse(), 0, 0);
}

uint64_t SharingPromptFlowStrategy.makeUserCancelledResponse()()
{
  (*(*(v0 + 152) + 48))(*(v0 + 144));
  if (*(v0 + 80))
  {
    v1 = *(v0 + 152);
    v2 = *(v0 + 144);
    outlined init with take of ConversationParticipant((v0 + 56), v0 + 16);
    (*(v1 + 56))(v2, v1);
    __swift_project_boxed_opaque_existential_1((v0 + 96), *(v0 + 120));
    v3 = swift_task_alloc();
    *(v0 + 168) = v3;
    *v3 = v0;
    v3[1] = SharingPromptFlowStrategy.makeUserCancelledResponse();
    v4 = *(v0 + 136);

    return ResponseExecutor.execute(response:)(v4, v0 + 16);
  }

  else
  {
    outlined destroy of SharingResponse?(v0 + 56, &_s19SiriExpanseInternal15SharingResponse_pSgMd, &_s19SiriExpanseInternal15SharingResponse_pSgMR);
    type metadata accessor for EmptyOutput();
    static EmptyOutput.instance.getter();
    v6 = *(v0 + 8);

    return v6();
  }
}

{
  *(*v1 + 176) = v0;

  if (v0)
  {
    v2 = SharingPromptFlowStrategy.makeUserCancelledResponse();
  }

  else
  {
    v2 = SharingPromptFlowStrategy.makeUserCancelledResponse();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  v1 = v0[1];

  return v1();
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  v1 = v0[1];

  return v1();
}

uint64_t protocol witness for SharingPromptFlowStrategy.makePrompt() in conformance SimpleSharingYesNoPromptFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for SharingPromptFlowStrategy.makeUserCancelledResponse() in conformance SimpleSharingYesNoPromptFlowStrategy;

  return SharingPromptFlowStrategy.makePrompt()(a1, a2, a3);
}

uint64_t protocol witness for SharingPromptFlowStrategy.makeUserCancelledResponse() in conformance SimpleSharingYesNoPromptFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for SharingPromptFlowStrategy.makeUserCancelledResponse() in conformance SimpleSharingYesNoPromptFlowStrategy;

  return SharingPromptFlowStrategy.makeUserCancelledResponse()(a1, a2, a3);
}

uint64_t protocol witness for SharingPromptFlowStrategy.makePrompt() in conformance NeedsShareTargetFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of SharingPromptFlowStrategy.makePrompt();

  return SharingPromptFlowStrategy.makePrompt()(a1, a2, a3);
}

uint64_t outlined destroy of SharingResponse?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t outlined init with take of ConversationParticipant(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

unint64_t lazy protocol witness table accessor for type Input and conformance Input()
{
  result = lazy protocol witness table cache variable for type Input and conformance Input;
  if (!lazy protocol witness table cache variable for type Input and conformance Input)
  {
    type metadata accessor for Input();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Input and conformance Input);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t TUCallStatus.description.getter(int a1)
{
  if (a1 > 2)
  {
    if (a1 <= 4)
    {
      return 0xD000000000000010;
    }

    if (a1 == 5 || a1 == 6)
    {
      return 0x656E6E6F63736964;
    }

LABEL_12:
    _StringGuts.grow(_:)(22);

    v2 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x26D5EC8A0](v2);

    MEMORY[0x26D5EC8A0](41, 0xE100000000000000);
    return 0xD000000000000013;
  }

  if (!a1)
  {
    return 1701602409;
  }

  if (a1 != 1)
  {
    if (a1 == 2)
    {
      return 0x646C6F682D6E6FLL;
    }

    goto LABEL_12;
  }

  return 0x657669746361;
}

uint64_t PromptForValueFlowWrapper.execute()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](PromptForValueFlowWrapper.execute(), 0, 0);
}

uint64_t PromptForValueFlowWrapper.execute()()
{
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  v1[1] = PromptForValueFlowWrapper.execute();
  v2 = *(v0 + 16);

  return MEMORY[0x2821B9D68](v2);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t PromptForValueFlowWrapper.deinit()
{
  swift_unknownObjectRelease();

  return v0;
}

uint64_t PromptForValueFlowWrapper.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance PromptForValueFlowWrapper<A1>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for Flow.onAsync(input:) in conformance PromptForValueFlowWrapper<A1>;

  return MEMORY[0x2821BA650](a1, a2, a3);
}

uint64_t protocol witness for Flow.onAsync(input:) in conformance PromptForValueFlowWrapper<A1>(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

uint64_t protocol witness for Flow.execute() in conformance PromptForValueFlowWrapper<A>(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = dispatch thunk of SharingPromptFlowStrategy.makePrompt();

  return PromptForValueFlowWrapper.execute()(a1);
}

uint64_t dispatch thunk of ShareTargetResolving.resolveShareTargetForStartSharing(target:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = (*(a3 + 8) + **(a3 + 8));
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = dispatch thunk of ShareTargetResolving.resolveShareTargetForStartSharing(target:);

  return v9(a1, a2, a3);
}

uint64_t dispatch thunk of ShareTargetResolving.resolveShareTargetForStartSharing(target:)(uint64_t a1, uint64_t a2, int a3)
{
  v9 = *v3;

  v7 = *(v9 + 8);

  return v7(a1, a2, a3 & 0x1FFFF);
}

uint64_t dispatch thunk of ShareTargetResolving.resolveShareTargetForStopSharing(target:call:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11 = (*(a4 + 16) + **(a4 + 16));
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = dispatch thunk of ShareTargetResolving.resolveShareTargetForStopSharing(target:call:);

  return v11(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ShareTargetResolving.resolveShareTargetForStopSharing(target:call:)(__int16 a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1 & 0x1FF);
}

uint64_t Flow.execute(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = *(a3 - 8);
  v11 = *(v10 + 64);
  MEMORY[0x28223BE20](a1, a2);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v12 - 8, v13);
  v15 = &v21 - v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);
  (*(v10 + 16))(&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), v5, a3);
  v17 = (*(v10 + 80) + 48) & ~*(v10 + 80);
  v18 = swift_allocObject();
  *(v18 + 2) = 0;
  *(v18 + 3) = 0;
  *(v18 + 4) = a3;
  *(v18 + 5) = a4;
  (*(v10 + 32))(&v18[v17], &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0), a3);
  v19 = &v18[(v11 + v17 + 7) & 0xFFFFFFFFFFFFFFF8];
  *v19 = a1;
  *(v19 + 1) = a2;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v15, &async function pointer to partial apply for closure #1 in Flow.execute(completion:), v18);
}

uint64_t closure #1 in Flow.execute(completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a5;
  v8[3] = a6;
  v11 = type metadata accessor for ExecuteResponse();
  v8[4] = v11;
  v8[5] = *(v11 - 8);
  v12 = swift_task_alloc();
  v8[6] = v12;
  v13 = swift_task_alloc();
  v8[7] = v13;
  *v13 = v8;
  v13[1] = closure #1 in Flow.execute(completion:);

  return MEMORY[0x2821BA608](v12, a7, a8);
}

uint64_t closure #1 in Flow.execute(completion:)()
{

  return MEMORY[0x2822009F8](closure #1 in Flow.execute(completion:), 0, 0);
}

{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  (*(v0 + 16))(v1);
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_266BA5008()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 16, v3 | 7);
}

uint64_t partial apply for closure #1 in Flow.execute(completion:)(uint64_t a1)
{
  v4 = v1[4];
  v5 = v1[5];
  v6 = (*(*(v4 - 8) + 80) + 48) & ~*(*(v4 - 8) + 80);
  v7 = v1[2];
  v8 = v1[3];
  v9 = (v1 + ((*(*(v4 - 8) + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));
  v10 = *v9;
  v11 = v9[1];
  v12 = swift_task_alloc();
  *(v2 + 16) = v12;
  *v12 = v2;
  v12[1] = dispatch thunk of SharingPromptFlowStrategy.makePrompt();

  return closure #1 in Flow.execute(completion:)(a1, v7, v8, v1 + v6, v10, v11, v4, v5);
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v9 - 8, v10);
  v12 = v26 - v11;
  outlined init with copy of TaskPriority?(a3, v26 - v11);
  v13 = type metadata accessor for TaskPriority();
  v14 = *(v13 - 8);
  v15 = (*(v14 + 48))(v12, 1, v13);

  if (v15 == 1)
  {
    outlined destroy of TaskPriority?(v12);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(v14 + 8))(v12, v13);
  }

  v16 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v16)
  {
    swift_getObjectType();
    v17 = dispatch thunk of Actor.unownedExecutor.getter();
    v19 = v18;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v20 = String.utf8CString.getter() + 32;
      v21 = swift_allocObject();
      *(v21 + 16) = a4;
      *(v21 + 24) = a5;

      if (v19 | v17)
      {
        v27[0] = 0;
        v27[1] = 0;
        v22 = v27;
        v27[2] = v17;
        v27[3] = v19;
      }

      else
      {
        v22 = 0;
      }

      v26[1] = 7;
      v26[2] = v22;
      v26[3] = v20;
      v24 = swift_task_create();

      outlined destroy of TaskPriority?(a3);

      return v24;
    }
  }

  else
  {
    v17 = 0;
    v19 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of TaskPriority?(a3);
  v23 = swift_allocObject();
  *(v23 + 16) = a4;
  *(v23 + 24) = a5;
  if (v19 | v17)
  {
    v27[4] = 0;
    v27[5] = 0;
    v27[6] = v17;
    v27[7] = v19;
  }

  return swift_task_create();
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

uint64_t sub_266BA57A0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for SharingPromptFlowStrategy.makeUserCancelledResponse() in conformance SimpleSharingYesNoPromptFlowStrategy;

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_9(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = dispatch thunk of SharingPromptFlowStrategy.makePrompt();

  return _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5(a1, v4);
}

unint64_t lazy protocol witness table accessor for type DefinitiveShareTarget and conformance DefinitiveShareTarget()
{
  result = lazy protocol witness table cache variable for type DefinitiveShareTarget and conformance DefinitiveShareTarget;
  if (!lazy protocol witness table cache variable for type DefinitiveShareTarget and conformance DefinitiveShareTarget)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DefinitiveShareTarget and conformance DefinitiveShareTarget);
  }

  return result;
}

unint64_t Encodable.asDictionary()(uint64_t a1, uint64_t a2)
{
  v14[4] = *MEMORY[0x277D85DE8];
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  JSONEncoder.init()();
  v2 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v4 = v3;

  v5 = objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v14[0] = 0;
  v7 = [v5 JSONObjectWithData:isa options:0 error:v14];

  if (!v7)
  {
    v10 = v14[0];
    v11 = _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_5;
  }

  v8 = v14[0];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSypGMd, &_sSDySSypGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_5:
    v9 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    outlined consume of Data._Representation(v2, v4);
    return v9;
  }

  outlined consume of Data._Representation(v2, v4);
  return v13;
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

uint64_t ExpanseFlowProvider.init()@<X0>(void *a1@<X8>)
{
  a1[3] = &type metadata for ScreenSharingCallManager;
  a1[4] = &protocol witness table for ScreenSharingCallManager;
  v2 = swift_allocObject();
  *a1 = v2;
  v3 = [objc_opt_self() sharedInstance];
  v2[5] = type metadata accessor for TUCallCenter();
  v2[6] = &protocol witness table for TUCallCenter;
  v2[2] = v3;
  v4 = type metadata accessor for DialogExecutor();
  v5 = swift_allocObject();
  v6 = type metadata accessor for ResponseFactory();
  swift_allocObject();

  v7 = ResponseFactory.init()();
  static Device.current.getter();
  type metadata accessor for CATGlobals();
  v8 = CATGlobals.__allocating_init()();
  v20 = v6;
  v21 = MEMORY[0x277D5BD58];
  *&v19 = v7;
  v18[3] = v4;
  v18[4] = &protocol witness table for DialogExecutor;
  v18[0] = v5;
  v9 = type metadata accessor for ResponseExecutor();
  v10 = swift_allocObject();
  v11 = __swift_mutable_project_boxed_opaque_existential_1(v18, v4);
  MEMORY[0x28223BE20](v11, v11);
  v13 = (&v18[-1] - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v14 + 16))(v13);
  v15 = *v13;
  v10[5] = v4;
  v10[6] = &protocol witness table for DialogExecutor;
  v10[2] = v15;
  outlined init with take of ConversationParticipant(&v19, (v10 + 7));
  outlined init with take of ConversationParticipant(&v22, (v10 + 12));
  v10[17] = v8;
  __swift_destroy_boxed_opaque_existential_1Tm(v18);

  a1[8] = v9;
  a1[9] = &protocol witness table for ResponseExecutor;
  a1[5] = v10;
  return static OutputPublisherFactory.makeOutputPublisherAsync()();
}

uint64_t sub_266BA5EE4()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

unint64_t type metadata accessor for TUCallCenter()
{
  result = lazy cache variable for type metadata for TUCallCenter;
  if (!lazy cache variable for type metadata for TUCallCenter)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for TUCallCenter);
  }

  return result;
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

uint64_t ExpanseFlowProvider.findFlowFor(parse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = type metadata accessor for Responses.Common.NotInCall(0);
  MEMORY[0x28223BE20](v6, v7);
  v9 = &v102 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  v11 = __swift_project_value_buffer(v10, static Logger.default);
  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v104 = v11;
    v14 = v6;
    v15 = v9;
    v16 = v3;
    v17 = a2;
    v18 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    v136[0] = v19;
    *v18 = 136315138;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    *(v18 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static ExpanseFlowProvider.typeName, *algn_2800C0278, v136);
    _os_log_impl(&dword_266B9E000, v12, v13, "%s: Making flow from parse", v18, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v19);
    MEMORY[0x26D5ED340](v19, -1, -1);
    MEMORY[0x26D5ED340](v18, -1, -1);

    a2 = v17;
    v3 = v16;
    v9 = v15;
    v6 = v14;
  }

  else
  {
  }

  static SharingIntentHelper.makeSharingIntentFrom(parse:)(a1, &v134);
  if (v135)
  {
    outlined init with take of ConversationParticipant(&v134, v136);
    v20 = v137;
    v21 = v138;
    __swift_project_boxed_opaque_existential_1(v136, v137);
    v22 = (*(v21 + 16))(v20, v21);
    if (v22 > 1u)
    {
      if (v22 != 2)
      {
        v30 = Logger.logObject.getter();
        v34 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v30, v34))
        {
          v35 = swift_slowAlloc();
          v36 = swift_slowAlloc();
          *&v134 = v36;
          *v35 = 136315138;
          if (one-time initialization token for typeName != -1)
          {
            swift_once();
          }

          *(v35 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static ExpanseFlowProvider.typeName, *algn_2800C0278, &v134);
          _os_log_impl(&dword_266B9E000, v30, v34, "%s: The provided intent doesn't appear to actually be a sharing intent, as it has no sharingVerb - is this a SiriKit bug?", v35, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v36);
          MEMORY[0x26D5ED340](v36, -1, -1);
          MEMORY[0x26D5ED340](v35, -1, -1);
        }

        goto LABEL_40;
      }

      v104 = a2;

LABEL_19:
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *&v134 = v33;
        *v32 = 136315138;
        if (one-time initialization token for typeName != -1)
        {
          swift_once();
        }

        *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static ExpanseFlowProvider.typeName, *algn_2800C0278, &v134);
        _os_log_impl(&dword_266B9E000, v30, v31, "%s: findFlowFor(parse:) called with parse with send verb, but only share and unshare verbs are supported", v32, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v33);
        MEMORY[0x26D5ED340](v33, -1, -1);
        MEMORY[0x26D5ED340](v32, -1, -1);

        goto LABEL_41;
      }

LABEL_40:

LABEL_41:
      static FlowSearchResult.noFlow.getter();
      return __swift_destroy_boxed_opaque_existential_1Tm(v136);
    }

    v104 = a2;
    v23 = v22;
    v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v29)
    {
      goto LABEL_19;
    }

    __swift_project_boxed_opaque_existential_1(v3, v3[3]);
    ScreenSharingCallManager.getSalientScreenShareSupportingCall()(&v132);
    if (!v133)
    {
      outlined destroy of SharingResponse?(&v132, &_s19SiriExpanseInternal4Call_pSgMd, &_s19SiriExpanseInternal4Call_pSgMR);
      v61 = Logger.logObject.getter();
      v62 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v61, v62))
      {
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        *&v134 = v64;
        *v63 = 136315138;
        if (one-time initialization token for typeName != -1)
        {
          swift_once();
        }

        *(v63 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static ExpanseFlowProvider.typeName, *algn_2800C0278, &v134);
        _os_log_impl(&dword_266B9E000, v61, v62, "%s: No salient call that supports screen sharing found -> returning flow to output not-in-call error dialog", v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v64);
        MEMORY[0x26D5ED340](v64, -1, -1);
        MEMORY[0x26D5ED340](v63, -1, -1);
      }

      *v9 = -107;
      static DialogPhase.completion.getter();
      outlined init with copy of ResponseExecuting((v3 + 5), &v134);
      outlined init with copy of ResponseExecuting((v3 + 10), &v132);
      v65 = __swift_mutable_project_boxed_opaque_existential_1(&v134, v135);
      MEMORY[0x28223BE20](v65, v65);
      v67 = (&v102 - ((v66 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v68 + 16))(v67);
      v69 = *v67;
      v130 = v6;
      v131 = &protocol witness table for Responses.Common.NotInCall;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v129);
      outlined init with copy of Responses.Common.NotInCall(v9, boxed_opaque_existential_1, type metadata accessor for Responses.Common.NotInCall);
      v71 = type metadata accessor for ResponseExecutor();
      v127 = v71;
      v128 = &protocol witness table for ResponseExecutor;
      v126[0] = v69;
      type metadata accessor for OutputDialogFlow();
      v72 = swift_allocObject();
      v73 = __swift_mutable_project_boxed_opaque_existential_1(v126, v71);
      MEMORY[0x28223BE20](v73, v73);
      v75 = (&v102 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0));
      (*(v76 + 16))(v75);
      v77 = *v75;
      *(v72 + 88) = v71;
      *(v72 + 96) = &protocol witness table for ResponseExecutor;
      *(v72 + 64) = v77;
      *(v72 + 16) = 0;
      outlined init with take of ConversationParticipant(&v129, v72 + 24);
      outlined init with take of ConversationParticipant(&v132, v72 + 104);
      __swift_destroy_boxed_opaque_existential_1Tm(v126);
      outlined destroy of Responses.Common.NotInCall(v9, type metadata accessor for Responses.Common.NotInCall);
      __swift_destroy_boxed_opaque_existential_1Tm(&v134);
      *&v134 = v72;
      lazy protocol witness table accessor for type OutputDialogFlow and conformance OutputDialogFlow(&lazy protocol witness table cache variable for type OutputDialogFlow and conformance OutputDialogFlow, type metadata accessor for OutputDialogFlow, &protocol conformance descriptor for OutputDialogFlow);
      Flow.eraseToAnyFlow()();

      static FlowSearchResult.flow(_:)();

      return __swift_destroy_boxed_opaque_existential_1Tm(v136);
    }

    outlined init with take of ConversationParticipant(&v132, &v134);
    v37 = Logger.logObject.getter();
    v38 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v37, v38))
    {
      v39 = swift_slowAlloc();
      v40 = swift_slowAlloc();
      *&v132 = v40;
      *v39 = 136315138;
      if (one-time initialization token for typeName != -1)
      {
        swift_once();
      }

      *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static ExpanseFlowProvider.typeName, *algn_2800C0278, &v132);
      _os_log_impl(&dword_266B9E000, v37, v38, "%s: Found salient call that supports screen sharing", v39, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v40);
      MEMORY[0x26D5ED340](v40, -1, -1);
      MEMORY[0x26D5ED340](v39, -1, -1);
    }

    if (v23)
    {
      v41 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v41 & 1) == 0)
      {
        v42 = Logger.logObject.getter();
        v43 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = swift_slowAlloc();
          v45 = swift_slowAlloc();
          *&v132 = v45;
          *v44 = 136315138;
          if (one-time initialization token for typeName != -1)
          {
            swift_once();
          }

          *(v44 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static ExpanseFlowProvider.typeName, *algn_2800C0278, &v132);
          _os_log_impl(&dword_266B9E000, v42, v43, "%s: Verb is unshare -> returning StopSharingFlow", v44, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v45);
          MEMORY[0x26D5ED340](v45, -1, -1);
          MEMORY[0x26D5ED340](v44, -1, -1);
        }

        outlined init with copy of ResponseExecuting(v136, &v132);
        outlined init with copy of ResponseExecuting(&v134, &v129);
        outlined init with copy of ResponseExecuting((v3 + 5), v126);
        outlined init with copy of ResponseExecuting((v3 + 10), v125);
        v46 = __swift_mutable_project_boxed_opaque_existential_1(v126, v127);
        v103 = &v102;
        MEMORY[0x28223BE20](v46, v46);
        v48 = (&v102 - ((v47 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v49 + 16))(v48);
        v50 = *v48;
        v51 = type metadata accessor for ResponseExecutor();
        v123 = v51;
        v124 = &protocol witness table for ResponseExecutor;
        v122[0] = v50;
        v120 = &type metadata for ShareTargetResolver;
        v121 = &protocol witness table for ShareTargetResolver;
        v117 = &type metadata for Sharer;
        v118 = &protocol witness table for Sharer;
        type metadata accessor for StopSharingFlow(0);
        v52 = swift_allocObject();
        v53 = __swift_mutable_project_boxed_opaque_existential_1(v122, v51);
        MEMORY[0x28223BE20](v53, v53);
        v55 = (&v102 - ((v54 + 15) & 0xFFFFFFFFFFFFFFF0));
        (*(v56 + 16))(v55);
        __swift_mutable_project_boxed_opaque_existential_1(v119, v120);
        __swift_mutable_project_boxed_opaque_existential_1(v116, v117);
        v57 = *v55;
        v114 = &type metadata for ShareTargetResolver;
        v115 = &protocol witness table for ShareTargetResolver;
        v111 = &type metadata for Sharer;
        v112 = &protocol witness table for Sharer;
        outlined init with copy of ResponseExecuting(v113, v52 + direct field offset for StopSharingFlow.shareTargetResolver);
        outlined init with copy of ResponseExecuting(v110, v52 + direct field offset for StopSharingFlow.sharer);
        outlined init with copy of ResponseExecuting(&v132, v109);
        outlined init with copy of ResponseExecuting(&v129, v108);
        outlined init with copy of ResponseExecuting(v125, v107);
        v58 = specialized SharingFlow.init(intent:call:responseExecutor:outputPublisher:)(v109, v108, v57, v107, v52, type metadata accessor for StopSharingFlow.StopSharingFlowState, 5, type metadata accessor for StopSharingFlow.StopSharingFlowState, StopSharingFlow.StopSharingFlowState.description.getter);
        __swift_destroy_boxed_opaque_existential_1Tm(v125);
        __swift_destroy_boxed_opaque_existential_1Tm(&v129);
        __swift_destroy_boxed_opaque_existential_1Tm(&v132);
        __swift_destroy_boxed_opaque_existential_1Tm(v110);
        __swift_destroy_boxed_opaque_existential_1Tm(v113);
        __swift_destroy_boxed_opaque_existential_1Tm(v116);
        __swift_destroy_boxed_opaque_existential_1Tm(v119);
        __swift_destroy_boxed_opaque_existential_1Tm(v122);
        __swift_destroy_boxed_opaque_existential_1Tm(v126);
        *&v132 = v58;
        v59 = &lazy protocol witness table cache variable for type StopSharingFlow and conformance SharingFlow<A>;
        v60 = type metadata accessor for StopSharingFlow;
LABEL_54:
        lazy protocol witness table accessor for type OutputDialogFlow and conformance OutputDialogFlow(v59, v60, &protocol conformance descriptor for SharingFlow<A>);
        Flow.eraseToAnyFlow()();

        static FlowSearchResult.flow(_:)();

        __swift_destroy_boxed_opaque_existential_1Tm(&v134);
        return __swift_destroy_boxed_opaque_existential_1Tm(v136);
      }
    }

    else
    {
    }

    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      *&v132 = v81;
      *v80 = 136315138;
      if (one-time initialization token for typeName != -1)
      {
        swift_once();
      }

      *(v80 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static ExpanseFlowProvider.typeName, *algn_2800C0278, &v132);
      _os_log_impl(&dword_266B9E000, v78, v79, "%s: Verb is share -> returning StartSharingFlow", v80, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v81);
      MEMORY[0x26D5ED340](v81, -1, -1);
      MEMORY[0x26D5ED340](v80, -1, -1);
    }

    outlined init with copy of ResponseExecuting(v136, &v132);
    outlined init with copy of ResponseExecuting(&v134, &v129);
    outlined init with copy of ResponseExecuting((v3 + 5), v126);
    outlined init with copy of ResponseExecuting((v3 + 10), v125);
    v82 = type metadata accessor for SharePlayHelper();
    v83 = swift_allocObject();
    v84 = __swift_mutable_project_boxed_opaque_existential_1(v126, v127);
    v103 = &v102;
    MEMORY[0x28223BE20](v84, v84);
    v86 = (&v102 - ((v85 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v87 + 16))(v86);
    v88 = *v86;
    v89 = type metadata accessor for ResponseExecutor();
    v123 = v89;
    v124 = &protocol witness table for ResponseExecutor;
    v122[0] = v88;
    v120 = &type metadata for ShareTargetResolver;
    v121 = &protocol witness table for ShareTargetResolver;
    v117 = &type metadata for Sharer;
    v118 = &protocol witness table for Sharer;
    v114 = v82;
    v115 = &protocol witness table for SharePlayHelper;
    v113[0] = v83;
    type metadata accessor for StartSharingFlow(0);
    v90 = swift_allocObject();
    v91 = __swift_mutable_project_boxed_opaque_existential_1(v122, v89);
    v102 = &v102;
    MEMORY[0x28223BE20](v91, v91);
    v93 = (&v102 - ((v92 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v94 + 16))(v93);
    __swift_mutable_project_boxed_opaque_existential_1(v119, v120);
    __swift_mutable_project_boxed_opaque_existential_1(v116, v117);
    v95 = __swift_mutable_project_boxed_opaque_existential_1(v113, v114);
    MEMORY[0x28223BE20](v95, v95);
    v97 = (&v102 - ((v96 + 15) & 0xFFFFFFFFFFFFFFF0));
    (*(v98 + 16))(v97);
    v99 = *v93;
    v100 = *v97;
    v111 = &type metadata for ShareTargetResolver;
    v112 = &protocol witness table for ShareTargetResolver;
    v109[3] = &type metadata for Sharer;
    v109[4] = &protocol witness table for Sharer;
    v108[3] = v82;
    v108[4] = &protocol witness table for SharePlayHelper;
    v108[0] = v100;
    outlined init with copy of ResponseExecuting(v110, v90 + direct field offset for StartSharingFlow.shareTargetResolver);
    outlined init with copy of ResponseExecuting(v109, v90 + direct field offset for StartSharingFlow.sharer);
    outlined init with copy of ResponseExecuting(v108, v90 + direct field offset for StartSharingFlow.sharePlayHelper);
    outlined init with copy of ResponseExecuting(&v132, v107);
    outlined init with copy of ResponseExecuting(&v129, v106);
    outlined init with copy of ResponseExecuting(v125, v105);
    v101 = specialized SharingFlow.init(intent:call:responseExecutor:outputPublisher:)(v107, v106, v99, v105, v90, type metadata accessor for StartSharingFlow.StartSharingFlowState, 9, type metadata accessor for StartSharingFlow.StartSharingFlowState, StartSharingFlow.StartSharingFlowState.description.getter);
    __swift_destroy_boxed_opaque_existential_1Tm(v125);
    __swift_destroy_boxed_opaque_existential_1Tm(&v129);
    __swift_destroy_boxed_opaque_existential_1Tm(&v132);
    __swift_destroy_boxed_opaque_existential_1Tm(v108);
    __swift_destroy_boxed_opaque_existential_1Tm(v109);
    __swift_destroy_boxed_opaque_existential_1Tm(v110);
    __swift_destroy_boxed_opaque_existential_1Tm(v113);
    __swift_destroy_boxed_opaque_existential_1Tm(v116);
    __swift_destroy_boxed_opaque_existential_1Tm(v119);
    __swift_destroy_boxed_opaque_existential_1Tm(v122);
    __swift_destroy_boxed_opaque_existential_1Tm(v126);
    *&v132 = v101;
    v59 = &lazy protocol witness table cache variable for type StartSharingFlow and conformance SharingFlow<A>;
    v60 = type metadata accessor for StartSharingFlow;
    goto LABEL_54;
  }

  outlined destroy of SharingResponse?(&v134, &_s19SiriExpanseInternal13SharingIntent_pSgMd, &_s19SiriExpanseInternal13SharingIntent_pSgMR);
  v24 = Logger.logObject.getter();
  v25 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v24, v25))
  {
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v136[0] = v27;
    *v26 = 136315138;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static ExpanseFlowProvider.typeName, *algn_2800C0278, v136);
    _os_log_impl(&dword_266B9E000, v24, v25, "%s: Failed to make a SharingIntent from the parse", v26, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    MEMORY[0x26D5ED340](v27, -1, -1);
    MEMORY[0x26D5ED340](v26, -1, -1);
  }

  return static FlowSearchResult.noFlow.getter();
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t closure #1 in OSLogArguments.append(_:)(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, _ss23_ContiguousArrayStorageCySSGMR);
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

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
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

void *specialized SharingFlow.init(intent:call:responseExecutor:outputPublisher:)(void *a1, void *a2, uint64_t a3, void *a4, void *a5, uint64_t (*a6)(void), uint64_t a7, uint64_t (*a8)(void), uint64_t (*a9)(uint64_t))
{
  v15 = a6(0);
  MEMORY[0x28223BE20](v15, v16);
  v18 = &v45[-v17];
  v52[3] = type metadata accessor for ResponseExecutor();
  v52[4] = &protocol witness table for ResponseExecutor;
  v52[0] = a3;
  a5[2] = 0x46676E6972616853;
  a5[3] = 0xEB00000000776F6CLL;
  swift_storeEnumTagMultiPayload();
  outlined init with copy of ResponseExecuting(a1, a5 + *(*a5 + 112));
  outlined init with copy of ResponseExecuting(a2, a5 + *(*a5 + 120));
  outlined init with copy of ResponseExecuting(v52, a5 + *(*a5 + 128));
  outlined init with copy of ResponseExecuting(a4, a5 + *(*a5 + 136));
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v19 = type metadata accessor for Logger();
  __swift_project_value_buffer(v19, static Logger.default);

  v20 = Logger.logObject.getter();
  v21 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v20, v21))
  {
    v50 = a2;
    v22 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v51 = v48;
    *v22 = 136315650;
    v46 = v21;
    v49 = a1;
    v23 = a5[2];
    v24 = a5[3];

    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v51);

    *(v22 + 4) = v25;
    v47 = a4;
    *(v22 + 12) = 2080;
    v26 = *(*a5 + 104);
    swift_beginAccess();
    v27 = outlined init with copy of Responses.Common.NotInCall(a5 + v26, v18, a8);
    v28 = a9(v27);
    v30 = v29;

    outlined destroy of Responses.Common.NotInCall(v18, a8);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v51);

    *(v22 + 14) = v31;
    *(v22 + 22) = 2080;
    v32 = (a5 + *(*a5 + 112));
    swift_beginAccess();
    v33 = v32[3];
    v34 = __swift_project_boxed_opaque_existential_1(v32, v33);
    v35 = *(v33 - 8);
    MEMORY[0x28223BE20](v34, v34);
    v37 = &v45[-v36];
    (*(v35 + 16))(&v45[-v36]);
    v38 = dispatch thunk of CustomStringConvertible.description.getter();
    v40 = v39;
    (*(v35 + 8))(v37, v33);
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v51);

    *(v22 + 24) = v41;
    _os_log_impl(&dword_266B9E000, v20, v46, "%s: Initialized SharingFlow with state %s, intent %s", v22, 0x20u);
    v42 = v48;
    swift_arrayDestroy();
    MEMORY[0x26D5ED340](v42, -1, -1);
    MEMORY[0x26D5ED340](v22, -1, -1);

    __swift_destroy_boxed_opaque_existential_1Tm(v47);
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    v43 = v49;
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1Tm(a4);
    __swift_destroy_boxed_opaque_existential_1Tm(a2);
    v43 = a1;
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v43);
  __swift_destroy_boxed_opaque_existential_1Tm(v52);
  return a5;
}

uint64_t outlined init with copy of ResponseExecuting(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t lazy protocol witness table accessor for type OutputDialogFlow and conformance OutputDialogFlow(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

__n128 __swift_memcpy120_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ExpanseFlowProvider(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t storeEnumTagSinglePayload for ExpanseFlowProvider(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 120) = 1;
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

    *(result + 120) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined init with copy of Responses.Common.NotInCall(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Responses.Common.NotInCall(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t getEnumTagSinglePayload for SharingDirectInvocation(unsigned __int8 *a1, unsigned int a2)
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

unint64_t SharingDirectInvocation.description.getter(char a1)
{
  _StringGuts.grow(_:)(26);

  if (a1)
  {
    v2 = 0x7463656A6572;
  }

  else
  {
    v2 = 0x6D7269666E6F63;
  }

  if (a1)
  {
    v3 = 0xE600000000000000;
  }

  else
  {
    v3 = 0xE700000000000000;
  }

  MEMORY[0x26D5EC8A0](v2, v3);

  return 0xD000000000000018;
}

id SharingDirectInvocation.toSAIntentGroupRunSiriKitExecutor(deviceState:)(void *a1, char a2)
{
  v4 = objc_allocWithZone(MEMORY[0x277D5C220]);
  v5 = MEMORY[0x26D5EC850](0xD000000000000027, 0x8000000266BEE4D0);
  v6 = [v4 initWithIdentifier_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMd, &_ss23_ContiguousArrayStorageCys11AnyHashableV_yptGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266BE97B0;
  v8 = MEMORY[0x277D837D0];
  AnyHashable.init<A>(_:)();
  v9 = 0x6D7269666E6F63;
  if (a2)
  {
    v9 = 0x7463656A6572;
  }

  v10 = 0xE700000000000000;
  *(inited + 96) = v8;
  if (a2)
  {
    v10 = 0xE600000000000000;
  }

  *(inited + 72) = v9;
  *(inited + 80) = v10;
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCs11AnyHashableV_ypTt0g5Tf4g_n(inited);
  swift_setDeallocating();
  outlined destroy of (AnyHashable, Any)(inited + 32);
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  [v6 setUserData_];

  v12 = objc_opt_self();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = DeviceState.asInvocationContext.getter();
  v14 = [v12 runSiriKitExecutorCommandWithContext:v13 payload:v6];

  return v14;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance SharingDirectInvocation(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7463656A6572;
  }

  else
  {
    v3 = 0x6D7269666E6F63;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x7463656A6572;
  }

  else
  {
    v5 = 0x6D7269666E6F63;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xE700000000000000;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance SharingDirectInvocation()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance SharingDirectInvocation(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SharingDirectInvocation(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance SharingDirectInvocation@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SharingDirectInvocation.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance SharingDirectInvocation(uint64_t *a1@<X8>)
{
  v2 = 0x6D7269666E6F63;
  if (*v1)
  {
    v2 = 0x7463656A6572;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t lazy protocol witness table accessor for type SharingDirectInvocation and conformance SharingDirectInvocation()
{
  result = lazy protocol witness table cache variable for type SharingDirectInvocation and conformance SharingDirectInvocation;
  if (!lazy protocol witness table cache variable for type SharingDirectInvocation and conformance SharingDirectInvocation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharingDirectInvocation and conformance SharingDirectInvocation);
  }

  return result;
}

uint64_t specialized SharingDirectInvocation.init(from:)(char *a1)
{
  v2 = type metadata accessor for Parse.DirectInvocation();
  v3 = *(v2 - 8);
  v5 = MEMORY[0x28223BE20](v2, v4);
  v7 = v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v5, v8);
  v11 = v54 - v10;
  MEMORY[0x28223BE20](v9, v12);
  v14 = v54 - v13;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for Logger();
  v16 = __swift_project_value_buffer(v15, static Logger.default);
  v56 = *(v3 + 16);
  v57 = a1;
  v56(v14, a1, v2);
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.debug.getter();
  v19 = os_log_type_enabled(v17, v18);
  v58 = v3;
  if (v19)
  {
    v54[1] = v16;
    v55 = v7;
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v60[0] = v21;
    *v20 = 136315394;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static SharingDirectInvocation.typeName, unk_2800C02C0, v60);
    *(v20 + 12) = 2080;
    v56(v11, v14, v2);
    v22 = String.init<A>(describing:)();
    v24 = v23;
    v25 = *(v58 + 8);
    v25(v14, v2);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v60);

    *(v20 + 14) = v26;
    _os_log_impl(&dword_266B9E000, v17, v18, "%s: Initializing SharingDirectInvocation from %s", v20, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5ED340](v21, -1, -1);
    MEMORY[0x26D5ED340](v20, -1, -1);

    v7 = v55;
  }

  else
  {

    v25 = *(v3 + 8);
    v25(v14, v2);
  }

  v27 = v57;
  if (Parse.DirectInvocation.identifier.getter() == 0xD000000000000027 && 0x8000000266BEE4D0 == v28)
  {

LABEL_12:
    v30 = Parse.DirectInvocation.userData.getter();
    if (v30)
    {
      v31 = v30;
      if (*(v30 + 16) && (v32 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000017, 0x8000000266BE97C0), (v33 & 1) != 0))
      {
        outlined init with copy of Any(*(v31 + 56) + 32 * v32, v60);

        if (swift_dynamicCast())
        {
          v34 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of SharingDirectInvocation.init(rawValue:), v59);

          v25(v27, v2);
          if (v34 == 1)
          {
            v35 = 1;
          }

          else
          {
            v35 = 2;
          }

          if (v34)
          {
            return v35;
          }

          else
          {
            return 0;
          }
        }
      }

      else
      {
      }

      v37 = Logger.logObject.getter();
      v38 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        v60[0] = v40;
        *v39 = 136315394;
        if (one-time initialization token for typeName != -1)
        {
          swift_once();
        }

        *(v39 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static SharingDirectInvocation.typeName, unk_2800C02C0, v60);
        *(v39 + 12) = 2080;
        *(v39 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000017, 0x8000000266BE97C0, v60);
        _os_log_impl(&dword_266B9E000, v37, v38, "%s: Cannot init SharingDirectInvocation from direct invocation without userData containing key '%s' with a String value", v39, 0x16u);
        v36 = 2;
        swift_arrayDestroy();
        MEMORY[0x26D5ED340](v40, -1, -1);
        MEMORY[0x26D5ED340](v39, -1, -1);

        v25(v27, v2);
        return v36;
      }
    }

    else
    {
      v37 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v37, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v60[0] = v43;
        *v42 = 136315138;
        if (one-time initialization token for typeName != -1)
        {
          swift_once();
        }

        *(v42 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static SharingDirectInvocation.typeName, unk_2800C02C0, v60);
        _os_log_impl(&dword_266B9E000, v37, v41, "%s: Cannot init SharingDirectInvocation from direct invocation with nil userData", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v43);
        MEMORY[0x26D5ED340](v43, -1, -1);
        MEMORY[0x26D5ED340](v42, -1, -1);
      }
    }

    v25(v27, v2);
    return 2;
  }

  v29 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v29)
  {
    goto LABEL_12;
  }

  v56(v7, v27, v2);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.error.getter();
  if (!os_log_type_enabled(v44, v45))
  {

    v25(v27, v2);
    v25(v7, v2);
    return 2;
  }

  v46 = v25;
  v47 = swift_slowAlloc();
  v48 = swift_slowAlloc();
  v60[0] = v48;
  *v47 = 136315394;
  if (one-time initialization token for typeName != -1)
  {
    swift_once();
  }

  *(v47 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static SharingDirectInvocation.typeName, unk_2800C02C0, v60);
  *(v47 + 12) = 2080;
  v49 = Parse.DirectInvocation.identifier.getter();
  v51 = v50;
  v46(v7, v2);
  v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v49, v51, v60);

  *(v47 + 14) = v52;
  _os_log_impl(&dword_266B9E000, v44, v45, "%s: Cannot init SharingDirectInvocation from direct invocation with identifier: %s", v47, 0x16u);
  swift_arrayDestroy();
  MEMORY[0x26D5ED340](v48, -1, -1);
  MEMORY[0x26D5ED340](v47, -1, -1);

  v46(v27, v2);
  return 2;
}

uint64_t outlined destroy of (AnyHashable, Any)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11AnyHashableV_yptMd, &_ss11AnyHashableV_yptMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t protocol witness for Contact.handles.getter in conformance <> Match<A, B>(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](a1, a2);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Match.value.getter();
  v6 = Contact.handles.getter();
  (*(v3 + 8))(v5, v2);
  return v6;
}

uint64_t specialized SharingIntent.reform()()
{
  v1 = type metadata accessor for UsoEntity_common_AttachmentType.DefinedValues();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1, v3);
  v62 = &v56 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMd, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMR);
  v6 = MEMORY[0x28223BE20](v61, v5);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v6, v9);
  v12 = &v56 - v11;
  v14 = MEMORY[0x28223BE20](v10, v13);
  v16 = &v56 - v15;
  MEMORY[0x28223BE20](v14, v17);
  v19 = &v56 - v18;
  v20 = type metadata accessor for SharingDirectInvocationIntent(0);
  v21 = v20[5];
  outlined init with copy of UsoEntity_common_AttachmentType.DefinedValues?(&v21[v0], v19);
  if ((*(v2 + 48))(v19, 1, v1))
  {
    outlined destroy of SharingResponse?(v19, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMd, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMR);
    return 0;
  }

  v57 = v8;
  v58 = v12;
  v60 = v0;
  v23 = v62;
  (*(v2 + 16))(v62, v19, v1);
  outlined destroy of SharingResponse?(v19, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMd, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMR);
  PartyAppBundle = UsoEntity_common_AttachmentType.DefinedValues.matchingFirstPartyAppBundleID.getter();
  v26 = v25;
  (*(v2 + 8))(v23, v1);
  if (!v26)
  {
    return 0;
  }

  v27 = v1;
  v62 = v21;
  v59 = v16;
  v28 = v20;
  v29 = v60;
  v30 = (v60 + v20[9]);

  *v30 = PartyAppBundle;
  v30[1] = v26;
  v31 = String.localizedAppDisplayName.getter(PartyAppBundle, v26);
  v33 = v32;

  if (v33)
  {
    v34 = (v29 + v20[7]);

    *v34 = v31;
    v34[1] = v33;
  }

  else
  {
    v35 = (v29 + v20[8]);
    v36 = v35[1];
    if (!v36)
    {
      v42 = &v62[v29];
      v43 = v58;
      outlined init with copy of UsoEntity_common_AttachmentType.DefinedValues?(v42, v58);
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v56 = v27;
      v44 = type metadata accessor for Logger();
      __swift_project_value_buffer(v44, static Logger.default);
      v45 = v57;
      outlined init with copy of UsoEntity_common_AttachmentType.DefinedValues?(v43, v57);
      v46 = Logger.logObject.getter();
      v47 = static os_log_type_t.error.getter();
      v48 = os_log_type_enabled(v46, v47);
      v40 = v59;
      if (v48)
      {
        v49 = swift_slowAlloc();
        v50 = swift_slowAlloc();
        v63 = v50;
        *v49 = 136315138;
        outlined init with copy of UsoEntity_common_AttachmentType.DefinedValues?(v45, v40);
        v51 = String.init<A>(describing:)();
        v53 = v52;
        outlined destroy of SharingResponse?(v45, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMd, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMR);
        v54 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v51, v53, &v63);

        *(v49 + 4) = v54;
        _os_log_impl(&dword_266B9E000, v46, v47, "SharingIntent: unable to determine appName for entity type=%s", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v50);
        MEMORY[0x26D5ED340](v50, -1, -1);
        MEMORY[0x26D5ED340](v49, -1, -1);

        v55 = v58;
      }

      else
      {

        outlined destroy of SharingResponse?(v45, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMd, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMR);
        v55 = v43;
      }

      outlined destroy of SharingResponse?(v55, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMd, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMR);
      v29 = v60;
      v27 = v56;
      goto LABEL_10;
    }

    v37 = *v35;
    v38 = v27;
    v39 = (v29 + v20[7]);

    *v39 = v37;
    v39[1] = v36;
    v27 = v38;
  }

  v40 = v59;
LABEL_10:
  (*(v2 + 56))(v40, 1, 1, v27);
  outlined assign with take of UsoEntity_common_AttachmentType.DefinedValues?(v40, &v62[v29]);
  v41 = (v29 + v28[8]);

  result = 1;
  *v41 = 0;
  v41[1] = 0;
  *(v29 + v28[6]) = 0;
  *(v29 + v28[21]) = 1;
  return result;
}

Swift::Bool __swiftcall SharingIntent.reform()()
{
  v3 = v1;
  v65 = v0;
  v4 = type metadata accessor for UsoEntity_common_AttachmentType.DefinedValues();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4, v6);
  v64 = &v55 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMd, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMR);
  v9 = MEMORY[0x28223BE20](v62, v8);
  v11 = &v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v9, v12);
  v15 = &v55 - v14;
  v17 = MEMORY[0x28223BE20](v13, v16);
  v19 = &v55 - v18;
  MEMORY[0x28223BE20](v17, v20);
  v22 = &v55 - v21;
  v23 = *(v3 + 24);
  v63 = v3;
  v23(v65, v3);
  if (v5[6](v22, 1, v4))
  {
    outlined destroy of SharingResponse?(v22, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMd, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMR);
    return 0;
  }

  v56 = (v3 + 24);
  v57 = v23;
  v59 = v19;
  v60 = v2;
  v58 = v15;
  v26 = v63;
  v25 = v64;
  v61 = v11;
  v5[2](v64, v22, v4);
  outlined destroy of SharingResponse?(v22, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMd, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMR);
  PartyAppBundle = UsoEntity_common_AttachmentType.DefinedValues.matchingFirstPartyAppBundleID.getter();
  v29 = v28;
  (v5[1])(v25, v4);
  if (!v29)
  {
    return 0;
  }

  v30 = v4;
  v64 = v5;
  v31 = v26;
  v32 = *(v26 + 128);

  v33 = v65;
  v32(PartyAppBundle, v29, v65, v31);
  v34 = String.localizedAppDisplayName.getter(PartyAppBundle, v29);
  v36 = v35;

  if (v36)
  {
    (*(v31 + 80))(v34, v36, v33, v31);
    v37 = v33;
  }

  else
  {
    v38 = (*(v31 + 96))(v33, v31);
    v37 = v33;
    if (!v39)
    {
      v42 = v59;
      v57(v33, v31);
      v40 = v64;
      v41 = v61;
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v43 = type metadata accessor for Logger();
      __swift_project_value_buffer(v43, static Logger.default);
      v44 = v58;
      outlined init with copy of UsoEntity_common_AttachmentType.DefinedValues?(v42, v58);
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        v56 = v47;
        v57 = swift_slowAlloc();
        v66 = v57;
        *v47 = 136315138;
        outlined init with copy of UsoEntity_common_AttachmentType.DefinedValues?(v44, v41);
        v48 = String.init<A>(describing:)();
        v50 = v49;
        outlined destroy of SharingResponse?(v44, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMd, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMR);
        v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, &v66);
        v37 = v65;

        v52 = v56;
        *(v56 + 1) = v51;
        v53 = v52;
        _os_log_impl(&dword_266B9E000, v45, v46, "SharingIntent: unable to determine appName for entity type=%s", v52, 0xCu);
        v54 = v57;
        __swift_destroy_boxed_opaque_existential_1Tm(v57);
        MEMORY[0x26D5ED340](v54, -1, -1);
        MEMORY[0x26D5ED340](v53, -1, -1);
      }

      else
      {

        outlined destroy of SharingResponse?(v44, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMd, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMR);
      }

      outlined destroy of SharingResponse?(v59, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMd, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMR);
      goto LABEL_10;
    }

    (*(v31 + 80))(v38, v39, v33, v31);
  }

  v40 = v64;
  v41 = v61;
LABEL_10:
  (*(v40 + 7))(v41, 1, 1, v30);
  (*(v31 + 32))(v41, v37, v31);
  (*(v31 + 104))(0, 0, v37, v31);
  (*(v31 + 56))(0, v37, v31);
  (*(v31 + 248))(1, v37, v31);
  return 1;
}

double static SharingIntentHelper.makeSharingIntentFrom(parse:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v156 = a2;
  v3 = type metadata accessor for Parse.DirectInvocation();
  v153 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3, v4);
  v155 = &v142 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v154 = &v142 - v9;
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v142 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
  MEMORY[0x28223BE20](v13 - 8, v14);
  v148 = &v142 - v15;
  v16 = type metadata accessor for Siri_Nlu_External_UserParse();
  v150 = *(v16 - 8);
  v151 = v16;
  v18 = MEMORY[0x28223BE20](v16, v17);
  v149 = (&v142 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18, v20);
  v152 = &v142 - v21;
  v22 = type metadata accessor for USOParse();
  v144 = *(v22 - 8);
  v145 = v22;
  v24 = MEMORY[0x28223BE20](v22, v23);
  v142 = &v142 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = MEMORY[0x28223BE20](v24, v26);
  v147 = &v142 - v28;
  MEMORY[0x28223BE20](v27, v29);
  v143 = &v142 - v30;
  v31 = type metadata accessor for Parse();
  v32 = *(v31 - 8);
  v34 = MEMORY[0x28223BE20](v31, v33);
  v36 = &v142 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = MEMORY[0x28223BE20](v34, v37);
  v146 = &v142 - v39;
  MEMORY[0x28223BE20](v38, v40);
  v42 = (&v142 - v41);
  v43 = *(v32 + 16);
  v43(&v142 - v41, a1, v31);
  v44 = (*(v32 + 88))(v42, v31);
  if (v44 == *MEMORY[0x277D5C150])
  {
    (*(v32 + 96))(v42, v31);
    v45 = v153;
    (*(v153 + 32))(v12, v42, v3);
    v46 = v3;
    v47 = v12;
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v48 = type metadata accessor for Logger();
    v49 = __swift_project_value_buffer(v48, static Logger.default);
    v50 = v154;
    v51 = *(v45 + 16);
    v51(v154, v12, v46);
    v152 = v49;
    v52 = Logger.logObject.getter();
    v53 = static os_log_type_t.debug.getter();
    v54 = os_log_type_enabled(v52, v53);
    v55 = v155;
    if (v54)
    {
      LODWORD(v150) = v53;
      v151 = v12;
      v56 = swift_slowAlloc();
      v149 = swift_slowAlloc();
      v157 = v149;
      *v56 = 136315394;
      if (one-time initialization token for typeName != -1)
      {
        swift_once();
      }

      *(v56 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static SharingIntentHelper.typeName, *algn_2800C02F8, &v157);
      *(v56 + 12) = 2080;
      v51(v55, v50, v46);
      v57 = String.init<A>(describing:)();
      v59 = v58;
      v60 = *(v45 + 8);
      v60(v50, v46);
      v61 = v57;
      v55 = v155;
      v62 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v61, v59, &v157);

      *(v56 + 14) = v62;
      _os_log_impl(&dword_266B9E000, v52, v150, "%s: Received .directInvocation parse with directInvocation: %s", v56, 0x16u);
      v63 = v149;
      swift_arrayDestroy();
      MEMORY[0x26D5ED340](v63, -1, -1);
      MEMORY[0x26D5ED340](v56, -1, -1);

      v47 = v151;
    }

    else
    {

      v82 = *(v45 + 8);
      v82(v50, v46);
      v60 = v82;
    }

    v155 = v46;
    v51(v55, v47, v46);
    v83 = specialized SharingDirectInvocation.init(from:)(v55);
    if (v83 == 2)
    {
      v84 = Logger.logObject.getter();
      v85 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v84, v85))
      {
        v86 = swift_slowAlloc();
        v87 = swift_slowAlloc();
        v157 = v87;
        *v86 = 136315138;
        if (one-time initialization token for typeName != -1)
        {
          swift_once();
        }

        *(v86 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static SharingIntentHelper.typeName, *algn_2800C02F8, &v157);
        _os_log_impl(&dword_266B9E000, v84, v85, "%s: Failed to construct SharingDirectInvocation from the provided directInvocation", v86, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v87);
        MEMORY[0x26D5ED340](v87, -1, -1);
        MEMORY[0x26D5ED340](v86, -1, -1);
      }

      v60(v47, v155);
LABEL_63:
      v141 = v156;
      *(v156 + 32) = 0;
      result = 0.0;
      *v141 = 0u;
      v141[1] = 0u;
      return result;
    }

    v104 = v83;
    v105 = Logger.logObject.getter();
    v106 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v105, v106))
    {
      v107 = v60;
      v108 = swift_slowAlloc();
      v109 = swift_slowAlloc();
      v159 = v109;
      *v108 = 136315394;
      if (one-time initialization token for typeName != -1)
      {
        swift_once();
      }

      *(v108 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static SharingIntentHelper.typeName, *algn_2800C02F8, &v159);
      *(v108 + 12) = 2080;
      v157 = 0;
      v158 = 0xE000000000000000;
      _StringGuts.grow(_:)(26);

      v157 = 0xD000000000000018;
      v158 = 0x8000000266BEE3E0;
      if (v104)
      {
        v110 = 0x7463656A6572;
      }

      else
      {
        v110 = 0x6D7269666E6F63;
      }

      if (v104)
      {
        v111 = 0xE600000000000000;
      }

      else
      {
        v111 = 0xE700000000000000;
      }

      MEMORY[0x26D5EC8A0](v110, v111);

      v112 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v157, v158, &v159);

      *(v108 + 14) = v112;
      _os_log_impl(&dword_266B9E000, v105, v106, "%s: SharingDirectInvocation initialized to %s", v108, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D5ED340](v109, -1, -1);
      MEMORY[0x26D5ED340](v108, -1, -1);

      v60 = v107;
    }

    else
    {
    }

    v132 = type metadata accessor for SharingDirectInvocationIntent(0);
    v133 = v156;
    *(v156 + 24) = v132;
    v133[4] = lazy protocol witness table accessor for type SharingDirectInvocationIntent and conformance SharingDirectInvocationIntent(&lazy protocol witness table cache variable for type SharingDirectInvocationIntent and conformance SharingDirectInvocationIntent, type metadata accessor for SharingDirectInvocationIntent, &protocol conformance descriptor for SharingDirectInvocationIntent);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v133);
    SharingDirectInvocationIntent.init(from:)(v104 & 1, boxed_opaque_existential_1);
    v60(v47, v155);
  }

  else
  {
    if (v44 == *MEMORY[0x277D5C130])
    {
      (*(v32 + 96))(v42, v31);
      v64 = *v42;
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v65 = type metadata accessor for Logger();
      __swift_project_value_buffer(v65, static Logger.default);
      swift_unknownObjectRetain();
      v66 = Logger.logObject.getter();
      v67 = static os_log_type_t.debug.getter();
      swift_unknownObjectRelease();
      v68 = os_log_type_enabled(v66, v67);
      v69 = v148;
      if (v68)
      {
        v70 = swift_slowAlloc();
        v71 = swift_slowAlloc();
        v157 = v71;
        *v70 = 136315394;
        if (one-time initialization token for typeName != -1)
        {
          swift_once();
        }

        *(v70 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static SharingIntentHelper.typeName, *algn_2800C02F8, &v157);
        *(v70 + 12) = 2080;
        v159 = v64;
        swift_unknownObjectRetain();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SIRINLUUserDialogAct_pMd, &_sSo20SIRINLUUserDialogAct_pMR);
        v72 = String.init<A>(describing:)();
        v74 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v73, &v157);

        *(v70 + 14) = v74;
        _os_log_impl(&dword_266B9E000, v66, v67, "%s: Received .NLv4IntentOnly parse with userDialogAct: %s", v70, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x26D5ED340](v71, -1, -1);
        MEMORY[0x26D5ED340](v70, -1, -1);
      }

      v75 = v151;
      v76 = v149;
      static ConversionUtils.toUserParse(from:)();
      v77 = v150;
      if ((*(v150 + 48))(v69, 1, v75) == 1)
      {
        outlined destroy of SharingResponse?(v69, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMd, &_s12SiriNLUTypes0A23_Nlu_External_UserParseVSgMR);
        v78 = Logger.logObject.getter();
        v79 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v78, v79))
        {
          v80 = swift_slowAlloc();
          v81 = swift_slowAlloc();
          v157 = v81;
          *v80 = 136315138;
          if (one-time initialization token for typeName != -1)
          {
            swift_once();
          }

          *(v80 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static SharingIntentHelper.typeName, *algn_2800C02F8, &v157);
          _os_log_impl(&dword_266B9E000, v78, v79, "%s: Failed to convert UserDialogAct to Siri_Nlu_External_UserParse", v80, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v81);
          MEMORY[0x26D5ED340](v81, -1, -1);
          MEMORY[0x26D5ED340](v80, -1, -1);
        }
      }

      else
      {
        (*(v77 + 32))(v76, v69, v75);
        v113 = v152;
        (*(v77 + 16))(v152, v76, v75);
        v114 = type metadata accessor for SharingNLv4Intent(0);
        swift_allocObject();
        v115 = SharingNLv4Intent.init(from:)(v113);
        if (v115)
        {
          v116 = v115;
          v117 = v156;
          *(v156 + 24) = v114;
          v117[4] = lazy protocol witness table accessor for type SharingDirectInvocationIntent and conformance SharingDirectInvocationIntent(&lazy protocol witness table cache variable for type SharingNLv4Intent and conformance SharingNLv4Intent, type metadata accessor for SharingNLv4Intent, &protocol conformance descriptor for SharingNLv4Intent);
          swift_unknownObjectRelease();
          *v117 = v116;
          (*(v77 + 8))(v76, v75);
          return result;
        }

        (*(v77 + 8))(v76, v75);
      }

      swift_unknownObjectRelease();
      goto LABEL_63;
    }

    if (v44 == *MEMORY[0x277D5C160])
    {
      (*(v32 + 96))(v42, v31);
      v89 = v143;
      v88 = v144;
      v90 = v145;
      (*(v144 + 32))(v143, v42, v145);
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v91 = type metadata accessor for Logger();
      __swift_project_value_buffer(v91, static Logger.default);
      v92 = *(v88 + 16);
      v93 = v147;
      v92(v147, v89, v90);
      v94 = Logger.logObject.getter();
      v95 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v94, v95))
      {
        v96 = swift_slowAlloc();
        v155 = swift_slowAlloc();
        v157 = v155;
        *v96 = 136315394;
        if (one-time initialization token for typeName != -1)
        {
          swift_once();
        }

        *(v96 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static SharingIntentHelper.typeName, *algn_2800C02F8, &v157);
        *(v96 + 12) = 2080;
        v97 = v147;
        v92(v142, v147, v90);
        v98 = String.init<A>(describing:)();
        v100 = v99;
        v101 = *(v88 + 8);
        v101(v97, v90);
        v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v100, &v157);

        *(v96 + 14) = v102;
        _os_log_impl(&dword_266B9E000, v94, v95, "%s: Received .uso parse with usoParse: %s", v96, 0x16u);
        v103 = v155;
        swift_arrayDestroy();
        MEMORY[0x26D5ED340](v103, -1, -1);
        MEMORY[0x26D5ED340](v96, -1, -1);
      }

      else
      {

        v101 = *(v88 + 8);
        v101(v93, v90);
      }

      v135 = v152;
      USOParse.userParse.getter();
      v136 = type metadata accessor for SharingNLv4Intent(0);
      swift_allocObject();
      v137 = SharingNLv4Intent.init(from:)(v135);
      if (v137)
      {
        v138 = v137;
        v139 = v156;
        *(v156 + 24) = v136;
        v139[4] = lazy protocol witness table accessor for type SharingDirectInvocationIntent and conformance SharingDirectInvocationIntent(&lazy protocol witness table cache variable for type SharingNLv4Intent and conformance SharingNLv4Intent, type metadata accessor for SharingNLv4Intent, &protocol conformance descriptor for SharingNLv4Intent);
        *v139 = v138;
        v101(v89, v90);
        return result;
      }

      v101(v89, v90);
      goto LABEL_63;
    }

    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v119 = type metadata accessor for Logger();
    __swift_project_value_buffer(v119, static Logger.default);
    v120 = v146;
    v43(v146, a1, v31);
    v121 = Logger.logObject.getter();
    v122 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v121, v122))
    {
      LODWORD(v154) = v122;
      v155 = v121;
      v123 = swift_slowAlloc();
      v124 = swift_slowAlloc();
      v157 = v124;
      *v123 = 136315394;
      if (one-time initialization token for typeName != -1)
      {
        swift_once();
      }

      *(v123 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static SharingIntentHelper.typeName, *algn_2800C02F8, &v157);
      *(v123 + 12) = 2080;
      v125 = v146;
      v43(v36, v146, v31);
      v126 = String.init<A>(describing:)();
      v128 = v127;
      v129 = *(v32 + 8);
      v129(v125, v31);
      v130 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v126, v128, &v157);

      *(v123 + 14) = v130;
      v131 = v155;
      _os_log_impl(&dword_266B9E000, v155, v154, "%s: Received parse of unexpected type: %s", v123, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D5ED340](v124, -1, -1);
      MEMORY[0x26D5ED340](v123, -1, -1);
    }

    else
    {

      v129 = *(v32 + 8);
      v129(v120, v31);
    }

    v140 = v156;
    *(v156 + 32) = 0;
    *v140 = 0u;
    v140[1] = 0u;
    v129(v42, v31);
  }

  return result;
}

uint64_t SharingIntent.shareTarget.getter@<X0>(uint64_t a1@<X0>, uint64_t (**a2)(uint64_t, uint64_t)@<X1>, uint64_t *a3@<X8>)
{
  v85 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMd, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMR);
  MEMORY[0x28223BE20](v6 - 8, v7);
  v9 = &v78 - v8;
  v10 = type metadata accessor for UsoEntity_common_AttachmentType.DefinedValues();
  v82 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10, v11);
  v14 = &v78 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x28223BE20](v12, v15);
  v18 = &v78 - v17;
  v81 = *(a1 - 8);
  MEMORY[0x28223BE20](v16, v19);
  v21 = &v78 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for Logger();
  v83 = *(v22 - 8);
  v84 = v22;
  MEMORY[0x28223BE20](v22, v23);
  v25 = &v78 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = a2[15](a1, a2);
  if (v27)
  {
    v28 = v27;
    v29 = a1;
    v82 = v3;
    v30 = v26;
    v31 = objc_allocWithZone(MEMORY[0x277CC1E70]);

    v79 = v30;
    v32 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(v30, v28, 0);
    v44 = v25;
    v45 = a2;
    v46 = v21;
    if (!v32)
    {
      v33 = v82;
      v34 = v29;
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v35 = v84;
      v36 = __swift_project_value_buffer(v84, static Logger.default);
      (*(v83 + 16))(v44, v36, v35);
      v37 = v45[9];
      v37(v34, v45);
      if (v38)
      {

        v39 = static os_log_type_t.debug.getter();
      }

      else
      {
        v39 = static os_log_type_t.error.getter();
      }

      v80 = v39;
      v48 = v81;
      (*(v81 + 16))(v46, v33, v34);
      v49 = Logger.logObject.getter();
      if (os_log_type_enabled(v49, v80))
      {
        v50 = swift_slowAlloc();
        v81 = swift_slowAlloc();
        v86[0] = v81;
        *v50 = 136315394;
        v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v28, v86);
        v79 = v49;
        v52 = v51;

        *(v50 + 4) = v52;
        *(v50 + 12) = 2080;
        v53 = v37(v34, v45);
        if (v54)
        {
          v55 = v53;
        }

        else
        {
          v55 = 7104878;
        }

        v56 = v37;
        if (v54)
        {
          v57 = v54;
        }

        else
        {
          v57 = 0xE300000000000000;
        }

        (*(v48 + 8))(v46, v34);
        v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v57, v86);
        v37 = v56;

        *(v50 + 14) = v58;
        v59 = v79;
        _os_log_impl(&dword_266B9E000, v79, v80, "SharingIntent: share target for appIdentifier=%s appName=%s not installed", v50, 0x16u);
        v60 = v81;
        swift_arrayDestroy();
        MEMORY[0x26D5ED340](v60, -1, -1);
        MEMORY[0x26D5ED340](v50, -1, -1);
      }

      else
      {

        (*(v48 + 8))(v46, v34);
      }

      (*(v83 + 8))(v44, v84);
      v61 = v37(v34, v45);
      if (v62)
      {
        v63 = v61;
      }

      else
      {
        v63 = 0;
      }

      v64 = 0xE000000000000000;
      if (v62)
      {
        v64 = v62;
      }

      v65 = v85;
      *v85 = v63;
      v65[1] = v64;
      type metadata accessor for ShareTarget(0);
      return swift_storeEnumTagMultiPayload();
    }

    if (v45[6](v29, v45))
    {
      v47 = v85;
      *v85 = v79;
      v47[1] = v28;
      type metadata accessor for ShareTarget(0);
    }

    else
    {
      if (v45[30](v29, v45))
      {
        v68 = 0;
      }

      else
      {
        v68 = 2;
      }

      v69 = v85;
      *v85 = v79;
      v69[1] = v28;
      *(v69 + 16) = v68;
      type metadata accessor for ShareTarget(0);
    }

    goto LABEL_36;
  }

  v40 = v82;
  v41 = a2[9](a1, a2);
  if (v42)
  {
    v43 = v85;
    *v85 = v41;
    v43[1] = v42;
    type metadata accessor for ShareTarget(0);
    goto LABEL_36;
  }

  v66 = a2[19](a1, a2);
  v67 = v85;
  if ((v66 & 1) != 0 || (a2[20](a1, a2) & 1) != 0 || (a2[21](a1, a2) & 1) != 0 || (a2[6](a1, a2) & 1) == 0)
  {
    type metadata accessor for ShareTarget(0);
LABEL_36:

    return swift_storeEnumTagMultiPayload();
  }

  a2[3](a1, a2);
  if ((*(v40 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of SharingResponse?(v9, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMd, &_s12SiriOntology31UsoEntity_common_AttachmentTypeC13DefinedValuesOSgMR);
LABEL_48:
    type metadata accessor for ShareTarget(0);
    *v67 = 0;
    v67[1] = 0;
    return swift_storeEnumTagMultiPayload();
  }

  v71 = *(v40 + 32);
  v71(v18, v9, v10);
  v72 = a2[26](a1, a2);
  if (!v72)
  {
    (*(v40 + 8))(v18, v10);
    v67 = v85;
    goto LABEL_48;
  }

  v73 = v72;
  (*(v40 + 16))(v14, v18, v10);
  v74 = (*(v40 + 88))(v14, v10);
  if (v74 == *MEMORY[0x277D5EF48] || v74 == *MEMORY[0x277D5EF08])
  {
    (*(v40 + 8))(v18, v10);

    type metadata accessor for ShareTarget(0);
    v77 = v85;
    *v85 = 0;
    v77[1] = 0;
    return swift_storeEnumTagMultiPayload();
  }

  v75 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology9UsoEntityC_AA0cD22_common_AttachmentTypeC13DefinedValuesO4typetMd, &_s12SiriOntology9UsoEntityC_AA0cD22_common_AttachmentTypeC13DefinedValuesO4typetMR) + 48);
  v76 = v85;
  *v85 = v73;
  v71(v76 + v75, v18, v10);
  type metadata accessor for ShareTarget(0);
  swift_storeEnumTagMultiPayload();
  return (*(v40 + 8))(v14, v10);
}

uint64_t SharingIntent.isExplicitShareViaMessagesIntent.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = v4();
  if (v5 > 1)
  {
    if (v5 == 2)
    {

      v7 = 1;
      return v7 & 1;
    }

LABEL_6:
    v8 = (v4)(a1, a2);
    if (v8 > 1)
    {
      if (v8 != 2)
      {
        goto LABEL_16;
      }
    }

    else if (!v8)
    {

LABEL_11:
      v10 = *(a2 + 144);
      v10(a1, a2);
      if (v11)
      {

        v12 = (v10)(a1, a2);
        if (!v13)
        {
          goto LABEL_3;
        }

        if (v12 != 0xD000000000000012 || v13 != 0x8000000266BEE5E0)
        {
          v15 = _stringCompareWithSmolCheck(_:_:expecting:)();

          v7 = v15 ^ 1;
          return v7 & 1;
        }
      }

LABEL_16:
      v7 = 0;
      return v7 & 1;
    }

    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      goto LABEL_16;
    }

    goto LABEL_11;
  }

  v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v6 & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_3:
  v7 = 1;
  return v7 & 1;
}

uint64_t SharingIntent.isExplicitShareInCallIntent.getter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v5 = v4();
  if (v5 > 1)
  {
    if (v5 != 2)
    {
      goto LABEL_6;
    }

    goto LABEL_5;
  }

  if (!v5)
  {
LABEL_5:
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
LABEL_14:
      v8 = 1;
      return v8 & 1;
    }

LABEL_6:
    v7 = (v4)(a1, a2);
    if (v7 > 1)
    {
      if (v7 != 2)
      {
        goto LABEL_19;
      }
    }

    else if (!v7)
    {

LABEL_13:
      if ((*(a2 + 200))(a1, a2))
      {
        goto LABEL_14;
      }

      v10 = (*(a2 + 144))(a1, a2);
      if (v11)
      {
        if (v10 == 0xD000000000000012 && v11 == 0x8000000266BEE5E0)
        {
          v8 = 1;
        }

        else
        {
          v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
        }

        goto LABEL_10;
      }

LABEL_19:
      v8 = 0;
      return v8 & 1;
    }

    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v9 & 1) == 0)
    {
      goto LABEL_19;
    }

    goto LABEL_13;
  }

  v8 = 1;
LABEL_10:

  return v8 & 1;
}

unint64_t UsoEntity_common_AttachmentType.DefinedValues.matchingFirstPartyAppBundleID.getter()
{
  v1 = v0;
  v2 = 0xD000000000000013;
  v3 = type metadata accessor for UsoEntity_common_AttachmentType.DefinedValues();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, v1, v3);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == *MEMORY[0x277D5EF50])
  {
    return 0xD00000000000001BLL;
  }

  if (v8 != *MEMORY[0x277D5EF78])
  {
    if (v8 == *MEMORY[0x277D5EF10])
    {
      return 0xD000000000000010;
    }

    else if (v8 == *MEMORY[0x277D5EF18])
    {
      return 0xD000000000000015;
    }

    else if (v8 != *MEMORY[0x277D5EF58])
    {
      if (v8 == *MEMORY[0x277D5EF30])
      {
        return 0xD000000000000019;
      }

      else if (v8 == *MEMORY[0x277D5EF60])
      {
        return 0xD000000000000012;
      }

      else
      {
        (*(v4 + 8))(v7, v3);
        return 0;
      }
    }
  }

  return v2;
}

id @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(uint64_t a1, uint64_t a2, char a3)
{
  v10[1] = *MEMORY[0x277D85DE8];
  v5 = MEMORY[0x26D5EC850](a1);

  v10[0] = 0;
  v6 = [v3 initWithBundleIdentifier:v5 allowPlaceholder:a3 & 1 error:v10];

  if (v6)
  {
    v7 = v10[0];
  }

  else
  {
    v8 = v10[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v6;
}

uint64_t lazy protocol witness table accessor for type SharingDirectInvocationIntent and conformance SharingDirectInvocationIntent(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance ResolvedRecipients()
{
  v1 = 0xD000000000000020;
  v2 = *v0;
  if (*v0 != 1)
  {
    _StringGuts.grow(_:)(42);
    MEMORY[0x26D5EC8A0](0xD000000000000027, 0x8000000266BEE630);
    specialized DefaultStringInterpolation.appendInterpolation<A>(_:)(v2);
    MEMORY[0x26D5EC8A0](41, 0xE100000000000000);
    return 0;
  }

  return v1;
}

uint64_t ScreenShareType.description.getter()
{
  if (one-time initialization token for typeName != -1)
  {
    swift_once();
  }

  v1 = static ScreenShareType.typeName;

  MEMORY[0x26D5EC8A0](0x6E65657263732ELL, 0xE700000000000000);
  return v1;
}

Swift::Int ScreenShareType.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x26D5ECD20](0);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type ScreenShareType and conformance ScreenShareType()
{
  result = lazy protocol witness table cache variable for type ScreenShareType and conformance ScreenShareType;
  if (!lazy protocol witness table cache variable for type ScreenShareType and conformance ScreenShareType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ScreenShareType and conformance ScreenShareType);
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ScreenShareType()
{
  if (one-time initialization token for typeName != -1)
  {
    swift_once();
  }

  v1 = static ScreenShareType.typeName;

  MEMORY[0x26D5EC8A0](0x6E65657263732ELL, 0xE700000000000000);
  return v1;
}

uint64_t type metadata completion function for SharingFlow(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t SharingFlow.on(input:)()
{
  v1 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.default);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v8 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v1 + 16), *(v1 + 24), &v8);
    _os_log_impl(&dword_266B9E000, v3, v4, "%s: on(input:) called. This should never happen.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D5ED340](v6, -1, -1);
    MEMORY[0x26D5ED340](v5, -1, -1);
  }

  return 0;
}

uint64_t SharingFlow.execute()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return MEMORY[0x2822009F8](SharingFlow.execute(), 0, 0);
}

uint64_t SharingFlow.execute()()
{
  v10 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.default);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v0 + 24);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v9 = v6;
    *v5 = 136315138;
    *(v5 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v4 + 16), *(v4 + 24), &v9);
    _os_log_impl(&dword_266B9E000, v2, v3, "%s: execute() called. This should never happen.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x26D5ED340](v6, -1, -1);
    MEMORY[0x26D5ED340](v5, -1, -1);
  }

  static ExecuteResponse.complete()();
  v7 = *(v0 + 8);

  return v7();
}

char *SharingFlow.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 104));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(*v0 + 112)));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(*v0 + 120)));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(*v0 + 128)));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(*v0 + 136)));
  return v0;
}

uint64_t SharingFlow.__deallocating_deinit()
{
  SharingFlow.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t getEnumTagSinglePayload for SharingFlowError(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SharingFlowError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t protocol witness for Flow.execute() in conformance SharingFlow<A>(uint64_t a1)
{
  v6 = (*(**v1 + 216) + **(**v1 + 216));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of SharingPromptFlowStrategy.makePrompt();

  return v6(a1);
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance SharingFlowError()
{
  v1 = *v0;
  v2 = 0x6F486E4F6C6C6163;
  v3 = 0x6C61436E49746F6ELL;
  v4 = 0xD000000000000012;
  if (v1 == 3)
  {
    v4 = 0xD000000000000014;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0xD000000000000010;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type SharingFlowError and conformance SharingFlowError()
{
  result = lazy protocol witness table cache variable for type SharingFlowError and conformance SharingFlowError;
  if (!lazy protocol witness table cache variable for type SharingFlowError and conformance SharingFlowError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SharingFlowError and conformance SharingFlowError);
  }

  return result;
}

uint64_t instantiation function for generic protocol witness table for SharingFlow<A>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t SharingYesNoPromptFlowStrategy.makePromptForYesNoResponse()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 16) = v3;
  v7 = *(a3 + 8);
  v10 = (*(v7 + 88) + **(v7 + 88));
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = SharingYesNoPromptFlowStrategy.makePromptForYesNoResponse();

  return v10(a1, a2, v7);
}

uint64_t SharingYesNoPromptFlowStrategy.makePromptForYesNoResponse()()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](SharingYesNoPromptFlowStrategy.makePromptForYesNoResponse(), 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t SharingYesNoPromptFlowStrategy.makeFlowCancelledResponse()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 16) = v3;
  v7 = *(a3 + 8);
  v10 = (*(v7 + 96) + **(v7 + 96));
  v8 = swift_task_alloc();
  *(v4 + 24) = v8;
  *v8 = v4;
  v8[1] = SharingYesNoPromptFlowStrategy.makeFlowCancelledResponse();

  return v10(a1, a2, v7);
}

uint64_t SharingYesNoPromptFlowStrategy.makeFlowCancelledResponse()()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](SharingYesNoPromptFlowStrategy.makeFlowCancelledResponse(), 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

{
  return (*(v0 + 8))();
}

id protocol witness for ConversationParticipant.handle.getter in conformance TUConversationParticipant()
{
  v1 = [*v0 handle];

  return v1;
}

unint64_t ExpanseFlowExitValue.description.getter()
{
  v1 = *v0;
  _StringGuts.grow(_:)(23);

  if (v1)
  {
    v2 = 0x656C646E61686E75;
  }

  else
  {
    v2 = 0x64656C646E6168;
  }

  if (v1)
  {
    v3 = 0xE900000000000064;
  }

  else
  {
    v3 = 0xE700000000000000;
  }

  MEMORY[0x26D5EC8A0](v2, v3);

  return 0xD000000000000015;
}

uint64_t ExpanseFlowExitValue.rawValue.getter()
{
  if (*v0)
  {
    return 0x656C646E61686E75;
  }

  else
  {
    return 0x64656C646E6168;
  }
}

SiriExpanseInternal::ExpanseFlowExitValue_optional __swiftcall ExpanseFlowExitValue.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ExpanseFlowExitValue.init(rawValue:), v3);

  if (v5 == 1)
  {
    v7 = 1;
  }

  else
  {
    v7 = 2;
  }

  if (!v5)
  {
    v7 = 0;
  }

  *v4 = v7;
  return result;
}

unint64_t lazy protocol witness table accessor for type ExpanseFlowExitValue and conformance ExpanseFlowExitValue()
{
  result = lazy protocol witness table cache variable for type ExpanseFlowExitValue and conformance ExpanseFlowExitValue;
  if (!lazy protocol witness table cache variable for type ExpanseFlowExitValue and conformance ExpanseFlowExitValue)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpanseFlowExitValue and conformance ExpanseFlowExitValue);
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ExpanseFlowExitValue()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ExpanseFlowExitValue(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ExpanseFlowExitValue(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ExpanseFlowExitValue@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ExpanseFlowExitValue.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance ExpanseFlowExitValue(uint64_t *a1@<X8>)
{
  v2 = 0x64656C646E6168;
  if (*v1)
  {
    v2 = 0x656C646E61686E75;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000064;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance ExpanseFlowExitValue(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656C646E61686E75;
  }

  else
  {
    v3 = 0x64656C646E6168;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE900000000000064;
  }

  if (*a2)
  {
    v5 = 0x656C646E61686E75;
  }

  else
  {
    v5 = 0x64656C646E6168;
  }

  if (*a2)
  {
    v6 = 0xE900000000000064;
  }

  else
  {
    v6 = 0xE700000000000000;
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

uint64_t specialized SharingPromptFlowStrategy.parseResponse(input:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for Input();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized SharingPromptFlowStrategy.parseResponse(input:), 0, 0);
}

{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for Input();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized SharingPromptFlowStrategy.parseResponse(input:), 0, 0);
}

{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  v4 = type metadata accessor for Input();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized SharingPromptFlowStrategy.parseResponse(input:), 0, 0);
}

uint64_t specialized SharingPromptFlowStrategy.parseResponse(input:)()
{
  v23 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[6];
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.default);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[9];
  v9 = v0[10];
  v11 = v0[8];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315138;
    lazy protocol witness table accessor for type SimpleSharingYesNoPromptFlowStrategy and conformance SimpleSharingYesNoPromptFlowStrategy(&lazy protocol witness table cache variable for type Input and conformance Input, MEMORY[0x277D5C118], MEMORY[0x277D5C120]);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v22);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_266B9E000, v6, v7, "SharingPromptFlowStrategy: parseResponse received input: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x26D5ED340](v13, -1, -1);
    MEMORY[0x26D5ED340](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[7];
  v19 = v0[5];
  swift_beginAccess();
  outlined init with copy of SharingResponse?(v18 + 136, v19, &_s19SiriExpanseInternal13SharingIntent_pSgMd, &_s19SiriExpanseInternal13SharingIntent_pSgMR);

  v20 = v0[1];

  return v20();
}

{
  v25 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[6];
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.default);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[9];
  v9 = v0[10];
  v11 = v0[8];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 136315138;
    lazy protocol witness table accessor for type SimpleSharingYesNoPromptFlowStrategy and conformance SimpleSharingYesNoPromptFlowStrategy(&lazy protocol witness table cache variable for type Input and conformance Input, MEMORY[0x277D5C118], MEMORY[0x277D5C120]);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v24);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_266B9E000, v6, v7, "SharingPromptFlowStrategy: parseResponse received input: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x26D5ED340](v13, -1, -1);
    MEMORY[0x26D5ED340](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[7];
  v19 = v0[5];
  v20 = OBJC_IVAR____TtC19SiriExpanseInternal36SimpleSharingYesNoPromptFlowStrategy_responseValue;
  swift_beginAccess();
  v21 = type metadata accessor for SimpleConfirmationResponseProvider();
  (*(*(v21 - 8) + 16))(v19, v18 + v20, v21);

  v22 = v0[1];

  return v22();
}

{
  v23 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v2 = v0[9];
  v1 = v0[10];
  v3 = v0[8];
  v4 = v0[6];
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.default);
  (*(v2 + 16))(v1, v4, v3);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.debug.getter();
  v8 = os_log_type_enabled(v6, v7);
  v10 = v0[9];
  v9 = v0[10];
  v11 = v0[8];
  if (v8)
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v22 = v13;
    *v12 = 136315138;
    lazy protocol witness table accessor for type SimpleSharingYesNoPromptFlowStrategy and conformance SimpleSharingYesNoPromptFlowStrategy(&lazy protocol witness table cache variable for type Input and conformance Input, MEMORY[0x277D5C118], MEMORY[0x277D5C120]);
    v14 = dispatch thunk of CustomStringConvertible.description.getter();
    v16 = v15;
    (*(v10 + 8))(v9, v11);
    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v16, &v22);

    *(v12 + 4) = v17;
    _os_log_impl(&dword_266B9E000, v6, v7, "SharingPromptFlowStrategy: parseResponse received input: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v13);
    MEMORY[0x26D5ED340](v13, -1, -1);
    MEMORY[0x26D5ED340](v12, -1, -1);
  }

  else
  {

    (*(v10 + 8))(v9, v11);
  }

  v18 = v0[7];
  v19 = v0[5];
  swift_beginAccess();
  outlined init with copy of SharingResponse?(v18 + 136, v19, &_s19SiriExpanseInternal43ConfirmScreenShareOrMessageSendFlowStrategyC8DecisionOSgMd, &_s19SiriExpanseInternal43ConfirmScreenShareOrMessageSendFlowStrategyC8DecisionOSgMR);

  v20 = v0[1];

  return v20();
}

uint64_t SimpleSharingYesNoPromptFlowStrategy.actionForIntent(_:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = &v28[-1] - v6;
  v8 = type metadata accessor for SimpleConfirmationResponseProvider();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8, v10);
  v12 = &v28[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v14 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v13);
  v15 = (*(v14 + 184))(v13, v14);
  if (v15 > 1)
  {
    if (v15 == 2)
    {

      return static ActionForInput.cancel()();
    }

    else
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v22 = type metadata accessor for Logger();
      __swift_project_value_buffer(v22, static Logger.default);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v26 = swift_slowAlloc();
        v28[0] = v26;
        *v25 = 136315138;
        if (one-time initialization token for typeName != -1)
        {
          swift_once();
        }

        *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static SimpleSharingYesNoPromptFlowStrategy.typeName, *algn_2800C03F8, v28);
        _os_log_impl(&dword_266B9E000, v23, v24, "%s: SharingIntent has no confirmation value; ignoring input.", v25, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v26);
        MEMORY[0x26D5ED340](v26, -1, -1);
        MEMORY[0x26D5ED340](v25, -1, -1);
      }

      return static ActionForInput.ignore()();
    }
  }

  else
  {
    if (v15)
    {
      v16 = MEMORY[0x277D5BED0];
    }

    else
    {
      v16 = MEMORY[0x277D5BED8];
    }

    v17 = *v16;
    v18 = type metadata accessor for ConfirmationResponse();
    v19 = *(v18 - 8);
    (*(v19 + 104))(v7, v17, v18);
    (*(v19 + 56))(v7, 0, 1, v18);
    SimpleConfirmationResponseProvider.init(_:)();
    v20 = OBJC_IVAR____TtC19SiriExpanseInternal36SimpleSharingYesNoPromptFlowStrategy_responseValue;
    swift_beginAccess();
    (*(v9 + 24))(v2 + v20, v12, v8);
    swift_endAccess();
    static ActionForInput.handle()();
    return (*(v9 + 8))(v12, v8);
  }
}

uint64_t SimpleSharingYesNoPromptFlowStrategy.makeConfirmationRejectedResponse()(uint64_t a1)
{
  *(v2 + 96) = a1;
  *(v2 + 104) = v1;
  return MEMORY[0x2822009F8](SimpleSharingYesNoPromptFlowStrategy.makeConfirmationRejectedResponse(), 0, 0);
}

uint64_t SimpleSharingYesNoPromptFlowStrategy.makeConfirmationRejectedResponse()()
{
  outlined init with copy of SharingResponse?(*(v0 + 104) + 56, v0 + 56, &_s19SiriExpanseInternal15SharingResponse_pSgMd, &_s19SiriExpanseInternal15SharingResponse_pSgMR);
  if (*(v0 + 80))
  {
    v1 = *(v0 + 104);
    outlined init with take of SharingResponse((v0 + 56), v0 + 16);
    __swift_project_boxed_opaque_existential_1((v1 + 136), *(v1 + 160));
    v2 = swift_task_alloc();
    *(v0 + 112) = v2;
    *v2 = v0;
    v2[1] = SimpleSharingYesNoPromptFlowStrategy.makeConfirmationRejectedResponse();
    v3 = *(v0 + 96);

    return ResponseExecutor.execute(response:)(v3, v0 + 16);
  }

  else
  {
    outlined destroy of SharingResponse?(v0 + 56);
    type metadata accessor for EmptyOutput();
    static EmptyOutput.instance.getter();
    v5 = *(v0 + 8);

    return v5();
  }
}

{
  *(*v1 + 120) = v0;

  if (v0)
  {
    v2 = SimpleSharingYesNoPromptFlowStrategy.makeConfirmationRejectedResponse();
  }

  else
  {
    v2 = SharingPromptFlowStrategy.makePrompt();
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t SimpleSharingYesNoPromptFlowStrategy.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  outlined destroy of SharingResponse?((v0 + 56));
  outlined destroy of SharingResponse?((v0 + 96));
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 17);
  v1 = OBJC_IVAR____TtC19SiriExpanseInternal36SimpleSharingYesNoPromptFlowStrategy_responseValue;
  v2 = type metadata accessor for SimpleConfirmationResponseProvider();
  (*(*(v2 - 8) + 8))(&v0[v1], v2);
  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v3, v4);
}

uint64_t type metadata accessor for SimpleSharingYesNoPromptFlowStrategy(uint64_t a1)
{
  result = type metadata singleton initialization cache for SimpleSharingYesNoPromptFlowStrategy;
  if (!type metadata singleton initialization cache for SimpleSharingYesNoPromptFlowStrategy)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for SimpleSharingYesNoPromptFlowStrategy(uint64_t a1)
{
  result = type metadata accessor for SimpleConfirmationResponseProvider();
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

uint64_t protocol witness for YesNoPromptFlowStrategy.makePromptForYesNoResponse() in conformance SimpleSharingYesNoPromptFlowStrategy(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = dispatch thunk of SharingPromptFlowStrategy.makePrompt();

  return SharingYesNoPromptFlowStrategy.makePromptForYesNoResponse()(a1, a2, WitnessTable);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.actionForInput(_:) in conformance SimpleSharingYesNoPromptFlowStrategy(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return SharingYesNoPromptFlowStrategy.actionForInput(_:)(a1, a2, WitnessTable);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.parseConfirmationResponse(input:) in conformance SimpleSharingYesNoPromptFlowStrategy(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for SharingPromptFlowStrategy.makeUserCancelledResponse() in conformance SimpleSharingYesNoPromptFlowStrategy;

  return specialized SharingPromptFlowStrategy.parseResponse(input:)(a1, a2);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makePromptForConfirmation(itemToConfirm:) in conformance SimpleSharingYesNoPromptFlowStrategy(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = type metadata accessor for SimpleSharingYesNoPromptFlowStrategy(0);
  v5 = lazy protocol witness table accessor for type SimpleSharingYesNoPromptFlowStrategy and conformance SimpleSharingYesNoPromptFlowStrategy(&lazy protocol witness table cache variable for type SimpleSharingYesNoPromptFlowStrategy and conformance SimpleSharingYesNoPromptFlowStrategy, type metadata accessor for SimpleSharingYesNoPromptFlowStrategy, "):d\x1B<a");
  *v3 = v1;
  v3[1] = protocol witness for SharingPromptFlowStrategy.makeUserCancelledResponse() in conformance SimpleSharingYesNoPromptFlowStrategy;

  return MEMORY[0x2821B9C20](a1, v4, v5);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeRepromptOnEmptyParse(itemToConfirm:) in conformance SimpleSharingYesNoPromptFlowStrategy(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = type metadata accessor for SimpleSharingYesNoPromptFlowStrategy(0);
  v5 = lazy protocol witness table accessor for type SimpleSharingYesNoPromptFlowStrategy and conformance SimpleSharingYesNoPromptFlowStrategy(&lazy protocol witness table cache variable for type SimpleSharingYesNoPromptFlowStrategy and conformance SimpleSharingYesNoPromptFlowStrategy, type metadata accessor for SimpleSharingYesNoPromptFlowStrategy, "):d\x1B<a");
  *v3 = v1;
  v3[1] = protocol witness for SharingPromptFlowStrategy.makeUserCancelledResponse() in conformance SimpleSharingYesNoPromptFlowStrategy;

  return MEMORY[0x2821B9C28](a1, v4, v5);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeRepromptOnLowConfidence(itemToConfirm:) in conformance SimpleSharingYesNoPromptFlowStrategy(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  v4 = type metadata accessor for SimpleSharingYesNoPromptFlowStrategy(0);
  v5 = lazy protocol witness table accessor for type SimpleSharingYesNoPromptFlowStrategy and conformance SimpleSharingYesNoPromptFlowStrategy(&lazy protocol witness table cache variable for type SimpleSharingYesNoPromptFlowStrategy and conformance SimpleSharingYesNoPromptFlowStrategy, type metadata accessor for SimpleSharingYesNoPromptFlowStrategy, "):d\x1B<a");
  *v3 = v1;
  v3[1] = protocol witness for SharingPromptFlowStrategy.makeUserCancelledResponse() in conformance SimpleSharingYesNoPromptFlowStrategy;

  return MEMORY[0x2821B9C30](a1, v4, v5);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeConfirmationRejectedResponse() in conformance SimpleSharingYesNoPromptFlowStrategy(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = protocol witness for SharingPromptFlowStrategy.makeUserCancelledResponse() in conformance SimpleSharingYesNoPromptFlowStrategy;

  return SimpleSharingYesNoPromptFlowStrategy.makeConfirmationRejectedResponse()(a1);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeFlowCancelledResponse() in conformance SimpleSharingYesNoPromptFlowStrategy(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = protocol witness for SharingPromptFlowStrategy.makeUserCancelledResponse() in conformance SimpleSharingYesNoPromptFlowStrategy;

  return SharingYesNoPromptFlowStrategy.makeFlowCancelledResponse()(a1, a2, WitnessTable);
}

uint64_t protocol witness for PromptForConfirmationFlowStrategyAsync.makeErrorResponse(_:) in conformance SimpleSharingYesNoPromptFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for SharingPromptFlowStrategy.makeUserCancelledResponse() in conformance SimpleSharingYesNoPromptFlowStrategy;

  return MEMORY[0x2821BA038](a1, a2, a3, a4);
}

uint64_t instantiation function for generic protocol witness table for SimpleSharingYesNoPromptFlowStrategy(uint64_t a1)
{
  result = lazy protocol witness table accessor for type SimpleSharingYesNoPromptFlowStrategy and conformance SimpleSharingYesNoPromptFlowStrategy(&lazy protocol witness table cache variable for type SimpleSharingYesNoPromptFlowStrategy and conformance SimpleSharingYesNoPromptFlowStrategy, type metadata accessor for SimpleSharingYesNoPromptFlowStrategy, "):d\x1B<a");
  *(a1 + 16) = result;
  return result;
}

uint64_t lazy protocol witness table accessor for type SimpleSharingYesNoPromptFlowStrategy and conformance SimpleSharingYesNoPromptFlowStrategy(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with copy of SharingResponse?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t outlined destroy of SharingResponse?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal15SharingResponse_pSgMd, &_s19SiriExpanseInternal15SharingResponse_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t one-time initialization function for options()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, _ss23_ContiguousArrayStorageCySSGMR);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_266BEA050;
  MEMORY[0x26D5EC8A0](0x592E65756C61562ELL, 0xEA00000000005345);
  *(v0 + 32) = 0xD000000000000025;
  *(v0 + 40) = 0x8000000266BEDEF0;
  MEMORY[0x26D5EC8A0](0x4E2E65756C61562ELL, 0xE90000000000004FLL);
  *(v0 + 48) = 0xD000000000000025;
  *(v0 + 56) = 0x8000000266BEDEF0;
  result = MEMORY[0x26D5EC8A0](0x432E65756C61562ELL, 0xED00004C45434E41);
  *(v0 + 64) = 0xD000000000000025;
  *(v0 + 72) = 0x8000000266BEDEF0;
  static SharingNLContextProvider.PromptResponse.Confirmation.options = v0;
  return result;
}

uint64_t static SharingNLContextProvider.makeNLContextUpdateForShareTargetPrompt()()
{
  NLContextUpdate.init()();
  NLContextUpdate.weightedPromptTargetDomain.setter();
  type metadata accessor for UsoEntityBuilder_common_Message();
  swift_allocObject();
  UsoEntityBuilder_common_Message.init()();
  type metadata accessor for UsoEntityBuilder_common_Attachment();
  swift_allocObject();
  UsoEntityBuilder_common_Attachment.init()();
  dispatch thunk of UsoEntityBuilder_common_Message.addAttachments(value:)();
  type metadata accessor for UsoTaskBuilder_share_common_Message();
  swift_allocObject();
  v0 = UsoTaskBuilder_share_common_Message.init()();
  dispatch thunk of Uso_VerbTemplateBuilder_Target.setTarget(value:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
  v1 = *(type metadata accessor for Siri_Nlu_External_SystemDialogAct() - 8);
  v2 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_266BE97B0;
  static SharingNLContextProvider.makePromptedSystemDialogAct(for:)(v0, v3 + v2);
  NLContextUpdate.nluSystemDialogActs.setter();
}

uint64_t static SharingNLContextProvider.makePromptedSystemDialogAct(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v22[1] = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  MEMORY[0x28223BE20](v4 - 8, v5);
  v7 = v22 - v6;
  v8 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  MEMORY[0x28223BE20](v8 - 8, v9);
  v23 = type metadata accessor for Siri_Nlu_External_SystemPrompted();
  v10 = *(v23 - 8);
  v12 = MEMORY[0x28223BE20](v23, v11);
  v14 = v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12, v15);
  v17 = v22 - v16;
  Siri_Nlu_External_SystemPrompted.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_266BEA060;
  *(v18 + 32) = a1;
  v19 = type metadata accessor for UsoBuilderOptions();
  (*(*(v19 - 8) + 56))(v7, 1, 1, v19);

  MEMORY[0x26D5EC2D0](v18, v7);

  outlined destroy of UsoBuilderOptions?(v7);
  static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)();
  if (v2)
  {
    (*(v10 + 8))(v17, v23);
  }

  else
  {

    Siri_Nlu_External_SystemPrompted.target.setter();
    Siri_Nlu_External_SystemDialogAct.init()();
    v21 = v23;
    (*(v10 + 16))(v14, v17, v23);
    Siri_Nlu_External_SystemDialogAct.prompted.setter();
    return (*(v10 + 8))(v17, v21);
  }
}

uint64_t static SharingNLContextProvider.makeNLContextUpdateForConfirmationPrompt(sharingAction:)(char a1)
{
  NLContextUpdate.init()();
  NLContextUpdate.weightedPromptTargetDomain.setter();
  NLContextUpdate.weightedPromptResponseTargets.setter();
  if (one-time initialization token for options != -1)
  {
    swift_once();
  }

  NLContextUpdate.weightedPromptResponseOptions.setter();
  NLContextUpdate.weightedPromptStrict.setter();
  if (a1)
  {
    type metadata accessor for UsoTaskBuilder_unshare_common_Message();
    swift_allocObject();
    UsoTaskBuilder_unshare_common_Message.init()();
  }

  else
  {
    type metadata accessor for UsoTaskBuilder_share_common_Message();
    swift_allocObject();
    UsoTaskBuilder_share_common_Message.init()();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D29_Nlu_External_SystemDialogActVGMR);
  v2 = *(type metadata accessor for Siri_Nlu_External_SystemDialogAct() - 8);
  v3 = (*(v2 + 80) + 32) & ~*(v2 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_266BE97B0;

  static SharingNLContextProvider.makeConfirmationSystemDialogAct(for:)(v5, v4 + v3);

  NLContextUpdate.nluSystemDialogActs.setter();
}

uint64_t static SharingNLContextProvider.makeConfirmationSystemDialogAct(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v43 = type metadata accessor for Siri_Nlu_External_SystemOffered();
  v41 = *(v43 - 8);
  v4 = MEMORY[0x28223BE20](v43, v3);
  v40 = &v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4, v6);
  v37 = &v36 - v7;
  v44 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v39 = *(v44 - 8);
  v9 = MEMORY[0x28223BE20](v44, v8);
  v38 = &v36 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9, v11);
  v13 = &v36 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  MEMORY[0x28223BE20](v14 - 8, v15);
  v17 = &v36 - v16;
  v18 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  MEMORY[0x28223BE20](v18 - 8, v19);
  v46 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed();
  v20 = *(v46 - 8);
  v22 = MEMORY[0x28223BE20](v46, v21);
  v24 = &v36 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22, v25);
  v27 = &v36 - v26;
  Siri_Nlu_External_UserWantedToProceed.init()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_266BEA060;
  *(v28 + 32) = a1;
  v29 = type metadata accessor for UsoBuilderOptions();
  (*(*(v29 - 8) + 56))(v17, 1, 1, v29);

  MEMORY[0x26D5EC2D0](v28, v17);

  outlined destroy of UsoBuilderOptions?(v17);
  v30 = v45;
  static UsoGraphProtoWriter.toSwiftProtobuf(graph:vocabManager:)();
  if (v30)
  {
    (*(v20 + 8))(v27, v46);
  }

  else
  {

    Siri_Nlu_External_UserWantedToProceed.reference.setter();
    Siri_Nlu_External_UserDialogAct.init()();
    v36 = v20;
    (*(v20 + 16))(v24, v27, v46);
    Siri_Nlu_External_UserDialogAct.wantedToProceed.setter();
    v32 = v37;
    Siri_Nlu_External_SystemOffered.init()();
    v33 = v39;
    (*(v39 + 16))(v38, v13, v44);
    Siri_Nlu_External_SystemOffered.offeredAct.setter();
    Siri_Nlu_External_SystemDialogAct.init()();
    v34 = v41;
    v35 = v43;
    (*(v41 + 16))(v40, v32, v43);
    Siri_Nlu_External_SystemDialogAct.offered.setter();
    (*(v34 + 8))(v32, v35);
    (*(v33 + 8))(v13, v44);
    return (*(v36 + 8))(v27, v46);
  }
}

uint64_t outlined destroy of UsoBuilderOptions?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology17UsoBuilderOptionsVSgMd, &_s12SiriOntology17UsoBuilderOptionsVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NeedsShareTargetFlowStrategy.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  outlined destroy of SharingResponse?(v0 + 56, &_s19SiriExpanseInternal15SharingResponse_pSgMd, &_s19SiriExpanseInternal15SharingResponse_pSgMR);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 96));
  outlined destroy of SharingResponse?(v0 + 136, &_s19SiriExpanseInternal13SharingIntent_pSgMd, &_s19SiriExpanseInternal13SharingIntent_pSgMR);

  return MEMORY[0x2821FE8D8](v0, 176, 7);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.actionForInput(_:) in conformance NeedsShareTargetFlowStrategy(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();

  return SharingYesNoPromptFlowStrategy.actionForInput(_:)(a1, a2, WitnessTable);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance NeedsShareTargetFlowStrategy(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance NeedsShareTargetFlowStrategy;

  return specialized SharingPromptFlowStrategy.parseResponse(input:)(a1, a2);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance NeedsShareTargetFlowStrategy()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x2822009F8](protocol witness for PromptForValueFlowStrategyAsync.parseValueResponse(input:) in conformance NeedsShareTargetFlowStrategy, 0, 0);
  }
}

{
  return (*(v0 + 8))();
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makePromptForValue() in conformance NeedsShareTargetFlowStrategy(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = protocol witness for SharingPromptFlowStrategy.makeUserCancelledResponse() in conformance SimpleSharingYesNoPromptFlowStrategy;

  return SharingYesNoPromptFlowStrategy.makePromptForYesNoResponse()(a1, a2, WitnessTable);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnEmptyParse() in conformance NeedsShareTargetFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for SharingPromptFlowStrategy.makeUserCancelledResponse() in conformance SimpleSharingYesNoPromptFlowStrategy;

  return MEMORY[0x2821B9D48](a1, a2, a3);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makeRepromptOnLowConfidence() in conformance NeedsShareTargetFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for SharingPromptFlowStrategy.makeUserCancelledResponse() in conformance SimpleSharingYesNoPromptFlowStrategy;

  return MEMORY[0x2821B9D50](a1, a2, a3);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makeFlowCancelledResponse() in conformance NeedsShareTargetFlowStrategy(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  WitnessTable = swift_getWitnessTable();
  *v5 = v2;
  v5[1] = dispatch thunk of SharingPromptFlowStrategy.makePrompt();

  return SharingYesNoPromptFlowStrategy.makeFlowCancelledResponse()(a1, a2, WitnessTable);
}

uint64_t protocol witness for PromptForValueFlowStrategyAsync.makeErrorResponse(_:) in conformance NeedsShareTargetFlowStrategy(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = protocol witness for SharingPromptFlowStrategy.makeUserCancelledResponse() in conformance SimpleSharingYesNoPromptFlowStrategy;

  return MEMORY[0x2821B9D40](a1, a2, a3, a4);
}

uint64_t protocol witness for SharingPromptFlowStrategy.actionForIntent(_:) in conformance NeedsShareTargetFlowStrategy(uint64_t a1)
{
  v2 = *v1;
  outlined init with copy of ResponseExecuting(a1, v4);
  swift_beginAccess();
  outlined assign with take of SharingIntent?(v4, v2 + 136);
  swift_endAccess();
  return static ActionForInput.handle()();
}

unint64_t instantiation function for generic protocol witness table for NeedsShareTargetFlowStrategy(uint64_t a1)
{
  result = lazy protocol witness table accessor for type NeedsShareTargetFlowStrategy and conformance NeedsShareTargetFlowStrategy();
  *(a1 + 16) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type NeedsShareTargetFlowStrategy and conformance NeedsShareTargetFlowStrategy()
{
  result = lazy protocol witness table cache variable for type NeedsShareTargetFlowStrategy and conformance NeedsShareTargetFlowStrategy;
  if (!lazy protocol witness table cache variable for type NeedsShareTargetFlowStrategy and conformance NeedsShareTargetFlowStrategy)
  {
    type metadata accessor for NeedsShareTargetFlowStrategy();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type NeedsShareTargetFlowStrategy and conformance NeedsShareTargetFlowStrategy);
  }

  return result;
}

uint64_t outlined assign with take of SharingIntent?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal13SharingIntent_pSgMd, &_s19SiriExpanseInternal13SharingIntent_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of SharingResponse?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal15SharingResponse_pSgMd, &_s19SiriExpanseInternal15SharingResponse_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t StartSharingConfirmationFlow.State.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = *(v0 + 48);
  v8 = (v7 >> 4) & 3;
  if (v8)
  {
    if (v8 == 1)
    {
      _StringGuts.grow(_:)(26);
      MEMORY[0x26D5EC8A0](0xD000000000000017, 0x8000000266BEE890);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, _ss5Error_pMR);
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x26D5EC8A0](41, 0xE100000000000000);
      return 0;
    }

    else if (v4 | v2 | v1 | v3 | v5 | v6 || v7 != 32)
    {
      result = 0xD000000000000010;
      v10 = v4 | v2 | v3 | v5 | v6;
      if (v7 == 32 && v1 == 1 && !v10)
      {
        return 0xD000000000000014;
      }

      else if (v7 == 32 && v1 == 2 && !v10)
      {
        return 0xD000000000000016;
      }

      else if (v7 == 32 && v1 == 3 && !v10)
      {
        return 0xD00000000000002DLL;
      }

      else if (v7 != 32 || v1 != 4 || v10)
      {
        return 0xD00000000000001ELL;
      }
    }

    else
    {
      return 0x696C616974696E69;
    }
  }

  else
  {
    _StringGuts.grow(_:)(18);
    MEMORY[0x26D5EC8A0](0x43687469576E7572, 0xEF28747865746E6FLL);
    _print_unlocked<A, B>(_:_:)();
    MEMORY[0x26D5EC8A0](41, 0xE100000000000000);
    return 0;
  }

  return result;
}

void StartSharingConfirmationFlow.state.didset(uint64_t a1)
{
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v3 = type metadata accessor for Logger();
  __swift_project_value_buffer(v3, static Logger.default);
  outlined init with copy of StartSharingConfirmationFlow.State(a1, v18);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.debug.getter();
  outlined destroy of StartSharingConfirmationFlow.State(a1);

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315650;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingConfirmationFlow.typeName, unk_2800C0490, &v17);
    *(v6 + 12) = 2080;
    started = StartSharingConfirmationFlow.State.description.getter();
    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(started, v9, &v17);

    *(v6 + 14) = v10;
    *(v6 + 22) = 2080;
    v11 = *(v1 + 32);
    v18[0] = *(v1 + 16);
    v18[1] = v11;
    v18[2] = *(v1 + 48);
    v19 = *(v1 + 64);
    outlined init with copy of StartSharingConfirmationFlow.State(v18, &v16);
    v12 = StartSharingConfirmationFlow.State.description.getter();
    v14 = v13;
    outlined destroy of StartSharingConfirmationFlow.State(v18);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v17);

    *(v6 + 24) = v15;
    _os_log_impl(&dword_266B9E000, v4, v5, "%s: transitioned from state %s to %s", v6, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x26D5ED340](v7, -1, -1);
    MEMORY[0x26D5ED340](v6, -1, -1);
  }
}

unint64_t StartSharingConfirmationFlow.exitValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 64);
  v3 = (v2 >> 4) & 3;
  if (!v3)
  {
    goto LABEL_12;
  }

  if (v3 == 1)
  {
    v4 = v1;
    return v1;
  }

  v6 = *(v0 + 40);
  v7 = *(v0 + 48) | *(v0 + 56);
  v8 = *(v0 + 32) | *(v0 + 24);
  if (v2 == 32 && (v7 | v1 | v6 | v8) == 0)
  {
LABEL_12:
    if (one-time initialization token for default != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.default);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v24 = v15;
      *v14 = 136315394;
      if (one-time initialization token for typeName != -1)
      {
        swift_once();
      }

      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingConfirmationFlow.typeName, unk_2800C0490, &v24);
      *(v14 + 12) = 2080;
      v16 = *(v0 + 32);
      v25[0] = *(v0 + 16);
      v25[1] = v16;
      v25[2] = *(v0 + 48);
      v26 = *(v0 + 64);
      outlined init with copy of StartSharingConfirmationFlow.State(v25, &v23);
      started = StartSharingConfirmationFlow.State.description.getter();
      v19 = v18;
      outlined destroy of StartSharingConfirmationFlow.State(v25);
      v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(started, v19, &v24);

      *(v14 + 14) = v20;
      _os_log_impl(&dword_266B9E000, v12, v13, "%s: exitValue accessed with flow in unexpected state %s", v14, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x26D5ED340](v15, -1, -1);
      MEMORY[0x26D5ED340](v14, -1, -1);
    }

    lazy protocol witness table accessor for type ExpanseError and conformance ExpanseError();
    return swift_allocError();
  }

  else
  {
    v10 = v7 | v6 | v8;
    if (v2 == 32 && v1 == 1 && !v10)
    {
      return 0;
    }

    else if (v2 == 32 && v1 == 2 && !v10)
    {
      return 1;
    }

    else if (v2 == 32 && v1 == 3 && !v10)
    {
      return 2;
    }

    else
    {
      if (v10)
      {
        v21 = 0;
      }

      else
      {
        v21 = v1 == 4;
      }

      if (v21 && v2 == 32)
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

uint64_t StartSharingConfirmationFlow.execute()(uint64_t a1)
{
  *(v2 + 464) = a1;
  *(v2 + 472) = v1;
  return MEMORY[0x2822009F8](StartSharingConfirmationFlow.execute(), 0, 0);
}

{
  v2 = *(v1 + 472);
  v3 = *(v2 + 16);
  v4 = *(v2 + 24);
  v6 = *(v2 + 32);
  v5 = *(v2 + 40);
  v8 = *(v2 + 48);
  v7 = *(v2 + 56);
  v9 = *(v2 + 64);
  v10 = (v9 >> 4) & 3;
  if (!v10)
  {
    if (v9 >> 6)
    {
      v11 = *(v1 + 464);
      if (v9 >> 6 == 1)
      {
        outlined copy of ConfirmationContext(v3, v4, *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64));
        StartSharingConfirmationFlow.confirmationFlowForScreenContext(_:)(v3, v4 & 1, v11);
      }

      else
      {
        outlined copy of StartSharingConfirmationFlow.State(v3, v4, *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64));

        StartSharingConfirmationFlow.confirmSingleWindowSharingRequestOnPlatformWithoutSupport(currentlySharedTarget:requestedRecipients:)(v5 & 1, v6, v11);
      }
    }

    else
    {
      v15 = *(v1 + 464);
      if ((v8 & 0x10000) != 0)
      {
        outlined copy of ConfirmationContext(v3, v4, *(v2 + 32), *(v2 + 40), *(v2 + 48), *(v2 + 56), *(v2 + 64));
        StartSharingConfirmationFlow.confirmSingleWindowSharingRequestOnPlatformWithoutSupport(currentlySharedTarget:requestedRecipients:)(v9 & 1, v7, v15);
      }

      else
      {
        v16 = *(v2 + 16);
        v17 = *(v2 + 32);
        v18 = *(v2 + 48);
        *(v1 + 64) = *(v2 + 64);
        *(v1 + 32) = v17;
        *(v1 + 48) = v18;
        *(v1 + 16) = v16;
        *(v2 + 16) = 2;
        *(v2 + 24) = 0u;
        *(v2 + 40) = 0u;
        *(v2 + 56) = 0;
        *(v2 + 64) = 32;
        outlined copy of StartSharingConfirmationFlow.State(v3, v4, v6, v5, v8, v7, v9);
        outlined init with copy of StartSharingConfirmationFlow.State(v1 + 16, v1 + 240);
        outlined consume of StartSharingConfirmationFlow.State(v3, v4, v6, v5, v8, v7, v9);
        StartSharingConfirmationFlow.state.didset(v1 + 16);
        outlined destroy of StartSharingConfirmationFlow.State(v1 + 16);
        static ExecuteResponse.complete()();
      }
    }

    outlined consume of StartSharingConfirmationFlow.State(v3, v4, v6, v5, v8, v7, v9);
    goto LABEL_20;
  }

  if (v10 == 1 || (v9 == 32 ? (v12 = (v6 | v4 | v3 | v5 | v8 | v7) == 0) : (v12 = 0), !v12))
  {
    static ExecuteResponse.complete()();
LABEL_20:
    v19 = *(v1 + 8);

    return v19();
  }

  v13 = swift_task_alloc();
  *(v1 + 480) = v13;
  *v13 = v1;
  v13[1] = StartSharingConfirmationFlow.execute();

  return StartSharingConfirmationFlow.makeConfirmationContext()(v1 + 184);
}

uint64_t StartSharingConfirmationFlow.execute()()
{
  v2 = *v1;
  *(*v1 + 488) = v0;

  if (v0)
  {
    v3 = StartSharingConfirmationFlow.execute();
  }

  else
  {
    v4 = *(v2 + 200);
    *(v2 + 496) = *(v2 + 184);
    *(v2 + 512) = v4;
    *(v2 + 528) = *(v2 + 216);
    *(v2 + 65) = *(v2 + 232);
    v3 = StartSharingConfirmationFlow.execute();
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 65);
  v2 = *(v0 + 472);
  v3 = *(v0 + 496);
  v4 = *(v0 + 512);
  v5 = *(v0 + 528);
  v7 = *(v2 + 32);
  v6 = *(v2 + 48);
  v8 = *(v2 + 16);
  *(v0 + 176) = *(v2 + 64);
  *(v0 + 144) = v7;
  *(v0 + 160) = v6;
  *(v0 + 128) = v8;
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v11 = *(v2 + 32);
  v12 = *(v2 + 40);
  v13 = *(v2 + 48);
  v14 = *(v2 + 56);
  *(v2 + 16) = v3;
  *(v2 + 32) = v4;
  *(v2 + 48) = v5;
  v15 = *(v2 + 64);
  *(v2 + 64) = v1;
  outlined init with copy of StartSharingConfirmationFlow.State(v0 + 128, v0 + 352);
  outlined init with copy of ConfirmationContext(v0 + 184, v0 + 408);
  outlined consume of StartSharingConfirmationFlow.State(v9, v10, v11, v12, v13, v14, v15);
  StartSharingConfirmationFlow.state.didset(v0 + 128);
  outlined destroy of StartSharingConfirmationFlow.State(v0 + 128);
  outlined destroy of ConfirmationContext(v0 + 184);
  static ExecuteResponse.ongoing(requireInput:)();
  v16 = *(v0 + 8);

  return v16();
}

{
  v29 = v0;
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 488);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.default);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v28 = v8;
    *v6 = 136315394;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    v9 = *(v0 + 488);
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingConfirmationFlow.typeName, unk_2800C0490, &v28);
    *(v6 + 12) = 2112;
    v10 = v9;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v11;
    *v7 = v11;
    _os_log_impl(&dword_266B9E000, v4, v5, "%s: Failed to initialize ConfirmationContext with error: %@", v6, 0x16u);
    outlined destroy of SharingResponse?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x26D5ED340](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x26D5ED340](v8, -1, -1);
    MEMORY[0x26D5ED340](v6, -1, -1);
  }

  v12 = *(v0 + 488);
  v13 = *(v0 + 472);
  v15 = *(v13 + 32);
  v14 = *(v13 + 48);
  v16 = *(v13 + 64);
  *(v0 + 72) = *(v13 + 16);
  *(v0 + 120) = v16;
  *(v0 + 104) = v14;
  *(v0 + 88) = v15;
  v17 = *(v13 + 16);
  v18 = *(v13 + 24);
  v19 = *(v13 + 32);
  v20 = *(v13 + 40);
  v21 = *(v13 + 48);
  v22 = *(v13 + 56);
  *(v13 + 16) = v12;
  *(v13 + 24) = 0u;
  *(v13 + 40) = 0u;
  *(v13 + 56) = 0;
  v23 = *(v13 + 64);
  *(v13 + 64) = 16;
  v24 = v12;
  v25 = v12;
  outlined init with copy of StartSharingConfirmationFlow.State(v0 + 72, v0 + 296);
  outlined consume of StartSharingConfirmationFlow.State(v17, v18, v19, v20, v21, v22, v23);
  StartSharingConfirmationFlow.state.didset(v0 + 72);
  outlined destroy of StartSharingConfirmationFlow.State(v0 + 72);

  static ExecuteResponse.ongoing(requireInput:)();
  v26 = *(v0 + 8);

  return v26();
}

uint64_t StartSharingConfirmationFlow.makeConfirmationContext()(uint64_t a1)
{
  v2[12] = a1;
  v2[13] = v1;
  v3 = type metadata accessor for UsoEntity_common_AttachmentType.DefinedValues();
  v2[14] = v3;
  v2[15] = *(v3 - 8);
  v2[16] = swift_task_alloc();
  v2[17] = type metadata accessor for ShareTarget(0);
  v2[18] = swift_task_alloc();
  v2[19] = swift_task_alloc();

  return MEMORY[0x2822009F8](StartSharingConfirmationFlow.makeConfirmationContext(), 0, 0);
}

uint64_t StartSharingConfirmationFlow.makeConfirmationContext()()
{
  v1 = v0[19];
  v2 = v0[13];
  outlined init with copy of ResponseExecuting(v2 + 72, (v0 + 2));
  outlined init with copy of Responses.StartSharing.ConfirmShareEntireScreen(v2 + OBJC_IVAR____TtC19SiriExpanseInternal28StartSharingConfirmationFlow_requestedTarget, v1, type metadata accessor for ShareTarget);
  v3 = *(v2 + OBJC_IVAR____TtC19SiriExpanseInternal28StartSharingConfirmationFlow_resolvedTarget);
  v4 = *(v2 + OBJC_IVAR____TtC19SiriExpanseInternal28StartSharingConfirmationFlow_resolvedTarget + 8);
  v5 = *(v2 + OBJC_IVAR____TtC19SiriExpanseInternal28StartSharingConfirmationFlow_recipients);
  outlined init with copy of ResponseExecuting(v2 + OBJC_IVAR____TtC19SiriExpanseInternal28StartSharingConfirmationFlow_call, (v0 + 7));

  specialized static ConfirmationContext.getCurrentlySharedTarget(in:)(v0 + 7);
  v7 = v6;
  v8 = v0[19];
  if (!v4)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
    outlined destroy of Responses.StartSharing.ConfirmShareEntireScreen(v8, type metadata accessor for ShareTarget);
    v28 = 0;
    v30 = 0;
    v12 = v7 & 1;
    v13 = 64;
    v3 = v5;
    goto LABEL_5;
  }

  outlined init with copy of Responses.StartSharing.ConfirmShareEntireScreen(v0[19], v0[18], type metadata accessor for ShareTarget);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v10 = v0[18];
  v11 = v0[19];
  if (EnumCaseMultiPayload)
  {

    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
    outlined destroy of Responses.StartSharing.ConfirmShareEntireScreen(v11, type metadata accessor for ShareTarget);
    outlined destroy of Responses.StartSharing.ConfirmShareEntireScreen(v10, type metadata accessor for ShareTarget);
    v28 = 0;
    v30 = v5;
    v12 = v4;
    v4 = v7 & 1;
    v13 = 0x80;
LABEL_5:
    v5 = 0;
    goto LABEL_11;
  }

  v30 = v3;
  v14 = v0[15];
  v15 = v0[16];
  v16 = v0[14];
  v29 = v16;

  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology9UsoEntityC_AA0cD22_common_AttachmentTypeC13DefinedValuesO4typetMd, &_s12SiriOntology9UsoEntityC_AA0cD22_common_AttachmentTypeC13DefinedValuesO4typetMR);
  (*(v14 + 32))(v15, v10 + *(v17 + 48), v16);
  v19 = v0[5];
  v18 = v0[6];
  __swift_project_boxed_opaque_existential_1(v0 + 2, v19);
  v20 = (*(v18 + 224))(v19, v18);
  LOBYTE(v19) = specialized SharePlayHelper.appSupportsSharePlay(_:)(v30, v4);
  v21 = UsoEntity_common_AttachmentType.DefinedValues.preferSharingInCall.getter();
  (*(v14 + 8))(v15, v29);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  outlined destroy of Responses.StartSharing.ConfirmShareEntireScreen(v11, type metadata accessor for ShareTarget);
  v3 = 0;
  v13 = v7 & 1;
  v22 = 256;
  if ((v19 & 1) == 0)
  {
    v22 = 0;
  }

  v23 = v22 & 0xFFFFFFFFFFFFFFFELL | v20 & 1;
  v24 = 0x10000;
  if ((v21 & 1) == 0)
  {
    v24 = 0;
  }

  v28 = v23 | v24;
  v12 = 0xE000000000000000;
LABEL_11:
  v25 = v0[12];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  *v25 = v3;
  *(v25 + 8) = v12;
  *(v25 + 16) = v30;
  *(v25 + 24) = v4;
  *(v25 + 32) = v28;
  *(v25 + 40) = v5;
  *(v25 + 48) = v13;
  v26 = v0[1];

  return v26();
}

uint64_t StartSharingConfirmationFlow.executeYesNoConfirmationFlow(with:onYes:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v5 = v4;
  v41 = a2;
  v42 = a3;
  v43 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow20ConfirmationResponseOSgMd, &_s11SiriKitFlow20ConfirmationResponseOSgMR);
  MEMORY[0x28223BE20](v7 - 8, v8);
  v10 = &v40 - v9;
  started = type metadata accessor for Responses.StartSharing.ShareRequestCancelled(0);
  MEMORY[0x28223BE20](started, v12);
  v14 = &v40 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v14 = -101;
  static DialogPhase.canceled.getter();
  v52[3] = started;
  v52[4] = &protocol witness table for Responses.StartSharing.ShareRequestCancelled;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v52);
  v40 = type metadata accessor for Responses.StartSharing.ShareRequestCancelled;
  outlined init with copy of Responses.StartSharing.ConfirmShareEntireScreen(v14, boxed_opaque_existential_1, type metadata accessor for Responses.StartSharing.ShareRequestCancelled);
  v51[3] = started;
  v51[4] = &protocol witness table for Responses.StartSharing.ShareRequestCancelled;
  v16 = __swift_allocate_boxed_opaque_existential_1(v51);
  outlined init with copy of Responses.StartSharing.ConfirmShareEntireScreen(v14, v16, type metadata accessor for Responses.StartSharing.ShareRequestCancelled);
  outlined init with copy of ResponseExecuting(a1, v50);
  outlined init with copy of SharingResponse?(v52, v48);
  outlined init with copy of SharingResponse?(v51, v46);
  outlined init with copy of ResponseExecuting(v5 + OBJC_IVAR____TtC19SiriExpanseInternal28StartSharingConfirmationFlow_responseExecutor, v45);
  v17 = __swift_mutable_project_boxed_opaque_existential_1(v45, v45[3]);
  MEMORY[0x28223BE20](v17, v17);
  v19 = (&v40 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v20 + 16))(v19);
  v21 = *v19;
  v22 = type metadata accessor for ResponseExecutor();
  v44[3] = v22;
  v44[4] = &protocol witness table for ResponseExecutor;
  v44[0] = v21;
  type metadata accessor for SimpleSharingYesNoPromptFlowStrategy(0);
  v23 = swift_allocObject();
  v24 = __swift_mutable_project_boxed_opaque_existential_1(v44, v22);
  MEMORY[0x28223BE20](v24, v24);
  v26 = (&v40 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v27 + 16))(v26);
  v28 = *v26;
  *(v23 + 160) = v22;
  *(v23 + 168) = &protocol witness table for ResponseExecutor;
  *(v23 + 136) = v28;
  v29 = *MEMORY[0x277D5BED0];
  v30 = type metadata accessor for ConfirmationResponse();
  v31 = *(v30 - 8);
  (*(v31 + 104))(v10, v29, v30);
  (*(v31 + 56))(v10, 0, 1, v30);
  SimpleConfirmationResponseProvider.init(_:)();
  outlined init with take of SharingResponse(v50, v23 + 16);
  v32 = v48[1];
  *(v23 + 56) = v48[0];
  *(v23 + 72) = v32;
  *(v23 + 88) = v49;
  v33 = v46[1];
  *(v23 + 96) = v46[0];
  *(v23 + 112) = v33;
  *(v23 + 128) = v47;
  __swift_destroy_boxed_opaque_existential_1Tm(v44);
  __swift_destroy_boxed_opaque_existential_1Tm(v45);
  outlined init with copy of ResponseExecuting(v5 + OBJC_IVAR____TtC19SiriExpanseInternal28StartSharingConfirmationFlow_outputPublisher, v50);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s19SiriExpanseInternal32PromptForConfirmationFlowWrapperCyAA018SimpleSharingYesNodG8StrategyCGMd, &_s19SiriExpanseInternal32PromptForConfirmationFlowWrapperCyAA018SimpleSharingYesNodG8StrategyCGMR);
  v34 = swift_allocObject();
  *(v34 + 16) = v23;
  outlined init with copy of ResponseExecuting(v50, v48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriKitFlow021PromptForConfirmationC5AsyncCyytAA06SimpleF16ResponseProviderVGMd, &_s11SiriKitFlow021PromptForConfirmationC5AsyncCyytAA06SimpleF16ResponseProviderVGMR);
  swift_allocObject();
  lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type SimpleSharingYesNoPromptFlowStrategy and conformance SimpleSharingYesNoPromptFlowStrategy, type metadata accessor for SimpleSharingYesNoPromptFlowStrategy, &protocol conformance descriptor for SimpleSharingYesNoPromptFlowStrategy);

  v35 = PromptForConfirmationFlowAsync.init<A>(itemToConfirm:strategy:outputPublisher:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v50);
  *(v34 + 24) = v35;
  *&v50[0] = v34;
  v36 = swift_allocObject();
  v37 = v41;
  v38 = v42;
  v36[2] = v5;
  v36[3] = v37;
  v36[4] = v38;
  lazy protocol witness table accessor for type PromptForConfirmationFlowWrapper<SimpleSharingYesNoPromptFlowStrategy> and conformance PromptForConfirmationFlowWrapper<A>();

  static ExecuteResponse.ongoing<A>(next:childCompletion:)();

  outlined destroy of Responses.StartSharing.ConfirmShareEntireScreen(v14, v40);

  outlined destroy of SharingResponse?(v51, &_s19SiriExpanseInternal15SharingResponse_pSgMd, &_s19SiriExpanseInternal15SharingResponse_pSgMR);
  return outlined destroy of SharingResponse?(v52, &_s19SiriExpanseInternal15SharingResponse_pSgMd, &_s19SiriExpanseInternal15SharingResponse_pSgMR);
}

uint64_t StartSharingConfirmationFlow.confirmationFlowForScreenContext(_:)@<X0>(unint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v4 = v3;
  started = type metadata accessor for Responses.StartSharing.ConfirmReadyToShare(0);
  MEMORY[0x28223BE20](started, v9);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for Responses.StartSharing.ConfirmShareWithEveryoneInCall(0);
  MEMORY[0x28223BE20](v54, v12);
  v55 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Locale();
  MEMORY[0x28223BE20](v14 - 8, v15);
  v59 = &v51 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    if (a1)
    {
      v60[0] = MEMORY[0x277D84F90];
      v52 = v4;
      v51 = a3;
      if (a1 >> 62)
      {
LABEL_29:
        v58 = __CocoaSet.count.getter();
      }

      else
      {
        v58 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v17 = 0;
      v57 = a1 & 0xC000000000000001;
      v53 = MEMORY[0x277D84F90];
      while (v58 != v17)
      {
        if (v57)
        {
          v18 = MEMORY[0x26D5ECB50](v17, a1);
        }

        else
        {
          if (v17 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_28;
          }

          v18 = *(a1 + 8 * v17 + 32);
        }

        v19 = v18;
        if (__OFADD__(v17, 1))
        {
          __break(1u);
LABEL_28:
          __break(1u);
          goto LABEL_29;
        }

        v56 = v17 + 1;
        type metadata accessor for DialogPerson();
        v20 = v19;
        static Device.current.getter();
        __swift_project_boxed_opaque_existential_1(&v61, *(&v62 + 1));
        dispatch thunk of DeviceState.siriLocale.getter();
        __swift_destroy_boxed_opaque_existential_1Tm(&v61);
        v21 = DialogPerson.__allocating_init(person:locale:useConversationalName:)();

        ++v17;
        if (v21)
        {
          MEMORY[0x26D5EC910](v22);
          if (*((v60[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v53 = v60[0];
          v17 = v56;
        }
      }

      v32 = v54;
      v33 = v55;
      *v55 = -115;
      static DialogPhase.clarification.getter();
      v34 = *(v32 + 24);
      static SharingNLContextProvider.makeNLContextUpdateForConfirmationPrompt(sharingAction:)(0);
      v35 = type metadata accessor for NLContextUpdate();
      (*(*(v35 - 8) + 56))(v33 + v34, 0, 1, v35);
      v36 = v33 + *(v32 + 28);
      *v36 = 0;
      *(v36 + 8) = 0;
      *(v36 + 16) = 0;
      *(v36 + 24) = v53;
      *(&v62 + 1) = v32;
      *&v63 = &protocol witness table for Responses.StartSharing.ConfirmShareWithEveryoneInCall;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v61);
      v38 = type metadata accessor for Responses.StartSharing.ConfirmShareWithEveryoneInCall;
      outlined init with copy of Responses.StartSharing.ConfirmShareEntireScreen(v33, boxed_opaque_existential_1, type metadata accessor for Responses.StartSharing.ConfirmShareWithEveryoneInCall);
      v39 = v52;

      StartSharingConfirmationFlow.executeYesNoConfirmationFlow(with:onYes:)(&v61, partial apply for closure #2 in StartSharingConfirmationFlow.confirmationFlowForScreenContext(_:), v39, v51);

      v40 = v33;
    }

    else
    {
      if (one-time initialization token for default != -1)
      {
        swift_once();
      }

      v41 = type metadata accessor for Logger();
      __swift_project_value_buffer(v41, static Logger.default);
      v42 = Logger.logObject.getter();
      v43 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = a3;
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        *&v61 = v46;
        *v45 = 136315138;
        if (one-time initialization token for typeName != -1)
        {
          swift_once();
        }

        *(v45 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingConfirmationFlow.typeName, unk_2800C0490, &v61);
        _os_log_impl(&dword_266B9E000, v42, v43, "%s: Confirming with the user that they're ready to share their screen", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v46);
        MEMORY[0x26D5ED340](v46, -1, -1);
        MEMORY[0x26D5ED340](v45, -1, -1);

        a3 = v44;
      }

      else
      {
      }

      *v11 = -118;
      static DialogPhase.clarification.getter();
      v47 = *(started + 24);
      static SharingNLContextProvider.makeNLContextUpdateForConfirmationPrompt(sharingAction:)(0);
      v48 = type metadata accessor for NLContextUpdate();
      (*(*(v48 - 8) + 56))(&v11[v47], 0, 1, v48);
      v49 = &v11[*(started + 28)];
      *v49 = 1;
      *(v49 + 2) = 0;
      *(v49 + 3) = 0;
      *(v49 + 1) = 0;
      *(&v62 + 1) = started;
      *&v63 = &protocol witness table for Responses.StartSharing.ConfirmReadyToShare;
      v50 = __swift_allocate_boxed_opaque_existential_1(&v61);
      v38 = type metadata accessor for Responses.StartSharing.ConfirmReadyToShare;
      outlined init with copy of Responses.StartSharing.ConfirmShareEntireScreen(v11, v50, type metadata accessor for Responses.StartSharing.ConfirmReadyToShare);

      StartSharingConfirmationFlow.executeYesNoConfirmationFlow(with:onYes:)(&v61, partial apply for closure #1 in StartSharingConfirmationFlow.confirmSingleWindowSharingRequestOnPlatformWithoutSupport(currentlySharedTarget:requestedRecipients:), v4, a3);

      v40 = v11;
    }

    outlined destroy of Responses.StartSharing.ConfirmShareEntireScreen(v40, v38);
    return __swift_destroy_boxed_opaque_existential_1Tm(&v61);
  }

  else
  {
    v23 = *(v4 + 32);
    v61 = *(v4 + 16);
    v62 = v23;
    v63 = *(v4 + 48);
    v64 = *(v4 + 64);
    v24 = v64;
    v25 = *(v4 + 16);
    v26 = *(v4 + 24);
    v27 = *(v4 + 32);
    v28 = *(v4 + 40);
    v29 = *(v4 + 48);
    v30 = *(v4 + 56);
    *(v4 + 16) = 1;
    *(v4 + 24) = 0u;
    *(v4 + 40) = 0u;
    *(v4 + 56) = 0;
    *(v4 + 64) = 32;
    outlined init with copy of StartSharingConfirmationFlow.State(&v61, v60);
    outlined consume of StartSharingConfirmationFlow.State(v25, v26, v27, v28, v29, v30, v24);
    StartSharingConfirmationFlow.state.didset(&v61);
    outlined destroy of StartSharingConfirmationFlow.State(&v61);
    return static ExecuteResponse.complete()();
  }
}

uint64_t StartSharingConfirmationFlow.confirmSingleWindowSharingRequestOnPlatformWithoutSupport(currentlySharedTarget:requestedRecipients:)@<X0>(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  started = type metadata accessor for Responses.StartSharing.ConfirmShareEntireScreen(0);
  v9 = MEMORY[0x28223BE20](started, v8);
  v11 = &v26[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  if (a1)
  {
    *v11 = -117;
    v12 = v9;
    static DialogPhase.clarification.getter();
    v13 = *(v12 + 24);
    static SharingNLContextProvider.makeNLContextUpdateForConfirmationPrompt(sharingAction:)(0);
    v14 = type metadata accessor for NLContextUpdate();
    (*(*(v14 - 8) + 56))(&v11[v13], 0, 1, v14);
    v11[*(v12 + 28)] = a2 != 0;
    *(&v28 + 1) = v12;
    *&v29 = &protocol witness table for Responses.StartSharing.ConfirmShareEntireScreen;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v27);
    outlined init with copy of Responses.StartSharing.ConfirmShareEntireScreen(v11, boxed_opaque_existential_1, type metadata accessor for Responses.StartSharing.ConfirmShareEntireScreen);

    StartSharingConfirmationFlow.executeYesNoConfirmationFlow(with:onYes:)(&v27, partial apply for closure #1 in StartSharingConfirmationFlow.confirmSingleWindowSharingRequestOnPlatformWithoutSupport(currentlySharedTarget:requestedRecipients:), v3, a3);

    outlined destroy of Responses.StartSharing.ConfirmShareEntireScreen(v11, type metadata accessor for Responses.StartSharing.ConfirmShareEntireScreen);
    return __swift_destroy_boxed_opaque_existential_1Tm(&v27);
  }

  else
  {
    v17 = *(v3 + 32);
    v27 = *(v3 + 16);
    v28 = v17;
    v29 = *(v3 + 48);
    v30 = *(v3 + 64);
    v18 = v30;
    v19 = *(v3 + 16);
    v20 = *(v3 + 24);
    v21 = *(v3 + 32);
    v22 = *(v3 + 40);
    v23 = *(v3 + 48);
    v24 = *(v3 + 56);
    *(v3 + 16) = 5;
    *(v3 + 24) = 0u;
    *(v3 + 40) = 0u;
    *(v3 + 56) = 0;
    *(v3 + 64) = 32;
    outlined init with copy of StartSharingConfirmationFlow.State(&v27, v26);
    outlined consume of StartSharingConfirmationFlow.State(v19, v20, v21, v22, v23, v24, v18);
    StartSharingConfirmationFlow.state.didset(&v27);
    outlined destroy of StartSharingConfirmationFlow.State(&v27);
    return static ExecuteResponse.complete()();
  }
}

uint64_t closure #2 in StartSharingConfirmationFlow.confirmationFlowForScreenContext(_:)(uint64_t a1)
{
  v1 = *(a1 + 32);
  v11[0] = *(a1 + 16);
  v11[1] = v1;
  v11[2] = *(a1 + 48);
  v12 = *(a1 + 64);
  v2 = v12;
  v3 = *(a1 + 16);
  v4 = *(a1 + 24);
  v5 = *(a1 + 32);
  v6 = *(a1 + 40);
  v7 = *(a1 + 48);
  v8 = *(a1 + 56);
  *(a1 + 16) = 3;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0u;
  *(a1 + 56) = 0;
  *(a1 + 64) = 32;
  outlined init with copy of StartSharingConfirmationFlow.State(v11, v10);
  outlined consume of StartSharingConfirmationFlow.State(v3, v4, v5, v6, v7, v8, v2);
  StartSharingConfirmationFlow.state.didset(v11);
  return outlined destroy of StartSharingConfirmationFlow.State(v11);
}

uint64_t StartSharingConfirmationFlow.__deallocating_deinit()
{
  outlined consume of StartSharingConfirmationFlow.State(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));
  outlined destroy of Responses.StartSharing.ConfirmShareEntireScreen(v0 + OBJC_IVAR____TtC19SiriExpanseInternal28StartSharingConfirmationFlow_requestedTarget, type metadata accessor for ShareTarget);

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC19SiriExpanseInternal28StartSharingConfirmationFlow_call));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC19SiriExpanseInternal28StartSharingConfirmationFlow_responseExecutor));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + OBJC_IVAR____TtC19SiriExpanseInternal28StartSharingConfirmationFlow_outputPublisher));
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t type metadata accessor for StartSharingConfirmationFlow(uint64_t a1)
{
  result = type metadata singleton initialization cache for StartSharingConfirmationFlow;
  if (!type metadata singleton initialization cache for StartSharingConfirmationFlow)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for StartSharingConfirmationFlow(uint64_t a1)
{
  result = type metadata accessor for ShareTarget(319);
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

uint64_t get_enum_tag_for_layout_string_19SiriExpanseInternal28StartSharingConfirmationFlowC5StateO(uint64_t a1)
{
  v1 = *(a1 + 48);
  if (((v1 >> 4) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return (v1 >> 4) & 3;
  }
}

__n128 __swift_memcpy49_8(uint64_t a1, uint64_t a2)
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

uint64_t getEnumTagSinglePayload for StartSharingConfirmationFlow.State(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
  {
    return *a1 + 0x80000000;
  }

  v2 = (*(a1 + 32) >> 2) & 0x3F80 | (*(a1 + 32) >> 1) | (*(a1 + 32) >> 3) & 0x1FC000 | (*(a1 + 32) >> 4) & 0xFFE00000;
  if (v2 > 0x80000000)
  {
    v3 = ~v2;
  }

  else
  {
    v3 = -1;
  }

  return (v3 + 1);
}

double storeEnumTagSinglePayload for StartSharingConfirmationFlow.State(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    *(a1 + 40) = 0;
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 48) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 49) = 1;
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
      result = 0.0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      *(a1 + 32) = (4 * -a2) & 0xFE00 | (2 * (-a2 & 0x7FLL)) & 0xFFFFFFF00101FFFFLL | (((-a2 >> 14) & 0x7F) << 17) & 0xFFFFFFF001FFFFFFLL | ((-a2 >> 21) << 25);
      *(a1 + 40) = 0;
      *(a1 + 48) = 0;
      return result;
    }

    *(a1 + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for StartSharingConfirmationFlow.State(uint64_t result, unsigned int a2)
{
  if (a2 < 2)
  {
    v2 = *(result + 48) & 0xC1 | (16 * a2);
    *(result + 32) &= 0x1010101uLL;
    *(result + 48) = v2;
  }

  else
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *(result + 40) = 0;
    *(result + 48) = 32;
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for StartSharingConfirmationFlow.State(uint64_t a1)
{
  result = lazy protocol witness table accessor for type StartSharingConfirmationFlow.State and conformance StartSharingConfirmationFlow.State();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type StartSharingConfirmationFlow.State and conformance StartSharingConfirmationFlow.State()
{
  result = lazy protocol witness table cache variable for type StartSharingConfirmationFlow.State and conformance StartSharingConfirmationFlow.State;
  if (!lazy protocol witness table cache variable for type StartSharingConfirmationFlow.State and conformance StartSharingConfirmationFlow.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartSharingConfirmationFlow.State and conformance StartSharingConfirmationFlow.State);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StartSharingConfirmationFlow.State and conformance StartSharingConfirmationFlow.State;
  if (!lazy protocol witness table cache variable for type StartSharingConfirmationFlow.State and conformance StartSharingConfirmationFlow.State)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StartSharingConfirmationFlow.State and conformance StartSharingConfirmationFlow.State);
  }

  return result;
}

uint64_t protocol witness for Flow.execute() in conformance StartSharingConfirmationFlow(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = dispatch thunk of SharingPromptFlowStrategy.makePrompt();

  return StartSharingConfirmationFlow.execute()(a1);
}

unint64_t protocol witness for Flow.exitValue.getter in conformance StartSharingConfirmationFlow@<X0>(unint64_t *a1@<X8>)
{
  result = StartSharingConfirmationFlow.exitValue.getter();
  *a1 = result;
  return result;
}

uint64_t specialized closure #1 in PromptManaging.executeYesNoConfirmationFlow(withPrompt:confirmationRejectedDialog:flowCancelledDialog:onYes:)(uint64_t a1, void (*a2)(char *, uint64_t), void (*a3)(void), uint64_t a4)
{

  specialized PromptManaging.processPromptFlowExitValue<A>(_:onValueReceived:)(a1, a2, a3, a4, a2);
}

uint64_t specialized StartSharingConfirmationFlow.on(input:)(uint64_t a1)
{
  v2 = type metadata accessor for Input();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for default != -1)
  {
    swift_once();
  }

  v7 = type metadata accessor for Logger();
  __swift_project_value_buffer(v7, static Logger.default);
  (*(v3 + 16))(v6, a1, v2);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v8, v9))
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v18 = v11;
    *v10 = 136315394;
    if (one-time initialization token for typeName != -1)
    {
      swift_once();
    }

    *(v10 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(static StartSharingConfirmationFlow.typeName, unk_2800C0490, &v18);
    *(v10 + 12) = 2080;
    lazy protocol witness table accessor for type Input and conformance Input(&lazy protocol witness table cache variable for type Input and conformance Input, MEMORY[0x277D5C118], MEMORY[0x277D5C120]);
    v12 = dispatch thunk of CustomStringConvertible.description.getter();
    v14 = v13;
    (*(v3 + 8))(v6, v2);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v18);

    *(v10 + 14) = v15;
    _os_log_impl(&dword_266B9E000, v8, v9, "%s: received input %s - this flow should never receive input, ignoring it...", v10, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x26D5ED340](v11, -1, -1);
    MEMORY[0x26D5ED340](v10, -1, -1);
  }

  else
  {

    (*(v3 + 8))(v6, v2);
  }

  return 0;
}

void outlined consume of StartSharingConfirmationFlow.State(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v7 = (a7 >> 4) & 3;
  if (v7 == 1)
  {
  }

  else if (!v7)
  {
    outlined consume of ConfirmationContext(a1, a2, a3, a4, a5, a6, a7);
  }
}

uint64_t outlined consume of ConfirmationContext(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if ((a7 >> 6) > 1u)
  {
    if (a7 >> 6 != 2)
    {
      return v7;
    }

    goto LABEL_5;
  }

  if (!(a7 >> 6))
  {

LABEL_5:
  }
}

uint64_t lazy protocol witness table accessor for type Input and conformance Input(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_266BB3D30()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

unint64_t lazy protocol witness table accessor for type PromptForConfirmationFlowWrapper<SimpleSharingYesNoPromptFlowStrategy> and conformance PromptForConfirmationFlowWrapper<A>()
{
  result = lazy protocol witness table cache variable for type PromptForConfirmationFlowWrapper<SimpleSharingYesNoPromptFlowStrategy> and conformance PromptForConfirmationFlowWrapper<A>;
  if (!lazy protocol witness table cache variable for type PromptForConfirmationFlowWrapper<SimpleSharingYesNoPromptFlowStrategy> and conformance PromptForConfirmationFlowWrapper<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s19SiriExpanseInternal32PromptForConfirmationFlowWrapperCyAA018SimpleSharingYesNodG8StrategyCGMd, &_s19SiriExpanseInternal32PromptForConfirmationFlowWrapperCyAA018SimpleSharingYesNodG8StrategyCGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptForConfirmationFlowWrapper<SimpleSharingYesNoPromptFlowStrategy> and conformance PromptForConfirmationFlowWrapper<A>);
  }

  return result;
}

uint64_t outlined init with copy of Responses.StartSharing.ConfirmShareEntireScreen(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of Responses.StartSharing.ConfirmShareEntireScreen(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

id outlined copy of StartSharingConfirmationFlow.State(id result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned int a7)
{
  v7 = (a7 >> 4) & 3;
  if (v7 == 1)
  {
    return result;
  }

  if (!v7)
  {
    return outlined copy of ConfirmationContext(result, a2, a3, a4, a5, a6, a7);
  }

  return result;
}

uint64_t outlined copy of ConfirmationContext(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 a7)
{
  if ((a7 >> 6) > 1u)
  {
    if (a7 >> 6 != 2)
    {
      return v7;
    }

    goto LABEL_5;
  }

  if (!(a7 >> 6))
  {

LABEL_5:
  }
}

unint64_t lazy protocol witness table accessor for type ExpanseError and conformance ExpanseError()
{
  result = lazy protocol witness table cache variable for type ExpanseError and conformance ExpanseError;
  if (!lazy protocol witness table cache variable for type ExpanseError and conformance ExpanseError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpanseError and conformance ExpanseError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ExpanseError and conformance ExpanseError;
  if (!lazy protocol witness table cache variable for type ExpanseError and conformance ExpanseError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExpanseError and conformance ExpanseError);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_19SiriExpanseInternal28StartSharingConfirmationFlowC0F6ResultO(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for StartSharingConfirmationFlow.ConfirmationResult(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFA && *(a1 + 8))
  {
    return (*a1 + 2147483643);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 4;
  if (v4 >= 6)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for StartSharingConfirmationFlow.ConfirmationResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFB)
  {
    *result = 0;
    *result = a2 - 2147483643;
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFB)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 4;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for StartSharingConfirmationFlow.ConfirmationResult(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for Confidence(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = v7 - 2;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for Confidence(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t getEnumTag for Confidence(unsigned __int8 *a1)
{
  v1 = *a1;
  if (v1 >= 2)
  {
    return v1 - 1;
  }

  else
  {
    return 0;
  }
}

_BYTE *destructiveInjectEnumTag for Confidence(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t Confidence.description.getter(char a1)
{
  if (a1 == 2)
  {
    return 0x6E656469666E6F43;
  }

  _StringGuts.grow(_:)(26);

  if (a1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0xD00000000000001FLL;
  }

  if (a1)
  {
    v4 = "conflictingAppNameAndEntityType";
  }

  else
  {
    v4 = "ation";
  }

  MEMORY[0x26D5EC8A0](v3, v4 | 0x8000000000000000);

  MEMORY[0x26D5EC8A0](41, 0xE100000000000000);
  return 0xD000000000000017;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance Confidence.LowConfidenceReason()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance Confidence.LowConfidenceReason(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance Confidence.LowConfidenceReason(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance Confidence.LowConfidenceReason@<X0>(Swift::String *a1@<X0>, char *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Confidence.LowConfidenceReason.init(rawValue:), *a1);

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

void protocol witness for RawRepresentable.rawValue.getter in conformance Confidence.LowConfidenceReason(unint64_t *a1@<X8>)
{
  if (*v1)
  {
    v2 = 0xD000000000000012;
  }

  else
  {
    v2 = 0xD00000000000001FLL;
  }

  if (*v1)
  {
    v3 = "conflictingAppNameAndEntityType";
  }

  else
  {
    v3 = "ation";
  }

  *a1 = v2;
  a1[1] = v3 | 0x8000000000000000;
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance Confidence.LowConfidenceReason()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0xD00000000000001FLL;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance Confidence.LowConfidenceReason(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0xD000000000000012;
  }

  else
  {
    v3 = 0xD00000000000001FLL;
  }

  if (v2)
  {
    v4 = "ation";
  }

  else
  {
    v4 = "conflictingAppNameAndEntityType";
  }

  v5 = v4 | 0x8000000000000000;
  if (*a2)
  {
    v6 = 0xD000000000000012;
  }

  else
  {
    v6 = 0xD00000000000001FLL;
  }

  if (*a2)
  {
    v7 = "conflictingAppNameAndEntityType";
  }

  else
  {
    v7 = "ation";
  }

  if (v3 == v6 && v5 == (v7 | 0x8000000000000000))
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

BOOL specialized static Confidence.== infix(_:_:)(char a1, char a2)
{
  if (a1 == 2)
  {
    return a2 == 2;
  }

  if (a2 == 2)
  {
    return 0;
  }

  v3 = (a1 & 1) == 0;
  if (a1)
  {
    v4 = 0xD000000000000012;
  }

  else
  {
    v4 = 0xD00000000000001FLL;
  }

  if (v3)
  {
    v5 = "ation";
  }

  else
  {
    v5 = "conflictingAppNameAndEntityType";
  }

  if (a2)
  {
    v6 = 0xD000000000000012;
  }

  else
  {
    v6 = 0xD00000000000001FLL;
  }

  if (a2)
  {
    v7 = "conflictingAppNameAndEntityType";
  }

  else
  {
    v7 = "ation";
  }

  if (v4 == v6 && (v5 | 0x8000000000000000) == (v7 | 0x8000000000000000))
  {

    return 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    return v8 & 1;
  }
}

unint64_t lazy protocol witness table accessor for type Confidence.LowConfidenceReason and conformance Confidence.LowConfidenceReason()
{
  result = lazy protocol witness table cache variable for type Confidence.LowConfidenceReason and conformance Confidence.LowConfidenceReason;
  if (!lazy protocol witness table cache variable for type Confidence.LowConfidenceReason and conformance Confidence.LowConfidenceReason)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Confidence.LowConfidenceReason and conformance Confidence.LowConfidenceReason);
  }

  return result;
}

uint64_t type metadata accessor for SharingCATsSimple(uint64_t a1)
{
  result = type metadata singleton initialization cache for SharingCATsSimple;
  if (!type metadata singleton initialization cache for SharingCATsSimple)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SharingCATsSimple.__allocating_init(templateDir:options:globals:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for CATOption();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5, v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v10 - 8, v11);
  v13 = &v16 - v12;
  swift_allocObject();
  outlined init with copy of URL?(a1, v13);
  (*(v6 + 16))(v9, a2, v5);
  v14 = CATWrapperSimple.init(templateDir:options:globals:)();
  (*(v6 + 8))(a2, v5);
  outlined destroy of URL?(a1);
  return v14;
}

uint64_t SharingCATsSimple.__allocating_init(useResponseMode:options:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for CATOption();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3, v5);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_allocObject();
  (*(v4 + 16))(v7, a2, v3);
  v8 = CATWrapperSimple.init(useResponseMode:options:)();
  (*(v4 + 8))(a2, v3);
  return v8;
}

uint64_t SharingCATsSimple.__deallocating_deinit()
{
  v0 = CATWrapperSimple.deinit();

  return MEMORY[0x2821FE8D8](v0, 16, 7);
}

uint64_t outlined init with copy of URL?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of URL?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, _s10Foundation3URLVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t type metadata accessor for ShareTarget(uint64_t a1)
{
  result = type metadata singleton initialization cache for ShareTarget;
  if (!type metadata singleton initialization cache for ShareTarget)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for ShareTarget(uint64_t a1)
{
  type metadata accessor for (UsoEntity, type: UsoEntity_common_AttachmentType.DefinedValues)(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for (forAppWithBundleId: String?)();
    if (v2 <= 0x3F)
    {
      type metadata accessor for (named: String)();
      if (v3 <= 0x3F)
      {
        type metadata accessor for (bundleId: String, confidence: Confidence)();
        if (v4 <= 0x3F)
        {
          swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
        }
      }
    }
  }
}

void type metadata accessor for (UsoEntity, type: UsoEntity_common_AttachmentType.DefinedValues)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (UsoEntity, type: UsoEntity_common_AttachmentType.DefinedValues))
  {
    type metadata accessor for UsoEntity();
    type metadata accessor for UsoEntity_common_AttachmentType.DefinedValues();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (UsoEntity, type: UsoEntity_common_AttachmentType.DefinedValues));
    }
  }
}

void type metadata accessor for (forAppWithBundleId: String?)()
{
  if (!lazy cache variable for type metadata for (forAppWithBundleId: String?))
  {
    type metadata accessor for String?();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for (forAppWithBundleId: String?));
    }
  }
}

void type metadata accessor for String?()
{
  if (!lazy cache variable for type metadata for String?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for String?);
    }
  }
}

uint64_t type metadata accessor for (named: String)()
{
  result = lazy cache variable for type metadata for (named: String);
  if (!lazy cache variable for type metadata for (named: String))
  {
    result = MEMORY[0x277D837D0];
    atomic_store(MEMORY[0x277D837D0], &lazy cache variable for type metadata for (named: String));
  }

  return result;
}

void type metadata accessor for (bundleId: String, confidence: Confidence)()
{
  if (!lazy cache variable for type metadata for (bundleId: String, confidence: Confidence))
  {
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v1)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (bundleId: String, confidence: Confidence));
    }
  }
}

uint64_t specialized DefaultStringInterpolation.appendInterpolation<A>(_:)(unsigned __int8 a1)
{
  v1 = a1;
  if (a1 == 4)
  {
    v2 = 0x8000000266BEEAF0;
    v3 = 0xD00000000000001ELL;
  }

  else
  {
    _StringGuts.grow(_:)(36);

    v4 = 0xEA0000000000646CLL;
    v5 = 0x6F486E4F6C6C6163;
    v6 = 0x8000000266BEE350;
    v7 = 0xD000000000000013;
    if (v1 == 2)
    {
      v7 = 0xD000000000000010;
    }

    else
    {
      v6 = 0x8000000266BEE370;
    }

    if (!v1)
    {
      v5 = 0xD000000000000018;
      v4 = 0x8000000266BEE320;
    }

    if (v1 <= 1)
    {
      v8 = v5;
    }

    else
    {
      v8 = v7;
    }

    if (v1 <= 1)
    {
      v9 = v4;
    }

    else
    {
      v9 = v6;
    }

    MEMORY[0x26D5EC8A0](v8, v9);

    MEMORY[0x26D5EC8A0](41, 0xE100000000000000);
    v3 = 0xD000000000000021;
    v2 = 0x8000000266BEEB10;
  }

  MEMORY[0x26D5EC8A0](v3, v2);
}

uint64_t specialized DefaultStringInterpolation.appendInterpolation<A>(_:)(char a1)
{
  if (a1 == 2)
  {
    v1 = 0xEF686769682E6563;
    v2 = 0x6E656469666E6F43;
  }

  else
  {
    _StringGuts.grow(_:)(26);

    if (a1)
    {
      v4 = 0xD000000000000012;
    }

    else
    {
      v4 = 0xD00000000000001FLL;
    }

    if (a1)
    {
      v5 = "conflictingAppNameAndEntityType";
    }

    else
    {
      v5 = "ation";
    }

    MEMORY[0x26D5EC8A0](v4, v5 | 0x8000000000000000);

    MEMORY[0x26D5EC8A0](41, 0xE100000000000000);
    v2 = 0xD000000000000017;
    v1 = 0x8000000266BEE940;
  }

  MEMORY[0x26D5EC8A0](v2, v1);
}

uint64_t specialized DefaultStringInterpolation.appendInterpolation<A>(_:)(uint64_t a1)
{
  v1 = 0xD000000000000013;
  if (a1)
  {
    _StringGuts.grow(_:)(33);

    v3 = type metadata accessor for INPerson();
    v4 = MEMORY[0x26D5EC930](a1, v3);
    MEMORY[0x26D5EC8A0](v4);

    MEMORY[0x26D5EC8A0](41, 0xE100000000000000);
    v1 = 0xD00000000000001ELL;
    v5 = 0x8000000266BEEAB0;
  }

  else
  {
    v5 = 0x8000000266BEEAD0;
  }

  MEMORY[0x26D5EC8A0](v1, v5);
}

unint64_t ShareTarget.description.getter()
{
  v1 = v0;
  v2 = type metadata accessor for UsoEntity_common_AttachmentType.DefinedValues();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2, v4);
  v6 = v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ShareTarget(0);
  MEMORY[0x28223BE20](v7, v8);
  v10 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of ShareTarget(v1, v10);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (!EnumCaseMultiPayload)
    {
      v16 = *v10;
      v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology9UsoEntityC_AA0cD22_common_AttachmentTypeC13DefinedValuesO4typetMd, &_s12SiriOntology9UsoEntityC_AA0cD22_common_AttachmentTypeC13DefinedValuesO4typetMR);
      (*(v3 + 32))(v6, &v10[*(v17 + 48)], v2);
      v24 = 0;
      v25 = 0xE000000000000000;
      _StringGuts.grow(_:)(42);
      MEMORY[0x26D5EC8A0](0xD00000000000001DLL, 0x8000000266BEEA90);
      v23[0] = v16;
      type metadata accessor for UsoEntity();
      _print_unlocked<A, B>(_:_:)();
      MEMORY[0x26D5EC8A0](0x203A65707974202CLL, 0xE800000000000000);
      v18 = UsoEntity_common_AttachmentType.DefinedValues.rawValue.getter();
      MEMORY[0x26D5EC8A0](v18);

      MEMORY[0x26D5EC8A0](41, 0xE100000000000000);

      v19 = v24;
      (*(v3 + 8))(v6, v2);
      return v19;
    }

    v12 = *v10;
    v13 = *(v10 + 1);
    v24 = 0;
    v25 = 0xE000000000000000;
    if (EnumCaseMultiPayload == 1)
    {
      _StringGuts.grow(_:)(52);
      MEMORY[0x26D5EC8A0](0xD000000000000031, 0x8000000266BEEA50);
      v23[0] = v12;
      v23[1] = v13;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v14 = String.init<A>(describing:)();
      MEMORY[0x26D5EC8A0](v14);
    }

    else
    {
      _StringGuts.grow(_:)(37);

      v24 = 0xD000000000000022;
      v25 = 0x8000000266BEEA20;
      MEMORY[0x26D5EC8A0](v12, v13);
    }

    goto LABEL_12;
  }

  if (EnumCaseMultiPayload == 3)
  {
    v20 = *v10;
    v21 = *(v10 + 1);
    v22 = v10[16];
    v24 = 0;
    v25 = 0xE000000000000000;
    _StringGuts.grow(_:)(45);
    MEMORY[0x26D5EC8A0](0xD00000000000001ALL, 0x8000000266BEEA00);
    MEMORY[0x26D5EC8A0](v20, v21);

    MEMORY[0x26D5EC8A0](0x6469666E6F63202CLL, 0xEE00203A65636E65);
    specialized DefaultStringInterpolation.appendInterpolation<A>(_:)(v22);
LABEL_12:
    MEMORY[0x26D5EC8A0](41, 0xE100000000000000);
    return v24;
  }

  if (EnumCaseMultiPayload == 4)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0xD000000000000010;
  }
}

unint64_t type metadata accessor for INPerson()
{
  result = lazy cache variable for type metadata for INPerson;
  if (!lazy cache variable for type metadata for INPerson)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for INPerson);
  }

  return result;
}

uint64_t specialized static ShareTarget.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v95 = a2;
  v3 = type metadata accessor for ShareTarget(0);
  v5 = MEMORY[0x28223BE20](v3, v4);
  v86 = &v86 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v5, v7);
  v88 = &v86 - v9;
  v11 = MEMORY[0x28223BE20](v8, v10);
  v87 = &v86 - v12;
  v14 = MEMORY[0x28223BE20](v11, v13);
  v89 = &v86 - v15;
  v17 = MEMORY[0x28223BE20](v14, v16);
  v90 = &v86 - v18;
  v20 = MEMORY[0x28223BE20](v17, v19);
  v92 = &v86 - v21;
  v23 = MEMORY[0x28223BE20](v20, v22);
  v91 = &v86 - v24;
  v26 = MEMORY[0x28223BE20](v23, v25);
  v28 = (&v86 - v27);
  v30 = MEMORY[0x28223BE20](v26, v29);
  v93 = &v86 - v31;
  v33 = MEMORY[0x28223BE20](v30, v32);
  v35 = (&v86 - v34);
  v37 = MEMORY[0x28223BE20](v33, v36);
  v39 = &v86 - v38;
  MEMORY[0x28223BE20](v37, v40);
  v42 = &v86 - v41;
  v43 = type metadata accessor for UsoEntity_common_AttachmentType.DefinedValues();
  v94 = *(v43 - 8);
  v45 = MEMORY[0x28223BE20](v43, v44);
  v47 = &v86 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v45, v48);
  v50 = &v86 - v49;
  outlined init with copy of ShareTarget(a1, v42);
  if (!swift_getEnumCaseMultiPayload())
  {
    v93 = v47;
    v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology9UsoEntityC_AA0cD22_common_AttachmentTypeC13DefinedValuesO4typetMd, &_s12SiriOntology9UsoEntityC_AA0cD22_common_AttachmentTypeC13DefinedValuesO4typetMR);
    v57 = v94;
    v58 = *(v94 + 32);
    v58(v50, &v42[*(v56 + 48)], v43);
    outlined init with copy of ShareTarget(v95, v39);
    if (swift_getEnumCaseMultiPayload())
    {
      (*(v57 + 8))(v50, v43);

      v59 = v39;
LABEL_17:
      outlined destroy of ShareTarget(v59);
LABEL_18:
      v62 = 0;
      return v62 & 1;
    }

    v70 = &v39[*(v56 + 48)];
    v71 = v93;
    v58(v93, v70, v43);
    if ((UsoEntity.isEquivalentTo(_:)() & 1) == 0)
    {

      v79 = *(v94 + 8);
      v79(v71, v43);
      v79(v50, v43);
      goto LABEL_18;
    }

    lazy protocol witness table accessor for type UsoEntity_common_AttachmentType.DefinedValues and conformance UsoEntity_common_AttachmentType.DefinedValues();
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    if (v98 == v96 && v99 == v97)
    {
      v62 = 1;
    }

    else
    {
      v62 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    v80 = *(v94 + 8);
    v80(v71, v43);
    v80(v50, v43);
    goto LABEL_41;
  }

  v51 = v95;
  outlined destroy of ShareTarget(v42);
  outlined init with copy of ShareTarget(a1, v35);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v53 = *v35;
    v52 = v35[1];
    v54 = v93;
    outlined init with copy of ShareTarget(v51, v93);
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v55 = *(v54 + 1);
      if (v52)
      {
        if (v55)
        {
          if (v53 != *v54 || v52 != v55)
          {
LABEL_36:
            v62 = _stringCompareWithSmolCheck(_:_:expecting:)();

            return v62 & 1;
          }

          goto LABEL_15;
        }

        goto LABEL_38;
      }

      if (v55)
      {
LABEL_38:

        goto LABEL_18;
      }

LABEL_35:
      v62 = 1;
      return v62 & 1;
    }

    goto LABEL_16;
  }

  outlined destroy of ShareTarget(v35);
  outlined init with copy of ShareTarget(a1, v28);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v61 = *v28;
    v60 = v28[1];
    v54 = v91;
    outlined init with copy of ShareTarget(v51, v91);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
LABEL_16:

      v59 = v54;
      goto LABEL_17;
    }

    if (v61 != *v54 || v60 != *(v54 + 1))
    {
      goto LABEL_36;
    }

LABEL_15:

    v62 = 1;
    return v62 & 1;
  }

  outlined destroy of ShareTarget(v28);
  v64 = v92;
  outlined init with copy of ShareTarget(a1, v92);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    outlined destroy of ShareTarget(v64);
    v72 = v89;
    outlined init with copy of ShareTarget(a1, v89);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    outlined destroy of ShareTarget(v72);
    if (EnumCaseMultiPayload != 4 || (v74 = v87, outlined init with copy of ShareTarget(v51, v87), v75 = swift_getEnumCaseMultiPayload(), outlined destroy of ShareTarget(v74), v75 != 4))
    {
      v76 = v88;
      outlined init with copy of ShareTarget(a1, v88);
      v77 = swift_getEnumCaseMultiPayload();
      outlined destroy of ShareTarget(v76);
      if (v77 == 5)
      {
        v78 = v86;
        outlined init with copy of ShareTarget(v51, v86);
        v62 = swift_getEnumCaseMultiPayload() == 5;
        outlined destroy of ShareTarget(v78);
        return v62 & 1;
      }

      goto LABEL_18;
    }

    goto LABEL_35;
  }

  v66 = *v64;
  v65 = *(v64 + 8);
  v67 = *(v64 + 16);
  v68 = v90;
  outlined init with copy of ShareTarget(v51, v90);
  if (swift_getEnumCaseMultiPayload() != 3)
  {

    v59 = v68;
    goto LABEL_17;
  }

  v69 = *(v68 + 16);
  if (v66 == *v68 && v65 == *(v68 + 8))
  {
  }

  else
  {
    v81 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v81 & 1) == 0)
    {
      goto LABEL_18;
    }
  }

  v62 = v69 == 2 && v67 == 2;
  if (v67 != 2 && v69 != 2)
  {
    if (v67)
    {
      v82 = 0xD000000000000012;
    }

    else
    {
      v82 = 0xD00000000000001FLL;
    }

    if (v67)
    {
      v83 = "conflictingAppNameAndEntityType";
    }

    else
    {
      v83 = "ation";
    }

    if (v69)
    {
      v84 = 0xD000000000000012;
    }

    else
    {
      v84 = 0xD00000000000001FLL;
    }

    if (v69)
    {
      v85 = "conflictingAppNameAndEntityType";
    }

    else
    {
      v85 = "ation";
    }

    if (v82 == v84 && (v83 | 0x8000000000000000) == (v85 | 0x8000000000000000))
    {
      goto LABEL_15;
    }

    v62 = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_41:
  }

  return v62 & 1;
}

uint64_t outlined destroy of ShareTarget(uint64_t a1)
{
  v2 = type metadata accessor for ShareTarget(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type UsoEntity_common_AttachmentType.DefinedValues and conformance UsoEntity_common_AttachmentType.DefinedValues()
{
  result = lazy protocol witness table cache variable for type UsoEntity_common_AttachmentType.DefinedValues and conformance UsoEntity_common_AttachmentType.DefinedValues;
  if (!lazy protocol witness table cache variable for type UsoEntity_common_AttachmentType.DefinedValues and conformance UsoEntity_common_AttachmentType.DefinedValues)
  {
    type metadata accessor for UsoEntity_common_AttachmentType.DefinedValues();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UsoEntity_common_AttachmentType.DefinedValues and conformance UsoEntity_common_AttachmentType.DefinedValues);
  }

  return result;
}

unint64_t ScreenSharingCallManager.init()@<X0>(void *a1@<X8>)
{
  v2 = [objc_opt_self() sharedInstance];
  result = type metadata accessor for TUCallCenter();
  a1[3] = result;
  a1[4] = &protocol witness table for TUCallCenter;
  *a1 = v2;
  return result;
}

uint64_t ScreenSharingCallManager.currentShareStatus.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  (*(v4 + 8))(&v17, v3, v4);
  if (!v18)
  {
    result = outlined destroy of SharingResponse?(&v17, &_s19SiriExpanseInternal4Call_pSgMd, &_s19SiriExpanseInternal4Call_pSgMR);
    *a1 = 0u;
    *(a1 + 16) = 0u;
    *(a1 + 32) = -1;
    return result;
  }

  outlined init with take of ConversationParticipant(&v17, v19);
  v5 = v20;
  v6 = v21;
  __swift_project_boxed_opaque_existential_1(v19, v20);
  v7 = (*(v6 + 64))(v5, v6);
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      *(a1 + 32) = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
      return __swift_destroy_boxed_opaque_existential_1Tm(v19);
    }

    if (v8 != 4)
    {
      goto LABEL_15;
    }

    *a1 = 0u;
    *(a1 + 16) = 0u;
LABEL_9:
    v12 = 2;
LABEL_10:
    *(a1 + 32) = v12;
    return __swift_destroy_boxed_opaque_existential_1Tm(v19);
  }

  if (v8 == 1)
  {
    *a1 = 1;
    *(a1 + 8) = 0;
    *(a1 + 16) = 0;
    *(a1 + 24) = 0;
    goto LABEL_9;
  }

  if (v8 != 2)
  {
LABEL_15:
    v13 = v7;
    v14 = v8;
    v15 = v9;
    v16 = v10;

    outlined consume of ShareSession?(v13, v14, v15, v16);
    *a1 = v13;
    *(a1 + 8) = v14;
    *(a1 + 16) = v15;
    *(a1 + 24) = v16;
    v12 = 1;
    goto LABEL_10;
  }

  *a1 = 2;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 2;
  return __swift_destroy_boxed_opaque_existential_1Tm(v19);
}

Swift::Bool __swiftcall ScreenSharingCallManager.isScreenShareSupportingCallSalient()()
{
  ScreenSharingCallManager.getSalientScreenShareSupportingCall()(v2);
  v0 = v3 != 0;
  outlined destroy of SharingResponse?(v2, &_s19SiriExpanseInternal4Call_pSgMd, &_s19SiriExpanseInternal4Call_pSgMR);
  return v0;
}

double ScreenSharingCallManager.getSalientScreenShareSupportingCall()@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v3);
  (*(v4 + 8))(&v10, v3, v4);
  if (v11)
  {
    outlined init with take of ConversationParticipant(&v10, v12);
    v5 = v13;
    v6 = v14;
    __swift_project_boxed_opaque_existential_1(v12, v13);
    if ((*(v6 + 56))(v5, v6))
    {
      v7 = v13;
      v8 = v14;
      __swift_project_boxed_opaque_existential_1(v12, v13);
      if ((*(v8 + 160))(v7, v8))
      {
        outlined init with copy of ResponseExecuting(v12, a1);
        __swift_destroy_boxed_opaque_existential_1Tm(v12);
        return result;
      }
    }

    __swift_destroy_boxed_opaque_existential_1Tm(v12);
  }

  else
  {
    outlined destroy of SharingResponse?(&v10, &_s19SiriExpanseInternal4Call_pSgMd, &_s19SiriExpanseInternal4Call_pSgMR);
  }

  *(a1 + 32) = 0;
  result = 0.0;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  return result;
}

uint64_t ScreenSharingCallManager.getRemoteCallParticipantHandles()()
{
  v1 = v0[3];
  v2 = v0[4];
  __swift_project_boxed_opaque_existential_1(v0, v1);
  (*(v2 + 8))(&v27, v1, v2);
  if (!v28)
  {
    outlined destroy of SharingResponse?(&v27, &_s19SiriExpanseInternal4Call_pSgMd, &_s19SiriExpanseInternal4Call_pSgMR);
    return MEMORY[0x277D84FA0];
  }

  outlined init with take of ConversationParticipant(&v27, v30);
  v3 = v31;
  v4 = v32;
  __swift_project_boxed_opaque_existential_1(v30, v31);
  (*(v4 + 40))(&v24, v3, v4);
  if (!v25)
  {
    outlined destroy of SharingResponse?(&v24, &_s19SiriExpanseInternal12Conversation_pSgMd, &_s19SiriExpanseInternal12Conversation_pSgMR);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    return MEMORY[0x277D84FA0];
  }

  outlined init with take of ConversationParticipant(&v24, &v27);
  v5 = v28;
  v6 = v29;
  __swift_project_boxed_opaque_existential_1(&v27, v28);
  v7 = (*(v6 + 8))(v5, v6);
  v8 = *(v7 + 16);
  if (v8)
  {
    v23 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8, 0);
    v9 = v23;
    v10 = v7 + 32;
    do
    {
      outlined init with copy of ResponseExecuting(v10, &v24);
      v11 = v25;
      v12 = v26;
      __swift_project_boxed_opaque_existential_1(&v24, v25);
      v13 = (*(v12 + 8))(v11, v12);
      v14 = [v13 value];

      v15 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v17 = v16;

      __swift_destroy_boxed_opaque_existential_1Tm(&v24);
      v19 = *(v23 + 16);
      v18 = *(v23 + 24);
      if (v19 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
      }

      *(v23 + 16) = v19 + 1;
      v20 = v23 + 16 * v19;
      *(v20 + 32) = v15;
      *(v20 + 40) = v17;
      v10 += 40;
      --v8;
    }

    while (v8);
  }

  else
  {

    v9 = MEMORY[0x277D84F90];
  }

  v22 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(v9);

  __swift_destroy_boxed_opaque_existential_1Tm(&v27);
  __swift_destroy_boxed_opaque_existential_1Tm(v30);
  return v22;
}

BOOL protocol witness for ScreenSharingCallManaging.isScreenShareSupportingCallSalient() in conformance ScreenSharingCallManager()
{
  ScreenSharingCallManager.getSalientScreenShareSupportingCall()(v2);
  v0 = v3 != 0;
  outlined destroy of SharingResponse?(v2, &_s19SiriExpanseInternal4Call_pSgMd, &_s19SiriExpanseInternal4Call_pSgMR);
  return v0;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:privacy:attributes:)(uint64_t (*a1)(void))
{
  a1();

  return _swift_stdlib_bridgeErrorToNSError();
}

{
  return a1();
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

void outlined consume of ShareSession?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != 4)
  {
    outlined consume of ShareSession(a1, a2, a3, a4);
  }
}

void outlined consume of ShareSession(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if ((a2 - 1) >= 3)
  {
  }
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for ScreenSharingCallManager(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t storeEnumTagSinglePayload for ScreenSharingCallManager(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}