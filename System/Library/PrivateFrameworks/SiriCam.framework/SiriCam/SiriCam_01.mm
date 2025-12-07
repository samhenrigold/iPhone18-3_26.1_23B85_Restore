uint64_t MLMultiArray.MLMultiArrayCodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6570616873 && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6570795461746164 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 1635017060 && a2 == 0xE400000000000000)
    {

      return 2;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        return 2;
      }

      else
      {
        return 3;
      }
    }
  }
}

Swift::Int MLMultiArray.MLMultiArrayCodingKeys.hashValue.getter(unsigned __int8 a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x26D5DD540](a1);
  return Hasher._finalize()();
}

uint64_t MLMultiArray.MLMultiArrayCodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6570616873;
  }

  if (a1 == 1)
  {
    return 0x6570795461746164;
  }

  return 1635017060;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLMultiArray.MLMultiArrayCodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  MEMORY[0x26D5DD540](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLMultiArray.MLMultiArrayCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MLMultiArray.MLMultiArrayCodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance MLMultiArray.MLMultiArrayCodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = MLMultiArray.MLMultiArrayCodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLMultiArray.MLMultiArrayCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLMultiArray.MLMultiArrayCodingKeys and conformance MLMultiArray.MLMultiArrayCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLMultiArray.MLMultiArrayCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLMultiArray.MLMultiArrayCodingKeys and conformance MLMultiArray.MLMultiArrayCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void MLMultiArray.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVySo12MLMultiArrayC7SiriCamE0dE10CodingKeys33_561A5CA66CC542D53D28CD818D93D29CLLOGMd, &_ss22KeyedEncodingContainerVySo12MLMultiArrayC7SiriCamE0dE10CodingKeys33_561A5CA66CC542D53D28CD818D93D29CLLOGMR);
  OUTLINED_FUNCTION_22();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v39 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLMultiArray.MLMultiArrayCodingKeys and conformance MLMultiArray.MLMultiArrayCodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v42 = v1;
  v9 = [v1 shape];
  type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  v10 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  v11 = specialized Array.count.getter(v10);
  if (v11)
  {
    v12 = v11;
    v45 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v11 & ~(v11 >> 63), 0);
    if (v12 < 0)
    {
      __break(1u);
      return;
    }

    v39 = v8;
    v40 = v3;
    v41 = v5;
    v13 = 0;
    v14 = v45;
    do
    {
      if ((v10 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x26D5DD230](v13, v10);
      }

      else
      {
        v15 = *(v10 + 8 * v13 + 32);
      }

      v16 = v15;
      v17 = Int.init(truncating:)();

      v45 = v14;
      v19 = *(v14 + 16);
      v18 = *(v14 + 24);
      if (v19 >= v18 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v18 > 1, v19 + 1, 1);
        v14 = v45;
      }

      ++v13;
      *(v14 + 16) = v19 + 1;
      *(v14 + 8 * v19 + 32) = v17;
    }

    while (v12 != v13);

    v3 = v40;
    v5 = v41;
    v8 = v39;
  }

  else
  {

    v14 = MEMORY[0x277D84F90];
  }

  v45 = v14;
  v44 = 0;
  v20 = OUTLINED_FUNCTION_8_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v20, v21);
  lazy protocol witness table accessor for type [Int] and conformance <A> [A](&lazy protocol witness table cache variable for type [Int] and conformance <A> [A], &_sSaySiGMd, &_sSaySiGMR);
  OUTLINED_FUNCTION_23_1();
  v22 = v43;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v22)
  {

LABEL_15:
    (*(v5 + 8))(v8, v3);
    return;
  }

  v23 = v42;
  [v42 dataType];
  LOBYTE(v45) = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v24 = [v23 dataType];
  if (v24 == 65568)
  {
    OUTLINED_FUNCTION_14_0();
    v34 = MLMultiArray.toFloatArray()();
    OUTLINED_FUNCTION_4_1(v34);
    v26 = &_sSaySfGMd;
    v27 = &_sSaySfGMR;
    v35 = OUTLINED_FUNCTION_8_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v35, v36);
    v30 = &lazy protocol witness table cache variable for type [Float] and conformance <A> [A];
  }

  else if (v24 == 131104)
  {
    OUTLINED_FUNCTION_14_0();
    v31 = MLMultiArray.toIntArray()();
    OUTLINED_FUNCTION_4_1(v31);
    v26 = &_sSays5Int32VGMd;
    v27 = &_sSays5Int32VGMR;
    v32 = OUTLINED_FUNCTION_8_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v32, v33);
    v30 = &lazy protocol witness table cache variable for type [Int32] and conformance <A> [A];
  }

  else
  {
    if (v24 != 65600)
    {
      v37 = lazy protocol witness table accessor for type CoreMLError and conformance CoreMLError();
      OUTLINED_FUNCTION_6_2(&type metadata for CoreMLError, v37);
      *v38 = 0xD000000000000026;
      *(v38 + 8) = 0x800000026681A4B0;
      *(v38 + 16) = 0;
      swift_willThrow();
      goto LABEL_15;
    }

    OUTLINED_FUNCTION_14_0();
    v25 = MLMultiArray.toDoubleArray()();
    OUTLINED_FUNCTION_4_1(v25);
    v26 = &_sSaySdGMd;
    v27 = &_sSaySdGMR;
    v28 = OUTLINED_FUNCTION_8_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v28, v29);
    v30 = &lazy protocol witness table cache variable for type [Double] and conformance <A> [A];
  }

  lazy protocol witness table accessor for type [Int] and conformance <A> [A](v30, v26, v27);
  OUTLINED_FUNCTION_23_1();
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  (*(v5 + 8))(v10, v3);
}

unint64_t lazy protocol witness table accessor for type MLMultiArray.MLMultiArrayCodingKeys and conformance MLMultiArray.MLMultiArrayCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLMultiArray.MLMultiArrayCodingKeys and conformance MLMultiArray.MLMultiArrayCodingKeys;
  if (!lazy protocol witness table cache variable for type MLMultiArray.MLMultiArrayCodingKeys and conformance MLMultiArray.MLMultiArrayCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLMultiArray.MLMultiArrayCodingKeys and conformance MLMultiArray.MLMultiArrayCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLMultiArray.MLMultiArrayCodingKeys and conformance MLMultiArray.MLMultiArrayCodingKeys;
  if (!lazy protocol witness table cache variable for type MLMultiArray.MLMultiArrayCodingKeys and conformance MLMultiArray.MLMultiArrayCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLMultiArray.MLMultiArrayCodingKeys and conformance MLMultiArray.MLMultiArrayCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLMultiArray.MLMultiArrayCodingKeys and conformance MLMultiArray.MLMultiArrayCodingKeys;
  if (!lazy protocol witness table cache variable for type MLMultiArray.MLMultiArrayCodingKeys and conformance MLMultiArray.MLMultiArrayCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLMultiArray.MLMultiArrayCodingKeys and conformance MLMultiArray.MLMultiArrayCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLMultiArray.MLMultiArrayCodingKeys and conformance MLMultiArray.MLMultiArrayCodingKeys;
  if (!lazy protocol witness table cache variable for type MLMultiArray.MLMultiArrayCodingKeys and conformance MLMultiArray.MLMultiArrayCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLMultiArray.MLMultiArrayCodingKeys and conformance MLMultiArray.MLMultiArrayCodingKeys);
  }

  return result;
}

id @nonobjc MLMultiArray.init(shape:dataType:)(uint64_t a1, uint64_t a2)
{
  v9[1] = *MEMORY[0x277D85DE8];
  type metadata accessor for MLMultiArray(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v9[0] = 0;
  v5 = [v2 initWithShape:isa dataType:a2 error:v9];

  if (v5)
  {
    v6 = v9[0];
  }

  else
  {
    v7 = v9[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v5;
}

unint64_t specialized Array._checkSubscript(_:wasNativeTypeChecked:)(unint64_t result, char a2, uint64_t a3)
{
  if (a2)
  {
    if ((result & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > result)
    {
      return result;
    }

    __break(1u);
  }

  return result;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3)
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

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy12MorphunSwift5TokenVGMd, &_ss23_ContiguousArrayStorageCy12MorphunSwift5TokenVGMR, MEMORY[0x277D2A310], specialized UnsafeMutablePointer.moveInitialize(from:count:));
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Foundation3URLVGMd, &_ss23_ContiguousArrayStorageCy10Foundation3URLVGMR, MEMORY[0x277CC9260], specialized UnsafeMutablePointer.moveInitialize(from:count:));
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySiGMd, &_ss23_ContiguousArrayStorageCySiGMR, specialized UnsafeMutablePointer.moveInitialize(from:count:));
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel11RRCandidateVGMd, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel11RRCandidateVGMR, MEMORY[0x277D5FE08], specialized UnsafeMutablePointer.moveInitialize(from:count:));
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDVGMR, MEMORY[0x277CC95F0], specialized UnsafeMutablePointer.moveInitialize(from:count:));
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCySdGMd, &_ss23_ContiguousArrayStorageCySdGMR, specialized UnsafeMutablePointer.moveInitialize(from:count:));
  *v3 = v4;
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy7SiriCam0E5ParseOGMd, &_ss23_ContiguousArrayStorageCy7SiriCam0E5ParseOGMR, type metadata accessor for CamParse, specialized UnsafeMutablePointer.moveInitialize(from:count:));
  *v3 = v4;
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

unint64_t lazy protocol witness table accessor for type CoreMLError and conformance CoreMLError()
{
  result = lazy protocol witness table cache variable for type CoreMLError and conformance CoreMLError;
  if (!lazy protocol witness table cache variable for type CoreMLError and conformance CoreMLError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CoreMLError and conformance CoreMLError);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type [Int] and conformance <A> [A](unint64_t *a1, uint64_t *a2, uint64_t *a3)
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

uint64_t getEnumTagSinglePayload for CoreMLError(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFE && *(a1 + 17))
    {
      v2 = *a1 + 253;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 2)
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

uint64_t storeEnumTagSinglePayload for CoreMLError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLMultiArray.MLMultiArrayCodingKeys(unsigned __int8 *a1, unsigned int a2)
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

_BYTE *storeEnumTagSinglePayload for MLMultiArray.MLMultiArrayCodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)()
{
  OUTLINED_FUNCTION_9_1();
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v1, v2, v3, v4, v5, v6, v7, specialized UnsafeMutablePointer.moveInitialize(from:count:));
  *v0 = v8;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySaySdGGMd, &_ss23_ContiguousArrayStorageCySaySdGGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySdGMd, &_sSaySdGMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSSgGMd, &_ss23_ContiguousArrayStorageCySSSgGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySDySSSo14MLFeatureValueCGGMd, &_ss23_ContiguousArrayStorageCySDySSSo14MLFeatureValueCGGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo14MLFeatureValueCGMd, &_sSDySSSo14MLFeatureValueCGMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So14MLFeatureValueCtGMd, &_ss23_ContiguousArrayStorageCySS_So14MLFeatureValueCtGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_So14MLFeatureValueCtMd, &_sSS_So14MLFeatureValueCtMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4UUIDV_SDySSSo14MLFeatureValueCGtGMd, &_ss23_ContiguousArrayStorageCy10Foundation4UUIDV_SDySSSo14MLFeatureValueCGtGMR);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_SDySSSo14MLFeatureValueCGtMd, &_s10Foundation4UUIDV_SDySSSo14MLFeatureValueCGtMR) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDV_SDySSSo14MLFeatureValueCGtMd, &_s10Foundation4UUIDV_SDySSSo14MLFeatureValueCGtMR) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

void specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a3 & 1) == 0 || (OUTLINED_FUNCTION_3_4(), v7 == v8))
  {
LABEL_6:
    OUTLINED_FUNCTION_13();
    if (v4)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
      v9 = swift_allocObject();
      v10 = _swift_stdlib_malloc_size(v9);
      OUTLINED_FUNCTION_16(v10);
      if (a1)
      {
LABEL_8:
        v11 = OUTLINED_FUNCTION_12_1();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v11, v12, v13);
        *(a4 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (a1)
    {
      goto LABEL_8;
    }

    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_17();
  if (!v7)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_6;
  }

  __break(1u);
}

{
  if ((a3 & 1) == 0 || (OUTLINED_FUNCTION_3_4(), v8 == v9))
  {
LABEL_6:
    OUTLINED_FUNCTION_13();
    if (v5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy7SiriCam14ActionProtocol_pGMd, &_ss23_ContiguousArrayStorageCy7SiriCam14ActionProtocol_pGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      v10[2] = v4;
      v10[3] = 2 * ((v11 - 32) / 40);
      if (a1)
      {
LABEL_8:
        v12 = OUTLINED_FUNCTION_12_1();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v12, v13, v14);
        *(a4 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else if (a1)
    {
      goto LABEL_8;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam14ActionProtocol_pMd, &_s7SiriCam14ActionProtocol_pMR);
    swift_arrayInitWithCopy();
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_17();
  if (!v8)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_6;
  }

  __break(1u);
}

{
  if ((a3 & 1) == 0 || (OUTLINED_FUNCTION_3_4(), v8 == v9))
  {
LABEL_6:
    OUTLINED_FUNCTION_13();
    if (v5)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi6offset_Sd7elementtGMd, &_ss23_ContiguousArrayStorageCySi6offset_Sd7elementtGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      OUTLINED_FUNCTION_16(v11);
      if (a1)
      {
LABEL_8:
        v12 = OUTLINED_FUNCTION_12_1();
        specialized UnsafeMutablePointer.moveInitialize(from:count:)(v12, v13, v14);
        *(a4 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_8;
      }
    }

    memcpy((v10 + 32), (a4 + 32), 16 * v4);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_17();
  if (!v8)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy11SiriSignals27AppSelectionSignalComponent_pGMd, &_ss23_ContiguousArrayStorageCy11SiriSignals27AppSelectionSignalComponent_pGMR);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        specialized UnsafeMutablePointer.moveInitialize(from:count:)((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x277D84F90];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s11SiriSignals27AppSelectionSignalComponent_pMd, &_s11SiriSignals27AppSelectionSignalComponent_pMR);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t outlined init with copy of SignalProviding(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

void specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, void (*a7)(uint64_t, uint64_t, void *))
{
  if ((a3 & 1) == 0)
  {
    v10 = a2;
    goto LABEL_7;
  }

  OUTLINED_FUNCTION_3_4();
  if (v11 == v12)
  {
LABEL_7:
    v13 = *(a4 + 16);
    if (v10 <= v13)
    {
      v14 = *(a4 + 16);
    }

    else
    {
      v14 = v10;
    }

    if (v14)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
      v15 = swift_allocObject();
      v16 = _swift_stdlib_malloc_size(v15);
      v15[2] = v13;
      v15[3] = 2 * ((v16 - 32) / 8);
      if (a1)
      {
LABEL_12:
        a7(a4 + 32, v13, v15 + 4);
        *(a4 + 16) = 0;
LABEL_15:

        return;
      }
    }

    else
    {
      v15 = MEMORY[0x277D84F90];
      if (a1)
      {
        goto LABEL_12;
      }
    }

    memcpy(v15 + 4, (a4 + 32), 8 * v13);
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_17();
  if (!v11)
  {
    OUTLINED_FUNCTION_2_1();
    goto LABEL_7;
  }

  __break(1u);
}

void specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(char a1, uint64_t a2, char a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void), void (*a8)(unint64_t, uint64_t, char *))
{
  if (a3)
  {
    OUTLINED_FUNCTION_3_4();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_17();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_2_1();
    }
  }

  else
  {
    v12 = a2;
  }

  v15 = *(a4 + 16);
  if (v12 <= v15)
  {
    v16 = *(a4 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v20 = MEMORY[0x277D84F90];
    goto LABEL_18;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v17 = *(a7(0) - 8);
  v18 = *(v17 + 72);
  v19 = (*(v17 + 80) + 32) & ~*(v17 + 80);
  v20 = swift_allocObject();
  v21 = _swift_stdlib_malloc_size(v20);
  if (!v18)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v21 - v19 == 0x8000000000000000 && v18 == -1)
  {
    goto LABEL_23;
  }

  v20[2] = v15;
  v20[3] = 2 * ((v21 - v19) / v18);
LABEL_18:
  v23 = *(a7(0) - 8);
  if (a1)
  {
    v24 = (*(v23 + 80) + 32) & ~*(v23 + 80);
    a8(a4 + v24, v15, v20 + v24);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }
}

uint64_t outlined destroy of RankedAction(uint64_t a1)
{
  v2 = type metadata accessor for RankedAction(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

{
  v2 = OUTLINED_FUNCTION_48();
  v3(v2);
  OUTLINED_FUNCTION_0_2();
  (*(v4 + 8))(v1);
  return v1;
}

id OUTLINED_FUNCTION_19()
{

  return [v0 (v1 + 888)];
}

uint64_t one-time initialization function for common(uint64_t a1)
{
  return one-time initialization function for common(a1, 0x6E6F6D6D6F63, 0xE600000000000000, &static Log.common);
}

{
  return one-time initialization function for common(a1, static Logger.common, &one-time initialization token for common, &static Log.common, one-time initialization function for common);
}

uint64_t one-time initialization function for ambiguityHandling()
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  static Log.ambiguityHandling = result;
  return result;
}

unint64_t type metadata accessor for OS_os_log()
{
  result = lazy cache variable for type metadata for OS_os_log;
  if (!lazy cache variable for type metadata for OS_os_log)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_os_log);
  }

  return result;
}

uint64_t one-time initialization function for autoSend(uint64_t a1)
{
  return one-time initialization function for common(a1, 0x646E65536F747541, 0xE800000000000000, &static Log.autoSend);
}

{
  return one-time initialization function for common(a1, static Logger.autoSend, &one-time initialization token for autoSend, &static Log.autoSend, one-time initialization function for autoSend);
}

uint64_t one-time initialization function for ranker(uint64_t a1)
{
  return one-time initialization function for common(a1, 0x61526E6F69746341, 0xEC00000072656B6ELL, &static Log.ranker);
}

{
  return one-time initialization function for common(a1, static Logger.ranker, &one-time initialization token for ranker, &static Log.ranker, one-time initialization function for ranker);
}

uint64_t one-time initialization function for common(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  type metadata accessor for OS_os_log();
  result = OS_os_log.init(subsystem:category:)();
  *a4 = result;
  return result;
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

uint64_t one-time initialization function for common(uint64_t a1, uint64_t *a2, void *a3, id *a4, uint64_t a5)
{
  v8 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v8, a2);
  __swift_project_value_buffer(v8, a2);
  if (*a3 != -1)
  {
    swift_once();
  }

  v9 = *a4;
  return Logger.init(_:)();
}

uint64_t PommesResponse.sash()@<X0>(unint64_t a1@<X8>)
{
  v43 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent();
  OUTLINED_FUNCTION_22();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  v7 = &v36 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent();
  OUTLINED_FUNCTION_22();
  v10 = v9;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v36 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v36 - v15;
  v17 = dispatch thunk of PommesResponse.experiences.getter();
  if (specialized Array.count.getter())
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
    if ((v17 & 0xC000000000000001) != 0)
    {
      v18 = MEMORY[0x26D5DD230](0, v17);
    }

    else
    {
      v18 = *(v17 + 32);
    }

    v19 = v18;

    type metadata accessor for GenericExperience();
    v20 = swift_dynamicCastClass();
    if (v20)
    {
      v38 = v1;
      v39 = v19;
      v37 = v16;
      v40 = a1;
      v1 = v20;
      v21 = GenericExperience.components.getter();
      a1 = 0;
      v22 = *(v21 + 16);
      v41 = v10 + 16;
      v42 = v22;
      v23 = (v4 + 8);
      while (1)
      {
        if (v42 == a1)
        {

          a1 = v40;
          v1 = v38;
          goto LABEL_13;
        }

        if (a1 >= *(v21 + 16))
        {
          break;
        }

        (*(v10 + 16))(v14, v21 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + *(v10 + 72) * a1, v8);
        Apple_Parsec_Siri_V2alpha_ExperienceComponent.layoutExperience.getter();
        v1 = Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.hasSash.getter();
        v24 = *v23;
        (*v23)(v7, v43);
        if (v1)
        {

          v35 = v37;
          (*(v10 + 32))(v37, v14, v8);
          Apple_Parsec_Siri_V2alpha_ExperienceComponent.layoutExperience.getter();
          a1 = v40;
          Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.sash.getter();

          v24(v7, v43);
          (*(v10 + 8))(v35, v8);
          v32 = 0;
          goto LABEL_17;
        }

        ++a1;
        (*(v10 + 8))(v14, v8);
      }

      __break(1u);
      goto LABEL_20;
    }
  }

  else
  {
  }

LABEL_13:
  if (one-time initialization token for common != -1)
  {
LABEL_20:
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Logger.common);
  v26 = v1;
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    v30 = swift_slowAlloc();
    *v29 = 138412290;
    *(v29 + 4) = v26;
    *v30 = v26;
    v31 = v26;
    _os_log_impl(&dword_266790000, v27, v28, "No sash found in pommes response: %@", v29, 0xCu);
    outlined destroy of NSObject?(v30);
    MEMORY[0x26D5DDCD0](v30, -1, -1);
    MEMORY[0x26D5DDCD0](v29, -1, -1);
  }

  v32 = 1;
LABEL_17:
  v33 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Sash();
  return __swift_storeEnumTagSinglePayload(a1, v32, 1, v33);
}

uint64_t outlined destroy of NSObject?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo8NSObjectCSgMd, _sSo8NSObjectCSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id static CaarRequestLogger.wrapIntoLogEvent(message:)(uint64_t a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x277D56BA0]) init];
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  v4 = [objc_allocWithZone(MEMORY[0x277D56B48]) init];
  if (v4)
  {
    [v3 setStartedOrChanged_];
    [v4 setCaarRequestContext_];
  }

  return v4;
}

