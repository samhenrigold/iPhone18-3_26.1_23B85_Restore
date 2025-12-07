uint64_t protocol witness for Error._domain.getter in conformance MLS.SelfKeyPackageError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SelfKeyPackageError and conformance MLS.SelfKeyPackageError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance MLS.SelfKeyPackageError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SelfKeyPackageError and conformance MLS.SelfKeyPackageError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.GroupCreationError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.GroupCreationError.CodingKeys and conformance MLS.GroupCreationError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.GroupCreationError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.GroupCreationError.CodingKeys and conformance MLS.GroupCreationError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.GroupCreationError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO18GroupCreationErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO18GroupCreationErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v11[0] = *(v1 + 2);
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.GroupCreationError.CodingKeys and conformance MLS.GroupCreationError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v8;
  v13 = 0;
  lazy protocol witness table accessor for type MLS.GroupCreationError.ErrorType and conformance MLS.GroupCreationError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type MLS.GroupCreationError.CodingKeys and conformance MLS.GroupCreationError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.GroupCreationError.CodingKeys and conformance MLS.GroupCreationError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupCreationError.CodingKeys and conformance MLS.GroupCreationError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupCreationError.CodingKeys and conformance MLS.GroupCreationError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupCreationError.CodingKeys and conformance MLS.GroupCreationError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupCreationError.CodingKeys and conformance MLS.GroupCreationError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupCreationError.CodingKeys and conformance MLS.GroupCreationError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupCreationError.CodingKeys and conformance MLS.GroupCreationError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupCreationError.CodingKeys and conformance MLS.GroupCreationError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupCreationError.CodingKeys and conformance MLS.GroupCreationError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupCreationError.CodingKeys and conformance MLS.GroupCreationError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupCreationError.CodingKeys and conformance MLS.GroupCreationError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupCreationError.CodingKeys and conformance MLS.GroupCreationError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.GroupCreationError.ErrorType and conformance MLS.GroupCreationError.ErrorType()
{
  result = lazy protocol witness table cache variable for type MLS.GroupCreationError.ErrorType and conformance MLS.GroupCreationError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupCreationError.ErrorType and conformance MLS.GroupCreationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupCreationError.ErrorType and conformance MLS.GroupCreationError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupCreationError.ErrorType and conformance MLS.GroupCreationError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupCreationError.ErrorType and conformance MLS.GroupCreationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupCreationError.ErrorType and conformance MLS.GroupCreationError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupCreationError.ErrorType and conformance MLS.GroupCreationError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupCreationError.ErrorType and conformance MLS.GroupCreationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupCreationError.ErrorType and conformance MLS.GroupCreationError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupCreationError.ErrorType and conformance MLS.GroupCreationError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupCreationError.ErrorType and conformance MLS.GroupCreationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupCreationError.ErrorType and conformance MLS.GroupCreationError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupCreationError.ErrorType and conformance MLS.GroupCreationError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupCreationError.ErrorType and conformance MLS.GroupCreationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupCreationError.ErrorType and conformance MLS.GroupCreationError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupCreationError.ErrorType and conformance MLS.GroupCreationError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupCreationError.ErrorType and conformance MLS.GroupCreationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupCreationError.ErrorType and conformance MLS.GroupCreationError.ErrorType);
  }

  return result;
}

uint64_t MLS.GroupCreationError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO18GroupCreationErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO18GroupCreationErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.GroupCreationError.CodingKeys and conformance MLS.GroupCreationError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = 0;
    lazy protocol witness table accessor for type MLS.GroupCreationError.ErrorType and conformance MLS.GroupCreationError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v17;
    v15 = 1;
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance MLS.GroupCreationError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance MLS.GroupCreationError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.GroupDeletionError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.GroupDeletionError.CodingKeys and conformance MLS.GroupDeletionError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.GroupDeletionError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.GroupDeletionError.CodingKeys and conformance MLS.GroupDeletionError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.GroupDeletionError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO18GroupDeletionErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO18GroupDeletionErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v11[0] = *(v1 + 2);
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.GroupDeletionError.CodingKeys and conformance MLS.GroupDeletionError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v8;
  v13 = 0;
  lazy protocol witness table accessor for type MLS.GroupDeletionError.ErrorType and conformance MLS.GroupDeletionError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type MLS.GroupDeletionError.CodingKeys and conformance MLS.GroupDeletionError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.GroupDeletionError.CodingKeys and conformance MLS.GroupDeletionError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupDeletionError.CodingKeys and conformance MLS.GroupDeletionError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupDeletionError.CodingKeys and conformance MLS.GroupDeletionError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupDeletionError.CodingKeys and conformance MLS.GroupDeletionError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupDeletionError.CodingKeys and conformance MLS.GroupDeletionError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupDeletionError.CodingKeys and conformance MLS.GroupDeletionError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupDeletionError.CodingKeys and conformance MLS.GroupDeletionError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupDeletionError.CodingKeys and conformance MLS.GroupDeletionError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupDeletionError.CodingKeys and conformance MLS.GroupDeletionError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupDeletionError.CodingKeys and conformance MLS.GroupDeletionError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupDeletionError.CodingKeys and conformance MLS.GroupDeletionError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupDeletionError.CodingKeys and conformance MLS.GroupDeletionError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.GroupDeletionError.ErrorType and conformance MLS.GroupDeletionError.ErrorType()
{
  result = lazy protocol witness table cache variable for type MLS.GroupDeletionError.ErrorType and conformance MLS.GroupDeletionError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupDeletionError.ErrorType and conformance MLS.GroupDeletionError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupDeletionError.ErrorType and conformance MLS.GroupDeletionError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupDeletionError.ErrorType and conformance MLS.GroupDeletionError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupDeletionError.ErrorType and conformance MLS.GroupDeletionError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupDeletionError.ErrorType and conformance MLS.GroupDeletionError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupDeletionError.ErrorType and conformance MLS.GroupDeletionError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupDeletionError.ErrorType and conformance MLS.GroupDeletionError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupDeletionError.ErrorType and conformance MLS.GroupDeletionError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupDeletionError.ErrorType and conformance MLS.GroupDeletionError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupDeletionError.ErrorType and conformance MLS.GroupDeletionError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupDeletionError.ErrorType and conformance MLS.GroupDeletionError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupDeletionError.ErrorType and conformance MLS.GroupDeletionError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupDeletionError.ErrorType and conformance MLS.GroupDeletionError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupDeletionError.ErrorType and conformance MLS.GroupDeletionError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupDeletionError.ErrorType and conformance MLS.GroupDeletionError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupDeletionError.ErrorType and conformance MLS.GroupDeletionError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupDeletionError.ErrorType and conformance MLS.GroupDeletionError.ErrorType);
  }

  return result;
}

uint64_t MLS.GroupDeletionError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO18GroupDeletionErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO18GroupDeletionErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.GroupDeletionError.CodingKeys and conformance MLS.GroupDeletionError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = 0;
    lazy protocol witness table accessor for type MLS.GroupDeletionError.ErrorType and conformance MLS.GroupDeletionError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v17;
    v15 = 1;
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance MLS.GroupDeletionError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance MLS.GroupDeletionError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.GroupOperationError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.GroupOperationError.CodingKeys and conformance MLS.GroupOperationError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.GroupOperationError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.GroupOperationError.CodingKeys and conformance MLS.GroupOperationError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.GroupOperationError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO19GroupOperationErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO19GroupOperationErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v11[0] = *(v1 + 2);
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.GroupOperationError.CodingKeys and conformance MLS.GroupOperationError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v8;
  v13 = 0;
  lazy protocol witness table accessor for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type MLS.GroupOperationError.CodingKeys and conformance MLS.GroupOperationError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.GroupOperationError.CodingKeys and conformance MLS.GroupOperationError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupOperationError.CodingKeys and conformance MLS.GroupOperationError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupOperationError.CodingKeys and conformance MLS.GroupOperationError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupOperationError.CodingKeys and conformance MLS.GroupOperationError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupOperationError.CodingKeys and conformance MLS.GroupOperationError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupOperationError.CodingKeys and conformance MLS.GroupOperationError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupOperationError.CodingKeys and conformance MLS.GroupOperationError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupOperationError.CodingKeys and conformance MLS.GroupOperationError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupOperationError.CodingKeys and conformance MLS.GroupOperationError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupOperationError.CodingKeys and conformance MLS.GroupOperationError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupOperationError.CodingKeys and conformance MLS.GroupOperationError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupOperationError.CodingKeys and conformance MLS.GroupOperationError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType()
{
  result = lazy protocol witness table cache variable for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType);
  }

  return result;
}

uint64_t MLS.GroupOperationError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO19GroupOperationErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO19GroupOperationErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.GroupOperationError.CodingKeys and conformance MLS.GroupOperationError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = 0;
    lazy protocol witness table accessor for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v17;
    v15 = 1;
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance MLS.GroupOperationError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance MLS.GroupOperationError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t MLS.GroupFetchError.ErrorType.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 8;
  if (result < 8)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.GroupFetchError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.GroupFetchError.CodingKeys and conformance MLS.GroupFetchError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.GroupFetchError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.GroupFetchError.CodingKeys and conformance MLS.GroupFetchError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.GroupFetchError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO15GroupFetchErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO15GroupFetchErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v11[0] = *(v1 + 2);
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.GroupFetchError.CodingKeys and conformance MLS.GroupFetchError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v8;
  v13 = 0;
  lazy protocol witness table accessor for type MLS.GroupFetchError.ErrorType and conformance MLS.GroupFetchError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type MLS.GroupFetchError.CodingKeys and conformance MLS.GroupFetchError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.GroupFetchError.CodingKeys and conformance MLS.GroupFetchError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupFetchError.CodingKeys and conformance MLS.GroupFetchError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupFetchError.CodingKeys and conformance MLS.GroupFetchError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupFetchError.CodingKeys and conformance MLS.GroupFetchError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupFetchError.CodingKeys and conformance MLS.GroupFetchError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupFetchError.CodingKeys and conformance MLS.GroupFetchError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupFetchError.CodingKeys and conformance MLS.GroupFetchError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupFetchError.CodingKeys and conformance MLS.GroupFetchError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupFetchError.CodingKeys and conformance MLS.GroupFetchError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupFetchError.CodingKeys and conformance MLS.GroupFetchError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupFetchError.CodingKeys and conformance MLS.GroupFetchError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupFetchError.CodingKeys and conformance MLS.GroupFetchError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.GroupFetchError.ErrorType and conformance MLS.GroupFetchError.ErrorType()
{
  result = lazy protocol witness table cache variable for type MLS.GroupFetchError.ErrorType and conformance MLS.GroupFetchError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupFetchError.ErrorType and conformance MLS.GroupFetchError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupFetchError.ErrorType and conformance MLS.GroupFetchError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupFetchError.ErrorType and conformance MLS.GroupFetchError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupFetchError.ErrorType and conformance MLS.GroupFetchError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupFetchError.ErrorType and conformance MLS.GroupFetchError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupFetchError.ErrorType and conformance MLS.GroupFetchError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupFetchError.ErrorType and conformance MLS.GroupFetchError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupFetchError.ErrorType and conformance MLS.GroupFetchError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupFetchError.ErrorType and conformance MLS.GroupFetchError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupFetchError.ErrorType and conformance MLS.GroupFetchError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupFetchError.ErrorType and conformance MLS.GroupFetchError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupFetchError.ErrorType and conformance MLS.GroupFetchError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupFetchError.ErrorType and conformance MLS.GroupFetchError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupFetchError.ErrorType and conformance MLS.GroupFetchError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupFetchError.ErrorType and conformance MLS.GroupFetchError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupFetchError.ErrorType and conformance MLS.GroupFetchError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupFetchError.ErrorType and conformance MLS.GroupFetchError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupFetchError.ErrorType and conformance MLS.GroupFetchError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupFetchError.ErrorType and conformance MLS.GroupFetchError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupFetchError.ErrorType and conformance MLS.GroupFetchError.ErrorType);
  }

  return result;
}

uint64_t MLS.GroupFetchError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO15GroupFetchErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO15GroupFetchErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.GroupFetchError.CodingKeys and conformance MLS.GroupFetchError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = 0;
    lazy protocol witness table accessor for type MLS.GroupFetchError.ErrorType and conformance MLS.GroupFetchError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v17;
    v15 = 1;
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance MLS.GroupFetchError(uint64_t a1)
{
  Error = lazy protocol witness table accessor for type MLS.GroupFetchError and conformance MLS.GroupFetchError();

  return MEMORY[0x28211F4B8](a1, Error);
}

uint64_t protocol witness for Error._code.getter in conformance MLS.GroupFetchError(uint64_t a1)
{
  Error = lazy protocol witness table accessor for type MLS.GroupFetchError and conformance MLS.GroupFetchError();

  return MEMORY[0x28211F4A8](a1, Error);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.GroupUpdateError.CodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type MLS.GroupUpdateError.CodingKeys and conformance MLS.GroupUpdateError.CodingKeys();

  return MEMORY[0x2821FE718](a1, updated);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.GroupUpdateError.CodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type MLS.GroupUpdateError.CodingKeys and conformance MLS.GroupUpdateError.CodingKeys();

  return MEMORY[0x2821FE720](a1, updated);
}

uint64_t MLS.GroupUpdateError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO16GroupUpdateErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO16GroupUpdateErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v11[0] = *(v1 + 2);
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.GroupUpdateError.CodingKeys and conformance MLS.GroupUpdateError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v8;
  v13 = 0;
  lazy protocol witness table accessor for type MLS.GroupUpdateError.ErrorType and conformance MLS.GroupUpdateError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type MLS.GroupUpdateError.CodingKeys and conformance MLS.GroupUpdateError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.GroupUpdateError.CodingKeys and conformance MLS.GroupUpdateError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupUpdateError.CodingKeys and conformance MLS.GroupUpdateError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupUpdateError.CodingKeys and conformance MLS.GroupUpdateError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupUpdateError.CodingKeys and conformance MLS.GroupUpdateError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupUpdateError.CodingKeys and conformance MLS.GroupUpdateError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupUpdateError.CodingKeys and conformance MLS.GroupUpdateError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupUpdateError.CodingKeys and conformance MLS.GroupUpdateError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupUpdateError.CodingKeys and conformance MLS.GroupUpdateError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupUpdateError.CodingKeys and conformance MLS.GroupUpdateError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupUpdateError.CodingKeys and conformance MLS.GroupUpdateError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupUpdateError.CodingKeys and conformance MLS.GroupUpdateError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupUpdateError.CodingKeys and conformance MLS.GroupUpdateError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.GroupUpdateError.ErrorType and conformance MLS.GroupUpdateError.ErrorType()
{
  result = lazy protocol witness table cache variable for type MLS.GroupUpdateError.ErrorType and conformance MLS.GroupUpdateError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupUpdateError.ErrorType and conformance MLS.GroupUpdateError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupUpdateError.ErrorType and conformance MLS.GroupUpdateError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupUpdateError.ErrorType and conformance MLS.GroupUpdateError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupUpdateError.ErrorType and conformance MLS.GroupUpdateError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupUpdateError.ErrorType and conformance MLS.GroupUpdateError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupUpdateError.ErrorType and conformance MLS.GroupUpdateError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupUpdateError.ErrorType and conformance MLS.GroupUpdateError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupUpdateError.ErrorType and conformance MLS.GroupUpdateError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupUpdateError.ErrorType and conformance MLS.GroupUpdateError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupUpdateError.ErrorType and conformance MLS.GroupUpdateError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupUpdateError.ErrorType and conformance MLS.GroupUpdateError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupUpdateError.ErrorType and conformance MLS.GroupUpdateError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupUpdateError.ErrorType and conformance MLS.GroupUpdateError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupUpdateError.ErrorType and conformance MLS.GroupUpdateError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupUpdateError.ErrorType and conformance MLS.GroupUpdateError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupUpdateError.ErrorType and conformance MLS.GroupUpdateError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupUpdateError.ErrorType and conformance MLS.GroupUpdateError.ErrorType);
  }

  return result;
}

uint64_t MLS.GroupUpdateError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO16GroupUpdateErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO16GroupUpdateErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.GroupUpdateError.CodingKeys and conformance MLS.GroupUpdateError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = 0;
    lazy protocol witness table accessor for type MLS.GroupUpdateError.ErrorType and conformance MLS.GroupUpdateError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v17;
    v15 = 1;
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance MLS.GroupUpdateError(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError();

  return MEMORY[0x28211F4B8](a1, updated);
}

uint64_t protocol witness for Error._code.getter in conformance MLS.GroupUpdateError(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError();

  return MEMORY[0x28211F4A8](a1, updated);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.GroupMembersError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.GroupMembersError.CodingKeys and conformance MLS.GroupMembersError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.GroupMembersError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.GroupMembersError.CodingKeys and conformance MLS.GroupMembersError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.GroupMembersError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO17GroupMembersErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO17GroupMembersErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v11[0] = *(v1 + 2);
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.GroupMembersError.CodingKeys and conformance MLS.GroupMembersError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v8;
  v13 = 0;
  lazy protocol witness table accessor for type MLS.GroupMembersError.ErrorType and conformance MLS.GroupMembersError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type MLS.GroupMembersError.CodingKeys and conformance MLS.GroupMembersError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.GroupMembersError.CodingKeys and conformance MLS.GroupMembersError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupMembersError.CodingKeys and conformance MLS.GroupMembersError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupMembersError.CodingKeys and conformance MLS.GroupMembersError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupMembersError.CodingKeys and conformance MLS.GroupMembersError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupMembersError.CodingKeys and conformance MLS.GroupMembersError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupMembersError.CodingKeys and conformance MLS.GroupMembersError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupMembersError.CodingKeys and conformance MLS.GroupMembersError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupMembersError.CodingKeys and conformance MLS.GroupMembersError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupMembersError.CodingKeys and conformance MLS.GroupMembersError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupMembersError.CodingKeys and conformance MLS.GroupMembersError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupMembersError.CodingKeys and conformance MLS.GroupMembersError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupMembersError.CodingKeys and conformance MLS.GroupMembersError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.GroupMembersError.ErrorType and conformance MLS.GroupMembersError.ErrorType()
{
  result = lazy protocol witness table cache variable for type MLS.GroupMembersError.ErrorType and conformance MLS.GroupMembersError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupMembersError.ErrorType and conformance MLS.GroupMembersError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupMembersError.ErrorType and conformance MLS.GroupMembersError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupMembersError.ErrorType and conformance MLS.GroupMembersError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupMembersError.ErrorType and conformance MLS.GroupMembersError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupMembersError.ErrorType and conformance MLS.GroupMembersError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupMembersError.ErrorType and conformance MLS.GroupMembersError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupMembersError.ErrorType and conformance MLS.GroupMembersError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupMembersError.ErrorType and conformance MLS.GroupMembersError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupMembersError.ErrorType and conformance MLS.GroupMembersError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupMembersError.ErrorType and conformance MLS.GroupMembersError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupMembersError.ErrorType and conformance MLS.GroupMembersError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupMembersError.ErrorType and conformance MLS.GroupMembersError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupMembersError.ErrorType and conformance MLS.GroupMembersError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupMembersError.ErrorType and conformance MLS.GroupMembersError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupMembersError.ErrorType and conformance MLS.GroupMembersError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.GroupMembersError.ErrorType and conformance MLS.GroupMembersError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupMembersError.ErrorType and conformance MLS.GroupMembersError.ErrorType);
  }

  return result;
}

uint64_t MLS.GroupMembersError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO17GroupMembersErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO17GroupMembersErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.GroupMembersError.CodingKeys and conformance MLS.GroupMembersError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = 0;
    lazy protocol witness table accessor for type MLS.GroupMembersError.ErrorType and conformance MLS.GroupMembersError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v17;
    v15 = 1;
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance MLS.GroupMembersError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.GroupMembersError and conformance MLS.GroupMembersError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance MLS.GroupMembersError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.GroupMembersError and conformance MLS.GroupMembersError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t MLS.GroupOperationError.ErrorType.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 0;
  v3 = 11;
  switch(result)
  {
    case 0:
      goto LABEL_24;
    case 1:
      v2 = 1;
      goto LABEL_24;
    case 2:
      v2 = 2;
      goto LABEL_24;
    case 3:
      v2 = 3;
      goto LABEL_24;
    case 4:
      v2 = 4;
      goto LABEL_24;
    case 5:
      v2 = 5;
      goto LABEL_24;
    case 6:
      v2 = 6;
      goto LABEL_24;
    case 7:
      v2 = 7;
      goto LABEL_24;
    case 8:
      v2 = 8;
      goto LABEL_24;
    case 9:
      v2 = 9;
      goto LABEL_24;
    case 10:
      v2 = 10;
LABEL_24:
      v3 = v2;
      goto LABEL_25;
    case 11:
LABEL_25:
      *a2 = v3;
      break;
    case 12:
      *a2 = 12;
      break;
    case 13:
      *a2 = 13;
      break;
    case 14:
      *a2 = 14;
      break;
    case 15:
      *a2 = 15;
      break;
    case 16:
      *a2 = 16;
      break;
    case 17:
      *a2 = 17;
      break;
    case 18:
      *a2 = 18;
      break;
    case 19:
      *a2 = 19;
      break;
    case 20:
      *a2 = 20;
      break;
    case 21:
      *a2 = 21;
      break;
    case 22:
      *a2 = 22;
      break;
    case 23:
      *a2 = 23;
      break;
    case 24:
      *a2 = 24;
      break;
    case 25:
      *a2 = 25;
      break;
    case 26:
      *a2 = 26;
      break;
    case 27:
      *a2 = 27;
      break;
    case 28:
      *a2 = 28;
      break;
    default:
      *a2 = 29;
      break;
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.EncryptionError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptionError.CodingKeys and conformance MLS.EncryptionError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.EncryptionError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptionError.CodingKeys and conformance MLS.EncryptionError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.EncryptionError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO15EncryptionErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO15EncryptionErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v11[0] = *(v1 + 2);
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.EncryptionError.CodingKeys and conformance MLS.EncryptionError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v8;
  v13 = 0;
  lazy protocol witness table accessor for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type MLS.EncryptionError.CodingKeys and conformance MLS.EncryptionError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.EncryptionError.CodingKeys and conformance MLS.EncryptionError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptionError.CodingKeys and conformance MLS.EncryptionError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptionError.CodingKeys and conformance MLS.EncryptionError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptionError.CodingKeys and conformance MLS.EncryptionError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptionError.CodingKeys and conformance MLS.EncryptionError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptionError.CodingKeys and conformance MLS.EncryptionError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptionError.CodingKeys and conformance MLS.EncryptionError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptionError.CodingKeys and conformance MLS.EncryptionError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptionError.CodingKeys and conformance MLS.EncryptionError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptionError.CodingKeys and conformance MLS.EncryptionError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptionError.CodingKeys and conformance MLS.EncryptionError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptionError.CodingKeys and conformance MLS.EncryptionError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType()
{
  result = lazy protocol witness table cache variable for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType);
  }

  return result;
}

uint64_t MLS.EncryptionError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO15EncryptionErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO15EncryptionErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.EncryptionError.CodingKeys and conformance MLS.EncryptionError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = 0;
    lazy protocol witness table accessor for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v17;
    v15 = 1;
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance MLS.EncryptionError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptionError and conformance MLS.EncryptionError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance MLS.EncryptionError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptionError and conformance MLS.EncryptionError();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t MLS.SigningError.ErrorType.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 16;
  if (result < 0x10)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.SigningError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SigningError.CodingKeys and conformance MLS.SigningError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.SigningError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SigningError.CodingKeys and conformance MLS.SigningError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.SigningError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12SigningErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12SigningErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v11[0] = *(v1 + 2);
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.SigningError.CodingKeys and conformance MLS.SigningError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v8;
  v13 = 0;
  lazy protocol witness table accessor for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type MLS.SigningError.CodingKeys and conformance MLS.SigningError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.SigningError.CodingKeys and conformance MLS.SigningError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SigningError.CodingKeys and conformance MLS.SigningError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningError.CodingKeys and conformance MLS.SigningError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningError.CodingKeys and conformance MLS.SigningError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SigningError.CodingKeys and conformance MLS.SigningError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningError.CodingKeys and conformance MLS.SigningError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningError.CodingKeys and conformance MLS.SigningError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SigningError.CodingKeys and conformance MLS.SigningError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningError.CodingKeys and conformance MLS.SigningError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningError.CodingKeys and conformance MLS.SigningError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SigningError.CodingKeys and conformance MLS.SigningError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningError.CodingKeys and conformance MLS.SigningError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType()
{
  result = lazy protocol witness table cache variable for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType);
  }

  return result;
}

uint64_t MLS.SigningError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12SigningErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12SigningErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.SigningError.CodingKeys and conformance MLS.SigningError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = 0;
    lazy protocol witness table accessor for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v17;
    v15 = 1;
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance MLS.SigningError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SigningError and conformance MLS.SigningError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance MLS.SigningError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SigningError and conformance MLS.SigningError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t MLS.IncomingMessageError.ErrorType.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 0;
  v3 = 9;
  switch(result)
  {
    case 0:
      goto LABEL_23;
    case 1:
      v2 = 1;
      goto LABEL_23;
    case 2:
      v2 = 2;
      goto LABEL_23;
    case 3:
      v2 = 3;
      goto LABEL_23;
    case 4:
      v2 = 4;
      goto LABEL_23;
    case 5:
      v2 = 5;
      goto LABEL_23;
    case 6:
      v2 = 6;
      goto LABEL_23;
    case 7:
      v2 = 7;
      goto LABEL_23;
    case 8:
      v2 = 8;
LABEL_23:
      v3 = v2;
      goto LABEL_24;
    case 9:
LABEL_24:
      *a2 = v3;
      break;
    case 10:
      *a2 = 10;
      break;
    case 11:
      *a2 = 11;
      break;
    case 12:
      *a2 = 12;
      break;
    case 13:
      *a2 = 13;
      break;
    case 14:
      *a2 = 14;
      break;
    case 15:
      *a2 = 15;
      break;
    case 16:
      *a2 = 16;
      break;
    case 17:
      *a2 = 17;
      break;
    case 18:
      *a2 = 18;
      break;
    case 19:
      *a2 = 19;
      break;
    case 20:
      *a2 = 20;
      break;
    case 21:
      *a2 = 21;
      break;
    case 22:
      *a2 = 22;
      break;
    case 23:
      *a2 = 23;
      break;
    case 24:
      *a2 = 24;
      break;
    case 25:
      *a2 = 25;
      break;
    case 26:
      *a2 = 26;
      break;
    default:
      *a2 = 27;
      break;
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingMessageError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.IncomingMessageError.CodingKeys and conformance MLS.IncomingMessageError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingMessageError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.IncomingMessageError.CodingKeys and conformance MLS.IncomingMessageError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.IncomingMessageError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO20IncomingMessageErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO20IncomingMessageErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v11[0] = *(v1 + 2);
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.IncomingMessageError.CodingKeys and conformance MLS.IncomingMessageError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v8;
  v13 = 0;
  lazy protocol witness table accessor for type MLS.IncomingMessageError.ErrorType and conformance MLS.IncomingMessageError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type MLS.IncomingMessageError.CodingKeys and conformance MLS.IncomingMessageError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageError.CodingKeys and conformance MLS.IncomingMessageError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageError.CodingKeys and conformance MLS.IncomingMessageError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageError.CodingKeys and conformance MLS.IncomingMessageError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageError.CodingKeys and conformance MLS.IncomingMessageError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageError.CodingKeys and conformance MLS.IncomingMessageError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageError.CodingKeys and conformance MLS.IncomingMessageError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageError.CodingKeys and conformance MLS.IncomingMessageError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageError.CodingKeys and conformance MLS.IncomingMessageError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageError.CodingKeys and conformance MLS.IncomingMessageError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageError.CodingKeys and conformance MLS.IncomingMessageError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageError.CodingKeys and conformance MLS.IncomingMessageError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageError.CodingKeys and conformance MLS.IncomingMessageError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.IncomingMessageError.ErrorType and conformance MLS.IncomingMessageError.ErrorType()
{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageError.ErrorType and conformance MLS.IncomingMessageError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageError.ErrorType and conformance MLS.IncomingMessageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageError.ErrorType and conformance MLS.IncomingMessageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageError.ErrorType and conformance MLS.IncomingMessageError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageError.ErrorType and conformance MLS.IncomingMessageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageError.ErrorType and conformance MLS.IncomingMessageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageError.ErrorType and conformance MLS.IncomingMessageError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageError.ErrorType and conformance MLS.IncomingMessageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageError.ErrorType and conformance MLS.IncomingMessageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageError.ErrorType and conformance MLS.IncomingMessageError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageError.ErrorType and conformance MLS.IncomingMessageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageError.ErrorType and conformance MLS.IncomingMessageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageError.ErrorType and conformance MLS.IncomingMessageError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageError.ErrorType and conformance MLS.IncomingMessageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageError.ErrorType and conformance MLS.IncomingMessageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageError.ErrorType and conformance MLS.IncomingMessageError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageError.ErrorType and conformance MLS.IncomingMessageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageError.ErrorType and conformance MLS.IncomingMessageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.IncomingMessageError.ErrorType and conformance MLS.IncomingMessageError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.IncomingMessageError.ErrorType and conformance MLS.IncomingMessageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.IncomingMessageError.ErrorType and conformance MLS.IncomingMessageError.ErrorType);
  }

  return result;
}

uint64_t MLS.IncomingMessageError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO20IncomingMessageErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO20IncomingMessageErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.IncomingMessageError.CodingKeys and conformance MLS.IncomingMessageError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = 0;
    lazy protocol witness table accessor for type MLS.IncomingMessageError.ErrorType and conformance MLS.IncomingMessageError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v17;
    v15 = 1;
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance MLS.IncomingMessageError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance MLS.IncomingMessageError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t MLS.GroupCreationError.ErrorType.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 0;
  v3 = 2;
  switch(result)
  {
    case 0:
      goto LABEL_3;
    case 1:
      v2 = 1;
LABEL_3:
      v3 = v2;
      goto LABEL_4;
    case 2:
LABEL_4:
      *a2 = v3;
      break;
    case 3:
      *a2 = 3;
      break;
    case 4:
      *a2 = 4;
      break;
    case 5:
      *a2 = 5;
      break;
    case 6:
      *a2 = 6;
      break;
    case 7:
      *a2 = 7;
      break;
    case 8:
      *a2 = 8;
      break;
    case 9:
      *a2 = 9;
      break;
    case 10:
      *a2 = 10;
      break;
    case 11:
      *a2 = 11;
      break;
    case 12:
      *a2 = 12;
      break;
    case 13:
      *a2 = 13;
      break;
    case 14:
      *a2 = 14;
      break;
    case 15:
      *a2 = 15;
      break;
    case 16:
      *a2 = 16;
      break;
    case 17:
      *a2 = 17;
      break;
    case 18:
      *a2 = 18;
      break;
    case 19:
      *a2 = 19;
      break;
    default:
      *a2 = 20;
      break;
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.DowngradeError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.DowngradeError.CodingKeys and conformance MLS.DowngradeError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.DowngradeError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.DowngradeError.CodingKeys and conformance MLS.DowngradeError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.DowngradeError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO14DowngradeErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO14DowngradeErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v11[0] = *(v1 + 2);
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.DowngradeError.CodingKeys and conformance MLS.DowngradeError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v8;
  v13 = 0;
  lazy protocol witness table accessor for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type MLS.DowngradeError.CodingKeys and conformance MLS.DowngradeError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.DowngradeError.CodingKeys and conformance MLS.DowngradeError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.DowngradeError.CodingKeys and conformance MLS.DowngradeError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.DowngradeError.CodingKeys and conformance MLS.DowngradeError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.DowngradeError.CodingKeys and conformance MLS.DowngradeError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.DowngradeError.CodingKeys and conformance MLS.DowngradeError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.DowngradeError.CodingKeys and conformance MLS.DowngradeError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.DowngradeError.CodingKeys and conformance MLS.DowngradeError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.DowngradeError.CodingKeys and conformance MLS.DowngradeError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.DowngradeError.CodingKeys and conformance MLS.DowngradeError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.DowngradeError.CodingKeys and conformance MLS.DowngradeError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.DowngradeError.CodingKeys and conformance MLS.DowngradeError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.DowngradeError.CodingKeys and conformance MLS.DowngradeError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType()
{
  result = lazy protocol witness table cache variable for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType);
  }

  return result;
}

uint64_t MLS.DowngradeError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO14DowngradeErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO14DowngradeErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.DowngradeError.CodingKeys and conformance MLS.DowngradeError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = 0;
    lazy protocol witness table accessor for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v17;
    v15 = 1;
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance MLS.DowngradeError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.DowngradeError and conformance MLS.DowngradeError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance MLS.DowngradeError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.DowngradeError and conformance MLS.DowngradeError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.KeyPackageUpdateError.CodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type MLS.KeyPackageUpdateError.CodingKeys and conformance MLS.KeyPackageUpdateError.CodingKeys();

  return MEMORY[0x2821FE718](a1, updated);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.KeyPackageUpdateError.CodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type MLS.KeyPackageUpdateError.CodingKeys and conformance MLS.KeyPackageUpdateError.CodingKeys();

  return MEMORY[0x2821FE720](a1, updated);
}

uint64_t MLS.KeyPackageUpdateError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO21KeyPackageUpdateErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO21KeyPackageUpdateErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v11[0] = *(v1 + 2);
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.KeyPackageUpdateError.CodingKeys and conformance MLS.KeyPackageUpdateError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v8;
  v13 = 0;
  lazy protocol witness table accessor for type MLS.KeyPackageUpdateError.ErrorType and conformance MLS.KeyPackageUpdateError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type MLS.KeyPackageUpdateError.CodingKeys and conformance MLS.KeyPackageUpdateError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.CodingKeys and conformance MLS.KeyPackageUpdateError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.CodingKeys and conformance MLS.KeyPackageUpdateError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.CodingKeys and conformance MLS.KeyPackageUpdateError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.CodingKeys and conformance MLS.KeyPackageUpdateError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.CodingKeys and conformance MLS.KeyPackageUpdateError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.CodingKeys and conformance MLS.KeyPackageUpdateError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.CodingKeys and conformance MLS.KeyPackageUpdateError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.CodingKeys and conformance MLS.KeyPackageUpdateError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.CodingKeys and conformance MLS.KeyPackageUpdateError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.CodingKeys and conformance MLS.KeyPackageUpdateError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.CodingKeys and conformance MLS.KeyPackageUpdateError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.CodingKeys and conformance MLS.KeyPackageUpdateError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.KeyPackageUpdateError.ErrorType and conformance MLS.KeyPackageUpdateError.ErrorType()
{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.ErrorType and conformance MLS.KeyPackageUpdateError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.ErrorType and conformance MLS.KeyPackageUpdateError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.ErrorType and conformance MLS.KeyPackageUpdateError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.ErrorType and conformance MLS.KeyPackageUpdateError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.ErrorType and conformance MLS.KeyPackageUpdateError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.ErrorType and conformance MLS.KeyPackageUpdateError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.ErrorType and conformance MLS.KeyPackageUpdateError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.ErrorType and conformance MLS.KeyPackageUpdateError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.ErrorType and conformance MLS.KeyPackageUpdateError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.ErrorType and conformance MLS.KeyPackageUpdateError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.ErrorType and conformance MLS.KeyPackageUpdateError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.ErrorType and conformance MLS.KeyPackageUpdateError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.ErrorType and conformance MLS.KeyPackageUpdateError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.ErrorType and conformance MLS.KeyPackageUpdateError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.ErrorType and conformance MLS.KeyPackageUpdateError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.ErrorType and conformance MLS.KeyPackageUpdateError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.ErrorType and conformance MLS.KeyPackageUpdateError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError.ErrorType and conformance MLS.KeyPackageUpdateError.ErrorType);
  }

  return result;
}

uint64_t MLS.KeyPackageUpdateError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO21KeyPackageUpdateErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO21KeyPackageUpdateErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.KeyPackageUpdateError.CodingKeys and conformance MLS.KeyPackageUpdateError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = 0;
    lazy protocol witness table accessor for type MLS.KeyPackageUpdateError.ErrorType and conformance MLS.KeyPackageUpdateError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v17;
    v15 = 1;
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance MLS.KeyPackageUpdateError(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type MLS.KeyPackageUpdateError and conformance MLS.KeyPackageUpdateError();

  return MEMORY[0x28211F4B8](a1, updated);
}

uint64_t protocol witness for Error._code.getter in conformance MLS.KeyPackageUpdateError(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type MLS.KeyPackageUpdateError and conformance MLS.KeyPackageUpdateError();

  return MEMORY[0x28211F4A8](a1, updated);
}

unint64_t MLS.KeyRollError.ErrorType.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 12;
  if (result < 0xC)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t MLS.KeyRollError.underlyingErrorDescription.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

_BYTE *MLS.KeyRollError.init(type:underlyingErrorDescription:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.KeyRollError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.KeyRollError.CodingKeys and conformance MLS.KeyRollError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.KeyRollError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.KeyRollError.CodingKeys and conformance MLS.KeyRollError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.KeyRollError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12KeyRollErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12KeyRollErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v11[0] = *(v1 + 2);
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.KeyRollError.CodingKeys and conformance MLS.KeyRollError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v8;
  v13 = 0;
  lazy protocol witness table accessor for type MLS.KeyRollError.ErrorType and conformance MLS.KeyRollError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type MLS.KeyRollError.CodingKeys and conformance MLS.KeyRollError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.KeyRollError.CodingKeys and conformance MLS.KeyRollError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.KeyRollError.CodingKeys and conformance MLS.KeyRollError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyRollError.CodingKeys and conformance MLS.KeyRollError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyRollError.CodingKeys and conformance MLS.KeyRollError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.KeyRollError.CodingKeys and conformance MLS.KeyRollError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyRollError.CodingKeys and conformance MLS.KeyRollError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyRollError.CodingKeys and conformance MLS.KeyRollError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.KeyRollError.CodingKeys and conformance MLS.KeyRollError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyRollError.CodingKeys and conformance MLS.KeyRollError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyRollError.CodingKeys and conformance MLS.KeyRollError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.KeyRollError.CodingKeys and conformance MLS.KeyRollError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyRollError.CodingKeys and conformance MLS.KeyRollError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.KeyRollError.ErrorType and conformance MLS.KeyRollError.ErrorType()
{
  result = lazy protocol witness table cache variable for type MLS.KeyRollError.ErrorType and conformance MLS.KeyRollError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.KeyRollError.ErrorType and conformance MLS.KeyRollError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyRollError.ErrorType and conformance MLS.KeyRollError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyRollError.ErrorType and conformance MLS.KeyRollError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.KeyRollError.ErrorType and conformance MLS.KeyRollError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyRollError.ErrorType and conformance MLS.KeyRollError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyRollError.ErrorType and conformance MLS.KeyRollError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.KeyRollError.ErrorType and conformance MLS.KeyRollError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyRollError.ErrorType and conformance MLS.KeyRollError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyRollError.ErrorType and conformance MLS.KeyRollError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.KeyRollError.ErrorType and conformance MLS.KeyRollError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyRollError.ErrorType and conformance MLS.KeyRollError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyRollError.ErrorType and conformance MLS.KeyRollError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.KeyRollError.ErrorType and conformance MLS.KeyRollError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyRollError.ErrorType and conformance MLS.KeyRollError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyRollError.ErrorType and conformance MLS.KeyRollError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.KeyRollError.ErrorType and conformance MLS.KeyRollError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyRollError.ErrorType and conformance MLS.KeyRollError.ErrorType);
  }

  return result;
}

uint64_t MLS.KeyRollError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12KeyRollErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12KeyRollErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.KeyRollError.CodingKeys and conformance MLS.KeyRollError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = 0;
    lazy protocol witness table accessor for type MLS.KeyRollError.ErrorType and conformance MLS.KeyRollError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v17;
    v15 = 1;
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance MLS.KeyRollError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.KeyRollError and conformance MLS.KeyRollError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance MLS.KeyRollError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.KeyRollError and conformance MLS.KeyRollError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.SendError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SendError.CodingKeys and conformance MLS.SendError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.SendError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SendError.CodingKeys and conformance MLS.SendError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.SendError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO9SendErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO9SendErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v11[0] = *(v1 + 2);
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.SendError.CodingKeys and conformance MLS.SendError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v8;
  v13 = 0;
  lazy protocol witness table accessor for type MLS.SendError.ErrorType and conformance MLS.SendError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type MLS.SendError.CodingKeys and conformance MLS.SendError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.SendError.CodingKeys and conformance MLS.SendError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendError.CodingKeys and conformance MLS.SendError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendError.CodingKeys and conformance MLS.SendError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendError.CodingKeys and conformance MLS.SendError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendError.CodingKeys and conformance MLS.SendError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendError.CodingKeys and conformance MLS.SendError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendError.CodingKeys and conformance MLS.SendError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendError.CodingKeys and conformance MLS.SendError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendError.CodingKeys and conformance MLS.SendError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendError.CodingKeys and conformance MLS.SendError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.SendError.CodingKeys and conformance MLS.SendError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendError.CodingKeys and conformance MLS.SendError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.SendError.ErrorType and conformance MLS.SendError.ErrorType()
{
  result = lazy protocol witness table cache variable for type MLS.SendError.ErrorType and conformance MLS.SendError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.SendError.ErrorType and conformance MLS.SendError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendError.ErrorType and conformance MLS.SendError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendError.ErrorType and conformance MLS.SendError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.SendError.ErrorType and conformance MLS.SendError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendError.ErrorType and conformance MLS.SendError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendError.ErrorType and conformance MLS.SendError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.SendError.ErrorType and conformance MLS.SendError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendError.ErrorType and conformance MLS.SendError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendError.ErrorType and conformance MLS.SendError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.SendError.ErrorType and conformance MLS.SendError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendError.ErrorType and conformance MLS.SendError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendError.ErrorType and conformance MLS.SendError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.SendError.ErrorType and conformance MLS.SendError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendError.ErrorType and conformance MLS.SendError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.SendError.ErrorType and conformance MLS.SendError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.SendError.ErrorType and conformance MLS.SendError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.SendError.ErrorType and conformance MLS.SendError.ErrorType);
  }

  return result;
}

uint64_t MLS.SendError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO9SendErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO9SendErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.SendError.CodingKeys and conformance MLS.SendError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = 0;
    lazy protocol witness table accessor for type MLS.SendError.ErrorType and conformance MLS.SendError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v17;
    v15 = 1;
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance MLS.SendError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SendError and conformance MLS.SendError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance MLS.SendError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SendError and conformance MLS.SendError();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t MLS.ReceiveError.ErrorType.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 5;
  if (result < 5)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.ReceiveError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ReceiveError.CodingKeys and conformance MLS.ReceiveError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.ReceiveError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ReceiveError.CodingKeys and conformance MLS.ReceiveError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.ReceiveError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12ReceiveErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12ReceiveErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v11[0] = *(v1 + 2);
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.ReceiveError.CodingKeys and conformance MLS.ReceiveError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v8;
  v13 = 0;
  lazy protocol witness table accessor for type MLS.ReceiveError.ErrorType and conformance MLS.ReceiveError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type MLS.ReceiveError.CodingKeys and conformance MLS.ReceiveError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.ReceiveError.CodingKeys and conformance MLS.ReceiveError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveError.CodingKeys and conformance MLS.ReceiveError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveError.CodingKeys and conformance MLS.ReceiveError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ReceiveError.CodingKeys and conformance MLS.ReceiveError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveError.CodingKeys and conformance MLS.ReceiveError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveError.CodingKeys and conformance MLS.ReceiveError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ReceiveError.CodingKeys and conformance MLS.ReceiveError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveError.CodingKeys and conformance MLS.ReceiveError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveError.CodingKeys and conformance MLS.ReceiveError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ReceiveError.CodingKeys and conformance MLS.ReceiveError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveError.CodingKeys and conformance MLS.ReceiveError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveError.CodingKeys and conformance MLS.ReceiveError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.ReceiveError.ErrorType and conformance MLS.ReceiveError.ErrorType()
{
  result = lazy protocol witness table cache variable for type MLS.ReceiveError.ErrorType and conformance MLS.ReceiveError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveError.ErrorType and conformance MLS.ReceiveError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveError.ErrorType and conformance MLS.ReceiveError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ReceiveError.ErrorType and conformance MLS.ReceiveError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveError.ErrorType and conformance MLS.ReceiveError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveError.ErrorType and conformance MLS.ReceiveError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ReceiveError.ErrorType and conformance MLS.ReceiveError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveError.ErrorType and conformance MLS.ReceiveError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveError.ErrorType and conformance MLS.ReceiveError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ReceiveError.ErrorType and conformance MLS.ReceiveError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveError.ErrorType and conformance MLS.ReceiveError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveError.ErrorType and conformance MLS.ReceiveError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ReceiveError.ErrorType and conformance MLS.ReceiveError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveError.ErrorType and conformance MLS.ReceiveError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveError.ErrorType and conformance MLS.ReceiveError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ReceiveError.ErrorType and conformance MLS.ReceiveError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.ReceiveError.ErrorType and conformance MLS.ReceiveError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ReceiveError.ErrorType and conformance MLS.ReceiveError.ErrorType);
  }

  return result;
}

uint64_t MLS.ReceiveError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12ReceiveErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12ReceiveErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.ReceiveError.CodingKeys and conformance MLS.ReceiveError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = 0;
    lazy protocol witness table accessor for type MLS.ReceiveError.ErrorType and conformance MLS.ReceiveError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v17;
    v15 = 1;
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance MLS.ReceiveError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ReceiveError and conformance MLS.ReceiveError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance MLS.ReceiveError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ReceiveError and conformance MLS.ReceiveError();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t MLS.ResendApplicationMessageError.ErrorType.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 6;
  if (result < 6)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.ResendApplicationMessageError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ResendApplicationMessageError.CodingKeys and conformance MLS.ResendApplicationMessageError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.ResendApplicationMessageError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ResendApplicationMessageError.CodingKeys and conformance MLS.ResendApplicationMessageError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.ResendApplicationMessageError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO29ResendApplicationMessageErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO29ResendApplicationMessageErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v11[0] = *(v1 + 2);
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.ResendApplicationMessageError.CodingKeys and conformance MLS.ResendApplicationMessageError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v8;
  v13 = 0;
  lazy protocol witness table accessor for type MLS.ResendApplicationMessageError.ErrorType and conformance MLS.ResendApplicationMessageError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type MLS.ResendApplicationMessageError.CodingKeys and conformance MLS.ResendApplicationMessageError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.CodingKeys and conformance MLS.ResendApplicationMessageError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.CodingKeys and conformance MLS.ResendApplicationMessageError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.CodingKeys and conformance MLS.ResendApplicationMessageError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.CodingKeys and conformance MLS.ResendApplicationMessageError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.CodingKeys and conformance MLS.ResendApplicationMessageError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.CodingKeys and conformance MLS.ResendApplicationMessageError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.CodingKeys and conformance MLS.ResendApplicationMessageError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.CodingKeys and conformance MLS.ResendApplicationMessageError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.CodingKeys and conformance MLS.ResendApplicationMessageError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.CodingKeys and conformance MLS.ResendApplicationMessageError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.CodingKeys and conformance MLS.ResendApplicationMessageError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.CodingKeys and conformance MLS.ResendApplicationMessageError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.ResendApplicationMessageError.ErrorType and conformance MLS.ResendApplicationMessageError.ErrorType()
{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.ErrorType and conformance MLS.ResendApplicationMessageError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.ErrorType and conformance MLS.ResendApplicationMessageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.ErrorType and conformance MLS.ResendApplicationMessageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.ErrorType and conformance MLS.ResendApplicationMessageError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.ErrorType and conformance MLS.ResendApplicationMessageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.ErrorType and conformance MLS.ResendApplicationMessageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.ErrorType and conformance MLS.ResendApplicationMessageError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.ErrorType and conformance MLS.ResendApplicationMessageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.ErrorType and conformance MLS.ResendApplicationMessageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.ErrorType and conformance MLS.ResendApplicationMessageError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.ErrorType and conformance MLS.ResendApplicationMessageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.ErrorType and conformance MLS.ResendApplicationMessageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.ErrorType and conformance MLS.ResendApplicationMessageError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.ErrorType and conformance MLS.ResendApplicationMessageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.ErrorType and conformance MLS.ResendApplicationMessageError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.ErrorType and conformance MLS.ResendApplicationMessageError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.ErrorType and conformance MLS.ResendApplicationMessageError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageError.ErrorType and conformance MLS.ResendApplicationMessageError.ErrorType);
  }

  return result;
}

uint64_t MLS.ResendApplicationMessageError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO29ResendApplicationMessageErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO29ResendApplicationMessageErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.ResendApplicationMessageError.CodingKeys and conformance MLS.ResendApplicationMessageError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = 0;
    lazy protocol witness table accessor for type MLS.ResendApplicationMessageError.ErrorType and conformance MLS.ResendApplicationMessageError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v17;
    v15 = 1;
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance MLS.ResendApplicationMessageError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ResendApplicationMessageError and conformance MLS.ResendApplicationMessageError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance MLS.ResendApplicationMessageError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.ResendApplicationMessageError and conformance MLS.ResendApplicationMessageError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.FetchGroupRecoveryInfoError.CodingKeys(uint64_t a1)
{
  GroupRecoveryInfo = lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoError.CodingKeys and conformance MLS.FetchGroupRecoveryInfoError.CodingKeys();

  return MEMORY[0x2821FE718](a1, GroupRecoveryInfo);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.FetchGroupRecoveryInfoError.CodingKeys(uint64_t a1)
{
  GroupRecoveryInfo = lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoError.CodingKeys and conformance MLS.FetchGroupRecoveryInfoError.CodingKeys();

  return MEMORY[0x2821FE720](a1, GroupRecoveryInfo);
}

uint64_t MLS.FetchGroupRecoveryInfoError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO27FetchGroupRecoveryInfoErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO27FetchGroupRecoveryInfoErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v11[0] = *(v1 + 2);
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoError.CodingKeys and conformance MLS.FetchGroupRecoveryInfoError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v8;
  v13 = 0;
  lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoError.ErrorType and conformance MLS.FetchGroupRecoveryInfoError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoError.CodingKeys and conformance MLS.FetchGroupRecoveryInfoError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.CodingKeys and conformance MLS.FetchGroupRecoveryInfoError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.CodingKeys and conformance MLS.FetchGroupRecoveryInfoError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.CodingKeys and conformance MLS.FetchGroupRecoveryInfoError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.CodingKeys and conformance MLS.FetchGroupRecoveryInfoError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.CodingKeys and conformance MLS.FetchGroupRecoveryInfoError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.CodingKeys and conformance MLS.FetchGroupRecoveryInfoError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.CodingKeys and conformance MLS.FetchGroupRecoveryInfoError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.CodingKeys and conformance MLS.FetchGroupRecoveryInfoError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.CodingKeys and conformance MLS.FetchGroupRecoveryInfoError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.CodingKeys and conformance MLS.FetchGroupRecoveryInfoError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.CodingKeys and conformance MLS.FetchGroupRecoveryInfoError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.CodingKeys and conformance MLS.FetchGroupRecoveryInfoError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoError.ErrorType and conformance MLS.FetchGroupRecoveryInfoError.ErrorType()
{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.ErrorType and conformance MLS.FetchGroupRecoveryInfoError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.ErrorType and conformance MLS.FetchGroupRecoveryInfoError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.ErrorType and conformance MLS.FetchGroupRecoveryInfoError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.ErrorType and conformance MLS.FetchGroupRecoveryInfoError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.ErrorType and conformance MLS.FetchGroupRecoveryInfoError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.ErrorType and conformance MLS.FetchGroupRecoveryInfoError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.ErrorType and conformance MLS.FetchGroupRecoveryInfoError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.ErrorType and conformance MLS.FetchGroupRecoveryInfoError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.ErrorType and conformance MLS.FetchGroupRecoveryInfoError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.ErrorType and conformance MLS.FetchGroupRecoveryInfoError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.ErrorType and conformance MLS.FetchGroupRecoveryInfoError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.ErrorType and conformance MLS.FetchGroupRecoveryInfoError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.ErrorType and conformance MLS.FetchGroupRecoveryInfoError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.ErrorType and conformance MLS.FetchGroupRecoveryInfoError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.ErrorType and conformance MLS.FetchGroupRecoveryInfoError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.ErrorType and conformance MLS.FetchGroupRecoveryInfoError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.ErrorType and conformance MLS.FetchGroupRecoveryInfoError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoError.ErrorType and conformance MLS.FetchGroupRecoveryInfoError.ErrorType);
  }

  return result;
}

uint64_t MLS.FetchGroupRecoveryInfoError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO27FetchGroupRecoveryInfoErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO27FetchGroupRecoveryInfoErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoError.CodingKeys and conformance MLS.FetchGroupRecoveryInfoError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = 0;
    lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoError.ErrorType and conformance MLS.FetchGroupRecoveryInfoError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v17;
    v15 = 1;
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance MLS.FetchGroupRecoveryInfoError(uint64_t a1)
{
  GroupRecoveryInfoError = lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoError and conformance MLS.FetchGroupRecoveryInfoError();

  return MEMORY[0x28211F4B8](a1, GroupRecoveryInfoError);
}

uint64_t protocol witness for Error._code.getter in conformance MLS.FetchGroupRecoveryInfoError(uint64_t a1)
{
  GroupRecoveryInfoError = lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoError and conformance MLS.FetchGroupRecoveryInfoError();

  return MEMORY[0x28211F4A8](a1, GroupRecoveryInfoError);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.FetchMemberError.CodingKeys(uint64_t a1)
{
  Member = lazy protocol witness table accessor for type MLS.FetchMemberError.CodingKeys and conformance MLS.FetchMemberError.CodingKeys();

  return MEMORY[0x2821FE718](a1, Member);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.FetchMemberError.CodingKeys(uint64_t a1)
{
  Member = lazy protocol witness table accessor for type MLS.FetchMemberError.CodingKeys and conformance MLS.FetchMemberError.CodingKeys();

  return MEMORY[0x2821FE720](a1, Member);
}

uint64_t MLS.FetchMemberError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO16FetchMemberErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO16FetchMemberErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v11[0] = *(v1 + 2);
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.FetchMemberError.CodingKeys and conformance MLS.FetchMemberError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v8;
  v13 = 0;
  lazy protocol witness table accessor for type MLS.FetchMemberError.ErrorType and conformance MLS.FetchMemberError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type MLS.FetchMemberError.CodingKeys and conformance MLS.FetchMemberError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.FetchMemberError.CodingKeys and conformance MLS.FetchMemberError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.FetchMemberError.CodingKeys and conformance MLS.FetchMemberError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchMemberError.CodingKeys and conformance MLS.FetchMemberError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchMemberError.CodingKeys and conformance MLS.FetchMemberError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.FetchMemberError.CodingKeys and conformance MLS.FetchMemberError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchMemberError.CodingKeys and conformance MLS.FetchMemberError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchMemberError.CodingKeys and conformance MLS.FetchMemberError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.FetchMemberError.CodingKeys and conformance MLS.FetchMemberError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchMemberError.CodingKeys and conformance MLS.FetchMemberError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchMemberError.CodingKeys and conformance MLS.FetchMemberError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.FetchMemberError.CodingKeys and conformance MLS.FetchMemberError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchMemberError.CodingKeys and conformance MLS.FetchMemberError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.FetchMemberError.ErrorType and conformance MLS.FetchMemberError.ErrorType()
{
  result = lazy protocol witness table cache variable for type MLS.FetchMemberError.ErrorType and conformance MLS.FetchMemberError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.FetchMemberError.ErrorType and conformance MLS.FetchMemberError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchMemberError.ErrorType and conformance MLS.FetchMemberError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchMemberError.ErrorType and conformance MLS.FetchMemberError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.FetchMemberError.ErrorType and conformance MLS.FetchMemberError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchMemberError.ErrorType and conformance MLS.FetchMemberError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchMemberError.ErrorType and conformance MLS.FetchMemberError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.FetchMemberError.ErrorType and conformance MLS.FetchMemberError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchMemberError.ErrorType and conformance MLS.FetchMemberError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchMemberError.ErrorType and conformance MLS.FetchMemberError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.FetchMemberError.ErrorType and conformance MLS.FetchMemberError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchMemberError.ErrorType and conformance MLS.FetchMemberError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchMemberError.ErrorType and conformance MLS.FetchMemberError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.FetchMemberError.ErrorType and conformance MLS.FetchMemberError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchMemberError.ErrorType and conformance MLS.FetchMemberError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchMemberError.ErrorType and conformance MLS.FetchMemberError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.FetchMemberError.ErrorType and conformance MLS.FetchMemberError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchMemberError.ErrorType and conformance MLS.FetchMemberError.ErrorType);
  }

  return result;
}

uint64_t MLS.FetchMemberError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO16FetchMemberErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO16FetchMemberErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.FetchMemberError.CodingKeys and conformance MLS.FetchMemberError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = 0;
    lazy protocol witness table accessor for type MLS.FetchMemberError.ErrorType and conformance MLS.FetchMemberError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v17;
    v15 = 1;
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Error._domain.getter in conformance MLS.FetchMemberError(uint64_t a1)
{
  MemberError = lazy protocol witness table accessor for type MLS.FetchMemberError and conformance MLS.FetchMemberError();

  return MEMORY[0x28211F4B8](a1, MemberError);
}

uint64_t protocol witness for Error._code.getter in conformance MLS.FetchMemberError(uint64_t a1)
{
  MemberError = lazy protocol witness table accessor for type MLS.FetchMemberError and conformance MLS.FetchMemberError();

  return MEMORY[0x28211F4A8](a1, MemberError);
}

uint64_t protocol witness for Error._code.getter in conformance MLS.ClientCreationError.ErrorType(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v6 = lazy protocol witness table accessor for type Int and conformance Int();

  return MEMORY[0x2821FE2D0](a1, a2, v5, v6);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.KeyPackageRetrievalError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalError.CodingKeys and conformance MLS.KeyPackageRetrievalError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.KeyPackageRetrievalError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalError.CodingKeys and conformance MLS.KeyPackageRetrievalError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.KeyPackageRetrievalError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO24KeyPackageRetrievalErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO24KeyPackageRetrievalErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v11[0] = *(v1 + 2);
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.KeyPackageRetrievalError.CodingKeys and conformance MLS.KeyPackageRetrievalError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v8;
  v13 = 0;
  lazy protocol witness table accessor for type MLS.KeyPackageRetrievalError.ErrorType and conformance MLS.KeyPackageRetrievalError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type MLS.KeyPackageRetrievalError.CodingKeys and conformance MLS.KeyPackageRetrievalError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.CodingKeys and conformance MLS.KeyPackageRetrievalError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.CodingKeys and conformance MLS.KeyPackageRetrievalError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.CodingKeys and conformance MLS.KeyPackageRetrievalError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.CodingKeys and conformance MLS.KeyPackageRetrievalError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.CodingKeys and conformance MLS.KeyPackageRetrievalError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.CodingKeys and conformance MLS.KeyPackageRetrievalError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.CodingKeys and conformance MLS.KeyPackageRetrievalError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.CodingKeys and conformance MLS.KeyPackageRetrievalError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.CodingKeys and conformance MLS.KeyPackageRetrievalError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.CodingKeys and conformance MLS.KeyPackageRetrievalError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.CodingKeys and conformance MLS.KeyPackageRetrievalError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.CodingKeys and conformance MLS.KeyPackageRetrievalError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.KeyPackageRetrievalError.ErrorType and conformance MLS.KeyPackageRetrievalError.ErrorType()
{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.ErrorType and conformance MLS.KeyPackageRetrievalError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.ErrorType and conformance MLS.KeyPackageRetrievalError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.ErrorType and conformance MLS.KeyPackageRetrievalError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.ErrorType and conformance MLS.KeyPackageRetrievalError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.ErrorType and conformance MLS.KeyPackageRetrievalError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.ErrorType and conformance MLS.KeyPackageRetrievalError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.ErrorType and conformance MLS.KeyPackageRetrievalError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.ErrorType and conformance MLS.KeyPackageRetrievalError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.ErrorType and conformance MLS.KeyPackageRetrievalError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.ErrorType and conformance MLS.KeyPackageRetrievalError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.ErrorType and conformance MLS.KeyPackageRetrievalError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.ErrorType and conformance MLS.KeyPackageRetrievalError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.ErrorType and conformance MLS.KeyPackageRetrievalError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.ErrorType and conformance MLS.KeyPackageRetrievalError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.ErrorType and conformance MLS.KeyPackageRetrievalError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.ErrorType and conformance MLS.KeyPackageRetrievalError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.ErrorType and conformance MLS.KeyPackageRetrievalError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageRetrievalError.ErrorType and conformance MLS.KeyPackageRetrievalError.ErrorType);
  }

  return result;
}

uint64_t MLS.KeyPackageRetrievalError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO24KeyPackageRetrievalErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO24KeyPackageRetrievalErrorV10CodingKeys33_5309206B028A85FFD18B62942080C5A0LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.KeyPackageRetrievalError.CodingKeys and conformance MLS.KeyPackageRetrievalError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = 0;
    lazy protocol witness table accessor for type MLS.KeyPackageRetrievalError.ErrorType and conformance MLS.KeyPackageRetrievalError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v17;
    v15 = 1;
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t instantiation function for generic protocol witness table for MLS.ClientCreationError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.ClientCreationError.ErrorType and conformance MLS.ClientCreationError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.ClientCreationError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.ClientCreationError and conformance MLS.ClientCreationError();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.SelfKeyPackageError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.SelfKeyPackageError.ErrorType and conformance MLS.SelfKeyPackageError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.SelfKeyPackageError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.SelfKeyPackageError and conformance MLS.SelfKeyPackageError();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.GroupCreationError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.GroupCreationError.ErrorType and conformance MLS.GroupCreationError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.GroupCreationError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.GroupCreationError and conformance MLS.GroupCreationError();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.GroupDeletionError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.GroupDeletionError.ErrorType and conformance MLS.GroupDeletionError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.GroupDeletionError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.GroupDeletionError and conformance MLS.GroupDeletionError();
  *(a1 + 8) = result;
  return result;
}

unint64_t _s15SecureMessaging3MLSO19GroupOperationErrorV0F4TypeOAC0d4LoadfG0AAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.GroupOperationError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.GroupOperationError.ErrorType and conformance MLS.GroupOperationError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t _s15SecureMessaging3MLSO19GroupOperationErrorVAC0d4LoadF0AAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.GroupOperationError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.GroupOperationError and conformance MLS.GroupOperationError();
  *(a1 + 8) = result;
  return result;
}

unint64_t _s15SecureMessaging3MLSO15GroupFetchErrorV0F4TypeOAC0d4LoadfG0AAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.GroupFetchError.ErrorType and conformance MLS.GroupFetchError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t _s15SecureMessaging3MLSO15GroupFetchErrorVAC0d4LoadF0AAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.GroupFetchError and conformance MLS.GroupFetchError();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.GroupUpdateError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.GroupUpdateError.ErrorType and conformance MLS.GroupUpdateError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.GroupUpdateError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.GroupUpdateError and conformance MLS.GroupUpdateError();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.GroupMembersError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.GroupMembersError.ErrorType and conformance MLS.GroupMembersError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.GroupMembersError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.GroupMembersError and conformance MLS.GroupMembersError();
  *(a1 + 8) = result;
  return result;
}

unint64_t _s15SecureMessaging3MLSO15EncryptionErrorV0E4TypeOAC09GroupLoadeF0AAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.EncryptionError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.EncryptionError.ErrorType and conformance MLS.EncryptionError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t _s15SecureMessaging3MLSO15EncryptionErrorVAC09GroupLoadE0AAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.EncryptionError and conformance MLS.EncryptionError();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.EncryptionError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.EncryptionError and conformance MLS.EncryptionError();
  *(a1 + 8) = result;
  return result;
}

unint64_t _s15SecureMessaging3MLSO12SigningErrorV0E4TypeOAC09GroupLoadeF0AAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.SigningError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.SigningError.ErrorType and conformance MLS.SigningError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t _s15SecureMessaging3MLSO12SigningErrorVAC09GroupLoadE0AAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.SigningError and conformance MLS.SigningError();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.SigningError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.SigningError and conformance MLS.SigningError();
  *(a1 + 8) = result;
  return result;
}

unint64_t _s15SecureMessaging3MLSO20IncomingMessageErrorV0F4TypeOAC09GroupLoadfG0AAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.IncomingMessageError.ErrorType and conformance MLS.IncomingMessageError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t _s15SecureMessaging3MLSO20IncomingMessageErrorVAC09GroupLoadF0AAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.IncomingMessageError and conformance MLS.IncomingMessageError();
  *(a1 + 8) = result;
  return result;
}

unint64_t _s15SecureMessaging3MLSO14DowngradeErrorV0E4TypeOAC09GroupLoadeF0AAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.DowngradeError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.DowngradeError.ErrorType and conformance MLS.DowngradeError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t _s15SecureMessaging3MLSO14DowngradeErrorVAC09GroupLoadE0AAWI_0(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.DowngradeError and conformance MLS.DowngradeError();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.DowngradeError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.DowngradeError and conformance MLS.DowngradeError();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.KeyPackageUpdateError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.KeyPackageUpdateError.ErrorType and conformance MLS.KeyPackageUpdateError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.KeyPackageUpdateError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.KeyPackageUpdateError and conformance MLS.KeyPackageUpdateError();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.KeyPackageUpdateError and conformance MLS.KeyPackageUpdateError()
{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError and conformance MLS.KeyPackageUpdateError;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError and conformance MLS.KeyPackageUpdateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError and conformance MLS.KeyPackageUpdateError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError and conformance MLS.KeyPackageUpdateError;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError and conformance MLS.KeyPackageUpdateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError and conformance MLS.KeyPackageUpdateError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError and conformance MLS.KeyPackageUpdateError;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError and conformance MLS.KeyPackageUpdateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError and conformance MLS.KeyPackageUpdateError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError and conformance MLS.KeyPackageUpdateError;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError and conformance MLS.KeyPackageUpdateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError and conformance MLS.KeyPackageUpdateError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError and conformance MLS.KeyPackageUpdateError;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError and conformance MLS.KeyPackageUpdateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError and conformance MLS.KeyPackageUpdateError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError and conformance MLS.KeyPackageUpdateError;
  if (!lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError and conformance MLS.KeyPackageUpdateError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyPackageUpdateError and conformance MLS.KeyPackageUpdateError);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.KeyRollError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.KeyRollError.ErrorType and conformance MLS.KeyRollError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.KeyRollError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.KeyRollError and conformance MLS.KeyRollError();
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.KeyRollError and conformance MLS.KeyRollError()
{
  result = lazy protocol witness table cache variable for type MLS.KeyRollError and conformance MLS.KeyRollError;
  if (!lazy protocol witness table cache variable for type MLS.KeyRollError and conformance MLS.KeyRollError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyRollError and conformance MLS.KeyRollError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyRollError and conformance MLS.KeyRollError;
  if (!lazy protocol witness table cache variable for type MLS.KeyRollError and conformance MLS.KeyRollError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyRollError and conformance MLS.KeyRollError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyRollError and conformance MLS.KeyRollError;
  if (!lazy protocol witness table cache variable for type MLS.KeyRollError and conformance MLS.KeyRollError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyRollError and conformance MLS.KeyRollError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyRollError and conformance MLS.KeyRollError;
  if (!lazy protocol witness table cache variable for type MLS.KeyRollError and conformance MLS.KeyRollError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyRollError and conformance MLS.KeyRollError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyRollError and conformance MLS.KeyRollError;
  if (!lazy protocol witness table cache variable for type MLS.KeyRollError and conformance MLS.KeyRollError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyRollError and conformance MLS.KeyRollError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.KeyRollError and conformance MLS.KeyRollError;
  if (!lazy protocol witness table cache variable for type MLS.KeyRollError and conformance MLS.KeyRollError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.KeyRollError and conformance MLS.KeyRollError);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.SendError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.SendError.ErrorType and conformance MLS.SendError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.SendError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.SendError and conformance MLS.SendError();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.ReceiveError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.ReceiveError.ErrorType and conformance MLS.ReceiveError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.ReceiveError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.ReceiveError and conformance MLS.ReceiveError();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.ResendApplicationMessageError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.ResendApplicationMessageError.ErrorType and conformance MLS.ResendApplicationMessageError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.ResendApplicationMessageError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.ResendApplicationMessageError and conformance MLS.ResendApplicationMessageError();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.FetchGroupRecoveryInfoError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoError.ErrorType and conformance MLS.FetchGroupRecoveryInfoError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.FetchGroupRecoveryInfoError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoError and conformance MLS.FetchGroupRecoveryInfoError();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.FetchMemberError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.FetchMemberError.ErrorType and conformance MLS.FetchMemberError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.FetchMemberError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.FetchMemberError and conformance MLS.FetchMemberError();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.KeyPackageRetrievalError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalError.ErrorType and conformance MLS.KeyPackageRetrievalError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.KeyPackageRetrievalError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalError and conformance MLS.KeyPackageRetrievalError();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for MLS.ClientCreationError(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  a1[3] = a6();
  result = a7();
  a1[4] = result;
  return result;
}

uint64_t protocol witness for Error._domain.getter in conformance MLS.KeyPackageRetrievalError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalError and conformance MLS.KeyPackageRetrievalError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance MLS.KeyPackageRetrievalError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.KeyPackageRetrievalError and conformance MLS.KeyPackageRetrievalError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t getEnumTagSinglePayload for MLS.GroupOperationError.ErrorType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE4)
  {
    goto LABEL_17;
  }

  if (a2 + 28 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 28) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 28;
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

      return (*a1 | (v4 << 8)) - 28;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 28;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1D;
  v8 = v6 - 29;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MLS.GroupOperationError.ErrorType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 28 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 28) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE4)
  {
    v4 = 0;
  }

  if (a2 > 0xE3)
  {
    v5 = ((a2 - 228) >> 8) + 1;
    *result = a2 + 28;
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
    *result = a2 + 28;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLS.IncomingMessageError.ErrorType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xE6)
  {
    goto LABEL_17;
  }

  if (a2 + 26 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 26) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 26;
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

      return (*a1 | (v4 << 8)) - 26;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 26;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x1B;
  v8 = v6 - 27;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MLS.IncomingMessageError.ErrorType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 26 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 26) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xE6)
  {
    v4 = 0;
  }

  if (a2 > 0xE5)
  {
    v5 = ((a2 - 230) >> 8) + 1;
    *result = a2 + 26;
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
    *result = a2 + 26;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLS.GroupCreationError.ErrorType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xED)
  {
    goto LABEL_17;
  }

  if (a2 + 19 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 19) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 19;
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

      return (*a1 | (v4 << 8)) - 19;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 19;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x14;
  v8 = v6 - 20;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MLS.GroupCreationError.ErrorType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 19 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 19) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xED)
  {
    v4 = 0;
  }

  if (a2 > 0xEC)
  {
    v5 = ((a2 - 237) >> 8) + 1;
    *result = a2 + 19;
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
    *result = a2 + 19;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLS.KeyPackageUpdateError.ErrorType(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF5)
  {
    goto LABEL_17;
  }

  if (a2 + 11 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 11) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 11;
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

      return (*a1 | (v4 << 8)) - 11;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 11;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v8 = v6 - 12;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for MLS.KeyPackageUpdateError.ErrorType(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 11 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 11) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF5)
  {
    v4 = 0;
  }

  if (a2 > 0xF4)
  {
    v5 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
    *result = a2 + 11;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t AsyncStream<A>.awaitElement(timeout:throwing:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[8] = a7;
  v8[9] = v7;
  v8[6] = a5;
  v8[7] = a6;
  v8[4] = a3;
  v8[5] = a4;
  v8[2] = a1;
  v8[3] = a2;
  v9 = *(a7 - 8);
  v8[10] = v9;
  v8[11] = *(v9 + 64);
  v8[12] = swift_task_alloc();

  return MEMORY[0x2822009F8](AsyncStream<A>.awaitElement(timeout:throwing:_:), 0, 0);
}

uint64_t AsyncStream<A>.awaitElement(timeout:throwing:_:)()
{
  v1 = v0[11];
  v2 = v0[12];
  v3 = v0[10];
  v5 = v0[7];
  v4 = v0[8];
  v6 = v0[6];
  v18 = v0[5];
  (*(v3 + 16))(v2, v0[9], v4);
  v7 = (*(v3 + 80) + 24) & ~*(v3 + 80);
  v8 = (v1 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  v0[13] = v9;
  v19 = *(v4 + 16);
  *(v9 + 16) = v19;
  (*(v3 + 32))(v9 + v7, v2, v4);
  v10 = (v9 + v8);
  *v10 = v6;
  v10[1] = v5;
  *(v9 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8)) = v18;
  _sxSbs5Error_pRi_zRi0_zlyxIseghndzo_Sgs8SendableRzlWOy(v6, v5);
  v11 = v18;
  v12 = swift_task_alloc();
  v0[14] = v12;
  *v12 = v0;
  v12[1] = AsyncStream<A>.awaitElement(timeout:throwing:_:);
  v13 = v0[4];
  v14 = v0[5];
  v15 = v0[2];
  v16 = v0[3];

  return timeout<A>(after:throwing:work:)(v15, v16, v13, v14, &async function pointer to partial apply for closure #1 in AsyncStream<A>.awaitElement(timeout:throwing:_:), v9, v19);
}

{
  v2 = *v1;
  *(v2 + 120) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](AsyncStream<A>.awaitElement(timeout:throwing:_:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in AsyncStream<A>.awaitElement(timeout:throwing:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a3;
  v6[5] = a4;
  v6[2] = a1;
  v6[3] = a2;
  v6[8] = *(a6 - 8);
  v6[9] = swift_task_alloc();
  type metadata accessor for Optional();
  v6[10] = swift_task_alloc();
  v7 = type metadata accessor for AsyncStream.Iterator();
  v6[11] = v7;
  v6[12] = *(v7 - 8);
  v6[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in AsyncStream<A>.awaitElement(timeout:throwing:_:), 0, 0);
}

uint64_t closure #1 in AsyncStream<A>.awaitElement(timeout:throwing:_:)()
{
  type metadata accessor for AsyncStream();
  AsyncStream.makeAsyncIterator()();
  v0[14] = 0;
  v1 = swift_task_alloc();
  v0[15] = v1;
  *v1 = v0;
  v1[1] = closure #1 in AsyncStream<A>.awaitElement(timeout:throwing:_:);
  v2 = v0[10];
  v3 = v0[11];

  return MEMORY[0x2822003E8](v2, 0, 0, v3);
}

{

  return MEMORY[0x2822009F8](closure #1 in AsyncStream<A>.awaitElement(timeout:throwing:_:), 0, 0);
}

{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[8];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[6];
    (*(v0[12] + 8))(v0[13], v0[11]);
    swift_willThrow();
    v5 = v4;
LABEL_6:

    v18 = v0[1];
LABEL_9:

    return v18();
  }

  v6 = v0[4];
  v7 = *(v3 + 32);
  v7(v0[9], v1, v2);
  if (!v6)
  {
    goto LABEL_8;
  }

  v8 = v0[14];
  v9 = v0[9];
  v10 = v0[4];

  v11 = v10(v9);
  if (v8)
  {
    v13 = v0[12];
    v12 = v0[13];
    v14 = v0[11];
    v16 = v0[8];
    v15 = v0[9];
    v17 = v0[7];
    outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error))?(v0[4], v0[5]);
    (*(v16 + 8))(v15, v17);
    (*(v13 + 8))(v12, v14);
    goto LABEL_6;
  }

  v19 = v11;
  outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error))?(v0[4], v0[5]);
  if (v19)
  {
LABEL_8:
    v20 = v0[9];
    v21 = v0[7];
    v22 = v0[2];
    (*(v0[12] + 8))(v0[13], v0[11]);
    v7(v22, v20, v21);

    v18 = v0[1];
    goto LABEL_9;
  }

  (*(v0[8] + 8))(v0[9], v0[7]);
  v0[14] = 0;
  v24 = swift_task_alloc();
  v0[15] = v24;
  *v24 = v0;
  v24[1] = closure #1 in AsyncStream<A>.awaitElement(timeout:throwing:_:);
  v25 = v0[10];
  v26 = v0[11];

  return MEMORY[0x2822003E8](v25, 0, 0, v26);
}

uint64_t sub_26518DB98()
{
  v1 = type metadata accessor for AsyncStream();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);
  if (*(v0 + v5))
  {
  }

  v6 = (v5 + 23) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, v6 + 8, v3 | 7);
}

uint64_t partial apply for closure #1 in AsyncStream<A>.awaitElement(timeout:throwing:_:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(type metadata accessor for AsyncStream() - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 23) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v1 + v7);
  v10 = *v9;
  v11 = v9[1];
  v12 = *(v1 + v8);
  v13 = swift_task_alloc();
  *(v2 + 16) = v13;
  *v13 = v2;
  v13[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in AsyncStream<A>.awaitElement(timeout:throwing:_:)(a1, v1 + v6, v10, v11, v12, v4);
}

uint64_t AsyncStream<A>.awaitAndMapElement<A>(timeout:throwing:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[9] = a8;
  v9[10] = v8;
  v9[7] = a6;
  v9[8] = a7;
  v9[5] = a4;
  v9[6] = a5;
  v9[3] = a2;
  v9[4] = a3;
  v9[2] = a1;
  v10 = *(a7 - 8);
  v9[11] = v10;
  v9[12] = *(v10 + 64);
  v9[13] = swift_task_alloc();

  return MEMORY[0x2822009F8](AsyncStream<A>.awaitAndMapElement<A>(timeout:throwing:_:), 0, 0);
}

uint64_t AsyncStream<A>.awaitAndMapElement<A>(timeout:throwing:_:)()
{
  v2 = v0[12];
  v1 = v0[13];
  v3 = v0[11];
  v4 = v0[8];
  v5 = v0[7];
  v19 = v0[9];
  v20 = v0[6];
  v6 = v0[5];
  (*(v3 + 16))(v1, v0[10], v4);
  v7 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v8 = (v2 + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = swift_allocObject();
  v0[14] = v9;
  *(v9 + 16) = *(v4 + 16);
  *(v9 + 24) = v19;
  (*(v3 + 32))(v9 + v7, v1, v4);
  v10 = (v9 + v8);
  *v10 = v20;
  v10[1] = v5;
  *(v9 + ((v8 + 23) & 0xFFFFFFFFFFFFFFF8)) = v6;

  v11 = v6;
  v12 = swift_task_alloc();
  v0[15] = v12;
  *v12 = v0;
  v12[1] = AsyncStream<A>.awaitAndMapElement<A>(timeout:throwing:_:);
  v13 = v0[9];
  v14 = v0[4];
  v15 = v0[5];
  v16 = v0[2];
  v17 = v0[3];

  return timeout<A>(after:throwing:work:)(v16, v17, v14, v15, &async function pointer to partial apply for closure #1 in AsyncStream<A>.awaitAndMapElement<A>(timeout:throwing:_:), v9, v13);
}

{
  v2 = *v1;
  *(v2 + 128) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](AsyncStream<A>.awaitAndMapElement<A>(timeout:throwing:_:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in AsyncStream<A>.awaitAndMapElement<A>(timeout:throwing:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[7] = a6;
  v7[8] = a7;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  v9 = type metadata accessor for Optional();
  v7[9] = v9;
  v7[10] = *(v9 - 8);
  v7[11] = swift_task_alloc();
  v7[12] = *(a6 - 8);
  v7[13] = swift_task_alloc();
  type metadata accessor for Optional();
  v7[14] = swift_task_alloc();
  v10 = type metadata accessor for AsyncStream.Iterator();
  v7[15] = v10;
  v7[16] = *(v10 - 8);
  v7[17] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in AsyncStream<A>.awaitAndMapElement<A>(timeout:throwing:_:), 0, 0);
}

uint64_t closure #1 in AsyncStream<A>.awaitAndMapElement<A>(timeout:throwing:_:)()
{
  type metadata accessor for AsyncStream();
  AsyncStream.makeAsyncIterator()();
  v0[18] = 0;
  v1 = swift_task_alloc();
  v0[19] = v1;
  *v1 = v0;
  v1[1] = closure #1 in AsyncStream<A>.awaitAndMapElement<A>(timeout:throwing:_:);
  v2 = v0[14];
  v3 = v0[15];

  return MEMORY[0x2822003E8](v2, 0, 0, v3);
}

{

  return MEMORY[0x2822009F8](closure #1 in AsyncStream<A>.awaitAndMapElement<A>(timeout:throwing:_:), 0, 0);
}

{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[7];
  if ((*(v2 + 48))(v1, 1, v3) == 1)
  {
    v4 = v0[6];
    (*(v0[16] + 8))(v0[17], v0[15]);
    swift_willThrow();
    v5 = v4;
LABEL_5:

    v12 = v0[1];
LABEL_6:

    return v12();
  }

  v6 = v0[18];
  v7 = v0[13];
  v8 = v0[4];
  (*(v2 + 32))(v7, v1, v3);
  v8(v7);
  if (v6)
  {
    v10 = v0[16];
    v9 = v0[17];
    v11 = v0[15];
    (*(v0[12] + 8))(v0[13], v0[7]);
    (*(v10 + 8))(v9, v11);
    goto LABEL_5;
  }

  v14 = v0[11];
  v15 = v0[8];
  (*(v0[12] + 8))(v0[13], v0[7]);
  v16 = *(v15 - 8);
  if ((*(v16 + 48))(v14, 1, v15) != 1)
  {
    v20 = v0[11];
    v21 = v0[8];
    v22 = v0[2];
    (*(v0[16] + 8))(v0[17], v0[15]);
    (*(v16 + 32))(v22, v20, v21);

    v12 = v0[1];
    goto LABEL_6;
  }

  (*(v0[10] + 8))(v0[11], v0[9]);
  v0[18] = 0;
  v17 = swift_task_alloc();
  v0[19] = v17;
  *v17 = v0;
  v17[1] = closure #1 in AsyncStream<A>.awaitAndMapElement<A>(timeout:throwing:_:);
  v18 = v0[14];
  v19 = v0[15];

  return MEMORY[0x2822003E8](v18, 0, 0, v19);
}

uint64_t sub_26518E828()
{
  v1 = type metadata accessor for AsyncStream();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 23) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t partial apply for closure #1 in AsyncStream<A>.awaitAndMapElement<A>(timeout:throwing:_:)(uint64_t a1)
{
  v3 = v2;
  v6 = *(v1 + 16);
  v5 = *(v1 + 24);
  v7 = *(type metadata accessor for AsyncStream() - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = (*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 23) & 0xFFFFFFFFFFFFFFF8;
  v11 = (v1 + v9);
  v12 = *v11;
  v13 = v11[1];
  v14 = *(v1 + v10);
  v15 = swift_task_alloc();
  *(v3 + 16) = v15;
  *v15 = v3;
  v15[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in AsyncStream<A>.awaitAndMapElement<A>(timeout:throwing:_:)(a1, v1 + v8, v12, v13, v14, v6, v5);
}

uint64_t KeyedDecodingContainer.decode<A>(_:forKey:)@<X0>(uint64_t a3@<X2>, uint64_t x8_0@<X8>)
{
  v6 = type metadata accessor for Optional();
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v10 - v7;
  (*(*(a3 - 8) + 56))(&v10 - v7, 1, 1, a3);
  return DoNotEncode.init(wrappedValue:)(v8, a3, x8_0);
}

uint64_t DoNotEncode.wrappedValue.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t DoNotEncode.wrappedValue.setter(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 40);

  return v5(v2, a1, v4);
}

uint64_t DoNotEncode.init(wrappedValue:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  (*(*(a2 - 8) + 56))(a3, 1, 1, a2);
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 40);

  return v6(a3, a1, v5);
}

uint64_t DoNotEncode.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v5 = *(*(a2 - 8) + 56);
  v5(a3, 1, 1, a2);
  v6 = type metadata accessor for Optional();
  (*(*(v6 - 8) + 8))(a3, v6);
  return (v5)(a3, 1, 1, a2);
}

uint64_t type metadata completion function for DoNotEncode(uint64_t a1)
{
  result = type metadata accessor for Optional();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t Data.readableDescription.getter(uint64_t a1, uint64_t a2, SEL *a3)
{
  isa = Data._bridgeToObjectiveC()().super.isa;
  v5 = [isa *a3];

  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  return v6;
}

Swift::Int SecCertParsingError.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x266754DE0](a1);
  return Hasher._finalize()();
}

void Data.asSecCerts()(uint64_t a1, unint64_t a2)
{
  v15[2] = *MEMORY[0x277D85DE8];
  v2 = a2 >> 62;
  if ((a2 >> 62) > 1)
  {
    if (v2 != 2)
    {
      memset(v15, 0, 14);
      closure #1 in Data.asSecCerts()(v15, v15, &v14);
      return;
    }

    v3 = *(a1 + 16);
    v4 = *(a1 + 24);
    a1 = __DataStorage._bytes.getter();
    v5 = a1;
    if (a1)
    {
      a1 = __DataStorage._offset.getter();
      if (__OFSUB__(v3, a1))
      {
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v5 += v3 - a1;
    }

    v6 = __OFSUB__(v4, v3);
    v7 = v4 - v3;
    if (!v6)
    {
      goto LABEL_15;
    }

    __break(1u);
  }

  else if (!v2)
  {
    v15[0] = a1;
    LOWORD(v15[1]) = a2;
    BYTE2(v15[1]) = BYTE2(a2);
    BYTE3(v15[1]) = BYTE3(a2);
    BYTE4(v15[1]) = BYTE4(a2);
    BYTE5(v15[1]) = BYTE5(a2);
    closure #1 in Data.asSecCerts()(v15, v15 + BYTE6(a2), &v14);
    return;
  }

  v8 = a1;
  v7 = (a1 >> 32) - a1;
  if (a1 >> 32 < a1)
  {
    __break(1u);
    goto LABEL_24;
  }

  v5 = __DataStorage._bytes.getter();
  if (v5)
  {
    v9 = __DataStorage._offset.getter();
    if (!__OFSUB__(v8, v9))
    {
      v5 += v8 - v9;
      goto LABEL_15;
    }

LABEL_25:
    __break(1u);
  }

LABEL_15:
  v10 = MEMORY[0x2667538A0]();
  if (v10 >= v7)
  {
    v11 = v7;
  }

  else
  {
    v11 = v10;
  }

  v12 = v11 + v5;
  if (v5)
  {
    v13 = v12;
  }

  else
  {
    v13 = 0;
  }

  closure #1 in Data.asSecCerts()(v5, v13, v15);
}

void closure #1 in Data.asSecCerts()(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v19 = MEMORY[0x277D84F90];
  if (a1)
  {
    v4 = 0;
    v5 = a2 - a1;
    v6 = *MEMORY[0x277CBECE8];
    v7 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v4 == v5)
      {
        *a3 = v7;
        return;
      }

      if (__OFSUB__(v5, v4))
      {
        break;
      }

      v8 = CFDataCreate(v6, (a1 + v4), v5 - v4);
      if (!v8)
      {

        lazy protocol witness table accessor for type SecCertParsingError and conformance SecCertParsingError();
        swift_allocError();
        *v16 = 1;
        goto LABEL_15;
      }

      v9 = v8;
      v10 = SecCertificateCreateWithData(v6, v8);
      if (!v10)
      {

        lazy protocol witness table accessor for type SecCertParsingError and conformance SecCertParsingError();
        swift_allocError();
        *v17 = 2;
        swift_willThrow();

        return;
      }

      v11 = v10;
      MEMORY[0x266754620]();
      if (*((v19 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v19 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v7 = v19;
      v12 = v11;
      Length = SecCertificateGetLength();

      v14 = __OFADD__(v4, Length);
      v4 += Length;
      if (v14)
      {
        goto LABEL_18;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  else
  {
    lazy protocol witness table accessor for type SecCertParsingError and conformance SecCertParsingError();
    swift_allocError();
    *v15 = 0;
LABEL_15:
    swift_willThrow();
  }
}

unint64_t lazy protocol witness table accessor for type SecCertParsingError and conformance SecCertParsingError()
{
  result = lazy protocol witness table cache variable for type SecCertParsingError and conformance SecCertParsingError;
  if (!lazy protocol witness table cache variable for type SecCertParsingError and conformance SecCertParsingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SecCertParsingError and conformance SecCertParsingError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SecCertParsingError and conformance SecCertParsingError;
  if (!lazy protocol witness table cache variable for type SecCertParsingError and conformance SecCertParsingError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SecCertParsingError and conformance SecCertParsingError);
  }

  return result;
}

uint64_t static MLS.swiftMLSConfiguration(uniqueClientIdentifier:persister:testCertAnchors:)(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[24] = a1;
  v5[25] = a5;
  v8 = type metadata accessor for MLS.Client.Configuration();
  v5[26] = v8;
  v5[27] = *(v8 - 8);
  v5[28] = swift_task_alloc();
  v5[29] = swift_task_alloc();
  v9 = type metadata accessor for MLS.Storage.StorageOptions();
  v5[30] = v9;
  v5[31] = *(v9 - 8);
  v5[32] = swift_task_alloc();
  v5[33] = swift_task_alloc();
  v10 = *a2;
  v11 = a2[1];
  ObjectType = swift_getObjectType();
  v5[22] = v10;
  v5[23] = v11;
  v15 = (*(a4 + 232) + **(a4 + 232));
  v13 = swift_task_alloc();
  v5[34] = v13;
  *v13 = v5;
  v13[1] = static MLS.swiftMLSConfiguration(uniqueClientIdentifier:persister:testCertAnchors:);

  return v15(v5 + 2, v5 + 22, ObjectType, a4);
}

uint64_t static MLS.swiftMLSConfiguration(uniqueClientIdentifier:persister:testCertAnchors:)()
{
  *(*v1 + 280) = v0;

  if (v0)
  {
    v2 = static MLS.swiftMLSConfiguration(uniqueClientIdentifier:persister:testCertAnchors:);
  }

  else
  {
    v2 = static MLS.swiftMLSConfiguration(uniqueClientIdentifier:persister:testCertAnchors:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = v0[35];
  v2 = v0[5];
  v3 = v0[6];
  v4 = __swift_project_boxed_opaque_existential_1(v0 + 2, v2);
  v0[10] = v2;
  v0[11] = *(v3 + 16);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v0 + 7);
  (*(*(v2 - 8) + 16))(boxed_opaque_existential_1, v4, v2);
  v6 = v0[5];
  v7 = v0[6];
  v8 = __swift_project_boxed_opaque_existential_1(v0 + 2, v6);
  v0[15] = v6;
  v0[16] = *(v7 + 24);
  v9 = __swift_allocate_boxed_opaque_existential_1(v0 + 12);
  (*(*(v6 - 8) + 16))(v9, v8, v6);
  v10 = v0[5];
  v11 = v0[6];
  v12 = __swift_project_boxed_opaque_existential_1(v0 + 2, v10);
  v0[20] = v10;
  v0[21] = *(v11 + 8);
  v13 = __swift_allocate_boxed_opaque_existential_1(v0 + 17);
  (*(*(v10 - 8) + 16))(v13, v12, v10);
  MLS.Storage.StorageOptions.init(storeHPKESecretsInSEP:groupStateStorage:groupStateStorageV2:clientStateStorage:)();
  static MLS.Client.Configuration.rcsConfiguration(anchors:validateCredentialsOverride:disallowBasicCredentials:)();
  v14 = v0[33];
  if (v1)
  {
    (*(v0[31] + 8))(v0[33], v0[30]);
  }

  else
  {
    v17 = v0[31];
    v16 = v0[32];
    v18 = v0[29];
    v19 = v0[30];
    v20 = v0[26];
    v23 = v0[24];
    v21 = *(v0[27] + 32);
    v21(v18, v0[28], v20);
    (*(v17 + 16))(v16, v14, v19);
    MLS.Client.Configuration.storageOptions.setter();
    MLS.Client.Configuration.accessGroup.setter();
    MLS.Client.Configuration.useEras.setter();
    (*(v17 + 8))(v14, v19);
    v21(v23, v18, v20);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v15 = v0[1];

  return v15();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t RegistrationActor.__allocating_init()()
{
  v0 = swift_allocObject();
  swift_defaultActor_initialize();
  return v0;
}

uint64_t static RegistrationActor.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t RegistrationActor.__deallocating_deinit()
{
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

unint64_t lazy protocol witness table accessor for type RegistrationActor and conformance RegistrationActor(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor;
  if (!lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor)
  {
    type metadata accessor for RegistrationActor();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegistrationActor and conformance RegistrationActor);
  }

  return result;
}

uint64_t protocol witness for static GlobalActor.shared.getter in conformance RegistrationActor()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

uint64_t protocol witness for static GlobalActor.sharedUnownedExecutor.getter in conformance RegistrationActor(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for RegistrationActor();

  return MEMORY[0x2822005F8](v3, a2);
}

uint64_t static XPCUtils.XPCableError.xpcError(underlyingError:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = v12 - v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 24))(AssociatedTypeWitness, AssociatedConformanceWitness);
  swift_getErrorValue();
  v9 = Error.readableDescription.getter(v12[1], v12[2]);
  return (*(v4 + 104))(v7, v9, v10, a2, v4);
}

char *XPCUtils.XPCError.init(type:underlyingErrorDescription:)@<X0>(char *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *a4 = v4;
  return result;
}

uint64_t static XPCUtils.ClientXPCableError.xpcError(underlyingError:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = v12 - v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 32))(AssociatedTypeWitness, AssociatedConformanceWitness);
  swift_getErrorValue();
  v9 = Error.readableDescription.getter(v12[1], v12[2]);
  return (*(v4 + 104))(v7, v9, v10, a2, v4);
}

_BYTE *XPCUtils.XPCClientCreationError.init(type:underlyingErrorDescription:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

unint64_t XPCUtils.XPCError.ErrorType.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 4;
  if (result < 4)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t XPCUtils.XPCError.underlyingErrorDescription.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance XPCUtils.XPCError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCUtils.XPCError.CodingKeys and conformance XPCUtils.XPCError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance XPCUtils.XPCError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCUtils.XPCError.CodingKeys and conformance XPCUtils.XPCError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t XPCUtils.XPCError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging8XPCUtilsO8XPCErrorV10CodingKeys33_E4D7CC631BEB4D795CE29615F732817DLLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging8XPCUtilsO8XPCErrorV10CodingKeys33_E4D7CC631BEB4D795CE29615F732817DLLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v11[0] = *(v1 + 2);
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type XPCUtils.XPCError.CodingKeys and conformance XPCUtils.XPCError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v8;
  v13 = 0;
  lazy protocol witness table accessor for type XPCUtils.XPCError.ErrorType and conformance XPCUtils.XPCError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type XPCUtils.XPCError.CodingKeys and conformance XPCUtils.XPCError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCError.CodingKeys and conformance XPCUtils.XPCError.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCError.CodingKeys and conformance XPCUtils.XPCError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCError.CodingKeys and conformance XPCUtils.XPCError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCError.CodingKeys and conformance XPCUtils.XPCError.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCError.CodingKeys and conformance XPCUtils.XPCError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCError.CodingKeys and conformance XPCUtils.XPCError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCError.CodingKeys and conformance XPCUtils.XPCError.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCError.CodingKeys and conformance XPCUtils.XPCError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCError.CodingKeys and conformance XPCUtils.XPCError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCError.CodingKeys and conformance XPCUtils.XPCError.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCError.CodingKeys and conformance XPCUtils.XPCError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCError.CodingKeys and conformance XPCUtils.XPCError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type XPCUtils.XPCError.ErrorType and conformance XPCUtils.XPCError.ErrorType()
{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCError.ErrorType and conformance XPCUtils.XPCError.ErrorType;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCError.ErrorType and conformance XPCUtils.XPCError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCError.ErrorType and conformance XPCUtils.XPCError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCError.ErrorType and conformance XPCUtils.XPCError.ErrorType;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCError.ErrorType and conformance XPCUtils.XPCError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCError.ErrorType and conformance XPCUtils.XPCError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCError.ErrorType and conformance XPCUtils.XPCError.ErrorType;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCError.ErrorType and conformance XPCUtils.XPCError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCError.ErrorType and conformance XPCUtils.XPCError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCError.ErrorType and conformance XPCUtils.XPCError.ErrorType;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCError.ErrorType and conformance XPCUtils.XPCError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCError.ErrorType and conformance XPCUtils.XPCError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCError.ErrorType and conformance XPCUtils.XPCError.ErrorType;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCError.ErrorType and conformance XPCUtils.XPCError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCError.ErrorType and conformance XPCUtils.XPCError.ErrorType);
  }

  return result;
}

uint64_t XPCUtils.XPCError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging8XPCUtilsO8XPCErrorV10CodingKeys33_E4D7CC631BEB4D795CE29615F732817DLLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging8XPCUtilsO8XPCErrorV10CodingKeys33_E4D7CC631BEB4D795CE29615F732817DLLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type XPCUtils.XPCError.CodingKeys and conformance XPCUtils.XPCError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v16 = 0;
  lazy protocol witness table accessor for type XPCUtils.XPCError.ErrorType and conformance XPCUtils.XPCError.ErrorType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v17;
  v15 = 1;
  v10 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v12 = v11;
  (*(v6 + 8))(v8, v5);
  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

char *protocol witness for VersatileError.init(type:underlyingErrorDescription:) in conformance XPCUtils.XPCError@<X0>(char *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *a4 = v4;
  return result;
}

uint64_t protocol witness for Error._domain.getter in conformance XPCUtils.XPCError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCUtils.XPCError and conformance XPCUtils.XPCError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance XPCUtils.XPCError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCUtils.XPCError and conformance XPCUtils.XPCError();

  return MEMORY[0x28211F4A8](a1, v2);
}

unint64_t XPCUtils.XPCClientCreationError.ErrorType.init(rawValue:)@<X0>(unint64_t result@<X0>, char *a2@<X8>)
{
  v2 = 6;
  if (result < 6)
  {
    v2 = result;
  }

  *a2 = v2;
  return result;
}

uint64_t protocol witness for Error._code.getter in conformance XPCUtils.XPCError.ErrorType(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3();
  v6 = lazy protocol witness table accessor for type Int and conformance Int();

  return MEMORY[0x2821FE2D0](a1, a2, v5, v6);
}

uint64_t XPCUtils.XPCClientCreationError.underlyingErrorDescription.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance XPCUtils.XPCClientCreationError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCUtils.XPCClientCreationError.CodingKeys and conformance XPCUtils.XPCClientCreationError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance XPCUtils.XPCClientCreationError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCUtils.XPCClientCreationError.CodingKeys and conformance XPCUtils.XPCClientCreationError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t XPCUtils.XPCClientCreationError.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging8XPCUtilsO22XPCClientCreationErrorV10CodingKeys33_E4D7CC631BEB4D795CE29615F732817DLLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging8XPCUtilsO22XPCClientCreationErrorV10CodingKeys33_E4D7CC631BEB4D795CE29615F732817DLLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v8 = *v1;
  v9 = *(v1 + 1);
  v11[0] = *(v1 + 2);
  v11[1] = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type XPCUtils.XPCClientCreationError.CodingKeys and conformance XPCUtils.XPCClientCreationError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = v8;
  v13 = 0;
  lazy protocol witness table accessor for type XPCUtils.XPCClientCreationError.ErrorType and conformance XPCUtils.XPCClientCreationError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type XPCUtils.XPCClientCreationError.CodingKeys and conformance XPCUtils.XPCClientCreationError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.CodingKeys and conformance XPCUtils.XPCClientCreationError.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.CodingKeys and conformance XPCUtils.XPCClientCreationError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.CodingKeys and conformance XPCUtils.XPCClientCreationError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.CodingKeys and conformance XPCUtils.XPCClientCreationError.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.CodingKeys and conformance XPCUtils.XPCClientCreationError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.CodingKeys and conformance XPCUtils.XPCClientCreationError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.CodingKeys and conformance XPCUtils.XPCClientCreationError.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.CodingKeys and conformance XPCUtils.XPCClientCreationError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.CodingKeys and conformance XPCUtils.XPCClientCreationError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.CodingKeys and conformance XPCUtils.XPCClientCreationError.CodingKeys;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.CodingKeys and conformance XPCUtils.XPCClientCreationError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.CodingKeys and conformance XPCUtils.XPCClientCreationError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type XPCUtils.XPCClientCreationError.ErrorType and conformance XPCUtils.XPCClientCreationError.ErrorType()
{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.ErrorType and conformance XPCUtils.XPCClientCreationError.ErrorType;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.ErrorType and conformance XPCUtils.XPCClientCreationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.ErrorType and conformance XPCUtils.XPCClientCreationError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.ErrorType and conformance XPCUtils.XPCClientCreationError.ErrorType;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.ErrorType and conformance XPCUtils.XPCClientCreationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.ErrorType and conformance XPCUtils.XPCClientCreationError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.ErrorType and conformance XPCUtils.XPCClientCreationError.ErrorType;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.ErrorType and conformance XPCUtils.XPCClientCreationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.ErrorType and conformance XPCUtils.XPCClientCreationError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.ErrorType and conformance XPCUtils.XPCClientCreationError.ErrorType;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.ErrorType and conformance XPCUtils.XPCClientCreationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.ErrorType and conformance XPCUtils.XPCClientCreationError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.ErrorType and conformance XPCUtils.XPCClientCreationError.ErrorType;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.ErrorType and conformance XPCUtils.XPCClientCreationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.ErrorType and conformance XPCUtils.XPCClientCreationError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.ErrorType and conformance XPCUtils.XPCClientCreationError.ErrorType;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.ErrorType and conformance XPCUtils.XPCClientCreationError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError.ErrorType and conformance XPCUtils.XPCClientCreationError.ErrorType);
  }

  return result;
}

uint64_t XPCUtils.XPCClientCreationError.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging8XPCUtilsO22XPCClientCreationErrorV10CodingKeys33_E4D7CC631BEB4D795CE29615F732817DLLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging8XPCUtilsO22XPCClientCreationErrorV10CodingKeys33_E4D7CC631BEB4D795CE29615F732817DLLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type XPCUtils.XPCClientCreationError.CodingKeys and conformance XPCUtils.XPCClientCreationError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = 0;
    lazy protocol witness table accessor for type XPCUtils.XPCClientCreationError.ErrorType and conformance XPCUtils.XPCClientCreationError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v9 = v17;
    v15 = 1;
    v11 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    v13 = v12;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v11;
    *(a2 + 16) = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t instantiation function for generic protocol witness table for XPCUtils.XPCClientCreationError.ErrorType(uint64_t a1)
{
  result = lazy protocol witness table accessor for type XPCUtils.XPCClientCreationError.ErrorType and conformance XPCUtils.XPCClientCreationError.ErrorType();
  *(a1 + 8) = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for XPCUtils.XPCClientCreationError(uint64_t a1)
{
  result = lazy protocol witness table accessor for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError();
  *(a1 + 8) = result;
  return result;
}

uint64_t instantiation function for generic protocol witness table for XPCUtils.XPCError(void *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void), uint64_t (*a5)(void), uint64_t (*a6)(void), uint64_t (*a7)(void))
{
  a1[1] = (a4)(a1, a2, a3);
  a1[2] = a5();
  a1[3] = a6();
  result = a7();
  a1[4] = result;
  return result;
}

uint64_t protocol witness for Error._domain.getter in conformance XPCUtils.XPCClientCreationError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance XPCUtils.XPCClientCreationError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError();

  return MEMORY[0x28211F4A8](a1, v2);
}

Swift::Bool __swiftcall SMAFeatureFlagsStore.isEnabled(feature:)(SecureMessaging::SMAFeatureFlagsKey feature)
{
  v2 = *feature;
  v3 = *v1;
  if (*(v3 + 16) && (v4 = specialized __RawDictionaryStorage.find<A>(_:)(*feature), (v5 & 1) != 0))
  {
    v6 = *(*(v3 + 56) + v4);
  }

  else
  {
    v8[3] = &type metadata for SMAFeatureFlagsKey;
    v8[4] = lazy protocol witness table accessor for type SMAFeatureFlagsKey and conformance SMAFeatureFlagsKey();
    LOBYTE(v8[0]) = v2;
    v6 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
  }

  return v6 & 1;
}

const char *SMAFeatureFlagsKey.feature.getter()
{
  v1 = *v0;
  v2 = "KeyUpdates";
  v3 = "ClientNegativeIMDNs";
  v4 = "UseDefaultsForExternalKPs";
  if (v1 != 4)
  {
    v4 = "EnforceXPCEntitlements";
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = "Persistence";
  if (v1 != 1)
  {
    v5 = "SelfHeal";
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t SMAFeatureFlagsKey.isEnabled.getter()
{
  v1 = *v0;
  v4[3] = &type metadata for SMAFeatureFlagsKey;
  v4[4] = lazy protocol witness table accessor for type SMAFeatureFlagsKey and conformance SMAFeatureFlagsKey();
  LOBYTE(v4[0]) = v1;
  v2 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1Tm(v4);
  return v2 & 1;
}

Swift::Int SMAFeatureFlagsKey.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x266754DE0](v1);
  return Hasher._finalize()();
}

const char *protocol witness for FeatureFlagsKey.feature.getter in conformance SMAFeatureFlagsKey()
{
  v1 = *v0;
  v2 = "KeyUpdates";
  v3 = "ClientNegativeIMDNs";
  v4 = "UseDefaultsForExternalKPs";
  if (v1 != 4)
  {
    v4 = "EnforceXPCEntitlements";
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = "Persistence";
  if (v1 != 1)
  {
    v5 = "SelfHeal";
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type [SMAFeatureFlagsKey] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [SMAFeatureFlagsKey] and conformance [A];
  if (!lazy protocol witness table cache variable for type [SMAFeatureFlagsKey] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15SecureMessaging18SMAFeatureFlagsKeyOGMd, &_sSay15SecureMessaging18SMAFeatureFlagsKeyOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SMAFeatureFlagsKey] and conformance [A]);
  }

  return result;
}

uint64_t MLS.CheckKeyPackageExpirationOperation.__allocating_init(group:context:persister:eventSender:credentialProvider:keyPackageProvider:featureFlagsStore:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 *a8, uint64_t a9, uint64_t *a10, uint64_t *a11)
{
  v19 = swift_allocObject();
  MLS.CheckKeyPackageExpirationOperation.init(group:context:persister:eventSender:credentialProvider:keyPackageProvider:featureFlagsStore:clientIdentifier:)(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11);
  return v19;
}

uint64_t MLS.CheckKeyPackageExpirationOperation.group.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

double MLS.CheckKeyPackageExpirationOperation.clientIdentifier.getter@<D0>(void *a1@<X8>)
{
  v2 = (v1 + *(*v1 + 152));
  v3 = v2[1];
  *a1 = *v2;
  a1[1] = v3;

  return result;
}

double MLS.CheckKeyPackageExpirationOperation.featureFlagsStore.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + *(*v1 + 184));

  return result;
}

uint64_t MLS.CheckKeyPackageExpirationOperation.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 192);
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

char *MLS.CheckKeyPackageExpirationOperation.init(group:context:persister:eventSender:credentialProvider:keyPackageProvider:featureFlagsStore:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, __int128 *a8, uint64_t a9, uint64_t *a10, uint64_t *a11)
{
  v19 = *v11;
  v27 = *a11;
  v25 = *a10;
  v26 = a11[1];
  Logger.init(subsystem:category:)();
  *(v11 + 2) = a1;
  *(v11 + 3) = a2;
  (*(*(*(v19 + 88) - 8) + 32))(&v11[*(*v11 + 136)], a3);
  v20 = &v11[*(*v11 + 144)];
  *v20 = a4;
  *(v20 + 1) = a5;
  v21 = &v11[*(*v11 + 160)];
  *v21 = a6;
  *(v21 + 1) = a7;
  outlined init with take of MLS.KeyUpdatePolicy(a8, &v11[*(*v11 + 168)]);
  outlined init with take of MLS.KeyPackageProvider(a9, &v11[*(*v11 + 176)]);
  *&v11[*(*v11 + 184)] = v25;
  v22 = &v11[*(*v11 + 152)];
  *v22 = v27;
  *(v22 + 1) = v26;
  return v11;
}

uint64_t MLS.CheckKeyPackageExpirationOperation.isDisabled.getter()
{
  v1 = *v0;
  v2 = *(v0 + *(*v0 + 184));
  if (!*(v2 + 16) || (v3 = specialized __RawDictionaryStorage.find<A>(_:)(0), (v4 & 1) == 0))
  {
    v14[3] = &type metadata for SMAFeatureFlagsKey;
    v14[4] = lazy protocol witness table accessor for type SMAFeatureFlagsKey and conformance SMAFeatureFlagsKey();
    LOBYTE(v14[0]) = 0;

    v13 = isFeatureEnabled(_:)();
    __swift_destroy_boxed_opaque_existential_1Tm(v14);

    if ((v13 & 1) == 0)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (*(*(v2 + 56) + v3))
  {
    return 0;
  }

LABEL_4:

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v14[0] = v8;
    *v7 = 136315138;
    v9 = (*(*(v1 + 112) + 16))(*(v1 + 88));
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, v14);

    *(v7 + 4) = v11;
    _os_log_impl(&dword_264F1F000, v5, v6, "CheckKeyPackageExpirationOperation not performing expired key package refresh { identifier: %s }", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  return 1;
}

uint64_t MLS.CheckKeyPackageExpirationOperation.membersRequiringKeyPackages(swiftMLSGroup:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 8);
  v2 = MEMORY[0x277D84F90];

  return v1(v2);
}

uint64_t MLS.CheckKeyPackageExpirationOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  v4[20] = a2;
  v4[21] = v3;
  v4[19] = a1;
  v6 = *v3;
  v4[22] = *v3;
  type metadata accessor for MLS.KeyPackageProvider(0);
  v4[23] = swift_task_alloc();
  v7 = *(v6 + 88);
  v4[24] = v7;
  v4[25] = *(v7 - 8);
  v4[26] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v4[27] = swift_task_alloc();
  v4[28] = swift_task_alloc();
  v8 = type metadata accessor for Date();
  v4[29] = v8;
  v4[30] = *(v8 - 8);
  v4[31] = swift_task_alloc();
  v4[32] = swift_task_alloc();
  v4[33] = swift_task_alloc();
  v9 = type metadata accessor for MLS.Identity.Credential();
  v4[34] = v9;
  v4[35] = *(v9 - 8);
  v4[36] = swift_task_alloc();
  v10 = type metadata accessor for MLS.Identity.SigningIdentity();
  v4[37] = v10;
  v4[38] = *(v10 - 8);
  v4[39] = swift_task_alloc();
  v11 = swift_task_alloc();
  v12 = *a3;
  v4[40] = v11;
  v4[41] = v12;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v13 = static MLSActor.shared;
  v4[42] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.CheckKeyPackageExpirationOperation.perform(on:metricCollector:keyPackageResult:), v13, 0);
}

uint64_t MLS.CheckKeyPackageExpirationOperation.perform(on:metricCollector:keyPackageResult:)()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  v3 = *(v0 + 160);
  *(v0 + 344) = *(**(v0 + 168) + 136);
  v4 = *(v2 + 112);
  *(v0 + 352) = v4;
  *(v0 + 360) = (*(v4 + 16))(v1);
  *(v0 + 368) = v5;
  v7 = v3[3];
  v6 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v7);
  v8 = swift_task_alloc();
  *(v0 + 376) = v8;
  *v8 = v0;
  v8[1] = MLS.CheckKeyPackageExpirationOperation.perform(on:metricCollector:keyPackageResult:);

  return MLS.SwiftMLSGroupProtocol.memberSigningIdentities.getter(v7, v6);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MLS.CheckKeyPackageExpirationOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1)
{
  v3 = *v2;
  v4 = *v2;
  *(v4 + 384) = a1;
  *(v4 + 392) = v1;

  v5 = *(v3 + 336);
  if (v1)
  {
    v6 = MLS.CheckKeyPackageExpirationOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {
    v6 = MLS.CheckKeyPackageExpirationOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v145 = v1;
  v144 = *MEMORY[0x277D85DE8];
  v2 = *(v1 + 384);
  v3 = *(v2 + 32);
  v4 = ((1 << v3) + 63) >> 6;
  v5 = v2;
  if ((v3 & 0x3Fu) <= 0xD)
  {
    goto LABEL_2;
  }

  while (1)
  {

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }

    v5 = *(v1 + 384);
LABEL_2:
    v124 = v4;
    v126 = &v123;
    v6 = *(v1 + 304);
    v7 = *(v1 + 280);
    v8 = *(v1 + 240);
    MEMORY[0x28223BE20](a1);
    v125 = &v123 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v125, v9);
    v127 = 0;
    v10 = 0;
    v4 = v5 + 56;
    v11 = 1 << *(v2 + 32);
    v12 = -1;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    v13 = v12 & *(v5 + 56);
    v14 = (v11 + 63) >> 6;
    v140 = (v8 + 48);
    v132 = (v8 + 8);
    v133 = (v8 + 32);
    v135 = v6 + 16;
    v136 = (v7 + 8);
    v137 = (v6 + 8);
    v138 = v6;
    v15 = *(v1 + 392);
    v134 = v5;
    v130 = v14;
    v131 = v5 + 56;
    while (v13)
    {
      v17 = __clz(__rbit64(v13));
      v139 = (v13 - 1) & v13;
LABEL_14:
      v20 = v17 | (v10 << 6);
      v21 = *(v1 + 320);
      v22 = *(v1 + 296);
      v23 = *(v5 + 48);
      v24 = *(v138 + 72);
      v129 = v20;
      (*(v138 + 16))(v21, v23 + v24 * v20, v22);
      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v25 = *(v1 + 224);
      v26 = *(v1 + 232);
      MLS.Identity.SigningIdentity.credential.getter();
      MLS.Identity.Credential.credentialNotAfter.getter();
      v27 = *v140;
      if ((*v140)(v25, 1, v26) == 1)
      {
        outlined destroy of Date?(*(v1 + 224));
      }

      else
      {
        v29 = *(v1 + 256);
        v28 = *(v1 + 264);
        v30 = *(v1 + 232);
        (*v133)(v28, *(v1 + 224), v30);
        Date.init()();
        v31 = static Date.< infix(_:_:)();
        v32 = *v132;
        (*v132)(v29, v30);
        v32(v28, v30);
        v4 = v131;
        v5 = v134;
        if (v31)
        {
          v14 = v130;
          goto LABEL_24;
        }
      }

      MLS.Identity.Credential.participantInfoNotAfter.getter();
      v128 = v15;
      if (v15)
      {
        v90 = *(v1 + 320);
        v91 = *(v1 + 296);
        (*v136)(*(v1 + 288), *(v1 + 272));
        (*v137)(v90, v91);

        swift_willThrow();
        goto LABEL_50;
      }

      v33 = *(v1 + 232);
      v34 = *(v1 + 216);
      if ((v27)(v34, 1, v33) == 1)
      {
        outlined destroy of Date?(v34);
        v14 = v130;
        goto LABEL_6;
      }

      v36 = *(v1 + 248);
      v35 = *(v1 + 256);
      (*v133)(v36, v34, v33);
      Date.init()();
      v37 = static Date.< infix(_:_:)();
      v38 = *v132;
      (*v132)(v35, v33);
      v38(v36, v33);
      v14 = v130;
      v4 = v131;
      v5 = v134;
      if (v37)
      {
        v15 = 0;
LABEL_24:
        v2 = *(v1 + 320);
        v39 = *(v1 + 296);
        (*v136)(*(v1 + 288), *(v1 + 272));
        (*v137)(v2, v39);
        *&v125[(v129 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v129;
        v40 = __OFADD__(v127++, 1);
        v13 = v139;
        if (v40)
        {
          __break(1u);
LABEL_27:
          v41 = specialized _NativeSet.extractSubset(using:count:)(v125, v124, v127, *(v1 + 384));
          goto LABEL_28;
        }
      }

      else
      {
LABEL_6:
        v2 = *(v1 + 320);
        v16 = *(v1 + 296);
        (*v136)(*(v1 + 288), *(v1 + 272));
        (*v137)(v2, v16);
        v15 = 0;
        v13 = v139;
      }
    }

    v18 = v10;
    while (1)
    {
      v10 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v10 >= v14)
      {
        goto LABEL_27;
      }

      v19 = *(v4 + 8 * v10);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v139 = (v19 - 1) & v19;
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_62:
    __break(1u);
  }

  v121 = *(v1 + 384);
  v120 = *(v1 + 392);
  v122 = swift_slowAlloc();
  v15 = v120;
  v41 = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVy8SwiftMLS0J0O8IdentityO07SigningK0VG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab8VKXEfU_8i8MLS0G0O8k3O07L7H0V_TG5AOxSbs5Error_pRi_zRi0_zlyANIsgndzo_Tf1nc_n(v122, v4, v121, closure #1 in MLS.CheckKeyPackageExpirationOperation.perform(on:metricCollector:keyPackageResult:));

  MEMORY[0x266755550](v122, -1, -1);
  v128 = v120;
  if (v120)
  {
LABEL_50:

    v92 = *(v1 + 8);
    goto LABEL_55;
  }

LABEL_28:
  v42 = *(v41 + 16);
  if (v42 <= 1)
  {
LABEL_43:
    if (v42)
    {

      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.default.getter();

      v60 = os_log_type_enabled(v58, v59);
      v61 = *(v1 + 368);
      v138 = v41;
      if (v60)
      {
        v62 = *(v1 + 360);
        v63 = swift_slowAlloc();
        v64 = swift_slowAlloc();
        v142 = v64;
        *v63 = 136315138;
        v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v61, &v142);

        *(v63 + 4) = v65;
        _os_log_impl(&dword_264F1F000, v58, v59, "CheckKeyPackageExpirationOperation key package updates needed { identifier: %s }", v63, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v64);
        MEMORY[0x266755550](v64, -1, -1);
        MEMORY[0x266755550](v63, -1, -1);
      }

      else
      {
      }

      v70 = *(v1 + 344);
      v69 = *(v1 + 352);
      v72 = *(v1 + 200);
      v71 = *(v1 + 208);
      v73 = *(v1 + 184);
      v74 = *(v1 + 192);
      v76 = *(v1 + 168);
      v75 = *(v1 + 176);
      v77 = *(v1 + 152);
      v140 = *(v1 + 160);
      v78 = *(v75 + 120);
      v79 = *(v75 + 96);
      *(v1 + 16) = *(v75 + 80);
      *(v1 + 24) = v74;
      *(v1 + 32) = v79;
      *(v1 + 48) = v69;
      *(v1 + 56) = v78;
      updated = type metadata accessor for MLS.UpdateOtherExpiredKeyPackagesOperation(0, v1 + 16);
      v81 = *(v76 + 3);
      v139 = *(v76 + 2);
      (*(v72 + 16))(v71, &v76[v70], v74);
      outlined init with copy of ServerBag.MLS(&v76[*(*v76 + 168)], v1 + 112);
      v82 = *v76;
      v83 = &v76[*(*v76 + 160)];
      v84 = *v83;
      v85 = v83[1];
      v86 = &v76[*(*v76 + 152)];
      v87 = v86[1];
      v142 = *v86;
      v143 = v87;
      outlined init with copy of MLS.KeyPackageProvider(&v76[*(v82 + 176)], v73);

      swift_unknownObjectRetain();

      v88 = MLS.UpdateOtherExpiredKeyPackagesOperation.__allocating_init(group:context:identitiesNeedingUpdate:credentialProvider:eventSender:clientIdentifier:keyPackageProvider:)(v139, v81, v71, v138, (v1 + 112), v84, v85, &v142, v73);
      v77[3] = updated;
      v77[4] = swift_getWitnessTable();
      *v77 = v88;
      v89 = (v77 + 5);
LABEL_53:
      outlined init with copy of ServerBag.MLS(v140, v89);
      v68 = 2;
    }

    else
    {
      v66 = *(v1 + 152);
      v67 = *(v1 + 160);

      *(v66 + 64) = 0u;
      *(v66 + 80) = 0u;
      *(v66 + 32) = 0u;
      *(v66 + 48) = 0u;
      *v66 = 0u;
      *(v66 + 16) = 0u;
      *(v66 + 96) = 3;
      outlined init with copy of ServerBag.MLS(v67, v66 + 104);
      v68 = 1;
    }

    v114 = *(v1 + 328);
    v140 = *(v1 + 184);
    v115 = *(v1 + 152);
    *(v115 + 408) = v68;
    *(v115 + 424) = 0;
    *(v115 + 432) = 0;
    *(v115 + 416) = v114;

    v92 = *(v1 + 8);
LABEL_55:

    return v92();
  }

  else
  {
    v43 = *(v1 + 304);
    v141[0] = 0;
    v44 = -1;
    v45 = -1 << *(v41 + 32);
    if (-v45 < 64)
    {
      v44 = ~(-1 << -v45);
    }

    v46 = v44 & *(v41 + 56);
    v47 = (63 - v45) >> 6;
    v139 = v43 + 16;
    v140 = (v43 + 8);

    v48 = 0;
    v2 = 0;
    if (!v46)
    {
LABEL_33:
      while (1)
      {
        v4 = v48 + 1;
        if (__OFADD__(v48, 1))
        {
          goto LABEL_62;
        }

        if (v4 >= v47)
        {

          if ((v2 & 1) == 0)
          {
            v42 = *(v41 + 16);
            goto LABEL_43;
          }

          v50 = Logger.logObject.getter();
          v51 = static os_log_type_t.default.getter();

          v52 = os_log_type_enabled(v50, v51);
          v53 = *(v1 + 368);
          if (v52)
          {
            v54 = *(v1 + 360);
            v55 = swift_slowAlloc();
            v56 = swift_slowAlloc();
            v142 = v56;
            *v55 = 136315138;
            v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v53, &v142);

            *(v55 + 4) = v57;
            _os_log_impl(&dword_264F1F000, v50, v51, "CheckKeyPackageExpirationOperation era advancement needed { identifier: %s }", v55, 0xCu);
            __swift_destroy_boxed_opaque_existential_1Tm(v56);
            MEMORY[0x266755550](v56, -1, -1);
            MEMORY[0x266755550](v55, -1, -1);
          }

          else
          {
          }

          v94 = *(v1 + 344);
          v93 = *(v1 + 352);
          v95 = *(v1 + 200);
          v138 = *(v1 + 208);
          v96 = v138;
          v97 = *(v1 + 192);
          v99 = *(v1 + 168);
          v98 = *(v1 + 176);
          v100 = *(v1 + 152);
          v140 = *(v1 + 160);
          v101 = *(v98 + 120);
          v102 = *(v98 + 96);
          *(v1 + 64) = *(v98 + 80);
          *(v1 + 72) = v97;
          *(v1 + 80) = v102;
          *(v1 + 96) = v93;
          *(v1 + 104) = v101;
          v103 = type metadata accessor for MLS.EraAdvancementOperation(0, v1 + 64);
          v104 = *(v99 + 3);
          v139 = *(v99 + 2);
          (*(v95 + 16))(v96, &v99[v94], v97);
          v105 = &v99[*(*v99 + 144)];
          v106 = *v105;
          v107 = v105[1];
          v108 = &v99[*(*v99 + 160)];
          v109 = *v108;
          v110 = v108[1];
          v111 = &v99[*(*v99 + 152)];
          v112 = v111[1];
          v142 = *v111;
          v143 = v112;

          swift_unknownObjectRetain();
          swift_unknownObjectRetain();

          v113 = MLS.EraAdvancementOperation.__allocating_init(group:context:persister:eventSender:clientIdentifier:)(v139, v104, v138, v106, v107, v109, v110, &v142);
          v100[3] = v103;
          v100[4] = swift_getWitnessTable();
          *v100 = v113;
          v89 = (v100 + 5);
          goto LABEL_53;
        }

        v46 = *(v41 + 56 + 8 * v4);
        ++v48;
        if (v46)
        {
          goto LABEL_36;
        }
      }
    }

    while (1)
    {
      v4 = v48;
LABEL_36:
      v49 = *(v1 + 168);
      (*(v43 + 16))(*(v1 + 312), *(v41 + 48) + *(v43 + 72) * (__clz(__rbit64(v46)) | (v4 << 6)), *(v1 + 296));
      closure #2 in implicit closure #1 in MLS.CheckKeyPackageExpirationOperation.perform(on:metricCollector:keyPackageResult:)(v141, v49, &v142);
      if (v15)
      {
        break;
      }

      v46 &= v46 - 1;
      (*v140)(*(v1 + 312), *(v1 + 296));
      v2 = v142;
      v141[0] = v142;
      v48 = v4;
      if (!v46)
      {
        goto LABEL_33;
      }
    }

    v117 = *(v1 + 296);
    v118 = *(v1 + 312);

    v119 = *v140;

    return v119(v118, v117);
  }
}

uint64_t closure #1 in MLS.CheckKeyPackageExpirationOperation.perform(on:metricCollector:keyPackageResult:)()
{
  v0 = type metadata accessor for MLS.Identity.Credential();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  MLS.Identity.SigningIdentity.credential.getter();
  v4 = MLS.Identity.Credential.isExpired.getter();
  (*(v1 + 8))(v3, v0);
  return v4 & 1;
}

uint64_t closure #2 in implicit closure #1 in MLS.CheckKeyPackageExpirationOperation.perform(on:metricCollector:keyPackageResult:)@<X0>(char *a1@<X0>, uint64_t a2@<X2>, _BYTE *a3@<X8>)
{
  v6 = type metadata accessor for MLS.Identity.Credential();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  result = swift_task_isCurrentExecutor();
  if ((result & 1) == 0)
  {
    result = swift_task_reportUnexpectedExecutor();
  }

  if (v10)
  {
    v12 = 1;
  }

  else
  {
    MLS.Identity.SigningIdentity.credential.getter();
    v13 = MLS.Identity.Credential.telURI.getter();
    result = (*(v7 + 8))(v9, v6);
    if (v13)
    {
      v14 = (a2 + *(*a2 + 152));
      v16 = *v14;
      v15 = v14[1];
      v17[0] = v16;
      v17[1] = v15;
      MEMORY[0x28223BE20](result);
      v17[-2] = v17;
      v12 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), &v17[-4], v13);
    }

    else
    {
      v12 = 0;
    }
  }

  *a3 = v12 & 1;
  return result;
}

char *MLS.CheckKeyPackageExpirationOperation.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 88) - 8) + 8))(v0 + *(*v0 + 136));
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + *(*v0 + 168)));
  outlined destroy of MLS.KeyPackageProvider(v0 + *(*v0 + 176));

  v2 = *(*v0 + 192);
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t MLS.CheckKeyPackageExpirationOperation.__deallocating_deinit()
{
  MLS.CheckKeyPackageExpirationOperation.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for MLS.RequiresGroupGroupOperation.membersRequiringKeyPackages(swiftMLSGroup:) in conformance MLS.CheckKeyPackageExpirationOperation<A, B, C>(uint64_t a1)
{
  v6 = (*(**v1 + 256) + **(**v1 + 256));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = specialized KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v6(a1);
}

uint64_t protocol witness for MLS.RequiresGroupGroupOperation.perform(on:metricCollector:keyPackageResult:) in conformance MLS.CheckKeyPackageExpirationOperation<A, B, C>(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + 264) + **(**v4 + 264));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.GroupOperation.logger.getter in conformance MLS.CheckKeyPackageExpirationOperation<A, B, C>@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v3 + 192);
  v5 = type metadata accessor for Logger();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

void *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVy8SwiftMLS0J0O8IdentityO07SigningK0VG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab8VKXEfU_8i8MLS0G0O8k3O07L7H0V_TG5AOxSbs5Error_pRi_zRi0_zlyANIsgndzo_Tf1nc_n(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    v8 = specialized closure #1 in _NativeSet.filter(_:)(result, a2, a3, a4);

    return v8;
  }

  return result;
}

uint64_t specialized closure #1 in _NativeSet.filter(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v35 = a4;
  v29 = a2;
  v30 = a1;
  v38 = type metadata accessor for MLS.Identity.SigningIdentity();
  result = MEMORY[0x28223BE20](v38);
  v36 = a3;
  v37 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = 0;
  v12 = *(a3 + 56);
  v11 = a3 + 56;
  v10 = v12;
  v13 = 1 << *(v11 - 24);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  v33 = v7 + 16;
  v34 = v7;
  v31 = 0;
  v32 = (v7 + 8);
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
    v18 = v17 | (v9 << 6);
    v19 = v38;
    v20 = v37;
LABEL_11:
    (*(v34 + 16))(v20, *(v36 + 48) + *(v34 + 72) * v18, v19);
    v23 = v35(v20);
    v24 = v20;
    if (v4)
    {
      return (*v32)(v20, v19);
    }

    v25 = v23;
    result = (*v32)(v24, v19);
    if (v25)
    {
      *(v30 + ((v18 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v18;
      if (__OFADD__(v31++, 1))
      {
        __break(1u);
LABEL_16:
        v27 = v36;

        return specialized _NativeSet.extractSubset(using:count:)(v30, v29, v31, v27);
      }
    }
  }

  v21 = v9;
  v19 = v38;
  v20 = v37;
  while (1)
  {
    v9 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      goto LABEL_16;
    }

    v22 = *(v11 + 8 * v9);
    ++v21;
    if (v22)
    {
      v15 = (v22 - 1) & v22;
      v18 = __clz(__rbit64(v22)) | (v9 << 6);
      goto LABEL_11;
    }
  }

  __break(1u);
  return result;
}

Swift::Int specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy15SecureMessaging3MLSO9AllMemberOGMd, &_ss11_SetStorageCy15SecureMessaging3MLSO9AllMemberOGMR);
  result = static _SetStorage.allocate(capacity:)();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v33 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v34 = (v10 - 1) & v10;
LABEL_17:
    v16 = *(v4 + 48) + 32 * (v13 | (v11 << 6));
    v18 = *v16;
    v17 = *(v16 + 8);
    v36 = *(v16 + 16);
    v19 = *(v16 + 24);
    Hasher.init(_seed:)();
    v35 = v17;
    if ((v19 & 0x80000000) == 0)
    {
      MEMORY[0x266754DE0](0);

      v20 = v18;
      String.hash(into:)();
      MEMORY[0x266754DE0](0);
      v21 = v19;
LABEL_21:
      v22 = v36;
      goto LABEL_22;
    }

    MEMORY[0x266754DE0](1);

    v20 = v18;
    String.hash(into:)();
    MEMORY[0x266754DE0](0);
    v21 = v19;
    if (v19)
    {
      Hasher._combine(_:)(0);
      goto LABEL_21;
    }

    Hasher._combine(_:)(1u);
    v22 = v36;
    MEMORY[0x266754DE0](v36);
LABEL_22:
    result = Hasher._finalize()();
    v23 = -1 << *(v9 + 32);
    v24 = result & ~v23;
    v25 = v24 >> 6;
    if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
    {
      v27 = 0;
      v28 = (63 - v23) >> 6;
      while (++v25 != v28 || (v27 & 1) == 0)
      {
        v29 = v25 == v28;
        if (v25 == v28)
        {
          v25 = 0;
        }

        v27 |= v29;
        v30 = *(v12 + 8 * v25);
        if (v30 != -1)
        {
          v26 = __clz(__rbit64(~v30)) + (v25 << 6);
          goto LABEL_32;
        }
      }

      goto LABEL_37;
    }

    v26 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_32:
    *(v12 + ((v26 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v26;
    v31 = *(v9 + 48) + 32 * v26;
    *v31 = v20;
    *(v31 + 8) = v35;
    *(v31 + 16) = v22;
    *(v31 + 24) = v21;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_38;
    }

    v4 = v33;
    v10 = v34;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v34 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.extractSubset(using:count:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = type metadata accessor for MLS.Identity.SigningIdentity();
  v8 = *(v35 - 8);
  MEMORY[0x28223BE20](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x277D84FA0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy8SwiftMLS0D0O8IdentityO07SigningE0VGMd, &_ss11_SetStorageCy8SwiftMLS0D0O8IdentityO07SigningE0VGMR);
  result = static _SetStorage.allocate(capacity:)();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    lazy protocol witness table accessor for type MLS.Identity.SigningIdentity and conformance MLS.Identity.SigningIdentity();
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t instantiation function for generic protocol witness table for MLS.CheckKeyPackageExpirationOperation<A, B, C>(uint64_t a1, uint64_t a2)
{
  result = swift_getWitnessTable();
  *(a1 + 8) = result;
  return result;
}

uint64_t type metadata completion function for MLS.CheckKeyPackageExpirationOperation(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for MLS.KeyPackageProvider(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for Logger();
      if (v4 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t dispatch thunk of MLS.CheckKeyPackageExpirationOperation.membersRequiringKeyPackages(swiftMLSGroup:)(uint64_t a1)
{
  v6 = (*(*v1 + 256) + **(*v1 + 256));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v6(a1);
}

uint64_t dispatch thunk of MLS.CheckKeyPackageExpirationOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 264) + **(*v4 + 264));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

uint64_t partial apply for specialized closure #1 in Sequence<>.contains(_:)(uint64_t *a1)
{
  return specialized closure #1 in Sequence<>.contains(_:)(a1, *(v1 + 16)) & 1;
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

unint64_t lazy protocol witness table accessor for type MLS.Identity.SigningIdentity and conformance MLS.Identity.SigningIdentity()
{
  result = lazy protocol witness table cache variable for type MLS.Identity.SigningIdentity and conformance MLS.Identity.SigningIdentity;
  if (!lazy protocol witness table cache variable for type MLS.Identity.SigningIdentity and conformance MLS.Identity.SigningIdentity)
  {
    type metadata accessor for MLS.Identity.SigningIdentity();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.Identity.SigningIdentity and conformance MLS.Identity.SigningIdentity);
  }

  return result;
}

uint64_t specialized Collection.first.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  result = _HashTable.startBucket.getter();
  if (result == 1 << *(a1 + 32))
  {
    v5 = 0;
    v6 = 0;
    v7 = 0;
    v8 = -2;
  }

  else
  {
    specialized Set.subscript.getter(result, *(a1 + 36), a1, &v9);
    v5 = v9;
    v6 = v10;
    v7 = v11;
    v8 = v12;
    outlined copy of MLS.AllMember(v9, v10);
    result = outlined consume of MLS.AllMember(v5, v6);
  }

  *a2 = v5;
  *(a2 + 8) = v6;
  *(a2 + 16) = v7;
  *(a2 + 24) = v8;
  return result;
}

{
  v4 = _HashTable.startBucket.getter();
  v5 = 1;
  if (v4 != 1 << *(a1 + 32))
  {
    specialized Set.subscript.getter(v4, *(a1 + 36), a1, a2);
    v5 = 0;
  }

  v6 = type metadata accessor for MLS.Identity.SigningIdentity();
  v7 = *(*(v6 - 8) + 56);

  return v7(a2, v5, 1, v6);
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

uint64_t MLS.EncryptOperation.__allocating_init(data:group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  Logger.init(subsystem:category:)();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;
  *(v10 + 32) = a3;
  *(v10 + 40) = a4;
  v11 = *(a5 + 112);
  *(v10 + 144) = *(a5 + 96);
  *(v10 + 160) = v11;
  *(v10 + 176) = *(a5 + 128);
  *(v10 + 192) = *(a5 + 144);
  v12 = *(a5 + 48);
  *(v10 + 80) = *(a5 + 32);
  *(v10 + 96) = v12;
  v13 = *(a5 + 80);
  *(v10 + 112) = *(a5 + 64);
  *(v10 + 128) = v13;
  v14 = *(a5 + 16);
  *(v10 + 48) = *a5;
  *(v10 + 64) = v14;
  return v10;
}

uint64_t MLS.EncryptOperation.data.getter()
{
  v1 = *(v0 + 16);
  outlined copy of Data._Representation(v1, *(v0 + 24));
  return v1;
}

uint64_t MLS.EncryptOperation.group.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t MLS.EncryptOperation.context.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 160);
  v3 = *(v1 + 128);
  v20 = *(v1 + 144);
  v21 = v2;
  v4 = *(v1 + 160);
  v22 = *(v1 + 176);
  v5 = *(v1 + 96);
  v7 = *(v1 + 64);
  v16 = *(v1 + 80);
  v6 = v16;
  v17 = v5;
  v8 = *(v1 + 96);
  v9 = *(v1 + 128);
  v18 = *(v1 + 112);
  v10 = v18;
  v19 = v9;
  v11 = *(v1 + 64);
  v15[0] = *(v1 + 48);
  v12 = v15[0];
  v15[1] = v11;
  *(a1 + 96) = v20;
  *(a1 + 112) = v4;
  *(a1 + 128) = *(v1 + 176);
  *(a1 + 32) = v6;
  *(a1 + 48) = v8;
  *(a1 + 64) = v10;
  *(a1 + 80) = v3;
  v23 = *(v1 + 192);
  *(a1 + 144) = *(v1 + 192);
  *a1 = v12;
  *(a1 + 16) = v7;
  return outlined init with copy of MLS.OutgoingEventState?(v15, v14, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMR);
}

uint64_t MLS.EncryptOperation.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCO15SecureMessaging3MLS16EncryptOperation_logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t MLS.EncryptOperation.init(data:group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  Logger.init(subsystem:category:)();
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  v11 = *(a5 + 112);
  *(v5 + 144) = *(a5 + 96);
  *(v5 + 160) = v11;
  *(v5 + 176) = *(a5 + 128);
  *(v5 + 192) = *(a5 + 144);
  v12 = *(a5 + 48);
  *(v5 + 80) = *(a5 + 32);
  *(v5 + 96) = v12;
  v13 = *(a5 + 80);
  *(v5 + 112) = *(a5 + 64);
  *(v5 + 128) = v13;
  v14 = *(a5 + 16);
  *(v5 + 48) = *a5;
  *(v5 + 64) = v14;
  return v5;
}

uint64_t MLS.EncryptOperation.membersRequiringKeyPackages(swiftMLSGroup:)()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 8);
  v2 = MEMORY[0x277D84F90];

  return v1(v2);
}

uint64_t MLS.EncryptOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4[58] = a2;
  v4[59] = v3;
  v4[57] = a1;
  v6 = type metadata accessor for UUID();
  v4[60] = v6;
  v4[61] = *(v6 - 8);
  v4[62] = swift_task_alloc();
  v7 = type metadata accessor for MLS.Group.Group.EncryptApplicationMessageWithAADInput();
  v4[63] = v7;
  v4[64] = *(v7 - 8);
  v4[65] = swift_task_alloc();
  v8 = type metadata accessor for MLS.Group.Group.EncryptWrappedApplicationMessageInput();
  v4[66] = v8;
  v4[67] = *(v8 - 8);
  v4[68] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O8IdentityO07SigningC0VSgMd, &_s8SwiftMLS0B0O8IdentityO07SigningC0VSgMR);
  v4[69] = swift_task_alloc();
  v9 = type metadata accessor for MLS.Identity.Credential();
  v4[70] = v9;
  v4[71] = *(v9 - 8);
  v4[72] = swift_task_alloc();
  v10 = type metadata accessor for MLS.Identity.SigningIdentity();
  v4[73] = v10;
  v4[74] = *(v10 - 8);
  v4[75] = swift_task_alloc();
  v4[76] = swift_task_alloc();
  v4[77] = swift_task_alloc();
  v11 = type metadata accessor for MLS.Group.Member();
  v4[78] = v11;
  v4[79] = *(v11 - 8);
  v4[80] = swift_task_alloc();
  v12 = type metadata accessor for MLS.Group.Group.PriorGroupMembershipInput();
  v4[81] = v12;
  v4[82] = *(v12 - 8);
  v4[83] = swift_task_alloc();
  v13 = type metadata accessor for MLS.Group.Message();
  v4[84] = v13;
  v4[85] = *(v13 - 8);
  v4[86] = swift_task_alloc();
  v4[87] = swift_task_alloc();
  v4[88] = swift_task_alloc();
  v4[89] = swift_task_alloc();
  v4[90] = swift_task_alloc();
  v4[91] = type metadata accessor for MetricCollector.Event(0);
  v4[92] = swift_task_alloc();
  v4[93] = swift_task_alloc();
  v4[94] = *a3;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v14 = static MLSActor.shared;
  v4[95] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.EncryptOperation.perform(on:metricCollector:keyPackageResult:), v14, 0);
}

void *MLS.EncryptOperation.perform(on:metricCollector:keyPackageResult:)()
{
  v98 = v0;
  v1 = *(v0 + 472);
  *(v0 + 432) = *(v0 + 752);
  v2 = *(v1 + 48);
  *(v0 + 768) = v2;
  v3 = *(v1 + 56);
  *(v0 + 776) = v3;
  *(v0 + 784) = OBJC_IVAR____TtCO15SecureMessaging3MLS16EncryptOperation_logger;

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();

  log = v2;
  if (os_log_type_enabled(v4, v5))
  {
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v91 = v7;
    *v6 = 136315138;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v3, &v91);
    _os_log_impl(&dword_264F1F000, v4, v5, "EncryptOperation encrypting data { identifier: %s }", v6, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  v8 = *(v0 + 752);
  v9 = *(v0 + 744);
  v10 = *(v0 + 736);
  v11 = *(v0 + 728);
  v12 = *(v0 + 472);
  Date.init()();
  v13 = *(v11 + 20);
  v14 = type metadata accessor for Date();
  (*(*(v14 - 8) + 56))(v9 + v13, 1, 1, v14);
  outlined init with take of MetricCollector.Event(v9, v10);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v91 = v8;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v10, 0x534C4D7466697753, 0xEE0074696D6D6F43, isUniquelyReferenced_nonNull_native);
  v16 = v91;
  *(v0 + 792) = v91;

  *(v0 + 432) = v16;
  v17 = v12[10];
  *(v0 + 800) = v17;
  v18 = v12[11];
  *(v0 + 808) = v18;
  v19 = v12[12];
  *(v0 + 816) = v19;
  v20 = v12[13];
  *(v0 + 824) = v20;
  v21 = v12[14];
  *(v0 + 832) = v21;
  v22 = v12[15];
  *(v0 + 840) = v22;
  if (v18 >> 60 == 15)
  {

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v91 = v26;
      *v25 = 136315138;
      *(v25 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(log, v3, &v91);
      _os_log_impl(&dword_264F1F000, v23, v24, "EncryptOperation encrypting without AAD { identifier: %s }", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v26);
      MEMORY[0x266755550](v26, -1, -1);
      MEMORY[0x266755550](v25, -1, -1);
    }

    v27 = *(v0 + 464);
    v28 = *(v0 + 472);
    v29 = v27[3];
    v30 = v27[4];
    __swift_project_boxed_opaque_existential_1(v27, v29);
    v31 = *(v28 + 16);
    v32 = *(v28 + 24);
    v87 = (*(v30 + 112) + **(v30 + 112));
    v33 = swift_task_alloc();
    *(v0 + 960) = v33;
    *v33 = v0;
    v33[1] = MLS.EncryptOperation.perform(on:metricCollector:keyPackageResult:);
    v34 = *(v0 + 696);

    return v87(v34, v31, v32, v29, v30);
  }

  v36 = *(v0 + 472);
  v37 = *(v36 + 128);
  *(v0 + 848) = v37;
  v38 = *(v36 + 136);
  *(v0 + 856) = v38;
  v39 = *(v36 + 144);
  *(v0 + 864) = v39;
  v40 = *(v36 + 152);
  *(v0 + 193) = v40;
  if (v40 > 0xFD)
  {
    outlined copy of MLS.AdditionalAuthenticatedData?(v17, v18, v19, v20, v21, v22);

    outlined copy of MLS.AdditionalAuthenticatedData?(v17, v18, v19, v20, v21, v22);
    v41 = Logger.logObject.getter();
    v42 = static os_log_type_t.default.getter();

    outlined consume of MLS.AdditionalAuthenticatedData?(v17, v18, v19, v20, v21, v22);
    if (os_log_type_enabled(v41, v42))
    {
      v81 = v42;
      v43 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v97 = v88;
      *v43 = 136315394;
      *(v43 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(log, v3, &v97);
      *(v43 + 12) = 2080;
      v91 = v17;
      v92 = v18;
      v93 = v19;
      v94 = v20;
      v95 = v21;
      v96 = v22;
      outlined copy of Data._Representation(v17, v18);
      outlined copy of Data?(v21, v22);
      loga = v41;
      v44 = MLS.EncryptedRCS.AdditionalAuthenticatedData.description.getter();
      v46 = v45;
      v47 = v95;
      v48 = v96;
      outlined consume of Data._Representation(v91, v92);
      outlined consume of Data?(v47, v48);
      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v44, v46, &v97);

      *(v43 + 14) = v49;
      _os_log_impl(&dword_264F1F000, loga, v81, "EncryptOperation encrypting with AAD { identifier: %s, aad: %s }", v43, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v88, -1, -1);
      MEMORY[0x266755550](v43, -1, -1);
    }

    else
    {
    }

    v55 = *(v0 + 464);
    v56 = *(v0 + 472);
    v58 = v55[3];
    v57 = v55[4];
    __swift_project_boxed_opaque_existential_1(v55, v58);
    outlined copy of Data._Representation(*(v56 + 16), *(v56 + 24));
    outlined copy of Data._Representation(v17, v18);
    outlined copy of Data?(v21, v22);
    MLS.Group.Group.EncryptApplicationMessageWithAADInput.init(message:messageID:originalMessageID:)();
    logb = (*(v57 + 104) + **(v57 + 104));
    v59 = swift_task_alloc();
    *(v0 + 944) = v59;
    *v59 = v0;
    v59[1] = MLS.EncryptOperation.perform(on:metricCollector:keyPackageResult:);
    v60 = *(v0 + 704);
    v61 = *(v0 + 520);
    v62 = logb;
    v63 = v58;
    v64 = v57;

    return v62(v60, v61, v63, v64);
  }

  v50 = *(v36 + 176);
  *(v0 + 872) = v50;
  if ((*(v36 + 184) & 1) == 0)
  {
    v80 = *(v36 + 168);
    v82 = v50;
    *(v0 + 880) = v80;
    v77 = v38;
    v79 = v39;
    v78 = v40;
    outlined copy of MLS.AdditionalAuthenticatedData?(v17, v18, v19, v20, v21, v22);

    outlined copy of MLS.AdditionalAuthenticatedData?(v17, v18, v19, v20, v21, v22);
    outlined copy of MLS.AllMember?(v37, v77, v79, v78);
    v65 = Logger.logObject.getter();
    v66 = static os_log_type_t.default.getter();

    outlined consume of MLS.AllMember?(v37, v77, v79, v78);
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v89 = swift_slowAlloc();
      v97 = v89;
      *v67 = 136315650;
      *(v67 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(log, v3, &v97);
      logc = v66;
      *(v67 + 12) = 2080;
      outlined copy of MLS.AllMember(v37, v77);
      v68 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v77, &v97);
      outlined consume of MLS.AllMember?(v37, v77, v79, v78);
      *(v67 + 14) = v68;
      *(v67 + 22) = 2080;
      *(v0 + 976) = v80;
      v91 = dispatch thunk of CustomStringConvertible.description.getter();
      v92 = v69;
      MEMORY[0x2667545A0](46, 0xE100000000000000);
      v70 = v82;
      *(v0 + 448) = v82;
      v71 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2667545A0](v71);

      v72 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v92, &v97);

      *(v67 + 24) = v72;
      _os_log_impl(&dword_264F1F000, v65, logc, "EncryptOperation validating single recipient was in original group { identifier: %s, destination: %s, originalGroupVersion: %s }", v67, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v89, -1, -1);
      MEMORY[0x266755550](v67, -1, -1);
    }

    else
    {

      v70 = v82;
    }

    v73 = *(v0 + 464);
    v74 = v73[3];
    v75 = v73[4];
    result = __swift_project_boxed_opaque_existential_1(v73, v74);
    if (v70 < 0)
    {
      __break(1u);
      return result;
    }

    MLS.Group.Group.PriorGroupMembershipInput.init(era:epochID:)();
    v90 = (*(v75 + 160) + **(v75 + 160));
    v76 = swift_task_alloc();
    *(v0 + 888) = v76;
    *v76 = v0;
    v76[1] = MLS.EncryptOperation.perform(on:metricCollector:keyPackageResult:);
    v61 = *(v0 + 664);
    v60 = v0 + 376;
    v63 = v74;
    v64 = v75;
    v62 = v90;

    return v62(v60, v61, v63, v64);
  }

  outlined copy of MLS.AdditionalAuthenticatedData?(v17, v18, v19, v20, v21, v22);
  outlined copy of Data._Representation(v17, v18);
  outlined copy of Data?(v21, v22);
  v51 = *(v0 + 464);
  v53 = v51[3];
  v52 = v51[4];
  __swift_project_boxed_opaque_existential_1(v51, v53);
  v54 = swift_task_alloc();
  *(v0 + 904) = v54;
  *v54 = v0;
  v54[1] = MLS.EncryptOperation.perform(on:metricCollector:keyPackageResult:);

  return MLS.SwiftMLSGroupProtocol.memberSigningIdentities.getter(v53, v52);
}

uint64_t MLS.EncryptOperation.perform(on:metricCollector:keyPackageResult:)()
{
  v2 = *v1;
  *(*v1 + 896) = v0;

  if (v0)
  {
    v3 = v2[95];
    v4 = v2[83];
    v5 = v2[82];
    v6 = v2[81];
    outlined consume of MLS.AdditionalAuthenticatedData?(v2[100], v2[101], v2[102], v2[103], v2[104], v2[105]);
    (*(v5 + 8))(v4, v6);

    v7 = MLS.EncryptOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {
    v3 = v2[95];
    (*(v2[82] + 8))(v2[83], v2[81]);
    v7 = MLS.EncryptOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v7, v3, 0);
}

{
  v78 = v0;
  v1 = *(v0 + 400);
  v2 = *(v0 + 408);
  __swift_project_boxed_opaque_existential_1((v0 + 376), v1);
  result = (*(v2 + 8))(v1, v2);
  if (!result)
  {
    outlined consume of MLS.AdditionalAuthenticatedData?(*(v0 + 800), *(v0 + 808), *(v0 + 816), *(v0 + 824), *(v0 + 832), *(v0 + 840));

    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = *(v0 + 880);
      v41 = *(v0 + 872);
      v42 = *(v0 + 776);
      v43 = *(v0 + 768);
      v44 = swift_slowAlloc();
      v45 = swift_slowAlloc();
      v75 = v45;
      *v44 = 136315394;
      v46 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v42, &v75);

      *(v44 + 4) = v46;
      *(v44 + 12) = 2080;
      *(v0 + 196) = v40;
      v76 = dispatch thunk of CustomStringConvertible.description.getter();
      v77 = v47;
      MEMORY[0x2667545A0](46, 0xE100000000000000);
      *(v0 + 440) = v41;
      v48 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2667545A0](v48);

      v49 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v77, &v75);

      *(v44 + 14) = v49;
      _os_log_impl(&dword_264F1F000, v38, v39, "EncryptOperation cannot find original members { identifier: %s, originalGroupVersion: %s }", v44, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v45, -1, -1);
      MEMORY[0x266755550](v44, -1, -1);
    }

    else
    {
    }

    v50 = *(v0 + 840);
    v51 = *(v0 + 832);
    v52 = *(v0 + 824);
    v53 = *(v0 + 816);
    v54 = *(v0 + 808);
    v55 = *(v0 + 800);
    lazy protocol witness table accessor for type MLS.EncryptionError and conformance MLS.EncryptionError();
    swift_allocError();
    v57 = 27;
    goto LABEL_20;
  }

  v4 = result;
  v64 = result;
  v70 = *(result + 16);
  if (!v70)
  {
LABEL_12:
    v18 = *(v0 + 864);
    v19 = *(v0 + 856);
    v20 = *(v0 + 848);
    v21 = *(v0 + 193);
    outlined consume of MLS.AdditionalAuthenticatedData?(*(v0 + 800), *(v0 + 808), *(v0 + 816), *(v0 + 824), *(v0 + 832), *(v0 + 840));

    outlined copy of MLS.AllMember?(v20, v19, v18, v21);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    v24 = os_log_type_enabled(v22, v23);
    v25 = *(v0 + 193);
    v26 = *(v0 + 864);
    v27 = *(v0 + 856);
    v28 = *(v0 + 848);
    v29 = *(v0 + 776);
    if (v24)
    {
      v30 = *(v0 + 768);
      v72 = *(v0 + 624);
      v31 = swift_slowAlloc();
      v74 = swift_slowAlloc();
      v76 = v74;
      *v31 = 136315650;
      v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v30, v29, &v76);

      *(v31 + 4) = v32;
      *(v31 + 12) = 2080;
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v27, &v76);
      outlined consume of MLS.AllMember?(v28, v27, v26, v25);
      *(v31 + 14) = v33;
      *(v31 + 22) = 2080;
      v34 = MEMORY[0x266754630](v64, v72);
      v36 = v35;

      v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, &v76);

      *(v31 + 24) = v37;
      _os_log_impl(&dword_264F1F000, v22, v23, "EncryptOperation cannot find destination member in original list { identifier: %s, destination:  %s, originalMembers: %s }", v31, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v74, -1, -1);
      MEMORY[0x266755550](v31, -1, -1);
    }

    else
    {

      outlined consume of MLS.AllMember?(v28, v27, v26, v25);
    }

    v50 = *(v0 + 840);
    v51 = *(v0 + 832);
    v52 = *(v0 + 824);
    v53 = *(v0 + 816);
    v54 = *(v0 + 808);
    v55 = *(v0 + 800);
    lazy protocol witness table accessor for type MLS.EncryptionError and conformance MLS.EncryptionError();
    swift_allocError();
    v57 = 28;
LABEL_20:
    *v56 = v57;
    *(v56 + 8) = 0;
    *(v56 + 16) = 0;
    swift_willThrow();
    outlined consume of MLS.AdditionalAuthenticatedData?(v55, v54, v53, v52, v51, v50);
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 376));

    v58 = *(v0 + 8);

    return v58();
  }

  v5 = 0;
  v63 = *(v0 + 856);
  v6 = *(v0 + 632);
  v68 = result + ((*(v6 + 80) + 32) & ~*(v6 + 80));
  v69 = v6;
  v67 = (*(v0 + 592) + 8);
  v65 = (v6 + 8);
  v66 = (*(v0 + 568) + 8);
  while (1)
  {
    if (v5 >= *(v4 + 16))
    {
      __break(1u);
      return result;
    }

    (*(v69 + 16))(*(v0 + 640), v68 + *(v69 + 72) * v5, *(v0 + 624));
    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v7 = *(v0 + 616);
    v8 = *(v0 + 584);
    v9 = *(v0 + 576);
    v10 = *(v0 + 560);
    MLS.Group.Member.identity.getter();
    MLS.Identity.SigningIdentity.credential.getter();
    (*v67)(v7, v8);
    v11 = MLS.Identity.Credential.telURI.getter();
    (*v66)(v9, v10);
    if (v11)
    {
      break;
    }

    result = (*v65)(*(v0 + 640), *(v0 + 624));
LABEL_5:
    if (v70 == ++v5)
    {
      goto LABEL_12;
    }
  }

  v12 = *(v0 + 864);
  v13 = *(v0 + 856);
  v14 = *(v0 + 848);
  v71 = *(v0 + 624);
  v73 = *(v0 + 640);
  *(v0 + 416) = v14;
  *(v0 + 424) = v63;
  v15 = *(v0 + 193);
  v16 = swift_task_alloc();
  *(v16 + 16) = v0 + 416;
  outlined copy of MLS.AllMember?(v14, v13, v12, v15);
  v17 = specialized Sequence.contains(where:)(_sSTsSQ7ElementRpzrlE8containsySbABFSbABXEfU_SaySSG_TG5TA_0, v16, v11);

  (*v65)(v73, v71);
  result = outlined consume of MLS.AllMember?(v14, v13, v12, v15);
  if ((v17 & 1) == 0)
  {
    v4 = v64;
    goto LABEL_5;
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 376));
  v59 = *(v0 + 464);
  v61 = v59[3];
  v60 = v59[4];
  __swift_project_boxed_opaque_existential_1(v59, v61);
  v62 = swift_task_alloc();
  *(v0 + 904) = v62;
  *v62 = v0;
  v62[1] = MLS.EncryptOperation.perform(on:metricCollector:keyPackageResult:);

  return MLS.SwiftMLSGroupProtocol.memberSigningIdentities.getter(v61, v60);
}

{
  v97 = v0;
  v1 = *(v0 + 920);
  v2 = *(v0 + 864);
  v3 = *(v0 + 856);
  v4 = *(v0 + 848);
  v5 = *(v0 + 592);
  v6 = *(v0 + 584);
  v7 = *(v0 + 552);
  v8 = *(v0 + 193);
  outlined copy of MLS.AllMember?(v4, v3, v2, *(v0 + 193));
  v9 = specialized _NativeSet.filter(_:)(v1, v4, v3, v2, v8);
  outlined consume of MLS.AllMember?(v4, v3, v2, v8);
  specialized Collection.first.getter(v9, v7);

  v10 = (*(v5 + 48))(v7, 1, v6);
  v11 = *(v0 + 193);
  v12 = *(v0 + 864);
  v13 = *(v0 + 856);
  v14 = *(v0 + 848);
  if (v10 == 1)
  {
    v15 = *(v0 + 552);

    outlined destroy of NSObject?(v15, &_s8SwiftMLS0B0O8IdentityO07SigningC0VSgMd, &_s8SwiftMLS0B0O8IdentityO07SigningC0VSgMR);

    outlined copy of MLS.AllMember?(v14, v13, v12, v11);
    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    v18 = os_log_type_enabled(v16, v17);
    v19 = *(v0 + 193);
    v20 = *(v0 + 864);
    v21 = *(v0 + 856);
    v22 = *(v0 + 848);
    v23 = *(v0 + 776);
    if (v18)
    {
      v24 = *(v0 + 768);
      loga = *(v0 + 193);
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      v91 = v26;
      *v25 = 136315394;
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v23, &v91);

      *(v25 + 4) = v27;
      *(v25 + 12) = 2080;
      v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v21, &v91);
      outlined consume of MLS.AllMember?(v22, v21, v20, loga);
      *(v25 + 14) = v28;
      _os_log_impl(&dword_264F1F000, v16, v17, "EncryptOperation couldn't find identity for 1 to 1 member { identifier: %s, destination: %s }", v25, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v26, -1, -1);
      MEMORY[0x266755550](v25, -1, -1);
    }

    else
    {

      outlined consume of MLS.AllMember?(v22, v21, v20, v19);
    }

    v54 = *(v0 + 840);
    v55 = *(v0 + 832);
    v56 = *(v0 + 824);
    v57 = *(v0 + 816);
    v58 = *(v0 + 808);
    v59 = *(v0 + 800);
    lazy protocol witness table accessor for type MLS.EncryptionError and conformance MLS.EncryptionError();
    swift_allocError();
    *v60 = 10;
    *(v60 + 8) = 0;
    *(v60 + 16) = 0;
    swift_willThrow();
    outlined consume of MLS.AdditionalAuthenticatedData?(v59, v58, v57, v56, v55, v54);
    outlined consume of MLS.AdditionalAuthenticatedData?(v59, v58, v57, v56, v55, v54);

    v61 = *(v0 + 8);

    return v61();
  }

  else
  {
    v29 = *(v0 + 840);
    v30 = *(v0 + 832);
    v31 = *(v0 + 824);
    v32 = *(v0 + 816);
    v85 = *(v0 + 193);
    v33 = *(v0 + 808);
    v82 = *(v0 + 864);
    v34 = *(v0 + 800);
    v77 = v34;
    (*(*(v0 + 592) + 32))(*(v0 + 608), *(v0 + 552), *(v0 + 584));

    outlined copy of MLS.AdditionalAuthenticatedData?(v34, v33, v32, v31, v30, v29);
    outlined copy of MLS.AllMember?(v14, v13, v82, v85);
    v35 = Logger.logObject.getter();
    v36 = static os_log_type_t.default.getter();

    outlined consume of MLS.AdditionalAuthenticatedData?(v77, v33, v32, v31, v30, v29);
    v37 = os_log_type_enabled(v35, v36);
    v38 = *(v0 + 193);
    v39 = *(v0 + 864);
    v40 = *(v0 + 856);
    v41 = *(v0 + 848);
    if (v37)
    {
      v79 = *(v0 + 832);
      v80 = *(v0 + 840);
      v76 = *(v0 + 816);
      v78 = *(v0 + 824);
      v42 = *(v0 + 808);
      v43 = *(v0 + 800);
      v44 = *(v0 + 776);
      logb = v35;
      v45 = *(v0 + 768);
      v83 = v36;
      v46 = swift_slowAlloc();
      v86 = swift_slowAlloc();
      v90 = v86;
      *v46 = 136315650;
      *(v46 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v44, &v90);
      *(v46 + 12) = 2080;
      v47 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v41, v40, &v90);
      outlined consume of MLS.AllMember?(v41, v40, v39, v38);
      *(v46 + 14) = v47;
      *(v46 + 22) = 2080;
      v91 = v43;
      v92 = v42;
      v93 = v76;
      v94 = v78;
      v95 = v79;
      v96 = v80;
      outlined copy of MLS.AdditionalAuthenticatedData?(v43, v42, v76, v78, v79, v80);
      v48 = MLS.EncryptedRCS.AdditionalAuthenticatedData.description.getter();
      v50 = v49;
      v51 = v95;
      v52 = v96;
      outlined consume of Data._Representation(v91, v92);
      outlined consume of Data?(v51, v52);
      v53 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, &v90);

      *(v46 + 24) = v53;
      _os_log_impl(&dword_264F1F000, logb, v83, "EncryptOperation encrypting to 1 recipient { identifier: %s, destination: %s, aad: %s }", v46, 0x20u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v86, -1, -1);
      MEMORY[0x266755550](v46, -1, -1);
    }

    else
    {

      outlined consume of MLS.AllMember?(v41, v40, v39, v38);
    }

    v63 = *(v0 + 808);
    v64 = *(v0 + 800);
    v65 = *(v0 + 608);
    v66 = *(v0 + 600);
    v67 = *(v0 + 592);
    v68 = *(v0 + 584);
    v69 = *(v0 + 464);
    v70 = *(v0 + 472);
    log = v69[3];
    v81 = v69[4];
    __swift_project_boxed_opaque_existential_1(v69, log);
    v72 = *(v70 + 16);
    v71 = *(v70 + 24);
    (*(v67 + 16))(v66, v65, v68);
    outlined copy of Data._Representation(v72, v71);
    outlined copy of Data._Representation(v64, v63);
    MLS.Group.Group.EncryptWrappedApplicationMessageInput.init(message:recipient:messageID:)();
    v84 = (*(v81 + 96) + **(v81 + 96));
    v73 = swift_task_alloc();
    *(v0 + 928) = v73;
    *v73 = v0;
    v73[1] = MLS.EncryptOperation.perform(on:metricCollector:keyPackageResult:);
    v74 = *(v0 + 712);
    v75 = *(v0 + 544);

    return v84(v74, v75, log, v81);
  }
}

{
  v2 = *v1;
  *(*v1 + 936) = v0;

  if (v0)
  {
    v3 = v2[95];
    (*(v2[67] + 8))(v2[68], v2[66]);

    v4 = MLS.EncryptOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {
    v3 = v2[95];
    (*(v2[67] + 8))(v2[68], v2[66]);
    v4 = MLS.EncryptOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v85 = v0;
  v1 = *(v0 + 840);
  v2 = *(v0 + 832);
  v3 = *(v0 + 824);
  v4 = *(v0 + 816);
  v5 = *(v0 + 808);
  v6 = *(v0 + 800);
  v81 = (v0 + 200);
  v82 = *(v0 + 720);
  v7 = *(v0 + 680);
  v77 = *(v0 + 672);
  v79 = *(v0 + 712);
  v75 = *(v0 + 608);
  v8 = *(v0 + 592);
  v9 = *(v0 + 584);
  outlined consume of MLS.AdditionalAuthenticatedData?(v6, v5, v4, v3, v2, v1);
  outlined consume of MLS.AdditionalAuthenticatedData?(v6, v5, v4, v3, v2, v1);
  (*(v8 + 8))(v75, v9);
  (*(v7 + 32))(v82, v79, v77);
  v10 = *(v0 + 720);
  v11 = *(v0 + 688);
  v12 = *(v0 + 680);
  v13 = *(v0 + 672);
  v14._countAndFlagsBits = 0x534C4D7466697753;
  v14._object = 0xEE0074696D6D6F43;
  MetricCollector.end(label:)(v14);
  v83 = MLS.Group.GroupInfo.rawRepresentation.getter();
  v80 = v15;
  v16 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  v17 = [v16 UUIDString];

  v73 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v78 = v18;

  (*(v12 + 16))(v11, v10, v13);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = *(v0 + 776);
    v22 = *(v0 + 768);
    v23 = *(v0 + 688);
    v24 = *(v0 + 680);
    v25 = *(v0 + 672);
    v26 = swift_slowAlloc();
    v27 = swift_slowAlloc();
    v84 = v27;
    *v26 = 136315394;
    *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v21, &v84);
    *(v26 + 12) = 2080;
    _s8SwiftMLS0B0O5GroupO7MessageVAGs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type MLS.Group.Message and conformance MLS.Group.Message, MEMORY[0x277D6AAD8], MEMORY[0x277D6AAE0]);
    v28 = dispatch thunk of CustomStringConvertible.description.getter();
    v30 = v29;
    v76 = *(v24 + 8);
    v76(v23, v25);
    v31 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v28, v30, &v84);

    *(v26 + 14) = v31;
    _os_log_impl(&dword_264F1F000, v19, v20, "EncryptOperation encrypted data { identifier: %s, mlsMessage: %s }", v26, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v27, -1, -1);
    MEMORY[0x266755550](v26, -1, -1);
  }

  else
  {
    v32 = *(v0 + 688);
    v33 = *(v0 + 680);
    v34 = *(v0 + 672);

    v76 = *(v33 + 8);
    v76(v32, v34);
  }

  v35 = *(v0 + 776);
  v36 = *(v0 + 768);
  v38 = *(v0 + 488);
  v37 = *(v0 + 496);
  v40 = *(v0 + 472);
  v39 = *(v0 + 480);

  UUID.init()();
  v41 = UUID.uuidString.getter();
  v43 = v42;
  (*(v38 + 8))(v37, v39);
  v45 = *(v40 + 64);
  v44 = *(v40 + 72);
  v46 = *(v0 + 432);
  *(v0 + 200) = v36;
  *(v0 + 208) = v35;
  *(v0 + 216) = v41;
  *(v0 + 224) = v43;
  *(v0 + 232) = v45;
  *(v0 + 240) = v44;
  *(v0 + 248) = v46;
  *(v0 + 256) = v73;
  *(v0 + 264) = v78;
  *(v0 + 272) = v83;
  *(v0 + 280) = v80;
  v47 = *(v0 + 248);
  *(v0 + 48) = *(v0 + 232);
  *(v0 + 64) = v47;
  *(v0 + 80) = *(v0 + 264);
  *(v0 + 96) = *(v0 + 280);
  v48 = *(v0 + 216);
  *(v0 + 16) = *v81;
  *(v0 + 32) = v48;
  _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi9_(v0 + 16);

  outlined copy of Data?(v45, v44);

  outlined copy of Data._Representation(v83, v80);
  outlined init with copy of MLS.OutgoingEventState?(v81, v0 + 288, &_s15SecureMessaging3MLSO23OutgoingApplicationSendVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO23OutgoingApplicationSendVy_10Foundation4DataVGMR);
  v49 = Logger.logObject.getter();
  v50 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v49, v50))
  {
    v51 = *(v0 + 776);
    v52 = *(v0 + 768);
    v72 = *(v0 + 672);
    v74 = *(v0 + 720);
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v84 = v54;
    *v53 = 136315138;
    *(v53 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v51, &v84);
    _os_log_impl(&dword_264F1F000, v49, v50, "EncryptOperation returning operation result { identifier: %s }", v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v54);
    MEMORY[0x266755550](v54, -1, -1);
    MEMORY[0x266755550](v53, -1, -1);

    outlined destroy of NSObject?(v81, &_s15SecureMessaging3MLSO23OutgoingApplicationSendVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO23OutgoingApplicationSendVy_10Foundation4DataVGMR);

    outlined consume of Data._Representation(v83, v80);
    v55 = v72;
    v56 = v74;
  }

  else
  {
    v57 = *(v0 + 720);
    v58 = *(v0 + 672);

    outlined consume of Data._Representation(v83, v80);
    outlined destroy of NSObject?(v81, &_s15SecureMessaging3MLSO23OutgoingApplicationSendVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO23OutgoingApplicationSendVy_10Foundation4DataVGMR);

    v56 = v57;
    v55 = v58;
  }

  v76(v56, v55);
  v60 = *(v0 + 456);
  v59 = *(v0 + 464);
  v61 = *(v0 + 16);
  v62 = *(v0 + 32);
  v63 = *(v0 + 64);
  *(v60 + 32) = *(v0 + 48);
  *(v60 + 48) = v63;
  *v60 = v61;
  *(v60 + 16) = v62;
  v64 = *(v0 + 80);
  v65 = *(v0 + 96);
  v66 = *(v0 + 128);
  *(v60 + 96) = *(v0 + 112);
  *(v60 + 112) = v66;
  *(v60 + 64) = v64;
  *(v60 + 80) = v65;
  v67 = *(v0 + 144);
  v68 = *(v0 + 160);
  v69 = *(v0 + 176);
  *(v60 + 176) = *(v0 + 192);
  *(v60 + 144) = v68;
  *(v60 + 160) = v69;
  *(v60 + 128) = v67;
  *(v60 + 184) = 1;
  *(v60 + 224) = 0u;
  *(v60 + 240) = 0u;
  *(v60 + 192) = 0u;
  *(v60 + 208) = 0u;
  *(v60 + 256) = 2;
  *(v60 + 264) = 1;
  *(v60 + 352) = 0;
  *(v60 + 320) = 0u;
  *(v60 + 336) = 0u;
  *(v60 + 288) = 0u;
  *(v60 + 304) = 0u;
  *(v60 + 272) = 0u;
  *(v60 + 360) = 3;
  outlined init with copy of ServerBag.MLS(v59, v60 + 368);
  *(v60 + 408) = 0;
  *(v60 + 416) = *(v0 + 432);
  *(v60 + 424) = 0;
  *(v60 + 432) = 0;

  v70 = *(v0 + 8);

  return v70();
}

{
  v2 = *v1;
  *(*v1 + 952) = v0;

  if (v0)
  {
    v3 = v2[95];
    (*(v2[64] + 8))(v2[65], v2[63]);

    v4 = MLS.EncryptOperation.perform(on:metricCollector:keyPackageResult:);
  }

  else
  {
    v3 = v2[95];
    (*(v2[64] + 8))(v2[65], v2[63]);
    v4 = MLS.EncryptOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v76 = v0;
  v72 = (v0 + 200);
  v1 = *(v0 + 720);
  v2 = *(v0 + 704);
  v3 = *(v0 + 680);
  v4 = *(v0 + 672);
  outlined consume of MLS.AdditionalAuthenticatedData?(*(v0 + 800), *(v0 + 808), *(v0 + 816), *(v0 + 824), *(v0 + 832), *(v0 + 840));
  (*(v3 + 32))(v1, v2, v4);
  v5 = *(v0 + 720);
  v6 = *(v0 + 688);
  v7 = *(v0 + 680);
  v8 = *(v0 + 672);
  v9._countAndFlagsBits = 0x534C4D7466697753;
  v9._object = 0xEE0074696D6D6F43;
  MetricCollector.end(label:)(v9);
  v74 = MLS.Group.GroupInfo.rawRepresentation.getter();
  v71 = v10;
  v11 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  v12 = [v11 UUIDString];

  v68 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v73 = v13;

  (*(v7 + 16))(v6, v5, v8);

  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = *(v0 + 776);
    v17 = *(v0 + 768);
    v18 = *(v0 + 688);
    v19 = *(v0 + 680);
    v20 = *(v0 + 672);
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v75 = v22;
    *v21 = 136315394;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v16, &v75);
    *(v21 + 12) = 2080;
    _s8SwiftMLS0B0O5GroupO7MessageVAGs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type MLS.Group.Message and conformance MLS.Group.Message, MEMORY[0x277D6AAD8], MEMORY[0x277D6AAE0]);
    v23 = dispatch thunk of CustomStringConvertible.description.getter();
    v25 = v24;
    v70 = *(v19 + 8);
    v70(v18, v20);
    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v25, &v75);

    *(v21 + 14) = v26;
    _os_log_impl(&dword_264F1F000, v14, v15, "EncryptOperation encrypted data { identifier: %s, mlsMessage: %s }", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v22, -1, -1);
    MEMORY[0x266755550](v21, -1, -1);
  }

  else
  {
    v27 = *(v0 + 688);
    v28 = *(v0 + 680);
    v29 = *(v0 + 672);

    v70 = *(v28 + 8);
    v70(v27, v29);
  }

  v30 = *(v0 + 776);
  v31 = *(v0 + 768);
  v33 = *(v0 + 488);
  v32 = *(v0 + 496);
  v35 = *(v0 + 472);
  v34 = *(v0 + 480);

  UUID.init()();
  v36 = UUID.uuidString.getter();
  v38 = v37;
  (*(v33 + 8))(v32, v34);
  v39 = *(v35 + 64);
  v40 = *(v35 + 72);
  v41 = *(v0 + 432);
  *(v0 + 200) = v31;
  *(v0 + 208) = v30;
  *(v0 + 216) = v36;
  *(v0 + 224) = v38;
  *(v0 + 232) = v39;
  *(v0 + 240) = v40;
  *(v0 + 248) = v41;
  *(v0 + 256) = v68;
  *(v0 + 264) = v73;
  *(v0 + 272) = v74;
  *(v0 + 280) = v71;
  v42 = *(v0 + 248);
  *(v0 + 48) = *(v0 + 232);
  *(v0 + 64) = v42;
  *(v0 + 80) = *(v0 + 264);
  *(v0 + 96) = *(v0 + 280);
  v43 = *(v0 + 216);
  *(v0 + 16) = *v72;
  *(v0 + 32) = v43;
  _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi9_(v0 + 16);

  outlined copy of Data?(v39, v40);

  outlined copy of Data._Representation(v74, v71);
  outlined init with copy of MLS.OutgoingEventState?(v72, v0 + 288, &_s15SecureMessaging3MLSO23OutgoingApplicationSendVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO23OutgoingApplicationSendVy_10Foundation4DataVGMR);
  v44 = Logger.logObject.getter();
  v45 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v44, v45))
  {
    v46 = *(v0 + 776);
    v47 = *(v0 + 768);
    v67 = *(v0 + 672);
    v69 = *(v0 + 720);
    v48 = swift_slowAlloc();
    v49 = swift_slowAlloc();
    v75 = v49;
    *v48 = 136315138;
    *(v48 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v46, &v75);
    _os_log_impl(&dword_264F1F000, v44, v45, "EncryptOperation returning operation result { identifier: %s }", v48, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v49);
    MEMORY[0x266755550](v49, -1, -1);
    MEMORY[0x266755550](v48, -1, -1);

    outlined destroy of NSObject?(v72, &_s15SecureMessaging3MLSO23OutgoingApplicationSendVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO23OutgoingApplicationSendVy_10Foundation4DataVGMR);

    outlined consume of Data._Representation(v74, v71);
    v51 = v67;
    v50 = v69;
  }

  else
  {
    v52 = *(v0 + 720);
    v53 = *(v0 + 672);

    outlined consume of Data._Representation(v74, v71);
    outlined destroy of NSObject?(v72, &_s15SecureMessaging3MLSO23OutgoingApplicationSendVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO23OutgoingApplicationSendVy_10Foundation4DataVGMR);

    v50 = v52;
    v51 = v53;
  }

  v70(v50, v51);
  v55 = *(v0 + 456);
  v54 = *(v0 + 464);
  v56 = *(v0 + 16);
  v57 = *(v0 + 32);
  v58 = *(v0 + 64);
  *(v55 + 32) = *(v0 + 48);
  *(v55 + 48) = v58;
  *v55 = v56;
  *(v55 + 16) = v57;
  v59 = *(v0 + 80);
  v60 = *(v0 + 96);
  v61 = *(v0 + 128);
  *(v55 + 96) = *(v0 + 112);
  *(v55 + 112) = v61;
  *(v55 + 64) = v59;
  *(v55 + 80) = v60;
  v62 = *(v0 + 144);
  v63 = *(v0 + 160);
  v64 = *(v0 + 176);
  *(v55 + 176) = *(v0 + 192);
  *(v55 + 144) = v63;
  *(v55 + 160) = v64;
  *(v55 + 128) = v62;
  *(v55 + 184) = 1;
  *(v55 + 224) = 0u;
  *(v55 + 240) = 0u;
  *(v55 + 192) = 0u;
  *(v55 + 208) = 0u;
  *(v55 + 256) = 2;
  *(v55 + 264) = 1;
  *(v55 + 352) = 0;
  *(v55 + 320) = 0u;
  *(v55 + 336) = 0u;
  *(v55 + 288) = 0u;
  *(v55 + 304) = 0u;
  *(v55 + 272) = 0u;
  *(v55 + 360) = 3;
  outlined init with copy of ServerBag.MLS(v54, v55 + 368);
  *(v55 + 408) = 0;
  *(v55 + 416) = *(v0 + 432);
  *(v55 + 424) = 0;
  *(v55 + 432) = 0;

  v65 = *(v0 + 8);

  return v65();
}

{
  v2 = *v1;
  *(*v1 + 968) = v0;

  if (v0)
  {
    v3 = *(v2 + 760);

    v4 = MLS.EncryptOperation.perform(on:metricCollector:keyPackageResult:);
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 760);
    v4 = MLS.EncryptOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

{
  v72 = v0;
  v68 = (v0 + 200);
  (*(*(v0 + 680) + 32))(*(v0 + 720), *(v0 + 696), *(v0 + 672));
  v1 = *(v0 + 720);
  v2 = *(v0 + 688);
  v3 = *(v0 + 680);
  v4 = *(v0 + 672);
  v5._countAndFlagsBits = 0x534C4D7466697753;
  v5._object = 0xEE0074696D6D6F43;
  MetricCollector.end(label:)(v5);
  v70 = MLS.Group.GroupInfo.rawRepresentation.getter();
  v67 = v6;
  v7 = [objc_allocWithZone(MEMORY[0x277CCAD78]) init];
  v8 = [v7 UUIDString];

  v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v69 = v9;

  (*(v3 + 16))(v2, v1, v4);

  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = *(v0 + 776);
    v13 = *(v0 + 768);
    v14 = *(v0 + 688);
    v15 = *(v0 + 680);
    v16 = *(v0 + 672);
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v71 = v18;
    *v17 = 136315394;
    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v12, &v71);
    *(v17 + 12) = 2080;
    _s8SwiftMLS0B0O5GroupO7MessageVAGs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type MLS.Group.Message and conformance MLS.Group.Message, MEMORY[0x277D6AAD8], MEMORY[0x277D6AAE0]);
    v19 = dispatch thunk of CustomStringConvertible.description.getter();
    v21 = v20;
    v66 = *(v15 + 8);
    v66(v14, v16);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v71);

    *(v17 + 14) = v22;
    _os_log_impl(&dword_264F1F000, v10, v11, "EncryptOperation encrypted data { identifier: %s, mlsMessage: %s }", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v18, -1, -1);
    MEMORY[0x266755550](v17, -1, -1);
  }

  else
  {
    v23 = *(v0 + 688);
    v24 = *(v0 + 680);
    v25 = *(v0 + 672);

    v66 = *(v24 + 8);
    v66(v23, v25);
  }

  v26 = *(v0 + 776);
  v27 = *(v0 + 768);
  v29 = *(v0 + 488);
  v28 = *(v0 + 496);
  v31 = *(v0 + 472);
  v30 = *(v0 + 480);

  UUID.init()();
  v32 = UUID.uuidString.getter();
  v34 = v33;
  (*(v29 + 8))(v28, v30);
  v35 = *(v31 + 64);
  v36 = *(v31 + 72);
  v37 = *(v0 + 432);
  *(v0 + 200) = v27;
  *(v0 + 208) = v26;
  *(v0 + 216) = v32;
  *(v0 + 224) = v34;
  *(v0 + 232) = v35;
  *(v0 + 240) = v36;
  *(v0 + 248) = v37;
  *(v0 + 256) = v64;
  *(v0 + 264) = v69;
  *(v0 + 272) = v70;
  *(v0 + 280) = v67;
  v38 = *(v0 + 248);
  *(v0 + 48) = *(v0 + 232);
  *(v0 + 64) = v38;
  *(v0 + 80) = *(v0 + 264);
  *(v0 + 96) = *(v0 + 280);
  v39 = *(v0 + 216);
  *(v0 + 16) = *v68;
  *(v0 + 32) = v39;
  _s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGWOi9_(v0 + 16);

  outlined copy of Data?(v35, v36);

  outlined copy of Data._Representation(v70, v67);
  outlined init with copy of MLS.OutgoingEventState?(v68, v0 + 288, &_s15SecureMessaging3MLSO23OutgoingApplicationSendVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO23OutgoingApplicationSendVy_10Foundation4DataVGMR);
  v40 = Logger.logObject.getter();
  v41 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v40, v41))
  {
    v42 = *(v0 + 776);
    v43 = *(v0 + 768);
    v63 = *(v0 + 672);
    v65 = *(v0 + 720);
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v71 = v45;
    *v44 = 136315138;
    *(v44 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v43, v42, &v71);
    _os_log_impl(&dword_264F1F000, v40, v41, "EncryptOperation returning operation result { identifier: %s }", v44, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    MEMORY[0x266755550](v45, -1, -1);
    MEMORY[0x266755550](v44, -1, -1);

    outlined destroy of NSObject?(v68, &_s15SecureMessaging3MLSO23OutgoingApplicationSendVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO23OutgoingApplicationSendVy_10Foundation4DataVGMR);

    outlined consume of Data._Representation(v70, v67);
    v47 = v63;
    v46 = v65;
  }

  else
  {
    v48 = *(v0 + 720);
    v49 = *(v0 + 672);

    outlined consume of Data._Representation(v70, v67);
    outlined destroy of NSObject?(v68, &_s15SecureMessaging3MLSO23OutgoingApplicationSendVy_10Foundation4DataVGMd, &_s15SecureMessaging3MLSO23OutgoingApplicationSendVy_10Foundation4DataVGMR);

    v46 = v48;
    v47 = v49;
  }

  v66(v46, v47);
  v51 = *(v0 + 456);
  v50 = *(v0 + 464);
  v52 = *(v0 + 16);
  v53 = *(v0 + 32);
  v54 = *(v0 + 64);
  *(v51 + 32) = *(v0 + 48);
  *(v51 + 48) = v54;
  *v51 = v52;
  *(v51 + 16) = v53;
  v55 = *(v0 + 80);
  v56 = *(v0 + 96);
  v57 = *(v0 + 128);
  *(v51 + 96) = *(v0 + 112);
  *(v51 + 112) = v57;
  *(v51 + 64) = v55;
  *(v51 + 80) = v56;
  v58 = *(v0 + 144);
  v59 = *(v0 + 160);
  v60 = *(v0 + 176);
  *(v51 + 176) = *(v0 + 192);
  *(v51 + 144) = v59;
  *(v51 + 160) = v60;
  *(v51 + 128) = v58;
  *(v51 + 184) = 1;
  *(v51 + 224) = 0u;
  *(v51 + 240) = 0u;
  *(v51 + 192) = 0u;
  *(v51 + 208) = 0u;
  *(v51 + 256) = 2;
  *(v51 + 264) = 1;
  *(v51 + 352) = 0;
  *(v51 + 320) = 0u;
  *(v51 + 336) = 0u;
  *(v51 + 288) = 0u;
  *(v51 + 304) = 0u;
  *(v51 + 272) = 0u;
  *(v51 + 360) = 3;
  outlined init with copy of ServerBag.MLS(v50, v51 + 368);
  *(v51 + 408) = 0;
  *(v51 + 416) = *(v0 + 432);
  *(v51 + 424) = 0;
  *(v51 + 432) = 0;

  v61 = *(v0 + 8);

  return v61();
}

{
  outlined consume of MLS.AdditionalAuthenticatedData?(v0[100], v0[101], v0[102], v0[103], v0[104], v0[105]);

  v1 = v0[1];

  return v1();
}

{
  outlined consume of MLS.AdditionalAuthenticatedData?(v0[100], v0[101], v0[102], v0[103], v0[104], v0[105]);

  v1 = v0[1];

  return v1();
}

{
  v1 = v0[105];
  v2 = v0[104];
  v3 = v0[103];
  v4 = v0[102];
  v5 = v0[101];
  v6 = v0[100];
  v7 = v0[76];
  v8 = v0[74];
  v9 = v0[73];
  outlined consume of MLS.AdditionalAuthenticatedData?(v6, v5, v4, v3, v2, v1);
  outlined consume of MLS.AdditionalAuthenticatedData?(v6, v5, v4, v3, v2, v1);
  (*(v8 + 8))(v7, v9);

  v10 = v0[1];

  return v10();
}

{
  outlined consume of MLS.AdditionalAuthenticatedData?(v0[100], v0[101], v0[102], v0[103], v0[104], v0[105]);

  v1 = v0[1];

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t MLS.EncryptOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 912) = v1;

  if (v1)
  {
    v5 = v4[95];
    outlined consume of MLS.AdditionalAuthenticatedData?(v4[100], v4[101], v4[102], v4[103], v4[104], v4[105]);

    v6 = MLS.EncryptOperation.perform(on:metricCollector:keyPackageResult:);
    v7 = v5;
  }

  else
  {
    v7 = v4[95];
    v4[115] = a1;
    v6 = MLS.EncryptOperation.perform(on:metricCollector:keyPackageResult:);
  }

  return MEMORY[0x2822009F8](v6, v7, 0);
}

uint64_t MLS.EncryptOperation.deinit()
{
  outlined consume of Data._Representation(*(v0 + 16), *(v0 + 24));

  v1 = *(v0 + 160);
  v8[6] = *(v0 + 144);
  v8[7] = v1;
  v8[8] = *(v0 + 176);
  v9 = *(v0 + 192);
  v2 = *(v0 + 96);
  v8[2] = *(v0 + 80);
  v8[3] = v2;
  v3 = *(v0 + 128);
  v8[4] = *(v0 + 112);
  v8[5] = v3;
  v4 = *(v0 + 64);
  v8[0] = *(v0 + 48);
  v8[1] = v4;
  outlined destroy of NSObject?(v8, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMR);
  v5 = OBJC_IVAR____TtCO15SecureMessaging3MLS16EncryptOperation_logger;
  v6 = type metadata accessor for Logger();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return v0;
}

uint64_t MLS.EncryptOperation.__deallocating_deinit()
{
  outlined consume of Data._Representation(*(v0 + 16), *(v0 + 24));

  v1 = *(v0 + 160);
  v8[6] = *(v0 + 144);
  v8[7] = v1;
  v8[8] = *(v0 + 176);
  v9 = *(v0 + 192);
  v2 = *(v0 + 96);
  v8[2] = *(v0 + 80);
  v8[3] = v2;
  v3 = *(v0 + 128);
  v8[4] = *(v0 + 112);
  v8[5] = v3;
  v4 = *(v0 + 64);
  v8[0] = *(v0 + 48);
  v8[1] = v4;
  outlined destroy of NSObject?(v8, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMR);
  v5 = OBJC_IVAR____TtCO15SecureMessaging3MLS16EncryptOperation_logger;
  v6 = type metadata accessor for Logger();
  (*(*(v6 - 8) + 8))(v0 + v5, v6);
  return swift_deallocClassInstance();
}

uint64_t protocol witness for MLS.RequiresGroupGroupOperation.membersRequiringKeyPackages(swiftMLSGroup:) in conformance MLS.EncryptOperation(uint64_t a1)
{
  v6 = (*(**v1 + 168) + **(**v1 + 168));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = specialized KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v6(a1);
}

uint64_t protocol witness for MLS.RequiresGroupGroupOperation.perform(on:metricCollector:keyPackageResult:) in conformance MLS.EncryptOperation(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(**v4 + 176) + **(**v4 + 176));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

uint64_t protocol witness for MLS.GroupOperation.context.getter in conformance MLS.EncryptOperation@<X0>(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(*v1 + 128);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 96);
  v18[4] = *(*v1 + 112);
  v18[5] = v3;
  v6 = *(v2 + 144);
  v7 = *(v2 + 160);
  v19 = *(v2 + 192);
  v9 = *(v2 + 160);
  v8 = *(v2 + 176);
  v18[7] = v7;
  v18[8] = v8;
  v18[6] = v6;
  v18[2] = v4;
  v18[3] = v5;
  v10 = *(v2 + 64);
  v18[0] = *(v2 + 48);
  v18[1] = v10;
  v11 = *(v2 + 128);
  *(a1 + 96) = *(v2 + 144);
  *(a1 + 112) = v9;
  *(a1 + 128) = *(v2 + 176);
  v12 = *(v2 + 96);
  v13 = *(v2 + 112);
  v14 = *(v2 + 48);
  v15 = *(v2 + 64);
  *(a1 + 32) = *(v2 + 80);
  *(a1 + 48) = v12;
  *(a1 + 144) = *(v2 + 192);
  *(a1 + 64) = v13;
  *(a1 + 80) = v11;
  *a1 = v14;
  *(a1 + 16) = v15;
  return outlined init with copy of MLS.OutgoingEventState?(v18, v17, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17EncryptionContextVy_AC9AllMemberO10Foundation4DataVGMR);
}

uint64_t protocol witness for MLS.GroupOperation.logger.getter in conformance MLS.EncryptOperation@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtCO15SecureMessaging3MLS16EncryptOperation_logger;
  v5 = type metadata accessor for Logger();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

unint64_t *_ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVy8SwiftMLS0J0O8IdentityO07SigningK0VG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab8VKXEfU_8i8MLS0G0O8k3O07L7H0V_TG5AOxSbs5Error_pRi_zRi0_zlyANIsgndzo_Tf1nc_n0106_s15SecureMessaging3MLSO16EncryptOperationC7perform2on15metricCollector16keyPackageResultAC05GroupeL0VAC21i74MLSGroupProtocol_p_AA06MetricI0VAC03KeyK7FetcherC05FetchL0VtYaKFSb0nC0ABO8kvL9U0VXEfU0_15SecureMessagingAIO9AllMemberOTf1nnc_n(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v11 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    outlined copy of MLS.AllMember(a4, a5);
    v12 = specialized closure #1 in _NativeSet.filter(_:)(v11, a2, a3, a4, a5);

    outlined consume of MLS.AllMember(a4, a5);
    outlined consume of MLS.AllMember(a4, a5);
    return v12;
  }

  return result;
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

uint64_t specialized closure #1 in _NativeSet.filter(_:)(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v30 = a4;
  v31 = a5;
  v27 = a2;
  v28 = a1;
  v38 = type metadata accessor for MLS.Identity.Credential();
  v6 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v37 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for MLS.Identity.SigningIdentity();
  result = MEMORY[0x28223BE20](v8);
  v39 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = 0;
  v12 = 0;
  v13 = 1 << *(a3 + 32);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & *(a3 + 56);
  v16 = (v13 + 63) >> 6;
  v33 = (v6 + 8);
  v34 = v10 + 16;
  v35 = result;
  v36 = v10;
  v32 = (v10 + 8);
  while (v15)
  {
    v42 = (v15 - 1) & v15;
    v17 = __clz(__rbit64(v15)) | (v12 << 6);
    v18 = v39;
LABEL_12:
    (*(v36 + 16))(v18, *(a3 + 48) + *(v36 + 72) * v17, v8);
    if (one-time initialization token for shared != -1)
    {
      swift_once();
    }

    if ((swift_task_isCurrentExecutor() & 1) == 0)
    {
      swift_task_reportUnexpectedExecutor();
    }

    v21 = v37;
    MLS.Identity.SigningIdentity.credential.getter();
    v22 = MLS.Identity.Credential.telURI.getter();
    v23 = (*v33)(v21, v38);
    if (v22)
    {
      v41[0] = v30;
      v41[1] = v31;
      MEMORY[0x28223BE20](v23);
      *(&v27 - 2) = v41;
      v24 = v40;
      v25 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, (&v27 - 4), v22);
      v40 = v24;

      v8 = v35;
      result = (*v32)(v18, v35);
      v15 = v42;
      if (v25)
      {
        *(v28 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
        if (__OFADD__(v29++, 1))
        {
          goto LABEL_23;
        }
      }
    }

    else
    {
      v8 = v35;
      result = (*v32)(v18, v35);
      v15 = v42;
    }
  }

  v19 = v12;
  v18 = v39;
  while (1)
  {
    v12 = v19 + 1;
    if (__OFADD__(v19, 1))
    {
      break;
    }

    if (v12 >= v16)
    {

      return specialized _NativeSet.extractSubset(using:count:)(v28, v27, v29, a3);
    }

    v20 = *(a3 + 56 + 8 * v12);
    ++v19;
    if (v20)
    {
      v42 = (v20 - 1) & v20;
      v17 = __clz(__rbit64(v20)) | (v12 << 6);
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.filter(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char *a5)
{
  v51[2] = *MEMORY[0x277D85DE8];
  v46 = type metadata accessor for MLS.Identity.Credential();
  v10 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v45 = v34 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for MLS.Identity.SigningIdentity();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v47 = v34 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = a1;
  LOBYTE(v14) = *(a1 + 32);
  LODWORD(a1) = v14 & 0x3F;
  v36 = ((1 << v14) + 63) >> 6;
  v15 = 8 * v36;
  v39 = a2;
  v40 = a3;
  v16 = outlined copy of MLS.AllMember(a2, a3);
  if (a1 > 0xD)
  {
    goto LABEL_25;
  }

  while (1)
  {
    v35 = a5;
    v34[0] = v34;
    v34[1] = a4;
    MEMORY[0x28223BE20](v16);
    v37 = v34 - ((v15 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v37, v15);
    v38 = 0;
    v17 = 0;
    a4 = v48 + 56;
    v18 = 1 << *(v48 + 32);
    v19 = -1;
    if (v18 < 64)
    {
      v19 = ~(-1 << v18);
    }

    v20 = v19 & *(v48 + 56);
    v21 = (v18 + 63) >> 6;
    v42 = (v10 + 8);
    v43 = v13 + 16;
    v41 = (v13 + 8);
    v44 = v13;
    while (v20)
    {
      v50 = (v20 - 1) & v20;
      v22 = __clz(__rbit64(v20)) | (v17 << 6);
      a5 = v47;
LABEL_13:
      (*(v13 + 16))(a5, *(v48 + 48) + *(v13 + 72) * v22, v12);
      if (one-time initialization token for shared != -1)
      {
        swift_once();
      }

      if ((swift_task_isCurrentExecutor() & 1) == 0)
      {
        swift_task_reportUnexpectedExecutor();
      }

      v10 = v45;
      MLS.Identity.SigningIdentity.credential.getter();
      v15 = MLS.Identity.Credential.telURI.getter();
      v25 = (*v42)(v10, v46);
      if (v15)
      {
        v10 = v22;
        v51[0] = v39;
        v51[1] = v40;
        MEMORY[0x28223BE20](v25);
        v34[-2] = v51;
        v26 = v49;
        v27 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, &v34[-4], v15);
        v49 = v26;

        (*v41)(a5, v12);
        v13 = v44;
        v20 = v50;
        if (v27)
        {
          *&v37[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
          if (__OFADD__(v38++, 1))
          {
            __break(1u);
          }
        }
      }

      else
      {
        (*v41)(a5, v12);
        v13 = v44;
        v20 = v50;
      }
    }

    v23 = v17;
    a5 = v47;
    while (1)
    {
      v17 = v23 + 1;
      if (__OFADD__(v23, 1))
      {
        break;
      }

      if (v17 >= v21)
      {
        L0VtYaKFSb0nC0ABO8kvL9U0VXEfU0_15SecureMessagingAIO9AllMemberOTf1nnc_n = specialized _NativeSet.extractSubset(using:count:)(v37, v36, v38, v48);
        outlined consume of MLS.AllMember(v39, v40);
        return L0VtYaKFSb0nC0ABO8kvL9U0VXEfU0_15SecureMessagingAIO9AllMemberOTf1nnc_n;
      }

      v24 = *(a4 + 8 * v17);
      ++v23;
      if (v24)
      {
        v50 = (v24 - 1) & v24;
        v22 = __clz(__rbit64(v24)) | (v17 << 6);
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_25:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v31 = swift_slowAlloc();
  v33 = v39;
  v32 = v40;
  outlined copy of MLS.AllMember(v39, v40);
  L0VtYaKFSb0nC0ABO8kvL9U0VXEfU0_15SecureMessagingAIO9AllMemberOTf1nnc_n = _ss13_UnsafeBitsetV013withTemporaryB08capacity4bodyxSi_xABKXEtKlFZxABKXEfU_s10_NativeSetVy8SwiftMLS0J0O8IdentityO07SigningK0VG_Tg506_ss10_gh28V6filteryAByxGSbxKXEKFADs13_ab8VKXEfU_8i8MLS0G0O8k3O07L7H0V_TG5AOxSbs5Error_pRi_zRi0_zlyANIsgndzo_Tf1nc_n0106_s15SecureMessaging3MLSO16EncryptOperationC7perform2on15metricCollector16keyPackageResultAC05GroupeL0VAC21i74MLSGroupProtocol_p_AA06MetricI0VAC03KeyK7FetcherC05FetchL0VtYaKFSb0nC0ABO8kvL9U0VXEfU0_15SecureMessagingAIO9AllMemberOTf1nnc_n(v31, v36, v48, v33, v32, a4, a5);

  MEMORY[0x266755550](v31, -1, -1);
  outlined consume of MLS.AllMember(v33, v32);
  return L0VtYaKFSb0nC0ABO8kvL9U0VXEfU0_15SecureMessagingAIO9AllMemberOTf1nnc_n;
}

uint64_t instantiation function for generic protocol witness table for MLS.EncryptOperation(uint64_t a1)
{
  result = _s8SwiftMLS0B0O5GroupO7MessageVAGs23CustomStringConvertibleAAWlTm_1(&lazy protocol witness table cache variable for type MLS.EncryptOperation and conformance MLS.EncryptOperation, type metadata accessor for MLS.EncryptOperation, &protocol conformance descriptor for MLS.EncryptOperation);
  *(a1 + 8) = result;
  return result;
}

uint64_t _s8SwiftMLS0B0O5GroupO7MessageVAGs23CustomStringConvertibleAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for MLS.EncryptOperation(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLS.EncryptOperation;
  if (!type metadata singleton initialization cache for MLS.EncryptOperation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for MLS.EncryptOperation(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t dispatch thunk of MLS.EncryptOperation.membersRequiringKeyPackages(swiftMLSGroup:)(uint64_t a1)
{
  v6 = (*(*v1 + 168) + **(*v1 + 168));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v6(a1);
}

uint64_t dispatch thunk of MLS.EncryptOperation.perform(on:metricCollector:keyPackageResult:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 176) + **(*v4 + 176));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v12(a1, a2, a3, a4);
}

uint64_t KDSRegistration.SigningInput.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  outlined copy of Data._Representation(v1, v2);
  countAndFlagsBits = Data.base64EncodedString(options:)(0)._countAndFlagsBits;
  outlined consume of Data._Representation(v1, v2);
  return countAndFlagsBits;
}

void KDSRegistration.Client.__allocating_init(configuration:supportedState:)(uint64_t *a1, char *a2)
{
  swift_allocObject();
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = specialized KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  KDSRegistration.Client.init(configuration:supportedState:)(a1, a2);
}

void KDSRegistration.Client.init(configuration:supportedState:)(uint64_t *a1, char *a2)
{
  v4 = v3;
  v3[2] = v2;
  v5 = *v2;
  v6 = a1[2];
  v3[3] = *a1;
  v3[4] = v6;
  v7 = a1[6];
  v4[5] = a1[4];
  v4[6] = v7;
  v8 = *a2;
  swift_defaultActor_initialize();
  v9 = *(v5 + 80);
  v4[7] = v9;
  type metadata accessor for KDSRegistration.XPCCoordinator(0, v9, v10, v11);
  *(v4 + 112) = v8;
  swift_unknownObjectRetain();

  v12 = swift_task_alloc();
  v4[8] = v12;
  *v12 = v4;
  v12[1] = KDSRegistration.Client.init(configuration:supportedState:);

  JUMPOUT(0x264F3C27CLL);
}

uint64_t KDSRegistration.Client.init(configuration:supportedState:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    swift_unknownObjectRelease();
    v5 = KDSRegistration.Client.init(configuration:supportedState:);
  }

  else
  {
    swift_unknownObjectRelease_n();

    *(v4 + 80) = a1;
    v5 = KDSRegistration.Client.init(configuration:supportedState:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t KDSRegistration.Client.init(configuration:supportedState:)()
{
  v1 = *(v0 + 16);
  *(v1 + 112) = *(v0 + 80);
  return MEMORY[0x2822009F8](KDSRegistration.Client.init(configuration:supportedState:), v1, 0);
}

{
  v1 = *(v0[2] + 112);
  v0[11] = v1;
  v2 = *(*v1 + 256);

  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  v0[12] = v3;
  *v3 = v0;
  v3[1] = KDSRegistration.Client.init(configuration:supportedState:);

  return v5();
}

{
  v2 = *v1;
  v3 = *(*v1 + 56);
  v4 = *v1;
  *(*v1 + 104) = v0;

  type metadata accessor for KDSRegistration.Client(255, v3, v5, v6);
  swift_getWitnessTable();
  if (v0)
  {
    swift_getObjectType();
    v8 = dispatch thunk of Actor.unownedExecutor.getter();

    return MEMORY[0x2822009F8](KDSRegistration.Client.init(configuration:supportedState:), v8, v7);
  }

  else
  {
    v9 = *(v4 + 8);
    v10 = *(v2 + 16);

    return v9(v10);
  }
}

{
  v1 = *(v0 + 56);
  swift_unknownObjectRelease();

  type metadata accessor for KDSRegistration.Client(0, v1, v2, v3);
  swift_defaultActor_destroy();
  swift_deallocPartialClassInstance();
  v4 = *(v0 + 8);

  return v4();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t KDSRegistration.Client.add(listener:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](KDSRegistration.Client.add(listener:), v2, 0);
}

uint64_t KDSRegistration.Client.add(listener:)()
{
  v1 = *(v0 + 40);
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = one-time initialization token for shared;

  v4 = swift_unknownObjectRetain();
  if (v3 != -1)
  {
    v4 = swift_once();
  }

  v7 = *(v0 + 32);
  v6 = *(v0 + 40);
  v8 = static RegistrationActor.shared;
  v9 = lazy protocol witness table accessor for type RegistrationActor and conformance RegistrationActor(v4, v5);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v9;
  *(v10 + 32) = v7;
  *(v10 + 40) = *(v0 + 16);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in KDSRegistration.Client.add(listener:), v10);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t closure #1 in KDSRegistration.Client.add(listener:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static RegistrationActor.shared;

  return MEMORY[0x2822009F8](closure #1 in KDSRegistration.Client.add(listener:), v7, 0);
}

uint64_t closure #1 in KDSRegistration.Client.add(listener:)()
{
  (*(**(v0[2] + 112) + 264))(v0[3], v0[4]);
  v1 = v0[1];

  return v1();
}

uint64_t KDSRegistration.Client.remove(listener:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](KDSRegistration.Client.remove(listener:), v2, 0);
}

uint64_t KDSRegistration.Client.remove(listener:)()
{
  v1 = *(v0 + 40);
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = one-time initialization token for shared;

  v4 = swift_unknownObjectRetain();
  if (v3 != -1)
  {
    v4 = swift_once();
  }

  v7 = *(v0 + 32);
  v6 = *(v0 + 40);
  v8 = static RegistrationActor.shared;
  v9 = lazy protocol witness table accessor for type RegistrationActor and conformance RegistrationActor(v4, v5);
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  *(v10 + 24) = v9;
  *(v10 + 32) = v7;
  *(v10 + 40) = *(v0 + 16);

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v6, &async function pointer to partial apply for closure #1 in KDSRegistration.Client.remove(listener:), v10);

  v11 = *(v0 + 8);

  return v11();
}

uint64_t closure #1 in KDSRegistration.Client.remove(listener:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[3] = a5;
  v6[4] = a6;
  v6[2] = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static RegistrationActor.shared;

  return MEMORY[0x2822009F8](closure #1 in KDSRegistration.Client.remove(listener:), v7, 0);
}

uint64_t closure #1 in KDSRegistration.Client.remove(listener:)()
{
  (*(**(v0[2] + 112) + 272))(v0[3], v0[4]);
  v1 = v0[1];

  return v1();
}

uint64_t KDSRegistration.Client.update(simLabelID:)()
{
  return MEMORY[0x2822009F8](KDSRegistration.Client.update(simLabelID:), v0, 0);
}

{
  lazy protocol witness table accessor for type KDSRegistration.UpdateSIMLabelIDError and conformance KDSRegistration.UpdateSIMLabelIDError();
  swift_allocError();
  *v1 = 4;
  *(v1 + 8) = 0;
  *(v1 + 16) = 0;
  swift_willThrow();
  v2 = *(v0 + 8);

  return v2();
}

uint64_t KDSRegistration.Client.update(supportedState:)(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  *(v3 + 32) = swift_task_alloc();
  *(v3 + 64) = *a2;

  return MEMORY[0x2822009F8](KDSRegistration.Client.update(supportedState:), v2, 0);
}

uint64_t KDSRegistration.Client.update(supportedState:)()
{
  v1 = *(v0 + 32);
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = one-time initialization token for shared;

  if (v3 != -1)
  {
    v4 = swift_once();
  }

  v6 = *(v0 + 64);
  v8 = *(v0 + 24);
  v7 = *(v0 + 32);
  v9 = static RegistrationActor.shared;
  v10 = lazy protocol witness table accessor for type RegistrationActor and conformance RegistrationActor(v4, v5);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v10;
  *(v11 + 32) = v8;
  *(v11 + 40) = v6;

  updated = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC15SecureMessaging15KDSRegistrationO36SupportedStateUpdateProcessedContextV_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in KDSRegistration.Client.update(supportedState:), v11);
  *(v0 + 40) = updated;
  v13 = swift_task_alloc();
  *(v0 + 48) = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v13 = v0;
  v13[1] = KDSRegistration.Client.update(supportedState:);
  v15 = *(v0 + 16);
  v16 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v15, updated, &type metadata for KDSRegistration.SupportedStateUpdateProcessedContext, v14, v16);
}

{
  v2 = *v1;
  *(*v1 + 56) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = KDSRegistration.Client.update(supportedState:);
  }

  else
  {
    v4 = KDSRegistration.Client.update(supportedState:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t closure #1 in KDSRegistration.Client.update(supportedState:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 57) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static RegistrationActor.shared;
  *(v5 + 32) = static RegistrationActor.shared;

  return MEMORY[0x2822009F8](closure #1 in KDSRegistration.Client.update(supportedState:), v6, 0);
}

uint64_t closure #1 in KDSRegistration.Client.update(supportedState:)()
{
  v1 = *(*(v0 + 24) + 112);
  *(v0 + 56) = *(v0 + 57);
  v5 = (*(*v1 + 280) + **(*v1 + 280));
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = closure #1 in KDSRegistration.Client.update(supportedState:);
  v3 = *(v0 + 16);

  return v5(v3, v0 + 56);
}

{
  v2 = *v1;
  v2[6] = v0;

  if (v0)
  {
    v3 = v2[4];

    return MEMORY[0x2822009F8](closure #1 in KDSRegistration.Client.update(supportedState:), v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

uint64_t KDSRegistration.Client.isRegistered(context:)(uint64_t a1, _BYTE *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  *(v3 + 32) = swift_task_alloc();
  *(v3 + 64) = *a2;

  return MEMORY[0x2822009F8](KDSRegistration.Client.isRegistered(context:), v2, 0);
}

uint64_t KDSRegistration.Client.isRegistered(context:)()
{
  v1 = *(v0 + 32);
  v2 = type metadata accessor for TaskPriority();
  (*(*(v2 - 8) + 56))(v1, 1, 1, v2);
  v3 = one-time initialization token for shared;

  if (v3 != -1)
  {
    v4 = swift_once();
  }

  v6 = *(v0 + 64);
  v8 = *(v0 + 24);
  v7 = *(v0 + 32);
  v9 = static RegistrationActor.shared;
  v10 = lazy protocol witness table accessor for type RegistrationActor and conformance RegistrationActor(v4, v5);
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  *(v11 + 24) = v10;
  *(v11 + 32) = v8;
  *(v11 + 40) = v6;

  IsRegisteredResultV_Tt2g5 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC15SecureMessaging15KDSRegistrationO18IsRegisteredResultV_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in KDSRegistration.Client.isRegistered(context:), v11);
  *(v0 + 40) = IsRegisteredResultV_Tt2g5;
  v13 = swift_task_alloc();
  *(v0 + 48) = v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v13 = v0;
  v13[1] = MLS.Client.keyPackage.getter;
  v15 = *(v0 + 16);
  v16 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v15, IsRegisteredResultV_Tt2g5, &type metadata for KDSRegistration.IsRegisteredResult, v14, v16);
}

uint64_t closure #1 in KDSRegistration.Client.isRegistered(context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v5 + 57) = a5;
  *(v5 + 16) = a1;
  *(v5 + 24) = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static RegistrationActor.shared;
  *(v5 + 32) = static RegistrationActor.shared;

  return MEMORY[0x2822009F8](closure #1 in KDSRegistration.Client.isRegistered(context:), v6, 0);
}

uint64_t closure #1 in KDSRegistration.Client.isRegistered(context:)()
{
  v1 = *(*(v0 + 24) + 112);
  *(v0 + 56) = *(v0 + 57) & 1;
  v5 = (*(*v1 + 288) + **(*v1 + 288));
  v2 = swift_task_alloc();
  *(v0 + 40) = v2;
  *v2 = v0;
  v2[1] = closure #1 in KDSRegistration.Client.isRegistered(context:);
  v3 = *(v0 + 16);

  return v5(v3, v0 + 56);
}

{
  v2 = *v1;
  v2[6] = v0;

  if (v0)
  {
    v3 = v2[4];

    return MEMORY[0x2822009F8](_s15SecureMessaging3MLSO17KeyPackageFetcherC05fetchD8Packages9operation11loadedGroupAE11FetchResultVx_AC0K6LoaderC06LoadedK12AndOperationOtYa9ErrorTypeQzYKAC0kQ0RzlFAC0de9RetrievalM0Vy_AC9AllMemberOGyYaYbKXEfu1_TY2_, v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

uint64_t KDSRegistration.Client.signInputWithParticipantKey(input:)(uint64_t a1, _OWORD *a2)
{
  *(v3 + 16) = a1;
  *(v3 + 24) = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  *(v3 + 32) = swift_task_alloc();
  *(v3 + 40) = *a2;

  return MEMORY[0x2822009F8](KDSRegistration.Client.signInputWithParticipantKey(input:), v2, 0);
}

uint64_t KDSRegistration.Client.signInputWithParticipantKey(input:)()
{
  v1 = v0[5];
  v2 = v0[6];
  v3 = v0[4];
  v4 = type metadata accessor for TaskPriority();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);

  outlined copy of Data._Representation(v1, v2);
  if (one-time initialization token for shared != -1)
  {
    v5 = swift_once();
  }

  v8 = v0[5];
  v7 = v0[6];
  v10 = v0[3];
  v9 = v0[4];
  v11 = static RegistrationActor.shared;
  v12 = lazy protocol witness table accessor for type RegistrationActor and conformance RegistrationActor(v5, v6);
  v13 = swift_allocObject();
  v13[2] = v11;
  v13[3] = v12;
  v13[4] = v10;
  v13[5] = v8;
  v13[6] = v7;

  v14 = _sScTss5Error_pRs_rlE4name8priority9operationScTyxsAA_pGSSSg_ScPSgxyYaKYAcntcfC15SecureMessaging15KDSRegistrationO13SigningOutputV_Tt2g5(0, 0, v9, &async function pointer to partial apply for closure #1 in KDSRegistration.Client.signInputWithParticipantKey(input:), v13);
  v0[7] = v14;
  v15 = swift_task_alloc();
  v0[8] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  *v15 = v0;
  v15[1] = KDSRegistration.Client.signInputWithParticipantKey(input:);
  v17 = v0[2];
  v18 = MEMORY[0x277D84950];

  return MEMORY[0x282200430](v17, v14, &type metadata for KDSRegistration.SigningOutput, v16, v18);
}

{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = KDSRegistration.Client.signInputWithParticipantKey(input:);
  }

  else
  {
    v4 = KDSRegistration.Client.signInputWithParticipantKey(input:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in KDSRegistration.Client.signInputWithParticipantKey(input:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[6] = a5;
  v6[7] = a6;
  v6[4] = a1;
  v6[5] = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v7 = static RegistrationActor.shared;
  v6[8] = static RegistrationActor.shared;

  return MEMORY[0x2822009F8](closure #1 in KDSRegistration.Client.signInputWithParticipantKey(input:), v7, 0);
}

uint64_t closure #1 in KDSRegistration.Client.signInputWithParticipantKey(input:)()
{
  v1 = *(*(v0 + 40) + 112);
  *(v0 + 16) = *(v0 + 48);
  v5 = (*(*v1 + 296) + **(*v1 + 296));
  v2 = swift_task_alloc();
  *(v0 + 72) = v2;
  *v2 = v0;
  v2[1] = closure #1 in KDSRegistration.Client.signInputWithParticipantKey(input:);
  v3 = *(v0 + 32);

  return v5(v3, v0 + 16);
}

{
  v2 = *v1;
  v2[10] = v0;

  if (v0)
  {
    v3 = v2[8];

    return MEMORY[0x2822009F8](closure #1 in XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:), v3, 0);
  }

  else
  {
    v4 = v2[1];

    return v4();
  }
}

uint64_t KDSRegistration.Client.deinit()
{

  swift_defaultActor_destroy();
  return v0;
}

uint64_t KDSRegistration.Client.__deallocating_deinit()
{

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance KDSRegistration.SigningInput.InputType.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65636E6F6ELL && a2 == 0xE500000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.SigningInput.InputType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.SigningInput.InputType.CodingKeys and conformance KDSRegistration.SigningInput.InputType.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.SigningInput.InputType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.SigningInput.InputType.CodingKeys and conformance KDSRegistration.SigningInput.InputType.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.SigningInput.InputType.NonceCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.SigningInput.InputType.NonceCodingKeys and conformance KDSRegistration.SigningInput.InputType.NonceCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.SigningInput.InputType.NonceCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.SigningInput.InputType.NonceCodingKeys and conformance KDSRegistration.SigningInput.InputType.NonceCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t KDSRegistration.SigningInput.InputType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO12SigningInputV0H4TypeO15NonceCodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO12SigningInputV0H4TypeO15NonceCodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMR);
  v4 = *(v3 - 8);
  v16 = v3;
  v17 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO12SigningInputV0H4TypeO10CodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO12SigningInputV0H4TypeO10CodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  v11 = *v1;
  v15 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.SigningInput.InputType.CodingKeys and conformance KDSRegistration.SigningInput.InputType.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type KDSRegistration.SigningInput.InputType.NonceCodingKeys and conformance KDSRegistration.SigningInput.InputType.NonceCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v18 = v11;
  v19 = v15;
  lazy protocol witness table accessor for type Data and conformance Data();
  v12 = v16;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v17 + 8))(v6, v12);
  return (*(v8 + 8))(v10, v7);
}

uint64_t KDSRegistration.SigningInput.InputType.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO12SigningInputV0H4TypeO15NonceCodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO12SigningInputV0H4TypeO15NonceCodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMR);
  v29 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO12SigningInputV0H4TypeO10CodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO12SigningInputV0H4TypeO10CodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMR);
  v23 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.SigningInput.InputType.CodingKeys and conformance KDSRegistration.SigningInput.InputType.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    goto LABEL_6;
  }

  v21 = a1;
  v10 = v29;
  v11 = v23;
  v12 = KeyedDecodingContainer.allKeys.getter();
  v13 = (2 * *(v12 + 16)) | 1;
  v25 = v12;
  v26 = v12 + 32;
  v27 = 0;
  v28 = v13;
  if ((specialized Collection<>.popFirst()() & 1) != 0 || v27 != v28 >> 1)
  {
    v14 = type metadata accessor for DecodingError();
    swift_allocError();
    v15 = v7;
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v17 = &type metadata for KDSRegistration.SigningInput.InputType;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v14 - 8) + 104))(v17, *MEMORY[0x277D84160], v14);
    swift_willThrow();
    (*(v11 + 8))(v9, v15);
    swift_unknownObjectRelease();
    a1 = v21;
LABEL_6:
    v19 = a1;
    return __swift_destroy_boxed_opaque_existential_1Tm(v19);
  }

  lazy protocol witness table accessor for type KDSRegistration.SigningInput.InputType.NonceCodingKeys and conformance KDSRegistration.SigningInput.InputType.NonceCodingKeys();
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v10 + 8))(v6, v4);
  (*(v11 + 8))(v9, v7);
  swift_unknownObjectRelease();
  v19 = v21;
  *v22 = v24;
  return __swift_destroy_boxed_opaque_existential_1Tm(v19);
}

void KDSRegistration.SigningInput.inputType.getter(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  *a1 = *v1;
  a1[1] = v3;
  outlined copy of Data._Representation(v2, v3);
}

uint64_t KDSRegistration.SigningInput.init(nonce:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance KDSRegistration.SigningInput.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7079547475706E69 && a2 == 0xE900000000000065)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.SigningInput.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.SigningInput.CodingKeys and conformance KDSRegistration.SigningInput.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.SigningInput.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.SigningInput.CodingKeys and conformance KDSRegistration.SigningInput.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t KDSRegistration.SigningInput.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO12SigningInputV10CodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO12SigningInputV10CodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  v7 = *v1;
  v8 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  outlined copy of Data._Representation(v7, v8);
  lazy protocol witness table accessor for type KDSRegistration.SigningInput.CodingKeys and conformance KDSRegistration.SigningInput.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = v7;
  v11 = v8;
  lazy protocol witness table accessor for type KDSRegistration.SigningInput.InputType and conformance KDSRegistration.SigningInput.InputType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data._Representation(v10, v11);
  return (*(v4 + 8))(v6, v3);
}

uint64_t KDSRegistration.SigningInput.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO12SigningInputV10CodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO12SigningInputV10CodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.SigningInput.CodingKeys and conformance KDSRegistration.SigningInput.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type KDSRegistration.SigningInput.InputType and conformance KDSRegistration.SigningInput.InputType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.SigningInput()
{
  v1 = *v0;
  v2 = v0[1];
  outlined copy of Data._Representation(v1, v2);
  countAndFlagsBits = Data.base64EncodedString(options:)(0)._countAndFlagsBits;
  outlined consume of Data._Representation(v1, v2);
  return countAndFlagsBits;
}

uint64_t KDSRegistration.SigningOutput.signature.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t KDSRegistration.SigningOutput.init(signature:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance KDSRegistration.SigningOutput.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x727574616E676973 && a2 == 0xE900000000000065)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.SigningOutput.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.SigningOutput.CodingKeys and conformance KDSRegistration.SigningOutput.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.SigningOutput.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.SigningOutput.CodingKeys and conformance KDSRegistration.SigningOutput.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t KDSRegistration.SigningOutput.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO13SigningOutputV10CodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO13SigningOutputV10CodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  v7 = *v1;
  v8 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  outlined copy of Data._Representation(v7, v8);
  lazy protocol witness table accessor for type KDSRegistration.SigningOutput.CodingKeys and conformance KDSRegistration.SigningOutput.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = v7;
  v11 = v8;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data._Representation(v10, v11);
  return (*(v4 + 8))(v6, v3);
}

uint64_t KDSRegistration.SigningOutput.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO13SigningOutputV10CodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO13SigningOutputV10CodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.SigningOutput.CodingKeys and conformance KDSRegistration.SigningOutput.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.SIMLabelIDUpdateProcessedContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.SIMLabelIDUpdateProcessedContext.CodingKeys and conformance KDSRegistration.SIMLabelIDUpdateProcessedContext.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.SIMLabelIDUpdateProcessedContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.SIMLabelIDUpdateProcessedContext.CodingKeys and conformance KDSRegistration.SIMLabelIDUpdateProcessedContext.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance KDSRegistration.URISupportedState.CodingKeys()
{
  v1 = 0x6574726F70707573;
  if (*v0 != 1)
  {
    v1 = 0x6F70707553746F6ELL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6E776F6E6B6E75;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance KDSRegistration.URISupportedState.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized KDSRegistration.URISupportedState.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.URISupportedState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.URISupportedState.CodingKeys and conformance KDSRegistration.URISupportedState.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.URISupportedState.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.URISupportedState.CodingKeys and conformance KDSRegistration.URISupportedState.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.URISupportedState.NotSupportedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.URISupportedState.NotSupportedCodingKeys and conformance KDSRegistration.URISupportedState.NotSupportedCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.URISupportedState.NotSupportedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.URISupportedState.NotSupportedCodingKeys and conformance KDSRegistration.URISupportedState.NotSupportedCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.URISupportedState.SupportedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.URISupportedState.SupportedCodingKeys and conformance KDSRegistration.URISupportedState.SupportedCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.URISupportedState.SupportedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.URISupportedState.SupportedCodingKeys and conformance KDSRegistration.URISupportedState.SupportedCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.URISupportedState.UnknownCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.URISupportedState.UnknownCodingKeys and conformance KDSRegistration.URISupportedState.UnknownCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.URISupportedState.UnknownCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.URISupportedState.UnknownCodingKeys and conformance KDSRegistration.URISupportedState.UnknownCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t KDSRegistration.URISupportedState.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO17URISupportedStateO22NotSupportedCodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO17URISupportedStateO22NotSupportedCodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMR);
  v25 = *(v3 - 8);
  v26 = v3;
  MEMORY[0x28223BE20](v3);
  v24 = &v18 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO17URISupportedStateO19SupportedCodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO17URISupportedStateO19SupportedCodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMR);
  v22 = *(v5 - 8);
  v23 = v5;
  MEMORY[0x28223BE20](v5);
  v21 = &v18 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO17URISupportedStateO17UnknownCodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO17URISupportedStateO17UnknownCodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMR);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v18 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO17URISupportedStateO10CodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO17URISupportedStateO10CodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMR);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v18 - v12;
  v14 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.URISupportedState.CodingKeys and conformance KDSRegistration.URISupportedState.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v14)
  {
    if (v14 == 1)
    {
      v28 = 1;
      lazy protocol witness table accessor for type KDSRegistration.URISupportedState.SupportedCodingKeys and conformance KDSRegistration.URISupportedState.SupportedCodingKeys();
      v9 = v21;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v16 = v22;
      v15 = v23;
    }

    else
    {
      v29 = 2;
      lazy protocol witness table accessor for type KDSRegistration.URISupportedState.NotSupportedCodingKeys and conformance KDSRegistration.URISupportedState.NotSupportedCodingKeys();
      v9 = v24;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v16 = v25;
      v15 = v26;
    }
  }

  else
  {
    v27 = 0;
    lazy protocol witness table accessor for type KDSRegistration.URISupportedState.UnknownCodingKeys and conformance KDSRegistration.URISupportedState.UnknownCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v16 = v19;
    v15 = v20;
  }

  (*(v16 + 8))(v9, v15);
  return (*(v11 + 8))(v13, v10);
}

Swift::Int KDSRegistration.URISupportedState.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x266754DE0](v1);
  return Hasher._finalize()();
}

uint64_t KDSRegistration.URISupportedState.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v35 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO17URISupportedStateO22NotSupportedCodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO17URISupportedStateO22NotSupportedCodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMR);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x28223BE20](v3);
  v34 = &v28 - v4;
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO17URISupportedStateO19SupportedCodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO17URISupportedStateO19SupportedCodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMR);
  v30 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v6 = &v28 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO17URISupportedStateO17UnknownCodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO17URISupportedStateO17UnknownCodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMR);
  v29 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v28 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO17URISupportedStateO10CodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO17URISupportedStateO10CodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMR);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v28 - v12;
  v14 = a1[3];
  v37 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  lazy protocol witness table accessor for type KDSRegistration.URISupportedState.CodingKeys and conformance KDSRegistration.URISupportedState.CodingKeys();
  v15 = v36;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v15)
  {
    v28 = v7;
    v36 = v11;
    v17 = v34;
    v16 = v35;
    v18 = KeyedDecodingContainer.allKeys.getter();
    v19 = (2 * *(v18 + 16)) | 1;
    v38 = v18;
    v39 = v18 + 32;
    v40 = 0;
    v41 = v19;
    v20 = specialized Collection<>.popFirst()();
    if (v20 == 3 || v40 != v41 >> 1)
    {
      v22 = type metadata accessor for DecodingError();
      swift_allocError();
      v24 = v23;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      *v24 = &type metadata for KDSRegistration.URISupportedState;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v22 - 8) + 104))(v24, *MEMORY[0x277D84160], v22);
      swift_willThrow();
      (*(v36 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }

    else
    {
      v42 = v20;
      if (v20)
      {
        if (v20 == 1)
        {
          v43 = 1;
          lazy protocol witness table accessor for type KDSRegistration.URISupportedState.SupportedCodingKeys and conformance KDSRegistration.URISupportedState.SupportedCodingKeys();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v21 = v36;
          (*(v30 + 8))(v6, v33);
          (*(v21 + 8))(v13, v10);
        }

        else
        {
          v43 = 2;
          lazy protocol witness table accessor for type KDSRegistration.URISupportedState.NotSupportedCodingKeys and conformance KDSRegistration.URISupportedState.NotSupportedCodingKeys();
          v26 = v17;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v27 = v36;
          (*(v31 + 8))(v26, v32);
          (*(v27 + 8))(v13, v10);
        }
      }

      else
      {
        v43 = 0;
        lazy protocol witness table accessor for type KDSRegistration.URISupportedState.UnknownCodingKeys and conformance KDSRegistration.URISupportedState.UnknownCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v29 + 8))(v9, v28);
        (*(v36 + 8))(v13, v10);
      }

      swift_unknownObjectRelease();
      *v16 = v42;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v37);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.SupportedStateUpdateProcessedContext.CodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type KDSRegistration.SupportedStateUpdateProcessedContext.CodingKeys and conformance KDSRegistration.SupportedStateUpdateProcessedContext.CodingKeys();

  return MEMORY[0x2821FE718](a1, updated);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.SupportedStateUpdateProcessedContext.CodingKeys(uint64_t a1)
{
  updated = lazy protocol witness table accessor for type KDSRegistration.SupportedStateUpdateProcessedContext.CodingKeys and conformance KDSRegistration.SupportedStateUpdateProcessedContext.CodingKeys();

  return MEMORY[0x2821FE720](a1, updated);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.IsRegisteredContext.CodingKeys(uint64_t a1)
{
  IsRegistered = lazy protocol witness table accessor for type KDSRegistration.IsRegisteredContext.CodingKeys and conformance KDSRegistration.IsRegisteredContext.CodingKeys();

  return MEMORY[0x2821FE718](a1, IsRegistered);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.IsRegisteredContext.CodingKeys(uint64_t a1)
{
  IsRegistered = lazy protocol witness table accessor for type KDSRegistration.IsRegisteredContext.CodingKeys and conformance KDSRegistration.IsRegisteredContext.CodingKeys();

  return MEMORY[0x2821FE720](a1, IsRegistered);
}

uint64_t KDSRegistration.SIMLabelIDUpdateProcessedContext.encode(to:)(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v8 + 8))(v10, v7);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance KDSRegistration.SIMLabelIDUpdateProcessedContext(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a6();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  return (*(v10 + 8))(v12, v9);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance KDSRegistration.IsRegisteredResult.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7473696765527369 && a2 == 0xEC00000064657265)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.IsRegisteredResult.CodingKeys(uint64_t a1)
{
  IsRegistered = lazy protocol witness table accessor for type KDSRegistration.IsRegisteredResult.CodingKeys and conformance KDSRegistration.IsRegisteredResult.CodingKeys();

  return MEMORY[0x2821FE718](a1, IsRegistered);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.IsRegisteredResult.CodingKeys(uint64_t a1)
{
  IsRegistered = lazy protocol witness table accessor for type KDSRegistration.IsRegisteredResult.CodingKeys and conformance KDSRegistration.IsRegisteredResult.CodingKeys();

  return MEMORY[0x2821FE720](a1, IsRegistered);
}

uint64_t KDSRegistration.IsRegisteredResult.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO18IsRegisteredResultV10CodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO18IsRegisteredResultV10CodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.IsRegisteredResult.CodingKeys and conformance KDSRegistration.IsRegisteredResult.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t KDSRegistration.IsRegisteredResult.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO18IsRegisteredResultV10CodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO18IsRegisteredResultV10CodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.IsRegisteredResult.CodingKeys and conformance KDSRegistration.IsRegisteredResult.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v9 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance KDSRegistration.IsRegisteredResult(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO18IsRegisteredResultV10CodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO18IsRegisteredResultV10CodingKeys33_FEE307832C5A8D574607F5CB1E2FCA7ELLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.IsRegisteredResult.CodingKeys and conformance KDSRegistration.IsRegisteredResult.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t partial apply for closure #1 in KDSRegistration.Client.add(listener:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in KDSRegistration.Client.add(listener:)(a1, v4, v5, v6, v7, v8);
}

uint64_t objectdestroyTm_2()
{
  swift_unknownObjectRelease();

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t partial apply for closure #1 in KDSRegistration.Client.remove(listener:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in KDSRegistration.Client.remove(listener:)(a1, v4, v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in KDSRegistration.Client.update(supportedState:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in KDSRegistration.Client.update(supportedState:)(a1, v4, v5, v6, v7);
}

uint64_t objectdestroy_12Tm()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t partial apply for closure #1 in KDSRegistration.Client.isRegistered(context:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in KDSRegistration.Client.isRegistered(context:)(a1, v4, v5, v6, v7);
}

uint64_t sub_26519FF7C()
{
  swift_unknownObjectRelease();

  outlined consume of Data._Representation(*(v0 + 40), *(v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t partial apply for closure #1 in KDSRegistration.Client.signInputWithParticipantKey(input:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in KDSRegistration.Client.signInputWithParticipantKey(input:)(a1, v4, v5, v6, v7, v8);
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.SigningInput.InputType.CodingKeys and conformance KDSRegistration.SigningInput.InputType.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType.CodingKeys and conformance KDSRegistration.SigningInput.InputType.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType.CodingKeys and conformance KDSRegistration.SigningInput.InputType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType.CodingKeys and conformance KDSRegistration.SigningInput.InputType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType.CodingKeys and conformance KDSRegistration.SigningInput.InputType.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType.CodingKeys and conformance KDSRegistration.SigningInput.InputType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType.CodingKeys and conformance KDSRegistration.SigningInput.InputType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType.CodingKeys and conformance KDSRegistration.SigningInput.InputType.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType.CodingKeys and conformance KDSRegistration.SigningInput.InputType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType.CodingKeys and conformance KDSRegistration.SigningInput.InputType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType.CodingKeys and conformance KDSRegistration.SigningInput.InputType.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType.CodingKeys and conformance KDSRegistration.SigningInput.InputType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType.CodingKeys and conformance KDSRegistration.SigningInput.InputType.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.SigningInput.InputType.NonceCodingKeys and conformance KDSRegistration.SigningInput.InputType.NonceCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType.NonceCodingKeys and conformance KDSRegistration.SigningInput.InputType.NonceCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType.NonceCodingKeys and conformance KDSRegistration.SigningInput.InputType.NonceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType.NonceCodingKeys and conformance KDSRegistration.SigningInput.InputType.NonceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType.NonceCodingKeys and conformance KDSRegistration.SigningInput.InputType.NonceCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType.NonceCodingKeys and conformance KDSRegistration.SigningInput.InputType.NonceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType.NonceCodingKeys and conformance KDSRegistration.SigningInput.InputType.NonceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType.NonceCodingKeys and conformance KDSRegistration.SigningInput.InputType.NonceCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType.NonceCodingKeys and conformance KDSRegistration.SigningInput.InputType.NonceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType.NonceCodingKeys and conformance KDSRegistration.SigningInput.InputType.NonceCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType.NonceCodingKeys and conformance KDSRegistration.SigningInput.InputType.NonceCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType.NonceCodingKeys and conformance KDSRegistration.SigningInput.InputType.NonceCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType.NonceCodingKeys and conformance KDSRegistration.SigningInput.InputType.NonceCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.SigningInput.CodingKeys and conformance KDSRegistration.SigningInput.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.SigningInput.CodingKeys and conformance KDSRegistration.SigningInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SigningInput.CodingKeys and conformance KDSRegistration.SigningInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SigningInput.CodingKeys and conformance KDSRegistration.SigningInput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SigningInput.CodingKeys and conformance KDSRegistration.SigningInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SigningInput.CodingKeys and conformance KDSRegistration.SigningInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SigningInput.CodingKeys and conformance KDSRegistration.SigningInput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SigningInput.CodingKeys and conformance KDSRegistration.SigningInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SigningInput.CodingKeys and conformance KDSRegistration.SigningInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SigningInput.CodingKeys and conformance KDSRegistration.SigningInput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SigningInput.CodingKeys and conformance KDSRegistration.SigningInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SigningInput.CodingKeys and conformance KDSRegistration.SigningInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SigningInput.CodingKeys and conformance KDSRegistration.SigningInput.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.SigningInput.InputType and conformance KDSRegistration.SigningInput.InputType()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType and conformance KDSRegistration.SigningInput.InputType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType and conformance KDSRegistration.SigningInput.InputType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType and conformance KDSRegistration.SigningInput.InputType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType and conformance KDSRegistration.SigningInput.InputType;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType and conformance KDSRegistration.SigningInput.InputType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SigningInput.InputType and conformance KDSRegistration.SigningInput.InputType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.SigningOutput.CodingKeys and conformance KDSRegistration.SigningOutput.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.SigningOutput.CodingKeys and conformance KDSRegistration.SigningOutput.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SigningOutput.CodingKeys and conformance KDSRegistration.SigningOutput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SigningOutput.CodingKeys and conformance KDSRegistration.SigningOutput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SigningOutput.CodingKeys and conformance KDSRegistration.SigningOutput.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SigningOutput.CodingKeys and conformance KDSRegistration.SigningOutput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SigningOutput.CodingKeys and conformance KDSRegistration.SigningOutput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SigningOutput.CodingKeys and conformance KDSRegistration.SigningOutput.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SigningOutput.CodingKeys and conformance KDSRegistration.SigningOutput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SigningOutput.CodingKeys and conformance KDSRegistration.SigningOutput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SigningOutput.CodingKeys and conformance KDSRegistration.SigningOutput.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SigningOutput.CodingKeys and conformance KDSRegistration.SigningOutput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SigningOutput.CodingKeys and conformance KDSRegistration.SigningOutput.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.SIMLabelIDUpdateProcessedContext.CodingKeys and conformance KDSRegistration.SIMLabelIDUpdateProcessedContext.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.SIMLabelIDUpdateProcessedContext.CodingKeys and conformance KDSRegistration.SIMLabelIDUpdateProcessedContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SIMLabelIDUpdateProcessedContext.CodingKeys and conformance KDSRegistration.SIMLabelIDUpdateProcessedContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SIMLabelIDUpdateProcessedContext.CodingKeys and conformance KDSRegistration.SIMLabelIDUpdateProcessedContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SIMLabelIDUpdateProcessedContext.CodingKeys and conformance KDSRegistration.SIMLabelIDUpdateProcessedContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SIMLabelIDUpdateProcessedContext.CodingKeys and conformance KDSRegistration.SIMLabelIDUpdateProcessedContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SIMLabelIDUpdateProcessedContext.CodingKeys and conformance KDSRegistration.SIMLabelIDUpdateProcessedContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SIMLabelIDUpdateProcessedContext.CodingKeys and conformance KDSRegistration.SIMLabelIDUpdateProcessedContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SIMLabelIDUpdateProcessedContext.CodingKeys and conformance KDSRegistration.SIMLabelIDUpdateProcessedContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SIMLabelIDUpdateProcessedContext.CodingKeys and conformance KDSRegistration.SIMLabelIDUpdateProcessedContext.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.URISupportedState.CodingKeys and conformance KDSRegistration.URISupportedState.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.CodingKeys and conformance KDSRegistration.URISupportedState.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.CodingKeys and conformance KDSRegistration.URISupportedState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.CodingKeys and conformance KDSRegistration.URISupportedState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.CodingKeys and conformance KDSRegistration.URISupportedState.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.CodingKeys and conformance KDSRegistration.URISupportedState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.CodingKeys and conformance KDSRegistration.URISupportedState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.CodingKeys and conformance KDSRegistration.URISupportedState.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.CodingKeys and conformance KDSRegistration.URISupportedState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.CodingKeys and conformance KDSRegistration.URISupportedState.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.CodingKeys and conformance KDSRegistration.URISupportedState.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.CodingKeys and conformance KDSRegistration.URISupportedState.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.CodingKeys and conformance KDSRegistration.URISupportedState.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.URISupportedState.NotSupportedCodingKeys and conformance KDSRegistration.URISupportedState.NotSupportedCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.NotSupportedCodingKeys and conformance KDSRegistration.URISupportedState.NotSupportedCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.NotSupportedCodingKeys and conformance KDSRegistration.URISupportedState.NotSupportedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.NotSupportedCodingKeys and conformance KDSRegistration.URISupportedState.NotSupportedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.NotSupportedCodingKeys and conformance KDSRegistration.URISupportedState.NotSupportedCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.NotSupportedCodingKeys and conformance KDSRegistration.URISupportedState.NotSupportedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.NotSupportedCodingKeys and conformance KDSRegistration.URISupportedState.NotSupportedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.NotSupportedCodingKeys and conformance KDSRegistration.URISupportedState.NotSupportedCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.NotSupportedCodingKeys and conformance KDSRegistration.URISupportedState.NotSupportedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.NotSupportedCodingKeys and conformance KDSRegistration.URISupportedState.NotSupportedCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.URISupportedState.SupportedCodingKeys and conformance KDSRegistration.URISupportedState.SupportedCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.SupportedCodingKeys and conformance KDSRegistration.URISupportedState.SupportedCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.SupportedCodingKeys and conformance KDSRegistration.URISupportedState.SupportedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.SupportedCodingKeys and conformance KDSRegistration.URISupportedState.SupportedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.SupportedCodingKeys and conformance KDSRegistration.URISupportedState.SupportedCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.SupportedCodingKeys and conformance KDSRegistration.URISupportedState.SupportedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.SupportedCodingKeys and conformance KDSRegistration.URISupportedState.SupportedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.SupportedCodingKeys and conformance KDSRegistration.URISupportedState.SupportedCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.SupportedCodingKeys and conformance KDSRegistration.URISupportedState.SupportedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.SupportedCodingKeys and conformance KDSRegistration.URISupportedState.SupportedCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.URISupportedState.UnknownCodingKeys and conformance KDSRegistration.URISupportedState.UnknownCodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.UnknownCodingKeys and conformance KDSRegistration.URISupportedState.UnknownCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.UnknownCodingKeys and conformance KDSRegistration.URISupportedState.UnknownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.UnknownCodingKeys and conformance KDSRegistration.URISupportedState.UnknownCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.UnknownCodingKeys and conformance KDSRegistration.URISupportedState.UnknownCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.UnknownCodingKeys and conformance KDSRegistration.URISupportedState.UnknownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.UnknownCodingKeys and conformance KDSRegistration.URISupportedState.UnknownCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.UnknownCodingKeys and conformance KDSRegistration.URISupportedState.UnknownCodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.UnknownCodingKeys and conformance KDSRegistration.URISupportedState.UnknownCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.URISupportedState.UnknownCodingKeys and conformance KDSRegistration.URISupportedState.UnknownCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.SupportedStateUpdateProcessedContext.CodingKeys and conformance KDSRegistration.SupportedStateUpdateProcessedContext.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.SupportedStateUpdateProcessedContext.CodingKeys and conformance KDSRegistration.SupportedStateUpdateProcessedContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SupportedStateUpdateProcessedContext.CodingKeys and conformance KDSRegistration.SupportedStateUpdateProcessedContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SupportedStateUpdateProcessedContext.CodingKeys and conformance KDSRegistration.SupportedStateUpdateProcessedContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SupportedStateUpdateProcessedContext.CodingKeys and conformance KDSRegistration.SupportedStateUpdateProcessedContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SupportedStateUpdateProcessedContext.CodingKeys and conformance KDSRegistration.SupportedStateUpdateProcessedContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SupportedStateUpdateProcessedContext.CodingKeys and conformance KDSRegistration.SupportedStateUpdateProcessedContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.SupportedStateUpdateProcessedContext.CodingKeys and conformance KDSRegistration.SupportedStateUpdateProcessedContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.SupportedStateUpdateProcessedContext.CodingKeys and conformance KDSRegistration.SupportedStateUpdateProcessedContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.SupportedStateUpdateProcessedContext.CodingKeys and conformance KDSRegistration.SupportedStateUpdateProcessedContext.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.IsRegisteredContext.CodingKeys and conformance KDSRegistration.IsRegisteredContext.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredContext.CodingKeys and conformance KDSRegistration.IsRegisteredContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredContext.CodingKeys and conformance KDSRegistration.IsRegisteredContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredContext.CodingKeys and conformance KDSRegistration.IsRegisteredContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredContext.CodingKeys and conformance KDSRegistration.IsRegisteredContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredContext.CodingKeys and conformance KDSRegistration.IsRegisteredContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredContext.CodingKeys and conformance KDSRegistration.IsRegisteredContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredContext.CodingKeys and conformance KDSRegistration.IsRegisteredContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredContext.CodingKeys and conformance KDSRegistration.IsRegisteredContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredContext.CodingKeys and conformance KDSRegistration.IsRegisteredContext.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.IsRegisteredResult.CodingKeys and conformance KDSRegistration.IsRegisteredResult.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredResult.CodingKeys and conformance KDSRegistration.IsRegisteredResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredResult.CodingKeys and conformance KDSRegistration.IsRegisteredResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredResult.CodingKeys and conformance KDSRegistration.IsRegisteredResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredResult.CodingKeys and conformance KDSRegistration.IsRegisteredResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredResult.CodingKeys and conformance KDSRegistration.IsRegisteredResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredResult.CodingKeys and conformance KDSRegistration.IsRegisteredResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredResult.CodingKeys and conformance KDSRegistration.IsRegisteredResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredResult.CodingKeys and conformance KDSRegistration.IsRegisteredResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredResult.CodingKeys and conformance KDSRegistration.IsRegisteredResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredResult.CodingKeys and conformance KDSRegistration.IsRegisteredResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredResult.CodingKeys and conformance KDSRegistration.IsRegisteredResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.IsRegisteredResult.CodingKeys and conformance KDSRegistration.IsRegisteredResult.CodingKeys);
  }

  return result;
}

uint64_t dispatch thunk of KDSRegistration.Client.__allocating_init(configuration:supportedState:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(v2 + 104) + **(v2 + 104));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = dispatch thunk of KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v8(a1, a2);
}

uint64_t dispatch thunk of KDSRegistration.Client.add(listener:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 112) + **(*v2 + 112));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v8(a1, a2);
}

uint64_t dispatch thunk of KDSRegistration.Client.remove(listener:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 120) + **(*v2 + 120));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v8(a1, a2);
}

uint64_t dispatch thunk of KDSRegistration.Client.update(simLabelID:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 128) + **(*v3 + 128));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of KDSRegistration.Client.update(supportedState:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 136) + **(*v2 + 136));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v8(a1, a2);
}

uint64_t dispatch thunk of KDSRegistration.Client.isRegistered(context:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 144) + **(*v2 + 144));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v8(a1, a2);
}

uint64_t dispatch thunk of KDSRegistration.Client.signInputWithParticipantKey(input:)(uint64_t a1, uint64_t a2)
{
  v8 = (*(*v2 + 152) + **(*v2 + 152));
  v6 = swift_task_alloc();
  *(v3 + 16) = v6;
  *v6 = v3;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v8(a1, a2);
}

uint64_t getEnumTagSinglePayload for KDSRegistration.IsRegisteredResult(unsigned __int8 *a1, unsigned int a2)
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

uint64_t specialized KDSRegistration.URISupportedState.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E776F6E6B6E75 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6574726F70707573 && a2 == 0xE900000000000064 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F70707553746F6ELL && a2 == 0xEC00000064657472)
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

void *MLS.ClientEventDeliverer.__allocating_init<A, B, C>(communicator:delegate:keyPackageExchanger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = specialized MLS.ClientEventDeliverer.__allocating_init<A, B, C>(communicator:delegate:keyPackageExchanger:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v9;
}

uint64_t (*MLS.ClientEventDeliverer.communicator.modify(uint64_t *a1))()
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
  return MLS.ClientEventDeliverer.communicator.modify;
}

void (*MLS.ClientEventDeliverer.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = *(v1 + 40);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return MLS.ClientEventDeliverer.delegate.modify;
}

uint64_t (*MLS.ClientEventDeliverer.keyPackageExchanger.modify(uint64_t *a1))()
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
  v6 = *(v1 + 56);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return MLS.ClientEventDeliverer.keyPackageExchanger.modify;
}

void *MLS.DaemonClientEventDeliverer.init<A, B, C>(communicator:delegate:keyPackageExchanger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9 = specialized MLS.ClientEventDeliverer.init<A, B, C>(communicator:delegate:keyPackageExchanger:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v9;
}

{
  return MLS.DaemonClientEventDeliverer.init<A, B, C>(communicator:delegate:keyPackageExchanger:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

uint64_t MLS.ClientEventDeliverer.send(event:forGroup:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 1136) = v3;
  *(v4 + 1128) = a1;
  v7 = *v3;
  v8 = *(*v3 + 80);
  *(v4 + 1144) = v8;
  v9 = v7[11];
  *(v4 + 1152) = v9;
  v10 = v7[12];
  *(v4 + 1160) = v10;
  v11 = v7[13];
  *(v4 + 1168) = v11;
  *&v12 = v8;
  *(&v12 + 1) = v9;
  *&v13 = v10;
  *(&v13 + 1) = v11;
  *(v4 + 1064) = v12;
  *(v4 + 1080) = v13;
  v14 = type metadata accessor for MLS.OutgoingEventType(0, v4 + 1064);
  *(v4 + 1176) = v14;
  *(v4 + 1184) = *(v14 - 8);
  *(v4 + 1192) = swift_task_alloc();
  v15 = *(a2 + 144);
  *(v4 + 144) = *(a2 + 128);
  *(v4 + 160) = v15;
  *(v4 + 176) = *(a2 + 160);
  *(v4 + 192) = *(a2 + 176);
  v16 = *(a2 + 80);
  *(v4 + 80) = *(a2 + 64);
  *(v4 + 96) = v16;
  v17 = *(a2 + 112);
  *(v4 + 112) = *(a2 + 96);
  *(v4 + 128) = v17;
  v18 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v18;
  v19 = *(a2 + 48);
  *(v4 + 48) = *(a2 + 32);
  *(v4 + 64) = v19;
  v20 = *(a3 + 80);
  *(v4 + 816) = *(a3 + 64);
  *(v4 + 832) = v20;
  *(v4 + 848) = *(a3 + 96);
  v21 = *(a3 + 16);
  *(v4 + 752) = *a3;
  *(v4 + 768) = v21;
  v22 = *(a3 + 48);
  *(v4 + 784) = *(a3 + 32);
  *(v4 + 800) = v22;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v23 = static MLSActor.shared;
  *(v4 + 1200) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.ClientEventDeliverer.send(event:forGroup:), v23, 0);
}

uint64_t MLS.ClientEventDeliverer.send(event:forGroup:)()
{
  v37 = v0;
  v1 = (*(**(v0 + 1136) + 144))();
  *(v0 + 1208) = v1;
  if (v1)
  {
    v3 = v2;
    *(v0 + 1216) = direct field offset for MLS.ClientEventDeliverer.logger;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 200, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    outlined init with copy of MLS.Group(v0 + 752, v0 + 856);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    outlined destroy of MLS.Group(v0 + 752);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *&v35[0] = v7;
      *v6 = 136315394;
      v8 = specialized MLS.OutgoingEventType.identifier.getter();
      v10 = v9;

      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, v35);

      *(v6 + 4) = v11;
      *(v6 + 12) = 2080;
      v12 = *(v0 + 752);
      v13 = *(v0 + 760);

      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v35);

      *(v6 + 14) = v14;
      _os_log_impl(&dword_264F1F000, v4, v5, "ClientEventDeliverer delivering sendEvent { identifier: %s, group: %s }", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v7, -1, -1);
      MEMORY[0x266755550](v6, -1, -1);
    }

    v15 = *(v0 + 1192);
    v16 = *(v0 + 1168);
    v17 = *(v0 + 1160);
    v18 = *(v0 + 1152);
    v19 = *(v0 + 1144);
    v20 = *(v0 + 160);
    v35[8] = *(v0 + 144);
    v35[9] = v20;
    v35[10] = *(v0 + 176);
    v36 = *(v0 + 192);
    v21 = *(v0 + 96);
    v35[4] = *(v0 + 80);
    v35[5] = v21;
    v22 = *(v0 + 128);
    v35[6] = *(v0 + 112);
    v35[7] = v22;
    v23 = *(v0 + 32);
    v35[0] = *(v0 + 16);
    v35[1] = v23;
    v24 = *(v0 + 64);
    v35[2] = *(v0 + 48);
    v35[3] = v24;
    MLS.OutgoingEventType<>.convert<A, B>(memberType:clientContextType:)(v19, v18, v19, v18, v17, v16, v15);
    ObjectType = swift_getObjectType();
    v29 = *(v0 + 768);
    *(v0 + 960) = *(v0 + 752);
    *(v0 + 976) = v29;
    *(v0 + 1056) = *(v0 + 848);
    v30 = *(v0 + 816);
    *(v0 + 1040) = *(v0 + 832);
    v31 = *(v0 + 800);
    *(v0 + 992) = *(v0 + 784);
    *(v0 + 1008) = v31;
    *(v0 + 1024) = v30;
    v34 = (*(v3 + 40) + **(v3 + 40));
    v32 = swift_task_alloc();
    *(v0 + 1224) = v32;
    *v32 = v0;
    v32[1] = MLS.ClientEventDeliverer.send(event:forGroup:);
    v33 = *(v0 + 1192);

    return v34(v0 + 1096, v33, v0 + 960, ObjectType, v3);
  }

  else
  {
    lazy protocol witness table accessor for type MLS.SendError and conformance MLS.SendError();
    swift_allocError();
    *v25 = 4;
    *(v25 + 8) = 0;
    *(v25 + 16) = 0;
    swift_willThrow();

    v26 = *(v0 + 8);

    return v26();
  }
}

{
  v2 = *v1;
  *(*v1 + 1232) = v0;

  if (v0)
  {
    v3 = v2[150];
    (*(v2[148] + 8))(v2[149], v2[147]);
    v4 = MLS.ClientEventDeliverer.send(event:forGroup:);
  }

  else
  {
    v3 = v2[150];
    (*(v2[148] + 8))(v2[149], v2[147]);
    v4 = MLS.ClientEventDeliverer.send(event:forGroup:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v25 = v0;
  v1 = *(v0 + 1096);
  v2 = *(v0 + 1104);
  v3 = *(v0 + 1112);
  v4 = *(v0 + 1120);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 568, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  outlined copy of MLS.SendResult(v1, v2, v3, v4);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  outlined consume of MLS.SendResult(v1, v2, v3, v4);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v7 = 136315394;
    v20 = v19;
    v8 = specialized MLS.OutgoingEventType.identifier.getter();
    v10 = v9;

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v20);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v21 = v1;
    v22 = v2;
    v23 = v3;
    v24 = v4;
    outlined copy of MLS.SendResult(v1, v2, v3, v4);
    v12 = MLS.SendResult.description.getter();
    v14 = v13;
    outlined consume of MLS.SendResult(v21, v22, v23, v24);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v20);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_264F1F000, v5, v6, "ClientEventDeliverer sendEvent returned result { identifier: %s, result: %s }", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v19, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  else
  {
  }

  swift_unknownObjectRelease();
  v16 = *(v0 + 1128);
  *v16 = v1;
  *(v16 + 8) = v2;
  *(v16 + 16) = v3;
  *(v16 + 24) = v4;

  v17 = *(v0 + 8);

  return v17();
}

{
  v17 = v0;
  v1 = *(v0 + 1232);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 384, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v5 = 136315394;
    v8 = specialized MLS.OutgoingEventType.identifier.getter();
    v10 = v9;

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v16);

    *(v5 + 4) = v11;
    *(v5 + 12) = 2112;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v13;
    *v6 = v13;
    _os_log_impl(&dword_264F1F000, v3, v4, "ClientEventDeliverer sendEvent failed  { identifier: %s, error: %@ }", v5, 0x16u);
    outlined destroy of NSObject?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v6, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v5, -1, -1);
  }

  swift_willThrow();
  swift_unknownObjectRelease();

  v14 = *(v0 + 8);

  return v14();
}

uint64_t MLS.ClientEventDeliverer.receive(event:forGroup:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 784) = v3;
  *(v4 + 776) = a1;
  v7 = *v3;
  v8 = *(*v3 + 80);
  *(v4 + 792) = v8;
  v9 = v7[11];
  *(v4 + 800) = v9;
  v10 = v7[12];
  *(v4 + 808) = v10;
  v11 = v7[13];
  *(v4 + 816) = v11;
  *&v12 = v8;
  *(&v12 + 1) = v9;
  *&v13 = v10;
  *(&v13 + 1) = v11;
  *(v4 + 744) = v12;
  *(v4 + 760) = v13;
  v14 = type metadata accessor for MLS.IncomingEventType(0, v4 + 744);
  *(v4 + 824) = v14;
  *(v4 + 832) = *(v14 - 8);
  *(v4 + 840) = swift_task_alloc();
  v15 = *(a2 + 80);
  *(v4 + 392) = *(a2 + 64);
  *(v4 + 408) = v15;
  *(v4 + 424) = *(a2 + 96);
  v16 = *(a2 + 16);
  *(v4 + 328) = *a2;
  *(v4 + 344) = v16;
  v17 = *(a2 + 48);
  *(v4 + 360) = *(a2 + 32);
  *(v4 + 376) = v17;
  v18 = *(a3 + 16);
  *(v4 + 16) = *a3;
  *(v4 + 32) = v18;
  v19 = *(a3 + 32);
  v20 = *(a3 + 48);
  v21 = *(a3 + 64);
  v22 = *(a3 + 80);
  *(v4 + 112) = *(a3 + 96);
  *(v4 + 80) = v21;
  *(v4 + 96) = v22;
  *(v4 + 48) = v19;
  *(v4 + 64) = v20;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v23 = static MLSActor.shared;
  *(v4 + 848) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.ClientEventDeliverer.receive(event:forGroup:), v23, 0);
}

uint64_t MLS.ClientEventDeliverer.receive(event:forGroup:)()
{
  v35 = v0;
  v1 = (*(**(v0 + 784) + 168))();
  *(v0 + 856) = v1;
  if (v1)
  {
    v3 = v2;
    *(v0 + 864) = direct field offset for MLS.ClientEventDeliverer.logger;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 328, v0 + 432, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    outlined init with copy of MLS.Group(v0 + 16, v0 + 120);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    outlined destroy of NSObject?(v0 + 328, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    outlined destroy of MLS.Group(v0 + 16);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      *&v33[0] = v7;
      *v6 = 136315394;
      v8 = specialized MLS.IncomingEventType.identifier.getter();
      v10 = v9;

      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, v33);

      *(v6 + 4) = v11;
      *(v6 + 12) = 2080;
      v12 = *(v0 + 16);
      v13 = *(v0 + 24);

      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v33);

      *(v6 + 14) = v14;
      _os_log_impl(&dword_264F1F000, v4, v5, "ClientEventDeliverer delivering receiveEvent { identifier: %s, group: %s }", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v7, -1, -1);
      MEMORY[0x266755550](v6, -1, -1);
    }

    v15 = *(v0 + 840);
    v16 = *(v0 + 816);
    v17 = *(v0 + 808);
    v18 = *(v0 + 800);
    v19 = *(v0 + 792);
    v20 = *(v0 + 408);
    v33[4] = *(v0 + 392);
    v33[5] = v20;
    v34 = *(v0 + 424);
    v21 = *(v0 + 344);
    v33[0] = *(v0 + 328);
    v33[1] = v21;
    v22 = *(v0 + 376);
    v33[2] = *(v0 + 360);
    v33[3] = v22;
    MLS.IncomingEventType<>.convert<A, B>(memberType:clientContextType:)(v19, v18, v19, v18, v17, v16, v15);
    ObjectType = swift_getObjectType();
    v27 = *(v0 + 32);
    *(v0 + 224) = *(v0 + 16);
    *(v0 + 240) = v27;
    *(v0 + 320) = *(v0 + 112);
    v28 = *(v0 + 96);
    *(v0 + 288) = *(v0 + 80);
    *(v0 + 304) = v28;
    v29 = *(v0 + 64);
    *(v0 + 256) = *(v0 + 48);
    *(v0 + 272) = v29;
    v32 = (*(v3 + 40) + **(v3 + 40));
    v30 = swift_task_alloc();
    *(v0 + 872) = v30;
    *v30 = v0;
    v30[1] = MLS.ClientEventDeliverer.receive(event:forGroup:);
    v31 = *(v0 + 840);

    return v32(v0 + 425, v31, v0 + 224, ObjectType, v3);
  }

  else
  {
    lazy protocol witness table accessor for type MLS.ReceiveError and conformance MLS.ReceiveError();
    swift_allocError();
    *v23 = 4;
    *(v23 + 8) = 0;
    *(v23 + 16) = 0;
    swift_willThrow();

    v24 = *(v0 + 8);

    return v24();
  }
}

{
  v2 = *v1;
  *(*v1 + 880) = v0;

  if (v0)
  {
    v3 = v2[106];
    (*(v2[104] + 8))(v2[105], v2[103]);
    v4 = MLS.ClientEventDeliverer.receive(event:forGroup:);
  }

  else
  {
    v3 = v2[106];
    (*(v2[104] + 8))(v2[105], v2[103]);
    v4 = MLS.ClientEventDeliverer.receive(event:forGroup:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v18 = v0;
  v1 = *(v0 + 425);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 328, v0 + 640, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v0 + 328, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v17 = v5;
    *v4 = 136315394;
    v6 = specialized MLS.IncomingEventType.identifier.getter();
    v8 = v7;

    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v8, &v17);

    *(v4 + 4) = v9;
    *(v4 + 12) = 2080;
    v10 = 0xEF79616C65447265;
    v11 = 0x7466417972746552;
    if (v1 != 1)
    {
      v11 = 0x746552746F4E6F44;
      v10 = 0xEA00000000007972;
    }

    if (v1)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0x73736563637553;
    }

    if (v1)
    {
      v13 = v10;
    }

    else
    {
      v13 = 0xE700000000000000;
    }

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v17);

    *(v4 + 14) = v14;
    _os_log_impl(&dword_264F1F000, v2, v3, "ClientEventDeliverer receiveEvent returned result { identifier: %s, result: %s }", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v5, -1, -1);
    MEMORY[0x266755550](v4, -1, -1);
  }

  else
  {
  }

  swift_unknownObjectRelease();
  **(v0 + 776) = v1;

  v15 = *(v0 + 8);

  return v15();
}

{
  v17 = v0;
  v1 = *(v0 + 880);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 328, v0 + 536, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?(v0 + 328, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v16 = v7;
    *v5 = 136315394;
    v8 = specialized MLS.IncomingEventType.identifier.getter();
    v10 = v9;

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v16);

    *(v5 + 4) = v11;
    *(v5 + 12) = 2112;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 14) = v13;
    *v6 = v13;
    _os_log_impl(&dword_264F1F000, v3, v4, "ClientEventDeliverer receiveEvent failed  { identifier: %s, error: %@ }", v5, 0x16u);
    outlined destroy of NSObject?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v6, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v5, -1, -1);
  }

  swift_willThrow();
  swift_unknownObjectRelease();

  v14 = *(v0 + 8);

  return v14();
}

uint64_t MLS.ClientEventDeliverer.fetchGroupRecoveryInfo(group:context:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 592) = v3;
  *(v4 + 584) = a1;
  v5 = *(a2 + 80);
  *(v4 + 80) = *(a2 + 64);
  *(v4 + 96) = v5;
  *(v4 + 112) = *(a2 + 96);
  v6 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v6;
  v7 = *(a2 + 48);
  *(v4 + 48) = *(a2 + 32);
  *(v4 + 64) = v7;
  *(v4 + 641) = *a3;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static MLSActor.shared;
  *(v4 + 600) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.ClientEventDeliverer.fetchGroupRecoveryInfo(group:context:), v8, 0);
}

uint64_t MLS.ClientEventDeliverer.fetchGroupRecoveryInfo(group:context:)()
{
  v22 = v0;
  v1 = (*(**(v0 + 592) + 168))();
  *(v0 + 608) = v1;
  if (v1)
  {
    v3 = v2;
    *(v0 + 616) = direct field offset for MLS.ClientEventDeliverer.logger;
    outlined init with copy of MLS.Group(v0 + 16, v0 + 120);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    outlined destroy of MLS.Group(v0 + 16);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v21 = v7;
      *v6 = 136315138;
      v8 = *(v0 + 16);
      v9 = *(v0 + 24);

      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v21);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_264F1F000, v4, v5, "ClientEventDeliverer delivering fetchGroupRecoveryInfo { group: %s }", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x266755550](v7, -1, -1);
      MEMORY[0x266755550](v6, -1, -1);
    }

    v11 = *(v0 + 641);
    ObjectType = swift_getObjectType();
    v13 = *(v0 + 32);
    *(v0 + 224) = *(v0 + 16);
    *(v0 + 240) = v13;
    *(v0 + 320) = *(v0 + 112);
    v14 = *(v0 + 96);
    *(v0 + 288) = *(v0 + 80);
    *(v0 + 304) = v14;
    v15 = *(v0 + 64);
    *(v0 + 256) = *(v0 + 48);
    *(v0 + 272) = v15;
    *(v0 + 640) = v11;
    v20 = (*(v3 + 56) + **(v3 + 56));
    v16 = swift_task_alloc();
    *(v0 + 624) = v16;
    *v16 = v0;
    v16[1] = MLS.ClientEventDeliverer.fetchGroupRecoveryInfo(group:context:);

    return v20(v0 + 536, v0 + 224, v0 + 640, ObjectType, v3);
  }

  else
  {
    lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoError and conformance MLS.FetchGroupRecoveryInfoError();
    swift_allocError();
    *v18 = 6;
    *(v18 + 8) = 0;
    *(v18 + 16) = 0;
    swift_willThrow();
    v19 = *(v0 + 8);

    return v19();
  }
}

{
  v2 = *v1;
  *(*v1 + 632) = v0;

  v3 = *(v2 + 600);
  if (v0)
  {
    v4 = MLS.ClientEventDeliverer.fetchGroupRecoveryInfo(group:context:);
  }

  else
  {
    v4 = MLS.ClientEventDeliverer.fetchGroupRecoveryInfo(group:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v29 = v0;
  v1 = v0[67];
  v2 = v0[68];
  v3 = v0[69];
  v4 = v0[70];
  outlined init with copy of MLS.Group((v0 + 2), (v0 + 54));
  outlined copy of MLS.FetchGroupRecoveryInfoResult(v1, v2, v3, v4, outlined copy of Data._Representation, outlined copy of Data?);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  outlined destroy of MLS.Group((v0 + 2));
  outlined copy of MLS.FetchGroupRecoveryInfoResult(v1, v2, v3, v4, outlined consume of Data._Representation, outlined consume of Data?);
  if (os_log_type_enabled(v5, v6))
  {
    v23 = v6;
    v7 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v24 = v22;
    *v7 = 136315394;
    v8 = v0[2];
    v9 = v0[3];

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v24);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    if (v2 >> 60 == 15)
    {
      v11 = 0xEF79616C65447265;
      v12 = 0x7466417972746552;
    }

    else if (v2 >> 60 == 11)
    {
      v11 = 0xEA00000000007972;
      v12 = 0x746552746F4E6F44;
    }

    else
    {
      v27 = 0;
      v28 = 0xE000000000000000;
      outlined copy of Data._Representation(v1, v2);
      outlined copy of Data?(v3, v4);
      _StringGuts.grow(_:)(22);

      v25 = 0xD000000000000013;
      v26 = 0x80000002651E9AF0;
      v27 = 0;
      v28 = 0xE000000000000000;
      _StringGuts.grow(_:)(31);

      v27 = 0x666E4970756F7247;
      v28 = 0xEB00000000203A6FLL;
      countAndFlagsBits = Data.base64EncodedString(options:)(0)._countAndFlagsBits;
      MEMORY[0x2667545A0](countAndFlagsBits);

      MEMORY[0x2667545A0](0xD000000000000010, 0x80000002651E9AD0);
      v14 = 0;
      object = 0;
      if (v4 >> 60 != 15)
      {
        v16 = Data.base64EncodedString(options:)(0);
        object = v16._object;
        v14 = v16._countAndFlagsBits;
      }

      v0[71] = v14;
      v0[72] = object;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v17 = String.init<A>(describing:)();
      MEMORY[0x2667545A0](v17);

      MEMORY[0x2667545A0](v27, v28);

      MEMORY[0x2667545A0](41, 0xE100000000000000);
      outlined copy of MLS.FetchGroupRecoveryInfoResult(v1, v2, v3, v4, outlined consume of Data._Representation, outlined consume of Data?);
      v12 = v25;
      v11 = v26;
    }

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, &v24);

    *(v7 + 14) = v18;
    _os_log_impl(&dword_264F1F000, v5, v23, "ClientEventDeliverer fetchGroupRecoveryInfo returned result { group: %s, result: %s }", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v22, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  else
  {
  }

  swift_unknownObjectRelease();
  v19 = v0[73];
  *v19 = v1;
  v19[1] = v2;
  v19[2] = v3;
  v19[3] = v4;
  v20 = v0[1];

  return v20();
}

{
  v17 = v0;
  v1 = v0[79];
  outlined init with copy of MLS.Group((v0 + 2), (v0 + 41));
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  outlined destroy of MLS.Group((v0 + 2));

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[79];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v6 = 136315394;
    v9 = v0[2];
    v10 = v0[3];

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v16);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2112;
    v12 = v5;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v13;
    *v7 = v13;
    _os_log_impl(&dword_264F1F000, v3, v4, "ClientEventDeliverer fetchGroupRecoveryInfo failed  { group: %s, error: %@ }", v6, 0x16u);
    outlined destroy of NSObject?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  swift_willThrow();
  swift_unknownObjectRelease();
  v14 = v0[1];

  return v14();
}

uint64_t MLS.ClientEventDeliverer.fetchMember(uri:context:)(uint64_t a1, uint64_t *a2, _BYTE *a3, uint64_t a4)
{
  *(v5 + 32) = a1;
  *(v5 + 40) = v4;
  MemberResult = type metadata accessor for MLS.FetchMemberResult(0, *(*v4 + 80), *(*v4 + 96), a4);
  *(v5 + 48) = MemberResult;
  *(v5 + 56) = *(MemberResult - 8);
  *(v5 + 64) = swift_task_alloc();
  *(v5 + 72) = swift_task_alloc();
  v9 = swift_task_alloc();
  v10 = *a2;
  v11 = a2[1];
  *(v5 + 80) = v9;
  *(v5 + 88) = v10;
  *(v5 + 96) = v11;
  *(v5 + 145) = *a3;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v12 = static MLSActor.shared;
  *(v5 + 104) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.ClientEventDeliverer.fetchMember(uri:context:), v12, 0);
}

uint64_t MLS.ClientEventDeliverer.fetchMember(uri:context:)()
{
  v21 = v0;
  v1 = (*(**(v0 + 40) + 168))();
  *(v0 + 112) = v1;
  if (v1)
  {
    v3 = v2;
    *(v0 + 120) = direct field offset for MLS.ClientEventDeliverer.logger;

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = *(v0 + 88);
      v6 = *(v0 + 96);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v20 = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v20);
      _os_log_impl(&dword_264F1F000, v4, v5, "ClientEventDeliverer delivering fetchMember { uri: %s }", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x266755550](v9, -1, -1);
      MEMORY[0x266755550](v8, -1, -1);
    }

    v10 = *(v0 + 145);
    v12 = *(v0 + 88);
    v11 = *(v0 + 96);
    ObjectType = swift_getObjectType();
    *(v0 + 16) = v12;
    *(v0 + 24) = v11;
    *(v0 + 144) = v10;
    v19 = (*(v3 + 64) + **(v3 + 64));
    v14 = swift_task_alloc();
    *(v0 + 128) = v14;
    *v14 = v0;
    v14[1] = MLS.ClientEventDeliverer.fetchMember(uri:context:);
    v15 = *(v0 + 80);

    return v19(v15, v0 + 16, v0 + 144, ObjectType, v3);
  }

  else
  {
    lazy protocol witness table accessor for type MLS.FetchMemberError and conformance MLS.FetchMemberError();
    swift_allocError();
    *v17 = 4;
    *(v17 + 8) = 0;
    *(v17 + 16) = 0;
    swift_willThrow();

    v18 = *(v0 + 8);

    return v18();
  }
}

{
  v2 = *v1;
  *(*v1 + 136) = v0;

  v3 = *(v2 + 104);
  if (v0)
  {
    v4 = MLS.ClientEventDeliverer.fetchMember(uri:context:);
  }

  else
  {
    v4 = MLS.ClientEventDeliverer.fetchMember(uri:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v23 = v0;
  v1 = *(v0[7] + 16);
  v1(v0[9], v0[10], v0[6]);

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v4 = v0[12];
    v19 = v0[11];
    log = v2;
    v5 = v0[8];
    v6 = v0[9];
    v7 = v0[6];
    v8 = v0[7];
    v9 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v22 = v20;
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v4, &v22);
    *(v9 + 12) = 2080;
    v1(v5, v6, v7);
    v10 = *(v8 + 8);
    v10(v6, v7);
    Member = MLS.FetchMemberResult.description.getter(v7);
    v13 = v12;
    v10(v5, v7);
    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(Member, v13, &v22);

    *(v9 + 14) = v14;
    v2 = log;
    _os_log_impl(&dword_264F1F000, log, v3, "ClientEventDeliverer fetchMember returned result { uri: %s, result: %s }", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v20, -1, -1);
    MEMORY[0x266755550](v9, -1, -1);
  }

  else
  {
    v10 = *(v0[7] + 8);
    v10(v0[9], v0[6]);
  }

  v15 = v0[10];
  v16 = v0[6];
  MLS.FetchMemberResult.allMemberResult.getter(v16, v0[4]);
  swift_unknownObjectRelease();
  v10(v15, v16);

  v17 = v0[1];

  return v17();
}

{
  v16 = v0;
  v1 = v0[17];

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[17];
    v7 = v0[11];
    v6 = v0[12];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v15);
    *(v8 + 12) = 2112;
    v11 = v5;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_264F1F000, v3, v4, "ClientEventDeliverer fetchMember failed  { uri: %s, error: %@ }", v8, 0x16u);
    outlined destroy of NSObject?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266755550](v10, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  swift_willThrow();
  swift_unknownObjectRelease();

  v13 = v0[1];

  return v13();
}

uint64_t MLS.ClientEventDeliverer.retrieveKeyPackage(members:context:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 48) = a2;
  *(v4 + 56) = v3;
  *(v4 + 40) = a1;
  v6 = *v3;
  *(v4 + 64) = *v3;
  v7 = *(v6 + 80);
  *(v4 + 72) = v7;
  *(v4 + 80) = *(v7 - 8);
  *(v4 + 88) = swift_task_alloc();
  *(v4 + 96) = swift_task_alloc();
  *(v4 + 104) = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15SecureMessaging3MLSO14KeyPackageInfoVGMd, &_sSay15SecureMessaging3MLSO14KeyPackageInfoVGMR);
  *(v4 + 112) = swift_getTupleTypeMetadata2();
  v8 = type metadata accessor for Optional();
  *(v4 + 120) = v8;
  *(v4 + 128) = *(v8 - 8);
  *(v4 + 136) = swift_task_alloc();
  *(v4 + 144) = swift_task_alloc();
  *(v4 + 209) = *a3;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  *(v4 + 152) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.ClientEventDeliverer.retrieveKeyPackage(members:context:), v9, 0);
}

uint64_t MLS.ClientEventDeliverer.retrieveKeyPackage(members:context:)()
{
  v28 = v0;
  v1 = (*(**(v0 + 56) + 192))();
  *(v0 + 160) = v1;
  if (v1)
  {
    v3 = v2;
    *(v0 + 168) = direct field offset for MLS.ClientEventDeliverer.logger;

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 48);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v27 = v8;
      *v7 = 136315138;
      v9 = MEMORY[0x266754630](v6, &type metadata for MLS.AllMember);
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v27);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_264F1F000, v4, v5, "ClientEventDeliverer delivering retrieveKeyPackage { members: %s }", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x266755550](v8, -1, -1);
      MEMORY[0x266755550](v7, -1, -1);
    }

    v12 = *(v0 + 64);
    v13 = *(v0 + 72);
    *(v0 + 16) = *(v0 + 48);
    v14 = swift_task_alloc();
    v14[2] = v13;
    v14[3] = v12[11];
    v15 = v12[12];
    *(v0 + 176) = v15;
    v14[4] = v15;
    v14[5] = v12[13];
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15SecureMessaging3MLSO9AllMemberOGMd, &_sSay15SecureMessaging3MLSO9AllMemberOGMR);
    v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v18 = lazy protocol witness table accessor for type [MLS.AllMember] and conformance [A]();
    v19 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lF(partial apply for closure #1 in MLS.ClientEventDeliverer.retrieveKeyPackage(members:context:), v14, v16, v13, v17, v18, MEMORY[0x277D84950], v0 + 24);
    *(v0 + 184) = v19;
    v23 = v19;
    LOBYTE(v16) = *(v0 + 209);

    ObjectType = swift_getObjectType();
    *(v0 + 208) = v16;
    v26 = (*(v3 + 24) + **(v3 + 24));
    v25 = swift_task_alloc();
    *(v0 + 192) = v25;
    *v25 = v0;
    v25[1] = MLS.ClientEventDeliverer.retrieveKeyPackage(members:context:);

    return v26(v0 + 32, v23, v0 + 208, ObjectType, v3);
  }

  else
  {
    lazy protocol witness table accessor for type MLS.KeyPackageRetrievalError and conformance MLS.KeyPackageRetrievalError();
    swift_allocError();
    *v20 = 6;
    *(v20 + 8) = 0;
    *(v20 + 16) = 0;
    swift_willThrow();

    v21 = *(v0 + 8);

    return v21();
  }
}

{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = *(v2 + 152);

    v4 = MLS.ClientEventDeliverer.retrieveKeyPackage(members:context:);
    v5 = v3;
  }

  else
  {
    v5 = *(v2 + 152);
    v4 = MLS.ClientEventDeliverer.retrieveKeyPackage(members:context:);
  }

  return MEMORY[0x2822009F8](v4, v5, 0);
}

{
  v17 = v0;
  v1 = v0[25];

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[6];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v6 = 136315394;
    v9 = MEMORY[0x266754630](v5, &type metadata for MLS.AllMember);
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v16);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2112;
    v12 = v1;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v13;
    *v7 = v13;
    _os_log_impl(&dword_264F1F000, v3, v4, "ClientEventDeliverer retrieveKeyPackage failed  { members: %s, error: %@ }", v6, 0x16u);
    outlined destroy of NSObject?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  swift_willThrow();
  swift_unknownObjectRelease();

  v14 = v0[1];

  return v14();
}

void MLS.ClientEventDeliverer.retrieveKeyPackage(members:context:)()
{
  v80 = v0;
  v1 = *(v0 + 32);
  v2 = *(v1 + 64);
  v63 = v1 + 64;
  v3 = -1;
  v4 = -1 << *(v1 + 32);
  if (-v4 < 64)
  {
    v3 = ~(-1 << -v4);
  }

  v5 = v3 & v2;
  v62 = (63 - v4) >> 6;
  v69 = *(v0 + 112) - 8;
  v6 = *(v0 + 80);
  v64 = v6;
  v71 = (v6 + 32);
  v72 = *(v0 + 112);
  v67 = (*(v0 + 176) + 40);
  v68 = (*(v0 + 128) + 32);
  v65 = *(v0 + 32);
  v66 = (v6 + 8);

  v7 = 0;
  v8 = MEMORY[0x277D84F98];
  if (!v5)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v73 = v8;
    v12 = v7;
LABEL_15:
    v15 = *(v0 + 136);
    v70 = *(v0 + 112);
    v16 = *(v0 + 96);
    v17 = *(v0 + 72);
    v18 = __clz(__rbit64(v5));
    v5 &= v5 - 1;
    v19 = v18 | (v12 << 6);
    (*(v64 + 16))(v16, *(v65 + 48) + *(v64 + 72) * v19, v17);
    v20 = *(*(v65 + 56) + 8 * v19);
    v21 = *(v72 + 48);
    (*(v64 + 32))(v15, v16, v17);
    *(v15 + v21) = v20;
    v22 = *(v72 - 8);
    (*(v22 + 56))(v15, 0, 1, v70);

    v14 = v12;
    v8 = v73;
LABEL_16:
    v23 = *(v0 + 144);
    v24 = *(v0 + 112);
    (*v68)(v23, *(v0 + 136), *(v0 + 120));
    if ((*(v22 + 48))(v23, 1, v24) == 1)
    {
      break;
    }

    v74 = v14;
    v25 = *(v0 + 176);
    v26 = *(v0 + 72);
    v27 = *(*(v0 + 144) + *(v72 + 48));
    (*v71)(*(v0 + 88));
    (*v67)(&v75, v26, v25);
    v29 = v75;
    v28 = v76;
    v30 = v77;
    v31 = v78;
    v32 = v8;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v79 = v32;
    v34 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v28, v30, v31);
    v36 = *(v32 + 16);
    v37 = (v35 & 1) == 0;
    v38 = __OFADD__(v36, v37);
    v39 = v36 + v37;
    if (v38)
    {
      goto LABEL_37;
    }

    v40 = v35;
    if (*(v32 + 24) >= v39)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v49 = v34;
        specialized _NativeDictionary.copy()();
        v34 = v49;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v39, isUniquelyReferenced_nonNull_native);
      v34 = specialized __RawDictionaryStorage.find<A>(_:)(v29, v28, v30, v31);
      if ((v40 & 1) != (v41 & 1))
      {

        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        return;
      }
    }

    v42 = *(v0 + 88);
    v43 = *(v0 + 72);
    if (v40)
    {
      v9 = v34;
      outlined consume of MLS.AllMember(v29, v28);
      v10 = v79;
      *(*(v79 + 56) + 8 * v9) = v27;

      v11 = v43;
      v8 = v10;
      (*v66)(v42, v11);
      v7 = v74;
      if (!v5)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v44 = v79;
      *(v79 + 8 * (v34 >> 6) + 64) |= 1 << v34;
      v45 = *(v44 + 48) + 32 * v34;
      *v45 = v29;
      *(v45 + 8) = v28;
      *(v45 + 16) = v30;
      *(v45 + 24) = v31;
      *(*(v44 + 56) + 8 * v34) = v27;
      v46 = v43;
      v8 = v44;
      (*v66)(v42, v46);
      v47 = *(v8 + 16);
      v38 = __OFADD__(v47, 1);
      v48 = v47 + 1;
      if (v38)
      {
        goto LABEL_38;
      }

      *(v8 + 16) = v48;
      v7 = v74;
      if (!v5)
      {
LABEL_7:
        if (v62 <= v7 + 1)
        {
          v13 = v7 + 1;
        }

        else
        {
          v13 = v62;
        }

        v14 = v13 - 1;
        while (1)
        {
          v12 = v7 + 1;
          if (__OFADD__(v7, 1))
          {
            break;
          }

          if (v12 >= v62)
          {
            v22 = *v69;
            (*(*v69 + 56))(*(v0 + 136), 1, 1, *(v0 + 112));
            v5 = 0;
            goto LABEL_16;
          }

          v5 = *(v63 + 8 * v12);
          ++v7;
          if (v5)
          {
            v73 = v8;
            goto LABEL_15;
          }
        }

        __break(1u);
LABEL_37:
        __break(1u);
LABEL_38:
        __break(1u);
        return;
      }
    }
  }

  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v50, v51))
  {
    v52 = *(v0 + 48);
    v53 = swift_slowAlloc();
    v54 = swift_slowAlloc();
    v79 = v54;
    *v53 = 136315394;
    v55 = MEMORY[0x266754630](v52, &type metadata for MLS.AllMember);
    v57 = v8;
    v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v55, v56, &v79);

    *(v53 + 4) = v58;
    v8 = v57;
    *(v53 + 12) = 2080;
    v75 = 0;
    v76 = 0xE000000000000000;

    _StringGuts.grow(_:)(29);

    v75 = 0xD00000000000001ALL;
    v76 = 0x80000002651E9810;
    lazy protocol witness table accessor for type MLS.AllMember and conformance MLS.AllMember();
    v59 = Dictionary.description.getter();
    MEMORY[0x2667545A0](v59);

    MEMORY[0x2667545A0](41, 0xE100000000000000);

    v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v75, v76, &v79);

    *(v53 + 14) = v60;
    _os_log_impl(&dword_264F1F000, v50, v51, "ClientEventDeliverer retrieveKeyPackage returned result { members: %s, result: %s }", v53, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v54, -1, -1);
    MEMORY[0x266755550](v53, -1, -1);
  }

  swift_unknownObjectRelease();
  **(v0 + 40) = v8;

  v61 = *(v0 + 8);

  v61();
}

uint64_t closure #1 in MLS.ClientEventDeliverer.retrieveKeyPackage(members:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v8 = *a1;
  v9 = *(a1 + 8);
  v10 = *(a1 + 16);
  v11 = *(a1 + 24);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v16[0] = v8;
  v16[1] = v9;
  v16[2] = v10;
  v17 = v11;
  v12 = *(a4 + 48);
  outlined copy of MLS.AllMember(v8, v9);
  v13 = v18;
  result = v12(v16, a2, a4);
  if (v13)
  {
    *a6 = v13;
  }

  return result;
}

uint64_t MLS.ClientEventDeliverer.__deallocating_deinit()
{
  MLS.ClientEventDeliverer.deinit();

  return swift_deallocClassInstance();
}

uint64_t protocol witness for MLS.Communicator.send(event:forGroup:) in conformance MLS.ClientEventDeliverer<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 224) + **(*v3 + 224));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2, a3);
}

uint64_t protocol witness for MLS.Delegate.receive(event:forGroup:) in conformance MLS.ClientEventDeliverer<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 232) + **(*v3 + 232));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2, a3);
}

uint64_t protocol witness for MLS.Delegate.fetchGroupRecoveryInfo(group:context:) in conformance MLS.ClientEventDeliverer<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 240) + **(*v3 + 240));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2, a3);
}

uint64_t protocol witness for MLS.Delegate.fetchMember(uri:context:) in conformance MLS.ClientEventDeliverer<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 248) + **(*v3 + 248));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2, a3);
}

uint64_t protocol witness for MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:) in conformance MLS.ClientEventDeliverer<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 256) + **(*v3 + 256));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2, a3);
}

uint64_t protocol witness for MLS.ClientEventDelivererProtocol.fetchMember(uri:context:) in conformance MLS.ClientEventDeliverer<A, B>(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 248) + **(*v3 + 248));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2, a3);
}

uint64_t MLS.ClientEventDeliverer.communicator.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 24) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*MLS.DaemonClientEventDeliverer.communicator.modify(uint64_t *a1))()
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
  return MLS.DaemonClientEventDeliverer.communicator.modify;
}

void MLS.ClientEventDeliverer.communicator.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 24) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

void (*MLS.DaemonClientEventDeliverer.delegate.modify(uint64_t *a1))(uint64_t a1, char a2)
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
  v6 = *(v1 + 40);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return MLS.DaemonClientEventDeliverer.delegate.modify;
}

uint64_t MLS.ClientEventDeliverer.keyPackageExchanger.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 56) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

uint64_t (*MLS.DaemonClientEventDeliverer.keyPackageExchanger.modify(uint64_t *a1))()
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
  v6 = *(v1 + 56);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return MLS.DaemonClientEventDeliverer.keyPackageExchanger.modify;
}

void MLS.ClientEventDeliverer.keyPackageExchanger.modify(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 56) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t MLS.ClientEventDeliverer.logger.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for Logger();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

void *MLS.DaemonClientEventDeliverer.__allocating_init<A, B, C>(communicator:delegate:keyPackageExchanger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  swift_allocObject();
  v17 = specialized MLS.ClientEventDeliverer.init<A, B, C>(communicator:delegate:keyPackageExchanger:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  return v17;
}

uint64_t MLS.DaemonClientEventDeliverer.send(event:forGroup:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 1288) = v3;
  *(v4 + 1280) = a1;
  v5 = *(a2 + 144);
  *(v4 + 144) = *(a2 + 128);
  *(v4 + 160) = v5;
  *(v4 + 176) = *(a2 + 160);
  *(v4 + 192) = *(a2 + 176);
  v6 = *(a2 + 80);
  *(v4 + 80) = *(a2 + 64);
  *(v4 + 96) = v6;
  v7 = *(a2 + 112);
  *(v4 + 112) = *(a2 + 96);
  *(v4 + 128) = v7;
  v8 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v8;
  v9 = *(a2 + 48);
  *(v4 + 48) = *(a2 + 32);
  *(v4 + 64) = v9;
  v10 = *(a3 + 80);
  *(v4 + 1000) = *(a3 + 64);
  *(v4 + 1016) = v10;
  *(v4 + 1032) = *(a3 + 96);
  v11 = *(a3 + 16);
  *(v4 + 936) = *a3;
  *(v4 + 952) = v11;
  v12 = *(a3 + 48);
  *(v4 + 968) = *(a3 + 32);
  *(v4 + 984) = v12;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v13 = static MLSActor.shared;
  *(v4 + 1296) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.DaemonClientEventDeliverer.send(event:forGroup:), v13, 0);
}

uint64_t MLS.DaemonClientEventDeliverer.send(event:forGroup:)()
{
  v30 = v0;
  v1 = (*(**(v0 + 1288) + 112))();
  *(v0 + 1304) = v1;
  if (v1)
  {
    v3 = v2;
    *(v0 + 1312) = OBJC_IVAR____TtCO15SecureMessaging3MLS26DaemonClientEventDeliverer_logger;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 200, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    outlined init with copy of MLS.Group(v0 + 936, v0 + 1040);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    outlined destroy of MLS.Group(v0 + 936);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v29[0] = v7;
      *v6 = 136315394;
      v8 = specialized MLS.OutgoingEventType.identifier.getter();
      v10 = v9;

      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, v29);

      *(v6 + 4) = v11;
      *(v6 + 12) = 2080;
      v12 = *(v0 + 936);
      v13 = *(v0 + 944);

      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v29);

      *(v6 + 14) = v14;
      _os_log_impl(&dword_264F1F000, v4, v5, "DaemonClientEventDeliverer delivering sendEvent { identifier: %s, group: %s }", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v7, -1, -1);
      MEMORY[0x266755550](v6, -1, -1);
    }

    ObjectType = swift_getObjectType();
    v16 = *(v0 + 160);
    *(v0 + 512) = *(v0 + 144);
    *(v0 + 528) = v16;
    *(v0 + 544) = *(v0 + 176);
    *(v0 + 560) = *(v0 + 192);
    v17 = *(v0 + 96);
    *(v0 + 448) = *(v0 + 80);
    *(v0 + 464) = v17;
    v18 = *(v0 + 128);
    *(v0 + 480) = *(v0 + 112);
    *(v0 + 496) = v18;
    v19 = *(v0 + 32);
    *(v0 + 384) = *(v0 + 16);
    *(v0 + 400) = v19;
    v20 = *(v0 + 64);
    *(v0 + 416) = *(v0 + 48);
    *(v0 + 432) = v20;
    v21 = *(v0 + 952);
    *(v0 + 1144) = *(v0 + 936);
    *(v0 + 1160) = v21;
    *(v0 + 1240) = *(v0 + 1032);
    v22 = *(v0 + 1016);
    *(v0 + 1208) = *(v0 + 1000);
    *(v0 + 1224) = v22;
    v23 = *(v0 + 984);
    *(v0 + 1176) = *(v0 + 968);
    *(v0 + 1192) = v23;
    v28 = (*(v3 + 40) + **(v3 + 40));
    v24 = swift_task_alloc();
    *(v0 + 1320) = v24;
    *v24 = v0;
    v24[1] = MLS.DaemonClientEventDeliverer.send(event:forGroup:);

    return v28(v0 + 1248, v0 + 384, v0 + 1144, ObjectType, v3);
  }

  else
  {
    lazy protocol witness table accessor for type MLS.SendError and conformance MLS.SendError();
    swift_allocError();
    *v26 = 4;
    *(v26 + 8) = 0;
    *(v26 + 16) = 0;
    swift_willThrow();
    v27 = *(v0 + 8);

    return v27();
  }
}

{
  v2 = *v1;
  *(*v1 + 1328) = v0;

  v3 = *(v2 + 1296);
  if (v0)
  {
    v4 = MLS.DaemonClientEventDeliverer.send(event:forGroup:);
  }

  else
  {
    v4 = MLS.DaemonClientEventDeliverer.send(event:forGroup:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v25 = v0;
  v1 = *(v0 + 1248);
  v2 = *(v0 + 1256);
  v3 = *(v0 + 1264);
  v4 = *(v0 + 1272);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 752, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  outlined copy of MLS.SendResult(v1, v2, v3, v4);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  outlined consume of MLS.SendResult(v1, v2, v3, v4);
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    v19 = swift_slowAlloc();
    *v7 = 136315394;
    v20 = v19;
    v8 = specialized MLS.OutgoingEventType.identifier.getter();
    v10 = v9;

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, &v20);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v21 = v1;
    v22 = v2;
    v23 = v3;
    v24 = v4;
    outlined copy of MLS.SendResult(v1, v2, v3, v4);
    v12 = MLS.SendResult.description.getter();
    v14 = v13;
    outlined consume of MLS.SendResult(v21, v22, v23, v24);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v20);

    *(v7 + 14) = v15;
    _os_log_impl(&dword_264F1F000, v5, v6, "DaemonClientEventDeliverer sendEvent returned result { identifier: %s, result: %s }", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v19, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  else
  {
  }

  swift_unknownObjectRelease();
  v16 = *(v0 + 1280);
  *v16 = v1;
  *(v16 + 8) = v2;
  *(v16 + 16) = v3;
  *(v16 + 24) = v4;
  v17 = *(v0 + 8);

  return v17();
}

{
  v18 = v0;
  v1 = *(v0 + 1328);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 16, v0 + 568, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?(v0 + 16, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17OutgoingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 1328);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v6 = 136315394;
    v9 = specialized MLS.OutgoingEventType.identifier.getter();
    v11 = v10;

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v17);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2112;
    v13 = v5;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v14;
    *v7 = v14;
    _os_log_impl(&dword_264F1F000, v3, v4, "DaemonClientEventDeliverer sendEvent failed  { identifier: %s, error: %@ }", v6, 0x16u);
    outlined destroy of NSObject?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  swift_willThrow();
  swift_unknownObjectRelease();
  v15 = *(v0 + 8);

  return v15();
}

uint64_t MLS.DaemonClientEventDeliverer.receive(event:forGroup:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 856) = v3;
  *(v4 + 848) = a1;
  v5 = *(a2 + 80);
  *(v4 + 392) = *(a2 + 64);
  *(v4 + 408) = v5;
  *(v4 + 424) = *(a2 + 96);
  v6 = *(a2 + 16);
  *(v4 + 328) = *a2;
  *(v4 + 344) = v6;
  v7 = *(a2 + 48);
  *(v4 + 360) = *(a2 + 32);
  *(v4 + 376) = v7;
  v8 = *(a3 + 16);
  *(v4 + 16) = *a3;
  *(v4 + 32) = v8;
  v9 = *(a3 + 32);
  v10 = *(a3 + 48);
  v11 = *(a3 + 64);
  v12 = *(a3 + 80);
  *(v4 + 112) = *(a3 + 96);
  *(v4 + 80) = v11;
  *(v4 + 96) = v12;
  *(v4 + 48) = v9;
  *(v4 + 64) = v10;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v13 = static MLSActor.shared;
  *(v4 + 864) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.DaemonClientEventDeliverer.receive(event:forGroup:), v13, 0);
}

uint64_t MLS.DaemonClientEventDeliverer.receive(event:forGroup:)()
{
  v30 = v0;
  v1 = (*(**(v0 + 856) + 136))();
  *(v0 + 872) = v1;
  if (v1)
  {
    v3 = v2;
    *(v0 + 880) = OBJC_IVAR____TtCO15SecureMessaging3MLS26DaemonClientEventDeliverer_logger;
    outlined init with copy of MLS.OutgoingEventState?(v0 + 328, v0 + 432, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    outlined init with copy of MLS.Group(v0 + 16, v0 + 120);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    outlined destroy of NSObject?(v0 + 328, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
    outlined destroy of MLS.Group(v0 + 16);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v29[0] = v7;
      *v6 = 136315394;
      v8 = specialized MLS.IncomingEventType.identifier.getter();
      v10 = v9;

      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v10, v29);

      *(v6 + 4) = v11;
      *(v6 + 12) = 2080;
      v12 = *(v0 + 16);
      v13 = *(v0 + 24);

      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, v29);

      *(v6 + 14) = v14;
      _os_log_impl(&dword_264F1F000, v4, v5, "DaemonClientEventDeliverer delivering receiveEvent { identifier: %s, group: %s }", v6, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x266755550](v7, -1, -1);
      MEMORY[0x266755550](v6, -1, -1);
    }

    ObjectType = swift_getObjectType();
    v16 = *(v0 + 408);
    *(v0 + 600) = *(v0 + 392);
    *(v0 + 616) = v16;
    *(v0 + 632) = *(v0 + 424);
    v17 = *(v0 + 344);
    *(v0 + 536) = *(v0 + 328);
    *(v0 + 552) = v17;
    v18 = *(v0 + 376);
    *(v0 + 568) = *(v0 + 360);
    *(v0 + 584) = v18;
    v19 = *(v0 + 32);
    *(v0 + 224) = *(v0 + 16);
    *(v0 + 240) = v19;
    v20 = *(v0 + 48);
    v21 = *(v0 + 64);
    v22 = *(v0 + 80);
    v23 = *(v0 + 96);
    *(v0 + 320) = *(v0 + 112);
    *(v0 + 288) = v22;
    *(v0 + 304) = v23;
    *(v0 + 256) = v20;
    *(v0 + 272) = v21;
    v28 = (*(v3 + 40) + **(v3 + 40));
    v24 = swift_task_alloc();
    *(v0 + 888) = v24;
    *v24 = v0;
    v24[1] = MLS.DaemonClientEventDeliverer.receive(event:forGroup:);

    return v28(v0 + 425, v0 + 536, v0 + 224, ObjectType, v3);
  }

  else
  {
    lazy protocol witness table accessor for type MLS.ReceiveError and conformance MLS.ReceiveError();
    swift_allocError();
    *v26 = 4;
    *(v26 + 8) = 0;
    *(v26 + 16) = 0;
    swift_willThrow();
    v27 = *(v0 + 8);

    return v27();
  }
}

{
  v2 = *v1;
  *(*v1 + 896) = v0;

  v3 = *(v2 + 864);
  if (v0)
  {
    v4 = MLS.DaemonClientEventDeliverer.receive(event:forGroup:);
  }

  else
  {
    v4 = MLS.DaemonClientEventDeliverer.receive(event:forGroup:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v18 = v0;
  v1 = *(v0 + 425);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 328, v0 + 744, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  outlined destroy of NSObject?(v0 + 328, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    v5 = swift_slowAlloc();
    v17 = v5;
    *v4 = 136315394;
    v6 = specialized MLS.IncomingEventType.identifier.getter();
    v8 = v7;

    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v8, &v17);

    *(v4 + 4) = v9;
    *(v4 + 12) = 2080;
    v10 = 0xEF79616C65447265;
    v11 = 0x7466417972746552;
    if (v1 != 1)
    {
      v11 = 0x746552746F4E6F44;
      v10 = 0xEA00000000007972;
    }

    if (v1)
    {
      v12 = v11;
    }

    else
    {
      v12 = 0x73736563637553;
    }

    if (v1)
    {
      v13 = v10;
    }

    else
    {
      v13 = 0xE700000000000000;
    }

    v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v17);

    *(v4 + 14) = v14;
    _os_log_impl(&dword_264F1F000, v2, v3, "DaemonClientEventDeliverer receiveEvent returned result { identifier: %s, result: %s }", v4, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v5, -1, -1);
    MEMORY[0x266755550](v4, -1, -1);
  }

  else
  {
  }

  swift_unknownObjectRelease();
  **(v0 + 848) = v1;
  v15 = *(v0 + 8);

  return v15();
}

{
  v18 = v0;
  v1 = *(v0 + 896);
  outlined init with copy of MLS.OutgoingEventState?(v0 + 328, v0 + 640, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  outlined destroy of NSObject?(v0 + 328, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMd, &_s15SecureMessaging3MLSO17IncomingEventTypeOy_AC9AllMemberO10Foundation4DataVGMR);

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 896);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v17 = v8;
    *v6 = 136315394;
    v9 = specialized MLS.IncomingEventType.identifier.getter();
    v11 = v10;

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v17);

    *(v6 + 4) = v12;
    *(v6 + 12) = 2112;
    v13 = v5;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v14;
    *v7 = v14;
    _os_log_impl(&dword_264F1F000, v3, v4, "DaemonClientEventDeliverer receiveEvent failed  { identifier: %s, error: %@ }", v6, 0x16u);
    outlined destroy of NSObject?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  swift_willThrow();
  swift_unknownObjectRelease();
  v15 = *(v0 + 8);

  return v15();
}

uint64_t MLS.DaemonClientEventDeliverer.fetchGroupRecoveryInfo(group:context:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 592) = v3;
  *(v4 + 584) = a1;
  v5 = *(a2 + 80);
  *(v4 + 80) = *(a2 + 64);
  *(v4 + 96) = v5;
  *(v4 + 112) = *(a2 + 96);
  v6 = *(a2 + 16);
  *(v4 + 16) = *a2;
  *(v4 + 32) = v6;
  v7 = *(a2 + 48);
  *(v4 + 48) = *(a2 + 32);
  *(v4 + 64) = v7;
  *(v4 + 641) = *a3;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static MLSActor.shared;
  *(v4 + 600) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.DaemonClientEventDeliverer.fetchGroupRecoveryInfo(group:context:), v8, 0);
}

uint64_t MLS.DaemonClientEventDeliverer.fetchGroupRecoveryInfo(group:context:)()
{
  v22 = v0;
  v1 = (*(**(v0 + 592) + 136))();
  *(v0 + 608) = v1;
  if (v1)
  {
    v3 = v2;
    *(v0 + 616) = OBJC_IVAR____TtCO15SecureMessaging3MLS26DaemonClientEventDeliverer_logger;
    outlined init with copy of MLS.Group(v0 + 16, v0 + 120);
    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();
    outlined destroy of MLS.Group(v0 + 16);
    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v21 = v7;
      *v6 = 136315138;
      v8 = *(v0 + 16);
      v9 = *(v0 + 24);

      v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v21);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_264F1F000, v4, v5, "DaemonClientEventDeliverer delivering fetchGroupRecoveryInfo { group: %s }", v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x266755550](v7, -1, -1);
      MEMORY[0x266755550](v6, -1, -1);
    }

    v11 = *(v0 + 641);
    ObjectType = swift_getObjectType();
    v13 = *(v0 + 32);
    *(v0 + 224) = *(v0 + 16);
    *(v0 + 240) = v13;
    *(v0 + 320) = *(v0 + 112);
    v14 = *(v0 + 96);
    *(v0 + 288) = *(v0 + 80);
    *(v0 + 304) = v14;
    v15 = *(v0 + 64);
    *(v0 + 256) = *(v0 + 48);
    *(v0 + 272) = v15;
    *(v0 + 640) = v11;
    v20 = (*(v3 + 56) + **(v3 + 56));
    v16 = swift_task_alloc();
    *(v0 + 624) = v16;
    *v16 = v0;
    v16[1] = MLS.DaemonClientEventDeliverer.fetchGroupRecoveryInfo(group:context:);

    return v20(v0 + 536, v0 + 224, v0 + 640, ObjectType, v3);
  }

  else
  {
    lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoError and conformance MLS.FetchGroupRecoveryInfoError();
    swift_allocError();
    *v18 = 6;
    *(v18 + 8) = 0;
    *(v18 + 16) = 0;
    swift_willThrow();
    v19 = *(v0 + 8);

    return v19();
  }
}

{
  v2 = *v1;
  *(*v1 + 632) = v0;

  v3 = *(v2 + 600);
  if (v0)
  {
    v4 = MLS.DaemonClientEventDeliverer.fetchGroupRecoveryInfo(group:context:);
  }

  else
  {
    v4 = MLS.DaemonClientEventDeliverer.fetchGroupRecoveryInfo(group:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v29 = v0;
  v1 = v0[67];
  v2 = v0[68];
  v3 = v0[69];
  v4 = v0[70];
  outlined init with copy of MLS.Group((v0 + 2), (v0 + 54));
  outlined copy of MLS.FetchGroupRecoveryInfoResult(v1, v2, v3, v4, outlined copy of Data._Representation, outlined copy of Data?);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();
  outlined destroy of MLS.Group((v0 + 2));
  outlined copy of MLS.FetchGroupRecoveryInfoResult(v1, v2, v3, v4, outlined consume of Data._Representation, outlined consume of Data?);
  if (os_log_type_enabled(v5, v6))
  {
    v23 = v6;
    v7 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v24 = v22;
    *v7 = 136315394;
    v8 = v0[2];
    v9 = v0[3];

    v10 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v9, &v24);

    *(v7 + 4) = v10;
    *(v7 + 12) = 2080;
    if (v2 >> 60 == 15)
    {
      v11 = 0xEF79616C65447265;
      v12 = 0x7466417972746552;
    }

    else if (v2 >> 60 == 11)
    {
      v11 = 0xEA00000000007972;
      v12 = 0x746552746F4E6F44;
    }

    else
    {
      v27 = 0;
      v28 = 0xE000000000000000;
      outlined copy of Data._Representation(v1, v2);
      outlined copy of Data?(v3, v4);
      _StringGuts.grow(_:)(22);

      v25 = 0xD000000000000013;
      v26 = 0x80000002651E9AF0;
      v27 = 0;
      v28 = 0xE000000000000000;
      _StringGuts.grow(_:)(31);

      v27 = 0x666E4970756F7247;
      v28 = 0xEB00000000203A6FLL;
      countAndFlagsBits = Data.base64EncodedString(options:)(0)._countAndFlagsBits;
      MEMORY[0x2667545A0](countAndFlagsBits);

      MEMORY[0x2667545A0](0xD000000000000010, 0x80000002651E9AD0);
      v14 = 0;
      object = 0;
      if (v4 >> 60 != 15)
      {
        v16 = Data.base64EncodedString(options:)(0);
        object = v16._object;
        v14 = v16._countAndFlagsBits;
      }

      v0[71] = v14;
      v0[72] = object;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v17 = String.init<A>(describing:)();
      MEMORY[0x2667545A0](v17);

      MEMORY[0x2667545A0](v27, v28);

      MEMORY[0x2667545A0](41, 0xE100000000000000);
      outlined copy of MLS.FetchGroupRecoveryInfoResult(v1, v2, v3, v4, outlined consume of Data._Representation, outlined consume of Data?);
      v12 = v25;
      v11 = v26;
    }

    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v11, &v24);

    *(v7 + 14) = v18;
    _os_log_impl(&dword_264F1F000, v5, v23, "DaemonClientEventDeliverer fetchGroupRecoveryInfo returned result { group: %s, result: %s }", v7, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v22, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  else
  {
  }

  swift_unknownObjectRelease();
  v19 = v0[73];
  *v19 = v1;
  v19[1] = v2;
  v19[2] = v3;
  v19[3] = v4;
  v20 = v0[1];

  return v20();
}

{
  v17 = v0;
  v1 = v0[79];
  outlined init with copy of MLS.Group((v0 + 2), (v0 + 41));
  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();
  outlined destroy of MLS.Group((v0 + 2));

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[79];
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v16 = v8;
    *v6 = 136315394;
    v9 = v0[2];
    v10 = v0[3];

    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v16);

    *(v6 + 4) = v11;
    *(v6 + 12) = 2112;
    v12 = v5;
    v13 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 14) = v13;
    *v7 = v13;
    _os_log_impl(&dword_264F1F000, v3, v4, "DaemonClientEventDeliverer fetchGroupRecoveryInfo failed  { group: %s, error: %@ }", v6, 0x16u);
    outlined destroy of NSObject?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v7, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v8);
    MEMORY[0x266755550](v8, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  swift_willThrow();
  swift_unknownObjectRelease();
  v14 = v0[1];

  return v14();
}

uint64_t MLS.DaemonClientEventDeliverer.fetchMember(uri:context:)(uint64_t a1, void *a2, _BYTE *a3)
{
  *(v4 + 112) = a1;
  *(v4 + 120) = v3;
  v5 = a2[1];
  *(v4 + 128) = *a2;
  *(v4 + 136) = v5;
  *(v4 + 42) = *a3;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static MLSActor.shared;
  *(v4 + 144) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.DaemonClientEventDeliverer.fetchMember(uri:context:), v6, 0);
}

uint64_t MLS.DaemonClientEventDeliverer.fetchMember(uri:context:)()
{
  v20 = v0;
  v1 = (*(**(v0 + 120) + 136))();
  *(v0 + 152) = v1;
  if (v1)
  {
    v3 = v2;
    *(v0 + 160) = OBJC_IVAR____TtCO15SecureMessaging3MLS26DaemonClientEventDeliverer_logger;

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v7 = *(v0 + 128);
      v6 = *(v0 + 136);
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v19 = v9;
      *v8 = 136315138;
      *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v19);
      _os_log_impl(&dword_264F1F000, v4, v5, "DaemonClientEventDeliverer delivering fetchMember { uri: %s }", v8, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x266755550](v9, -1, -1);
      MEMORY[0x266755550](v8, -1, -1);
    }

    v10 = *(v0 + 42);
    v12 = *(v0 + 128);
    v11 = *(v0 + 136);
    ObjectType = swift_getObjectType();
    *(v0 + 80) = v12;
    *(v0 + 88) = v11;
    *(v0 + 41) = v10;
    v18 = (*(v3 + 64) + **(v3 + 64));
    v14 = swift_task_alloc();
    *(v0 + 168) = v14;
    *v14 = v0;
    v14[1] = MLS.DaemonClientEventDeliverer.fetchMember(uri:context:);

    return v18(v0 + 16, v0 + 80, v0 + 41, ObjectType, v3);
  }

  else
  {
    lazy protocol witness table accessor for type MLS.FetchMemberError and conformance MLS.FetchMemberError();
    swift_allocError();
    *v16 = 4;
    *(v16 + 8) = 0;
    *(v16 + 16) = 0;
    swift_willThrow();
    v17 = *(v0 + 8);

    return v17();
  }
}

{
  v2 = *v1;
  *(*v1 + 176) = v0;

  v3 = *(v2 + 144);
  if (v0)
  {
    v4 = MLS.DaemonClientEventDeliverer.fetchMember(uri:context:);
  }

  else
  {
    v4 = MLS.DaemonClientEventDeliverer.fetchMember(uri:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v18 = v0;
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 40);

  outlined copy of MLS.FetchMemberResult<MLS.AllMember>(v1, v2, v3, v4);
  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.default.getter();

  outlined consume of MLS.FetchMemberResult<MLS.AllMember>(v1, v2, v3, v4);
  if (os_log_type_enabled(v5, v6))
  {
    v8 = *(v0 + 128);
    v7 = *(v0 + 136);
    v9 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v17 = v16;
    *v9 = 136315394;
    *(v9 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v8, v7, &v17);
    *(v9 + 12) = 2080;
    if (v4 <= 0xFD)
    {
      if ((v4 & 0xFE) == 0x7E)
      {
        v10 = 0xEA00000000007972;
        v11 = 0x746552746F4E6F44;
      }

      else
      {
        *(v0 + 96) = 0;
        *(v0 + 104) = 0xE000000000000000;
        MEMORY[0x2667545A0](0x2873736563637553, 0xE800000000000000);
        *(v0 + 48) = v1;
        *(v0 + 56) = v2;
        *(v0 + 64) = v3;
        *(v0 + 72) = v4;
        _print_unlocked<A, B>(_:_:)();
        MEMORY[0x2667545A0](41, 0xE100000000000000);
        v11 = *(v0 + 96);
        v10 = *(v0 + 104);
      }
    }

    else
    {
      v10 = 0xEF79616C65447265;
      v11 = 0x7466417972746552;
    }

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v10, &v17);

    *(v9 + 14) = v12;
    _os_log_impl(&dword_264F1F000, v5, v6, "DaemonClientEventDeliverer fetchMember returned result { uri: %s, result: %s }", v9, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v16, -1, -1);
    MEMORY[0x266755550](v9, -1, -1);
    swift_unknownObjectRelease();
  }

  else
  {

    swift_unknownObjectRelease();
  }

  v13 = *(v0 + 112);
  *v13 = v1;
  *(v13 + 8) = v2;
  *(v13 + 16) = v3;
  *(v13 + 24) = v4;
  v14 = *(v0 + 8);

  return v14();
}

{
  v16 = v0;
  v1 = v0[22];

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[22];
    v7 = v0[16];
    v6 = v0[17];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v15 = v10;
    *v8 = 136315394;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v15);
    *(v8 + 12) = 2112;
    v11 = v5;
    v12 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 14) = v12;
    *v9 = v12;
    _os_log_impl(&dword_264F1F000, v3, v4, "DaemonClientEventDeliverer fetchMember failed  { uri: %s, error: %@ }", v8, 0x16u);
    outlined destroy of NSObject?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v9, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v10);
    MEMORY[0x266755550](v10, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  swift_willThrow();
  swift_unknownObjectRelease();
  v13 = v0[1];

  return v13();
}

uint64_t MLS.DaemonClientEventDeliverer.retrieveKeyPackage(members:context:)(uint64_t a1, uint64_t a2, _BYTE *a3)
{
  *(v4 + 32) = a2;
  *(v4 + 40) = v3;
  *(v4 + 24) = a1;
  *(v4 + 89) = *a3;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;
  *(v4 + 48) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.DaemonClientEventDeliverer.retrieveKeyPackage(members:context:), v5, 0);
}

uint64_t MLS.DaemonClientEventDeliverer.retrieveKeyPackage(members:context:)()
{
  v21 = v0;
  v1 = (*(**(v0 + 40) + 160))();
  *(v0 + 56) = v1;
  if (v1)
  {
    v3 = v2;
    *(v0 + 64) = OBJC_IVAR____TtCO15SecureMessaging3MLS26DaemonClientEventDeliverer_logger;

    v4 = Logger.logObject.getter();
    v5 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = *(v0 + 32);
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v20 = v8;
      *v7 = 136315138;
      v9 = MEMORY[0x266754630](v6, &type metadata for MLS.AllMember);
      v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v20);

      *(v7 + 4) = v11;
      _os_log_impl(&dword_264F1F000, v4, v5, "DaemonClientEventDeliverer delivering retrieveKeyPackage { members: %s }", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v8);
      MEMORY[0x266755550](v8, -1, -1);
      MEMORY[0x266755550](v7, -1, -1);
    }

    v12 = *(v0 + 89);
    ObjectType = swift_getObjectType();
    *(v0 + 88) = v12;
    v19 = (*(v3 + 24) + **(v3 + 24));
    v14 = swift_task_alloc();
    *(v0 + 72) = v14;
    *v14 = v0;
    v14[1] = MLS.DaemonClientEventDeliverer.retrieveKeyPackage(members:context:);
    v15 = *(v0 + 32);

    return v19(v0 + 16, v15, v0 + 88, ObjectType, v3);
  }

  else
  {
    lazy protocol witness table accessor for type MLS.KeyPackageRetrievalError and conformance MLS.KeyPackageRetrievalError();
    swift_allocError();
    *v17 = 6;
    *(v17 + 8) = 0;
    *(v17 + 16) = 0;
    swift_willThrow();
    v18 = *(v0 + 8);

    return v18();
  }
}

{
  v2 = *v1;
  *(*v1 + 80) = v0;

  v3 = *(v2 + 48);
  if (v0)
  {
    v4 = MLS.DaemonClientEventDeliverer.retrieveKeyPackage(members:context:);
  }

  else
  {
    v4 = MLS.DaemonClientEventDeliverer.retrieveKeyPackage(members:context:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v18 = v0;
  v1 = v0[10];

  v2 = v1;
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = v0[10];
    v6 = v0[4];
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v17 = v9;
    *v7 = 136315394;
    v10 = MEMORY[0x266754630](v6, &type metadata for MLS.AllMember);
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, &v17);

    *(v7 + 4) = v12;
    *(v7 + 12) = 2112;
    v13 = v5;
    v14 = _swift_stdlib_bridgeErrorToNSError();
    *(v7 + 14) = v14;
    *v8 = v14;
    _os_log_impl(&dword_264F1F000, v3, v4, "DaemonClientEventDeliverer retrieveKeyPackage failed  { members: %s, error: %@ }", v7, 0x16u);
    outlined destroy of NSObject?(v8, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x266755550](v8, -1, -1);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x266755550](v9, -1, -1);
    MEMORY[0x266755550](v7, -1, -1);
  }

  swift_willThrow();
  swift_unknownObjectRelease();
  v15 = v0[1];

  return v15();
}

void MLS.DaemonClientEventDeliverer.retrieveKeyPackage(members:context:)()
{
  v52 = v0;
  v1 = 0;
  v2 = *(v0 + 16);
  v5 = *(v2 + 64);
  v4 = v2 + 64;
  v3 = v5;
  v48 = *(v0 + 16);
  v6 = -1;
  v7 = -1 << *(v48 + 32);
  if (-v7 < 64)
  {
    v6 = ~(-1 << -v7);
  }

  v8 = v6 & v3;
  v9 = (63 - v7) >> 6;
  v10 = MEMORY[0x277D84F98];
  v46 = v9;
  v47 = v4;
  while (v8)
  {
    v12 = v1;
LABEL_11:
    v13 = __clz(__rbit64(v8)) | (v12 << 6);
    v14 = *(v48 + 48) + 32 * v13;
    v16 = *v14;
    v15 = *(v14 + 8);
    v17 = *(v14 + 16);
    v18 = *(v14 + 24);
    v19 = *(*(v48 + 56) + 8 * v13);
    outlined copy of MLS.AllMember(*v14, v15);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v50 = v10;
    v21 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v15, v17, v18);
    v23 = v10;
    v24 = v10[2];
    v25 = (v22 & 1) == 0;
    v26 = __OFADD__(v24, v25);
    v27 = v24 + v25;
    if (v26)
    {
LABEL_29:
      __break(1u);
LABEL_30:
      __break(1u);
      return;
    }

    v28 = v22;
    if (v23[3] >= v27)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v33 = v21;
        specialized _NativeDictionary.copy()();
        v21 = v33;
      }
    }

    else
    {
      specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v27, isUniquelyReferenced_nonNull_native);
      v21 = specialized __RawDictionaryStorage.find<A>(_:)(v16, v15, v17, v18);
      if ((v28 & 1) != (v29 & 1))
      {

        KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        return;
      }
    }

    v8 &= v8 - 1;
    if (v28)
    {
      v11 = v21;
      outlined consume of MLS.AllMember(v16, v15);
      v10 = v50;
      *(v50[7] + 8 * v11) = v19;
    }

    else
    {
      v10 = v50;
      v50[(v21 >> 6) + 8] |= 1 << v21;
      v30 = v10[6] + 32 * v21;
      *v30 = v16;
      *(v30 + 8) = v15;
      *(v30 + 16) = v17;
      *(v30 + 24) = v18;
      *(v10[7] + 8 * v21) = v19;
      v31 = v10[2];
      v26 = __OFADD__(v31, 1);
      v32 = v31 + 1;
      if (v26)
      {
        goto LABEL_30;
      }

      v10[2] = v32;
    }

    v1 = v12;
    v9 = v46;
    v4 = v47;
  }

  while (1)
  {
    v12 = v1 + 1;
    if (__OFADD__(v1, 1))
    {
      __break(1u);
      goto LABEL_29;
    }

    if (v12 >= v9)
    {
      break;
    }

    v8 = *(v4 + 8 * v12);
    ++v1;
    if (v8)
    {
      goto LABEL_11;
    }
  }

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = *(v45 + 32);
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v49 = v38;
    *v37 = 136315394;
    v39 = MEMORY[0x266754630](v36, &type metadata for MLS.AllMember);
    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v49);

    *(v37 + 4) = v41;
    *(v37 + 12) = 2080;
    v50 = 0;
    v51 = 0xE000000000000000;

    _StringGuts.grow(_:)(29);

    v50 = 0xD00000000000001ALL;
    v51 = 0x80000002651E9810;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15SecureMessaging3MLSO14KeyPackageInfoVGMd, &_sSay15SecureMessaging3MLSO14KeyPackageInfoVGMR);
    lazy protocol witness table accessor for type MLS.AllMember and conformance MLS.AllMember();
    v42 = Dictionary.description.getter();
    MEMORY[0x2667545A0](v42);

    MEMORY[0x2667545A0](41, 0xE100000000000000);

    v43 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v51, &v49);

    *(v37 + 14) = v43;
    _os_log_impl(&dword_264F1F000, v34, v35, "DaemonClientEventDeliverer retrieveKeyPackage returned result { members: %s, result: %s }", v37, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v38, -1, -1);
    MEMORY[0x266755550](v37, -1, -1);
  }

  swift_unknownObjectRelease();
  **(v45 + 24) = v10;
  v44 = *(v45 + 8);

  v44();
}

uint64_t MLS.ClientEventDeliverer.deinit(void (*a1)(uint64_t), void (*a2)(uint64_t), void (*a3)(uint64_t), uint64_t *a4)
{
  a1(v4 + 16);
  a2(v4 + 32);
  a3(v4 + 48);
  v8 = *a4;
  v9 = type metadata accessor for Logger();
  (*(*(v9 - 8) + 8))(v4 + v8, v9);
  return v4;
}

uint64_t MLS.DaemonClientEventDeliverer.__deallocating_deinit()
{
  outlined destroy of weak MLS.Persister?(v0 + 16);
  outlined destroy of weak MLS.Persister?(v0 + 32);
  outlined destroy of weak MLS.Persister?(v0 + 48);
  v1 = OBJC_IVAR____TtCO15SecureMessaging3MLS26DaemonClientEventDeliverer_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t protocol witness for MLS.Communicator.send(event:forGroup:) in conformance MLS.DaemonClientEventDeliverer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 192) + **(*v3 + 192));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2, a3);
}

uint64_t protocol witness for MLS.Delegate.receive(event:forGroup:) in conformance MLS.DaemonClientEventDeliverer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 200) + **(*v3 + 200));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2, a3);
}

uint64_t protocol witness for MLS.Delegate.fetchGroupRecoveryInfo(group:context:) in conformance MLS.DaemonClientEventDeliverer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 208) + **(*v3 + 208));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2, a3);
}

uint64_t protocol witness for MLS.Delegate.fetchMember(uri:context:) in conformance MLS.DaemonClientEventDeliverer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 216) + **(*v3 + 216));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2, a3);
}

uint64_t protocol witness for MLS.KeyPackageExchanger.retrieveKeyPackage(members:context:) in conformance MLS.DaemonClientEventDeliverer(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 224) + **(*v3 + 224));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2, a3);
}

void *specialized MLS.ClientEventDeliverer.__allocating_init<A, B, C>(communicator:delegate:keyPackageExchanger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v18 = *(v9 + 96);
  v20[0] = *(v9 + 80);
  v20[1] = v18;
  type metadata accessor for MLS.ClientEventDeliverer(0, v20);
  swift_allocObject();
  return specialized MLS.ClientEventDeliverer.init<A, B, C>(communicator:delegate:keyPackageExchanger:)(a1, a2, a3, a4, a5, a6, a7, a8, a9);
}

unint64_t lazy protocol witness table accessor for type [MLS.AllMember] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [MLS.AllMember] and conformance [A];
  if (!lazy protocol witness table cache variable for type [MLS.AllMember] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15SecureMessaging3MLSO9AllMemberOGMd, &_sSay15SecureMessaging3MLSO9AllMemberOGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [MLS.AllMember] and conformance [A]);
  }

  return result;
}

void *specialized MLS.ClientEventDeliverer.init<A, B, C>(communicator:delegate:keyPackageExchanger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v9[3] = 0;
  swift_unknownObjectWeakInit();
  v9[5] = 0;
  swift_unknownObjectWeakInit();
  v9[7] = 0;
  swift_unknownObjectWeakInit();
  Logger.init(subsystem:category:)();
  swift_beginAccess();
  v9[3] = a7;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v9[5] = a8;
  swift_unknownObjectWeakAssign();
  swift_beginAccess();
  v9[7] = a9;
  swift_unknownObjectWeakAssign();
  return v9;
}

uint64_t sub_2651AAD4C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 144))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2651AAD98(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = *(**a2 + 152);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

__n128 sub_2651AAE08(uint64_t a1, _OWORD *a2)
{
  result = *a1;
  v3 = *(a1 + 16);
  *a2 = *a1;
  a2[1] = v3;
  return result;
}

uint64_t sub_2651AAE14@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 168))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2651AAE60(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = *(**a2 + 176);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_2651AAED0@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 192))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2651AAF1C(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = *(**a2 + 200);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_2651AAF8C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 112))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2651AAFD8(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = *(**a2 + 120);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_2651AB03C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 136))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2651AB088(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = *(**a2 + 144);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t sub_2651AB0EC@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 160))();
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_2651AB138(void *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = *(**a2 + 168);
  v4 = swift_unknownObjectRetain();
  return v3(v4, v2);
}

uint64_t dispatch thunk of MLS.ClientEventDelivererProtocol.send(event:forGroup:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 8) + **(a5 + 8));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.ClientEventDelivererProtocol.receive(event:forGroup:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 16) + **(a5 + 16));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.ClientEventDelivererProtocol.fetchGroupRecoveryInfo(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 24) + **(a5 + 24));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.ClientEventDelivererProtocol.fetchMember(uri:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 32) + **(a5 + 32));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.ClientEventDelivererProtocol.retrieveKeyPackage(members:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 40) + **(a5 + 40));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t type metadata completion function for MLS.ClientEventDeliverer(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t dispatch thunk of MLS.ClientEventDeliverer.send(event:forGroup:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 224) + **(*v3 + 224));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.ClientEventDeliverer.receive(event:forGroup:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 232) + **(*v3 + 232));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.ClientEventDeliverer.fetchGroupRecoveryInfo(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 240) + **(*v3 + 240));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.ClientEventDeliverer.fetchMember(uri:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 248) + **(*v3 + 248));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.ClientEventDeliverer.retrieveKeyPackage(members:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 256) + **(*v3 + 256));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2, a3);
}

uint64_t type metadata accessor for MLS.DaemonClientEventDeliverer(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLS.DaemonClientEventDeliverer;
  if (!type metadata singleton initialization cache for MLS.DaemonClientEventDeliverer)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for MLS.DaemonClientEventDeliverer(uint64_t a1)
{
  result = type metadata accessor for Logger();
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

uint64_t dispatch thunk of MLS.DaemonClientEventDeliverer.send(event:forGroup:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 192) + **(*v3 + 192));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.DaemonClientEventDeliverer.receive(event:forGroup:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 200) + **(*v3 + 200));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.DaemonClientEventDeliverer.fetchGroupRecoveryInfo(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 208) + **(*v3 + 208));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.DaemonClientEventDeliverer.fetchMember(uri:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 216) + **(*v3 + 216));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.DaemonClientEventDeliverer.retrieveKeyPackage(members:context:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 224) + **(*v3 + 224));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2, a3);
}

uint64_t MLS.EventsSinceLastUpdate.init(messages:timeOfLastUpdate:isFirstKeyUpdate:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = result;
  *(a3 + 8) = a4;
  *(a3 + 16) = a2;
  return result;
}

void MLS.EventsSinceLastUpdate.incrementedMessages()(uint64_t a1@<X8>)
{
  if (*v1 == -1)
  {
    __break(1u);
  }

  else
  {
    v2 = *(v1 + 16);
    v3 = *(v1 + 8);
    *a1 = *v1 + 1;
    *(a1 + 8) = v3;
    *(a1 + 16) = v2;
  }
}

uint64_t MLS.EventsSinceLastUpdate.rolledKey()@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v7 = v6;
  result = (*(v3 + 8))(v5, v2);
  *a1 = 0;
  *(a1 + 8) = v7;
  *(a1 + 16) = 0;
  return result;
}

uint64_t static MLS.EventsSinceLastUpdate.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return (*(a2 + 16) ^ *(a1 + 16) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance MLS.EventsSinceLastUpdate.CodingKeys()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x736567617373656DLL;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.EventsSinceLastUpdate.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized MLS.EventsSinceLastUpdate.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.EventsSinceLastUpdate.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EventsSinceLastUpdate.CodingKeys and conformance MLS.EventsSinceLastUpdate.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.EventsSinceLastUpdate.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EventsSinceLastUpdate.CodingKeys and conformance MLS.EventsSinceLastUpdate.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.EventsSinceLastUpdate.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO21EventsSinceLastUpdateV10CodingKeys33_090A57BA177615123CF6311FB69E63E9LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO21EventsSinceLastUpdateV10CodingKeys33_090A57BA177615123CF6311FB69E63E9LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  v9[2] = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.EventsSinceLastUpdate.CodingKeys and conformance MLS.EventsSinceLastUpdate.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v11 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v10 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v5 + 8))(v7, v4);
}

unint64_t lazy protocol witness table accessor for type MLS.EventsSinceLastUpdate.CodingKeys and conformance MLS.EventsSinceLastUpdate.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.EventsSinceLastUpdate.CodingKeys and conformance MLS.EventsSinceLastUpdate.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EventsSinceLastUpdate.CodingKeys and conformance MLS.EventsSinceLastUpdate.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EventsSinceLastUpdate.CodingKeys and conformance MLS.EventsSinceLastUpdate.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EventsSinceLastUpdate.CodingKeys and conformance MLS.EventsSinceLastUpdate.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EventsSinceLastUpdate.CodingKeys and conformance MLS.EventsSinceLastUpdate.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EventsSinceLastUpdate.CodingKeys and conformance MLS.EventsSinceLastUpdate.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EventsSinceLastUpdate.CodingKeys and conformance MLS.EventsSinceLastUpdate.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EventsSinceLastUpdate.CodingKeys and conformance MLS.EventsSinceLastUpdate.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EventsSinceLastUpdate.CodingKeys and conformance MLS.EventsSinceLastUpdate.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EventsSinceLastUpdate.CodingKeys and conformance MLS.EventsSinceLastUpdate.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EventsSinceLastUpdate.CodingKeys and conformance MLS.EventsSinceLastUpdate.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EventsSinceLastUpdate.CodingKeys and conformance MLS.EventsSinceLastUpdate.CodingKeys);
  }

  return result;
}

uint64_t MLS.EventsSinceLastUpdate.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO21EventsSinceLastUpdateV10CodingKeys33_090A57BA177615123CF6311FB69E63E9LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO21EventsSinceLastUpdateV10CodingKeys33_090A57BA177615123CF6311FB69E63E9LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.EventsSinceLastUpdate.CodingKeys and conformance MLS.EventsSinceLastUpdate.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v14[15] = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v14[14] = 1;
    KeyedDecodingContainer.decode(_:forKey:)();
    v12 = v11;
    v14[13] = 2;
    v13 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v12;
    *(a2 + 16) = v13 & 1;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance MLS.EventsSinceLastUpdate(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8))
  {
    return (*(a2 + 16) ^ *(a1 + 16) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t specialized MLS.EventsSinceLastUpdate.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x736567617373656DLL && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002651EA650 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000002651EA670 == a2)
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

uint64_t MLS.KeyUpdateTracker.__allocating_init(groupIdentifier:uniqueClientIdentifier:persister:keyUpdatePolicy:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[11] = a6;
  v7[12] = v6;
  v7[9] = a4;
  v7[10] = a5;
  v7[7] = a1;
  v7[8] = a2;
  v9 = type metadata accessor for Date();
  v7[13] = v9;
  v7[14] = *(v9 - 8);
  v7[15] = swift_task_alloc();
  v10 = swift_allocObject();
  v11 = *a3;
  v12 = a3[1];
  v7[16] = v10;
  v7[17] = v11;
  v7[18] = v12;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v13 = static MLSActor.shared;
  v7[19] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.KeyUpdateTracker.__allocating_init(groupIdentifier:uniqueClientIdentifier:persister:keyUpdatePolicy:), v13, 0);
}

uint64_t MLS.KeyUpdateTracker.__allocating_init(groupIdentifier:uniqueClientIdentifier:persister:keyUpdatePolicy:)()
{
  v2 = v0[17];
  v1 = v0[18];
  v3 = v0[16];
  v4 = v0[11];
  v15 = v0[10];
  v6 = v0[8];
  v5 = v0[9];
  v3[6] = v0[7];
  v3[7] = v6;
  v3[4] = v2;
  v3[5] = v1;
  v3[2] = v5;
  v3[3] = v15;
  outlined init with copy of ServerBag.MLS(v4, (v3 + 11));
  ObjectType = swift_getObjectType();
  v0[5] = v2;
  v0[6] = v1;
  v8 = *(v15 + 144);

  swift_unknownObjectRetain();
  v14 = (v8 + *v8);
  v9 = swift_task_alloc();
  v0[20] = v9;
  *v9 = v0;
  v9[1] = MLS.KeyUpdateTracker.__allocating_init(groupIdentifier:uniqueClientIdentifier:persister:keyUpdatePolicy:);
  v10 = v0[10];
  v11 = v0[7];
  v12 = v0[8];

  return (v14)(v0 + 2, v11, v12, v0 + 5, ObjectType, v10);
}

{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = *(v2 + 152);

    v4 = MLS.KeyUpdateTracker.__allocating_init(groupIdentifier:uniqueClientIdentifier:persister:keyUpdatePolicy:);
  }

  else
  {
    v3 = *(v2 + 152);

    v4 = MLS.KeyUpdateTracker.__allocating_init(groupIdentifier:uniqueClientIdentifier:persister:keyUpdatePolicy:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = v0[16];
  v2 = v0[11];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v2);

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 88));
  swift_deallocPartialClassInstance();

  v3 = v0[1];

  return v3();
}

uint64_t MLS.KeyUpdateTracker.__allocating_init(groupIdentifier:uniqueClientIdentifier:persister:keyUpdatePolicy:)(uint64_t a1)
{
  LODWORD(v2) = *(v1 + 32);
  if (v2 == 2)
  {
    v4 = *(v1 + 112);
    v3 = *(v1 + 120);
    v2 = *(v1 + 104);
    v5 = *(v1 + 88);
    Date.init()();
    Date.timeIntervalSince1970.getter();
    v7 = v6;
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    (*(v4 + 8))(v3, v2);
    v8 = 0;
    LOBYTE(v2) = 1;
  }

  else
  {
    v9 = *(v1 + 88);
    v7 = *(v1 + 24);
    v8 = *(v1 + 16);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  v10 = *(v1 + 128);
  *(v10 + 64) = v8;
  *(v10 + 72) = v7;
  *(v10 + 80) = v2 & 1;

  v11 = *(v1 + 8);
  v12 = *(v1 + 128);

  return v11(v12);
}

double MLS.KeyUpdateTracker.uniqueClientIdentifier.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 40);
  *a1 = *(v1 + 32);
  a1[1] = v2;

  return result;
}

uint64_t MLS.KeyUpdateTracker.groupIdentifier.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

double MLS.KeyUpdateTracker.eventsSinceLastKeyUpdate.getter@<D0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  result = *(v1 + 72);
  v4 = *(v1 + 80);
  *a1 = *(v1 + 64);
  *(a1 + 8) = result;
  *(a1 + 16) = v4;
  return result;
}

uint64_t MLS.KeyUpdateTracker.eventsSinceLastKeyUpdate.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = *(a1 + 16);
  result = swift_beginAccess();
  *(v1 + 64) = v2;
  *(v1 + 72) = v3;
  *(v1 + 80) = v4;
  return result;
}

uint64_t MLS.KeyUpdateTracker.init(groupIdentifier:uniqueClientIdentifier:persister:keyUpdatePolicy:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[11] = a6;
  v7[12] = v6;
  v7[9] = a4;
  v7[10] = a5;
  v7[7] = a1;
  v7[8] = a2;
  v9 = type metadata accessor for Date();
  v7[13] = v9;
  v7[14] = *(v9 - 8);
  v10 = swift_task_alloc();
  v11 = *a3;
  v12 = a3[1];
  v7[15] = v10;
  v7[16] = v11;
  v7[17] = v12;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v13 = static MLSActor.shared;
  v7[18] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.KeyUpdateTracker.init(groupIdentifier:uniqueClientIdentifier:persister:keyUpdatePolicy:), v13, 0);
}

uint64_t MLS.KeyUpdateTracker.init(groupIdentifier:uniqueClientIdentifier:persister:keyUpdatePolicy:)()
{
  v2 = v0[16];
  v1 = v0[17];
  v3 = v0[11];
  v4 = v0[12];
  v5 = v0[9];
  v15 = v0[10];
  v6 = v0[8];
  v4[6] = v0[7];
  v4[7] = v6;
  v4[4] = v2;
  v4[5] = v1;
  v4[2] = v5;
  v4[3] = v15;
  outlined init with copy of ServerBag.MLS(v3, (v4 + 11));
  ObjectType = swift_getObjectType();
  v0[5] = v2;
  v0[6] = v1;
  v8 = *(v15 + 144);

  swift_unknownObjectRetain();
  v14 = (v8 + *v8);
  v9 = swift_task_alloc();
  v0[19] = v9;
  *v9 = v0;
  v9[1] = MLS.KeyUpdateTracker.init(groupIdentifier:uniqueClientIdentifier:persister:keyUpdatePolicy:);
  v10 = v0[10];
  v11 = v0[7];
  v12 = v0[8];

  return (v14)(v0 + 2, v11, v12, v0 + 5, ObjectType, v10);
}

{
  v2 = *v1;
  *(*v1 + 160) = v0;

  if (v0)
  {
    v3 = *(v2 + 144);

    v4 = MLS.KeyUpdateTracker.init(groupIdentifier:uniqueClientIdentifier:persister:keyUpdatePolicy:);
  }

  else
  {
    v3 = *(v2 + 144);

    v4 = MLS.KeyUpdateTracker.init(groupIdentifier:uniqueClientIdentifier:persister:keyUpdatePolicy:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v2 = v0[11];
  v1 = v0[12];
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(v2);

  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm((v1 + 88));
  type metadata accessor for MLS.KeyUpdateTracker();
  swift_deallocPartialClassInstance();

  v3 = v0[1];

  return v3();
}

uint64_t MLS.KeyUpdateTracker.init(groupIdentifier:uniqueClientIdentifier:persister:keyUpdatePolicy:)(uint64_t a1)
{
  LODWORD(v2) = *(v1 + 32);
  if (v2 == 2)
  {
    v4 = *(v1 + 112);
    v3 = *(v1 + 120);
    v2 = *(v1 + 104);
    v5 = *(v1 + 88);
    Date.init()();
    Date.timeIntervalSince1970.getter();
    v7 = v6;
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1Tm(v5);
    (*(v4 + 8))(v3, v2);
    v8 = 0;
    LOBYTE(v2) = 1;
  }

  else
  {
    v9 = *(v1 + 88);
    v7 = *(v1 + 24);
    v8 = *(v1 + 16);
    swift_unknownObjectRelease();
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
  }

  v10 = *(v1 + 96);
  *(v10 + 64) = v8;
  *(v10 + 72) = v7;
  *(v10 + 80) = v2 & 1;

  v11 = *(v1 + 8);
  v12 = *(v1 + 96);

  return v11(v12);
}

uint64_t MLS.KeyUpdateTracker.shouldRollKeyAfterMessage(shouldIncrement:)(char a1)
{
  *(v2 + 80) = v1;
  *(v2 + 33) = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = static MLSActor.shared;
  *(v2 + 88) = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.KeyUpdateTracker.shouldRollKeyAfterMessage(shouldIncrement:), v3, 0);
}

void *MLS.KeyUpdateTracker.shouldRollKeyAfterMessage(shouldIncrement:)()
{
  v17 = v0;
  v1 = *(v0 + 80);
  if (*(v0 + 33))
  {
    result = (*(*v1 + 120))(&v16);
    if (v16 == -1)
    {
      __break(1u);
      return result;
    }

    v3 = *(v0 + 80);
    ++v16;
    (*(*v3 + 128))(&v16);
    v1 = *(v0 + 80);
  }

  v4 = v1[3];
  ObjectType = swift_getObjectType();
  v6 = *(*v1 + 120);
  v7 = (*v1 + 120) & 0xFFFFFFFFFFFFLL | 0x7BFE000000000000;
  *(v0 + 96) = v6;
  *(v0 + 104) = v7;
  v6();
  v8 = *(v0 + 24);
  v9 = *(v0 + 32);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v8;
  *(v0 + 56) = v9;
  v10 = v1[6];
  v11 = v1[7];
  v12 = v1[5];
  *(v0 + 64) = v1[4];
  *(v0 + 72) = v12;
  v13 = *(v4 + 136);

  v15 = (v13 + *v13);
  v14 = swift_task_alloc();
  *(v0 + 112) = v14;
  *v14 = v0;
  v14[1] = MLS.KeyUpdateTracker.shouldRollKeyAfterMessage(shouldIncrement:);

  return v15(v0 + 40, v10, v11, v0 + 64, ObjectType, v4);
}

uint64_t MLS.KeyUpdateTracker.shouldRollKeyAfterMessage(shouldIncrement:)()
{
  v2 = *v1;
  *(*v1 + 120) = v0;

  v3 = *(v2 + 88);
  if (v0)
  {
    v4 = MLS.KeyUpdateTracker.shouldRollKeyAfterMessage(shouldIncrement:);
  }

  else
  {
    v4 = MLS.KeyUpdateTracker.shouldRollKeyAfterMessage(shouldIncrement:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v13 = v0;
  v1 = v0[12];
  v2 = v0[10];
  v3 = v2[14];
  v4 = v2[15];
  __swift_project_boxed_opaque_existential_1(v2 + 11, v3);
  v1(v9);
  v11[0] = v9[0];
  v11[1] = v9[1];
  v12 = v10;
  v5 = (*(v4 + 8))(v11, v3, v4);
  v6 = v0[1];
  v7 = v5 & 1;

  return v6(v7);
}

{
  return (*(v0 + 8))(0);
}

uint64_t MLS.KeyUpdateTracker.resetKeyRollTracking()()
{
  v1[10] = v0;
  v2 = type metadata accessor for Date();
  v1[11] = v2;
  v1[12] = *(v2 - 8);
  v1[13] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = static MLSActor.shared;
  v1[14] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.KeyUpdateTracker.resetKeyRollTracking(), v3, 0);
}

{
  v22 = v0;
  v2 = *(v0 + 96);
  v1 = *(v0 + 104);
  v4 = *(v0 + 80);
  v3 = *(v0 + 88);
  v5 = *(*v4 + 120);
  (v5)(v19);
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v7 = v6;
  (*(v2 + 8))(v1, v3);
  v19[0] = 0;
  v19[1] = v7;
  v20 = 0;
  (*(*v4 + 128))(v19);
  v8 = v4[3];
  ObjectType = swift_getObjectType();
  v5();
  v10 = *(v0 + 24);
  v11 = *(v0 + 32);
  *(v0 + 40) = *(v0 + 16);
  *(v0 + 48) = v10;
  *(v0 + 56) = v11;
  v12 = v4[6];
  v13 = v4[7];
  v14 = v4[5];
  *(v0 + 64) = v4[4];
  *(v0 + 72) = v14;
  v15 = *(v8 + 136);
  v21 = v8 + 136;

  v18 = (v15 + *v15);
  v16 = swift_task_alloc();
  *(v0 + 120) = v16;
  *v16 = v0;
  v16[1] = MLS.KeyUpdateTracker.resetKeyRollTracking();

  return v18(v0 + 40, v12, v13, v0 + 64, ObjectType, v8);
}

{
  v2 = *v1;
  v3 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v4 = *(v2 + 112);

    return MEMORY[0x2822009F8](_s15SecureMessaging8XPCUtilsO10ConnectionC21createDaemonInterface10resultType05errorI019isReconnectionEvent20requestCreationBlock03xpcP0qd__qd__m_qd_0_mSbAC19XPCInterfaceRequestVScCyAC20CollaboratorProtocol_ps5Error_pGYbXEyx_yAcN_pSg_10Foundation4DataVSgtYbctYbXEtYaKAcNRd__AC07XPCableV0Rd_0_r0_lFAC09XPCDaemonU0_p_AC012RegistrationtU0_pAC09XPCClientoV0VTtt0g5Tf4dnnn_nTY3_, v4, 0);
  }

  else
  {

    v5 = *(v3 + 8);

    return v5();
  }
}

void *MLS.KeyUpdateTracker.deinit()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 88));
  return v0;
}

uint64_t MLS.KeyUpdateTracker.__deallocating_deinit()
{
  swift_unknownObjectRelease();

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 88));

  return swift_deallocClassInstance();
}

double sub_2651AE97C@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  (*(**a1 + 120))(v5);
  result = *&v5[1];
  v4 = v6;
  *a2 = v5[0];
  *(a2 + 8) = result;
  *(a2 + 16) = v4;
  return result;
}

uint64_t sub_2651AE9E8(uint64_t a1, uint64_t *a2)
{
  v2 = *(a1 + 8);
  v3 = *(a1 + 16);
  v4 = *a2;
  v6[0] = *a1;
  v6[1] = v2;
  v7 = v3;
  return (*(*v4 + 128))(v6);
}

uint64_t dispatch thunk of MLS.KeyUpdateTracker.__allocating_init(groupIdentifier:uniqueClientIdentifier:persister:keyUpdatePolicy:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(v6 + 144) + **(v6 + 144));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = dispatch thunk of KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLS.KeyUpdateTracker.shouldRollKeyAfterMessage(shouldIncrement:)(uint64_t a1)
{
  v6 = (*(*v1 + 152) + **(*v1 + 152));
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = dispatch thunk of KDSRegistration.XPCCoordinator.__allocating_init(clientIdentifier:provider:simUniqueID:simLabelID:supportedState:testPhoneNumberURI:);

  return v6(a1);
}

uint64_t dispatch thunk of MLS.KeyUpdateTracker.resetKeyRollTracking()()
{
  v4 = (*(*v0 + 160) + **(*v0 + 160));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v4();
}

Swift::String __swiftcall Data.base64EncodedString(options:)(NSDataBase64EncodingOptions options)
{
  v1 = MEMORY[0x28211D318](options);
  result._object = v2;
  result._countAndFlagsBits = v1;
  return result;
}

Swift::String __swiftcall String.uppercased()()
{
  v0 = MEMORY[0x2821FBCE0]();
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t RawRepresentable<>.encode(to:)()
{
  return MEMORY[0x2821FC138]();
}

{
  return MEMORY[0x2821FC150]();
}

uint64_t RawRepresentable<>.init(from:)()
{
  return MEMORY[0x2821FC1B8]();
}

{
  return MEMORY[0x2821FC1D0]();
}

uint64_t KeyedDecodingContainer.decodeIfPresent(_:forKey:)()
{
  return MEMORY[0x2821FD988]();
}

{
  return MEMORY[0x2821FD9A8]();
}

uint64_t KeyedDecodingContainer.decode(_:forKey:)()
{
  return MEMORY[0x2821FD9F8]();
}

{
  return MEMORY[0x2821FDA00]();
}

{
  return MEMORY[0x2821FDA08]();
}

{
  return MEMORY[0x2821FDA20]();
}

{
  return MEMORY[0x2821FDA58]();
}

{
  return MEMORY[0x2821FDA60]();
}

{
  return MEMORY[0x2821FDA68]();
}

uint64_t KeyedEncodingContainer.encodeIfPresent(_:forKey:)()
{
  return MEMORY[0x2821FDAC0]();
}

{
  return MEMORY[0x2821FDAE0]();
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return MEMORY[0x2821FDB38]();
}

{
  return MEMORY[0x2821FDB40]();
}

{
  return MEMORY[0x2821FDB48]();
}

{
  return MEMORY[0x2821FDB60]();
}

{
  return MEMORY[0x2821FDB98]();
}

{
  return MEMORY[0x2821FDBA0]();
}

{
  return MEMORY[0x2821FDBA8]();
}

uint64_t DefaultStringInterpolation.appendInterpolation<A>(_:)()
{
  return MEMORY[0x2821FDE60]();
}

{
  return MEMORY[0x2821FDE68]();
}