_BYTE *storeEnumTagSinglePayload for SearchGlobalEntity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 16 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 16) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF0)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xEF)
  {
    v6 = ((a2 - 240) >> 8) + 1;
    *result = a2 + 16;
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
          *result = a2 + 16;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchGlobalEntity.ContactAttributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for SearchGlobalEntity.PlaceAttributes.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF5)
  {
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

    v5 = (*a1 | (v4 << 8)) - 12;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xC;
  v5 = v6 - 12;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for SearchGlobalEntity.PlaceAttributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for SearchGlobalEntity.Query(unsigned __int8 *a1, int a2)
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

  return getEnumTag for EagerResolutionError(a1);
}

_BYTE *storeEnumTagSinglePayload for SearchGlobalEntity.Query(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for SearchGlobalEntity.GeneralAttributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

_BYTE *storeEnumTagSinglePayload for SearchGlobalEntity.IDAttributes.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_112_6(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchGlobalEntity.EntityType(_BYTE *result, unsigned int a2, unsigned int a3)
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
          result = OUTLINED_FUNCTION_112_6(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

void OUTLINED_FUNCTION_2_21()
{
  v0[20] = 0;
  v0[21] = 0;
  v0[22] = 0;
  v0[10] = 0;
  v0[11] = 0;
  v0[12] = 0;
  v0[13] = 0;
  v0[14] = 0;
  v0[15] = 0;
  v0[16] = 0;
  v0[17] = 0;
}

void OUTLINED_FUNCTION_7_17()
{
  v0[20] = 0;
  v0[21] = 0;
  v0[22] = 0;
  v0[10] = 0;
  v0[11] = 0;
  v0[12] = 0;
  v0[13] = 0;
}

uint64_t OUTLINED_FUNCTION_9_19(uint64_t a1)
{

  return swift_once();
}

void OUTLINED_FUNCTION_33_12()
{
  v1 = v0[19];
  v0[55] = v0[18];
  v0[56] = v1;
  v2 = v0[17];
  v0[57] = v0[16];
  v0[58] = v2;
  v3 = v0[15];
  v0[59] = v0[14];
  v0[60] = v3;
  v4 = v0[13];
  v0[61] = v0[12];
  v0[62] = v4;
  v5 = v0[11];
  v0[63] = v0[10];
  v0[64] = v5;
  v6 = v0[22];
  v0[65] = v0[21];
  v0[66] = v6;
  v0[67] = v0[20];
}

uint64_t OUTLINED_FUNCTION_55_6()
{

  return outlined destroy of SearchGlobalEntity();
}

void OUTLINED_FUNCTION_67_7(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  *a5 = a1;
  a5[1] = a2;
  a5[2] = a3;
  a5[3] = a4;
  outlined copy of SearchGlobalEntity.IDAttributes?(a1, a2, a3, a4);
}

__n128 OUTLINED_FUNCTION_72_7()
{
  *(v1 + 8) = *(v0 + 56);
  *(v1 + 24) = *(v0 + 72);
  *(v1 + 40) = *(v0 + 88);
  result = *(v0 + 104);
  *(v1 + 56) = result;
  return result;
}

double OUTLINED_FUNCTION_73_6(__n128 a1)
{
  *(v1 + 384) = a1;
  *(v1 + 400) = 0;
  *(v1 + 408) = 0;
  *(v1 + 416) = 0;
  *(v1 + 424) = 1;
  result = 0.0;
  *(v1 + 432) = 0u;
  *(v1 + 448) = 0u;
  *(v1 + 464) = 0u;
  *(v1 + 480) = 0;
  *(v1 + 488) = 1;
  return result;
}

uint64_t OUTLINED_FUNCTION_74_10@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  *a3 = a1;
  a3[1] = a2;
  return outlined copy of SearchGlobalEntity.AppStoreAttributes?(a1, a2);
}

void OUTLINED_FUNCTION_75_6(uint64_t a1@<X8>, __n128 a2@<Q0>)
{
  *(v2 + 88) = a2;
  *(v2 + 104) = a2;
  *(v2 + 120) = a2;
  *(v2 + 136) = a2;
  *(v2 + 152) = a1;
  *(v2 + 160) = 0;
  *(v2 + 168) = 0;
  *(v2 + 176) = 0;
  *(v2 + 184) = 0;
}

uint64_t OUTLINED_FUNCTION_78_8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t OUTLINED_FUNCTION_79_7()
{

  return KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_95_5(uint64_t a1)
{

  return KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_98_5()
{
  *(v0 - 288) = 0;
  *(v0 - 296) = 0;
  return v0 - 296;
}

__n128 OUTLINED_FUNCTION_100_5()
{
  v1 = *(v0 + 144);
  *(v0 + 48) = *(v0 + 128);
  *(v0 + 64) = v1;
  result = *(v0 + 160);
  v3 = *(v0 + 176);
  *(v0 + 80) = result;
  *(v0 + 96) = v3;
  return result;
}

uint64_t OUTLINED_FUNCTION_110_5()
{
}

uint64_t OUTLINED_FUNCTION_113_6(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{

  return outlined copy of SearchGlobalEntity.CustomAttribute(a1, a2, v16, v17, a15, a16);
}

void *OUTLINED_FUNCTION_121_4(void *a1)
{

  return memcpy(a1, (v1 + 1408), 0xB9uLL);
}

uint64_t OUTLINED_FUNCTION_149_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{

  return KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
}

uint64_t OUTLINED_FUNCTION_150_3(uint64_t a1)
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_151_1(uint64_t a1, uint64_t a2)
{

  return LocalizedStringResource.init(stringLiteral:)();
}

uint64_t OUTLINED_FUNCTION_152_2()
{
}

void *OUTLINED_FUNCTION_155_3(uint64_t a1, ...)
{

  return Hasher.init(_seed:)();
}

uint64_t SearchGlobalEntity.asNLGEntity.getter@<X0>(uint64_t x8_0@<X8>)
{
  SearchNLGEntity.init()(x8_0);
  EntityProperty.wrappedValue.getter();
  return EntityProperty.wrappedValue.setter();
}

uint64_t SearchGlobalEntity.asCATEntity.getter@<X0>(uint64_t x8_0@<X8>)
{
  SearchCATEntity.init()(x8_0);
  EntityProperty.wrappedValue.getter();
  type metadata accessor for SearchCATEntity(0);
  EntityProperty.wrappedValue.setter();
  return EntityProperty.wrappedValue.setter();
}

uint64_t protocol witness for SearchCATEntityConvertible.asCATEntity.getter in conformance SearchGlobalEntity(uint64_t a1)
{
  SearchGlobalEntity.asCATEntity.getter(a1);
  v2 = *(v1 + 8);

  return v2();
}

uint64_t SearchPreExtractedCardStandardRepresentation.init(subType:sourceResult:cardData:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  *a5 = *a1;
  v9 = type metadata accessor for SearchPreExtractedCardStandardRepresentation(0);
  result = outlined init with take of SearchResult?(a2, &a5[*(v9 + 20)]);
  v11 = &a5[*(v9 + 24)];
  *v11 = a3;
  v11[1] = a4;
  return result;
}

uint64_t type metadata accessor for SearchPreExtractedCardStandardRepresentation(uint64_t a1)
{
  result = type metadata singleton initialization cache for SearchPreExtractedCardStandardRepresentation;
  if (!type metadata singleton initialization cache for SearchPreExtractedCardStandardRepresentation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SearchPreExtractedCardStandardRepresentation.sourceResult.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SearchPreExtractedCardStandardRepresentation(0) + 20);

  return outlined init with copy of SearchResult?(v3, a1);
}

uint64_t outlined init with copy of SearchResult?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t SearchPreExtractedCardStandardRepresentation.cardData.getter()
{
  v1 = v0 + *(type metadata accessor for SearchPreExtractedCardStandardRepresentation(0) + 24);
  v2 = *v1;
  outlined copy of Data?(*v1, *(v1 + 8));
  return v2;
}

uint64_t SearchPreExtractedCardStandardRepresentation.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65707954627573 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6552656372756F73 && a2 == 0xEC000000746C7573;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6174614464726163 && a2 == 0xE800000000000000)
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

uint64_t SearchPreExtractedCardStandardRepresentation.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x65707954627573;
  }

  if (a1 == 1)
  {
    return 0x6552656372756F73;
  }

  return 0x6174614464726163;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SearchPreExtractedCardStandardRepresentation.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = SearchPreExtractedCardStandardRepresentation.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchPreExtractedCardStandardRepresentation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchPreExtractedCardStandardRepresentation.CodingKeys and conformance SearchPreExtractedCardStandardRepresentation.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchPreExtractedCardStandardRepresentation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchPreExtractedCardStandardRepresentation.CodingKeys and conformance SearchPreExtractedCardStandardRepresentation.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchPreExtractedCardStandardRepresentation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E38PreExtractedCardStandardRepresentationV10CodingKeys33_554E815B51293ED60ECE76C465D8D580LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E38PreExtractedCardStandardRepresentationV10CodingKeys33_554E815B51293ED60ECE76C465D8D580LLOGMR);
  OUTLINED_FUNCTION_14();
  v7 = v6;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SearchPreExtractedCardStandardRepresentation.CodingKeys and conformance SearchPreExtractedCardStandardRepresentation.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v18) = *v3;
  v20 = 0;
  lazy protocol witness table accessor for type CardSubType and conformance CardSubType();
  OUTLINED_FUNCTION_8_17();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for SearchPreExtractedCardStandardRepresentation(0);
    LOBYTE(v18) = 1;
    type metadata accessor for SearchResult(0);
    OUTLINED_FUNCTION_1_34();
    _s10OmniSearch0B6ResultVACSEAAWlTm_1(v12, v13, &protocol conformance descriptor for SearchResult);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v14 = &v3[*(v11 + 24)];
    v15 = v14[1];
    v18 = *v14;
    v19 = v15;
    v20 = 2;
    outlined copy of Data?(v18, v15);
    lazy protocol witness table accessor for type Data and conformance Data();
    OUTLINED_FUNCTION_8_17();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v18, v19);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t lazy protocol witness table accessor for type SearchPreExtractedCardStandardRepresentation.CodingKeys and conformance SearchPreExtractedCardStandardRepresentation.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchPreExtractedCardStandardRepresentation.CodingKeys and conformance SearchPreExtractedCardStandardRepresentation.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchPreExtractedCardStandardRepresentation.CodingKeys and conformance SearchPreExtractedCardStandardRepresentation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchPreExtractedCardStandardRepresentation.CodingKeys and conformance SearchPreExtractedCardStandardRepresentation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchPreExtractedCardStandardRepresentation.CodingKeys and conformance SearchPreExtractedCardStandardRepresentation.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchPreExtractedCardStandardRepresentation.CodingKeys and conformance SearchPreExtractedCardStandardRepresentation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchPreExtractedCardStandardRepresentation.CodingKeys and conformance SearchPreExtractedCardStandardRepresentation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchPreExtractedCardStandardRepresentation.CodingKeys and conformance SearchPreExtractedCardStandardRepresentation.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchPreExtractedCardStandardRepresentation.CodingKeys and conformance SearchPreExtractedCardStandardRepresentation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchPreExtractedCardStandardRepresentation.CodingKeys and conformance SearchPreExtractedCardStandardRepresentation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchPreExtractedCardStandardRepresentation.CodingKeys and conformance SearchPreExtractedCardStandardRepresentation.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchPreExtractedCardStandardRepresentation.CodingKeys and conformance SearchPreExtractedCardStandardRepresentation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchPreExtractedCardStandardRepresentation.CodingKeys and conformance SearchPreExtractedCardStandardRepresentation.CodingKeys);
  }

  return result;
}

uint64_t SearchPreExtractedCardStandardRepresentation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_114(v4);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v32 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0E38PreExtractedCardStandardRepresentationV10CodingKeys33_554E815B51293ED60ECE76C465D8D580LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0E38PreExtractedCardStandardRepresentationV10CodingKeys33_554E815B51293ED60ECE76C465D8D580LLOGMR);
  OUTLINED_FUNCTION_14();
  v36 = v9;
  v37 = v8;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v32 - v11;
  v13 = type metadata accessor for SearchPreExtractedCardStandardRepresentation(0);
  OUTLINED_FUNCTION_51();
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_36();
  v17 = (v16 - v15);
  v18 = OUTLINED_FUNCTION_72_2();
  __swift_project_boxed_opaque_existential_1(v18, v19);
  lazy protocol witness table accessor for type SearchPreExtractedCardStandardRepresentation.CodingKeys and conformance SearchPreExtractedCardStandardRepresentation.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v34 = v13;
  v20 = v17;
  v21 = v36;
  v39 = 0;
  lazy protocol witness table accessor for type CardSubType and conformance CardSubType();
  v22 = v37;
  OUTLINED_FUNCTION_9_20();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *v20 = v38;
  type metadata accessor for SearchResult(0);
  LOBYTE(v38) = 1;
  OUTLINED_FUNCTION_1_34();
  _s10OmniSearch0B6ResultVACSEAAWlTm_1(v23, v24, &protocol conformance descriptor for SearchResult);
  v25 = v7;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v26 = v20;
  v27 = v21;
  v28 = v34;
  v29 = *(v34 + 20);
  v33 = v26;
  outlined init with take of SearchResult?(v25, &v26[v29]);
  v39 = 2;
  lazy protocol witness table accessor for type Data and conformance Data();
  OUTLINED_FUNCTION_9_20();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v27 + 8))(v12, v22);
  v30 = v33;
  *(v33 + *(v28 + 24)) = v38;
  outlined init with copy of SearchPreExtractedCardStandardRepresentation(v30, v35);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return outlined destroy of SearchPreExtractedCardStandardRepresentation(v30);
}

uint64_t outlined init with copy of SearchPreExtractedCardStandardRepresentation(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchPreExtractedCardStandardRepresentation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SearchPreExtractedCardStandardRepresentation(uint64_t a1)
{
  v2 = type metadata accessor for SearchPreExtractedCardStandardRepresentation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static SearchPreExtractedCardStandardRepresentation.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_0_33(&one-time initialization token for typeDisplayRepresentation);
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, static SearchPreExtractedCardStandardRepresentation.typeDisplayRepresentation);
  swift_beginAccess();
  OUTLINED_FUNCTION_51();
  return (*(v4 + 16))(a1, v3, v2);
}

uint64_t static SearchPreExtractedCardStandardRepresentation.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_0_33(&one-time initialization token for typeDisplayRepresentation);
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, static SearchPreExtractedCardStandardRepresentation.typeDisplayRepresentation);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static SearchPreExtractedCardStandardRepresentation.typeDisplayRepresentation.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_0_33(&one-time initialization token for typeDisplayRepresentation);
  }

  v1 = type metadata accessor for TypeDisplayRepresentation();
  __swift_project_value_buffer(v1, static SearchPreExtractedCardStandardRepresentation.typeDisplayRepresentation);
  swift_beginAccess();
  return static FlightSnippet.Status.allCases.modify;
}

uint64_t one-time initialization function for defaultResolverSpecification()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents26EmptyResolverSpecificationVy10OmniSearch0G38PreExtractedCardStandardRepresentationVGMd, &_s10AppIntents26EmptyResolverSpecificationVy10OmniSearch0G38PreExtractedCardStandardRepresentationVGMR);
  __swift_allocate_value_buffer(v0, static SearchPreExtractedCardStandardRepresentation.defaultResolverSpecification);
  __swift_project_value_buffer(v0, static SearchPreExtractedCardStandardRepresentation.defaultResolverSpecification);
  type metadata accessor for SearchPreExtractedCardStandardRepresentation(0);
  _s10OmniSearch0B6ResultVACSEAAWlTm_1(&lazy protocol witness table cache variable for type SearchPreExtractedCardStandardRepresentation and conformance SearchPreExtractedCardStandardRepresentation, type metadata accessor for SearchPreExtractedCardStandardRepresentation, &protocol conformance descriptor for SearchPreExtractedCardStandardRepresentation);
  return EmptyResolverSpecification.init()();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents26EmptyResolverSpecificationVy10OmniSearch0G39PreExtractedEventStandardRepresentationVGMd, &_s10AppIntents26EmptyResolverSpecificationVy10OmniSearch0G39PreExtractedEventStandardRepresentationVGMR);
  __swift_allocate_value_buffer(v0, static SearchPreExtractedEventStandardRepresentation.defaultResolverSpecification);
  __swift_project_value_buffer(v0, static SearchPreExtractedEventStandardRepresentation.defaultResolverSpecification);
  type metadata accessor for SearchPreExtractedEventStandardRepresentation(0);
  _s10OmniSearch0B6ResultVACSEAAWlTm_2(&lazy protocol witness table cache variable for type SearchPreExtractedEventStandardRepresentation and conformance SearchPreExtractedEventStandardRepresentation, type metadata accessor for SearchPreExtractedEventStandardRepresentation, &protocol conformance descriptor for SearchPreExtractedEventStandardRepresentation);
  return EmptyResolverSpecification.init()();
}

{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents26EmptyResolverSpecificationVy10OmniSearch0G31SpotlightStandardRepresentationVGMd, &_s10AppIntents26EmptyResolverSpecificationVy10OmniSearch0G31SpotlightStandardRepresentationVGMR);
  __swift_allocate_value_buffer(v0, static SearchSpotlightStandardRepresentation.defaultResolverSpecification);
  __swift_project_value_buffer(v0, static SearchSpotlightStandardRepresentation.defaultResolverSpecification);
  type metadata accessor for SearchSpotlightStandardRepresentation(0);
  _s10OmniSearch0B6ResultVACSEAAWlTm_3(&lazy protocol witness table cache variable for type SearchSpotlightStandardRepresentation and conformance SearchSpotlightStandardRepresentation, type metadata accessor for SearchSpotlightStandardRepresentation, &protocol conformance descriptor for SearchSpotlightStandardRepresentation);
  return EmptyResolverSpecification.init()();
}

uint64_t static SearchPreExtractedCardStandardRepresentation.defaultResolverSpecification.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultResolverSpecification != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents26EmptyResolverSpecificationVy10OmniSearch0G38PreExtractedCardStandardRepresentationVGMd, &_s10AppIntents26EmptyResolverSpecificationVy10OmniSearch0G38PreExtractedCardStandardRepresentationVGMR);
  __swift_project_value_buffer(v2, static SearchPreExtractedCardStandardRepresentation.defaultResolverSpecification);
  OUTLINED_FUNCTION_51();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t SearchPreExtractedCardStandardRepresentation.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_114(v3);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v4);
  v69 = &v63 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v6);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v7);
  v70 = &v63 - v8;
  v9 = type metadata accessor for SearchPreExtractedCardStandardRepresentation(0);
  OUTLINED_FUNCTION_51();
  MEMORY[0x28223BE20](v10);
  v65 = &v63 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v68 = &v63 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16IntelligenceFlow13RGPluginModelOSgMd, &_s16IntelligenceFlow13RGPluginModelOSgMR);
  OUTLINED_FUNCTION_114(v14);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v15);
  v17 = &v63 - v16;
  v18 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v19 = OUTLINED_FUNCTION_114(v18);
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_36();
  v20 = type metadata accessor for LocalizedStringResource();
  OUTLINED_FUNCTION_14();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v63 - v27;
  String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
  v29._countAndFlagsBits = 0x20647261434449;
  v29._object = 0xE700000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v29);
  if (*v1)
  {
    v30 = 0x7373656E69737562;
  }

  else
  {
    v30 = 0x6C616E6F73726570;
  }

  v31 = 0xE800000000000000;
  String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(*&v30);

  v32._countAndFlagsBits = 0;
  v32._object = 0xE000000000000000;
  String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v32);
  v71 = v28;
  LocalizedStringResource.init(stringInterpolation:)();
  v66 = v9;
  v67 = v1;
  if (*&v1[*(v9 + 24) + 8] >> 60 != 15)
  {
    v64 = v25;
    type metadata accessor for SFCard();
    v33 = OUTLINED_FUNCTION_72_2();
    outlined copy of Data._Representation(v33, v34);
    v35 = OUTLINED_FUNCTION_72_2();
    outlined copy of Data._Representation(v35, v36);
    v37 = OUTLINED_FUNCTION_72_2();
    v39 = SFCard.init(data:)(v37, v38);
    if (v39)
    {
      v40 = v39;
      v63 = a1;
      SFCard.snippetPluginModel.getter(v17);
      v41 = type metadata accessor for RGPluginModel();
      if (__swift_getEnumTagSinglePayload(v17, 1, v41) == 1)
      {

        v42 = OUTLINED_FUNCTION_72_2();
        outlined consume of Data?(v42, v43);
        outlined destroy of ResourceBundle?(v17, &_s16IntelligenceFlow13RGPluginModelOSgMd, &_s16IntelligenceFlow13RGPluginModelOSgMR);
      }

      else
      {
        _s10OmniSearch0B6ResultVACSEAAWlTm_1(&lazy protocol witness table cache variable for type RGPluginModel and conformance RGPluginModel, MEMORY[0x277D1C540], MEMORY[0x277D1C510]);
        SnippetPluginModel.data.getter();
        v47 = v46;
        OUTLINED_FUNCTION_51();
        (*(v48 + 8))(v17, v41);
        if (v47 >> 60 != 15)
        {
          v58 = v71;
          (*(v22 + 16))(v64, v71, v20);
          static RGPluginModel.bundleName.getter();
          DisplayRepresentation.init(title:snippetPluginModelData:bundleIdentifier:)();

          v61 = OUTLINED_FUNCTION_72_2();
          outlined consume of Data?(v61, v62);
          return (*(v22 + 8))(v58, v20);
        }

        v49 = OUTLINED_FUNCTION_72_2();
        outlined consume of Data?(v49, v50);
      }
    }

    else
    {
      v44 = OUTLINED_FUNCTION_72_2();
      outlined consume of Data?(v44, v45);
    }

    v25 = v64;
  }

  if (one-time initialization token for search != -1)
  {
    swift_once();
  }

  v51 = type metadata accessor for Logger();
  __swift_project_value_buffer(v51, static Logging.search);
  v52 = v68;
  outlined init with copy of SearchPreExtractedCardStandardRepresentation(v67, v68);
  v53 = Logger.logObject.getter();
  v54 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v53, v54))
  {
    v55 = swift_slowAlloc();
    v56 = swift_slowAlloc();
    v72 = v56;
    *v55 = 136315138;
    outlined init with copy of SearchPreExtractedCardStandardRepresentation(v52, v65);
    String.init<A>(describing:)();
    v66 = v20;
    v67 = v22;
    outlined destroy of SearchPreExtractedCardStandardRepresentation(v52);
    v57 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v55 + 4) = v57;
    v20 = v66;
    v22 = v67;
    _os_log_impl(&dword_25D85C000, v53, v54, "Unexpected fallback to use title only displayRepresentation for entity: %s", v55, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v56);
    MEMORY[0x25F8A1050](v56, -1, -1);
    MEMORY[0x25F8A1050](v55, -1, -1);
  }

  else
  {

    outlined destroy of SearchPreExtractedCardStandardRepresentation(v52);
  }

  v58 = v71;
  (*(v22 + 16))(v25, v71, v20);
  __swift_storeEnumTagSinglePayload(v70, 1, 1, v20);
  v59 = type metadata accessor for DisplayRepresentation.Image();
  __swift_storeEnumTagSinglePayload(v69, 1, 1, v59);
  DisplayRepresentation.init(title:subtitle:image:)();
  return (*(v22 + 8))(v58, v20);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance SearchPreExtractedCardStandardRepresentation(uint64_t a1)
{
  v2 = _s10OmniSearch0B6ResultVACSEAAWlTm_1(&lazy protocol witness table cache variable for type SearchPreExtractedCardStandardRepresentation and conformance SearchPreExtractedCardStandardRepresentation, type metadata accessor for SearchPreExtractedCardStandardRepresentation, &protocol conformance descriptor for SearchPreExtractedCardStandardRepresentation);

  return MEMORY[0x28210C4B8](a1, v2);
}

void SearchPreExtractedCardStandardRepresentation.convertToEntity()()
{
  v1 = type metadata accessor for SearchPreExtractedCardStandardRepresentation(0);
  v2 = OUTLINED_FUNCTION_114(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_36();
  outlined init with copy of SearchPreExtractedCardStandardRepresentation(v0, v4 - v3);
  IdCardEntity.init(_:)();
}

unint64_t lazy protocol witness table accessor for type EmptyResolverSpecification<SearchPreExtractedCardStandardRepresentation> and conformance EmptyResolverSpecification<A>()
{
  result = lazy protocol witness table cache variable for type EmptyResolverSpecification<SearchPreExtractedCardStandardRepresentation> and conformance EmptyResolverSpecification<A>;
  if (!lazy protocol witness table cache variable for type EmptyResolverSpecification<SearchPreExtractedCardStandardRepresentation> and conformance EmptyResolverSpecification<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10AppIntents26EmptyResolverSpecificationVy10OmniSearch0G38PreExtractedCardStandardRepresentationVGMd, &_s10AppIntents26EmptyResolverSpecificationVy10OmniSearch0G38PreExtractedCardStandardRepresentationVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyResolverSpecification<SearchPreExtractedCardStandardRepresentation> and conformance EmptyResolverSpecification<A>);
  }

  return result;
}

uint64_t _s10OmniSearch0B6ResultVACSEAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void type metadata completion function for SearchPreExtractedCardStandardRepresentation(uint64_t a1)
{
  type metadata accessor for SearchResult?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Data?();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SearchPreExtractedCardStandardRepresentation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_0_33(uint64_t a1)
{

  return swift_once();
}

uint64_t SearchPreExtractedEventStandardRepresentation.init(subType:sourceResult:cardData:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, _BYTE *a5@<X8>)
{
  *a5 = *a1;
  v9 = type metadata accessor for SearchPreExtractedEventStandardRepresentation(0);
  result = outlined init with take of SearchResult?(a2, &a5[*(v9 + 20)]);
  v11 = &a5[*(v9 + 24)];
  *v11 = a3;
  v11[1] = a4;
  return result;
}

uint64_t type metadata accessor for SearchPreExtractedEventStandardRepresentation(uint64_t a1)
{
  result = type metadata singleton initialization cache for SearchPreExtractedEventStandardRepresentation;
  if (!type metadata singleton initialization cache for SearchPreExtractedEventStandardRepresentation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SearchPreExtractedEventStandardRepresentation.sourceResult.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SearchPreExtractedEventStandardRepresentation(0) + 20);

  return outlined init with copy of SearchResult?(v3, a1);
}

uint64_t SearchPreExtractedEventStandardRepresentation.cardData.getter()
{
  v1 = v0 + *(type metadata accessor for SearchPreExtractedEventStandardRepresentation(0) + 24);
  v2 = *v1;
  outlined copy of Data?(*v1, *(v1 + 8));
  return v2;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchPreExtractedEventStandardRepresentation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchPreExtractedEventStandardRepresentation.CodingKeys and conformance SearchPreExtractedEventStandardRepresentation.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchPreExtractedEventStandardRepresentation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchPreExtractedEventStandardRepresentation.CodingKeys and conformance SearchPreExtractedEventStandardRepresentation.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchPreExtractedEventStandardRepresentation.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E39PreExtractedEventStandardRepresentationV10CodingKeys33_109F7CBEB96C7A4DBA6DC32A76248C77LLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E39PreExtractedEventStandardRepresentationV10CodingKeys33_109F7CBEB96C7A4DBA6DC32A76248C77LLOGMR);
  OUTLINED_FUNCTION_14();
  v7 = v6;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v8);
  v10 = &v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SearchPreExtractedEventStandardRepresentation.CodingKeys and conformance SearchPreExtractedEventStandardRepresentation.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v18) = *v3;
  v20 = 0;
  lazy protocol witness table accessor for type EventSubType and conformance EventSubType();
  OUTLINED_FUNCTION_8_17();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v11 = type metadata accessor for SearchPreExtractedEventStandardRepresentation(0);
    LOBYTE(v18) = 1;
    type metadata accessor for SearchResult(0);
    OUTLINED_FUNCTION_1_35();
    _s10OmniSearch0B6ResultVACSEAAWlTm_2(v12, v13, &protocol conformance descriptor for SearchResult);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v14 = &v3[*(v11 + 24)];
    v15 = v14[1];
    v18 = *v14;
    v19 = v15;
    v20 = 2;
    outlined copy of Data?(v18, v15);
    lazy protocol witness table accessor for type Data and conformance Data();
    OUTLINED_FUNCTION_8_17();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v18, v19);
  }

  return (*(v7 + 8))(v10, v5);
}

