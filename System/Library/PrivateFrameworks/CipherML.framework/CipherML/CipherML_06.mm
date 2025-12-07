unint64_t specialized StaticPIRParameters.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of StaticPIRParameters.CodingKeys.init(rawValue:), v2);

  if (v3 >= 5)
  {
    return 5;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized static StaticPIRParameters.validateCacheParams(cacheElementCount:cacheEntryMinutesToLive:cacheEvictionPolicy:)(uint64_t result, char a2, uint64_t a3, char a4, _BYTE *a5)
{
  if (*a5 != 2)
  {
    if ((a2 & 1) != 0 || result <= 0)
    {
      if (one-time initialization token for framework != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      __swift_project_value_buffer(v10, static Logger.framework);
      v6 = Logger.logObject.getter();
      v7 = static os_log_type_t.error.getter();
      if (!os_log_type_enabled(v6, v7))
      {
        goto LABEL_24;
      }

      v8 = swift_slowAlloc();
      *v8 = 0;
      goto LABEL_17;
    }

LABEL_8:
    if ((a4 & 1) == 0)
    {
      if (a3 <= 40320)
      {
        return result;
      }

      goto LABEL_19;
    }

    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.framework);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_24;
    }

    v8 = swift_slowAlloc();
    *v8 = 0;
LABEL_17:
    v11 = v7;
    v12 = v6;
    v13 = v8;
    v14 = 2;
    goto LABEL_23;
  }

  if ((a2 & 1) == 0)
  {
    goto LABEL_8;
  }

  if ((a4 & 1) == 0 && a3 >= 40321)
  {
LABEL_19:
    if (one-time initialization token for framework != -1)
    {
      swift_once();
    }

    v16 = type metadata accessor for Logger();
    __swift_project_value_buffer(v16, static Logger.framework);
    v6 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v6, v17))
    {
      goto LABEL_24;
    }

    v8 = swift_slowAlloc();
    *v8 = 134349312;
    *(v8 + 4) = a3;
    *(v8 + 12) = 2048;
    *(v8 + 14) = 40320;
    v9 = "Invalid cacheEntryMinutesToLive '%{public}ld'. Must be <= %ld";
    v11 = v17;
    v12 = v6;
    v13 = v8;
    v14 = 22;
LABEL_23:
    _os_log_impl(&dword_224E26000, v12, v11, v9, v13, v14);
    MEMORY[0x22AA61F40](v8, -1, -1);
LABEL_24:

    type metadata accessor for CipherMLError(0);
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_1(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticPIRParameters.CodingKeys and conformance StaticPIRParameters.CodingKeys()
{
  result = lazy protocol witness table cache variable for type StaticPIRParameters.CodingKeys and conformance StaticPIRParameters.CodingKeys;
  if (!lazy protocol witness table cache variable for type StaticPIRParameters.CodingKeys and conformance StaticPIRParameters.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticPIRParameters.CodingKeys and conformance StaticPIRParameters.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StaticPIRParameters.CodingKeys and conformance StaticPIRParameters.CodingKeys;
  if (!lazy protocol witness table cache variable for type StaticPIRParameters.CodingKeys and conformance StaticPIRParameters.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticPIRParameters.CodingKeys and conformance StaticPIRParameters.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StaticPIRParameters.CodingKeys and conformance StaticPIRParameters.CodingKeys;
  if (!lazy protocol witness table cache variable for type StaticPIRParameters.CodingKeys and conformance StaticPIRParameters.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticPIRParameters.CodingKeys and conformance StaticPIRParameters.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StaticPIRParameters.CodingKeys and conformance StaticPIRParameters.CodingKeys;
  if (!lazy protocol witness table cache variable for type StaticPIRParameters.CodingKeys and conformance StaticPIRParameters.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticPIRParameters.CodingKeys and conformance StaticPIRParameters.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CacheEvictionPolicy and conformance CacheEvictionPolicy()
{
  result = lazy protocol witness table cache variable for type CacheEvictionPolicy and conformance CacheEvictionPolicy;
  if (!lazy protocol witness table cache variable for type CacheEvictionPolicy and conformance CacheEvictionPolicy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CacheEvictionPolicy and conformance CacheEvictionPolicy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CacheEvictionPolicy and conformance CacheEvictionPolicy;
  if (!lazy protocol witness table cache variable for type CacheEvictionPolicy and conformance CacheEvictionPolicy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CacheEvictionPolicy and conformance CacheEvictionPolicy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CacheEvictionPolicy and conformance CacheEvictionPolicy;
  if (!lazy protocol witness table cache variable for type CacheEvictionPolicy and conformance CacheEvictionPolicy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CacheEvictionPolicy and conformance CacheEvictionPolicy);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CacheEvictionPolicy and conformance CacheEvictionPolicy;
  if (!lazy protocol witness table cache variable for type CacheEvictionPolicy and conformance CacheEvictionPolicy)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CacheEvictionPolicy and conformance CacheEvictionPolicy);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CacheEvictionPolicy? and conformance <A> A?()
{
  result = lazy protocol witness table cache variable for type CacheEvictionPolicy? and conformance <A> A?;
  if (!lazy protocol witness table cache variable for type CacheEvictionPolicy? and conformance <A> A?)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s8CipherML19CacheEvictionPolicyOSgMd, &_s8CipherML19CacheEvictionPolicyOSgMR);
    lazy protocol witness table accessor for type CacheEvictionPolicy and conformance CacheEvictionPolicy();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CacheEvictionPolicy? and conformance <A> A?);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type String? and conformance <A> A?(unint64_t *a1, uint64_t *a2, uint64_t *a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PECDPParameters.CodingKeys and conformance PECDPParameters.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PECDPParameters.CodingKeys and conformance PECDPParameters.CodingKeys;
  if (!lazy protocol witness table cache variable for type PECDPParameters.CodingKeys and conformance PECDPParameters.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PECDPParameters.CodingKeys and conformance PECDPParameters.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PECDPParameters.CodingKeys and conformance PECDPParameters.CodingKeys;
  if (!lazy protocol witness table cache variable for type PECDPParameters.CodingKeys and conformance PECDPParameters.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PECDPParameters.CodingKeys and conformance PECDPParameters.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PECDPParameters.CodingKeys and conformance PECDPParameters.CodingKeys;
  if (!lazy protocol witness table cache variable for type PECDPParameters.CodingKeys and conformance PECDPParameters.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PECDPParameters.CodingKeys and conformance PECDPParameters.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PECDPParameters.CodingKeys and conformance PECDPParameters.CodingKeys;
  if (!lazy protocol witness table cache variable for type PECDPParameters.CodingKeys and conformance PECDPParameters.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PECDPParameters.CodingKeys and conformance PECDPParameters.CodingKeys);
  }

  return result;
}

uint64_t specialized PECDPParameters.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4373736563637573 && a2 == 0xEC000000746E756FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002250367F0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001ALL && 0x8000000225036810 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000010 && 0x8000000225036830 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6C6169725478616DLL && a2 == 0xE900000000000073)
  {

    return 4;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t specialized PECDPParameters.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8CipherML15PECDPParametersV10CodingKeys33_5CF42E5E2777FA72EA9A88AEEA7FA59FLLOGMd, &_ss22KeyedDecodingContainerVy8CipherML15PECDPParametersV10CodingKeys33_5CF42E5E2777FA72EA9A88AEEA7FA59FLLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PECDPParameters.CodingKeys and conformance PECDPParameters.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v23 = 0;
  KeyedDecodingContainer.decode(_:forKey:)();
  v10 = v9;
  v22 = 1;
  KeyedDecodingContainer.decode(_:forKey:)();
  v12 = v11;
  v21 = 2;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  v20 = 3;
  v18 = KeyedDecodingContainer.decode(_:forKey:)();
  v19 = 4;
  v14 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v10;
  a2[1] = v12;
  v16 = v18;
  a2[2] = v13;
  a2[3] = v16;
  a2[4] = v14;
  return result;
}

unint64_t lazy protocol witness table accessor for type StaticPECParameters.CodingKeys and conformance StaticPECParameters.CodingKeys()
{
  result = lazy protocol witness table cache variable for type StaticPECParameters.CodingKeys and conformance StaticPECParameters.CodingKeys;
  if (!lazy protocol witness table cache variable for type StaticPECParameters.CodingKeys and conformance StaticPECParameters.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticPECParameters.CodingKeys and conformance StaticPECParameters.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StaticPECParameters.CodingKeys and conformance StaticPECParameters.CodingKeys;
  if (!lazy protocol witness table cache variable for type StaticPECParameters.CodingKeys and conformance StaticPECParameters.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticPECParameters.CodingKeys and conformance StaticPECParameters.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StaticPECParameters.CodingKeys and conformance StaticPECParameters.CodingKeys;
  if (!lazy protocol witness table cache variable for type StaticPECParameters.CodingKeys and conformance StaticPECParameters.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticPECParameters.CodingKeys and conformance StaticPECParameters.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StaticPECParameters.CodingKeys and conformance StaticPECParameters.CodingKeys;
  if (!lazy protocol witness table cache variable for type StaticPECParameters.CodingKeys and conformance StaticPECParameters.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticPECParameters.CodingKeys and conformance StaticPECParameters.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PECDPParameters and conformance PECDPParameters()
{
  result = lazy protocol witness table cache variable for type PECDPParameters and conformance PECDPParameters;
  if (!lazy protocol witness table cache variable for type PECDPParameters and conformance PECDPParameters)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PECDPParameters and conformance PECDPParameters);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PECDPParameters and conformance PECDPParameters;
  if (!lazy protocol witness table cache variable for type PECDPParameters and conformance PECDPParameters)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PECDPParameters and conformance PECDPParameters);
  }

  return result;
}

uint64_t specialized StaticPECParameters.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8CipherML19StaticPECParametersV10CodingKeys33_5CF42E5E2777FA72EA9A88AEEA7FA59FLLOGMd, &_ss22KeyedDecodingContainerVy8CipherML19StaticPECParametersV10CodingKeys33_5CF42E5E2777FA72EA9A88AEEA7FA59FLLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type StaticPECParameters.CodingKeys and conformance StaticPECParameters.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  lazy protocol witness table accessor for type PECDPParameters and conformance PECDPParameters();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v9 = v17;
  v10 = v18;
  v13 = v16;
  v14 = v15;
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  v12 = v13;
  *a2 = v14;
  *(a2 + 16) = v12;
  *(a2 + 32) = v9;
  *(a2 + 40) = v10;
  return result;
}

unint64_t specialized UseCaseGroup.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UseCaseGroup.CodingKeys.init(rawValue:), v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t type metadata accessor for UseCaseGroup(uint64_t a1)
{
  result = type metadata singleton initialization cache for UseCaseGroup;
  if (!type metadata singleton initialization cache for UseCaseGroup)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t outlined init with take of NetworkConfig(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NetworkConfig(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type UseCaseGroup.CodingKeys and conformance UseCaseGroup.CodingKeys()
{
  result = lazy protocol witness table cache variable for type UseCaseGroup.CodingKeys and conformance UseCaseGroup.CodingKeys;
  if (!lazy protocol witness table cache variable for type UseCaseGroup.CodingKeys and conformance UseCaseGroup.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UseCaseGroup.CodingKeys and conformance UseCaseGroup.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UseCaseGroup.CodingKeys and conformance UseCaseGroup.CodingKeys;
  if (!lazy protocol witness table cache variable for type UseCaseGroup.CodingKeys and conformance UseCaseGroup.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UseCaseGroup.CodingKeys and conformance UseCaseGroup.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UseCaseGroup.CodingKeys and conformance UseCaseGroup.CodingKeys;
  if (!lazy protocol witness table cache variable for type UseCaseGroup.CodingKeys and conformance UseCaseGroup.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UseCaseGroup.CodingKeys and conformance UseCaseGroup.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UseCaseGroup.CodingKeys and conformance UseCaseGroup.CodingKeys;
  if (!lazy protocol witness table cache variable for type UseCaseGroup.CodingKeys and conformance UseCaseGroup.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UseCaseGroup.CodingKeys and conformance UseCaseGroup.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UseCase and conformance UseCase()
{
  result = lazy protocol witness table cache variable for type UseCase and conformance UseCase;
  if (!lazy protocol witness table cache variable for type UseCase and conformance UseCase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UseCase and conformance UseCase);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UseCase and conformance UseCase;
  if (!lazy protocol witness table cache variable for type UseCase and conformance UseCase)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UseCase and conformance UseCase);
  }

  return result;
}

uint64_t _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined init with copy of NetworkConfig(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of NetworkManagerType(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for UseCase(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for UseCase(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for UseCase(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 56) = a2;
  return result;
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

uint64_t getEnumTagSinglePayload for StaticPIRParameters(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 56))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 48);
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

uint64_t storeEnumTagSinglePayload for StaticPIRParameters(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 56) = 0;
    }

    if (a2)
    {
      *(result + 48) = a2;
    }
  }

  return result;
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

uint64_t getEnumTagSinglePayload for PECDPParameters(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 40))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for PECDPParameters(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
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

  *(result + 40) = v3;
  return result;
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for StaticPECParameters(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 41))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for StaticPECParameters(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
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

  *(result + 41) = v3;
  return result;
}

void type metadata completion function for UseCaseGroup(uint64_t a1)
{
  type metadata accessor for HE.SecurityLevel();
  if (v1 <= 0x3F)
  {
    type metadata accessor for [String : UseCase]();
    if (v2 <= 0x3F)
    {
      type metadata accessor for NetworkConfig(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t getEnumTagSinglePayload for UseCaseGroup.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFB)
  {
    goto LABEL_17;
  }

  if (a2 + 5 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 5) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 5;
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

      return (*a1 | (v4 << 8)) - 5;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 5;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 6;
  v8 = v6 - 6;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for UseCaseGroup.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 5 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 5) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFB)
  {
    v4 = 0;
  }

  if (a2 > 0xFA)
  {
    v5 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
    *result = a2 + 5;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for StaticPECParameters.CodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for StaticPECParameters.CodingKeys(_WORD *result, int a2, int a3)
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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AllowListFormat.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x656D656863536548;
  v4 = 0xE900000000000073;
  if (v2 != 1)
  {
    v3 = 0x4765736143657355;
    v4 = 0xED00007370756F72;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x6172615065776C52;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xEE0073726574656DLL;
  }

  v7 = 0x656D656863536548;
  v8 = 0xE900000000000073;
  if (*a2 != 1)
  {
    v7 = 0x4765736143657355;
    v8 = 0xED00007370756F72;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x6172615065776C52;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEE0073726574656DLL;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AllowListFormat.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AllowListFormat.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AllowListFormat.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AllowListFormat.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized AllowListFormat.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance AllowListFormat.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEE0073726574656DLL;
  v4 = 0xE900000000000073;
  v5 = 0x656D656863536548;
  if (v2 != 1)
  {
    v5 = 0x4765736143657355;
    v4 = 0xED00007370756F72;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x6172615065776C52;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance AllowListFormat.CodingKeys()
{
  v1 = 0x656D656863536548;
  if (*v0 != 1)
  {
    v1 = 0x4765736143657355;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6172615065776C52;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance AllowListFormat.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized AllowListFormat.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AllowListFormat.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AllowListFormat.CodingKeys and conformance AllowListFormat.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AllowListFormat.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AllowListFormat.CodingKeys and conformance AllowListFormat.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AllowListFormat.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML15AllowListFormatV10CodingKeys33_B8A4852BFD758B685C2527B545478E76LLOGMd, &_ss22KeyedEncodingContainerVy8CipherML15AllowListFormatV10CodingKeys33_B8A4852BFD758B685C2527B545478E76LLOGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AllowListFormat.CodingKeys and conformance AllowListFormat.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy16CryptoKitPrivate2HEO13SecurityLevelOSayAC10RlweParamsOGGMd, &_sSDy16CryptoKitPrivate2HEO13SecurityLevelOSayAC10RlweParamsOGGMR);
  lazy protocol witness table accessor for type [HE.SecurityLevel : [HE.RlweParams]] and conformance <> [A : B]();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v15 = v13;
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16CryptoKitPrivate2HEO6SchemeOGMd, &_sSay16CryptoKitPrivate2HEO6SchemeOGMR);
    lazy protocol witness table accessor for type [HE.Scheme] and conformance <A> [A](&lazy protocol witness table cache variable for type [HE.Scheme] and conformance <A> [A], &lazy protocol witness table cache variable for type HE.Scheme and conformance HE.Scheme, MEMORY[0x277D02F58], MEMORY[0x277D83948]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = a4;
    v14 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS8CipherML12UseCaseGroupVGMd, &_sSDySS8CipherML12UseCaseGroupVGMR);
    lazy protocol witness table accessor for type [String : UseCaseGroup] and conformance <> [A : B]();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v11, v8);
}

unint64_t lazy protocol witness table accessor for type AllowListFormat.CodingKeys and conformance AllowListFormat.CodingKeys()
{
  result = lazy protocol witness table cache variable for type AllowListFormat.CodingKeys and conformance AllowListFormat.CodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListFormat.CodingKeys and conformance AllowListFormat.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListFormat.CodingKeys and conformance AllowListFormat.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AllowListFormat.CodingKeys and conformance AllowListFormat.CodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListFormat.CodingKeys and conformance AllowListFormat.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListFormat.CodingKeys and conformance AllowListFormat.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AllowListFormat.CodingKeys and conformance AllowListFormat.CodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListFormat.CodingKeys and conformance AllowListFormat.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListFormat.CodingKeys and conformance AllowListFormat.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AllowListFormat.CodingKeys and conformance AllowListFormat.CodingKeys;
  if (!lazy protocol witness table cache variable for type AllowListFormat.CodingKeys and conformance AllowListFormat.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListFormat.CodingKeys and conformance AllowListFormat.CodingKeys);
  }

  return result;
}

uint64_t AllowListFormat.init(from:)(void *a1)
{
  result = specialized AllowListFormat.init(from:)(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance AllowListFormat@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = specialized AllowListFormat.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t static AllowListParser.parseAllowList(allowListData:)(uint64_t a1, uint64_t a2)
{
  result = specialized static AllowListParser.parseAllowList(allowListData:)(a1, a2);
  if (v2)
  {
    return v4;
  }

  return result;
}

uint64_t static AllowListParser.encodeAllowList(allowListFormat:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  dispatch thunk of PropertyListEncoder.outputFormat.setter();
  lazy protocol witness table accessor for type AllowListFormat and conformance AllowListFormat();
  v3 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();

  return v3;
}

Swift::Int UseCase.CodingKeys.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x22AA61420](a1 & 1);
  return Hasher._finalize()();
}

uint64_t UseCase.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 6514032;
  }

  else
  {
    return 7498096;
  }
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance UseCase.CodingKeys()
{
  if (*v0)
  {
    return 6514032;
  }

  else
  {
    return 7498096;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance UseCase.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized UseCase.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance UseCase.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UseCase.CodingKeys and conformance UseCase.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance UseCase.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UseCase.CodingKeys and conformance UseCase.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t UseCase.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8CipherML7UseCaseO10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy8CipherML7UseCaseO10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type UseCase.CodingKeys and conformance UseCase.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v9 = KeyedDecodingContainer.allKeys.getter();
    v10 = (2 * *(v9 + 16)) | 1;
    v27[2] = v9;
    v27[3] = v9 + 32;
    v28 = 0;
    v29 = v10;
    v11 = specialized Collection<>.popFirst()();
    if (v11 == 2 || v28 != v29 >> 1)
    {
      v17 = type metadata accessor for DecodingError();
      swift_allocError();
      v19 = v18;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      *v19 = &type metadata for UseCase;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v17 - 8) + 104))(v19, *MEMORY[0x277D84160], v17);
      swift_willThrow();
      (*(v6 + 8))(v8, v5);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v11)
      {
        v31 = 1;
        lazy protocol witness table accessor for type StaticPECParameters and conformance StaticPECParameters();
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v6 + 8))(v8, v5);
        swift_unknownObjectRelease();
        v12 = 0;
        v13 = v21;
        v14 = v22;
        v15 = v23;
        v16 = v24;
        v30 = v24;
        v26 = 0;
      }

      else
      {
        v31 = 0;
        lazy protocol witness table accessor for type StaticPIRParameters and conformance StaticPIRParameters();
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v6 + 8))(v8, v5);
        swift_unknownObjectRelease();
        v13 = v21;
        v14 = v22;
        v15 = v23;
        v16 = v24;
        v27[0] = *v25;
        *(v27 + 7) = *&v25[7];
        v12 = 1;
        v30 = 1;
      }

      *a2 = v13;
      *(a2 + 16) = v14;
      *(a2 + 32) = v15;
      *(a2 + 40) = v16;
      *(a2 + 41) = v27[0];
      *(a2 + 48) = *(v27 + 7);
      *(a2 + 56) = v12;
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t UseCase.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML7UseCaseO10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy8CipherML7UseCaseO10CodingKeysOGMR);
  v16 = *(v4 - 8);
  v17 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - v5;
  v7 = *v2;
  v8 = v2[1];
  v9 = v2[2];
  v10 = v2[4];
  v14 = v2[3];
  v15 = v10;
  v25 = *(v2 + 40);
  v11 = *(v2 + 56);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type UseCase.CodingKeys and conformance UseCase.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = v7;
  v19 = v8;
  v20 = v9;
  v21 = v14;
  v22 = v15;
  if (v11)
  {
    v23 = v25;
    *v24 = *(v2 + 41);
    *&v24[7] = v2[6];
    v26 = 0;
    lazy protocol witness table accessor for type StaticPIRParameters and conformance StaticPIRParameters();
  }

  else
  {
    v23 = v25 & 1;
    v26 = 1;
    lazy protocol witness table accessor for type StaticPECParameters and conformance StaticPECParameters();
  }

  v12 = v17;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v16 + 8))(v6, v12);
}

uint64_t specialized static AllowListParser.parseAllowList(allowListData:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  lazy protocol witness table accessor for type AllowListFormat and conformance AllowListFormat();
  dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
  if (v2)
  {
    if (one-time initialization token for daemon != -1)
    {
      swift_once();
    }

    v3 = type metadata accessor for Logger();
    __swift_project_value_buffer(v3, static Logger.daemon);
    v4 = v2;
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.fault.getter();

    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      *v7 = 138543362;
      v9 = v2;
      v10 = _swift_stdlib_bridgeErrorToNSError();
      *(v7 + 4) = v10;
      *v8 = v10;
      _os_log_impl(&dword_224E26000, v5, v6, "Unable to parse list of use-cases due to '%{public}@'", v7, 0xCu);
      outlined destroy of NSObject?(v8);
      MEMORY[0x22AA61F40](v8, -1, -1);
      MEMORY[0x22AA61F40](v7, -1, -1);
    }

    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_224E26000, v11, v12, "Trying to fallback to parsing as previous version of allow list format...", v13, 2u);
      MEMORY[0x22AA61F40](v13, -1, -1);
    }

    lazy protocol witness table accessor for type AllowListMigrationV1.AllowListFormat and conformance AllowListMigrationV1.AllowListFormat();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    v14 = AllowListMigrationV1.AllowListFormat.convertToCurrent()(v16, v17, v18);

    return v14;
  }

  else
  {

    return v16;
  }
}

unint64_t specialized AllowListFormat.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AllowListFormat.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized AllowListFormat.init(from:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8CipherML15AllowListFormatV10CodingKeys33_B8A4852BFD758B685C2527B545478E76LLOGMd, &_ss22KeyedDecodingContainerVy8CipherML15AllowListFormatV10CodingKeys33_B8A4852BFD758B685C2527B545478E76LLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AllowListFormat.CodingKeys and conformance AllowListFormat.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy16CryptoKitPrivate2HEO13SecurityLevelOSayAC10RlweParamsOGGMd, &_sSDy16CryptoKitPrivate2HEO13SecurityLevelOSayAC10RlweParamsOGGMR);
  v9 = 0;
  lazy protocol witness table accessor for type [HE.SecurityLevel : [HE.RlweParams]] and conformance <> [A : B]();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v7 = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16CryptoKitPrivate2HEO6SchemeOGMd, &_sSay16CryptoKitPrivate2HEO6SchemeOGMR);
  v9 = 1;
  lazy protocol witness table accessor for type [HE.Scheme] and conformance <A> [A](&lazy protocol witness table cache variable for type [HE.Scheme] and conformance <A> [A], &lazy protocol witness table cache variable for type HE.Scheme and conformance HE.Scheme, MEMORY[0x277D02F70], MEMORY[0x277D83978]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS8CipherML12UseCaseGroupVGMd, &_sSDySS8CipherML12UseCaseGroupVGMR);
  v9 = 2;
  lazy protocol witness table accessor for type [String : UseCaseGroup] and conformance <> [A : B]();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v3 + 8))(v5, v2);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return v7;
}

unint64_t lazy protocol witness table accessor for type AllowListFormat and conformance AllowListFormat()
{
  result = lazy protocol witness table cache variable for type AllowListFormat and conformance AllowListFormat;
  if (!lazy protocol witness table cache variable for type AllowListFormat and conformance AllowListFormat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListFormat and conformance AllowListFormat);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type AllowListFormat and conformance AllowListFormat;
  if (!lazy protocol witness table cache variable for type AllowListFormat and conformance AllowListFormat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListFormat and conformance AllowListFormat);
  }

  return result;
}

