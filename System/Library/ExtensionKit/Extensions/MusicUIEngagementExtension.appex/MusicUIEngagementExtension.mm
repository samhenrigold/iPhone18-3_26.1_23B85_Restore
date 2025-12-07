BOOL ODJRequest.CodingKeys.init(stringValue:)()
{
  OUTLINED_FUNCTION_17();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ODJRequest.CodingKeys.init(rawValue:), v2);
  OUTLINED_FUNCTION_24();
  return v1 != 0;
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

{
  v1 = a1;
  Hasher.init(_seed:)();
  Property.rawValue.getter(v1);
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_27(a1);
  String.hash(into:)();
  return Hasher._finalize()();
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance ODJRequest.CodingKeys@<W0>(_BYTE *a1@<X8>)
{
  result = ODJRequest.CodingKeys.init(stringValue:)();
  *a1 = result;
  return result;
}

void _s26MusicUIEngagementExtension11ODJResponseV10CodingKeysOSYAASY8rawValue03RawH0QzvgTW_0(uint64_t a1@<X8>)
{
  strcpy(a1, "json-payload");
  *(a1 + 13) = 0;
  *(a1 + 14) = -5120;
}

BOOL protocol witness for CodingKey.init(stringValue:) in conformance ODJRequest.CodingKeys@<W0>(_BYTE *a1@<X8>)
{
  result = ODJRequest.CodingKeys.init(stringValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ODJRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ODJRequest.CodingKeys and conformance ODJRequest.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ODJRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ODJRequest.CodingKeys and conformance ODJRequest.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

void ODJRequest.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26MusicUIEngagementExtension10ODJRequestV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy26MusicUIEngagementExtension10ODJRequestV10CodingKeysOGMR);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_9();
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  v19 = lazy protocol witness table accessor for type ODJRequest.CodingKeys and conformance ODJRequest.CodingKeys();
  OUTLINED_FUNCTION_4(&type metadata for ODJRequest.CodingKeys, v20, v19);
  if (!v17)
  {
    lazy protocol witness table accessor for type JSONPayload and conformance JSONPayload();
    OUTLINED_FUNCTION_2();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v21 = OUTLINED_FUNCTION_3();
    v22(v21);
  }

  __swift_destroy_boxed_opaque_existential_1(v16);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_26();
}

void JSONPayload.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26MusicUIEngagementExtension11JSONPayloadV10CodingKeys33_C140570F9752CD246A8B594F58B6E96ELLOGMd, &_ss22KeyedDecodingContainerVy26MusicUIEngagementExtension11JSONPayloadV10CodingKeys33_C140570F9752CD246A8B594F58B6E96ELLOGMR);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_9();
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  v19 = lazy protocol witness table accessor for type JSONPayload.CodingKeys and conformance JSONPayload.CodingKeys();
  OUTLINED_FUNCTION_4(&unk_100019478, v20, v19);
  if (!v17)
  {
    lazy protocol witness table accessor for type ODJRequestBatch and conformance ODJRequestBatch();
    OUTLINED_FUNCTION_2();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v21 = OUTLINED_FUNCTION_3();
    v22(v21);
  }

  __swift_destroy_boxed_opaque_existential_1(v16);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_26();
}

uint64_t ODJRequestBatch.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6863746162 && a2 == 0xE500000000000000)
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

void ODJRequestBatch.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26MusicUIEngagementExtension15ODJRequestBatchV10CodingKeys33_C140570F9752CD246A8B594F58B6E96ELLOGMd, &_ss22KeyedDecodingContainerVy26MusicUIEngagementExtension15ODJRequestBatchV10CodingKeys33_C140570F9752CD246A8B594F58B6E96ELLOGMR);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_9();
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  v19 = lazy protocol witness table accessor for type ODJRequestBatch.CodingKeys and conformance ODJRequestBatch.CodingKeys();
  OUTLINED_FUNCTION_4(&unk_100019650, v20, v19);
  if (!v17)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS26MusicUIEngagementExtension25PropertyIdentifierRequestVGMd, &_sSDySS26MusicUIEngagementExtension25PropertyIdentifierRequestVGMR);
    lazy protocol witness table accessor for type [String : PropertyIdentifierRequest] and conformance <> [A : B]();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v21 = OUTLINED_FUNCTION_3();
    v22(v21);
  }

  __swift_destroy_boxed_opaque_existential_1(v16);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_26();
}

uint64_t JSONPayload.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x74736575716572 && a2 == 0xE700000000000000)
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

void PropertyIdentifierRequest.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26MusicUIEngagementExtension25PropertyIdentifierRequestV10CodingKeys33_C140570F9752CD246A8B594F58B6E96ELLOGMd, &_ss22KeyedDecodingContainerVy26MusicUIEngagementExtension25PropertyIdentifierRequestV10CodingKeys33_C140570F9752CD246A8B594F58B6E96ELLOGMR);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_9();
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  v19 = lazy protocol witness table accessor for type PropertyIdentifierRequest.CodingKeys and conformance PropertyIdentifierRequest.CodingKeys();
  OUTLINED_FUNCTION_4(&unk_100019760, v20, v19);
  if (!v17)
  {
    lazy protocol witness table accessor for type JSONRequest and conformance JSONRequest();
    OUTLINED_FUNCTION_2();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v21 = OUTLINED_FUNCTION_3();
    v22(v21);
  }

  __swift_destroy_boxed_opaque_existential_1(v16);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_26();
}

BOOL JSONRequest.Command.init(rawValue:)()
{
  OUTLINED_FUNCTION_17();
  v2._object = v0;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of JSONRequest.Command.init(rawValue:), v2);
  OUTLINED_FUNCTION_24();
  return v1 != 0;
}

uint64_t _s26MusicUIEngagementExtension25PropertyIdentifierRequestV10CodingKeys33_C140570F9752CD246A8B594F58B6E96ELLOs0G3KeyAAsAGP11stringValuexSgSS_tcfCTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = JSONPayload.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance JSONPayload.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = ODJRequest.CodingKeys.init(intValue:)();
  *a1 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance JSONPayload.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JSONPayload.CodingKeys and conformance JSONPayload.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance JSONPayload.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JSONPayload.CodingKeys and conformance JSONPayload.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ODJRequestBatch.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = ODJRequestBatch.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ODJRequestBatch.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ODJRequestBatch.CodingKeys and conformance ODJRequestBatch.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ODJRequestBatch.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ODJRequestBatch.CodingKeys and conformance ODJRequestBatch.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PropertyIdentifierRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PropertyIdentifierRequest.CodingKeys and conformance PropertyIdentifierRequest.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PropertyIdentifierRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PropertyIdentifierRequest.CodingKeys and conformance PropertyIdentifierRequest.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance JSONRequest.Command@<W0>(_BYTE *a1@<X8>)
{
  result = JSONRequest.Command.init(rawValue:)();
  *a1 = result;
  return result;
}

uint64_t JSONRequest.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x646E616D6D6F63 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x79747265706F7270 && a2 == 0xEC000000656D614ELL;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6574656D61726170 && a2 == 0xEA00000000007372)
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

uint64_t JSONRequest.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x646E616D6D6F63;
  }

  if (a1 == 1)
  {
    return 0x79747265706F7270;
  }

  return 0x6574656D61726170;
}

void JSONRequest.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26MusicUIEngagementExtension11JSONRequestV10CodingKeys33_C140570F9752CD246A8B594F58B6E96ELLOGMd, &_ss22KeyedDecodingContainerVy26MusicUIEngagementExtension11JSONRequestV10CodingKeys33_C140570F9752CD246A8B594F58B6E96ELLOGMR);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_9();
  __chkstk_darwin(v17);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  v18 = lazy protocol witness table accessor for type JSONRequest.CodingKeys and conformance JSONRequest.CodingKeys();
  OUTLINED_FUNCTION_4(&unk_1000192C8, v19, v18);
  lazy protocol witness table accessor for type JSONRequest.Command and conformance JSONRequest.Command();
  OUTLINED_FUNCTION_2();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  lazy protocol witness table accessor for type Property and conformance Property();
  OUTLINED_FUNCTION_2();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  lazy protocol witness table accessor for type Parameters and conformance Parameters();
  OUTLINED_FUNCTION_2();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v20 = OUTLINED_FUNCTION_3();
  v21(v20);
  __swift_destroy_boxed_opaque_existential_1(v16);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_26();
}

MusicUIEngagementExtension::Parameters::Feature_optional __swiftcall Parameters.Feature.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_17();
  v3._object = v1;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of Parameters.Feature.init(rawValue:), v3);
  OUTLINED_FUNCTION_24();
  if (v2 >= 4)
  {
    return 4;
  }

  else
  {
    return v2;
  }
}

unint64_t Parameters.Feature.rawValue.getter(char a1)
{
  result = 0x796D6568636C61;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000015;
      break;
    case 2:
      result = 0x507972617262696CLL;
      break;
    case 3:
      result = 0x79616C5069726973;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t Parameters.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x65727574616566 && a2 == 0xE700000000000000)
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

Swift::Int JSONPayload.CodingKeys.hashValue.getter(uint64_t a1)
{
  OUTLINED_FUNCTION_27(a1);
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

void Parameters.init(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_25();
  OUTLINED_FUNCTION_13();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy26MusicUIEngagementExtension10ParametersV10CodingKeys33_C140570F9752CD246A8B594F58B6E96ELLOGMd, &_ss22KeyedDecodingContainerVy26MusicUIEngagementExtension10ParametersV10CodingKeys33_C140570F9752CD246A8B594F58B6E96ELLOGMR);
  OUTLINED_FUNCTION_0();
  OUTLINED_FUNCTION_9();
  __chkstk_darwin(v18);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_5();
  v19 = lazy protocol witness table accessor for type Parameters.CodingKeys and conformance Parameters.CodingKeys();
  OUTLINED_FUNCTION_4(&unk_100019358, v20, v19);
  if (!v17)
  {
    lazy protocol witness table accessor for type Parameters.Feature and conformance Parameters.Feature();
    OUTLINED_FUNCTION_2();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v21 = OUTLINED_FUNCTION_3();
    v22(v21);
  }

  __swift_destroy_boxed_opaque_existential_1(v16);
  OUTLINED_FUNCTION_12();
  OUTLINED_FUNCTION_26();
}

MusicUIEngagementExtension::Property_optional __swiftcall Property.init(rawValue:)(Swift::String rawValue)
{
  OUTLINED_FUNCTION_17();
  _findStringSwitchCaseWithCache(cases:string:cache:)();
  OUTLINED_FUNCTION_24();
  if (v1 >= 0x19)
  {
    return 25;
  }

  else
  {
    return v1;
  }
}

uint64_t Property.rawValue.getter(char a1)
{
  result = 0x4565727574616566;
  switch(a1)
  {
    case 1:
    case 12:
      OUTLINED_FUNCTION_23();
      result = v8 | 6;
      break;
    case 2:
      result = 0xD000000000000019;
      break;
    case 3:
    case 17:
      OUTLINED_FUNCTION_23();
      result = v9 - 4;
      break;
    case 4:
      OUTLINED_FUNCTION_23();
      result = v4 + 9;
      break;
    case 5:
    case 6:
      return result;
    case 7:
      OUTLINED_FUNCTION_23();
      result = v7 - 7;
      break;
    case 8:
      OUTLINED_FUNCTION_23();
      result = v12 - 3;
      break;
    case 9:
    case 13:
    case 21:
      OUTLINED_FUNCTION_23();
      result = v10 + 3;
      break;
    case 10:
      OUTLINED_FUNCTION_23();
      result = v11 - 1;
      break;
    case 11:
    case 15:
      OUTLINED_FUNCTION_23();
      result = v6 | 2;
      break;
    case 14:
      result = 0xD000000000000019;
      break;
    case 16:
    case 24:
      OUTLINED_FUNCTION_23();
      result = v5 - 2;
      break;
    case 18:
      result = 0xD000000000000019;
      break;
    case 19:
      OUTLINED_FUNCTION_23();
      result = v14 - 8;
      break;
    case 20:
      result = 0xD000000000000019;
      break;
    case 22:
      OUTLINED_FUNCTION_23();
      result = v13 - 9;
      break;
    case 23:
      result = 0x6574617453696C6DLL;
      break;
    default:
      OUTLINED_FUNCTION_23();
      result = v3 + 7;
      break;
  }

  return result;
}

BOOL ODJResponse.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_17();
  v4._object = v2;
  _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ODJResponse.CodingKeys.init(rawValue:), v4);
  OUTLINED_FUNCTION_24();
  return v3 != 0;
}

uint64_t ODJResponse.JSONPayload.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x65736E6F70736572 && a2 == 0xE800000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F727265 && a2 == 0xE500000000000000)
  {

    return 1;
  }

  else
  {
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

uint64_t ODJResponse.JSONPayload.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x726F727265;
  }

  else
  {
    return 0x65736E6F70736572;
  }
}

void ODJResponse.JSONPayload.encode(to:)(uint64_t a1)
{
  OUTLINED_FUNCTION_25();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26MusicUIEngagementExtension11ODJResponseV11JSONPayloadV10CodingKeys33_C140570F9752CD246A8B594F58B6E96ELLOGMd, &_ss22KeyedEncodingContainerVy26MusicUIEngagementExtension11ODJResponseV11JSONPayloadV10CodingKeys33_C140570F9752CD246A8B594F58B6E96ELLOGMR);
  OUTLINED_FUNCTION_0();
  v5 = v4;
  OUTLINED_FUNCTION_9();
  __chkstk_darwin(v6);
  v8 = v12 - v7;
  OUTLINED_FUNCTION_16();
  v9 = lazy protocol witness table accessor for type ODJResponse.JSONPayload.CodingKeys and conformance ODJResponse.JSONPayload.CodingKeys();
  OUTLINED_FUNCTION_20(&unk_100019508, v10, v9);
  *&v12[0] = *v1;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS26MusicUIEngagementExtension11ODJResponseV26PropertyIdentifierResponseVGMd, &_sSDySS26MusicUIEngagementExtension11ODJResponseV26PropertyIdentifierResponseVGMR);
  lazy protocol witness table accessor for type [String : ODJResponse.PropertyIdentifierResponse] and conformance <> [A : B]();
  OUTLINED_FUNCTION_15();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    v11 = *(v1 + 24);
    v12[0] = *(v1 + 8);
    v12[1] = v11;
    v13 = *(v1 + 40);
    v14 = 1;
    lazy protocol witness table accessor for type ODJResponse.JSONPayloadError and conformance ODJResponse.JSONPayloadError();
    OUTLINED_FUNCTION_15();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  (*(v5 + 8))(v8, v3);
  OUTLINED_FUNCTION_26();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance JSONRequest.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = JSONRequest.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance JSONRequest.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = JSONRequest.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance JSONRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JSONRequest.CodingKeys and conformance JSONRequest.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance JSONRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type JSONRequest.CodingKeys and conformance JSONRequest.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