unint64_t lazy protocol witness table accessor for type SearchPreExtractedEventStandardRepresentation.CodingKeys and conformance SearchPreExtractedEventStandardRepresentation.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchPreExtractedEventStandardRepresentation.CodingKeys and conformance SearchPreExtractedEventStandardRepresentation.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchPreExtractedEventStandardRepresentation.CodingKeys and conformance SearchPreExtractedEventStandardRepresentation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchPreExtractedEventStandardRepresentation.CodingKeys and conformance SearchPreExtractedEventStandardRepresentation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchPreExtractedEventStandardRepresentation.CodingKeys and conformance SearchPreExtractedEventStandardRepresentation.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchPreExtractedEventStandardRepresentation.CodingKeys and conformance SearchPreExtractedEventStandardRepresentation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchPreExtractedEventStandardRepresentation.CodingKeys and conformance SearchPreExtractedEventStandardRepresentation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchPreExtractedEventStandardRepresentation.CodingKeys and conformance SearchPreExtractedEventStandardRepresentation.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchPreExtractedEventStandardRepresentation.CodingKeys and conformance SearchPreExtractedEventStandardRepresentation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchPreExtractedEventStandardRepresentation.CodingKeys and conformance SearchPreExtractedEventStandardRepresentation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchPreExtractedEventStandardRepresentation.CodingKeys and conformance SearchPreExtractedEventStandardRepresentation.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchPreExtractedEventStandardRepresentation.CodingKeys and conformance SearchPreExtractedEventStandardRepresentation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchPreExtractedEventStandardRepresentation.CodingKeys and conformance SearchPreExtractedEventStandardRepresentation.CodingKeys);
  }

  return result;
}

uint64_t SearchPreExtractedEventStandardRepresentation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v32 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_114(v4);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v29 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0E39PreExtractedEventStandardRepresentationV10CodingKeys33_109F7CBEB96C7A4DBA6DC32A76248C77LLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0E39PreExtractedEventStandardRepresentationV10CodingKeys33_109F7CBEB96C7A4DBA6DC32A76248C77LLOGMR);
  OUTLINED_FUNCTION_14();
  v33 = v9;
  v34 = v8;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v29 - v11;
  v13 = type metadata accessor for SearchPreExtractedEventStandardRepresentation(0);
  OUTLINED_FUNCTION_51();
  MEMORY[0x28223BE20](v14);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SearchPreExtractedEventStandardRepresentation.CodingKeys and conformance SearchPreExtractedEventStandardRepresentation.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v31 = v13;
  v17 = v16;
  v18 = v33;
  v36 = 0;
  lazy protocol witness table accessor for type EventSubType and conformance EventSubType();
  v19 = v34;
  OUTLINED_FUNCTION_9_20();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *v17 = v35;
  type metadata accessor for SearchResult(0);
  LOBYTE(v35) = 1;
  OUTLINED_FUNCTION_1_35();
  _s10OmniSearch0B6ResultVACSEAAWlTm_2(v20, v21, &protocol conformance descriptor for SearchResult);
  v22 = v7;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v23 = v17;
  v24 = v18;
  v25 = v31;
  v26 = *(v31 + 20);
  v30 = v23;
  outlined init with take of SearchResult?(v22, &v23[v26]);
  v36 = 2;
  lazy protocol witness table accessor for type Data and conformance Data();
  OUTLINED_FUNCTION_9_20();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v24 + 8))(v12, v19);
  v27 = v30;
  *(v30 + *(v25 + 24)) = v35;
  outlined init with copy of SearchPreExtractedEventStandardRepresentation(v27, v32);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return outlined destroy of SearchPreExtractedEventStandardRepresentation(v27);
}

uint64_t outlined init with copy of SearchPreExtractedEventStandardRepresentation(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchPreExtractedEventStandardRepresentation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SearchPreExtractedEventStandardRepresentation(uint64_t a1)
{
  v2 = type metadata accessor for SearchPreExtractedEventStandardRepresentation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static SearchPreExtractedEventStandardRepresentation.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_0_34(&one-time initialization token for typeDisplayRepresentation);
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, static SearchPreExtractedEventStandardRepresentation.typeDisplayRepresentation);
  swift_beginAccess();
  OUTLINED_FUNCTION_51();
  return (*(v4 + 16))(a1, v3, v2);
}

uint64_t static SearchPreExtractedEventStandardRepresentation.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_0_34(&one-time initialization token for typeDisplayRepresentation);
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, static SearchPreExtractedEventStandardRepresentation.typeDisplayRepresentation);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static SearchPreExtractedEventStandardRepresentation.typeDisplayRepresentation.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_0_34(&one-time initialization token for typeDisplayRepresentation);
  }

  v1 = type metadata accessor for TypeDisplayRepresentation();
  __swift_project_value_buffer(v1, static SearchPreExtractedEventStandardRepresentation.typeDisplayRepresentation);
  swift_beginAccess();
  return static FlightSnippet.Status.allCases.modify;
}

uint64_t static SearchPreExtractedEventStandardRepresentation.defaultResolverSpecification.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultResolverSpecification != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents26EmptyResolverSpecificationVy10OmniSearch0G39PreExtractedEventStandardRepresentationVGMd, &_s10AppIntents26EmptyResolverSpecificationVy10OmniSearch0G39PreExtractedEventStandardRepresentationVGMR);
  __swift_project_value_buffer(v2, static SearchPreExtractedEventStandardRepresentation.defaultResolverSpecification);
  OUTLINED_FUNCTION_51();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t SearchPreExtractedEventStandardRepresentation.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_114(v3);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v4);
  v6 = v62 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v7);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v8);
  v10 = v62 - v9;
  v11 = type metadata accessor for SearchPreExtractedEventStandardRepresentation(0);
  OUTLINED_FUNCTION_51();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_39_0();
  v14 = v13;
  MEMORY[0x28223BE20](v15);
  v66 = v62 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16IntelligenceFlow13RGPluginModelOSgMd, &_s16IntelligenceFlow13RGPluginModelOSgMR);
  OUTLINED_FUNCTION_114(v17);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v18);
  v20 = v62 - v19;
  v69 = type metadata accessor for LocalizedStringResource();
  OUTLINED_FUNCTION_14();
  v22 = v21;
  MEMORY[0x28223BE20](v23);
  OUTLINED_FUNCTION_39_0();
  v67 = v24;
  MEMORY[0x28223BE20](v25);
  v27 = v62 - v26;
  LocalizedStringResource.init(stringLiteral:)();
  v65 = v11;
  v28 = v1;
  v29 = *(v1 + *(v11 + 24) + 8) >> 60;
  v68 = a1;
  if (v29 != 15)
  {
    v64 = v10;
    type metadata accessor for SFCard();
    v30 = OUTLINED_FUNCTION_3_26();
    outlined copy of Data._Representation(v30, v31);
    v32 = OUTLINED_FUNCTION_3_26();
    outlined copy of Data._Representation(v32, v33);
    v34 = OUTLINED_FUNCTION_3_26();
    v36 = SFCard.init(data:)(v34, v35);
    if (v36)
    {
      v37 = v36;
      v63 = v6;
      SFCard.snippetPluginModel.getter(v20);
      v38 = type metadata accessor for RGPluginModel();
      if (__swift_getEnumTagSinglePayload(v20, 1, v38) == 1)
      {

        v39 = OUTLINED_FUNCTION_3_26();
        outlined consume of Data?(v39, v40);
        outlined destroy of ResourceBundle?(v20, &_s16IntelligenceFlow13RGPluginModelOSgMd, &_s16IntelligenceFlow13RGPluginModelOSgMR);
      }

      else
      {
        _s10OmniSearch0B6ResultVACSEAAWlTm_2(&lazy protocol witness table cache variable for type RGPluginModel and conformance RGPluginModel, MEMORY[0x277D1C540], MEMORY[0x277D1C510]);
        v62[1] = SnippetPluginModel.data.getter();
        v44 = v43;
        OUTLINED_FUNCTION_51();
        (*(v45 + 8))(v20, v38);
        if (v44 >> 60 != 15)
        {
          v22[2](v67, v27, v69);
          static RGPluginModel.bundleName.getter();
          DisplayRepresentation.init(title:snippetPluginModelData:bundleIdentifier:)();

          v60 = OUTLINED_FUNCTION_3_26();
          outlined consume of Data?(v60, v61);
          return (v22[1])(v27, v69);
        }

        v46 = OUTLINED_FUNCTION_3_26();
        outlined consume of Data?(v46, v47);
      }

      v6 = v63;
    }

    else
    {
      v41 = OUTLINED_FUNCTION_3_26();
      outlined consume of Data?(v41, v42);
    }

    v10 = v64;
  }

  if (one-time initialization token for search != -1)
  {
    swift_once();
  }

  v48 = type metadata accessor for Logger();
  __swift_project_value_buffer(v48, static Logging.search);
  v49 = v66;
  outlined init with copy of SearchPreExtractedEventStandardRepresentation(v28, v66);
  v50 = Logger.logObject.getter();
  v51 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v50, v51))
  {
    v52 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v70 = v53;
    *v52 = 136315138;
    outlined init with copy of SearchPreExtractedEventStandardRepresentation(v49, v14);
    String.init<A>(describing:)();
    v64 = v22;
    v65 = v27;
    v54 = v10;
    v55 = v6;
    outlined destroy of SearchPreExtractedEventStandardRepresentation(v49);
    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v52 + 4) = v56;
    v6 = v55;
    v10 = v54;
    v22 = v64;
    v27 = v65;
    _os_log_impl(&dword_25D85C000, v50, v51, "Unexpected fallback to use title only displayRepresentation for entity: %s", v52, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v53);
    MEMORY[0x25F8A1050](v53, -1, -1);
    MEMORY[0x25F8A1050](v52, -1, -1);
  }

  else
  {

    outlined destroy of SearchPreExtractedEventStandardRepresentation(v49);
  }

  v57 = v69;
  v22[2](v67, v27, v69);
  __swift_storeEnumTagSinglePayload(v10, 1, 1, v57);
  v58 = type metadata accessor for DisplayRepresentation.Image();
  __swift_storeEnumTagSinglePayload(v6, 1, 1, v58);
  DisplayRepresentation.init(title:subtitle:image:)();
  return (v22[1])(v27, v69);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance SearchPreExtractedEventStandardRepresentation(uint64_t a1)
{
  v2 = _s10OmniSearch0B6ResultVACSEAAWlTm_2(&lazy protocol witness table cache variable for type SearchPreExtractedEventStandardRepresentation and conformance SearchPreExtractedEventStandardRepresentation, type metadata accessor for SearchPreExtractedEventStandardRepresentation, &protocol conformance descriptor for SearchPreExtractedEventStandardRepresentation);

  return MEMORY[0x28210C4B8](a1, v2);
}

unint64_t lazy protocol witness table accessor for type EmptyResolverSpecification<SearchPreExtractedEventStandardRepresentation> and conformance EmptyResolverSpecification<A>()
{
  result = lazy protocol witness table cache variable for type EmptyResolverSpecification<SearchPreExtractedEventStandardRepresentation> and conformance EmptyResolverSpecification<A>;
  if (!lazy protocol witness table cache variable for type EmptyResolverSpecification<SearchPreExtractedEventStandardRepresentation> and conformance EmptyResolverSpecification<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10AppIntents26EmptyResolverSpecificationVy10OmniSearch0G39PreExtractedEventStandardRepresentationVGMd, &_s10AppIntents26EmptyResolverSpecificationVy10OmniSearch0G39PreExtractedEventStandardRepresentationVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyResolverSpecification<SearchPreExtractedEventStandardRepresentation> and conformance EmptyResolverSpecification<A>);
  }

  return result;
}

uint64_t _s10OmniSearch0B6ResultVACSEAAWlTm_2(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void type metadata completion function for SearchPreExtractedEventStandardRepresentation(uint64_t a1)
{
  type metadata accessor for SearchResult?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Data?();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SearchPreExtractedEventStandardRepresentation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t OUTLINED_FUNCTION_0_34(uint64_t a1)
{

  return swift_once();
}

uint64_t _s10OmniSearch0B15SpotlightOpenerV20decodeSearchableItemySo012CSSearchableG0CxKAA0cG9ProvidingRzlFZAA0bC6EntityV_Tt0g5()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = v23 - v3;
  v5 = type metadata accessor for IntentFile();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  EntityProperty.wrappedValue.getter();
  if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
  {
    outlined destroy of IntentApplication?(v4, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logging.search);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      *v12 = 0;
      _os_log_impl(&dword_25D85C000, v10, v11, "SearchSpotlightEntity missing data of the underlying CSSearchableItem", v12, 2u);
      MEMORY[0x25F8A1050](v12, -1, -1);
    }

    lazy protocol witness table accessor for type SearchSpotlightOpenerError and conformance SearchSpotlightOpenerError();
    swift_allocError();
    *v13 = 0;
    swift_willThrow();
  }

  else
  {
    (*(v6 + 32))(v8, v4, v5);
    v14 = IntentFile.data.getter();
    v16 = v15;
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x277CCAAC8);
    type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
    v17 = static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
    if (v0)
    {
      (*(v6 + 8))(v8, v5);
      outlined consume of Data._Representation(v14, v16);
    }

    else
    {
      v1 = v17;
      outlined consume of Data._Representation(v14, v16);
      if (v1)
      {
        (*(v6 + 8))(v8, v5);
      }

      else
      {
        if (one-time initialization token for search != -1)
        {
          swift_once();
        }

        v19 = type metadata accessor for Logger();
        __swift_project_value_buffer(v19, static Logging.search);
        v20 = Logger.logObject.getter();
        v1 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v20, v1))
        {
          v21 = swift_slowAlloc();
          *v21 = 0;
          _os_log_impl(&dword_25D85C000, v20, v1, "NSKeyedUnarchiver returning nil when unarchiving CSSearchableItem data", v21, 2u);
          MEMORY[0x25F8A1050](v21, -1, -1);
        }

        lazy protocol witness table accessor for type SearchSpotlightOpenerError and conformance SearchSpotlightOpenerError();
        swift_allocError();
        *v22 = 2;
        swift_willThrow();
        (*(v6 + 8))(v8, v5);
      }
    }
  }

  return v1;
}

uint64_t static CSSearchableItem.makeFrom(data:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for NSKeyedUnarchiver, 0x277CCAAC8);
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for CSSearchableItem, 0x277CC34B0);
  return static NSKeyedUnarchiver.unarchivedObject<A>(ofClass:from:)();
}

uint64_t SFCommand.asIntentFile()()
{
  v11[1] = *MEMORY[0x277D85DE8];
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  OUTLINED_FUNCTION_114(v1);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_59_4();
  v11[0] = 0;
  v3 = [objc_opt_self() archivedDataWithRootObject:v0 requiringSecureCoding:1 error:v11];
  v4 = v11[0];
  if (v3)
  {
    static Data._unconditionallyBridgeFromObjectiveC(_:)();

    type metadata accessor for UTType();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
    return IntentFile.init(data:filename:type:)();
  }

  else
  {
    v10 = v4;
    _convertNSErrorToError(_:)();

    return swift_willThrow();
  }
}

uint64_t CSSearchableItem.senderNames.getter()
{
  if ((CSSearchableItem.isMailMessageItem.getter() & 1) == 0)
  {
    return 0;
  }

  v1 = [v0 attributeSet];

  return outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.authorNames.getter(v1);
}

uint64_t CSSearchableItem.contentCreationDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [v1 attributeSet];
  v4 = [v3 contentCreationDate];

  if (v4)
  {
    static Date._unconditionallyBridgeFromObjectiveC(_:)();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = type metadata accessor for Date();

  return __swift_storeEnumTagSinglePayload(a1, v5, 1, v6);
}

uint64_t CSSearchableItem.title.getter()
{
  v1 = outlined bridged method (pb) of @objc CSSearchableItem.bundleID.getter(v0);
  if (v2)
  {
    v3 = v1;
    v4 = v2;
    OUTLINED_FUNCTION_98_2();
    v6 = v3 == 0xD000000000000015 && v5 == v4;
    if (v6 || (OUTLINED_FUNCTION_26_10(0xD000000000000015, v5) & 1) != 0 || ((OUTLINED_FUNCTION_98_2(), v3 == 0xD000000000000023) ? (v8 = v7 == v4) : (v8 = 0), v8 || (OUTLINED_FUNCTION_26_10(0xD000000000000023, v7) & 1) != 0))
    {

      v9 = [v0 attributeSet];
      v10 = &selRef_title;
      return outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.title.getter(v9, v10);
    }

    OUTLINED_FUNCTION_98_2();
    v13 = v3 == 0xD000000000000014 && v12 == v4;
    if (v13 || (OUTLINED_FUNCTION_26_10(0xD000000000000014, v12) & 1) != 0 || ((OUTLINED_FUNCTION_98_2(), v3 == 0xD00000000000001DLL) ? (v15 = v14 == v4) : (v15 = 0), v15 || (OUTLINED_FUNCTION_26_10(0xD00000000000001DLL, v14) & 1) != 0))
    {

      v9 = [v0 attributeSet];
      v10 = &selRef_subject;
      return outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.title.getter(v9, v10);
    }

    OUTLINED_FUNCTION_98_2();
    v17 = v3 == 0xD000000000000013 && v16 == v4;
    if (v17 || (OUTLINED_FUNCTION_26_10(0xD000000000000013, v16) & 1) != 0 || ((OUTLINED_FUNCTION_98_2(), v3 == 0xD000000000000012) ? (v19 = v18 == v4) : (v19 = 0), v19 || (OUTLINED_FUNCTION_26_10(0xD000000000000012, v18) & 1) != 0))
    {

      v9 = [v0 attributeSet];
LABEL_43:
      v10 = &selRef_displayName;
      return outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.title.getter(v9, v10);
    }

    OUTLINED_FUNCTION_98_2();
    if (v3 == 0xD000000000000019 && v20 == v4)
    {
    }

    else
    {
      v22 = OUTLINED_FUNCTION_26_10(0xD000000000000019, v20);

      if ((v22 & 1) == 0)
      {
        goto LABEL_41;
      }
    }

    v9 = [v0 attributeSet];
    v10 = &selRef_photosContentDescription;
    return outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.title.getter(v9, v10);
  }

LABEL_41:
  result = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.title.getter([v0 attributeSet], &selRef_title);
  if (!v23)
  {
    v9 = [v0 attributeSet];
    goto LABEL_43;
  }

  return result;
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SearchSpotlightEntity.validateParameters()()
{
  v1 = (v0 + *(type metadata accessor for SearchSpotlightEntity(0) + 56));
  v3 = *v1;
  v2 = v1[1];
  v4 = v3 & 0xFFFFFFFFFFFFLL;
  if ((v2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(v2) & 0xF;
  }

  else
  {
    v5 = v4;
  }

  if (!v5)
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v6 = type metadata accessor for Logger();
    v7 = __swift_project_value_buffer(v6, static Logging.search);
    v8 = Logger.logObject.getter();
    static os_log_type_t.fault.getter();
    v9 = OUTLINED_FUNCTION_60_7();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_25D85C000, v8, v7, "Attempting to create SearchSpotlightEntity without id", v11, 2u);
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    lazy protocol witness table accessor for type SearchToolError and conformance SearchToolError();
    swift_allocError();
    *v12 = xmmword_25DBC9A70;
    swift_willThrow();
  }
}

void SearchSpotlightEntity.init(result:card:)()
{
  OUTLINED_FUNCTION_155();
  v121 = v0;
  v2 = v1;
  v127 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B15SpotlightEntityVSgMd, &_s10OmniSearch0B15SpotlightEntityVSgMR);
  OUTLINED_FUNCTION_114(v4);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_49_3();
  v126 = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  OUTLINED_FUNCTION_114(v7);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_49_3();
  v117 = v9;
  OUTLINED_FUNCTION_78_0();
  v10 = type metadata accessor for URL();
  OUTLINED_FUNCTION_14();
  v108 = v11;
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_36();
  v107 = v14 - v13;
  v15 = OUTLINED_FUNCTION_78_0();
  v123 = type metadata accessor for SearchResultItem(v15);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_36();
  v125 = v18 - v17;
  OUTLINED_FUNCTION_78_0();
  type metadata accessor for FileDocument();
  OUTLINED_FUNCTION_14();
  v113 = v20;
  v114 = v19;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_36();
  v112 = v22 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  OUTLINED_FUNCTION_114(v23);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_49_3();
  v116 = v25;
  OUTLINED_FUNCTION_78_0();
  v26 = type metadata accessor for IntentFile();
  OUTLINED_FUNCTION_14();
  v111 = v27;
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_36();
  v110 = v30 - v29;
  v31 = OUTLINED_FUNCTION_78_0();
  v32 = type metadata accessor for SearchSpotlightEntity.Builder(v31);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v33);
  OUTLINED_FUNCTION_39_0();
  v124 = v34;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v35);
  v37 = (&v106 - v36);
  v38 = type metadata accessor for SearchResult(0);
  v39 = *(v38 + 24);
  v119 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
  v120 = v39;
  v40 = CodableNSSecureCoding.wrappedValue.getter();
  v41 = CSSearchableItem.title.getter();
  v118 = v42;
  v109 = v32[6];
  OUTLINED_FUNCTION_92();
  v122 = v26;
  __swift_storeEnumTagSinglePayload(v43, v44, v45, v26);
  v46 = v32[10];
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v47, v48, v49, v38);
  *(v37 + v32[11]) = MEMORY[0x277D84F90];
  v106 = v32[12];
  OUTLINED_FUNCTION_92();
  v115 = v10;
  __swift_storeEnumTagSinglePayload(v50, v51, v52, v10);
  v53 = [v40 uniqueIdentifier];
  v54 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v56 = v55;

  *v37 = v54;
  v37[1] = v56;
  v57 = v2;
  v58 = outlined bridged method (pb) of @objc CSSearchableItem.bundleID.getter(v40);
  v59 = (v37 + v32[7]);
  v60 = (v37 + v32[8]);
  v61 = v32[9];
  v37[2] = v58;
  v37[3] = v62;
  v63 = v118;
  *v60 = v41;
  v60[1] = v63;
  v64 = v40;
  *v59 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.contentType.getter([v40 attributeSet]);
  v59[1] = v65;
  outlined destroy of IntentApplication?(v37 + v46, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  _s10OmniSearch0B6ResultVWOcTm_5(v2, v37 + v46, type metadata accessor for SearchResult);
  OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v66, v67, v68, v38);
  v69 = v121;
  *(v37 + v61) = v121;
  if (!v69)
  {
    v70 = 0;
    goto LABEL_8;
  }

  v70 = outlined bridged method (ob) of @objc SFCard.cardSections.getter(v69);
  if (!v70)
  {
LABEL_8:
    v74 = v116;
    v73 = v117;
    goto LABEL_11;
  }

  if (specialized Array.count.getter())
  {
    specialized Array._checkSubscript(_:wasNativeTypeChecked:)();
    if ((v70 & 0xC000000000000001) != 0)
    {
      v71 = MEMORY[0x25F89FFD0](0, v70);
    }

    else
    {
      v71 = *(v70 + 32);
    }

    v72 = v71;
  }

  else
  {
    v72 = 0;
  }

  v74 = v116;
  v73 = v117;

  v70 = [v72 command];

LABEL_11:
  *(v37 + v32[13]) = v70;
  v75 = CodableNSSecureCoding.wrappedValue.getter();
  CSSearchableItem.asIntentFile()();

  OUTLINED_FUNCTION_44_0();
  v76 = v122;
  __swift_storeEnumTagSinglePayload(v77, v78, v79, v122);
  v80 = v110;
  v81 = *(v111 + 32);
  v81(v110, v74, v76);
  v82 = v109;
  outlined destroy of IntentApplication?(v37 + v109, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  v81(v37 + v82, v80, v76);
  OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v83, v84, v85, v76);
  v86 = v127;
  _s10OmniSearch0B6ResultVWOcTm_5(v57, v125, type metadata accessor for SearchResultItem);
  if (swift_getEnumCaseMultiPayload() == 11)
  {
    v87 = OUTLINED_FUNCTION_107();
    v88(v87);
    FileDocument.contentUrl.getter(v73);
    v89 = OUTLINED_FUNCTION_107();
    v90(v89);
    v91 = v115;
    OUTLINED_FUNCTION_166(v73, 1, v115);
    if (v92)
    {
      outlined destroy of IntentApplication?(v73, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    }

    else
    {
      v93 = *(v108 + 32);
      v94 = v107;
      v93(v107, v73, v91);
      v95 = v106;
      outlined destroy of IntentApplication?(v37 + v106, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v93(v37 + v95, v94, v91);
      OUTLINED_FUNCTION_44_0();
      __swift_storeEnumTagSinglePayload(v96, v97, v98, v91);
    }
  }

  else
  {
    _s10OmniSearch0B10ResultItemOWOhTm_4();
  }

  v99 = v126;
  OUTLINED_FUNCTION_25_14();
  _s10OmniSearch0B6ResultVWOcTm_5(v37, v124, v100);
  SearchSpotlightEntity.init(builder:)();

  OUTLINED_FUNCTION_0_35();
  _s10OmniSearch0B10ResultItemOWOhTm_4();
  v101 = type metadata accessor for SearchSpotlightEntity(0);
  if (__swift_getEnumTagSinglePayload(v99, 1, v101))
  {
    outlined destroy of IntentApplication?(v99, &_s10OmniSearch0B15SpotlightEntityVSgMd, &_s10OmniSearch0B15SpotlightEntityVSgMR);
    v102 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_24_13();
    v103 = OUTLINED_FUNCTION_88();
    _s10OmniSearch0B15SpotlightEntityVWObTm_0(v103, v104, v105);
    v102 = 0;
  }

  OUTLINED_FUNCTION_4_22();
  _s10OmniSearch0B10ResultItemOWOhTm_4();
  __swift_storeEnumTagSinglePayload(v86, v102, 1, v101);
  OUTLINED_FUNCTION_148();
}

void SearchSpotlightEntity.validTypeIdentifiers.getter()
{
  OUTLINED_FUNCTION_155();
  v4 = v0;
  type metadata accessor for TransferRepresentationVisibility();
  OUTLINED_FUNCTION_14();
  v50 = v6;
  v51 = v5;
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_36();
  v49 = v8 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  OUTLINED_FUNCTION_114(v9);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_61_8();
  v11 = type metadata accessor for UTType();
  OUTLINED_FUNCTION_14();
  v53 = v12;
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_39_0();
  v52 = v14;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_59_7();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  OUTLINED_FUNCTION_114(v16);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v17);
  OUTLINED_FUNCTION_59_4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSSgGMd, &_ss23_ContiguousArrayStorageCySSSgGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25DBC8180;
  EntityProperty.wrappedValue.getter();
  v19 = type metadata accessor for IntentFile();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v19);
  outlined destroy of IntentApplication?(v1, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  v21 = 0;
  if (EnumTagSinglePayload != 1)
  {
    if (one-time initialization token for searchToolExportedExperiences != -1)
    {
      OUTLINED_FUNCTION_38_11(&one-time initialization token for searchToolExportedExperiences);
    }

    v22 = __swift_project_value_buffer(v11, static UTType.searchToolExportedExperiences);
    swift_beginAccess();
    (*(v53 + 16))(v3, v22, v11);
    v21 = v3;
    UTType.identifier.getter();
    OUTLINED_FUNCTION_67_8();
    (*(v53 + 8))(v3, v11);
  }

  *(inited + 32) = v21;
  *(inited + 40) = 0;
  v23 = MEMORY[0x277D84F90];
  v24 = *(inited + 40);
  if (v24)
  {
    v25 = *(inited + 32);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      OUTLINED_FUNCTION_71_7();
      v23 = v29;
    }

    v27 = *(v23 + 16);
    v26 = *(v23 + 24);
    if (v27 >= v26 >> 1)
    {
      specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v26 > 1);
      v23 = v30;
    }

    *(v23 + 16) = v27 + 1;
    v28 = v23 + 16 * v27;
    *(v28 + 32) = v25;
    *(v28 + 40) = v24;
  }

  swift_setDeallocating();
  specialized _ContiguousArrayStorage.__deallocating_deinit();
  v31 = *(v4 + 80);
  if (v31)
  {
    v32 = *(v4 + 72);
    swift_bridgeObjectRetain_n();
    UTType.init(_:)();
    OUTLINED_FUNCTION_166(v2, 1, v11);
    if (v33)
    {

      outlined destroy of IntentApplication?(v2, &_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
    }

    else
    {
      (*(v53 + 32))(v52, v2, v11);
      static TransferRepresentationVisibility.all.getter();
      type metadata accessor for SearchSpotlightEntity(0);
      OUTLINED_FUNCTION_1_36();
      lazy protocol witness table accessor for type SearchSpotlightEntity and conformance SearchSpotlightEntity(v34);
      OUTLINED_FUNCTION_37_5();
      v35 = v52;
      v36 = Transferable.exportedContentTypes(_:)();
      v37 = (*(v50 + 8))(v49, v51);
      MEMORY[0x28223BE20](v37);
      *(&v48 - 2) = v35;
      v38 = specialized Sequence.contains(where:)(partial apply for specialized closure #1 in Sequence<>.contains(_:), (&v48 - 4), v36);

      if (v38)
      {
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          OUTLINED_FUNCTION_71_7();
          v23 = v46;
        }

        v40 = *(v23 + 16);
        v39 = *(v23 + 24);
        if (v40 >= v39 >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v39 > 1);
          v23 = v47;
        }

        *(v23 + 16) = v40 + 1;
        v41 = v23 + 16 * v40;
        *(v41 + 32) = v32;
        *(v41 + 40) = v31;
        v42 = OUTLINED_FUNCTION_53_3();
        v43(v42);
      }

      else
      {
        v44 = OUTLINED_FUNCTION_53_3();
        v45(v44);
      }
    }
  }

  OUTLINED_FUNCTION_148();
}