uint64_t specialized UseCase.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7498096 && a2 == 0xE300000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6514032 && a2 == 0xE300000000000000)
  {

    return 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t lazy protocol witness table accessor for type UseCase.CodingKeys and conformance UseCase.CodingKeys()
{
  result = lazy protocol witness table cache variable for type UseCase.CodingKeys and conformance UseCase.CodingKeys;
  if (!lazy protocol witness table cache variable for type UseCase.CodingKeys and conformance UseCase.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UseCase.CodingKeys and conformance UseCase.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UseCase.CodingKeys and conformance UseCase.CodingKeys;
  if (!lazy protocol witness table cache variable for type UseCase.CodingKeys and conformance UseCase.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UseCase.CodingKeys and conformance UseCase.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UseCase.CodingKeys and conformance UseCase.CodingKeys;
  if (!lazy protocol witness table cache variable for type UseCase.CodingKeys and conformance UseCase.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UseCase.CodingKeys and conformance UseCase.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UseCase.CodingKeys and conformance UseCase.CodingKeys;
  if (!lazy protocol witness table cache variable for type UseCase.CodingKeys and conformance UseCase.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UseCase.CodingKeys and conformance UseCase.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticPECParameters and conformance StaticPECParameters()
{
  result = lazy protocol witness table cache variable for type StaticPECParameters and conformance StaticPECParameters;
  if (!lazy protocol witness table cache variable for type StaticPECParameters and conformance StaticPECParameters)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticPECParameters and conformance StaticPECParameters);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StaticPECParameters and conformance StaticPECParameters;
  if (!lazy protocol witness table cache variable for type StaticPECParameters and conformance StaticPECParameters)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticPECParameters and conformance StaticPECParameters);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StaticPIRParameters and conformance StaticPIRParameters()
{
  result = lazy protocol witness table cache variable for type StaticPIRParameters and conformance StaticPIRParameters;
  if (!lazy protocol witness table cache variable for type StaticPIRParameters and conformance StaticPIRParameters)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticPIRParameters and conformance StaticPIRParameters);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StaticPIRParameters and conformance StaticPIRParameters;
  if (!lazy protocol witness table cache variable for type StaticPIRParameters and conformance StaticPIRParameters)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StaticPIRParameters and conformance StaticPIRParameters);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type AllowListMigrationV1.AllowListFormat and conformance AllowListMigrationV1.AllowListFormat()
{
  result = lazy protocol witness table cache variable for type AllowListMigrationV1.AllowListFormat and conformance AllowListMigrationV1.AllowListFormat;
  if (!lazy protocol witness table cache variable for type AllowListMigrationV1.AllowListFormat and conformance AllowListMigrationV1.AllowListFormat)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AllowListMigrationV1.AllowListFormat and conformance AllowListMigrationV1.AllowListFormat);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [HE.RlweParams] and conformance <A> [A](unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay16CryptoKitPrivate2HEO10RlweParamsOGMd, &_sSay16CryptoKitPrivate2HEO10RlweParamsOGMR);
    lazy protocol witness table accessor for type HE.SecurityLevel and conformance HE.SecurityLevel(a2, MEMORY[0x277D02EC8], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [HE.Scheme] and conformance <A> [A](unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay16CryptoKitPrivate2HEO6SchemeOGMd, &_sSay16CryptoKitPrivate2HEO6SchemeOGMR);
    lazy protocol witness table accessor for type HE.SecurityLevel and conformance HE.SecurityLevel(a2, MEMORY[0x277D02F50], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay16CryptoKitPrivate2HEO6SchemeOGMd, &_sSay16CryptoKitPrivate2HEO6SchemeOGMR);
    _s16CryptoKitPrivate2HEO13SecurityLevelOAESEAAWlTm_0(a2, MEMORY[0x277D02F50], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type HE.SecurityLevel and conformance HE.SecurityLevel(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t one-time initialization function for daemon(uint64_t a1)
{
  return one-time initialization function for daemon(a1, static Logger.daemon, 0x6E6F6D656164, 0xE600000000000000);
}

{
  return one-time initialization function for daemon(a1, static OSSignposter.daemon, &one-time initialization token for daemon, static Logger.daemon, one-time initialization function for daemon);
}

uint64_t one-time initialization function for framework(uint64_t a1)
{
  return one-time initialization function for daemon(a1, static Logger.framework, 0x726F77656D617266, 0xE90000000000006BLL);
}

{
  return one-time initialization function for daemon(a1, static OSSignposter.framework, &one-time initialization token for framework, static Logger.framework, one-time initialization function for framework);
}

uint64_t one-time initialization function for daemon(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v5, a2);
  __swift_project_value_buffer(v5, a2);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for daemon(uint64_t a1, uint64_t *a2, void *a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for Logger();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for OSSignposter();
  __swift_allocate_value_buffer(v12, a2);
  __swift_project_value_buffer(v12, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v13 = __swift_project_value_buffer(v8, a4);
  (*(v9 + 16))(v11, v13, v8);
  return OSSignposter.init(logger:)();
}

uint64_t static Logger.daemon.getter@<X0>(void *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  if (*a1 == -1)
  {
    v7 = a2(0);
  }

  else
  {
    swift_once();
    v7 = a2(0);
  }

  v8 = v7;
  v9 = __swift_project_value_buffer(v7, a3);
  v10 = *(*(v8 - 8) + 16);

  return v10(a5, v9, v8);
}

uint64_t SecretKey.key.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for SecretKey(0) + 20);
  v4 = type metadata accessor for HE.SerializedSecretKey();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for SecretKey(uint64_t a1)
{
  result = type metadata singleton initialization cache for SecretKey;
  if (!type metadata singleton initialization cache for SecretKey)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void SecretKey.init(date:)(uint64_t a1@<X0>, void *a2@<X8>)
{
  Date.timeIntervalSince1970.getter();
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_8;
  }

  if (v4 <= -1.0)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v4 >= 1.84467441e19)
  {
LABEL_9:
    __break(1u);
    return;
  }

  *a2 = v4;
  type metadata accessor for SecretKey(0);
  HE.SerializedSecretKey.init()();
  v5 = type metadata accessor for Date();
  v6 = *(*(v5 - 8) + 8);

  v6(a1, v5);
}

uint64_t SecretKey.init(timestamp:key:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  *a3 = a1;
  v5 = *(type metadata accessor for SecretKey(0) + 20);
  v6 = type metadata accessor for HE.SerializedSecretKey();
  v7 = *(*(v6 - 8) + 32);

  return v7(&a3[v5], a2, v6);
}

Swift::Int SecretKey.Keys.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x22AA61420](a1 & 1);
  return Hasher._finalize()();
}

uint64_t SecretKey.Keys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 7955819;
  }

  else
  {
    return 0x6D617473656D6974;
  }
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance SecretKey.Keys()
{
  if (*v0)
  {
    return 7955819;
  }

  else
  {
    return 0x6D617473656D6974;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SecretKey.Keys@<X0>(uint64_t a1@<X0>, CipherML::SecretKey::Keys_optional *a2@<X8>, uint64_t a3@<X1>)
{
  result = specialized SecretKey.Keys.init(stringValue:)(a1, a3);
  a2->value = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SecretKey.Keys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SecretKey.Keys and conformance SecretKey.Keys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SecretKey.Keys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SecretKey.Keys and conformance SecretKey.Keys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SecretKey.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v17 = a2;
  v3 = type metadata accessor for HE.SerializedSecretKey();
  v16 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8CipherML9SecretKeyV4KeysOGMd, &_ss22KeyedDecodingContainerVy8CipherML9SecretKeyV4KeysOGMR);
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for SecretKey(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SecretKey.Keys and conformance SecretKey.Keys();
  v12 = v20;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v12)
  {
    v13 = v18;
    LOBYTE(v21) = 0;
    *v11 = KeyedDecodingContainer.decode(_:forKey:)();
    v22 = 1;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    HE.SerializedSecretKey.init(seed:)();
    (*(v13 + 8))(v8, v19);
    (*(v16 + 32))(v11 + *(v9 + 20), v5, v3);
    outlined init with take of SecretKey(v11, v17);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t SecretKey.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML9SecretKeyV4KeysOGMd, &_ss22KeyedEncodingContainerVy8CipherML9SecretKeyV4KeysOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SecretKey.Keys and conformance SecretKey.Keys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v10) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for SecretKey(0);
    v10 = HE.SerializedSecretKey.seed.getter();
    v11 = v7;
    v9[15] = 1;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v10, v11);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t specialized SecretKey.Keys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 7955819 && a2 == 0xE300000000000000)
  {

    return 1;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

unint64_t lazy protocol witness table accessor for type SecretKey.Keys and conformance SecretKey.Keys()
{
  result = lazy protocol witness table cache variable for type SecretKey.Keys and conformance SecretKey.Keys;
  if (!lazy protocol witness table cache variable for type SecretKey.Keys and conformance SecretKey.Keys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SecretKey.Keys and conformance SecretKey.Keys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SecretKey.Keys and conformance SecretKey.Keys;
  if (!lazy protocol witness table cache variable for type SecretKey.Keys and conformance SecretKey.Keys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SecretKey.Keys and conformance SecretKey.Keys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SecretKey.Keys and conformance SecretKey.Keys;
  if (!lazy protocol witness table cache variable for type SecretKey.Keys and conformance SecretKey.Keys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SecretKey.Keys and conformance SecretKey.Keys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SecretKey.Keys and conformance SecretKey.Keys;
  if (!lazy protocol witness table cache variable for type SecretKey.Keys and conformance SecretKey.Keys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SecretKey.Keys and conformance SecretKey.Keys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Data and conformance Data()
{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Data and conformance Data;
  if (!lazy protocol witness table cache variable for type Data and conformance Data)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Data and conformance Data);
  }

  return result;
}

uint64_t outlined init with take of SecretKey(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SecretKey(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata completion function for SecretKey(uint64_t a1)
{
  result = type metadata accessor for HE.SerializedSecretKey();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t specialized DatabaseTable<>.get(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[7] = a3;
  v4[8] = v3;
  v4[5] = a1;
  v4[6] = a2;
  type metadata accessor for BinaryDecodingOptions();
  v4[9] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy8CipherML12StoredConfigC_QPGSgMd, &_s10Foundation9PredicateVy8CipherML12StoredConfigC_QPGSgMR);
  v4[10] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15FetchDescriptorVy8CipherML12StoredConfigCGMd, &_s9SwiftData15FetchDescriptorVy8CipherML12StoredConfigCGMR);
  v4[11] = v5;
  v4[12] = *(v5 - 8);
  v4[13] = swift_task_alloc();
  v4[14] = type metadata accessor for ConfigTable();
  lazy protocol witness table accessor for type EvaluationKeyConfigTable and conformance EvaluationKeyConfigTable(&lazy protocol witness table cache variable for type ConfigTable and conformance ConfigTable, type metadata accessor for ConfigTable, &protocol conformance descriptor for ConfigTable);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](specialized DatabaseTable<>.get(_:), v7, v6);
}

{
  v4[5] = a3;
  v4[6] = v3;
  v4[3] = a1;
  v4[4] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy8CipherML25StoredEvaluationKeyConfigC_QPGSgMd, &_s10Foundation9PredicateVy8CipherML25StoredEvaluationKeyConfigC_QPGSgMR);
  v4[7] = swift_task_alloc();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9SwiftData15FetchDescriptorVy8CipherML25StoredEvaluationKeyConfigCGMd, &_s9SwiftData15FetchDescriptorVy8CipherML25StoredEvaluationKeyConfigCGMR);
  v4[8] = v5;
  v4[9] = *(v5 - 8);
  v4[10] = swift_task_alloc();
  v4[11] = type metadata accessor for EvaluationKeyConfigTable();
  lazy protocol witness table accessor for type EvaluationKeyConfigTable and conformance EvaluationKeyConfigTable(&lazy protocol witness table cache variable for type EvaluationKeyConfigTable and conformance EvaluationKeyConfigTable, type metadata accessor for EvaluationKeyConfigTable, &protocol conformance descriptor for EvaluationKeyConfigTable);
  v7 = dispatch thunk of Actor.unownedExecutor.getter();

  return MEMORY[0x2822009F8](specialized DatabaseTable<>.get(_:), v7, v6);
}

uint64_t specialized DatabaseTable<>.get(_:)()
{
  v1 = v0[10];
  v2 = v0[7];
  v3 = v0[6];
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v0[4] = type metadata accessor for StoredConfig(0);
  Predicate.init(_:)();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy8CipherML12StoredConfigC_QPGMd, &_s10Foundation9PredicateVy8CipherML12StoredConfigC_QPGMR);
  (*(*(v5 - 8) + 56))(v1, 0, 1, v5);
  lazy protocol witness table accessor for type EvaluationKeyConfigTable and conformance EvaluationKeyConfigTable(&lazy protocol witness table cache variable for type StoredConfig and conformance StoredConfig, type metadata accessor for StoredConfig, &protocol conformance descriptor for StoredConfig);
  FetchDescriptor.init(predicate:sortBy:)();
  lazy protocol witness table accessor for type EvaluationKeyConfigTable and conformance EvaluationKeyConfigTable(&lazy protocol witness table cache variable for type ConfigTable and conformance ConfigTable, type metadata accessor for ConfigTable, &protocol conformance descriptor for ConfigTable);
  ModelActor.modelContext.getter();
  v6 = dispatch thunk of ModelContext.fetch<A>(_:)();

  if (v6 >> 62)
  {
    if (v6 < 0)
    {
      v13 = v6;
    }

    else
    {
      v13 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    result = MEMORY[0x22AA610B0](v13);
    if (result)
    {
      goto LABEL_7;
    }

LABEL_15:
    (*(v0[12] + 8))(v0[13], v0[11]);

    v10 = type metadata accessor for AspireApiConfig(0);
    v12 = 1;
    goto LABEL_2;
  }

  result = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_7:
  if ((v6 & 0xC000000000000001) != 0)
  {
    v9 = MEMORY[0x22AA60F70](0, v6);
  }

  else
  {
    if (!*((v6 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v9 = *(v6 + 32);
  }

  v10 = type metadata accessor for AspireApiConfig(0);
  v0[2] = (*(*v9 + 184))();
  v0[3] = v11;
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type EvaluationKeyConfigTable and conformance EvaluationKeyConfigTable(&lazy protocol witness table cache variable for type AspireApiConfig and conformance AspireApiConfig, type metadata accessor for AspireApiConfig, &protocol conformance descriptor for AspireApiConfig);
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  (*(v0[12] + 8))(v0[13], v0[11]);

  v12 = 0;
LABEL_2:
  (*(*(v10 - 8) + 56))(v0[5], v12, 1, v10);

  v7 = v0[1];

  return v7();
}

{
  v1 = v0[7];
  v3 = v0[4];
  v2 = v0[5];
  v4 = swift_task_alloc();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
  v0[2] = type metadata accessor for StoredEvaluationKeyConfig(0);
  Predicate.init(_:)();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation9PredicateVy8CipherML25StoredEvaluationKeyConfigC_QPGMd, &_s10Foundation9PredicateVy8CipherML25StoredEvaluationKeyConfigC_QPGMR);
  (*(*(v5 - 8) + 56))(v1, 0, 1, v5);
  lazy protocol witness table accessor for type EvaluationKeyConfigTable and conformance EvaluationKeyConfigTable(&lazy protocol witness table cache variable for type StoredEvaluationKeyConfig and conformance StoredEvaluationKeyConfig, type metadata accessor for StoredEvaluationKeyConfig, &protocol conformance descriptor for StoredEvaluationKeyConfig);
  FetchDescriptor.init(predicate:sortBy:)();
  lazy protocol witness table accessor for type EvaluationKeyConfigTable and conformance EvaluationKeyConfigTable(&lazy protocol witness table cache variable for type EvaluationKeyConfigTable and conformance EvaluationKeyConfigTable, type metadata accessor for EvaluationKeyConfigTable, &protocol conformance descriptor for EvaluationKeyConfigTable);
  ModelActor.modelContext.getter();
  v10 = dispatch thunk of ModelContext.fetch<A>(_:)();

  if (v10 >> 62)
  {
    if (v10 < 0)
    {
      v12 = v10;
    }

    else
    {
      v12 = v10 & 0xFFFFFFFFFFFFFF8;
    }

    result = MEMORY[0x22AA610B0](v12);
    if (result)
    {
      goto LABEL_7;
    }

LABEL_15:
    (*(v0[9] + 8))(v0[10], v0[8]);

    v11 = 1;
    goto LABEL_2;
  }

  result = *((v10 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    goto LABEL_15;
  }

LABEL_7:
  if ((v10 & 0xC000000000000001) != 0)
  {
    MEMORY[0x22AA60F70](0, v10);
  }

  else
  {
    if (!*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }
  }

  StoredEvaluationKeyConfig.value.getter();
  (*(v0[9] + 8))(v0[10], v0[8]);

  v11 = 0;
LABEL_2:
  v6 = v0[3];
  v7 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  (*(*(v7 - 8) + 56))(v6, v11, 1, v7);

  v8 = v0[1];

  return v8();
}

uint64_t RequestsManager.CMLUseCaseStatusBuilder.useCase.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t RequestsManager.CMLUseCaseStatusBuilder.serializedDynamicConfig.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 32);
  outlined copy of Data?(v1, *(v0 + 40));
  return v1;
}

uint64_t RequestsManager.CMLUseCaseStatusBuilder.serializedDynamicConfig.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 32);
  v6 = *(v2 + 40);
  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return outlined consume of Data?(v5, v6);
}

uint64_t RequestsManager.CMLUseCaseStatusBuilder.serializedEvaluationKeyConfig.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 48);
  outlined copy of Data?(v1, *(v0 + 56));
  return v1;
}

uint64_t RequestsManager.CMLUseCaseStatusBuilder.serializedEvaluationKeyConfig.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  v5 = *(v2 + 48);
  v6 = *(v2 + 56);
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return outlined consume of Data?(v5, v6);
}

uint64_t key path setter for RequestsManager.CMLUseCaseStatusBuilder.lastUsed : RequestsManager.CMLUseCaseStatusBuilder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, &v8 - v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return (*(**a2 + 192))(v6);
}

uint64_t outlined assign with take of Date?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t key path setter for RequestsManager.CMLUseCaseStatusBuilder.keyGenerationTime : RequestsManager.CMLUseCaseStatusBuilder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, &v8 - v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return (*(**a2 + 216))(v6);
}

uint64_t RequestsManager.CMLUseCaseStatusBuilder.lastUsed.getter@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  swift_beginAccess();
  return outlined init with copy of AMDPbHEConfig.OneOf_Config?(v2 + v4, a2, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
}

uint64_t key path setter for RequestsManager.CMLUseCaseStatusBuilder.keyExpirationTime : RequestsManager.CMLUseCaseStatusBuilder(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, &v8 - v5, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return (*(**a2 + 240))(v6);
}

uint64_t RequestsManager.CMLUseCaseStatusBuilder.lastUsed.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  outlined assign with take of Date?(a1, v2 + v4);
  return swift_endAccess();
}

__n128 RequestsManager.CMLUseCaseStatusBuilder.cacheStatus.getter@<Q0>(__n128 *a1@<X8>)
{
  v3 = (v1 + OBJC_IVAR____TtCC8CipherML15RequestsManager23CMLUseCaseStatusBuilder_cacheStatus);
  swift_beginAccess();
  v4 = v3[1].n128_u64[0];
  v5 = v3[1].n128_u8[8];
  result = *v3;
  *a1 = *v3;
  a1[1].n128_u64[0] = v4;
  a1[1].n128_u8[8] = v5;
  return result;
}

__n128 RequestsManager.CMLUseCaseStatusBuilder.cacheStatus.setter(__n128 *a1)
{
  v6 = *a1;
  v2 = a1[1].n128_u64[0];
  v3 = a1[1].n128_u8[8];
  v4 = (v1 + OBJC_IVAR____TtCC8CipherML15RequestsManager23CMLUseCaseStatusBuilder_cacheStatus);
  swift_beginAccess();
  result = v6;
  *v4 = v6;
  v4[1].n128_u64[0] = v2;
  v4[1].n128_u8[8] = v3;
  return result;
}

uint64_t RequestsManager.CMLUseCaseStatusBuilder.__allocating_init(useCase:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  RequestsManager.CMLUseCaseStatusBuilder.init(useCase:)(a1, a2);
  return v4;
}

uint64_t RequestsManager.CMLUseCaseStatusBuilder.init(useCase:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 32) = xmmword_225025060;
  *(v2 + 48) = xmmword_225025060;
  v5 = OBJC_IVAR____TtCC8CipherML15RequestsManager23CMLUseCaseStatusBuilder_lastUsed;
  v6 = type metadata accessor for Date();
  v7 = *(*(v6 - 8) + 56);
  v7(v2 + v5, 1, 1, v6);
  v7(v2 + OBJC_IVAR____TtCC8CipherML15RequestsManager23CMLUseCaseStatusBuilder_keyGenerationTime, 1, 1, v6);
  v7(v2 + OBJC_IVAR____TtCC8CipherML15RequestsManager23CMLUseCaseStatusBuilder_keyExpirationTime, 1, 1, v6);
  v8 = v2 + OBJC_IVAR____TtCC8CipherML15RequestsManager23CMLUseCaseStatusBuilder_cacheStatus;
  *(v8 + 8) = 0;
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *v8 = 0;
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return v2;
}

id RequestsManager.CMLUseCaseStatusBuilder.build(_:)(uint64_t a1)
{
  v47 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v39 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v39 - v6;
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v39 - v10;
  v12 = v1[2];
  v13 = v1[3];
  v40 = (*(*v1 + 136))(v9);
  v15 = v14;
  v39 = (*(*v1 + 160))();
  v17 = v16;
  v18 = (*(*v1 + 184))();
  v19 = (*(*v1 + 208))(v18);
  v20 = (*(*v1 + 232))(v19);
  v21 = *(*v1 + 256);
  v22 = v21(v52, v20);
  v46 = v52[0];
  v23 = v21(v51, v22);
  v45 = v51[1];
  v24 = v21(v50, v23);
  v43 = v50[2];
  v21(v48, v24);
  v42 = v49;
  v44 = MEMORY[0x22AA609C0](v12, v13);
  if (v15 >> 60 == 15)
  {
    isa = 0;
  }

  else
  {
    v25 = v40;
    isa = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(v25, v15);
  }

  if (v17 >> 60 == 15)
  {
    v40 = 0;
  }

  else
  {
    v26 = v39;
    v40 = Data._bridgeToObjectiveC()().super.isa;
    outlined consume of Data?(v26, v17);
  }

  v27 = type metadata accessor for Date();
  v28 = *(v27 - 8);
  v29 = *(v28 + 48);
  v30 = 0;
  if (v29(v11, 1, v27) != 1)
  {
    v30 = Date._bridgeToObjectiveC()().super.isa;
    (*(v28 + 8))(v11, v27);
  }

  if (v29(v7, 1, v27) == 1)
  {
    v31 = 0;
  }

  else
  {
    v31 = Date._bridgeToObjectiveC()().super.isa;
    (*(v28 + 8))(v7, v27);
  }

  if (v29(v4, 1, v27) == 1)
  {
    v32 = 0;
  }

  else
  {
    v32 = Date._bridgeToObjectiveC()().super.isa;
    (*(v28 + 8))(v4, v27);
  }

  v33 = objc_allocWithZone(CMLUseCaseStatus);
  v34 = v44;
  v35 = isa;
  v36 = v40;
  v37 = [v33 initWithUseCase:v44 serializedDynamicConfig:isa serializedEvaluationKeyConfig:v40 lastUsed:v30 keyGenerationTime:v31 keyExpirationTime:v32 cacheCapacity:v46 cacheElementCount:v45 cacheEntryMinutesToLive:v43 cacheEvictionPolicy:v42 status:v47];

  return v37;
}

uint64_t RequestsManager.CMLUseCaseStatusBuilder.withDynamicConfig(_:)(uint64_t a1, unint64_t a2)
{
  v5 = *(*v2 + 144);
  outlined copy of Data?(a1, a2);
  v5(a1, a2);
}

uint64_t RequestsManager.CMLUseCaseStatusBuilder.withEvaluationKeyConfig(_:)(uint64_t a1, unint64_t a2)
{
  v5 = *(*v2 + 168);
  outlined copy of Data?(a1, a2);
  v5(a1, a2);
}

uint64_t RequestsManager.CMLUseCaseStatusBuilder.withLastUsed(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v7 - v4;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, &v7 - v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*v1 + 192))(v5);
}

uint64_t RequestsManager.CMLUseCaseStatusBuilder.withKeyGenerationTime(_:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v7 - v4;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a1, &v7 - v4, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  (*(*v1 + 216))(v5);
}

uint64_t RequestsManager.CMLUseCaseStatusBuilder.withCacheStatus(_:)(__int128 *a1)
{
  v2 = *(a1 + 2);
  v3 = *(a1 + 24);
  v5 = *a1;
  v6 = v2;
  v7 = v3;
  (*(*v1 + 264))(&v5);
}

void *RequestsManager.CMLUseCaseStatusBuilder.deinit()
{

  outlined consume of Data?(*(v0 + 32), *(v0 + 40));
  outlined consume of Data?(*(v0 + 48), *(v0 + 56));
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + OBJC_IVAR____TtCC8CipherML15RequestsManager23CMLUseCaseStatusBuilder_lastUsed, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + OBJC_IVAR____TtCC8CipherML15RequestsManager23CMLUseCaseStatusBuilder_keyGenerationTime, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + OBJC_IVAR____TtCC8CipherML15RequestsManager23CMLUseCaseStatusBuilder_keyExpirationTime, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  return v0;
}

uint64_t RequestsManager.CMLUseCaseStatusBuilder.__deallocating_deinit()
{

  outlined consume of Data?(*(v0 + 32), *(v0 + 40));
  outlined consume of Data?(*(v0 + 48), *(v0 + 56));
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + OBJC_IVAR____TtCC8CipherML15RequestsManager23CMLUseCaseStatusBuilder_lastUsed, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + OBJC_IVAR____TtCC8CipherML15RequestsManager23CMLUseCaseStatusBuilder_keyGenerationTime, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + OBJC_IVAR____TtCC8CipherML15RequestsManager23CMLUseCaseStatusBuilder_keyExpirationTime, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);

  return swift_deallocClassInstance();
}

uint64_t RequestsManager.queryStatus(for:options:)(uint64_t a1, uint64_t a2)
{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  v3[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](RequestsManager.queryStatus(for:options:), 0, 0);
}

uint64_t RequestsManager.queryStatus(for:options:)()
{
  v1 = v0[3];
  if (v1)
  {
    v6 = v0[4];
    v7 = v0[5];
    v8 = v0[2];
    v9 = type metadata accessor for TaskPriority();
    (*(*(v9 - 8) + 56))(v7, 1, 1, v9);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v6;
    v10[5] = v8;
    v10[6] = v1;

    v11 = v8;
    _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v7, &async function pointer to partial apply for closure #1 in RequestsManager.queryStatus(for:options:), v10);

    v12 = v0[1];

    return v12(0);
  }

  else
  {
    v2 = swift_task_alloc();
    v0[6] = v2;
    *v2 = v0;
    v2[1] = RequestsManager.queryStatus(for:options:);
    v3 = v0[3];
    v4 = v0[2];

    return RequestsManager.handleOptions(clientConfig:options:)(v4, v3);
  }
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

    return MEMORY[0x2822009F8](RequestsManager.queryStatus(for:options:), 0, 0);
  }
}

{
  v1 = [*(v0 + 16) useCase];
  v2 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v4 = v3;

  *(v0 + 56) = v4;
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = RequestsManager.queryStatus(for:options:);

  return RequestsManager.fetchStatus(useCase:)(v2, v4);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t RequestsManager.queryStatus(for:options:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {

    return MEMORY[0x2822009F8](RequestsManager.queryStatus(for:options:), 0, 0);
  }

  else
  {

    v5 = *(v4 + 8);

    return v5(a1);
  }
}

uint64_t closure #1 in RequestsManager.queryStatus(for:options:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = swift_task_alloc();
  *(v6 + 16) = v9;
  *v9 = v6;
  v9[1] = closure #1 in RequestsManager.queryStatus(for:options:);

  return RequestsManager.handleOptions(clientConfig:options:)(a5, a6);
}

uint64_t closure #1 in RequestsManager.queryStatus(for:options:)()
{
  v2 = *v1;
  *(v2 + 24) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](closure #1 in RequestsManager.queryStatus(for:options:), 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

{
  if (one-time initialization token for daemon != -1)
  {
    swift_once();
  }

  v1 = *(v0 + 24);
  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.daemon);
  v3 = v1;
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  v6 = os_log_type_enabled(v4, v5);
  v7 = *(v0 + 24);
  if (v6)
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138543362;
    v10 = v7;
    v11 = _swift_stdlib_bridgeErrorToNSError();
    *(v8 + 4) = v11;
    *v9 = v11;
    _os_log_impl(&dword_224E26000, v4, v5, "async queryStatus caught an error: %{public}@", v8, 0xCu);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v9, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x22AA61F40](v9, -1, -1);
    MEMORY[0x22AA61F40](v8, -1, -1);
  }

  else
  {
  }

  v12 = *(v0 + 8);

  return v12();
}

uint64_t RequestsManager.handleOptions(clientConfig:options:)(uint64_t a1, uint64_t a2)
{
  v3[22] = a2;
  v3[23] = v2;
  v3[21] = a1;
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR) - 8);
  v3[24] = v4;
  v3[25] = *(v4 + 64);
  v3[26] = swift_task_alloc();
  v3[27] = swift_task_alloc();
  type metadata accessor for AspireApiPECConfig(0);
  v3[28] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v3[29] = swift_task_alloc();
  v3[30] = swift_task_alloc();
  v3[31] = type metadata accessor for AspireApiPIRConfig(0);
  v3[32] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  v3[33] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  v3[34] = swift_task_alloc();
  v3[35] = swift_task_alloc();
  v3[36] = swift_task_alloc();
  type metadata accessor for NetworkConfig(0);
  v3[37] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
  v3[38] = swift_task_alloc();
  v3[39] = type metadata accessor for NetworkManagerType(0);
  v3[40] = swift_task_alloc();
  v5 = type metadata accessor for UserIdentifier(0);
  v3[41] = v5;
  v3[42] = *(v5 - 8);
  v3[43] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  v3[44] = swift_task_alloc();
  v3[45] = swift_task_alloc();

  return MEMORY[0x2822009F8](RequestsManager.handleOptions(clientConfig:options:), 0, 0);
}

uint64_t RequestsManager.handleOptions(clientConfig:options:)()
{
  v110 = v0;
  v1 = *(v0 + 176);
  v2 = [*(v0 + 168) useCase];
  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v5 = v4;

  *(v0 + 368) = v3;
  *(v0 + 376) = v5;
  if ((v1 & 2) != 0)
  {
    if ((v1 & 4) != 0)
    {
      if (one-time initialization token for daemon != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      __swift_project_value_buffer(v29, static Logger.daemon);
      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_224E26000, v30, v31, "Options contains both mark active and mark inactive", v32, 2u);
        MEMORY[0x22AA61F40](v32, -1, -1);
      }
    }

    v33 = *(*(v0 + 184) + 40);
    *(v0 + 384) = v33;
    v34 = RequestsManager.handleOptions(clientConfig:options:);
    goto LABEL_17;
  }

  v6 = *(v0 + 176);
  if ((v6 & 4) != 0)
  {
    v33 = *(*(v0 + 184) + 40);
    *(v0 + 392) = v33;
    v34 = RequestsManager.handleOptions(clientConfig:options:);
LABEL_17:
    v35 = v34;
    goto LABEL_18;
  }

  if ((v6 & 0x10) != 0)
  {
    v7 = *(*(v0 + 184) + 48);
    os_unfair_lock_lock((v7 + 24));
    v8 = *(v7 + 16);

    os_unfair_lock_unlock((v7 + 24));
    v9 = *(v8 + 48);

    if (*(v9 + 16))
    {
      v10 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 368), *(v0 + 376));
      if (v11)
      {
        v12 = *(v0 + 360);
        v13 = *(v0 + 328);
        v14 = *(v0 + 336);
        v15 = *(v0 + 184);
        v16 = (*(v9 + 56) + 16 * v10);
        v18 = *v16;
        v17 = v16[1];
        *(v0 + 400) = v17;

        v19 = *(v15 + 32);
        ObjectType = swift_getObjectType();
        (*(v14 + 56))(v12, 1, 1, v13);
        v107 = (*(v19 + 16) + **(v19 + 16));
        v21 = swift_task_alloc();
        *(v0 + 408) = v21;
        *v21 = v0;
        v21[1] = RequestsManager.handleOptions(clientConfig:options:);
        v22 = *(v0 + 360);
        v23 = v18;
        v24 = v17;
        v25 = ObjectType;
        v26 = v19;
        v27 = v107;

        return v27(v23, v24, v22, v25, v26);
      }
    }
  }

  if ((*(v0 + 176) & 0x80) != 0)
  {
    v36 = *(*(v0 + 184) + 48);
    os_unfair_lock_lock((v36 + 24));
    v37 = *(v36 + 16);

    os_unfair_lock_unlock((v36 + 24));
    v38 = *(v37 + 48);

    if (*(v38 + 16))
    {
      v39 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 368), *(v0 + 376));
      if (v40)
      {
        v41 = *(v0 + 184);
        v42 = (*(v38 + 56) + 16 * v39);
        v43 = *v42;
        *(v0 + 416) = *v42;
        v44 = v42[1];
        *(v0 + 424) = v44;

        *(v0 + 432) = *(v41 + 24);
        v45 = *(v41 + 32);
        *(v0 + 440) = v45;
        v46 = swift_getObjectType();
        *(v0 + 448) = v46;
        v108 = (*(v45 + 8) + **(v45 + 8));
        v47 = swift_task_alloc();
        *(v0 + 456) = v47;
        *v47 = v0;
        v47[1] = RequestsManager.handleOptions(clientConfig:options:);
        v23 = *(v0 + 352);
        v24 = v43;
        v22 = v44;
        v25 = v46;
        v26 = v45;
        v27 = v108;

        return v27(v23, v24, v22, v25, v26);
      }
    }
  }

  if ((*(v0 + 176) & 0x20) != 0)
  {
    v48 = *(*(v0 + 184) + 48);
    os_unfair_lock_lock((v48 + 24));
    v49 = *(v48 + 16);

    os_unfair_lock_unlock((v48 + 24));
    v50 = *(v49 + 40);
    if (!*(v50 + 16) || (v51 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 368), *(v0 + 376)), (v52 & 1) == 0))
    {
LABEL_37:

      goto LABEL_38;
    }

    v53 = (*(v50 + 56) + (v51 << 6));
    v54 = *v53;
    v55 = v53[1];
    v56 = v53[2];
    *(v0 + 57) = *(v53 + 41);
    *(v0 + 32) = v55;
    *(v0 + 48) = v56;
    *(v0 + 16) = v54;
    outlined init with copy of UseCase(v0 + 16, v0 + 80);

    if (*(v0 + 72))
    {
      v57 = *(v0 + 24);
      v58 = *(v0 + 40);
      v59 = *(v0 + 48);
      v60 = *(v0 + 49);
      v61 = *(v0 + 32);
      outlined destroy of UseCase(v0 + 16);
      if ((v61 & 1) == 0)
      {
        v63 = *(v0 + 368);
        v62 = *(v0 + 376);
        if (v59)
        {
          v58 = 10080;
        }

        v109[0] = v60 & 1;
        type metadata accessor for SqliteCache(0);
        swift_allocObject();

        v64 = SqliteCache.init(useCase:cacheElementCount:cacheEntryMinutesToLive:evictionPolicy:getCurrentDate:)(v63, v62, v57, v58, v109, implicit closure #1 in default argument 4 of SqliteCache.init(useCase:cacheElementCount:cacheEntryMinutesToLive:evictionPolicy:getCurrentDate:), 0);
        (*(*v64 + 160))(v64);
        goto LABEL_37;
      }
    }
  }

LABEL_38:
  if (*(v0 + 177))
  {
    v65 = *(v0 + 368);
    v66 = *(v0 + 376);
    v67 = *(v0 + 304);
    v68 = *(*(v0 + 184) + 48);
    os_unfair_lock_lock(v68 + 6);

    os_unfair_lock_unlock(v68 + 6);
    AllowList.group(useCase:)(v65, v66, v67);

    v69 = type metadata accessor for UseCaseGroup(0);
    if ((*(*(v69 - 8) + 48))(v67, 1, v69) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 304), &_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
    }

    else
    {
      v70 = *(v0 + 320);
      v72 = *(v0 + 296);
      v71 = *(v0 + 304);
      _s8CipherML13NetworkConfigVWOcTm_0(v71 + *(v69 + 36), v72, type metadata accessor for NetworkConfig);
      outlined destroy of AspireApiConfig(v71, type metadata accessor for UseCaseGroup);
      _s8CipherML13NetworkConfigVWOcTm_0(v72, v70, type metadata accessor for NetworkManagerType);
      outlined destroy of AspireApiConfig(v72, type metadata accessor for NetworkConfig);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v74 = *(v0 + 320);
      if (EnumCaseMultiPayload == 1)
      {
        v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMd, &_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMR);
        v76 = (v74 + *(v75 + 64));
        v78 = *v76;
        v77 = v76[1];
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v74 + *(v75 + 48), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v79 = type metadata accessor for URL();
        (*(*(v79 - 8) + 8))(v74, v79);
        if (v77)
        {
          if (one-time initialization token for shared != -1)
          {
            swift_once();
          }

          v80 = *(static TokenCache.shared + OBJC_IVAR____TtC8CipherML10TokenCache_tokensForUserLock);
          v81 = swift_task_alloc();
          *(v81 + 16) = v78;
          *(v81 + 24) = v77;
          os_unfair_lock_lock((v80 + 24));
          partial apply for closure #1 in TokenCache.clearTokens(user:)((v80 + 16));
          os_unfair_lock_unlock((v80 + 24));

          TokenCache.save()();
          if (v106)
          {

            v83 = *(v0 + 8);
            goto LABEL_63;
          }
        }
      }

      else
      {
        outlined destroy of AspireApiConfig(*(v0 + 320), type metadata accessor for NetworkManagerType);
      }
    }
  }

  v82 = *(v0 + 176);
  if ((v82 & 0x200) != 0)
  {
    v84 = *(*(v0 + 184) + 16);
    *(v0 + 472) = v84;
    *(v0 + 480) = *(v84 + 16);

    v85 = swift_task_alloc();
    *(v0 + 488) = v85;
    *v85 = v0;
    v85[1] = RequestsManager.handleOptions(clientConfig:options:);
    v86 = *(v0 + 368);
    v87 = *(v0 + 376);
    v88 = *(v0 + 288);
    v89 = specialized DatabaseTable<>.get(_:);

    return v89(v88, v86, v87);
  }

  if ((v82 & 0x40) != 0)
  {
    v90 = *(v0 + 272);
    *(v0 + 568) = *(*(*(v0 + 184) + 16) + 16);
    v91 = type metadata accessor for AspireApiConfig(0);
    (*(*(v91 - 8) + 56))(v90, 1, 1, v91);

    v92 = swift_task_alloc();
    *(v0 + 576) = v92;
    *v92 = v0;
    v92[1] = RequestsManager.handleOptions(clientConfig:options:);
    v86 = *(v0 + 376);
    v87 = *(v0 + 272);
    v88 = *(v0 + 368);
    v89 = specialized DatabaseTable<>.set(key:value:);

    return v89(v88, v86, v87);
  }

  if ((*(v0 + 176) & 8) == 0)
  {

    v83 = *(v0 + 8);
LABEL_63:

    return v83();
  }

  v93 = [*(v0 + 168) sourceApplicationBundleIdentifier];
  if (v93)
  {
    v94 = v93;
    v95 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v97 = v96;
  }

  else
  {
    v95 = 0;
    v97 = 0;
  }

  v98 = *(v0 + 216);
  v99 = *(v0 + 168);
  v100 = RequestsManager.keyRotation(for:)(v95, v97);
  *(v0 + 592) = v100;

  v101 = [v99 useCase];
  v102 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v104 = v103;

  *(v0 + 600) = v102;
  *(v0 + 608) = v104;
  v105 = type metadata accessor for AspireApiConfigResponse(0);
  (*(*(v105 - 8) + 56))(v98, 1, 1, v105);
  v35 = RequestsManager.handleOptions(clientConfig:options:);
  v33 = v100;