MusicUIEngagementExtension::Parameters::Feature_optional protocol witness for RawRepresentable.init(rawValue:) in conformance Parameters.Feature@<W0>(Swift::String *a1@<X0>, MusicUIEngagementExtension::Parameters::Feature_optional *a2@<X8>)
{
  result.value = Parameters.Feature.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Parameters.Feature@<X0>(unint64_t *a1@<X8>)
{
  result = Parameters.Feature.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance JSONPayload.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Parameters.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = Parameters.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Parameters.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Parameters.CodingKeys and conformance Parameters.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Parameters.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Parameters.CodingKeys and conformance Parameters.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

MusicUIEngagementExtension::Property_optional protocol witness for RawRepresentable.init(rawValue:) in conformance Property@<W0>(Swift::String *a1@<X0>, MusicUIEngagementExtension::Property_optional *a2@<X8>)
{
  result.value = Property.init(rawValue:)(*a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for RawRepresentable.rawValue.getter in conformance Property@<X0>(uint64_t *a1@<X8>)
{
  result = Property.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

MusicUIEngagementExtension::Property_optional protocol witness for CodingKey.init(stringValue:) in conformance Property@<W0>(uint64_t a1@<X0>, MusicUIEngagementExtension::Property_optional *a2@<X8>)
{
  result.value = Property.init(stringValue:)(*&a1).value;
  a2->value = result.value;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Property(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Property and conformance Property();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Property(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Property and conformance Property();

  return CodingKey.debugDescription.getter(a1, v2);
}

BOOL protocol witness for RawRepresentable.init(rawValue:) in conformance ODJResponse.CodingKeys@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = ODJResponse.CodingKeys.init(stringValue:)(*a1, a1[1]);
  *a2 = result;
  return result;
}

BOOL protocol witness for CodingKey.init(stringValue:) in conformance ODJResponse.CodingKeys@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = ODJResponse.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ODJResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ODJResponse.CodingKeys and conformance ODJResponse.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ODJResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ODJResponse.CodingKeys and conformance ODJResponse.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ODJResponse.JSONPayload.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = ODJResponse.JSONPayload.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance ODJResponse.JSONPayload.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = ODJResponse.JSONPayload.CodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ODJResponse.JSONPayload.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ODJResponse.JSONPayload.CodingKeys and conformance ODJResponse.JSONPayload.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ODJResponse.JSONPayload.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ODJResponse.JSONPayload.CodingKeys and conformance ODJResponse.JSONPayload.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ODJResponse.JSONPayloadError.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701080931 && a2 == 0xE400000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0x6567617373656DLL && a2 == 0xE700000000000000;
    if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {

      return 1;
    }

    else if (a1 == 0x6E69616D6F64 && a2 == 0xE600000000000000)
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

Swift::Int JSONRequest.CodingKeys.hashValue.getter(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_27(a1);
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

uint64_t ODJResponse.JSONPayloadError.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 1701080931;
  }

  if (a1 == 1)
  {
    return 0x6567617373656DLL;
  }

  return 0x6E69616D6F64;
}

void ODJResponse.JSONPayloadError.encode(to:)(uint64_t a1)
{
  OUTLINED_FUNCTION_25();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26MusicUIEngagementExtension11ODJResponseV16JSONPayloadErrorV10CodingKeys33_C140570F9752CD246A8B594F58B6E96ELLOGMd, &_ss22KeyedEncodingContainerVy26MusicUIEngagementExtension11ODJResponseV16JSONPayloadErrorV10CodingKeys33_C140570F9752CD246A8B594F58B6E96ELLOGMR);
  OUTLINED_FUNCTION_0();
  v4 = v3;
  OUTLINED_FUNCTION_9();
  __chkstk_darwin(v5);
  v7 = &v10[-v6];
  OUTLINED_FUNCTION_16();
  v8 = lazy protocol witness table accessor for type ODJResponse.JSONPayloadError.CodingKeys and conformance ODJResponse.JSONPayloadError.CodingKeys();
  OUTLINED_FUNCTION_20(&unk_1000193E8, v9, v8);
  v10[15] = 0;
  OUTLINED_FUNCTION_15();
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v10[14] = 1;
    OUTLINED_FUNCTION_15();
    KeyedEncodingContainer.encode(_:forKey:)();
    v10[13] = 2;
    OUTLINED_FUNCTION_15();
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  (*(v4 + 8))(v7, v2);
  OUTLINED_FUNCTION_26();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance JSONRequest.CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ODJResponse.JSONPayloadError.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = ODJResponse.JSONPayloadError.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ODJResponse.JSONPayloadError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ODJResponse.JSONPayloadError.CodingKeys and conformance ODJResponse.JSONPayloadError.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ODJResponse.JSONPayloadError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ODJResponse.JSONPayloadError.CodingKeys and conformance ODJResponse.JSONPayloadError.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t ODJResponse.PropertyIdentifierResponse.encode(to:)(void *a1)
{
  v3 = v2;
  v4 = v1;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26MusicUIEngagementExtension8PropertyOGMd, &_ss22KeyedEncodingContainerVy26MusicUIEngagementExtension8PropertyOGMR);
  OUTLINED_FUNCTION_0();
  v35 = v6;
  OUTLINED_FUNCTION_9();
  __chkstk_darwin(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26MusicUIEngagementExtension11ODJResponseV26PropertyIdentifierResponseV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy26MusicUIEngagementExtension11ODJResponseV26PropertyIdentifierResponseV10CodingKeysOGMR);
  OUTLINED_FUNCTION_0();
  v10 = v9;
  OUTLINED_FUNCTION_9();
  __chkstk_darwin(v11);
  v13 = &v32 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ODJResponse.PropertyIdentifierResponse.CodingKeys and conformance ODJResponse.PropertyIdentifierResponse.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v36 = v4;
  v14 = *v4;
  if (v14)
  {
    v33 = v10;
    LOBYTE(v41) = 0;
    lazy protocol witness table accessor for type Property and conformance Property();

    v34 = v8;
    v32 = v13;
    result = KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v16 = 0;
    v17 = 1 << *(v14 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v14 + 64);
    v20 = (v17 + 63) >> 6;
    while (v19)
    {
      v21 = v16;
LABEL_10:
      v22 = __clz(__rbit64(v19)) | (v21 << 6);
      v23 = *(*(v14 + 48) + v22);
      outlined init with copy of Encodable?(*(v14 + 56) + 40 * v22, &v41);
      if (v43 == 1)
      {
LABEL_16:

        v25 = OUTLINED_FUNCTION_10();
        v26(v25);
        v10 = v33;
        v8 = v34;
        v13 = v32;
        goto LABEL_17;
      }

      v19 &= v19 - 1;
      v38 = v41;
      v39 = v42;
      v40 = v43;
      if (v43)
      {
        outlined init with take of Encodable(&v38, &v41);
        v37 = v3;
        __swift_project_boxed_opaque_existential_1(&v41, v43);
        LOBYTE(v38) = v23;
        v24 = v37;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v3 = v24;
        if (v24)
        {

          v28 = OUTLINED_FUNCTION_10();
          v29(v28);
          (*(v33 + 8))(v32, v34);
          return __swift_destroy_boxed_opaque_existential_1(&v41);
        }

        result = __swift_destroy_boxed_opaque_existential_1(&v41);
        v16 = v21;
      }

      else
      {
        outlined destroy of Encodable?(&v38);
        LOBYTE(v41) = v23;
        result = KeyedEncodingContainer.encodeNil(forKey:)();
        if (v3)
        {

          v30 = OUTLINED_FUNCTION_10();
          v31(v30);
          return (*(v33 + 8))(v32, v34);
        }

        v16 = v21;
      }
    }

    while (1)
    {
      v21 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        break;
      }

      if (v21 >= v20)
      {
        goto LABEL_16;
      }

      v19 = *(v14 + 64 + 8 * v21);
      ++v16;
      if (v19)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:
    v27 = v36[3];
    if (v27)
    {
      v41 = *(v36 + 1);
      v43 = *(v36 + 2);
      v42 = v27;
      LOBYTE(v38) = 1;
      lazy protocol witness table accessor for type ODJResponse.JSONPayloadError and conformance ODJResponse.JSONPayloadError();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
    }

    return (*(v10 + 8))(v13, v8);
  }

  return result;
}

Swift::Int ODJResponse.JSONPayload.CodingKeys.hashValue.getter(uint64_t a1)
{
  v1 = a1;
  OUTLINED_FUNCTION_27(a1);
  Hasher._combine(_:)(v1 & 1);
  return Hasher._finalize()();
}

void ODJResponse.encode(to:)(uint64_t a1)
{
  OUTLINED_FUNCTION_25();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy26MusicUIEngagementExtension11ODJResponseV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy26MusicUIEngagementExtension11ODJResponseV10CodingKeysOGMR);
  OUTLINED_FUNCTION_0();
  v4 = v3;
  OUTLINED_FUNCTION_9();
  __chkstk_darwin(v5);
  OUTLINED_FUNCTION_6();
  OUTLINED_FUNCTION_16();
  v6 = lazy protocol witness table accessor for type ODJResponse.CodingKeys and conformance ODJResponse.CodingKeys();
  OUTLINED_FUNCTION_20(&type metadata for ODJResponse.CodingKeys, v7, v6);
  lazy protocol witness table accessor for type ODJResponse.JSONPayload and conformance ODJResponse.JSONPayload();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  (*(v4 + 8))(v1, v2);
  OUTLINED_FUNCTION_26();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ODJResponse.PropertyIdentifierResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ODJResponse.PropertyIdentifierResponse.CodingKeys and conformance ODJResponse.PropertyIdentifierResponse.CodingKeys();

  return CodingKey.description.getter(a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ODJResponse.PropertyIdentifierResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ODJResponse.PropertyIdentifierResponse.CodingKeys and conformance ODJResponse.PropertyIdentifierResponse.CodingKeys();

  return CodingKey.debugDescription.getter(a1, v2);
}

uint64_t protocol witness for SetAlgebra.init() in conformance NSJSONWritingOptions@<X0>(uint64_t *a1@<X8>)
{
  result = specialized OptionSet<>.init()();
  *a1 = result;
  return result;
}

uint64_t protocol witness for SetAlgebra.intersection(_:) in conformance ICMusicSubscriptionStatusCapabilities@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = specialized OptionSet.intersection(_:)(*a1, *v2);
  *a2 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for Property(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xE8)
  {
    if (a2 + 24 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 24) >> 8 < 0xFF)
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

    v5 = (*a1 | (v4 << 8)) - 25;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x19;
  v5 = v6 - 25;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for Property(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 24 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 24) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xE8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xE7)
  {
    v6 = ((a2 - 232) >> 8) + 1;
    *result = a2 + 24;
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
        JUMPOUT(0x100004610);
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
          *result = a2 + 24;
        }

        break;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_26MusicUIEngagementExtension11ODJResponseV16JSONPayloadErrorVSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
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

uint64_t getEnumTagSinglePayload for ODJRequest(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 8))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
      if (v2 < 0)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ODJRequest(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_26MusicUIEngagementExtension11ODJResponseV11JSONPayloadVSg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  v2 = v1 - 1;
  if (v2 < 0)
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t getEnumTagSinglePayload for ODJResponse(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 > 0x7FFFFFFD && *(a1 + 48))
    {
      v2 = *a1 + 2147483645;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v4 = v3 - 1;
      if (v4 < 0)
      {
        v5 = -1;
      }

      else
      {
        v5 = v4;
      }

      v6 = v5 - 1;
      if (v4 < 1)
      {
        v2 = -1;
      }

      else
      {
        v2 = v6;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for ODJResponse(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Property and conformance Property()
{
  result = lazy protocol witness table cache variable for type Property and conformance Property;
  if (!lazy protocol witness table cache variable for type Property and conformance Property)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Property and conformance Property);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Property and conformance Property;
  if (!lazy protocol witness table cache variable for type Property and conformance Property)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Property and conformance Property);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Property and conformance Property;
  if (!lazy protocol witness table cache variable for type Property and conformance Property)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Property and conformance Property);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Property and conformance Property;
  if (!lazy protocol witness table cache variable for type Property and conformance Property)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Property and conformance Property);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Property and conformance Property;
  if (!lazy protocol witness table cache variable for type Property and conformance Property)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Property and conformance Property);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Property and conformance Property;
  if (!lazy protocol witness table cache variable for type Property and conformance Property)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Property and conformance Property);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Property and conformance Property;
  if (!lazy protocol witness table cache variable for type Property and conformance Property)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Property and conformance Property);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type JSONRequest.Command and conformance JSONRequest.Command()
{
  result = lazy protocol witness table cache variable for type JSONRequest.Command and conformance JSONRequest.Command;
  if (!lazy protocol witness table cache variable for type JSONRequest.Command and conformance JSONRequest.Command)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONRequest.Command and conformance JSONRequest.Command);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JSONRequest.Command and conformance JSONRequest.Command;
  if (!lazy protocol witness table cache variable for type JSONRequest.Command and conformance JSONRequest.Command)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONRequest.Command and conformance JSONRequest.Command);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JSONRequest.Command and conformance JSONRequest.Command;
  if (!lazy protocol witness table cache variable for type JSONRequest.Command and conformance JSONRequest.Command)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONRequest.Command and conformance JSONRequest.Command);
  }

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

unint64_t lazy protocol witness table accessor for type ODJResponse.CodingKeys and conformance ODJResponse.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ODJResponse.CodingKeys and conformance ODJResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type ODJResponse.CodingKeys and conformance ODJResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJResponse.CodingKeys and conformance ODJResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ODJResponse.CodingKeys and conformance ODJResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type ODJResponse.CodingKeys and conformance ODJResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJResponse.CodingKeys and conformance ODJResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ODJResponse.CodingKeys and conformance ODJResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type ODJResponse.CodingKeys and conformance ODJResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJResponse.CodingKeys and conformance ODJResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ODJResponse.CodingKeys and conformance ODJResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type ODJResponse.CodingKeys and conformance ODJResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJResponse.CodingKeys and conformance ODJResponse.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ODJResponse.JSONPayload and conformance ODJResponse.JSONPayload()
{
  result = lazy protocol witness table cache variable for type ODJResponse.JSONPayload and conformance ODJResponse.JSONPayload;
  if (!lazy protocol witness table cache variable for type ODJResponse.JSONPayload and conformance ODJResponse.JSONPayload)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJResponse.JSONPayload and conformance ODJResponse.JSONPayload);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ODJRequest.CodingKeys and conformance ODJRequest.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ODJRequest.CodingKeys and conformance ODJRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type ODJRequest.CodingKeys and conformance ODJRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJRequest.CodingKeys and conformance ODJRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ODJRequest.CodingKeys and conformance ODJRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type ODJRequest.CodingKeys and conformance ODJRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJRequest.CodingKeys and conformance ODJRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ODJRequest.CodingKeys and conformance ODJRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type ODJRequest.CodingKeys and conformance ODJRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJRequest.CodingKeys and conformance ODJRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ODJRequest.CodingKeys and conformance ODJRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type ODJRequest.CodingKeys and conformance ODJRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJRequest.CodingKeys and conformance ODJRequest.CodingKeys);
  }

  return result;
}

uint64_t __swift_destroy_boxed_opaque_existential_1(void *a1)
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

unint64_t lazy protocol witness table accessor for type JSONPayload and conformance JSONPayload()
{
  result = lazy protocol witness table cache variable for type JSONPayload and conformance JSONPayload;
  if (!lazy protocol witness table cache variable for type JSONPayload and conformance JSONPayload)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONPayload and conformance JSONPayload);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ODJResponse.PropertyIdentifierResponse.CodingKeys and conformance ODJResponse.PropertyIdentifierResponse.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ODJResponse.PropertyIdentifierResponse.CodingKeys and conformance ODJResponse.PropertyIdentifierResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type ODJResponse.PropertyIdentifierResponse.CodingKeys and conformance ODJResponse.PropertyIdentifierResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJResponse.PropertyIdentifierResponse.CodingKeys and conformance ODJResponse.PropertyIdentifierResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ODJResponse.PropertyIdentifierResponse.CodingKeys and conformance ODJResponse.PropertyIdentifierResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type ODJResponse.PropertyIdentifierResponse.CodingKeys and conformance ODJResponse.PropertyIdentifierResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJResponse.PropertyIdentifierResponse.CodingKeys and conformance ODJResponse.PropertyIdentifierResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ODJResponse.PropertyIdentifierResponse.CodingKeys and conformance ODJResponse.PropertyIdentifierResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type ODJResponse.PropertyIdentifierResponse.CodingKeys and conformance ODJResponse.PropertyIdentifierResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJResponse.PropertyIdentifierResponse.CodingKeys and conformance ODJResponse.PropertyIdentifierResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ODJResponse.PropertyIdentifierResponse.CodingKeys and conformance ODJResponse.PropertyIdentifierResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type ODJResponse.PropertyIdentifierResponse.CodingKeys and conformance ODJResponse.PropertyIdentifierResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJResponse.PropertyIdentifierResponse.CodingKeys and conformance ODJResponse.PropertyIdentifierResponse.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ODJResponse.JSONPayloadError and conformance ODJResponse.JSONPayloadError()
{
  result = lazy protocol witness table cache variable for type ODJResponse.JSONPayloadError and conformance ODJResponse.JSONPayloadError;
  if (!lazy protocol witness table cache variable for type ODJResponse.JSONPayloadError and conformance ODJResponse.JSONPayloadError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJResponse.JSONPayloadError and conformance ODJResponse.JSONPayloadError);
  }

  return result;
}

uint64_t outlined init with copy of Encodable?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSE_pSgMd, &_sSE_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Encodable?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSE_pSgMd, &_sSE_pSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of Encodable(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
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

uint64_t getEnumTagSinglePayload for ODJResponse.JSONPayloadError(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 40))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for ODJResponse.JSONPayloadError(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for ODJResponse.PropertyIdentifierResponse(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 48))
    {
      return OUTLINED_FUNCTION_11(*a1 + 2147483646);
    }

    v3 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v3) = -1;
    }

    v4 = v3 - 1;
    if (v4 < 0)
    {
      return OUTLINED_FUNCTION_11(-1);
    }
  }

  else
  {
    v4 = -1;
  }

  return OUTLINED_FUNCTION_11(v4);
}

uint64_t storeEnumTagSinglePayload for ODJResponse.PropertyIdentifierResponse(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t __swift_memcpy3_1(uint64_t result, __int16 *a2)
{
  v2 = *a2;
  *(result + 2) = *(a2 + 2);
  *result = v2;
  return result;
}

unint64_t lazy protocol witness table accessor for type ODJResponse.JSONPayload.CodingKeys and conformance ODJResponse.JSONPayload.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ODJResponse.JSONPayload.CodingKeys and conformance ODJResponse.JSONPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type ODJResponse.JSONPayload.CodingKeys and conformance ODJResponse.JSONPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJResponse.JSONPayload.CodingKeys and conformance ODJResponse.JSONPayload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ODJResponse.JSONPayload.CodingKeys and conformance ODJResponse.JSONPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type ODJResponse.JSONPayload.CodingKeys and conformance ODJResponse.JSONPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJResponse.JSONPayload.CodingKeys and conformance ODJResponse.JSONPayload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ODJResponse.JSONPayload.CodingKeys and conformance ODJResponse.JSONPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type ODJResponse.JSONPayload.CodingKeys and conformance ODJResponse.JSONPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJResponse.JSONPayload.CodingKeys and conformance ODJResponse.JSONPayload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ODJResponse.JSONPayload.CodingKeys and conformance ODJResponse.JSONPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type ODJResponse.JSONPayload.CodingKeys and conformance ODJResponse.JSONPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJResponse.JSONPayload.CodingKeys and conformance ODJResponse.JSONPayload.CodingKeys);
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