uint64_t FeatureStoreStream.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0x6C65646F4D6D6143;
  }

  if (a1 == 1)
  {
    return 0x65646F4D72616143;
  }

  return 0x646E65536F747541;
}

uint64_t getEnumTagSinglePayload for AnyEncodable(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 16))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for AnyEncodable(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

id static CaarModelLogger.map(from:)(uint64_t a1, uint64_t a2, _OWORD *a3)
{
  v78 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_22();
  v76 = v6;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_3_0();
  v10 = v9 - v8;
  v11 = type metadata accessor for RankedAction(0);
  OUTLINED_FUNCTION_22();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_3_0();
  v17 = v16 - v15;
  v18 = type metadata accessor for CamModelMetadata(0);
  MEMORY[0x28223BE20](v18 - 8);
  OUTLINED_FUNCTION_3_0();
  v77 = v20 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7SiriCam12RankedActionVG_AA0B13ModelMetadataVAA19CAARTrialEnrollmentVtMd, &_sSay7SiriCam12RankedActionVG_AA0B13ModelMetadataVAA19CAARTrialEnrollmentVtMR);
  OUTLINED_FUNCTION_0_2();
  v23 = MEMORY[0x28223BE20](v22);
  v25 = (&v72 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0));
  v26 = MEMORY[0x28223BE20](v23);
  v28 = &v72 - v27;
  *(&v72 - v27) = a1;
  outlined init with copy of CamModelMetadata(a2, &v72 + *(v26 + 48) - v27, type metadata accessor for CamModelMetadata);
  v29 = &v28[*(v21 + 64)];
  v30 = a3[1];
  *v29 = *a3;
  *(v29 + 1) = v30;
  v31 = a3[3];
  *(v29 + 2) = a3[2];
  *(v29 + 3) = v31;
  v32 = objc_allocWithZone(MEMORY[0x277D56B80]);

  outlined init with copy of CAARTrialEnrollment(a3, &v80);
  v33 = [v32 init];
  if (!v33)
  {
LABEL_11:
    v52 = v28;
LABEL_18:
    outlined destroy of ([RankedAction], CamModelMetadata, CAARTrialEnrollment)(v52);
    return 0;
  }

  v34 = v33;
  outlined init with copy of ([RankedAction], CamModelMetadata, CAARTrialEnrollment)(v28, v25);
  v35 = *v25;
  v36 = *(v21 + 48);
  v37 = (v25 + *(v21 + 64));
  v38 = v37[1];
  v80 = *v37;
  v81 = v38;
  v39 = v37[3];
  v82 = v37[2];
  v83 = v39;
  v40 = v77;
  outlined init with take of CamModelMetadata(v25 + v36, v77);
  v41 = _s7SiriCam20ModelLoggingProtocolPAAE19setAssetInformation13modelMetadata9namespaceSo08SISchemaG0CSgAA0bcJ0V_SStFZAA04CaarC6LoggerV_Tt1g5(v40, 0xD000000000000013, 0x800000026681A0C0);
  [v34 setAsset_];
  v42 = *(v40 + 48);
  if (v42 != 2)
  {
    [v34 setIsShadowLog_];
  }

  result = [objc_allocWithZone(MEMORY[0x277D56B90]) init];
  v79 = result;
  if (!result)
  {

    outlined destroy of CAARTrialEnrollment(&v80);

    OUTLINED_FUNCTION_0_4();
    outlined destroy of CamModelMetadata(v40, v51);
    goto LABEL_11;
  }

  v73 = v41;
  v74 = v34;
  v75 = v28;
  v44 = 0;
  v45 = (v76 + 16);
  v46 = *(v35 + 16);
  while (v46 != v44)
  {
    if (v44 >= *(v35 + 16))
    {
      __break(1u);
      return result;
    }

    outlined init with copy of CamModelMetadata(v35 + ((*(v13 + 80) + 32) & ~*(v13 + 80)) + *(v13 + 72) * v44, v17, type metadata accessor for RankedAction);
    v47 = [objc_allocWithZone(MEMORY[0x277D56B18]) init];
    if (!v47)
    {

      outlined destroy of CAARTrialEnrollment(&v80);

      OUTLINED_FUNCTION_1_2();
LABEL_17:
      OUTLINED_FUNCTION_0_4();
      outlined destroy of CamModelMetadata(v77, v60);
      v52 = v75;
      goto LABEL_18;
    }

    v48 = v47;
    ++v44;
    type metadata accessor for SISchemaUUID();
    (*v45)(v10, v17 + *(v11 + 36), v78);
    v49 = SISchemaUUID.__allocating_init(nsuuid:)(v10);
    [v48 setActionCandidateId_];

    v50 = *(v17 + *(v11 + 28));
    *&v50 = v50;
    [v48 setModelScore_];
    [v79 addActionModelOutputs_];

    result = OUTLINED_FUNCTION_1_2();
  }

  v53 = v74;
  v54 = v79;
  [v74 setModelOutput_];
  v55 = [objc_allocWithZone(MEMORY[0x277D56C18]) init];
  if (!v55)
  {

    outlined destroy of CAARTrialEnrollment(&v80);
    goto LABEL_17;
  }

  v56 = v55;
  v57 = v77;
  if (*(&v82 + 1))
  {

    OUTLINED_FUNCTION_6_4();
    v59 = v58;
  }

  else
  {
    v59 = 0;
  }

  OUTLINED_FUNCTION_5_2(v55, sel_setDeploymentId_);

  if (*(&v83 + 1))
  {

    OUTLINED_FUNCTION_6_4();
    v63 = v62;
  }

  else
  {
    v63 = 0;
  }

  OUTLINED_FUNCTION_5_2(v61, sel_setRolloutId_);

  if (*(&v81 + 1))
  {

    OUTLINED_FUNCTION_6_4();
    v66 = v65;
  }

  else
  {
    v66 = 0;
  }

  OUTLINED_FUNCTION_5_2(v64, sel_setTreatmentId_);

  if (*(&v80 + 1))
  {

    OUTLINED_FUNCTION_6_4();
    v68 = v67;
    outlined destroy of CAARTrialEnrollment(&v80);
  }

  else
  {
    v69 = outlined destroy of CAARTrialEnrollment(&v80);
    v68 = 0;
  }

  OUTLINED_FUNCTION_5_2(v69, sel_setExperimentId_);

  v70 = v56;
  [v53 setTrialEnrollment_];

  OUTLINED_FUNCTION_0_4();
  outlined destroy of CamModelMetadata(v57, v71);
  outlined destroy of ([RankedAction], CamModelMetadata, CAARTrialEnrollment)(v75);
  return v53;
}

uint64_t outlined destroy of ([RankedAction], CamModelMetadata, CAARTrialEnrollment)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7SiriCam12RankedActionVG_AA0B13ModelMetadataVAA19CAARTrialEnrollmentVtMd, &_sSay7SiriCam12RankedActionVG_AA0B13ModelMetadataVAA19CAARTrialEnrollmentVtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with copy of ([RankedAction], CamModelMetadata, CAARTrialEnrollment)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay7SiriCam12RankedActionVG_AA0B13ModelMetadataVAA19CAARTrialEnrollmentVtMd, &_sSay7SiriCam12RankedActionVG_AA0B13ModelMetadataVAA19CAARTrialEnrollmentVtMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with copy of CamModelMetadata(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_0_2();
  (*(v5 + 16))(a2, a1);
  return a2;
}

uint64_t outlined destroy of CamModelMetadata(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0_2();
  (*(v3 + 8))(a1);
  return a1;
}

unint64_t type metadata accessor for SISchemaUUID()
{
  result = lazy cache variable for type metadata for SISchemaUUID;
  if (!lazy cache variable for type metadata for SISchemaUUID)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for SISchemaUUID);
  }

  return result;
}

uint64_t protocol witness for SetAlgebra.intersection(_:) in conformance DateTimeOptions@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized OptionSet.intersection(_:)(*a1, *v2);
  *a2 = result;
  return result;
}

void *one-time initialization function for top13LocaleMap()
{
  result = Dictionary.init(dictionaryLiteral:)();
  top13LocaleMap._rawValue = result;
  return result;
}

void *one-time initialization function for top13RegionMap()
{
  result = Dictionary.init(dictionaryLiteral:)();
  top13RegionMap._rawValue = result;
  return result;
}

void *one-time initialization function for top13LanguageMap()
{
  result = Dictionary.init(dictionaryLiteral:)();
  top13LanguageMap._rawValue = result;
  return result;
}

void ForcedDisambiguation.trialFactor.getter(char a1)
{
  switch(a1)
  {
    case 2:
      OUTLINED_FUNCTION_9_2();
      break;
    default:
      return;
  }
}

uint64_t ForcedDisambiguation.overrideRate.getter(char a1)
{
  v1 = 2;
  result = 0;
  switch(a1)
  {
    case 1:
      v1 = 1;
      return CamDoubleUserDefaults.value.getter(v1);
    case 2:
      v1 = 0;
      return CamDoubleUserDefaults.value.getter(v1);
    case 3:
      return result;
    default:
      return CamDoubleUserDefaults.value.getter(v1);
  }
}

unint64_t ForcedDisambiguation.cooldownKey.getter(char a1)
{
  v2 = 0xE800000000000000;
  v3 = 0x534549545F4C4C41;
  switch(a1)
  {
    case 1:
      v2 = 0x8000000266819D30;
      v3 = 0xD000000000000016;
      break;
    case 2:
      break;
    case 3:
      v3 = 0x444E45534F545541;
      break;
    default:
      v2 = 0x8000000266819D00;
      v3 = 0xD000000000000021;
      break;
  }

  MEMORY[0x26D5DCD80](v3, v2);

  return 0xD000000000000020;
}

void ForcedDisambiguation.rawValue.getter(char a1)
{
  switch(a1)
  {
    case 1:
      OUTLINED_FUNCTION_9_2();
      break;
    default:
      return;
  }
}

uint64_t ForcedDisambiguation.cooldownPeriodInDays.getter(char a1)
{
  result = 0;
  switch(a1)
  {
    case 1:
      result = 84;
      break;
    case 2:
      v3 = MEMORY[0x26D5DCC90](0x6C616E7265746E49, 0xED0000646C697542);
      v4 = MGGetBoolAnswer();

      if (v4)
      {
        result = 0;
      }

      else
      {
        result = 30;
      }

      break;
    default:
      return result;
  }

  return result;
}

Swift::Bool __swiftcall ForcedDisambiguation.decision()()
{
  v4 = v0;
  if (one-time initialization token for common != -1)
  {
    OUTLINED_FUNCTION_0_5(&one-time initialization token for common);
  }

  OUTLINED_FUNCTION_13_0();
  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logger.common);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v2 = swift_slowAlloc();
    v8 = OUTLINED_FUNCTION_11();
    v36 = v8;
    *v2 = 136315138;
    v9 = 0xE800000000000000;
    v3 = v8;
    switch(v4)
    {
      case 1:
        OUTLINED_FUNCTION_5_3();
        v9 = v11 | 0x8000000000000000;
        break;
      case 2:
        break;
      case 3:
        OUTLINED_FUNCTION_1_3();
        break;
      default:
        OUTLINED_FUNCTION_6_5();
        v1 = (v10 + 11);
        break;
    }

    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1, v9, &v36);
    v1 = "APP_SHORTCUT_SMART_DISAMBIGUATION";
    v13 = v12;

    *(v2 + 4) = v13;
    _os_log_impl(&dword_266790000, v6, v7, "[ForcedDisambiguation] Sampling force disambiguation decision for %s", v2, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v3);
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_2_4();

    OUTLINED_FUNCTION_13_0();
  }

  else
  {
  }

  if (ForcedDisambiguation.inCooldown()(v4))
  {
    v14 = Logger.logObject.getter();
    v15 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_10(v15))
    {
      v16 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      OUTLINED_FUNCTION_8_2(4.8151e-34);
      switch(v17)
      {
        case 1:
          OUTLINED_FUNCTION_5_3();
          v3 = (v27 | 0x8000000000000000);
          break;
        case 2:
          break;
        case 3:
          OUTLINED_FUNCTION_1_3();
          break;
        default:
          OUTLINED_FUNCTION_4_2();
          v1 = (v18 + 11);
          break;
      }

      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1, v3, &v38);

      *(v16 + 4) = v29;
      *(v16 + 12) = 2080;
      v36 = ForcedDisambiguation.cooldownPeriodInDays.getter(v4);
      v37 = v30 & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSiSgMd, _sSiSgMR);
      v31 = String.init<A>(describing:)();
      v33 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v31, v32, &v38);

      *(v16 + 14) = v33;
      _os_log_impl(&dword_266790000, v14, v15, "[ForcedDisambiguation] %s currently in cooldown (period is %s days).", v16, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_3_1();
    }
  }

  else
  {
    switch(v4)
    {
      case 0:
      case 1:
      case 2:
        _stringCompareWithSmolCheck(_:_:expecting:)();
        break;
      case 3:
        break;
      default:
        JUMPOUT(0);
    }

    v19 = ForcedDisambiguation.getRate()();
    specialized static BinaryFloatingPoint<>.random<A>(in:using:)(0.0, 1.0);
    v21 = v20;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.info.getter();
    if (OUTLINED_FUNCTION_10(v23))
    {
      v24 = swift_slowAlloc();
      v36 = OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_8_2(4.8151e-34);
      switch(v25)
      {
        case 1:
          OUTLINED_FUNCTION_5_3();
          v3 = (v28 | 0x8000000000000000);
          break;
        case 2:
          break;
        case 3:
          OUTLINED_FUNCTION_1_3();
          break;
        default:
          OUTLINED_FUNCTION_4_2();
          v1 = (v26 + 11);
          break;
      }

      v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v1, v3, &v36);

      *(v24 + 4) = v34;
      *(v24 + 12) = 1024;
      *(v24 + 14) = v21 <= v19;
      _os_log_impl(&dword_266790000, v22, v23, "[ForcedDisambiguation] %s decision = %{BOOL}d", v24, 0x12u);
      __swift_destroy_boxed_opaque_existential_0(v2);
      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_3_1();
    }

    if (v21 <= v19)
    {
      ForcedDisambiguation.startCooldown()(v4);
      return 1;
    }
  }

  return 0;
}

BOOL ForcedDisambiguation.inCooldown()(char a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v43 - v7;
  v9 = ForcedDisambiguation.cooldownPeriodInDays.getter(a1);
  if (v10)
  {
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.common);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_28;
    }

    v14 = 0x534549545F4C4C41;
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v43[0] = v16;
    *v15 = 136315138;
    v17 = 0xE800000000000000;
    v18 = v16;
    switch(a1)
    {
      case 1:
        v14 = 0xD000000000000016;
        v17 = 0x8000000266819D30;
        break;
      case 2:
        break;
      case 3:
        v14 = 0x444E45534F545541;
        break;
      default:
        v17 = 0x8000000266819D00;
        v14 = 0xD000000000000021;
        break;
    }

    v37 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v14, v17, v43);

    *(v15 + 4) = v37;
    v38 = "[ForcedDisambiguation] %s does not use a cooldown.";
LABEL_27:
    _os_log_impl(&dword_266790000, v12, v13, v38, v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v18);
    MEMORY[0x26D5DDCD0](v18, -1, -1);
    MEMORY[0x26D5DDCD0](v15, -1, -1);
LABEL_28:

    return 0;
  }

  v19 = v9;
  v20 = ForcedDisambiguation.cooldownKey.getter(a1);
  static CamUserHistoryDefaultsManager.getValue(key:)(v20, v21, v43);

  if (!v43[3])
  {
    outlined destroy of Any?(v43);
    goto LABEL_15;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_15:
    if (one-time initialization token for common != -1)
    {
      swift_once();
    }

    v33 = type metadata accessor for Logger();
    __swift_project_value_buffer(v33, static Logger.common);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v12, v13))
    {
      goto LABEL_28;
    }

    v34 = 0x534549545F4C4C41;
    v15 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v43[0] = v35;
    *v15 = 136315138;
    v36 = 0xE800000000000000;
    v18 = v35;
    switch(a1)
    {
      case 1:
        v34 = 0xD000000000000016;
        v36 = 0x8000000266819D30;
        break;
      case 2:
        break;
      case 3:
        v34 = 0x444E45534F545541;
        break;
      default:
        v36 = 0x8000000266819D00;
        v34 = 0xD000000000000021;
        break;
    }

    v39 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v34, v36, v43);

    *(v15 + 4) = v39;
    v38 = "[ForcedDisambiguation] %s could not retrieve cooldown timestamp: assume no previous forced disambiguation.";
    goto LABEL_27;
  }

  Date.init(timeIntervalSince1970:)();
  Date.init()();
  Date.timeIntervalSince(_:)();
  v23 = v22;
  v24 = *(v3 + 8);
  v24(v6, v2);
  if (one-time initialization token for common != -1)
  {
    swift_once();
  }

  v25 = type metadata accessor for Logger();
  __swift_project_value_buffer(v25, static Logger.common);
  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v42 = v24;
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v43[0] = v29;
    *v28 = 136315394;
    v30 = 0xE800000000000000;
    v31 = v29;
    v32 = 0x534549545F4C4C41;
    switch(a1)
    {
      case 1:
        v32 = 0xD000000000000016;
        v30 = 0x8000000266819D30;
        break;
      case 2:
        break;
      case 3:
        v32 = 0x444E45534F545541;
        break;
      default:
        v30 = 0x8000000266819D00;
        v32 = 0xD000000000000021;
        break;
    }

    v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v30, v43);

    *(v28 + 4) = v41;
    *(v28 + 12) = 2048;
    *(v28 + 14) = v23;
    _os_log_impl(&dword_266790000, v26, v27, "[ForcedDisambiguation] %s time since last disambiguation %f.", v28, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x26D5DDCD0](v31, -1, -1);
    MEMORY[0x26D5DDCD0](v28, -1, -1);

    v42(v8, v2);
  }

  else
  {

    v24(v8, v2);
  }

  return v23 < (86400 * v19);
}

Swift::Double __swiftcall ForcedDisambiguation.getRate()()
{
  v4 = v0;
  v5 = ForcedDisambiguation.overrideRate.getter(v0);
  if ((v6 & 1) == 0)
  {
    v21 = *&v5;
    if (one-time initialization token for common != -1)
    {
      OUTLINED_FUNCTION_0_5(&one-time initialization token for common);
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.common);
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.info.getter();
    if (!OUTLINED_FUNCTION_10(v24))
    {
      goto LABEL_30;
    }

    v25 = OUTLINED_FUNCTION_7_1();
    v34 = OUTLINED_FUNCTION_11();
    OUTLINED_FUNCTION_12_2(4.8151e-34);
    switch(v26)
    {
      case 1:
        v2 = 0xD000000000000016;
        v3 = 0x8000000266819D30;
        break;
      case 2:
        break;
      case 3:
        OUTLINED_FUNCTION_15_0();
        break;
      default:
        OUTLINED_FUNCTION_6_5();
        v2 = v27 + 11;
        break;
    }

    getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v3, &v34);

    OUTLINED_FUNCTION_14_1();
    v31 = "[ForcedDisambiguation] %s override rate is set = %f.";
    goto LABEL_29;
  }

  ForcedDisambiguation.trialFactor.getter(v4);
  if (v8)
  {
    v9 = static TrialProvider.fetchDoubleFactorFromTrial(_:)(v7, v8);
    v11 = v10;

    if ((v11 & 1) == 0)
    {
      v21 = *&v9;
      if (one-time initialization token for common != -1)
      {
        OUTLINED_FUNCTION_0_5(&one-time initialization token for common);
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, static Logger.common);
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.info.getter();
      if (!OUTLINED_FUNCTION_10(v24))
      {
        goto LABEL_30;
      }

      v25 = OUTLINED_FUNCTION_7_1();
      v34 = OUTLINED_FUNCTION_11();
      OUTLINED_FUNCTION_12_2(4.8151e-34);
      switch(v29)
      {
        case 1:
          v2 = 0xD000000000000016;
          v3 = 0x8000000266819D30;
          break;
        case 2:
          break;
        case 3:
          OUTLINED_FUNCTION_15_0();
          break;
        default:
          OUTLINED_FUNCTION_6_5();
          v2 = v30 + 11;
          break;
      }

      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2, v3, &v34);

      OUTLINED_FUNCTION_14_1();
      v31 = "[ForcedDisambiguation] %s fetched rate from Trial = %f.";
LABEL_29:
      _os_log_impl(&dword_266790000, v23, v24, v31, v25, 0x16u);
      __swift_destroy_boxed_opaque_existential_0(v1);
      OUTLINED_FUNCTION_2_4();
      OUTLINED_FUNCTION_3_1();
LABEL_30:

      return v21;
    }
  }

  if (one-time initialization token for common != -1)
  {
    OUTLINED_FUNCTION_0_5(&one-time initialization token for common);
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.common);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (OUTLINED_FUNCTION_10(v14))
  {
    v15 = 0x534549545F4C4C41;
    v16 = swift_slowAlloc();
    v17 = OUTLINED_FUNCTION_11();
    v34 = v17;
    *v16 = 136315394;
    v18 = 0xE800000000000000;
    v19 = v17;
    switch(v4)
    {
      case 1:
        v15 = 0xD000000000000016;
        v18 = 0x8000000266819D30;
        break;
      case 2:
        break;
      case 3:
        v15 = 0x444E45534F545541;
        break;
      default:
        OUTLINED_FUNCTION_4_2();
        v15 = v20 + 11;
        break;
    }

    v32 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v18, &v34);

    *(v16 + 4) = v32;
    *(v16 + 12) = 2048;
    *(v16 + 14) = dbl_266814890[v4];
    _os_log_impl(&dword_266790000, v13, v14, "[ForcedDisambiguation] Could not fetch %s rate from Trial, using default=%f", v16, 0x16u);
    __swift_destroy_boxed_opaque_existential_0(v19);
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_3_1();
  }

  return dbl_266814890[v4];
}