LABEL_18:

  return MEMORY[0x2822009F8](v35, v33, 0);
}

{
  ActiveUseCaseTracker.markActive(useCase:active:)(*(v0 + 368), *(v0 + 376), 1);

  return MEMORY[0x2822009F8](RequestsManager.handleOptions(clientConfig:options:), 0, 0);
}

{
  v100 = v0;
  v1 = *(v0 + 176);
  if ((v1 & 4) != 0)
  {
    v24 = *(*(v0 + 184) + 40);
    *(v0 + 392) = v24;
    v25 = RequestsManager.handleOptions(clientConfig:options:);
    goto LABEL_9;
  }

  if ((v1 & 0x10) != 0)
  {
    v2 = *(*(v0 + 184) + 48);
    os_unfair_lock_lock((v2 + 24));
    v3 = *(v2 + 16);

    os_unfair_lock_unlock((v2 + 24));
    v4 = *(v3 + 48);

    if (*(v4 + 16))
    {
      v5 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 368), *(v0 + 376));
      if (v6)
      {
        v7 = *(v0 + 360);
        v8 = *(v0 + 328);
        v9 = *(v0 + 336);
        v10 = *(v0 + 184);
        v11 = (*(v4 + 56) + 16 * v5);
        v13 = *v11;
        v12 = v11[1];
        *(v0 + 400) = v12;

        v14 = *(v10 + 32);
        ObjectType = swift_getObjectType();
        (*(v9 + 56))(v7, 1, 1, v8);
        v97 = (*(v14 + 16) + **(v14 + 16));
        v16 = swift_task_alloc();
        *(v0 + 408) = v16;
        *v16 = v0;
        v16[1] = RequestsManager.handleOptions(clientConfig:options:);
        v17 = *(v0 + 360);
        v18 = v13;
        v19 = v12;
        v20 = ObjectType;
        v21 = v14;
        v22 = v97;

        return v22(v18, v19, v17, v20, v21);
      }
    }
  }

  if ((*(v0 + 176) & 0x80) != 0)
  {
    v26 = *(*(v0 + 184) + 48);
    os_unfair_lock_lock((v26 + 24));
    v27 = *(v26 + 16);

    os_unfair_lock_unlock((v26 + 24));
    v28 = *(v27 + 48);

    if (*(v28 + 16))
    {
      v29 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 368), *(v0 + 376));
      if (v30)
      {
        v31 = *(v0 + 184);
        v32 = (*(v28 + 56) + 16 * v29);
        v33 = *v32;
        *(v0 + 416) = *v32;
        v34 = v32[1];
        *(v0 + 424) = v34;

        *(v0 + 432) = *(v31 + 24);
        v35 = *(v31 + 32);
        *(v0 + 440) = v35;
        v36 = swift_getObjectType();
        *(v0 + 448) = v36;
        v98 = (*(v35 + 8) + **(v35 + 8));
        v37 = swift_task_alloc();
        *(v0 + 456) = v37;
        *v37 = v0;
        v37[1] = RequestsManager.handleOptions(clientConfig:options:);
        v18 = *(v0 + 352);
        v19 = v33;
        v17 = v34;
        v20 = v36;
        v21 = v35;
        v22 = v98;

        return v22(v18, v19, v17, v20, v21);
      }
    }
  }

  if ((*(v0 + 176) & 0x20) != 0)
  {
    v38 = *(*(v0 + 184) + 48);
    os_unfair_lock_lock((v38 + 24));
    v39 = *(v38 + 16);

    os_unfair_lock_unlock((v38 + 24));
    v40 = *(v39 + 40);
    if (!*(v40 + 16) || (v41 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 368), *(v0 + 376)), (v42 & 1) == 0))
    {
LABEL_28:

      goto LABEL_29;
    }

    v43 = (*(v40 + 56) + (v41 << 6));
    v44 = *v43;
    v45 = v43[1];
    v46 = v43[2];
    *(v0 + 57) = *(v43 + 41);
    *(v0 + 32) = v45;
    *(v0 + 48) = v46;
    *(v0 + 16) = v44;
    outlined init with copy of UseCase(v0 + 16, v0 + 80);

    if (*(v0 + 72))
    {
      v47 = *(v0 + 24);
      v48 = *(v0 + 40);
      v49 = *(v0 + 48);
      v50 = *(v0 + 49);
      v51 = *(v0 + 32);
      outlined destroy of UseCase(v0 + 16);
      if ((v51 & 1) == 0)
      {
        v53 = *(v0 + 368);
        v52 = *(v0 + 376);
        if (v49)
        {
          v48 = 10080;
        }

        v99[0] = v50 & 1;
        type metadata accessor for SqliteCache(0);
        swift_allocObject();

        v54 = SqliteCache.init(useCase:cacheElementCount:cacheEntryMinutesToLive:evictionPolicy:getCurrentDate:)(v53, v52, v47, v48, v99, implicit closure #1 in default argument 4 of SqliteCache.init(useCase:cacheElementCount:cacheEntryMinutesToLive:evictionPolicy:getCurrentDate:), 0);
        (*(*v54 + 160))(v54);
        goto LABEL_28;
      }
    }
  }

LABEL_29:
  if (*(v0 + 177))
  {
    v55 = *(v0 + 368);
    v56 = *(v0 + 376);
    v57 = *(v0 + 304);
    v58 = *(*(v0 + 184) + 48);
    os_unfair_lock_lock(v58 + 6);

    os_unfair_lock_unlock(v58 + 6);
    AllowList.group(useCase:)(v55, v56, v57);

    v59 = type metadata accessor for UseCaseGroup(0);
    if ((*(*(v59 - 8) + 48))(v57, 1, v59) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 304), &_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
    }

    else
    {
      v60 = *(v0 + 320);
      v62 = *(v0 + 296);
      v61 = *(v0 + 304);
      _s8CipherML13NetworkConfigVWOcTm_0(v61 + *(v59 + 36), v62, type metadata accessor for NetworkConfig);
      outlined destroy of AspireApiConfig(v61, type metadata accessor for UseCaseGroup);
      _s8CipherML13NetworkConfigVWOcTm_0(v62, v60, type metadata accessor for NetworkManagerType);
      outlined destroy of AspireApiConfig(v62, type metadata accessor for NetworkConfig);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v64 = *(v0 + 320);
      if (EnumCaseMultiPayload == 1)
      {
        v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMd, &_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMR);
        v66 = (v64 + *(v65 + 64));
        v68 = *v66;
        v67 = v66[1];
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v64 + *(v65 + 48), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v69 = type metadata accessor for URL();
        (*(*(v69 - 8) + 8))(v64, v69);
        if (v67)
        {
          if (one-time initialization token for shared != -1)
          {
            swift_once();
          }

          v70 = *(static TokenCache.shared + OBJC_IVAR____TtC8CipherML10TokenCache_tokensForUserLock);
          v71 = swift_task_alloc();
          *(v71 + 16) = v68;
          *(v71 + 24) = v67;
          os_unfair_lock_lock((v70 + 24));
          partial apply for closure #1 in TokenCache.clearTokens(user:)((v70 + 16));
          os_unfair_lock_unlock((v70 + 24));

          TokenCache.save()();
          if (v96)
          {

            v73 = *(v0 + 8);
            goto LABEL_54;
          }
        }
      }

      else
      {
        outlined destroy of AspireApiConfig(*(v0 + 320), type metadata accessor for NetworkManagerType);
      }
    }
  }

  v72 = *(v0 + 176);
  if ((v72 & 0x200) != 0)
  {
    v74 = *(*(v0 + 184) + 16);
    *(v0 + 472) = v74;
    *(v0 + 480) = *(v74 + 16);

    v75 = swift_task_alloc();
    *(v0 + 488) = v75;
    *v75 = v0;
    v75[1] = RequestsManager.handleOptions(clientConfig:options:);
    v76 = *(v0 + 368);
    v77 = *(v0 + 376);
    v78 = *(v0 + 288);
    v79 = specialized DatabaseTable<>.get(_:);

    return v79(v78, v76, v77);
  }

  if ((v72 & 0x40) != 0)
  {
    v80 = *(v0 + 272);
    *(v0 + 568) = *(*(*(v0 + 184) + 16) + 16);
    v81 = type metadata accessor for AspireApiConfig(0);
    (*(*(v81 - 8) + 56))(v80, 1, 1, v81);

    v82 = swift_task_alloc();
    *(v0 + 576) = v82;
    *v82 = v0;
    v82[1] = RequestsManager.handleOptions(clientConfig:options:);
    v76 = *(v0 + 376);
    v77 = *(v0 + 272);
    v78 = *(v0 + 368);
    v79 = specialized DatabaseTable<>.set(key:value:);

    return v79(v78, v76, v77);
  }

  if ((*(v0 + 176) & 8) == 0)
  {

    v73 = *(v0 + 8);
LABEL_54:

    return v73();
  }

  v83 = [*(v0 + 168) sourceApplicationBundleIdentifier];
  if (v83)
  {
    v84 = v83;
    v85 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v87 = v86;
  }

  else
  {
    v85 = 0;
    v87 = 0;
  }

  v88 = *(v0 + 216);
  v89 = *(v0 + 168);
  v90 = RequestsManager.keyRotation(for:)(v85, v87);
  *(v0 + 592) = v90;

  v91 = [v89 useCase];
  v92 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v94 = v93;

  *(v0 + 600) = v92;
  *(v0 + 608) = v94;
  v95 = type metadata accessor for AspireApiConfigResponse(0);
  (*(*(v95 - 8) + 56))(v88, 1, 1, v95);
  v25 = RequestsManager.handleOptions(clientConfig:options:);
  v24 = v90;
LABEL_9:

  return MEMORY[0x2822009F8](v25, v24, 0);
}

{
  ActiveUseCaseTracker.markActive(useCase:active:)(*(v0 + 368), *(v0 + 376), 0);

  return MEMORY[0x2822009F8](RequestsManager.handleOptions(clientConfig:options:), 0, 0);
}

{
  v97 = v0;
  if ((*(v0 + 176) & 0x10) != 0)
  {
    v1 = *(*(v0 + 184) + 48);
    os_unfair_lock_lock((v1 + 24));
    v2 = *(v1 + 16);

    os_unfair_lock_unlock((v1 + 24));
    v3 = *(v2 + 48);

    if (*(v3 + 16))
    {
      v4 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 368), *(v0 + 376));
      if (v5)
      {
        v6 = *(v0 + 360);
        v7 = *(v0 + 328);
        v8 = *(v0 + 336);
        v9 = *(v0 + 184);
        v10 = (*(v3 + 56) + 16 * v4);
        v12 = *v10;
        v11 = v10[1];
        *(v0 + 400) = v11;

        v13 = *(v9 + 32);
        ObjectType = swift_getObjectType();
        (*(v8 + 56))(v6, 1, 1, v7);
        v94 = (*(v13 + 16) + **(v13 + 16));
        v15 = swift_task_alloc();
        *(v0 + 408) = v15;
        *v15 = v0;
        v15[1] = RequestsManager.handleOptions(clientConfig:options:);
        v16 = *(v0 + 360);
        v17 = v12;
        v18 = v11;
        v19 = ObjectType;
        v20 = v13;
        v21 = v94;

        return v21(v17, v18, v16, v19, v20);
      }
    }
  }

  if ((*(v0 + 176) & 0x80) != 0)
  {
    v23 = *(*(v0 + 184) + 48);
    os_unfair_lock_lock((v23 + 24));
    v24 = *(v23 + 16);

    os_unfair_lock_unlock((v23 + 24));
    v25 = *(v24 + 48);

    if (*(v25 + 16))
    {
      v26 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 368), *(v0 + 376));
      if (v27)
      {
        v28 = *(v0 + 184);
        v29 = (*(v25 + 56) + 16 * v26);
        v30 = *v29;
        *(v0 + 416) = *v29;
        v31 = v29[1];
        *(v0 + 424) = v31;

        *(v0 + 432) = *(v28 + 24);
        v32 = *(v28 + 32);
        *(v0 + 440) = v32;
        v33 = swift_getObjectType();
        *(v0 + 448) = v33;
        v95 = (*(v32 + 8) + **(v32 + 8));
        v34 = swift_task_alloc();
        *(v0 + 456) = v34;
        *v34 = v0;
        v34[1] = RequestsManager.handleOptions(clientConfig:options:);
        v17 = *(v0 + 352);
        v18 = v30;
        v16 = v31;
        v19 = v33;
        v20 = v32;
        v21 = v95;

        return v21(v17, v18, v16, v19, v20);
      }
    }
  }

  if ((*(v0 + 176) & 0x20) != 0)
  {
    v35 = *(*(v0 + 184) + 48);
    os_unfair_lock_lock((v35 + 24));
    v36 = *(v35 + 16);

    os_unfair_lock_unlock((v35 + 24));
    v37 = *(v36 + 40);
    if (!*(v37 + 16) || (v38 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 368), *(v0 + 376)), (v39 & 1) == 0))
    {
LABEL_23:

      goto LABEL_24;
    }

    v40 = (*(v37 + 56) + (v38 << 6));
    v41 = *v40;
    v42 = v40[1];
    v43 = v40[2];
    *(v0 + 57) = *(v40 + 41);
    *(v0 + 32) = v42;
    *(v0 + 48) = v43;
    *(v0 + 16) = v41;
    outlined init with copy of UseCase(v0 + 16, v0 + 80);

    if (*(v0 + 72))
    {
      v44 = *(v0 + 24);
      v45 = *(v0 + 40);
      v46 = *(v0 + 48);
      v47 = *(v0 + 49);
      v48 = *(v0 + 32);
      outlined destroy of UseCase(v0 + 16);
      if ((v48 & 1) == 0)
      {
        v50 = *(v0 + 368);
        v49 = *(v0 + 376);
        if (v46)
        {
          v45 = 10080;
        }

        v96[0] = v47 & 1;
        type metadata accessor for SqliteCache(0);
        swift_allocObject();

        v51 = SqliteCache.init(useCase:cacheElementCount:cacheEntryMinutesToLive:evictionPolicy:getCurrentDate:)(v50, v49, v44, v45, v96, implicit closure #1 in default argument 4 of SqliteCache.init(useCase:cacheElementCount:cacheEntryMinutesToLive:evictionPolicy:getCurrentDate:), 0);
        (*(*v51 + 160))(v51);
        goto LABEL_23;
      }
    }
  }

LABEL_24:
  if (*(v0 + 177))
  {
    v52 = *(v0 + 368);
    v53 = *(v0 + 376);
    v54 = *(v0 + 304);
    v55 = *(*(v0 + 184) + 48);
    os_unfair_lock_lock(v55 + 6);

    os_unfair_lock_unlock(v55 + 6);
    AllowList.group(useCase:)(v52, v53, v54);

    v56 = type metadata accessor for UseCaseGroup(0);
    if ((*(*(v56 - 8) + 48))(v54, 1, v56) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 304), &_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
    }

    else
    {
      v57 = *(v0 + 320);
      v59 = *(v0 + 296);
      v58 = *(v0 + 304);
      _s8CipherML13NetworkConfigVWOcTm_0(v58 + *(v56 + 36), v59, type metadata accessor for NetworkConfig);
      outlined destroy of AspireApiConfig(v58, type metadata accessor for UseCaseGroup);
      _s8CipherML13NetworkConfigVWOcTm_0(v59, v57, type metadata accessor for NetworkManagerType);
      outlined destroy of AspireApiConfig(v59, type metadata accessor for NetworkConfig);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v61 = *(v0 + 320);
      if (EnumCaseMultiPayload == 1)
      {
        v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMd, &_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMR);
        v63 = (v61 + *(v62 + 64));
        v65 = *v63;
        v64 = v63[1];
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v61 + *(v62 + 48), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v66 = type metadata accessor for URL();
        (*(*(v66 - 8) + 8))(v61, v66);
        if (v64)
        {
          if (one-time initialization token for shared != -1)
          {
            swift_once();
          }

          v67 = *(static TokenCache.shared + OBJC_IVAR____TtC8CipherML10TokenCache_tokensForUserLock);
          v68 = swift_task_alloc();
          *(v68 + 16) = v65;
          *(v68 + 24) = v64;
          os_unfair_lock_lock((v67 + 24));
          partial apply for closure #1 in TokenCache.clearTokens(user:)((v67 + 16));
          os_unfair_lock_unlock((v67 + 24));

          TokenCache.save()();
          if (v93)
          {

            v70 = *(v0 + 8);
            goto LABEL_51;
          }
        }
      }

      else
      {
        outlined destroy of AspireApiConfig(*(v0 + 320), type metadata accessor for NetworkManagerType);
      }
    }
  }

  v69 = *(v0 + 176);
  if ((v69 & 0x200) != 0)
  {
    v71 = *(*(v0 + 184) + 16);
    *(v0 + 472) = v71;
    *(v0 + 480) = *(v71 + 16);

    v72 = swift_task_alloc();
    *(v0 + 488) = v72;
    *v72 = v0;
    v72[1] = RequestsManager.handleOptions(clientConfig:options:);
    v73 = *(v0 + 368);
    v74 = *(v0 + 376);
    v75 = *(v0 + 288);
    v76 = specialized DatabaseTable<>.get(_:);

    return v76(v75, v73, v74);
  }

  if ((v69 & 0x40) != 0)
  {
    v77 = *(v0 + 272);
    *(v0 + 568) = *(*(*(v0 + 184) + 16) + 16);
    v78 = type metadata accessor for AspireApiConfig(0);
    (*(*(v78 - 8) + 56))(v77, 1, 1, v78);

    v79 = swift_task_alloc();
    *(v0 + 576) = v79;
    *v79 = v0;
    v79[1] = RequestsManager.handleOptions(clientConfig:options:);
    v73 = *(v0 + 376);
    v74 = *(v0 + 272);
    v75 = *(v0 + 368);
    v76 = specialized DatabaseTable<>.set(key:value:);

    return v76(v75, v73, v74);
  }

  if ((*(v0 + 176) & 8) == 0)
  {

    v70 = *(v0 + 8);
LABEL_51:

    return v70();
  }

  v80 = [*(v0 + 168) sourceApplicationBundleIdentifier];
  if (v80)
  {
    v81 = v80;
    v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v84 = v83;
  }

  else
  {
    v82 = 0;
    v84 = 0;
  }

  v85 = *(v0 + 216);
  v86 = *(v0 + 168);
  v87 = RequestsManager.keyRotation(for:)(v82, v84);
  *(v0 + 592) = v87;

  v88 = [v86 useCase];
  v89 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v91 = v90;

  *(v0 + 600) = v89;
  *(v0 + 608) = v91;
  v92 = type metadata accessor for AspireApiConfigResponse(0);
  (*(*(v92 - 8) + 56))(v85, 1, 1, v92);

  return MEMORY[0x2822009F8](RequestsManager.handleOptions(clientConfig:options:), v87, 0);
}

{
  v1 = *(*v0 + 360);

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);

  return MEMORY[0x2822009F8](RequestsManager.handleOptions(clientConfig:options:), 0, 0);
}

{
  v76 = v0;
  if ((*(v0 + 176) & 0x80) != 0)
  {
    v1 = *(*(v0 + 184) + 48);
    os_unfair_lock_lock((v1 + 24));
    v2 = *(v1 + 16);

    os_unfair_lock_unlock((v1 + 24));
    v3 = *(v2 + 48);

    if (*(v3 + 16))
    {
      v4 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 368), *(v0 + 376));
      if (v5)
      {
        v6 = *(v0 + 184);
        v7 = (*(v3 + 56) + 16 * v4);
        v8 = *v7;
        *(v0 + 416) = *v7;
        v9 = v7[1];
        *(v0 + 424) = v9;

        *(v0 + 432) = *(v6 + 24);
        v10 = *(v6 + 32);
        *(v0 + 440) = v10;
        ObjectType = swift_getObjectType();
        *(v0 + 448) = ObjectType;
        v74 = (*(v10 + 8) + **(v10 + 8));
        v12 = swift_task_alloc();
        *(v0 + 456) = v12;
        *v12 = v0;
        v12[1] = RequestsManager.handleOptions(clientConfig:options:);
        v13 = *(v0 + 352);

        return v74(v13, v8, v9, ObjectType, v10);
      }
    }
  }

  if ((*(v0 + 176) & 0x20) != 0)
  {
    v15 = *(*(v0 + 184) + 48);
    os_unfair_lock_lock((v15 + 24));
    v16 = *(v15 + 16);

    os_unfair_lock_unlock((v15 + 24));
    v17 = *(v16 + 40);
    if (!*(v17 + 16) || (v18 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 368), *(v0 + 376)), (v19 & 1) == 0))
    {
LABEL_16:

      goto LABEL_17;
    }

    v20 = (*(v17 + 56) + (v18 << 6));
    v21 = *v20;
    v22 = v20[1];
    v23 = v20[2];
    *(v0 + 57) = *(v20 + 41);
    *(v0 + 32) = v22;
    *(v0 + 48) = v23;
    *(v0 + 16) = v21;
    outlined init with copy of UseCase(v0 + 16, v0 + 80);

    if (*(v0 + 72))
    {
      v24 = *(v0 + 24);
      v25 = *(v0 + 40);
      v26 = *(v0 + 48);
      v27 = *(v0 + 49);
      v28 = *(v0 + 32);
      outlined destroy of UseCase(v0 + 16);
      if ((v28 & 1) == 0)
      {
        v30 = *(v0 + 368);
        v29 = *(v0 + 376);
        if (v26)
        {
          v25 = 10080;
        }

        v75[0] = v27 & 1;
        type metadata accessor for SqliteCache(0);
        swift_allocObject();

        v31 = SqliteCache.init(useCase:cacheElementCount:cacheEntryMinutesToLive:evictionPolicy:getCurrentDate:)(v30, v29, v24, v25, v75, implicit closure #1 in default argument 4 of SqliteCache.init(useCase:cacheElementCount:cacheEntryMinutesToLive:evictionPolicy:getCurrentDate:), 0);
        (*(*v31 + 160))(v31);
        goto LABEL_16;
      }
    }
  }

LABEL_17:
  if (*(v0 + 177))
  {
    v32 = *(v0 + 368);
    v33 = *(v0 + 376);
    v34 = *(v0 + 304);
    v35 = *(*(v0 + 184) + 48);
    os_unfair_lock_lock(v35 + 6);

    os_unfair_lock_unlock(v35 + 6);
    AllowList.group(useCase:)(v32, v33, v34);

    v36 = type metadata accessor for UseCaseGroup(0);
    if ((*(*(v36 - 8) + 48))(v34, 1, v36) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 304), &_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
    }

    else
    {
      v37 = *(v0 + 320);
      v39 = *(v0 + 296);
      v38 = *(v0 + 304);
      _s8CipherML13NetworkConfigVWOcTm_0(v38 + *(v36 + 36), v39, type metadata accessor for NetworkConfig);
      outlined destroy of AspireApiConfig(v38, type metadata accessor for UseCaseGroup);
      _s8CipherML13NetworkConfigVWOcTm_0(v39, v37, type metadata accessor for NetworkManagerType);
      outlined destroy of AspireApiConfig(v39, type metadata accessor for NetworkConfig);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v41 = *(v0 + 320);
      if (EnumCaseMultiPayload == 1)
      {
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMd, &_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMR);
        v43 = (v41 + *(v42 + 64));
        v45 = *v43;
        v44 = v43[1];
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v41 + *(v42 + 48), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v46 = type metadata accessor for URL();
        (*(*(v46 - 8) + 8))(v41, v46);
        if (v44)
        {
          if (one-time initialization token for shared != -1)
          {
            swift_once();
          }

          v47 = *(static TokenCache.shared + OBJC_IVAR____TtC8CipherML10TokenCache_tokensForUserLock);
          v48 = swift_task_alloc();
          *(v48 + 16) = v45;
          *(v48 + 24) = v44;
          os_unfair_lock_lock((v47 + 24));
          partial apply for closure #1 in TokenCache.clearTokens(user:)((v47 + 16));
          os_unfair_lock_unlock((v47 + 24));

          TokenCache.save()();
          if (v73)
          {

            v50 = *(v0 + 8);
            goto LABEL_44;
          }
        }
      }

      else
      {
        outlined destroy of AspireApiConfig(*(v0 + 320), type metadata accessor for NetworkManagerType);
      }
    }
  }

  v49 = *(v0 + 176);
  if ((v49 & 0x200) != 0)
  {
    v51 = *(*(v0 + 184) + 16);
    *(v0 + 472) = v51;
    *(v0 + 480) = *(v51 + 16);

    v52 = swift_task_alloc();
    *(v0 + 488) = v52;
    *v52 = v0;
    v52[1] = RequestsManager.handleOptions(clientConfig:options:);
    v53 = *(v0 + 368);
    v54 = *(v0 + 376);
    v55 = *(v0 + 288);
    v56 = specialized DatabaseTable<>.get(_:);

    return v56(v55, v53, v54);
  }

  if ((v49 & 0x40) != 0)
  {
    v57 = *(v0 + 272);
    *(v0 + 568) = *(*(*(v0 + 184) + 16) + 16);
    v58 = type metadata accessor for AspireApiConfig(0);
    (*(*(v58 - 8) + 56))(v57, 1, 1, v58);

    v59 = swift_task_alloc();
    *(v0 + 576) = v59;
    *v59 = v0;
    v59[1] = RequestsManager.handleOptions(clientConfig:options:);
    v53 = *(v0 + 376);
    v54 = *(v0 + 272);
    v55 = *(v0 + 368);
    v56 = specialized DatabaseTable<>.set(key:value:);

    return v56(v55, v53, v54);
  }

  if ((*(v0 + 176) & 8) == 0)
  {

    v50 = *(v0 + 8);
LABEL_44:

    return v50();
  }

  v60 = [*(v0 + 168) sourceApplicationBundleIdentifier];
  if (v60)
  {
    v61 = v60;
    v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v64 = v63;
  }

  else
  {
    v62 = 0;
    v64 = 0;
  }

  v65 = *(v0 + 216);
  v66 = *(v0 + 168);
  v67 = RequestsManager.keyRotation(for:)(v62, v64);
  *(v0 + 592) = v67;

  v68 = [v66 useCase];
  v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v71 = v70;

  *(v0 + 600) = v69;
  *(v0 + 608) = v71;
  v72 = type metadata accessor for AspireApiConfigResponse(0);
  (*(*(v72 - 8) + 56))(v65, 1, 1, v72);

  return MEMORY[0x2822009F8](RequestsManager.handleOptions(clientConfig:options:), v67, 0);
}

{

  return MEMORY[0x2822009F8](RequestsManager.handleOptions(clientConfig:options:), 0, 0);
}

{
  v77 = v0;
  v1 = *(v0 + 352);
  v2 = *(v0 + 328);
  v3 = *(v0 + 336);
  if ((*(v3 + 48))(v1, 1, v2) != 1)
  {
    v75 = *(v0 + 440);
    v21 = *(v0 + 360);
    v22 = *(v0 + 344);
    outlined init with take of AspireApiPECConfig(v1, v22, type metadata accessor for UserIdentifier);
    v23 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10Foundation4DataV_8CipherML9SecretKeyVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v24 = *(v2 + 24);

    *(v22 + v24) = v23;
    _s8CipherML13NetworkConfigVWOcTm_0(v22, v21, type metadata accessor for UserIdentifier);
    (*(v3 + 56))(v21, 0, 1, v2);
    v74 = (*(v75 + 16) + **(v75 + 16));
    v25 = swift_task_alloc();
    *(v0 + 464) = v25;
    *v25 = v0;
    v25[1] = RequestsManager.handleOptions(clientConfig:options:);
    v27 = *(v0 + 440);
    v26 = *(v0 + 448);
    v28 = *(v0 + 424);
    v29 = *(v0 + 416);
    v30 = *(v0 + 360);

    return v74(v29, v28, v30, v26, v27);
  }

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  if ((*(v0 + 176) & 0x20) != 0)
  {
    v4 = *(*(v0 + 184) + 48);
    os_unfair_lock_lock((v4 + 24));
    v5 = *(v4 + 16);

    os_unfair_lock_unlock((v4 + 24));
    v6 = *(v5 + 40);
    if (!*(v6 + 16) || (v7 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 368), *(v0 + 376)), (v8 & 1) == 0))
    {
LABEL_13:

      goto LABEL_14;
    }

    v9 = (*(v6 + 56) + (v7 << 6));
    v10 = *v9;
    v11 = v9[1];
    v12 = v9[2];
    *(v0 + 57) = *(v9 + 41);
    *(v0 + 32) = v11;
    *(v0 + 48) = v12;
    *(v0 + 16) = v10;
    outlined init with copy of UseCase(v0 + 16, v0 + 80);

    if (*(v0 + 72))
    {
      v13 = *(v0 + 24);
      v14 = *(v0 + 40);
      v15 = *(v0 + 48);
      v16 = *(v0 + 49);
      v17 = *(v0 + 32);
      outlined destroy of UseCase(v0 + 16);
      if ((v17 & 1) == 0)
      {
        v19 = *(v0 + 368);
        v18 = *(v0 + 376);
        if (v15)
        {
          v14 = 10080;
        }

        v76[0] = v16 & 1;
        type metadata accessor for SqliteCache(0);
        swift_allocObject();

        v20 = SqliteCache.init(useCase:cacheElementCount:cacheEntryMinutesToLive:evictionPolicy:getCurrentDate:)(v19, v18, v13, v14, v76, implicit closure #1 in default argument 4 of SqliteCache.init(useCase:cacheElementCount:cacheEntryMinutesToLive:evictionPolicy:getCurrentDate:), 0);
        (*(*v20 + 160))(v20);
        goto LABEL_13;
      }
    }
  }