unint64_t lazy protocol witness table accessor for type ODJResponse.PropertyIdentifierResponse and conformance ODJResponse.PropertyIdentifierResponse()
{
  result = lazy protocol witness table cache variable for type ODJResponse.PropertyIdentifierResponse and conformance ODJResponse.PropertyIdentifierResponse;
  if (!lazy protocol witness table cache variable for type ODJResponse.PropertyIdentifierResponse and conformance ODJResponse.PropertyIdentifierResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJResponse.PropertyIdentifierResponse and conformance ODJResponse.PropertyIdentifierResponse);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type JSONPayload.CodingKeys and conformance JSONPayload.CodingKeys()
{
  result = lazy protocol witness table cache variable for type JSONPayload.CodingKeys and conformance JSONPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type JSONPayload.CodingKeys and conformance JSONPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONPayload.CodingKeys and conformance JSONPayload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JSONPayload.CodingKeys and conformance JSONPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type JSONPayload.CodingKeys and conformance JSONPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONPayload.CodingKeys and conformance JSONPayload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JSONPayload.CodingKeys and conformance JSONPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type JSONPayload.CodingKeys and conformance JSONPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONPayload.CodingKeys and conformance JSONPayload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JSONPayload.CodingKeys and conformance JSONPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type JSONPayload.CodingKeys and conformance JSONPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONPayload.CodingKeys and conformance JSONPayload.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ODJRequestBatch and conformance ODJRequestBatch()
{
  result = lazy protocol witness table cache variable for type ODJRequestBatch and conformance ODJRequestBatch;
  if (!lazy protocol witness table cache variable for type ODJRequestBatch and conformance ODJRequestBatch)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJRequestBatch and conformance ODJRequestBatch);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ODJResponse.JSONPayloadError.CodingKeys and conformance ODJResponse.JSONPayloadError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ODJResponse.JSONPayloadError.CodingKeys and conformance ODJResponse.JSONPayloadError.CodingKeys;
  if (!lazy protocol witness table cache variable for type ODJResponse.JSONPayloadError.CodingKeys and conformance ODJResponse.JSONPayloadError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJResponse.JSONPayloadError.CodingKeys and conformance ODJResponse.JSONPayloadError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ODJResponse.JSONPayloadError.CodingKeys and conformance ODJResponse.JSONPayloadError.CodingKeys;
  if (!lazy protocol witness table cache variable for type ODJResponse.JSONPayloadError.CodingKeys and conformance ODJResponse.JSONPayloadError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJResponse.JSONPayloadError.CodingKeys and conformance ODJResponse.JSONPayloadError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ODJResponse.JSONPayloadError.CodingKeys and conformance ODJResponse.JSONPayloadError.CodingKeys;
  if (!lazy protocol witness table cache variable for type ODJResponse.JSONPayloadError.CodingKeys and conformance ODJResponse.JSONPayloadError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJResponse.JSONPayloadError.CodingKeys and conformance ODJResponse.JSONPayloadError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ODJResponse.JSONPayloadError.CodingKeys and conformance ODJResponse.JSONPayloadError.CodingKeys;
  if (!lazy protocol witness table cache variable for type ODJResponse.JSONPayloadError.CodingKeys and conformance ODJResponse.JSONPayloadError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJResponse.JSONPayloadError.CodingKeys and conformance ODJResponse.JSONPayloadError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Parameters.CodingKeys and conformance Parameters.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Parameters.CodingKeys and conformance Parameters.CodingKeys;
  if (!lazy protocol witness table cache variable for type Parameters.CodingKeys and conformance Parameters.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Parameters.CodingKeys and conformance Parameters.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Parameters.CodingKeys and conformance Parameters.CodingKeys;
  if (!lazy protocol witness table cache variable for type Parameters.CodingKeys and conformance Parameters.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Parameters.CodingKeys and conformance Parameters.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Parameters.CodingKeys and conformance Parameters.CodingKeys;
  if (!lazy protocol witness table cache variable for type Parameters.CodingKeys and conformance Parameters.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Parameters.CodingKeys and conformance Parameters.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Parameters.CodingKeys and conformance Parameters.CodingKeys;
  if (!lazy protocol witness table cache variable for type Parameters.CodingKeys and conformance Parameters.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Parameters.CodingKeys and conformance Parameters.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Parameters.Feature and conformance Parameters.Feature()
{
  result = lazy protocol witness table cache variable for type Parameters.Feature and conformance Parameters.Feature;
  if (!lazy protocol witness table cache variable for type Parameters.Feature and conformance Parameters.Feature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Parameters.Feature and conformance Parameters.Feature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Parameters.Feature and conformance Parameters.Feature;
  if (!lazy protocol witness table cache variable for type Parameters.Feature and conformance Parameters.Feature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Parameters.Feature and conformance Parameters.Feature);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Parameters.Feature and conformance Parameters.Feature;
  if (!lazy protocol witness table cache variable for type Parameters.Feature and conformance Parameters.Feature)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Parameters.Feature and conformance Parameters.Feature);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type JSONRequest.CodingKeys and conformance JSONRequest.CodingKeys()
{
  result = lazy protocol witness table cache variable for type JSONRequest.CodingKeys and conformance JSONRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type JSONRequest.CodingKeys and conformance JSONRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONRequest.CodingKeys and conformance JSONRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JSONRequest.CodingKeys and conformance JSONRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type JSONRequest.CodingKeys and conformance JSONRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONRequest.CodingKeys and conformance JSONRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JSONRequest.CodingKeys and conformance JSONRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type JSONRequest.CodingKeys and conformance JSONRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONRequest.CodingKeys and conformance JSONRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type JSONRequest.CodingKeys and conformance JSONRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type JSONRequest.CodingKeys and conformance JSONRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONRequest.CodingKeys and conformance JSONRequest.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Parameters and conformance Parameters()
{
  result = lazy protocol witness table cache variable for type Parameters and conformance Parameters;
  if (!lazy protocol witness table cache variable for type Parameters and conformance Parameters)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Parameters and conformance Parameters);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JSONRequest.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_11(-1);
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
      return OUTLINED_FUNCTION_11((*a1 | (v4 << 8)) - 3);
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

      return OUTLINED_FUNCTION_11((*a1 | (v4 << 8)) - 3);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_11((*a1 | (v4 << 8)) - 3);
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

  return OUTLINED_FUNCTION_11(v8);
}

_BYTE *storeEnumTagSinglePayload for JSONRequest.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_22(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_19(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100005914);
      case 4:
        result = OUTLINED_FUNCTION_21(result, v6);
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
          result = OUTLINED_FUNCTION_14(result, a2 + 2);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ODJResponse.PropertyIdentifierResponse.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_11(-1);
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
      return OUTLINED_FUNCTION_11((*a1 | (v4 << 8)) - 2);
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

      return OUTLINED_FUNCTION_11((*a1 | (v4 << 8)) - 2);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_11((*a1 | (v4 << 8)) - 2);
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

  return OUTLINED_FUNCTION_11(v8);
}

_BYTE *storeEnumTagSinglePayload for ODJResponse.PropertyIdentifierResponse.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_22(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_19(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100005AA4);
      case 4:
        result = OUTLINED_FUNCTION_21(result, v6);
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
          result = OUTLINED_FUNCTION_14(result, a2 + 1);
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Parameters(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_11(-1);
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
      return OUTLINED_FUNCTION_11((*a1 | (v4 << 8)) - 4);
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

      return OUTLINED_FUNCTION_11((*a1 | (v4 << 8)) - 4);
    }

    v4 = a1[1];
    if (a1[1])
    {
      return OUTLINED_FUNCTION_11((*a1 | (v4 << 8)) - 4);
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

  return OUTLINED_FUNCTION_11(v8);
}

_BYTE *storeEnumTagSinglePayload for Parameters(_BYTE *result, unsigned int a2, unsigned int a3)
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
        result = OUTLINED_FUNCTION_22(result, v6);
        break;
      case 2:
        result = OUTLINED_FUNCTION_19(result, v6);
        break;
      case 3:
LABEL_23:
        __break(1u);
        JUMPOUT(0x100005C38);
      case 4:
        result = OUTLINED_FUNCTION_21(result, v6);
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
          result = OUTLINED_FUNCTION_14(result, a2 + 3);
        }

        break;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ODJRequestBatch.CodingKeys and conformance ODJRequestBatch.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ODJRequestBatch.CodingKeys and conformance ODJRequestBatch.CodingKeys;
  if (!lazy protocol witness table cache variable for type ODJRequestBatch.CodingKeys and conformance ODJRequestBatch.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJRequestBatch.CodingKeys and conformance ODJRequestBatch.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ODJRequestBatch.CodingKeys and conformance ODJRequestBatch.CodingKeys;
  if (!lazy protocol witness table cache variable for type ODJRequestBatch.CodingKeys and conformance ODJRequestBatch.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJRequestBatch.CodingKeys and conformance ODJRequestBatch.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ODJRequestBatch.CodingKeys and conformance ODJRequestBatch.CodingKeys;
  if (!lazy protocol witness table cache variable for type ODJRequestBatch.CodingKeys and conformance ODJRequestBatch.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJRequestBatch.CodingKeys and conformance ODJRequestBatch.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ODJRequestBatch.CodingKeys and conformance ODJRequestBatch.CodingKeys;
  if (!lazy protocol witness table cache variable for type ODJRequestBatch.CodingKeys and conformance ODJRequestBatch.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJRequestBatch.CodingKeys and conformance ODJRequestBatch.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PropertyIdentifierRequest and conformance PropertyIdentifierRequest()
{
  result = lazy protocol witness table cache variable for type PropertyIdentifierRequest and conformance PropertyIdentifierRequest;
  if (!lazy protocol witness table cache variable for type PropertyIdentifierRequest and conformance PropertyIdentifierRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PropertyIdentifierRequest and conformance PropertyIdentifierRequest);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JSONRequest(unsigned __int16 *a1, unsigned int a2)
{
  if (!a2)
  {
    return OUTLINED_FUNCTION_11(-1);
  }

  if (a2 >= 0xFC)
  {
    if ((a2 + 33554180) >> 24)
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return OUTLINED_FUNCTION_11((*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776965);
      }
    }

    else
    {
      v2 = *(a1 + 3);
      if (*(a1 + 3))
      {
        return OUTLINED_FUNCTION_11((*a1 | (*(a1 + 2) << 16) | (v2 << 24)) - 16776965);
      }
    }
  }

  v4 = *(a1 + 2);
  v5 = v4 <= 4 ? 4 : *(a1 + 2);
  v6 = v5 - 5;
  if (v4 >= 4)
  {
    return OUTLINED_FUNCTION_11(v6);
  }

  else
  {
    return OUTLINED_FUNCTION_11(-1);
  }
}

uint64_t storeEnumTagSinglePayload for JSONRequest(uint64_t result, unsigned int a2, unsigned int a3)
{
  if ((a3 + 33554180) >> 24)
  {
    v3 = 1;
  }

  else
  {
    v3 = 2;
  }

  if (a3 <= 0xFB)
  {
    v3 = 0;
  }

  if (a2 > 0xFB)
  {
    *result = a2 - 252;
    *(result + 2) = (a2 - 252) >> 16;
    if (v3)
    {
      v4 = ((a2 - 252) >> 24) + 1;
      if (v3 == 2)
      {
        *(result + 3) = v4;
      }

      else
      {
        *(result + 3) = v4;
      }
    }
  }

  else
  {
    if (!v3)
    {
      goto LABEL_10;
    }

    if (v3 == 2)
    {
      *(result + 3) = 0;
LABEL_10:
      if (!a2)
      {
        return result;
      }

LABEL_16:
      *(result + 2) = a2 + 4;
      return result;
    }

    *(result + 3) = 0;
    if (a2)
    {
      goto LABEL_16;
    }
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PropertyIdentifierRequest.CodingKeys and conformance PropertyIdentifierRequest.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PropertyIdentifierRequest.CodingKeys and conformance PropertyIdentifierRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type PropertyIdentifierRequest.CodingKeys and conformance PropertyIdentifierRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PropertyIdentifierRequest.CodingKeys and conformance PropertyIdentifierRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PropertyIdentifierRequest.CodingKeys and conformance PropertyIdentifierRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type PropertyIdentifierRequest.CodingKeys and conformance PropertyIdentifierRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PropertyIdentifierRequest.CodingKeys and conformance PropertyIdentifierRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PropertyIdentifierRequest.CodingKeys and conformance PropertyIdentifierRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type PropertyIdentifierRequest.CodingKeys and conformance PropertyIdentifierRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PropertyIdentifierRequest.CodingKeys and conformance PropertyIdentifierRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PropertyIdentifierRequest.CodingKeys and conformance PropertyIdentifierRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type PropertyIdentifierRequest.CodingKeys and conformance PropertyIdentifierRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PropertyIdentifierRequest.CodingKeys and conformance PropertyIdentifierRequest.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type JSONRequest and conformance JSONRequest()
{
  result = lazy protocol witness table cache variable for type JSONRequest and conformance JSONRequest;
  if (!lazy protocol witness table cache variable for type JSONRequest and conformance JSONRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type JSONRequest and conformance JSONRequest);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for JSONRequest.Command(unsigned __int8 *a1, int a2)
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

  return OUTLINED_FUNCTION_18(a1);
}

_BYTE *storeEnumTagSinglePayload for JSONRequest.Command(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x100006728);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_4(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of Decoder.container<A>(keyedBy:)(a1, a1, a3, v3, v4);
}

uint64_t OUTLINED_FUNCTION_20(uint64_t a1, uint64_t a2, uint64_t a3)
{

  return dispatch thunk of Encoder.container<A>(keyedBy:)();
}

uint64_t OUTLINED_FUNCTION_24()
{
}

void *OUTLINED_FUNCTION_27(uint64_t a1, ...)
{

  return Hasher.init(_seed:)();
}

uint64_t get_enum_tag_for_layout_string_26MusicUIEngagementExtension0C5ErrorO(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for ExtensionError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFF8 && *(a1 + 16))
  {
    return (*a1 + 2147483640);
  }

  v3 = *(a1 + 8);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 7;
  if (v4 >= 9)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for ExtensionError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFF7)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2147483640;
    if (a3 >= 0x7FFFFFF8)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFF8)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 7;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for ExtensionError(void *result, int a2)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    result[1] = 0;
  }

  else if (a2)
  {
    result[1] = (a2 - 1);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for Feature.MusicKit(unsigned int *a1, int a2)
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

_BYTE *storeEnumTagSinglePayload for Feature.MusicKit(_BYTE *result, int a2, int a3)
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
        return result;
      case 2:
        *result = a2;
        return result;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        return result;
      default:
        return result;
    }
  }

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
      JUMPOUT(0x100006CD0);
    case 4:
      *result = 0;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Feature.Sonic and conformance Feature.Sonic()
{
  result = lazy protocol witness table cache variable for type Feature.Sonic and conformance Feature.Sonic;
  if (!lazy protocol witness table cache variable for type Feature.Sonic and conformance Feature.Sonic)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Feature.Sonic and conformance Feature.Sonic);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Feature.Sonic and conformance Feature.Sonic;
  if (!lazy protocol witness table cache variable for type Feature.Sonic and conformance Feature.Sonic)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Feature.Sonic and conformance Feature.Sonic);
  }

  return result;
}

Swift::Int Feature.MusicKit.hashValue.getter()
{
  Hasher.init(_seed:)();
  Hasher._combine(_:)(0);
  return Hasher._finalize()();
}

unint64_t lazy protocol witness table accessor for type Feature.MusicKit and conformance Feature.MusicKit()
{
  result = lazy protocol witness table cache variable for type Feature.MusicKit and conformance Feature.MusicKit;
  if (!lazy protocol witness table cache variable for type Feature.MusicKit and conformance Feature.MusicKit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Feature.MusicKit and conformance Feature.MusicKit);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Feature.MusicKit and conformance Feature.MusicKit;
  if (!lazy protocol witness table cache variable for type Feature.MusicKit and conformance Feature.MusicKit)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Feature.MusicKit and conformance Feature.MusicKit);
  }

  return result;
}

uint64_t specialized == infix<A>(_:_:)(char a1, char a2)
{
  v3 = Property.rawValue.getter(a1);
  v5 = v4;
  if (v3 == Property.rawValue.getter(a2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v8 & 1;
}

uint64_t specialized == infix<A>(_:_:)(unsigned __int8 a1, char a2)
{
  v2 = 0x796D6568636C61;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = "nowPlayingTransitions";
  v6 = 0x796D6568636C61;
  switch(v4)
  {
    case 1:
      v6 = 0xD000000000000015;
      v3 = 0x80000001000113C0;
      break;
    case 2:
      v6 = OUTLINED_FUNCTION_65();
      v3 = 0xEB00000000736E69;
      break;
    case 3:
      v6 = OUTLINED_FUNCTION_63();
      v3 = 0xEC0000006B636162;
      break;
    default:
      break;
  }

  v7 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0xD000000000000015;
      v7 = (v5 - 32) | 0x8000000000000000;
      break;
    case 2:
      v2 = 0x507972617262696CLL;
      v7 = 0xEB00000000736E69;
      break;
    case 3:
      v2 = 0x79616C5069726973;
      v7 = 0xEC0000006B636162;
      break;
    default:
      break;
  }

  if (v6 == v2 && v3 == v7)
  {
    v9 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v9 & 1;
}

uint64_t specialized RawRepresentable<>.hash(into:)(uint64_t a1, char a2)
{
  Property.rawValue.getter(a2);
  String.hash(into:)();
}

{
  String.hash(into:)();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, char a2)
{
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)(v4, a2);
  return Hasher._finalize()();
}

{
  Hasher.init(_seed:)();
  Property.rawValue.getter(a2);
  String.hash(into:)();

  return Hasher._finalize()();
}

Swift::Int specialized RawRepresentable<>._rawHashValue(seed:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_77();
  return specialized RawRepresentable<>._rawHashValue(seed:)(v3, v4, v5);
}

{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t one-time initialization function for logger()
{
  v0 = type metadata accessor for Logger();
  __swift_allocate_value_buffer(v0, static MusicUIEngagementExtension.logger);
  __swift_project_value_buffer(v0, static MusicUIEngagementExtension.logger);
  return Logger.init(subsystem:category:)();
}

uint64_t one-time initialization function for decoder(uint64_t a1, uint64_t (*a2)(void), uint64_t (*a3)(void), uint64_t *a4)
{
  a2(0);
  swift_allocObject();
  result = a3();
  *a4 = result;
  return result;
}

id one-time initialization function for userDefaults(uint64_t a1, uint64_t (*a2)(uint64_t), uint64_t *a3)
{
  v4 = a2(a1);
  v6 = v5;
  v7 = objc_allocWithZone(NSUserDefaults);
  result = @nonobjc NSUserDefaults.init(suiteName:)(v4, v6);
  *a3 = result;
  return result;
}

uint64_t static MusicUIEngagementExtension.hasPlaybackCapability.getter()
{
  return _swift_task_switch(static MusicUIEngagementExtension.hasPlaybackCapability.getter, 0, 0);
}

{
  type metadata accessor for ICStoreRequestContext();
  v1 = [objc_opt_self() activeAccount];
  v2 = [objc_opt_self() defaultIdentityStore];
  v3 = [objc_opt_self() defaultInfo];
  v4 = OUTLINED_FUNCTION_32();
  v7 = ICStoreRequestContext.__allocating_init(identity:identityStore:clientInfo:)(v4, v5, v6);
  v0[19] = v7;
  v8 = [objc_allocWithZone(ICMusicSubscriptionStatusRequest) initWithStoreRequestContext:v7];
  v0[20] = v8;
  [v8 setShouldReturnLastKnownStatusOnly:1];
  v9 = [objc_opt_self() sharedStatusController];
  v0[21] = v9;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = static MusicUIEngagementExtension.hasPlaybackCapability.getter;
  v10 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSccySo33ICMusicSubscriptionStatusResponseCs5Error_pGMd, &_sSccySo33ICMusicSubscriptionStatusResponseCs5Error_pGMR);
  v0[10] = _NSConcreteStackBlock;
  v0[11] = 1107296256;
  v0[12] = @objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned ICMusicSubscriptionStatusResponse?, @unowned NSError?) -> () with result type ICMusicSubscriptionStatusResponse;
  v0[13] = &block_descriptor;
  v0[14] = v10;
  [v9 performSubscriptionStatusRequest:v8 withCompletionHandler:v0 + 10];

  return _swift_continuation_await(v0 + 2);
}

{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_17_0();
  *v2 = v1;
  *v2 = *v0;
  v4 = *(v3 + 48);
  *(v1 + 176) = v4;
  if (v4)
  {
    v5 = static MusicUIEngagementExtension.hasPlaybackCapability.getter;
  }

  else
  {
    v5 = static MusicUIEngagementExtension.hasPlaybackCapability.getter;
  }

  return _swift_task_switch(v5, 0, 0);
}

{
  v1 = *(v0 + 144);

  v2 = [v1 subscriptionStatus];
  if (v2)
  {
    v3 = v2;
    v4 = [v2 capabilities];

    v5 = v4 & 1;
  }

  else
  {
    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_0_1(&one-time initialization token for logger);
    }

    v6 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_22_0(v6, static MusicUIEngagementExtension.logger);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_16_0(v8))
    {
      *swift_slowAlloc() = 0;
      OUTLINED_FUNCTION_39();
      _os_log_impl(v9, v10, v11, v12, v13, 2u);
      OUTLINED_FUNCTION_5_0();
    }

    v5 = 0;
  }

  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_0_1(&one-time initialization token for logger);
  }

  v14 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_22_0(v14, static MusicUIEngagementExtension.logger);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_16_0(v16))
  {
    v17 = OUTLINED_FUNCTION_57();
    *v17 = 67240192;
    v17[1] = v5;
    OUTLINED_FUNCTION_39();
    _os_log_impl(v18, v19, v20, v21, v22, 8u);
    OUTLINED_FUNCTION_5_0();
  }

  v24 = *(v0 + 152);
  v23 = *(v0 + 160);

  v25 = *(v0 + 8);

  return v25(v5);
}

{
  v1 = v0[21];
  swift_willThrow();

  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_0_1(&one-time initialization token for logger);
  }

  v2 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_22_0(v2, static MusicUIEngagementExtension.logger);
  swift_errorRetain();
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = OUTLINED_FUNCTION_28();
    v6 = OUTLINED_FUNCTION_57();
    *v5 = 138543362;
    swift_errorRetain();
    v7 = _swift_stdlib_bridgeErrorToNSError();
    *(v5 + 4) = v7;
    *v6 = v7;
    _os_log_impl(&_mh_execute_header, v3, v4, "🧩 Error getting sub status response: %{public}@", v5, 0xCu);
    outlined destroy of Any?(v6, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_23_0(v6);
    OUTLINED_FUNCTION_12_0();
  }

  else
  {
  }

  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_0_1(&one-time initialization token for logger);
  }

  OUTLINED_FUNCTION_22_0(v2, static MusicUIEngagementExtension.logger);
  v8 = Logger.logObject.getter();
  v9 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_31(v9))
  {
    *OUTLINED_FUNCTION_57() = 67240192;
    OUTLINED_FUNCTION_67();
    _os_log_impl(v10, v11, v12, v13, v14, 8u);
    OUTLINED_FUNCTION_14_0();
  }

  v16 = v0[19];
  v15 = v0[20];

  v17 = v0[1];

  return v17(0);
}

id ICStoreRequestContext.__allocating_init(identity:identityStore:clientInfo:)(void *a1, void *a2, void *a3)
{
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) initWithIdentity:a1 identityStore:a2 clientInfo:a3];

  return v6;
}