uint64_t (*SearchSpotlightEntity.bundleId.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchSpotlightEntity.experienceSourceType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *MEMORY[0x277D37088];
  type metadata accessor for SearchResultType();
  OUTLINED_FUNCTION_17();
  v5 = *(v4 + 104);

  return v5(a1, v2, v3);
}

id SearchSpotlightEntity.card.getter()
{
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFCard, 0x277D4C230);
  v0 = OUTLINED_FUNCTION_62_3();
  outlined copy of Data?(v0, v1);
  v2 = OUTLINED_FUNCTION_62_3();
  return SFCard.init(data:)(v2, v3);
}

uint64_t key path setter for SearchSpotlightEntity.card : SearchSpotlightEntity(id *a1)
{
  v1 = *a1;
  v2 = *a1;
  return SearchSpotlightEntity.card.setter(v1);
}

uint64_t SearchSpotlightEntity.card.setter(void *a1)
{
  v3 = v1;
  if (a1)
  {
    v5 = a1;
    SFCard.data.getter();
    OUTLINED_FUNCTION_67_8();
  }

  else
  {
    v5 = 0;
    v2 = 0xF000000000000000;
  }

  result = outlined consume of Data?(*(v3 + 8), *(v3 + 16));
  *(v3 + 8) = v5;
  *(v3 + 16) = v2;
  return result;
}

void (*SearchSpotlightEntity.card.modify(id *a1))(uint64_t a1)
{
  a1[1] = v1;
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFCard, 0x277D4C230);
  v3 = OUTLINED_FUNCTION_37_5();
  outlined copy of Data?(v3, v4);
  v5 = OUTLINED_FUNCTION_37_5();
  *a1 = SFCard.init(data:)(v5, v6);
  return SearchSpotlightEntity.card.modify;
}

void SearchSpotlightEntity.card.modify(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_6_6(a1);
  if (v4)
  {
    v9 = v3;
    if (v3)
    {
      v5 = v3;
      SFCard.data.getter();
      OUTLINED_FUNCTION_67_8();
    }

    else
    {
      v5 = 0;
      v2 = 0xF000000000000000;
    }

    v7 = *(v1 + 8);
    outlined consume of Data?(*(v7 + 8), *(v7 + 16));
    *(v7 + 8) = v5;
    *(v7 + 16) = v2;
  }

  else
  {
    if (v3)
    {
      v6 = v3;
      SFCard.data.getter();
      OUTLINED_FUNCTION_67_8();
    }

    else
    {
      v6 = 0;
      v2 = 0xF000000000000000;
    }

    v8 = *(v1 + 8);
    outlined consume of Data?(*(v8 + 8), *(v8 + 16));
    *(v8 + 8) = v6;
    *(v8 + 16) = v2;
  }
}

uint64_t (*SearchSpotlightEntity.documentSource.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for SearchSpotlightEntity.bundleId : SearchSpotlightEntity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{

  v6 = OUTLINED_FUNCTION_34_11();
  return a5(v6);
}

uint64_t (*SearchSpotlightEntity.title.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchSpotlightEntity.experienceFile.setter()
{
  v0 = OUTLINED_FUNCTION_34_11();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_114(v2);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_90_0();
  OUTLINED_FUNCTION_50_7();
  EntityProperty.wrappedValue.setter();
  v4 = OUTLINED_FUNCTION_32_0();
  return outlined destroy of IntentApplication?(v4, v5, &_s10AppIntents10IntentFileVSgMR);
}

uint64_t (*SearchSpotlightEntity.experienceFile.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for SearchSpotlightEntity.experienceFile : SearchSpotlightEntity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_114(v11);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v16 - v13;
  outlined init with copy of SpotlightRankingItem?(a1, &v16 - v13, a5, a6);
  return a7(v14);
}

uint64_t SearchSpotlightEntity.encodedSearchableItem.setter()
{
  v0 = OUTLINED_FUNCTION_34_11();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_114(v2);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_90_0();
  OUTLINED_FUNCTION_50_7();
  EntityProperty.wrappedValue.setter();
  v4 = OUTLINED_FUNCTION_32_0();
  return outlined destroy of IntentApplication?(v4, v5, &_s10AppIntents10IntentFileVSgMR);
}

uint64_t (*SearchSpotlightEntity.encodedSearchableItem.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchSpotlightEntity.fileURL.setter()
{
  v0 = OUTLINED_FUNCTION_34_11();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_114(v2);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_90_0();
  OUTLINED_FUNCTION_50_7();
  EntityProperty.wrappedValue.setter();
  v4 = OUTLINED_FUNCTION_32_0();
  return outlined destroy of IntentApplication?(v4, v5, &_s10Foundation3URLVSgMR);
}

uint64_t (*SearchSpotlightEntity.fileURL.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchSpotlightEntity.openCommand.setter()
{
  v0 = OUTLINED_FUNCTION_34_11();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_114(v2);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_90_0();
  OUTLINED_FUNCTION_50_7();
  EntityProperty.wrappedValue.setter();
  v4 = OUTLINED_FUNCTION_32_0();
  return outlined destroy of IntentApplication?(v4, v5, &_s10AppIntents10IntentFileVSgMR);
}

uint64_t (*SearchSpotlightEntity.openCommand.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.encodedMemoryCreationQUPerformanceMetrics.modify;
}

uint64_t SearchSpotlightEntity.sourceResult.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  v1 = type metadata accessor for SearchSpotlightEntity(v0);
  return OUTLINED_FUNCTION_108_3(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR, *(v1 + 52));
}

uint64_t SearchSpotlightEntity.sourceResult.setter()
{
  v0 = OUTLINED_FUNCTION_42_2();
  v1 = type metadata accessor for SearchSpotlightEntity(v0);
  return OUTLINED_FUNCTION_107_3(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR, *(v1 + 52));
}

uint64_t SearchSpotlightEntity.sourceResult.modify()
{
  v0 = OUTLINED_FUNCTION_42_2();
  type metadata accessor for SearchSpotlightEntity(v0);
  return OUTLINED_FUNCTION_35_3();
}

uint64_t SearchSpotlightEntity.init(_:)@<X0>(uint64_t (*a1)(_OWORD *)@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B15SpotlightEntityVSgMd, &_s10OmniSearch0B15SpotlightEntityVSgMR);
  OUTLINED_FUNCTION_114(v4);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - v6;
  v8 = type metadata accessor for SearchSpotlightEntity.Builder(0);
  v9 = (v8 - 8);
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_109();
  v12 = v10 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = (&v35 - v14);
  *v15 = 0u;
  v15[1] = 0u;
  type metadata accessor for IntentFile();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
  v20 = (v15 + v9[9]);
  *v20 = 0;
  v20[1] = 0;
  v21 = (v15 + v9[10]);
  *v21 = 0;
  v21[1] = 0;
  *(v15 + v9[11]) = 0;
  type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  *(v15 + v9[13]) = MEMORY[0x277D84F90];
  type metadata accessor for URL();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  *(v15 + v9[15]) = 0;
  a1(v15);
  OUTLINED_FUNCTION_25_14();
  _s10OmniSearch0B6ResultVWOcTm_5(v15, v12, v30);
  SearchSpotlightEntity.init(builder:)();
  OUTLINED_FUNCTION_4_22();
  _s10OmniSearch0B10ResultItemOWOhTm_4();
  v31 = type metadata accessor for SearchSpotlightEntity(0);
  if (__swift_getEnumTagSinglePayload(v7, 1, v31))
  {
    outlined destroy of IntentApplication?(v7, &_s10OmniSearch0B15SpotlightEntityVSgMd, &_s10OmniSearch0B15SpotlightEntityVSgMR);
    v32 = 1;
  }

  else
  {
    OUTLINED_FUNCTION_24_13();
    _s10OmniSearch0B15SpotlightEntityVWObTm_0(v7, a2, v33);
    v32 = 0;
  }

  return __swift_storeEnumTagSinglePayload(a2, v32, 1, v31);
}

uint64_t SearchSpotlightEntity.Builder.init()()
{
  v1 = OUTLINED_FUNCTION_113();
  v2 = type metadata accessor for SearchSpotlightEntity.Builder(v1);
  *v0 = 0u;
  v0[1] = 0u;
  type metadata accessor for IntentFile();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  v7 = (v0 + v2[7]);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v0 + v2[8]);
  *v8 = 0;
  v8[1] = 0;
  *(v0 + v2[9]) = 0;
  type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  *(v0 + v2[11]) = MEMORY[0x277D84F90];
  type metadata accessor for URL();
  OUTLINED_FUNCTION_92();
  result = __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
  *(v0 + v2[13]) = 0;
  return result;
}

void SearchSpotlightEntity.init(builder:)()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v70 = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v4 = OUTLINED_FUNCTION_114(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_39_0();
  v66 = v5;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_2();
  v65 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  v9 = OUTLINED_FUNCTION_114(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_39_0();
  v64 = v10;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_14_2();
  v14 = v13;
  OUTLINED_FUNCTION_78_0();
  v15 = type metadata accessor for LocalizedStringResource();
  v16 = OUTLINED_FUNCTION_114(v15);
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_36();
  v17 = OUTLINED_FUNCTION_61_8();
  v18 = type metadata accessor for SearchSpotlightEntity(v17);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_36();
  v22 = (v21 - v20);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  *v22 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_32_16(xmmword_25DBC9410);
  LocalizedStringResource.init(stringLiteral:)();
  v68 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_75_7(v68);
  LocalizedStringResource.init(stringLiteral:)();
  v22[4] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  OUTLINED_FUNCTION_98_2();
  LocalizedStringResource.init(stringLiteral:)();
  v22[5] = EntityProperty<>.init(title:)();
  LocalizedStringResource.init(stringLiteral:)();
  v22[6] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMR);
  OUTLINED_FUNCTION_66_6();
  LocalizedStringResource.init(stringLiteral:)();
  v69 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_43_9(v69);
  LocalizedStringResource.init(stringLiteral:)();
  v22[8] = EntityProperty<>.init(title:)();
  v23 = v18[13];
  type metadata accessor for SearchResult(0);
  v67 = v23;
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v24, v25, v26, v27);
  v28 = v18[15];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGGMd, &_s10AppIntents14EntityPropertyCySaySSGGMR);
  LocalizedStringResource.init(stringLiteral:)();
  *(v22 + v28) = EntityProperty<>.init(title:)();
  v29 = v1[1];
  if (v29)
  {
    v63 = v18;
    v30 = (v22 + v18[14]);
    *v30 = *v1;
    v30[1] = v29;
    v31 = type metadata accessor for SearchSpotlightEntity.Builder(0);
    v32 = (v1 + v31[7]);
    v33 = v32[1];
    v22[9] = *v32;
    v22[10] = v33;
    outlined init with copy of SpotlightRankingItem?(v1 + v31[6], v14, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
    v34 = OUTLINED_FUNCTION_32_0();
    outlined init with copy of SpotlightRankingItem?(v34, v35, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);

    EntityProperty.wrappedValue.setter();
    outlined destroy of IntentApplication?(v14, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
    v36 = v1[2];
    v37 = v1[3];

    EntityProperty.wrappedValue.setter();
    type metadata accessor for LocalIndexClient();
    static LocalIndexClient.displayName(for:)(v36, v37);
    EntityProperty.wrappedValue.setter();

    EntityProperty.wrappedValue.setter();
    outlined assign with copy of SearchResult?(v1 + v31[10], v22 + v67);

    IntentFile.init(experiences:)(v38, v14);
    v39 = OUTLINED_FUNCTION_32_0();
    outlined init with copy of SpotlightRankingItem?(v39, v40, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
    EntityProperty.wrappedValue.setter();
    outlined destroy of IntentApplication?(v14, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
    if (*(v1 + v31[13]))
    {
      v41 = v64;
      SFCommand.asIntentFile()();
      v51 = 0;
      v52 = v70;
    }

    else
    {
      v51 = 1;
      v52 = v70;
      v41 = v64;
    }

    v53 = type metadata accessor for IntentFile();
    __swift_storeEnumTagSinglePayload(v41, v51, 1, v53);
    outlined init with copy of SpotlightRankingItem?(v41, v14, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
    EntityProperty.wrappedValue.setter();
    outlined destroy of IntentApplication?(v41, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
    SearchSpotlightEntity.validTypeIdentifiers.getter();
    EntityProperty.wrappedValue.setter();
    v54 = *(v1 + v31[9]);
    if (v54)
    {
      v55 = v54;
      v56 = SFCard.data.getter();
      v58 = v57;
    }

    else
    {
      v56 = 0;
      v58 = 0xF000000000000000;
    }

    outlined consume of Data?(v22[1], v22[2]);
    v22[1] = v56;
    v22[2] = v58;
    outlined init with copy of SpotlightRankingItem?(v1 + v31[12], v65, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    outlined init with copy of SpotlightRankingItem?(v65, v66, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    EntityProperty.wrappedValue.setter();
    outlined destroy of IntentApplication?(v65, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    OUTLINED_FUNCTION_4_22();
    _s10OmniSearch0B10ResultItemOWOhTm_4();
    OUTLINED_FUNCTION_12_18();
    _s10OmniSearch0B6ResultVWOcTm_5(v22, v52, v59);
    OUTLINED_FUNCTION_44_0();
    __swift_storeEnumTagSinglePayload(v60, v61, v62, v63);
    OUTLINED_FUNCTION_11_17();
    _s10OmniSearch0B10ResultItemOWOhTm_4();
  }

  else
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_1_31();
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, static Logging.search);
    v43 = Logger.logObject.getter();
    static os_log_type_t.fault.getter();
    v44 = OUTLINED_FUNCTION_60_7();
    if (os_log_type_enabled(v44, v45))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_84_5(&dword_25D85C000, v46, v47, "Missing fields to create SearchSpotlightEntity");
      OUTLINED_FUNCTION_90();
      MEMORY[0x25F8A1050]();
    }

    OUTLINED_FUNCTION_4_22();
    _s10OmniSearch0B10ResultItemOWOhTm_4();

    outlined consume of Data?(v22[1], v22[2]);

    outlined destroy of IntentApplication?(v22 + v67, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);

    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v48, v49, v50, v18);
  }

  OUTLINED_FUNCTION_148();
}

uint64_t SearchSpotlightEntity.supportedTypeIdentifiersForExport.setter()
{
  v0 = OUTLINED_FUNCTION_42_2();
  type metadata accessor for SearchSpotlightEntity(v0);
  return EntityProperty.wrappedValue.setter();
}

void SearchSpotlightEntity.init()()
{
  OUTLINED_FUNCTION_155();
  v2 = v1;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v4 = OUTLINED_FUNCTION_114(v3);
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_39_0();
  v45 = v5;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v6);
  OUTLINED_FUNCTION_14_2();
  v44 = v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  v9 = OUTLINED_FUNCTION_114(v8);
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_39_0();
  v43 = v10;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v11);
  v13 = &v40 - v12;
  v41 = type metadata accessor for UUID();
  OUTLINED_FUNCTION_14();
  v15 = v14;
  MEMORY[0x28223BE20](v16);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_61_8();
  v17 = type metadata accessor for LocalizedStringResource();
  v18 = OUTLINED_FUNCTION_114(v17);
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_36();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  v42 = EntityProperty<>.init(title:)();
  *v2 = v42;
  OUTLINED_FUNCTION_32_16(xmmword_25DBC9410);
  LocalizedStringResource.init(stringLiteral:)();
  v19 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_75_7(v19);
  LocalizedStringResource.init(stringLiteral:)();
  v2[4] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
  OUTLINED_FUNCTION_98_2();
  LocalizedStringResource.init(stringLiteral:)();
  v2[5] = EntityProperty<>.init(title:)();
  LocalizedStringResource.init(stringLiteral:)();
  v2[6] = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMR);
  OUTLINED_FUNCTION_66_6();
  LocalizedStringResource.init(stringLiteral:)();
  v20 = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_43_9(v20);
  LocalizedStringResource.init(stringLiteral:)();
  v2[8] = EntityProperty<>.init(title:)();
  v21 = type metadata accessor for SearchSpotlightEntity(0);
  type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  v26 = *(v21 + 60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGGMd, &_s10AppIntents14EntityPropertyCySaySSGGMR);
  LocalizedStringResource.init(stringLiteral:)();
  *(v2 + v26) = EntityProperty<>.init(title:)();
  UUID.init()();
  v27 = UUID.uuidString.getter();
  v29 = v28;
  (*(v15 + 8))(v0, v41);
  v30 = (v2 + *(v21 + 56));
  *v30 = v27;
  v30[1] = v29;
  type metadata accessor for IntentFile();
  v2[9] = 0;
  v2[10] = 0;
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
  outlined init with copy of SpotlightRankingItem?(v13, v43, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  EntityProperty.wrappedValue.setter();
  outlined destroy of IntentApplication?(v13, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  type metadata accessor for URL();
  v35 = v44;
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v36, v37, v38, v39);
  outlined init with copy of SpotlightRankingItem?(v35, v45, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  EntityProperty.wrappedValue.setter();
  outlined destroy of IntentApplication?(v35, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v46 = 0;
  v47 = 0;
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_148();
}

uint64_t SearchSpotlightEntity.Builder.id.setter()
{
  OUTLINED_FUNCTION_93();

  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t SearchSpotlightEntity.Builder.bundleId.setter()
{
  OUTLINED_FUNCTION_93();

  *(v1 + 16) = v2;
  *(v1 + 24) = v0;
  return result;
}

uint64_t SearchSpotlightEntity.Builder.encodedSearchableItem.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  v1 = type metadata accessor for SearchSpotlightEntity.Builder(v0);
  return OUTLINED_FUNCTION_108_3(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR, *(v1 + 24));
}

uint64_t SearchSpotlightEntity.Builder.encodedSearchableItem.setter()
{
  v0 = OUTLINED_FUNCTION_42_2();
  v1 = type metadata accessor for SearchSpotlightEntity.Builder(v0);
  return OUTLINED_FUNCTION_107_3(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR, *(v1 + 24));
}

uint64_t SearchSpotlightEntity.Builder.encodedSearchableItem.modify()
{
  v0 = OUTLINED_FUNCTION_42_2();
  type metadata accessor for SearchSpotlightEntity.Builder(v0);
  return OUTLINED_FUNCTION_35_3();
}

uint64_t SearchSpotlightEntity.Builder.spotlightContentTypeIdentifier.getter()
{
  type metadata accessor for SearchSpotlightEntity.Builder(0);
  OUTLINED_FUNCTION_60_5();
  return OUTLINED_FUNCTION_94();
}

uint64_t SearchSpotlightEntity.Builder.spotlightContentTypeIdentifier.setter()
{
  OUTLINED_FUNCTION_93();
  v3 = (v1 + *(type metadata accessor for SearchSpotlightEntity.Builder(0) + 28));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t SearchSpotlightEntity.Builder.spotlightContentTypeIdentifier.modify()
{
  v0 = OUTLINED_FUNCTION_42_2();
  type metadata accessor for SearchSpotlightEntity.Builder(v0);
  return OUTLINED_FUNCTION_35_3();
}

uint64_t SearchSpotlightEntity.Builder.title.getter()
{
  type metadata accessor for SearchSpotlightEntity.Builder(0);
  OUTLINED_FUNCTION_60_5();
  return OUTLINED_FUNCTION_94();
}

uint64_t SearchSpotlightEntity.Builder.title.setter()
{
  OUTLINED_FUNCTION_93();
  v3 = (v1 + *(type metadata accessor for SearchSpotlightEntity.Builder(0) + 32));

  *v3 = v2;
  v3[1] = v0;
  return result;
}

uint64_t SearchSpotlightEntity.Builder.title.modify()
{
  v0 = OUTLINED_FUNCTION_42_2();
  type metadata accessor for SearchSpotlightEntity.Builder(v0);
  return OUTLINED_FUNCTION_35_3();
}

void *SearchSpotlightEntity.Builder.card.getter()
{
  v1 = *(v0 + *(type metadata accessor for SearchSpotlightEntity.Builder(0) + 36));
  v2 = v1;
  return v1;
}

void SearchSpotlightEntity.Builder.card.setter()
{
  v2 = OUTLINED_FUNCTION_42_2();
  v3 = *(type metadata accessor for SearchSpotlightEntity.Builder(v2) + 36);

  *(v1 + v3) = v0;
}

uint64_t SearchSpotlightEntity.Builder.card.modify()
{
  v0 = OUTLINED_FUNCTION_42_2();
  type metadata accessor for SearchSpotlightEntity.Builder(v0);
  return OUTLINED_FUNCTION_35_3();
}

uint64_t SearchSpotlightEntity.Builder.sourceResult.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  v1 = type metadata accessor for SearchSpotlightEntity.Builder(v0);
  return OUTLINED_FUNCTION_108_3(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR, *(v1 + 40));
}

uint64_t SearchSpotlightEntity.Builder.sourceResult.setter()
{
  v0 = OUTLINED_FUNCTION_42_2();
  v1 = type metadata accessor for SearchSpotlightEntity.Builder(v0);
  return OUTLINED_FUNCTION_107_3(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR, *(v1 + 40));
}

uint64_t SearchSpotlightEntity.Builder.sourceResult.modify()
{
  v0 = OUTLINED_FUNCTION_42_2();
  type metadata accessor for SearchSpotlightEntity.Builder(v0);
  return OUTLINED_FUNCTION_35_3();
}

uint64_t SearchSpotlightEntity.Builder.experiences.getter()
{
  type metadata accessor for SearchSpotlightEntity.Builder(0);
}

uint64_t SearchSpotlightEntity.Builder.experiences.setter()
{
  v2 = OUTLINED_FUNCTION_42_2();
  v3 = *(type metadata accessor for SearchSpotlightEntity.Builder(v2) + 44);

  *(v1 + v3) = v0;
  return result;
}

uint64_t SearchSpotlightEntity.Builder.experiences.modify()
{
  v0 = OUTLINED_FUNCTION_42_2();
  type metadata accessor for SearchSpotlightEntity.Builder(v0);
  return OUTLINED_FUNCTION_35_3();
}

uint64_t SearchSpotlightEntity.Builder.fileURL.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  v1 = type metadata accessor for SearchSpotlightEntity.Builder(v0);
  return OUTLINED_FUNCTION_108_3(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR, *(v1 + 48));
}

uint64_t SearchSpotlightEntity.Builder.fileURL.setter()
{
  v0 = OUTLINED_FUNCTION_42_2();
  v1 = type metadata accessor for SearchSpotlightEntity.Builder(v0);
  return OUTLINED_FUNCTION_107_3(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR, *(v1 + 48));
}

uint64_t SearchSpotlightEntity.Builder.fileURL.modify()
{
  v0 = OUTLINED_FUNCTION_42_2();
  type metadata accessor for SearchSpotlightEntity.Builder(v0);
  return OUTLINED_FUNCTION_35_3();
}

void *SearchSpotlightEntity.Builder.openCommand.getter()
{
  v1 = *(v0 + *(type metadata accessor for SearchSpotlightEntity.Builder(0) + 52));
  v2 = v1;
  return v1;
}

void SearchSpotlightEntity.Builder.openCommand.setter()
{
  v2 = OUTLINED_FUNCTION_42_2();
  v3 = *(type metadata accessor for SearchSpotlightEntity.Builder(v2) + 52);

  *(v1 + v3) = v0;
}

uint64_t SearchSpotlightEntity.Builder.openCommand.modify()
{
  v0 = OUTLINED_FUNCTION_42_2();
  type metadata accessor for SearchSpotlightEntity.Builder(v0);
  return OUTLINED_FUNCTION_35_3();
}

uint64_t SearchSpotlightEntity.Builder.init(id:bundleId:encodedSearchableItem:spotlightContentTypeIdentifier:title:card:sourceResult:experiences:fileURL:openCommand:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t a7@<X7>, void *a8@<X8>, uint64_t x4_0@<X4>, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  *a8 = a1;
  a8[1] = a2;
  a8[2] = a3;
  a8[3] = a4;
  v20 = type metadata accessor for SearchSpotlightEntity.Builder(0);
  outlined init with take of SearchResultItem?(x4_0, a8 + v20[6], &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  v21 = (a8 + v20[7]);
  *v21 = a5;
  v21[1] = a6;
  v22 = (a8 + v20[8]);
  *v22 = a7;
  v22[1] = a9;
  *(a8 + v20[9]) = a10;
  outlined init with take of SearchResultItem?(a11, a8 + v20[10], &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  *(a8 + v20[11]) = a12;
  result = outlined init with take of SearchResultItem?(a13, a8 + v20[12], &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  *(a8 + v20[13]) = a14;
  return result;
}

uint64_t SearchSpotlightEntity.id.getter()
{
  type metadata accessor for SearchSpotlightEntity(0);
  OUTLINED_FUNCTION_60_5();
  return OUTLINED_FUNCTION_94();
}

uint64_t SearchSpotlightEntity.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_7_18(&one-time initialization token for typeDisplayRepresentation);
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();

  return __swift_project_value_buffer(v0, static SearchSpotlightEntity.typeDisplayRepresentation);
}

uint64_t static SearchSpotlightEntity.typeDisplayRepresentation.getter()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_7_18(&one-time initialization token for typeDisplayRepresentation);
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  __swift_project_value_buffer(v0, static SearchSpotlightEntity.typeDisplayRepresentation);
  swift_beginAccess();
  v1 = OUTLINED_FUNCTION_32_0();
  return v2(v1);
}

uint64_t static SearchSpotlightEntity.typeDisplayRepresentation.setter()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_7_18(&one-time initialization token for typeDisplayRepresentation);
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();
  __swift_project_value_buffer(v0, static SearchSpotlightEntity.typeDisplayRepresentation);
  swift_beginAccess();
  OUTLINED_FUNCTION_33_13();
  v1();
  swift_endAccess();
  v2 = OUTLINED_FUNCTION_94();
  return v3(v2);
}

uint64_t (*static SearchSpotlightEntity.typeDisplayRepresentation.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_7_18(&one-time initialization token for typeDisplayRepresentation);
  }

  v1 = type metadata accessor for TypeDisplayRepresentation();
  __swift_project_value_buffer(v1, static SearchSpotlightEntity.typeDisplayRepresentation);
  swift_beginAccess();
  return static FlightSnippet.Status.allCases.modify;
}

uint64_t key path getter for static SearchSpotlightEntity.typeDisplayRepresentation : SearchSpotlightEntity.Type@<X0>(uint64_t a1@<X8>)
{
  v2 = SearchSpotlightEntity.typeDisplayRepresentation.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = type metadata accessor for TypeDisplayRepresentation();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t key path setter for static SearchSpotlightEntity.typeDisplayRepresentation : SearchSpotlightEntity.Type(uint64_t a1)
{
  v2 = SearchSpotlightEntity.typeDisplayRepresentation.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = type metadata accessor for TypeDisplayRepresentation();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

void SearchSpotlightEntity.displayRepresentation.getter()
{
  OUTLINED_FUNCTION_155();
  v2 = v0;
  v62 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_114(v4);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_49_3();
  v60[3] = v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v7);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_49_3();
  v60[2] = v9;
  v10 = OUTLINED_FUNCTION_78_0();
  v60[1] = type metadata accessor for SearchSpotlightEntity(v10);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_109();
  v14 = v12 - v13;
  MEMORY[0x28223BE20](v15);
  OUTLINED_FUNCTION_59_7();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16IntelligenceFlow13RGPluginModelOSgMd, &_s16IntelligenceFlow13RGPluginModelOSgMR);
  OUTLINED_FUNCTION_114(v16);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v17);
  v19 = v60 - v18;
  v20 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v21 = OUTLINED_FUNCTION_114(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_36();
  v22 = type metadata accessor for LocalizedStringResource();
  OUTLINED_FUNCTION_14();
  v24 = v23;
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_39_0();
  v61 = v26;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v27);
  v29 = v60 - v28;
  EntityProperty.wrappedValue.getter();
  if (v64)
  {
    LocalizedStringResource.init(stringLiteral:)();
  }

  else
  {
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    OUTLINED_FUNCTION_98_2();
    v30._countAndFlagsBits = 0xD000000000000025;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v30);
    EntityProperty.wrappedValue.getter();
    if (v64)
    {
      v31 = v63;
    }

    else
    {
      v31 = 7104878;
    }

    if (v64)
    {
      v32 = v64;
    }

    else
    {
      v32 = 0xE300000000000000;
    }

    v33 = v32;
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(*&v31);

    v34._countAndFlagsBits = 0;
    v34._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v34);
    LocalizedStringResource.init(stringInterpolation:)();
  }

  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFCard, 0x277D4C230);
  v35 = OUTLINED_FUNCTION_34_11();
  outlined copy of Data?(v35, v36);
  v37 = OUTLINED_FUNCTION_34_11();
  v39 = SFCard.init(data:)(v37, v38);
  if (v39)
  {
    v40 = v39;
    SFCard.snippetPluginModel.getter(v19);

    v41 = type metadata accessor for RGPluginModel();
    OUTLINED_FUNCTION_166(v19, 1, v41);
    if (v42)
    {
      outlined destroy of IntentApplication?(v19, &_s16IntelligenceFlow13RGPluginModelOSgMd, &_s16IntelligenceFlow13RGPluginModelOSgMR);
    }

    else
    {
      lazy protocol witness table accessor for type SearchSpotlightEntity and conformance SearchSpotlightEntity(&lazy protocol witness table cache variable for type RGPluginModel and conformance RGPluginModel);
      SnippetPluginModel.data.getter();
      v44 = v43;
      (*(*(v41 - 8) + 8))(v19, v41);
      if (v44 >> 60 != 15)
      {
        (*(v24 + 16))(v61, v29, v22);
        static RGPluginModel.bundleName.getter();
        OUTLINED_FUNCTION_94();
        DisplayRepresentation.init(title:snippetPluginModelData:bundleIdentifier:)();
        goto LABEL_21;
      }
    }
  }

  if (one-time initialization token for search != -1)
  {
    OUTLINED_FUNCTION_1_31();
    swift_once();
  }

  v45 = type metadata accessor for Logger();
  __swift_project_value_buffer(v45, static Logging.search);
  OUTLINED_FUNCTION_12_18();
  _s10OmniSearch0B6ResultVWOcTm_5(v2, v1, v46);
  v47 = Logger.logObject.getter();
  v48 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v47, v48))
  {
    v49 = swift_slowAlloc();
    v50 = swift_slowAlloc();
    v63 = v50;
    *v49 = 136315138;
    OUTLINED_FUNCTION_12_18();
    _s10OmniSearch0B6ResultVWOcTm_5(v1, v14, v51);
    String.init<A>(describing:)();
    OUTLINED_FUNCTION_11_17();
    _s10OmniSearch0B10ResultItemOWOhTm_4();
    v52 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v49 + 4) = v52;
    _os_log_impl(&dword_25D85C000, v47, v48, "Unexpectedly fallback to use title only displayRepresentation for entity: %s", v49, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v50);
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
    OUTLINED_FUNCTION_90();
    MEMORY[0x25F8A1050]();
  }

  else
  {

    OUTLINED_FUNCTION_11_17();
    _s10OmniSearch0B10ResultItemOWOhTm_4();
  }

  (*(v24 + 16))(v61, v29, v22);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v53, v54, v55, v22);
  type metadata accessor for DisplayRepresentation.Image();
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v56, v57, v58, v59);
  OUTLINED_FUNCTION_62_3();
  DisplayRepresentation.init(title:subtitle:image:)();