LABEL_14:
  if (*(v0 + 177))
  {
    v32 = *(v0 + 368);
    v33 = *(v0 + 376);
    v34 = *(v0 + 304);
    v35 = *(*(v0 + 184) + 48);
    os_unfair_lock_lock(v35 + 6);

    os_unfair_lock_unlock(v35 + 6);
    AllowList.group(useCase:)(v32, v33, v34);

    v36 = type metadata accessor for UseCaseGroup(0);
    if ((*(*(v36 - 8) + 48))(v34, 1, v36) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 304), &_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
    }

    else
    {
      v37 = *(v0 + 320);
      v39 = *(v0 + 296);
      v38 = *(v0 + 304);
      _s8CipherML13NetworkConfigVWOcTm_0(v38 + *(v36 + 36), v39, type metadata accessor for NetworkConfig);
      outlined destroy of AspireApiConfig(v38, type metadata accessor for UseCaseGroup);
      _s8CipherML13NetworkConfigVWOcTm_0(v39, v37, type metadata accessor for NetworkManagerType);
      outlined destroy of AspireApiConfig(v39, type metadata accessor for NetworkConfig);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v41 = *(v0 + 320);
      if (EnumCaseMultiPayload == 1)
      {
        v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMd, &_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMR);
        v43 = (v41 + *(v42 + 64));
        v45 = *v43;
        v44 = v43[1];
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v41 + *(v42 + 48), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v46 = type metadata accessor for URL();
        (*(*(v46 - 8) + 8))(v41, v46);
        if (v44)
        {
          if (one-time initialization token for shared != -1)
          {
            swift_once();
          }

          v47 = *(static TokenCache.shared + OBJC_IVAR____TtC8CipherML10TokenCache_tokensForUserLock);
          v48 = swift_task_alloc();
          *(v48 + 16) = v45;
          *(v48 + 24) = v44;
          os_unfair_lock_lock((v47 + 24));
          partial apply for closure #1 in TokenCache.clearTokens(user:)((v47 + 16));
          os_unfair_lock_unlock((v47 + 24));

          TokenCache.save()();
          if (v73)
          {

            v50 = *(v0 + 8);
            goto LABEL_41;
          }
        }
      }

      else
      {
        outlined destroy of AspireApiConfig(*(v0 + 320), type metadata accessor for NetworkManagerType);
      }
    }
  }

  v49 = *(v0 + 176);
  if ((v49 & 0x200) != 0)
  {
    v51 = *(*(v0 + 184) + 16);
    *(v0 + 472) = v51;
    *(v0 + 480) = *(v51 + 16);

    v52 = swift_task_alloc();
    *(v0 + 488) = v52;
    *v52 = v0;
    v52[1] = RequestsManager.handleOptions(clientConfig:options:);
    v53 = *(v0 + 368);
    v54 = *(v0 + 376);
    v55 = *(v0 + 288);
    v56 = specialized DatabaseTable<>.get(_:);

    return v56(v55, v53, v54);
  }

  if ((v49 & 0x40) != 0)
  {
    v57 = *(v0 + 272);
    *(v0 + 568) = *(*(*(v0 + 184) + 16) + 16);
    v58 = type metadata accessor for AspireApiConfig(0);
    (*(*(v58 - 8) + 56))(v57, 1, 1, v58);

    v59 = swift_task_alloc();
    *(v0 + 576) = v59;
    *v59 = v0;
    v59[1] = RequestsManager.handleOptions(clientConfig:options:);
    v53 = *(v0 + 376);
    v54 = *(v0 + 272);
    v55 = *(v0 + 368);
    v56 = specialized DatabaseTable<>.set(key:value:);

    return v56(v55, v53, v54);
  }

  if ((*(v0 + 176) & 8) == 0)
  {

    v50 = *(v0 + 8);
LABEL_41:

    return v50();
  }

  v60 = [*(v0 + 168) sourceApplicationBundleIdentifier];
  if (v60)
  {
    v61 = v60;
    v62 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v64 = v63;
  }

  else
  {
    v62 = 0;
    v64 = 0;
  }

  v65 = *(v0 + 216);
  v66 = *(v0 + 168);
  v67 = RequestsManager.keyRotation(for:)(v62, v64);
  *(v0 + 592) = v67;

  v68 = [v66 useCase];
  v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v71 = v70;

  *(v0 + 600) = v69;
  *(v0 + 608) = v71;
  v72 = type metadata accessor for AspireApiConfigResponse(0);
  (*(*(v72 - 8) + 56))(v65, 1, 1, v72);

  return MEMORY[0x2822009F8](RequestsManager.handleOptions(clientConfig:options:), v67, 0);
}

{
  v1 = *(*v0 + 360);

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);

  return MEMORY[0x2822009F8](RequestsManager.handleOptions(clientConfig:options:), 0, 0);
}

{
  v62 = v0;
  outlined destroy of AspireApiConfig(*(v0 + 344), type metadata accessor for UserIdentifier);
  if ((*(v0 + 176) & 0x20) != 0)
  {
    v1 = *(*(v0 + 184) + 48);
    os_unfair_lock_lock((v1 + 24));
    v2 = *(v1 + 16);

    os_unfair_lock_unlock((v1 + 24));
    v3 = *(v2 + 40);
    if (!*(v3 + 16) || (v4 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 368), *(v0 + 376)), (v5 & 1) == 0))
    {
LABEL_9:

      goto LABEL_10;
    }

    v6 = (*(v3 + 56) + (v4 << 6));
    v7 = *v6;
    v8 = v6[1];
    v9 = v6[2];
    *(v0 + 57) = *(v6 + 41);
    *(v0 + 32) = v8;
    *(v0 + 48) = v9;
    *(v0 + 16) = v7;
    outlined init with copy of UseCase(v0 + 16, v0 + 80);

    if (*(v0 + 72))
    {
      v10 = *(v0 + 24);
      v11 = *(v0 + 40);
      v12 = *(v0 + 48);
      v13 = *(v0 + 49);
      v14 = *(v0 + 32);
      outlined destroy of UseCase(v0 + 16);
      if ((v14 & 1) == 0)
      {
        v16 = *(v0 + 368);
        v15 = *(v0 + 376);
        if (v12)
        {
          v11 = 10080;
        }

        v61[0] = v13 & 1;
        type metadata accessor for SqliteCache(0);
        swift_allocObject();

        v17 = SqliteCache.init(useCase:cacheElementCount:cacheEntryMinutesToLive:evictionPolicy:getCurrentDate:)(v16, v15, v10, v11, v61, implicit closure #1 in default argument 4 of SqliteCache.init(useCase:cacheElementCount:cacheEntryMinutesToLive:evictionPolicy:getCurrentDate:), 0);
        (*(*v17 + 160))(v17);
        goto LABEL_9;
      }
    }
  }

LABEL_10:
  if (*(v0 + 177))
  {
    v18 = *(v0 + 368);
    v19 = *(v0 + 376);
    v20 = *(v0 + 304);
    v21 = *(*(v0 + 184) + 48);
    os_unfair_lock_lock(v21 + 6);

    os_unfair_lock_unlock(v21 + 6);
    AllowList.group(useCase:)(v18, v19, v20);

    v22 = type metadata accessor for UseCaseGroup(0);
    if ((*(*(v22 - 8) + 48))(v20, 1, v22) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 304), &_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
    }

    else
    {
      v23 = *(v0 + 320);
      v25 = *(v0 + 296);
      v24 = *(v0 + 304);
      _s8CipherML13NetworkConfigVWOcTm_0(v24 + *(v22 + 36), v25, type metadata accessor for NetworkConfig);
      outlined destroy of AspireApiConfig(v24, type metadata accessor for UseCaseGroup);
      _s8CipherML13NetworkConfigVWOcTm_0(v25, v23, type metadata accessor for NetworkManagerType);
      outlined destroy of AspireApiConfig(v25, type metadata accessor for NetworkConfig);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v27 = *(v0 + 320);
      if (EnumCaseMultiPayload == 1)
      {
        v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMd, &_s10Foundation3URLV8endpoint_ACSg6issuerSSSg19authenticationTokenSb22privacyProxyFailClosedtMR);
        v29 = (v27 + *(v28 + 64));
        v31 = *v29;
        v30 = v29[1];
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v27 + *(v28 + 48), &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
        v32 = type metadata accessor for URL();
        (*(*(v32 - 8) + 8))(v27, v32);
        if (v30)
        {
          if (one-time initialization token for shared != -1)
          {
            swift_once();
          }

          v33 = *(static TokenCache.shared + OBJC_IVAR____TtC8CipherML10TokenCache_tokensForUserLock);
          v34 = swift_task_alloc();
          *(v34 + 16) = v31;
          *(v34 + 24) = v30;
          os_unfair_lock_lock((v33 + 24));
          partial apply for closure #1 in TokenCache.clearTokens(user:)((v33 + 16));
          os_unfair_lock_unlock((v33 + 24));

          TokenCache.save()();
          if (v60)
          {

            v36 = *(v0 + 8);
            goto LABEL_37;
          }
        }
      }

      else
      {
        outlined destroy of AspireApiConfig(*(v0 + 320), type metadata accessor for NetworkManagerType);
      }
    }
  }

  v35 = *(v0 + 176);
  if ((v35 & 0x200) != 0)
  {
    v37 = *(*(v0 + 184) + 16);
    *(v0 + 472) = v37;
    *(v0 + 480) = *(v37 + 16);

    v38 = swift_task_alloc();
    *(v0 + 488) = v38;
    *v38 = v0;
    v38[1] = RequestsManager.handleOptions(clientConfig:options:);
    v39 = *(v0 + 368);
    v40 = *(v0 + 376);
    v41 = *(v0 + 288);
    v42 = specialized DatabaseTable<>.get(_:);

    return v42(v41, v39, v40);
  }

  if ((v35 & 0x40) != 0)
  {
    v44 = *(v0 + 272);
    *(v0 + 568) = *(*(*(v0 + 184) + 16) + 16);
    v45 = type metadata accessor for AspireApiConfig(0);
    (*(*(v45 - 8) + 56))(v44, 1, 1, v45);

    v46 = swift_task_alloc();
    *(v0 + 576) = v46;
    *v46 = v0;
    v46[1] = RequestsManager.handleOptions(clientConfig:options:);
    v39 = *(v0 + 376);
    v40 = *(v0 + 272);
    v41 = *(v0 + 368);
    v42 = specialized DatabaseTable<>.set(key:value:);

    return v42(v41, v39, v40);
  }

  if ((*(v0 + 176) & 8) == 0)
  {

    v36 = *(v0 + 8);
LABEL_37:

    return v36();
  }

  v47 = [*(v0 + 168) sourceApplicationBundleIdentifier];
  if (v47)
  {
    v48 = v47;
    v49 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v50;
  }

  else
  {
    v49 = 0;
    v51 = 0;
  }

  v52 = *(v0 + 216);
  v53 = *(v0 + 168);
  v54 = RequestsManager.keyRotation(for:)(v49, v51);
  *(v0 + 592) = v54;

  v55 = [v53 useCase];
  v56 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v58 = v57;

  *(v0 + 600) = v56;
  *(v0 + 608) = v58;
  v59 = type metadata accessor for AspireApiConfigResponse(0);
  (*(*(v59 - 8) + 56))(v52, 1, 1, v59);

  return MEMORY[0x2822009F8](RequestsManager.handleOptions(clientConfig:options:), v54, 0);
}

{
  *(*v1 + 496) = v0;

  if (v0)
  {

    v2 = RequestsManager.handleOptions(clientConfig:options:);
  }

  else
  {

    v2 = RequestsManager.handleOptions(clientConfig:options:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 280);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(*(v0 + 288), v1, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  v2 = type metadata accessor for AspireApiConfig(0);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = *(v0 + 280);
    v5 = *(v0 + 264);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 288), &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v4, &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
    v6 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
    (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
    if ((*(v0 + 176) & 0x40) == 0)
    {
      goto LABEL_3;
    }
  }

  else
  {
    v9 = *(v0 + 280);
    v10 = *(v0 + 264);
    outlined init with copy of AMDPbHEConfig.OneOf_Config?(v9, v10, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
    outlined destroy of AspireApiConfig(v9, type metadata accessor for AspireApiConfig);
    v11 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
    if ((*(*(v11 - 8) + 48))(v10, 1, v11) != 1)
    {
      v17 = *(v0 + 472);
      v18 = *(v0 + 264);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v20 = *(v0 + 224);
        v19 = *(v0 + 232);
        outlined init with take of AspireApiPECConfig(v18, v20, type metadata accessor for AspireApiPECConfig);
        *(v0 + 544) = *(v17 + 24);
        v22 = *(v20 + 32);
        v21 = *(v20 + 40);
        v23 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
        (*(*(v23 - 8) + 56))(v19, 1, 1, v23);
        v45 = specialized DatabaseTable<>.set(key:value:);

        v24 = swift_task_alloc();
        *(v0 + 552) = v24;
        *v24 = v0;
        v24[1] = RequestsManager.handleOptions(clientConfig:options:);
        v15 = *(v0 + 232);
        v16 = v22;
      }

      else
      {
        v31 = *(v0 + 248);
        v30 = *(v0 + 256);
        v32 = *(v0 + 240);
        outlined init with take of AspireApiPECConfig(v18, v30, type metadata accessor for AspireApiPIRConfig);
        *(v0 + 504) = *(v17 + 24);
        v33 = (*(v30 + *(v31 + 20)) + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash);
        swift_beginAccess();
        v34 = *v33;
        *(v0 + 512) = *v33;
        v21 = v33[1];
        *(v0 + 520) = v21;
        v35 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
        (*(*(v35 - 8) + 56))(v32, 1, 1, v35);

        outlined copy of Data._Representation(v34, v21);
        v45 = specialized DatabaseTable<>.set(key:value:);
        v36 = swift_task_alloc();
        *(v0 + 528) = v36;
        *v36 = v0;
        v36[1] = RequestsManager.handleOptions(clientConfig:options:);
        v15 = *(v0 + 240);
        v16 = v34;
      }

      v14 = v21;
      goto LABEL_16;
    }

    outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 288), &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
    if ((*(v0 + 176) & 0x40) == 0)
    {
LABEL_3:

      if ((*(v0 + 176) & 8) != 0)
      {
        v25 = [*(v0 + 168) sourceApplicationBundleIdentifier];
        if (v25)
        {
          v26 = v25;
          v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
          v29 = v28;
        }

        else
        {
          v27 = 0;
          v29 = 0;
        }

        v37 = *(v0 + 216);
        v38 = *(v0 + 168);
        v39 = RequestsManager.keyRotation(for:)(v27, v29);
        *(v0 + 592) = v39;

        v40 = [v38 useCase];
        v41 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v43 = v42;

        *(v0 + 600) = v41;
        *(v0 + 608) = v43;
        v44 = type metadata accessor for AspireApiConfigResponse(0);
        (*(*(v44 - 8) + 56))(v37, 1, 1, v44);

        return MEMORY[0x2822009F8](RequestsManager.handleOptions(clientConfig:options:), v39, 0);
      }

      else
      {

        v7 = *(v0 + 8);

        return v7();
      }
    }
  }

  v12 = *(v0 + 272);
  *(v0 + 568) = *(*(*(v0 + 184) + 16) + 16);
  (*(v3 + 56))(v12, 1, 1, v2);
  v45 = specialized DatabaseTable<>.set(key:value:);

  v13 = swift_task_alloc();
  *(v0 + 576) = v13;
  *v13 = v0;
  v13[1] = RequestsManager.handleOptions(clientConfig:options:);
  v14 = *(v0 + 376);
  v15 = *(v0 + 272);
  v16 = *(v0 + 368);
LABEL_16:

  return v45(v16, v14, v15);
}

{
  v2 = *v1;
  v2[67] = v0;

  v3 = v2[65];
  v4 = v2[64];
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v2[30], &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);

  if (v0)
  {

    outlined consume of Data._Representation(v4, v3);
    v5 = RequestsManager.handleOptions(clientConfig:options:);
  }

  else
  {
    outlined consume of Data._Representation(v4, v3);
    v5 = RequestsManager.handleOptions(clientConfig:options:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v1 = *(v0 + 256);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 288), &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  outlined destroy of AspireApiConfig(v1, type metadata accessor for AspireApiPIRConfig);
  if ((*(v0 + 176) & 0x40) != 0)
  {
    v4 = *(v0 + 272);
    *(v0 + 568) = *(*(*(v0 + 184) + 16) + 16);
    v5 = type metadata accessor for AspireApiConfig(0);
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);

    v6 = swift_task_alloc();
    *(v0 + 576) = v6;
    *v6 = v0;
    v6[1] = RequestsManager.handleOptions(clientConfig:options:);
    v8 = *(v0 + 368);
    v7 = *(v0 + 376);
    v9 = *(v0 + 272);

    return specialized DatabaseTable<>.set(key:value:)(v8, v7, v9);
  }

  else
  {

    if ((*(v0 + 176) & 8) != 0)
    {
      v10 = [*(v0 + 168) sourceApplicationBundleIdentifier];
      if (v10)
      {
        v11 = v10;
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;
      }

      else
      {
        v12 = 0;
        v14 = 0;
      }

      v15 = *(v0 + 216);
      v16 = *(v0 + 168);
      v17 = RequestsManager.keyRotation(for:)(v12, v14);
      *(v0 + 592) = v17;

      v18 = [v16 useCase];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      *(v0 + 600) = v19;
      *(v0 + 608) = v21;
      v22 = type metadata accessor for AspireApiConfigResponse(0);
      (*(*(v22 - 8) + 56))(v15, 1, 1, v22);

      return MEMORY[0x2822009F8](RequestsManager.handleOptions(clientConfig:options:), v17, 0);
    }

    else
    {

      v2 = *(v0 + 8);

      return v2();
    }
  }
}

{
  v2 = *v1;
  *(*v1 + 560) = v0;

  outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v2 + 232), &_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);

  if (v0)
  {

    v3 = RequestsManager.handleOptions(clientConfig:options:);
  }

  else
  {
    v3 = RequestsManager.handleOptions(clientConfig:options:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  v1 = *(v0 + 224);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 288), &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  outlined destroy of AspireApiConfig(v1, type metadata accessor for AspireApiPECConfig);
  if ((*(v0 + 176) & 0x40) != 0)
  {
    v4 = *(v0 + 272);
    *(v0 + 568) = *(*(*(v0 + 184) + 16) + 16);
    v5 = type metadata accessor for AspireApiConfig(0);
    (*(*(v5 - 8) + 56))(v4, 1, 1, v5);

    v6 = swift_task_alloc();
    *(v0 + 576) = v6;
    *v6 = v0;
    v6[1] = RequestsManager.handleOptions(clientConfig:options:);
    v8 = *(v0 + 368);
    v7 = *(v0 + 376);
    v9 = *(v0 + 272);

    return specialized DatabaseTable<>.set(key:value:)(v8, v7, v9);
  }

  else
  {

    if ((*(v0 + 176) & 8) != 0)
    {
      v10 = [*(v0 + 168) sourceApplicationBundleIdentifier];
      if (v10)
      {
        v11 = v10;
        v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v14 = v13;
      }

      else
      {
        v12 = 0;
        v14 = 0;
      }

      v15 = *(v0 + 216);
      v16 = *(v0 + 168);
      v17 = RequestsManager.keyRotation(for:)(v12, v14);
      *(v0 + 592) = v17;

      v18 = [v16 useCase];
      v19 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v21 = v20;

      *(v0 + 600) = v19;
      *(v0 + 608) = v21;
      v22 = type metadata accessor for AspireApiConfigResponse(0);
      (*(*(v22 - 8) + 56))(v15, 1, 1, v22);

      return MEMORY[0x2822009F8](RequestsManager.handleOptions(clientConfig:options:), v17, 0);
    }

    else
    {

      v2 = *(v0 + 8);

      return v2();
    }
  }
}

{
  v2 = *v1;
  *(*v1 + 584) = v0;

  outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v2 + 272), &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);

  if (v0)
  {
    v3 = RequestsManager.handleOptions(clientConfig:options:);
  }

  else
  {
    v3 = RequestsManager.handleOptions(clientConfig:options:);
  }

  return MEMORY[0x2822009F8](v3, 0, 0);
}

{
  if ((*(v0 + 176) & 8) != 0)
  {
    v3 = [*(v0 + 168) sourceApplicationBundleIdentifier];
    if (v3)
    {
      v4 = v3;
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v7 = v6;
    }

    else
    {
      v5 = 0;
      v7 = 0;
    }

    v8 = *(v0 + 216);
    v9 = *(v0 + 168);
    v10 = RequestsManager.keyRotation(for:)(v5, v7);
    *(v0 + 592) = v10;

    v11 = [v9 useCase];
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v14 = v13;

    *(v0 + 600) = v12;
    *(v0 + 608) = v14;
    v15 = type metadata accessor for AspireApiConfigResponse(0);
    (*(*(v15 - 8) + 56))(v8, 1, 1, v15);

    return MEMORY[0x2822009F8](RequestsManager.handleOptions(clientConfig:options:), v10, 0);
  }

  else
  {

    v1 = *(v0 + 8);

    return v1();
  }
}

{
  v1 = v0[76];
  v2 = v0[75];
  v3 = v0[74];
  v4 = v0[26];
  v5 = v0[24];
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0[27], v4, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = swift_allocObject();
  v0[77] = v7;
  v7[2] = v3;
  v7[3] = v2;
  v7[4] = v1;
  outlined init with take of AspireApiConfigResponse?(v4, v7 + v6);

  v8 = swift_task_alloc();
  v0[78] = v8;
  *v8 = v0;
  v8[1] = RequestsManager.handleOptions(clientConfig:options:);
  v9 = v0[76];
  v10 = v0[75];

  return specialized Coordinator.run(key:_:)(specialized Coordinator.run(key:_:), v10, v9, &async function pointer to partial apply for closure #1 in KeyRotation.runWithCoordinator(useCase:configResponse:), v7);
}

{
  v2 = *v1;
  *(*v1 + 632) = v0;

  v3 = *(v2 + 592);

  if (v0)
  {
    v4 = RequestsManager.handleOptions(clientConfig:options:);
  }

  else
  {
    v4 = RequestsManager.handleOptions(clientConfig:options:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v1 = *(v0 + 216);

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(v0 + 216);

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);

  return MEMORY[0x2822009F8](RequestsManager.handleOptions(clientConfig:options:), 0, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = v0[32];
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[36], &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  outlined destroy of AspireApiConfig(v1, type metadata accessor for AspireApiPIRConfig);

  v2 = v0[1];

  return v2();
}

{
  v1 = v0[28];
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[36], &_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  outlined destroy of AspireApiConfig(v1, type metadata accessor for AspireApiPECConfig);

  v2 = v0[1];

  return v2();
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t RequestsManager.fetchStatus(useCase:)(uint64_t a1, uint64_t a2)
{
  v3[136] = v2;
  v3[135] = a2;
  v3[134] = a1;
  type metadata accessor for AspireApiPECConfig(0);
  v3[137] = swift_task_alloc();
  type metadata accessor for AspireApiPIRConfig(0);
  v3[138] = swift_task_alloc();
  v3[139] = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML7UseCaseOSg_AA15AspireApiConfigV06OneOf_G0OtMd, &_s8CipherML7UseCaseOSg_AA15AspireApiConfigV06OneOf_G0OtMR);
  v3[140] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  v3[141] = swift_task_alloc();
  v4 = type metadata accessor for AspireApiConfig.OneOf_Config(0);
  v3[142] = v4;
  v3[143] = *(v4 - 8);
  v3[144] = swift_task_alloc();
  v5 = type metadata accessor for AspireApiConfig(0);
  v3[145] = v5;
  v3[146] = *(v5 - 8);
  v3[147] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML15AspireApiConfigVSgMd, &_s8CipherML15AspireApiConfigVSgMR);
  v3[148] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v3[149] = swift_task_alloc();

  return MEMORY[0x2822009F8](RequestsManager.fetchStatus(useCase:), 0, 0);
}

uint64_t RequestsManager.fetchStatus(useCase:)()
{
  v1 = v0[136];
  v2 = v0[135];
  v3 = v0[134];
  type metadata accessor for RequestsManager.CMLUseCaseStatusBuilder(0);
  v4 = swift_allocObject();
  v0[150] = v4;
  RequestsManager.CMLUseCaseStatusBuilder.init(useCase:)(v3, v2);
  v5 = *(v1 + 48);
  v0[151] = v5;

  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);

  os_unfair_lock_unlock((v5 + 24));
  if (*(*(v6 + 40) + 16))
  {
    specialized __RawDictionaryStorage.find<A>(_:)(v0[134], v0[135]);
    v8 = v7;

    if (v8)
    {
      v9 = *(v0[136] + 40);
      v0[152] = v9;

      return MEMORY[0x2822009F8](RequestsManager.fetchStatus(useCase:), v9, 0);
    }
  }

  else
  {
  }

  v10 = (*(*v4 + 288))(0);

  v11 = v0[1];

  return v11(v10);
}

{
  v1 = *(v0 + 1216);
  v2 = OBJC_IVAR____TtC8CipherML20ActiveUseCaseTracker_lastUsed;
  swift_beginAccess();
  *(v0 + 1224) = *(v1 + v2);

  return MEMORY[0x2822009F8](RequestsManager.fetchStatus(useCase:), 0, 0);
}

{
  if (*(*(v0 + 1224) + 16))
  {
    v1 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 1072), *(v0 + 1080));
    v2 = *(v0 + 1192);
    if (v3)
    {
      v4 = v1;
      v5 = *(*(v0 + 1224) + 56);
      v6 = type metadata accessor for Date();
      v7 = *(v6 - 8);
      (*(v7 + 16))(v2, v5 + *(v7 + 72) * v4, v6);

      (*(v7 + 56))(v2, 0, 1, v6);
    }

    else
    {

      v10 = type metadata accessor for Date();
      (*(*(v10 - 8) + 56))(v2, 1, 1, v10);
    }
  }

  else
  {
    v8 = *(v0 + 1192);

    v9 = type metadata accessor for Date();
    (*(*(v9 - 8) + 56))(v8, 1, 1, v9);
  }

  v11 = *(v0 + 1216);
  v12 = *(v0 + 1192);
  (*(**(v0 + 1200) + 312))(v12);

  outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);

  return MEMORY[0x2822009F8](RequestsManager.fetchStatus(useCase:), v11, 0);
}

{
  *(v0 + 137) = ActiveUseCaseTracker.isActive(useCase:)(*(v0 + 1072));

  return MEMORY[0x2822009F8](RequestsManager.fetchStatus(useCase:), 0, 0);
}

{
  if (*(v0 + 137))
  {
    *(v0 + 1232) = *(*(*(v0 + 1088) + 16) + 16);

    v1 = swift_task_alloc();
    *(v0 + 1240) = v1;
    *v1 = v0;
    v1[1] = RequestsManager.fetchStatus(useCase:);
    v2 = *(v0 + 1184);
    v3 = *(v0 + 1080);
    v4 = *(v0 + 1072);

    return specialized DatabaseTable<>.get(_:)(v2, v4, v3);
  }

  else
  {
    v6 = (*(**(v0 + 1200) + 288))(1);

    v7 = *(v0 + 8);

    return v7(v6);
  }
}

{
  *(*v1 + 1248) = v0;

  if (v0)
  {
    v2 = RequestsManager.fetchStatus(useCase:);
  }

  else
  {
    v2 = RequestsManager.fetchStatus(useCase:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 1184);
  if ((*(*(v0 + 1168) + 48))(v1, 1, *(v0 + 1160)) == 1)
  {
    v2 = (*(**(v0 + 1200) + 288))(2);

LABEL_3:

    v3 = *(v0 + 8);

    return v3(v2);
  }

  v5 = *(v0 + 1248);
  outlined init with take of AspireApiPECConfig(v1, *(v0 + 1176), type metadata accessor for AspireApiConfig);
  lazy protocol witness table accessor for type EvaluationKeyConfigTable and conformance EvaluationKeyConfigTable(&lazy protocol witness table cache variable for type AspireApiConfig and conformance AspireApiConfig, type metadata accessor for AspireApiConfig, &protocol conformance descriptor for AspireApiConfig);
  v6 = Message.serializedData(partial:)();
  v8 = *(v0 + 1176);
  if (v5)
  {
    outlined destroy of AspireApiConfig(*(v0 + 1176), type metadata accessor for AspireApiConfig);

    v9 = *(v0 + 8);

    return v9();
  }

  v10 = *(v0 + 1144);
  v11 = *(v0 + 1136);
  v12 = *(v0 + 1128);
  v13 = v6;
  v14 = v7;
  (*(**(v0 + 1200) + 296))();
  outlined consume of Data._Representation(v13, v14);

  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v8, v12, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
  if ((*(v10 + 48))(v12, 1, v11) == 1)
  {
    v15 = *(v0 + 1200);
    v16 = *(v0 + 1176);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 1128), &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMd, &_s8CipherML15AspireApiConfigV06OneOf_E0OSgMR);
    v2 = (*(*v15 + 288))(3);

    outlined destroy of AspireApiConfig(v16, type metadata accessor for AspireApiConfig);
    goto LABEL_3;
  }

  v17 = *(v0 + 1208);
  outlined init with take of AspireApiPECConfig(*(v0 + 1128), *(v0 + 1152), type metadata accessor for AspireApiConfig.OneOf_Config);
  os_unfair_lock_lock((v17 + 24));
  v18 = *(v17 + 16);

  os_unfair_lock_unlock((v17 + 24));
  v19 = *(v18 + 40);
  if (*(v19 + 16) && (v20 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 1072), *(v0 + 1080)), (v21 & 1) != 0))
  {
    v22 = (*(v19 + 56) + (v20 << 6));
    v23 = *v22;
    v24 = v22[1];
    v25 = v22[2];
    *(v0 + 905) = *(v22 + 41);
    *(v0 + 880) = v24;
    *(v0 + 896) = v25;
    *(v0 + 864) = v23;
    v73 = *(v0 + 880);
    v75 = *(v0 + 864);
    v71 = *(v0 + 896);
    v26 = *(v0 + 912);
    v27 = *(v0 + 920);
    outlined init with copy of UseCase(v0 + 864, v0 + 928);

    v29 = v71;
    v28 = v73;
    v30 = v75;
  }

  else
  {

    v26 = 0;
    v30 = 0uLL;
    v27 = -1;
    v28 = 0uLL;
    v29 = 0uLL;
  }

  v31 = *(v0 + 1152);
  v32 = *(v0 + 1120);
  v33 = *(*(v0 + 1112) + 48);
  *v32 = v30;
  v32[1] = v28;
  v32[2] = v29;
  *(v32 + 6) = v26;
  *(v32 + 56) = v27;
  _s8CipherML13NetworkConfigVWOcTm_0(v31, v32 + v33, type metadata accessor for AspireApiConfig.OneOf_Config);
  v35 = v32[1];
  v34 = v32[2];
  v36 = *v32;
  *(v0 + 57) = *(v32 + 41);
  *(v0 + 32) = v35;
  *(v0 + 48) = v34;
  *(v0 + 16) = v36;
  v37 = *(v0 + 16);
  v38 = *(v0 + 24);
  *(v0 + 1256) = v38;
  v39 = *(v0 + 32);
  *(v0 + 217) = v39;
  v40 = *(v0 + 40);
  *(v0 + 1264) = v40;
  v41 = *(v0 + 48);
  *(v0 + 218) = v41;
  v42 = *(v0 + 49);
  *(v0 + 219) = v42;
  v43 = *(v0 + 72);
  v44 = *(v0 + 1120);
  if (v43 == 255)
  {
    goto LABEL_24;
  }

  v72 = v37;
  v74 = v40;
  v45 = *(v44 + 20);
  *(v0 + 73) = *(v44 + 17);
  *(v0 + 76) = v45;
  v46 = *(v44 + 48);
  *(v0 + 138) = *(v44 + 34);
  *(v0 + 152) = v46;
  v76 = v33;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (v43)
  {
    if (EnumCaseMultiPayload != 1)
    {
      outlined init with take of AspireApiPECConfig(v32 + v33, *(v0 + 1104), type metadata accessor for AspireApiPIRConfig);
      *(v0 + 992) = v72;
      *(v0 + 1000) = v38;
      *(v0 + 1008) = v39;
      *(v0 + 1009) = *(v0 + 73);
      *(v0 + 1012) = *(v0 + 76);
      *(v0 + 1016) = v74;
      *(v0 + 1024) = v41;
      *(v0 + 1025) = v42;
      *(v0 + 1026) = *(v0 + 138);
      *(v0 + 1040) = *(v0 + 152);
      v48 = *(v0 + 16);
      v49 = *(v0 + 32);
      v50 = *(v0 + 48);
      *(v0 + 393) = *(v0 + 57);
      *(v0 + 368) = v49;
      *(v0 + 384) = v50;
      *(v0 + 352) = v48;
      outlined init with copy of UseCase(v0 + 352, v0 + 416);
      v51 = swift_task_alloc();
      *(v0 + 1272) = v51;
      *v51 = v0;
      v51[1] = RequestsManager.fetchStatus(useCase:);
      v52 = *(v0 + 1104);
      v53 = *(v0 + 1080);
      v54 = *(v0 + 1072);

      return RequestsManager.validate(config:static:useCase:)(v52, (v0 + 992), v54, v53);
    }

LABEL_24:
    v59 = *(v0 + 1176);
    v60 = *(v0 + 1152);
    v2 = (*(**(v0 + 1200) + 288))(3);

    outlined destroy of AspireApiConfig(v60, type metadata accessor for AspireApiConfig.OneOf_Config);
    outlined destroy of AspireApiConfig(v59, type metadata accessor for AspireApiConfig);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v44, &_s8CipherML7UseCaseOSg_AA15AspireApiConfigV06OneOf_G0OtMd, &_s8CipherML7UseCaseOSg_AA15AspireApiConfigV06OneOf_G0OtMR);
    goto LABEL_3;
  }

  if (EnumCaseMultiPayload != 1)
  {
    goto LABEL_24;
  }

  v55 = *(v0 + 1096);
  v56 = *(v0 + 1080);
  v57 = *(v0 + 1072);
  outlined init with take of AspireApiPECConfig(v32 + v76, v55, type metadata accessor for AspireApiPECConfig);
  v58 = specialized RequestsManager.validate(config:static:useCase:)(v55, v57, v56);
  if ((v58 & 1) == 0)
  {
    v64 = *(v0 + 1176);
    v65 = *(v0 + 1152);
    v66 = *(v0 + 1120);
    v67 = *(v0 + 1096);
    v2 = (*(**(v0 + 1200) + 288))(3);

    outlined destroy of AspireApiConfig(v67, type metadata accessor for AspireApiPECConfig);
    outlined destroy of AspireApiConfig(v65, type metadata accessor for AspireApiConfig.OneOf_Config);
    outlined destroy of AspireApiConfig(v64, type metadata accessor for AspireApiConfig);
    v69 = v66[1];
    v68 = v66[2];
    v70 = *v66;
    *(v0 + 201) = *(v66 + 41);
    *(v0 + 176) = v69;
    *(v0 + 192) = v68;
    *(v0 + 160) = v70;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 160, &_s8CipherML7UseCaseOSgMd, &_s8CipherML7UseCaseOSgMR);
    goto LABEL_3;
  }

  v61 = swift_task_alloc();
  *(v0 + 1312) = v61;
  *v61 = v0;
  v61[1] = RequestsManager.fetchStatus(useCase:);
  v62 = *(v0 + 1200);
  v63 = *(v0 + 1096);

  return specialized RequestsManager.fetchStatus<A>(status:dynamicConfig:)(v62, v63);
}