uint64_t *@objc completion handler block implementation for @escaping @callee_unowned @convention(block) @Sendable (@unowned ICMusicSubscriptionStatusResponse?, @unowned NSError?) -> () with result type ICMusicSubscriptionStatusResponse(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return specialized _resumeUnsafeThrowingContinuationWithError<A>(_:_:)(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return specialized _resumeUnsafeThrowingContinuation<A>(_:_:)(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t specialized _resumeUnsafeThrowingContinuationWithError<A>(_:_:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v4 = swift_allocError();
  *v5 = a2;

  return _swift_continuation_throwingResumeWithError(a1, v4);
}

uint64_t static MusicUIEngagementExtension.performRequest(with:completion:)(void *a1, uint64_t a2, uint64_t a3)
{
  v121 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v6 - 8);
  v8 = v118 - v7;
  v9 = type metadata accessor for DefaultsKeys.Engagement();
  __chkstk_darwin(v9);
  v10 = [objc_opt_self() sharedPrivacyInfo];
  v11 = [v10 privacyAcknowledgementRequiredForMusic];

  if ((v11 & 1) == 0)
  {
    v38 = objc_opt_self();
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    LODWORD(v38) = [v38 isValidJSONObject:_bridgeAnythingToObjectiveC<A>(_:)()];
    swift_unknownObjectRelease();
    if (!v38)
    {
      if (one-time initialization token for logger != -1)
      {
        OUTLINED_FUNCTION_0_1(&one-time initialization token for logger);
      }

      v48 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_22_0(v48, static MusicUIEngagementExtension.logger);
      v49 = Logger.logObject.getter();
      v50 = static os_log_type_t.error.getter();
      if (OUTLINED_FUNCTION_40(v50))
      {
        OUTLINED_FUNCTION_28();
        v51 = OUTLINED_FUNCTION_15_0();
        *&v125 = v51;
        *a2 = 136446210;
        OUTLINED_FUNCTION_72();
        *(a2 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v52, v53, v54);
        _os_log_impl(&_mh_execute_header, v49, v50, "🧩 %{public}s", a2, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v51);
        OUTLINED_FUNCTION_23_0(v51);
        OUTLINED_FUNCTION_23_0(a2);
      }

      v55 = lazy protocol witness table accessor for type ExtensionError and conformance ExtensionError();
      v125 = 0u;
      v126 = 0u;
      v56 = OUTLINED_FUNCTION_33(&type metadata for ExtensionError, v55);
      v58 = OUTLINED_FUNCTION_64(xmmword_1000112A0, v56, v57);
      (a2)(v58);
      goto LABEL_23;
    }

    if (one-time initialization token for userDefaults != -1)
    {
      OUTLINED_FUNCTION_1(&one-time initialization token for userDefaults);
    }

    v39 = static MusicUIEngagementExtension.userDefaults;
    v120.n128_u64[0] = v3;
    v119 = static MusicUIEngagementExtension.userDefaults;
    if (static MusicUIEngagementExtension.userDefaults)
    {
      v40 = OUTLINED_FUNCTION_62();
      v41(v40);
      DefaultsKeys.Engagement.rawValue.getter();
      v42 = OUTLINED_FUNCTION_35();
      v43(v42);
      OUTLINED_FUNCTION_69();
      v44 = String._bridgeToObjectiveC()();

      v45 = [v39 stringForKey:v44];

      if (v45)
      {
        v39 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v47 = v46;

        goto LABEL_30;
      }

      v39 = 0;
    }

    v47 = 0;
LABEL_30:
    v79 = [objc_opt_self() activeAccount];
    v80 = outlined bridged method (ob) of @objc ICUserIdentity.accountDSID.getter(v79);
    v82 = v80;
    v83 = v81;
    if (v47)
    {
      if (v81)
      {
        if (v39 == v80 && v47 == v81)
        {

LABEL_52:

LABEL_58:
          v113 = type metadata accessor for TaskPriority();
          __swift_storeEnumTagSinglePayload(v8, 1, 1, v113);
          outlined init with copy of Any(a1, &v125);
          type metadata accessor for MainActor();
          v114 = v121;

          v115 = static MainActor.shared.getter();
          v116 = swift_allocObject();
          *(v116 + 16) = v115;
          *(v116 + 24) = &protocol witness table for MainActor;
          outlined init with take of Any(&v125, (v116 + 32));
          v117 = v120.n128_u64[0];
          *(v116 + 64) = v120.n128_u64[0];
          *(v116 + 72) = a2;
          *(v116 + 80) = v114;
          *(v116 + 88) = v117;
          _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v8, &async function pointer to partial apply for closure #1 in static MusicUIEngagementExtension.performRequest(with:completion:), v116);
        }

        v85 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v85)
        {
          goto LABEL_52;
        }
      }

      else
      {
      }
    }

    else if (!v81)
    {
      goto LABEL_58;
    }

    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_0_1(&one-time initialization token for logger);
    }

    v89 = type metadata accessor for Logger();
    v118[2] = __swift_project_value_buffer(v89, static MusicUIEngagementExtension.logger);
    v90 = Logger.logObject.getter();
    v91 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_31(v91))
    {
      v92 = swift_slowAlloc();
      v118[1] = v82;
      v93 = a2;
      v94 = v92;
      *v92 = 0;
      OUTLINED_FUNCTION_67();
      _os_log_impl(v95, v96, v97, v98, v99, 2u);
      v100 = v94;
      a2 = v93;
      OUTLINED_FUNCTION_23_0(v100);
    }

    static MusicUIEngagementExtension.resetEngagementUserDefaults()();
    v101 = v119;
    if (v119)
    {
      if (v83)
      {
        v102 = String._bridgeToObjectiveC()();
      }

      else
      {
        v102 = 0;
      }

      v103 = OUTLINED_FUNCTION_62();
      v104(v103);
      DefaultsKeys.Engagement.rawValue.getter();
      v105 = OUTLINED_FUNCTION_35();
      v106(v105);
      OUTLINED_FUNCTION_69();
      v107 = String._bridgeToObjectiveC()();

      [v101 setObject:v102 forKey:v107];
      swift_unknownObjectRelease();
    }

    else
    {
    }

    [v101 synchronize];
    v108 = Logger.logObject.getter();
    v109 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_40(v109))
    {
      v110 = a2;
      v111 = swift_slowAlloc();
      *v111 = 0;
      _os_log_impl(&_mh_execute_header, v108, v109, "🧩 UserDefaults updated for new account, continuing with request", v111, 2u);
      v112 = v111;
      a2 = v110;
      OUTLINED_FUNCTION_23_0(v112);
    }

    goto LABEL_58;
  }

  v119 = a2;
  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_0_1(&one-time initialization token for logger);
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static MusicUIEngagementExtension.logger);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_40(v14))
  {
    v15 = OUTLINED_FUNCTION_50();
    v16 = OUTLINED_FUNCTION_51();
    *&v125 = v16;
    *v15 = 136446466;
    OUTLINED_FUNCTION_72();
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, v17, v18);
    *(v15 + 12) = 2082;
    OUTLINED_FUNCTION_72();
    *(v15 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v20, v21);
    OUTLINED_FUNCTION_30(&_mh_execute_header, v22, v23, "🧩 %{public}s: %{public}s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_23_0(v16);
    OUTLINED_FUNCTION_23_0(v15);
  }

  if (one-time initialization token for encoder != -1)
  {
    OUTLINED_FUNCTION_4_0(&one-time initialization token for encoder);
  }

  v120 = xmmword_1000112B0;
  v125 = xmmword_1000112B0;
  *&v126 = 0xD00000000000004BLL;
  *(&v126 + 1) = 0x8000000100011790;
  v127 = 0xD000000000000023;
  v128 = 0x80000001000117E0;
  lazy protocol witness table accessor for type ODJResponse and conformance ODJResponse();
  v60 = dispatch thunk of JSONEncoder.encode<A>(_:)();
  v62 = v61;
  objc_opt_self();
  isa = Data._bridgeToObjectiveC()().super.isa;
  v124[0] = 0;
  v64 = OUTLINED_FUNCTION_68();
  v66 = [v64 v65];

  v67 = v124[0];
  if (!v66)
  {
    v78 = v67;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    outlined consume of Data._Representation(v60, v62);
    swift_errorRetain();
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = OUTLINED_FUNCTION_50();
      v27 = OUTLINED_FUNCTION_57();
      v28 = OUTLINED_FUNCTION_29();
      *&v125 = v28;
      *v26 = 136446466;
      OUTLINED_FUNCTION_72();
      *(v26 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, v29, v30);
      *(v26 + 12) = 2114;
      swift_errorRetain();
      v31 = _swift_stdlib_bridgeErrorToNSError();
      *(v26 + 14) = v31;
      *v27 = v31;
      OUTLINED_FUNCTION_30(&_mh_execute_header, v32, v33, "🧩 %{public}s: %{public}@");
      outlined destroy of Any?(v27, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      OUTLINED_FUNCTION_5_0();
      __swift_destroy_boxed_opaque_existential_1(v28);
      OUTLINED_FUNCTION_23_0(v28);
      OUTLINED_FUNCTION_23_0(v26);
    }

    v34 = lazy protocol witness table accessor for type ExtensionError and conformance ExtensionError();
    v125 = 0u;
    v126 = 0u;
    v35 = OUTLINED_FUNCTION_33(&type metadata for ExtensionError, v34);
    v37 = OUTLINED_FUNCTION_64(v120, v35, v36);
    v119(v37);

LABEL_23:

    return outlined destroy of Any?(&v125, &_sypSgMd, &_sypSgMR);
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with copy of Any(&v125, v124);
  v68 = Logger.logObject.getter();
  v69 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_40(v69))
  {
    v70 = OUTLINED_FUNCTION_50();
    v71 = OUTLINED_FUNCTION_51();
    v123 = v71;
    *v70 = 136446466;
    *(v70 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000020, 0x8000000100011810, &v123);
    *(v70 + 12) = 2082;
    outlined init with copy of Any(v124, v122);
    v72 = String.init<A>(describing:)();
    v74 = v73;
    __swift_destroy_boxed_opaque_existential_1(v124);
    v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v74, &v123);

    *(v70 + 14) = v75;
    OUTLINED_FUNCTION_30(&_mh_execute_header, v76, v77, "🧩 %{public}s Sending JSON to ODJ: %{public}s");
    swift_arrayDestroy();
    OUTLINED_FUNCTION_23_0(v71);
    OUTLINED_FUNCTION_23_0(v70);
  }

  else
  {

    __swift_destroy_boxed_opaque_existential_1(v124);
  }

  outlined init with copy of Any(&v125, v124);
  v86 = lazy protocol witness table accessor for type ExtensionError and conformance ExtensionError();
  v87 = OUTLINED_FUNCTION_33(&type metadata for ExtensionError, v86);
  *v88 = v120;
  (v119)(v124, v87);
  outlined consume of Data._Representation(v60, v62);

  outlined destroy of Any?(v124, &_sypSgMd, &_sypSgMR);
  return __swift_destroy_boxed_opaque_existential_1(&v125);
}

id static MusicUIEngagementExtension.resetEngagementUserDefaults()()
{
  v0 = type metadata accessor for DefaultsKeys.Engagement();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v6 = v30 - v5;
  v7 = static DefaultsKeys.Engagement.allCases.getter();
  v9 = *(v7 + 16);
  v10 = &MusicUIEngagementExtension;
  if (v9)
  {
    v13 = *(v1 + 16);
    v12 = v1 + 16;
    v11 = v13;
    v14 = *(v12 + 64);
    v30[1] = v7;
    v15 = v7 + ((v14 + 32) & ~v14);
    v34 = *(v12 + 56);
    v39 = (v12 - 8);
    v32 = "sResponse8@NSError16";
    *&v8 = 136315394;
    v31 = v8;
    v37 = v12;
    v38 = v4;
    v35 = v0;
    v36 = v6;
    v33 = v13;
    do
    {
      v11(v6, v15, v0);
      if (one-time initialization token for logger != -1)
      {
        swift_once();
      }

      v16 = type metadata accessor for Logger();
      __swift_project_value_buffer(v16, static MusicUIEngagementExtension.logger);
      v11(v4, v6, v0);
      v17 = Logger.logObject.getter();
      v18 = static os_log_type_t.info.getter();
      if (os_log_type_enabled(v17, v18))
      {
        v19 = v0;
        v20 = swift_slowAlloc();
        v40 = swift_slowAlloc();
        *v20 = v31;
        *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD00000000000001DLL, v32 | 0x8000000000000000, &v40);
        *(v20 + 12) = 2080;
        v21 = DefaultsKeys.Engagement.rawValue.getter();
        v23 = v22;
        v24 = *v39;
        v25 = v19;
        v11 = v33;
        (*v39)(v38, v25);
        v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v21, v23, &v40);
        v4 = v38;

        *(v20 + 14) = v26;
        _os_log_impl(&_mh_execute_header, v17, v18, "🧩 %s Active user changed, resetting %s", v20, 0x16u);
        swift_arrayDestroy();
        v10 = &MusicUIEngagementExtension;
      }

      else
      {

        v24 = *v39;
        (*v39)(v4, v0);
      }

      v6 = v36;
      if (one-time initialization token for userDefaults != -1)
      {
        swift_once();
      }

      count = v10[219].count;
      if (count)
      {
        DefaultsKeys.Engagement.rawValue.getter();
        v28 = String._bridgeToObjectiveC()();

        [count removeObjectForKey:v28];

        v4 = v38;
      }

      v0 = v35;
      v24(v6, v35);
      v15 += v34;
      --v9;
    }

    while (v9);
  }

  if (one-time initialization token for userDefaults != -1)
  {
    swift_once();
  }

  return [v10[219].count synchronize];
}

uint64_t closure #1 in static MusicUIEngagementExtension.performRequest(with:completion:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[18] = a7;
  v8[19] = a8;
  v8[16] = a4;
  v8[17] = a6;
  type metadata accessor for String.Encoding();
  v8[20] = swift_task_alloc();
  type metadata accessor for MainActor();
  v8[21] = static MainActor.shared.getter();
  v9 = dispatch thunk of Actor.unownedExecutor.getter();
  v8[22] = v9;
  v8[23] = v10;

  return _swift_task_switch(closure #1 in static MusicUIEngagementExtension.performRequest(with:completion:), v9, v10);
}

uint64_t closure #1 in static MusicUIEngagementExtension.performRequest(with:completion:)()
{
  v39 = v0;
  v1 = *(v0 + 128);
  v2 = objc_opt_self();
  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  v3 = _bridgeAnythingToObjectiveC<A>(_:)();
  *(v0 + 112) = 0;
  v4 = [v2 dataWithJSONObject:v3 options:0 error:v0 + 112];
  swift_unknownObjectRelease();
  v5 = *(v0 + 112);
  if (v4)
  {
    v6 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    *(v0 + 192) = v6;
    *(v0 + 200) = v8;
    static String.Encoding.utf8.getter();
    OUTLINED_FUNCTION_32();
    result = String.init(data:encoding:)();
    if (v10)
    {
      v11 = result;
      v12 = v10;
      if (one-time initialization token for logger != -1)
      {
        OUTLINED_FUNCTION_0_1(&one-time initialization token for logger);
      }

      v13 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_22_0(v13, static MusicUIEngagementExtension.logger);

      v14 = Logger.logObject.getter();
      v15 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = OUTLINED_FUNCTION_28();
        v17 = OUTLINED_FUNCTION_29();
        v38 = v17;
        *v16 = 136446210;
        v18 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v11, v12, &v38);

        *(v16 + 4) = v18;
        OUTLINED_FUNCTION_75(&_mh_execute_header, v19, v20, "🧩 Received request: %{public}s");
        __swift_destroy_boxed_opaque_existential_1(v17);
        OUTLINED_FUNCTION_23_0(v17);
        OUTLINED_FUNCTION_23_0(v16);
      }

      else
      {
      }

      if (one-time initialization token for decoder != -1)
      {
        swift_once();
      }

      lazy protocol witness table accessor for type ODJRequest and conformance ODJRequest();
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      v36 = *(v0 + 120);
      *(v0 + 208) = v36;
      v37 = swift_task_alloc();
      *(v0 + 216) = v37;
      *v37 = v0;
      v37[1] = closure #1 in static MusicUIEngagementExtension.performRequest(with:completion:);

      return static MusicUIEngagementExtension.parseRequest(request:completion:)(v0 + 48, v36);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v21 = v5;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_0_1(&one-time initialization token for logger);
    }

    v22 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_22_0(v22, static MusicUIEngagementExtension.logger);
    swift_errorRetain();
    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = OUTLINED_FUNCTION_28();
      v26 = OUTLINED_FUNCTION_57();
      *v25 = 138543362;
      swift_errorRetain();
      v27 = _swift_stdlib_bridgeErrorToNSError();
      *(v25 + 4) = v27;
      *v26 = v27;
      OUTLINED_FUNCTION_76(&_mh_execute_header, v28, v29, "🧩 Failed to import JSON payload: %{public}@");
      outlined destroy of Any?(v26, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
      OUTLINED_FUNCTION_12_0();
      OUTLINED_FUNCTION_5_0();
    }

    v30 = *(v0 + 136);

    lazy protocol witness table accessor for type ExtensionError and conformance ExtensionError();
    OUTLINED_FUNCTION_46();
    v32 = OUTLINED_FUNCTION_33(&type metadata for ExtensionError, v31);
    v34 = OUTLINED_FUNCTION_61(v32, v33);
    v30(v34);

    outlined destroy of Any?(v24, &_sypSgMd, &_sypSgMR);

    OUTLINED_FUNCTION_11_0();

    return v35();
  }

  return result;
}