uint64_t ForcedDisambiguation.startCooldown()(char a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = ForcedDisambiguation.cooldownKey.getter(a1);
  v8 = v7;
  Date.init()();
  Date.timeIntervalSince1970.getter();
  v10 = v9;
  (*(v3 + 8))(v5, v2);
  v12[3] = MEMORY[0x277D839F8];
  v12[0] = v10;
  static CamUserHistoryDefaultsManager.setValue(key:value:)(v6, v8, v12);

  return __swift_destroy_boxed_opaque_existential_0(v12);
}

SiriCam::ForcedDisambiguation_optional __swiftcall ForcedDisambiguation.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v2._countAndFlagsBits = rawValue._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ForcedDisambiguation.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

SiriCam::ForcedDisambiguation_optional protocol witness for RawRepresentable.init(rawValue:) in conformance ForcedDisambiguation@<W0>(Swift::String *a1@<X0>, SiriCam::ForcedDisambiguation_optional *a2@<X8>)
{
  result.value = ForcedDisambiguation.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ForcedDisambiguation(void *a1@<X8>)
{
  ForcedDisambiguation.rawValue.getter(*v1);
  *a1 = v3;
  a1[1] = v4;
}

void closure #1 in OSLogArguments.append(_:)(double **a1, uint64_t a2, uint64_t a3, double (*a4)(double **, uint64_t, uint64_t))
{
  v5 = a4(a1, a2, a3);
  v6 = *a1;
  *v6 = v5;
  *a1 = v6 + 1;
}

void specialized static BinaryFloatingPoint<>.random<A>(in:using:)(double a1, double a2)
{
  if (COERCE__INT64(fabs(a2 - a1)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
  }

  else
  {
    specialized RandomNumberGenerator.next<A>(upperBound:)(0x20000000000001uLL);
  }
}

unint64_t specialized RandomNumberGenerator.next<A>(upperBound:)(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x26D5DDCF0](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x26D5DDCF0](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t outlined destroy of Any?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sypSgMd, &_sypSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t getEnumTagSinglePayload for ForcedDisambiguation(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFD)
  {
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

    v5 = (*a1 | (v4 << 8)) - 4;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v5 = v6 - 4;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for ForcedDisambiguation(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ForcedDisambiguation and conformance ForcedDisambiguation()
{
  result = lazy protocol witness table cache variable for type ForcedDisambiguation and conformance ForcedDisambiguation;
  if (!lazy protocol witness table cache variable for type ForcedDisambiguation and conformance ForcedDisambiguation)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ForcedDisambiguation and conformance ForcedDisambiguation);
  }

  return result;
}

void OUTLINED_FUNCTION_14_1()
{
  *(v2 + 4) = v0;
  *(v2 + 12) = 2048;
  *(v2 + 14) = v1;
}

void type metadata completion function for AutoSendInputFeatureExtractor(uint64_t a1)
{
  type metadata accessor for LatticePathFeatureExtractor();
  if (v1 <= 0x3F)
  {
    type metadata accessor for WordEmbeddingFeatureExtractor?(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for WordEmbeddingFeatureExtractor?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for WordEmbeddingFeatureExtractor?)
  {
    type metadata accessor for WordEmbeddingFeatureExtractor(255);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for WordEmbeddingFeatureExtractor?);
    }
  }
}

uint64_t specialized FeatureExtracting.extract(from:)(uint64_t a1)
{
  return specialized FeatureExtracting.extract(from:)(a1, CRRFeatureExtractor.extractImpl(from:), &outlined read-only object #0 of one-time initialization function for CRR_FEATURES);
}

{
  return specialized FeatureExtracting.extract(from:)(a1, ConversationHistoryFeatureExtractor.extractImpl(from:), &outlined read-only object #0 of static ConversationHistoryFeatureExtractor.extractedFeatures.getter);
}

{
  return specialized FeatureExtracting.extract(from:)(a1, AffinityRankFeatureExtractor.extractImpl(from:), &outlined read-only object #0 of static AffinityRankFeatureExtractor.extractedFeatures.getter);
}

uint64_t specialized FeatureExtracting.extract(from:)(uint64_t a1, uint64_t a2)
{
  v3 = DeviceContextFeatureExtractor.extractImpl(from:)(a1, a2);
  if (!v2)
  {
    v4 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(&outlined read-only object #0 of one-time initialization function for extractedFeatures);

    _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySSSi_GTt0g5Tm(v5);
    v7 = specialized Set.subtracting(_:)(v6, v4);

    if (*(v7 + 16))
    {

      v18[0] = 0;
      v18[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(53);
      MEMORY[0x26D5DCD80](0x7365727574616546, 0xE900000000000020);
      v8 = Set.description.getter();
      v10 = v9;

      MEMORY[0x26D5DCD80](v8, v10);

      MEMORY[0x26D5DCD80](0xD00000000000002ALL, 0x800000026681A770);
      if (one-time initialization token for common != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static Logger.common);

      v12 = Logger.logObject.getter();
      v13 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v18[0] = v15;
        *v14 = 136315138;
        *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, v18);
        _os_log_impl(&dword_266790000, v12, v13, "%s", v14, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v15);
        MEMORY[0x26D5DDCD0](v15, -1, -1);
        MEMORY[0x26D5DDCD0](v14, -1, -1);
      }

      lazy protocol witness table accessor for type CamError and conformance CamError();
      swift_allocError();
      *v16 = 0;
      *(v16 + 8) = 0xE000000000000000;
      *(v16 + 16) = 1;
      swift_willThrow();
    }

    else
    {
    }
  }

  return v3;
}

uint64_t specialized FeatureExtracting.extract(from:)()
{
  OUTLINED_FUNCTION_17_0();
  return specialized FeatureExtracting.extract(from:)(v0, v1, v2);
}

{
  OUTLINED_FUNCTION_16_0();
  return specialized FeatureExtracting.extract(from:)(v0, v1, v2);
}

uint64_t specialized FeatureExtracting.extract(from:)(void *a1)
{
  v2 = WordEmbeddingFeatureExtractor.extractImpl(from:)(a1);
  if (!v1)
  {
    v3 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(&outlined read-only object #0 of one-time initialization function for extractedFeatures);

    _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySSSi_GTt0g5Tm(v4);
    v6 = specialized Set.subtracting(_:)(v5, v3);

    if (*(v6 + 16))
    {

      v17[0] = 0;
      v17[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(53);
      MEMORY[0x26D5DCD80](0x7365727574616546, 0xE900000000000020);
      v7 = Set.description.getter();
      v9 = v8;

      MEMORY[0x26D5DCD80](v7, v9);

      MEMORY[0x26D5DCD80](0xD00000000000002ALL, 0x800000026681A770);
      if (one-time initialization token for common != -1)
      {
        swift_once();
      }

      v10 = type metadata accessor for Logger();
      __swift_project_value_buffer(v10, static Logger.common);

      v11 = Logger.logObject.getter();
      v12 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v11, v12))
      {
        v13 = swift_slowAlloc();
        v14 = swift_slowAlloc();
        v17[0] = v14;
        *v13 = 136315138;
        *(v13 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0, 0xE000000000000000, v17);
        _os_log_impl(&dword_266790000, v11, v12, "%s", v13, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v14);
        MEMORY[0x26D5DDCD0](v14, -1, -1);
        MEMORY[0x26D5DDCD0](v13, -1, -1);
      }

      lazy protocol witness table accessor for type CamError and conformance CamError();
      swift_allocError();
      *v15 = 0;
      *(v15 + 8) = 0xE000000000000000;
      *(v15 + 16) = 1;
      swift_willThrow();
    }

    else
    {
    }
  }

  return v2;
}

uint64_t specialized Dictionary.update(other:allowDuplicateKeys:)(uint64_t a1, uint64_t a2)
{
  return specialized Dictionary.update(other:allowDuplicateKeys:)(a1, a2, &_ss17_NativeDictionaryVySSSo12MLMultiArrayCGMd, &_ss17_NativeDictionaryVySSSo12MLMultiArrayCGMR);
}

{
  return specialized Dictionary.update(other:allowDuplicateKeys:)(a1, a2, &_ss17_NativeDictionaryVySSSo14MLFeatureValueCGMd, &_ss17_NativeDictionaryVySSSo14MLFeatureValueCGMR);
}

uint64_t specialized Dictionary.update(other:allowDuplicateKeys:)(uint64_t a1, char a2, uint64_t *a3, uint64_t *a4)
{
  v5 = v4;
  v6 = a1 + 64;
  OUTLINED_FUNCTION_29();
  v9 = v8 & v7;
  v11 = (v10 + 63) >> 6;
  v50 = v12;

  v13 = 0;
  v45 = v11;
  for (i = v4; v9; *i = v52)
  {
LABEL_6:
    v15 = __clz(__rbit64(v9)) | (v13 << 6);
    v16 = (*(v50 + 48) + 16 * v15);
    v17 = v16[1];
    v53 = *v16;
    v18 = *(*(v50 + 56) + 8 * v15);
    if (a2)
    {

      v19 = v18;
    }

    else
    {
      v20 = *(*v5 + 16);

      v21 = v18;
      if (v20)
      {
        v22 = v21;
        specialized __RawDictionaryStorage.find<A>(_:)(v53, v17);
        if (v23)
        {
          _StringGuts.grow(_:)(41);
          MEMORY[0x26D5DCD80](0xD000000000000027, 0x800000026681A7A0);
          _print_unlocked<A, B>(_:_:)();
          v43 = lazy protocol witness table accessor for type FeatureDictionaryError and conformance FeatureDictionaryError();
          OUTLINED_FUNCTION_6_2(&type metadata for FeatureDictionaryError, v43);
          *v44 = 0;
          v44[1] = 0xE000000000000000;
          swift_willThrow();
        }
      }
    }

    v24 = v6;
    v51 = v18;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = *v5;
    v52 = *v5;
    v27 = specialized __RawDictionaryStorage.find<A>(_:)(v53, v17);
    v29 = *(v26 + 16);
    v30 = (v28 & 1) == 0;
    v31 = v29 + v30;
    if (__OFADD__(v29, v30))
    {
      goto LABEL_23;
    }

    v32 = v27;
    v33 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v31))
    {
      v34 = specialized __RawDictionaryStorage.find<A>(_:)(v53, v17);
      if ((v33 & 1) != (v35 & 1))
      {
        goto LABEL_25;
      }

      v32 = v34;
    }

    v6 = v24;
    if (v33)
    {
      v36 = v52[7];
      v37 = *(v36 + 8 * v32);
      *(v36 + 8 * v32) = v51;
    }

    else
    {
      v52[(v32 >> 6) + 8] |= 1 << v32;
      v38 = (v52[6] + 16 * v32);
      *v38 = v53;
      v38[1] = v17;
      *(v52[7] + 8 * v32) = v51;
      v39 = v52[2];
      v40 = __OFADD__(v39, 1);
      v41 = v39 + 1;
      if (v40)
      {
        goto LABEL_24;
      }

      v52[2] = v41;

      v37 = 0;
    }

    v9 &= v9 - 1;

    v11 = v45;
    v5 = i;
  }

  while (1)
  {
    v14 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v14 >= v11)
    {
    }

    v9 = *(v6 + 8 * v14);
    ++v13;
    if (v9)
    {
      v13 = v14;
      goto LABEL_6;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
  __break(1u);
  return result;
}

void *static AutoSendInputFeatureExtractor.extractedFeatures.getter()
{
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of one-time initialization function for extractedFeatures);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of one-time initialization function for extractedFeatures);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of one-time initialization function for extractedFeatures);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of one-time initialization function for extractedFeatures);
  v0 = static AutoSendInputFeatureExtractor.wordEmbeddingExtractedFeatures.getter();
  specialized Array.append<A>(contentsOf:)(v0);
  return &outlined read-only object #0 of one-time initialization function for extractedFeatures;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(uint64_t a1)
{
  result = MEMORY[0x26D5DCF90](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  v3 = 0;
  v9 = result;
  v4 = *(a1 + 16);
  for (i = (a1 + 40); ; i += 2)
  {
    if (v4 == v3)
    {

      return v9;
    }

    if (v3 >= *(a1 + 16))
    {
      break;
    }

    ++v3;
    v7 = *(i - 1);
    v6 = *i;

    specialized Set._Variant.insert(_:)(&v8, v7, v6);
  }

  __break(1u);
  return result;
}

uint64_t _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufC10Foundation4UUIDV_SayAFGTt0g5(uint64_t a1)
{
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = &v21 - v7;
  v9 = *(a1 + 16);
  v10 = lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC9600]);
  v11 = MEMORY[0x26D5DCF90](v9, v2, v10);
  v22 = v11;
  v12 = *(a1 + 16);
  if (v12)
  {
    v15 = *(v3 + 16);
    v13 = v3 + 16;
    v14 = v15;
    v16 = (*(v13 + 64) + 32) & ~*(v13 + 64);
    v21 = a1;
    v17 = a1 + v16;
    v18 = *(v13 + 56);
    do
    {
      v14(v6, v17, v2);
      specialized Set._Variant.insert(_:)(v8, v6);
      (*(v13 - 8))(v8, v2);
      v17 += v18;
      --v12;
    }

    while (v12);

    return v22;
  }

  else
  {
    v19 = v11;
  }

  return v19;
}

void _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SD4KeysVySSSi_GTt0g5Tm(uint64_t a1)
{
  v2 = 0;
  v14 = MEMORY[0x26D5DCF90](*(a1 + 16), MEMORY[0x277D837D0], MEMORY[0x277D837E0]);
  OUTLINED_FUNCTION_29();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;
  if ((v4 & v3) != 0)
  {
    do
    {
      v8 = v2;
LABEL_7:
      v9 = __clz(__rbit64(v5));
      v5 &= v5 - 1;
      v10 = (*(a1 + 48) + ((v8 << 10) | (16 * v9)));
      v11 = *v10;
      v12 = v10[1];

      specialized Set._Variant.insert(_:)(v13, v11, v12);
    }

    while (v5);
  }

  while (1)
  {
    v8 = v2 + 1;
    if (__OFADD__(v2, 1))
    {
      break;
    }

    if (v8 >= v7)
    {

      return;
    }

    v5 = *(a1 + 64 + 8 * v8);
    ++v2;
    if (v5)
    {
      v2 = v8;
      goto LABEL_7;
    }
  }

  __break(1u);
}

Swift::Int specialized Set.subtracting(_:)(uint64_t a1, Swift::Int a2)
{
  if (*(a1 + 16) <= *(a2 + 16) >> 3)
  {
    specialized Set._subtract<A>(_:)(a1);
    return a2;
  }

  else
  {

    return specialized _NativeSet.subtracting<A>(_:)(a1, a2);
  }
}

void *static AutoSendInputFeatureExtractor.wordEmbeddingExtractedFeatures.getter()
{
  v2[3] = &type metadata for CamFeatureFlag;
  v2[4] = lazy protocol witness table accessor for type CamFeatureFlag and conformance CamFeatureFlag();
  LOBYTE(v2[0]) = 1;
  v0 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_0(v2);
  if ((v0 & 1) != 0 && static WordEmbeddingFeatureExtractor.currentLocaleIsSupported()())
  {
    return &outlined read-only object #0 of one-time initialization function for extractedFeatures;
  }

  else
  {
    return MEMORY[0x277D84F90];
  }
}

void AutoSendInputFeatureExtractor.extractImpl(from:)(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam29WordEmbeddingFeatureExtractorVSgMd, &_s7SiriCam29WordEmbeddingFeatureExtractorVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v53 - v4;
  v6 = type metadata accessor for WordEmbeddingFeatureExtractor(0);
  MEMORY[0x28223BE20](v6);
  v8 = &v53 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for autoSend != -1)
  {
    OUTLINED_FUNCTION_18(&one-time initialization token for autoSend);
  }

  v9 = type metadata accessor for Logger();
  __swift_project_value_buffer(v9, static Logger.autoSend);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_266790000, v10, v11, "Extracting AutoSend features", v12, 2u);
    OUTLINED_FUNCTION_3_1();
  }

  v13 = *(a1 + *(type metadata accessor for AutoSendInput(0) + 20));
  v14 = [v13 recognition];
  if (!v14)
  {
    goto LABEL_10;
  }

  v15 = v14;
  v16 = [v13 audioAnalytics];
  if (!v16)
  {

LABEL_10:
    v21 = lazy protocol witness table accessor for type AutoConfirmError and conformance AutoConfirmError();
    OUTLINED_FUNCTION_6_2(&type metadata for AutoConfirmError, v21);
    *v22 = 0xD000000000000038;
    *(v22 + 8) = 0x800000026681A730;
    *(v22 + 16) = 2;
    swift_willThrow();
    return;
  }

  v17 = v16;
  v59 = v15;
  v18 = type metadata accessor for MLMultiArray();
  v61[4] = Dictionary.init(dictionaryLiteral:)();
  v19 = specialized FeatureExtracting.extract(from:)(*v60);
  if (v1)
  {

    return;
  }

  v58 = v18;
  v23 = v19;
  OUTLINED_FUNCTION_30(v19, v20, &_ss17_NativeDictionaryVySSSo12MLMultiArrayCGMd, &_ss17_NativeDictionaryVySSSo12MLMultiArrayCGMR);
  v57 = v23;
  v24 = specialized FeatureExtracting.extract(from:)(a1, *(v60 + 8));
  v25 = v59;
  OUTLINED_FUNCTION_30(v24, v26, &_ss17_NativeDictionaryVySSSo12MLMultiArrayCGMd, &_ss17_NativeDictionaryVySSSo12MLMultiArrayCGMR);
  v56 = v17;
  v27 = [v25 aceRecognition];
  if (!v27)
  {
    __break(1u);
    goto LABEL_21;
  }

  v28 = v27;
  OUTLINED_FUNCTION_17_0();
  v32 = specialized FeatureExtracting.extract(from:)(v29, v30, v31);

  OUTLINED_FUNCTION_30(v32, v33, &_ss17_NativeDictionaryVySSSo12MLMultiArrayCGMd, &_ss17_NativeDictionaryVySSSo12MLMultiArrayCGMR);
  v55 = v32;
  OUTLINED_FUNCTION_16_0();
  v36 = specialized FeatureExtracting.extract(from:)(v56, v34, v35);
  OUTLINED_FUNCTION_30(v36, v37, &_ss17_NativeDictionaryVySSSo12MLMultiArrayCGMd, &_ss17_NativeDictionaryVySSSo12MLMultiArrayCGMR);
  v38 = [v25 aceRecognition];
  if (!v38)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v54 = v38;
  v53 = specialized FeatureExtracting.extract(from:)(v38);

  OUTLINED_FUNCTION_30(v53, v39, &_ss17_NativeDictionaryVySSSo12MLMultiArrayCGMd, &_ss17_NativeDictionaryVySSSo12MLMultiArrayCGMR);
  v40 = type metadata accessor for AutoSendInputFeatureExtractor(0);
  outlined init with copy of WordEmbeddingFeatureExtractor?(v60 + *(v40 + 36), v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) != 1)
  {
    outlined init with take of WordEmbeddingFeatureExtractor(v5, v8);
    v49 = [v59 aceRecognition];
    if (v49)
    {
      v50 = v49;

      v51 = specialized FeatureExtracting.extract(from:)(v50);

      OUTLINED_FUNCTION_30(v51, v52, &_ss17_NativeDictionaryVySSSo12MLMultiArrayCGMd, &_ss17_NativeDictionaryVySSSo12MLMultiArrayCGMR);
      outlined destroy of WordEmbeddingFeatureExtractor(v8);

      goto LABEL_15;
    }

LABEL_22:
    __break(1u);
    return;
  }

  outlined destroy of WordEmbeddingFeatureExtractor?(v5);
LABEL_15:
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = OUTLINED_FUNCTION_23();
    v44 = swift_slowAlloc();
    v61[0] = v44;
    *v43 = 136315138;
    swift_beginAccess();

    v45 = Dictionary.Keys.description.getter();
    v47 = v46;

    v48 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v45, v47, v61);

    *(v43 + 4) = v48;
    _os_log_impl(&dword_266790000, v41, v42, "Extracted AutoSend features: %s", v43, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v44);
    OUTLINED_FUNCTION_3_1();
    OUTLINED_FUNCTION_3_1();
  }

  swift_beginAccess();
}