{
  v36 = v0;
  v1 = *(v0 + 220);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 16, &_s8CipherML7UseCaseOSgMd, &_s8CipherML7UseCaseOSgMR);
  if (v1 == 1)
  {
    if (*(v0 + 217))
    {
LABEL_3:
      v2 = swift_task_alloc();
      *(v0 + 1288) = v2;
      *v2 = v0;
      v2[1] = RequestsManager.fetchStatus(useCase:);
      v3 = *(v0 + 1200);
      v4 = *(v0 + 1104);

      return specialized RequestsManager.fetchStatus<A>(status:dynamicConfig:)(v3, v4);
    }

    v15 = *(v0 + 1280);
    v16 = *(v0 + 1256);
    v17 = *(v0 + 1080);
    v18 = *(v0 + 1072);
    if (*(v0 + 218))
    {
      v19 = 10080;
    }

    else
    {
      v19 = *(v0 + 1264);
    }

    LOBYTE(v33) = *(v0 + 219) & 1;
    type metadata accessor for SqliteCache(0);
    swift_allocObject();

    v20 = SqliteCache.init(useCase:cacheElementCount:cacheEntryMinutesToLive:evictionPolicy:getCurrentDate:)(v18, v17, v16, v19, &v33, implicit closure #1 in default argument 4 of SqliteCache.init(useCase:cacheElementCount:cacheEntryMinutesToLive:evictionPolicy:getCurrentDate:), 0);
    if (!v15)
    {
      (*(*v20 + 208))(&v30);
      v28 = *(v0 + 1200);
      v33 = v30;
      v34 = v31;
      v35 = v32;
      (*(*v28 + 328))(&v33);

      goto LABEL_3;
    }

    v21 = *(v0 + 1176);
    v22 = *(v0 + 1152);
    v23 = *(v0 + 1120);
    v24 = *(v0 + 1104);

    outlined destroy of AspireApiConfig(v24, type metadata accessor for AspireApiPIRConfig);
    outlined destroy of AspireApiConfig(v22, type metadata accessor for AspireApiConfig.OneOf_Config);
    outlined destroy of AspireApiConfig(v21, type metadata accessor for AspireApiConfig);
    v26 = v23[1];
    v25 = v23[2];
    v27 = *v23;
    *(v0 + 777) = *(v23 + 41);
    *(v0 + 752) = v26;
    *(v0 + 768) = v25;
    *(v0 + 736) = v27;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 736, &_s8CipherML7UseCaseOSgMd, &_s8CipherML7UseCaseOSgMR);

    v29 = *(v0 + 8);

    return v29();
  }

  else
  {
    v6 = *(v0 + 1176);
    v7 = *(v0 + 1152);
    v8 = *(v0 + 1120);
    v9 = *(v0 + 1104);
    v10 = (*(**(v0 + 1200) + 288))(3);

    outlined destroy of AspireApiConfig(v9, type metadata accessor for AspireApiPIRConfig);
    outlined destroy of AspireApiConfig(v7, type metadata accessor for AspireApiConfig.OneOf_Config);
    outlined destroy of AspireApiConfig(v6, type metadata accessor for AspireApiConfig);
    v12 = v8[1];
    v11 = v8[2];
    v13 = *v8;
    *(v0 + 585) = *(v8 + 41);
    *(v0 + 560) = v12;
    *(v0 + 576) = v11;
    *(v0 + 544) = v13;
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 544, &_s8CipherML7UseCaseOSgMd, &_s8CipherML7UseCaseOSgMR);

    v14 = *(v0 + 8);

    return v14(v10);
  }
}

{
  v1 = *(v0 + 1176);
  v2 = *(v0 + 1152);
  v3 = *(v0 + 1120);
  v4 = *(v0 + 1104);

  outlined destroy of AspireApiConfig(v4, type metadata accessor for AspireApiPIRConfig);
  outlined destroy of AspireApiConfig(v2, type metadata accessor for AspireApiConfig.OneOf_Config);
  outlined destroy of AspireApiConfig(v1, type metadata accessor for AspireApiConfig);
  v6 = v3[1];
  v5 = v3[2];
  v7 = *v3;
  *(v0 + 713) = *(v3 + 41);
  *(v0 + 688) = v6;
  *(v0 + 704) = v5;
  *(v0 + 672) = v7;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 672, &_s8CipherML7UseCaseOSgMd, &_s8CipherML7UseCaseOSgMR);
  v8 = *(v0 + 1304);

  v9 = *(v0 + 8);

  return v9(v8);
}

{
  v1 = *(v0 + 1176);
  v2 = *(v0 + 1152);
  v3 = *(v0 + 1120);
  v4 = *(v0 + 1096);

  outlined destroy of AspireApiConfig(v4, type metadata accessor for AspireApiPECConfig);
  outlined destroy of AspireApiConfig(v2, type metadata accessor for AspireApiConfig.OneOf_Config);
  outlined destroy of AspireApiConfig(v1, type metadata accessor for AspireApiConfig);
  v6 = v3[1];
  v5 = v3[2];
  v7 = *v3;
  *(v0 + 329) = *(v3 + 41);
  *(v0 + 304) = v6;
  *(v0 + 320) = v5;
  *(v0 + 288) = v7;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 288, &_s8CipherML7UseCaseOSgMd, &_s8CipherML7UseCaseOSgMR);
  v8 = *(v0 + 1328);

  v9 = *(v0 + 8);

  return v9(v8);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  v1 = *(v0 + 1176);
  v2 = *(v0 + 1152);
  v3 = *(v0 + 1120);
  v4 = *(v0 + 1104);

  outlined destroy of AspireApiConfig(v4, type metadata accessor for AspireApiPIRConfig);
  outlined destroy of AspireApiConfig(v2, type metadata accessor for AspireApiConfig.OneOf_Config);
  outlined destroy of AspireApiConfig(v1, type metadata accessor for AspireApiConfig);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 16, &_s8CipherML7UseCaseOSgMd, &_s8CipherML7UseCaseOSgMR);
  v6 = v3[1];
  v5 = v3[2];
  v7 = *v3;
  *(v0 + 521) = *(v3 + 41);
  *(v0 + 496) = v6;
  *(v0 + 512) = v5;
  *(v0 + 480) = v7;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 480, &_s8CipherML7UseCaseOSgMd, &_s8CipherML7UseCaseOSgMR);

  v8 = *(v0 + 8);

  return v8();
}

{
  v1 = *(v0 + 1176);
  v2 = *(v0 + 1152);
  v3 = *(v0 + 1120);
  v4 = *(v0 + 1104);

  outlined destroy of AspireApiConfig(v4, type metadata accessor for AspireApiPIRConfig);
  outlined destroy of AspireApiConfig(v2, type metadata accessor for AspireApiConfig.OneOf_Config);
  outlined destroy of AspireApiConfig(v1, type metadata accessor for AspireApiConfig);
  v6 = v3[1];
  v5 = v3[2];
  v7 = *v3;
  *(v0 + 649) = *(v3 + 41);
  *(v0 + 624) = v6;
  *(v0 + 640) = v5;
  *(v0 + 608) = v7;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 608, &_s8CipherML7UseCaseOSgMd, &_s8CipherML7UseCaseOSgMR);

  v8 = *(v0 + 8);

  return v8();
}

{
  v1 = *(v0 + 1176);
  v2 = *(v0 + 1152);
  v3 = *(v0 + 1120);
  v4 = *(v0 + 1096);

  outlined destroy of AspireApiConfig(v4, type metadata accessor for AspireApiPECConfig);
  outlined destroy of AspireApiConfig(v2, type metadata accessor for AspireApiConfig.OneOf_Config);
  outlined destroy of AspireApiConfig(v1, type metadata accessor for AspireApiConfig);
  v6 = v3[1];
  v5 = v3[2];
  v7 = *v3;
  *(v0 + 265) = *(v3 + 41);
  *(v0 + 240) = v6;
  *(v0 + 256) = v5;
  *(v0 + 224) = v7;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v0 + 224, &_s8CipherML7UseCaseOSgMd, &_s8CipherML7UseCaseOSgMR);

  v8 = *(v0 + 8);

  return v8();
}