{
  OUTLINED_FUNCTION_48();
  v2 = *v1;
  OUTLINED_FUNCTION_17_0();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 224) = v0;

  v5 = *(v2 + 184);
  v6 = *(v2 + 176);
  if (v0)
  {
    v7 = closure #1 in static MusicUIEngagementExtension.performRequest(with:completion:);
  }

  else
  {
    v7 = closure #1 in static MusicUIEngagementExtension.performRequest(with:completion:);
  }

  return _swift_task_switch(v7, v6, v5);
}

{
  v2 = v0[24];
  v1 = v0[25];
  v3 = v0[17];

  outlined init with copy of Any((v0 + 6), (v0 + 10));
  v3(v0 + 10, 0);
  outlined consume of Data._Representation(v2, v1);
  outlined destroy of Any?((v0 + 10), &_sypSgMd, &_sypSgMR);
  __swift_destroy_boxed_opaque_existential_1(v0 + 6);

  OUTLINED_FUNCTION_11_0();

  return v4();
}

{

  v1 = OUTLINED_FUNCTION_69();
  outlined consume of Data._Representation(v1, v2);
  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_0_1(&one-time initialization token for logger);
  }

  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_22_0(v3, static MusicUIEngagementExtension.logger);
  swift_errorRetain();
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v6 = OUTLINED_FUNCTION_28();
    v7 = OUTLINED_FUNCTION_57();
    *v6 = 138543362;
    swift_errorRetain();
    v8 = _swift_stdlib_bridgeErrorToNSError();
    *(v6 + 4) = v8;
    *v7 = v8;
    OUTLINED_FUNCTION_76(&_mh_execute_header, v9, v10, "🧩 Failed to import JSON payload: %{public}@");
    outlined destroy of Any?(v7, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    OUTLINED_FUNCTION_12_0();
    OUTLINED_FUNCTION_5_0();
  }

  v11 = *(v0 + 136);

  lazy protocol witness table accessor for type ExtensionError and conformance ExtensionError();
  OUTLINED_FUNCTION_46();
  v13 = OUTLINED_FUNCTION_33(&type metadata for ExtensionError, v12);
  v15 = OUTLINED_FUNCTION_61(v13, v14);
  v11(v15);

  outlined destroy of Any?(v5, &_sypSgMd, &_sypSgMR);

  OUTLINED_FUNCTION_11_0();

  return v16();
}

uint64_t static MusicUIEngagementExtension.parseRequest(request:completion:)(uint64_t a1, uint64_t a2)
{
  v3[30] = a2;
  v3[31] = v2;
  v3[29] = a1;
  v4 = type metadata accessor for DefaultsKeys.LegacyDefaultsKeys();
  v3[32] = v4;
  v3[33] = *(v4 - 8);
  v3[34] = swift_task_alloc();

  return _swift_task_switch(static MusicUIEngagementExtension.parseRequest(request:completion:), 0, 0);
}

uint64_t static MusicUIEngagementExtension.parseRequest(request:completion:)()
{
  v169 = v1;
  v4 = [objc_opt_self() sharedPrivacyInfo];
  v5 = [v4 privacyAcknowledgementRequiredForMusic];

  if (v5)
  {
    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_0_1(&one-time initialization token for logger);
    }

    v6 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_22_0(v6, static MusicUIEngagementExtension.logger);
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.default.getter();
    if (OUTLINED_FUNCTION_16_0(v8))
    {
      v9 = OUTLINED_FUNCTION_50();
      v167 = OUTLINED_FUNCTION_51();
      *v9 = 136446466;
      v10 = OUTLINED_FUNCTION_42("parseRequest(request:completion:)", v160, v161, v162, v163);
      OUTLINED_FUNCTION_38(v10);
      *(v9 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2 - 4, 0x8000000100011840, &v167);
      OUTLINED_FUNCTION_21_0();
      _os_log_impl(v11, v12, v13, v14, v15, 0x16u);
      OUTLINED_FUNCTION_54();
      OUTLINED_FUNCTION_5_0();
      OUTLINED_FUNCTION_23_0(v9);
    }

    v16 = lazy protocol witness table accessor for type ExtensionError and conformance ExtensionError();
    OUTLINED_FUNCTION_33(&type metadata for ExtensionError, v16);
    v18 = xmmword_1000112B0;
LABEL_26:
    *v17 = v18;
    swift_willThrow();
LABEL_27:

    OUTLINED_FUNCTION_11_0();

    return v64();
  }

  if (one-time initialization token for mobileiPodDefaults != -1)
  {
    OUTLINED_FUNCTION_2_0(&one-time initialization token for mobileiPodDefaults);
  }

  if (static MusicUIEngagementExtension.mobileiPodDefaults)
  {
    v3 = *(v1 + 264);
    v0 = *(v1 + 256);
    v19 = OUTLINED_FUNCTION_20_0();
    v20(v19);
    DefaultsKeys.LegacyDefaultsKeys.rawValue.getter();
    v21 = OUTLINED_FUNCTION_9_0();
    v22(v21);
    OUTLINED_FUNCTION_32();
    v23 = String._bridgeToObjectiveC()();

    v24 = OUTLINED_FUNCTION_68();
    v26 = [v24 v25];

    if (v26)
    {
      if (one-time initialization token for logger != -1)
      {
        OUTLINED_FUNCTION_0_1(&one-time initialization token for logger);
      }

      v27 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_22_0(v27, static MusicUIEngagementExtension.logger);
      v28 = Logger.logObject.getter();
      v29 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_16_0(v29))
      {
        v30 = OUTLINED_FUNCTION_50();
        v167 = OUTLINED_FUNCTION_51();
        *v30 = 136446466;
        v31 = OUTLINED_FUNCTION_42("parseRequest(request:completion:)", v160, v161, v162, v163);
        OUTLINED_FUNCTION_38(v31);
        *(v30 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v2 + 30, 0x80000001000118B0, &v167);
        OUTLINED_FUNCTION_21_0();
        _os_log_impl(v32, v33, v34, v35, v36, 0x16u);
        OUTLINED_FUNCTION_54();
        OUTLINED_FUNCTION_5_0();
        OUTLINED_FUNCTION_23_0(v30);
      }

      v37 = lazy protocol witness table accessor for type ExtensionError and conformance ExtensionError();
      OUTLINED_FUNCTION_33(&type metadata for ExtensionError, v37);
      v18 = xmmword_1000112C0;
      goto LABEL_26;
    }
  }

  v38 = *(v1 + 240);
  if (!v38)
  {
    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_0_1(&one-time initialization token for logger);
    }

    v46 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_22_0(v46, static MusicUIEngagementExtension.logger);
    v47 = Logger.logObject.getter();
    v48 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_24_0(v48))
    {
      OUTLINED_FUNCTION_28();
      v164 = OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_19_0(4.8751e-34);

      OUTLINED_FUNCTION_3_0();
      v167 = v50;
      v168 = v49;
      v51._countAndFlagsBits = 0x74736575716572;
      v51._object = 0xE700000000000000;
      String.append(_:)(v51);
      v52._countAndFlagsBits = OUTLINED_FUNCTION_7_0();
      v52._object = 0xE500000000000000;
      String.append(_:)(v52);
      OUTLINED_FUNCTION_52(v53, v54, v55, v56, v57, v58, v59, v60, v160, v161, v162, v164, v167, v168);
      OUTLINED_FUNCTION_58();
      *(v0 + 4) = v3;
      OUTLINED_FUNCTION_10_0(&_mh_execute_header, v61, v62, "🧩 %{public}s");
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_14_0();
    }

    v63 = lazy protocol witness table accessor for type ExtensionError and conformance ExtensionError();
    OUTLINED_FUNCTION_33(&type metadata for ExtensionError, v63);
    v18 = xmmword_1000112F0;
    goto LABEL_26;
  }

  v39 = Dictionary.init(dictionaryLiteral:)();
  v40 = v39;
  v41 = *(v38 + 32);
  *(v1 + 337) = v41;
  v42 = -1;
  v43 = -1 << v41;
  if (-(-1 << v41) < 64)
  {
    v42 = ~(-1 << -v43);
  }

  v44 = v42 & *(v38 + 64);
  *(v1 + 280) = v39;

  if (!v44)
  {
    v66 = 0;
    while (((63 - v43) >> 6) - 1 != v66)
    {
      v45 = v66 + 1;
      v44 = *(*(v1 + 240) + 8 * v66++ + 72);
      if (v44)
      {
        goto LABEL_33;
      }
    }

    if (one-time initialization token for encoder != -1)
    {
      OUTLINED_FUNCTION_4_0(&one-time initialization token for encoder);
    }

    *(v1 + 16) = v40;
    lazy protocol witness table accessor for type ODJResponse and conformance ODJResponse();
    OUTLINED_FUNCTION_47();
    dispatch thunk of JSONEncoder.encode<A>(_:)();

    v132 = objc_opt_self();
    OUTLINED_FUNCTION_60();
    isa = Data._bridgeToObjectiveC()().super.isa;
    *(v1 + 224) = 0;
    v134 = [v132 JSONObjectWithData:isa options:0 error:v1 + 224];

    v135 = *(v1 + 224);
    if (v134)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      if (one-time initialization token for logger != -1)
      {
        OUTLINED_FUNCTION_0_1(&one-time initialization token for logger);
      }

      v136 = *(v1 + 232);
      v137 = type metadata accessor for Logger();
      __swift_project_value_buffer(v137, static MusicUIEngagementExtension.logger);
      outlined init with copy of Any(v136, v1 + 144);
      v138 = Logger.logObject.getter();
      v139 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_31(v139))
      {
        v140 = OUTLINED_FUNCTION_50();
        v141 = OUTLINED_FUNCTION_51();
        v167 = v141;
        *v140 = 136446466;
        v142 = OUTLINED_FUNCTION_44();
        *(v140 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v142, v143, &v167);
        *(v140 + 12) = 2082;
        outlined init with copy of Any(v1 + 144, v1 + 176);
        v144 = String.init<A>(describing:)();
        v146 = v145;
        __swift_destroy_boxed_opaque_existential_1((v1 + 144));
        v147 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v144, v146, &v167);

        *(v140 + 14) = v147;
        OUTLINED_FUNCTION_67();
        _os_log_impl(v148, v149, v150, v151, v152, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_23_0(v141);
        OUTLINED_FUNCTION_14_0();
        v153 = OUTLINED_FUNCTION_60();
        outlined consume of Data._Representation(v153, v154);
      }

      else
      {
        v158 = OUTLINED_FUNCTION_60();
        outlined consume of Data._Representation(v158, v159);

        __swift_destroy_boxed_opaque_existential_1((v1 + 144));
      }
    }

    else
    {
      v155 = v135;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v156 = OUTLINED_FUNCTION_60();
      outlined consume of Data._Representation(v156, v157);
    }

    goto LABEL_27;
  }

  v45 = 0;
LABEL_33:
  *(v1 + 288) = v44;
  *(v1 + 296) = v45;
  OUTLINED_FUNCTION_59();
  v68 = *v67;
  *(v1 + 304) = *v67;
  v69 = v67[1];
  *(v1 + 312) = v69;
  OUTLINED_FUNCTION_71();
  if (v71)
  {

    if (one-time initialization token for logger != -1)
    {
      OUTLINED_FUNCTION_0_1(&one-time initialization token for logger);
    }

    v72 = type metadata accessor for Logger();
    OUTLINED_FUNCTION_22_0(v72, static MusicUIEngagementExtension.logger);
    v73 = Logger.logObject.getter();
    v74 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_24_0(v74))
    {
      OUTLINED_FUNCTION_28();
      v165 = OUTLINED_FUNCTION_15_0();
      OUTLINED_FUNCTION_19_0(4.8149e-34);

      OUTLINED_FUNCTION_3_0();
      v167 = v76;
      v168 = v75;
      v77._countAndFlagsBits = OUTLINED_FUNCTION_70();
      v77._object = 0xE700000000000000;
      String.append(_:)(v77);
      v78._countAndFlagsBits = OUTLINED_FUNCTION_7_0();
      v78._object = 0xE500000000000000;
      String.append(_:)(v78);
      OUTLINED_FUNCTION_52(v79, v80, v81, v82, v83, v84, v85, v86, v160, v161, v162, v165, v167, v168);
      OUTLINED_FUNCTION_58();
      *(v69 + 4) = v3;
      OUTLINED_FUNCTION_10_0(&_mh_execute_header, v87, v88, "🧩 %s, privacy: .public)");
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_14_0();
    }

    v89 = lazy protocol witness table accessor for type ExtensionError and conformance ExtensionError();
    OUTLINED_FUNCTION_33(&type metadata for ExtensionError, v89);
    v91 = xmmword_1000112E0;
LABEL_53:
    *v90 = v91;
    swift_willThrow();

    goto LABEL_27;
  }

  LODWORD(v92) = *(v70 + 2);
  v93 = one-time initialization token for logger;

  if (v93 != -1)
  {
    OUTLINED_FUNCTION_0_1(&one-time initialization token for logger);
  }

  v94 = type metadata accessor for Logger();
  __swift_project_value_buffer(v94, static MusicUIEngagementExtension.logger);
  v95 = Logger.logObject.getter();
  v96 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_31(v96))
  {
    HIDWORD(v161) = v92;
    v92 = OUTLINED_FUNCTION_28();
    v97 = OUTLINED_FUNCTION_29();
    v167 = v97;
    *v92 = 136446210;
    v98 = String.init<A>(describing:)();
    v160 = v68;
    v100 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v98, v99, &v167);

    *(v92 + 4) = v100;
    OUTLINED_FUNCTION_75(&_mh_execute_header, v101, v102, "🧩 Command: %{public}s");
    __swift_destroy_boxed_opaque_existential_1(v97);
    OUTLINED_FUNCTION_23_0(v97);
    v103 = v92;
    LOBYTE(v92) = BYTE4(v161);
    OUTLINED_FUNCTION_23_0(v103);
  }

  if (!*(*(v1 + 240) + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v68, v69), (v104 & 1) == 0))
  {

    v115 = Logger.logObject.getter();
    v116 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_24_0(v116))
    {
      OUTLINED_FUNCTION_28();
      v166 = OUTLINED_FUNCTION_15_0();
      v167 = 0;
      OUTLINED_FUNCTION_19_0(4.8751e-34);

      OUTLINED_FUNCTION_3_0();
      v167 = v118;
      v168 = v117;
      v119._countAndFlagsBits = OUTLINED_FUNCTION_27_0();
      String.append(_:)(v119);
      v120._countAndFlagsBits = OUTLINED_FUNCTION_7_0();
      v120._object = 0xE500000000000000;
      String.append(_:)(v120);
      OUTLINED_FUNCTION_52(v121, v122, v123, v124, v125, v126, v127, v128, v160, v161, v162, v166, v167, v168);
      OUTLINED_FUNCTION_58();
      *(v69 + 4) = &unk_100011000;
      OUTLINED_FUNCTION_10_0(&_mh_execute_header, v129, v130, "🧩 %{public}s");
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_14_0();
    }

    v131 = lazy protocol witness table accessor for type ExtensionError and conformance ExtensionError();
    OUTLINED_FUNCTION_33(&type metadata for ExtensionError, v131);
    v91 = xmmword_1000112D0;
    goto LABEL_53;
  }

  OUTLINED_FUNCTION_66();
  v106 = *(v105 + 1);
  *(v1 + 338) = v106;
  v107 = Logger.logObject.getter();
  v108 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v107, v108))
  {
    v109 = OUTLINED_FUNCTION_28();
    v110 = OUTLINED_FUNCTION_29();
    v167 = v110;
    *v109 = 136446210;
    *(v1 + 336) = v106;
    lazy protocol witness table accessor for type Property and conformance Property();
    v111 = dispatch thunk of CustomStringConvertible.description.getter();
    v113 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v111, v112, &v167);

    *(v109 + 4) = v113;
    _os_log_impl(&_mh_execute_header, v107, v108, "🧩 Property: %{public}s", v109, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v110);
    OUTLINED_FUNCTION_23_0(v110);
    OUTLINED_FUNCTION_12_0();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSE_pSgMd, &_sSE_pSgMR);
  lazy protocol witness table accessor for type Property and conformance Property();
  *(v1 + 320) = Dictionary.init(dictionaryLiteral:)();
  v114 = swift_task_alloc();
  *(v1 + 328) = v114;
  *v114 = v1;
  OUTLINED_FUNCTION_13_0(v114);

  return static MusicUIEngagementExtension.fetchProperty(_:featureName:)(v1 + 64, v106, v92);
}

{
  OUTLINED_FUNCTION_18_0();
  v1 = *v0;
  OUTLINED_FUNCTION_6_0();
  *v2 = v1;

  return _swift_task_switch(static MusicUIEngagementExtension.parseRequest(request:completion:), 0, 0);
}