LABEL_21:
  (*(v24 + 8))(v29, v22);
  OUTLINED_FUNCTION_148();
}

uint64_t protocol witness for EntityQuery.entities(for:) in conformance SearchSpotlightEntity.Query()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = protocol witness for EntityQuery.entities(for:) in conformance SearchEntity.Query;

  return SearchSpotlightEntity.Query.entities(for:)();
}

uint64_t protocol witness for EntityQuery.suggestedEntities() in conformance SearchSpotlightEntity.Query(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = partial apply for closure #1 in SmartChunkingPreprocessing.preprocess(data:query:);

  return MEMORY[0x28210B608](a1, a2, a3);
}

uint64_t protocol witness for DynamicOptionsProvider.results() in conformance SearchSpotlightEntity.Query(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  v6 = lazy protocol witness table accessor for type SearchSpotlightEntity.Query and conformance SearchSpotlightEntity.Query();
  *v5 = v2;
  v5[1] = protocol witness for DynamicOptionsProvider.results() in conformance SearchSpotlightEntity.Query;

  return MEMORY[0x28210B618](a1, a2, v6);
}

uint64_t protocol witness for DynamicOptionsProvider.defaultResult() in conformance SearchSpotlightEntity.Query(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = protocol witness for DynamicOptionsProvider.results() in conformance SearchSpotlightEntity.Query;

  return MEMORY[0x28210C148](a1, a2, a3);
}

uint64_t SearchSpotlightEntity.supportedTypeIdentifiersForExport.getter()
{
  OUTLINED_FUNCTION_57_6();
  EntityProperty.wrappedValue.getter();
  return v1;
}

uint64_t (*SearchSpotlightEntity.supportedTypeIdentifiersForExport.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  OUTLINED_FUNCTION_57_6();
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

void (*static SearchSpotlightEntity.performTransfer(to:entity:)(uint64_t a1, void (*a2)(char *, uint64_t, uint64_t)))(char *, uint64_t, uint64_t)
{
  v70 = a1;
  v68 = type metadata accessor for UTType();
  v64 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v63 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v69 = &v54 - v5;
  v6 = type metadata accessor for SearchResultType();
  v65 = *(v6 - 8);
  v66 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for SearchTransferabilityError.Code();
  v67 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v11 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for IntentFile();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  MEMORY[0x28223BE20](v16 - 8);
  v18 = &v54 - v17;
  v19 = v71;
  v20 = _s10OmniSearch0B15SpotlightOpenerV20decodeSearchableItemySo012CSSearchableG0CxKAA0cG9ProvidingRzlFZAA0bC6EntityV_Tt0g5();
  if (!v19)
  {
    v55 = v18;
    v57 = v15;
    v58 = v13;
    v56 = v12;
    v59 = a2;
    v60 = v11;
    v21 = v69;
    v61 = v8;
    v62 = v9;
    v71 = v20;
    v22 = outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.contentType.getter([v20 attributeSet]);
    v24 = v23;
    v25 = UTType.identifier.getter();
    if (v24)
    {
      if (v22 == v25 && v24 == v26)
      {

        v31 = v21;
        v29 = v58;
        v30 = v57;
        goto LABEL_15;
      }

      v28 = _stringCompareWithSmolCheck(_:_:expecting:)();

      v29 = v58;
      v30 = v57;
      if (v28)
      {

        v31 = v69;
LABEL_15:
        v43 = v55;
        EntityProperty.wrappedValue.getter();
        v44 = v56;
        EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v43, 1, v56);
        v46 = v67;
        a2 = v68;
        v47 = v62;
        if (!EnumTagSinglePayload)
        {
          (*(v29 + 16))(v30, v43, v44);
          outlined destroy of IntentApplication?(v43, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
          a2 = IntentFile.data.getter();

          (*(v29 + 8))(v30, v44);
          return a2;
        }

        outlined destroy of IntentApplication?(v43, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
        (*(v46 + 104))(v60, *MEMORY[0x277D370A8], v47);
        (*(v65 + 104))(v61, *MEMORY[0x277D37088], v66);
        (*(v64 + 16))(v31, v70, a2);
        goto LABEL_19;
      }
    }

    else
    {
    }

    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logging.search);
    v34 = v63;
    v33 = v64;
    v35 = v68;
    v59 = *(v64 + 16);
    v59(v63, v70, v68);

    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.info.getter();

    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v72 = v58;
      *v38 = 136315394;
      v39 = v34;
      v40 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v38 + 4) = v40;
      *(v38 + 12) = 2080;
      lazy protocol witness table accessor for type SearchSpotlightEntity and conformance SearchSpotlightEntity(&lazy protocol witness table cache variable for type UTType and conformance UTType);
      dispatch thunk of CustomStringConvertible.description.getter();
      (*(v33 + 8))(v39, v35);
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v38 + 14) = v41;
      _os_log_impl(&dword_25D85C000, v36, v37, "Transferable: Spotlight %s does not match requested contentType %s", v38, 0x16u);
      v42 = v58;
      swift_arrayDestroy();
      MEMORY[0x25F8A1050](v42, -1, -1);
      MEMORY[0x25F8A1050](v38, -1, -1);
    }

    else
    {

      (*(v33 + 8))(v34, v35);
    }

    v48 = v69;
    v49 = v61;
    v51 = v65;
    v50 = v66;
    (*(v67 + 104))(v60, *MEMORY[0x277D370B0], v62);
    v52 = *(v51 + 104);
    a2 = (v51 + 104);
    v52(v49, *MEMORY[0x277D37088], v50);
    v59(v48, v70, v35);
LABEL_19:
    type metadata accessor for SearchTransferabilityError();
    lazy protocol witness table accessor for type SearchSpotlightEntity and conformance SearchSpotlightEntity(&lazy protocol witness table cache variable for type SearchTransferabilityError and conformance SearchTransferabilityError);
    swift_allocError();
    SearchTransferabilityError.init(code:sourceResultType:targetTransferType:)();
    swift_willThrow();
  }

  return a2;
}

void static SearchSpotlightEntity.transferRepresentation.getter()
{
  OUTLINED_FUNCTION_155();
  v47 = v1;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable18DataRepresentationVy10OmniSearch0F15SpotlightEntityVG_A4GtMd, &_s16CoreTransferable18DataRepresentationVy10OmniSearch0F15SpotlightEntityVG_A4GtMR);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_49_3();
  v46 = v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s22UniformTypeIdentifiers6UTTypeVSgMd, &_s22UniformTypeIdentifiers6UTTypeVSgMR);
  OUTLINED_FUNCTION_114(v4);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  v6 = type metadata accessor for UTType();
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_36();
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16CoreTransferable18DataRepresentationVy10OmniSearch0F15SpotlightEntityVGMd, &_s16CoreTransferable18DataRepresentationVy10OmniSearch0F15SpotlightEntityVGMR);
  OUTLINED_FUNCTION_14();
  v49 = v9;
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_109();
  v42 = v11 - v12;
  MEMORY[0x28223BE20](v13);
  v43 = &v41 - v14;
  MEMORY[0x28223BE20](v15);
  v44 = &v41 - v16;
  MEMORY[0x28223BE20](v17);
  v45 = &v41 - v18;
  MEMORY[0x28223BE20](v19);
  OUTLINED_FUNCTION_59_7();
  v48 = v0;
  static UTType.data.getter();
  OUTLINED_FUNCTION_44_0();
  __swift_storeEnumTagSinglePayload(v20, v21, v22, v6);
  UTType.init(exportedAs:conformingTo:)();
  type metadata accessor for SearchSpotlightEntity(0);
  OUTLINED_FUNCTION_1_36();
  v24 = lazy protocol witness table accessor for type SearchSpotlightEntity and conformance SearchSpotlightEntity(v23);
  OUTLINED_FUNCTION_19_12(v24, &async function pointer to closure #1 in static SearchSpotlightEntity.transferRepresentation.getter);
  v25 = static UTType.emailMessage.getter();
  OUTLINED_FUNCTION_19_12(v25, &async function pointer to partial apply for closure #2 in static SearchSpotlightEntity.transferRepresentation.getter);
  v26 = static UTType.message.getter();
  OUTLINED_FUNCTION_19_12(v26, &async function pointer to partial apply for closure #3 in static SearchSpotlightEntity.transferRepresentation.getter);
  v27 = static UTType.calendarEvent.getter();
  OUTLINED_FUNCTION_19_12(v27, &async function pointer to partial apply for closure #4 in static SearchSpotlightEntity.transferRepresentation.getter);
  v28 = static UTType.contact.getter();
  OUTLINED_FUNCTION_19_12(v28, &async function pointer to partial apply for closure #5 in static SearchSpotlightEntity.transferRepresentation.getter);
  v29 = v50[12];
  v30 = v50[16];
  v31 = v50[20];
  v41 = v50[24];
  v32 = *(v49 + 16);
  v33 = v46;
  v32(v46, v48, v8);
  v34 = v45;
  v32(v33 + v29, v45, v8);
  v35 = v33 + v30;
  v36 = v44;
  v32(v35, v44, v8);
  v37 = v33 + v31;
  v38 = v43;
  v32(v37, v43, v8);
  v39 = v42;
  v32(v33 + v41, v42, v8);
  OUTLINED_FUNCTION_107();
  TupleTransferRepresentation.init(_:)();
  v40 = *(v49 + 8);
  v40(v39, v8);
  v40(v38, v8);
  v40(v36, v8);
  v40(v34, v8);
  v40(v48, v8);
  OUTLINED_FUNCTION_148();
}

uint64_t closure #1 in static SearchSpotlightEntity.transferRepresentation.getter(uint64_t a1)
{
  v1[5] = a1;
  v2 = type metadata accessor for UTType();
  v1[6] = v2;
  v1[7] = *(v2 - 8);
  v1[8] = swift_task_alloc();
  v3 = type metadata accessor for SearchResultType();
  v1[9] = v3;
  v1[10] = *(v3 - 8);
  v1[11] = swift_task_alloc();
  v4 = type metadata accessor for SearchTransferabilityError.Code();
  v1[12] = v4;
  v1[13] = *(v4 - 8);
  v1[14] = swift_task_alloc();
  v5 = type metadata accessor for IntentFile();
  v1[15] = v5;
  v1[16] = *(v5 - 8);
  v1[17] = swift_task_alloc();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  v1[18] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #1 in static SearchSpotlightEntity.transferRepresentation.getter);
}

{
  v2 = v1[18];
  v3 = v1[15];
  EntityProperty.wrappedValue.getter();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v2, 1, v3);
  v5 = v1[18];
  if (EnumTagSinglePayload)
  {
    v7 = v1[13];
    v6 = v1[14];
    v9 = v1[11];
    v8 = v1[12];
    v10 = v1[9];
    v11 = v1[10];
    outlined destroy of IntentApplication?(v1[18], &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
    (*(v7 + 104))(v6, *MEMORY[0x277D370A8], v8);
    (*(v11 + 104))(v9, *MEMORY[0x277D37088], v10);
    if (one-time initialization token for searchToolExportedExperiences != -1)
    {
      OUTLINED_FUNCTION_38_11(&one-time initialization token for searchToolExportedExperiences);
    }

    v13 = v1[7];
    v12 = v1[8];
    v14 = v1[6];
    v15 = __swift_project_value_buffer(v14, static UTType.searchToolExportedExperiences);
    swift_beginAccess();
    (*(v13 + 16))(v12, v15, v14);
    type metadata accessor for SearchTransferabilityError();
    lazy protocol witness table accessor for type SearchSpotlightEntity and conformance SearchSpotlightEntity(&lazy protocol witness table cache variable for type SearchTransferabilityError and conformance SearchTransferabilityError);
    swift_allocError();
    OUTLINED_FUNCTION_33_13();
    SearchTransferabilityError.init(code:sourceResultType:targetTransferType:)();
    swift_willThrow();

    v16 = v1[1];

    return v16();
  }

  else
  {
    v18 = OUTLINED_FUNCTION_107();
    v19(v18);
    outlined destroy of IntentApplication?(v5, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
    v20 = IntentFile.data.getter();
    v22 = v21;
    v23 = OUTLINED_FUNCTION_88();
    v24(v23);

    v25 = v1[1];

    return v25(v20, v22);
  }
}

uint64_t closure #2 in static SearchSpotlightEntity.transferRepresentation.getter(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for UTType();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #2 in static SearchSpotlightEntity.transferRepresentation.getter);
}

void closure #2 in static SearchSpotlightEntity.transferRepresentation.getter()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_38_14();
  static UTType.emailMessage.getter();
  v0 = OUTLINED_FUNCTION_107();
  static SearchSpotlightEntity.performTransfer(to:entity:)(v0, v1);
  OUTLINED_FUNCTION_34_16();
  v2 = OUTLINED_FUNCTION_37_9();
  v3(v2);

  OUTLINED_FUNCTION_14_12();
  OUTLINED_FUNCTION_85_7();

  __asm { BRAA            X3, X16 }
}

uint64_t closure #3 in static SearchSpotlightEntity.transferRepresentation.getter(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for UTType();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #3 in static SearchSpotlightEntity.transferRepresentation.getter);
}

void closure #3 in static SearchSpotlightEntity.transferRepresentation.getter()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_38_14();
  static UTType.message.getter();
  v0 = OUTLINED_FUNCTION_107();
  static SearchSpotlightEntity.performTransfer(to:entity:)(v0, v1);
  OUTLINED_FUNCTION_34_16();
  v2 = OUTLINED_FUNCTION_37_9();
  v3(v2);

  OUTLINED_FUNCTION_14_12();
  OUTLINED_FUNCTION_85_7();

  __asm { BRAA            X3, X16 }
}

uint64_t closure #4 in static SearchSpotlightEntity.transferRepresentation.getter(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for UTType();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #4 in static SearchSpotlightEntity.transferRepresentation.getter);
}

void closure #4 in static SearchSpotlightEntity.transferRepresentation.getter()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_38_14();
  static UTType.calendarEvent.getter();
  v0 = OUTLINED_FUNCTION_107();
  static SearchSpotlightEntity.performTransfer(to:entity:)(v0, v1);
  OUTLINED_FUNCTION_34_16();
  v2 = OUTLINED_FUNCTION_37_9();
  v3(v2);

  OUTLINED_FUNCTION_14_12();
  OUTLINED_FUNCTION_85_7();

  __asm { BRAA            X3, X16 }
}

uint64_t closure #5 in static SearchSpotlightEntity.transferRepresentation.getter(uint64_t a1)
{
  v1[2] = a1;
  v2 = type metadata accessor for UTType();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();

  return MEMORY[0x2822009F8](closure #5 in static SearchSpotlightEntity.transferRepresentation.getter);
}

void closure #5 in static SearchSpotlightEntity.transferRepresentation.getter()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_38_14();
  static UTType.contact.getter();
  v0 = OUTLINED_FUNCTION_107();
  static SearchSpotlightEntity.performTransfer(to:entity:)(v0, v1);
  OUTLINED_FUNCTION_34_16();
  v2 = OUTLINED_FUNCTION_37_9();
  v3(v2);

  OUTLINED_FUNCTION_14_12();
  OUTLINED_FUNCTION_85_7();

  __asm { BRAA            X3, X16 }
}

uint64_t SearchSpotlightEntity.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6449656C646E7562 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6174614464726163 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x746E656D75636F64 && a2 == 0xEE00656372756F53;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6E65697265707865 && a2 == 0xEE00656C69466563;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else
          {
            v10 = a1 == 0xD000000000000015 && 0x800000025DBF21C0 == a2;
            if (v10 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
            {

              return 5;
            }

            else
            {
              v11 = a1 == 0x4C5255656C6966 && a2 == 0xE700000000000000;
              if (v11 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
              {

                return 6;
              }

              else
              {
                v12 = a1 == 0x6D6D6F436E65706FLL && a2 == 0xEB00000000646E61;
                if (v12 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                {

                  return 7;
                }

                else
                {
                  v13 = a1 == 0xD000000000000012 && 0x800000025DBF21E0 == a2;
                  if (v13 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                  {

                    return 8;
                  }

                  else
                  {
                    v14 = a1 == 0x6552656372756F73 && a2 == 0xEC000000746C7573;
                    if (v14 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                    {

                      return 9;
                    }

                    else
                    {
                      v15 = a1 == 25705 && a2 == 0xE200000000000000;
                      if (v15 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
                      {

                        return 10;
                      }

                      else if (a1 == 0xD000000000000021 && 0x800000025DBF1950 == a2)
                      {

                        return 11;
                      }

                      else
                      {
                        v17 = _stringCompareWithSmolCheck(_:_:expecting:)();

                        if (v17)
                        {
                          return 11;
                        }

                        else
                        {
                          return 12;
                        }
                      }
                    }
                  }
                }
              }
            }
          }
        }
      }
    }
  }
}

unint64_t SearchSpotlightEntity.CodingKeys.stringValue.getter(char a1)
{
  result = 0x6449656C646E7562;
  switch(a1)
  {
    case 1:
      result = 0x6174614464726163;
      break;
    case 2:
      result = 0x746E656D75636F64;
      break;
    case 3:
      result = 0x656C746974;
      break;
    case 4:
      result = 0x6E65697265707865;
      break;
    case 5:
      result = 0xD000000000000015;
      break;
    case 6:
      result = 0x4C5255656C6966;
      break;
    case 7:
      result = 0x6D6D6F436E65706FLL;
      break;
    case 8:
      result = 0xD000000000000012;
      break;
    case 9:
      result = 0x6552656372756F73;
      break;
    case 10:
      result = 25705;
      break;
    case 11:
      result = 0xD000000000000021;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SearchSpotlightEntity.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = SearchSpotlightEntity.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchSpotlightEntity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchSpotlightEntity.CodingKeys and conformance SearchSpotlightEntity.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchSpotlightEntity.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchSpotlightEntity.CodingKeys and conformance SearchSpotlightEntity.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchSpotlightEntity.encode(to:)(void *a1)
{
  v4 = v1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E15SpotlightEntityV10CodingKeys33_0679578E6E16257B977A964AA59C93FBLLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E15SpotlightEntityV10CodingKeys33_0679578E6E16257B977A964AA59C93FBLLOGMR);
  OUTLINED_FUNCTION_14();
  v8 = v7;
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_59_4();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SearchSpotlightEntity.CodingKeys and conformance SearchSpotlightEntity.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  lazy protocol witness table accessor for type EntityProperty<String?> and conformance <> EntityProperty<A>();
  OUTLINED_FUNCTION_8_18();
  if (!v2)
  {
    v11 = *(v4 + 8);
    v12 = *(v4 + 16);
    outlined copy of Data?(v11, v12);
    lazy protocol witness table accessor for type Data and conformance Data();
    OUTLINED_FUNCTION_11_15();
    OUTLINED_FUNCTION_26_8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v11, v12);
    OUTLINED_FUNCTION_8_18();
    OUTLINED_FUNCTION_8_18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMd, &_s10AppIntents14EntityPropertyCyAA10IntentFileVSgGMR);
    lazy protocol witness table accessor for type EntityProperty<IntentFile?> and conformance <> EntityProperty<A>();
    OUTLINED_FUNCTION_8_18();
    OUTLINED_FUNCTION_8_18();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMR);
    lazy protocol witness table accessor for type EntityProperty<URL?> and conformance <> EntityProperty<A>();
    OUTLINED_FUNCTION_11_15();
    OUTLINED_FUNCTION_26_8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    OUTLINED_FUNCTION_8_18();
    OUTLINED_FUNCTION_26_8();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    type metadata accessor for SearchSpotlightEntity(0);
    type metadata accessor for SearchResult(0);
    lazy protocol witness table accessor for type SearchSpotlightEntity and conformance SearchSpotlightEntity(&lazy protocol witness table cache variable for type SearchResult and conformance SearchResult);
    OUTLINED_FUNCTION_50_9();
    OUTLINED_FUNCTION_26_8();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    OUTLINED_FUNCTION_26_8();
    KeyedEncodingContainer.encode(_:forKey:)();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGGMd, &_s10AppIntents14EntityPropertyCySaySSGGMR);
    lazy protocol witness table accessor for type EntityProperty<[String]> and conformance <> EntityProperty<A>();
    OUTLINED_FUNCTION_11_15();
    OUTLINED_FUNCTION_26_8();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v3, v6);
}

void static SearchSpotlightEntity.== infix(_:_:)()
{
  OUTLINED_FUNCTION_155();
  v3 = v2;
  OUTLINED_FUNCTION_42_2();
  v4 = type metadata accessor for URL();
  OUTLINED_FUNCTION_14();
  v6 = v5;
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_36();
  v138 = v9 - v8;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSg_ADtMd, &_s10Foundation3URLVSg_ADtMR);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v10);
  v12 = &v135 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
  v14 = OUTLINED_FUNCTION_114(v13);
  MEMORY[0x28223BE20](v14);
  OUTLINED_FUNCTION_39_0();
  v139 = v15;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v16);
  v147 = &v135 - v17;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v18);
  OUTLINED_FUNCTION_14_2();
  v148 = v19;
  v20 = OUTLINED_FUNCTION_78_0();
  v145 = type metadata accessor for SearchResult(v20);
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_36();
  v140 = v23 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_114(v24);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v25);
  OUTLINED_FUNCTION_49_3();
  v142 = v26;
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSg_ADtMd, &_s10OmniSearch0B6ResultVSg_ADtMR);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v27);
  OUTLINED_FUNCTION_49_3();
  v146 = v28;
  OUTLINED_FUNCTION_78_0();
  type metadata accessor for IntentFile();
  OUTLINED_FUNCTION_14();
  v149 = v30;
  v150 = v29;
  MEMORY[0x28223BE20](v29);
  OUTLINED_FUNCTION_36();
  v33 = v32 - v31;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSg_ADtMd, &_s10AppIntents10IntentFileVSg_ADtMR);
  OUTLINED_FUNCTION_17();
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v35);
  OUTLINED_FUNCTION_49_3();
  v151 = v36;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  v38 = OUTLINED_FUNCTION_114(v37);
  MEMORY[0x28223BE20](v38);
  OUTLINED_FUNCTION_109();
  v41 = v39 - v40;
  MEMORY[0x28223BE20](v42);
  OUTLINED_FUNCTION_191_1();
  MEMORY[0x28223BE20](v43);
  v143 = type metadata accessor for SearchSpotlightEntity(0);
  v44 = *(v143 + 56);
  v152 = v0;
  v153 = v3;
  v45 = *(v0 + v44);
  v46 = *(v0 + v44 + 8);
  v47 = (v3 + v44);
  v48 = v45 == *v47 && v46 == v47[1];
  if (!v48 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    goto LABEL_39;
  }

  v136 = v4;
  v137 = v6;
  v135 = v12;
  v49 = v152;
  EntityProperty.wrappedValue.getter();
  v51 = v154;
  v50 = v155;
  EntityProperty.wrappedValue.getter();
  if (v50)
  {
    if (!v155)
    {
      goto LABEL_38;
    }

    if (v51 == v154 && v50 == v155)
    {
    }

    else
    {
      v53 = OUTLINED_FUNCTION_53_8();

      if ((v53 & 1) == 0)
      {
        goto LABEL_39;
      }
    }
  }

  else if (v155)
  {
    goto LABEL_38;
  }

  EntityProperty.wrappedValue.getter();
  v55 = v154;
  v54 = v155;
  EntityProperty.wrappedValue.getter();
  if (v54)
  {
    if (!v155)
    {
      goto LABEL_38;
    }

    if (v55 == v154 && v54 == v155)
    {
    }

    else
    {
      v57 = OUTLINED_FUNCTION_53_8();

      if ((v57 & 1) == 0)
      {
        goto LABEL_39;
      }
    }
  }

  else if (v155)
  {
    goto LABEL_38;
  }

  EntityProperty.wrappedValue.getter();
  v59 = v154;
  v58 = v155;
  EntityProperty.wrappedValue.getter();
  if (!v58)
  {
    if (!v155)
    {
      goto LABEL_41;
    }

LABEL_38:

    goto LABEL_39;
  }

  if (!v155)
  {
    goto LABEL_38;
  }

  if (v59 == v154 && v58 == v155)
  {
  }

  else
  {
    v61 = OUTLINED_FUNCTION_53_8();

    if ((v61 & 1) == 0)
    {
      goto LABEL_39;
    }
  }