uint64_t outlined init with copy of WordEmbeddingFeatureExtractor?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam29WordEmbeddingFeatureExtractorVSgMd, &_s7SiriCam29WordEmbeddingFeatureExtractorVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of WordEmbeddingFeatureExtractor?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7SiriCam29WordEmbeddingFeatureExtractorVSgMd, &_s7SiriCam29WordEmbeddingFeatureExtractorVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of WordEmbeddingFeatureExtractor(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WordEmbeddingFeatureExtractor(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of WordEmbeddingFeatureExtractor(uint64_t a1)
{
  v2 = type metadata accessor for WordEmbeddingFeatureExtractor(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL specialized Set._Variant.insert(_:)(unint64_t *a1, unint64_t a2, unint64_t a3)
{
  v7 = *v3;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v8 = Hasher._finalize()();
  v9 = ~(-1 << *(v7 + 32));
  while (1)
  {
    v10 = v8 & v9;
    v11 = (1 << (v8 & v9)) & *(v7 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v11)
    {
      break;
    }

    v12 = (*(v7 + 48) + 16 * v10);
    v13 = *v12 == a2 && v12[1] == a3;
    if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      v14 = (*(v7 + 48) + 16 * v10);
      v15 = v14[1];
      *a1 = *v14;
      a1[1] = v15;

      return v11 == 0;
    }

    v8 = v10 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = *v3;

  specialized _NativeSet.insertNew(_:at:isUnique:)(a2, a3, v10, isUniquelyReferenced_nonNull_native);
  *v3 = v18;
  *a1 = a2;
  a1[1] = a3;
  return v11 == 0;
}

BOOL specialized Set._Variant.insert(_:)(char *a1, char *a2)
{
  v22 = a1;
  v4 = type metadata accessor for UUID();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = v2;
  v8 = *v2;
  lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC9600]);
  v27 = a2;
  v9 = dispatch thunk of Hashable._rawHashValue(seed:)();
  v24 = v8;
  v25 = v8 + 56;
  v10 = ~(-1 << *(v8 + 32));
  v26 = v5 + 16;
  v23 = v5 + 8;
  while (1)
  {
    v11 = v9 & v10;
    v12 = (1 << (v9 & v10)) & *(v25 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8));
    if (!v12)
    {
      v17 = v21;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v19 = v27;
      (*(v5 + 16))(v7, v27, v4);
      v28 = *v17;
      specialized _NativeSet.insertNew(_:at:isUnique:)(v7, v11, isUniquelyReferenced_nonNull_native);
      *v17 = v28;
      (*(v5 + 32))(v22, v19, v4);
      return v12 == 0;
    }

    v13 = *(v5 + 72) * v11;
    v14 = *(v5 + 16);
    v14(v7, *(v24 + 48) + v13, v4);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC9610]);
    v15 = dispatch thunk of static Equatable.== infix(_:_:)();
    v16 = *(v5 + 8);
    v16(v7, v4);
    if (v15)
    {
      break;
    }

    v9 = v11 + 1;
  }

  v16(v27, v4);
  v14(v22, *(v24 + 48) + v13, v4);
  return v12 == 0;
}

uint64_t specialized Set._subtract<A>(_:)(uint64_t result)
{
  if (*(*v1 + 16))
  {
    v2 = result;
    v3 = result + 56;
    v4 = 1 << *(result + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(result + 56);
    v7 = (v4 + 63) >> 6;

    v8 = 0;
    if (v6)
    {
      while (1)
      {
        v9 = v8;
LABEL_10:
        v10 = __clz(__rbit64(v6));
        v6 &= v6 - 1;
        v11 = (*(v2 + 48) + ((v9 << 10) | (16 * v10)));
        v12 = *v11;
        v13 = v11[1];

        specialized Set._Variant.remove(_:)(v12, v13);

        if (!v6)
        {
          goto LABEL_6;
        }
      }
    }

    while (1)
    {
LABEL_6:
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        __break(1u);
        return result;
      }

      if (v9 >= v7)
      {
        break;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_10;
      }
    }
  }

  return result;
}

Swift::Int specialized _NativeSet.subtracting<A>(_:)(uint64_t a1, Swift::Int a2)
{
  v5 = a2;
  v56 = *MEMORY[0x277D85DE8];
  if (*(a2 + 16))
  {
    v7 = a1 + 56;
    v6 = *(a1 + 56);
    v8 = -1;
    v9 = -1 << *(a1 + 32);
    v47 = ~v9;
    if (-v9 < 64)
    {
      v10 = ~(-1 << -v9);
    }

    else
    {
      v10 = -1;
    }

    v11 = v10 & v6;
    v12 = (63 - v9) >> 6;
    v13 = a2 + 56;

    v15 = 0;
    v49 = v12;
    v50 = v7;
    v51 = v14;
    if (v11)
    {
      while (2)
      {
        v16 = v15;
LABEL_11:
        v18 = __clz(__rbit64(v11));
        v11 &= v11 - 1;
        v19 = (*(v14 + 48) + ((v16 << 10) | (16 * v18)));
        v3 = *v19;
        v2 = v19[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        v20 = Hasher._finalize()();
        v21 = ~(-1 << *(v5 + 32));
        while (1)
        {
          v7 = v20 & v21;
          v4 = (v20 & v21) >> 6;
          v8 = 1 << (v20 & v21);
          if ((v8 & *(v13 + 8 * v4)) == 0)
          {
            break;
          }

          v22 = (*(v5 + 48) + 16 * v7);
          v23 = *v22 == v3 && v22[1] == v2;
          if (v23 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {
            v53 = v47;
            v54 = v16;
            v55 = v11;
            v3 = v50;
            v12 = v51;
            v52[0] = v51;
            v52[1] = v50;

            v25 = *(v5 + 32);
            v44 = ((1 << v25) + 63) >> 6;
            v2 = 8 * v44;
            if ((v25 & 0x3Fu) > 0xD)
            {
              goto LABEL_49;
            }

            while (1)
            {
              v45 = &v43;
              MEMORY[0x28223BE20](v24);
              v7 = &v43 - ((v2 + 15) & 0x3FFFFFFFFFFFFFF0);
              memcpy(v7, (v5 + 56), v2);
              v26 = *(v7 + 8 * v4) & ~v8;
              v27 = *(v5 + 16);
              v48 = v7;
              *(v7 + 8 * v4) = v26;
              v28 = v27 - 1;
              v29 = v49;
              while (1)
              {
                v46 = v28;
LABEL_24:
                if (!v11)
                {
                  break;
                }

LABEL_29:
                v31 = __clz(__rbit64(v11));
                v11 &= v11 - 1;
                v32 = (*(v12 + 48) + ((v16 << 10) | (16 * v31)));
                v2 = *v32;
                v33 = v32[1];
                Hasher.init(_seed:)();

                String.hash(into:)();
                v34 = Hasher._finalize()();
                v35 = ~(-1 << *(v5 + 32));
                do
                {
                  v4 = v34 & v35;
                  v7 = (v34 & v35) >> 6;
                  v8 = 1 << (v34 & v35);
                  if ((v8 & *(v13 + 8 * v7)) == 0)
                  {

                    v3 = v50;
                    v12 = v51;
                    v29 = v49;
                    goto LABEL_24;
                  }

                  v36 = (*(v5 + 48) + 16 * v4);
                  if (*v36 == v2 && v36[1] == v33)
                  {
                    break;
                  }

                  v38 = _stringCompareWithSmolCheck(_:_:expecting:)();
                  v34 = v4 + 1;
                }

                while ((v38 & 1) == 0);

                v39 = v48[v7];
                v48[v7] = v39 & ~v8;
                v3 = v50;
                v12 = v51;
                v29 = v49;
                if ((v39 & v8) == 0)
                {
                  goto LABEL_24;
                }

                v28 = v46 - 1;
                if (__OFSUB__(v46, 1))
                {
                  __break(1u);
                }

                if (v46 == 1)
                {

                  v5 = MEMORY[0x277D84FA0];
                  goto LABEL_43;
                }
              }

              while (1)
              {
                v30 = v16 + 1;
                if (__OFADD__(v16, 1))
                {
                  break;
                }

                if (v30 >= v29)
                {
                  v5 = specialized _NativeSet.extractSubset(using:count:)(v48, v44, v46, v5);
                  goto LABEL_43;
                }

                v11 = *(v3 + 8 * v30);
                ++v16;
                if (v11)
                {
                  v16 = v30;
                  goto LABEL_29;
                }
              }

              __break(1u);
LABEL_48:
              __break(1u);
LABEL_49:

              if (!swift_stdlib_isStackAllocationSafe())
              {
                break;
              }
            }

            v41 = swift_slowAlloc();
            v42 = specialized closure #1 in static _UnsafeBitset.withTemporaryCopy<A>(of:body:)(v41, v44, (v5 + 56), v44, v5, v7, v52);

            MEMORY[0x26D5DDCD0](v41, -1, -1);
            v12 = v52[0];
            v47 = v53;
            v5 = v42;
LABEL_43:
            v14 = v12;
            goto LABEL_45;
          }

          v20 = v7 + 1;
        }

        v15 = v16;
        v7 = v50;
        v14 = v51;
        v12 = v49;
        v8 = -1;
        if (v11)
        {
          continue;
        }

        break;
      }
    }

    v17 = v15;
    while (1)
    {
      v16 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        goto LABEL_48;
      }

      if (v16 >= v12)
      {
        break;
      }

      v11 = *(v7 + 8 * v16);
      ++v17;
      if (v11)
      {
        goto LABEL_11;
      }
    }

LABEL_45:
    outlined consume of [String : MLFeatureValue].Iterator._Variant(v14);
  }

  else
  {

    return MEMORY[0x277D84FA0];
  }

  return v5;
}

uint64_t specialized Set._Variant.remove(_:)(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = ~(-1 << *(v5 + 32));
  while (1)
  {
    v8 = v6 & v7;
    if (((*(v5 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v6 & v7)) & 1) == 0)
    {
      return 0;
    }

    v9 = (*(v5 + 48) + 16 * v8);
    v10 = *v9 == a1 && v9[1] == a2;
    if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }

    v6 = v8 + 1;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v15 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    specialized _NativeSet.copy()();
    v12 = v15;
  }

  v13 = *(*(v12 + 48) + 16 * v8);
  specialized _NativeSet._delete(at:)(v8);
  *v2 = v15;
  return v13;
}

Swift::Int specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return result;
  }

  v6 = 0;
  v7 = (v3 + 56);
  v8 = 1 << *(v3 + 32);
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  else
  {
    v9 = -1;
  }

  v10 = v9 & *(v3 + 56);
  v11 = (v8 + 63) >> 6;
  v12 = result + 56;
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v28 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = (*(v3 + 48) + 16 * (v13 | (v6 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();
    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << *(v5 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      break;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v5 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

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
    v26 = *(v12 + 8 * v21);
    if (v26 != -1)
    {
      v22 = __clz(__rbit64(~v26)) + (v21 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

uint64_t specialized _NativeSet.resize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v36 = type metadata accessor for UUID();
  v3 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd, _ss11_SetStorageCy10Foundation4UUIDVGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v7 = result;
  if (!*(v5 + 16))
  {
LABEL_27:

    *v2 = v7;
    return result;
  }

  v30 = v1;
  v31 = v5;
  v8 = 0;
  v9 = (v5 + 56);
  v10 = 1 << *(v5 + 32);
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v12 = v11 & *(v5 + 56);
  v13 = (v10 + 63) >> 6;
  v34 = v3 + 32;
  v14 = result + 56;
  if (!v12)
  {
LABEL_7:
    v16 = v8;
    while (1)
    {
      v8 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v8 >= v13)
      {
        break;
      }

      v17 = v9[v8];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v12 = (v17 - 1) & v17;
        goto LABEL_12;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      specialized UnsafeMutablePointer.assign(repeating:count:)(0, (v28 + 63) >> 6, v9);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v15 = __clz(__rbit64(v12));
    v12 &= v12 - 1;
LABEL_12:
    v18 = *(v5 + 48) + *(v3 + 72) * (v15 | (v8 << 6));
    v19 = *(v3 + 32);
    v32 = *(v3 + 72);
    v33 = v19;
    v19(v35, v18, v36);
    lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC9600]);
    result = dispatch thunk of Hashable._rawHashValue(seed:)();
    v20 = -1 << *(v7 + 32);
    v21 = result & ~v20;
    v22 = v21 >> 6;
    if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
    {
      break;
    }

    v23 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v14 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
    result = v33(*(v7 + 48) + v23 * v32, v35, v36);
    ++*(v7 + 16);
    v5 = v31;
    if (!v12)
    {
      goto LABEL_7;
    }
  }

  v24 = 0;
  v25 = (63 - v20) >> 6;
  while (++v22 != v25 || (v24 & 1) == 0)
  {
    v26 = v22 == v25;
    if (v22 == v25)
    {
      v22 = 0;
    }

    v24 |= v26;
    v27 = *(v14 + 8 * v22);
    if (v27 != -1)
    {
      v23 = __clz(__rbit64(~v27)) + (v22 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
  return result;
}

Swift::Int specialized closure #1 in _NativeSet.subtracting<A>(_:)(Swift::Int result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (1)
  {
    v26 = v8;
LABEL_3:
    v10 = a5[3];
    v11 = a5[4];
    if (!v11)
    {
      break;
    }

    v12 = a5[3];
LABEL_8:
    v13 = (*(*a5 + 48) + ((v12 << 10) | (16 * __clz(__rbit64(v11)))));
    v15 = *v13;
    v14 = v13[1];
    a5[3] = v12;
    a5[4] = (v11 - 1) & v11;
    Hasher.init(_seed:)();

    String.hash(into:)();
    v16 = Hasher._finalize()();
    v17 = ~(-1 << *(a3 + 32));
    do
    {
      v18 = v16 & v17;
      v19 = (v16 & v17) >> 6;
      v20 = 1 << (v16 & v17);
      if ((v20 & *(v9 + 8 * v19)) == 0)
      {

        goto LABEL_3;
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 == v15 && v21[1] == v14)
      {
        break;
      }

      v23 = _stringCompareWithSmolCheck(_:_:expecting:)();
      v16 = v18 + 1;
    }

    while ((v23 & 1) == 0);

    v24 = v27[v19];
    v27[v19] = v24 & ~v20;
    if ((v24 & v20) == 0)
    {
      goto LABEL_3;
    }

    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      goto LABEL_23;
    }

    if (v26 == 1)
    {
      return MEMORY[0x277D84FA0];
    }
  }

  while (1)
  {
    v12 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v12 >= ((a5[2] + 64) >> 6))
    {
      a5[3] = v10;
      a5[4] = 0;

      return specialized _NativeSet.extractSubset(using:count:)(v27, a2, v26, a3);
    }

    v11 = *(a5[1] + 8 * v12);
    ++v10;
    if (v11)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
  return result;
}

Swift::Int specialized closure #1 in static _UnsafeBitset.withTemporaryCopy<A>(of:body:)(void *a1, uint64_t a2, void *__src, uint64_t a4, uint64_t a5, unint64_t a6, void *a7)
{
  memcpy(a1, __src, 8 * a4);
  v12 = specialized closure #1 in _NativeSet.subtracting<A>(_:)(a1, a2, a5, a6, a7);

  return v12;
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
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
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    Hasher.init(_seed:)();

    String.hash(into:)();
    result = Hasher._finalize()();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
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
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_30;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_31;
    }

    v4 = v29;
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
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
  return result;
}

uint64_t specialized UnsafeMutablePointer.assign(repeating:count:)(uint64_t result, uint64_t a2, uint64_t a3)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else if (a2)
  {
    v3 = (a2 + 1) & 0xFFFFFFFFFFFFFFFELL;
    v4 = vdupq_n_s64(a2 - 1);
    v5 = xmmword_2668148B0;
    v6 = (a3 + 8);
    v7 = vdupq_n_s64(2uLL);
    do
    {
      v8 = vmovn_s64(vcgeq_u64(v4, v5));
      if (v8.i8[0])
      {
        *(v6 - 1) = result;
      }

      if (v8.i8[4])
      {
        *v6 = result;
      }

      v5 = vaddq_s64(v5, v7);
      v6 += 2;
      v3 -= 2;
    }

    while (v3);
  }

  return result;
}

void *specialized _NativeSet.copy()()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  v2 = *v0;
  v3 = static _SetStorage.copy(original:)();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 56);
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
        v20 = (*(v4 + 48) + 16 * v17);
        *v20 = *v18;
        v20[1] = v19;
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

      v16 = *(v2 + 56 + 8 * v8);
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
  v2 = type metadata accessor for UUID();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd, _ss11_SetStorageCy10Foundation4UUIDVGMR);
  v6 = *v0;
  v7 = static _SetStorage.copy(original:)();
  v8 = v7;
  if (*(v6 + 16))
  {
    v22 = v1;
    result = (v7 + 56);
    v10 = ((1 << *(v8 + 32)) + 63) >> 6;
    if (v8 != v6 || result >= v6 + 56 + 8 * v10)
    {
      result = memmove(result, (v6 + 56), 8 * v10);
    }

    v12 = 0;
    *(v8 + 16) = *(v6 + 16);
    v13 = 1 << *(v6 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v6 + 56);
    v16 = (v13 + 63) >> 6;
    v23 = v3 + 32;
    for (i = v3 + 16; v15; result = (*(v3 + 32))(*(v8 + 48) + v20, v5, v2))
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_17:
      v20 = *(v3 + 72) * (v17 | (v12 << 6));
      (*(v3 + 16))(v5, *(v6 + 48) + v20, v2);
    }

    v18 = v12;
    while (1)
    {
      v12 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v12 >= v16)
      {

        v1 = v22;
        goto LABEL_21;
      }

      v19 = *(v6 + 56 + 8 * v12);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_21:
    *v1 = v8;
  }

  return result;
}