{
  v131 = v0;
  v2 = *(v0 + 320);
  v3 = *(v0 + 338);
  outlined init with copy of TaskPriority?(v0 + 64, v0 + 104, &_sSE_pSgMd, &_sSE_pSgMR);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 208) = v2;
  v5 = specialized __RawDictionaryStorage.find<A>(_:)(v3);
  v7 = *(v2 + 16);
  v8 = (v6 & 1) == 0;
  v9 = v7 + v8;
  if (__OFADD__(v7, v8))
  {
    goto LABEL_61;
  }

  v3 = v5;
  v10 = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVy26MusicUIEngagementExtension8PropertyOSE_pSgGMd, &_ss17_NativeDictionaryVy26MusicUIEngagementExtension8PropertyOSE_pSgGMR);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(isUniquelyReferenced_nonNull_native, v9))
  {
    v11 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 338));
    if ((v10 & 1) != (v12 & 1))
    {
LABEL_12:
      OUTLINED_FUNCTION_73();

      return KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)(v31);
    }

    v3 = v11;
  }

  v13 = *(v0 + 208);
  if (v10)
  {
    outlined assign with take of Encodable?(v0 + 104, v13[7] + 40 * v3);
  }

  else
  {
    OUTLINED_FUNCTION_49();
    *(v13[6] + v3) = v14;
    v15 = v13[7] + 40 * v3;
    v16 = *(v0 + 104);
    v17 = *(v0 + 120);
    *(v15 + 32) = *(v0 + 136);
    *v15 = v16;
    *(v15 + 16) = v17;
    v18 = v13[2];
    v19 = __OFADD__(v18, 1);
    v20 = v18 + 1;
    if (v19)
    {
LABEL_63:
      __break(1u);
LABEL_64:
      __break(1u);
LABEL_65:
      OUTLINED_FUNCTION_0_1(&one-time initialization token for logger);
LABEL_28:
      v50 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_22_0(v50, static MusicUIEngagementExtension.logger);
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();
      if (OUTLINED_FUNCTION_24_0(v52))
      {
        OUTLINED_FUNCTION_28();
        v128 = OUTLINED_FUNCTION_15_0();
        OUTLINED_FUNCTION_53(4.8149e-34);

        OUTLINED_FUNCTION_3_0();
        v129 = v54;
        v130 = v53;
        v55._countAndFlagsBits = OUTLINED_FUNCTION_70();
        v55._object = 0xE700000000000000;
        String.append(_:)(v55);
        v56._countAndFlagsBits = OUTLINED_FUNCTION_7_0();
        v56._object = 0xE500000000000000;
        String.append(_:)(v56);
        getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v129, v130, &v128);
        OUTLINED_FUNCTION_58();
        *(v3 + 4) = v1;
        OUTLINED_FUNCTION_10_0(&_mh_execute_header, v57, v58, "🧩 %s, privacy: .public)");
        OUTLINED_FUNCTION_8();
        OUTLINED_FUNCTION_14_0();
      }

      v59 = lazy protocol witness table accessor for type ExtensionError and conformance ExtensionError();
      OUTLINED_FUNCTION_33(&type metadata for ExtensionError, v59);
      v61 = xmmword_1000112E0;
      goto LABEL_45;
    }

    v13[2] = v20;
  }

  v3 = *(v0 + 304);
  v21 = *(v0 + 312);
  v22 = *(v0 + 280);
  outlined destroy of Any?(v0 + 64, &_sSE_pSgMd, &_sSE_pSgMR);
  v23 = swift_isUniquelyReferenced_nonNull_native();
  *(v0 + 216) = v22;
  v24 = specialized __RawDictionaryStorage.find<A>(_:)(v3, v21);
  v26 = *(v22 + 16);
  v27 = (v25 & 1) == 0;
  v1 = v26 + v27;
  if (__OFADD__(v26, v27))
  {
LABEL_62:
    __break(1u);
    goto LABEL_63;
  }

  v3 = v24;
  v28 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySS26MusicUIEngagementExtension11ODJResponseV26PropertyIdentifierResponseVGMd, &_ss17_NativeDictionaryVySS26MusicUIEngagementExtension11ODJResponseV26PropertyIdentifierResponseVGMR);
  if (_NativeDictionary.ensureUnique(isUnique:capacity:)(v23, v1))
  {
    v29 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 304), *(v0 + 312));
    if ((v28 & 1) != (v30 & 1))
    {
      goto LABEL_12;
    }

    v3 = v29;
  }

  v33 = *(v0 + 216);
  v34 = *(v0 + 312);
  if (v28)
  {
    v35 = (v33[7] + 48 * v3);
    v36 = v35[1];
    v37 = v35[2];
    v1 = v35[3];
    OUTLINED_FUNCTION_45(v35);

    outlined consume of ODJResponse.JSONPayloadError?(v36, v37, v1);
  }

  else
  {
    OUTLINED_FUNCTION_49();
    v38 = (v33[6] + 16 * v3);
    *v38 = v39;
    v38[1] = v34;
    OUTLINED_FUNCTION_45(v33[7] + 48 * v3);
    v40 = v33[2];
    v19 = __OFADD__(v40, 1);
    v41 = v40 + 1;
    if (v19)
    {
      goto LABEL_64;
    }

    v33[2] = v41;
  }

  v43 = *(v0 + 288);
  v42 = *(v0 + 296);
  *(v0 + 280) = v33;
  v44 = (v43 - 1) & v43;
  if (v44)
  {
    goto LABEL_26;
  }

  v3 = v0 + 16;
  v45 = (v0 + 144);
  do
  {
    v46 = v42 + 1;
    if (__OFADD__(v42, 1))
    {
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    if (v46 >= (((1 << *(v0 + 337)) + 63) >> 6))
    {

      if (one-time initialization token for encoder != -1)
      {
        OUTLINED_FUNCTION_4_0(&one-time initialization token for encoder);
      }

      *(v0 + 16) = v33;
      lazy protocol witness table accessor for type ODJResponse and conformance ODJResponse();
      OUTLINED_FUNCTION_47();
      dispatch thunk of JSONEncoder.encode<A>(_:)();

      v98 = objc_opt_self();
      OUTLINED_FUNCTION_35();
      isa = Data._bridgeToObjectiveC()().super.isa;
      *(v0 + 224) = 0;
      v100 = [v98 JSONObjectWithData:isa options:0 error:v0 + 224];

      v101 = *(v0 + 224);
      if (v100)
      {
        _bridgeAnyObjectToAny(_:)();
        swift_unknownObjectRelease();
        if (one-time initialization token for logger != -1)
        {
          OUTLINED_FUNCTION_0_1(&one-time initialization token for logger);
        }

        v102 = *(v0 + 232);
        v103 = type metadata accessor for Logger();
        __swift_project_value_buffer(v103, static MusicUIEngagementExtension.logger);
        outlined init with copy of Any(v102, v45);
        v104 = Logger.logObject.getter();
        v105 = static os_log_type_t.default.getter();
        if (OUTLINED_FUNCTION_16_0(v105))
        {
          v106 = OUTLINED_FUNCTION_50();
          v129 = OUTLINED_FUNCTION_51();
          *v106 = 136446466;
          v107 = OUTLINED_FUNCTION_44();
          v109 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v107, v108, &v129);
          OUTLINED_FUNCTION_38(v109);
          outlined init with copy of Any(v45, v0 + 176);
          v110 = String.init<A>(describing:)();
          v112 = v111;
          __swift_destroy_boxed_opaque_existential_1(v45);
          v113 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v110, v112, &v129);

          *(v106 + 14) = v113;
          OUTLINED_FUNCTION_21_0();
          _os_log_impl(v114, v115, v116, v117, v118, 0x16u);
          OUTLINED_FUNCTION_54();
          OUTLINED_FUNCTION_5_0();
          OUTLINED_FUNCTION_23_0(v106);
          v119 = OUTLINED_FUNCTION_35();
          outlined consume of Data._Representation(v119, v120);
        }

        else
        {
          v124 = OUTLINED_FUNCTION_35();
          outlined consume of Data._Representation(v124, v125);

          __swift_destroy_boxed_opaque_existential_1(v45);
        }

        OUTLINED_FUNCTION_11_0();
LABEL_47:
        OUTLINED_FUNCTION_73();

        __asm { BRAA            X1, X16 }
      }

      v121 = v101;
      _convertNSErrorToError(_:)();

      swift_willThrow();
      v122 = OUTLINED_FUNCTION_35();
      outlined consume of Data._Representation(v122, v123);
LABEL_46:

      OUTLINED_FUNCTION_11_0();
      goto LABEL_47;
    }

    v44 = *(*(v0 + 240) + 8 * v46 + 64);
    ++v42;
  }

  while (!v44);
  v42 = v46;
LABEL_26:
  *(v0 + 288) = v44;
  *(v0 + 296) = v42;
  OUTLINED_FUNCTION_59();
  v3 = *v47;
  *(v0 + 304) = *v47;
  v48 = v47[1];
  *(v0 + 312) = v48;
  OUTLINED_FUNCTION_71();
  if (v49)
  {

    if (one-time initialization token for logger == -1)
    {
      goto LABEL_28;
    }

    goto LABEL_65;
  }

  v62 = one-time initialization token for logger;

  if (v62 != -1)
  {
    OUTLINED_FUNCTION_0_1(&one-time initialization token for logger);
  }

  v63 = type metadata accessor for Logger();
  __swift_project_value_buffer(v63, static MusicUIEngagementExtension.logger);
  v64 = Logger.logObject.getter();
  v65 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_31(v65))
  {
    v66 = OUTLINED_FUNCTION_28();
    v127 = v3;
    v67 = OUTLINED_FUNCTION_29();
    v129 = v67;
    *v66 = 136446210;
    v68 = String.init<A>(describing:)();
    v70 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v69, &v129);

    *(v66 + 4) = v70;
    _os_log_impl(&_mh_execute_header, v64, v65, "🧩 Command: %{public}s", v66, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v67);
    v71 = v67;
    v3 = v127;
    OUTLINED_FUNCTION_23_0(v71);
    OUTLINED_FUNCTION_23_0(v66);
  }

  if (!*(*(v0 + 240) + 16) || (specialized __RawDictionaryStorage.find<A>(_:)(v3, v48), (v72 & 1) == 0))
  {

    v87 = Logger.logObject.getter();
    v88 = static os_log_type_t.error.getter();
    if (OUTLINED_FUNCTION_24_0(v88))
    {
      OUTLINED_FUNCTION_28();
      v128 = OUTLINED_FUNCTION_15_0();
      v129 = 0;
      OUTLINED_FUNCTION_53(4.8751e-34);

      OUTLINED_FUNCTION_3_0();
      v129 = v90;
      v130 = v89;
      v91._countAndFlagsBits = OUTLINED_FUNCTION_27_0();
      String.append(_:)(v91);
      v92._countAndFlagsBits = OUTLINED_FUNCTION_7_0();
      v92._object = 0xE500000000000000;
      String.append(_:)(v92);
      getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v129, v130, &v128);
      OUTLINED_FUNCTION_58();
      *(v3 + 4) = &unk_100011000;
      OUTLINED_FUNCTION_10_0(&_mh_execute_header, v93, v94, "🧩 %{public}s");
      OUTLINED_FUNCTION_8();
      OUTLINED_FUNCTION_14_0();
    }

    v95 = lazy protocol witness table accessor for type ExtensionError and conformance ExtensionError();
    OUTLINED_FUNCTION_33(&type metadata for ExtensionError, v95);
    v61 = xmmword_1000112D0;
LABEL_45:
    *v60 = v61;
    swift_willThrow();

    goto LABEL_46;
  }

  OUTLINED_FUNCTION_66();
  v74 = *(v73 + 1);
  *(v0 + 338) = v74;
  v75 = Logger.logObject.getter();
  v76 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = OUTLINED_FUNCTION_28();
    v78 = OUTLINED_FUNCTION_29();
    v129 = v78;
    *v77 = 136446210;
    *(v0 + 336) = v74;
    lazy protocol witness table accessor for type Property and conformance Property();
    v79 = dispatch thunk of CustomStringConvertible.description.getter();
    v81 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v79, v80, &v129);

    *(v77 + 4) = v81;
    _os_log_impl(&_mh_execute_header, v75, v76, "🧩 Property: %{public}s", v77, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v78);
    OUTLINED_FUNCTION_14_0();
    OUTLINED_FUNCTION_23_0(v77);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSE_pSgMd, &_sSE_pSgMR);
  lazy protocol witness table accessor for type Property and conformance Property();
  *(v0 + 320) = Dictionary.init(dictionaryLiteral:)();
  v82 = swift_task_alloc();
  *(v0 + 328) = v82;
  *v82 = v0;
  OUTLINED_FUNCTION_13_0(v82);
  OUTLINED_FUNCTION_73();

  return static MusicUIEngagementExtension.fetchProperty(_:featureName:)(v83, v84, v85);
}

uint64_t _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  __chkstk_darwin(v9 - 8);
  v11 = v24 - v10;
  outlined init with copy of TaskPriority?(a3, v24 - v10, &_sScPSgMd, &_sScPSgMR);
  v12 = type metadata accessor for TaskPriority();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v11, 1, v12);

  if (EnumTagSinglePayload == 1)
  {
    outlined destroy of Any?(v11, &_sScPSgMd, &_sScPSgMR);
  }

  else
  {
    TaskPriority.rawValue.getter();
    (*(*(v12 - 8) + 8))(v11, v12);
  }

  v14 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v14)
  {
    swift_getObjectType();
    v15 = dispatch thunk of Actor.unownedExecutor.getter();
    v17 = v16;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v18 = String.utf8CString.getter() + 32;
      v19 = swift_allocObject();
      *(v19 + 16) = a4;
      *(v19 + 24) = a5;

      if (v17 | v15)
      {
        v25[0] = 0;
        v25[1] = 0;
        v20 = v25;
        v25[2] = v15;
        v25[3] = v17;
      }

      else
      {
        v20 = 0;
      }

      v24[1] = 7;
      v24[2] = v20;
      v24[3] = v18;
      v22 = swift_task_create();

      outlined destroy of Any?(a3, &_sScPSgMd, &_sScPSgMR);

      return v22;
    }
  }

  else
  {
    v15 = 0;
    v17 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  outlined destroy of Any?(a3, &_sScPSgMd, &_sScPSgMR);
  v21 = swift_allocObject();
  *(v21 + 16) = a4;
  *(v21 + 24) = a5;
  if (v17 | v15)
  {
    v25[4] = 0;
    v25[5] = 0;
    v25[6] = v15;
    v25[7] = v17;
  }

  return swift_task_create();
}

void thunk for @escaping @callee_unowned @convention(block) (@unowned Swift.AnyObject?, @unowned NSError?) -> ()(uint64_t a1, void *a2, uint64_t a3)
{
  outlined init with copy of TaskPriority?(a1, v11, &_sypSgMd, &_sypSgMR);
  v5 = v12;
  if (!v12)
  {
    v10 = 0;
    if (!a2)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v6 = __swift_project_boxed_opaque_existential_1(v11, v12);
  v7 = *(v5 - 8);
  __chkstk_darwin(v6);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v9);
  v10 = _bridgeAnythingToObjectiveC<A>(_:)();
  (*(v7 + 8))(v9, v5);
  __swift_destroy_boxed_opaque_existential_1(v11);
  if (a2)
  {
LABEL_3:
    a2 = _convertErrorToNSError(_:)();
  }

LABEL_4:
  (*(a3 + 16))(a3, v10, a2);
  swift_unknownObjectRelease();
}

uint64_t static MusicUIEngagementExtension.fetchProperty(_:featureName:)(uint64_t a1, char a2, char a3)
{
  *(v4 + 209) = a3;
  *(v4 + 208) = a2;
  *(v4 + 96) = a1;
  *(v4 + 104) = v3;
  v5 = type metadata accessor for DefaultsKeys.Engagement();
  *(v4 + 112) = v5;
  *(v4 + 120) = *(v5 - 8);
  *(v4 + 128) = swift_task_alloc();
  v6 = type metadata accessor for DefaultsKeys.LegacyDefaultsKeys();
  *(v4 + 136) = v6;
  *(v4 + 144) = *(v6 - 8);
  *(v4 + 152) = swift_task_alloc();

  return _swift_task_switch(static MusicUIEngagementExtension.fetchProperty(_:featureName:), 0, 0);
}