LABEL_41:
  v62 = *(v49 + 80);
  v63 = *(v153 + 80);
  if (v62)
  {
    v64 = v137;
    if (!v63)
    {
      goto LABEL_39;
    }

    v65 = *(v49 + 72) == *(v153 + 72) && v62 == v63;
    if (!v65 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      goto LABEL_39;
    }
  }

  else
  {
    v64 = v137;
    if (v63)
    {
      goto LABEL_39;
    }
  }

  EntityProperty.wrappedValue.getter();
  EntityProperty.wrappedValue.getter();
  v66 = *(v34 + 48);
  v67 = v151;
  OUTLINED_FUNCTION_33_13();
  outlined init with copy of SpotlightRankingItem?(v68, v69, v70, &_s10AppIntents10IntentFileVSgMR);
  outlined init with copy of SpotlightRankingItem?(v1, v67 + v66, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  v71 = v150;
  OUTLINED_FUNCTION_166(v67, 1, v150);
  if (v48)
  {
    outlined destroy of IntentApplication?(v1, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
    v72 = OUTLINED_FUNCTION_62_3();
    v73 = v151;
    outlined destroy of IntentApplication?(v72, v74, &_s10AppIntents10IntentFileVSgMR);
    OUTLINED_FUNCTION_166(v73 + v66, 1, v71);
    if (v48)
    {
      outlined destroy of IntentApplication?(v73, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
      goto LABEL_60;
    }

LABEL_58:
    v82 = &_s10AppIntents10IntentFileVSg_ADtMd;
    v83 = &_s10AppIntents10IntentFileVSg_ADtMR;
    v84 = v73;
LABEL_79:
    outlined destroy of IntentApplication?(v84, v82, v83);
    goto LABEL_39;
  }

  outlined init with copy of SpotlightRankingItem?(v67, v41, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  OUTLINED_FUNCTION_166(v67 + v66, 1, v71);
  if (v75)
  {
    OUTLINED_FUNCTION_33_13();
    outlined destroy of IntentApplication?(v76, v77, v78);
    OUTLINED_FUNCTION_33_13();
    v73 = v151;
    outlined destroy of IntentApplication?(v79, v80, v81);
    (*(v149 + 8))(v41, v71);
    goto LABEL_58;
  }

  v85 = v149;
  (*(v149 + 32))(v33, v67 + v66, v71);
  lazy protocol witness table accessor for type SearchSpotlightEntity and conformance SearchSpotlightEntity(&lazy protocol witness table cache variable for type IntentFile and conformance IntentFile);
  v86 = dispatch thunk of static Equatable.== infix(_:_:)();
  v87 = *(v85 + 8);
  v87(v33, v71);
  outlined destroy of IntentApplication?(v1, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  v88 = OUTLINED_FUNCTION_34_11();
  outlined destroy of IntentApplication?(v88, v89, &_s10AppIntents10IntentFileVSgMR);
  v90 = OUTLINED_FUNCTION_53_3();
  (v87)(v90);
  v64 = v137;
  outlined destroy of IntentApplication?(v151, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR);
  if ((v86 & 1) == 0)
  {
    goto LABEL_39;
  }

LABEL_60:
  v91 = *(v144 + 48);
  v92 = v146;
  OUTLINED_FUNCTION_50_9();
  outlined init with copy of SpotlightRankingItem?(v93, v94, v95, v96);
  OUTLINED_FUNCTION_50_9();
  outlined init with copy of SpotlightRankingItem?(v97, v98, v99, v100);
  v101 = v145;
  OUTLINED_FUNCTION_166(v92, 1, v145);
  if (!v48)
  {
    outlined init with copy of SpotlightRankingItem?(v92, v142, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    OUTLINED_FUNCTION_166(v92 + v91, 1, v101);
    v103 = v135;
    v102 = v136;
    v105 = v147;
    v104 = v148;
    if (!v106)
    {
      _s10OmniSearch0B15SpotlightEntityVWObTm_0(v92 + v91, v140, type metadata accessor for SearchResult);
      static SearchResult.== infix(_:_:)();
      v108 = v107;
      _s10OmniSearch0B10ResultItemOWOhTm_4();
      OUTLINED_FUNCTION_37_5();
      _s10OmniSearch0B10ResultItemOWOhTm_4();
      outlined destroy of IntentApplication?(v92, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
      if ((v108 & 1) == 0)
      {
        goto LABEL_39;
      }

      goto LABEL_70;
    }

    OUTLINED_FUNCTION_0_35();
    _s10OmniSearch0B10ResultItemOWOhTm_4();
    goto LABEL_68;
  }

  OUTLINED_FUNCTION_166(v92 + v91, 1, v101);
  v103 = v135;
  v102 = v136;
  v105 = v147;
  v104 = v148;
  if (!v48)
  {
LABEL_68:
    v82 = &_s10OmniSearch0B6ResultVSg_ADtMd;
    v83 = &_s10OmniSearch0B6ResultVSg_ADtMR;
    v84 = v92;
    goto LABEL_79;
  }

  outlined destroy of IntentApplication?(v92, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
LABEL_70:
  EntityProperty.wrappedValue.getter();
  EntityProperty.wrappedValue.getter();
  v109 = *(v141 + 48);
  OUTLINED_FUNCTION_50_9();
  outlined init with copy of SpotlightRankingItem?(v110, v111, v112, v113);
  OUTLINED_FUNCTION_50_9();
  outlined init with copy of SpotlightRankingItem?(v114, v115, v116, v117);
  OUTLINED_FUNCTION_166(v103, 1, v102);
  if (!v48)
  {
    v124 = v139;
    outlined init with copy of SpotlightRankingItem?(v103, v139, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
    OUTLINED_FUNCTION_166(v103 + v109, 1, v102);
    if (!v125)
    {
      v132 = v103 + v109;
      v133 = v138;
      (*(v64 + 32))(v138, v132, v102);
      lazy protocol witness table accessor for type SearchSpotlightEntity and conformance SearchSpotlightEntity(&lazy protocol witness table cache variable for type URL and conformance URL);
      dispatch thunk of static Equatable.== infix(_:_:)();
      v134 = *(v64 + 8);
      v134(v133, v102);
      outlined destroy of IntentApplication?(v105, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      outlined destroy of IntentApplication?(v104, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      v134(v124, v102);
      outlined destroy of IntentApplication?(v103, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
      goto LABEL_39;
    }

    OUTLINED_FUNCTION_33_13();
    outlined destroy of IntentApplication?(v126, v127, v128);
    OUTLINED_FUNCTION_33_13();
    outlined destroy of IntentApplication?(v129, v130, v131);
    (*(v64 + 8))(v124, v102);
    goto LABEL_78;
  }

  OUTLINED_FUNCTION_33_13();
  outlined destroy of IntentApplication?(v118, v119, v120);
  OUTLINED_FUNCTION_33_13();
  outlined destroy of IntentApplication?(v121, v122, v123);
  OUTLINED_FUNCTION_166(v103 + v109, 1, v102);
  if (!v48)
  {
LABEL_78:
    v82 = &_s10Foundation3URLVSg_ADtMd;
    v83 = &_s10Foundation3URLVSg_ADtMR;
    v84 = v103;
    goto LABEL_79;
  }

  outlined destroy of IntentApplication?(v103, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR);
LABEL_39:
  OUTLINED_FUNCTION_148();
}

uint64_t (*protocol witness for SpotlightItemProviding.encodedSearchableItem.modify in conformance SearchSpotlightEntity(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*protocol witness for SpotlightItemProviding.openCommand.modify in conformance SearchSpotlightEntity(void *a1))()
{
  v2 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v2;
  v2[4] = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t protocol witness for Identifiable.id.getter in conformance SearchSpotlightEntity@<X0>(uint64_t *a1@<X8>)
{
  result = SearchSpotlightEntity.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance SearchSpotlightEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchSpotlightEntity and conformance SearchSpotlightEntity(&lazy protocol witness table cache variable for type SearchSpotlightEntity and conformance SearchSpotlightEntity);

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t protocol witness for InstanceDisplayRepresentable.displayRepresentation(with:) in conformance SearchSpotlightEntity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v9 = swift_task_alloc();
  *(v4 + 16) = v9;
  *v9 = v4;
  v9[1] = partial apply for closure #1 in SmartChunkingPreprocessing.preprocess(data:query:);

  return MEMORY[0x28210C4A0](a1, a2, a3, a4);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance SearchSpotlightEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchSpotlightEntity and conformance SearchSpotlightEntity(&lazy protocol witness table cache variable for type SearchSpotlightEntity and conformance SearchSpotlightEntity);

  return MEMORY[0x28210C4B8](a1, v2);
}

Swift::Int SearchSpotlightEntity.SearchSpotlightEntityError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x25F8A0680](v1);
  return Hasher._finalize()();
}

uint64_t CSSearchableItem.isMailMessageItem.getter()
{
  v1 = outlined bridged method (pb) of @objc CSSearchableItem.bundleID.getter(v0);
  if (!v2)
  {
    goto LABEL_7;
  }

  if (v1 == 0xD000000000000014 && v2 == 0x800000025DBF1CF0)
  {
    goto LABEL_20;
  }

  v4 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v4 & 1) == 0)
  {
LABEL_7:
    v5 = outlined bridged method (pb) of @objc CSSearchableItem.bundleID.getter(v0);
    if (v6)
    {
      if (v5 == 0xD00000000000001DLL && v6 == 0x800000025DBF2150)
      {
        goto LABEL_20;
      }

      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if (v8)
      {
        goto LABEL_13;
      }
    }

    v10 = outlined bridged method (pb) of @objc CSSearchableItem.bundleID.getter(v0);
    if (!v11)
    {
      v9 = 0;
      return v9 & 1;
    }

    if (v10 != 0xD000000000000013 || v11 != 0x800000025DBF1D10)
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_21:

      return v9 & 1;
    }

LABEL_20:
    v9 = 1;
    goto LABEL_21;
  }

LABEL_13:
  v9 = 1;
  return v9 & 1;
}

void SearchSpotlightEntity.asNLGEntity.getter()
{
  OUTLINED_FUNCTION_155();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = OUTLINED_FUNCTION_114(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_109();
  v8 = v6 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = v27 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  v13 = OUTLINED_FUNCTION_114(v12);
  MEMORY[0x28223BE20](v13);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_191_1();
  MEMORY[0x28223BE20](v14);
  v16 = v27 - v15;
  SearchNLGEntity.init()(v3);
  EntityProperty.wrappedValue.getter();
  EntityProperty.wrappedValue.setter();
  EntityProperty.wrappedValue.getter();
  EntityProperty.wrappedValue.setter();
  v17 = *(type metadata accessor for SearchSpotlightEntity(0) + 52);
  outlined init with copy of SpotlightRankingItem?(v0 + v17, v16, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  v18 = type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_166(v16, 1, v18);
  if (v19)
  {
    outlined destroy of IntentApplication?(v16, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    v21 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
    v20 = CodableNSSecureCoding.wrappedValue.getter();
    OUTLINED_FUNCTION_0_35();
    _s10OmniSearch0B10ResultItemOWOhTm_4();
    v21 = CSSearchableItem.senderNames.getter();
  }

  v27[0] = v21;
  EntityProperty.wrappedValue.setter();
  outlined init with copy of SpotlightRankingItem?(v0 + v17, v1, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_166(v1, 1, v18);
  if (v19)
  {
    outlined destroy of IntentApplication?(v1, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    type metadata accessor for Date();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v22, v23, v24, v25);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
    v26 = CodableNSSecureCoding.wrappedValue.getter();
    OUTLINED_FUNCTION_0_35();
    _s10OmniSearch0B10ResultItemOWOhTm_4();
    CSSearchableItem.contentCreationDate.getter(v11);
  }

  outlined init with copy of SpotlightRankingItem?(v11, v8, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  EntityProperty.wrappedValue.setter();
  outlined destroy of IntentApplication?(v11, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_148();
}

void SearchSpotlightEntity.asCATEntity.getter()
{
  OUTLINED_FUNCTION_155();
  v3 = v2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  v5 = OUTLINED_FUNCTION_114(v4);
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_39_0();
  v35 = v6;
  OUTLINED_FUNCTION_174();
  MEMORY[0x28223BE20](v7);
  OUTLINED_FUNCTION_14_2();
  v34 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  v10 = OUTLINED_FUNCTION_114(v9);
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_191_1();
  MEMORY[0x28223BE20](v11);
  v13 = &v34 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v34 - v15;
  SearchCATEntity.init()(v3);
  EntityProperty.wrappedValue.getter();
  v18 = v36;
  v17 = v37;
  type metadata accessor for SearchCATEntity(0);
  v36 = v18;
  v37 = v17;
  EntityProperty.wrappedValue.setter();
  v19 = *(type metadata accessor for SearchSpotlightEntity(0) + 52);
  outlined init with copy of SpotlightRankingItem?(v0 + v19, v16, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  v20 = type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_166(v16, 1, v20);
  if (v21)
  {
    outlined destroy of IntentApplication?(v16, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    v22 = 0;
    v23 = 0;
  }

  else
  {
    SearchResultItem.type.getter(&v36);
    OUTLINED_FUNCTION_0_35();
    _s10OmniSearch0B10ResultItemOWOhTm_4();
    SearchResultKey.rawValue.getter();
  }

  v36 = v22;
  v37 = v23;
  EntityProperty.wrappedValue.setter();
  EntityProperty.wrappedValue.getter();
  EntityProperty.wrappedValue.setter();
  outlined init with copy of SpotlightRankingItem?(v0 + v19, v13, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_166(v13, 1, v20);
  if (v21)
  {
    outlined destroy of IntentApplication?(v13, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    v25 = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
    v24 = CodableNSSecureCoding.wrappedValue.getter();
    OUTLINED_FUNCTION_0_35();
    _s10OmniSearch0B10ResultItemOWOhTm_4();
    v25 = CSSearchableItem.senderNames.getter();
  }

  v36 = v25;
  EntityProperty.wrappedValue.setter();
  outlined init with copy of SpotlightRankingItem?(v0 + v19, v1, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_166(v1, 1, v20);
  if (v21)
  {
    outlined destroy of IntentApplication?(v1, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    type metadata accessor for Date();
    v31 = v34;
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v26, v27, v28, v29);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
    v30 = CodableNSSecureCoding.wrappedValue.getter();
    OUTLINED_FUNCTION_0_35();
    _s10OmniSearch0B10ResultItemOWOhTm_4();
    v31 = v34;
    CSSearchableItem.contentCreationDate.getter(v34);
  }

  outlined init with copy of SpotlightRankingItem?(v31, v35, &_s10Foundation4DateVSgMd, &_s10Foundation4DateVSgMR);
  EntityProperty.wrappedValue.setter();
  v32 = OUTLINED_FUNCTION_53_3();
  outlined destroy of IntentApplication?(v32, v33, &_s10Foundation4DateVSgMR);
  OUTLINED_FUNCTION_148();
}

uint64_t protocol witness for SearchCATEntityConvertible.asCATEntity.getter in conformance SearchSpotlightEntity()
{
  SearchSpotlightEntity.asCATEntity.getter();
  v1 = *(v0 + 8);

  return v1();
}

uint64_t specialized closure #1 in Sequence<>.contains(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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

uint64_t specialized closure #1 in Sequence<>.contains(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UTType();
  lazy protocol witness table accessor for type SearchSpotlightEntity and conformance SearchSpotlightEntity(&lazy protocol witness table cache variable for type UTType and conformance UTType);
  return dispatch thunk of static Equatable.== infix(_:_:)() & 1;
}

uint64_t outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.authorNames.getter(void *a1)
{
  v2 = [a1 authorNames];

  if (!v2)
  {
    return 0;
  }

  v3 = static Array._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined bridged method (ob) of @objc CSSearchableItemAttributeSet.title.getter(void *a1, SEL *a2)
{
  v3 = [a1 *a2];

  if (v3)
  {
    static String._unconditionallyBridgeFromObjectiveC(_:)();
    OUTLINED_FUNCTION_67_8();
  }

  return OUTLINED_FUNCTION_88();
}

uint64_t _s10OmniSearch0B6ResultVWOcTm_5(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_17();
  v4 = OUTLINED_FUNCTION_94();
  v5(v4);
  return a2;
}

uint64_t _s10OmniSearch0B10ResultItemOWOhTm_4()
{
  v1 = OUTLINED_FUNCTION_42_2();
  v2(v1);
  OUTLINED_FUNCTION_17();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t lazy protocol witness table accessor for type SearchSpotlightEntity and conformance SearchSpotlightEntity(uint64_t a1)
{
  result = OUTLINED_FUNCTION_6_6(a1);
  if (!result)
  {
    v3(255);
    result = swift_getWitnessTable();
    atomic_store(result, v1);
  }

  return result;
}

uint64_t partial apply for closure #2 in static SearchSpotlightEntity.transferRepresentation.getter()
{
  OUTLINED_FUNCTION_48();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_73(v1);

  return closure #2 in static SearchSpotlightEntity.transferRepresentation.getter(v3);
}

{
  OUTLINED_FUNCTION_93();
  OUTLINED_FUNCTION_52();
  v3 = *v2;
  OUTLINED_FUNCTION_11();
  *v4 = v3;

  v5 = *(v3 + 8);

  return v5(v1, v0);
}

uint64_t partial apply for closure #3 in static SearchSpotlightEntity.transferRepresentation.getter()
{
  OUTLINED_FUNCTION_48();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_73(v1);

  return closure #3 in static SearchSpotlightEntity.transferRepresentation.getter(v3);
}

uint64_t partial apply for closure #4 in static SearchSpotlightEntity.transferRepresentation.getter()
{
  OUTLINED_FUNCTION_48();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_73(v1);

  return closure #4 in static SearchSpotlightEntity.transferRepresentation.getter(v3);
}

uint64_t partial apply for closure #5 in static SearchSpotlightEntity.transferRepresentation.getter()
{
  OUTLINED_FUNCTION_48();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_63(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_73(v1);

  return closure #5 in static SearchSpotlightEntity.transferRepresentation.getter(v3);
}

unint64_t lazy protocol witness table accessor for type SearchSpotlightEntity.CodingKeys and conformance SearchSpotlightEntity.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchSpotlightEntity.CodingKeys and conformance SearchSpotlightEntity.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchSpotlightEntity.CodingKeys and conformance SearchSpotlightEntity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchSpotlightEntity.CodingKeys and conformance SearchSpotlightEntity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchSpotlightEntity.CodingKeys and conformance SearchSpotlightEntity.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchSpotlightEntity.CodingKeys and conformance SearchSpotlightEntity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchSpotlightEntity.CodingKeys and conformance SearchSpotlightEntity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchSpotlightEntity.CodingKeys and conformance SearchSpotlightEntity.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchSpotlightEntity.CodingKeys and conformance SearchSpotlightEntity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchSpotlightEntity.CodingKeys and conformance SearchSpotlightEntity.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchSpotlightEntity.CodingKeys and conformance SearchSpotlightEntity.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchSpotlightEntity.CodingKeys and conformance SearchSpotlightEntity.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchSpotlightEntity.CodingKeys and conformance SearchSpotlightEntity.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type EntityProperty<URL?> and conformance <> EntityProperty<A>()
{
  result = lazy protocol witness table cache variable for type EntityProperty<URL?> and conformance <> EntityProperty<A>;
  if (!lazy protocol witness table cache variable for type EntityProperty<URL?> and conformance <> EntityProperty<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation3URLVSgGMR);
    lazy protocol witness table accessor for type URL? and conformance <A> A?();
    lazy protocol witness table accessor for type URL? and conformance <A> A?();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EntityProperty<URL?> and conformance <> EntityProperty<A>);
  }

  return result;
}

uint64_t _s10OmniSearch0B15SpotlightEntityVWObTm_0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_17();
  v4 = OUTLINED_FUNCTION_94();
  v5(v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type SearchSpotlightEntity.Query and conformance SearchSpotlightEntity.Query()
{
  result = lazy protocol witness table cache variable for type SearchSpotlightEntity.Query and conformance SearchSpotlightEntity.Query;
  if (!lazy protocol witness table cache variable for type SearchSpotlightEntity.Query and conformance SearchSpotlightEntity.Query)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchSpotlightEntity.Query and conformance SearchSpotlightEntity.Query);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchSpotlightEntity.Query and conformance SearchSpotlightEntity.Query;
  if (!lazy protocol witness table cache variable for type SearchSpotlightEntity.Query and conformance SearchSpotlightEntity.Query)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchSpotlightEntity.Query and conformance SearchSpotlightEntity.Query);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchSpotlightEntity.Query and conformance SearchSpotlightEntity.Query;
  if (!lazy protocol witness table cache variable for type SearchSpotlightEntity.Query and conformance SearchSpotlightEntity.Query)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchSpotlightEntity.Query and conformance SearchSpotlightEntity.Query);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchSpotlightEntity.Query and conformance SearchSpotlightEntity.Query;
  if (!lazy protocol witness table cache variable for type SearchSpotlightEntity.Query and conformance SearchSpotlightEntity.Query)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchSpotlightEntity.Query and conformance SearchSpotlightEntity.Query);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [SearchSpotlightEntity] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [SearchSpotlightEntity] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [SearchSpotlightEntity] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay10OmniSearch0B15SpotlightEntityVGMd, &_sSay10OmniSearch0B15SpotlightEntityVGMR);
    lazy protocol witness table accessor for type SearchSpotlightEntity and conformance SearchSpotlightEntity(&lazy protocol witness table cache variable for type SearchSpotlightEntity and conformance SearchSpotlightEntity);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [SearchSpotlightEntity] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SearchSpotlightEntity.SearchSpotlightEntityError and conformance SearchSpotlightEntity.SearchSpotlightEntityError()
{
  result = lazy protocol witness table cache variable for type SearchSpotlightEntity.SearchSpotlightEntityError and conformance SearchSpotlightEntity.SearchSpotlightEntityError;
  if (!lazy protocol witness table cache variable for type SearchSpotlightEntity.SearchSpotlightEntityError and conformance SearchSpotlightEntity.SearchSpotlightEntityError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchSpotlightEntity.SearchSpotlightEntityError and conformance SearchSpotlightEntity.SearchSpotlightEntityError);
  }

  return result;
}

uint64_t type metadata completion function for SearchSpotlightEntity(uint64_t a1)
{
  type metadata accessor for EntityProperty<String?>(319);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    type metadata accessor for String?(319, &lazy cache variable for type metadata for Data?, MEMORY[0x277CC9318]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    type metadata accessor for EntityProperty<URL?>(319, &lazy cache variable for type metadata for EntityProperty<IntentFile?>, &_s10AppIntents10IntentFileVSgMd, &_s10AppIntents10IntentFileVSgMR, lazy protocol witness table accessor for type IntentFile? and conformance <A> A?);
    v2 = v6;
    if (v7 > 0x3F)
    {
      return v2;
    }

    type metadata accessor for EntityProperty<URL?>(319, &lazy cache variable for type metadata for EntityProperty<URL?>, &_s10Foundation3URLVSgMd, &_s10Foundation3URLVSgMR, lazy protocol witness table accessor for type URL? and conformance <A> A?);
    if (v8 > 0x3F)
    {
      return v4;
    }

    else
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0]);
      v2 = v9;
      if (v10 <= 0x3F)
      {
        _s10OmniSearch0B6ResultVSgMaTm_0(319, &lazy cache variable for type metadata for SearchResult?, type metadata accessor for SearchResult, MEMORY[0x277D83D88]);
        v2 = v11;
        if (v12 <= 0x3F)
        {
          type metadata accessor for EntityProperty<[String]>(319);
          v2 = v13;
          if (v14 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return v2;
}

void type metadata accessor for EntityProperty<URL?>(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, uint64_t (*a5)(void))
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    a5();
    v7 = type metadata accessor for EntityProperty();
    if (!v8)
    {
      atomic_store(v7, a2);
    }
  }
}

uint64_t type metadata completion function for SearchSpotlightEntity.Builder(uint64_t a1)
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0]);
  v2 = v1;
  if (v3 <= 0x3F)
  {
    _s10OmniSearch0B6ResultVSgMaTm_0(319, &lazy cache variable for type metadata for IntentFile?, MEMORY[0x277CB9C50], MEMORY[0x277D83D88]);
    if (v5 > 0x3F)
    {
      return v4;
    }

    else
    {
      type metadata accessor for SFCommand?(319, &lazy cache variable for type metadata for SFCard?, &lazy cache variable for type metadata for SFCard, 0x277D4C230);
      v2 = v6;
      if (v7 <= 0x3F)
      {
        _s10OmniSearch0B6ResultVSgMaTm_0(319, &lazy cache variable for type metadata for SearchResult?, type metadata accessor for SearchResult, MEMORY[0x277D83D88]);
        v2 = v8;
        if (v9 <= 0x3F)
        {
          _s10OmniSearch0B6ResultVSgMaTm_0(319, &lazy cache variable for type metadata for [DialogExperience], type metadata accessor for DialogExperience, MEMORY[0x277D83940]);
          v2 = v10;
          if (v11 <= 0x3F)
          {
            _s10OmniSearch0B6ResultVSgMaTm_0(319, &lazy cache variable for type metadata for URL?, MEMORY[0x277CC9260], MEMORY[0x277D83D88]);
            v2 = v12;
            if (v13 <= 0x3F)
            {
              type metadata accessor for SFCommand?(319, &lazy cache variable for type metadata for SFCommand?, &lazy cache variable for type metadata for SFCommand, 0x277D4C2A8);
              v2 = v14;
              if (v15 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
                return 0;
              }
            }
          }
        }
      }
    }
  }

  return v2;
}

void _s10OmniSearch0B6ResultVSgMaTm_0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata accessor for SFCommand?(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    type metadata accessor for TRIClient(255, a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SearchSpotlightEntity.Query(_BYTE *result, int a2, int a3)
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

_BYTE *storeEnumTagSinglePayload for SearchSpotlightEntity.SearchSpotlightEntityError(_BYTE *result, unsigned int a2, unsigned int a3)
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
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for SearchSpotlightEntity.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xF5)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF4)
  {
    v6 = ((a2 - 245) >> 8) + 1;
    *result = a2 + 11;
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
          *result = a2 + 11;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_7_18(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_8_18()
{

  return KeyedEncodingContainer.encode<A>(_:forKey:)();
}

uint64_t OUTLINED_FUNCTION_19_12(uint64_t a1, uint64_t a2)
{

  return DataRepresentation.init(exportedContentType:exporting:)();
}

uint64_t OUTLINED_FUNCTION_26_10(uint64_t a1, uint64_t a2)
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t OUTLINED_FUNCTION_53_8()
{

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

void OUTLINED_FUNCTION_71_7()
{

  specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0);
}

void OUTLINED_FUNCTION_84_5(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 2u);
}

uint64_t SearchSpotlightStandardRepresentation.init(bundleIdentifier:typeName:instanceIdentifier:title:sourceResult:cardData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  *a9 = a1;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  v13 = type metadata accessor for SearchSpotlightStandardRepresentation(0);
  result = outlined init with take of SearchResult?(a10, a9 + *(v13 + 32));
  v15 = (a9 + *(v13 + 36));
  *v15 = a11;
  v15[1] = a12;
  return result;
}

uint64_t type metadata accessor for SearchSpotlightStandardRepresentation(uint64_t a1)
{
  result = type metadata singleton initialization cache for SearchSpotlightStandardRepresentation;
  if (!type metadata singleton initialization cache for SearchSpotlightStandardRepresentation)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t SearchSpotlightStandardRepresentation.sourceResult.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SearchSpotlightStandardRepresentation(0) + 32);

  return outlined init with copy of SearchResult?(v3, a1);
}

uint64_t SearchSpotlightStandardRepresentation.cardData.getter()
{
  type metadata accessor for SearchSpotlightStandardRepresentation(0);
  v0 = OUTLINED_FUNCTION_94();
  outlined copy of Data?(v0, v1);
  return OUTLINED_FUNCTION_94();
}

uint64_t SearchSpotlightStandardRepresentation.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 0xD000000000000010 && 0x800000025DBF2260 == a2;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x656D614E65707974 && a2 == 0xE800000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0xD000000000000012 && 0x800000025DBF2280 == a2;
      if (v7 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
        if (v8 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          return 3;
        }

        else
        {
          v9 = a1 == 0x6552656372756F73 && a2 == 0xEC000000746C7573;
          if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
          {

            return 4;
          }

          else if (a1 == 0x6174614464726163 && a2 == 0xE800000000000000)
          {

            return 5;
          }

          else
          {
            v11 = _stringCompareWithSmolCheck(_:_:expecting:)();

            if (v11)
            {
              return 5;
            }

            else
            {
              return 6;
            }
          }
        }
      }
    }
  }
}

unint64_t SearchSpotlightStandardRepresentation.CodingKeys.stringValue.getter(char a1)
{
  result = 0x656D614E65707974;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0x656C746974;
      break;
    case 4:
      result = 0x6552656372756F73;
      break;
    case 5:
      result = 0x6174614464726163;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SearchSpotlightStandardRepresentation.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = SearchSpotlightStandardRepresentation.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance SearchSpotlightStandardRepresentation.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = SearchSpotlightStandardRepresentation.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SearchSpotlightStandardRepresentation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchSpotlightStandardRepresentation.CodingKeys and conformance SearchSpotlightStandardRepresentation.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SearchSpotlightStandardRepresentation.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchSpotlightStandardRepresentation.CodingKeys and conformance SearchSpotlightStandardRepresentation.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t SearchSpotlightStandardRepresentation.encode(to:)(void *a1)
{
  v3 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy10OmniSearch0E31SpotlightStandardRepresentationV10CodingKeys33_124B88CE2B1BA6126962FF5F71B57CFALLOGMd, &_ss22KeyedEncodingContainerVy10OmniSearch0E31SpotlightStandardRepresentationV10CodingKeys33_124B88CE2B1BA6126962FF5F71B57CFALLOGMR);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SearchSpotlightStandardRepresentation.CodingKeys and conformance SearchSpotlightStandardRepresentation.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  OUTLINED_FUNCTION_1_37();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    OUTLINED_FUNCTION_1_37();
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_1_37();
    KeyedEncodingContainer.encode(_:forKey:)();
    OUTLINED_FUNCTION_1_37();
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v6 = type metadata accessor for SearchSpotlightStandardRepresentation(0);
    type metadata accessor for SearchResult(0);
    OUTLINED_FUNCTION_3_27();
    _s10OmniSearch0B6ResultVACSEAAWlTm_3(v7, v8, &protocol conformance descriptor for SearchResult);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v9 = (v3 + *(v6 + 36));
    v13 = *v9;
    v14 = v9[1];
    outlined copy of Data?(*v9, v14);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v13, v14);
  }

  v10 = OUTLINED_FUNCTION_1_28();
  return v11(v10);
}

unint64_t lazy protocol witness table accessor for type SearchSpotlightStandardRepresentation.CodingKeys and conformance SearchSpotlightStandardRepresentation.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SearchSpotlightStandardRepresentation.CodingKeys and conformance SearchSpotlightStandardRepresentation.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchSpotlightStandardRepresentation.CodingKeys and conformance SearchSpotlightStandardRepresentation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchSpotlightStandardRepresentation.CodingKeys and conformance SearchSpotlightStandardRepresentation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchSpotlightStandardRepresentation.CodingKeys and conformance SearchSpotlightStandardRepresentation.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchSpotlightStandardRepresentation.CodingKeys and conformance SearchSpotlightStandardRepresentation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchSpotlightStandardRepresentation.CodingKeys and conformance SearchSpotlightStandardRepresentation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchSpotlightStandardRepresentation.CodingKeys and conformance SearchSpotlightStandardRepresentation.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchSpotlightStandardRepresentation.CodingKeys and conformance SearchSpotlightStandardRepresentation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchSpotlightStandardRepresentation.CodingKeys and conformance SearchSpotlightStandardRepresentation.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchSpotlightStandardRepresentation.CodingKeys and conformance SearchSpotlightStandardRepresentation.CodingKeys;
  if (!lazy protocol witness table cache variable for type SearchSpotlightStandardRepresentation.CodingKeys and conformance SearchSpotlightStandardRepresentation.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchSpotlightStandardRepresentation.CodingKeys and conformance SearchSpotlightStandardRepresentation.CodingKeys);
  }

  return result;
}

uint64_t SearchSpotlightStandardRepresentation.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_114(v4);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy10OmniSearch0E31SpotlightStandardRepresentationV10CodingKeys33_124B88CE2B1BA6126962FF5F71B57CFALLOGMd, &_ss22KeyedDecodingContainerVy10OmniSearch0E31SpotlightStandardRepresentationV10CodingKeys33_124B88CE2B1BA6126962FF5F71B57CFALLOGMR);
  OUTLINED_FUNCTION_14();
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v8);
  v28 = type metadata accessor for SearchSpotlightStandardRepresentation(0);
  OUTLINED_FUNCTION_51();
  MEMORY[0x28223BE20](v9);
  OUTLINED_FUNCTION_36();
  v12 = (v11 - v10);
  v13 = a1[3];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  lazy protocol witness table accessor for type SearchSpotlightStandardRepresentation.CodingKeys and conformance SearchSpotlightStandardRepresentation.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v29);
  }

  v26 = v7;
  LOBYTE(v30) = 0;
  OUTLINED_FUNCTION_2_22();
  *v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v12[1] = v14;
  LOBYTE(v30) = 1;
  OUTLINED_FUNCTION_2_22();
  v12[2] = KeyedDecodingContainer.decode(_:forKey:)();
  v12[3] = v15;
  LOBYTE(v30) = 2;
  OUTLINED_FUNCTION_2_22();
  v12[4] = KeyedDecodingContainer.decode(_:forKey:)();
  v12[5] = v16;
  LOBYTE(v30) = 3;
  OUTLINED_FUNCTION_2_22();
  v12[6] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v12[7] = v17;
  type metadata accessor for SearchResult(0);
  LOBYTE(v30) = 4;
  OUTLINED_FUNCTION_3_27();
  _s10OmniSearch0B6ResultVACSEAAWlTm_3(v18, v19, &protocol conformance descriptor for SearchResult);
  v20 = v26;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v21 = v20;
  v22 = v28;
  outlined init with take of SearchResult?(v21, v12 + *(v28 + 32));
  v31 = 5;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v23 = OUTLINED_FUNCTION_10_16();
  v24(v23);
  *(v12 + *(v22 + 36)) = v30;
  outlined init with copy of SearchSpotlightStandardRepresentation(v12, v27);
  __swift_destroy_boxed_opaque_existential_1Tm(v29);
  return outlined destroy of SearchSpotlightStandardRepresentation(v12);
}