Swift::Int specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCySSGMd, &_ss11_SetStorageCySSGMR);
  result = static _SetStorage.resize(original:capacity:move:)();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = result + 56;
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = (*(v3 + 48) + 16 * (v12 | (v6 << 6)));
        v16 = *v15;
        v17 = v15[1];
        Hasher.init(_seed:)();

        String.hash(into:)();
        result = Hasher._finalize()();
        v18 = -1 << *(v5 + 32);
        v19 = result & ~v18;
        v20 = v19 >> 6;
        if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
        {
          break;
        }

        v21 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
        v26 = (*(v5 + 48) + 16 * v21);
        *v26 = v16;
        v26[1] = v17;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

      v22 = 0;
      v23 = (63 - v18) >> 6;
      while (++v20 != v23 || (v22 & 1) == 0)
      {
        v24 = v20 == v23;
        if (v20 == v23)
        {
          v20 = 0;
        }

        v22 |= v24;
        v25 = *(v11 + 8 * v20);
        if (v25 != -1)
        {
          v21 = __clz(__rbit64(~v25)) + (v20 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v1;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }

  return result;
}

uint64_t specialized _NativeSet.copyAndResize(capacity:)(uint64_t a1)
{
  v2 = v1;
  v33 = type metadata accessor for UUID();
  v3 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss11_SetStorageCy10Foundation4UUIDVGMd, _ss11_SetStorageCy10Foundation4UUIDVGMR);
  v7 = static _SetStorage.resize(original:capacity:move:)();
  result = v6;
  if (*(v6 + 16))
  {
    v28 = v1;
    v9 = 0;
    v10 = v6 + 56;
    v11 = 1 << *(v6 + 32);
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v13 = v12 & *(v6 + 56);
    v14 = (v11 + 63) >> 6;
    v31 = v3 + 16;
    v32 = v3;
    v15 = v7 + 56;
    v29 = (v3 + 32);
    v30 = result;
    if (v13)
    {
      while (1)
      {
        v16 = __clz(__rbit64(v13));
        v13 &= v13 - 1;
LABEL_12:
        v19 = *(v32 + 72);
        (*(v32 + 16))(v5, *(result + 48) + v19 * (v16 | (v9 << 6)), v33);
        lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC9600]);
        result = dispatch thunk of Hashable._rawHashValue(seed:)();
        v20 = -1 << *(v7 + 32);
        v21 = result & ~v20;
        v22 = v21 >> 6;
        if (((-1 << v21) & ~*(v15 + 8 * (v21 >> 6))) == 0)
        {
          break;
        }

        v23 = __clz(__rbit64((-1 << v21) & ~*(v15 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v15 + ((v23 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v23;
        (*v29)(*(v7 + 48) + v23 * v19, v5, v33);
        ++*(v7 + 16);
        result = v30;
        if (!v13)
        {
          goto LABEL_7;
        }
      }

      v24 = 0;
      v25 = (63 - v20) >> 6;
      while (++v22 != v25 || (v24 & 1) == 0)
      {
        v26 = v22 == v25;
        if (v22 == v25)
        {
          v22 = 0;
        }

        v24 |= v26;
        v27 = *(v15 + 8 * v22);
        if (v27 != -1)
        {
          v23 = __clz(__rbit64(~v27)) + (v22 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v17 = v9;
      while (1)
      {
        v9 = v17 + 1;
        if (__OFADD__(v17, 1))
        {
          break;
        }

        if (v9 >= v14)
        {

          v2 = v28;
          goto LABEL_25;
        }

        v18 = *(v10 + 8 * v9);
        ++v17;
        if (v18)
        {
          v16 = __clz(__rbit64(v18));
          v13 = (v18 - 1) & v18;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v7;
  }

  return result;
}

unint64_t specialized _NativeSet._delete(at:)(unint64_t result)
{
  v2 = result;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (result + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = _HashTable.previousHole(before:)();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v10 = Hasher._finalize()();

        v11 = v10 & v7;
        if (v2 >= v9)
        {
          if (v11 >= v9 && v2 >= v11)
          {
LABEL_15:
            v14 = *(v3 + 48);
            v15 = (v14 + 16 * v2);
            v16 = (v14 + 16 * v6);
            if (v2 != v6 || v15 >= v16 + 1)
            {
              *v15 = *v16;
              v2 = v6;
            }
          }
        }

        else if (v11 >= v9 || v2 >= v11)
        {
          goto LABEL_15;
        }

        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << result) - 1;
  }

  v18 = *(v3 + 16);
  v19 = __OFSUB__(v18, 1);
  v20 = v18 - 1;
  if (v19)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v20;
    ++*(v3 + 36);
  }

  return result;
}

unint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(unint64_t result, unint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 <= v8 || (a4 & 1) == 0)
  {
    if (a4)
    {
      specialized _NativeSet.resize(capacity:)(v8 + 1);
      goto LABEL_10;
    }

    if (v9 <= v8)
    {
      specialized _NativeSet.copyAndResize(capacity:)(v8 + 1);
LABEL_10:
      v15 = *v4;
      Hasher.init(_seed:)();
      String.hash(into:)();
      result = Hasher._finalize()();
      v16 = ~(-1 << *(v15 + 32));
      while (1)
      {
        a3 = result & v16;
        if (((*(v15 + 56 + (((result & v16) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (result & v16)) & 1) == 0)
        {
          goto LABEL_7;
        }

        v17 = (*(v15 + 48) + 16 * a3);
        v18 = *v17 == v7 && v17[1] == a2;
        if (v18 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {
          goto LABEL_19;
        }

        result = a3 + 1;
      }
    }

    result = specialized _NativeSet.copy()();
  }

LABEL_7:
  v10 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v11 = (*(v10 + 48) + 16 * a3);
  *v11 = v7;
  v11[1] = a2;
  v12 = *(v10 + 16);
  v13 = __OFADD__(v12, 1);
  v14 = v12 + 1;
  if (v13)
  {
    __break(1u);
LABEL_19:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v10 + 16) = v14;
  }

  return result;
}

uint64_t specialized _NativeSet.insertNew(_:at:isUnique:)(uint64_t a1, unint64_t a2, char a3)
{
  v22 = a1;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(*v3 + 16);
  v11 = *(*v3 + 24);
  if (v11 <= v10 || (a3 & 1) == 0)
  {
    if (a3)
    {
      specialized _NativeSet.resize(capacity:)(v10 + 1);
      goto LABEL_8;
    }

    if (v11 <= v10)
    {
      specialized _NativeSet.copyAndResize(capacity:)(v10 + 1);
LABEL_8:
      v21 = v3;
      v12 = *v3;
      lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC9600]);
      v13 = dispatch thunk of Hashable._rawHashValue(seed:)();
      v14 = ~(-1 << *(v12 + 32));
      while (1)
      {
        a2 = v13 & v14;
        if (((*(v12 + 56 + (((v13 & v14) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v13 & v14)) & 1) == 0)
        {
          break;
        }

        (*(v7 + 16))(v9, *(v12 + 48) + *(v7 + 72) * a2, v6);
        lazy protocol witness table accessor for type UUID and conformance UUID(&lazy protocol witness table cache variable for type UUID and conformance UUID, MEMORY[0x277CC9610]);
        v15 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*(v7 + 8))(v9, v6);
        if (v15)
        {
          goto LABEL_16;
        }

        v13 = a2 + 1;
      }

      v3 = v21;
      goto LABEL_13;
    }

    specialized _NativeSet.copy()();
  }

LABEL_13:
  v16 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  result = (*(v7 + 32))(*(v16 + 48) + *(v7 + 72) * a2, v22, v6);
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (v19)
  {
    __break(1u);
LABEL_16:
    result = ELEMENT_TYPE_OF_SET_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
    __break(1u);
  }

  else
  {
    *(v16 + 16) = v20;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FeatureDictionaryError and conformance FeatureDictionaryError()
{
  result = lazy protocol witness table cache variable for type FeatureDictionaryError and conformance FeatureDictionaryError;
  if (!lazy protocol witness table cache variable for type FeatureDictionaryError and conformance FeatureDictionaryError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FeatureDictionaryError and conformance FeatureDictionaryError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CamFeatureFlag and conformance CamFeatureFlag()
{
  result = lazy protocol witness table cache variable for type CamFeatureFlag and conformance CamFeatureFlag;
  if (!lazy protocol witness table cache variable for type CamFeatureFlag and conformance CamFeatureFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamFeatureFlag and conformance CamFeatureFlag);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CamFeatureFlag and conformance CamFeatureFlag;
  if (!lazy protocol witness table cache variable for type CamFeatureFlag and conformance CamFeatureFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamFeatureFlag and conformance CamFeatureFlag);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type UUID and conformance UUID(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for UUID();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_2(uint64_t a1, uint64_t a2)
{
  __swift_project_value_buffer(a1, a2);
}

uint64_t OUTLINED_FUNCTION_25()
{
}

Swift::Int OUTLINED_FUNCTION_26_0(uint64_t a1)
{

  return specialized Set.subtracting(_:)(a1, v1);
}

uint64_t OUTLINED_FUNCTION_27()
{
}

uint64_t OUTLINED_FUNCTION_28_0()
{
}

uint64_t CamDoubleUserDefaults.value.getter(uint64_t a1)
{
  if (one-time initialization token for forcedValues != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v2 = static CamDoubleUserDefaults.forcedValues;
  if (!*(static CamDoubleUserDefaults.forcedValues + 16) || (v3 = specialized __RawDictionaryStorage.find<A>(_:)(a1), (v4 & 1) == 0))
  {
    v6 = 0xD000000000000026;
    swift_endAccess();
    v7 = CamDoubleUserDefaults.values.getter();
    if (a1)
    {
      if (a1 == 1)
      {
        v6 = 0xD00000000000002CLL;
      }

      else
      {
        v6 = 0xD000000000000033;
      }

      if (a1 == 1)
      {
        v8 = "tDisambiguationRate";
      }

      else
      {
        v8 = "ary with duplicate key ";
      }
    }

    else
    {
      v8 = "uateForRankingEvaluationRate";
    }

    specialized Dictionary.subscript.getter(v6, v8 | 0x8000000000000000, v7, &v21);

    if (v22)
    {
      if (OUTLINED_FUNCTION_2_6(v9, v10, v11, MEMORY[0x277D837D0], v12, v13, v14, v15, v17, v19, v21))
      {
        return _sSdySdSgxcSyRzlufCSS_Tt0g5(v18, v20);
      }
    }

    else
    {
      outlined destroy of Any?(&v21);
    }

    return 0;
  }

  v5 = *(*(v2 + 56) + 8 * v3);
  swift_endAccess();
  return v5;
}

uint64_t static CamUserHistoryDefaultsManager.getValue(key:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  if (one-time initialization token for forcedValues != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = static CamUserHistoryDefaultsManager.forcedValues;
  if (*(static CamUserHistoryDefaultsManager.forcedValues + 16) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v8 & 1) != 0))
  {
    outlined init with copy of Any(*(v6 + 56) + 32 * v7, v15);
    outlined init with take of Any(v15, a3);
    return swift_endAccess();
  }

  else
  {
    swift_endAccess();
    v10 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) init];
    OUTLINED_FUNCTION_1_5();
    v12 = v11;
    v13 = [v10 dictionaryForKey_];

    if (v13)
    {
      v14 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    }

    else
    {
      v14 = Dictionary.init(dictionaryLiteral:)();
    }

    specialized Dictionary.subscript.getter(a1, a2, v14, a3);
  }
}

void static CamUserHistoryDefaultsManager.setValue(key:value:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) init];
  v7 = MEMORY[0x26D5DCC90](0xD000000000000016, 0x800000026681A870);
  v8 = [v6 dictionaryForKey_];

  if (v8)
  {
    static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  }

  else
  {
    Dictionary.init(dictionaryLiteral:)();
  }

  outlined init with copy of Any(a3, v12);

  swift_isUniquelyReferenced_nonNull_native();
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v12, a1, a2);

  v9 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) init];
  isa = Dictionary._bridgeToObjectiveC()().super.isa;

  v11 = MEMORY[0x26D5DCC90](0xD000000000000016, 0x800000026681A870);
  [v9 setObject:isa forKey:v11];
}

unint64_t PersistencyKeys.rawValue.getter(char a1)
{
  if (!a1)
  {
    return 0xD00000000000001ELL;
  }

  if (a1 == 1)
  {
    return 0xD000000000000017;
  }

  return 0xD000000000000016;
}

void one-time initialization function for forcedValues()
{
  static CamDoubleUserDefaults.forcedValues = MEMORY[0x277D84F98];
}

{
  static CamStringUserDefaults.forcedValues = MEMORY[0x277D84F98];
}

{
  static CamUserHistoryDefaultsManager.forcedValues = MEMORY[0x277D84F98];
}

uint64_t CamDoubleUserDefaults.values.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) init];
  OUTLINED_FUNCTION_1_5();
  v2 = v1;
  v3 = [v0 dictionaryForKey_];

  if (v3)
  {
    v4 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    return v4;
  }

  else
  {

    return Dictionary.init(dictionaryLiteral:)();
  }
}

unint64_t CamDoubleUserDefaults.rawValue.getter(char a1)
{
  result = 0xD000000000000026;
  if (a1)
  {
    if (a1 == 1)
    {
      return 0xD00000000000002CLL;
    }

    else
    {
      return 0xD000000000000033;
    }
  }

  return result;
}

uint64_t _sSdySdSgxcSyRzlufCSS_Tt0g5(uint64_t a1, uint64_t a2)
{
  v4 = 0;
  v2 = specialized String.withCString<A>(_:)(a1, a2, &v4);

  if (v2)
  {
    return v4;
  }

  else
  {
    return 0;
  }
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CamDoubleUserDefaults@<X0>(unint64_t *a1@<X8>)
{
  result = CamDoubleUserDefaults.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t CamStringUserDefaults.values.getter()
{
  v0 = [objc_allocWithZone(MEMORY[0x277CBEBD0]) init];
  v1 = MEMORY[0x26D5DCC90](0xD00000000000001ELL, 0x800000026681A8B0);
  v2 = [v0 dictionaryForKey_];

  if (v2)
  {
    v3 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();

    return v3;
  }

  else
  {

    return Dictionary.init(dictionaryLiteral:)();
  }
}

uint64_t CamStringUserDefaults.value.getter()
{
  if (one-time initialization token for forcedValues != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v0 = static CamStringUserDefaults.forcedValues;
  if (!*(static CamStringUserDefaults.forcedValues + 16) || (v1 = specialized __RawDictionaryStorage.find<A>(_:)(), (v2 & 1) == 0))
  {
    swift_endAccess();
    v4 = CamStringUserDefaults.values.getter();
    v5 = OUTLINED_FUNCTION_0_6();
    specialized Dictionary.subscript.getter(v5, v6, v4, &v18);

    if (v19)
    {
      if (OUTLINED_FUNCTION_2_6(v7, v8, v9, MEMORY[0x277D837D0], v10, v11, v12, v13, v15, v17, v18))
      {
        return v16;
      }
    }

    else
    {
      outlined destroy of Any?(&v18);
    }

    return 0;
  }

  v3 = *(*(v0 + 56) + 16 * v1);
  swift_endAccess();

  return v3;
}

_BYTE *closure #1 in closure #1 in Double.init<A>(_:)@<X0>(_BYTE *result@<X0>, BOOL *a2@<X8>)
{
  v3 = *result;
  v4 = v3 > 0x20;
  v5 = (1 << v3) & 0x100003E01;
  v6 = v4 || v5 == 0;
  v7 = v6 && (result = _swift_stdlib_strtod_clocale()) != 0 && *result == 0;
  *a2 = v7;
  return result;
}

BOOL specialized String.withCString<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  if ((a2 & 0x2000000000000000) == 0)
  {
    if ((a1 & 0x1000000000000000) != 0)
    {
      v4 = *((a2 & 0xFFFFFFFFFFFFFFFLL) + 0x20);
      if (v4 < 0x21 && ((0x100003E01uLL >> v4) & 1) != 0)
      {
        return 0;
      }

      goto LABEL_9;
    }

LABEL_13:
    _StringGuts._slowWithCString<A>(_:)();
    if (!v3)
    {
      return v8;
    }

    return v6;
  }

  if (a1 <= 0x20u && ((0x100003E01uLL >> a1) & 1) != 0)
  {
    return 0;
  }

LABEL_9:
  v5 = _swift_stdlib_strtod_clocale();
  if (!v5)
  {
    return 0;
  }

  return *v5 == 0;
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

void DawnHeuristicScorer.scoreHypothesis(features:loggingId:)(Swift::OpaquePointer a1)
{
  v2 = specialized Dictionary.subscript.getter();
  if (v2)
  {
    v3 = v2;
    v4 = [v2 int64Value];

    if (__OFSUB__(v4, 1))
    {
      __break(1u);
    }

    else
    {
      DawnHeuristicScorer.platformBoost(features:)(a1);
    }
  }

  else
  {
    lazy protocol witness table accessor for type CaarError and conformance CaarError();
    swift_allocError();
    *v5 = 0xD00000000000002FLL;
    *(v5 + 8) = 0x800000026681A930;
    *(v5 + 16) = 1;
    swift_willThrow();
  }
}

Swift::Double __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> DawnHeuristicScorer.platformBoost(features:)(Swift::OpaquePointer features)
{
  v1 = specialized Dictionary.subscript.getter();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 int64Value];

    if (v3)
    {
      return 0.1;
    }
  }

  v5 = specialized Dictionary.subscript.getter();
  if (v5 && (v6 = v5, v7 = [v5 int64Value], v6, v7))
  {
    v8 = static TrialProvider.fetchBoolFactorFromTrial(_:)(0xD000000000000021, 0x800000026681A900);
    if ((v8 == 2 || (v8 & 1) == 0 || (CamFeatureFlag.isEnabled.getter(5) & 1) == 0) && (v9 = specialized Dictionary.subscript.getter()) != 0 && (v10 = v9, v11 = [v9 int64Value], v10, v11))
    {
      return 0.06;
    }

    else
    {
      return 0.015;
    }
  }

  else
  {
    v12 = specialized Dictionary.subscript.getter();
    if (v12)
    {
      v13 = v12;
      v14 = [v12 int64Value];

      return v14 * 0.01;
    }

    else
    {
      return 0.0;
    }
  }
}

uint64_t one-time initialization function for kLogger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, kLogger);
  v1 = __swift_project_value_buffer(v0, kLogger);
  if (one-time initialization token for ranker != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static Logger.ranker);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, kLogger);
  v1 = __swift_project_value_buffer(v0, kLogger);
  if (one-time initialization token for ranker != -1)
  {
    swift_once();
  }

  v2 = __swift_project_value_buffer(v0, static Logger.ranker);
  v3 = *(*(v0 - 8) + 16);

  return v3(v1, v2, v0);
}

uint64_t static UserParseFeatureExtractor.extractOnScreenAppBundleIds(from:)(uint64_t a1)
{
  v149 = a1;
  v1 = type metadata accessor for RRDataSourceMetadataValue();
  OUTLINED_FUNCTION_22();
  v164 = v2;
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4();
  v162 = v4 - v5;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_10_3();
  v161 = v7;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_10_3();
  v172 = v9;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v10);
  v12 = &v130 - v11;
  v13 = type metadata accessor for RRMetadata();
  OUTLINED_FUNCTION_22();
  v135 = v14;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_4();
  v18 = v16 - v17;
  MEMORY[0x28223BE20](v19);
  v171 = &v130 - v20;
  v21 = type metadata accessor for RREntity();
  OUTLINED_FUNCTION_22();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_4();
  v137 = (v25 - v26);
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_10_3();
  v141 = v28;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v29);
  v147 = &v130 - v30;
  v157 = type metadata accessor for RRCandidate();
  OUTLINED_FUNCTION_22();
  v150 = v31;
  MEMORY[0x28223BE20](v32);
  OUTLINED_FUNCTION_4();
  v136 = v33 - v34;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_10_3();
  v132 = v36;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v37);
  v39 = &v130 - v38;
  if (one-time initialization token for kLogger != -1)
  {
    swift_once();
  }

  v153 = v21;
  v40 = type metadata accessor for Logger();
  __swift_project_value_buffer(v40, kLogger);
  v41 = Logger.logObject.getter();
  v42 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v41, v42))
  {
    v43 = swift_slowAlloc();
    *v43 = 0;
    _os_log_impl(&dword_266790000, v41, v42, "Expanding salient entity apps.", v43, 2u);
    MEMORY[0x26D5DDCD0](v43, -1, -1);
  }

  v44 = 0;
  v45 = 0;
  v148 = *(v149 + 16);
  v152 = v150 + 16;
  v156 = (v23 + 8);
  v151 = v150 + 8;
  v169 = (v135 + 32);
  v170 = v135 + 16;
  v168 = v135 + 88;
  v167 = *MEMORY[0x277D5FDF0];
  v159 = v135 + 96;
  v160 = v135 + 8;
  v166 = (v164 + 32);
  v140 = *MEMORY[0x277D5FE90];
  v138 = (v164 + 8);
  v134 = *MEMORY[0x277D5FE80];
  v131 = (v150 + 32);
  v133 = MEMORY[0x277D84F90];
  v163 = v1;
  v142 = v12;
  v143 = v39;
  v139 = (v164 + 104);
  v158 = v13;
  while (v44 != v148)
  {
    v154 = v45;
    v146 = (*(v150 + 80) + 32) & ~*(v150 + 80);
    v145 = *(v150 + 72);
    (*(v150 + 16))(v39, v149 + v146 + v145 * v44, v157);
    v155 = v44 + 1;
    v46 = v147;
    RRCandidate.entity.getter();
    RREntity.usoEntity.getter();
    v47 = *v156;
    v48 = v153;
    (*v156)(v46, v153);
    v49 = UsoTask.verbString.getter();
    v51 = v50;

    if (v49 == 0x415F6E6F6D6D6F63 && v51 == 0xEA00000000007070)
    {

LABEL_14:
      v55 = v141;
      RRCandidate.entity.getter();
      v56 = RREntity.metadata.getter();
      v47(v55, v48);
      v57 = *(v56 + 16);
      if (v57)
      {
        OUTLINED_FUNCTION_8();
        v144 = v56;
        v59 = v56 + v58;
        v61 = *(v60 + 72);
        v62 = *(v60 + 16);
        v63 = MEMORY[0x277D84F90];
        v165 = v62;
        do
        {
          v64 = v171;
          v62(v171, v59, v13);
          (*v169)(v18, v64, v13);
          v65 = OUTLINED_FUNCTION_12_4();
          v67 = v66(v65);
          if (v67 == v167)
          {
            v68 = OUTLINED_FUNCTION_12_4();
            v69(v68);
            v70 = *v166;
            v71 = v63;
            v72 = v162;
            v73 = v18;
            (*v166)(v162, v18, v1);
            v74 = v1;
            v75 = v161;
            v70(v161, v72, v74);
            v70(v172, v75, v74);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v71 + 16) + 1, 1, v71);
              v71 = v85;
            }

            v77 = *(v71 + 16);
            v76 = *(v71 + 24);
            v78 = v71;
            v18 = v73;
            v62 = v165;
            if (v77 >= v76 >> 1)
            {
              v86 = OUTLINED_FUNCTION_17_1(v76);
              specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v86, v77 + 1, 1, v87);
              v78 = v88;
            }

            v13 = v158;
            *(v78 + 16) = v77 + 1;
            v63 = v78;
            OUTLINED_FUNCTION_8();
            v82 = v79 + v80 + *(v81 + 72) * v77;
            v1 = v163;
            v70(v82, v172, v163);
          }

          else
          {
            v83 = OUTLINED_FUNCTION_12_4();
            v84(v83);
          }

          v59 += v61;
          --v57;
        }

        while (v57);
      }

      else
      {

        v63 = MEMORY[0x277D84F90];
      }

      v89 = v142;
      v165 = *v139;
      v90 = (v165)(v142, v140, v1);
      MEMORY[0x28223BE20](v90);
      OUTLINED_FUNCTION_7_3();
      *(v91 - 16) = v89;
      v45 = v154;
      v93 = v63;
      v94 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v92, v63);
      v39 = v138;
      v95 = *v138;
      (*v138)(v89, v1);
      if (v94)
      {
        v96 = (v165)(v89, v134, v1);
        MEMORY[0x28223BE20](v96);
        OUTLINED_FUNCTION_7_3();
        *(v97 - 16) = v89;
        v99 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v98, v93);

        v95(v89, v1);
        if (v99)
        {
          OUTLINED_FUNCTION_9_4();
          v100 = OUTLINED_FUNCTION_18_2();
          v101(v100);
          v44 = v155;
        }

        else
        {
          v104 = *v131;
          (*v131)(v132, v143, v157);
          v105 = v133;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v173 = v105;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v105 + 16) + 1, 1);
            v105 = v173;
          }

          v108 = *(v105 + 16);
          v107 = *(v105 + 24);
          if (v108 >= v107 >> 1)
          {
            v109 = OUTLINED_FUNCTION_17_1(v107);
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v109, v108 + 1, 1);
            v105 = v173;
          }

          *(v105 + 16) = v108 + 1;
          v133 = v105;
          v104(v105 + v146 + v108 * v145, v132, v157);
          v39 = v143;
          v44 = v155;
        }
      }

      else
      {
        OUTLINED_FUNCTION_9_4();
        v102 = OUTLINED_FUNCTION_18_2();
        v103(v102);

        v44 = v155;
      }
    }

    else
    {
      v53 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v53)
      {
        goto LABEL_14;
      }

      OUTLINED_FUNCTION_9_4();
      v54(v39, v157);
      v45 = v154;
      v44 = v155;
    }
  }

  v110 = v133;
  v111 = *(v133 + 16);
  if (v111)
  {
    v173 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v111, 0);
    v112 = v173;
    OUTLINED_FUNCTION_8();
    v114 = v110 + v113;
    v116 = *(v115 + 72);
    v171 = *(v115 + 16);
    v172 = v116;
    v117 = v153;
    v118 = v136;
    v119 = v157;
    do
    {
      (v171)(v118, v114, v119);
      v120 = v137;
      RRCandidate.entity.getter();
      v121 = RREntity.id.getter();
      v123 = v122;
      (*v156)(v120, v117);
      OUTLINED_FUNCTION_9_4();
      v124(v118, v119);
      v173 = v112;
      v126 = *(v112 + 16);
      v125 = *(v112 + 24);
      if (v126 >= v125 >> 1)
      {
        v128 = OUTLINED_FUNCTION_17_1(v125);
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v128, v126 + 1, 1);
        v112 = v173;
      }

      *(v112 + 16) = v126 + 1;
      v127 = v112 + 16 * v126;
      *(v127 + 32) = v121;
      *(v127 + 40) = v123;
      v114 += v172;
      --v111;
      v117 = v153;
    }

    while (v111);
  }

  else
  {

    v112 = MEMORY[0x277D84F90];
  }

  return _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5(v112);
}