uint64_t static MusicUIEngagementExtension.fetchProperty(_:featureName:)()
{
  v127 = v2;
  switch(*(v2 + 208))
  {
    case 5:
      v32 = *(v2 + 209);
      if (v32 == 4)
      {
        goto LABEL_91;
      }

      if (v32 == 1)
      {
        *(v2 + 176) = [objc_opt_self() standardUserDefaults];
        v33 = swift_task_alloc();
        *(v2 + 184) = v33;
        *v33 = v2;
        v34 = static MusicUIEngagementExtension.fetchProperty(_:featureName:);
        goto LABEL_120;
      }

      if (!*(v2 + 209))
      {
        *(v2 + 160) = [objc_opt_self() standardUserDefaults];
        v33 = swift_task_alloc();
        *(v2 + 168) = v33;
        *v33 = v2;
        v34 = static MusicUIEngagementExtension.fetchProperty(_:featureName:);
LABEL_120:
        v33[1] = v34;

        return static MusicUIEngagementExtension.hasPlaybackCapability.getter();
      }

LABEL_91:
      if (one-time initialization token for logger != -1)
      {
        OUTLINED_FUNCTION_0_1(&one-time initialization token for logger);
      }

      v95 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_22_0(v95, static MusicUIEngagementExtension.logger);
      v74 = Logger.logObject.getter();
      v96 = static os_log_type_t.default.getter();
      if (!OUTLINED_FUNCTION_31(v96))
      {
        goto LABEL_131;
      }

      v97 = *(v2 + 209);
      OUTLINED_FUNCTION_28();
      v80 = OUTLINED_FUNCTION_15_0();
      v126 = v80;
      *v1 = 136315138;
      v98 = 0x507972617262696CLL;
      if (v97 == 3)
      {
        v98 = 0x79616C5069726973;
      }

      v99 = 0xEB00000000736E69;
      if (v97 == 3)
      {
        v99 = 0xEC0000006B636162;
      }

      if (v32 == 4)
      {
        v100 = 0x676E697373696DLL;
      }

      else
      {
        v100 = v98;
      }

      if (v32 == 4)
      {
        v101 = 0xE700000000000000;
      }

      else
      {
        v101 = v99;
      }

      v102 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v100, v101, &v126);

      *(v1 + 4) = v102;
LABEL_129:
      OUTLINED_FUNCTION_67();
      _os_log_impl(v118, v119, v120, v121, v122, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v80);
      OUTLINED_FUNCTION_5_0();
      v94 = v1;
      goto LABEL_130;
    case 6:
      v45 = *(v2 + 209);
      if (v45 == 2)
      {
        if (one-time initialization token for userDefaults != -1)
        {
          OUTLINED_FUNCTION_1(&one-time initialization token for userDefaults);
        }

        if (static MusicUIEngagementExtension.userDefaults && (v105 = *(v2 + 120), v104 = *(v2 + 128), v106 = *(v2 + 112), v107 = OUTLINED_FUNCTION_37(), v108(v107), NSUserDefaults.integer(forKey:)(v104), v110 = v109, (*(v105 + 8))(v104, v106), (v110 & 1) == 0))
        {
          v111 = 0xE400000000000000;
          v112 = 1684370293;
        }

        else
        {
          v111 = 0xE700000000000000;
          v112 = 0x64657355746F6ELL;
        }

        v116 = *(v2 + 96);
        v116[3] = &type metadata for String;
        v116[4] = &protocol witness table for String;
        *v116 = v112;
        v116[1] = v111;
        goto LABEL_132;
      }

      if (v45 == 3)
      {
        if (one-time initialization token for mobileiPodDefaults != -1)
        {
          OUTLINED_FUNCTION_2_0(&one-time initialization token for mobileiPodDefaults);
        }

        if (static MusicUIEngagementExtension.mobileiPodDefaults)
        {
          v46 = *(v2 + 96);
          v47 = OUTLINED_FUNCTION_20_0();
          v48(v47);
          DefaultsKeys.LegacyDefaultsKeys.rawValue.getter();
          v49 = OUTLINED_FUNCTION_9_0();
          v50(v49);
          OUTLINED_FUNCTION_32();
          v51 = String._bridgeToObjectiveC()();

          v52 = OUTLINED_FUNCTION_68();
          v54 = [v52 v53];

          *(v46 + 24) = &type metadata for Bool;
          *(v46 + 32) = &protocol witness table for Bool;
          *v46 = v54;
        }

        else
        {
          v115 = *(v2 + 96);
          *(v115 + 24) = &type metadata for Bool;
          *(v115 + 32) = &protocol witness table for Bool;
          *v115 = 0;
        }

        goto LABEL_132;
      }

LABEL_77:
      if (one-time initialization token for logger != -1)
      {
        OUTLINED_FUNCTION_0_1(&one-time initialization token for logger);
      }

      v73 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_22_0(v73, static MusicUIEngagementExtension.logger);
      v74 = Logger.logObject.getter();
      v75 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_31(v75))
      {
        v76 = 0x796D6568636C61;
        v77 = *(v2 + 209);
        OUTLINED_FUNCTION_28();
        v78 = OUTLINED_FUNCTION_15_0();
        v126 = v78;
        *v1 = 136315138;
        v79 = 0xE700000000000000;
        v80 = v78;
        switch(v77)
        {
          case 1:
            v76 = 0xD000000000000015;
            v79 = 0x80000001000113C0;
            goto LABEL_128;
          case 2:
            goto LABEL_143;
          case 3:
            v76 = 0x79616C5069726973;
            v79 = 0xEC0000006B636162;
            goto LABEL_128;
          case 4:
            v76 = 0x676E697373696DLL;
            goto LABEL_128;
          default:
LABEL_128:
            v117 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v79, &v126);

            *(v1 + 4) = v117;
            break;
        }

        goto LABEL_129;
      }

      goto LABEL_131;
    case 7:
      v24 = *(v2 + 209);
      if (v24 == 4)
      {
        goto LABEL_85;
      }

      if (!*(v2 + 209))
      {
        v25 = *(v2 + 96);
        *(v2 + 40) = &type metadata for Feature.Sonic;
        *(v2 + 48) = lazy protocol witness table accessor for type Feature.Sonic and conformance Feature.Sonic();
        v26 = isFeatureEnabled(_:)();
        v27 = (v2 + 16);
        goto LABEL_112;
      }

      if (v24 == 2)
      {
        v25 = *(v2 + 96);
        *(v2 + 80) = &type metadata for Feature.MusicKit;
        *(v2 + 88) = lazy protocol witness table accessor for type Feature.MusicKit and conformance Feature.MusicKit();
        v26 = isFeatureEnabled(_:)();
        v27 = (v2 + 56);
LABEL_112:
        __swift_destroy_boxed_opaque_existential_1(v27);
        v113 = 0x64656C6261736964;
        if (v26)
        {
          v113 = 0x64656C62616E65;
        }

        v114 = 0xE800000000000000;
        v25[3] = &type metadata for String;
        v25[4] = &protocol witness table for String;
        if (v26)
        {
          v114 = 0xE700000000000000;
        }

        *v25 = v113;
        v25[1] = v114;
        goto LABEL_132;
      }

LABEL_85:
      if (one-time initialization token for logger != -1)
      {
        OUTLINED_FUNCTION_0_1(&one-time initialization token for logger);
      }

      v82 = type metadata accessor for Logger();
      OUTLINED_FUNCTION_22_0(v82, static MusicUIEngagementExtension.logger);
      v74 = Logger.logObject.getter();
      v83 = static os_log_type_t.default.getter();
      if (OUTLINED_FUNCTION_16_0(v83))
      {
        v84 = OUTLINED_FUNCTION_28();
        v85 = OUTLINED_FUNCTION_29();
        v126 = v85;
        *v84 = 136315138;
        if (v24 == 4)
        {
          v86 = 0x676E697373696DLL;
          v87 = 0xE700000000000000;
        }

        else
        {
          v86 = 0x796D6568636C61;
          v87 = 0xE700000000000000;
          switch(*(v2 + 209))
          {
            case 1:
              v86 = 0xD000000000000015;
              v87 = 0x80000001000113C0;
              break;
            case 2:
              v86 = OUTLINED_FUNCTION_65();
              v87 = 0xEB00000000736E69;
              break;
            case 3:
              v86 = OUTLINED_FUNCTION_63();
              v87 = 0xEC0000006B636162;
              break;
            default:
              break;
          }
        }

        v88 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v86, v87, &v126);

        *(v84 + 4) = v88;
        OUTLINED_FUNCTION_21_0();
        _os_log_impl(v89, v90, v91, v92, v93, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v85);
        OUTLINED_FUNCTION_5_0();
        v94 = v84;
LABEL_130:
        OUTLINED_FUNCTION_23_0(v94);
      }

LABEL_131:

      v123 = *(v2 + 96);
      v123[3] = &type metadata for String;
      v123[4] = &protocol witness table for String;
      *v123 = 0x6E776F6E6B6E75;
      v123[1] = 0xE700000000000000;
LABEL_132:

      OUTLINED_FUNCTION_11_0();

      return v124();
    case 8:
      if (*(v2 + 209) != 2)
      {
        goto LABEL_77;
      }

      if (one-time initialization token for userDefaults != -1)
      {
        OUTLINED_FUNCTION_1(&one-time initialization token for userDefaults);
      }

      if (!static MusicUIEngagementExtension.userDefaults)
      {
        goto LABEL_69;
      }

      v60 = *(v2 + 120);
      v59 = *(v2 + 128);
      v61 = *(v2 + 112);
      goto LABEL_68;
    case 9:
      if (one-time initialization token for userDefaults != -1)
      {
        OUTLINED_FUNCTION_1(&one-time initialization token for userDefaults);
      }

      v15 = static MusicUIEngagementExtension.userDefaults;
      v16 = *(v2 + 96);
      if (!static MusicUIEngagementExtension.userDefaults)
      {
        goto LABEL_82;
      }

      OUTLINED_FUNCTION_43();
LABEL_58:
      v57 = String._bridgeToObjectiveC()();
      v58 = [v15 integerForKey:v57];

      *(v16 + 24) = &type metadata for Int;
      *(v16 + 32) = &protocol witness table for Int;
      *v16 = v58;
      goto LABEL_132;
    case 0xA:
      if (one-time initialization token for userDefaults != -1)
      {
        OUTLINED_FUNCTION_1(&one-time initialization token for userDefaults);
      }

      v15 = static MusicUIEngagementExtension.userDefaults;
      v16 = *(v2 + 96);
      if (static MusicUIEngagementExtension.userDefaults)
      {
        goto LABEL_58;
      }

LABEL_82:
      *(v16 + 32) = 0;
      *v16 = 0u;
      *(v16 + 16) = 0u;
      goto LABEL_132;
    case 0xB:
      if (![objc_opt_self() deviceMediaLibrary])
      {
        goto LABEL_139;
      }

      OUTLINED_FUNCTION_34();
      v12 = [v0 hasAddedToLibraryAppleMusicContent];
      goto LABEL_45;
    case 0xC:
      if (![objc_opt_self() deviceMediaLibrary])
      {
        goto LABEL_140;
      }

      OUTLINED_FUNCTION_34();
      v14 = [v13 filterAvailableContentGroups:128 withOptions:2];

      *(v1 + 24) = &type metadata for Bool;
      *(v1 + 32) = &protocol witness table for Bool;
      *v1 = v14 != 0;
      goto LABEL_132;
    case 0xD:
      if (![objc_opt_self() deviceMediaLibrary])
      {
        goto LABEL_143;
      }

      OUTLINED_FUNCTION_34();
      v12 = [v0 hasUserPlaylists];
      goto LABEL_45;
    case 0xE:
      if (![objc_opt_self() deviceMediaLibrary])
      {
        goto LABEL_138;
      }

      OUTLINED_FUNCTION_34();
      v12 = [v0 hasUserPinnedLibraryEntity];
      goto LABEL_45;
    case 0xF:
      if (![objc_opt_self() sharedCloudController])
      {
        goto LABEL_141;
      }

      OUTLINED_FUNCTION_34();
      v12 = [v0 isAutomaticDownloadsEnabled];
      goto LABEL_45;
    case 0x10:
      v7 = [objc_opt_self() defaultWorkspace];
      if (!v7)
      {
        __break(1u);
LABEL_138:
        __break(1u);
LABEL_139:
        __break(1u);
LABEL_140:
        __break(1u);
LABEL_141:
        __break(1u);
LABEL_142:
        __break(1u);
LABEL_143:
        __break(1u);
        JUMPOUT(0x10000C5E4);
      }

      v8 = v7;
      v9 = *(v2 + 96);
      OUTLINED_FUNCTION_43();
      v10 = String._bridgeToObjectiveC()();
      v11 = [v8 applicationIsInstalled:v10];

      *(v9 + 24) = &type metadata for Bool;
      *(v9 + 32) = &protocol witness table for Bool;
      *v9 = v11;
      goto LABEL_132;
    case 0x11:
      if (![objc_opt_self() sharedCloudController])
      {
        goto LABEL_142;
      }

      OUTLINED_FUNCTION_34();
      v12 = [v0 isCloudLibraryEnabled];
LABEL_45:
      v44 = v12;

      *(v1 + 24) = &type metadata for Bool;
      *(v1 + 32) = &protocol witness table for Bool;
      *v1 = v44;
      goto LABEL_132;
    case 0x12:
      type metadata accessor for ControlCenterServicesProxy();
      *(v2 + 192) = static ControlCenterServicesProxy.shared.getter();
      v125 = (&async function pointer to dispatch thunk of ControlCenterServicesProxy.isMusicRecognitionEnabled() + async function pointer to dispatch thunk of ControlCenterServicesProxy.isMusicRecognitionEnabled());
      v55 = swift_task_alloc();
      *(v2 + 200) = v55;
      *v55 = v2;
      v55[1] = static MusicUIEngagementExtension.fetchProperty(_:featureName:);

      return v125();
    case 0x13:
      if (one-time initialization token for userDefaults != -1)
      {
        OUTLINED_FUNCTION_1(&one-time initialization token for userDefaults);
      }

      if (!static MusicUIEngagementExtension.userDefaults)
      {
        goto LABEL_83;
      }

      v29 = *(v2 + 120);
      v28 = *(v2 + 128);
      v30 = *(v2 + 112);
      v31 = *(v2 + 96);
      goto LABEL_74;
    case 0x14:
      if (one-time initialization token for userDefaults != -1)
      {
        OUTLINED_FUNCTION_1(&one-time initialization token for userDefaults);
      }

      if (static MusicUIEngagementExtension.userDefaults)
      {
        v29 = *(v2 + 120);
        v28 = *(v2 + 128);
        v30 = *(v2 + 112);
        v31 = *(v2 + 96);
LABEL_74:
        v68 = OUTLINED_FUNCTION_37();
        v69(v68);
        v70 = NSUserDefaults.BOOL(forKey:)(v28);
        (*(v29 + 8))(v28, v30);
        *(v31 + 24) = &type metadata for Bool;
        *(v31 + 32) = &protocol witness table for Bool;
        if (v70 != 2)
        {
          **(v2 + 96) = v70 & 1;
          goto LABEL_132;
        }
      }

      else
      {
LABEL_83:
        v81 = *(v2 + 96);
        *(v81 + 24) = &type metadata for Bool;
        *(v81 + 32) = &protocol witness table for Bool;
      }

      **(v2 + 96) = 0;
      goto LABEL_132;
    case 0x15:
      if (one-time initialization token for mobileiPodDefaults != -1)
      {
        OUTLINED_FUNCTION_2_0(&one-time initialization token for mobileiPodDefaults);
      }

      if (!static MusicUIEngagementExtension.mobileiPodDefaults)
      {
        goto LABEL_69;
      }

      v35 = *(v2 + 96);
      v36 = OUTLINED_FUNCTION_20_0();
      v37(v36);
      DefaultsKeys.LegacyDefaultsKeys.rawValue.getter();
      v38 = OUTLINED_FUNCTION_9_0();
      v39(v38);
      OUTLINED_FUNCTION_32();
      v40 = String._bridgeToObjectiveC()();

      v41 = OUTLINED_FUNCTION_68();
      v43 = [v41 v42];

      *(v35 + 24) = &type metadata for Bool;
      *(v35 + 32) = &protocol witness table for Bool;
      *v35 = v43 ^ 1;
      goto LABEL_132;
    case 0x16:
      if (one-time initialization token for userDefaults != -1)
      {
        OUTLINED_FUNCTION_1(&one-time initialization token for userDefaults);
      }

      if (!static MusicUIEngagementExtension.userDefaults)
      {
        goto LABEL_69;
      }

      v60 = *(v2 + 120);
      v59 = *(v2 + 128);
      v61 = *(v2 + 112);
LABEL_68:
      v62 = OUTLINED_FUNCTION_37();
      v63(v62);
      v64 = NSUserDefaults.integer(forKey:)(v59);
      v66 = v65;
      (*(v60 + 8))(v59, v61);
      if (v66)
      {
        goto LABEL_69;
      }

      v103 = *(v2 + 96);
      v103[3] = &type metadata for Int;
      v103[4] = &protocol witness table for Int;
      *v103 = v64;
      goto LABEL_132;
    case 0x17:
      v71 = *(v2 + 96);
      v71[3] = type metadata accessor for UnifiedMessages.MLI.State();
      v71[4] = lazy protocol witness table accessor for type UnifiedMessages.MLI.State and conformance UnifiedMessages.MLI.State();
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v71);
      static MusicUIEngagementExtension.mliState.getter(boxed_opaque_existential_1);
      goto LABEL_132;
    case 0x18:
      if (one-time initialization token for userDefaults != -1)
      {
        OUTLINED_FUNCTION_1(&one-time initialization token for userDefaults);
      }

      if (!static MusicUIEngagementExtension.userDefaults)
      {
        goto LABEL_69;
      }

      v18 = *(v2 + 120);
      v17 = *(v2 + 128);
      v19 = *(v2 + 112);
      (*(v18 + 104))(v17, enum case for DefaultsKeys.Engagement.socialProfileFetchState(_:), v19);
      v20 = NSUserDefaults.string(forKey:)(v17);
      v22 = v21;
      (*(v18 + 8))(v17, v19);
      if (!v22)
      {
        goto LABEL_69;
      }

      v23 = *(v2 + 96);
      v23[3] = &type metadata for String;
      v23[4] = &protocol witness table for String;
      *v23 = v20;
      v23[1] = v22;
      goto LABEL_132;
    default:
      if (one-time initialization token for userDefaults != -1)
      {
        OUTLINED_FUNCTION_1(&one-time initialization token for userDefaults);
      }

      v3 = static MusicUIEngagementExtension.userDefaults;
      if (static MusicUIEngagementExtension.userDefaults)
      {
        v4 = *(v2 + 96);
        Property.rawValue.getter(*(v2 + 208));
        v5 = String._bridgeToObjectiveC()();

        v6 = [v3 integerForKey:v5];

        v4[3] = &type metadata for Int;
        v4[4] = &protocol witness table for Int;
        *v4 = v6;
      }

      else
      {
LABEL_69:
        v67 = *(v2 + 96);
        *(v67 + 32) = 0;
        *v67 = 0u;
        *(v67 + 16) = 0u;
      }

      goto LABEL_132;
  }
}

{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_17_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 210) = v3;

  v4 = OUTLINED_FUNCTION_36();

  return _swift_task_switch(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_48();
  v1 = *(v0 + 160);
  v2 = [v1 transitionStyleForUserWithCatalogPlaybackCapability:*(v0 + 210)];

  if (one-time initialization token for logger != -1)
  {
    OUTLINED_FUNCTION_0_1(&one-time initialization token for logger);
  }

  v3 = type metadata accessor for Logger();
  OUTLINED_FUNCTION_22_0(v3, static MusicUIEngagementExtension.logger);
  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.default.getter();
  if (OUTLINED_FUNCTION_16_0(v5))
  {
    v6 = OUTLINED_FUNCTION_28();
    *v6 = 134349056;
    *(v6 + 4) = v2;
    OUTLINED_FUNCTION_39();
    _os_log_impl(v7, v8, v9, v10, v11, 0xCu);
    OUTLINED_FUNCTION_5_0();
  }

  v12 = 0x64656C6261736964;
  if (v2 == 1)
  {
    v12 = 0x64656C62616E65;
  }

  OUTLINED_FUNCTION_74(v12);

  OUTLINED_FUNCTION_11_0();

  return v13();
}

{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_17_0();
  *v2 = v1;
  *v2 = *v0;
  *(v1 + 211) = v3;

  v4 = OUTLINED_FUNCTION_36();

  return _swift_task_switch(v4, v5, v6);
}

{
  OUTLINED_FUNCTION_48();
  v1 = *(v0 + 176);
  v2 = [v1 areTransitionsEnabledForUserWithCatalogPlaybackCapability:*(v0 + 211)];

  v3 = 0x64656C6261736964;
  if (v2)
  {
    v3 = 0x64656C62616E65;
  }

  OUTLINED_FUNCTION_74(v3);

  OUTLINED_FUNCTION_11_0();

  return v4();
}

{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_26_0();
  OUTLINED_FUNCTION_17_0();
  *v2 = v1;
  v3 = *v0;
  OUTLINED_FUNCTION_6_0();
  *v4 = v3;
  *(v6 + 212) = v5;

  v7 = OUTLINED_FUNCTION_36();

  return _swift_task_switch(v7, v8, v9);
}

{
  OUTLINED_FUNCTION_18_0();
  v1 = *(v0 + 212);
  v2 = *(v0 + 96);
  *(v2 + 24) = &type metadata for Bool;
  *(v2 + 32) = &protocol witness table for Bool;
  *v2 = v1;

  OUTLINED_FUNCTION_11_0();

  return v3();
}