uint64_t outlined init with copy of SearchSpotlightStandardRepresentation(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SearchSpotlightStandardRepresentation(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of SearchSpotlightStandardRepresentation(uint64_t a1)
{
  v2 = type metadata accessor for SearchSpotlightStandardRepresentation(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t static SearchSpotlightStandardRepresentation.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_0_36(&one-time initialization token for typeDisplayRepresentation);
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, static SearchSpotlightStandardRepresentation.typeDisplayRepresentation);
  swift_beginAccess();
  OUTLINED_FUNCTION_51();
  return (*(v4 + 16))(a1, v3, v2);
}

uint64_t static SearchSpotlightStandardRepresentation.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_0_36(&one-time initialization token for typeDisplayRepresentation);
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, static SearchSpotlightStandardRepresentation.typeDisplayRepresentation);
  swift_beginAccess();
  (*(*(v2 - 8) + 24))(v3, a1, v2);
  swift_endAccess();
  v4 = OUTLINED_FUNCTION_94();
  return v5(v4);
}

uint64_t (*static SearchSpotlightStandardRepresentation.typeDisplayRepresentation.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_0_36(&one-time initialization token for typeDisplayRepresentation);
  }

  v1 = type metadata accessor for TypeDisplayRepresentation();
  __swift_project_value_buffer(v1, static SearchSpotlightStandardRepresentation.typeDisplayRepresentation);
  swift_beginAccess();
  return static FlightSnippet.Status.allCases.modify;
}

uint64_t static SearchSpotlightStandardRepresentation.defaultResolverSpecification.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultResolverSpecification != -1)
  {
    swift_once();
  }

  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents26EmptyResolverSpecificationVy10OmniSearch0G31SpotlightStandardRepresentationVGMd, &_s10AppIntents26EmptyResolverSpecificationVy10OmniSearch0G31SpotlightStandardRepresentationVGMR);
  __swift_project_value_buffer(v2, static SearchSpotlightStandardRepresentation.defaultResolverSpecification);
  OUTLINED_FUNCTION_51();
  v4 = *(v3 + 16);

  return v4(a1);
}

uint64_t SearchSpotlightStandardRepresentation.displayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_114(v4);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  v7 = &v72 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v8);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v9);
  v77 = &v72 - v10;
  v11 = type metadata accessor for SearchSpotlightStandardRepresentation(0);
  OUTLINED_FUNCTION_51();
  MEMORY[0x28223BE20](v12);
  OUTLINED_FUNCTION_39_0();
  v75 = v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v72 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16IntelligenceFlow13RGPluginModelOSgMd, &_s16IntelligenceFlow13RGPluginModelOSgMR);
  OUTLINED_FUNCTION_114(v17);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v18);
  v74 = &v72 - v19;
  v20 = type metadata accessor for String.LocalizationValue.StringInterpolation();
  v21 = OUTLINED_FUNCTION_114(v20);
  MEMORY[0x28223BE20](v21);
  OUTLINED_FUNCTION_36();
  v80 = type metadata accessor for LocalizedStringResource();
  OUTLINED_FUNCTION_14();
  v23 = v22;
  MEMORY[0x28223BE20](v24);
  OUTLINED_FUNCTION_39_0();
  v79 = v25;
  MEMORY[0x28223BE20](v26);
  v28 = &v72 - v27;
  v29 = *(v1 + 56);
  if (v29)
  {
    v30 = v16;
    v31 = v11;
    v32 = a1;
    v33 = &v72 - v27;
    v34 = *(v1 + 48);
    String.LocalizationValue.StringInterpolation.init(literalCapacity:interpolationCount:)();
    v35._countAndFlagsBits = 0;
    v35._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v35);
    v36._countAndFlagsBits = v34;
    v28 = v33;
    a1 = v32;
    v11 = v31;
    v16 = v30;
    v36._object = v29;
    String.LocalizationValue.StringInterpolation.appendInterpolation(_:)(v36);
    v37._countAndFlagsBits = 0;
    v37._object = 0xE000000000000000;
    String.LocalizationValue.StringInterpolation.appendLiteral(_:)(v37);
    LocalizedStringResource.init(stringInterpolation:)();
  }

  else
  {
    LocalizedStringResource.init(stringLiteral:)();
  }

  v38 = (v1 + *(v11 + 36));
  v39 = v38[1];
  v78 = v28;
  if (v39 >> 60 != 15)
  {
    v73 = v7;
    v40 = *v38;
    type metadata accessor for SFCard();
    v41 = OUTLINED_FUNCTION_1_28();
    outlined copy of Data._Representation(v41, v42);
    v43 = OUTLINED_FUNCTION_1_28();
    outlined copy of Data._Representation(v43, v44);
    v45 = OUTLINED_FUNCTION_1_28();
    v47 = SFCard.init(data:)(v45, v46);
    if (v47)
    {
      v48 = v47;
      v76 = a1;
      v49 = v74;
      SFCard.snippetPluginModel.getter(v74);
      v50 = type metadata accessor for RGPluginModel();
      if (__swift_getEnumTagSinglePayload(v49, 1, v50) == 1)
      {

        v51 = OUTLINED_FUNCTION_1_28();
        outlined consume of Data?(v51, v52);
        outlined destroy of ResourceBundle?(v49, &_s16IntelligenceFlow13RGPluginModelOSgMd, &_s16IntelligenceFlow13RGPluginModelOSgMR);
      }

      else
      {
        _s10OmniSearch0B6ResultVACSEAAWlTm_3(&lazy protocol witness table cache variable for type RGPluginModel and conformance RGPluginModel, MEMORY[0x277D1C540], MEMORY[0x277D1C510]);
        v72 = SnippetPluginModel.data.getter();
        v56 = v55;
        OUTLINED_FUNCTION_51();
        (*(v57 + 8))(v49, v50);
        if (v56 >> 60 != 15)
        {
          v70 = v78;
          (*(v23 + 16))(v79, v78, v80);
          static RGPluginModel.bundleName.getter();
          DisplayRepresentation.init(title:snippetPluginModelData:bundleIdentifier:)();

          v71 = v40;
          v28 = v70;
          outlined consume of Data?(v71, v39);
          return (*(v23 + 8))(v28, v80);
        }

        v58 = OUTLINED_FUNCTION_1_28();
        outlined consume of Data?(v58, v59);
      }

      a1 = v76;
    }

    else
    {
      v53 = OUTLINED_FUNCTION_1_28();
      outlined consume of Data?(v53, v54);
    }

    v7 = v73;
    v28 = v78;
  }

  if (one-time initialization token for search != -1)
  {
    swift_once();
  }

  v60 = type metadata accessor for Logger();
  __swift_project_value_buffer(v60, static Logging.search);
  outlined init with copy of SearchSpotlightStandardRepresentation(v2, v16);
  v61 = Logger.logObject.getter();
  v62 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v61, v62))
  {
    v63 = swift_slowAlloc();
    v64 = swift_slowAlloc();
    v81 = v64;
    *v63 = 136315138;
    outlined init with copy of SearchSpotlightStandardRepresentation(v16, v75);
    String.init<A>(describing:)();
    v76 = a1;
    outlined destroy of SearchSpotlightStandardRepresentation(v16);
    v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(v63 + 4) = v65;
    _os_log_impl(&dword_25D85C000, v61, v62, "Unexpected fallback to use title only displayRepresentation for entity: %s", v63, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v64);
    v66 = v64;
    v28 = v78;
    MEMORY[0x25F8A1050](v66, -1, -1);
    MEMORY[0x25F8A1050](v63, -1, -1);
  }

  else
  {

    outlined destroy of SearchSpotlightStandardRepresentation(v16);
  }

  v67 = v80;
  (*(v23 + 16))(v79, v28, v80);
  __swift_storeEnumTagSinglePayload(v77, 1, 1, v67);
  v68 = type metadata accessor for DisplayRepresentation.Image();
  __swift_storeEnumTagSinglePayload(v7, 1, 1, v68);
  DisplayRepresentation.init(title:subtitle:image:)();
  return (*(v23 + 8))(v28, v80);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance SearchSpotlightStandardRepresentation(uint64_t a1)
{
  v2 = _s10OmniSearch0B6ResultVACSEAAWlTm_3(&lazy protocol witness table cache variable for type SearchSpotlightStandardRepresentation and conformance SearchSpotlightStandardRepresentation, type metadata accessor for SearchSpotlightStandardRepresentation, &protocol conformance descriptor for SearchSpotlightStandardRepresentation);

  return MEMORY[0x28210C4B8](a1, v2);
}

void SearchSpotlightStandardRepresentation.convertToEntity()()
{
  v1 = type metadata accessor for SearchSpotlightStandardRepresentation(0);
  v2 = OUTLINED_FUNCTION_114(v1);
  MEMORY[0x28223BE20](v2);
  OUTLINED_FUNCTION_36();
  outlined init with copy of SearchSpotlightStandardRepresentation(v0, v4 - v3);
  SearchAppEntity.init(_:)();
}

unint64_t lazy protocol witness table accessor for type EmptyResolverSpecification<SearchSpotlightStandardRepresentation> and conformance EmptyResolverSpecification<A>()
{
  result = lazy protocol witness table cache variable for type EmptyResolverSpecification<SearchSpotlightStandardRepresentation> and conformance EmptyResolverSpecification<A>;
  if (!lazy protocol witness table cache variable for type EmptyResolverSpecification<SearchSpotlightStandardRepresentation> and conformance EmptyResolverSpecification<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s10AppIntents26EmptyResolverSpecificationVy10OmniSearch0G31SpotlightStandardRepresentationVGMd, &_s10AppIntents26EmptyResolverSpecificationVy10OmniSearch0G31SpotlightStandardRepresentationVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type EmptyResolverSpecification<SearchSpotlightStandardRepresentation> and conformance EmptyResolverSpecification<A>);
  }

  return result;
}

uint64_t _s10OmniSearch0B6ResultVACSEAAWlTm_3(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void type metadata completion function for SearchSpotlightStandardRepresentation(uint64_t a1)
{
  type metadata accessor for String?(319, &lazy cache variable for type metadata for String?, MEMORY[0x277D837D0]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for SearchResult?(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for String?(319, &lazy cache variable for type metadata for Data?, MEMORY[0x277CC9318]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

_BYTE *storeEnumTagSinglePayload for SearchSpotlightStandardRepresentation.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFB)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFA)
  {
    v6 = ((a2 - 251) >> 8) + 1;
    *result = a2 + 5;
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
          *result = a2 + 5;
        }

        break;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_36(uint64_t a1)
{

  return swift_once();
}

uint64_t static FeatureStoreDonationManager.donateSearchToolInvocation(searchToolRequest:)(uint64_t a1)
{
  v1 = a1 + *(type metadata accessor for SearchToolIntentRequest(0) + 64);
  v2 = type metadata accessor for AssistantSystemContext(0);
  result = static FeatureStoreDonationManager.validateLoggingConditions(requestId:)(*(v1 + *(v2 + 28)), *(v1 + *(v2 + 28) + 8));
  if (v4)
  {
    type metadata accessor for FeatureStoreService();
    lazy protocol witness table accessor for type SearchToolIntentRequest and conformance SearchToolIntentRequest(&lazy protocol witness table cache variable for type SearchToolIntentRequest and conformance SearchToolIntentRequest, type metadata accessor for SearchToolIntentRequest, &protocol conformance descriptor for SearchToolIntentRequest);
    lazy protocol witness table accessor for type SearchToolIntentRequest and conformance SearchToolIntentRequest(&lazy protocol witness table cache variable for type SearchToolIntentRequest and conformance SearchToolIntentRequest, type metadata accessor for SearchToolIntentRequest, &protocol conformance descriptor for SearchToolIntentRequest);
    static FeatureStoreService.insert<A>(interactionId:item:)();
  }

  return result;
}

uint64_t static FeatureStoreDonationManager.validateLoggingConditions(requestId:)(uint64_t a1, uint64_t a2)
{
  if (!AFIsInternalInstall() || (v4 = type metadata accessor for NSUserDefaults(), (static NSUserDefaults.featureStoreLogging.getter(v4) & 1) == 0))
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logging.search);
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v6, v7))
    {
      goto LABEL_10;
    }

    v8 = swift_slowAlloc();
    *v8 = 67109120;
    v9 = type metadata accessor for NSUserDefaults();
    *(v8 + 4) = static NSUserDefaults.featureStoreLogging.getter(v9) & 1;
    _os_log_impl(&dword_25D85C000, v6, v7, "Skipping feature store donation because user is not internal, and/or feature store logging default is disabled: %{BOOL}d", v8, 8u);
    v10 = v8;
    goto LABEL_9;
  }

  if (!a2)
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
    }

    v12 = type metadata accessor for Logger();
    __swift_project_value_buffer(v12, static Logging.search);
    v6 = Logger.logObject.getter();
    v13 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v6, v13))
    {
      goto LABEL_10;
    }

    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_25D85C000, v6, v13, "Skipping feature store donation because requestId is nil", v14, 2u);
    v10 = v14;
LABEL_9:
    MEMORY[0x25F8A1050](v10, -1, -1);
LABEL_10:

    return 0;
  }

  return a1;
}

uint64_t static FeatureStoreDonationManager.donateSearchToolResponse(searchToolResponse:requestId:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = static FeatureStoreDonationManager.validateLoggingConditions(requestId:)(a2, a3);
  if (v4)
  {
    type metadata accessor for FeatureStoreService();
    type metadata accessor for SearchToolIntentResponse(0);
    lazy protocol witness table accessor for type SearchToolIntentRequest and conformance SearchToolIntentRequest(&lazy protocol witness table cache variable for type SearchToolIntentResponse and conformance SearchToolIntentResponse, type metadata accessor for SearchToolIntentResponse, &protocol conformance descriptor for SearchToolIntentResponse);
    lazy protocol witness table accessor for type SearchToolIntentRequest and conformance SearchToolIntentRequest(&lazy protocol witness table cache variable for type SearchToolIntentResponse and conformance SearchToolIntentResponse, type metadata accessor for SearchToolIntentResponse, &protocol conformance descriptor for SearchToolIntentResponse);
    static FeatureStoreService.insert<A>(interactionId:item:)();
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type SearchToolIntentRequest and conformance SearchToolIntentRequest(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id SearchInAppUtil.makeSearchInAppSection(results:perAppSearchStrings:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = (&v67 - v7);
  v9 = type metadata accessor for SearchEntity(0);
  MEMORY[0x28223BE20](v9);
  v13 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = 0;
  v15 = *(a1 + 16);
  if (v15 < 7)
  {
    return v14;
  }

  v68 = a3;
  v16 = 0;
  v17 = MEMORY[0x277D84F90];
  v76 = 0;
  v77 = MEMORY[0x277D84F90];
  v75 = MEMORY[0x277D84F90];
  v18 = *(v10 + 84);
  v19 = *(v11 + 72);
  v71 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
  v72 = MEMORY[0x277D84F90];
  v73 = v19;
  v74 = a2;
  v69 = v18;
  v70 = v15;
  do
  {
    _s10OmniSearch0B6EntityVWOcTm_1();
    outlined init with copy of SearchResult?(&v13[v18], v8);
    v20 = type metadata accessor for SearchResult(0);
    if (__swift_getEnumTagSinglePayload(v8, 1, v20) == 1)
    {
      OUTLINED_FUNCTION_0_37();
      outlined destroy of IntentApplication?(v8, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
      goto LABEL_33;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
    v21 = CodableNSSecureCoding.wrappedValue.getter();
    _s10OmniSearch0B6EntityVWOhTm_1(v8, type metadata accessor for SearchResult);
    v22 = outlined bridged method (ob) of @objc CSSearchableItem.bundleID.getter(v21);
    if (!v23)
    {
      OUTLINED_FUNCTION_0_37();
      a2 = v74;
      goto LABEL_33;
    }

    v24 = v22;
    v25 = v23;
    v26 = v76;
    v27 = v72;
    v28 = *(v72 + 16);
    if (v76)
    {
      v29 = v17;

      v30 = specialized _HashTable.UnsafeHandle._find<A>(_:in:)(v24, v25, v27 + 32, v28, (v26 + 16), v26 + 32);
      v32 = v31;
      v34 = v33;

      if ((v32 & 1) == 0)
      {

        v17 = v29;
LABEL_20:
        v15 = v70;
        goto LABEL_27;
      }

      v17 = v29;
    }

    else
    {
      v30 = 0;
      v35 = (v72 + 40);
      while (v28 != v30)
      {
        v36 = *(v35 - 1) == v24 && v25 == *v35;
        if (v36 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
        {

          goto LABEL_20;
        }

        ++v30;
        v35 += 2;
      }

      v34 = 0;
    }

    v15 = v70;
    specialized OrderedSet._appendNew(_:in:)(v24, v25, v34);

    v37 = v77;
    v38 = *(v77 + 16);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v75 = v17;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v17 + 16) + 1, 1);
      v17 = v75;
    }

    v72 = v37;
    v41 = *(v17 + 16);
    v40 = *(v17 + 24);
    if (v41 >= v40 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(v40 > 1, v41 + 1, 1);
      v17 = v75;
    }

    v30 = v38 - 1;
    *(v17 + 16) = v41 + 1;
    *(v17 + 8 * v41 + 32) = 0;
LABEL_27:
    v42 = swift_isUniquelyReferenced_nonNull_native();
    a2 = v74;
    if ((v42 & 1) == 0)
    {
      specialized _ContiguousArrayBuffer._consumeAndCreateNew()();
      v17 = v43;
    }

    v44 = *(v17 + 8 * v30 + 32);
    v45 = v44 + 1;
    if (__OFADD__(v44, 1))
    {
      goto LABEL_50;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      specialized _ContiguousArrayBuffer._consumeAndCreateNew()();
      v17 = v46;
    }

    *(v17 + 8 * v30 + 32) = v45;
    OUTLINED_FUNCTION_0_37();
    v18 = v69;
LABEL_33:
    ++v16;
  }

  while (v16 != v15);
  v47 = v76;
  v72 = v77;
  v73 = v17;
  specialized _copySequenceToContiguousArray<A>(_:)(v76, v77, v17);
  v76 = v48;
  specialized MutableCollection<>.sort(by:)(&v76);
  v49 = 0;
  v50 = v76;
  v51 = *(v76 + 16);
  v52 = v76 + 40;
  v8 = MEMORY[0x277D84F90];
LABEL_35:
  for (i = (v52 + 24 * v49); ; i += 3)
  {
    if (v51 == v49)
    {

      v14 = SearchInAppUtil.makeSearchInAppSection(_:)(v8, v68);

      return v14;
    }

    if (v49 >= *(v50 + 16))
    {
      break;
    }

    if (*(a2 + 16))
    {
      v55 = *(i - 1);
      v54 = *i;

      v56 = specialized __RawDictionaryStorage.find<A>(_:)(v55, v54);
      if (v57)
      {
        v58 = (*(a2 + 56) + 16 * v56);
        v59 = v58[1];
        v70 = *v58;
        v71 = v52;

        v60 = v47;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v8[2] + 1, 1, v8);
          v8 = v64;
        }

        v62 = v8[2];
        v61 = v8[3];
        if (v62 >= v61 >> 1)
        {
          specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v61 > 1, v62 + 1, 1, v8);
          v8 = v65;
        }

        ++v49;
        v8[2] = v62 + 1;
        v63 = &v8[4 * v62];
        v63[4] = v55;
        v63[5] = v54;
        v63[6] = v70;
        v63[7] = v59;
        a2 = v74;
        v47 = v60;
        v52 = v71;
        goto LABEL_35;
      }
    }

    ++v49;
  }

  __break(1u);
LABEL_50:
  __break(1u);

  __break(1u);
  return result;
}