uint64_t UserParseFeatureExtractor.extractImpl(from:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  v8 = UserParseFeatureExtractor.extractProbaFromAction(from:)(a1);
  v9 = UserParseFeatureExtractor.extractRepetitionTypeFromAction(from:)(a1);
  v10 = type metadata accessor for ActionCandidate(0);
  v11 = *(a1 + *(v10 + 24));
  v12 = (a1 + *(v10 + 36));
  v13 = v12[1];
  if (v13)
  {
    v14 = specialized Set.contains(_:)(*v12, v13, a2);
  }

  else
  {
    v14 = 0;
  }

  v15 = UserParseFeatureExtractor.extractIsTopNLParse(from:maxNLProba:)(a1, a3, a4 & 1);
  v16 = UserParseFeatureExtractor.extractHighPriorityNLXParse(from:)(a1);
  v17 = UserParseFeatureExtractor.extractIsInterpretableAsUniversalCommand(from:)(a1);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So14MLFeatureValueCtGMd, &_ss23_ContiguousArrayStorageCySS_So14MLFeatureValueCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2668149D0;
  strcpy((inited + 32), "nl_parse_proba");
  *(inited + 47) = -18;
  *(inited + 48) = [objc_opt_self() featureValueWithDouble_];
  strcpy((inited + 56), "top_nl_parse");
  *(inited + 69) = 0;
  *(inited + 70) = -5120;
  v19 = OUTLINED_FUNCTION_11_2();
  *(inited + 72) = [v19 v20];
  *(inited + 80) = 0x6974697465706572;
  *(inited + 88) = 0xEF657079745F6E6FLL;
  v21 = OUTLINED_FUNCTION_11_2();
  v23 = [v21 v22];
  OUTLINED_FUNCTION_3_3();
  *(inited + 96) = v24;
  *(inited + 104) = 0xD000000000000015;
  *(inited + 112) = v25;
  v26 = OUTLINED_FUNCTION_11_2();
  v28 = [v26 v27];
  OUTLINED_FUNCTION_3_3();
  *(inited + 120) = v29;
  *(inited + 128) = 0xD000000000000013;
  *(inited + 136) = v30;
  v31 = OUTLINED_FUNCTION_11_2();
  v33 = [v31 v32];
  OUTLINED_FUNCTION_3_3();
  *(inited + 144) = v34;
  *(inited + 152) = 0xD000000000000017;
  *(inited + 160) = v35;
  v36 = OUTLINED_FUNCTION_11_2();
  v38 = [v36 v37];
  OUTLINED_FUNCTION_3_3();
  *(inited + 168) = v39;
  *(inited + 176) = 0xD000000000000025;
  *(inited + 184) = v40;
  v41 = OUTLINED_FUNCTION_11_2();
  *(inited + 192) = [v41 v42];
  type metadata accessor for MLFeatureValue();
  return Dictionary.init(dictionaryLiteral:)();
}

double UserParseFeatureExtractor.extractProbaFromAction(from:)(uint64_t a1)
{
  v3 = type metadata accessor for CamUSOParse(0);
  v4 = OUTLINED_FUNCTION_14(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_0();
  v8 = v7 - v6;
  v9 = type metadata accessor for ActionCandidate(0);
  outlined init with copy of CamParse(a1 + *(v9 + 20), v8);
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_1_6();
    outlined destroy of CamParse(v8, v10);
    return 0.0;
  }

  else
  {
    outlined init with take of CamUSOParse(v8, v1);
    Siri_Nlu_External_UserParse.comparableProbability.getter();
    v11 = v12;
    OUTLINED_FUNCTION_0_7();
    outlined destroy of CamParse(v1, v13);
  }

  return v11;
}

BOOL UserParseFeatureExtractor.extractRepetitionTypeFromAction(from:)(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_External_RepetitionResult();
  OUTLINED_FUNCTION_22();
  v4 = v3;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_0();
  v8 = v7 - v6;
  v9 = type metadata accessor for Siri_Nlu_External_RepetitionResult.RepetitionType();
  OUTLINED_FUNCTION_22();
  v36 = v10;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_4();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v35 - v16;
  v18 = type metadata accessor for CamUSOParse(0);
  v19 = OUTLINED_FUNCTION_14(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_3_0();
  v22 = v21 - v20;
  type metadata accessor for CamParse(0);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_3_0();
  v26 = v25 - v24;
  v27 = type metadata accessor for ActionCandidate(0);
  outlined init with copy of CamParse(a1 + *(v27 + 20), v26);
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_1_6();
    outlined destroy of CamParse(v26, v28);
    return 0;
  }

  else
  {
    outlined init with take of CamUSOParse(v26, v22);
    Siri_Nlu_External_UserParse.repetitionResult.getter();
    Siri_Nlu_External_RepetitionResult.repetitionType.getter();
    (*(v4 + 8))(v8, v2);
    v30 = v36;
    v31 = *(v36 + 104);
    v31(v14, *MEMORY[0x277D5DC78], v9);
    lazy protocol witness table accessor for type RRDataSourceMetadataValue and conformance RRDataSourceMetadataValue(&lazy protocol witness table cache variable for type Siri_Nlu_External_RepetitionResult.RepetitionType and conformance Siri_Nlu_External_RepetitionResult.RepetitionType, MEMORY[0x277D5DC88], MEMORY[0x277D5DC90]);
    OUTLINED_FUNCTION_19_1();
    OUTLINED_FUNCTION_20_1();
    v32 = *(v30 + 8);
    v32(v14, v9);
    if (v38 == v37)
    {
      v32(v17, v9);
      OUTLINED_FUNCTION_0_7();
      outlined destroy of CamParse(v22, v33);
      return 1;
    }

    else
    {
      v31(v14, *MEMORY[0x277D5DC80], v9);
      OUTLINED_FUNCTION_19_1();
      OUTLINED_FUNCTION_20_1();
      v32(v14, v9);
      v32(v17, v9);
      OUTLINED_FUNCTION_0_7();
      outlined destroy of CamParse(v22, v34);
      return v38 == v37;
    }
  }
}

uint64_t UserParseFeatureExtractor.extractIsTopNLParse(from:maxNLProba:)(uint64_t a1, uint64_t a2, int a3)
{
  v7 = type metadata accessor for CamUSOParse(0);
  v8 = OUTLINED_FUNCTION_14(v7);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_3_0();
  v12 = v11 - v10;
  v13 = type metadata accessor for ActionCandidate(0);
  outlined init with copy of CamParse(a1 + *(v13 + 20), v12);
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_1_6();
    outlined destroy of CamParse(v12, v14);
    return 0;
  }

  else
  {
    outlined init with take of CamUSOParse(v12, v3);
    Siri_Nlu_External_UserParse.comparableProbability.getter();
    v17 = v16;
    OUTLINED_FUNCTION_0_7();
    outlined destroy of CamParse(v3, v18);
    return (v17 == *&a2) & ~a3;
  }
}

uint64_t UserParseFeatureExtractor.extractHighPriorityNLXParse(from:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  v3 = OUTLINED_FUNCTION_14(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_4();
  v6 = v4 - v5;
  MEMORY[0x28223BE20](v7);
  v9 = &v29 - v8;
  v10 = type metadata accessor for CamUSOParse(0);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_3_0();
  v14 = v13 - v12;
  type metadata accessor for CamParse(0);
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_3_0();
  v18 = v17 - v16;
  v19 = type metadata accessor for ActionCandidate(0);
  outlined init with copy of CamParse(a1 + *(v19 + 20), v18);
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_1_6();
    outlined destroy of CamParse(v18, v20);
    return 0;
  }

  else
  {
    outlined init with take of CamUSOParse(v18, v14);
    outlined init with copy of Siri_Nlu_External_Parser.ParserIdentifier?(v14 + *(v10 + 20), v9);
    OUTLINED_FUNCTION_0_7();
    outlined destroy of CamParse(v14, v22);
    v23 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
    v21 = 0;
    if (__swift_getEnumTagSinglePayload(v9, 1, v23) != 1)
    {
      outlined init with copy of Siri_Nlu_External_Parser.ParserIdentifier?(v9, v6);
      v24 = *(v23 - 8);
      v25 = (*(v24 + 88))(v6, v23);
      if (v25 == *MEMORY[0x277D5DA80] || v25 == *MEMORY[0x277D5DA70] || v25 == *MEMORY[0x277D5DA60])
      {
        v21 = 1;
      }

      else
      {
        (*(v24 + 8))(v6, v23);
        v21 = 0;
      }
    }

    outlined destroy of Siri_Nlu_External_Parser.ParserIdentifier?(v9);
  }

  return v21;
}

uint64_t UserParseFeatureExtractor.extractIsInterpretableAsUniversalCommand(from:)(uint64_t a1)
{
  v3 = type metadata accessor for CamUSOParse(0);
  v4 = OUTLINED_FUNCTION_14(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_3_0();
  OUTLINED_FUNCTION_15_2();
  OUTLINED_FUNCTION_0_2();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_3_0();
  v8 = v7 - v6;
  v9 = type metadata accessor for ActionCandidate(0);
  outlined init with copy of CamParse(a1 + *(v9 + 20), v8);
  if (swift_getEnumCaseMultiPayload())
  {
    OUTLINED_FUNCTION_1_6();
    outlined destroy of CamParse(v8, v10);
    return 0;
  }

  else
  {
    outlined init with take of CamUSOParse(v8, v1);
    v12 = Siri_Nlu_External_UserParse.interpretableAsUniversalCommand.getter();
    OUTLINED_FUNCTION_0_7();
    outlined destroy of CamParse(v1, v13);
    return v12 & 1;
  }
}

BOOL specialized Set.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  Hasher.init(_seed:)();
  String.hash(into:)();
  v6 = Hasher._finalize()();
  v7 = ~(-1 << *(a3 + 32));
  do
  {
    v8 = v6 & v7;
    v9 = (1 << (v6 & v7)) & *(a3 + 56 + (((v6 & v7) >> 3) & 0xFFFFFFFFFFFFFF8));
    v10 = v9 != 0;
    if (!v9)
    {
      break;
    }

    v11 = (*(a3 + 48) + 16 * v8);
    if (*v11 == a1 && v11[1] == a2)
    {
      break;
    }

    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();
    v6 = v8 + 1;
  }

  while ((v13 & 1) == 0);
  return v10;
}

BOOL RRCandidate.isOnScreen.getter()
{
  v85 = type metadata accessor for RRDataSourceMetadataValue();
  OUTLINED_FUNCTION_22();
  v1 = v0;
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_4();
  v83 = v3 - v4;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_10_3();
  v82 = v6;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_10_3();
  v90 = v8;
  OUTLINED_FUNCTION_6();
  MEMORY[0x28223BE20](v9);
  v76 = v75 - v10;
  v11 = type metadata accessor for RRMetadata();
  OUTLINED_FUNCTION_22();
  v13 = v12;
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_4();
  v17 = v15 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = v75 - v19;
  v21 = type metadata accessor for RREntity();
  OUTLINED_FUNCTION_22();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_3_0();
  v27 = v26 - v25;
  RRCandidate.entity.getter();
  v28 = RREntity.metadata.getter();
  (*(v23 + 8))(v27, v21);
  v29 = *(v28 + 16);
  v84 = v1;
  if (v29)
  {
    v32 = *(v13 + 16);
    v31 = v13 + 16;
    v30 = v32;
    v33 = (*(v31 + 64) + 32) & ~*(v31 + 64);
    v75[1] = v28;
    v34 = v28 + v33;
    v35 = *(v31 + 56);
    v88 = (v31 + 16);
    v89 = v35;
    v87 = v31 + 72;
    v86 = *MEMORY[0x277D5FDF0];
    v77 = v31 + 80;
    v78 = v31 - 8;
    v36 = (v1 + 32);
    v37 = MEMORY[0x277D84F90];
    v38 = v85;
    v80 = v20;
    v81 = v31;
    v79 = v32;
    do
    {
      v30(v20, v34, v11);
      (*v88)(v17, v20, v11);
      v39 = OUTLINED_FUNCTION_13_2();
      v41 = v40(v39);
      if (v41 == v86)
      {
        v42 = OUTLINED_FUNCTION_13_2();
        v43(v42);
        v44 = *v36;
        v45 = v83;
        (*v36)(v83, v17, v38);
        v46 = v37;
        v47 = v82;
        v44(v82, v45, v38);
        v48 = v47;
        v37 = v46;
        v44(v90, v48, v38);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v46 + 16) + 1, 1, v46);
          v37 = v56;
        }

        v50 = *(v37 + 16);
        v49 = *(v37 + 24);
        v20 = v80;
        if (v50 >= v49 >> 1)
        {
          v57 = OUTLINED_FUNCTION_17_1(v49);
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v57, v50 + 1, 1, v37);
          v37 = v58;
        }

        *(v37 + 16) = v50 + 1;
        OUTLINED_FUNCTION_8();
        v53 = v37 + v51 + *(v52 + 72) * v50;
        v38 = v85;
        v44(v53, v90, v85);
        v30 = v79;
      }

      else
      {
        v54 = OUTLINED_FUNCTION_13_2();
        v55(v54);
      }

      v34 += v89;
      --v29;
    }

    while (v29);

    v59 = v37;
  }

  else
  {

    v59 = MEMORY[0x277D84F90];
    v38 = v85;
  }

  v60 = v84;
  v61 = *(v84 + 104);
  v62 = v76;
  v63 = v61(v76, *MEMORY[0x277D5FE90], v38);
  MEMORY[0x28223BE20](v63);
  OUTLINED_FUNCTION_7_3();
  *(v64 - 16) = v62;
  v66 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), v65, v59);
  v67 = v85;
  v68 = *(v60 + 8);
  v68(v62, v85);
  if (v66)
  {
    v69 = v61(v62, *MEMORY[0x277D5FE80], v67);
    MEMORY[0x28223BE20](v69);
    OUTLINED_FUNCTION_7_3();
    *(v70 - 16) = v62;
    v72 = specialized Sequence.contains(where:)(closure #1 in Sequence<>.contains(_:)specialized partial apply, v71, v59);

    v68(v62, v67);
    return !v72;
  }

  else
  {

    return 0;
  }
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for RRDataSourceMetadataValue();
  lazy protocol witness table accessor for type RRDataSourceMetadataValue and conformance RRDataSourceMetadataValue(&lazy protocol witness table cache variable for type RRDataSourceMetadataValue and conformance RRDataSourceMetadataValue, MEMORY[0x277D5FE98], MEMORY[0x277D5FEA0]);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t getEnumTagSinglePayload for UserParseFeatureExtractor(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 17))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t storeEnumTagSinglePayload for UserParseFeatureExtractor(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t outlined init with copy of CamParse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CamParse(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of CamUSOParse(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CamUSOParse(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of CamParse(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_0_2();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t outlined init with copy of Siri_Nlu_External_Parser.ParserIdentifier?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Siri_Nlu_External_Parser.ParserIdentifier?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMd, &_s12SiriNLUTypes0A20_Nlu_External_ParserV0E10IdentifierOSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t lazy protocol witness table accessor for type RRDataSourceMetadataValue and conformance RRDataSourceMetadataValue(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_15_2()
{

  return type metadata accessor for CamParse(0);
}

uint64_t OUTLINED_FUNCTION_19_1()
{

  return dispatch thunk of RawRepresentable.rawValue.getter();
}

void HeuristicScorer.scoreHypothesis(features:loggingId:)(Swift::OpaquePointer a1)
{
  v2 = 0xD000000000000023;
  v3 = specialized Dictionary.subscript.getter();
  if (!v3)
  {
    v9 = "xtracted IS_APP_FOREGROUNDED.";
    v2 = 0xD000000000000029;
LABEL_7:
    v10 = v9 | 0x8000000000000000;
    v11 = lazy protocol witness table accessor for type CaarError and conformance CaarError();
    v12 = OUTLINED_FUNCTION_6_2(&type metadata for CaarError, v11);
    *v13 = v2;
    v13[1] = v10;
    OUTLINED_FUNCTION_2(v12, v13);
    return;
  }

  v4 = v3;
  v5 = [v3 int64Value];

  v6 = specialized Dictionary.subscript.getter();
  if (!v6)
  {
    v9 = "xtracted IS_APP_SHORTCUT.";
    goto LABEL_7;
  }

  v7 = v6;
  v8 = [v6 int64Value];

  if (v5)
  {
    HeuristicScorer.scoreAppShortcut(features:)(a1);
  }

  else if (v8)
  {
    HeuristicScorer.scorePommes(features:)(a1);
  }

  else
  {
    HeuristicScorer.scoreNLX(features:)(a1);
  }
}

Swift::Double __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HeuristicScorer.scoreAppShortcut(features:)(Swift::OpaquePointer features)
{
  if (one-time initialization token for ranker != -1)
  {
    swift_once();
  }

  v1 = type metadata accessor for Logger();
  __swift_project_value_buffer(v1, static Logger.ranker);
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_266790000, v2, v3, "AppShortcut feature flag enabled, running AppShortcut scoring logic", v4, 2u);
    MEMORY[0x26D5DDCD0](v4, -1, -1);
  }

  v5 = specialized Dictionary.subscript.getter();
  if (!v5)
  {
    v15 = "xtracted POMMES_FALLBACK.";
    v16 = 0xD00000000000002DLL;
LABEL_14:
    v17 = v15 | 0x8000000000000000;
    v18 = lazy protocol witness table accessor for type CaarError and conformance CaarError();
    v19 = OUTLINED_FUNCTION_6_2(&type metadata for CaarError, v18);
    *v20 = v16;
    v20[1] = v17;
    OUTLINED_FUNCTION_2(v19, v20);
    return result;
  }

  v6 = v5;
  v7 = [v5 int64Value];

  v8 = OUTLINED_FUNCTION_1_7();
  if (!v8)
  {
    v15 = "xtracted PARSE_PROBA.";
    v16 = 0xD000000000000032;
    goto LABEL_14;
  }

  v9 = v8;
  v10 = [v8 int64Value];

  if (v7)
  {
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_266790000, v11, v12, "Boosting auto shortcut score because app is on screen", v13, 2u);
      MEMORY[0x26D5DDCD0](v13, -1, -1);
    }

    if (v10)
    {
      return 0.57;
    }

    else
    {
      return 0.56;
    }
  }

  else if (v10)
  {
    return 0.53;
  }

  else
  {
    return 0.52;
  }
}

Swift::Double __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HeuristicScorer.scorePommes(features:)(Swift::OpaquePointer features)
{
  v1 = specialized Dictionary.subscript.getter();
  if (v1)
  {
    v2 = v1;
    v3 = [v1 int64Value];

    v4 = specialized Dictionary.subscript.getter();
    if (v4)
    {
      v5 = v4;
      v6 = (v3 | [v4 int64Value]) == 0;

      return dbl_266814A70[v6];
    }

    v8 = "D_FLOW_HANDLER_ID.";
    v9 = 0xD000000000000029;
  }

  else
  {
    v8 = "_TtC7SiriCam15HeuristicScorer";
    v9 = 0xD000000000000030;
  }

  v10 = v8 | 0x8000000000000000;
  v11 = lazy protocol witness table accessor for type CaarError and conformance CaarError();
  v12 = OUTLINED_FUNCTION_6_2(&type metadata for CaarError, v11);
  *v13 = v9;
  v13[1] = v10;
  OUTLINED_FUNCTION_2(v12, v13);
  return result;
}

Swift::Double __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> HeuristicScorer.scoreNLX(features:)(Swift::OpaquePointer features)
{
  v1 = 0xD000000000000032;
  v2 = OUTLINED_FUNCTION_1_7();
  if (!v2)
  {
    v11 = "_TtC7SiriCam15HeuristicScorer";
    v1 = 0xD000000000000030;
LABEL_12:
    v19 = lazy protocol witness table accessor for type CaarError and conformance CaarError();
    v20 = OUTLINED_FUNCTION_6_2(&type metadata for CaarError, v19);
    *v21 = v1;
    v21[1] = v11 | 0x8000000000000000;
    OUTLINED_FUNCTION_2(v20, v21);
    return result;
  }

  v3 = v2;
  v4 = [v2 int64Value];

  v5 = specialized Dictionary.subscript.getter();
  if (!v5)
  {
    v11 = "HIGH_CONFIDENCE.";
    v1 = 0xD000000000000026;
    goto LABEL_12;
  }

  v6 = v5;
  v7 = [v5 int64Value];

  v8 = specialized Dictionary.subscript.getter();
  if (!v8)
  {
    v11 = "xtracted TOP_NL_PARSE.";
    v1 = 0xD000000000000025;
    goto LABEL_12;
  }

  v9 = v8;
  [v8 doubleValue];

  v10 = OUTLINED_FUNCTION_1_7();
  v11 = "xtracted PARSE_PROBA.";
  if (!v10)
  {
    goto LABEL_12;
  }

  v12 = v10;
  v13 = [v10 int64Value];

  v14 = OUTLINED_FUNCTION_1_7();
  if (!v14)
  {
    goto LABEL_12;
  }

  v15 = v14;
  v16 = [v14 int64Value];

  if (!v7)
  {
    v17 = v16 == 2;
    v18 = &unk_266814A90;
LABEL_15:
    result = v18[v17];
    if (!v13)
    {
      return result;
    }

    return result + 0.01;
  }

  if (v4)
  {
    v17 = v16 == 2;
    v18 = &unk_266814A80;
    goto LABEL_15;
  }

  result = 0.52;
  if (v16 != 2)
  {
    result = 0.5;
  }

  if (v13)
  {
    return result + 0.01;
  }

  return result;
}

void static PommesFeatureExtractor.configuredScoreThreshold()()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = @nonobjc NSUserDefaults.init(suiteName:)(0xD000000000000015, 0x800000026681AB20);
  if (v1)
  {
    v2 = v1;
    v3 = MEMORY[0x26D5DCC90](0xD000000000000012, 0x800000026681AB40);
    [v2 doubleForKey_];
  }
}

uint64_t PommesFeatureExtractor.extractImpl(from:)(uint64_t a1, double a2)
{
  v4 = type metadata accessor for CamParse(0);
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = closure #1 in PommesFeatureExtractor.extractImpl(from:)(a1, a2);
  v8 = closure #2 in PommesFeatureExtractor.extractImpl(from:)(a1);
  v9 = type metadata accessor for ActionCandidate(0);
  outlined init with copy of CamParse(a1 + *(v9 + 20), v6);
  v10 = swift_getEnumCaseMultiPayload() == 1;
  outlined destroy of CamParse(v6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_So14MLFeatureValueCtGMd, &_ss23_ContiguousArrayStorageCySS_So14MLFeatureValueCtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_266813C70;
  *(inited + 32) = 0xD000000000000016;
  *(inited + 40) = 0x80000002668194A0;
  v12 = objc_opt_self();
  *(inited + 48) = [v12 featureValueWithInt64_];
  *(inited + 56) = 0x665F73656D6D6F70;
  *(inited + 64) = 0xEF6B6361626C6C61;
  *(inited + 72) = [v12 featureValueWithInt64_];
  *(inited + 80) = 0x656D6D6F705F7369;
  *(inited + 88) = 0xE900000000000073;
  *(inited + 96) = [v12 featureValueWithInt64_];
  type metadata accessor for MLFeatureValue();
  return Dictionary.init(dictionaryLiteral:)();
}

BOOL closure #1 in PommesFeatureExtractor.extractImpl(from:)(uint64_t a1, double a2)
{
  v4 = type metadata accessor for CamParse(0);
  MEMORY[0x28223BE20](v4);
  v6 = (&v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for ActionCandidate(0);
  outlined init with copy of CamParse(a1 + *(v7 + 20), v6);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v9 = EnumCaseMultiPayload;
    result = 0;
    if (v9 == 1)
    {
      v11 = *v6;
      dispatch thunk of PommesResponse.primaryQueryConfidence()();
      v13 = v12;

      return v13 >= a2;
    }
  }

  else
  {
    outlined destroy of CamParse(v6);
    return 0;
  }

  return result;
}

uint64_t closure #2 in PommesFeatureExtractor.extractImpl(from:)(uint64_t a1)
{
  v2 = type metadata accessor for CamParse(0);
  MEMORY[0x28223BE20](v2);
  v4 = (&v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = type metadata accessor for ActionCandidate(0);
  outlined init with copy of CamParse(a1 + *(v5 + 20), v4);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    v7 = EnumCaseMultiPayload;
    result = 0;
    if (v7 == 1)
    {
      v9 = *v4;
      v10 = dispatch thunk of PommesResponse.isPersonalDomainFallback.getter();

      return v10 & 1;
    }
  }

  else
  {
    outlined destroy of CamParse(v4);
    return 0;
  }

  return result;
}

id @nonobjc NSUserDefaults.init(suiteName:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = MEMORY[0x26D5DCC90](a1);
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName_];

  return v4;
}

uint64_t outlined destroy of CamParse(uint64_t a1)
{
  v2 = type metadata accessor for CamParse(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t CamSingletonProvider.__deallocating_deinit()
{
  outlined consume of CamHandler?(*(v0 + 16));

  return MEMORY[0x2821FE8D8](v0, 32, 7);
}

void *closure #1 in serialize<A>(_:at:)(void *__src, uint64_t a2, void *__dst)
{
  if (__dst)
  {
    if (__src)
    {
      return memmove(__dst, __src, a2 - __src);
    }
  }

  return __src;
}

uint64_t implicit closure #1 in OSLogInterpolation.appendInterpolation(_:format:privacy:)(uint64_t (*a1)(void))
{
  return a1() & 1;
}

{
  return a1();
}

uint64_t thunk for @escaping @callee_guaranteed () -> (@unowned Int32)@<X0>(uint64_t (*a1)(void)@<X0>, _DWORD *a2@<X8>)
{
  result = a1();
  *a2 = result;
  return result;
}

uint64_t outlined consume of CamHandler?(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t CamLogOutput.init(prediction:score:threshold:)(uint64_t a1, double a2, double a3)
{
  *(v3 + 40) = 0;
  *(v3 + 48) = 0;
  *(v3 + 16) = a1;
  *(v3 + 24) = a2;
  *(v3 + 32) = a3;
  return v3;
}

uint64_t CamLogOutput.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy7SiriCam0E9LogOutputC10CodingKeys33_194ED4C682EDB454482505D2FA0C609BLLOGMd, &_ss22KeyedEncodingContainerVy7SiriCam0E9LogOutputC10CodingKeys33_194ED4C682EDB454482505D2FA0C609BLLOGMR);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v3);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = lazy protocol witness table accessor for type CamLogOutput.CodingKeys and conformance CamLogOutput.CodingKeys();
  OUTLINED_FUNCTION_13_3(&unk_287814DB8, v5, v4);
  OUTLINED_FUNCTION_5_5();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    v6 = OUTLINED_FUNCTION_8_4();
    return v7(v6);
  }

  else
  {
    OUTLINED_FUNCTION_5_5();
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_5_5();
    KeyedEncodingContainer.encode(_:forKey:)();

    OUTLINED_FUNCTION_5_5();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8 = OUTLINED_FUNCTION_8_4();
    v9(v8);
  }
}