uint64_t RequestsManager.fetchStatus(useCase:)(char a1)
{
  v4 = *v2;
  *(*v2 + 1280) = v1;

  if (v1)
  {
    v5 = RequestsManager.fetchStatus(useCase:);
  }

  else
  {
    *(v4 + 220) = a1 & 1;
    v5 = RequestsManager.fetchStatus(useCase:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t RequestsManager.fetchStatus(useCase:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 1296) = v1;

  if (v1)
  {
    v5 = RequestsManager.fetchStatus(useCase:);
  }

  else
  {
    *(v4 + 1304) = a1;
    v5 = RequestsManager.fetchStatus(useCase:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v4 = *v2;
  *(*v2 + 1320) = v1;

  if (v1)
  {
    v5 = RequestsManager.fetchStatus(useCase:);
  }

  else
  {
    *(v4 + 1328) = a1;
    v5 = RequestsManager.fetchStatus(useCase:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t specialized RequestsManager.fetchStatus<A>(status:dynamicConfig:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  v3[8] = swift_task_alloc();
  v3[9] = *(type metadata accessor for SecretKey(0) - 8);
  v3[10] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v3[11] = v4;
  v3[12] = *(v4 - 8);
  v3[13] = swift_task_alloc();
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
  v3[16] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v3[17] = swift_task_alloc();
  v3[18] = swift_task_alloc();
  v3[19] = swift_task_alloc();
  v3[20] = swift_task_alloc();
  v5 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v3[21] = v5;
  v3[22] = *(v5 - 8);
  v3[23] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v3[24] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized RequestsManager.fetchStatus<A>(status:dynamicConfig:), 0, 0);
}

{
  v3[3] = a2;
  v3[4] = v2;
  v3[2] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  v3[5] = swift_task_alloc();
  v3[6] = *(type metadata accessor for SecretKey(0) - 8);
  v3[7] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v3[8] = v4;
  v3[9] = *(v4 - 8);
  v3[10] = swift_task_alloc();
  v3[11] = swift_task_alloc();
  v3[12] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
  v3[13] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v3[14] = swift_task_alloc();
  v3[15] = swift_task_alloc();
  v3[16] = swift_task_alloc();
  v3[17] = swift_task_alloc();
  v5 = type metadata accessor for AspireHeEvaluationKeyConfig(0);
  v3[18] = v5;
  v3[19] = *(v5 - 8);
  v3[20] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML27AspireHeEvaluationKeyConfigVSgMd, &_s8CipherML27AspireHeEvaluationKeyConfigVSgMR);
  v3[21] = swift_task_alloc();

  return MEMORY[0x2822009F8](specialized RequestsManager.fetchStatus<A>(status:dynamicConfig:), 0, 0);
}

uint64_t specialized RequestsManager.fetchStatus<A>(status:dynamicConfig:)()
{
  v1 = v0[6];
  v0[25] = *(*(v0[7] + 16) + 24);
  v2 = *(v1 + *(type metadata accessor for AspireApiPIRConfig(0) + 20));
  v3 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash;
  v0[26] = v2;
  v0[27] = v3;
  v4 = (v2 + v3);
  swift_beginAccess();
  v5 = *v4;
  v0[28] = *v4;
  v6 = v4[1];
  v0[29] = v6;

  outlined copy of Data._Representation(v5, v6);
  v7 = swift_task_alloc();
  v0[30] = v7;
  *v7 = v0;
  v7[1] = specialized RequestsManager.fetchStatus<A>(status:dynamicConfig:);
  v8 = v0[24];

  return specialized DatabaseTable<>.get(_:)(v8, v5, v6);
}

{
  v2 = *v1;
  *(*v1 + 248) = v0;

  v3 = *(v2 + 232);
  v4 = *(v2 + 224);

  outlined consume of Data._Representation(v4, v3);
  if (v0)
  {
    v5 = specialized RequestsManager.fetchStatus<A>(status:dynamicConfig:);
  }

  else
  {
    v5 = specialized RequestsManager.fetchStatus<A>(status:dynamicConfig:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

{
  v1 = *(v0 + 192);
  if ((*(*(v0 + 176) + 48))(v1, 1, *(v0 + 168)) == 1)
  {
    v2 = (*(**(v0 + 40) + 288))(7);
    goto LABEL_3;
  }

  v5 = *(v0 + 248);
  outlined init with take of AspireApiPECConfig(v1, *(v0 + 184), type metadata accessor for AspireHeEvaluationKeyConfig);
  lazy protocol witness table accessor for type EvaluationKeyConfigTable and conformance EvaluationKeyConfigTable(&lazy protocol witness table cache variable for type AspireHeEvaluationKeyConfig and conformance AspireHeEvaluationKeyConfig, type metadata accessor for AspireHeEvaluationKeyConfig, &protocol conformance descriptor for AspireHeEvaluationKeyConfig);
  v6 = Message.serializedData(partial:)();
  v8 = *(v0 + 184);
  if (v5)
  {
    outlined destroy of AspireApiConfig(*(v0 + 184), type metadata accessor for AspireHeEvaluationKeyConfig);

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v10 = *(v0 + 56);
    v11 = *(v0 + 40);
    v12 = v6;
    v13 = v7;
    (*(*v11 + 304))();
    outlined consume of Data._Representation(v12, v13);

    outlined destroy of AspireApiConfig(v8, type metadata accessor for AspireHeEvaluationKeyConfig);
    v14 = *(v10 + 48);
    *(v0 + 256) = v14;
    os_unfair_lock_lock((v14 + 24));
    v15 = *(v14 + 16);

    os_unfair_lock_unlock((v14 + 24));
    v16 = *(v15 + 48);

    v17 = v11[2];
    *(v0 + 264) = v17;
    v18 = v11[3];
    *(v0 + 272) = v18;
    if (!*(v16 + 16) || (v19 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v18), (v20 & 1) == 0))
    {

      v30 = *(v0 + 160);
      v31 = *(v0 + 88);
      v32 = *(v0 + 96);
      v33 = *(**(v0 + 40) + 208);
      v33(v29);
      v34 = *(v32 + 48);
      v35 = v34(v30, 1, v31);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v30, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      if (v35 == 1)
      {
        v2 = (*(**(v0 + 40) + 288))(4);
      }

      else
      {
        v36 = *(v0 + 264);
        v37 = *(v0 + 272);
        v38 = *(v0 + 256);
        v39 = *(v0 + 128);
        os_unfair_lock_lock(v38 + 6);

        os_unfair_lock_unlock(v38 + 6);
        AllowList.group(useCase:)(v36, v37, v39);

        v40 = type metadata accessor for UseCaseGroup(0);
        if ((*(*(v40 - 8) + 48))(v39, 1, v40) == 1)
        {
          outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 128), &_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
        }

        else
        {
          v41 = *(v0 + 152);
          v42 = *(v0 + 88);
          v43 = outlined destroy of AspireApiConfig(*(v0 + 128), type metadata accessor for UseCaseGroup);
          v33(v43);
          if (v34(v41, 1, v42) == 1)
          {
            outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 152), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          }

          else
          {
            v44 = *(v0 + 144);
            v45 = *(v0 + 112);
            v47 = *(v0 + 96);
            v46 = *(v0 + 104);
            v48 = *(v0 + 88);
            v49 = *(v0 + 56);
            v50 = *(v0 + 40);
            (*(v47 + 32))(*(v0 + 120), *(v0 + 152), v48);
            Date.addingTimeInterval(_:)();
            (*(v47 + 16))(v44, v45, v48);
            (*(v47 + 56))(v44, 0, 1, v48);
            v51 = (*(*v50 + 240))(v44);
            (*(v49 + 56))(v51);
            lazy protocol witness table accessor for type EvaluationKeyConfigTable and conformance EvaluationKeyConfigTable(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
            v52 = dispatch thunk of static Comparable.<= infix(_:_:)();
            v53 = *(v47 + 8);
            v53(v46, v48);
            v55 = *(v0 + 112);
            v54 = *(v0 + 120);
            v56 = *(v0 + 88);
            if (v52)
            {
              v57 = (*(**(v0 + 40) + 288))(5);
              v53(v55, v56);
              v53(v54, v56);
              goto LABEL_4;
            }

            v53(*(v0 + 112), *(v0 + 88));
            v53(v54, v56);
          }
        }

        v2 = (*(**(v0 + 40) + 288))(6);
      }

LABEL_3:
      v57 = v2;
LABEL_4:

      v3 = *(v0 + 8);

      return v3(v57);
    }

    v21 = *(v0 + 56);
    v22 = (*(v16 + 56) + 16 * v19);
    v23 = *v22;
    v24 = v22[1];
    *(v0 + 280) = v24;

    v25 = *(v21 + 32);
    ObjectType = swift_getObjectType();
    v58 = (*(v25 + 8) + **(v25 + 8));
    v27 = swift_task_alloc();
    *(v0 + 288) = v27;
    *v27 = v0;
    v27[1] = specialized RequestsManager.fetchStatus<A>(status:dynamicConfig:);
    v28 = *(v0 + 64);

    return v58(v28, v23, v24, ObjectType, v25);
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  return MEMORY[0x2822009F8](specialized RequestsManager.fetchStatus<A>(status:dynamicConfig:), 0, 0);
}

{
  v1 = v0[8];
  v2 = type metadata accessor for UserIdentifier(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  }

  else
  {
    v4 = v0[26];
    v3 = v0[27];
    v5 = *(v1 + *(v2 + 24));

    outlined destroy of AspireApiConfig(v1, type metadata accessor for UserIdentifier);
    if (*(v5 + 16))
    {
      v6 = *(v4 + v3);
      v7 = *(v4 + v3 + 8);
      outlined copy of Data._Representation(v6, v7);
      v8 = specialized __RawDictionaryStorage.find<A>(_:)(v6, v7);
      if (v9)
      {
        v10 = v0[10];
        _s8CipherML13NetworkConfigVWOcTm_0(*(v5 + 56) + *(v0[9] + 72) * v8, v10, type metadata accessor for SecretKey);
        outlined consume of Data._Representation(v6, v7);

        outlined destroy of AspireApiConfig(v10, type metadata accessor for SecretKey);
        Date.init(timeIntervalSince1970:)();
        v11 = 0;
        goto LABEL_9;
      }

      outlined consume of Data._Representation(v6, v7);
    }

    else
    {
    }
  }

  v11 = 1;
LABEL_9:
  v12 = v0[17];
  v13 = v0[5];
  (*(v0[12] + 56))(v12, v11, 1, v0[11]);
  (*(*v13 + 320))(v12);

  v14 = outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v15 = v0[20];
  v16 = v0[11];
  v17 = v0[12];
  v18 = *(*v0[5] + 208);
  v18(v14);
  v19 = *(v17 + 48);
  LODWORD(v13) = v19(v15, 1, v16);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v15, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v13 == 1)
  {
    v20 = (*(*v0[5] + 288))(4);
  }

  else
  {
    v21 = v0[33];
    v22 = v0[34];
    v23 = v0[32];
    v24 = v0[16];
    os_unfair_lock_lock(v23 + 6);

    os_unfair_lock_unlock(v23 + 6);
    AllowList.group(useCase:)(v21, v22, v24);

    v25 = type metadata accessor for UseCaseGroup(0);
    if ((*(*(v25 - 8) + 48))(v24, 1, v25) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[16], &_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
    }

    else
    {
      v26 = v0[19];
      v27 = v0[11];
      v28 = outlined destroy of AspireApiConfig(v0[16], type metadata accessor for UseCaseGroup);
      v18(v28);
      if (v19(v26, 1, v27) == 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[19], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }

      else
      {
        v29 = v0[18];
        v30 = v0[14];
        v32 = v0[12];
        v31 = v0[13];
        v33 = v0[11];
        v34 = v0[7];
        v35 = v0[5];
        (*(v32 + 32))(v0[15], v0[19], v33);
        Date.addingTimeInterval(_:)();
        (*(v32 + 16))(v29, v30, v33);
        (*(v32 + 56))(v29, 0, 1, v33);
        v36 = (*(*v35 + 240))(v29);
        (*(v34 + 56))(v36);
        lazy protocol witness table accessor for type EvaluationKeyConfigTable and conformance EvaluationKeyConfigTable(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        v37 = dispatch thunk of static Comparable.<= infix(_:_:)();
        v38 = *(v32 + 8);
        v38(v31, v33);
        v40 = v0[14];
        v39 = v0[15];
        v41 = v0[11];
        if (v37)
        {
          v44 = (*(*v0[5] + 288))(5);
          v38(v40, v41);
          v38(v39, v41);
          goto LABEL_20;
        }

        v38(v0[14], v0[11]);
        v38(v39, v41);
      }
    }

    v20 = (*(*v0[5] + 288))(6);
  }

  v44 = v20;
LABEL_20:

  v42 = v0[1];

  return v42(v44);
}

{
  v1 = v0[3];
  v0[22] = *(*(v0[4] + 16) + 24);
  v2 = *(v1 + 32);
  v3 = *(v1 + 40);

  v4 = swift_task_alloc();
  v0[23] = v4;
  *v4 = v0;
  v4[1] = specialized RequestsManager.fetchStatus<A>(status:dynamicConfig:);
  v5 = v0[21];

  return specialized DatabaseTable<>.get(_:)(v5, v2, v3);
}

{
  *(*v1 + 192) = v0;

  if (v0)
  {
    v2 = specialized RequestsManager.fetchStatus<A>(status:dynamicConfig:);
  }

  else
  {
    v2 = specialized RequestsManager.fetchStatus<A>(status:dynamicConfig:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 168);
  if ((*(*(v0 + 152) + 48))(v1, 1, *(v0 + 144)) == 1)
  {
    v2 = (*(**(v0 + 16) + 288))(7);
    goto LABEL_3;
  }

  v5 = *(v0 + 192);
  outlined init with take of AspireApiPECConfig(v1, *(v0 + 160), type metadata accessor for AspireHeEvaluationKeyConfig);
  lazy protocol witness table accessor for type EvaluationKeyConfigTable and conformance EvaluationKeyConfigTable(&lazy protocol witness table cache variable for type AspireHeEvaluationKeyConfig and conformance AspireHeEvaluationKeyConfig, type metadata accessor for AspireHeEvaluationKeyConfig, &protocol conformance descriptor for AspireHeEvaluationKeyConfig);
  v6 = Message.serializedData(partial:)();
  v8 = *(v0 + 160);
  if (v5)
  {
    outlined destroy of AspireApiConfig(*(v0 + 160), type metadata accessor for AspireHeEvaluationKeyConfig);

    v9 = *(v0 + 8);

    return v9();
  }

  else
  {
    v10 = *(v0 + 32);
    v11 = *(v0 + 16);
    v12 = v6;
    v13 = v7;
    (*(*v11 + 304))();
    outlined consume of Data._Representation(v12, v13);

    outlined destroy of AspireApiConfig(v8, type metadata accessor for AspireHeEvaluationKeyConfig);
    v14 = *(v10 + 48);
    *(v0 + 200) = v14;
    os_unfair_lock_lock((v14 + 24));
    v15 = *(v14 + 16);

    os_unfair_lock_unlock((v14 + 24));
    v16 = *(v15 + 48);

    v17 = v11[2];
    *(v0 + 208) = v17;
    v18 = v11[3];
    *(v0 + 216) = v18;
    if (!*(v16 + 16) || (v19 = specialized __RawDictionaryStorage.find<A>(_:)(v17, v18), (v20 & 1) == 0))
    {

      v30 = *(v0 + 136);
      v31 = *(v0 + 64);
      v32 = *(v0 + 72);
      v33 = *(**(v0 + 16) + 208);
      v33(v29);
      v34 = *(v32 + 48);
      v35 = v34(v30, 1, v31);
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v30, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      if (v35 == 1)
      {
        v2 = (*(**(v0 + 16) + 288))(4);
      }

      else
      {
        v36 = *(v0 + 208);
        v37 = *(v0 + 216);
        v38 = *(v0 + 200);
        v39 = *(v0 + 104);
        os_unfair_lock_lock(v38 + 6);

        os_unfair_lock_unlock(v38 + 6);
        AllowList.group(useCase:)(v36, v37, v39);

        v40 = type metadata accessor for UseCaseGroup(0);
        if ((*(*(v40 - 8) + 48))(v39, 1, v40) == 1)
        {
          outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 104), &_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
        }

        else
        {
          v41 = *(v0 + 128);
          v42 = *(v0 + 64);
          v43 = outlined destroy of AspireApiConfig(*(v0 + 104), type metadata accessor for UseCaseGroup);
          v33(v43);
          if (v34(v41, 1, v42) == 1)
          {
            outlined destroy of AMDPbHEConfig.OneOf_Config?(*(v0 + 128), &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
          }

          else
          {
            v44 = *(v0 + 120);
            v45 = *(v0 + 88);
            v47 = *(v0 + 72);
            v46 = *(v0 + 80);
            v48 = *(v0 + 64);
            v49 = *(v0 + 32);
            v50 = *(v0 + 16);
            (*(v47 + 32))(*(v0 + 96), *(v0 + 128), v48);
            Date.addingTimeInterval(_:)();
            (*(v47 + 16))(v44, v45, v48);
            (*(v47 + 56))(v44, 0, 1, v48);
            v51 = (*(*v50 + 240))(v44);
            (*(v49 + 56))(v51);
            lazy protocol witness table accessor for type EvaluationKeyConfigTable and conformance EvaluationKeyConfigTable(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
            v52 = dispatch thunk of static Comparable.<= infix(_:_:)();
            v53 = *(v47 + 8);
            v53(v46, v48);
            v55 = *(v0 + 88);
            v54 = *(v0 + 96);
            v56 = *(v0 + 64);
            if (v52)
            {
              v57 = (*(**(v0 + 16) + 288))(5);
              v53(v55, v56);
              v53(v54, v56);
              goto LABEL_4;
            }

            v53(*(v0 + 88), *(v0 + 64));
            v53(v54, v56);
          }
        }

        v2 = (*(**(v0 + 16) + 288))(6);
      }

LABEL_3:
      v57 = v2;
LABEL_4:

      v3 = *(v0 + 8);

      return v3(v57);
    }

    v21 = *(v0 + 32);
    v22 = (*(v16 + 56) + 16 * v19);
    v23 = *v22;
    v24 = v22[1];
    *(v0 + 224) = v24;

    v25 = *(v21 + 32);
    ObjectType = swift_getObjectType();
    v58 = (*(v25 + 8) + **(v25 + 8));
    v27 = swift_task_alloc();
    *(v0 + 232) = v27;
    *v27 = v0;
    v27[1] = specialized RequestsManager.fetchStatus<A>(status:dynamicConfig:);
    v28 = *(v0 + 40);

    return v58(v28, v23, v24, ObjectType, v25);
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

{

  return MEMORY[0x2822009F8](specialized RequestsManager.fetchStatus<A>(status:dynamicConfig:), 0, 0);
}

{
  v1 = v0[5];
  v2 = type metadata accessor for UserIdentifier(0);
  if ((*(*(v2 - 8) + 48))(v1, 1, v2) == 1)
  {
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v1, &_s8CipherML14UserIdentifierVSgMd, &_s8CipherML14UserIdentifierVSgMR);
  }

  else
  {
    v3 = *(v1 + *(v2 + 24));

    outlined destroy of AspireApiConfig(v1, type metadata accessor for UserIdentifier);
    if (*(v3 + 16))
    {
      v4 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0[3] + 32), *(v0[3] + 40));
      if (v5)
      {
        v6 = v0[7];
        _s8CipherML13NetworkConfigVWOcTm_0(*(v3 + 56) + *(v0[6] + 72) * v4, v6, type metadata accessor for SecretKey);

        outlined destroy of AspireApiConfig(v6, type metadata accessor for SecretKey);
        Date.init(timeIntervalSince1970:)();
        v7 = 0;
        goto LABEL_8;
      }
    }
  }

  v7 = 1;
LABEL_8:
  v8 = v0[14];
  v9 = v0[2];
  (*(v0[9] + 56))(v8, v7, 1, v0[8]);
  (*(*v9 + 320))(v8);

  v10 = outlined destroy of AMDPbHEConfig.OneOf_Config?(v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v11 = v0[17];
  v12 = v0[8];
  v13 = v0[9];
  v14 = *(*v0[2] + 208);
  v14(v10);
  v15 = *(v13 + 48);
  LODWORD(v9) = v15(v11, 1, v12);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v11, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  if (v9 == 1)
  {
    v16 = (*(*v0[2] + 288))(4);
  }

  else
  {
    v17 = v0[26];
    v18 = v0[27];
    v19 = v0[25];
    v20 = v0[13];
    os_unfair_lock_lock(v19 + 6);

    os_unfair_lock_unlock(v19 + 6);
    AllowList.group(useCase:)(v17, v18, v20);

    v21 = type metadata accessor for UseCaseGroup(0);
    if ((*(*(v21 - 8) + 48))(v20, 1, v21) == 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[13], &_s8CipherML12UseCaseGroupVSgMd, &_s8CipherML12UseCaseGroupVSgMR);
    }

    else
    {
      v22 = v0[16];
      v23 = v0[8];
      v24 = outlined destroy of AspireApiConfig(v0[13], type metadata accessor for UseCaseGroup);
      v14(v24);
      if (v15(v22, 1, v23) == 1)
      {
        outlined destroy of AMDPbHEConfig.OneOf_Config?(v0[16], &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
      }

      else
      {
        v25 = v0[15];
        v26 = v0[11];
        v28 = v0[9];
        v27 = v0[10];
        v29 = v0[8];
        v30 = v0[4];
        v31 = v0[2];
        (*(v28 + 32))(v0[12], v0[16], v29);
        Date.addingTimeInterval(_:)();
        (*(v28 + 16))(v25, v26, v29);
        (*(v28 + 56))(v25, 0, 1, v29);
        v32 = (*(*v31 + 240))(v25);
        (*(v30 + 56))(v32);
        lazy protocol witness table accessor for type EvaluationKeyConfigTable and conformance EvaluationKeyConfigTable(&lazy protocol witness table cache variable for type Date and conformance Date, MEMORY[0x277CC9578], MEMORY[0x277CC9590]);
        v33 = dispatch thunk of static Comparable.<= infix(_:_:)();
        v34 = *(v28 + 8);
        v34(v27, v29);
        v36 = v0[11];
        v35 = v0[12];
        v37 = v0[8];
        if (v33)
        {
          v40 = (*(*v0[2] + 288))(5);
          v34(v36, v37);
          v34(v35, v37);
          goto LABEL_19;
        }

        v34(v0[11], v0[8]);
        v34(v35, v37);
      }
    }

    v16 = (*(*v0[2] + 288))(6);
  }

  v40 = v16;
LABEL_19:

  v38 = v0[1];

  return v38(v40);
}

uint64_t partial apply for closure #1 in RequestsManager.queryStatus(for:options:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return closure #1 in RequestsManager.queryStatus(for:options:)(a1, v4, v5, v6, v7, v8);
}

uint64_t outlined init with take of AspireApiConfigResponse?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML23AspireApiConfigResponseVSgMd, &_s8CipherML23AspireApiConfigResponseVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for RequestsManager.CMLUseCaseStatusBuilder(uint64_t a1)
{
  result = type metadata singleton initialization cache for RequestsManager.CMLUseCaseStatusBuilder;
  if (!type metadata singleton initialization cache for RequestsManager.CMLUseCaseStatusBuilder)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for RequestsManager.CMLUseCaseStatusBuilder(uint64_t a1)
{
  type metadata accessor for Date?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Date?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Date?)
  {
    type metadata accessor for Date();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Date?);
    }
  }
}

uint64_t outlined init with take of AspireApiPECConfig(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t lazy protocol witness table accessor for type EvaluationKeyConfigTable and conformance EvaluationKeyConfigTable(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s8CipherML13NetworkConfigVWOcTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined destroy of AspireApiConfig(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t AspireApiRequest.amd()@<X0>(uint64_t a1@<X8>)
{
  v67 = a1;
  v73 = type metadata accessor for AspireApiPIRRequest(0);
  MEMORY[0x28223BE20](v73);
  v74 = &v67 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v3 - 8);
  v71 = &v67 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v70 = &v67 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v67 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v67 - v11;
  v76 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  v84 = *(v76 - 8);
  MEMORY[0x28223BE20](v76);
  v75 = (&v67 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = (&v67 - v15);
  v72 = type metadata accessor for AMDPbEvaluationKeyMetadata(0);
  MEMORY[0x28223BE20](v72);
  v69 = &v67 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v68 = &v67 - v19;
  v20 = type metadata accessor for AspireApiPECRequest(0);
  MEMORY[0x28223BE20](v20);
  v22 = &v67 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v23 - 8);
  v25 = &v67 - v24;
  v26 = *(type metadata accessor for AspireApiRequest(0) + 20);
  v78 = v1;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v1 + v26, v25, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMd, &_s8CipherML16AspireApiRequestV06OneOf_E0OSgMR);
  v27 = type metadata accessor for AspireApiRequest.OneOf_Request(0);
  if ((*(*(v27 - 8) + 48))(v25, 1, v27) == 1)
  {
    if (one-time initialization token for networking != -1)
    {
      swift_once();
    }

    v28 = type metadata accessor for Logger();
    __swift_project_value_buffer(v28, static Logger.networking);
    v29 = Logger.logObject.getter();
    v30 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_224E26000, v29, v30, "query has neither PecRequest nor PirRequest", v31, 2u);
      MEMORY[0x22AA61F40](v31, -1, -1);
    }

    type metadata accessor for CipherMLError(0);
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_2(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  else
  {
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    if (EnumCaseMultiPayload)
    {
      v34 = v84;
      if (EnumCaseMultiPayload == 1)
      {
        outlined init with take of AspireApiPIRRequest(v25, v22, type metadata accessor for AspireApiPECRequest);
        outlined init with copy of AMDPbHEConfig.OneOf_Config?(&v22[*(v20 + 32)], v12, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
        v35 = *(v34 + 48);
        v36 = v76;
        if (v35(v12, 1, v76) == 1)
        {
          v37 = v78;
          *v16 = 0;
          v16[1] = 0;
          v16[2] = 0xC000000000000000;
          UnknownStorage.init()();
          if (v35(v12, 1, v36) != 1)
          {
            outlined destroy of AMDPbHEConfig.OneOf_Config?(v12, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
          }
        }

        else
        {
          v37 = v78;
          outlined init with take of AspireApiPIRRequest(v12, v16, type metadata accessor for AspireApiEvaluationKeyMetadata);
        }

        _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_2(&lazy protocol witness table cache variable for type AspireApiEvaluationKeyMetadata and conformance AspireApiEvaluationKeyMetadata, type metadata accessor for AspireApiEvaluationKeyMetadata, &protocol conformance descriptor for AspireApiEvaluationKeyMetadata);
        v49 = v77;
        v50 = Message.serializedData(partial:)();
        if (v49)
        {
          v52 = type metadata accessor for AspireApiEvaluationKeyMetadata;
          v53 = v16;
        }

        else
        {
          v59 = v50;
          v60 = v51;
          outlined destroy of AspireApiRequest.OneOf_Request(v16, type metadata accessor for AspireApiEvaluationKeyMetadata);
          v82 = v59;
          v83 = v60;
          v81 = 0;
          v79 = 0u;
          v80 = 0u;
          BinaryDecodingOptions.init()();
          _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_2(&lazy protocol witness table cache variable for type AMDPbEvaluationKeyMetadata and conformance AMDPbEvaluationKeyMetadata, type metadata accessor for AMDPbEvaluationKeyMetadata, &protocol conformance descriptor for AMDPbEvaluationKeyMetadata);
          v61 = v68;
          Message.init<A>(serializedBytes:extensions:partial:options:)();
          v65 = type metadata accessor for AMDPbHEQuery(0);
          MEMORY[0x28223BE20](v65);
          *(&v67 - 4) = v37;
          *(&v67 - 3) = v22;
          *(&v67 - 2) = v61;
          _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_2(&lazy protocol witness table cache variable for type AMDPbHEQuery and conformance AMDPbHEQuery, type metadata accessor for AMDPbHEQuery, &protocol conformance descriptor for AMDPbHEQuery);
          static Message.with(_:)();
          v52 = type metadata accessor for AMDPbEvaluationKeyMetadata;
          v53 = v61;
        }

        outlined destroy of AspireApiRequest.OneOf_Request(v53, v52);
        v47 = type metadata accessor for AspireApiPECRequest;
        v48 = v22;
      }

      else
      {
        if (one-time initialization token for networking != -1)
        {
          swift_once();
        }

        v43 = type metadata accessor for Logger();
        __swift_project_value_buffer(v43, static Logger.networking);
        v44 = Logger.logObject.getter();
        v45 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v44, v45))
        {
          v46 = swift_slowAlloc();
          *v46 = 0;
          _os_log_impl(&dword_224E26000, v44, v45, "OPRF request not supported for AMS networking", v46, 2u);
          MEMORY[0x22AA61F40](v46, -1, -1);
        }

        type metadata accessor for CipherMLError(0);
        _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_2(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
        swift_allocError();
        swift_storeEnumTagMultiPayload();
        swift_willThrow();
        v47 = type metadata accessor for AspireApiRequest.OneOf_Request;
        v48 = v25;
      }
    }

    else
    {
      v38 = v74;
      outlined init with take of AspireApiPIRRequest(v25, v74, type metadata accessor for AspireApiPIRRequest);
      outlined init with copy of AMDPbHEConfig.OneOf_Config?(v38 + *(v73 + 32), v9, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
      v39 = *(v84 + 48);
      v40 = v76;
      if (v39(v9, 1, v76) == 1)
      {
        v41 = v78;
        v42 = v75;
        *v75 = 0;
        v42[1] = 0;
        v42[2] = 0xC000000000000000;
        UnknownStorage.init()();
        if (v39(v9, 1, v40) != 1)
        {
          outlined destroy of AMDPbHEConfig.OneOf_Config?(v9, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
        }
      }

      else
      {
        v41 = v78;
        v42 = v75;
        outlined init with take of AspireApiPIRRequest(v9, v75, type metadata accessor for AspireApiEvaluationKeyMetadata);
      }

      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_2(&lazy protocol witness table cache variable for type AspireApiEvaluationKeyMetadata and conformance AspireApiEvaluationKeyMetadata, type metadata accessor for AspireApiEvaluationKeyMetadata, &protocol conformance descriptor for AspireApiEvaluationKeyMetadata);
      v54 = v77;
      v55 = Message.serializedData(partial:)();
      if (v54)
      {
        v57 = type metadata accessor for AspireApiEvaluationKeyMetadata;
        v58 = v42;
      }

      else
      {
        v62 = v55;
        v63 = v56;
        outlined destroy of AspireApiRequest.OneOf_Request(v42, type metadata accessor for AspireApiEvaluationKeyMetadata);
        v82 = v62;
        v83 = v63;
        v81 = 0;
        v79 = 0u;
        v80 = 0u;
        BinaryDecodingOptions.init()();
        _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_2(&lazy protocol witness table cache variable for type AMDPbEvaluationKeyMetadata and conformance AMDPbEvaluationKeyMetadata, type metadata accessor for AMDPbEvaluationKeyMetadata, &protocol conformance descriptor for AMDPbEvaluationKeyMetadata);
        v64 = v69;
        Message.init<A>(serializedBytes:extensions:partial:options:)();
        v66 = type metadata accessor for AMDPbHEQuery(0);
        MEMORY[0x28223BE20](v66);
        *(&v67 - 4) = v41;
        *(&v67 - 3) = v38;
        *(&v67 - 2) = v64;
        _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_2(&lazy protocol witness table cache variable for type AMDPbHEQuery and conformance AMDPbHEQuery, type metadata accessor for AMDPbHEQuery, &protocol conformance descriptor for AMDPbHEQuery);
        static Message.with(_:)();
        v57 = type metadata accessor for AMDPbEvaluationKeyMetadata;
        v58 = v64;
      }

      outlined destroy of AspireApiRequest.OneOf_Request(v58, v57);
      v47 = type metadata accessor for AspireApiPIRRequest;
      v48 = v38;
    }

    return outlined destroy of AspireApiRequest.OneOf_Request(v48, v47);
  }
}

uint64_t closure #1 in AspireApiRequest.amd()(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v16[-v9];
  v12 = *a2;
  v11 = a2[1];

  *a1 = v12;
  a1[1] = v11;
  type metadata accessor for AMDPbPECQuery(0);
  v17 = a3;
  v18 = a4;
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_2(&lazy protocol witness table cache variable for type AMDPbPECQuery and conformance AMDPbPECQuery, type metadata accessor for AMDPbPECQuery, &protocol conformance descriptor for AMDPbPECQuery);
  static Message.with(_:)();
  v13 = type metadata accessor for AMDPbHEQuery.OneOf_Query(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v13 - 8) + 56))(v10, 0, 1, v13);
  v14 = type metadata accessor for AMDPbHEQuery(0);
  return outlined assign with take of AMDPbHEConfig.OneOf_Config?(v10, a1 + *(v14 + 20), &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
}

uint64_t closure #1 in closure #1 in AspireApiRequest.amd()(char *a1, uint64_t *a2, uint64_t a3)
{
  v26 = a3;
  v6 = type metadata accessor for AMDPbEvaluationKey(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v27 = &v25 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AspireSimilaritySerializedCiphertextMatrix(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a2;

  *a1 = v13;
  v15 = a2[1];
  if (*(v15 + 16))
  {
    outlined init with copy of AMDPbHEResponse(v15 + ((*(v10 + 80) + 32) & ~*(v10 + 80)), v12, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
    v16 = type metadata accessor for AMDPbPECQuery(0);
    v25 = v3;
    v17 = *(v16 + 28);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(&a1[v17], &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
    outlined init with take of AspireApiPIRRequest(v12, &a1[v17], type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
    v18 = (*(v10 + 56))(&a1[v17], 0, 1, v9);
    MEMORY[0x28223BE20](v18);
    *(&v25 - 2) = v26;
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_2(&lazy protocol witness table cache variable for type AMDPbEvaluationKey and conformance AMDPbEvaluationKey, type metadata accessor for AMDPbEvaluationKey, &protocol conformance descriptor for AMDPbEvaluationKey);
    v19 = v27;
    static Message.with(_:)();
    v20 = *(v16 + 32);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(&a1[v20], &_s8CipherML18AMDPbEvaluationKeyVSgMd, &_s8CipherML18AMDPbEvaluationKeyVSgMR);
    outlined init with take of AspireApiPIRRequest(v19, &a1[v20], type metadata accessor for AMDPbEvaluationKey);
    (*(v7 + 56))(&a1[v20], 0, 1, v6);
    v21 = a2[2];
    v22 = a2[3];
    v23 = *(a1 + 1);
    v24 = *(a1 + 2);
    outlined copy of Data._Representation(v21, v22);
    result = outlined consume of Data._Representation(v23, v24);
    *(a1 + 1) = v21;
    *(a1 + 2) = v22;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t closure #2 in AspireApiRequest.amd()(void *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v17[-v10];
  v13 = *a2;
  v12 = a2[1];

  *a1 = v13;
  a1[1] = v12;
  type metadata accessor for AMDPbPIRQuery(0);
  v18 = a3;
  v19 = a4;
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_2(&lazy protocol witness table cache variable for type AMDPbPIRQuery and conformance AMDPbPIRQuery, type metadata accessor for AMDPbPIRQuery, &protocol conformance descriptor for AMDPbPIRQuery);
  result = static Message.with(_:)();
  if (!v4)
  {
    v15 = type metadata accessor for AMDPbHEQuery.OneOf_Query(0);
    swift_storeEnumTagMultiPayload();
    (*(*(v15 - 8) + 56))(v11, 0, 1, v15);
    v16 = type metadata accessor for AMDPbHEQuery(0);
    return outlined assign with take of AMDPbHEConfig.OneOf_Config?(v11, a1 + *(v16 + 20), &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMd, &_s8CipherML12AMDPbHEQueryV11OneOf_QueryOSgMR);
  }

  return result;
}

uint64_t closure #1 in closure #2 in AspireApiRequest.amd()(_DWORD *a1, _DWORD *a2, uint64_t a3)
{
  v38 = a3;
  v5 = type metadata accessor for AMDPbEvaluationKey(0);
  v40 = *(v5 - 8);
  v41 = v5;
  MEMORY[0x28223BE20](v5);
  v39 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x28223BE20](v7 - 8);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v37 - v9;
  v11 = type metadata accessor for AspirePirEncryptedIndices(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v15);
  v43 = a1;
  v44 = &v37 - v16;
  *a1 = *a2;
  v17 = *(type metadata accessor for AspireApiPIRRequest(0) + 28);
  v42 = a2;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a2 + v17, v10, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  v18 = *(v12 + 48);
  if (v18(v10, 1, v11) == 1)
  {
    *v14 = MEMORY[0x277D84F90];
    v14[1] = 0;
    UnknownStorage.init()();
    if (v18(v10, 1, v11) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v10, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
    }
  }

  else
  {
    outlined init with take of AspireApiPIRRequest(v10, v14, type metadata accessor for AspirePirEncryptedIndices);
  }

  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_2(&lazy protocol witness table cache variable for type AspirePirEncryptedIndices and conformance AspirePirEncryptedIndices, type metadata accessor for AspirePirEncryptedIndices, &protocol conformance descriptor for AspirePirEncryptedIndices);
  v19 = v50;
  v20 = Message.serializedData(partial:)();
  if (v19)
  {
    return outlined destroy of AspireApiRequest.OneOf_Request(v14, type metadata accessor for AspirePirEncryptedIndices);
  }

  v23 = v20;
  v24 = v21;
  outlined destroy of AspireApiRequest.OneOf_Request(v14, type metadata accessor for AspirePirEncryptedIndices);
  v48 = v23;
  v49 = v24;
  v47 = 0;
  v45 = 0u;
  v46 = 0u;
  BinaryDecodingOptions.init()();
  v25 = v44;
  Message.init<A>(serializedBytes:extensions:partial:options:)();
  v26 = type metadata accessor for AMDPbPIRQuery(0);
  v27 = *(v26 + 28);
  v28 = v43;
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v43 + v27, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
  outlined init with take of AspireApiPIRRequest(v25, v28 + v27, type metadata accessor for AspirePirEncryptedIndices);
  v29 = (*(v12 + 56))(v28 + v27, 0, 1, v11);
  MEMORY[0x28223BE20](v29);
  *(&v37 - 2) = v38;
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_2(&lazy protocol witness table cache variable for type AMDPbEvaluationKey and conformance AMDPbEvaluationKey, type metadata accessor for AMDPbEvaluationKey, &protocol conformance descriptor for AMDPbEvaluationKey);
  v30 = v39;
  v31 = v41;
  static Message.with(_:)();
  v32 = *(v26 + 32);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v28 + v32, &_s8CipherML18AMDPbEvaluationKeyVSgMd, &_s8CipherML18AMDPbEvaluationKeyVSgMR);
  outlined init with take of AspireApiPIRRequest(v30, v28 + v32, type metadata accessor for AMDPbEvaluationKey);
  (*(v40 + 56))(v28 + v32, 0, 1, v31);
  v33 = *(v42 + 1);
  v34 = *(v42 + 2);
  v35 = *(v28 + 1);
  v36 = *(v28 + 2);
  outlined copy of Data._Representation(v33, v34);
  result = outlined consume of Data._Representation(v35, v36);
  *(v28 + 1) = v33;
  *(v28 + 2) = v34;
  return result;
}

uint64_t closure #1 in closure #1 in closure #1 in AspireApiRequest.amd()(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AMDPbEvaluationKeyMetadata(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AMDPbHEResponse(a2, v7, type metadata accessor for AMDPbEvaluationKeyMetadata);
  v8 = *(type metadata accessor for AMDPbEvaluationKey(0) + 20);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(a1 + v8, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMd, &_s8CipherML26AMDPbEvaluationKeyMetadataVSgMR);
  outlined init with take of AspireApiPIRRequest(v7, a1 + v8, type metadata accessor for AMDPbEvaluationKeyMetadata);
  return (*(v5 + 56))(a1 + v8, 0, 1, v4);
}

uint64_t AMDPbHEResponse.validateSuccessResponse()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for AMDPbHEResponse(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  if (!*v2)
  {
    return outlined init with copy of AMDPbHEResponse(v2, a1, type metadata accessor for AMDPbHEResponse);
  }

  if (one-time initialization token for networking != -1)
  {
    swift_once();
  }

  v10 = type metadata accessor for Logger();
  __swift_project_value_buffer(v10, static Logger.networking);
  outlined init with copy of AMDPbHEResponse(v2, v9, type metadata accessor for AMDPbHEResponse);
  outlined init with copy of AMDPbHEResponse(v2, v6, type metadata accessor for AMDPbHEResponse);
  v11 = Logger.logObject.getter();
  v12 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v34 = v31;
    *v13 = 136446466;
    v14 = v9[8];
    v32 = *v9;
    v33 = v14;
    v15 = String.init<A>(describing:)();
    v17 = v16;
    outlined destroy of AspireApiRequest.OneOf_Request(v9, type metadata accessor for AMDPbHEResponse);
    v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v17, &v34);

    *(v13 + 4) = v18;
    *(v13 + 12) = 2082;
    v19 = MEMORY[0x22AA60B60](*(v6 + 3), MEMORY[0x277D837D0]);
    v21 = v20;
    outlined destroy of AspireApiRequest.OneOf_Request(v6, type metadata accessor for AMDPbHEResponse);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v34);

    *(v13 + 14) = v22;
    _os_log_impl(&dword_224E26000, v11, v12, "AMDPbHEResponse has non-success status '%{public}s', with error '%{public}s'", v13, 0x16u);
    v23 = v31;
    swift_arrayDestroy();
    MEMORY[0x22AA61F40](v23, -1, -1);
    MEMORY[0x22AA61F40](v13, -1, -1);
  }

  else
  {

    outlined destroy of AspireApiRequest.OneOf_Request(v6, type metadata accessor for AMDPbHEResponse);
    outlined destroy of AspireApiRequest.OneOf_Request(v9, type metadata accessor for AMDPbHEResponse);
  }

  v25 = v2[3];
  if (v25[2] == 1)
  {
    v26 = v25[4];
    v27 = v25[5];
  }

  else
  {
    v26 = MEMORY[0x22AA60B60]();
    v27 = v28;
  }

  type metadata accessor for CipherMLError(0);
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_2(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
  swift_allocError();
  *v29 = v26;
  v29[1] = v27;
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t AMDPbHEResponse.validateAPICode(expected:)@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v7 = type metadata accessor for AMDPbHEResponse(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v3 + *(v10 + 44);
  if (*(v11 + 9))
  {
    v12 = 0;
  }

  else
  {
    v12 = *v11;
  }

  if ((a2 & 1) == 0)
  {
    if (v12 != a1)
    {
      goto LABEL_8;
    }

    return outlined init with copy of AMDPbHEResponse(v3, a3, type metadata accessor for AMDPbHEResponse);
  }

  if (a1 > 1)
  {
    if (a1 == 2)
    {
      if (v12 != 2)
      {
        goto LABEL_8;
      }
    }

    else if (v12 != 3)
    {
      goto LABEL_8;
    }

    return outlined init with copy of AMDPbHEResponse(v3, a3, type metadata accessor for AMDPbHEResponse);
  }

  if (a1)
  {
    if (v12 != 1)
    {
      goto LABEL_8;
    }

    return outlined init with copy of AMDPbHEResponse(v3, a3, type metadata accessor for AMDPbHEResponse);
  }

  if (!v12)
  {
    return outlined init with copy of AMDPbHEResponse(v3, a3, type metadata accessor for AMDPbHEResponse);
  }

LABEL_8:
  if (one-time initialization token for networking != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.networking);
  outlined init with copy of AMDPbHEResponse(v3, v9, type metadata accessor for AMDPbHEResponse);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v29 = v17;
    *v16 = 136446466;
    v18 = v9[8];
    v27 = *v9;
    v28 = v18;
    v19 = String.init<A>(describing:)();
    v21 = v20;
    outlined destroy of AspireApiRequest.OneOf_Request(v9, type metadata accessor for AMDPbHEResponse);
    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v29);

    *(v16 + 4) = v22;
    *(v16 + 12) = 2082;
    v27 = a1;
    v28 = a2 & 1;
    v23 = String.init<A>(describing:)();
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v23, v24, &v29);

    *(v16 + 14) = v25;
    _os_log_impl(&dword_224E26000, v14, v15, "AMDPbHEResponse has incorrect apiCode '%{public}s', expected '%{public}s'", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x22AA61F40](v17, -1, -1);
    MEMORY[0x22AA61F40](v16, -1, -1);
  }

  else
  {

    outlined destroy of AspireApiRequest.OneOf_Request(v9, type metadata accessor for AMDPbHEResponse);
  }

  type metadata accessor for CipherMLError(0);
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_2(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
  swift_allocError();
  swift_storeEnumTagMultiPayload();
  return swift_willThrow();
}

uint64_t AMDPbHEReply.aspire()()
{
  v1 = type metadata accessor for AMDPbPIRReply(0);
  MEMORY[0x28223BE20](v1 - 8);
  v3 = &v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for AMDPbPECReply(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v20 - v8;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v0, &v20 - v8, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMd, &_s8CipherML12AMDPbHEReplyV11OneOf_ReplyOSgMR);
  v10 = type metadata accessor for AMDPbHEReply.OneOf_Reply(0);
  if ((*(*(v10 - 8) + 48))(v9, 1, v10) == 1)
  {
    if (one-time initialization token for networking != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.networking);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 0;
      _os_log_impl(&dword_224E26000, v12, v13, "Response is neither pecReply nor pirReply", v14, 2u);
      MEMORY[0x22AA61F40](v14, -1, -1);
    }

    type metadata accessor for CipherMLError(0);
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_2(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    return swift_willThrow();
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      outlined init with take of AspireApiPIRRequest(v9, v6, type metadata accessor for AMDPbPECReply);
      v16 = type metadata accessor for AspireApiResponse(0);
      MEMORY[0x28223BE20](v16);
      *(&v20 - 2) = v6;
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_2(&lazy protocol witness table cache variable for type AspireApiResponse and conformance AspireApiResponse, type metadata accessor for AspireApiResponse, &protocol conformance descriptor for AspireApiResponse);
      static Message.with(_:)();
      v17 = type metadata accessor for AMDPbPECReply;
      v18 = v6;
    }

    else
    {
      outlined init with take of AspireApiPIRRequest(v9, v3, type metadata accessor for AMDPbPIRReply);
      v19 = type metadata accessor for AspireApiResponse(0);
      MEMORY[0x28223BE20](v19);
      *(&v20 - 2) = v3;
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_2(&lazy protocol witness table cache variable for type AspireApiResponse and conformance AspireApiResponse, type metadata accessor for AspireApiResponse, &protocol conformance descriptor for AspireApiResponse);
      static Message.with(_:)();
      v17 = type metadata accessor for AMDPbPIRReply;
      v18 = v3;
    }

    return outlined destroy of AspireApiRequest.OneOf_Request(v18, v17);
  }
}

uint64_t closure #1 in AMDPbHEReply.aspire()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-v5];
  type metadata accessor for AspireApiPECResponse(0);
  v10 = a2;
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_2(&lazy protocol witness table cache variable for type AspireApiPECResponse and conformance AspireApiPECResponse, type metadata accessor for AspireApiPECResponse, &protocol conformance descriptor for AspireApiPECResponse);
  static Message.with(_:)();
  v7 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  return outlined assign with take of AMDPbHEConfig.OneOf_Config?(v6, a1, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
}

uint64_t closure #1 in closure #1 in AMDPbHEReply.aspire()(void *a1, uint64_t *a2)
{
  v4 = type metadata accessor for AMDPbPECShardReply(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for AspireApiPECShardResponse(0);
  v8 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a2;
  v12 = *(*a2 + 16);
  v13 = MEMORY[0x277D84F90];
  if (v12)
  {
    v20 = a1;
    v24 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v12, 0);
    v13 = v24;
    v14 = v11 + ((*(v5 + 80) + 32) & ~*(v5 + 80));
    v21 = *(v5 + 72);
    do
    {
      v15 = outlined init with copy of AMDPbHEResponse(v14, v7, type metadata accessor for AMDPbPECShardReply);
      MEMORY[0x28223BE20](v15);
      *(&v20 - 2) = v7;
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_2(&lazy protocol witness table cache variable for type AspireApiPECShardResponse and conformance AspireApiPECShardResponse, type metadata accessor for AspireApiPECShardResponse, &protocol conformance descriptor for AspireApiPECShardResponse);
      v16 = v23;
      static Message.with(_:)();
      v23 = v16;
      outlined destroy of AspireApiRequest.OneOf_Request(v7, type metadata accessor for AMDPbPECShardReply);
      v24 = v13;
      v18 = *(v13 + 16);
      v17 = *(v13 + 24);
      if (v18 >= v17 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v17 > 1), v18 + 1, 1);
        v13 = v24;
      }

      *(v13 + 16) = v18 + 1;
      outlined init with take of AspireApiPIRRequest(v10, v13 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v18, type metadata accessor for AspireApiPECShardResponse);
      v14 += v21;
      --v12;
    }

    while (v12);
    a1 = v20;
  }

  *a1 = v13;
  return result;
}

uint64_t AMDPbPECShardReply.aspire()()
{
  type metadata accessor for AspireApiPECShardResponse(0);
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_2(&lazy protocol witness table cache variable for type AspireApiPECShardResponse and conformance AspireApiPECShardResponse, type metadata accessor for AspireApiPECShardResponse, &protocol conformance descriptor for AspireApiPECShardResponse);
  return static Message.with(_:)();
}

uint64_t closure #2 in AMDPbHEReply.aspire()(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v9[-v5];
  type metadata accessor for AspireApiPIRResponse(0);
  v10 = a2;
  _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_2(&lazy protocol witness table cache variable for type AspireApiPIRResponse and conformance AspireApiPIRResponse, type metadata accessor for AspireApiPIRResponse, &protocol conformance descriptor for AspireApiPIRResponse);
  static Message.with(_:)();
  v7 = type metadata accessor for AspireApiResponse.OneOf_Response(0);
  swift_storeEnumTagMultiPayload();
  (*(*(v7 - 8) + 56))(v6, 0, 1, v7);
  return outlined assign with take of AMDPbHEConfig.OneOf_Config?(v6, a1, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMd, &_s8CipherML17AspireApiResponseV06OneOf_E0OSgMR);
}

uint64_t closure #1 in AMDPbPECShardReply.aspire()(uint64_t *a1, uint64_t *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v19 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy8CipherML42AspireSimilaritySerializedCiphertextMatrixVGMd, &_ss23_ContiguousArrayStorageCy8CipherML42AspireSimilaritySerializedCiphertextMatrixVGMR);
  v7 = type metadata accessor for AspireSimilaritySerializedCiphertextMatrix(0);
  v8 = *(v7 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_225022960;
  v11 = (v10 + v9);
  v12 = type metadata accessor for AMDPbPECShardReply(0);
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(a2 + *(v12 + 28), v6, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
  v13 = *(v8 + 48);
  if (v13(v6, 1, v7) == 1)
  {
    *v11 = 0;
    *(v11 + 1) = MEMORY[0x277D84F90];
    UnknownStorage.init()();
    v14 = *(v7 + 32);
    v15 = type metadata accessor for AspireSimilarityPlaintextPacking(0);
    (*(*(v15 - 8) + 56))(&v11[v14], 1, 1, v15);
    if (v13(v6, 1, v7) != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v6, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMd, &_s8CipherML42AspireSimilaritySerializedCiphertextMatrixVSgMR);
    }
  }

  else
  {
    outlined init with take of AspireApiPIRRequest(v6, v11, type metadata accessor for AspireSimilaritySerializedCiphertextMatrix);
  }

  *a1 = v10;
  v16 = *a2;

  a1[1] = v16;
  v17 = a2[1];

  a1[2] = v17;
  return result;
}

uint64_t partial apply for closure #1 in closure #2 in AMDPbHEReply.aspire()(uint64_t *a1)
{
  v3 = **(v1 + 16);

  *a1 = v3;
  return result;
}

uint64_t outlined init with copy of AMDPbHEResponse(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_2(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined destroy of AspireApiRequest.OneOf_Request(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with take of AspireApiPIRRequest(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t BatchPIRClient.init(secretKey:config:configID:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v106 = a3;
  v107 = a4;
  v108 = a1;
  v86 = a5;
  v89 = type metadata accessor for HE.SerializedSecretKey();
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v87 = &v79 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v85 = type metadata accessor for PIR.BatchKeywordPirClient();
  v84 = *(v85 - 8);
  MEMORY[0x28223BE20](v85);
  v109 = &v79 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AspirePirBatchPirParameters(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v97 = (&v79 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v96 = type metadata accessor for PIR.PirAlgorithm();
  v95 = *(v96 - 8);
  MEMORY[0x28223BE20](v96);
  v99 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  MEMORY[0x28223BE20](v12 - 8);
  v102 = &v79 - v13;
  v101 = type metadata accessor for AspireHeEncryptionParameters(0);
  v100 = *(v101 - 8);
  MEMORY[0x28223BE20](v101);
  v15 = &v79 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for HE.EncryptionParams();
  MEMORY[0x28223BE20](v16 - 8);
  v105 = &v79 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = type metadata accessor for PIR.PirParams();
  v91 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v93 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v98 = &v79 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  MEMORY[0x28223BE20](v21 - 8);
  v90 = &v79 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v25 = &v79 - v24;
  v94 = type metadata accessor for AspireApiPIRShardConfig(0);
  v26 = *(v94 - 8);
  MEMORY[0x28223BE20](v94);
  v28 = &v79 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v29 = *(a2 + *(type metadata accessor for AspireApiPIRConfig(0) + 20));
  v30 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__shardConfigs;
  swift_beginAccess();
  v31 = *(v29 + v30);
  if (!*(v31 + 16))
  {
    type metadata accessor for CipherMLError(0);
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_3(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    outlined consume of Data._Representation(v106, v107);
    v34 = type metadata accessor for SecretKey;
    v35 = v108;
LABEL_24:
    outlined destroy of SecretKey(v35, v34);
    return outlined destroy of SecretKey(a2, type metadata accessor for AspireApiPIRConfig);
  }

  v104 = a2;
  outlined init with copy of AspireApiPIRShardConfig(v31 + ((*(v26 + 80) + 32) & ~*(v26 + 80)), v28, type metadata accessor for AspireApiPIRShardConfig);
  v32 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchPirParams;
  swift_beginAccess();
  v79 = v32;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v29 + v32, v25, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v33 = *(v9 + 48);
  v82 = v8;
  v81 = v9 + 48;
  v80 = v33;
  LODWORD(v32) = v33(v25, 1, v8);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v25, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  if (v32 == 1)
  {
    type metadata accessor for CipherMLError(0);
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_3(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    outlined consume of Data._Representation(v106, v107);
    outlined destroy of SecretKey(v108, type metadata accessor for SecretKey);
    outlined destroy of SecretKey(v28, type metadata accessor for AspireApiPIRShardConfig);
    a2 = v104;
    return outlined destroy of SecretKey(a2, type metadata accessor for AspireApiPIRConfig);
  }

  v83 = v28;
  v36 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__encryptionParameters;
  swift_beginAccess();
  v37 = v102;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v29 + v36, v102, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
  v38 = *(v100 + 48);
  v39 = v101;
  if (v38(v37, 1, v101) == 1)
  {
    *v15 = 0;
    *(v15 + 1) = 0;
    *(v15 + 2) = MEMORY[0x277D84F90];
    *(v15 + 3) = 0;
    v15[32] = 1;
    *(v15 + 5) = 0;
    v15[48] = 1;
    *(v15 + 7) = 0;
    v15[64] = 1;
    UnknownStorage.init()();
    v40 = v38(v37, 1, v39);
    a2 = v104;
    v41 = v109;
    v42 = v83;
    if (v40 != 1)
    {
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v37, &_s8CipherML28AspireHeEncryptionParametersVSgMd, &_s8CipherML28AspireHeEncryptionParametersVSgMR);
    }
  }

  else
  {
    _s8CipherML9SecretKeyVWObTm_0(v37, v15, type metadata accessor for AspireHeEncryptionParameters);
    a2 = v104;
    v41 = v109;
    v42 = v83;
  }

  v43 = v103;
  AspireHeEncryptionParameters.cryptokit()(v105);
  v45 = v107;
  v44 = v108;
  if (v43)
  {
    outlined consume of Data._Representation(v106, v107);
    outlined destroy of SecretKey(v44, type metadata accessor for SecretKey);
    outlined destroy of SecretKey(v15, type metadata accessor for AspireHeEncryptionParameters);
    v34 = type metadata accessor for AspireApiPIRShardConfig;
    v35 = v42;
    goto LABEL_24;
  }

  outlined destroy of SecretKey(v15, type metadata accessor for AspireHeEncryptionParameters);
  result = (*(v95 + 104))(v99, *MEMORY[0x277D02FA0], v96);
  if ((*v42 & 0x8000000000000000) != 0)
  {
    goto LABEL_43;
  }

  if ((v42[1] & 0x8000000000000000) != 0)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v103 = *v42;
  v47 = v42[2];
  v48 = *(v47 + 16);
  if (v48)
  {
    v110 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v48, 0);
    v49 = v110;
    v50 = (v47 + 32);
    while (1)
    {
      v52 = *v50++;
      v51 = v52;
      if (v52 < 0)
      {
        break;
      }

      v110 = v49;
      v54 = *(v49 + 16);
      v53 = *(v49 + 24);
      if (v54 >= v53 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v53 > 1), v54 + 1, 1);
        v49 = v110;
      }

      *(v49 + 16) = v54 + 1;
      *(v49 + 8 * v54 + 32) = v51;
      --v48;
      v41 = v109;
      if (!v48)
      {
        v45 = v107;
        goto LABEL_20;
      }
    }

    __break(1u);
    goto LABEL_42;
  }

LABEL_20:
  v55 = OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__batchSize;
  result = swift_beginAccess();
  if ((*(v29 + v55) & 0x8000000000000000) != 0)
  {
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v56 = v83 + *(v94 + 40);
  if ((v56[8] & 1) == 0 && (*v56 & 0x8000000000000000) != 0)
  {
    goto LABEL_46;
  }

  PIR.PirParams.init(encryptionParams:algorithm:entriesCount:entrySize:dimensions:batchSize:internalBatchSize:compressResponse:)();
  v57 = v90;
  outlined init with copy of AMDPbHEConfig.OneOf_Config?(v29 + v79, v90, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
  v58 = v82;
  v59 = v80;
  if (v80(v57, 1, v82) == 1)
  {
    v60 = v97;
    *v97 = 0;
    v60[1] = 0;
    v60[2] = MEMORY[0x277D84F90];
    v60[3] = 0;
    UnknownStorage.init()();
    v61 = v59(v57, 1, v58);
    v62 = v98;
    if (v61 != 1)
    {
      v63 = v98;
      outlined destroy of AMDPbHEConfig.OneOf_Config?(v57, &_s8CipherML014AspirePirBatchD10ParametersVSgMd, &_s8CipherML014AspirePirBatchD10ParametersVSgMR);
      v62 = v63;
    }
  }

  else
  {
    v60 = v97;
    _s8CipherML9SecretKeyVWObTm_0(v57, v97, type metadata accessor for AspirePirBatchPirParameters);
    v62 = v98;
  }

  result = (*(v91 + 16))(v93, v62, v92);
  if ((*v60 & 0x8000000000000000) != 0)
  {
    goto LABEL_47;
  }

  v64 = v60[1];
  if ((v64 & 0x8000000000000000) != 0)
  {
LABEL_48:
    __break(1u);
    goto LABEL_49;
  }

  v65 = v60[2];
  v66 = *(v65 + 16);
  if (v66)
  {
    v111 = MEMORY[0x277D84F90];
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v66, 0);
    v67 = v111;
    v68 = (v65 + 32);
    while (1)
    {
      v70 = *v68++;
      v69 = v70;
      if (v70 < 0)
      {
        break;
      }

      v111 = v67;
      v72 = *(v67 + 16);
      v71 = *(v67 + 24);
      if (v72 >= v71 >> 1)
      {
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v71 > 1), v72 + 1, 1);
        v67 = v111;
      }

      *(v67 + 16) = v72 + 1;
      *(v67 + 8 * v72 + 32) = v69;
      --v66;
      v41 = v109;
      if (!v66)
      {
        v45 = v107;
        goto LABEL_39;
      }
    }

LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
    goto LABEL_44;
  }

LABEL_39:
  v109 = v64;
  v73 = v104;
  if ((v97[3] & 0x8000000000000000) == 0)
  {
    v74 = type metadata accessor for SecretKey(0);
    v75 = v108;
    (*(v88 + 16))(v87, v108 + *(v74 + 20), v89);
    PIR.BatchKeywordPirClient.init(pirParams:queryHashFunctionCount:numHashFunctionsPerTable:tableSizeForHash:numPirPerShard:secretKey:)();
    (*(v91 + 8))(v98, v92);
    outlined destroy of SecretKey(v83, type metadata accessor for AspireApiPIRShardConfig);
    v76 = v86;
    _s8CipherML9SecretKeyVWObTm_0(v75, v86, type metadata accessor for SecretKey);
    v77 = type metadata accessor for BatchPIRClient(0);
    _s8CipherML9SecretKeyVWObTm_0(v97, v76 + v77[5], type metadata accessor for AspirePirBatchPirParameters);
    v78 = (v76 + v77[6]);
    *v78 = v106;
    v78[1] = v45;
    (*(v84 + 32))(v76 + v77[8], v41, v85);
    return _s8CipherML9SecretKeyVWObTm_0(v73, v76 + v77[7], type metadata accessor for AspireApiPIRConfig);
  }

LABEL_49:
  __break(1u);
  return result;
}

uint64_t BatchPIRClient.constructPIRRequest(with:)(uint64_t a1)
{
  v3 = v1;
  v5 = type metadata accessor for AspireApiPIRRequest(0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(type metadata accessor for BatchPIRClient(0) + 32);
  v22 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
  lazy protocol witness table accessor for type [Data] and conformance [A]();
  v10 = v3 + v9;
  v11 = PIR.BatchKeywordPirClient.queries<A>(_:)();
  if (v2)
  {
    return v10;
  }

  v13 = v11;
  v14 = *(v11 + 16);
  if (!v14)
  {

    return MEMORY[0x277D84F90];
  }

  v20 = v3;
  v22 = MEMORY[0x277D84F90];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v14, 0);
  v15 = 0;
  v10 = v22;
  v16 = *(v13 + 16);
  if (v16 >= v14)
  {
    v16 = v14;
  }

  v21 = v16;
  while (v21 != v15)
  {
    if (v15 >= *(v13 + 16))
    {
      goto LABEL_15;
    }

    v17 = *(v13 + 8 * v15 + 32);

    closure #1 in BatchPIRClient.constructPIRRequest(with:)(v15, v17, v20, v8);

    v22 = v10;
    v19 = *(v10 + 16);
    v18 = *(v10 + 24);
    if (v19 >= v18 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v18 > 1), v19 + 1, 1);
      v10 = v22;
    }

    ++v15;
    *(v10 + 16) = v19 + 1;
    result = _s8CipherML9SecretKeyVWObTm_0(v8, v10 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + *(v6 + 72) * v19, type metadata accessor for AspireApiPIRRequest);
    if (v14 == v15)
    {

      return v10;
    }
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

void *BatchPIRClient.decryptPIRResponse(_:keywords:)(uint64_t a1, uint64_t a2)
{
  v81 = a2;
  v3 = type metadata accessor for AspireHeSerializedFullCiphertext(0);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = (&v75 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = type metadata accessor for AspireHeSerializedSeededCiphertext(0);
  MEMORY[0x28223BE20](v6 - 8);
  v96 = (&v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v75 - v9;
  v11 = type metadata accessor for AspireHeSerializedCiphertext(0);
  v106 = *(v11 - 8);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for HE.SerializedCiphertext();
  v104 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v102 = (&v75 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = type metadata accessor for AspireHeSerializedCiphertextVec(0);
  v90 = *(v16 - 8);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v75 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for AspireApiPIRResponse(0);
  v20 = *(v19 - 8);
  MEMORY[0x28223BE20](v19 - 8);
  v22 = &v75 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(a1 + 16);
  if (v23)
  {
    v24 = a1;
    v111 = MEMORY[0x277D84F90];
    v78 = v23;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23, 0);
    v25 = 0;
    v85 = v111;
    v26 = v24 + ((*(v20 + 80) + 32) & ~*(v20 + 80));
    v95 = *MEMORY[0x277D02F30];
    v99 = (v104 + 104);
    v94 = *MEMORY[0x277D02F28];
    v98 = v104 + 32;
    v27 = *(v20 + 72);
    v101 = v10;
    v88 = v18;
    v87 = v22;
    v92 = v13;
    v93 = v5;
    v100 = v14;
    v79 = v26;
    v77 = v27;
    while (1)
    {
      outlined init with copy of AspireApiPIRShardConfig(v26 + v27 * v25, v22, type metadata accessor for AspireApiPIRResponse);
      v28 = *v22;
      v29 = *(*v22 + 16);
      if (v29)
      {
        break;
      }

      outlined destroy of SecretKey(v22, type metadata accessor for AspireApiPIRResponse);
      v32 = MEMORY[0x277D84F90];
LABEL_30:
      v67 = v85;
      v111 = v85;
      v69 = *(v85 + 16);
      v68 = *(v85 + 24);
      v26 = v79;
      if (v69 >= v68 >> 1)
      {
        v76 = v25;
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v68 > 1), v69 + 1, 1);
        v26 = v79;
        v25 = v76;
        v67 = v111;
      }

      ++v25;
      *(v67 + 16) = v69 + 1;
      v85 = v67;
      *(v67 + 8 * v69 + 32) = v32;
      v22 = v87;
      v27 = v77;
      if (v25 == v78)
      {
        v74 = v81;
        goto LABEL_36;
      }
    }

    v76 = v25;
    v110 = MEMORY[0x277D84F90];
    v84 = v29;
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29, 0);
    v31 = 0;
    v32 = v110;
    v86 = v28 + ((*(v90 + 80) + 32) & ~*(v90 + 80));
    v33 = v28;
    v80 = v28;
    while (v31 < *(v33 + 16))
    {
      v91 = v32;
      v34 = *(v90 + 72);
      v89 = v31;
      outlined init with copy of AspireApiPIRShardConfig(v86 + v34 * v31, v18, type metadata accessor for AspireHeSerializedCiphertextVec);
      v35 = *v18;
      v36 = *(*v18 + 16);
      if (v36)
      {
        v109 = MEMORY[0x277D84F90];
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v36, 0);
        v37 = 0;
        v107 = v109;
        v105 = v35 + ((*(v106 + 80) + 32) & ~*(v106 + 80));
        v103 = v35;
        while (v37 < *(v35 + 16))
        {
          v38 = v36;
          outlined init with copy of AspireApiPIRShardConfig(v105 + *(v106 + 72) * v37, v13, type metadata accessor for AspireHeSerializedCiphertext);
          outlined init with copy of AMDPbHEConfig.OneOf_Config?(v13, v10, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMd, &_s8CipherML28AspireHeSerializedCiphertextV06OneOf_eF4TypeOSgMR);
          v39 = type metadata accessor for AspireHeSerializedCiphertext.OneOf_SerializedCiphertextType(0);
          if ((*(*(v39 - 8) + 48))(v10, 1, v39) == 1)
          {
            v70 = type metadata accessor for CipherMLError(0);
            _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_3(&lazy protocol witness table cache variable for type CipherMLError and conformance CipherMLError, type metadata accessor for CipherMLError, &protocol conformance descriptor for CipherMLError);
            swift_allocError();
            swift_storeEnumTagMultiPayload();
            swift_willThrow();
            outlined destroy of SecretKey(v13, type metadata accessor for AspireHeSerializedCiphertext);
            outlined destroy of SecretKey(v88, type metadata accessor for AspireHeSerializedCiphertextVec);

            outlined destroy of SecretKey(v87, type metadata accessor for AspireApiPIRResponse);

            return v70;
          }

          if (swift_getEnumCaseMultiPayload() == 1)
          {
            _s8CipherML9SecretKeyVWObTm_0(v10, v5, type metadata accessor for AspireHeSerializedFullCiphertext);
            v41 = *v5;
            v40 = v5[1];
            v42 = v5[2];
            v43 = *(v42 + 16);
            if (v43)
            {
              v97 = *v5;
              outlined copy of Data._Representation(v41, v40);
              v108 = MEMORY[0x277D84F90];
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v43, 0);
              v44 = v108;
              v45 = (v42 + 32);
              v46 = *(v108 + 16);
              do
              {
                v48 = *v45++;
                v47 = v48;
                v108 = v44;
                v49 = *(v44 + 24);
                if (v46 >= v49 >> 1)
                {
                  specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v49 > 1), v46 + 1, 1);
                  v44 = v108;
                }

                *(v44 + 16) = v46 + 1;
                *(v44 + 8 * v46++ + 32) = v47;
                --v43;
              }

              while (v43);
              v13 = v92;
              outlined destroy of SecretKey(v92, type metadata accessor for AspireHeSerializedCiphertext);
              v5 = v93;
              v41 = v97;
            }

            else
            {
              outlined copy of Data._Representation(*v5, v5[1]);
              outlined destroy of SecretKey(v13, type metadata accessor for AspireHeSerializedCiphertext);
              v44 = MEMORY[0x277D84F90];
            }

            v53 = v5[3];
            outlined destroy of SecretKey(v5, type metadata accessor for AspireHeSerializedFullCiphertext);
            v54 = v102;
            *v102 = v41;
            v54[1] = v40;
            v55 = v94;
          }

          else
          {
            outlined destroy of SecretKey(v13, type metadata accessor for AspireHeSerializedCiphertext);
            v50 = v96;
            _s8CipherML9SecretKeyVWObTm_0(v10, v96, type metadata accessor for AspireHeSerializedSeededCiphertext);
            v51 = *v50;
            v52 = v50[1];
            v44 = v50[2];
            v53 = v50[3];
            outlined copy of Data._Representation(*v50, v52);
            outlined copy of Data._Representation(v44, v53);
            outlined destroy of SecretKey(v50, type metadata accessor for AspireHeSerializedSeededCiphertext);
            v54 = v102;
            *v102 = v51;
            v54[1] = v52;
            v55 = v95;
          }

          v56 = v99;
          v57 = v100;
          v54[2] = v44;
          v54[3] = v53;
          v58 = v54;
          (*v56)(v54, v55, v57);
          v59 = v107;
          v109 = v107;
          v61 = *(v107 + 16);
          v60 = *(v107 + 24);
          if (v61 >= v60 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v60 > 1), v61 + 1, 1);
            v59 = v109;
          }

          ++v37;
          *(v59 + 16) = v61 + 1;
          v62 = (*(v104 + 80) + 32) & ~*(v104 + 80);
          v107 = v59;
          result = (*(v104 + 32))(v59 + v62 + *(v104 + 72) * v61, v58, v57);
          v36 = v38;
          v10 = v101;
          v35 = v103;
          if (v37 == v38)
          {
            outlined destroy of SecretKey(v88, type metadata accessor for AspireHeSerializedCiphertextVec);
            v33 = v80;
            v63 = v107;
            goto LABEL_25;
          }
        }

        __break(1u);
        break;
      }

      outlined destroy of SecretKey(v18, type metadata accessor for AspireHeSerializedCiphertextVec);
      v63 = MEMORY[0x277D84F90];
LABEL_25:
      v32 = v91;
      v110 = v91;
      v65 = *(v91 + 16);
      v64 = *(v91 + 24);
      v66 = v89;
      if (v65 >= v64 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v64 > 1), v65 + 1, 1);
        v66 = v89;
        v32 = v110;
      }

      v31 = v66 + 1;
      *(v32 + 16) = v65 + 1;
      *(v32 + 8 * v65 + 32) = v63;
      v18 = v88;
      result = v87;
      if (v31 == v84)
      {
        outlined destroy of SecretKey(v87, type metadata accessor for AspireApiPIRResponse);
        v25 = v76;
        goto LABEL_30;
      }
    }

    __break(1u);
  }

  else
  {
    v74 = v81;
LABEL_36:
    v71 = *(type metadata accessor for BatchPIRClient(0) + 32);
    v111 = v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
    lazy protocol witness table accessor for type [Data] and conformance [A]();
    v70 = v83 + v71;
    v72 = v82;
    v73 = PIR.BatchKeywordPirClient.decrypt<A>(replies:_:)();
    if (!v72)
    {
      v70 = v73;
    }

    return v70;
  }

  return result;
}