id SearchInAppUtil.makeSearchInAppSection(_:)(uint64_t *a1, uint64_t a2)
{
  v3 = 0;
  if (((*(*a2 + 80))(31) & 1) == 0)
  {
    return v3;
  }

  v4 = a1[2];
  if (!v4)
  {
    return 0;
  }

  if (one-time initialization token for search != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Logging.search);

  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.default.getter();

  v8 = os_log_type_enabled(v6, v7);
  v9 = MEMORY[0x277D84F90];
  if (v8)
  {
    v37 = v7;
    log = v6;
    v10 = swift_slowAlloc();
    v35 = swift_slowAlloc();
    v41[0] = v35;
    buf = v10;
    *v10 = 136315138;
    v42 = v9;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v4, 0);
    v11 = v9;
    v39 = a1;
    v12 = a1 + 5;
    v13 = v4;
    do
    {
      v15 = *(v12 - 1);
      v14 = *v12;
      v42 = v11;
      v17 = *(v11 + 16);
      v16 = *(v11 + 24);

      if (v17 >= v16 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v16 > 1), v17 + 1, 1);
        v11 = v42;
      }

      *(v11 + 16) = v17 + 1;
      v18 = v11 + 16 * v17;
      *(v18 + 32) = v15;
      *(v18 + 40) = v14;
      v12 += 4;
      --v13;
    }

    while (v13);
    MEMORY[0x25F89F8A0](v11, MEMORY[0x277D837D0]);

    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

    *(buf + 4) = v19;
    _os_log_impl(&dword_25D85C000, log, v37, "Attempting to generate SearchInApp section for bundles: %s", buf, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v35);
    MEMORY[0x25F8A1050](v35, -1, -1);
    MEMORY[0x25F8A1050](buf, -1, -1);

    v9 = MEMORY[0x277D84F90];
    a1 = v39;
  }

  else
  {
  }

  v20 = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
  v42 = v9;
  v21 = a1 + 7;
  do
  {
    v22 = *(v21 - 1);
    v23 = *v21;
    v24 = *(v21 - 2);
    v41[0] = *(v21 - 3);
    v41[1] = v24;
    v41[2] = v22;
    v41[3] = v23;

    closure #1 in SearchInAppUtil.makeSearchInAppSection(_:)(v41, v20, &v40);

    if (v40)
    {
      MEMORY[0x25F89F850](v25);
      if (*((v42 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v42 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    }

    v21 += 4;
    --v4;
  }

  while (v4);
  if (!specialized Array.count.getter())
  {

    return 0;
  }

  v26 = Logger.logObject.getter();
  v27 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    *v28 = 134217984;
    *(v28 + 4) = specialized Array.count.getter();

    _os_log_impl(&dword_25D85C000, v26, v27, "Created SearchInApp section with %ld rows", v28, 0xCu);
    MEMORY[0x25F8A1050](v28, -1, -1);
  }

  else
  {
  }

  v3 = [objc_allocWithZone(MEMORY[0x277D4C278]) init];
  v29 = [objc_allocWithZone(MEMORY[0x277D4C598]) init];
  [v3 setTitle_];

  v30 = [v3 title];
  if (v30)
  {
    v31 = v30;
    type metadata accessor for LocalizedString();
    v32 = static LocalizedString.localizedString(forKey:)(0xD000000000000014, 0x800000025DBF2300);
    outlined bridged method (mbnn) of @objc SFText.text.setter(v32, v33, v31);
  }

  outlined bridged method (mbnn) of @objc SFCollectionCardSection.cardSections.setter();

  return v3;
}

void closure #1 in SearchInAppUtil.makeSearchInAppSection(_:)(uint64_t *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v59 = *MEMORY[0x277D85DE8];
  v7 = *a1;
  v6 = a1[1];
  v8 = a1[2];
  v9 = a1[3];
  v10 = objc_allocWithZone(MEMORY[0x277CC1E70]);

  v11 = @nonobjc LSApplicationRecord.init(bundleIdentifier:allowPlaceholder:)(v7, v6, 1);
  if (v3)
  {

    v12 = 0;
    goto LABEL_33;
  }

  v13 = v11;
  if (!v11)
  {
LABEL_32:
    v12 = 0;
    goto LABEL_33;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlGMd, &_ss23_ContiguousArrayStorageCyyXlGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25DBC8190;
  *(inited + 32) = [objc_opt_self() showInAppStringSearchResultsProtocol];
  v57 = v8;
  if (specialized Array.count.getter())
  {
    _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSo16LNSystemProtocolC_Tt0g5(inited);
  }

  else
  {
    swift_setDeallocating();
    specialized _ContiguousArrayStorage.__deallocating_deinit();
  }

  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for LNSystemProtocol, 0x277D23938);
  lazy protocol witness table accessor for type LNSystemProtocol and conformance NSObject();
  isa = Set._bridgeToObjectiveC()().super.isa;

  v58 = 0;
  v16 = outlined bridged method (mnnbgnnn) of @objc LNMetadataProvider.actionsConforming(to:logicalType:bundleIdentifier:)(isa, 1, v7, v6, &v58, a2);

  v17 = v58;
  if (!v16)
  {
    v27 = v58;
    v28 = _convertNSErrorToError(_:)();

    swift_willThrow();
    goto LABEL_22;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo16LNActionMetadataCGMd, &_sSDySSSo16LNActionMetadataCGMR);
  v18 = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = v17;

  if (!*(v18 + 16))
  {

LABEL_22:
    if (one-time initialization token for search == -1)
    {
LABEL_23:
      v29 = type metadata accessor for Logger();
      __swift_project_value_buffer(v29, static Logging.search);

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.info.getter();

      if (!os_log_type_enabled(v30, v31))
      {
LABEL_31:

        goto LABEL_32;
      }

      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      v58 = v33;
      *v32 = 136315138;
      *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
      v34 = "Ignoring punchout for %s because it does not have a ShowInAppStringSearchResults action";
LABEL_30:
      _os_log_impl(&dword_25D85C000, v30, v31, v34, v32, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v33);
      MEMORY[0x25F8A1050](v33, -1, -1);
      MEMORY[0x25F8A1050](v32, -1, -1);
      goto LABEL_31;
    }

LABEL_38:
    swift_once();
    goto LABEL_23;
  }

  v56 = v9;
  v20 = specialized Dictionary.subscript.getter();

  if (!v20)
  {
LABEL_26:
    if (one-time initialization token for search != -1)
    {
      swift_once();
    }

    v35 = type metadata accessor for Logger();
    __swift_project_value_buffer(v35, static Logging.search);

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.info.getter();

    if (!os_log_type_enabled(v30, v31))
    {
      goto LABEL_31;
    }

    v32 = swift_slowAlloc();
    v33 = swift_slowAlloc();
    v58 = v33;
    *v32 = 136315138;
    *(v32 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();
    v34 = "Ignoring punchout for %s because it is not visible for .assistant";
    goto LABEL_30;
  }

  v53 = v7;
  v54 = v13;
  v55 = a3;
  v21 = 1 << *(v20 + 32);
  v22 = -1;
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  v23 = v22 & *(v20 + 64);
  a3 = ((v21 + 63) >> 6);

  v24 = 0;
  if (!v23)
  {
LABEL_14:
    while (1)
    {
      v13 = v24 + 1;
      if (__OFADD__(v24, 1))
      {
        break;
      }

      if (v13 >= a3)
      {

        v13 = v54;
        a3 = v55;
        goto LABEL_26;
      }

      v23 = *(v20 + 64 + 8 * v13);
      ++v24;
      if (v23)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_38;
  }

  while (1)
  {
    v13 = v24;
LABEL_17:
    v25 = *(*(v20 + 56) + 8 * (__clz(__rbit64(v23)) | (v13 << 6)));

    v26 = v25;
    if ([v26 visibleForUse_])
    {
      break;
    }

    v23 &= v23 - 1;

    v24 = v13;
    if (!v23)
    {
      goto LABEL_14;
    }
  }

  v36 = [objc_allocWithZone(MEMORY[0x277D4C328]) init];
  [v36 setShouldUseCompactDisplay_];
  v37 = [objc_allocWithZone(MEMORY[0x277D4C1D0]) init];
  outlined bridged method (mbgnn) of @objc SFAppIconImage.bundleIdentifier.setter(v53, v6, v37);
  [v36 setThumbnail_];
  v38 = [objc_allocWithZone(MEMORY[0x277D4C598]) init];
  [v36 setTitle_];

  v39 = [v36 title];
  v40 = v54;
  if (v39)
  {
    v52 = v39;
    type metadata accessor for LocalizedString();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
    v41 = swift_allocObject();
    *(v41 + 16) = xmmword_25DBC8180;
    v42 = [v54 localizedName];
    v43 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v51 = v44;

    *(v41 + 56) = MEMORY[0x277D837D0];
    *(v41 + 64) = lazy protocol witness table accessor for type String and conformance String();
    *(v41 + 32) = v43;
    *(v41 + 40) = v51;
    static LocalizedString.localizedString(forKey:)(0xD000000000000011, 0x800000025DBF2320);
    v45 = String.init(format:_:)();
    v47 = v46;

    v48 = v47;
    v40 = v54;
    outlined bridged method (mbnn) of @objc SFText.text.setter(v45, v48, v52);
  }

  v49 = [objc_allocWithZone(MEMORY[0x277D4C5C8]) init];
  outlined bridged method (mbgnn) of @objc SFSearchInAppCommand.applicationBundleIdentifier.setter(v53, v6, v49);
  outlined bridged method (mbgnn) of @objc SFSearchInAppCommand.searchString.setter(v57, v56, v49);
  v12 = v36;
  v50 = v49;
  [v12 setCommand_];

  a3 = v55;
LABEL_33:
  *a3 = v12;
}

uint64_t SearchInAppUtil.SearchInAppPunchout.bundleId.getter()
{
  OUTLINED_FUNCTION_134();

  return v0;
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(char *a1, char *a2, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 24;
  v9 = (a3 - a2) / 24;
  if (v8 < v9)
  {
    specialized UnsafeMutablePointer.moveInitialize(from:count:)(a1, (a2 - a1) / 24, a4);
    v10 = &v4[24 * v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      if (*(v4 + 2) >= *(v6 + 2))
      {
        break;
      }

      v12 = v6;
      v13 = v7 == v6;
      v6 += 24;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 24;
    }

    v12 = v4;
    v13 = v7 == v4;
    v4 += 24;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    v14 = *v12;
    *(v7 + 2) = *(v12 + 2);
    *v7 = v14;
    goto LABEL_13;
  }

  specialized UnsafeMutablePointer.moveInitialize(from:count:)(a2, (a3 - a2) / 24, a4);
  v10 = &v4[24 * v9];
LABEL_15:
  for (v5 -= 24; v10 > v4 && v6 > v7; v5 -= 24)
  {
    if (*(v6 - 1) < *(v10 - 1))
    {
      v17 = v6 - 24;
      v13 = v5 + 24 == v6;
      v6 -= 24;
      if (!v13)
      {
        v18 = *v17;
        *(v5 + 16) = *(v17 + 2);
        *v5 = v18;
        v6 = v17;
      }

      goto LABEL_15;
    }

    if (v10 != (v5 + 24))
    {
      v16 = *(v10 - 24);
      *(v5 + 16) = *(v10 - 1);
      *v5 = v16;
    }

    v10 -= 24;
  }

LABEL_28:
  v19 = (v10 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v19])
  {
    memmove(v6, v4, 24 * v19);
  }

  return 1;
}

void specialized _ContiguousArrayBuffer._consumeAndCreateNew()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  OUTLINED_FUNCTION_5_19();
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
}

{
  v4 = OUTLINED_FUNCTION_5_19();
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v4);
}

{
  v4 = OUTLINED_FUNCTION_5_19();
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v4);
}

{
  v4 = OUTLINED_FUNCTION_5_19();
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v4);
}

{
  v4 = OUTLINED_FUNCTION_5_19();
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v4, v5, v6, v7);
}

{
  v4 = OUTLINED_FUNCTION_5_19();
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v4);
}

{
  v4 = OUTLINED_FUNCTION_5_19();
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v4);
}

{
  v4 = OUTLINED_FUNCTION_5_19();
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v4);
}

{
  v4 = OUTLINED_FUNCTION_5_19();
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v4);
}

void specialized _ContiguousArrayBuffer._consumeAndCreateNew()()
{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0);
}

{
  specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0);
}

uint64_t specialized OrderedSet._appendNew(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v10 = v3[1];
  v8 = v3 + 1;
  v9 = v10;

  result = swift_isUniquelyReferenced_nonNull_native();
  *v8 = v10;
  if ((result & 1) == 0)
  {
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 16) + 1, 1);
    v9 = *v8;
  }

  v13 = *(v9 + 16);
  v12 = *(v9 + 24);
  if (v13 >= v12 >> 1)
  {
    result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v12 > 1), v13 + 1, 1);
    v9 = *v8;
  }

  *(v9 + 16) = v13 + 1;
  v14 = v9 + 16 * v13;
  *(v14 + 32) = a1;
  *(v14 + 40) = a2;
  v4[1] = v9;
  v15 = *v4;
  if (!*v4)
  {
    if (v13 <= 0xE)
    {
      return result;
    }

    v16 = 0;
    goto LABEL_15;
  }

  swift_beginAccess();
  if (MEMORY[0x25F89D920](*(v15 + 16) & 0x3FLL) <= v13)
  {
    v16 = *(v15 + 24) & 0x3FLL;
    if (v13 <= 0xE && v16 == 0)
    {

      *v4 = 0;
      return result;
    }

LABEL_15:
    v18 = MEMORY[0x25F89D940](v13 + 1);
    return specialized OrderedSet._regenerateHashTable(scale:reservedScale:)(v18, v16);
  }

  result = specialized OrderedSet._ensureUnique()();
  if (*v4)
  {
    return specialized closure #1 in OrderedSet._appendNew(_:in:)((*v4 + 16), *v4 + 32, a3, v4);
  }

  __break(1u);
  return result;
}

uint64_t specialized OrderedSet._ensureUnique()()
{
  result = *v0;
  if (*v0)
  {
    result = swift_isUniquelyReferenced_native();
    if ((result & 1) == 0)
    {
      if (*v0)
      {
        v2 = _HashTable.copy()();

        *v0 = v2;
      }

      else
      {
        __break(1u);
      }
    }
  }

  return result;
}

uint64_t specialized OrderedSet._regenerateHashTable(scale:reservedScale:)(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  if (a2 <= a1)
  {
    a2 = a1;
  }

  v4 = _s19CollectionsInternal10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVySSG_Tt2g5(v2[1], a2, 0, v3);

  *v2 = v4;
  return result;
}

uint64_t _s19CollectionsInternal10_HashTableV6create23uncheckedUniqueElements5scale13reservedScaleACSgx_SiSgSitSkRzSH7ElementRpzlFZs15ContiguousArrayVySSG_Tt2g5(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = MEMORY[0x25F89D940](v6, a2);
  v9 = 0;
  if (v8 <= v7)
  {
    v10 = v7;
  }

  else
  {
    v10 = v8;
  }

  if (v10 <= a4)
  {
    v11 = a4;
  }

  else
  {
    v11 = v10;
  }

  if (v11 >= 5)
  {
    v9 = MEMORY[0x25F89D950]();
    specialized _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:)(a1, (v9 + 16), v9 + 32);
  }

  return v9;
}

Swift::Int specialized closure #1 in _HashTable.UnsafeHandle.fill<A>(uncheckedUniqueElements:)(Swift::Int result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      while (1)
      {
        Hasher.init(_seed:)();

        String.hash(into:)();
        v7 = Hasher._finalize()();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v8 = _HashTable.UnsafeHandle._startIterator(bucket:)();

        if (v8)
        {
          while (1)
          {
            _HashTable.BucketIterator.advance()();
          }
        }

        v7 = _HashTable.BucketIterator.currentValue.setter();
        if (++v6 == a2)
        {
          return v7;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return v7;
}

Swift::Int specialized _HashTable.UnsafeHandle._find<A>(_:in:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  result = Hasher._finalize()();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    _HashTable.UnsafeHandle.startFind(_:)();
    v11 = v15;
    if ((v16 & 1) == 0)
    {
      do
      {
        v12 = (a3 + 16 * v11);
        if (*v12 == a1 && v12[1] == a2)
        {
          break;
        }

        if (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          break;
        }

        _HashTable.BucketIterator.advance()();
        v11 = _HashTable.BucketIterator.currentValue.getter();
      }

      while ((v14 & 1) == 0);
    }

    return v11;
  }

  return result;
}

void outlined bridged method (mbnn) of @objc SFCollectionCardSection.cardSections.setter()
{
  OUTLINED_FUNCTION_134();
  type metadata accessor for TRIClient(0, &lazy cache variable for type metadata for SFCardSection, 0x277D4C238);
  isa = Array._bridgeToObjectiveC()().super.isa;

  [v0 setCardSections_];
}

void outlined bridged method (mbnn) of @objc SFText.text.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x25F89F4C0](a1);

  [a3 setText_];
}

id outlined bridged method (mnnbgnnn) of @objc LNMetadataProvider.actionsConforming(to:logicalType:bundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v10 = MEMORY[0x25F89F4C0](a3, a4);
  v11 = [a6 actionsConformingToSystemProtocols:a1 logicalType:a2 bundleIdentifier:v10 error:a5];

  return v11;
}

void outlined bridged method (mbgnn) of @objc SFAppIconImage.bundleIdentifier.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x25F89F4C0](a1, a2);
  [a3 setBundleIdentifier_];
}

void outlined bridged method (mbgnn) of @objc SFSearchInAppCommand.applicationBundleIdentifier.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x25F89F4C0](a1, a2);
  [a3 setApplicationBundleIdentifier_];
}

void outlined bridged method (mbgnn) of @objc SFSearchInAppCommand.searchString.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = MEMORY[0x25F89F4C0](a1, a2);
  [a3 setSearchString_];
}

void *specialized _copySequenceToContiguousArray<A>(_:)(void *result)
{
  v1 = result[2];
  v2 = MEMORY[0x277D84F90];
  v3 = 0;
  if (v1)
  {
    v4 = 0;
    v5 = MEMORY[0x277D84F90] + 32;
    v6 = result + 4;
    while (1)
    {
      v7 = *(v6 + v4);
      if (!v3)
      {
        v8 = v2[3];
        if (((v8 >> 1) + 0x4000000000000000) < 0)
        {
          goto LABEL_24;
        }

        v9 = v8 & 0xFFFFFFFFFFFFFFFELL;
        if (v9 <= 1)
        {
          v10 = 1;
        }

        else
        {
          v10 = v9;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi6offset_Sf7elementtGMd, &_ss23_ContiguousArrayStorageCySi6offset_Sf7elementtGMR);
        v11 = swift_allocObject();
        v12 = (_swift_stdlib_malloc_size(v11) - 32) / 16;
        v11[2] = v10;
        v11[3] = 2 * v12;
        v13 = (v11 + 4);
        v14 = v2[3];
        v15 = v14 >> 1;
        if (v2[2])
        {
          if (v11 != v2 || v13 >= &v2[2 * v15 + 4])
          {
            memmove(v11 + 4, v2 + 4, 16 * v15);
          }

          v2[2] = 0;
        }

        v5 = v13 + 16 * v15;
        v3 = (v12 & 0x7FFFFFFFFFFFFFFFLL) - (v14 >> 1);

        v2 = v11;
      }

      v17 = __OFSUB__(v3--, 1);
      if (v17)
      {
        break;
      }

      *v5 = v4;
      *(v5 + 8) = v7;
      v5 += 16;
      if (v1 == ++v4)
      {
        goto LABEL_19;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

LABEL_19:
  v18 = v2[3];
  if (v18 < 2)
  {
    return v2;
  }

  v19 = v18 >> 1;
  v17 = __OFSUB__(v19, v3);
  v20 = v19 - v3;
  if (!v17)
  {
    v2[2] = v20;
    return v2;
  }

LABEL_25:
  __break(1u);
  return result;
}

void specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a3 + 16);
  if (v3)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS3key_Si5valuetGMd, &_ss23_ContiguousArrayStorageCySS3key_Si5valuetGMR);
    v6 = swift_allocObject();
    v7 = 0;
    v8 = (_swift_stdlib_malloc_size(v6) - 32) / 24;
    v6[2] = v3;
    v6[3] = 2 * v8;
    v9 = v8 & 0x7FFFFFFFFFFFFFFFLL;
    v10 = a3 + 32;
    v11 = *(a2 + 16);
    v12 = v3 - 1;
    v13 = (a2 + 40);
    v14 = 4;
    while (v11 != v7)
    {
      v15 = &v6[v14];
      v16 = *v13;
      v17 = *(v10 + 8 * v7);
      *v15 = *(v13 - 1);
      v15[1] = v16;
      v15[2] = v17;
      if (v12 == v7)
      {

        v18 = ~v7 + v9;
        goto LABEL_8;
      }

      v14 += 3;
      v13 += 2;
      ++v7;
    }

    __break(1u);
    goto LABEL_13;
  }

  v18 = 0;
  v6 = MEMORY[0x277D84F90];
LABEL_8:
  v19 = v6[3];
  if (v19 >= 2)
  {
    v20 = v19 >> 1;
    v21 = __OFSUB__(v20, v18);
    v22 = v20 - v18;
    if (v21)
    {
LABEL_13:
      __break(1u);
      return;
    }

    v6[2] = v22;
  }
}

uint64_t _s10OmniSearch0B6EntityVWOhTm_1(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_17();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t getEnumTagSinglePayload for SearchInAppUtil.SearchInAppPunchout(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for SearchInAppUtil.SearchInAppPunchout(uint64_t result, int a2, int a3)
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

void specialized _copySequenceToContiguousArray<A>(_:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi6offset_10OmniSearch0C6ResultV7elementtMd, &_sSi6offset_10OmniSearch0C6ResultV7elementtMR);
  OUTLINED_FUNCTION_14();
  MEMORY[0x28223BE20](v2);
  v4 = (&v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v5);
  v35 = v7;
  v36 = &v31 - v6;
  v8 = 0;
  v9 = 0;
  v32 = *(v7 + 80);
  v10 = MEMORY[0x277D84F90];
  v33 = (v32 + 32) & ~v32;
  v11 = MEMORY[0x277D84F90] + v33;
  v34 = *(a1 + 16);
  while (v34 != v9)
  {
    type metadata accessor for SearchResult(0);
    *v4 = v9;
    _s10OmniSearch0B6EntityVWOcTm_1();
    outlined init with take of (offset: Int, element: SearchResult)();
    if (v8)
    {
      v12 = v10;
    }

    else
    {
      v13 = v10[3];
      if (((v13 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_32;
      }

      v14 = a1;
      v15 = v13 & 0xFFFFFFFFFFFFFFFELL;
      if (v15 <= 1)
      {
        v16 = 1;
      }

      else
      {
        v16 = v15;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySi6offset_10OmniSearch0F6ResultV7elementtGMd, &_ss23_ContiguousArrayStorageCySi6offset_10OmniSearch0F6ResultV7elementtGMR);
      v17 = *(v35 + 72);
      v18 = v33;
      v12 = swift_allocObject();
      v19 = _swift_stdlib_malloc_size(v12);
      if (!v17)
      {
        goto LABEL_33;
      }

      v20 = v19 - v18;
      if (v19 - v18 == 0x8000000000000000 && v17 == -1)
      {
        goto LABEL_34;
      }

      v22 = v20 / v17;
      v12[2] = v16;
      v12[3] = 2 * (v20 / v17);
      v23 = v12 + v18;
      v24 = v10[3];
      v25 = (v24 >> 1) * v17;
      if (v10[2])
      {
        if (v12 < v10 || v23 >= v10 + v33 + v25)
        {
          swift_arrayInitWithTakeFrontToBack();
        }

        else if (v12 != v10)
        {
          swift_arrayInitWithTakeBackToFront();
        }

        v10[2] = 0;
      }

      v11 = &v23[v25];
      v8 = (v22 & 0x7FFFFFFFFFFFFFFFLL) - (v24 >> 1);

      a1 = v14;
    }

    v27 = __OFSUB__(v8--, 1);
    if (v27)
    {
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
      goto LABEL_35;
    }

    outlined init with take of (offset: Int, element: SearchResult)();
    v11 += *(v35 + 72);
    ++v9;
    v10 = v12;
  }

  v28 = v10[3];
  if (v28 < 2)
  {
    return;
  }

  v29 = v28 >> 1;
  v27 = __OFSUB__(v29, v8);
  v30 = v29 - v8;
  if (!v27)
  {
    v10[2] = v30;
    return;
  }

LABEL_35:
  __break(1u);
}

{
  v2 = &_s10PegasusAPI28Searchfoundation_CardSectionVSgMd;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI28Searchfoundation_CardSectionVSgMd, &_s10PegasusAPI28Searchfoundation_CardSectionVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v48 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v58 = v48 - v7;
  v8 = type metadata accessor for Searchfoundation_CardSection();
  OUTLINED_FUNCTION_14();
  v10 = MEMORY[0x28223BE20](v9);
  v56 = v48 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = 0;
  v13 = 0;
  v59 = 0;
  v14 = 0;
  v50 = *(v15 + 80);
  v60 = MEMORY[0x277D84F90];
  v57 = MEMORY[0x277D84F90] + ((v50 + 32) & ~v50);
  v51 = v15 + 16;
  v52 = v15;
  v54 = (v50 + 32) & ~v50;
  v55 = (v15 + 32);
  while (1)
  {
    while (1)
    {
      if (!v13)
      {
        goto LABEL_5;
      }

      v16 = *(v13 + 16);
      if (v12 == v16)
      {
        break;
      }

      if (v12 >= v16)
      {
        goto LABEL_41;
      }

      v53 = *(v52 + 72);
      (*(v52 + 16))(v5, v13 + v54 + v53 * v12, v8, v10);
      __swift_storeEnumTagSinglePayload(v5, 0, 1, v8);
      v20 = v58;
      outlined init with take of (offset: Int, element: SearchResult)();
      if (__swift_getEnumTagSinglePayload(v20, 1, v8) == 1)
      {
        goto LABEL_36;
      }

      v49 = *v55;
      v49(v56, v20, v8);
      v21 = v59;
      if (v59)
      {
        v22 = v60;
        goto LABEL_33;
      }

      v23 = *(v60 + 3);
      if (((v23 >> 1) + 0x4000000000000000) < 0)
      {
        goto LABEL_44;
      }

      v24 = v23 & 0xFFFFFFFFFFFFFFFELL;
      if (v24 <= 1)
      {
        v25 = 1;
      }

      else
      {
        v25 = v24;
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI28Searchfoundation_CardSectionVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI28Searchfoundation_CardSectionVGMR);
      v26 = v54;
      v59 = swift_allocObject();
      v27 = _swift_stdlib_malloc_size(v59);
      v28 = v53;
      if (!v53)
      {
        goto LABEL_45;
      }

      v29 = v27 - v26;
      v30 = v27 - v26 == 0x8000000000000000 && v53 == -1;
      v31 = v60;
      if (v30)
      {
        goto LABEL_46;
      }

      v32 = v25;
      v33 = v26;
      v34 = v29 / v53;
      v35 = v59;
      *(v59 + 2) = v32;
      *(v35 + 3) = 2 * (v29 / v28);
      v36 = &v35[v26];
      v37 = *(v31 + 3);
      v38 = (v37 >> 1) * v28;
      if (*(v31 + 2))
      {
        if (v35 >= v31 && v36 < &v31[v33 + v38])
        {
          if (v35 != v31)
          {
            OUTLINED_FUNCTION_4_23();
            swift_arrayInitWithTakeBackToFront();
LABEL_30:
            v38 = v48[1];
            v36 = v57;
            v31 = v60;
          }

          *(v31 + 2) = 0;
          goto LABEL_32;
        }

        OUTLINED_FUNCTION_4_23();
        swift_arrayInitWithTakeFrontToBack();
        goto LABEL_30;
      }

LABEL_32:
      v57 = &v36[v38];

      v21 = ((v34 & 0x7FFFFFFFFFFFFFFFLL) - (v37 >> 1));
      v22 = v59;
LABEL_33:
      v40 = __OFSUB__(v21, 1);
      v41 = v21 - 1;
      if (v40)
      {
        goto LABEL_42;
      }

      v59 = v41;
      ++v12;
      v42 = v2;
      v43 = v22;
      v44 = v57;
      v49(v57, v56, v8);
      v57 = v44 + v53;
      v60 = v43;
      v2 = v42;
    }

    __swift_storeEnumTagSinglePayload(v5, 1, 1, v8);
    outlined destroy of IntentApplication?(v5, v2, &_s10PegasusAPI28Searchfoundation_CardSectionVSgMR);
LABEL_5:
    v17 = *(a1 + 16);
    if (v14 == v17)
    {
      break;
    }

    if (v14 >= v17)
    {
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }

    v18 = v14 + 1;
    v19 = *(a1 + 32 + 8 * v14);

    v12 = 0;
    v13 = v19;
    v14 = v18;
  }

  v20 = v58;
  __swift_storeEnumTagSinglePayload(v58, 1, 1, v8);
LABEL_36:

  outlined destroy of IntentApplication?(v20, &_s10PegasusAPI28Searchfoundation_CardSectionVSgMd, &_s10PegasusAPI28Searchfoundation_CardSectionVSgMR);
  v45 = *(v60 + 3);
  if (v45 < 2)
  {
    return;
  }

  v46 = v45 >> 1;
  v40 = __OFSUB__(v46, v59);
  v47 = v46 - v59;
  if (!v40)
  {
    *(v60 + 2) = v47;
    return;
  }

LABEL_43:
  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
}

uint64_t _s10OmniSearch0B6EntityVWOcTm_1()
{
  OUTLINED_FUNCTION_134();
  v2(0);
  OUTLINED_FUNCTION_17();
  (*(v3 + 16))(v0, v1);
  return v0;
}

uint64_t outlined init with take of (offset: Int, element: SearchResult)()
{
  OUTLINED_FUNCTION_134();
  __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_17();
  (*(v4 + 32))(v0, v1);
  return v0;
}

unint64_t lazy protocol witness table accessor for type LNSystemProtocol and conformance NSObject()
{
  result = lazy protocol witness table cache variable for type LNSystemProtocol and conformance NSObject;
  if (!lazy protocol witness table cache variable for type LNSystemProtocol and conformance NSObject)
  {
    type metadata accessor for TRIClient(255, &lazy cache variable for type metadata for LNSystemProtocol, 0x277D23938);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type LNSystemProtocol and conformance NSObject);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_37()
{

  return _s10OmniSearch0B6EntityVWOhTm_1(v0, type metadata accessor for SearchEntity);
}

uint64_t OUTLINED_FUNCTION_4_23()
{
  result = v1;
  *(v2 - 112) = v1;
  *(v2 - 184) = v0;
  return result;
}

double SearchNLGEntity.init()@<D0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for LocalizedStringResource();
  v3 = OUTLINED_FUNCTION_114(v2);
  MEMORY[0x28223BE20](v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSSgGMd, &_s10AppIntents14EntityPropertyCySSSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  *a1 = OUTLINED_FUNCTION_80_4();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + 8) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySaySSGSgGMd, &_s10AppIntents14EntityPropertyCySaySSGSgGMR);
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + 16) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation4DateVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation4DateVSgGMR);
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + 24) = EntityProperty<>.init(title:)();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + 32) = OUTLINED_FUNCTION_80_4();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + 40) = EntityProperty<>.init(title:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMd, &_s10AppIntents14EntityPropertyCy10Foundation14DateComponentsVSgGMR);
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + 48) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + 56) = OUTLINED_FUNCTION_80_4();
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + 64) = EntityProperty<>.init(title:)();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + 72) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + 80) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + 88) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + 96) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + 104) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_36_7();
  LocalizedStringResource.init(stringLiteral:)();
  *(a1 + 112) = OUTLINED_FUNCTION_80_4();
  result = 0.0;
  *(a1 + 120) = 0u;
  *(a1 + 136) = 0u;
  *(a1 + 152) = 0;
  return result;
}

uint64_t SearchNLGEntity.flightDepartureDate.setter()
{
  v0 = OUTLINED_FUNCTION_34_11();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_114(v2);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_90_0();
  OUTLINED_FUNCTION_6_10();
  EntityProperty.wrappedValue.setter();
  return OUTLINED_FUNCTION_33_7();
}

uint64_t specialized SearchNLGEntityConvertible.sourceResult.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = type metadata accessor for SearchResult(0);

  return __swift_storeEnumTagSinglePayload(a1, 1, 1, v2);
}

uint64_t SearchNLGEntityConvertible.sourceResult.getter()
{
  type metadata accessor for SearchResult(0);
  OUTLINED_FUNCTION_92();

  return __swift_storeEnumTagSinglePayload(v0, v1, v2, v3);
}

uint64_t SearchNLGEntity.startDate.setter()
{
  v0 = OUTLINED_FUNCTION_34_11();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_114(v2);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_90_0();
  OUTLINED_FUNCTION_6_10();
  EntityProperty.wrappedValue.setter();
  return OUTLINED_FUNCTION_33_7();
}

uint64_t SearchNLGEntity.endDate.setter()
{
  v0 = OUTLINED_FUNCTION_34_11();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_114(v2);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_90_0();
  OUTLINED_FUNCTION_6_10();
  EntityProperty.wrappedValue.setter();
  return OUTLINED_FUNCTION_33_7();
}

uint64_t SearchNLGEntity.contentCreationDate.setter()
{
  v0 = OUTLINED_FUNCTION_34_11();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_114(v2);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_90_0();
  OUTLINED_FUNCTION_6_10();
  EntityProperty.wrappedValue.setter();
  return OUTLINED_FUNCTION_33_7();
}