uint64_t CamLogOutput.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6974636964657270 && a2 == 0xEA00000000006E6FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x65726F6373 && a2 == 0xE500000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6C6F687365726874 && a2 == 0xE900000000000064;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x726563726F666E65 && a2 == 0xE800000000000000)
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

uint64_t CamLogOutput.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6974636964657270;
  switch(a1)
  {
    case 1:
      result = 0x65726F6373;
      break;
    case 2:
      result = 0x6C6F687365726874;
      break;
    case 3:
      result = 0x726563726F666E65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CamLogOutput.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = CamLogOutput.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance CamLogOutput.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = CamLogOutput.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CamLogOutput.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CamLogOutput.CodingKeys and conformance CamLogOutput.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CamLogOutput.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CamLogOutput.CodingKeys and conformance CamLogOutput.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CamLogOutput.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 56, 7);
}

void type metadata completion function for CamModelMetadata(uint64_t a1)
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for CamModelVersion?, &type metadata for CamModelVersion);
  if (v1 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for Bool?, MEMORY[0x277D839B0]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Locale?(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void type metadata accessor for Locale?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Locale?)
  {
    type metadata accessor for Locale();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Locale?);
    }
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CamLogOutput(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return ReflectedStringConvertible.description.getter(a1, WitnessTable);
}

uint64_t CamModelMetadata.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6D614E6C65646F6DLL && a2 == 0xE900000000000065;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6F4C776F64616873 && a2 == 0xE900000000000067;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x656C61636F6CLL && a2 == 0xE600000000000000)
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

uint64_t CamModelMetadata.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6D614E6C65646F6DLL;
  switch(a1)
  {
    case 1:
      result = 0x6E6F6973726576;
      break;
    case 2:
      result = 0x6F4C776F64616873;
      break;
    case 3:
      result = 0x656C61636F6CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t CamModelMetadata.encode(to:)(void *a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy7SiriCam0E13ModelMetadataV10CodingKeys33_194ED4C682EDB454482505D2FA0C609BLLOGMd, &_ss22KeyedEncodingContainerVy7SiriCam0E13ModelMetadataV10CodingKeys33_194ED4C682EDB454482505D2FA0C609BLLOGMR);
  OUTLINED_FUNCTION_22();
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v3);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = lazy protocol witness table accessor for type CamModelMetadata.CodingKeys and conformance CamModelMetadata.CodingKeys();
  OUTLINED_FUNCTION_13_3(&unk_287814ED8, v5, v4);
  OUTLINED_FUNCTION_5_5();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    lazy protocol witness table accessor for type CamModelVersion and conformance CamModelVersion();
    OUTLINED_FUNCTION_5_5();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_5_5();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    type metadata accessor for CamModelMetadata(0);
    type metadata accessor for Locale();
    OUTLINED_FUNCTION_2_7();
    lazy protocol witness table accessor for type CamLogOutput and conformance CamLogOutput(v6, 255, v7, MEMORY[0x277CC9790]);
    OUTLINED_FUNCTION_5_5();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  v8 = OUTLINED_FUNCTION_8_4();
  return v9(v8);
}

void CamModelMetadata.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, __int16 a11, char a12, char a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23)
{
  OUTLINED_FUNCTION_16_1();
  a22 = v24;
  a23 = v25;
  v27 = v26;
  v49 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v29);
  v31 = &v47 - v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy7SiriCam0E13ModelMetadataV10CodingKeys33_194ED4C682EDB454482505D2FA0C609BLLOGMd, &_ss22KeyedDecodingContainerVy7SiriCam0E13ModelMetadataV10CodingKeys33_194ED4C682EDB454482505D2FA0C609BLLOGMR);
  OUTLINED_FUNCTION_22();
  v50 = v33;
  v51 = v32;
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v34);
  v35 = type metadata accessor for CamModelMetadata(0);
  v36 = MEMORY[0x28223BE20](v35 - 8);
  v38 = &v47 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = *(v36 + 36);
  v40 = type metadata accessor for Locale();
  v52 = v39;
  __swift_storeEnumTagSinglePayload(&v38[v39], 1, 1, v40);
  __swift_project_boxed_opaque_existential_1(v27, v27[3]);
  lazy protocol witness table accessor for type CamModelMetadata.CodingKeys and conformance CamModelMetadata.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v23)
  {
    __swift_destroy_boxed_opaque_existential_0(v27);
    outlined destroy of Locale?(&v38[v52]);
  }

  else
  {
    v47 = v40;
    v48 = v31;
    LOBYTE(v53[0]) = 0;
    *v38 = KeyedDecodingContainer.decode(_:forKey:)();
    *(v38 + 1) = v41;
    a13 = 1;
    lazy protocol witness table accessor for type CamModelVersion and conformance CamModelVersion();
    OUTLINED_FUNCTION_14_3(&type metadata for CamModelVersion, &a13);
    v42 = v53[1];
    *(v38 + 1) = v53[0];
    *(v38 + 2) = v42;
    LOBYTE(v53[0]) = 2;
    v38[48] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    LOBYTE(v53[0]) = 3;
    OUTLINED_FUNCTION_2_7();
    lazy protocol witness table accessor for type CamLogOutput and conformance CamLogOutput(v43, 255, v44, MEMORY[0x277CC97A8]);
    OUTLINED_FUNCTION_14_3(v47, v53);
    v45 = OUTLINED_FUNCTION_3_6();
    v46(v45);
    outlined assign with take of Locale?(v48, &v38[v52]);
    outlined init with copy of CamModelMetadata(v38, v49);
    __swift_destroy_boxed_opaque_existential_0(v27);
    outlined destroy of CamModelMetadata(v38);
  }

  OUTLINED_FUNCTION_15_3();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CamModelMetadata.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = CamModelMetadata.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CamModelMetadata.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CamModelMetadata.CodingKeys and conformance CamModelMetadata.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CamModelMetadata.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CamModelMetadata.CodingKeys and conformance CamModelMetadata.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t CamModelVersion.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F6A616DLL && a2 == 0xE500000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x726F6E696DLL && a2 == 0xE500000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x6863746170 && a2 == 0xE500000000000000;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else if (a1 == 0x61656C6572657270 && a2 == 0xEA00000000006573)
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

uint64_t CamModelVersion.CodingKeys.stringValue.getter(char a1)
{
  result = 0x726F6A616DLL;
  switch(a1)
  {
    case 1:
      result = 0x726F6E696DLL;
      break;
    case 2:
      result = 0x6863746170;
      break;
    case 3:
      result = 0x61656C6572657270;
      break;
    default:
      return result;
  }

  return result;
}

void CamModelVersion.encode(to:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  OUTLINED_FUNCTION_16_1();
  a23 = v25;
  a24 = v26;
  v41[0] = v27;
  v41[1] = v28;
  v30 = v29;
  v32 = v31;
  v34 = v33;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy7SiriCam0E12ModelVersionV10CodingKeys33_194ED4C682EDB454482505D2FA0C609BLLOGMd, &_ss22KeyedEncodingContainerVy7SiriCam0E12ModelVersionV10CodingKeys33_194ED4C682EDB454482505D2FA0C609BLLOGMR);
  OUTLINED_FUNCTION_22();
  v37 = v36;
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v38);
  v40 = v41 - v39;
  __swift_project_boxed_opaque_existential_1(v34, v34[3]);
  lazy protocol witness table accessor for type CamModelVersion.CodingKeys and conformance CamModelVersion.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  a14 = 0;
  OUTLINED_FUNCTION_11_3(v32, &a14);
  if (!v24)
  {
    a13 = 1;
    OUTLINED_FUNCTION_11_3(HIDWORD(v32), &a13);
    a12 = 2;
    OUTLINED_FUNCTION_11_3(v30, &a12);
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  (*(v37 + 8))(v40, v35);
  OUTLINED_FUNCTION_15_3();
}

void CamModelVersion.init(from:)()
{
  OUTLINED_FUNCTION_16_1();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy7SiriCam0E12ModelVersionV10CodingKeys33_194ED4C682EDB454482505D2FA0C609BLLOGMd, &_ss22KeyedDecodingContainerVy7SiriCam0E12ModelVersionV10CodingKeys33_194ED4C682EDB454482505D2FA0C609BLLOGMR);
  OUTLINED_FUNCTION_22();
  v5 = v4;
  OUTLINED_FUNCTION_7_4();
  MEMORY[0x28223BE20](v6);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(v2, v2[3]);
  lazy protocol witness table accessor for type CamModelVersion.CodingKeys and conformance CamModelVersion.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v0)
  {
    OUTLINED_FUNCTION_4_4();
    KeyedDecodingContainer.decode(_:forKey:)();
    OUTLINED_FUNCTION_4_4();
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    OUTLINED_FUNCTION_4_4();
    KeyedDecodingContainer.decode(_:forKey:)();
    v10[1] = v9;
    OUTLINED_FUNCTION_4_4();
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v5 + 8))(v8, v3);
  }

  __swift_destroy_boxed_opaque_existential_0(v2);
  OUTLINED_FUNCTION_15_3();
}