uint64_t BatchPIRClient.configID.getter()
{
  v1 = v0 + *(type metadata accessor for BatchPIRClient(0) + 24);
  v2 = *v1;
  outlined copy of Data._Representation(*v1, *(v1 + 8));
  return v2;
}

uint64_t BatchPIRClient.client.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for BatchPIRClient(0) + 32);
  v4 = type metadata accessor for PIR.BatchKeywordPirClient();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t closure #1 in BatchPIRClient.constructPIRRequest(with:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a1;
  v38 = a3;
  v8 = type metadata accessor for HE.SerializedCiphertext();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v44 = v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AspireHeSerializedCiphertext(0);
  v42 = *(v11 - 8);
  v43 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = type metadata accessor for AspirePirEncryptedIndices(0);
  MEMORY[0x28223BE20](v35);
  v36 = v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a2 + 16);
  if (v16)
  {
    v46 = v5;
    v34[1] = a4;
    v47 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v16, 0);
    v45 = v47;
    v18 = *(v9 + 16);
    v17 = v9 + 16;
    v19 = a2 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v40 = (v17 - 8);
    v41 = v18;
    v39 = *(v17 + 56);
    while (1)
    {
      v20 = v44;
      v21 = v41(v44, v19, v8);
      MEMORY[0x28223BE20](v21);
      v34[-2] = v20;
      _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_3(&lazy protocol witness table cache variable for type AspireHeSerializedCiphertext and conformance AspireHeSerializedCiphertext, type metadata accessor for AspireHeSerializedCiphertext, &protocol conformance descriptor for AspireHeSerializedCiphertext);
      v22 = v46;
      static Message.with(_:)();
      v46 = v22;
      if (v22)
      {
        break;
      }

      v23 = v20;
      v24 = v8;
      (*v40)(v23, v8);
      v25 = v45;
      v47 = v45;
      v27 = *(v45 + 16);
      v26 = *(v45 + 24);
      if (v27 >= v26 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v26 > 1), v27 + 1, 1);
        v25 = v47;
      }

      *(v25 + 16) = v27 + 1;
      v28 = (*(v42 + 80) + 32) & ~*(v42 + 80);
      v45 = v25;
      v14 = _s8CipherML9SecretKeyVWObTm_0(v13, v25 + v28 + *(v42 + 72) * v27, type metadata accessor for AspireHeSerializedCiphertext);
      v19 += v39;
      --v16;
      v8 = v24;
      if (!v16)
      {
        goto LABEL_9;
      }
    }

    (*v40)(v20, v8);
  }

  else
  {
LABEL_9:
    MEMORY[0x28223BE20](v14);
    v30 = v38;
    v34[-2] = v31;
    v34[-1] = v30;
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_3(&lazy protocol witness table cache variable for type AspirePirEncryptedIndices and conformance AspirePirEncryptedIndices, type metadata accessor for AspirePirEncryptedIndices, &protocol conformance descriptor for AspirePirEncryptedIndices);
    v32 = v36;
    static Message.with(_:)();

    v33 = type metadata accessor for AspireApiPIRRequest(0);
    MEMORY[0x28223BE20](v33);
    v34[-4] = v37;
    v34[-3] = v32;
    v34[-2] = v30;
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_3(&lazy protocol witness table cache variable for type AspireApiPIRRequest and conformance AspireApiPIRRequest, type metadata accessor for AspireApiPIRRequest, &protocol conformance descriptor for AspireApiPIRRequest);
    static Message.with(_:)();
    return outlined destroy of SecretKey(v32, type metadata accessor for AspirePirEncryptedIndices);
  }
}