uint64_t NSUserDefaults.integer(forKey:)(uint64_t a1)
{
  DefaultsKeys.Engagement.rawValue.getter();
  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 objectForKey:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of Any?(v8, &_sypSgMd, &_sypSgMR);
    return 0;
  }
}

uint64_t NSUserDefaults.BOOL(forKey:)(uint64_t a1)
{
  DefaultsKeys.Engagement.rawValue.getter();
  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 objectForKey:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 2;
    }
  }

  else
  {
    outlined destroy of Any?(v8, &_sypSgMd, &_sypSgMR);
    return 2;
  }
}

uint64_t static MusicUIEngagementExtension.mliState.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s7MusicUI15UnifiedMessagesO3MLIO5StateOSgMd, &_s7MusicUI15UnifiedMessagesO3MLIO5StateOSgMR);
  __chkstk_darwin(v2 - 8);
  v4 = &v17 - v3;
  v5 = static UnifiedMessages.defaultsSuiteName.getter();
  v7 = v6;
  v8 = objc_allocWithZone(NSUserDefaults);
  v9 = @nonobjc NSUserDefaults.init(suiteName:)(v5, v7);
  if (v9)
  {
    v10 = v9;
    static UnifiedMessages.MLI.userDefaultsKey.getter();
    v11 = String._bridgeToObjectiveC()();

    v12 = [v10 stringForKey:v11];

    if (v12)
    {
      static String._unconditionallyBridgeFromObjectiveC(_:)();

      UnifiedMessages.MLI.State.init(rawValue:)();
      v13 = type metadata accessor for UnifiedMessages.MLI.State();
      if (__swift_getEnumTagSinglePayload(v4, 1, v13) != 1)
      {
        return (*(*(v13 - 8) + 32))(a1, v4, v13);
      }

      outlined destroy of Any?(v4, &_s7MusicUI15UnifiedMessagesO3MLIO5StateOSgMd, &_s7MusicUI15UnifiedMessagesO3MLIO5StateOSgMR);
    }

    else
    {
    }
  }

  v14 = enum case for UnifiedMessages.MLI.State.unknown(_:);
  v15 = type metadata accessor for UnifiedMessages.MLI.State();
  return (*(*(v15 - 8) + 104))(a1, v14, v15);
}

uint64_t NSUserDefaults.string(forKey:)(uint64_t a1)
{
  DefaultsKeys.Engagement.rawValue.getter();
  v2 = String._bridgeToObjectiveC()();

  v3 = [v1 objectForKey:v2];

  if (v3)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (*(&v7 + 1))
  {
    if (swift_dynamicCast())
    {
      return v5;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    outlined destroy of Any?(v8, &_sypSgMd, &_sypSgMR);
    return 0;
  }
}

id MusicUIEngagementExtension.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "init");
}

id MusicUIEngagementExtension.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, "dealloc");
}

uint64_t sub_10000D180()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

id @nonobjc NSUserDefaults.init(suiteName:)(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    v3 = String._bridgeToObjectiveC()();
  }

  else
  {
    v3 = 0;
  }

  v4 = [v2 initWithSuiteName:v3];

  return v4;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

unint64_t lazy protocol witness table accessor for type ExtensionError and conformance ExtensionError()
{
  result = lazy protocol witness table cache variable for type ExtensionError and conformance ExtensionError;
  if (!lazy protocol witness table cache variable for type ExtensionError and conformance ExtensionError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ExtensionError and conformance ExtensionError);
  }

  return result;
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
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_26_0();
  v1 = *v0;
  OUTLINED_FUNCTION_6_0();
  *v2 = v1;

  OUTLINED_FUNCTION_11_0();

  return v3();
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (v6)
  {
    v8 = v6;

    ObjectType = swift_getObjectType();
    v11[0] = v8;
  }

  else
  {
    ObjectType = &type metadata for _StringGuts;
    v11[0] = a1;
    v11[1] = a2;
  }

  v9 = *a3;
  if (*a3)
  {
    outlined init with copy of Any(v11, *a3);
    *a3 = v9 + 32;
  }

  __swift_destroy_boxed_opaque_existential_1(v11);
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
        v11 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v11)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v11) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v9;
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
    result = _StringObject.sharedUTF8.getter();
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

char *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

char *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  v4 = (HIBYTE(a2) & 0xF);
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = String.UTF8View._foreignCount()())
  {
    result = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = _StringGuts._foreignCopyUTF8(into:)();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = result + 32;
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
          v4 = (a1 & 0xFFFFFFFFFFFFLL);
        }

        else
        {
          result = _StringObject.sharedUTF8.getter();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = v7 + 32;
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return &_swiftEmptyArrayStorage;
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
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
    return &_swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, &_ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
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
    v10 = &_swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
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

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1, uint64_t a2)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  v4 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(a1, a2, v4);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:)(uint64_t a1)
{
  v1 = a1;
  Hasher.init(_seed:)();
  Property.rawValue.getter(v1);
  String.hash(into:)();

  v2 = Hasher._finalize()();

  return specialized __RawDictionaryStorage.find<A>(_:hashValue:)(v1, v2);
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = ~(-1 << *(v3 + 32));
  for (i = a3 & v6; ((1 << i) & *(v3 + 64 + ((i >> 3) & 0x1FFFFFFFFFFFFFF8))) != 0; i = (i + 1) & v6)
  {
    v8 = (*(v3 + 48) + 16 * i);
    v9 = *v8 == a1 && v8[1] == a2;
    if (v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      break;
    }
  }

  return i;
}

unint64_t specialized __RawDictionaryStorage.find<A>(_:hashValue:)(char a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    while (1)
    {
      v7 = 0xEE0064656C62616ELL;
      v8 = 0x4565727574616566;
      switch(*(*(v2 + 48) + v4))
      {
        case 1:
          v8 = 0xD00000000000001FLL;
          v7 = 0x8000000100011420;
          break;
        case 2:
          v8 = 0xD000000000000019;
          v7 = 0x8000000100011440;
          break;
        case 3:
          v8 = 0xD000000000000015;
          v7 = 0x8000000100011460;
          break;
        case 4:
          v8 = 0xD000000000000022;
          v7 = 0x8000000100011480;
          break;
        case 5:
          break;
        case 6:
          v7 = 0xEE0064656761676ELL;
          v8 = 0x4565727574616566;
          break;
        case 7:
          v8 = 0xD000000000000012;
          v7 = 0x80000001000114D0;
          break;
        case 8:
          v8 = 0xD000000000000016;
          v7 = 0x80000001000114F0;
          break;
        case 9:
          v8 = 0xD00000000000001CLL;
          v7 = 0x8000000100011510;
          break;
        case 0xA:
          v8 = 0xD000000000000018;
          v7 = 0x8000000100011530;
          break;
        case 0xB:
          v8 = 0xD00000000000001BLL;
          v7 = 0x8000000100011550;
          break;
        case 0xC:
          v8 = 0xD00000000000001FLL;
          v7 = 0x8000000100011570;
          break;
        case 0xD:
          v8 = 0xD00000000000001CLL;
          v7 = 0x8000000100011590;
          break;
        case 0xE:
          v8 = 0xD000000000000019;
          v7 = 0x80000001000115B0;
          break;
        case 0xF:
          v8 = 0xD00000000000001BLL;
          v7 = 0x80000001000115D0;
          break;
        case 0x10:
          v8 = 0xD000000000000017;
          v7 = 0x80000001000115F0;
          break;
        case 0x11:
          v8 = 0xD000000000000015;
          v7 = 0x8000000100011610;
          break;
        case 0x12:
          v8 = 0xD000000000000019;
          v7 = 0x8000000100011630;
          break;
        case 0x13:
          v8 = 0xD000000000000011;
          v7 = 0x8000000100011650;
          break;
        case 0x14:
          v8 = 0xD000000000000019;
          v7 = 0x8000000100011670;
          break;
        case 0x15:
          v8 = 0xD00000000000001CLL;
          v7 = 0x8000000100011690;
          break;
        case 0x16:
          v8 = 0xD000000000000010;
          v7 = 0x80000001000116B0;
          break;
        case 0x17:
          v7 = 0xE800000000000000;
          v8 = 0x6574617453696C6DLL;
          break;
        case 0x18:
          v8 = 0xD000000000000017;
          v7 = 0x80000001000116D0;
          break;
        default:
          v8 = 0xD000000000000020;
          v7 = 0x80000001000113F0;
          break;
      }

      v9 = 0x4565727574616566;
      v10 = 0xEE0064656C62616ELL;
      switch(a1)
      {
        case 1:
          v9 = 0xD00000000000001FLL;
          v10 = 0x8000000100011420;
          break;
        case 2:
          v9 = 0xD000000000000019;
          v10 = 0x8000000100011440;
          break;
        case 3:
          v9 = 0xD000000000000015;
          v10 = 0x8000000100011460;
          break;
        case 4:
          v9 = 0xD000000000000022;
          v10 = 0x8000000100011480;
          break;
        case 5:
          break;
        case 6:
          v10 = 0xEE0064656761676ELL;
          v9 = 0x4565727574616566;
          break;
        case 7:
          v9 = 0xD000000000000012;
          v10 = 0x80000001000114D0;
          break;
        case 8:
          v9 = 0xD000000000000016;
          v10 = 0x80000001000114F0;
          break;
        case 9:
          v9 = 0xD00000000000001CLL;
          v10 = 0x8000000100011510;
          break;
        case 10:
          v9 = 0xD000000000000018;
          v10 = 0x8000000100011530;
          break;
        case 11:
          v9 = 0xD00000000000001BLL;
          v10 = 0x8000000100011550;
          break;
        case 12:
          v9 = 0xD00000000000001FLL;
          v10 = 0x8000000100011570;
          break;
        case 13:
          v9 = 0xD00000000000001CLL;
          v10 = 0x8000000100011590;
          break;
        case 14:
          v9 = 0xD000000000000019;
          v10 = 0x80000001000115B0;
          break;
        case 15:
          v9 = 0xD00000000000001BLL;
          v10 = 0x80000001000115D0;
          break;
        case 16:
          v9 = 0xD000000000000017;
          v10 = 0x80000001000115F0;
          break;
        case 17:
          v9 = 0xD000000000000015;
          v10 = 0x8000000100011610;
          break;
        case 18:
          v9 = 0xD000000000000019;
          v10 = 0x8000000100011630;
          break;
        case 19:
          v9 = 0xD000000000000011;
          v10 = 0x8000000100011650;
          break;
        case 20:
          v9 = 0xD000000000000019;
          v10 = 0x8000000100011670;
          break;
        case 21:
          v9 = 0xD00000000000001CLL;
          v10 = 0x8000000100011690;
          break;
        case 22:
          v9 = 0xD000000000000010;
          v10 = 0x80000001000116B0;
          break;
        case 23:
          v10 = 0xE800000000000000;
          v9 = 0x6574617453696C6DLL;
          break;
        case 24:
          v9 = 0xD000000000000017;
          v10 = 0x80000001000116D0;
          break;
        default:
          v9 = 0xD000000000000020;
          v10 = 0x80000001000113F0;
          break;
      }

      if (v8 == v9 && v7 == v10)
      {
        break;
      }

      v12 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v12 & 1) == 0)
      {
        v4 = (v4 + 1) & v6;
        if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
        {
          continue;
        }
      }

      return v4;
    }
  }

  return v4;
}

uint64_t outlined bridged method (ob) of @objc ICUserIdentity.accountDSID.getter(void *a1)
{
  v2 = [a1 accountDSID];

  if (!v2)
  {
    return 0;
  }

  v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

  return v3;
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_10000E440()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1((v0 + 32));

  return _swift_deallocObject(v0, 96, 7);
}

_OWORD *outlined init with take of Any(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t partial apply for closure #1 in static MusicUIEngagementExtension.performRequest(with:completion:)(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[8];
  v6 = v1[9];
  v7 = v1[10];
  v8 = v1[11];
  v9 = swift_task_alloc();
  v10 = OUTLINED_FUNCTION_41(v9);
  *v10 = v11;
  v10[1] = partial apply for closure #1 in static MusicUIEngagementExtension.performRequest(with:completion:);

  return closure #1 in static MusicUIEngagementExtension.performRequest(with:completion:)(a1, v3, v4, (v1 + 4), v5, v6, v7, v8);
}

uint64_t partial apply for closure #1 in static MusicUIEngagementExtension.performRequest(with:completion:)()
{
  OUTLINED_FUNCTION_18_0();
  OUTLINED_FUNCTION_26_0();
  v1 = *v0;
  OUTLINED_FUNCTION_6_0();
  *v2 = v1;

  OUTLINED_FUNCTION_11_0();

  return v3();
}

unint64_t lazy protocol witness table accessor for type ODJResponse and conformance ODJResponse()
{
  result = lazy protocol witness table cache variable for type ODJResponse and conformance ODJResponse;
  if (!lazy protocol witness table cache variable for type ODJResponse and conformance ODJResponse)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJResponse and conformance ODJResponse);
  }

  return result;
}

uint64_t outlined consume of Data._Representation(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v2;
    }
  }
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA()
{
  OUTLINED_FUNCTION_48();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_25_0(v1);

  return v4(v3);
}

uint64_t sub_10000E7B0()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t _sxIeAgHr_xs5Error_pIegHrzo_s8SendableRzs5NeverORs_r0_lTRyt_Tg5TA_14()
{
  OUTLINED_FUNCTION_48();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_41(v0);
  *v1 = v2;
  v3 = OUTLINED_FUNCTION_25_0(v1);

  return v4(v3);
}

unint64_t lazy protocol witness table accessor for type ODJRequest and conformance ODJRequest()
{
  result = lazy protocol witness table cache variable for type ODJRequest and conformance ODJRequest;
  if (!lazy protocol witness table cache variable for type ODJRequest and conformance ODJRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ODJRequest and conformance ODJRequest);
  }

  return result;
}

uint64_t outlined consume of ODJResponse.JSONPayloadError?(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
  }

  return result;
}

uint64_t outlined assign with take of Encodable?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSE_pSgMd, &_sSE_pSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type UnifiedMessages.MLI.State and conformance UnifiedMessages.MLI.State()
{
  result = lazy protocol witness table cache variable for type UnifiedMessages.MLI.State and conformance UnifiedMessages.MLI.State;
  if (!lazy protocol witness table cache variable for type UnifiedMessages.MLI.State and conformance UnifiedMessages.MLI.State)
  {
    type metadata accessor for UnifiedMessages.MLI.State();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UnifiedMessages.MLI.State and conformance UnifiedMessages.MLI.State);
  }

  return result;
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

unint64_t type metadata accessor for ICStoreRequestContext()
{
  result = lazy cache variable for type metadata for ICStoreRequestContext;
  if (!lazy cache variable for type metadata for ICStoreRequestContext)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for ICStoreRequestContext);
  }

  return result;
}

uint64_t outlined destroy of Any?(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
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

uint64_t outlined init with copy of TaskPriority?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  v5 = OUTLINED_FUNCTION_69();
  v6(v5);
  return a2;
}

uint64_t OUTLINED_FUNCTION_0_1(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_1(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_2_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_4_0(uint64_t a1)
{

  return swift_once();
}

uint64_t OUTLINED_FUNCTION_5_0()
{
}

uint64_t OUTLINED_FUNCTION_8()
{
  __swift_destroy_boxed_opaque_existential_1(v0);
}

void OUTLINED_FUNCTION_10_0(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0xCu);
}

uint64_t OUTLINED_FUNCTION_12_0()
{
}

uint64_t OUTLINED_FUNCTION_14_0()
{
}

uint64_t OUTLINED_FUNCTION_15_0()
{

  return swift_slowAlloc();
}

BOOL OUTLINED_FUNCTION_16_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

void OUTLINED_FUNCTION_19_0(float a1)
{
  *v1 = a1;

  _StringGuts.grow(_:)(37);
}

uint64_t OUTLINED_FUNCTION_23_0(uint64_t a1)
{
}

BOOL OUTLINED_FUNCTION_24_0(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_28()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_29()
{

  return swift_slowAlloc();
}

void OUTLINED_FUNCTION_30(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v6, a4, v5, 0x16u);
}

BOOL OUTLINED_FUNCTION_31(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

uint64_t OUTLINED_FUNCTION_33(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_38(uint64_t result)
{
  *(v1 + 4) = result;
  *(v1 + 12) = 2082;
  return result;
}

BOOL OUTLINED_FUNCTION_40(os_log_type_t a1)
{

  return os_log_type_enabled(v1, a1);
}

unint64_t OUTLINED_FUNCTION_42@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, ...)
{
  va_start(va, a5);

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000021, (a1 - 32) | 0x8000000000000000, va);
}

double OUTLINED_FUNCTION_45@<D0>(uint64_t a1@<X8>)
{
  *a1 = v1;
  result = 0.0;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  *(a1 + 40) = 0;
  return result;
}

double OUTLINED_FUNCTION_46()
{
  result = 0.0;
  *(v0 + 32) = 0u;
  *(v0 + 16) = 0u;
  return result;
}

double OUTLINED_FUNCTION_47()
{
  result = 0.0;
  *(v0 + 24) = 0u;
  *(v0 + 40) = 0u;
  *(v0 + 56) = 0;
  return result;
}

uint64_t OUTLINED_FUNCTION_50()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_51()
{

  return swift_slowAlloc();
}

unint64_t OUTLINED_FUNCTION_52(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, unint64_t a14)
{
  v15 = a13;
  v16 = a14;

  return getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, &a12);
}

void OUTLINED_FUNCTION_53(float a1)
{
  *v1 = a1;

  _StringGuts.grow(_:)(37);
}

uint64_t OUTLINED_FUNCTION_54()
{

  return swift_arrayDestroy();
}

uint64_t OUTLINED_FUNCTION_57()
{

  return swift_slowAlloc();
}

uint64_t OUTLINED_FUNCTION_58()
{
}

uint64_t OUTLINED_FUNCTION_61(uint64_t a1, void *a2)
{
  *a2 = 0;
  a2[1] = 0;
  return v2;
}

uint64_t OUTLINED_FUNCTION_74@<X0>(uint64_t a1@<X8>)
{
  v4[3] = v2;
  v4[4] = v3;
  *v4 = a1;
  v4[1] = v1;
}

void OUTLINED_FUNCTION_75(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

void OUTLINED_FUNCTION_76(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v6, v4, a4, v5, 0xCu);
}

uint64_t KeyedEncodingContainer.encode(_:forKey:)()
{
  return KeyedEncodingContainer.encode(_:forKey:)();
}

{
  return KeyedEncodingContainer.encode(_:forKey:)();
}