uint64_t static CamModelVersionError.== infix(_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, char a6)
{
  if (!a3)
  {
    if (!a6)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (a3 != 1)
  {
    if (a6 == 2)
    {
      goto LABEL_4;
    }

    return 0;
  }

  if (a6 != 1)
  {
    return 0;
  }

LABEL_4:
  if (a1 == a4 && a2 == a5)
  {
    return 1;
  }

  else
  {
    return OUTLINED_FUNCTION_6_7(a1, a2, a4, a5);
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CamModelVersion.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = CamModelVersion.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CamModelVersion.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CamModelVersion.CodingKeys and conformance CamModelVersion.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CamModelVersion.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CamModelVersion.CodingKeys and conformance CamModelVersion.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

void protocol witness for Decodable.init(from:) in conformance CamModelVersion(uint64_t a1@<X8>)
{
  CamModelVersion.init(from:)();
  if (!v1)
  {
    *a1 = v3;
    *(a1 + 8) = v4;
    *(a1 + 16) = v5;
    *(a1 + 24) = v6;
  }
}

uint64_t instantiation function for generic protocol witness table for CamLogOutput(uint64_t a1, uint64_t a2)
{
  result = lazy protocol witness table accessor for type CamLogOutput and conformance CamLogOutput(&lazy protocol witness table cache variable for type CamLogOutput and conformance CamLogOutput, a2, type metadata accessor for CamLogOutput, &protocol conformance descriptor for CamLogOutput);
  *(a1 + 8) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type CamModelMetadata.CodingKeys and conformance CamModelMetadata.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CamModelMetadata.CodingKeys and conformance CamModelMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type CamModelMetadata.CodingKeys and conformance CamModelMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamModelMetadata.CodingKeys and conformance CamModelMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CamModelMetadata.CodingKeys and conformance CamModelMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type CamModelMetadata.CodingKeys and conformance CamModelMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamModelMetadata.CodingKeys and conformance CamModelMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CamModelMetadata.CodingKeys and conformance CamModelMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type CamModelMetadata.CodingKeys and conformance CamModelMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamModelMetadata.CodingKeys and conformance CamModelMetadata.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CamModelMetadata.CodingKeys and conformance CamModelMetadata.CodingKeys;
  if (!lazy protocol witness table cache variable for type CamModelMetadata.CodingKeys and conformance CamModelMetadata.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamModelMetadata.CodingKeys and conformance CamModelMetadata.CodingKeys);
  }

  return result;
}

uint64_t outlined destroy of Locale?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t lazy protocol witness table accessor for type CamModelVersion and conformance CamModelVersion()
{
  result = lazy protocol witness table cache variable for type CamModelVersion and conformance CamModelVersion;
  if (!lazy protocol witness table cache variable for type CamModelVersion and conformance CamModelVersion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamModelVersion and conformance CamModelVersion);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CamModelVersion and conformance CamModelVersion;
  if (!lazy protocol witness table cache variable for type CamModelVersion and conformance CamModelVersion)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamModelVersion and conformance CamModelVersion);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type CamLogOutput and conformance CamLogOutput(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

unint64_t lazy protocol witness table accessor for type CamModelVersion.CodingKeys and conformance CamModelVersion.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CamModelVersion.CodingKeys and conformance CamModelVersion.CodingKeys;
  if (!lazy protocol witness table cache variable for type CamModelVersion.CodingKeys and conformance CamModelVersion.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamModelVersion.CodingKeys and conformance CamModelVersion.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CamModelVersion.CodingKeys and conformance CamModelVersion.CodingKeys;
  if (!lazy protocol witness table cache variable for type CamModelVersion.CodingKeys and conformance CamModelVersion.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamModelVersion.CodingKeys and conformance CamModelVersion.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CamModelVersion.CodingKeys and conformance CamModelVersion.CodingKeys;
  if (!lazy protocol witness table cache variable for type CamModelVersion.CodingKeys and conformance CamModelVersion.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamModelVersion.CodingKeys and conformance CamModelVersion.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CamModelVersion.CodingKeys and conformance CamModelVersion.CodingKeys;
  if (!lazy protocol witness table cache variable for type CamModelVersion.CodingKeys and conformance CamModelVersion.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamModelVersion.CodingKeys and conformance CamModelVersion.CodingKeys);
  }

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
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

unsigned __int8 *specialized _parseInteger<A, B>(ascii:radix:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v70 = a1;
  v71 = a2;

  result = String.init<A>(_:)();
  v6 = result;
  v7 = v5;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = static String._copying(_:)(result, v5);
    v41 = v40;

    v7 = v41;
    if ((v41 & 0x2000000000000000) == 0)
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
        v23 = v8 - 1;
        if (v8 != 1)
        {
          v24 = a3 + 48;
          v25 = a3 + 55;
          v26 = a3 + 87;
          if (a3 > 10)
          {
            v24 = 58;
          }

          else
          {
            v26 = 97;
            v25 = 65;
          }

          if (result)
          {
            v14 = 0;
            v27 = result + 1;
            v16 = 1;
            do
            {
              v28 = *v27;
              if (v28 < 0x30 || v28 >= v24)
              {
                if (v28 < 0x41 || v28 >= v25)
                {
                  v19 = 0;
                  if (v28 < 0x61 || v28 >= v26)
                  {
                    goto LABEL_129;
                  }

                  v29 = -87;
                }

                else
                {
                  v29 = -55;
                }
              }

              else
              {
                v29 = -48;
              }

              v30 = v14 * a3;
              if ((v30 & 0xFFFFFFFF00000000) != 0)
              {
                goto LABEL_128;
              }

              v31 = v28 + v29;
              v22 = __CFADD__(v30, v31);
              v14 = v30 + v31;
              if (v22)
              {
                goto LABEL_128;
              }

              ++v27;
              --v23;
            }

            while (v23);
LABEL_47:
            v16 = 0;
            v19 = v14;
            goto LABEL_129;
          }

          goto LABEL_67;
        }

LABEL_128:
        v19 = 0;
        v16 = 1;
        goto LABEL_129;
      }

      goto LABEL_133;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v32 = a3 + 48;
        v33 = a3 + 55;
        v34 = a3 + 87;
        if (a3 > 10)
        {
          v32 = 58;
        }

        else
        {
          v34 = 97;
          v33 = 65;
        }

        if (result)
        {
          v35 = 0;
          v16 = 1;
          do
          {
            v36 = *result;
            if (v36 < 0x30 || v36 >= v32)
            {
              if (v36 < 0x41 || v36 >= v33)
              {
                v19 = 0;
                if (v36 < 0x61 || v36 >= v34)
                {
                  goto LABEL_129;
                }

                v37 = -87;
              }

              else
              {
                v37 = -55;
              }
            }

            else
            {
              v37 = -48;
            }

            v38 = v35 * a3;
            if ((v38 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v39 = v36 + v37;
            v22 = __CFADD__(v38, v39);
            v35 = v38 + v39;
            if (v22)
            {
              goto LABEL_128;
            }

            ++result;
            --v8;
          }

          while (v8);
          v16 = 0;
          v19 = v35;
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
          v16 = 1;
          while (1)
          {
            v17 = *v15;
            if (v17 < 0x30 || v17 >= v11)
            {
              if (v17 < 0x41 || v17 >= v12)
              {
                v19 = 0;
                if (v17 < 0x61 || v17 >= v13)
                {
                  goto LABEL_129;
                }

                v18 = -87;
              }

              else
              {
                v18 = -55;
              }
            }

            else
            {
              v18 = -48;
            }

            v20 = v14 * a3;
            if ((v20 & 0xFFFFFFFF00000000) != 0)
            {
              goto LABEL_128;
            }

            v21 = v17 + v18;
            v22 = v20 >= v21;
            v14 = v20 - v21;
            if (!v22)
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
        v19 = 0;
        v16 = 0;
LABEL_129:

        LOBYTE(v70) = v16;
        return (v19 | (v16 << 32));
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

  v42 = HIBYTE(v7) & 0xF;
  v70 = v6;
  v71 = v7 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v42)
      {
        v44 = 0;
        v62 = a3 + 48;
        v63 = a3 + 55;
        v64 = a3 + 87;
        if (a3 > 10)
        {
          v62 = 58;
        }

        else
        {
          v64 = 97;
          v63 = 65;
        }

        v65 = &v70;
        v16 = 1;
        while (1)
        {
          v66 = *v65;
          if (v66 < 0x30 || v66 >= v62)
          {
            if (v66 < 0x41 || v66 >= v63)
            {
              v19 = 0;
              if (v66 < 0x61 || v66 >= v64)
              {
                goto LABEL_129;
              }

              v67 = -87;
            }

            else
            {
              v67 = -55;
            }
          }

          else
          {
            v67 = -48;
          }

          v68 = v44 * a3;
          if ((v68 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v69 = v66 + v67;
          v22 = __CFADD__(v68, v69);
          v44 = v68 + v69;
          if (v22)
          {
            goto LABEL_128;
          }

          v65 = (v65 + 1);
          if (!--v42)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    if (v42)
    {
      v43 = v42 - 1;
      if (v43)
      {
        v44 = 0;
        v45 = a3 + 48;
        v46 = a3 + 55;
        v47 = a3 + 87;
        if (a3 > 10)
        {
          v45 = 58;
        }

        else
        {
          v47 = 97;
          v46 = 65;
        }

        v48 = &v70 + 1;
        v16 = 1;
        while (1)
        {
          v49 = *v48;
          if (v49 < 0x30 || v49 >= v45)
          {
            if (v49 < 0x41 || v49 >= v46)
            {
              v19 = 0;
              if (v49 < 0x61 || v49 >= v47)
              {
                goto LABEL_129;
              }

              v50 = -87;
            }

            else
            {
              v50 = -55;
            }
          }

          else
          {
            v50 = -48;
          }

          v51 = v44 * a3;
          if ((v51 & 0xFFFFFFFF00000000) != 0)
          {
            goto LABEL_128;
          }

          v52 = v49 + v50;
          v22 = v51 >= v52;
          v44 = v51 - v52;
          if (!v22)
          {
            goto LABEL_128;
          }

          ++v48;
          if (!--v43)
          {
            goto LABEL_127;
          }
        }
      }

      goto LABEL_128;
    }

    goto LABEL_132;
  }

  if (v42)
  {
    v53 = v42 - 1;
    if (v53)
    {
      v44 = 0;
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

      v57 = &v70 + 1;
      v16 = 1;
      do
      {
        v58 = *v57;
        if (v58 < 0x30 || v58 >= v54)
        {
          if (v58 < 0x41 || v58 >= v55)
          {
            v19 = 0;
            if (v58 < 0x61 || v58 >= v56)
            {
              goto LABEL_129;
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

        v60 = v44 * a3;
        if ((v60 & 0xFFFFFFFF00000000) != 0)
        {
          goto LABEL_128;
        }

        v61 = v58 + v59;
        v22 = __CFADD__(v60, v61);
        v44 = v60 + v61;
        if (v22)
        {
          goto LABEL_128;
        }

        ++v57;
        --v53;
      }

      while (v53);
LABEL_127:
      v16 = 0;
      v19 = v44;
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
    v5 = MEMORY[0x26D5DCDB0](15, a1 >> 16);
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

unint64_t lazy protocol witness table accessor for type CamModelVersionError and conformance CamModelVersionError()
{
  result = lazy protocol witness table cache variable for type CamModelVersionError and conformance CamModelVersionError;
  if (!lazy protocol witness table cache variable for type CamModelVersionError and conformance CamModelVersionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamModelVersionError and conformance CamModelVersionError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CamLogOutput.CodingKeys and conformance CamLogOutput.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CamLogOutput.CodingKeys and conformance CamLogOutput.CodingKeys;
  if (!lazy protocol witness table cache variable for type CamLogOutput.CodingKeys and conformance CamLogOutput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamLogOutput.CodingKeys and conformance CamLogOutput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CamLogOutput.CodingKeys and conformance CamLogOutput.CodingKeys;
  if (!lazy protocol witness table cache variable for type CamLogOutput.CodingKeys and conformance CamLogOutput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamLogOutput.CodingKeys and conformance CamLogOutput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CamLogOutput.CodingKeys and conformance CamLogOutput.CodingKeys;
  if (!lazy protocol witness table cache variable for type CamLogOutput.CodingKeys and conformance CamLogOutput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamLogOutput.CodingKeys and conformance CamLogOutput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CamLogOutput.CodingKeys and conformance CamLogOutput.CodingKeys;
  if (!lazy protocol witness table cache variable for type CamLogOutput.CodingKeys and conformance CamLogOutput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamLogOutput.CodingKeys and conformance CamLogOutput.CodingKeys);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CamLogOutput.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 3;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_14_3(uint64_t a1, uint64_t a2)
{

  return MEMORY[0x2821FD9B8](a1, a2, v2, a1);
}

uint64_t CamRequest.init(requestId:camId:rcId:maybeSpeechPackage:rankedActions:camEnabledFeatures:previousCamAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unsigned __int8 *a8@<X7>, _BYTE *a9@<X8>)
{
  v43 = a6;
  v44 = a7;
  v41 = a4;
  v42 = a5;
  v39 = a1;
  v40 = a3;
  v38 = a2;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v36[-v14];
  v16 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_22();
  v18 = v17;
  v20 = MEMORY[0x28223BE20](v19);
  v22 = &v36[-((v21 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v20);
  v24 = &v36[-v23];
  v37 = *a8;
  v25 = *(v18 + 16);
  v25(&v36[-v23], a1, v16);
  v25(v22, a2, v16);
  __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
  v25(a9, v24, v16);
  v26 = type metadata accessor for CamRequest(0);
  v25(&a9[v26[5]], v22, v16);
  v27 = &a9[v26[6]];
  v28 = v41;
  *v27 = v40;
  v27[1] = v28;
  outlined init with copy of UUID?(v15, &a9[v26[7]]);
  v29 = v42;
  v30 = v43;
  *&a9[v26[8]] = v42;
  *&a9[v26[10]] = v30;
  a9[v26[12]] = v37;
  *&a9[v26[13]] = v44;
  v31 = &a9[v26[11]];
  v32 = v29;
  Locale.init(identifier:)();
  v33 = type metadata accessor for CamRequestContext(0);
  v31[*(v33 + 20)] = 5;
  v31[*(v33 + 24)] = 0;

  v34 = *(v18 + 8);
  v34(v38, v16);
  v34(v39, v16);
  outlined destroy of UUID?(v15);
  v34(v22, v16);
  result = (v34)(v24, v16);
  *&a9[v26[9]] = MEMORY[0x277D84F90];
  return result;
}

uint64_t CamRequest.init(requestId:camId:rcId:trpId:maybeSpeechPackage:rankedActions:camEnabledFeatures:previousCamAction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, char *a10)
{
  v29 = *a10;
  v16 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_22();
  v18 = v17;
  v20 = *(v19 + 16);
  v20(a9, a1, v16);
  v21 = type metadata accessor for CamRequest(0);
  v20(a9 + v21[5], a2, v16);
  v22 = (a9 + v21[6]);
  *v22 = a3;
  v22[1] = a4;
  outlined init with copy of UUID?(a5, a9 + v21[7]);
  *(a9 + v21[8]) = a6;
  *(a9 + v21[10]) = a7;
  *(a9 + v21[12]) = v29;
  *(a9 + v21[13]) = a8;
  v23 = a9 + v21[11];
  v24 = a6;
  Locale.init(identifier:)();
  v25 = type metadata accessor for CamRequestContext(0);
  *(v23 + *(v25 + 20)) = 5;
  *(v23 + *(v25 + 24)) = 0;

  outlined destroy of UUID?(a5);
  v26 = *(v18 + 8);
  v26(a2, v16);
  result = (v26)(a1, v16);
  *(a9 + v21[9]) = MEMORY[0x277D84F90];
  return result;
}

uint64_t outlined init with copy of UUID?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of UUID?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4UUIDVSgMd, &_s10Foundation4UUIDVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

SiriCam::CamAction_optional __swiftcall CamAction.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 5;
  if (rawValue < 5)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

unint64_t lazy protocol witness table accessor for type CamAction and conformance CamAction()
{
  result = lazy protocol witness table cache variable for type CamAction and conformance CamAction;
  if (!lazy protocol witness table cache variable for type CamAction and conformance CamAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamAction and conformance CamAction);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CamAction and conformance CamAction;
  if (!lazy protocol witness table cache variable for type CamAction and conformance CamAction)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CamAction and conformance CamAction);
  }

  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CamAction@<X0>(uint64_t *a1@<X8>)
{
  result = CamAction.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t type metadata accessor for CamRequest(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for CamUserParse(uint64_t a1)
{
  type metadata accessor for (SIRINLUUserParse, String?)(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void type metadata accessor for (SIRINLUUserParse, String?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (SIRINLUUserParse, String?))
  {
    type metadata accessor for MLMultiArray(255, &lazy cache variable for type metadata for SIRINLUUserParse, 0x277D5F5D0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd, &_sSSSgMR);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (SIRINLUUserParse, String?));
    }
  }
}

void type metadata completion function for CamRequest(uint64_t a1)
{
  type metadata accessor for UUID();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UUID?(319, &lazy cache variable for type metadata for UUID?, MEMORY[0x277CC95F0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for AFSpeechPackage?(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for [(CamUserParse, Float)](319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for UUID?(319, &lazy cache variable for type metadata for [RankedAction], type metadata accessor for RankedAction, MEMORY[0x277D83940]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for CamRequestContext(319);
            if (v6 <= 0x3F)
            {
              type metadata accessor for CamAction?(319, &lazy cache variable for type metadata for CamAction?, &type metadata for CamAction, MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                type metadata accessor for CamAction?(319, &lazy cache variable for type metadata for [CamFeature], &type metadata for CamFeature, MEMORY[0x277D83940]);
                if (v8 <= 0x3F)
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
}

void type metadata accessor for AFSpeechPackage?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AFSpeechPackage?)
  {
    type metadata accessor for MLMultiArray(255, &lazy cache variable for type metadata for AFSpeechPackage, 0x277CEF470);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AFSpeechPackage?);
    }
  }
}

void type metadata accessor for UUID?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void type metadata accessor for CamAction?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t getEnumTagSinglePayload for CamResponse(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
    if (a2 + 65284 <= 0xFFFEFFFF)
    {
      v2 = 2;
    }

    else
    {
      v2 = 4;
    }

    if (a2 + 65284 < 0xFF0000)
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
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = *(a1 + 2);
      if (!*(a1 + 2))
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 16)) - 65285;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for CamResponse(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 65284 <= 0xFFFEFFFF)
  {
    v3 = 2;
  }

  else
  {
    v3 = 4;
  }

  if (a3 + 65284 < 0xFF0000)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 16) + 1;
    *result = a2 - 252;
    switch(v5)
    {
      case 1:
        *(result + 2) = v6;
        break;
      case 2:
        *(result + 2) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 2) = v6;
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
        *(result + 2) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 2) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 2) = 0;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CamAction(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFC)
  {
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

    v5 = (*a1 | (v4 << 8)) - 5;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v5 = v6 - 5;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for CamAction(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CamError(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFC && *(a1 + 17))
    {
      v2 = *a1 + 251;
    }

    else
    {
      v3 = *(a1 + 16);
      if (v3 <= 4)
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

uint64_t storeEnumTagSinglePayload for CamError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFB)
  {
    *(result + 16) = 0;
    *result = a2 - 252;
    *(result + 8) = 0;
    if (a3 >= 0xFC)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFC)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

uint64_t type metadata accessor for DisabledAppShortcutTieBreaker(uint64_t a1)
{
  result = type metadata singleton initialization cache for DisabledAppShortcutTieBreaker;
  if (!type metadata singleton initialization cache for DisabledAppShortcutTieBreaker)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for DisabledAppShortcutTieBreaker(uint64_t a1)
{
  type metadata accessor for ForcedDisambiguation?();
  if (v1 <= 0x3F)
  {
    type metadata accessor for RankedAction(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for ForcedDisambiguation?()
{
  if (!lazy cache variable for type metadata for ForcedDisambiguation?)
  {
    v0 = type metadata accessor for Optional();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for ForcedDisambiguation?);
    }
  }
}

uint64_t DisabledAppShortcutTieBreaker.init(tie:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for RankedAction(0);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  *a2 = 1025;
  v10 = static DisabledAppShortcutTieBreaker.isDisabledAppShortcut(_:)(a1);
  *(a2 + 2) = v10 & 1;
  v11 = type metadata accessor for TopTwo(0);
  v12 = (v10 & 1) == 0;
  v13 = *(v11 + 20);
  if (v10)
  {
    v14 = a1;
  }

  else
  {
    v14 = a1 + v13;
  }

  if (v12)
  {
    v15 = a1;
  }

  else
  {
    v15 = a1 + v13;
  }

  *(a2 + 3) = static DisabledAppShortcutTieBreaker.isDisabledAppShortcut(_:)(a1 + v13) & 1;
  outlined init with copy of RankedAction(v14, v9);
  v16 = type metadata accessor for DisabledAppShortcutTieBreaker(0);
  outlined init with take of RankedAction(v9, a2 + *(v16 + 32));
  outlined init with copy of RankedAction(v15, v7);
  outlined destroy of TopTwo(a1);
  return outlined init with take of RankedAction(v7, a2 + *(v16 + 36));
}

void *static DisabledAppShortcutTieBreaker.isDisabledAppShortcut(_:)(uint64_t a1)
{
  v2 = type metadata accessor for RankedAction(0);
  v3 = *(a1 + *(v2 + 44));
  if (!*(v3 + 16))
  {
    return 0;
  }

  v4 = v2;
  v5 = OUTLINED_FUNCTION_2_8();
  v7 = specialized __RawDictionaryStorage.find<A>(_:)(v5, v6);
  if ((v8 & 1) == 0)
  {
    return 0;
  }

  v9 = [*(*(v3 + 56) + 8 * v7) int64Value];
  v10 = *(a1 + *(v4 + 32));
  if (!v10)
  {
    v16 = 0u;
    v17 = 0u;
    goto LABEL_13;
  }

  v11 = v9;
  specialized Dictionary.subscript.getter(0xD000000000000014, 0x800000026681AC10, v10, &v16);
  if (!*(&v17 + 1))
  {
LABEL_13:
    outlined destroy of Any?(&v16);
    return 0;
  }

  outlined destroy of Any?(&v16);
  result = specialized Dictionary.subscript.getter();
  if (result)
  {
    v13 = result;
    v14 = [result int64Value];

    return (v11 && v14 == 0);
  }

  return result;
}

Swift::Bool __swiftcall DisabledAppShortcutTieBreaker.supportedTie()()
{
  if (*(v0 + 2))
  {
    return 1;
  }

  else
  {
    return *(v0 + 3);
  }
}

uint64_t DisabledAppShortcutTieBreaker.context.getter()
{
  type metadata accessor for DisabledAppShortcutTieBreaker(0);
  type metadata accessor for RankedAction(0);
  v0 = specialized Dictionary.subscript.getter();
  if (v0)
  {
    v1 = v0;
    v2 = [v0 int64Value];

    v3 = v2 != 0;
  }

  else
  {
    v3 = 2;
  }

  v4 = specialized Dictionary.subscript.getter();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 int64Value];

    v7.value = Domain3PProtectionLevel.init(rawValue:)(v6).value;
  }

  else
  {
    v7.value = SiriCam_Domain3PProtectionLevel_unknownDefault;
  }

  v8 = specialized Dictionary.subscript.getter();
  if (v8)
  {
    v9 = v8;
    v10 = [v8 int64Value];

    v11 = v10 != 0;
  }

  else
  {
    v11 = 2;
  }

  if (one-time initialization token for ranker != -1)
  {
    OUTLINED_FUNCTION_1(&one-time initialization token for ranker);
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.ranker);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v21 = v16;
    *v15 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSg27ambiguousRunPreviouslyShown_7SiriCam23Domain3PProtectionLevelOSg016domainProtectionI0AA19onScreenAppShortcuttMd, &_sSbSg27ambiguousRunPreviouslyShown_7SiriCam23Domain3PProtectionLevelOSg016domainProtectionI0AA19onScreenAppShortcuttMR);
    v17 = String.init<A>(describing:)();
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v18, &v21);

    *(v15 + 4) = v19;
    _os_log_impl(&dword_266790000, v13, v14, "[DisabledAppShortcutTieBreaker] Context: %s", v15, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v16);
    MEMORY[0x26D5DDCD0](v16, -1, -1);
    MEMORY[0x26D5DDCD0](v15, -1, -1);
  }

  return (v7.value << 8) | (v11 << 16) | v3;
}

uint64_t DisabledAppShortcutTieBreaker.actionBoost(features:loggingId:)@<X0>(uint64_t a1@<X1>, double *a2@<X8>)
{
  OUTLINED_FUNCTION_2_8();
  v4 = specialized Dictionary.subscript.getter();
  if (v4)
  {
    v5 = v4;
    v6 = [v4 int64Value];

    v7 = v6 != 0;
  }

  else
  {
    v7 = 0;
  }

  v8 = DisabledAppShortcutTieBreaker.context.getter();
  if (v8 != 2)
  {
    v9 = v8;
    v10 = DisabledAppShortcutTieBreaker.context.getter();
    if ((v10 & 0xFF00) != 0x400)
    {
      v11 = HIBYTE(v10);
      v12 = DisabledAppShortcutTieBreaker.context.getter();
      v13 = HIWORD(v12);
      if (HIWORD(v12) != 2)
      {
        if (v7)
        {
          v22 = *(type metadata accessor for ScoreBoost(0) + 24);
          type metadata accessor for UUID();
          OUTLINED_FUNCTION_0_9();
          result = (*(v23 + 16))(a2 + v22, a1);
          if (v11 == 3 || (v13 & 1) == 0)
          {
            *a2 = 0.0;
            a2[1] = 0.0;
            a2[2] = 0.0;
            return result;
          }
        }

        else
        {
          if (v11 != 3)
          {
            if ((v12 & 0x10000) != 0)
            {
              v24 = *(type metadata accessor for ScoreBoost(0) + 24);
              type metadata accessor for UUID();
              OUTLINED_FUNCTION_0_9();
              result = (*(v25 + 16))(a2 + v24, a1);
              a2[2] = 0.0;
              *a2 = 0.0;
            }

            else
            {
              v28 = static TrialProvider.fetchBoolFactorFromTrial(_:)(0xD000000000000021, 0x800000026681A900);
              if (v28 != 2 && (v28 & 1) != 0 && (CamFeatureFlag.isEnabled.getter(5) & 1) != 0)
              {
                v29 = (v9 & 1) == 0;
                v30 = 0.0;
              }

              else
              {
                v30 = 0.0;
                if (v11 != 1)
                {
                  v30 = 0.02;
                }

                v29 = (v9 & 1) == 0;
              }

              if (v29)
              {
                v31 = v30;
              }

              else
              {
                v31 = 0.02;
              }

              v32 = *(type metadata accessor for ScoreBoost(0) + 24);
              type metadata accessor for UUID();
              OUTLINED_FUNCTION_0_9();
              result = (*(v33 + 16))(a2 + v32, a1);
              *a2 = v31;
              a2[2] = 0.0;
            }

            goto LABEL_24;
          }

          v26 = *(type metadata accessor for ScoreBoost(0) + 24);
          type metadata accessor for UUID();
          OUTLINED_FUNCTION_0_9();
          result = (*(v27 + 16))(a2 + v26, a1);
        }

        a2[2] = 0.0;
        *a2 = 0.02;
LABEL_24:
        a2[1] = 0.0;
        return result;
      }
    }
  }

  if (one-time initialization token for ranker != -1)
  {
    OUTLINED_FUNCTION_1(&one-time initialization token for ranker);
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.ranker);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_266790000, v15, v16, "[DisabledAppShortcutTieBreaker] Context is unavailable, default to 1P.", v17, 2u);
    MEMORY[0x26D5DDCD0](v17, -1, -1);
  }

  if (v7)
  {
    v18 = 0.02;
  }

  else
  {
    v18 = 0.0;
  }

  v19 = *(type metadata accessor for ScoreBoost(0) + 24);
  type metadata accessor for UUID();
  OUTLINED_FUNCTION_0_9();
  result = (*(v20 + 16))(a2 + v19, a1);
  *a2 = v18;
  a2[1] = -2.31584178e77;
  *(a2 + 2) = 0x800000026681ABF0;
  return result;
}