uint64_t SearchNLGEntityConvertible.documentSource.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_114(v2);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_10_17();
  v5(v4);
  type metadata accessor for SearchResult(0);
  v6 = OUTLINED_FUNCTION_112_2();
  if (__swift_getEnumTagSinglePayload(v6, 1, v1) == 1)
  {
    outlined destroy of IntentApplication?(v0, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
    v7 = CodableNSSecureCoding.wrappedValue.getter();
    outlined destroy of SearchResult(v0);
    v8 = [v7 bundleID];

    if (v8)
    {
      v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v10;

      goto LABEL_6;
    }
  }

  v9 = 0;
  v11 = 0xE000000000000000;
LABEL_6:
  type metadata accessor for LocalIndexClient();
  OUTLINED_FUNCTION_112_2();

  v12 = static LocalIndexClient.displayName(for:)(v9, v11);
  v14 = v13;

  if (v14)
  {
  }

  else
  {
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
    }

    v15 = type metadata accessor for Logger();
    __swift_project_value_buffer(v15, static Logging.search);
    OUTLINED_FUNCTION_112_2();

    v16 = Logger.logObject.getter();
    v17 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *v18 = 136315138;
      v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v18 + 4) = v19;
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_42_0();
    }

    else
    {
    }

    return 0;
  }

  return v12;
}

uint64_t SearchNLGEntityConvertible.senderNames.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
  OUTLINED_FUNCTION_114(v2);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_10_17();
  v5(v4);
  type metadata accessor for SearchResult(0);
  v6 = OUTLINED_FUNCTION_112_2();
  if (__swift_getEnumTagSinglePayload(v6, 1, v1) == 1)
  {
    outlined destroy of IntentApplication?(v0, &_s10OmniSearch0B6ResultVSgMd, &_s10OmniSearch0B6ResultVSgMR);
    return 0;
  }

  else
  {
    v8 = *(v1 + 24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMd, &_s15OmniSearchTypes21CodableNSSecureCodingVySo16CSSearchableItemCGMR);
    v9 = (v0 + v8);
    CodableNSSecureCoding.wrappedValue.getter();
    v10 = OUTLINED_FUNCTION_112_2();
    outlined destroy of SearchResult(v10);
    v7 = CSSearchableItem.senderNames.getter();
  }

  return v7;
}

uint64_t SearchNLGEntity.typeDisplayRepresentation.unsafeMutableAddressor()
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_0_38(&one-time initialization token for typeDisplayRepresentation);
  }

  v0 = type metadata accessor for TypeDisplayRepresentation();

  return __swift_project_value_buffer(v0, static SearchNLGEntity.typeDisplayRepresentation);
}

uint64_t static SearchNLGEntity.typeDisplayRepresentation.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_0_38(&one-time initialization token for typeDisplayRepresentation);
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, static SearchNLGEntity.typeDisplayRepresentation);
  swift_beginAccess();
  return (*(*(v2 - 8) + 16))(a1, v3, v2);
}

uint64_t static SearchNLGEntity.typeDisplayRepresentation.setter(uint64_t a1)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_0_38(&one-time initialization token for typeDisplayRepresentation);
  }

  v2 = type metadata accessor for TypeDisplayRepresentation();
  v3 = __swift_project_value_buffer(v2, static SearchNLGEntity.typeDisplayRepresentation);
  swift_beginAccess();
  v4 = *(v2 - 8);
  (*(v4 + 24))(v3, a1, v2);
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t (*static SearchNLGEntity.typeDisplayRepresentation.modify(uint64_t a1))(uint64_t a1)
{
  if (one-time initialization token for typeDisplayRepresentation != -1)
  {
    OUTLINED_FUNCTION_0_38(&one-time initialization token for typeDisplayRepresentation);
  }

  v1 = type metadata accessor for TypeDisplayRepresentation();
  __swift_project_value_buffer(v1, static SearchNLGEntity.typeDisplayRepresentation);
  swift_beginAccess();
  return static FlightSnippet.Status.allCases.modify;
}

uint64_t key path getter for static SearchNLGEntity.typeDisplayRepresentation : SearchNLGEntity.Type@<X0>(uint64_t a1@<X8>)
{
  v2 = SearchNLGEntity.typeDisplayRepresentation.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = type metadata accessor for TypeDisplayRepresentation();
  return (*(*(v3 - 8) + 16))(a1, v2, v3);
}

uint64_t key path setter for static SearchNLGEntity.typeDisplayRepresentation : SearchNLGEntity.Type(uint64_t a1)
{
  v2 = SearchNLGEntity.typeDisplayRepresentation.unsafeMutableAddressor();
  swift_beginAccess();
  v3 = type metadata accessor for TypeDisplayRepresentation();
  (*(*(v3 - 8) + 24))(v2, a1, v3);
  return swift_endAccess();
}

uint64_t SearchNLGEntity.displayRepresentation.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_114(v2);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v4);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_90_0();
  v6 = type metadata accessor for LocalizedStringResource();
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v7);
  outlined init with copy of Date?(v1 + 120, &v22, &_s10AppIntents0A6Entity_pSgMd, &_s10AppIntents0A6Entity_pSgMR);
  if (v23)
  {
    outlined init with take of EntityCardBuilding(&v22, v25);
    __swift_project_boxed_opaque_existential_1(v25, v25[3]);
    dispatch thunk of InstanceDisplayRepresentable.displayRepresentation.getter();
    return __swift_destroy_boxed_opaque_existential_1Tm(v25);
  }

  else
  {
    outlined destroy of IntentApplication?(&v22, &_s10AppIntents0A6Entity_pSgMd, &_s10AppIntents0A6Entity_pSgMR);
    if (one-time initialization token for search != -1)
    {
      OUTLINED_FUNCTION_35_0(&one-time initialization token for search);
    }

    v9 = type metadata accessor for Logger();
    __swift_project_value_buffer(v9, static Logging.search);
    outlined init with copy of SearchNLGEntity(v1, v25);
    v10 = Logger.logObject.getter();
    v11 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v24 = v21;
      *v12 = 136315138;
      outlined init with copy of SearchNLGEntity(v25, &v22);
      String.init<A>(describing:)();
      outlined destroy of SearchNLGEntity(v25);
      v13 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)();

      *(v12 + 4) = v13;
      _os_log_impl(&dword_25D85C000, v10, v11, "Unexpected nil representedEntity for %s", v12, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v21);
      OUTLINED_FUNCTION_42_0();
      OUTLINED_FUNCTION_42_0();
    }

    else
    {

      outlined destroy of SearchNLGEntity(v25);
    }

    LocalizedStringResource.init(stringLiteral:)();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v6);
    type metadata accessor for DisplayRepresentation.Image();
    OUTLINED_FUNCTION_92();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v20);
    return DisplayRepresentation.init(title:subtitle:image:)();
  }
}

uint64_t (*SearchNLGEntity.documentSource.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*SearchNLGEntity.title.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*SearchNLGEntity.sentFrom.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*SearchNLGEntity.contentCreationDate.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*SearchNLGEntity.answer.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*SearchNLGEntity.flightNumber.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for SearchNLGEntity.contentCreationDate : SearchNLGEntity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  OUTLINED_FUNCTION_114(v11);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v12);
  v14 = &v16 - v13;
  outlined init with copy of Date?(a1, &v16 - v13, a5, a6);
  return a7(v14);
}

uint64_t (*SearchNLGEntity.flightDepartureDate.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*SearchNLGEntity.flightDepartureAirportCode.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*SearchNLGEntity.flightArrivalAirportCode.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*SearchNLGEntity.flightCarrier.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*SearchNLGEntity.name.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*SearchNLGEntity.address.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*SearchNLGEntity.startDate.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t (*SearchNLGEntity.endDate.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t key path setter for SearchNLGEntity.documentSource : SearchNLGEntity(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{

  v6 = OUTLINED_FUNCTION_34_11();
  return a5(v6);
}

uint64_t (*SearchNLGEntity.globalSearchSummary.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_32_1(v2);
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.encodedMemoryCreationQUPerformanceMetrics.modify;
}

uint64_t protocol witness for static AppEntity.defaultQuery.getter in conformance SearchNLGEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchNLGEntity and conformance SearchNLGEntity();

  return MEMORY[0x28210B2E8](a1, v2);
}

uint64_t protocol witness for Identifiable.id.getter in conformance SearchNLGEntity(uint64_t a1)
{
  lazy protocol witness table accessor for type SearchNLGEntity and conformance SearchNLGEntity();

  return UUID.init()();
}

uint64_t protocol witness for static _IntentValue.defaultResolverSpecification.getter in conformance SearchNLGEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchNLGEntity and conformance SearchNLGEntity();

  return MEMORY[0x28210B488](a1, v2);
}

uint64_t protocol witness for CustomLocalizedStringResourceConvertible.localizedStringResource.getter in conformance SearchNLGEntity(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SearchNLGEntity and conformance SearchNLGEntity();

  return MEMORY[0x28210C4B8](a1, v2);
}

uint64_t outlined assign with take of AppEntity?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents0A6Entity_pSgMd, &_s10AppIntents0A6Entity_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type SearchNLGEntity and conformance SearchNLGEntity()
{
  result = lazy protocol witness table cache variable for type SearchNLGEntity and conformance SearchNLGEntity;
  if (!lazy protocol witness table cache variable for type SearchNLGEntity and conformance SearchNLGEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchNLGEntity and conformance SearchNLGEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchNLGEntity and conformance SearchNLGEntity;
  if (!lazy protocol witness table cache variable for type SearchNLGEntity and conformance SearchNLGEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchNLGEntity and conformance SearchNLGEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchNLGEntity and conformance SearchNLGEntity;
  if (!lazy protocol witness table cache variable for type SearchNLGEntity and conformance SearchNLGEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchNLGEntity and conformance SearchNLGEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchNLGEntity and conformance SearchNLGEntity;
  if (!lazy protocol witness table cache variable for type SearchNLGEntity and conformance SearchNLGEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchNLGEntity and conformance SearchNLGEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchNLGEntity and conformance SearchNLGEntity;
  if (!lazy protocol witness table cache variable for type SearchNLGEntity and conformance SearchNLGEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchNLGEntity and conformance SearchNLGEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchNLGEntity and conformance SearchNLGEntity;
  if (!lazy protocol witness table cache variable for type SearchNLGEntity and conformance SearchNLGEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchNLGEntity and conformance SearchNLGEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchNLGEntity and conformance SearchNLGEntity;
  if (!lazy protocol witness table cache variable for type SearchNLGEntity and conformance SearchNLGEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchNLGEntity and conformance SearchNLGEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchNLGEntity and conformance SearchNLGEntity;
  if (!lazy protocol witness table cache variable for type SearchNLGEntity and conformance SearchNLGEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchNLGEntity and conformance SearchNLGEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchNLGEntity and conformance SearchNLGEntity;
  if (!lazy protocol witness table cache variable for type SearchNLGEntity and conformance SearchNLGEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchNLGEntity and conformance SearchNLGEntity);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SearchNLGEntity and conformance SearchNLGEntity;
  if (!lazy protocol witness table cache variable for type SearchNLGEntity and conformance SearchNLGEntity)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchNLGEntity and conformance SearchNLGEntity);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_10AppIntents0A6Entity_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t getEnumTagSinglePayload for SearchNLGEntity(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 160))
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

uint64_t storeEnumTagSinglePayload for SearchNLGEntity(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
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
      *(result + 160) = 1;
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

    *(result + 160) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_0_38(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_6_10()
{

  return outlined init with copy of Date?(v0, v3, v1, v2);
}

uint64_t SearchPropertyRequest.name.getter()
{
  return SearchPropertyRequest.name.getter();
}

{
  v0 = OUTLINED_FUNCTION_101_6();
  v1(v0);
  OUTLINED_FUNCTION_17_9();
  EntityProperty.wrappedValue.getter();
  return v3;
}

uint64_t SearchPropertyRequest.type.getter()
{
  return SearchPropertyRequest.type.getter();
}

{
  v0 = OUTLINED_FUNCTION_113();
  v1(v0);
  OUTLINED_FUNCTION_11_9();
  return EntityProperty.wrappedValue.getter();
}

uint64_t SearchPropertyResponse.mediaValue.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  v1 = type metadata accessor for SearchPropertyResponse(v0);
  return OUTLINED_FUNCTION_66_7(v1);
}

uint64_t SearchPropertyResponse.navigationValue.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  v1 = type metadata accessor for SearchPropertyResponse(v0);
  return OUTLINED_FUNCTION_66_7(v1);
}

uint64_t SearchPropertyResponse.pommesContextFile.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  v1 = type metadata accessor for SearchPropertyResponse(v0);
  return OUTLINED_FUNCTION_66_7(v1);
}

uint64_t static SearchPropertyRequest.typeDisplayRepresentation.getter()
{
  return static SearchPropertyRequest.typeDisplayRepresentation.getter();
}

{
  OUTLINED_FUNCTION_117_6();
  if (!v2)
  {
    swift_once();
  }

  v3 = type metadata accessor for TypeDisplayRepresentation();
  v4 = __swift_project_value_buffer(v3, v1);
  v5 = *(*(v3 - 8) + 16);

  return v5(v0, v4, v3);
}

void one-time initialization function for defaultProperty()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch16HydrationContextVSgMd, &_s10OmniSearch16HydrationContextVSgMR);
  OUTLINED_FUNCTION_114(v0);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_23_1();
  v2 = type metadata accessor for SearchPropertyRequest(0);
  __swift_allocate_value_buffer(v2, static SearchPropertyRequest.defaultProperty);
  __swift_project_value_buffer(v2, static SearchPropertyRequest.defaultProperty);
  type metadata accessor for HydrationContext(0);
  v3 = OUTLINED_FUNCTION_17_1();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  SearchPropertyRequest.init(name:type:hydrationContext:)();
}

void SearchPropertyRequest.init(name:type:)(uint64_t a1, uint64_t a2, char *a3)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch16HydrationContextVSgMd, &_s10OmniSearch16HydrationContextVSgMR);
  OUTLINED_FUNCTION_114(v3);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_90_0();
  type metadata accessor for HydrationContext(0);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  SearchPropertyRequest.init(name:type:hydrationContext:)();
}

uint64_t static SearchPropertyRequest.defaultProperty.getter@<X0>(uint64_t a1@<X8>)
{
  if (one-time initialization token for defaultProperty != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for SearchPropertyRequest(0);
  v3 = __swift_project_value_buffer(v2, static SearchPropertyRequest.defaultProperty);
  return outlined init with copy of SearchPropertyRequest(v3, a1);
}

uint64_t key path setter for SearchPropertyRequest.name : SearchPropertyRequest(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return SearchPropertyRequest.name.setter(v1, v2);
}

uint64_t (*SearchPropertyRequest.name.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  type metadata accessor for SearchPropertyRequest(v3);
  OUTLINED_FUNCTION_17_9();
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchPropertyRequest.$name.getter()
{
  return SearchPropertyRequest.$name.getter();
}

{
  v0 = OUTLINED_FUNCTION_101_6();
  v1(v0);
  OUTLINED_FUNCTION_17_9();
  return EntityProperty.projectedValue.getter();
}

uint64_t key path getter for SearchPropertyRequest.type : SearchPropertyRequest@<X0>(_BYTE *a1@<X8>)
{
  result = SearchPropertyRequest.type.getter();
  *a1 = v3;
  return result;
}

uint64_t (*SearchPropertyRequest.type.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  type metadata accessor for SearchPropertyRequest(v3);
  OUTLINED_FUNCTION_11_9();
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.version.modify;
}

uint64_t SearchPropertyRequest.$type.getter()
{
  return SearchPropertyRequest.$type.getter();
}

{
  v0 = OUTLINED_FUNCTION_101_6();
  v1(v0);
  OUTLINED_FUNCTION_11_9();
  return EntityProperty.projectedValue.getter();
}

uint64_t SearchPropertyRequest.hydrationContext.getter()
{
  v0 = OUTLINED_FUNCTION_113();
  type metadata accessor for SearchPropertyRequest(v0);
  OUTLINED_FUNCTION_10_9();
  return EntityProperty.wrappedValue.getter();
}

uint64_t SearchPropertyRequest.hydrationContext.setter()
{
  v0 = OUTLINED_FUNCTION_34_11();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_114(v2);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v3);
  v4 = OUTLINED_FUNCTION_4_24();
  type metadata accessor for SearchPropertyRequest(v4);
  OUTLINED_FUNCTION_14_13();
  EntityProperty.wrappedValue.setter();
  return OUTLINED_FUNCTION_33_7();
}

uint64_t (*SearchPropertyRequest.hydrationContext.modify())()
{
  v1 = OUTLINED_FUNCTION_4_12();
  v2 = __swift_coroFrameAllocStub(v1);
  v3 = OUTLINED_FUNCTION_11_18(v2);
  type metadata accessor for SearchPropertyRequest(v3);
  OUTLINED_FUNCTION_10_9();
  *(v0 + 32) = EntityProperty.wrappedValue.modify();
  return MemoryCreationQUResult.encodedMemoryCreationQUPerformanceMetrics.modify;
}

uint64_t SearchPropertyRequest.$hydrationContext.getter()
{
  return SearchPropertyRequest.$hydrationContext.getter();
}

{
  v0 = OUTLINED_FUNCTION_101_6();
  v1(v0);
  OUTLINED_FUNCTION_10_9();
  return EntityProperty.projectedValue.getter();
}

void static SearchPropertyRequest.GroupInfo.== infix(_:_:)()
{
  OUTLINED_FUNCTION_155();
  v3 = *v1;
  v2 = v1[1];
  v5 = v1[2];
  v4 = v1[3];
  v6 = *(v1 + 32);
  v8 = *v0;
  v7 = v0[1];
  v10 = v0[2];
  v9 = v0[3];
  v11 = *(v0 + 32);
  if ((v6 & 1) == 0)
  {
    if ((v0[4] & 1) == 0)
    {
      v48 = v3 == v8 && v2 == v7;
      if (v48 || (OUTLINED_FUNCTION_35_15(), (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
      {
        v49 = OUTLINED_FUNCTION_8_19();
        outlined copy of SearchPropertyRequest.GroupInfo(v49, v50, v51, v52, 0);
        v53 = OUTLINED_FUNCTION_5_20();
        outlined copy of SearchPropertyRequest.GroupInfo(v53, v54, v55, v56, 0);
        specialized == infix<A>(_:_:)(v5, v10);
        v57 = OUTLINED_FUNCTION_5_20();
        outlined consume of SearchPropertyRequest.GroupInfo(v57, v58, v59, v60, 0);
        v26 = OUTLINED_FUNCTION_8_19();
        v30 = 0;
        goto LABEL_23;
      }

      v85 = OUTLINED_FUNCTION_8_19();
      outlined copy of SearchPropertyRequest.GroupInfo(v85, v86, v87, v88, 0);
      v89 = OUTLINED_FUNCTION_5_20();
      outlined copy of SearchPropertyRequest.GroupInfo(v89, v90, v91, v92, 0);
      v93 = OUTLINED_FUNCTION_5_20();
      outlined consume of SearchPropertyRequest.GroupInfo(v93, v94, v95, v96, 0);
      v43 = OUTLINED_FUNCTION_8_19();
      v47 = 0;
LABEL_15:
      outlined consume of SearchPropertyRequest.GroupInfo(v43, v44, v45, v46, v47);
      goto LABEL_24;
    }

LABEL_14:
    v31 = OUTLINED_FUNCTION_8_19();
    outlined copy of SearchPropertyRequest.GroupInfo(v31, v32, v33, v34, v11);
    v35 = OUTLINED_FUNCTION_5_20();
    outlined copy of SearchPropertyRequest.GroupInfo(v35, v36, v37, v38, v6);
    v39 = OUTLINED_FUNCTION_5_20();
    outlined consume of SearchPropertyRequest.GroupInfo(v39, v40, v41, v42, v6);
    v43 = OUTLINED_FUNCTION_8_19();
    v47 = v11;
    goto LABEL_15;
  }

  if ((v0[4] & 1) == 0)
  {
    goto LABEL_14;
  }

  if (v3 != v8 || v2 != v7)
  {
    OUTLINED_FUNCTION_35_15();
    if ((_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
    {
      v73 = OUTLINED_FUNCTION_8_19();
      outlined copy of SearchPropertyRequest.GroupInfo(v73, v74, v75, v76, 1);
      v77 = OUTLINED_FUNCTION_5_20();
      outlined copy of SearchPropertyRequest.GroupInfo(v77, v78, v79, v80, 1);
      v81 = OUTLINED_FUNCTION_5_20();
      outlined consume of SearchPropertyRequest.GroupInfo(v81, v82, v83, v84, 1);
      v43 = OUTLINED_FUNCTION_8_19();
      v47 = 1;
      goto LABEL_15;
    }
  }

  if (v5 == v10 && v4 == v9)
  {
    v61 = OUTLINED_FUNCTION_107();
    outlined copy of SearchPropertyRequest.GroupInfo(v61, v62, v5, v4, 1);
    v63 = OUTLINED_FUNCTION_5_20();
    outlined copy of SearchPropertyRequest.GroupInfo(v63, v64, v65, v66, 1);
    v67 = OUTLINED_FUNCTION_5_20();
    outlined consume of SearchPropertyRequest.GroupInfo(v67, v68, v69, v70, 1);
    v71 = OUTLINED_FUNCTION_107();
    outlined consume of SearchPropertyRequest.GroupInfo(v71, v72, v5, v4, 1);
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_54_8();
  _stringCompareWithSmolCheck(_:_:expecting:)();
  v14 = OUTLINED_FUNCTION_8_19();
  outlined copy of SearchPropertyRequest.GroupInfo(v14, v15, v16, v17, 1);
  v18 = OUTLINED_FUNCTION_5_20();
  outlined copy of SearchPropertyRequest.GroupInfo(v18, v19, v20, v21, 1);
  v22 = OUTLINED_FUNCTION_5_20();
  outlined consume of SearchPropertyRequest.GroupInfo(v22, v23, v24, v25, 1);
  v26 = OUTLINED_FUNCTION_8_19();
  v30 = 1;
LABEL_23:
  outlined consume of SearchPropertyRequest.GroupInfo(v26, v27, v28, v29, v30);
LABEL_24:
  OUTLINED_FUNCTION_148();
}

uint64_t SearchPropertyRequest.GroupInfo.hash(into:)(uint64_t a1)
{
  if (*(v1 + 32))
  {
    MEMORY[0x25F8A0680](1);
    OUTLINED_FUNCTION_54_8();
    String.hash(into:)();

    return String.hash(into:)();
  }

  else
  {
    MEMORY[0x25F8A0680](0);
    OUTLINED_FUNCTION_54_8();
    String.hash(into:)();
    PreferredType.rawValue.getter();
    String.hash(into:)();
  }
}

Swift::Int SearchPropertyRequest.GroupInfo.hashValue.getter()
{
  v1 = *(v0 + 32);
  Hasher.init(_seed:)();
  if (v1)
  {
    MEMORY[0x25F8A0680](1);
    OUTLINED_FUNCTION_86_4();
    String.hash(into:)();
    String.hash(into:)();
  }

  else
  {
    MEMORY[0x25F8A0680](0);
    OUTLINED_FUNCTION_86_4();
    String.hash(into:)();
    PreferredType.rawValue.getter();
    String.hash(into:)();
  }

  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance SearchPropertyRequest.GroupInfo(uint64_t a1)
{
  Hasher.init(_seed:)();
  SearchPropertyRequest.GroupInfo.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t SearchPropertyRequest.groupingInfo.getter()
{
  v2 = OUTLINED_FUNCTION_113();
  v3 = v1 + *(type metadata accessor for SearchPropertyRequest(v2) + 32);
  v4 = *v3;
  v5 = *(v3 + 8);
  v6 = *(v3 + 16);
  v7 = *(v3 + 24);
  *v0 = *v3;
  *(v0 + 8) = v5;
  *(v0 + 16) = v6;
  *(v0 + 24) = v7;
  v8 = *(v3 + 32);
  *(v0 + 32) = v8;

  return outlined copy of SearchPropertyRequest.GroupInfo?(v4, v5, v6, v7, v8);
}

__n128 SearchPropertyRequest.groupingInfo.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  v4 = v1 + *(type metadata accessor for SearchPropertyRequest(0) + 32);
  outlined consume of SearchPropertyRequest.GroupInfo?(*v4, *(v4 + 8), *(v4 + 16), *(v4 + 24), *(v4 + 32));
  result = *a1;
  v6 = *(a1 + 16);
  *v4 = *a1;
  *(v4 + 16) = v6;
  *(v4 + 32) = v3;
  return result;
}

void (*SearchPropertyRequest.groupingInfo.modify())()
{
  v0 = OUTLINED_FUNCTION_42_2();
  type metadata accessor for SearchPropertyRequest(v0);
  return _s10OmniSearch11GeoLocationVSgWOi_;
}

void SearchPropertyRequest.init()()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch16HydrationContextVSgMd, &_s10OmniSearch16HydrationContextVSgMR);
  OUTLINED_FUNCTION_114(v0);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v1);
  OUTLINED_FUNCTION_15_16();
  type metadata accessor for HydrationContext(0);
  v2 = OUTLINED_FUNCTION_7_19();
  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
  SearchPropertyRequest.init(name:type:hydrationContext:)();
}

void SearchPropertyRequest.init(name:type:hydrationContext:)()
{
  OUTLINED_FUNCTION_155();
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10OmniSearch16HydrationContextVSgMd, &_s10OmniSearch16HydrationContextVSgMR);
  v3 = OUTLINED_FUNCTION_114(v2);
  MEMORY[0x28223BE20](v3);
  OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_191_1();
  MEMORY[0x28223BE20](v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents21DisplayRepresentationV5ImageVSgMd, &_s10AppIntents21DisplayRepresentationV5ImageVSgMR);
  OUTLINED_FUNCTION_114(v5);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v6);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation23LocalizedStringResourceVSgMd, &_s10Foundation23LocalizedStringResourceVSgMR);
  OUTLINED_FUNCTION_114(v7);
  OUTLINED_FUNCTION_77_0();
  MEMORY[0x28223BE20](v8);
  OUTLINED_FUNCTION_23_1();
  v9 = type metadata accessor for LocalizedStringResource();
  OUTLINED_FUNCTION_17();
  MEMORY[0x28223BE20](v10);
  OUTLINED_FUNCTION_36();
  OUTLINED_FUNCTION_26_11();
  LocalizedStringResource.init(stringLiteral:)();
  v11 = OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_120_5(v11, v12, v13, v9);
  OUTLINED_FUNCTION_92();
  __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
  DisplayRepresentation.init(title:subtitle:image:)();
  v18 = type metadata accessor for SearchPropertyRequest(0);
  v19 = v18[5];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCySSGMd, &_s10AppIntents14EntityPropertyCySSGMR);
  OUTLINED_FUNCTION_38_15();
  LocalizedStringResource.init(stringLiteral:)();
  *(v1 + v19) = EntityProperty<>.init(title:)();
  v20 = v18[6];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch0fD4TypeOGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch0fD4TypeOGMR);
  OUTLINED_FUNCTION_114_5();
  LocalizedStringResource.init(stringLiteral:)();
  lazy protocol witness table accessor for type SearchPropertyType and conformance SearchPropertyType();
  OUTLINED_FUNCTION_74_9();
  *(v1 + v20) = EntityProperty<>.init(title:)();
  v21 = v18[7];
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10AppIntents14EntityPropertyCy10OmniSearch16HydrationContextVSgGMd, &_s10AppIntents14EntityPropertyCy10OmniSearch16HydrationContextVSgGMR);
  OUTLINED_FUNCTION_98_2();
  OUTLINED_FUNCTION_153_2();
  LocalizedStringResource.init(stringLiteral:)();
  OUTLINED_FUNCTION_0_39();
  lazy protocol witness table accessor for type HydrationContext and conformance HydrationContext(v22);
  OUTLINED_FUNCTION_74_9();
  *(v1 + v21) = EntityProperty<>.init(title:)();
  OUTLINED_FUNCTION_95_6(v18[8]);
  EntityProperty.wrappedValue.setter();
  EntityProperty.wrappedValue.setter();
  v23 = OUTLINED_FUNCTION_121_0();
  outlined init with copy of ResourceBundle?(v23, v24, &_s10OmniSearch16HydrationContextVSgMd, &_s10OmniSearch16HydrationContextVSgMR);
  v25 = OUTLINED_FUNCTION_64_0();
  outlined init with copy of ResourceBundle?(v25, v26, &_s10OmniSearch16HydrationContextVSgMd, &_s10OmniSearch16HydrationContextVSgMR);
  EntityProperty.wrappedValue.setter();
  OUTLINED_FUNCTION_201_0();
  outlined destroy of IntentApplication?(v27, v28, v29);
  OUTLINED_FUNCTION_201_0();
  outlined destroy of IntentApplication?(v30, v31, v32);
  OUTLINED_FUNCTION_148();
}