uint64_t closure #2 in closure #1 in BatchPIRClient.constructPIRRequest(with:)(uint64_t *a1, uint64_t a2, uint64_t a3)
{

  *a1 = a2;
  result = type metadata accessor for BatchPIRClient(0);
  v7 = a3 + *(result + 20);
  v8 = *(v7 + 8);
  v9 = *(*(v7 + 16) + 16);
  if (is_mul_ok(v8, v9))
  {
    a1[1] = v8 * v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void closure #3 in closure #1 in BatchPIRClient.constructPIRRequest(with:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v26 = a4;
  v7 = type metadata accessor for AspireApiEvaluationKeyMetadata(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for AspirePirEncryptedIndices(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (!HIDWORD(a2))
  {
    *a1 = a2;
    outlined init with copy of AspireApiPIRShardConfig(a3, v14, type metadata accessor for AspirePirEncryptedIndices);
    v15 = type metadata accessor for AspireApiPIRRequest(0);
    v16 = *(v15 + 28);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(a1 + v16, &_s8CipherML25AspirePirEncryptedIndicesVSgMd, &_s8CipherML25AspirePirEncryptedIndicesVSgMR);
    _s8CipherML9SecretKeyVWObTm_0(v14, a1 + v16, type metadata accessor for AspirePirEncryptedIndices);
    v17 = (*(v12 + 56))(a1 + v16, 0, 1, v11);
    MEMORY[0x28223BE20](v17);
    v18 = v26;
    *(&v25 - 2) = v26;
    _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_3(&lazy protocol witness table cache variable for type AspireApiEvaluationKeyMetadata and conformance AspireApiEvaluationKeyMetadata, type metadata accessor for AspireApiEvaluationKeyMetadata, &protocol conformance descriptor for AspireApiEvaluationKeyMetadata);
    static Message.with(_:)();
    v19 = *(v15 + 32);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(a1 + v19, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMd, &_s8CipherML30AspireApiEvaluationKeyMetadataVSgMR);
    _s8CipherML9SecretKeyVWObTm_0(v10, a1 + v19, type metadata accessor for AspireApiEvaluationKeyMetadata);
    (*(v8 + 56))(a1 + v19, 0, 1, v7);
    v20 = (v18 + *(type metadata accessor for BatchPIRClient(0) + 24));
    v21 = *v20;
    v22 = v20[1];
    v23 = *(a1 + 8);
    v24 = *(a1 + 16);
    outlined copy of Data._Representation(*v20, v22);
    outlined consume of Data._Representation(v23, v24);
    *(a1 + 8) = v21;
    *(a1 + 16) = v22;
    return;
  }

  __break(1u);
}

uint64_t closure #1 in closure #3 in closure #1 in BatchPIRClient.constructPIRRequest(with:)(void *a1, void *a2)
{
  *a1 = *a2;
  v3 = a2 + *(type metadata accessor for BatchPIRClient(0) + 28);
  v4 = (*&v3[*(type metadata accessor for AspireApiPIRConfig(0) + 20)] + OBJC_IVAR____TtCV8CipherML18AspireApiPIRConfigP33_351ADCB9EF95974A4082A7633DADB2C713_StorageClass__evaluationKeyConfigHash);
  swift_beginAccess();
  v6 = *v4;
  v5 = v4[1];
  v7 = a1[1];
  v8 = a1[2];
  outlined copy of Data._Representation(v6, v5);
  result = outlined consume of Data._Representation(v7, v8);
  a1[1] = v6;
  a1[2] = v5;
  return result;
}

uint64_t type metadata accessor for BatchPIRClient(uint64_t a1)
{
  result = type metadata singleton initialization cache for BatchPIRClient;
  if (!type metadata singleton initialization cache for BatchPIRClient)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [Data] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [Data] and conformance [A];
  if (!lazy protocol witness table cache variable for type [Data] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [Data] and conformance [A]);
  }

  return result;
}

uint64_t type metadata completion function for BatchPIRClient(uint64_t a1)
{
  result = type metadata accessor for SecretKey(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for AspirePirBatchPirParameters(319);
    if (v3 <= 0x3F)
    {
      result = type metadata accessor for AspireApiPIRConfig(319);
      if (v4 <= 0x3F)
      {
        result = type metadata accessor for PIR.BatchKeywordPirClient();
        if (v5 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
          return 0;
        }
      }
    }
  }

  return result;
}

uint64_t outlined destroy of SecretKey(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of AspireApiPIRShardConfig(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s8CipherML0A7MLErrorOACs5ErrorAAWlTm_3(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t _s8CipherML9SecretKeyVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t RotationTask.requestsManager.setter(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*RotationTask.requestsManager.modify(uint64_t *a1))(void **a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return RotationTask.requestsManager.modify;
}

void RotationTask.requestsManager.modify(void **a1, char a2)
{
  v3 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v3);
}

uint64_t RotationTask.__allocating_init(requestsManager:)(uint64_t a1)
{
  v1 = swift_allocObject();
  swift_defaultActor_initialize();
  swift_weakInit();
  swift_beginAccess();
  swift_weakAssign();

  return v1;
}

uint64_t RotationTask.init(requestsManager:)(uint64_t a1)
{
  swift_defaultActor_initialize();
  swift_weakInit();
  swift_beginAccess();
  swift_weakAssign();

  return v1;
}

uint64_t RotationTask.run()()
{
  *(v1 + 40) = v0;
  return MEMORY[0x2822009F8](RotationTask.run(), v0, 0);
}

{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v0[7] = RequestsManager.keyRotation(for:)(0, 0);
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = RotationTask.run();

    return KeyRotation.run()();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = RotationTask.run();
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = RotationTask.run();
    v3 = v5;
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

uint64_t RotationTask.deinit()
{
  swift_weakDestroy();
  swift_defaultActor_destroy();
  return v0;
}

uint64_t RotationTask.__deallocating_deinit()
{
  swift_weakDestroy();
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t protocol witness for ScheduledActivityHandler.run@Sendable () in conformance RotationTask()
{
  v2 = *v0;
  *(v1 + 40) = *v0;
  return MEMORY[0x2822009F8](protocol witness for ScheduledActivityHandler.run@Sendable () in conformance RotationTask, v2, 0);
}

{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  v0[6] = Strong;
  if (Strong)
  {
    v0[7] = RequestsManager.keyRotation(for:)(0, 0);
    v2 = swift_task_alloc();
    v0[8] = v2;
    *v2 = v0;
    v2[1] = protocol witness for ScheduledActivityHandler.run@Sendable () in conformance RotationTask;

    return KeyRotation.run()();
  }

  else
  {
    v4 = v0[1];

    return v4();
  }
}

{
  v2 = *v1;
  *(*v1 + 72) = v0;

  if (v0)
  {
    v3 = *(v2 + 40);
    v4 = protocol witness for ScheduledActivityHandler.run@Sendable () in conformance RotationTask;
  }

  else
  {
    v5 = *(v2 + 40);

    v4 = protocol witness for ScheduledActivityHandler.run@Sendable () in conformance RotationTask;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t dispatch thunk of RotationTask.run()()
{
  v4 = (*(*v0 + 128) + **(*v0 + 128));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = protocol witness for NetworkManager.fetchConfigs(useCases:userId:) in conformance PegasusNetworking;

  return v4();
}

uint64_t AllowListMigrationV1.AllowListFormat.convertToCurrent()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v33 = a1;
  v34 = a2;
  v4 = type metadata accessor for UseCaseGroup(0);
  v36 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for AllowListMigrationV1.UseCaseGroup(0);
  v38 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v37 = &v32 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS8CipherML12UseCaseGroupVGMd, &_ss18_DictionaryStorageCySS8CipherML12UseCaseGroupVGMR);
  result = static _DictionaryStorage.copy(original:)();
  v10 = 0;
  v39 = result;
  v40 = a3;
  v13 = *(a3 + 64);
  v12 = a3 + 64;
  v11 = v13;
  v14 = 1 << *(v12 - 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & v11;
  v17 = (v14 + 63) >> 6;
  v35 = result + 64;
  if (v16)
  {
    while (1)
    {
      v18 = __clz(__rbit64(v16));
      v41 = (v16 - 1) & v16;
LABEL_10:
      v21 = v18 | (v10 << 6);
      v22 = (*(v40 + 48) + 16 * v21);
      v24 = *v22;
      v23 = v22[1];
      v25 = v37;
      outlined init with copy of AllowListMigrationV1.UseCaseGroup(*(v40 + 56) + *(v38 + 72) * v21, v37, type metadata accessor for AllowListMigrationV1.UseCaseGroup);

      v26 = v42;
      closure #1 in AllowListMigrationV1.AllowListFormat.convertToCurrent()(v25, v6);
      outlined destroy of AllowListMigrationV1.UseCaseGroup(v25, type metadata accessor for AllowListMigrationV1.UseCaseGroup);
      v42 = v26;
      if (v26)
      {
        break;
      }

      *(v35 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v27 = v39;
      v28 = (*(v39 + 48) + 16 * v21);
      *v28 = v24;
      v28[1] = v23;
      result = outlined init with take of UseCaseGroup(v6, *(v27 + 56) + *(v36 + 72) * v21, type metadata accessor for UseCaseGroup);
      v29 = *(v27 + 16);
      v30 = __OFADD__(v29, 1);
      v31 = v29 + 1;
      if (v30)
      {
        goto LABEL_18;
      }

      *(v27 + 16) = v31;
      v16 = v41;
      if (!v41)
      {
        goto LABEL_5;
      }
    }

    return v23;
  }

  else
  {
LABEL_5:
    v19 = v10;
    while (1)
    {
      v10 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v10 >= v17)
      {
        v23 = v33;

        return v23;
      }

      v20 = *(v12 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v41 = (v20 - 1) & v20;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
  }

  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AllowListMigrationV1.AllowListFormat.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized AllowListMigrationV1.AllowListFormat.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance AllowListMigrationV1.AllowListFormat.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized AllowListMigrationV1.AllowListFormat.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AllowListMigrationV1.AllowListFormat.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AllowListMigrationV1.AllowListFormat.CodingKeys and conformance AllowListMigrationV1.AllowListFormat.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AllowListMigrationV1.AllowListFormat.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AllowListMigrationV1.AllowListFormat.CodingKeys and conformance AllowListMigrationV1.AllowListFormat.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AllowListMigrationV1.AllowListFormat.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v13 = a3;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML20AllowListMigrationV1O0fG6FormatV10CodingKeys33_F2A4BB85B9135A138EFF94D0C85A1EDELLOGMd, &_ss22KeyedEncodingContainerVy8CipherML20AllowListMigrationV1O0fG6FormatV10CodingKeys33_F2A4BB85B9135A138EFF94D0C85A1EDELLOGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AllowListMigrationV1.AllowListFormat.CodingKeys and conformance AllowListMigrationV1.AllowListFormat.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDy16CryptoKitPrivate2HEO13SecurityLevelOSayAC10RlweParamsOGGMd, &_sSDy16CryptoKitPrivate2HEO13SecurityLevelOSayAC10RlweParamsOGGMR);
  lazy protocol witness table accessor for type [HE.SecurityLevel : [HE.RlweParams]] and conformance <> [A : B]();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v15 = v13;
    v14 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay16CryptoKitPrivate2HEO6SchemeOGMd, &_sSay16CryptoKitPrivate2HEO6SchemeOGMR);
    lazy protocol witness table accessor for type [HE.Scheme] and conformance <A> [A](&lazy protocol witness table cache variable for type [HE.Scheme] and conformance <A> [A], &lazy protocol witness table cache variable for type HE.Scheme and conformance HE.Scheme, MEMORY[0x277D02F58], MEMORY[0x277D83948]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v15 = a4;
    v14 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS8CipherML20AllowListMigrationV1O12UseCaseGroupVGMd, &_sSDySS8CipherML20AllowListMigrationV1O12UseCaseGroupVGMR);
    lazy protocol witness table accessor for type [String : AllowListMigrationV1.UseCaseGroup] and conformance <> [A : B]();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t AllowListMigrationV1.AllowListFormat.init(from:)(void *a1)
{
  result = specialized AllowListMigrationV1.AllowListFormat.init(from:)(a1);
  if (v1)
  {
    return v3;
  }

  return result;
}

uint64_t protocol witness for Decodable.init(from:) in conformance AllowListMigrationV1.AllowListFormat@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = specialized AllowListMigrationV1.AllowListFormat.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

CipherML::AllowListMigrationV1::UseCaseGroup::CodingKeys_optional __swiftcall AllowListMigrationV1.UseCaseGroup.CodingKeys.init(stringValue:)(Swift::String stringValue)
{
  object = stringValue._object;
  v2._countAndFlagsBits = stringValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of AllowListMigrationV1.UseCaseGroup.CodingKeys.init(rawValue:), v2);

  if (v3 >= 6)
  {
    return 6;
  }

  else
  {
    return v3;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance AllowListMigrationV1.UseCaseGroup.CodingKeys(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a2;
  v3 = AllowListMigrationV1.UseCaseGroup.CodingKeys.stringValue.getter(*a1);
  v5 = v4;
  if (v3 == AllowListMigrationV1.UseCaseGroup.CodingKeys.stringValue.getter(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AllowListMigrationV1.UseCaseGroup.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  AllowListMigrationV1.UseCaseGroup.CodingKeys.stringValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance AllowListMigrationV1.UseCaseGroup.CodingKeys(uint64_t a1)
{
  AllowListMigrationV1.UseCaseGroup.CodingKeys.stringValue.getter(*v1);
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AllowListMigrationV1.UseCaseGroup.CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  AllowListMigrationV1.UseCaseGroup.CodingKeys.stringValue.getter(v2);
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance AllowListMigrationV1.UseCaseGroup.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized AllowListMigrationV1.UseCaseGroup.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance AllowListMigrationV1.UseCaseGroup.CodingKeys@<X0>(unint64_t *a1@<X8>)
{
  result = AllowListMigrationV1.UseCaseGroup.CodingKeys.stringValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance AllowListMigrationV1.UseCaseGroup.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized AllowListMigrationV1.UseCaseGroup.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AllowListMigrationV1.UseCaseGroup.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AllowListMigrationV1.UseCaseGroup.CodingKeys and conformance AllowListMigrationV1.UseCaseGroup.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AllowListMigrationV1.UseCaseGroup.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AllowListMigrationV1.UseCaseGroup.CodingKeys and conformance AllowListMigrationV1.UseCaseGroup.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AllowListMigrationV1.UseCaseGroup.securityLevel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for HE.SecurityLevel();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t AllowListMigrationV1.UseCaseGroup.useCases.getter()
{
  type metadata accessor for AllowListMigrationV1.UseCaseGroup(0);
}

uint64_t AllowListMigrationV1.UseCaseGroup.init(securityLevel:keyExpirationMinutes:keyRotationBeforeExpirationMinutes:keyRotationIgnoreMissingEvaluationKey:useCases:networkConfig:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v14 = type metadata accessor for HE.SecurityLevel();
  (*(*(v14 - 8) + 32))(a7, a1, v14);
  v15 = type metadata accessor for AllowListMigrationV1.UseCaseGroup(0);
  *(a7 + v15[5]) = a2;
  *(a7 + v15[6]) = a3;
  *(a7 + v15[7]) = a4;
  *(a7 + v15[8]) = a5;
  return outlined init with take of UseCaseGroup(a6, a7 + v15[9], type metadata accessor for AllowListMigrationV1.NetworkConfig);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AllowListMigrationV1.NetworkManagerType.AmsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AllowListMigrationV1.NetworkManagerType.AmsCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AmsCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AllowListMigrationV1.NetworkManagerType.AmsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AllowListMigrationV1.NetworkManagerType.AmsCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AmsCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AllowListMigrationV1.NetworkManagerType.AspireCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AllowListMigrationV1.NetworkManagerType.AspireCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AspireCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AllowListMigrationV1.NetworkManagerType.AspireCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AllowListMigrationV1.NetworkManagerType.AspireCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AspireCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance AllowListMigrationV1.NetworkManagerType.CodingKeys()
{
  v1 = 7564641;
  v2 = 0x656E696C66666FLL;
  if (*v0 != 2)
  {
    v2 = 0x73757361676570;
  }

  if (*v0)
  {
    v1 = 0x657269707361;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AllowListMigrationV1.NetworkManagerType.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized AllowListMigrationV1.NetworkManagerType.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AllowListMigrationV1.NetworkManagerType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AllowListMigrationV1.NetworkManagerType.CodingKeys and conformance AllowListMigrationV1.NetworkManagerType.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AllowListMigrationV1.NetworkManagerType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AllowListMigrationV1.NetworkManagerType.CodingKeys and conformance AllowListMigrationV1.NetworkManagerType.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AllowListMigrationV1.NetworkManagerType.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML20AllowListMigrationV1O18NetworkManagerTypeO17PegasusCodingKeys33_F2A4BB85B9135A138EFF94D0C85A1EDELLOGMd, &_ss22KeyedEncodingContainerVy8CipherML20AllowListMigrationV1O18NetworkManagerTypeO17PegasusCodingKeys33_F2A4BB85B9135A138EFF94D0C85A1EDELLOGMR);
  v46 = *(v2 - 8);
  v47 = v2;
  MEMORY[0x28223BE20](v2);
  v45 = &v42 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML20AllowListMigrationV1O18NetworkManagerTypeO17OfflineCodingKeys33_F2A4BB85B9135A138EFF94D0C85A1EDELLOGMd, &_ss22KeyedEncodingContainerVy8CipherML20AllowListMigrationV1O18NetworkManagerTypeO17OfflineCodingKeys33_F2A4BB85B9135A138EFF94D0C85A1EDELLOGMR);
  v43 = *(v4 - 8);
  v44 = v4;
  MEMORY[0x28223BE20](v4);
  v42 = &v42 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML20AllowListMigrationV1O18NetworkManagerTypeO16AspireCodingKeys33_F2A4BB85B9135A138EFF94D0C85A1EDELLOGMd, &_ss22KeyedEncodingContainerVy8CipherML20AllowListMigrationV1O18NetworkManagerTypeO16AspireCodingKeys33_F2A4BB85B9135A138EFF94D0C85A1EDELLOGMR);
  v49 = *(v6 - 8);
  v50 = v6;
  MEMORY[0x28223BE20](v6);
  v48 = &v42 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v8 - 8);
  v54 = &v42 - v9;
  v51 = type metadata accessor for URL();
  v53 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v52 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML20AllowListMigrationV1O18NetworkManagerTypeO13AmsCodingKeys33_F2A4BB85B9135A138EFF94D0C85A1EDELLOGMd, &_ss22KeyedEncodingContainerVy8CipherML20AllowListMigrationV1O18NetworkManagerTypeO13AmsCodingKeys33_F2A4BB85B9135A138EFF94D0C85A1EDELLOGMR);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v42 - v13;
  v15 = type metadata accessor for AllowListMigrationV1.NetworkManagerType(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML20AllowListMigrationV1O18NetworkManagerTypeO10CodingKeys33_F2A4BB85B9135A138EFF94D0C85A1EDELLOGMd, &_ss22KeyedEncodingContainerVy8CipherML20AllowListMigrationV1O18NetworkManagerTypeO10CodingKeys33_F2A4BB85B9135A138EFF94D0C85A1EDELLOGMR);
  v56 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v20 = &v42 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AllowListMigrationV1.NetworkManagerType.CodingKeys and conformance AllowListMigrationV1.NetworkManagerType.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of AllowListMigrationV1.UseCaseGroup(v55, v17, type metadata accessor for AllowListMigrationV1.NetworkManagerType);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8endpoint_ACSg6issuerAA4DataVSg19authenticationTokenSb22privacyProxyFailClosedtMd, &_s10Foundation3URLV8endpoint_ACSg6issuerAA4DataVSg19authenticationTokenSb22privacyProxyFailClosedtMR);
  v22 = (*(*(v21 - 1) + 48))(v17, 3, v21);
  if (v22 > 1)
  {
    if (v22 == 2)
    {
      LOBYTE(v58) = 2;
      lazy protocol witness table accessor for type AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys();
      v35 = v42;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v37 = v43;
      v36 = v44;
    }

    else
    {
      LOBYTE(v58) = 3;
      lazy protocol witness table accessor for type AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys();
      v35 = v45;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v37 = v46;
      v36 = v47;
    }

    (*(v37 + 8))(v35, v36);
    return (*(v56 + 8))(v20, v18);
  }

  if (v22)
  {
    LOBYTE(v58) = 0;
    lazy protocol witness table accessor for type AllowListMigrationV1.NetworkManagerType.AmsCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AmsCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v12 + 8))(v14, v11);
    return (*(v56 + 8))(v20, v18);
  }

  v23 = v21[12];
  v24 = &v17[v21[16]];
  v26 = *v24;
  v25 = v24[1];
  v55 = v26;
  v47 = v25;
  LODWORD(v46) = v17[v21[20]];
  v28 = v52;
  v27 = v53;
  v29 = v51;
  (*(v53 + 32))(v52, v17, v51);
  outlined init with take of URL?(&v17[v23], v54);
  LOBYTE(v58) = 1;
  lazy protocol witness table accessor for type AllowListMigrationV1.NetworkManagerType.AspireCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AspireCodingKeys();
  v30 = v48;
  v31 = v18;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  LOBYTE(v58) = 0;
  _s16CryptoKitPrivate2HEO13SecurityLevelOAESEAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9268]);
  v32 = v50;
  v33 = v57;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v33)
  {
    outlined consume of Data?(v55, v47);
    (*(v49 + 8))(v30, v32);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v54, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    (*(v27 + 8))(v28, v29);
  }

  else
  {
    v38 = v47;
    v57 = v18;
    LOBYTE(v58) = 1;
    v39 = v55;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v58 = v39;
    v59 = v38;
    v60 = 2;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v31 = v57;
    v40 = v52;
    LOBYTE(v58) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v41 = v53;
    outlined consume of Data?(v39, v38);
    (*(v49 + 8))(v30, v32);
    outlined destroy of AMDPbHEConfig.OneOf_Config?(v54, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    (*(v41 + 8))(v40, v51);
  }

  return (*(v56 + 8))(v20, v31);
}

uint64_t AllowListMigrationV1.NetworkManagerType.hash(into:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - v6;
  v8 = type metadata accessor for URL();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  v15 = type metadata accessor for AllowListMigrationV1.NetworkManagerType(0);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of AllowListMigrationV1.UseCaseGroup(v1, v17, type metadata accessor for AllowListMigrationV1.NetworkManagerType);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8endpoint_ACSg6issuerAA4DataVSg19authenticationTokenSb22privacyProxyFailClosedtMd, &_s10Foundation3URLV8endpoint_ACSg6issuerAA4DataVSg19authenticationTokenSb22privacyProxyFailClosedtMR);
  v19 = (*(*(v18 - 1) + 48))(v17, 3, v18);
  if (v19 > 1)
  {
    if (v19 == 2)
    {
      v24 = 2;
    }

    else
    {
      v24 = 3;
    }

    return MEMORY[0x22AA61420](v24);
  }

  if (v19)
  {
    v24 = 0;
    return MEMORY[0x22AA61420](v24);
  }

  v20 = v18[12];
  v21 = &v17[v18[16]];
  v22 = *v21;
  v30 = *(v21 + 1);
  v31 = v22;
  v29 = v17[v18[20]];
  v23 = v9;
  v28 = *(v9 + 32);
  v28(v14, v17, v8);
  outlined init with take of URL?(&v17[v20], v7);
  MEMORY[0x22AA61420](1);
  _s16CryptoKitPrivate2HEO13SecurityLevelOAESEAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9270]);
  dispatch thunk of Hashable.hash(into:)();
  outlined init with copy of URL?(v7, v4);
  if ((*(v9 + 48))(v4, 1, v8) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    v28(v11, v4, v8);
    Hasher._combine(_:)(1u);
    dispatch thunk of Hashable.hash(into:)();
    (*(v9 + 8))(v11, v8);
  }

  v27 = v30;
  v26 = v31;
  if (v30 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  Hasher._combine(_:)(v29);
  outlined consume of Data?(v26, v27);
  outlined destroy of AMDPbHEConfig.OneOf_Config?(v7, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  return (*(v23 + 8))(v14, v8);
}

Swift::Int AllowListMigrationV1.NetworkManagerType.hashValue.getter()
{
  Hasher.init(_seed:)();
  AllowListMigrationV1.NetworkManagerType.hash(into:)(v1);
  return Hasher._finalize()();
}

uint64_t AllowListMigrationV1.NetworkManagerType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8CipherML20AllowListMigrationV1O18NetworkManagerTypeO17PegasusCodingKeys33_F2A4BB85B9135A138EFF94D0C85A1EDELLOGMd, &_ss22KeyedDecodingContainerVy8CipherML20AllowListMigrationV1O18NetworkManagerTypeO17PegasusCodingKeys33_F2A4BB85B9135A138EFF94D0C85A1EDELLOGMR);
  v57 = *(v3 - 8);
  v58 = v3;
  MEMORY[0x28223BE20](v3);
  v61 = &v51 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8CipherML20AllowListMigrationV1O18NetworkManagerTypeO17OfflineCodingKeys33_F2A4BB85B9135A138EFF94D0C85A1EDELLOGMd, &_ss22KeyedDecodingContainerVy8CipherML20AllowListMigrationV1O18NetworkManagerTypeO17OfflineCodingKeys33_F2A4BB85B9135A138EFF94D0C85A1EDELLOGMR);
  v55 = *(v5 - 8);
  v56 = v5;
  MEMORY[0x28223BE20](v5);
  v63 = &v51 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8CipherML20AllowListMigrationV1O18NetworkManagerTypeO16AspireCodingKeys33_F2A4BB85B9135A138EFF94D0C85A1EDELLOGMd, &_ss22KeyedDecodingContainerVy8CipherML20AllowListMigrationV1O18NetworkManagerTypeO16AspireCodingKeys33_F2A4BB85B9135A138EFF94D0C85A1EDELLOGMR);
  v8 = *(v7 - 8);
  v59 = v7;
  v60 = v8;
  MEMORY[0x28223BE20](v7);
  v62 = &v51 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8CipherML20AllowListMigrationV1O18NetworkManagerTypeO13AmsCodingKeys33_F2A4BB85B9135A138EFF94D0C85A1EDELLOGMd, &_ss22KeyedDecodingContainerVy8CipherML20AllowListMigrationV1O18NetworkManagerTypeO13AmsCodingKeys33_F2A4BB85B9135A138EFF94D0C85A1EDELLOGMR);
  v11 = *(v10 - 8);
  v53 = v10;
  v54 = v11;
  MEMORY[0x28223BE20](v10);
  v13 = &v51 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8CipherML20AllowListMigrationV1O18NetworkManagerTypeO10CodingKeys33_F2A4BB85B9135A138EFF94D0C85A1EDELLOGMd, &_ss22KeyedDecodingContainerVy8CipherML20AllowListMigrationV1O18NetworkManagerTypeO10CodingKeys33_F2A4BB85B9135A138EFF94D0C85A1EDELLOGMR);
  v65 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v51 - v15;
  v17 = type metadata accessor for AllowListMigrationV1.NetworkManagerType(0);
  MEMORY[0x28223BE20](v17);
  v19 = &v51 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v22 = &v51 - v21;
  v23 = a1[3];
  v67 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v23);
  lazy protocol witness table accessor for type AllowListMigrationV1.NetworkManagerType.CodingKeys and conformance AllowListMigrationV1.NetworkManagerType.CodingKeys();
  v24 = v66;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v24)
  {
    v52 = v13;
    v25 = v62;
    v26 = v63;
    v66 = v22;
    v27 = v64;
    v28 = KeyedDecodingContainer.allKeys.getter();
    v29 = (2 * *(v28 + 16)) | 1;
    v68 = v28;
    v69 = v28 + 32;
    v70 = 0;
    v71 = v29;
    v30 = specialized Collection<>.popFirst()();
    if (v30 == 4 || v70 != v71 >> 1)
    {
      v34 = v16;
      v35 = type metadata accessor for DecodingError();
      swift_allocError();
      v36 = v14;
      v38 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      *v38 = v17;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v35 - 8) + 104))(v38, *MEMORY[0x277D84160], v35);
      swift_willThrow();
      (*(v65 + 8))(v34, v36);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v30 > 1u)
      {
        v40 = v65;
        if (v30 == 2)
        {
          v72 = 2;
          lazy protocol witness table accessor for type AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.OfflineCodingKeys();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v55 + 8))(v26, v56);
          (*(v40 + 8))(v16, v14);
          swift_unknownObjectRelease();
          v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8endpoint_ACSg6issuerAA4DataVSg19authenticationTokenSb22privacyProxyFailClosedtMd, &_s10Foundation3URLV8endpoint_ACSg6issuerAA4DataVSg19authenticationTokenSb22privacyProxyFailClosedtMR);
          v33 = v66;
          (*(*(v41 - 8) + 56))(v66, 2, 3, v41);
        }

        else
        {
          v72 = 3;
          lazy protocol witness table accessor for type AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.PegasusCodingKeys();
          v42 = v61;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v57 + 8))(v42, v58);
          (*(v40 + 8))(v16, v14);
          swift_unknownObjectRelease();
          v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8endpoint_ACSg6issuerAA4DataVSg19authenticationTokenSb22privacyProxyFailClosedtMd, &_s10Foundation3URLV8endpoint_ACSg6issuerAA4DataVSg19authenticationTokenSb22privacyProxyFailClosedtMR);
          v33 = v66;
          (*(*(v45 - 8) + 56))(v66, 3, 3, v45);
        }
      }

      else if (v30)
      {
        v72 = 1;
        lazy protocol witness table accessor for type AllowListMigrationV1.NetworkManagerType.AspireCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AspireCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v63 = v14;
        v43 = type metadata accessor for URL();
        v72 = 0;
        _s16CryptoKitPrivate2HEO13SecurityLevelOAESEAAWlTm_0(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x277CC9260], MEMORY[0x277CC9280]);
        v61 = v19;
        v44 = v59;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v58 = v16;
        v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8endpoint_ACSg6issuerAA4DataVSg19authenticationTokenSb22privacyProxyFailClosedtMd, &_s10Foundation3URLV8endpoint_ACSg6issuerAA4DataVSg19authenticationTokenSb22privacyProxyFailClosedtMR);
        v46 = *(v57 + 48);
        v72 = 1;
        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
        v47 = v43;
        v48 = v60;
        v55 = v46;
        v56 = v47;
        v49 = v57;
        v72 = 2;
        lazy protocol witness table accessor for type Data and conformance Data();
        KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
        v72 = 3;
        LOBYTE(v47) = KeyedDecodingContainer.decode(_:forKey:)();
        v50 = *(v49 + 80);
        (*(v48 + 8))(v25, v44);
        (*(v65 + 8))(v58, v63);
        swift_unknownObjectRelease();
        v19[v50] = v47 & 1;
        (*(*(v49 - 8) + 56))(v19, 0, 3, v49);
        v33 = v66;
        outlined init with take of UseCaseGroup(v19, v66, type metadata accessor for AllowListMigrationV1.NetworkManagerType);
      }

      else
      {
        v72 = 0;
        lazy protocol witness table accessor for type AllowListMigrationV1.NetworkManagerType.AmsCodingKeys and conformance AllowListMigrationV1.NetworkManagerType.AmsCodingKeys();
        v31 = v52;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        (*(v54 + 8))(v31, v53);
        (*(v65 + 8))(v16, v14);
        swift_unknownObjectRelease();
        v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLV8endpoint_ACSg6issuerAA4DataVSg19authenticationTokenSb22privacyProxyFailClosedtMd, &_s10Foundation3URLV8endpoint_ACSg6issuerAA4DataVSg19authenticationTokenSb22privacyProxyFailClosedtMR);
        v33 = v66;
        (*(*(v32 - 8) + 56))(v66, 1, 3, v32);
      }

      outlined init with take of UseCaseGroup(v33, v27, type metadata accessor for AllowListMigrationV1.NetworkManagerType);
    }
  }

  return __swift_destroy_boxed_opaque_existential_0(v67);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AllowListMigrationV1.NetworkManagerType()
{
  Hasher.init(_seed:)();
  AllowListMigrationV1.NetworkManagerType.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AllowListMigrationV1.NetworkManagerType(uint64_t a1)
{
  Hasher.init(_seed:)();
  AllowListMigrationV1.NetworkManagerType.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t AllowListMigrationV1.NetworkConfig.secondaryIdentifier.getter()
{
  v1 = *(v0 + *(type metadata accessor for AllowListMigrationV1.NetworkConfig(0) + 20));

  return v1;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AllowListMigrationV1.NetworkConfig.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AllowListMigrationV1.NetworkConfig.CodingKeys and conformance AllowListMigrationV1.NetworkConfig.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AllowListMigrationV1.NetworkConfig.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AllowListMigrationV1.NetworkConfig.CodingKeys and conformance AllowListMigrationV1.NetworkConfig.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t AllowListMigrationV1.NetworkConfig.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML20AllowListMigrationV1O13NetworkConfigV10CodingKeys33_F2A4BB85B9135A138EFF94D0C85A1EDELLOGMd, &_ss22KeyedEncodingContainerVy8CipherML20AllowListMigrationV1O13NetworkConfigV10CodingKeys33_F2A4BB85B9135A138EFF94D0C85A1EDELLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AllowListMigrationV1.NetworkConfig.CodingKeys and conformance AllowListMigrationV1.NetworkConfig.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for AllowListMigrationV1.NetworkManagerType(0);
  _s16CryptoKitPrivate2HEO13SecurityLevelOAESEAAWlTm_0(&lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType and conformance AllowListMigrationV1.NetworkManagerType, type metadata accessor for AllowListMigrationV1.NetworkManagerType, &protocol conformance descriptor for AllowListMigrationV1.NetworkManagerType);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for AllowListMigrationV1.NetworkConfig(0);
    v8[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

void AllowListMigrationV1.NetworkConfig.hash(into:)(uint64_t a1)
{
  AllowListMigrationV1.NetworkManagerType.hash(into:)(a1);
  if (*(v1 + *(type metadata accessor for AllowListMigrationV1.NetworkConfig(0) + 20) + 8))
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int AllowListMigrationV1.NetworkConfig.hashValue.getter()
{
  Hasher.init(_seed:)();
  AllowListMigrationV1.NetworkManagerType.hash(into:)(v2);
  if (*(v0 + *(type metadata accessor for AllowListMigrationV1.NetworkConfig(0) + 20) + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t AllowListMigrationV1.NetworkConfig.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = type metadata accessor for AllowListMigrationV1.NetworkManagerType(0);
  MEMORY[0x28223BE20](v4);
  v25 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8CipherML20AllowListMigrationV1O13NetworkConfigV10CodingKeys33_F2A4BB85B9135A138EFF94D0C85A1EDELLOGMd, &_ss22KeyedDecodingContainerVy8CipherML20AllowListMigrationV1O13NetworkConfigV10CodingKeys33_F2A4BB85B9135A138EFF94D0C85A1EDELLOGMR);
  v24 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v7 = &v21 - v6;
  v8 = type metadata accessor for AllowListMigrationV1.NetworkConfig(0);
  MEMORY[0x28223BE20](v8);
  v10 = &v21 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AllowListMigrationV1.NetworkConfig.CodingKeys and conformance AllowListMigrationV1.NetworkConfig.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v22 = v8;
  v11 = v10;
  v12 = v24;
  v28 = 0;
  _s16CryptoKitPrivate2HEO13SecurityLevelOAESEAAWlTm_0(&lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkManagerType and conformance AllowListMigrationV1.NetworkManagerType, type metadata accessor for AllowListMigrationV1.NetworkManagerType, &protocol conformance descriptor for AllowListMigrationV1.NetworkManagerType);
  v14 = v25;
  v13 = v26;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  outlined init with take of UseCaseGroup(v14, v11, type metadata accessor for AllowListMigrationV1.NetworkManagerType);
  v27 = 1;
  v15 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v17 = v16;
  (*(v12 + 8))(v7, v13);
  v18 = v23;
  v19 = (v11 + *(v22 + 20));
  *v19 = v15;
  v19[1] = v17;
  outlined init with copy of AllowListMigrationV1.UseCaseGroup(v11, v18, type metadata accessor for AllowListMigrationV1.NetworkConfig);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return outlined destroy of AllowListMigrationV1.UseCaseGroup(v11, type metadata accessor for AllowListMigrationV1.NetworkConfig);
}

uint64_t AllowListMigrationV1.NetworkConfig.init(type:secondaryIdentifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  outlined init with take of UseCaseGroup(a1, a4, type metadata accessor for AllowListMigrationV1.NetworkManagerType);
  result = type metadata accessor for AllowListMigrationV1.NetworkConfig(0);
  v8 = (a4 + *(result + 20));
  *v8 = a2;
  v8[1] = a3;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance AllowListMigrationV1.NetworkConfig(uint64_t a1)
{
  Hasher.init(_seed:)();
  AllowListMigrationV1.NetworkManagerType.hash(into:)(v4);
  if (*(v1 + *(a1 + 20) + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance AllowListMigrationV1.NetworkConfig(uint64_t a1, uint64_t a2)
{
  AllowListMigrationV1.NetworkManagerType.hash(into:)(a1);
  if (*(v2 + *(a2 + 20) + 8))
  {
    Hasher._combine(_:)(1u);

    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance AllowListMigrationV1.NetworkConfig(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  AllowListMigrationV1.NetworkManagerType.hash(into:)(v5);
  if (*(v2 + *(a2 + 20) + 8))
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  return Hasher._finalize()();
}

uint64_t AllowListMigrationV1.UseCaseGroup.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy8CipherML20AllowListMigrationV1O12UseCaseGroupV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy8CipherML20AllowListMigrationV1O12UseCaseGroupV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AllowListMigrationV1.UseCaseGroup.CodingKeys and conformance AllowListMigrationV1.UseCaseGroup.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = 0;
  type metadata accessor for HE.SecurityLevel();
  _s16CryptoKitPrivate2HEO13SecurityLevelOAESEAAWlTm_0(&lazy protocol witness table cache variable for type HE.SecurityLevel and conformance HE.SecurityLevel, MEMORY[0x277D02EF8], MEMORY[0x277D02F00]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for AllowListMigrationV1.UseCaseGroup(0);
    v15 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v14 = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v13 = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = *(v3 + *(v9 + 32));
    v11[15] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS8CipherML7UseCaseOGMd, &_sSDySS8CipherML7UseCaseOGMR);
    lazy protocol witness table accessor for type [String : UseCase] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : UseCase] and conformance <> [A : B], lazy protocol witness table accessor for type UseCase and conformance UseCase, MEMORY[0x277D837D8], MEMORY[0x277D83508]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v11[14] = 5;
    type metadata accessor for AllowListMigrationV1.NetworkConfig(0);
    _s16CryptoKitPrivate2HEO13SecurityLevelOAESEAAWlTm_0(&lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkConfig and conformance AllowListMigrationV1.NetworkConfig, type metadata accessor for AllowListMigrationV1.NetworkConfig, &protocol conformance descriptor for AllowListMigrationV1.NetworkConfig);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t AllowListMigrationV1.UseCaseGroup.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v22 = type metadata accessor for AllowListMigrationV1.NetworkConfig(0);
  MEMORY[0x28223BE20](v22);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for HE.SecurityLevel();
  v21 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v24 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy8CipherML20AllowListMigrationV1O12UseCaseGroupV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy8CipherML20AllowListMigrationV1O12UseCaseGroupV10CodingKeysOGMR);
  v23 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v8 = &v19 - v7;
  v9 = type metadata accessor for AllowListMigrationV1.UseCaseGroup(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AllowListMigrationV1.UseCaseGroup.CodingKeys and conformance AllowListMigrationV1.UseCaseGroup.CodingKeys();
  v25 = v8;
  v12 = v27;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v13 = v21;
  v27 = v4;
  v34 = 0;
  _s16CryptoKitPrivate2HEO13SecurityLevelOAESEAAWlTm_0(&lazy protocol witness table cache variable for type HE.SecurityLevel and conformance HE.SecurityLevel, MEMORY[0x277D02EF8], MEMORY[0x277D02F20]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v14 = v11;
  (*(v13 + 32))(v11, v24, v5);
  v33 = 1;
  *&v11[v9[5]] = KeyedDecodingContainer.decode(_:forKey:)();
  v32 = 2;
  v15 = a1;
  *(v14 + v9[6]) = KeyedDecodingContainer.decode(_:forKey:)();
  v31 = 3;
  v16 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v17 = v23;
  *(v14 + v9[7]) = v16 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS8CipherML7UseCaseOGMd, &_sSDySS8CipherML7UseCaseOGMR);
  v30 = 4;
  lazy protocol witness table accessor for type [String : UseCase] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : UseCase] and conformance <> [A : B], lazy protocol witness table accessor for type UseCase and conformance UseCase, MEMORY[0x277D83808], MEMORY[0x277D83528]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v14 + v9[8]) = v28;
  v29 = 5;
  _s16CryptoKitPrivate2HEO13SecurityLevelOAESEAAWlTm_0(&lazy protocol witness table cache variable for type AllowListMigrationV1.NetworkConfig and conformance AllowListMigrationV1.NetworkConfig, type metadata accessor for AllowListMigrationV1.NetworkConfig, &protocol conformance descriptor for AllowListMigrationV1.NetworkConfig);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v17 + 8))(v25, v26);
  outlined init with take of UseCaseGroup(v27, v14 + v9[9], type metadata accessor for AllowListMigrationV1.NetworkConfig);
  outlined init with copy of AllowListMigrationV1.UseCaseGroup(v14, v20, type metadata accessor for AllowListMigrationV1.UseCaseGroup);
  __swift_destroy_boxed_opaque_existential_0(v15);
  return outlined destroy of AllowListMigrationV1.UseCaseGroup(v14, type metadata accessor for AllowListMigrationV1.UseCaseGroup);
}