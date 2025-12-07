uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.GroupRecoveryInfo.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x70756F7247776172 && a2 == 0xEC0000006F666E49;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x5474656863746172 && a2 == 0xEB00000000656572)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.GroupRecoveryInfo.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.GroupRecoveryInfo.CodingKeys and conformance MLS.GroupRecoveryInfo.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.GroupRecoveryInfo.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.GroupRecoveryInfo.CodingKeys and conformance MLS.GroupRecoveryInfo.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.GroupRecoveryInfo.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO17GroupRecoveryInfoV10CodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO17GroupRecoveryInfoV10CodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMR);
  v14 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v11 - v5;
  v7 = *v1;
  v8 = v1[1];
  v9 = v1[2];
  v12 = v1[3];
  v13 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  outlined copy of Data._Representation(v7, v8);
  lazy protocol witness table accessor for type MLS.GroupRecoveryInfo.CodingKeys and conformance MLS.GroupRecoveryInfo.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = v7;
  v16 = v8;
  v17 = 0;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data._Representation(v15, v16);
  if (!v2)
  {
    v15 = v13;
    v16 = v12;
    v17 = 1;
    outlined copy of Data?(v13, v12);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v15, v16);
  }

  return (*(v14 + 8))(v6, v4);
}

void MLS.GroupRecoveryInfo.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  Data.hash(into:)();
  if (v2 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);

    Data.hash(into:)();
  }
}

Swift::Int MLS.GroupRecoveryInfo.hashValue.getter()
{
  v1 = *(v0 + 24);
  Hasher.init(_seed:)();
  Data.hash(into:)();
  if (v1 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t MLS.GroupRecoveryInfo.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO17GroupRecoveryInfoV10CodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO17GroupRecoveryInfoV10CodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.GroupRecoveryInfo.CodingKeys and conformance MLS.GroupRecoveryInfo.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v18 = 0;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v16;
  v15 = v17;
  v18 = 1;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v10 = v16;
  v11 = v17;
  v12 = v15;
  *a2 = v9;
  a2[1] = v12;
  a2[2] = v10;
  a2[3] = v11;
  outlined copy of Data._Representation(v9, v12);
  outlined copy of Data?(v10, v11);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  outlined consume of Data._Representation(v9, v12);
  return outlined consume of Data?(v10, v11);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MLS.GroupRecoveryInfo()
{
  v1 = *(v0 + 24);
  Hasher.init(_seed:)();
  Data.hash(into:)();
  if (v1 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance MLS.GroupRecoveryInfo(uint64_t a1)
{
  v2 = *(v1 + 24);
  Data.hash(into:)();
  if (v2 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);

    Data.hash(into:)();
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLS.GroupRecoveryInfo(uint64_t a1)
{
  v2 = *(v1 + 24);
  Hasher.init(_seed:)();
  Data.hash(into:)();
  if (v2 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t MLS.FetchGroupRecoveryInfoResult.description.getter()
{
  v1 = *(v0 + 8) >> 60;
  if (v1 == 15)
  {
    return 0x7466417972746552;
  }

  if (v1 == 11)
  {
    return 0x746552746F4E6F44;
  }

  v3 = *(v0 + 24);
  _StringGuts.grow(_:)(22);

  _StringGuts.grow(_:)(31);

  countAndFlagsBits = Data.base64EncodedString(options:)(0)._countAndFlagsBits;
  MEMORY[0x2667545A0](countAndFlagsBits);

  MEMORY[0x2667545A0](0xD000000000000010, 0x80000002651E9AD0);
  if (v3 >> 60 != 15)
  {
    Data.base64EncodedString(options:)(0);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v5 = String.init<A>(describing:)();
  MEMORY[0x2667545A0](v5);

  MEMORY[0x2667545A0](0x666E4970756F7247, 0xEB00000000203A6FLL);

  MEMORY[0x2667545A0](41, 0xE100000000000000);
  return 0xD000000000000013;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.FetchGroupRecoveryInfoResult.CodingKeys(uint64_t a1)
{
  GroupRecoveryInfo = lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoResult.CodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.CodingKeys();

  return MEMORY[0x2821FE718](a1, GroupRecoveryInfo);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.FetchGroupRecoveryInfoResult.CodingKeys(uint64_t a1)
{
  GroupRecoveryInfo = lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoResult.CodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.CodingKeys();

  return MEMORY[0x2821FE720](a1, GroupRecoveryInfo);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys(uint64_t a1)
{
  GroupRecoveryInfo = lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys();

  return MEMORY[0x2821FE718](a1, GroupRecoveryInfo);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys(uint64_t a1)
{
  GroupRecoveryInfo = lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys();

  return MEMORY[0x2821FE720](a1, GroupRecoveryInfo);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys(uint64_t a1)
{
  GroupRecoveryInfo = lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys();

  return MEMORY[0x2821FE718](a1, GroupRecoveryInfo);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys(uint64_t a1)
{
  GroupRecoveryInfo = lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys();

  return MEMORY[0x2821FE720](a1, GroupRecoveryInfo);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys(uint64_t a1)
{
  GroupRecoveryInfo = lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys();

  return MEMORY[0x2821FE718](a1, GroupRecoveryInfo);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys(uint64_t a1)
{
  GroupRecoveryInfo = lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys();

  return MEMORY[0x2821FE720](a1, GroupRecoveryInfo);
}

uint64_t MLS.FetchGroupRecoveryInfoResult.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO28FetchGroupRecoveryInfoResultO20DoNotRetryCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO28FetchGroupRecoveryInfoResultO20DoNotRetryCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMR);
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x28223BE20](v4);
  v23 = &v20 - v5;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO28FetchGroupRecoveryInfoResultO25RetryAfterDelayCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO28FetchGroupRecoveryInfoResultO25RetryAfterDelayCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMR);
  v6 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO28FetchGroupRecoveryInfoResultO17SuccessCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO28FetchGroupRecoveryInfoResultO17SuccessCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMR);
  v21 = *(v9 - 8);
  v22 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO28FetchGroupRecoveryInfoResultO10CodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO28FetchGroupRecoveryInfoResultO10CodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMR);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v20 - v14;
  v16 = *v2;
  v20 = v2[1];
  v27 = v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoResult.CodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (*(&v27 + 1) >> 60 == 15)
  {
    LOBYTE(v28) = 1;
    lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v6 + 8))(v8, v26);
    return (*(v13 + 8))(v15, v12);
  }

  if (*(&v27 + 1) >> 60 == 11)
  {
    LOBYTE(v28) = 2;
    lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys();
    v17 = v23;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v24 + 8))(v17, v25);
    return (*(v13 + 8))(v15, v12);
  }

  LOBYTE(v28) = 0;
  lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v28 = v27;
  v29 = v20;
  lazy protocol witness table accessor for type MLS.GroupRecoveryInfo and conformance MLS.GroupRecoveryInfo();
  v19 = v22;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v21 + 8))(v11, v19);
  return (*(v13 + 8))(v15, v12);
}

uint64_t MLS.FetchGroupRecoveryInfoResult.init(from:)@<X0>(void *a1@<X0>, __int128 *a2@<X8>)
{
  v43 = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO28FetchGroupRecoveryInfoResultO20DoNotRetryCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO28FetchGroupRecoveryInfoResultO20DoNotRetryCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMR);
  v42 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v41 = &v35 - v3;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO28FetchGroupRecoveryInfoResultO25RetryAfterDelayCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO28FetchGroupRecoveryInfoResultO25RetryAfterDelayCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMR);
  v40 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v5 = &v35 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO28FetchGroupRecoveryInfoResultO17SuccessCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO28FetchGroupRecoveryInfoResultO17SuccessCodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMR);
  v39 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO28FetchGroupRecoveryInfoResultO10CodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO28FetchGroupRecoveryInfoResultO10CodingKeys33_906CCAE103275F61D6626EEF01A910E8LLOGMR);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v35 - v11;
  v13 = a1[3];
  v51 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoResult.CodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.CodingKeys();
  v14 = v44;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v14)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v51);
  }

  v35 = v6;
  v36 = 0;
  v16 = v41;
  v15 = v42;
  v44 = v10;
  v17 = v43;
  v18 = KeyedDecodingContainer.allKeys.getter();
  v19 = (2 * *(v18 + 16)) | 1;
  v47 = v18;
  v48 = v18 + 32;
  v49 = 0;
  v50 = v19;
  v20 = specialized Collection<>.popFirst()();
  if (v20 == 3 || v49 != v50 >> 1)
  {
    v25 = type metadata accessor for DecodingError();
    swift_allocError();
    v27 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v27 = &type metadata for MLS.FetchGroupRecoveryInfoResult;
    v21 = v12;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x277D84160], v25);
    swift_willThrow();
    v23 = v44;
LABEL_9:
    (*(v23 + 8))(v21, v9);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1Tm(v51);
  }

  if (v20)
  {
    if (v20 == 1)
    {
      LOBYTE(v45) = 1;
      lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys();
      v21 = v12;
      v22 = v36;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v23 = v44;
      if (!v22)
      {
        (*(v40 + 8))(v5, v38);
        (*(v23 + 8))(v12, v9);
        swift_unknownObjectRelease();
        v24 = xmmword_2651B5F50;
LABEL_17:
        v34 = 0uLL;
        v32 = v17;
        goto LABEL_18;
      }

      goto LABEL_9;
    }

    LOBYTE(v45) = 2;
    lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys();
    v30 = v36;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v31 = v44;
    if (!v30)
    {
      (*(v15 + 8))(v16, v37);
      (*(v31 + 8))(v12, v9);
      swift_unknownObjectRelease();
      v24 = xmmword_2651BFBB0;
      goto LABEL_17;
    }

LABEL_14:
    (*(v44 + 8))(v12, v9);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1Tm(v51);
  }

  LOBYTE(v45) = 0;
  lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys();
  v29 = v36;
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  if (v29)
  {
    goto LABEL_14;
  }

  v32 = v17;
  lazy protocol witness table accessor for type MLS.GroupRecoveryInfo and conformance MLS.GroupRecoveryInfo();
  v33 = v35;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v39 + 8))(v8, v33);
  (*(v44 + 8))(v12, v9);
  swift_unknownObjectRelease();
  v24 = v45;
  v34 = v46;
LABEL_18:
  *v32 = v24;
  v32[1] = v34;
  return __swift_destroy_boxed_opaque_existential_1Tm(v51);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.FetchMemberContext.CodingKeys(uint64_t a1)
{
  Member = lazy protocol witness table accessor for type MLS.FetchMemberContext.CodingKeys and conformance MLS.FetchMemberContext.CodingKeys();

  return MEMORY[0x2821FE718](a1, Member);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.FetchMemberContext.CodingKeys(uint64_t a1)
{
  Member = lazy protocol witness table accessor for type MLS.FetchMemberContext.CodingKeys and conformance MLS.FetchMemberContext.CodingKeys();

  return MEMORY[0x2821FE720](a1, Member);
}

uint64_t MLS.ResendApplicationMessageContext.encode(to:)(void *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void), uint64_t a5)
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

uint64_t protocol witness for Encodable.encode(to:) in conformance MLS.ResendApplicationMessageContext(void *a1, uint64_t a2, uint64_t a3, uint64_t *a4, uint64_t *a5, uint64_t (*a6)(void), uint64_t a7)
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

uint64_t MLS.FetchMemberResult.description.getter(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = *(v1 - 8);
  v3 = MEMORY[0x28223BE20](a1);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v8 + 16))(v7);
  v9 = (*(v2 + 48))(v7, 2, v1);
  if (v9)
  {
    if (v9 == 1)
    {
      return 0x7466417972746552;
    }

    else
    {
      return 0x746552746F4E6F44;
    }
  }

  else
  {
    (*(v2 + 32))(v5, v7, v1);
    v12[0] = 0;
    v12[1] = 0xE000000000000000;
    MEMORY[0x2667545A0](0x2873736563637553, 0xE800000000000000);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    MEMORY[0x2667545A0](41, 0xE100000000000000);
    v11 = v12[0];
    (*(v2 + 8))(v5, v1);
    return v11;
  }
}

uint64_t MLS.FetchMemberResult.allMemberResult.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 16);
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v10);
  result = (*(v5 + 48))(v10, 2, v4);
  if (result)
  {
    *a2 = 0;
    *(a2 + 8) = 0;
    *(a2 + 16) = 0;
    if (result == 1)
    {
      v13 = -2;
    }

    else
    {
      v13 = 126;
    }

    *(a2 + 24) = v13;
  }

  else
  {
    (*(v5 + 32))(v8, v10, v4);
    (*(*(a1 + 24) + 40))(&v16, v4);
    result = (*(v5 + 8))(v8, v4);
    v14 = v17;
    v15 = v18;
    *a2 = v16;
    *(a2 + 16) = v14;
    *(a2 + 24) = v15;
  }

  return result;
}

uint64_t MLS.FetchMemberResult.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7466417972746572 && a2 == 0xEF79616C65447265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746552746F4E6F64 && a2 == 0xEA00000000007972)
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

uint64_t MLS.FetchMemberResult.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x73736563637573;
  }

  if (a1 == 1)
  {
    return 0x7466417972746572;
  }

  return 0x746552746F4E6F64;
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLS.FetchMemberResult<A>.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  MLS.FetchMemberResult.CodingKeys.hash(into:)(v3, *v1);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.FetchMemberResult<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MLS.FetchMemberResult.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.FetchMemberResult<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.FetchMemberResult<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.FetchMemberResult<A>.DoNotRetryCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.FetchMemberResult<A>.DoNotRetryCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.FetchMemberResult<A>.DoNotRetryCodingKeys@<X0>(uint64_t a2@<X2>, uint64_t (*a3)(void, void)@<X4>, _BYTE *a4@<X8>)
{
  v5 = a3(*(a2 + 16), *(a2 + 24));

  *a4 = v5 & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.FetchMemberResult<A>.RetryAfterDelayCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.FetchMemberResult<A>.RetryAfterDelayCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.FetchMemberResult<A>.SuccessCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MLS.IncomingEventType.ApplicationMessageCodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.FetchMemberResult<A>.SuccessCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.FetchMemberResult<A>.SuccessCodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.FetchMemberResult.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  v5 = *(a2 + 24);
  v58 = a2;
  Member = type metadata accessor for MLS.FetchMemberResult.DoNotRetryCodingKeys(255, v6, v5, a4);
  WitnessTable = swift_getWitnessTable();
  v56 = Member;
  v9 = type metadata accessor for KeyedEncodingContainer();
  v53 = *(v9 - 8);
  v54 = v9;
  MEMORY[0x28223BE20](v9);
  v52 = &v41 - v10;
  v12 = type metadata accessor for MLS.FetchMemberResult.RetryAfterDelayCodingKeys(255, v6, v5, v11);
  v13 = swift_getWitnessTable();
  v51 = v12;
  v49 = v13;
  v50 = type metadata accessor for KeyedEncodingContainer();
  v48 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v46 = &v41 - v14;
  v16 = type metadata accessor for MLS.FetchMemberResult.SuccessCodingKeys(255, v6, v5, v15);
  v17 = swift_getWitnessTable();
  v45 = v16;
  v43 = v17;
  v47 = type metadata accessor for KeyedEncodingContainer();
  v41 = *(v47 - 8);
  v18 = MEMORY[0x28223BE20](v47);
  v44 = &v41 - v19;
  v59 = *(v6 - 8);
  v20 = MEMORY[0x28223BE20](v18);
  v42 = &v41 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a2 - 8);
  MEMORY[0x28223BE20](v20);
  v24 = &v41 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = v5;
  type metadata accessor for MLS.FetchMemberResult.CodingKeys(255, v6, v5, v25);
  swift_getWitnessTable();
  v26 = type metadata accessor for KeyedEncodingContainer();
  v60 = *(v26 - 8);
  v61 = v26;
  MEMORY[0x28223BE20](v26);
  v28 = &v41 - v27;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v29 = v59;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  (*(v22 + 16))(v24, v62, v58);
  v30 = (*(v29 + 48))(v24, 2, v6);
  if (v30)
  {
    if (v30 == 1)
    {
      v64 = 1;
      v31 = v46;
      v32 = v61;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v48 + 8))(v31, v50);
      return (*(v60 + 8))(v28, v32);
    }

    else
    {
      v65 = 2;
      v39 = v52;
      v40 = v61;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v53 + 8))(v39, v54);
      return (*(v60 + 8))(v28, v40);
    }
  }

  else
  {
    v34 = v41;
    v35 = v42;
    (*(v29 + 32))(v42, v24, v6);
    v63 = 0;
    v36 = v44;
    v37 = v61;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v38 = v47;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v34 + 8))(v36, v38);
    (*(v29 + 8))(v35, v6);
    return (*(v60 + 8))(v28, v37);
  }
}

uint64_t MLS.FetchMemberResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v73 = a4;
  Member = type metadata accessor for MLS.FetchMemberResult.DoNotRetryCodingKeys(255, a2, a3, a5);
  WitnessTable = swift_getWitnessTable();
  v72 = Member;
  v61 = type metadata accessor for KeyedDecodingContainer();
  v60 = *(v61 - 8);
  MEMORY[0x28223BE20](v61);
  v70 = &v53 - v9;
  v11 = type metadata accessor for MLS.FetchMemberResult.RetryAfterDelayCodingKeys(255, a2, a3, v10);
  v68 = swift_getWitnessTable();
  v69 = v11;
  v59 = type metadata accessor for KeyedDecodingContainer();
  v58 = *(v59 - 8);
  MEMORY[0x28223BE20](v59);
  v67 = &v53 - v12;
  v14 = type metadata accessor for MLS.FetchMemberResult.SuccessCodingKeys(255, a2, a3, v13);
  v15 = swift_getWitnessTable();
  v65 = v14;
  v64 = v15;
  v57 = type metadata accessor for KeyedDecodingContainer();
  v56 = *(v57 - 8);
  MEMORY[0x28223BE20](v57);
  v66 = &v53 - v16;
  type metadata accessor for MLS.FetchMemberResult.CodingKeys(255, a2, a3, v17);
  swift_getWitnessTable();
  v18 = type metadata accessor for KeyedDecodingContainer();
  v19 = *(v18 - 8);
  v75 = v18;
  v76 = v19;
  MEMORY[0x28223BE20](v18);
  v21 = &v53 - v20;
  v62 = a3;
  MemberResult = type metadata accessor for MLS.FetchMemberResult(0, a2, a3, v22);
  v63 = *(MemberResult - 8);
  v24 = MEMORY[0x28223BE20](MemberResult);
  v26 = &v53 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v28 = &v53 - v27;
  v29 = a1[3];
  v82 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v29);
  v74 = v21;
  v30 = v77;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v30)
  {
    v54 = v26;
    v55 = v28;
    v77 = MemberResult;
    v31 = v74;
    v32 = v75;
    *&v78 = KeyedDecodingContainer.allKeys.getter();
    type metadata accessor for Array();
    swift_getWitnessTable();
    *&v80 = ArraySlice.init<A>(_:)();
    *(&v80 + 1) = v33;
    *&v81 = v34;
    *(&v81 + 1) = v35;
    type metadata accessor for ArraySlice();
    swift_getWitnessTable();
    Collection<>.popFirst()();
    v36 = v78;
    if (v78 == 3 || (v53 = v80, v78 = v80, v79 = v81, (Collection.isEmpty.getter() & 1) == 0))
    {
      v40 = type metadata accessor for DecodingError();
      swift_allocError();
      v42 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      *v42 = v77;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v40 - 8) + 104))(v42, *MEMORY[0x277D84160], v40);
      swift_willThrow();
      (*(v76 + 8))(v31, v32);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v36)
      {
        v37 = v73;
        if (v36 == 1)
        {
          LOBYTE(v78) = 1;
          v38 = v67;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v58 + 8))(v38, v59);
          (*(v76 + 8))(v31, v32);
          swift_unknownObjectRelease();
          v39 = v55;
          (*(*(a2 - 8) + 56))(v55, 1, 2, a2);
        }

        else
        {
          LOBYTE(v78) = 2;
          v47 = v70;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          (*(v60 + 8))(v47, v61);
          (*(v76 + 8))(v31, v32);
          swift_unknownObjectRelease();
          v39 = v55;
          (*(*(a2 - 8) + 56))(v55, 2, 2, a2);
        }

        v52 = v77;
        v49 = v63;
      }

      else
      {
        LOBYTE(v78) = 0;
        v44 = v66;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v45 = v57;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v46 = v76;
        (*(v56 + 8))(v44, v45);
        (*(v46 + 8))(v31, v32);
        swift_unknownObjectRelease();
        v48 = v54;
        (*(*(a2 - 8) + 56))(v54, 0, 2, a2);
        v49 = v63;
        v39 = v55;
        v50 = v48;
        v51 = v77;
        (*(v63 + 32))(v55, v50, v77);
        v52 = v51;
        v37 = v73;
      }

      (*(v49 + 32))(v37, v39, v52);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v82);
}

uint64_t protocol witness for MLS.Delegate.resendApplicationMessage(identifier:forGroup:context:) in conformance MLS.ClientEventDeliverer<A1, B1>()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return MLS.Delegate.resendApplicationMessage(identifier:forGroup:context:)();
}

BOOL specialized static MLS.GroupRecoveryInfo.== infix(_:_:)(_BOOL8 *a1, uint64_t *a2)
{
  v3 = a1[2];
  v2 = a1[3];
  v5 = a2[2];
  v4 = a2[3];
  if (!specialized static Data.== infix(_:_:)(*a1, a1[1], *a2, a2[1]))
  {
    return 0;
  }

  if (v2 >> 60 == 15)
  {
    if (v4 >> 60 == 15)
    {
      outlined copy of Data?(v3, v2);
      outlined copy of Data?(v5, v4);
      outlined consume of Data?(v3, v2);
      return 1;
    }

    goto LABEL_6;
  }

  if (v4 >> 60 == 15)
  {
LABEL_6:
    outlined copy of Data?(v3, v2);
    outlined copy of Data?(v5, v4);
    outlined consume of Data?(v3, v2);
    outlined consume of Data?(v5, v4);
    return 0;
  }

  outlined copy of Data?(v3, v2);
  outlined copy of Data?(v5, v4);
  v7 = specialized static Data.== infix(_:_:)(v3, v2, v5, v4);
  outlined consume of Data?(v5, v4);
  outlined consume of Data?(v3, v2);
  return v7;
}

unint64_t lazy protocol witness table accessor for type MLS.GroupRecoveryInfo.CodingKeys and conformance MLS.GroupRecoveryInfo.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.GroupRecoveryInfo.CodingKeys and conformance MLS.GroupRecoveryInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupRecoveryInfo.CodingKeys and conformance MLS.GroupRecoveryInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupRecoveryInfo.CodingKeys and conformance MLS.GroupRecoveryInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupRecoveryInfo.CodingKeys and conformance MLS.GroupRecoveryInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupRecoveryInfo.CodingKeys and conformance MLS.GroupRecoveryInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupRecoveryInfo.CodingKeys and conformance MLS.GroupRecoveryInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupRecoveryInfo.CodingKeys and conformance MLS.GroupRecoveryInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupRecoveryInfo.CodingKeys and conformance MLS.GroupRecoveryInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupRecoveryInfo.CodingKeys and conformance MLS.GroupRecoveryInfo.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupRecoveryInfo.CodingKeys and conformance MLS.GroupRecoveryInfo.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.GroupRecoveryInfo.CodingKeys and conformance MLS.GroupRecoveryInfo.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupRecoveryInfo.CodingKeys and conformance MLS.GroupRecoveryInfo.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoResult.CodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.CodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.CodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.CodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.CodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.CodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.CodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.CodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.CodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.CodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.CodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.CodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.CodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.DoNotRetryCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.RetryAfterDelayCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys and conformance MLS.FetchGroupRecoveryInfoResult.SuccessCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.GroupRecoveryInfo and conformance MLS.GroupRecoveryInfo()
{
  result = lazy protocol witness table cache variable for type MLS.GroupRecoveryInfo and conformance MLS.GroupRecoveryInfo;
  if (!lazy protocol witness table cache variable for type MLS.GroupRecoveryInfo and conformance MLS.GroupRecoveryInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupRecoveryInfo and conformance MLS.GroupRecoveryInfo);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupRecoveryInfo and conformance MLS.GroupRecoveryInfo;
  if (!lazy protocol witness table cache variable for type MLS.GroupRecoveryInfo and conformance MLS.GroupRecoveryInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupRecoveryInfo and conformance MLS.GroupRecoveryInfo);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.GroupRecoveryInfo and conformance MLS.GroupRecoveryInfo;
  if (!lazy protocol witness table cache variable for type MLS.GroupRecoveryInfo and conformance MLS.GroupRecoveryInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.GroupRecoveryInfo and conformance MLS.GroupRecoveryInfo);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.FetchMemberContext.CodingKeys and conformance MLS.FetchMemberContext.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.FetchMemberContext.CodingKeys and conformance MLS.FetchMemberContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.FetchMemberContext.CodingKeys and conformance MLS.FetchMemberContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchMemberContext.CodingKeys and conformance MLS.FetchMemberContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchMemberContext.CodingKeys and conformance MLS.FetchMemberContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.FetchMemberContext.CodingKeys and conformance MLS.FetchMemberContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchMemberContext.CodingKeys and conformance MLS.FetchMemberContext.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.FetchMemberContext.CodingKeys and conformance MLS.FetchMemberContext.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.FetchMemberContext.CodingKeys and conformance MLS.FetchMemberContext.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.FetchMemberContext.CodingKeys and conformance MLS.FetchMemberContext.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.ResendApplicationMessageResult and conformance MLS.ResendApplicationMessageResult()
{
  result = lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult and conformance MLS.ResendApplicationMessageResult;
  if (!lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult and conformance MLS.ResendApplicationMessageResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.ResendApplicationMessageResult and conformance MLS.ResendApplicationMessageResult);
  }

  return result;
}

uint64_t dispatch thunk of MLS.Delegate.receive(event:forGroup:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 40) + **(a5 + 40));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.Delegate.resendApplicationMessage(identifier:forGroup:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v17 = (*(a7 + 48) + **(a7 + 48));
  v15 = swift_task_alloc();
  *(v7 + 16) = v15;
  *v15 = v7;
  v15[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v17(a1, a2, a3, a4, a5, a6, a7);
}

uint64_t dispatch thunk of MLS.Delegate.fetchGroupRecoveryInfo(group:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 56) + **(a5 + 56));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t dispatch thunk of MLS.Delegate.fetchMember(uri:context:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v13 = (*(a5 + 64) + **(a5 + 64));
  v11 = swift_task_alloc();
  *(v5 + 16) = v11;
  *v11 = v5;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v13(a1, a2, a3, a4, a5);
}

uint64_t get_enum_tag_for_layout_string_15SecureMessaging3MLSO28FetchGroupRecoveryInfoResultO_0(uint64_t a1)
{
  v1 = *(a1 + 8) >> 60;
  if (((4 * v1) & 0xC) != 0)
  {
    return 16 - ((4 * v1) & 0xC | (v1 >> 2));
  }

  else
  {
    return 0;
  }
}

uint64_t getEnumTagSinglePayload for MLS.GroupRecoveryInfo(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 32))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 8) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 8) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for MLS.GroupRecoveryInfo(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 13;
    *(result + 8) = 0;
    if (a3 >= 0xD)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLS.FetchGroupRecoveryInfoResult(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xB && *(a1 + 32))
  {
    return (*a1 + 11);
  }

  v3 = *(a1 + 8) >> 60;
  if (((4 * v3) & 0xC) != 0)
  {
    v4 = 16 - ((4 * v3) & 0xC | (v3 >> 2));
  }

  else
  {
    v4 = 0;
  }

  if (v4 >= 3)
  {
    return v4 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MLS.FetchGroupRecoveryInfoResult(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xA)
  {
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 11;
    if (a3 >= 0xB)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0xB)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((14 - a2) >> 2) | (4 * (14 - a2))) << 60;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for MLS.FetchGroupRecoveryInfoResult(void *result, unsigned int a2)
{
  if (a2 > 0xC)
  {
    result[2] = 0;
    result[3] = 0;
    *result = a2 - 13;
    result[1] = 0;
  }

  else if (a2)
  {
    *result = 0;
    result[1] = (((-a2 >> 2) & 3) - 4 * a2) << 60;
  }

  return result;
}

uint64_t type metadata completion function for MLS.FetchMemberResult(uint64_t a1)
{
  v1 = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

uint64_t getEnumTagSinglePayload for MLS.FetchMemberResult(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 2;
  v7 = *(v4 + 64);
  if (v5 <= 1)
  {
    v6 = 0;
    if (v7 <= 3)
    {
      v9 = (~(-1 << (8 * v7)) - v5 + 2) >> (8 * v7);
      if (v9 > 0xFFFE)
      {
        v8 = 4;
      }

      else
      {
        v10 = 1;
        if (v9 >= 0xFF)
        {
          v10 = 2;
        }

        if (v9)
        {
          v8 = v10;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 1;
    }

    v7 += v8;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v6;
  if (a2 <= v6)
  {
    goto LABEL_36;
  }

  v12 = 8 * v7;
  if (v7 <= 3)
  {
    v14 = ((v11 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 < 2)
    {
LABEL_35:
      if (v6)
      {
LABEL_36:
        v18 = (*(v4 + 48))(a1, v5);
        if (v18 >= 3)
        {
          return v18 - 2;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }
  }

  v13 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_35;
  }

LABEL_22:
  v15 = (v13 - 1) << v12;
  if (v7 > 3)
  {
    v15 = 0;
  }

  if (v7)
  {
    if (v7 <= 3)
    {
      v16 = v7;
    }

    else
    {
      v16 = 4;
    }

    if (v16 > 2)
    {
      if (v16 == 3)
      {
        v17 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v17 = *a1;
      }
    }

    else if (v16 == 1)
    {
      v17 = *a1;
    }

    else
    {
      v17 = *a1;
    }
  }

  else
  {
    v17 = 0;
  }

  return v6 + (v17 | v15) + 1;
}

unsigned int *storeEnumTagSinglePayload for MLS.FetchMemberResult(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = v6 - 2;
  if (v6 <= 1)
  {
    v8 = 0;
    if (v7 <= 3)
    {
      v10 = (~(-1 << (8 * v7)) - v6 + 2) >> (8 * v7);
      if (v10 > 0xFFFE)
      {
        v9 = 4;
      }

      else
      {
        v11 = 1;
        if (v10 >= 0xFF)
        {
          v11 = 2;
        }

        if (v10)
        {
          v9 = v11;
        }

        else
        {
          v9 = 0;
        }
      }
    }

    else
    {
      v9 = 1;
    }

    v7 += v9;
  }

  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    v14 = 1;
    if (v7 <= 3)
    {
      v15 = ((v13 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      v16 = HIWORD(v15);
      if (v15 < 0x100)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v15 >= 2)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      if (v16)
      {
        v14 = 4;
      }

      else
      {
        v14 = v18;
      }
    }

    if (v8 >= a2)
    {
LABEL_29:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_41;
        }

        *(result + v7) = 0;
      }

      else if (v14)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_41;
      }

      if (!a2)
      {
        return result;
      }

LABEL_41:
      v24 = *(v5 + 56);

      return v24();
    }
  }

  else
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_29;
    }
  }

  v19 = ~v8 + a2;
  if (v7 >= 4)
  {
    v20 = result;
    bzero(result, v7);
    result = v20;
    *v20 = v19;
    v21 = 1;
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v21 = (v19 >> (8 * v7)) + 1;
  if (!v7)
  {
LABEL_47:
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v22 = v19 & ~(-1 << (8 * v7));
  v23 = result;
  bzero(result, v7);
  result = v23;
  if (v7 == 3)
  {
    *v23 = v22;
    *(v23 + 2) = BYTE2(v22);
    goto LABEL_47;
  }

  if (v7 == 2)
  {
    *v23 = v22;
    if (v14 > 1)
    {
LABEL_51:
      if (v14 == 2)
      {
        *(result + v7) = v21;
      }

      else
      {
        *(result + v7) = v21;
      }

      return result;
    }
  }

  else
  {
    *v23 = v19;
    if (v14 > 1)
    {
      goto LABEL_51;
    }
  }

LABEL_48:
  if (v14)
  {
    *(result + v7) = v21;
  }

  return result;
}

uint64_t specialized MLS.ResendApplicationMessageResult.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x73736563637573 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7466417972746572 && a2 == 0xEF79616C65447265 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000013 && 0x80000002651E9B10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x746552746F4E6F64 && a2 == 0xEA00000000007972)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

void MLS.GroupVersion.nextVersion.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = __CFADD__(v2, 1);
  v4 = v2 + 1;
  if (v3)
  {
    __break(1u);
  }

  else
  {
    v5 = *(v1 + 8);
    *a1 = v5;
    *(a1 + 8) = v5;
    *(a1 + 16) = v4;
  }
}

double MLS.GroupCreationContext.init(identifier:clientContext:metricCollector:groupClientContextBlob:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v30 = a5;
  v31 = a6;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a4;
  if (!a2)
  {
    UUID.init()();
    a1 = UUID.uuidString.getter();
    a2 = v22;
    (*(v17 + 8))(v20, v16);
  }

  *a9 = a1;
  *(a9 + 1) = a2;
  v23 = type metadata accessor for MLS.GroupCreationContext(0, a7, a8, v18);
  v24 = v23[9];
  v25 = type metadata accessor for Optional();
  v26 = *(v25 - 8);
  (*(v26 + 16))(&a9[v24], a3, v25);
  if (!v21)
  {
    v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  (*(v26 + 8))(a3, v25);
  *&a9[v23[10]] = v21;
  v27 = &a9[v23[11]];
  v28 = v31;
  *v27 = v30;
  v27[1] = v28;
  result = 0.0;
  *&a9[v23[12]] = xmmword_2651B5F50;
  return result;
}

void MLS.GroupCreationContext.dataContext.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v24 - v8;
  v10 = *(v2 + 1);
  v25 = *v2;
  (*(v7 + 16))(&v24 - v8, &v2[*(a1 + 36)], v6);
  v11 = *(v5 - 8);
  if ((*(v11 + 48))(v9, 1, v5) == 1)
  {
    v12 = *(v7 + 8);

    v12(v9, v6);
    v13 = 0;
    v14 = 0xF000000000000000;
  }

  else
  {
    v24 = v2;
    v15 = *(a1 + 24);

    v16 = v15;
    v17 = v26;
    v18 = MLS.ClientContext.dataRepresentation.getter(v5, v16);
    if (v17)
    {

      (*(v11 + 8))(v9, v5);
      return;
    }

    v13 = v18;
    v14 = v19;
    v26 = 0;
    (*(v11 + 8))(v9, v5);
    v2 = v24;
  }

  v20 = *(a1 + 44);
  v21 = *&v2[*(a1 + 40)];
  v23 = *&v2[v20];
  v22 = *&v2[v20 + 8];
  *a2 = v25;
  *(a2 + 8) = v10;
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;
  *(a2 + 32) = v21;
  *(a2 + 40) = v23;
  *(a2 + 48) = v22;
  *(a2 + 56) = xmmword_2651B5F50;

  outlined copy of Data?(v23, v22);
}

double MLS.GroupCreationContext.init(identifier:clientContext:metricCollector:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a4;
  if (!a2)
  {
    UUID.init()();
    a1 = UUID.uuidString.getter();
    a2 = v20;
    (*(v15 + 8))(v18, v14);
  }

  *a7 = a1;
  *(a7 + 1) = a2;
  v21 = type metadata accessor for MLS.GroupCreationContext(0, a5, a6, v16);
  v22 = v21[9];
  v23 = type metadata accessor for Optional();
  v24 = *(v23 - 8);
  (*(v24 + 16))(&a7[v22], a3, v23);
  if (!v19)
  {
    v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  (*(v24 + 8))(a3, v23);
  *&a7[v21[10]] = v19;
  result = 0.0;
  *&a7[v21[11]] = xmmword_2651B5F50;
  *&a7[v21[12]] = xmmword_2651B5F50;
  return result;
}

uint64_t MLS.GroupDeletionContext.dataContext.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v21 - v8;
  v10 = *(v2 + 1);
  v22 = *v2;
  (*(v7 + 16))(&v21 - v8, &v2[*(a1 + 36)], v6);
  v11 = *(v5 - 8);
  if ((*(v11 + 48))(v9, 1, v5) == 1)
  {
    v12 = *(v7 + 8);

    result = v12(v9, v6);
    v14 = 0;
    v15 = 0xF000000000000000;
  }

  else
  {
    v16 = *(a1 + 24);

    v17 = v16;
    v18 = v23;
    v19 = MLS.ClientContext.dataRepresentation.getter(v5, v17);
    if (v18)
    {

      return (*(v11 + 8))(v9, v5);
    }

    v14 = v19;
    v15 = v20;
    result = (*(v11 + 8))(v9, v5);
  }

  *a2 = v22;
  a2[1] = v10;
  a2[2] = v14;
  a2[3] = v15;
  return result;
}

uint64_t MLS.GroupDeletionContext.init(identifier:clientContext:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>, uint64_t a6@<X4>)
{
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v16 = &v21 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    UUID.init()();
    a1 = UUID.uuidString.getter();
    a2 = v17;
    (*(v13 + 8))(v16, v12);
  }

  *a5 = a1;
  *(a5 + 1) = a2;
  v18 = *(type metadata accessor for MLS.GroupDeletionContext(0, a4, a6, v14) + 36);
  v19 = type metadata accessor for Optional();
  return (*(*(v19 - 8) + 32))(&a5[v18], a3, v19);
}

uint64_t MLS.GroupDeletionProcessedContext.init(dataContext:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v9 = type metadata accessor for Optional();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v16 - v11;
  v14 = *a1;
  v13 = a1[1];
  static MLS.ClientContext.decode<A>(dataRepresentation:type:)(v14, v13, a2, a3, v16 - v11, a3);
  result = outlined consume of Data?(v14, v13);
  if (!v4)
  {
    return (*(v10 + 32))(a4, v12, v9);
  }

  return result;
}

uint64_t MLS.GroupFetchContext.init(identifier:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  result = MEMORY[0x28223BE20](v6);
  v10 = &v12 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    UUID.init()();
    a1 = UUID.uuidString.getter();
    a2 = v11;
    result = (*(v7 + 8))(v10, v6);
  }

  *a3 = a1;
  a3[1] = a2;
  return result;
}

uint64_t MLS.GroupMembersContext.init(identifier:includePendingMembers:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  result = MEMORY[0x28223BE20](v8);
  v12 = &v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a2)
  {
    UUID.init()();
    a1 = UUID.uuidString.getter();
    a2 = v13;
    result = (*(v9 + 8))(v12, v8);
  }

  *a4 = a1;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3 & 1;
  return result;
}

double MLS.EncryptionContext.dataContext.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v50 = *(a1 + 16);
  v47 = type metadata accessor for Optional();
  *&v46 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v48 = &v44 - v6;
  v7 = *(a1 + 24);
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v44 - v10;
  v12 = *(v3 + 1);
  v49 = *v3;
  (*(v9 + 16))(&v44 - v10, &v3[*(a1 + 52)], v8);
  v13 = *(v7 - 8);
  if ((*(v13 + 48))(v11, 1, v7) == 1)
  {
    v14 = *(v9 + 8);
    v45 = v12;

    v14(v11, v8);
    v15 = 0;
    v44 = 0xF000000000000000;
  }

  else
  {
    v16 = *(a1 + 40);

    v17 = v16;
    v18 = v60;
    v19 = MLS.ClientContext.dataRepresentation.getter(v7, v17);
    if (v18)
    {

      (*(v13 + 8))(v11, v7);
      return result;
    }

    v15 = v19;
    v44 = v20;
    v45 = v12;
    v60 = 0;
    (*(v13 + 8))(v11, v7);
  }

  v22 = *(a1 + 60);
  v23 = &v3[*(a1 + 56)];
  v24 = *v23;
  v55 = v23[1];
  v56 = v24;
  v25 = v23[2];
  v53 = v23[3];
  v54 = v25;
  v26 = v23[4];
  v51 = v23[5];
  v52 = v26;
  v27 = v46;
  v28 = v47;
  v29 = v48;
  (*(v46 + 16))(v48, &v3[v22], v47);
  v30 = v50;
  v31 = *(v50 - 8);
  if ((*(v31 + 48))(v29, 1, v50) == 1)
  {
    outlined copy of MLS.AdditionalAuthenticatedData?(v56, v55, v54, v53, v52, v51);
    (*(v27 + 8))(v29, v28);
    v32 = 0;
    v33 = 0uLL;
    v34 = -2;
  }

  else
  {
    v35 = *(a1 + 32);
    v47 = v15;
    v36 = v30;
    *&v46 = *(v35 + 40);
    outlined copy of MLS.AdditionalAuthenticatedData?(v56, v55, v54, v53, v52, v51);
    (v46)(&v57, v30, v35);
    v46 = v57;
    v32 = v58;
    v34 = v59;
    v37 = v36;
    v15 = v47;
    (*(v31 + 8))(v29, v37);
    v33 = v46;
  }

  v38 = v45;
  v39 = &v3[*(a1 + 64)];
  v40 = *(v39 + 2);
  v42 = *&v3[*(a1 + 68)];
  LOBYTE(v57) = v39[24];
  v41 = v57;
  *a2 = v49;
  *(a2 + 8) = v38;
  v43 = v44;
  *(a2 + 16) = v15;
  *(a2 + 24) = v43;
  *(a2 + 32) = v56;
  *(a2 + 40) = v55;
  *(a2 + 48) = v54;
  *(a2 + 56) = v53;
  *(a2 + 64) = v52;
  *(a2 + 72) = v51;
  *(a2 + 80) = v33;
  *(a2 + 96) = v32;
  *(a2 + 104) = v34;
  *(a2 + 112) = *v39;
  *(a2 + 128) = v40;
  *(a2 + 136) = v41;
  *(a2 + 144) = v42;

  return result;
}

uint64_t MLS.EncryptionContext.init(identifier:clientContext:additionalAuthenticatedData:destinationMember:originalGroupVersion:metricCollector:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X5>, unint64_t *a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v53 = a8;
  v54 = a5;
  v55 = a3;
  v44 = a11;
  v45 = a12;
  v18 = type metadata accessor for UUID();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *a4;
  v47 = a4[1];
  v48 = v22;
  v23 = *(a4 + 4);
  v24 = *(a4 + 5);
  v46 = v23;
  v25 = *a6;
  v51 = a6[1];
  v52 = v25;
  v50 = a6[2];
  v49 = *(a6 + 24);
  v26 = *a7;
  if (!a2)
  {
    UUID.init()();
    a1 = UUID.uuidString.getter();
    a2 = v27;
    (*(v19 + 8))(v21, v18);
  }

  *a9 = a1;
  *(a9 + 1) = a2;
  v56[0] = v53;
  v56[1] = a10;
  v56[2] = v44;
  v56[3] = v45;
  v28 = type metadata accessor for MLS.EncryptionContext(0, v56);
  v29 = v28[13];
  v30 = type metadata accessor for Optional();
  v31 = *(v30 - 8);
  v32 = v55;
  (*(v31 + 16))(&a9[v29], v55, v30);
  v33 = &a9[v28[14]];
  v34 = v47;
  *v33 = v48;
  *(v33 + 1) = v34;
  *(v33 + 4) = v46;
  *(v33 + 5) = v24;
  v35 = v28[15];
  v36 = type metadata accessor for Optional();
  v37 = *(v36 - 8);
  v38 = &a9[v35];
  v39 = v54;
  (*(v37 + 16))(v38, v54, v36);
  v40 = &a9[v28[16]];
  v41 = v51;
  *v40 = v52;
  *(v40 + 1) = v41;
  *(v40 + 2) = v50;
  v40[24] = v49;
  if (!v26)
  {
    v26 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  (*(v37 + 8))(v39, v36);
  result = (*(v31 + 8))(v32, v30);
  *&a9[v28[17]] = v26;
  return result;
}

double MLS.GroupNameEncryptionContext.dataContext.getter@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(a1 + 24);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - v8;
  v10 = *(v2 + 1);
  v23 = *v2;
  (*(v7 + 16))(&v22 - v8, &v2[*(a1 + 52)], v6);
  v11 = *(v5 - 8);
  if ((*(v11 + 48))(v9, 1, v5) == 1)
  {
    v12 = *(v7 + 8);

    v12(v9, v6);
    v13 = 0;
    v14 = 0xF000000000000000;
  }

  else
  {
    v22 = v2;
    v15 = *(a1 + 40);

    v16 = v15;
    v17 = v24;
    v18 = MLS.ClientContext.dataRepresentation.getter(v5, v16);
    if (v17)
    {

      (*(v11 + 8))(v9, v5);
      return result;
    }

    v13 = v18;
    v14 = v19;
    v24 = 0;
    (*(v11 + 8))(v9, v5);
    v2 = v22;
  }

  v21 = *&v2[*(a1 + 56)];
  *a2 = v23;
  a2[1] = v10;
  a2[2] = v13;
  a2[3] = v14;
  a2[4] = v21;

  return result;
}

uint64_t MLS.GroupNameEncryptionContext.init(identifier:clientContext:metricCollector:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v29 = a8;
  v30 = a3;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v19 = &v29 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *a4;
  if (!a2)
  {
    UUID.init()();
    a1 = UUID.uuidString.getter();
    a2 = v21;
    (*(v17 + 8))(v19, v16);
  }

  *a9 = a1;
  a9[1] = a2;
  v31[0] = a5;
  v31[1] = a6;
  v31[2] = a7;
  v31[3] = v29;
  v22 = type metadata accessor for MLS.GroupNameEncryptionContext(0, v31);
  v23 = *(v22 + 52);
  v24 = type metadata accessor for Optional();
  v25 = *(v24 - 8);
  v26 = a9 + v23;
  v27 = v30;
  (*(v25 + 16))(v26, v30, v24);
  if (!v20)
  {
    v20 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  result = (*(v25 + 8))(v27, v24);
  *(a9 + *(v22 + 56)) = v20;
  return result;
}

void MLS.IncomingMessageContext.dataContext.getter(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  v7 = *(a1 + 16);
  v8 = type metadata accessor for Optional();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v40 - v10;
  v12 = *(v2 + 1);
  v43 = *v2;
  v47 = v12;
  (*(v9 + 16))(v11, &v2[*(a1 + 36)], v8);
  v13 = *(v7 - 8);
  if ((*(v13 + 48))(v11, 1, v7) == 1)
  {
    v42 = v3;
    v14 = *(v9 + 8);

    v14(v11, v8);
    v15 = 0;
    v16 = 0xF000000000000000;
  }

  else
  {
    v17 = v2;
    v18 = *(a1 + 24);

    v19 = MLS.ClientContext.dataRepresentation.getter(v7, v18);
    if (v4)
    {

      (*(v13 + 8))(v11, v7);
      return;
    }

    v42 = 0;
    v21 = v20;
    v22 = v19;
    (*(v13 + 8))(v11, v7);
    v16 = v21;
    v15 = v22;
    v2 = v17;
  }

  v23 = *(a1 + 44);
  v24 = &v2[*(a1 + 40)];
  v25 = *(v24 + 1);
  v45[0] = *v24;
  v45[1] = v25;
  v27 = *v24;
  v26 = *(v24 + 1);
  v46[0] = *(v24 + 2);
  *(v46 + 12) = *(v24 + 44);
  *(a2 + 76) = *(v24 + 44);
  *(a2 + 64) = *(v24 + 2);
  v28 = *&v2[v23];
  v29 = *&v2[v23 + 8];
  v30 = *&v2[v23 + 16];
  v31 = *&v2[v23 + 24];
  v33 = *&v2[v23 + 32];
  v32 = *&v2[v23 + 40];
  v34 = *(a1 + 52);
  v35 = &v2[*(a1 + 48)];
  v37 = *v35;
  v41 = v35[1];
  v36 = v41;
  v38 = *&v2[v34];
  v39 = v47;
  *a2 = v43;
  *(a2 + 8) = v39;
  *(a2 + 16) = v15;
  *(a2 + 24) = v16;
  *(a2 + 32) = v27;
  *(a2 + 48) = v26;
  *(a2 + 96) = v28;
  *(a2 + 104) = v29;
  *(a2 + 112) = v30;
  *(a2 + 120) = v31;
  *(a2 + 128) = v33;
  *(a2 + 136) = v32;
  *(a2 + 144) = v37;
  *(a2 + 152) = v36;
  *(a2 + 160) = v38;
  outlined init with copy of MLS.OutgoingEventState?(v45, v44, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
  outlined copy of MLS.AdditionalAuthenticatedData?(v28, v29, v30, v31, v33, v32);
  outlined copy of Data?(v37, v41);
}

uint64_t MLS.IncomingMessageContext.init(identifier:clientContext:expectedSignedData:expectedAdditionalAuthenticatedData:encryptedGroupNameKey:metricCollector:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, __int128 *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, unint64_t *a8@<X7>, uint64_t *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v45 = a6;
  v46 = a7;
  v47 = a3;
  v42 = a11;
  v17 = type metadata accessor for UUID();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a4[1];
  v48 = *a4;
  v49 = v22;
  v50[0] = a4[2];
  *(v50 + 12) = *(a4 + 44);
  v23 = *a5;
  v43 = a5[1];
  v44 = v23;
  v24 = *(a5 + 4);
  v25 = *(a5 + 5);
  v26 = *a8;
  if (!a2)
  {
    UUID.init()();
    a1 = UUID.uuidString.getter();
    a2 = v27;
    (*(v18 + 8))(v21, v17);
  }

  *a9 = a1;
  a9[1] = a2;
  v28 = type metadata accessor for MLS.IncomingMessageContext(0, a10, v42, v19);
  v29 = v28[9];
  v30 = type metadata accessor for Optional();
  v31 = *(v30 - 8);
  v32 = a9 + v29;
  v33 = v47;
  (*(v31 + 16))(v32, v47, v30);
  v34 = (a9 + v28[10]);
  v35 = v49;
  *v34 = v48;
  v34[1] = v35;
  v34[2] = v50[0];
  *(v34 + 44) = *(v50 + 12);
  v36 = a9 + v28[11];
  v37 = v43;
  *v36 = v44;
  *(v36 + 1) = v37;
  *(v36 + 4) = v24;
  *(v36 + 5) = v25;
  v38 = (a9 + v28[12]);
  v39 = v46;
  *v38 = v45;
  v38[1] = v39;
  if (!v26)
  {
    v26 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  result = (*(v31 + 8))(v33, v30);
  *(a9 + v28[13]) = v26;
  return result;
}

uint64_t MLS.GroupCreationProcessedContext.init(dataContext:)@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void, uint64_t, uint64_t)@<X3>, uint64_t *a5@<X4>, uint64_t *a6@<X5>, uint64_t a7@<X8>)
{
  v40 = a6;
  v30 = a5;
  v29 = a4;
  v12 = type metadata accessor for Optional();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v28 - v14;
  v16 = a1[5];
  v36 = a1[4];
  v37 = v16;
  v17 = a1[7];
  v38 = a1[6];
  v39 = v17;
  v18 = a1[1];
  v32 = *a1;
  v33 = v18;
  v19 = a1[3];
  v34 = a1[2];
  v35 = v19;
  static MLS.ClientContext.decode<A>(dataRepresentation:type:)(v32, *(&v32 + 1), a2, a3, &v28 - v14, a3);
  if (v7)
  {
    return outlined destroy of NSObject?(&v32, v30, v40);
  }

  (*(v13 + 32))(a7, v15, v12);
  v21 = v29(0, a2, a3);
  v22 = a7 + *(v21 + 36);
  v23 = v36;
  v24 = v38;
  *(v22 + 64) = v37;
  *(v22 + 80) = v24;
  v25 = v34;
  v26 = v35;
  *v22 = v33;
  *(v22 + 16) = v25;
  v27 = *(&v39 + 1);
  *(v22 + 96) = v39;
  *(v22 + 32) = v26;
  *(v22 + 48) = v23;
  outlined init with copy of MLS.Group(&v33, v31);

  result = outlined destroy of NSObject?(&v32, v30, v40);
  *(a7 + *(v21 + 40)) = v27;
  return result;
}

double MLS.IncomingFailureToDecryptContext.init(identifier:clientContext:metricCollector:signedData:expectedSignedData:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, __int128 *a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  v38 = a5;
  v39 = a6;
  v37 = a3;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v20 = &v36 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a4;
  v22 = a7[1];
  v40 = *a7;
  v41 = v22;
  v42[0] = a7[2];
  *(v42 + 12) = *(a7 + 44);
  if (!a2)
  {
    UUID.init()();
    a1 = UUID.uuidString.getter();
    a2 = v23;
    (*(v17 + 8))(v20, v16);
  }

  *a9 = a1;
  a9[1] = a2;
  v24 = type metadata accessor for MLS.IncomingFailureToDecryptContext(0, a8, a10, v18);
  v25 = v24[9];
  v26 = type metadata accessor for Optional();
  v27 = *(v26 - 8);
  v28 = a9 + v25;
  v29 = v37;
  (*(v27 + 16))(v28, v37, v26);
  v30 = (a9 + v24[13]);
  *v30 = xmmword_2651B5F50;
  v30[1] = 0u;
  v30[2] = 0u;
  if (!v21)
  {
    v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  (*(v27 + 8))(v29, v26);
  *(a9 + v24[12]) = v21;
  v31 = (a9 + v24[10]);
  v32 = v39;
  *v31 = v38;
  v31[1] = v32;
  v33 = (a9 + v24[11]);
  v34 = v41;
  *v33 = v40;
  v33[1] = v34;
  v33[2] = v42[0];
  result = *(v42 + 12);
  *(v33 + 44) = *(v42 + 12);
  return result;
}

uint64_t MLS.IncomingFailureToDecryptContext.dataContext.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = *(v2 + 1);
  v32 = *v2;
  (*(v7 + 16))(&v31 - v8, &v2[*(a1 + 36)], v6);
  v11 = *(v5 - 8);
  if ((*(v11 + 48))(v9, 1, v5) == 1)
  {
    v12 = *(v7 + 8);

    v12(v9, v6);
    v13 = 0;
    v14 = 0xF000000000000000;
  }

  else
  {
    v31 = v2;
    v15 = *(a1 + 24);

    v16 = v15;
    v17 = v36;
    v18 = MLS.ClientContext.dataRepresentation.getter(v5, v16);
    if (v17)
    {

      return (*(v11 + 8))(v9, v5);
    }

    v13 = v18;
    v14 = v19;
    v36 = 0;
    (*(v11 + 8))(v9, v5);
    v2 = v31;
  }

  v21 = *(a1 + 40);
  v22 = &v2[*(a1 + 44)];
  v23 = *(v22 + 1);
  v34[0] = *v22;
  v34[1] = v23;
  v25 = *v22;
  v24 = *(v22 + 1);
  v35[0] = *(v22 + 2);
  *(v35 + 12) = *(v22 + 44);
  *(a2 + 92) = *(v22 + 44);
  v26 = *(v22 + 2);
  *(a2 + 64) = v24;
  *(a2 + 80) = v26;
  v27 = *&v2[*(a1 + 48)];
  v28 = &v2[v21];
  v30 = *v28;
  v29 = v28[1];
  *a2 = v32;
  *(a2 + 8) = v10;
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;
  *(a2 + 32) = v30;
  *(a2 + 40) = v29;
  *(a2 + 48) = v25;
  *(a2 + 112) = v27;
  *(a2 + 120) = xmmword_2651B5F50;
  *(a2 + 136) = 0u;
  *(a2 + 152) = 0u;

  outlined copy of Data?(v30, v29);
  return outlined init with copy of MLS.OutgoingEventState?(v34, v33, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
}

double MLS.IncomingFailureToDecryptContext.init(identifier:clientContext:expectedAdditionalAuthenticatedData:metricCollector:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int128 *a4@<X3>, unint64_t *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v36 = a7;
  v37 = a3;
  v14 = type metadata accessor for UUID();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v18 = &v34 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a4;
  v34 = a4[1];
  v35 = v19;
  v20 = *(a4 + 4);
  v21 = *(a4 + 5);
  v22 = *a5;
  if (!a2)
  {
    UUID.init()();
    a1 = UUID.uuidString.getter();
    a2 = v23;
    (*(v15 + 8))(v18, v14);
  }

  *a8 = a1;
  a8[1] = a2;
  v24 = type metadata accessor for MLS.IncomingFailureToDecryptContext(0, a6, v36, v16);
  v25 = v24[9];
  v26 = type metadata accessor for Optional();
  v27 = *(v26 - 8);
  v28 = a8 + v25;
  v29 = v37;
  (*(v27 + 16))(v28, v37, v26);
  v30 = a8 + v24[13];
  v31 = v34;
  *v30 = v35;
  *(v30 + 1) = v31;
  *(v30 + 4) = v20;
  *(v30 + 5) = v21;
  if (!v22)
  {
    v22 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  (*(v27 + 8))(v29, v26);
  *(a8 + v24[12]) = v22;
  *(a8 + v24[10]) = xmmword_2651B5F50;
  v32 = a8 + v24[11];
  *v32 = 0;
  *(v32 + 1) = 0;
  *(v32 + 2) = 0xFFFFFFFF0000;
  result = 0.0;
  *(v32 + 24) = 0u;
  *(v32 + 40) = 0u;
  *(v32 + 14) = 0;
  return result;
}

double MLS.IncomingErrorMessageContext.dataContext.getter@<D0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  *a1 = *v1;
  a1[1] = v2;
  a1[2] = v3;

  return result;
}

unint64_t MLS.IncomingErrorMessageContext.init(identifier:metricCollector:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = type metadata accessor for UUID();
  v9 = *(v8 - 8);
  result = MEMORY[0x28223BE20](v8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a3;
  if (!a2)
  {
    UUID.init()();
    a1 = UUID.uuidString.getter();
    a2 = v14;
    result = (*(v9 + 8))(v12, v8);
    if (v13)
    {
      goto LABEL_3;
    }

LABEL_5:
    result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v13 = result;
    goto LABEL_3;
  }

  if (!v13)
  {
    goto LABEL_5;
  }

LABEL_3:
  *a4 = a1;
  a4[1] = a2;
  a4[2] = v13;
  return result;
}

uint64_t MLS.IncomingErrorMessageProcessedContext.init(dataContext:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = a1[2];
  (*(*(a2 - 8) + 56))(a4, 1, 1, a2);

  outlined consume of Data?(v7, v8);

  result = type metadata accessor for MLS.IncomingErrorMessageProcessedContext(0, a2, a3, v10);
  *(a4 + *(result + 36)) = v9;
  return result;
}

double MLS.GroupOperationContext.dataContext.getter@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - v8;
  v10 = *(v2 + 1);
  v23 = *v2;
  (*(v7 + 16))(&v22 - v8, &v2[*(a1 + 36)], v6);
  v11 = *(v5 - 8);
  if ((*(v11 + 48))(v9, 1, v5) == 1)
  {
    v12 = *(v7 + 8);

    v12(v9, v6);
    v13 = 0;
    v14 = 0xF000000000000000;
  }

  else
  {
    v22 = v2;
    v15 = *(a1 + 24);

    v16 = v15;
    v17 = v24;
    v18 = MLS.ClientContext.dataRepresentation.getter(v5, v16);
    if (v17)
    {

      (*(v11 + 8))(v9, v5);
      return result;
    }

    v13 = v18;
    v14 = v19;
    v24 = 0;
    (*(v11 + 8))(v9, v5);
    v2 = v22;
  }

  v21 = *&v2[*(a1 + 40)];
  *a2 = v23;
  a2[1] = v10;
  a2[2] = v13;
  a2[3] = v14;
  a2[4] = v21;

  return result;
}

{
  return MLS.SigningContext.dataContext.getter(a1, a2);
}

uint64_t MLS.GroupOperationContext.init(identifier:clientContext:metricCollector:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t (*a7)(void, uint64_t, uint64_t)@<X6>, char *a8@<X8>)
{
  v27 = a7;
  v15 = type metadata accessor for UUID();
  v16 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v18 = &v26 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = *a4;
  if (!a2)
  {
    UUID.init()();
    a1 = UUID.uuidString.getter();
    a2 = v20;
    (*(v16 + 8))(v18, v15);
  }

  *a8 = a1;
  *(a8 + 1) = a2;
  v21 = v27(0, a5, a6);
  v22 = *(v21 + 36);
  v23 = type metadata accessor for Optional();
  v24 = *(v23 - 8);
  (*(v24 + 16))(&a8[v22], a3, v23);
  if (!v19)
  {
    v19 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  result = (*(v24 + 8))(a3, v23);
  *&a8[*(v21 + 40)] = v19;
  return result;
}

uint64_t MLS.GroupOperationProcessedContext.init(dataContext:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(void, uint64_t, uint64_t)@<X3>, uint64_t a5@<X8>)
{
  v10 = type metadata accessor for Optional();
  v21 = *(v10 - 8);
  v22 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v21 - v11;
  v13 = *a1;
  v14 = a1[1];
  v15 = a1[2];
  v16 = a1[3];
  v17 = a4(0, a2, a3);
  *(a5 + *(v17 + 40)) = 0;
  v18 = v23;
  static MLS.ClientContext.decode<A>(dataRepresentation:type:)(v13, v14, a2, a3, v12, a3);
  if (v18)
  {
    outlined consume of Data?(v13, v14);
  }

  else
  {
    (*(v21 + 32))(a5, v12, v22);
    *(a5 + *(v17 + 36)) = v15;

    outlined consume of Data?(v13, v14);

    v20 = *(v17 + 40);

    *(a5 + v20) = v16;
  }

  return result;
}

uint64_t MLS.GroupVersion.init(smallEra:epoch:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = result;
  *(a3 + 8) = result;
  *(a3 + 16) = a2;
  return result;
}

uint64_t MLS.SigningInput.messageID.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t MLS.Group.identifier.getter()
{
  v1 = *v0;

  return v1;
}

void MLS.Group.version.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 24);
  v3 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 8) = v2;
  *(a1 + 16) = v3;
}

uint64_t MLS.Group.groupInfo.getter()
{
  v1 = *(v0 + 40);
  outlined copy of Data._Representation(v1, *(v0 + 48));
  return v1;
}

uint64_t MLS.Group.epochAuthenticator.getter()
{
  v1 = *(v0 + 56);
  outlined copy of Data._Representation(v1, *(v0 + 64));
  return v1;
}

uint64_t MLS.Group.ratchetTree.getter()
{
  v1 = *(v0 + 72);
  outlined copy of Data._Representation(v1, *(v0 + 80));
  return v1;
}

uint64_t MLS.Group.groupClientContextBlob.getter()
{
  v1 = *(v0 + 88);
  outlined copy of Data?(v1, *(v0 + 96));
  return v1;
}

__n128 MLS.Group.init(identifier:version:groupInfo:epochAuthenticator:ratchetTree:groupClientContextBlob:)@<Q0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, unint64_t a5@<X4>, unint64_t a6@<X5>, unint64_t a7@<X6>, unint64_t a8@<X7>, __n128 *a9@<X8>, __n128 a10, unint64_t a11)
{
  result = a10;
  v12 = *a3;
  v13 = *(a3 + 8);
  v14 = *(a3 + 16);
  a9->n128_u64[0] = a1;
  a9->n128_u64[1] = a2;
  a9[1].n128_u64[0] = v12;
  a9[1].n128_u32[2] = v13;
  a9[2].n128_u64[0] = v14;
  a9[2].n128_u64[1] = a4;
  a9[3].n128_u64[0] = a5;
  a9[3].n128_u64[1] = a6;
  a9[4].n128_u64[0] = a7;
  a9[4].n128_u64[1] = a8;
  a9[5] = a10;
  a9[6].n128_u64[0] = a11;
  return result;
}

uint64_t MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7)
{
  v7[50] = a5;
  v7[51] = a6;
  v7[48] = a3;
  v7[49] = a4;
  v7[46] = a1;
  v7[47] = a2;
  v9 = type metadata accessor for MLS.Group.GroupInfo();
  v7[52] = v9;
  v7[53] = *(v9 - 8);
  v10 = swift_task_alloc();
  v11 = *a7;
  v12 = a7[1];
  v7[54] = v10;
  v7[55] = v11;
  v7[56] = v12;

  return MEMORY[0x2822009F8](MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:), 0, 0);
}

uint64_t MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:)()
{
  v1 = *(v0 + 392);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v3 + 32);

  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v0 + 456) = v5;
  *v5 = v0;
  v5[1] = MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:);

  return v7(v2, v3);
}

{
  v1 = *(v0 + 392);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v6 = (*(v3 + 24) + **(v3 + 24));
  v4 = swift_task_alloc();
  *(v0 + 472) = v4;
  *v4 = v0;
  v4[1] = MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:);

  return v6(v2, v3);
}

{
  *(*v1 + 496) = v0;

  if (v0)
  {

    v2 = MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:);
  }

  else
  {
    v2 = MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 392);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v6 = (*(v3 + 64) + **(v3 + 64));
  v4 = swift_task_alloc();
  *(v0 + 544) = v4;
  *v4 = v0;
  v4[1] = MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:);

  return v6(v2, v3);
}

{
  v26 = *(v0 + 600);
  v27 = *(v0 + 608);
  v1 = *(v0 + 592);
  v2 = *(v0 + 560);
  v3 = *(v0 + 536);
  v22 = *(v0 + 568);
  v23 = *(v0 + 528);
  v4 = *(v0 + 504);
  v5 = *(v0 + 512);
  v6 = *(v0 + 480);
  v28 = *(v0 + 392);
  v7 = *(v0 + 376);
  v8 = *(v0 + 384);
  v25 = v7;
  v9 = *(v0 + 368);
  swift_unknownObjectRelease();
  if ((v1 & 0x100000000) != 0)
  {
    v1 = 1;
  }

  else
  {
    v1 = v1;
  }

  if (v2 >> 60 == 15)
  {
    v10 = 0xC000000000000000;
  }

  else
  {
    v10 = v2;
  }

  v24 = v10;
  if (v2 >> 60 == 15)
  {
    v11 = 0;
  }

  else
  {
    v11 = v22;
  }

  v12 = v3 >> 60 == 15;
  *(v0 + 120) = v7;
  v13 = (v0 + 120);
  if (v3 >> 60 == 15)
  {
    v3 = 0xC000000000000000;
  }

  *(v0 + 128) = v8;
  *(v0 + 136) = v1;
  *(v0 + 144) = v1;
  if (v12)
  {
    v14 = 0;
  }

  else
  {
    v14 = v23;
  }

  *(v0 + 152) = v6;
  *(v0 + 160) = v4;
  *(v0 + 168) = v5;
  *(v0 + 176) = v14;
  *(v0 + 184) = v3;
  *(v0 + 192) = v11;
  *(v0 + 200) = v10;
  *(v0 + 208) = v27;
  *(v0 + 216) = v26;
  v15 = *(v0 + 168);
  v16 = *(v0 + 184);
  v17 = *(v0 + 200);
  *(v9 + 96) = v26;
  *(v9 + 64) = v16;
  *(v9 + 80) = v17;
  *(v9 + 48) = v15;
  v18 = *v13;
  v19 = *(v0 + 152);
  *(v9 + 16) = *(v0 + 136);
  *(v9 + 32) = v19;
  *v9 = v18;
  outlined init with copy of MLS.Group(v13, v0 + 224);
  __swift_destroy_boxed_opaque_existential_1Tm(v28);
  *(v0 + 16) = v25;
  *(v0 + 24) = v8;
  *(v0 + 32) = v1;
  *(v0 + 40) = v1;
  *(v0 + 48) = v6;
  *(v0 + 56) = v4;
  *(v0 + 64) = v5;
  *(v0 + 72) = v14;
  *(v0 + 80) = v3;
  *(v0 + 88) = v11;
  *(v0 + 96) = v24;
  *(v0 + 104) = v27;
  *(v0 + 112) = v26;
  outlined destroy of MLS.Group(v0 + 16);

  v20 = *(v0 + 8);

  return v20();
}

{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(*(v0 + 392));

  v1 = *(v0 + 8);

  return v1();
}

{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm(*(v0 + 392));

  v1 = *(v0 + 8);

  return v1();
}

{
  swift_unknownObjectRelease();
  v1 = *(v0 + 536);
  v3 = *(v0 + 504);
  v2 = *(v0 + 512);
  if (v1 >> 60 == 15)
  {
    v4 = 0xC000000000000000;
  }

  else
  {
    v4 = *(v0 + 536);
  }

  if (v1 >> 60 == 15)
  {
    v5 = 0;
  }

  else
  {
    v5 = *(v0 + 528);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(*(v0 + 392));

  outlined consume of Data._Representation(v3, v2);
  outlined consume of Data._Representation(v5, v4);

  v6 = *(v0 + 8);

  return v6();
}

{
  swift_unknownObjectRelease();

  v1 = *(v0 + 560);
  v2 = *(v0 + 536);
  v4 = *(v0 + 504);
  v3 = *(v0 + 512);
  if (v1 >> 60 == 15)
  {
    v5 = 0xC000000000000000;
  }

  else
  {
    v5 = *(v0 + 560);
  }

  if (v1 >> 60 == 15)
  {
    v6 = 0;
  }

  else
  {
    v6 = *(v0 + 568);
  }

  if (v2 >> 60 == 15)
  {
    v7 = 0xC000000000000000;
  }

  else
  {
    v7 = *(v0 + 536);
  }

  if (v2 >> 60 == 15)
  {
    v8 = 0;
  }

  else
  {
    v8 = *(v0 + 528);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(*(v0 + 392));

  outlined consume of Data._Representation(v4, v3);
  outlined consume of Data._Representation(v8, v7);
  outlined consume of Data._Representation(v6, v5);

  v9 = *(v0 + 8);

  return v9();
}

uint64_t MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:)(uint64_t a1)
{
  v3 = *v2;
  v3[41] = v2;
  v3[42] = a1;
  v3[43] = v1;
  v3[58] = v1;

  if (v1)
  {

    v4 = MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:);
  }

  else
  {
    v4 = MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v4, 0, 0);
}

{
  *(*v1 + 480) = a1;

  return MEMORY[0x2822009F8](MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:), 0, 0);
}

{
  v3 = v1[53];
  v2 = v1[54];
  v4 = v1[52];
  v5 = v1[49];
  v1[63] = MLS.Group.GroupInfo.rawRepresentation.getter();
  v1[64] = v6;
  (*(v3 + 8))(v2, v4);
  v7 = v5[3];
  v8 = v5[4];
  __swift_project_boxed_opaque_existential_1(v5, v7);
  v11 = (*(v8 + 56) + **(v8 + 56));
  v9 = swift_task_alloc();
  v1[65] = v9;
  *v9 = v1;
  v9[1] = MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:);

  return v11(v7, v8);
}

void MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:)()
{
  if ((v0[60] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v1 = v0[49];
    v2 = v1[3];
    v3 = v1[4];
    __swift_project_boxed_opaque_existential_1(v1, v2);
    v6 = (*(v3 + 80) + **(v3 + 80));
    v4 = swift_task_alloc();
    v0[61] = v4;
    *v4 = v0;
    v4[1] = MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:);
    v5 = v0[54];

    v6(v5, v2, v3);
  }
}

uint64_t MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  *(v3 + 528) = a1;
  *(v3 + 536) = a2;

  return MEMORY[0x2822009F8](MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:), 0, 0);
}

{
  v6 = *v3;
  v6[69] = v2;

  if (v2)
  {

    return MEMORY[0x2822009F8](MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:), 0, 0);
  }

  else
  {
    v8 = v6[55];
    v7 = v6[56];
    v16 = v6[51];
    v6[70] = a2;
    v6[71] = a1;
    ObjectType = swift_getObjectType();
    v6[44] = v8;
    v6[45] = v7;
    v15 = (*(v16 + 64) + **(v16 + 64));
    v10 = swift_task_alloc();
    v6[72] = v10;
    *v10 = v6;
    v10[1] = MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:);
    v11 = v6[51];
    v12 = v6[48];
    v13 = v6[47];

    return v15(v13, v12, v6 + 44, ObjectType, v11);
  }
}

{
  v6 = *v3;
  *(*v3 + 584) = v2;

  if (v2)
  {

    v7 = MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:);
  }

  else
  {
    v6[74] = v6[42];
    v6[75] = a2;
    v6[76] = a1;

    v7 = MLS.Group.init(identifier:swiftMLSGroup:persister:clientIdentifier:);
  }

  return MEMORY[0x2822009F8](v7, 0, 0);
}

uint64_t MLS.Group.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _StringGuts.grow(_:)(49);
  MEMORY[0x2667545A0](0xD000000000000012, 0x80000002651E9B30);
  MEMORY[0x2667545A0](v1, v2);
  MEMORY[0x2667545A0](0x6F6973726576202CLL, 0xEB00000000203A6ELL);
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  v8 = v3;
  MEMORY[0x2667545A0](46, 0xE100000000000000);
  v4 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2667545A0](v4);

  MEMORY[0x2667545A0](v7, v8);

  MEMORY[0x2667545A0](0x4970756F7267202CLL, 0xED0000203A6F666ELL);
  v5 = Data.description.getter();
  MEMORY[0x2667545A0](v5);

  MEMORY[0x2667545A0](41, 0xE100000000000000);
  return 0;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance MLS.Group.CodingKeys()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0xD000000000000012;
  v4 = 0x5474656863746172;
  if (v1 != 4)
  {
    v4 = 0xD000000000000016;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6E6F6973726576;
  if (v1 != 1)
  {
    v5 = 0x666E4970756F7267;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.Group.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized MLS.Group.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.Group.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.Group.CodingKeys and conformance MLS.Group.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.Group.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.Group.CodingKeys and conformance MLS.Group.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.Group.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO5GroupV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO5GroupV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = *(v1 + 16);
  v34 = *(v1 + 24);
  v6 = *(v1 + 40);
  v28 = *(v1 + 32);
  v29 = v5;
  v27 = v6;
  v7 = *(v1 + 48);
  v25 = *(v1 + 56);
  v26 = v7;
  v8 = *(v1 + 64);
  v9 = *(v1 + 72);
  v23 = *(v1 + 80);
  v24 = v8;
  v10 = *(v1 + 96);
  v21 = *(v1 + 88);
  v22 = v9;
  v11 = a1[3];
  v12 = a1;
  v14 = &v20 - v13;
  __swift_project_boxed_opaque_existential_1(v12, v11);
  lazy protocol witness table accessor for type MLS.Group.CodingKeys and conformance MLS.Group.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v31) = 0;
  v15 = v30;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v15)
  {
    v17 = v26;
    v16 = v27;
    v18 = v25;
    v30 = v10;
    v31 = v29;
    LODWORD(v32) = v34;
    v33 = v28;
    v35 = 1;
    lazy protocol witness table accessor for type MLS.GroupVersion and conformance MLS.GroupVersion();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v31 = v16;
    v32 = v17;
    v35 = 2;
    outlined copy of Data._Representation(v16, v17);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v31, v32);
    v31 = v18;
    v32 = v24;
    v35 = 3;
    outlined copy of Data._Representation(v18, v24);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v31, v32);
    v31 = v22;
    v32 = v23;
    v35 = 4;
    outlined copy of Data._Representation(v22, v23);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v31, v32);
    v31 = v21;
    v32 = v30;
    v35 = 5;
    outlined copy of Data?(v21, v30);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v31, v32);
  }

  return (*(v4 + 8))(v14, v3);
}

void MLS.Group.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 96);
  String.hash(into:)();
  MEMORY[0x266754E10](v2);
  Hasher._combine(_:)(v3);
  MEMORY[0x266754E10](v4);
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  if (v5 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);

    Data.hash(into:)();
  }
}

Swift::Int MLS.Group.hashValue.getter()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = *(v0 + 96);
  Hasher.init(_seed:)();
  String.hash(into:)();
  MEMORY[0x266754E10](v1);
  Hasher._combine(_:)(v2);
  MEMORY[0x266754E10](v3);
  Data.hash(into:)();
  Data.hash(into:)();
  Data.hash(into:)();
  if (v4 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t MLS.Group.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO5GroupV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO5GroupV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v22 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.Group.CodingKeys and conformance MLS.Group.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v40) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  LOBYTE(v33) = 1;
  lazy protocol witness table accessor for type MLS.GroupVersion and conformance MLS.GroupVersion();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v31 = v40;
  v55 = v41;
  v30 = v42;
  LOBYTE(v33) = 2;
  v32 = lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v28 = v40;
  v29 = v41;
  LOBYTE(v33) = 3;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v26 = v40;
  v27 = v41;
  LOBYTE(v33) = 4;
  v25 = 0;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v23 = v40;
  v24 = v41;
  v56 = 5;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v12 = v54;
  v32 = v53;
  *&v33 = v9;
  *(&v33 + 1) = v11;
  *&v34 = v31;
  DWORD2(v34) = v55;
  *&v35 = v30;
  v13 = v28;
  *(&v35 + 1) = v28;
  v14 = v29;
  *&v36 = v29;
  v15 = v26;
  *(&v36 + 1) = v26;
  *&v37 = v27;
  *(&v37 + 1) = v23;
  *&v38 = v24;
  *(&v38 + 1) = v53;
  v39 = v54;
  v16 = v34;
  *a2 = v33;
  *(a2 + 16) = v16;
  v17 = v35;
  v18 = v36;
  v19 = v37;
  v20 = v38;
  *(a2 + 96) = v12;
  *(a2 + 64) = v19;
  *(a2 + 80) = v20;
  *(a2 + 32) = v17;
  *(a2 + 48) = v18;
  outlined init with copy of MLS.Group(&v33, &v40);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v40 = v9;
  v41 = v11;
  v42 = v31;
  v43 = v55;
  v44 = v30;
  v45 = v13;
  v46 = v14;
  v47 = v15;
  v48 = v27;
  v49 = v23;
  v50 = v24;
  v51 = v32;
  v52 = v12;
  return outlined destroy of MLS.Group(&v40);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MLS.Group()
{
  Hasher.init(_seed:)();
  MLS.Group.hash(into:)(v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLS.Group(uint64_t a1)
{
  Hasher.init(_seed:)();
  MLS.Group.hash(into:)(v2);
  return Hasher._finalize()();
}

uint64_t MLS.GroupDetails.groupClientContextBlob.getter()
{
  v1 = *v0;
  outlined copy of Data?(*v0, *(v0 + 8));
  return v1;
}

uint64_t MLS.GroupDetails.init(groupClientContextBlob:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t MLS.GroupDetails.description.getter()
{
  v1 = v0[1];
  if (v1 >> 60 == 15)
  {
    v2 = 0;
    v3 = 0xE000000000000000;
  }

  else
  {
    v4 = *v0;
    v11[0] = 0;
    v11[1] = 0xE000000000000000;
    outlined copy of Data._Representation(*v0, v1);
    _StringGuts.grow(_:)(26);

    isa = Data._bridgeToObjectiveC()().super.isa;
    v6 = [(objc_class *)isa description];

    v7 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v9 = v8;

    MEMORY[0x2667545A0](v7, v9);

    outlined consume of Data?(v4, v1);
    v2 = 0xD000000000000018;
    v3 = 0x80000002651E9B50;
  }

  _StringGuts.grow(_:)(16);

  strcpy(v11, "GroupDetails(");
  MEMORY[0x2667545A0](v2, v3);

  MEMORY[0x2667545A0](41, 0xE100000000000000);
  return v11[0];
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.GroupDetails.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.GroupDetails.CodingKeys and conformance MLS.GroupDetails.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.GroupDetails.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.GroupDetails.CodingKeys and conformance MLS.GroupDetails.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.GroupDetails.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12GroupDetailsV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12GroupDetailsV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  v7 = *v1;
  v8 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  outlined copy of Data?(v7, v8);
  lazy protocol witness table accessor for type MLS.GroupDetails.CodingKeys and conformance MLS.GroupDetails.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = v7;
  v11 = v8;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  outlined consume of Data?(v10, v11);
  return (*(v4 + 8))(v6, v3);
}

void MLS.GroupDetails.hash(into:)(uint64_t a1)
{
  if (*(v1 + 8) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);

    Data.hash(into:)();
  }
}

Swift::Int MLS.GroupDetails.hashValue.getter()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v1 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  return Hasher._finalize()();
}

uint64_t MLS.GroupDetails.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12GroupDetailsV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12GroupDetailsV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.GroupDetails.CodingKeys and conformance MLS.GroupDetails.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MLS.GroupDetails()
{
  v1 = *(v0 + 8);
  Hasher.init(_seed:)();
  if (v1 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance MLS.GroupDetails(uint64_t a1)
{
  if (*(v1 + 8) >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);

    Data.hash(into:)();
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLS.GroupDetails(uint64_t a1)
{
  v2 = *(v1 + 8);
  Hasher.init(_seed:)();
  if (v2 >> 60 == 15)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    Hasher._combine(_:)(1u);
    Data.hash(into:)();
  }

  return Hasher._finalize()();
}

BOOL static MLS.GroupVersion.< infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = v2 == v3;
  v5 = v2 < v3;
  if (v4)
  {
    return *(a1 + 16) < *(a2 + 16);
  }

  else
  {
    return v5;
  }
}

unint64_t MLS.GroupVersion.init(era:epoch:)@<X0>(unint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  if (HIDWORD(result))
  {
    __break(1u);
  }

  else
  {
    *a3 = result;
    *(a3 + 8) = result;
    *(a3 + 16) = a2;
  }

  return result;
}

void MLS.GroupVersion.nextEra.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 8);
  v3 = __CFADD__(v2, 1);
  v4 = (v2 + 1);
  if (v3)
  {
    __break(1u);
  }

  else
  {
    *a1 = v4;
    *(a1 + 8) = v4;
    *(a1 + 16) = 1;
  }
}

uint64_t MLS.GroupVersion.description.getter()
{
  v2 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2667545A0](46, 0xE100000000000000);
  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2667545A0](v0);

  return v2;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance MLS.GroupVersion.CodingKeys()
{
  v1 = 0x6172456C6C616D73;
  if (*v0 != 1)
  {
    v1 = 0x68636F7065;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 6386277;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.GroupVersion.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized MLS.GroupVersion.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.GroupVersion.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.GroupVersion.CodingKeys and conformance MLS.GroupVersion.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.GroupVersion.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.GroupVersion.CodingKeys and conformance MLS.GroupVersion.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.GroupVersion.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12GroupVersionV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12GroupVersionV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v9 - v6;
  v10 = *(v1 + 8);
  v9[1] = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.GroupVersion.CodingKeys and conformance MLS.GroupVersion.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v2)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v12 = 1;
  KeyedEncodingContainer.encode(_:forKey:)();
  v11 = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t MLS.GroupVersion.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  MEMORY[0x266754E10](*v0);
  Hasher._combine(_:)(v1);
  return MEMORY[0x266754E10](v2);
}

Swift::Int MLS.GroupVersion.hashValue.getter()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = v0[2];
  Hasher.init(_seed:)();
  MEMORY[0x266754E10](v1);
  Hasher._combine(_:)(v2);
  MEMORY[0x266754E10](v3);
  return Hasher._finalize()();
}

uint64_t MLS.GroupVersion.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12GroupVersionV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12GroupVersionV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.GroupVersion.CodingKeys and conformance MLS.GroupVersion.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v16 = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v15 = 1;
    v13 = KeyedDecodingContainer.decode(_:forKey:)();
    v14 = 2;
    v11 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    *(a2 + 8) = v13;
    *(a2 + 16) = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MLS.GroupVersion()
{
  v1 = *v0;
  v2 = *(v0 + 2);
  v3 = v0[2];
  Hasher.init(_seed:)();
  MEMORY[0x266754E10](v1);
  Hasher._combine(_:)(v2);
  MEMORY[0x266754E10](v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MLS.GroupVersion()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  MEMORY[0x266754E10](*v0);
  Hasher._combine(_:)(v1);
  return MEMORY[0x266754E10](v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLS.GroupVersion(uint64_t a1)
{
  v2 = *v1;
  v3 = *(v1 + 2);
  v4 = v1[2];
  Hasher.init(_seed:)();
  MEMORY[0x266754E10](v2);
  Hasher._combine(_:)(v3);
  MEMORY[0x266754E10](v4);
  return Hasher._finalize()();
}

BOOL protocol witness for static Comparable.< infix(_:_:) in conformance MLS.GroupVersion(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = v2 == v3;
  v5 = v2 < v3;
  if (v4)
  {
    return *(a1 + 16) < *(a2 + 16);
  }

  else
  {
    return v5;
  }
}

BOOL protocol witness for static Comparable.<= infix(_:_:) in conformance MLS.GroupVersion(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = v3 == v2;
  v5 = v3 >= v2;
  if (v4)
  {
    return *(a2 + 16) >= *(a1 + 16);
  }

  else
  {
    return v5;
  }
}

BOOL protocol witness for static Comparable.>= infix(_:_:) in conformance MLS.GroupVersion(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = v2 == v3;
  v5 = v2 >= v3;
  if (v4)
  {
    return *(a1 + 16) >= *(a2 + 16);
  }

  else
  {
    return v5;
  }
}

BOOL protocol witness for static Comparable.> infix(_:_:) in conformance MLS.GroupVersion(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 8);
  v3 = *(a2 + 8);
  v4 = v3 == v2;
  v5 = v3 < v2;
  if (v4)
  {
    return *(a2 + 16) < *(a1 + 16);
  }

  else
  {
    return v5;
  }
}

uint64_t MLS.GroupCreationContext_v2.init(identifier:clientContext:groupClientContextBlob:metricCollector:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, unint64_t *a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>)
{
  v30 = a4;
  v31 = a5;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v20 = &v30 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a6;
  if (!a2)
  {
    UUID.init()();
    a1 = UUID.uuidString.getter();
    a2 = v22;
    (*(v17 + 8))(v20, v16);
  }

  *a9 = a1;
  *(a9 + 1) = a2;
  v23 = type metadata accessor for MLS.GroupCreationContext_v2(0, a7, a8, v18);
  v24 = v23[9];
  v25 = type metadata accessor for Optional();
  v26 = *(v25 - 8);
  (*(v26 + 16))(&a9[v24], a3, v25);
  v27 = &a9[v23[11]];
  v28 = v31;
  *v27 = v30;
  v27[1] = v28;
  if (!v21)
  {
    v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  result = (*(v26 + 8))(a3, v25);
  *&a9[v23[10]] = v21;
  return result;
}

double MLS.GroupCreationContext_v2.dataContext.getter@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v25 - v8;
  v10 = *(v2 + 1);
  v26 = *v2;
  (*(v7 + 16))(&v25 - v8, &v2[*(a1 + 36)], v6);
  v11 = *(v5 - 8);
  if ((*(v11 + 48))(v9, 1, v5) == 1)
  {
    v12 = *(v7 + 8);

    v12(v9, v6);
    v13 = 0;
    v14 = 0xF000000000000000;
  }

  else
  {
    v25 = v2;
    v15 = *(a1 + 24);

    v16 = v15;
    v17 = v27;
    v18 = MLS.ClientContext.dataRepresentation.getter(v5, v16);
    if (v17)
    {

      (*(v11 + 8))(v9, v5);
      return result;
    }

    v13 = v18;
    v14 = v19;
    v27 = 0;
    (*(v11 + 8))(v9, v5);
    v2 = v25;
  }

  v21 = &v2[*(a1 + 44)];
  v22 = *v21;
  v23 = v21[1];
  v24 = *&v2[*(a1 + 40)];
  *a2 = v26;
  a2[1] = v10;
  a2[2] = v13;
  a2[3] = v14;
  a2[4] = v24;
  a2[5] = v22;
  a2[6] = v23;
  outlined copy of Data?(v22, v23);

  return result;
}

uint64_t MLS.GroupCreationContext_v2.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F4363697274656DLL && a2 == 0xEF726F7463656C6CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002651E96B0 == a2)
  {

    return 3;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

unint64_t MLS.GroupCreationContext_v2.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x696669746E656469;
  v2 = 0x6F4363697274656DLL;
  if (a1 != 2)
  {
    v2 = 0xD000000000000016;
  }

  if (a1)
  {
    v1 = 0x6F43746E65696C63;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.GroupCreationContext_v2<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MLS.GroupCreationContext_v2.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.GroupCreationContext_v2<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.GroupCreationContext_v2<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.GroupCreationContext_v2.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a2;
  v5 = v4;
  v7 = *(a2 + 16);
  v19[0] = *(a2 + 24);
  v19[1] = v7;
  type metadata accessor for MLS.GroupCreationContext_v2.CodingKeys(255, v7, v19[0], a4);
  swift_getWitnessTable();
  v8 = type metadata accessor for KeyedEncodingContainer();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v12 = v8;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v22) = 0;
  v13 = v21;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v13)
  {
    return (*(v9 + 8))(v11, v8);
  }

  v15 = v9;
  v16 = v20;
  LOBYTE(v22) = 1;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v22 = *(v5 + *(v16 + 40));
  v24 = 2;
  lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();

  KeyedEncodingContainer.encode<A>(_:forKey:)();

  v17 = (v5 + *(v16 + 44));
  v18 = v17[1];
  v22 = *v17;
  v23 = v18;
  v24 = 3;
  outlined copy of Data?(v22, v18);
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  outlined consume of Data?(v22, v23);
  return (*(v15 + 8))(v11, v12);
}

uint64_t MLS.GroupCreationContext_v2.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v25 = a4;
  v28 = type metadata accessor for Optional();
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v27 = &v24 - v7;
  type metadata accessor for MLS.GroupCreationContext_v2.CodingKeys(255, a2, a3, v8);
  swift_getWitnessTable();
  v9 = type metadata accessor for KeyedDecodingContainer();
  v31 = *(v9 - 8);
  v32 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - v10;
  v29 = a3;
  v13 = type metadata accessor for MLS.GroupCreationContext_v2(0, a2, a3, v12);
  v24 = *(v13 - 1);
  MEMORY[0x28223BE20](v13);
  v15 = (&v24 - v14);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v30 = v11;
  v16 = v33;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v17 = v27;
  v18 = a1;
  v19 = v28;
  LOBYTE(v34) = 0;
  v20 = v30;
  *v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v15[1] = v21;
  v33 = v21;
  LOBYTE(v34) = 1;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v26 + 32))(v15 + v13[9], v17, v19);
  v35 = 2;
  lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v15 + v13[10]) = v34;
  v35 = 3;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v31 + 8))(v20, v32);
  *(v15 + v13[11]) = v34;
  v22 = v24;
  (*(v24 + 16))(v25, v15, v13);
  __swift_destroy_boxed_opaque_existential_1Tm(v18);
  return (*(v22 + 8))(v15, v13);
}

uint64_t MLS.GroupCreationContext_v2.groupClientContextBlob.getter(uint64_t a1)
{
  v2 = v1 + *(a1 + 44);
  v3 = *v2;
  outlined copy of Data?(*v2, *(v2 + 8));
  return v3;
}

uint64_t MLS.GroupCreationContext.init(identifier:clientContext:metricCollector:groupClientContextBlob:ratchetTree:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v34 = a7;
  v35 = a8;
  v32 = a5;
  v33 = a6;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v20 = &v32 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *a4;
  if (!a2)
  {
    UUID.init()();
    a1 = UUID.uuidString.getter();
    a2 = v22;
    (*(v17 + 8))(v20, v16);
  }

  *a9 = a1;
  *(a9 + 1) = a2;
  v23 = type metadata accessor for MLS.GroupCreationContext(0, a10, a11, v18);
  v24 = v23[9];
  v25 = type metadata accessor for Optional();
  v26 = *(v25 - 8);
  (*(v26 + 16))(&a9[v24], a3, v25);
  if (!v21)
  {
    v21 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  result = (*(v26 + 8))(a3, v25);
  *&a9[v23[10]] = v21;
  v28 = &a9[v23[11]];
  v29 = v33;
  *v28 = v32;
  v28[1] = v29;
  v30 = &a9[v23[12]];
  v31 = v35;
  *v30 = v34;
  v30[1] = v31;
  return result;
}

uint64_t MLS.GroupCreationContext_v2.description.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - v6;
  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(54);
  MEMORY[0x2667545A0](0xD000000000000021, 0x80000002651E8C70);
  MEMORY[0x2667545A0](*v1, *(v1 + 1));
  MEMORY[0x2667545A0](0xD000000000000011, 0x80000002651E8A90);
  (*(v5 + 16))(v7, &v1[*(a1 + 36)], v4);
  v8 = (*(*(v3 - 8) + 48))(v7, 1, v3);
  (*(v5 + 8))(v7, v4);
  if (v8 == 1)
  {
    v9 = 20302;
  }

  else
  {
    v9 = 5457241;
  }

  if (v8 == 1)
  {
    v10 = 0xE200000000000000;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  MEMORY[0x2667545A0](v9, v10);

  return v12[0];
}

uint64_t MLS.GroupCreationContext.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F4363697274656DLL && a2 == 0xEF726F7463656C6CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000016 && 0x80000002651E96B0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x5474656863746172 && a2 == 0xEB00000000656572)
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

uint64_t MLS.GroupCreationContext.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x696669746E656469;
  v2 = 0x6F4363697274656DLL;
  v3 = 0xD000000000000016;
  if (a1 != 3)
  {
    v3 = 0x5474656863746172;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x6F43746E65696C63;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.GroupCreationContext<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MLS.GroupCreationContext.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.GroupCreationContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.GroupCreationContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.GroupCreationContext.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v20 = a2;
  v5 = v4;
  v7 = *(a2 + 16);
  v19[0] = *(a2 + 24);
  v19[1] = v7;
  type metadata accessor for MLS.GroupCreationContext.CodingKeys(255, v7, v19[0], a4);
  swift_getWitnessTable();
  v8 = type metadata accessor for KeyedEncodingContainer();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = v19 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v22) = 0;
  v12 = v21;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v12)
  {
    v13 = v20;
    LOBYTE(v22) = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v22 = *(v5 + v13[10]);
    v24 = 2;
    lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();

    KeyedEncodingContainer.encode<A>(_:forKey:)();

    v14 = (v5 + v13[11]);
    v15 = v14[1];
    v22 = *v14;
    v23 = v15;
    v24 = 3;
    outlined copy of Data?(v22, v15);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v22, v23);
    v16 = (v5 + v13[12]);
    v17 = v16[1];
    v22 = *v16;
    v23 = v17;
    v24 = 4;
    outlined copy of Data?(v22, v17);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v22, v23);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t MLS.GroupCreationContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v26 = a4;
  v31 = type metadata accessor for Optional();
  v27 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v29 = &v23 - v7;
  type metadata accessor for MLS.GroupCreationContext.CodingKeys(255, a2, a3, v8);
  swift_getWitnessTable();
  v33 = type metadata accessor for KeyedDecodingContainer();
  v28 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v10 = &v23 - v9;
  v30 = a3;
  v12 = type metadata accessor for MLS.GroupCreationContext(0, a2, a3, v11);
  v25 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = (&v23 - v13);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v32 = v10;
  v15 = v34;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v16 = v29;
  v17 = v28;
  v24 = v12;
  v34 = a1;
  v18 = v31;
  LOBYTE(v35) = 0;
  *v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v14[1] = v19;
  v23 = v19;
  LOBYTE(v35) = 1;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v20 = v24;
  (*(v27 + 32))(v14 + v24[9], v16, v18);
  v36 = 2;
  lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  *(v14 + v20[10]) = v35;
  v36 = 3;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(v14 + v20[11]) = v35;
  v36 = 4;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v17 + 8))(v32, v33);
  *(v14 + v20[12]) = v35;
  v21 = v25;
  (*(v25 + 16))(v26, v14, v20);
  __swift_destroy_boxed_opaque_existential_1Tm(v34);
  return (*(v21 + 8))(v14, v20);
}

uint64_t sub_265024084(char a1)
{
  if (!a1)
  {
    return 0x6F43746E65696C63;
  }

  if (a1 == 1)
  {
    return 0x70756F7267;
  }

  return 0x6F4363697274656DLL;
}

uint64_t _s15SecureMessaging3MLSO31IncomingMessageProcessedContextV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOy_x_Gs0H3KeyAAsAJP11stringValuexSgSS_tcfCTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a4@<X8>)
{
  result = MLS.GroupCreationProcessedContext.CodingKeys.init(stringValue:)(a1, a2);
  *a4 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.GroupCreationProcessedContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.GroupCreationProcessedContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.GroupFetchContext.identifier.getter()
{
  v1 = *v0;

  return v1;
}

unint64_t MLS.GroupFetchContext.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _StringGuts.grow(_:)(33);

  MEMORY[0x2667545A0](v1, v2);
  MEMORY[0x2667545A0](41, 0xE100000000000000);
  return 0xD00000000000001ELL;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.GroupFetchContext.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.GroupFetchContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.GroupFetchContext.CodingKeys and conformance MLS.GroupFetchContext.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.GroupFetchContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.GroupFetchContext.CodingKeys and conformance MLS.GroupFetchContext.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.GroupFetchContext.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO17GroupFetchContextV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO17GroupFetchContextV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.GroupFetchContext.CodingKeys and conformance MLS.GroupFetchContext.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t MLS.GroupFetchContext.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO17GroupFetchContextV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO17GroupFetchContextV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.GroupFetchContext.CodingKeys and conformance MLS.GroupFetchContext.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v11 = v10;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v11;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance MLS.GroupFetchContext(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO17GroupFetchContextV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO17GroupFetchContextV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.GroupFetchContext.CodingKeys and conformance MLS.GroupFetchContext.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.GroupFetchContext()
{
  v1 = *v0;
  v2 = v0[1];
  _StringGuts.grow(_:)(33);

  MEMORY[0x2667545A0](v1, v2);
  MEMORY[0x2667545A0](41, 0xE100000000000000);
  return 0xD00000000000001ELL;
}

uint64_t MLS.GroupMembersContext.identifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t MLS.GroupMembersContext.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = *(v0 + 16);
  _StringGuts.grow(_:)(62);
  MEMORY[0x2667545A0](0xD000000000000020, 0x80000002651E89D0);
  MEMORY[0x2667545A0](v1, v2);
  MEMORY[0x2667545A0](0xD000000000000019, 0x80000002651E8A00);
  if (v3)
  {
    v4 = 1702195828;
  }

  else
  {
    v4 = 0x65736C6166;
  }

  if (v3)
  {
    v5 = 0xE400000000000000;
  }

  else
  {
    v5 = 0xE500000000000000;
  }

  MEMORY[0x2667545A0](v4, v5);

  MEMORY[0x2667545A0](41, 0xE100000000000000);
  return 0;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance MLS.GroupMembersContext.CodingKeys()
{
  if (*v0)
  {
    return 0xD000000000000015;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.GroupMembersContext.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002651E9B70 == a2)
  {

    v8 = 1;
  }

  else
  {
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.GroupMembersContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.GroupMembersContext.CodingKeys and conformance MLS.GroupMembersContext.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.GroupMembersContext.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.GroupMembersContext.CodingKeys and conformance MLS.GroupMembersContext.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.GroupMembersContext.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO19GroupMembersContextV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO19GroupMembersContextV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v10 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.GroupMembersContext.CodingKeys and conformance MLS.GroupMembersContext.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  v7 = v9[1];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v7)
  {
    v11 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t MLS.GroupMembersContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO19GroupMembersContextV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO19GroupMembersContextV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.GroupMembersContext.CodingKeys and conformance MLS.GroupMembersContext.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v17 = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  v12 = v9;
  v16 = 1;
  v13 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  *a2 = v12;
  *(a2 + 8) = v11;
  *(a2 + 16) = v13 & 1;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t MLS.GroupDeletionContext.description.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - v6;
  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(54);
  MEMORY[0x2667545A0](0xD000000000000021, 0x80000002651E8C40);
  MEMORY[0x2667545A0](*v1, *(v1 + 1));
  MEMORY[0x2667545A0](0xD000000000000011, 0x80000002651E8A90);
  (*(v5 + 16))(v7, &v1[*(a1 + 36)], v4);
  v8 = (*(*(v3 - 8) + 48))(v7, 1, v3);
  (*(v5 + 8))(v7, v4);
  if (v8 == 1)
  {
    v9 = 20302;
  }

  else
  {
    v9 = 5457241;
  }

  if (v8 == 1)
  {
    v10 = 0xE200000000000000;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  MEMORY[0x2667545A0](v9, v10);

  return v12[0];
}

uint64_t MLS.GroupDeletionContext.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL)
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

uint64_t MLS.GroupDeletionContext.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x6F43746E65696C63;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.GroupDeletionContext<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MLS.GroupDeletionContext.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance MLS.GroupDeletionContext<A>.CodingKeys@<X0>(_BYTE *a1@<X8>)
{
  result = specialized MLS.OutgoingErrorOccurred.Trigger.UnhealableIncomingErrorCodingKeys.init(intValue:)();
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.GroupDeletionContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.GroupDeletionContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.GroupDeletionContext.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a2 + 16);
  v13[0] = *(a2 + 24);
  v13[1] = v6;
  type metadata accessor for MLS.GroupDeletionContext.CodingKeys(255, v6, v13[0], a4);
  swift_getWitnessTable();
  v7 = type metadata accessor for KeyedEncodingContainer();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = 0;
  v11 = v13[3];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v11)
  {
    v14 = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t MLS.GroupDeletionContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a4;
  v7 = type metadata accessor for Optional();
  v27 = *(v7 - 8);
  v28 = v7;
  MEMORY[0x28223BE20](v7);
  v31 = v24 - v8;
  type metadata accessor for MLS.GroupDeletionContext.CodingKeys(255, a2, a3, v9);
  swift_getWitnessTable();
  v33 = type metadata accessor for KeyedDecodingContainer();
  v30 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v11 = v24 - v10;
  v32 = a3;
  v13 = type metadata accessor for MLS.GroupDeletionContext(0, a2, a3, v12);
  v26 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = (v24 - v14);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = v34;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v34 = a1;
  v25 = v13;
  v17 = v30;
  v18 = v31;
  v36 = 0;
  v19 = v15;
  *v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v15[1] = v20;
  v24[1] = v20;
  v35 = 1;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v17 + 8))(v11, v33);
  v21 = v25;
  (*(v27 + 32))(v15 + *(v25 + 36), v18, v28);
  v22 = v26;
  (*(v26 + 16))(v29, v19, v21);
  __swift_destroy_boxed_opaque_existential_1Tm(v34);
  return (*(v22 + 8))(v19, v21);
}

uint64_t MLS.GroupDeletionProcessedContext.init(clientContext:)@<X0>(uint64_t a1@<X0>, uint64_t a3@<X8>)
{
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 32);

  return v6(a3, a1, v5);
}

uint64_t MLS.GroupDeletionProcessedContext.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL)
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.GroupDeletionProcessedContext<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MLS.GroupDeletionProcessedContext.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result & 1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.GroupDeletionProcessedContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.GroupDeletionProcessedContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.GroupDeletionProcessedContext.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a2 + 24);
  v11 = *(a2 + 16);
  type metadata accessor for MLS.GroupDeletionProcessedContext.CodingKeys(255, v11, v5, a4);
  swift_getWitnessTable();
  v6 = type metadata accessor for KeyedEncodingContainer();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  return (*(v7 + 8))(v9, v6);
}

uint64_t MLS.GroupDeletionProcessedContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v22 = a4;
  v21 = type metadata accessor for Optional();
  v25 = *(v21 - 8);
  MEMORY[0x28223BE20](v21);
  v26 = &v20 - v7;
  type metadata accessor for MLS.GroupDeletionProcessedContext.CodingKeys(255, a2, a3, v8);
  swift_getWitnessTable();
  v27 = type metadata accessor for KeyedDecodingContainer();
  v23 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v10 = &v20 - v9;
  v24 = a3;
  v12 = type metadata accessor for MLS.GroupDeletionProcessedContext(0, a2, a3, v11);
  v20 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v20 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v15 = v28;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v15)
  {
    v28 = v12;
    v16 = v23;
    v17 = v25;
    v18 = v26;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v16 + 8))(v10, v27);
    (*(v17 + 32))(v14, v18, v21);
    (*(v20 + 32))(v22, v14, v28);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t MLS.GroupOperationContext.description.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - v6;
  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(55);
  MEMORY[0x2667545A0](0xD000000000000022, 0x80000002651E8C10);
  MEMORY[0x2667545A0](*v1, *(v1 + 1));
  MEMORY[0x2667545A0](0xD000000000000011, 0x80000002651E8A90);
  (*(v5 + 16))(v7, &v1[*(a1 + 36)], v4);
  v8 = (*(*(v3 - 8) + 48))(v7, 1, v3);
  (*(v5 + 8))(v7, v4);
  if (v8 == 1)
  {
    v9 = 20302;
  }

  else
  {
    v9 = 5457241;
  }

  if (v8 == 1)
  {
    v10 = 0xE200000000000000;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  MEMORY[0x2667545A0](v9, v10);

  return v12[0];
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.GroupOperationContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.GroupOperationContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.GroupOperationProcessedContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.GroupOperationProcessedContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

void MLS.AdditionalAuthenticatedData.clientAAD.getter(uint64_t a1@<X8>)
{
  v2 = *v1;
  v3 = *(v1 + 8);
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  outlined copy of Data._Representation(v2, v3);

  outlined copy of Data?(v6, v7);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.AdditionalAuthenticatedData.ClientAAD.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO27AdditionalAuthenticatedDataV9ClientAADO22EncryptedRCSCodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO27AdditionalAuthenticatedDataV9ClientAADO22EncryptedRCSCodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMR);
  v4 = *(v3 - 8);
  v19 = v3;
  v20 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO27AdditionalAuthenticatedDataV9ClientAADO10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO27AdditionalAuthenticatedDataV9ClientAADO10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - v9;
  v11 = *v1;
  v18 = v1[1];
  v17 = *(v1 + 4);
  v16 = *(v1 + 3);
  v15 = v1[5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v21 = v11;
  v22 = v18;
  v23 = v17;
  v24 = v16;
  v25 = v15;
  lazy protocol witness table accessor for type MLS.EncryptedRCS.AdditionalAuthenticatedData and conformance MLS.EncryptedRCS.AdditionalAuthenticatedData();
  v12 = v19;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v20 + 8))(v6, v12);
  return (*(v8 + 8))(v10, v7);
}

uint64_t MLS.AdditionalAuthenticatedData.ClientAAD.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v25 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO27AdditionalAuthenticatedDataV9ClientAADO22EncryptedRCSCodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO27AdditionalAuthenticatedDataV9ClientAADO22EncryptedRCSCodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMR);
  v35 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO27AdditionalAuthenticatedDataV9ClientAADO10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO27AdditionalAuthenticatedDataV9ClientAADO10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMR);
  v26 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v23 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    goto LABEL_6;
  }

  v24 = a1;
  v10 = v35;
  v11 = v26;
  v12 = KeyedDecodingContainer.allKeys.getter();
  v13 = (2 * *(v12 + 16)) | 1;
  v31 = v12;
  v32 = v12 + 32;
  v33 = 0;
  v34 = v13;
  if ((specialized Collection<>.popFirst()() & 1) != 0 || v33 != v34 >> 1)
  {
    v14 = type metadata accessor for DecodingError();
    swift_allocError();
    v15 = v7;
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v17 = &type metadata for MLS.AdditionalAuthenticatedData.ClientAAD;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v14 - 8) + 104))(v17, *MEMORY[0x277D84160], v14);
    swift_willThrow();
    (*(v11 + 8))(v9, v15);
    swift_unknownObjectRelease();
    a1 = v24;
LABEL_6:
    v21 = a1;
    return __swift_destroy_boxed_opaque_existential_1Tm(v21);
  }

  lazy protocol witness table accessor for type MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys and conformance MLS.AdditionalAuthenticatedData.ClientAAD.EncryptedRCSCodingKeys();
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  lazy protocol witness table accessor for type MLS.EncryptedRCS.AdditionalAuthenticatedData and conformance MLS.EncryptedRCS.AdditionalAuthenticatedData();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v10 + 8))(v6, v4);
  (*(v11 + 8))(v9, v7);
  swift_unknownObjectRelease();
  v19 = v28;
  v20 = v30;
  v21 = v24;
  v22 = v25;
  *v25 = v27;
  *(v22 + 4) = v19;
  *(v22 + 24) = v29;
  *(v22 + 5) = v20;
  return __swift_destroy_boxed_opaque_existential_1Tm(v21);
}

BOOL static MLS.AdditionalAuthenticatedData.ClientAAD.== infix(_:_:)(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 4);
  v3 = *(a1 + 5);
  v4 = *(a2 + 4);
  v5 = *(a2 + 5);
  v11 = *a1;
  v12 = v2;
  v13 = *(a1 + 24);
  v14 = v3;
  v7 = *a2;
  v8 = v4;
  v9 = *(a2 + 24);
  v10 = v5;
  return specialized static MLS.EncryptedRCS.AdditionalAuthenticatedData.== infix(_:_:)(&v11, &v7);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.AdditionalAuthenticatedData.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x4141746E65696C63 && a2 == 0xE900000000000044)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.AdditionalAuthenticatedData.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.AdditionalAuthenticatedData.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.AdditionalAuthenticatedData.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.AdditionalAuthenticatedData.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.AdditionalAuthenticatedData.encode(to:)(void *a1)
{
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO27AdditionalAuthenticatedDataV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO27AdditionalAuthenticatedDataV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMR);
  v22 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v4 = &v13 - v3;
  v5 = *v1;
  v6 = *(v1 + 8);
  v14 = *(v1 + 16);
  v7 = *(v1 + 32);
  v13 = *(v1 + 24);
  v8 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  outlined copy of Data._Representation(v5, v6);
  outlined copy of Data?(v7, v8);
  lazy protocol witness table accessor for type MLS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.AdditionalAuthenticatedData.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v16 = v5;
  v17 = v6;
  v18 = v14;
  v19 = v13;
  v20 = v7;
  v21 = v8;
  lazy protocol witness table accessor for type MLS.AdditionalAuthenticatedData.ClientAAD and conformance MLS.AdditionalAuthenticatedData.ClientAAD();
  v9 = v15;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v10 = v20;
  v11 = v21;
  outlined consume of Data._Representation(v16, v17);
  outlined consume of Data?(v10, v11);
  return (*(v22 + 8))(v4, v9);
}

__n128 MLS.AdditionalAuthenticatedData.init(clientAAD:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 40);
  *a2 = *a1;
  *(a2 + 16) = v2;
  result = *(a1 + 24);
  *(a2 + 24) = result;
  *(a2 + 40) = v3;
  return result;
}

uint64_t MLS.AdditionalAuthenticatedData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO27AdditionalAuthenticatedDataV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO27AdditionalAuthenticatedDataV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.AdditionalAuthenticatedData.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type MLS.AdditionalAuthenticatedData.ClientAAD and conformance MLS.AdditionalAuthenticatedData.ClientAAD();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v9 = v14;
    v10 = v16;
    v11 = v15;
    *a2 = v13;
    *(a2 + 16) = v9;
    *(a2 + 24) = v11;
    *(a2 + 40) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

void MLS.EncryptionContext.additionalAuthenticatedData.getter(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (v2 + *(a1 + 56));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  a2[5] = v9;
  outlined copy of MLS.AdditionalAuthenticatedData?(v4, v5, v6, v7, v8, v9);
}

uint64_t MLS.EncryptionContext.destinationMember.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 60);
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

__n128 MLS.EncryptionContext.originalGroupVersion.getter@<Q0>(uint64_t a1@<X0>, __n128 *a2@<X8>)
{
  v3 = (v2 + *(a1 + 64));
  v4 = v3[1].n128_u64[0];
  v5 = v3[1].n128_u8[8];
  result = *v3;
  *a2 = *v3;
  a2[1].n128_u64[0] = v4;
  a2[1].n128_u8[8] = v5;
  return result;
}

double MLS.EncryptionContext.metricCollector.getter@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(v2 + *(a1 + 68));

  return result;
}

uint64_t MLS.EncryptionContext.metricCollector.setter(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 68);

  *(v2 + v4) = v3;
  return result;
}

uint64_t MLS.EncryptionContext.description.getter(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v55 = *(a1 + 24);
  v4 = type metadata accessor for Optional();
  v54 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v53 = &v44 - v5;
  v6 = *(v3 + 16);
  v7 = type metadata accessor for Optional();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v44 - v10;
  v12 = *(v6 - 8);
  MEMORY[0x28223BE20](v9);
  v49 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = (v2 + *(v3 + 56));
  v15 = v14[1];
  if (v15 >> 60 == 15)
  {
    v51 = 0;
    v16 = 0xE000000000000000;
  }

  else
  {
    v47 = v3;
    v48 = v2;
    v18 = v14[4];
    v17 = v14[5];
    v46 = v12;
    v20 = v14[2];
    v19 = v14[3];
    v50 = v4;
    v21 = *v14;
    v63 = 0x203A646161202CLL;
    v64 = 0xE700000000000000;
    v56 = v21;
    v57 = v15;
    v58 = v20;
    v59 = v19;
    v60 = v18;
    v52 = v17;
    v61 = v17;
    outlined copy of MLS.AdditionalAuthenticatedData?(v21, v15, v20, v19, v18, v17);
    v45 = v6;
    v22 = MLS.EncryptedRCS.AdditionalAuthenticatedData.description.getter();
    MEMORY[0x2667545A0](v22);
    v6 = v45;

    v23 = v21;
    v4 = v50;
    v24 = v20;
    v25 = v19;
    v12 = v46;
    v3 = v47;
    v26 = v18;
    v2 = v48;
    outlined consume of MLS.AdditionalAuthenticatedData?(v23, v15, v24, v25, v26, v52);
    v16 = v64;
    v51 = v63;
  }

  v52 = v16;
  (*(v8 + 16))(v11, v2 + *(v3 + 60), v7);
  if ((*(v12 + 48))(v11, 1, v6) == 1)
  {
    (*(v8 + 8))(v11, v7);
    v50 = 0;
    v27 = 0xE000000000000000;
  }

  else
  {
    v28 = v49;
    (*(v12 + 32))(v49, v11, v6);
    v56 = 0;
    v57 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);
    MEMORY[0x2667545A0](0xD000000000000015, 0x80000002651E8BD0);
    DefaultStringInterpolation.appendInterpolation<A>(_:)();
    v27 = v57;
    v50 = v56;
    (*(v12 + 8))(v28, v6);
  }

  v29 = v2 + *(v3 + 64);
  if (v29[24])
  {
    v30 = 0;
    v31 = 0xE000000000000000;
  }

  else
  {
    v32 = v2;
    v33 = v3;
    v35 = *(v29 + 1);
    v34 = *(v29 + 2);
    v56 = 0;
    v57 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);
    MEMORY[0x2667545A0](0xD000000000000015, 0x80000002651E8BD0);
    LODWORD(v62) = v35;
    v3 = v33;
    v63 = dispatch thunk of CustomStringConvertible.description.getter();
    v64 = v36;
    MEMORY[0x2667545A0](46, 0xE100000000000000);
    v62 = v34;
    v2 = v32;
    v37 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x2667545A0](v37);

    MEMORY[0x2667545A0](v63, v64);

    v30 = v56;
    v31 = v57;
  }

  v56 = 0;
  v57 = 0xE000000000000000;
  _StringGuts.grow(_:)(57);
  MEMORY[0x2667545A0](0xD00000000000001ELL, 0x80000002651E8BB0);
  MEMORY[0x2667545A0](*v2, v2[1]);
  MEMORY[0x2667545A0](0xD000000000000011, 0x80000002651E8A90);
  v39 = v53;
  v38 = v54;
  (*(v54 + 16))(v53, v2 + *(v3 + 52), v4);
  v40 = (*(*(v55 - 8) + 48))(v39, 1);
  (*(v38 + 8))(v39, v4);
  if (v40 == 1)
  {
    v41 = 20302;
  }

  else
  {
    v41 = 5457241;
  }

  if (v40 == 1)
  {
    v42 = 0xE200000000000000;
  }

  else
  {
    v42 = 0xE300000000000000;
  }

  MEMORY[0x2667545A0](v41, v42);

  MEMORY[0x2667545A0](v51, v52);

  MEMORY[0x2667545A0](v50, v27);

  MEMORY[0x2667545A0](v30, v31);

  return v56;
}

uint64_t MLS.EncryptionContext.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD00000000000001BLL && 0x80000002651E9B90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002651E9BB0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002651E9BD0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F4363697274656DLL && a2 == 0xEF726F7463656C6CLL)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t MLS.EncryptionContext.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x696669746E656469;
  v2 = 0xD000000000000014;
  if (a1 != 4)
  {
    v2 = 0x6F4363697274656DLL;
  }

  if (a1 == 3)
  {
    v2 = 0xD000000000000011;
  }

  v3 = 0xD00000000000001BLL;
  if (a1 == 1)
  {
    v3 = 0x6F43746E65696C63;
  }

  if (a1)
  {
    v1 = v3;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.EncryptionContext<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.EncryptionContext<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.EncryptionContext.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 24);
  v6 = *(a2 + 32);
  v5 = *(a2 + 40);
  v23[0] = *(a2 + 16);
  v23[1] = v6;
  *&v24 = v23[0];
  *(&v24 + 1) = v4;
  v23[2] = v5;
  v23[3] = v4;
  v25 = v6;
  v26 = v5;
  type metadata accessor for MLS.EncryptionContext.CodingKeys(255, &v24);
  swift_getWitnessTable();
  v7 = type metadata accessor for KeyedEncodingContainer();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v23 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = v23[4];
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v24) = 0;
  v12 = v23[5];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v12)
  {
    LOBYTE(v24) = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v13 = (v11 + *(a2 + 56));
    v14 = v13[1];
    v15 = v13[2];
    v16 = v13[3];
    v17 = v13[4];
    v18 = v13[5];
    *&v24 = *v13;
    *(&v24 + 1) = v14;
    v25 = v15;
    v26 = v16;
    v27 = v17;
    v28 = v18;
    v29 = 2;
    outlined copy of MLS.AdditionalAuthenticatedData?(v24, v14, v15, v16, v17, v18);
    lazy protocol witness table accessor for type MLS.AdditionalAuthenticatedData and conformance MLS.AdditionalAuthenticatedData();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of MLS.AdditionalAuthenticatedData?(v24, *(&v24 + 1), v25, v26, v27, v28);
    LOBYTE(v24) = 3;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v19 = (v11 + *(a2 + 64));
    v20 = *(v19 + 2);
    v21 = *(v19 + 24);
    v24 = *v19;
    v25 = v20;
    LOBYTE(v26) = v21;
    v29 = 4;
    lazy protocol witness table accessor for type MLS.GroupVersion and conformance MLS.GroupVersion();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v24 = *(v11 + *(a2 + 68));
    v29 = 5;
    lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();

    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t MLS.EncryptionContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v34 = a6;
  v11 = type metadata accessor for Optional();
  v12 = *(v11 - 8);
  v37 = v11;
  v38 = v12;
  MEMORY[0x28223BE20](v11);
  v35 = &v32 - v13;
  v39 = type metadata accessor for Optional();
  v41 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v40 = &v32 - v14;
  *&v48 = a2;
  *(&v48 + 1) = a3;
  *&v49 = a4;
  *(&v49 + 1) = a5;
  type metadata accessor for MLS.EncryptionContext.CodingKeys(255, &v48);
  swift_getWitnessTable();
  v46 = type metadata accessor for KeyedDecodingContainer();
  v44 = *(v46 - 8);
  MEMORY[0x28223BE20](v46);
  v16 = &v32 - v15;
  *&v48 = a2;
  *(&v48 + 1) = a3;
  v42 = a3;
  v43 = a5;
  v36 = a4;
  *&v49 = a4;
  *(&v49 + 1) = a5;
  v17 = type metadata accessor for MLS.EncryptionContext(0, &v48);
  v33 = *(v17 - 1);
  MEMORY[0x28223BE20](v17);
  v19 = (&v32 - v18);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v45 = v16;
  v20 = v47;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v20)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v47 = a2;
  v21 = v40;
  v22 = v41;
  LOBYTE(v48) = 0;
  *v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v19[1] = v23;
  LOBYTE(v48) = 1;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v22 + 32))(v19 + v17[13], v21, v39);
  v51 = 2;
  lazy protocol witness table accessor for type MLS.AdditionalAuthenticatedData and conformance MLS.AdditionalAuthenticatedData();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v24 = (v19 + v17[14]);
  v25 = v49;
  *v24 = v48;
  v24[1] = v25;
  v24[2] = v50;
  LOBYTE(v48) = 3;
  v26 = v35;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v38 + 32))(v19 + v17[15], v26, v37);
  v51 = 4;
  lazy protocol witness table accessor for type MLS.GroupVersion and conformance MLS.GroupVersion();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v27 = v49;
  v28 = BYTE8(v49);
  v29 = v19 + v17[16];
  *v29 = v48;
  *(v29 + 2) = v27;
  v29[24] = v28;
  v51 = 5;
  lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v44 + 8))(v45, v46);
  *(v19 + v17[17]) = v48;
  v30 = v33;
  (*(v33 + 16))(v34, v19, v17);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return (*(v30 + 8))(v19, v17);
}

uint64_t sub_26502878C(char a1)
{
  if (!a1)
  {
    return 0x6F43746E65696C63;
  }

  if (a1 == 1)
  {
    return 0x6F4363697274656DLL;
  }

  return 0x6E6553746E657665;
}

uint64_t _s15SecureMessaging3MLSO30GroupOperationProcessedContextV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOy_x_Gs0H3KeyAAsAJP11stringValuexSgSS_tcfCTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a4@<X8>)
{
  result = MLS.GroupOperationProcessedContext.CodingKeys.init(stringValue:)(a1, a2);
  *a4 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.EncryptionProcessedContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.EncryptionProcessedContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.SigningInput.clientSigningInput.getter@<X0>(uint64_t a1@<X8>)
{
  outlined init with take of MLS.SigningInput.ClientSigningInput(v1, v5);
  outlined init with take of MLS.SigningInput.ClientSigningInput(v5, a1);
  return outlined init with copy of MLS.SigningInput.ClientSigningInput(v5, &v4);
}

BOOL static MLS.SigningInput.ClientSigningInput.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v15 = *(a1 + 40);
  v5 = *(a1 + 48);
  v14 = *(a1 + 56);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  result = 0;
  if (specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    v22 = v2;
    v23 = v3;
    v24 = v4;
    v25 = v15;
    v26 = v5;
    v27 = v14;
    v16 = v6;
    v17 = v7;
    v18 = v8;
    v19 = v9;
    v20 = v10;
    v21 = v11;
    outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v2, v3, v4, v15, v5, v14, outlined copy of Data._Representation, outlined copy of Data?);
    outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v6, v7, v8, v9, v10, v11, outlined copy of Data._Representation, outlined copy of Data?);
    v12 = specialized static MLS.EncryptedRCS.SigningInput.ContentType.== infix(_:_:)(&v22, &v16);
    outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v16, v17, v18, v19, v20, v21, outlined consume of Data._Representation, outlined consume of Data?);
    outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v22, v23, v24, v25, v26, v27, outlined consume of Data._Representation, outlined consume of Data?);
    if (v12)
    {
      return 1;
    }
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.AdditionalAuthenticatedData.ClientAAD.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6574707972636E65 && a2 == 0xEC00000053435264)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.SigningInput.ClientSigningInput.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SigningInput.ClientSigningInput.CodingKeys and conformance MLS.SigningInput.ClientSigningInput.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.SigningInput.ClientSigningInput.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SigningInput.ClientSigningInput.CodingKeys and conformance MLS.SigningInput.ClientSigningInput.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys and conformance MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys and conformance MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.SigningInput.ClientSigningInput.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12SigningInputV06ClientgH0O22EncryptedRCSCodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12SigningInputV06ClientgH0O22EncryptedRCSCodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMR);
  v5 = *(v4 - 8);
  v19 = v4;
  v20 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v16[-v6];
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12SigningInputV06ClientgH0O10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12SigningInputV06ClientgH0O10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMR);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16[-v10];
  v18 = v2[2];
  v12 = *(v2 + 6);
  v17 = *(v2 + 14);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.SigningInput.ClientSigningInput.CodingKeys and conformance MLS.SigningInput.ClientSigningInput.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys and conformance MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v13 = v2[1];
  v21 = *v2;
  v22 = v13;
  v23 = v18;
  v24 = v12;
  v25 = v17;
  lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput and conformance MLS.EncryptedRCS.SigningInput();
  v14 = v19;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v20 + 8))(v7, v14);
  return (*(v9 + 8))(v11, v8);
}

uint64_t MLS.SigningInput.ClientSigningInput.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12SigningInputV06ClientgH0O22EncryptedRCSCodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12SigningInputV06ClientgH0O22EncryptedRCSCodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMR);
  v31 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12SigningInputV06ClientgH0O10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12SigningInputV06ClientgH0O10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMR);
  v23 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.SigningInput.ClientSigningInput.CodingKeys and conformance MLS.SigningInput.ClientSigningInput.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    goto LABEL_6;
  }

  v21 = a1;
  v10 = v31;
  v11 = v23;
  v12 = KeyedDecodingContainer.allKeys.getter();
  v13 = (2 * *(v12 + 16)) | 1;
  v27 = v12;
  v28 = v12 + 32;
  v29 = 0;
  v30 = v13;
  v14 = v9;
  if ((specialized Collection<>.popFirst()() & 1) != 0 || v29 != v30 >> 1)
  {
    v15 = type metadata accessor for DecodingError();
    swift_allocError();
    v17 = v16;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v17 = &type metadata for MLS.SigningInput.ClientSigningInput;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v15 - 8) + 104))(v17, *MEMORY[0x277D84160], v15);
    swift_willThrow();
    (*(v11 + 8))(v14, v7);
    swift_unknownObjectRelease();
    a1 = v21;
LABEL_6:
    v19 = a1;
    return __swift_destroy_boxed_opaque_existential_1Tm(v19);
  }

  lazy protocol witness table accessor for type MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys and conformance MLS.SigningInput.ClientSigningInput.EncryptedRCSCodingKeys();
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput and conformance MLS.EncryptedRCS.SigningInput();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v10 + 8))(v6, v4);
  (*(v11 + 8))(v9, v7);
  swift_unknownObjectRelease();
  v24[0] = *&v25[5];
  v24[1] = *&v25[7];
  *v25 = v26[0];
  *(&v25[1] + 4) = *(v26 + 12);
  outlined init with take of MLS.SigningInput.ClientSigningInput(v24, v22);
  v19 = v21;
  return __swift_destroy_boxed_opaque_existential_1Tm(v19);
}

unint64_t MLS.SigningInput.description.getter()
{
  v1 = (*(v0 + 32) >> 60) & 3;
  if (!v1)
  {
    return MLS.EncryptedRCS.DeliveryIMDNSigningInput.description.getter();
  }

  if (v1 == 1)
  {
    return MLS.EncryptedRCS.DisplayIMDNSigningInput.description.getter();
  }

  return MLS.EncryptedRCS.FileTransferSigningInput.description.getter();
}

BOOL static MLS.SigningInput.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a1 + 24);
  v4 = *(a1 + 32);
  v15 = *(a1 + 40);
  v5 = *(a1 + 48);
  v14 = *(a1 + 56);
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = *(a2 + 48);
  v11 = *(a2 + 56);
  if (specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8)))
  {
    v22 = v2;
    v23 = v3;
    v24 = v4;
    v25 = v15;
    v26 = v5;
    v27 = v14;
    v16 = v6;
    v17 = v7;
    v18 = v8;
    v19 = v9;
    v20 = v10;
    v21 = v11;
    outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v2, v3, v4, v15, v5, v14, outlined copy of Data._Representation, outlined copy of Data?);
    outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v6, v7, v8, v9, v10, v11, outlined copy of Data._Representation, outlined copy of Data?);
    v12 = specialized static MLS.EncryptedRCS.SigningInput.ContentType.== infix(_:_:)(&v22, &v16);
    outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v16, v17, v18, v19, v20, v21, outlined consume of Data._Representation, outlined consume of Data?);
    outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v22, v23, v24, v25, v26, v27, outlined consume of Data._Representation, outlined consume of Data?);
  }

  else
  {
    return 0;
  }

  return v12;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.SigningInput.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000002651E9BF0 == a2)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.SigningInput.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SigningInput.CodingKeys and conformance MLS.SigningInput.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.SigningInput.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.SigningInput.CodingKeys and conformance MLS.SigningInput.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.SigningInput.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12SigningInputV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12SigningInputV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  outlined init with take of MLS.SigningInput.ClientSigningInput(v1, v10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  outlined init with copy of MLS.SigningInput.ClientSigningInput(v10, v9);
  lazy protocol witness table accessor for type MLS.SigningInput.CodingKeys and conformance MLS.SigningInput.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with take of MLS.SigningInput.ClientSigningInput(v10, v9);
  lazy protocol witness table accessor for type MLS.SigningInput.ClientSigningInput and conformance MLS.SigningInput.ClientSigningInput();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined init with take of MLS.SigningInput.ClientSigningInput(v9, v8);
  outlined destroy of MLS.SigningInput.ClientSigningInput(v8);
  return (*(v4 + 8))(v6, v3);
}

double MLS.SigningInput.init(clientSigningInput:)@<D0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  outlined init with take of MLS.SigningInput.ClientSigningInput(a1, v5);
  outlined init with take of MLS.SigningInput.ClientSigningInput(v5, v6);
  v3 = v6[1];
  *a2 = v6[0];
  a2[1] = v3;
  a2[2] = v7[0];
  result = *(v7 + 12);
  *(a2 + 44) = *(v7 + 12);
  return result;
}

uint64_t MLS.SigningInput.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12SigningInputV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12SigningInputV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12[-v7 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.SigningInput.CodingKeys and conformance MLS.SigningInput.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type MLS.SigningInput.ClientSigningInput and conformance MLS.SigningInput.ClientSigningInput();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    outlined init with take of MLS.SigningInput.ClientSigningInput(v15, v12);
    outlined init with take of MLS.SigningInput.ClientSigningInput(v12, v13);
    v9 = v13[1];
    *a2 = v13[0];
    a2[1] = v9;
    a2[2] = v14[0];
    *(a2 + 44) = *(v14 + 12);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

BOOL protocol witness for static Equatable.== infix(_:_:) in conformance MLS.SigningInput.ClientSigningInput(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 48);
  v3 = *(a1 + 56);
  v4 = *(a2 + 48);
  v5 = *(a2 + 56);
  v6 = *(a1 + 16);
  v12[0] = *a1;
  v12[1] = v6;
  v12[2] = *(a1 + 32);
  v13 = v2;
  v14 = v3;
  v7 = *(a2 + 16);
  v9[0] = *a2;
  v9[1] = v7;
  v9[2] = *(a2 + 32);
  v10 = v4;
  v11 = v5;
  return specialized static MLS.EncryptedRCS.SigningInput.== infix(_:_:)(v12, v9);
}

uint64_t MLS.SigningContext.identifier.getter()
{
  v1 = *v0;

  return v1;
}

double MLS.SigningContext.metricCollector.getter@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(v2 + *(a1 + 40));

  return result;
}

uint64_t MLS.SigningContext.metricCollector.setter(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 40);

  *(v2 + v4) = v3;
  return result;
}

unint64_t MLS.SigningContext.description.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v12 = 0;
  v13 = 0xE000000000000000;
  _StringGuts.grow(_:)(48);

  v12 = 0xD00000000000001BLL;
  v13 = 0x80000002651E8B60;
  MEMORY[0x2667545A0](*v1, *(v1 + 1));
  MEMORY[0x2667545A0](0xD000000000000011, 0x80000002651E8A90);
  (*(v5 + 16))(v7, &v1[*(a1 + 36)], v4);
  v8 = (*(*(v3 - 8) + 48))(v7, 1, v3);
  (*(v5 + 8))(v7, v4);
  if (v8 == 1)
  {
    v9 = 20302;
  }

  else
  {
    v9 = 5457241;
  }

  if (v8 == 1)
  {
    v10 = 0xE200000000000000;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  MEMORY[0x2667545A0](v9, v10);

  return v12;
}

uint64_t MLS.GroupNameEncryptionContext.CodingKeys.stringValue.getter(char a1)
{
  if (!a1)
  {
    return 0x696669746E656469;
  }

  if (a1 == 1)
  {
    return 0x6F43746E65696C63;
  }

  return 0x6F4363697274656DLL;
}

uint64_t _s15SecureMessaging3MLSO21GroupOperationContextV10CodingKeys33_1BCF020B2C9BE72B5C283F55287016EELLOy_x_Gs0G3KeyAAsAJP11stringValuexSgSS_tcfCTW_0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a4@<X8>)
{
  result = MLS.GroupNameEncryptionContext.CodingKeys.init(stringValue:)(a1, a2);
  *a4 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.SigningContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.SigningContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

double MLS.SigningProcessedContext.metricCollector.getter@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(v2 + *(a1 + 36));

  return result;
}

uint64_t MLS.SigningProcessedContext.metricCollector.setter(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 36);

  *(v2 + v4) = v3;
  return result;
}

uint64_t MLS.SigningProcessedContext.eventSenderTask.getter(uint64_t a1)
{
  _s15SecureMessaging3MLSO30GroupOperationProcessedContextV15eventSenderTaskScTyyts5NeverOGSgvgTf4n_g_0(a1);
}

uint64_t MLS.SigningProcessedContext.eventSenderTask.setter(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 40);

  *(v2 + v4) = a1;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.SigningProcessedContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.SigningProcessedContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.EncryptionContext.clientContext.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 52);
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

double MLS.GroupNameEncryptionContext.metricCollector.getter@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(v2 + *(a1 + 56));

  return result;
}

uint64_t MLS.GroupNameEncryptionContext.metricCollector.setter(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 56);

  *(v2 + v4) = v3;
  return result;
}

uint64_t MLS.GroupNameEncryptionContext.description.getter(uint64_t a1)
{
  v3 = *(a1 + 24);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - v6;
  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(56);
  MEMORY[0x2667545A0](0xD000000000000023, 0x80000002651E8B80);
  MEMORY[0x2667545A0](*v1, *(v1 + 1));
  MEMORY[0x2667545A0](0xD000000000000011, 0x80000002651E8A90);
  (*(v5 + 16))(v7, &v1[*(a1 + 52)], v4);
  v8 = (*(*(v3 - 8) + 48))(v7, 1, v3);
  (*(v5 + 8))(v7, v4);
  if (v8 == 1)
  {
    v9 = 20302;
  }

  else
  {
    v9 = 5457241;
  }

  if (v8 == 1)
  {
    v10 = 0xE200000000000000;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  MEMORY[0x2667545A0](v9, v10);

  return v12[0];
}

uint64_t MLS.GroupNameEncryptionContext.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F4363697274656DLL && a2 == 0xEF726F7463656C6CLL)
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

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLS.EncryptionContext<A, B>.CodingKeys(uint64_t a1, void *a2, uint64_t a3, void (*a4)(void *, void, void, void, void, void))
{
  Hasher.init(_seed:)();
  a4(v8, *v4, a2[2], a2[3], a2[4], a2[5]);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.EncryptionContext<A, B>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, void, void, void, void)@<X4>, _BYTE *a5@<X8>)
{
  result = a4(a1, a2, a3[2], a3[3], a3[4], a3[5]);
  *a5 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance MLS.EncryptionContext<A, B>.CodingKeys@<X0>(void *a1@<X1>, uint64_t (*a2)(void, void, void, void)@<X3>, _BYTE *a3@<X8>)
{
  result = a2(a1[2], a1[3], a1[4], a1[5]);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.GroupNameEncryptionContext<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.GroupNameEncryptionContext<A, B>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.GroupNameEncryptionContext.encode(to:)(void *a1, uint64_t a2)
{
  v4 = *(a2 + 40);
  v16 = *(a2 + 16);
  v12 = *(a2 + 24);
  v17 = v12;
  v13 = v4;
  v18 = v4;
  type metadata accessor for MLS.GroupNameEncryptionContext.CodingKeys(255, &v16);
  swift_getWitnessTable();
  v5 = type metadata accessor for KeyedEncodingContainer();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = v14;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v16) = 0;
  v10 = v15;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v10)
  {
    LOBYTE(v16) = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v16 = *(v9 + *(a2 + 56));
    v19 = 2;
    lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();

    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t MLS.GroupNameEncryptionContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v30 = a6;
  v11 = type metadata accessor for Optional();
  v32 = *(v11 - 8);
  v33 = v11;
  MEMORY[0x28223BE20](v11);
  v31 = v27 - v12;
  v40 = a2;
  v41 = a3;
  v42 = a4;
  v43 = a5;
  type metadata accessor for MLS.GroupNameEncryptionContext.CodingKeys(255, &v40);
  swift_getWitnessTable();
  v38 = type metadata accessor for KeyedDecodingContainer();
  v34 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v14 = v27 - v13;
  v40 = a2;
  v41 = a3;
  v35 = a3;
  v36 = a5;
  v42 = a4;
  v43 = a5;
  v15 = type metadata accessor for MLS.GroupNameEncryptionContext(0, &v40);
  v29 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = (v27 - v16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v37 = v14;
  v18 = v39;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v39 = a1;
  v19 = v17;
  v20 = v34;
  LOBYTE(v40) = 0;
  *v19 = KeyedDecodingContainer.decode(_:forKey:)();
  v19[1] = v21;
  v27[1] = v21;
  v28 = v19;
  LOBYTE(v40) = 1;
  v22 = v31;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v32 + 32))(v28 + *(v15 + 52), v22, v33);
  v44 = 2;
  lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();
  v23 = v37;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v20 + 8))(v23, v38);
  v25 = v28;
  v24 = v29;
  *(v28 + *(v15 + 56)) = v40;
  (*(v24 + 16))(v30, v25, v15);
  __swift_destroy_boxed_opaque_existential_1Tm(v39);
  return (*(v24 + 8))(v25, v15);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.GroupNameEncryptionProcessedContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.GroupNameEncryptionProcessedContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.IncomingMessageContext.expectedSignedData.getter@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = (v2 + *(a1 + 40));
  v4 = v3[1];
  v9[0] = *v3;
  v9[1] = v4;
  v10[0] = v3[2];
  v5 = v10[0];
  *(v10 + 12) = *(v3 + 44);
  v6 = *(v10 + 12);
  *a2 = v9[0];
  a2[1] = v4;
  a2[2] = v5;
  *(a2 + 44) = v6;
  return outlined init with copy of MLS.OutgoingEventState?(v9, &v8, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
}

void MLS.IncomingMessageContext.expectedAdditionalAuthenticatedData.getter(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (v2 + *(a1 + 44));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  a2[5] = v9;
  outlined copy of MLS.AdditionalAuthenticatedData?(v4, v5, v6, v7, v8, v9);
}

uint64_t MLS.GroupCreationContext.ratchetTree.getter(uint64_t a1)
{
  v2 = v1 + *(a1 + 48);
  v3 = *v2;
  outlined copy of Data?(*v2, *(v2 + 8));
  return v3;
}

double MLS.IncomingMessageContext.metricCollector.getter@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(v2 + *(a1 + 52));

  return result;
}

uint64_t MLS.IncomingMessageContext.metricCollector.setter(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 52);

  *(v2 + v4) = v3;
  return result;
}

uint64_t MLS.IncomingMessageContext.description.getter(uint64_t a1)
{
  v2 = v1;
  v3 = a1;
  v4 = *(a1 + 16);
  v5 = type metadata accessor for Optional();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v26 - v7;
  v9 = &v1[*(v3 + 44)];
  v10 = v9[1];
  if (v10 >> 60 == 15)
  {
    v11 = 0;
    v12 = 0xE000000000000000;
  }

  else
  {
    v14 = v9[4];
    v13 = v9[5];
    v15 = v9[3];
    v28 = v3;
    v29 = v15;
    v16 = v9[2];
    v17 = *v9;
    v30 = 0;
    v31 = 0xE000000000000000;
    v27 = v6;
    v18 = v17;
    outlined copy of Data._Representation(v17, v10);
    v26 = v13;
    outlined copy of Data?(v14, v13);
    _StringGuts.grow(_:)(17);

    v36 = 0x746365707865202CLL;
    v37 = 0xEF203A4441416465;
    v30 = v18;
    v31 = v10;
    v32 = v16;
    v33 = v29;
    v34 = v14;
    v35 = v13;
    v19 = MLS.EncryptedRCS.AdditionalAuthenticatedData.description.getter();
    MEMORY[0x2667545A0](v19);

    v20 = v18;
    v21 = v16;
    v6 = v27;
    v3 = v28;
    outlined consume of MLS.AdditionalAuthenticatedData?(v20, v10, v21, v29, v14, v26);
    v11 = v36;
    v12 = v37;
  }

  v30 = 0;
  v31 = 0xE000000000000000;
  _StringGuts.grow(_:)(58);
  MEMORY[0x2667545A0](0xD000000000000023, 0x80000002651E8B30);
  MEMORY[0x2667545A0](*v2, *(v2 + 1));
  MEMORY[0x2667545A0](0xD000000000000011, 0x80000002651E8A90);
  (*(v6 + 16))(v8, &v2[*(v3 + 36)], v5);
  v22 = (*(*(v4 - 8) + 48))(v8, 1, v4);
  (*(v6 + 8))(v8, v5);
  if (v22 == 1)
  {
    v23 = 20302;
  }

  else
  {
    v23 = 5457241;
  }

  if (v22 == 1)
  {
    v24 = 0xE200000000000000;
  }

  else
  {
    v24 = 0xE300000000000000;
  }

  MEMORY[0x2667545A0](v23, v24);

  MEMORY[0x2667545A0](v11, v12);

  return v30;
}

uint64_t MLS.IncomingMessageContext.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002651E9C10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000023 && 0x80000002651E9C30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000015 && 0x80000002651E99D0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x6F4363697274656DLL && a2 == 0xEF726F7463656C6CLL)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t MLS.IncomingMessageContext.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x696669746E656469;
  v2 = 0xD000000000000015;
  if (a1 != 4)
  {
    v2 = 0x6F4363697274656DLL;
  }

  if (a1 == 3)
  {
    v2 = 0xD000000000000023;
  }

  v3 = 0x6F43746E65696C63;
  if (a1 != 1)
  {
    v3 = 0xD000000000000012;
  }

  if (a1)
  {
    v1 = v3;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.IncomingMessageContext<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MLS.IncomingMessageContext.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CodingKey.init(intValue:) in conformance MLS.IncomingMessageContext<A>.CodingKeys@<X0>(_BYTE *a2@<X8>)
{
  result = specialized MLS.EncryptionContext.CodingKeys.init(intValue:)();
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingMessageContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingMessageContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.IncomingMessageContext.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v32 = a2;
  v31[1] = v8;
  v31[0] = v7;
  type metadata accessor for MLS.IncomingMessageContext.CodingKeys(255, v8, v7, a4);
  swift_getWitnessTable();
  v9 = type metadata accessor for KeyedEncodingContainer();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v31 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = v9;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v46[0]) = 0;
  v14 = v49;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v14)
  {
    return (*(v10 + 8))(v12, v9);
  }

  v16 = v10;
  v17 = v32;
  v48 = 1;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v18 = (v5 + v17[10]);
  v19 = v18[1];
  v46[0] = *v18;
  v46[1] = v19;
  v21 = *v18;
  v20 = v18[1];
  *v47 = v18[2];
  *&v47[12] = *(v18 + 44);
  v43 = v21;
  v22 = v18[2];
  v44 = v20;
  v45[0] = v22;
  *(v45 + 12) = *(v18 + 44);
  v42 = 2;
  outlined init with copy of MLS.OutgoingEventState?(v46, v40, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
  lazy protocol witness table accessor for type MLS.SigningInput and conformance MLS.SigningInput();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  v40[0] = v43;
  v40[1] = v44;
  *v41 = v45[0];
  *&v41[12] = *(v45 + 12);
  outlined destroy of NSObject?(v40, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
  v23 = (v5 + v17[11]);
  v24 = v23[1];
  v25 = v23[2];
  v26 = v23[3];
  v27 = v23[4];
  v28 = v23[5];
  v34 = *v23;
  v35 = v24;
  v36 = v25;
  v37 = v26;
  v38 = v27;
  v39 = v28;
  v33 = 3;
  outlined copy of MLS.AdditionalAuthenticatedData?(v34, v24, v25, v26, v27, v28);
  lazy protocol witness table accessor for type MLS.AdditionalAuthenticatedData and conformance MLS.AdditionalAuthenticatedData();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  outlined consume of MLS.AdditionalAuthenticatedData?(v34, v35, v36, v37, v38, v39);
  v29 = (v5 + v17[12]);
  v30 = v29[1];
  v34 = *v29;
  v35 = v30;
  v33 = 4;
  outlined copy of Data?(v34, v30);
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  outlined consume of Data?(v34, v35);
  v34 = *(v5 + v17[13]);
  v33 = 5;
  lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();

  KeyedEncodingContainer.encode<A>(_:forKey:)();

  return (*(v16 + 8))(v12, v13);
}

uint64_t MLS.IncomingMessageContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a4;
  v38 = type metadata accessor for Optional();
  v40 = *(v38 - 8);
  MEMORY[0x28223BE20](v38);
  v39 = &v36 - v7;
  type metadata accessor for MLS.IncomingMessageContext.CodingKeys(255, a2, a3, v8);
  swift_getWitnessTable();
  v9 = type metadata accessor for KeyedDecodingContainer();
  v42 = *(v9 - 8);
  v43 = v9;
  MEMORY[0x28223BE20](v9);
  v11 = &v36 - v10;
  v41 = a3;
  v13 = type metadata accessor for MLS.IncomingMessageContext(0, a2, a3, v12);
  v36 = *(v13 - 1);
  MEMORY[0x28223BE20](v13);
  v15 = (&v36 - v14);
  v16 = a1[3];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  v17 = v44;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v45);
  }

  v18 = v40;
  v19 = v39;
  LOBYTE(v49) = 0;
  *v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v15[1] = v21;
  LOBYTE(v49) = 1;
  v22 = v11;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v23 = v38;
  (*(v18 + 32))(v15 + v13[9], v19, v38);
  v53 = 2;
  lazy protocol witness table accessor for type MLS.SigningInput and conformance MLS.SigningInput();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v24 = (v15 + v13[10]);
  v25 = v50;
  *v24 = v49;
  v24[1] = v25;
  v24[2] = v51[0];
  *(v24 + 44) = *(v51 + 12);
  v52 = 3;
  lazy protocol witness table accessor for type MLS.AdditionalAuthenticatedData and conformance MLS.AdditionalAuthenticatedData();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v44 = 0;
  v26 = v42;
  v27 = (v15 + v13[11]);
  v28 = v47;
  *v27 = v46;
  v27[1] = v28;
  v27[2] = v48;
  v52 = 4;
  lazy protocol witness table accessor for type Data and conformance Data();
  v29 = v44;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v44 = v29;
  if (v29)
  {
    (*(v26 + 8))(v22, v43);
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    v30 = 0;
  }

  else
  {
    *(v15 + v13[12]) = v46;
    v52 = 5;
    lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();
    v31 = v44;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v44 = v31;
    if (!v31)
    {
      (*(v26 + 8))(v22, v43);
      *(v15 + v13[13]) = v46;
      v35 = v36;
      (*(v36 + 16))(v37, v15, v13);
      __swift_destroy_boxed_opaque_existential_1Tm(v45);
      return (*(v35 + 8))(v15, v13);
    }

    (*(v26 + 8))(v22, v43);
    __swift_destroy_boxed_opaque_existential_1Tm(v45);
    v30 = 1;
  }

  (*(v18 + 8))(v15 + v13[9], v23);
  v33 = (v15 + v13[10]);
  v34 = v33[1];
  v49 = *v33;
  v50 = v34;
  v51[0] = v33[2];
  *(v51 + 12) = *(v33 + 44);
  outlined destroy of NSObject?(&v49, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
  v32 = v15 + v13[11];
  result = outlined consume of MLS.AdditionalAuthenticatedData?(*v32, *(v32 + 1), *(v32 + 2), *(v32 + 3), *(v32 + 4), *(v32 + 5));
  if (v30)
  {
    return outlined consume of Data?(*(v15 + v13[12]), *(v15 + v13[12] + 8));
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingMessageProcessedContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingMessageProcessedContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.IncomingFailureToDecryptContext_v2.init(identifier:clientContext:signedData:expectedSignedData:metricCollector:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int128 *a6@<X5>, unint64_t *a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>, uint64_t a10)
{
  v36 = a4;
  v37 = a5;
  v38 = a3;
  v16 = type metadata accessor for UUID();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v20 = &v35 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = a6[1];
  v39 = *a6;
  v40 = v21;
  v41[0] = a6[2];
  *(v41 + 12) = *(a6 + 44);
  v22 = *a7;
  if (!a2)
  {
    UUID.init()();
    a1 = UUID.uuidString.getter();
    a2 = v23;
    (*(v17 + 8))(v20, v16);
  }

  *a9 = a1;
  a9[1] = a2;
  v24 = type metadata accessor for MLS.IncomingFailureToDecryptContext_v2(0, a8, a10, v18);
  v25 = v24[9];
  v26 = type metadata accessor for Optional();
  v27 = *(v26 - 8);
  v28 = a9 + v25;
  v29 = v38;
  (*(v27 + 16))(v28, v38, v26);
  v30 = (a9 + v24[10]);
  v31 = v37;
  *v30 = v36;
  v30[1] = v31;
  v32 = (a9 + v24[11]);
  v33 = v40;
  *v32 = v39;
  v32[1] = v33;
  v32[2] = v41[0];
  *(v32 + 44) = *(v41 + 12);
  if (!v22)
  {
    v22 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  result = (*(v27 + 8))(v29, v26);
  *(a9 + v24[12]) = v22;
  return result;
}

double MLS.IncomingFailureToDecryptContext_v2.dataContext.getter@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 16);
  v6 = type metadata accessor for Optional();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v31 - v8;
  v10 = *(v2 + 1);
  v32 = *v2;
  (*(v7 + 16))(&v31 - v8, &v2[*(a1 + 36)], v6);
  v11 = *(v5 - 8);
  if ((*(v11 + 48))(v9, 1, v5) == 1)
  {
    v12 = *(v7 + 8);

    v12(v9, v6);
    v13 = 0;
    v14 = 0xF000000000000000;
  }

  else
  {
    v31 = v2;
    v15 = *(a1 + 24);

    v16 = v15;
    v17 = v36;
    v18 = MLS.ClientContext.dataRepresentation.getter(v5, v16);
    if (v17)
    {

      (*(v11 + 8))(v9, v5);
      return result;
    }

    v13 = v18;
    v14 = v19;
    v36 = 0;
    (*(v11 + 8))(v9, v5);
    v2 = v31;
  }

  v21 = *(a1 + 40);
  v22 = &v2[*(a1 + 44)];
  v23 = *(v22 + 1);
  v34[0] = *v22;
  v34[1] = v23;
  v25 = *v22;
  v24 = *(v22 + 1);
  v35[0] = *(v22 + 2);
  *(v35 + 12) = *(v22 + 44);
  *(a2 + 92) = *(v22 + 44);
  v26 = *(v22 + 2);
  *(a2 + 64) = v24;
  *(a2 + 80) = v26;
  v27 = &v2[v21];
  v28 = *v27;
  v29 = v27[1];
  v30 = *&v2[*(a1 + 48)];
  *a2 = v32;
  *(a2 + 8) = v10;
  *(a2 + 16) = v13;
  *(a2 + 24) = v14;
  *(a2 + 32) = v28;
  *(a2 + 40) = v29;
  *(a2 + 48) = v25;
  *(a2 + 112) = v30;
  outlined copy of Data?(v28, v29);
  outlined init with copy of MLS.OutgoingEventState?(v34, v33, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);

  return result;
}

uint64_t MLS.IncomingFailureToDecryptContext_v2.description.getter(uint64_t a1)
{
  v30 = *(a1 + 16);
  v31 = type metadata accessor for Optional();
  v3 = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v5 = &v26 - v4;
  v6 = &v1[*(a1 + 40)];
  v7 = v6[1];
  v8 = 0xE000000000000000;
  if (v7 >> 60 == 15)
  {
    v28 = 0;
  }

  else
  {
    v9 = *v6;
    *&v42[0] = 0;
    *(&v42[0] + 1) = 0xE000000000000000;
    outlined copy of Data._Representation(v9, v7);
    _StringGuts.grow(_:)(16);

    strcpy(v42, ", signedData: ");
    HIBYTE(v42[0]) = -18;
    v10 = Data.description.getter();
    MEMORY[0x2667545A0](v10);

    outlined consume of Data?(v9, v7);
    v8 = *(&v42[0] + 1);
    v28 = *&v42[0];
  }

  v29 = v8;
  v11 = &v1[*(a1 + 44)];
  *v43 = *(v11 + 2);
  *&v43[12] = *(v11 + 44);
  v12 = *(v11 + 1);
  v42[0] = *v11;
  v42[1] = v12;
  v13 = v12;
  v14 = *v43;
  v15 = *&v43[24];
  v16 = 0xE000000000000000;
  if (v12 >> 16 != 0xFFFFFFFF || (*v43 & 0x3000000000000000) != 0)
  {
    v26 = *&v43[8];
    v27 = *&v43[16];
    v18 = *(v11 + 1);
    v40[0] = *v11;
    v40[1] = v18;
    v41[0] = *(v11 + 2);
    *(v41 + 12) = *(v11 + 44);
    v38 = 0;
    v39 = 0xE000000000000000;
    outlined init with copy of MLS.SigningInput(v40, &v32);
    _StringGuts.grow(_:)(24);
    MEMORY[0x2667545A0](0xD000000000000016, 0x80000002651E8B10);
    v19 = (v14 >> 60) & 3;
    if (v19)
    {
      v32 = v13;
      v33 = *(&v13 + 1);
      v34 = v14 & 0xCFFFFFFFFFFFFFFFLL;
      if (v19 == 1)
      {
        v35 = v26;
        v36 = v27;
        LOWORD(v37) = v15;
        v20 = MLS.EncryptedRCS.DisplayIMDNSigningInput.description.getter();
      }

      else
      {
        v20 = MLS.EncryptedRCS.FileTransferSigningInput.description.getter();
      }
    }

    else
    {
      v32 = v13;
      v33 = *(&v13 + 1);
      v34 = v14;
      v35 = v26;
      v36 = v27;
      v37 = v15;
      v20 = MLS.EncryptedRCS.DeliveryIMDNSigningInput.description.getter();
    }

    MEMORY[0x2667545A0](v20);

    outlined destroy of NSObject?(v42, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
    v17 = v38;
    v16 = v39;
  }

  else
  {
    v17 = 0;
  }

  *&v40[0] = 0;
  *(&v40[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(69);
  MEMORY[0x2667545A0](0xD00000000000002CLL, 0x80000002651E8AE0);
  MEMORY[0x2667545A0](*v1, *(v1 + 1));
  MEMORY[0x2667545A0](0xD000000000000011, 0x80000002651E8A90);
  v21 = v31;
  (*(v3 + 16))(v5, &v1[*(a1 + 36)], v31);
  v22 = (*(*(v30 - 8) + 48))(v5, 1);
  (*(v3 + 8))(v5, v21);
  if (v22 == 1)
  {
    v23 = 20302;
  }

  else
  {
    v23 = 5457241;
  }

  if (v22 == 1)
  {
    v24 = 0xE200000000000000;
  }

  else
  {
    v24 = 0xE300000000000000;
  }

  MEMORY[0x2667545A0](v23, v24);

  MEMORY[0x2667545A0](v28, v29);

  MEMORY[0x2667545A0](v17, v16);

  return *&v40[0];
}

uint64_t MLS.IncomingFailureToDecryptContext_v2.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614464656E676973 && a2 == 0xEA00000000006174 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002651E9C10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F4363697274656DLL && a2 == 0xEF726F7463656C6CLL)
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

uint64_t MLS.IncomingFailureToDecryptContext_v2.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x696669746E656469;
  v2 = 0x614464656E676973;
  v3 = 0xD000000000000012;
  if (a1 != 3)
  {
    v3 = 0x6F4363697274656DLL;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 0x6F43746E65696C63;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.IncomingFailureToDecryptContext_v2<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MLS.IncomingFailureToDecryptContext_v2.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingFailureToDecryptContext_v2<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingFailureToDecryptContext_v2<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.IncomingFailureToDecryptContext_v2.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = *(a2 + 16);
  v7 = *(a2 + 24);
  v23 = a2;
  v22[2] = v8;
  v22[1] = v7;
  type metadata accessor for MLS.IncomingFailureToDecryptContext_v2.CodingKeys(255, v8, v7, a4);
  swift_getWitnessTable();
  v9 = type metadata accessor for KeyedEncodingContainer();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v22 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v32[0]) = 0;
  v13 = v37;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v13)
  {
    v14 = v23;
    LOBYTE(v32[0]) = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v15 = (v5 + v14[10]);
    v16 = v15[1];
    v35 = *v15;
    v36 = v16;
    v34 = 2;
    outlined copy of Data?(v35, v16);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v35, v36);
    v17 = (v5 + v14[11]);
    v18 = v17[1];
    v32[0] = *v17;
    v32[1] = v18;
    v20 = *v17;
    v19 = v17[1];
    *v33 = v17[2];
    *&v33[12] = *(v17 + 44);
    v29 = v20;
    v30 = v19;
    v31[0] = v17[2];
    *(v31 + 12) = *(v17 + 44);
    v28 = 3;
    outlined init with copy of MLS.OutgoingEventState?(v32, v26, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
    lazy protocol witness table accessor for type MLS.SigningInput and conformance MLS.SigningInput();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v26[0] = v29;
    v26[1] = v30;
    *v27 = v31[0];
    *&v27[12] = *(v31 + 12);
    outlined destroy of NSObject?(v26, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
    v25 = *(v5 + v14[12]);
    v24 = 4;
    lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();

    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t MLS.IncomingFailureToDecryptContext_v2.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a4;
  v34 = type metadata accessor for Optional();
  v31 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v30 = &v27 - v7;
  type metadata accessor for MLS.IncomingFailureToDecryptContext_v2.CodingKeys(255, a2, a3, v8);
  swift_getWitnessTable();
  v36 = type metadata accessor for KeyedDecodingContainer();
  v33 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v10 = &v27 - v9;
  v32 = a3;
  v12 = type metadata accessor for MLS.IncomingFailureToDecryptContext_v2(0, a2, a3, v11);
  v28 = *(v12 - 1);
  MEMORY[0x28223BE20](v12);
  v14 = (&v27 - v13);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v35 = v10;
  v15 = v37;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v15)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v16 = v30;
  v17 = v14;
  v18 = v31;
  v37 = a1;
  v19 = v34;
  LOBYTE(v39) = 0;
  *v17 = KeyedDecodingContainer.decode(_:forKey:)();
  v17[1] = v20;
  v27 = v20;
  LOBYTE(v39) = 1;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v18 + 32))(v17 + v12[9], v16, v19);
  LOBYTE(v38) = 2;
  lazy protocol witness table accessor for type Data and conformance Data();
  v32 = 0;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v21 = v33;
  *(v17 + v12[10]) = v39;
  v43 = 3;
  lazy protocol witness table accessor for type MLS.SigningInput and conformance MLS.SigningInput();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v22 = v37;
  v23 = (v17 + v12[11]);
  v24 = v40;
  *v23 = v39;
  v23[1] = v24;
  v23[2] = v41[0];
  *(v23 + 44) = *(v41 + 12);
  v42 = 4;
  lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v21 + 8))(v35, v36);
  *(v17 + v12[12]) = v38;
  v25 = v28;
  (*(v28 + 16))(v29, v17, v12);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  return (*(v25 + 8))(v17, v12);
}

uint64_t MLS.IncomingFailureToDecryptContext_v2.signedData.getter(uint64_t a1)
{
  v2 = v1 + *(a1 + 40);
  v3 = *v2;
  outlined copy of Data?(*v2, *(v2 + 8));
  return v3;
}

uint64_t MLS.IncomingFailureToDecryptContext_v2.expectedSignedData.getter@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v3 = (v2 + *(a1 + 44));
  v4 = v3[1];
  v9[0] = *v3;
  v9[1] = v4;
  v10[0] = v3[2];
  v5 = v10[0];
  *(v10 + 12) = *(v3 + 44);
  v6 = *(v10 + 12);
  *a2 = v9[0];
  a2[1] = v4;
  a2[2] = v5;
  *(a2 + 44) = v6;
  return outlined init with copy of MLS.OutgoingEventState?(v9, &v8, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
}

double MLS.IncomingFailureToDecryptContext.metricCollector.getter@<D0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = *(v2 + *(a1 + 48));

  return result;
}

uint64_t MLS.IncomingFailureToDecryptContext.metricCollector.setter(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = *(a2 + 48);

  *(v2 + v4) = v3;
  return result;
}

void MLS.IncomingFailureToDecryptContext.expectedAdditionalAuthenticatedData.getter(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = (v2 + *(a1 + 52));
  v4 = *v3;
  v5 = v3[1];
  v6 = v3[2];
  v7 = v3[3];
  v8 = v3[4];
  v9 = v3[5];
  *a2 = *v3;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v8;
  a2[5] = v9;
  outlined copy of MLS.AdditionalAuthenticatedData?(v4, v5, v6, v7, v8, v9);
}

uint64_t MLS.IncomingFailureToDecryptContext.description.getter(uint64_t a1)
{
  v2 = v1;
  v25 = *(a1 + 16);
  v24 = type metadata accessor for Optional();
  v4 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v6 = &v22 - v5;
  v7 = &v1[*(a1 + 44)];
  *v37 = *(v7 + 2);
  *&v37[12] = *(v7 + 44);
  v8 = *(v7 + 1);
  v36[0] = *v7;
  v36[1] = v8;
  v9 = v8;
  v10 = *v37;
  v11 = *&v37[24];
  v12 = 0xE000000000000000;
  if (v8 >> 16 != 0xFFFFFFFF || (*v37 & 0x3000000000000000) != 0)
  {
    v22 = *&v37[8];
    v23 = *&v37[16];
    v14 = *(v7 + 1);
    v34[0] = *v7;
    v34[1] = v14;
    v35[0] = *(v7 + 2);
    *(v35 + 12) = *(v7 + 44);
    v32 = 0;
    v33 = 0xE000000000000000;
    outlined init with copy of MLS.SigningInput(v34, &v26);
    _StringGuts.grow(_:)(24);
    MEMORY[0x2667545A0](0xD000000000000016, 0x80000002651E8B10);
    v15 = (v10 >> 60) & 3;
    if (v15)
    {
      v26 = v9;
      v27 = *(&v9 + 1);
      v28 = v10 & 0xCFFFFFFFFFFFFFFFLL;
      if (v15 == 1)
      {
        v29 = v22;
        v30 = v23;
        LOWORD(v31) = v11;
        v16 = MLS.EncryptedRCS.DisplayIMDNSigningInput.description.getter();
      }

      else
      {
        v16 = MLS.EncryptedRCS.FileTransferSigningInput.description.getter();
      }
    }

    else
    {
      v26 = v9;
      v27 = *(&v9 + 1);
      v28 = v10;
      v29 = v22;
      v30 = v23;
      v31 = v11;
      v16 = MLS.EncryptedRCS.DeliveryIMDNSigningInput.description.getter();
    }

    MEMORY[0x2667545A0](v16);

    outlined destroy of NSObject?(v36, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
    v13 = v32;
    v12 = v33;
  }

  else
  {
    v13 = 0;
  }

  *&v34[0] = 0;
  *(&v34[0] + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(67);
  MEMORY[0x2667545A0](0xD00000000000002CLL, 0x80000002651E8AE0);
  MEMORY[0x2667545A0](*v1, *(v1 + 1));
  MEMORY[0x2667545A0](0xD000000000000011, 0x80000002651E8A90);
  v17 = v24;
  (*(v4 + 16))(v6, &v2[*(a1 + 36)], v24);
  v18 = (*(*(v25 - 8) + 48))(v6, 1);
  (*(v4 + 8))(v6, v17);
  if (v18 == 1)
  {
    v19 = 20302;
  }

  else
  {
    v19 = 5457241;
  }

  if (v18 == 1)
  {
    v20 = 0xE200000000000000;
  }

  else
  {
    v20 = 0xE300000000000000;
  }

  MEMORY[0x2667545A0](v19, v20);

  MEMORY[0x2667545A0](v13, v12);

  return *&v34[0];
}

uint64_t MLS.IncomingFailureToDecryptContext.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x614464656E676973 && a2 == 0xEA00000000006174 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x80000002651E9C10 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6F4363697274656DLL && a2 == 0xEF726F7463656C6CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000023 && 0x80000002651E9C30 == a2)
  {

    return 5;
  }

  else
  {
    v6 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

unint64_t MLS.IncomingFailureToDecryptContext.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  v1 = 0x696669746E656469;
  v2 = 0xD000000000000012;
  v3 = 0x6F4363697274656DLL;
  if (a1 != 4)
  {
    v3 = 0xD000000000000023;
  }

  if (a1 != 3)
  {
    v2 = v3;
  }

  v4 = 0x6F43746E65696C63;
  if (a1 != 1)
  {
    v4 = 0x614464656E676973;
  }

  if (a1)
  {
    v1 = v4;
  }

  if (a1 <= 2u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.IncomingFailureToDecryptContext<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MLS.IncomingFailureToDecryptContext.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingFailureToDecryptContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingFailureToDecryptContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.IncomingFailureToDecryptContext.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v31 = a2;
  v5 = *(a2 + 16);
  v29 = *(a2 + 24);
  v30 = v5;
  type metadata accessor for MLS.IncomingFailureToDecryptContext.CodingKeys(255, v5, v29, a4);
  swift_getWitnessTable();
  v6 = type metadata accessor for KeyedEncodingContainer();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v28 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = v32;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v46[0]) = 0;
  v11 = v51;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v11)
  {
    v12 = v31;
    LOBYTE(v46[0]) = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v13 = (v10 + *(v12 + 40));
    v14 = v13[1];
    v49 = *v13;
    v50 = v14;
    v48 = 2;
    outlined copy of Data?(v49, v14);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v49, v50);
    v15 = (v10 + *(v12 + 44));
    v16 = v15[1];
    v46[0] = *v15;
    v46[1] = v16;
    v18 = *v15;
    v17 = v15[1];
    *v47 = v15[2];
    *&v47[12] = *(v15 + 44);
    v43 = v18;
    v19 = v15[2];
    v44 = v17;
    v45[0] = v19;
    *(v45 + 12) = *(v15 + 44);
    v42 = 3;
    outlined init with copy of MLS.OutgoingEventState?(v46, v40, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
    lazy protocol witness table accessor for type MLS.SigningInput and conformance MLS.SigningInput();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v40[0] = v43;
    v40[1] = v44;
    *v41 = v45[0];
    *&v41[12] = *(v45 + 12);
    outlined destroy of NSObject?(v40, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
    v20 = v31;
    v33 = *(v10 + *(v31 + 48));
    v39 = 4;
    lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();

    KeyedEncodingContainer.encode<A>(_:forKey:)();

    v21 = (v10 + *(v20 + 52));
    v22 = v21[1];
    v23 = v21[2];
    v24 = v21[3];
    v25 = v21[4];
    v26 = v21[5];
    v33 = *v21;
    v34 = v22;
    v35 = v23;
    v36 = v24;
    v37 = v25;
    v38 = v26;
    v39 = 5;
    outlined copy of MLS.AdditionalAuthenticatedData?(v33, v22, v23, v24, v25, v26);
    lazy protocol witness table accessor for type MLS.AdditionalAuthenticatedData and conformance MLS.AdditionalAuthenticatedData();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of MLS.AdditionalAuthenticatedData?(v33, v34, v35, v36, v37, v38);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t MLS.IncomingFailureToDecryptContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a4;
  v39 = type metadata accessor for Optional();
  v38 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v37 = &v33 - v7;
  type metadata accessor for MLS.IncomingFailureToDecryptContext.CodingKeys(255, a2, a3, v8);
  swift_getWitnessTable();
  v42 = type metadata accessor for KeyedDecodingContainer();
  v36 = *(v42 - 8);
  MEMORY[0x28223BE20](v42);
  v10 = &v33 - v9;
  v40 = a3;
  v12 = type metadata accessor for MLS.IncomingFailureToDecryptContext(0, a2, a3, v11);
  v34 = *(v12 - 1);
  MEMORY[0x28223BE20](v12);
  v14 = (&v33 - v13);
  v15 = a1[3];
  v44 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  v41 = v10;
  v16 = v43;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v16)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(v44);
  }

  v17 = v39;
  v18 = v37;
  v19 = v36;
  v20 = v38;
  LOBYTE(v48) = 0;
  *v14 = KeyedDecodingContainer.decode(_:forKey:)();
  v14[1] = v22;
  LOBYTE(v48) = 1;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v20 + 32))(v14 + v12[9], v18, v17);
  LOBYTE(v45) = 2;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  *(v14 + v12[10]) = v48;
  v52 = 3;
  lazy protocol witness table accessor for type MLS.SigningInput and conformance MLS.SigningInput();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v43 = 0;
  v23 = (v14 + v12[11]);
  v24 = v49;
  *v23 = v48;
  v23[1] = v24;
  v23[2] = v50[0];
  *(v23 + 44) = *(v50 + 12);
  v51 = 4;
  lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();
  v25 = v43;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v43 = v25;
  if (v25)
  {
    (*(v19 + 8))(v41, v42);
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    v26 = 0;
  }

  else
  {
    *(v14 + v12[12]) = v45;
    v51 = 5;
    lazy protocol witness table accessor for type MLS.AdditionalAuthenticatedData and conformance MLS.AdditionalAuthenticatedData();
    v27 = v43;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v43 = v27;
    if (!v27)
    {
      (*(v19 + 8))(v41, v42);
      v30 = (v14 + v12[13]);
      v31 = v46;
      *v30 = v45;
      v30[1] = v31;
      v30[2] = v47;
      v32 = v34;
      (*(v34 + 16))(v35, v14, v12);
      __swift_destroy_boxed_opaque_existential_1Tm(v44);
      return (*(v32 + 8))(v14, v12);
    }

    (*(v19 + 8))(v41, v42);
    __swift_destroy_boxed_opaque_existential_1Tm(v44);
    v26 = 1;
  }

  (*(v20 + 8))(v14 + v12[9], v17);
  outlined consume of Data?(*(v14 + v12[10]), *(v14 + v12[10] + 8));
  v28 = (v14 + v12[11]);
  v29 = v28[1];
  v48 = *v28;
  v49 = v29;
  v50[0] = v28[2];
  *(v50 + 12) = *(v28 + 44);
  result = outlined destroy of NSObject?(&v48, &_s15SecureMessaging3MLSO12SigningInputVSgMd, &_s15SecureMessaging3MLSO12SigningInputVSgMR);
  if (v26)
  {
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingFailureToDecryptProcessedContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingFailureToDecryptProcessedContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.IncomingErrorMessageContext.identifier.getter()
{
  v1 = *v0;

  return v1;
}

double MLS.IncomingErrorMessageContext.metricCollector.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 16);

  return result;
}

uint64_t MLS.IncomingErrorMessageContext.metricCollector.setter(uint64_t *a1)
{
  v2 = *a1;

  *(v1 + 16) = v2;
  return result;
}

uint64_t MLS.IncomingErrorMessageContext.init(identifier:clientContext:metricCollector:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X3>, uint64_t *a6@<X8>)
{
  v11 = type metadata accessor for UUID();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = *a4;
  if (!a2)
  {
    UUID.init()();
    a1 = UUID.uuidString.getter();
    a2 = v18;
    (*(v12 + 8))(v14, v11);
    if (v15)
    {
      goto LABEL_3;
    }

LABEL_5:
    v15 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging15MetricCollectorV5EventVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    goto LABEL_3;
  }

  if (!v15)
  {
    goto LABEL_5;
  }

LABEL_3:
  v16 = type metadata accessor for Optional();
  result = (*(*(v16 - 8) + 8))(a3, v16);
  *a6 = a1;
  a6[1] = a2;
  a6[2] = v15;
  return result;
}

unint64_t MLS.IncomingErrorMessageContext.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  _StringGuts.grow(_:)(43);

  MEMORY[0x2667545A0](v1, v2);
  MEMORY[0x2667545A0](41, 0xE100000000000000);
  return 0xD000000000000028;
}

uint64_t MLS.IncomingErrorMessageContext.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F4363697274656DLL && a2 == 0xEF726F7463656C6CLL)
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

uint64_t MLS.IncomingErrorMessageContext.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x6F4363697274656DLL;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.IncomingErrorMessageContext<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MLS.IncomingErrorMessageContext.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingErrorMessageContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingErrorMessageContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.IncomingErrorMessageContext.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MLS.IncomingErrorMessageContext.CodingKeys(255, *(a2 + 16), *(a2 + 24), a4);
  swift_getWitnessTable();
  v6 = type metadata accessor for KeyedEncodingContainer();
  v16 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v13 - v7;
  v9 = *(v4 + 8);
  v14 = *(v4 + 16);
  v15 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v20 = 0;
  v10 = v17;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v10)
  {
    return (*(v16 + 8))(v8, v6);
  }

  v12 = v16;
  v18 = v14;
  v19 = 1;
  lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();

  KeyedEncodingContainer.encode<A>(_:forKey:)();

  return (*(v12 + 8))(v8, v6);
}

uint64_t MLS.IncomingErrorMessageContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v18[0] = a4;
  type metadata accessor for MLS.IncomingErrorMessageContext.CodingKeys(255, a2, a3, a5);
  swift_getWitnessTable();
  v7 = type metadata accessor for KeyedDecodingContainer();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v18 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v5)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v11 = v18[0];
  v20 = 0;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v14 = v13;
  v15 = v12;
  v19 = 1;
  lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v8 + 8))(v10, v7);
  v16 = v18[1];
  *v11 = v15;
  v11[1] = v14;
  v11[2] = v16;

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t MLS.IncomingErrorMessageProcessedContext.init(metricCollector:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a1;
  (*(*(a2 - 8) + 56))(a4, 1, 1, a2);
  result = type metadata accessor for MLS.IncomingErrorMessageProcessedContext(0, a2, a3, v8);
  *(a4 + *(result + 36)) = v7;
  return result;
}

uint64_t MLS.IncomingErrorMessageProcessedContext.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F4363697274656DLL && a2 == 0xEF726F7463656C6CLL)
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

uint64_t MLS.IncomingErrorMessageProcessedContext.CodingKeys.stringValue.getter(char a1)
{
  if (a1)
  {
    return 0x6F4363697274656DLL;
  }

  else
  {
    return 0x6F43746E65696C63;
  }
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLS.GroupDeletionContext<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, void, void, void))
{
  Hasher.init(_seed:)();
  a4(v8, *v4, *(a2 + 16), *(a2 + 24));
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.IncomingErrorMessageProcessedContext<A>.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = MLS.IncomingErrorMessageProcessedContext.CodingKeys.init(stringValue:)(a1, a2);
  *a3 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingErrorMessageProcessedContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingErrorMessageProcessedContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.IncomingErrorMessageProcessedContext.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v14 = a2;
  v5 = *(a2 + 24);
  v16 = *(a2 + 16);
  type metadata accessor for MLS.IncomingErrorMessageProcessedContext.CodingKeys(255, v16, v5, a4);
  swift_getWitnessTable();
  v6 = type metadata accessor for KeyedEncodingContainer();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = v15;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v20 = 0;
  v11 = v17;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v11)
  {
    v18 = *(v10 + *(v14 + 36));
    v19 = 1;
    lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();

    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t MLS.IncomingErrorMessageProcessedContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v29 = a4;
  v7 = type metadata accessor for Optional();
  v30 = *(v7 - 8);
  v31 = v7;
  MEMORY[0x28223BE20](v7);
  v33 = &v26 - v8;
  type metadata accessor for MLS.IncomingErrorMessageProcessedContext.CodingKeys(255, a2, a3, v9);
  swift_getWitnessTable();
  v10 = type metadata accessor for KeyedDecodingContainer();
  v34 = *(v10 - 8);
  v35 = v10;
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - v11;
  v32 = a3;
  v14 = type metadata accessor for MLS.IncomingErrorMessageProcessedContext(0, a2, a3, v13);
  v28 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v16 = &v26 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v17 = v36;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v36 = a1;
  v18 = v16;
  v27 = v14;
  v20 = v30;
  v19 = v31;
  v39 = 0;
  v21 = v33;
  v22 = v35;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v20 + 32))(v18, v21, v19);
  v38 = 1;
  lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v34 + 8))(v12, v22);
  v24 = v27;
  v23 = v28;
  *&v18[*(v27 + 36)] = v37;
  (*(v23 + 16))(v29, v18, v24);
  __swift_destroy_boxed_opaque_existential_1Tm(v36);
  return (*(v23 + 8))(v18, v24);
}

uint64_t MLS.IncomingGroupNameContext.description.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v12 - v6;
  v12[0] = 0;
  v12[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(58);
  MEMORY[0x2667545A0](0xD000000000000025, 0x80000002651E8AB0);
  MEMORY[0x2667545A0](*v1, *(v1 + 1));
  MEMORY[0x2667545A0](0xD000000000000011, 0x80000002651E8A90);
  (*(v5 + 16))(v7, &v1[*(a1 + 36)], v4);
  v8 = (*(*(v3 - 8) + 48))(v7, 1, v3);
  (*(v5 + 8))(v7, v4);
  if (v8 == 1)
  {
    v9 = 20302;
  }

  else
  {
    v9 = 5457241;
  }

  if (v8 == 1)
  {
    v10 = 0xE200000000000000;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  MEMORY[0x2667545A0](v9, v10);

  return v12[0];
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingGroupNameContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingGroupNameContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.GroupCreationProcessedContext.group.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2 + *(a1 + 36);
  v5 = *(v3 + 80);
  v15 = *(v3 + 64);
  v4 = v15;
  v16 = v5;
  v17 = *(v3 + 96);
  v6 = v17;
  v7 = *(v3 + 16);
  v12[0] = *v3;
  v12[1] = v7;
  v8 = *(v3 + 48);
  v13 = *(v3 + 32);
  v9 = v13;
  v14 = v8;
  *a2 = v12[0];
  *(a2 + 16) = v7;
  *(a2 + 96) = v6;
  *(a2 + 32) = v9;
  *(a2 + 48) = v8;
  *(a2 + 64) = v4;
  *(a2 + 80) = v5;
  return outlined init with copy of MLS.Group(v12, v11);
}

__n128 MLS.GroupCreationProcessedContext.init(clientContext:group:metricCollector:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void, uint64_t, uint64_t)@<X5>, uint64_t a7@<X8>)
{
  v13 = *a3;
  v14 = type metadata accessor for Optional();
  (*(*(v14 - 8) + 32))(a7, a1, v14);
  v15 = a6(0, a4, a5);
  v16 = a7 + *(v15 + 36);
  v17 = *(a2 + 80);
  *(v16 + 64) = *(a2 + 64);
  *(v16 + 80) = v17;
  *(v16 + 96) = *(a2 + 96);
  v18 = *(a2 + 16);
  *v16 = *a2;
  *(v16 + 16) = v18;
  result = *(a2 + 48);
  *(v16 + 32) = *(a2 + 32);
  *(v16 + 48) = result;
  *(a7 + *(v15 + 40)) = v13;
  return result;
}

uint64_t MLS.GroupCreationProcessedContext.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x70756F7267 && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F4363697274656DLL && a2 == 0xEF726F7463656C6CLL)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.IncomingGroupNameProcessedContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.IncomingGroupNameProcessedContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.GroupCreationProcessedContext.encode(to:)(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t), uint64_t a4)
{
  v6 = *(a2 + 24);
  v25 = *(a2 + 16);
  v24[0] = a2;
  v24[1] = v6;
  a3(255, v25);
  swift_getWitnessTable();
  v7 = type metadata accessor for KeyedEncodingContainer();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v24 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = v7;
  v12 = v24[2];
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v44[0] = 0;
  v13 = v45;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v13)
  {
    return (*(v8 + 8))(v10, v7);
  }

  v15 = v8;
  v16 = v24[0];
  v17 = (v12 + *(v24[0] + 36));
  v18 = v17[3];
  v19 = v17[5];
  v41 = v17[4];
  v42 = v19;
  v20 = v17[1];
  v38[0] = *v17;
  v38[1] = v20;
  v21 = v17[3];
  v23 = *v17;
  v22 = v17[1];
  v39 = v17[2];
  v40 = v21;
  v34 = v18;
  v35 = v41;
  v36 = v17[5];
  v31 = v23;
  v43 = *(v17 + 12);
  v37 = *(v17 + 12);
  v32 = v22;
  v33 = v39;
  v30 = 1;
  outlined init with copy of MLS.Group(v38, v28);
  lazy protocol witness table accessor for type MLS.Group and conformance MLS.Group();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v28[4] = v35;
  v28[5] = v36;
  v29 = v37;
  v28[0] = v31;
  v28[1] = v32;
  v28[2] = v33;
  v28[3] = v34;
  outlined destroy of MLS.Group(v28);
  v27 = *(v12 + *(v16 + 40));
  v26 = 2;
  lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();

  KeyedEncodingContainer.encode<A>(_:forKey:)();

  return (*(v15 + 8))(v10, v11);
}

uint64_t MLS.GroupCreationProcessedContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, uint64_t)@<X3>, uint64_t (*a6)(void, uint64_t, uint64_t)@<X5>, uint64_t a7@<X8>)
{
  v31 = a7;
  v33 = type metadata accessor for Optional();
  v32 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v35 = &v30 - v12;
  a4(255, a2, a3);
  swift_getWitnessTable();
  v13 = type metadata accessor for KeyedDecodingContainer();
  v37 = *(v13 - 8);
  v38 = v13;
  MEMORY[0x28223BE20](v13);
  v15 = &v30 - v14;
  v36 = a2;
  v34 = a3;
  v16 = a6(0, a2, a3);
  v30 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v30 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v39 = v15;
  v19 = v40;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v20 = v32;
  v21 = v33;
  v40 = a1;
  LOBYTE(v42) = 0;
  v22 = v35;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v20 + 32))(v18, v22, v21);
  v50 = 1;
  lazy protocol witness table accessor for type MLS.Group and conformance MLS.Group();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v23 = &v18[*(v16 + 36)];
  v24 = v47;
  *(v23 + 4) = v46;
  *(v23 + 5) = v24;
  *(v23 + 12) = v48;
  v25 = v43;
  *v23 = v42;
  *(v23 + 1) = v25;
  v26 = v45;
  *(v23 + 2) = v44;
  *(v23 + 3) = v26;
  v49 = 2;
  lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v27 = v40;
  (*(v37 + 8))(v39, v38);
  *&v18[*(v16 + 40)] = v41;
  v28 = v30;
  (*(v30 + 16))(v31, v18, v16);
  __swift_destroy_boxed_opaque_existential_1Tm(v27);
  return (*(v28 + 8))(v18, v16);
}

uint64_t MLS.GroupCreationContext_v2.clientContext.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 36);
  v5 = type metadata accessor for Optional();
  v6 = *(*(v5 - 8) + 16);

  return v6(a2, v2 + v4, v5);
}

unint64_t MLS.DowngradeContext.description.getter(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = type metadata accessor for Optional();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v12 - v6;
  v12 = 0;
  v13 = 0xE000000000000000;
  _StringGuts.grow(_:)(50);

  v12 = 0xD00000000000001DLL;
  v13 = 0x80000002651E8A70;
  MEMORY[0x2667545A0](*v1, *(v1 + 1));
  MEMORY[0x2667545A0](0xD000000000000011, 0x80000002651E8A90);
  (*(v5 + 16))(v7, &v1[*(a1 + 36)], v4);
  v8 = (*(*(v3 - 8) + 48))(v7, 1, v3);
  (*(v5 + 8))(v7, v4);
  if (v8 == 1)
  {
    v9 = 20302;
  }

  else
  {
    v9 = 5457241;
  }

  if (v8 == 1)
  {
    v10 = 0xE200000000000000;
  }

  else
  {
    v10 = 0xE300000000000000;
  }

  MEMORY[0x2667545A0](v9, v10);

  return v12;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.DowngradeContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.DowngradeContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.GroupOperationContext.encode(to:)(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  v6 = *(a2 + 16);
  v14[1] = *(a2 + 24);
  v14[2] = v6;
  a3(255);
  swift_getWitnessTable();
  v7 = type metadata accessor for KeyedEncodingContainer();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v14 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v11 = v14[3];
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = 0;
  v12 = v14[4];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v12)
  {
    v16 = 1;
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v14[5] = *(v11 + *(a2 + 40));
    v15 = 2;
    lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();

    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t MLS.GroupOperationContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, uint64_t)@<X3>, uint64_t (*a6)(void, uint64_t, uint64_t)@<X5>, uint64_t a7@<X8>)
{
  v29 = a7;
  v34 = type metadata accessor for Optional();
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v30 = &v26 - v12;
  a4(255, a2, a3);
  swift_getWitnessTable();
  v37 = type metadata accessor for KeyedDecodingContainer();
  v33 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v14 = &v26 - v13;
  v31 = a2;
  v35 = a3;
  v15 = a6(0, a2, a3);
  v28 = *(v15 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = (&v26 - v16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v36 = v14;
  v18 = v38;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v18)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v19 = v33;
  v38 = a1;
  v20 = v34;
  v42 = 0;
  *v17 = KeyedDecodingContainer.decode(_:forKey:)();
  v17[1] = v21;
  v26 = v21;
  v27 = v17;
  v41 = 1;
  v22 = v30;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v32 + 32))(v27 + *(v15 + 36), v22, v20);
  v40 = 2;
  lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v19 + 8))(v36, v37);
  v24 = v27;
  v23 = v28;
  *(v27 + *(v15 + 40)) = v39;
  (*(v23 + 16))(v29, v24, v15);
  __swift_destroy_boxed_opaque_existential_1Tm(v38);
  return (*(v23 + 8))(v24, v15);
}

uint64_t MLS.GroupCreationProcessedContext.clientContext.getter@<X0>(uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Optional();
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, v2, v4);
}

uint64_t key path getter for MLS.GroupOperationProcessedContext.eventSenderTask : <A>MLS.GroupOperationProcessedContext<A>@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t (*a3)(void, void, void)@<X3>, uint64_t (*a4)(uint64_t)@<X4>, uint64_t *a5@<X8>)
{
  v7 = a3(0, *(a1 + a2 - 16), *(a1 + a2 - 8));
  *a5 = a4(v7);
}

uint64_t key path setter for MLS.GroupOperationProcessedContext.eventSenderTask : <A>MLS.GroupOperationProcessedContext<A>(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void, void, void), uint64_t (*a6)(uint64_t, uint64_t))
{
  v7 = a5(0, *(a3 + a4 - 16), *(a3 + a4 - 8));

  return a6(v8, v7);
}

uint64_t MLS.GroupOperationProcessedContext.init(clientContext:metricCollector:eventSenderTask:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t (*a6)(void, uint64_t, uint64_t)@<X5>, uint64_t a7@<X8>)
{
  v10 = *a2;
  v11 = a6(0, a4, a5);
  *(a7 + *(v11 + 40)) = 0;
  v12 = type metadata accessor for Optional();
  v16 = *(v12 - 8);
  (*(v16 + 16))(a7, a1, v12);
  *(a7 + *(v11 + 36)) = v10;
  v13 = *(v11 + 40);

  *(a7 + v13) = a3;
  v14 = *(v16 + 8);

  return v14(a1, v12);
}

uint64_t MLS.GroupOperationProcessedContext.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6F43746E65696C63 && a2 == 0xED0000747865746ELL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6F4363697274656DLL && a2 == 0xEF726F7463656C6CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6553746E657665 && a2 == 0xEF6B736154726564)
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

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLS.GroupCreationContext_v2<A>.CodingKeys(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *, void, void, void))
{
  Hasher.init(_seed:)();
  a4(v8, *v4, *(a2 + 16), *(a2 + 24));
  return Hasher._finalize()();
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.DowngradeProcessedContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE718](a1, WitnessTable);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.DowngradeProcessedContext<A>.CodingKeys(uint64_t a1)
{
  WitnessTable = swift_getWitnessTable();

  return MEMORY[0x2821FE720](a1, WitnessTable);
}

uint64_t MLS.GroupOperationProcessedContext.encode(to:)(void *a1, uint64_t a2, uint64_t (*a3)(uint64_t, void, uint64_t), uint64_t a4)
{
  v13 = a2;
  a3(255, *(a2 + 16), *(a2 + 24));
  swift_getWitnessTable();
  v5 = type metadata accessor for KeyedEncodingContainer();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v9 = v14;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = 0;
  v10 = v15;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v10)
  {
    v16 = *(v9 + *(v13 + 36));
    v17 = 1;
    lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();

    KeyedEncodingContainer.encode<A>(_:forKey:)();

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScTyyts5NeverOGMd, &_sScTyyts5NeverOGMR);
    destructiveProjectEnumData for KDSRegistration.XPCRequest.RequestType();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t MLS.GroupOperationProcessedContext.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t (*a4)(uint64_t, uint64_t, uint64_t)@<X3>, uint64_t (*a6)(void, uint64_t, uint64_t)@<X5>, uint64_t a7@<X8>)
{
  v31 = a7;
  v12 = type metadata accessor for Optional();
  v33 = *(v12 - 8);
  v34 = v12;
  MEMORY[0x28223BE20](v12);
  v37 = &v30 - v13;
  a4(255, a2, a3);
  swift_getWitnessTable();
  v39 = type metadata accessor for KeyedDecodingContainer();
  v32 = *(v39 - 8);
  MEMORY[0x28223BE20](v39);
  v15 = &v30 - v14;
  v35 = a3;
  v36 = a2;
  v16 = a6(0, a2, a3);
  v30 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v30 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v38 = v15;
  v19 = v40;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v21 = v32;
  v20 = v33;
  v40 = v18;
  v22 = a1;
  v23 = v34;
  LOBYTE(v42) = 0;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v24 = v40;
  (*(v20 + 32))(v40, v37, v23);
  v41 = 1;
  lazy protocol witness table accessor for type MetricCollector and conformance MetricCollector();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v37 = v16;
  *&v24[*(v16 + 36)] = v42;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScTyyts5NeverOGMd, &_sScTyyts5NeverOGMR);
  KeyedDecodingContainer.decode<A>(_:forKey:)(v25, &v42);
  v26 = v37;
  v27 = *(v37 + 10);
  (*(v21 + 8))(v38, v39);
  *&v24[v27] = v42;
  v28 = v30;
  (*(v30 + 16))(v31, v24, v26);
  __swift_destroy_boxed_opaque_existential_1Tm(v22);
  return (*(v28 + 8))(v24, v26);
}

uint64_t protocol witness for MLS.OperationContext.clientContext.getter in conformance <> MLS.IncomingMessageContext<A>()
{
  v1 = *(v0 + 16);
  outlined copy of Data?(v1, *(v0 + 24));
  return v1;
}

double _s15SecureMessaging3MLSO26GroupNameEncryptionContextVy_xq_GAC09OperationG0AaC9AllMemberORsz10Foundation4DataVRs_rlAcGP15metricCollectorAA06MetricN0VvgTW_0@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 32);

  return result;
}

double protocol witness for MLS.OperationContext.metricCollector.getter in conformance <> MLS.EncryptionContext<A, B>@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 144);

  return result;
}

double protocol witness for MLS.OperationContext.metricCollector.getter in conformance <> MLS.IncomingMessageContext<A>@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 160);

  return result;
}

uint64_t _s15SecureMessaging3MLSO30GroupOperationProcessedContextVy_xGAC0efG0AA10Foundation4DataVRszrlAcGP06clientG015metricCollector15eventSenderTaskxAJSg_AA06MetricL0VScTyyts5NeverOGSgtcfCTW_0@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v5 = *a3;
  *a5 = result;
  a5[1] = a2;
  a5[2] = v5;
  a5[3] = a4;
  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_15SecureMessaging15KDSRegistrationO8Listener_pSgyYbcTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return MEMORY[0x277D84F98];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi15SecureMessaging15KDSRegistrationO8Listener_pSgyYbcGMd, _ss18_DictionaryStorageCySi15SecureMessaging15KDSRegistrationO8Listener_pSgyYbcGMR);
  v3 = static _DictionaryStorage.allocate(capacity:)();
  v4 = *(a1 + 32);
  v13 = *(a1 + 40);
  result = specialized __RawDictionaryStorage.find<A>(_:)(v4);
  if (v6)
  {
LABEL_7:
    __break(1u);
LABEL_8:

    return v3;
  }

  v7 = (a1 + 64);
  while (1)
  {
    *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
    *(v3[6] + 8 * result) = v4;
    *(v3[7] + 16 * result) = v13;
    v8 = v3[2];
    v9 = __OFADD__(v8, 1);
    v10 = v8 + 1;
    if (v9)
    {
      break;
    }

    v3[2] = v10;
    if (!--v1)
    {
      goto LABEL_8;
    }

    v11 = (v7 + 24);
    v4 = *(v7 - 1);
    v13 = *v7;

    result = specialized __RawDictionaryStorage.find<A>(_:)(v4);
    v7 = v11;
    if (v12)
    {
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

BOOL specialized static MLS.GroupDetails.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = *a2;
  v4 = a2[1];
  if (v2 >> 60 == 15)
  {
    if (v4 >> 60 == 15)
    {
      outlined copy of Data?(*a1, v2);
      outlined copy of Data?(v5, v4);
      outlined consume of Data?(v3, v2);
      return 1;
    }

    goto LABEL_5;
  }

  if (v4 >> 60 == 15)
  {
LABEL_5:
    outlined copy of Data?(*a1, v2);
    outlined copy of Data?(v5, v4);
    outlined consume of Data?(v3, v2);
    outlined consume of Data?(v5, v4);
    return 0;
  }

  outlined copy of Data?(*a1, v2);
  outlined copy of Data?(v5, v4);
  v7 = specialized static Data.== infix(_:_:)(v3, v2, v5, v4);
  outlined consume of Data?(v5, v4);
  outlined consume of Data?(v3, v2);
  return v7;
}

BOOL specialized static MLS.Group.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a1 + 6);
  v5 = a1[4];
  v4 = a1[5];
  v7 = a1[6];
  v6 = a1[7];
  v9 = a1[8];
  v8 = a1[9];
  v11 = a1[10];
  v10 = a1[11];
  v12 = a1[12];
  v13 = *(a2 + 16);
  v14 = *(a2 + 24);
  v16 = *(a2 + 32);
  v15 = *(a2 + 40);
  v17 = *(a2 + 48);
  v31 = *(a2 + 96);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    result = 0;
    if (v2 == v13 && v3 == v14)
    {
      v32 = *(a2 + 64);
      v33 = *(a2 + 56);
      v34 = v9;
      v35 = v6;
      v27 = *(a2 + 80);
      v28 = *(a2 + 72);
      v29 = v11;
      v30 = v8;
      v24 = *(a2 + 88);
      v25 = v10;
      v26 = v12;
      goto LABEL_9;
    }
  }

  else
  {
    v32 = *(a2 + 64);
    v33 = *(a2 + 56);
    v34 = a1[8];
    v35 = a1[7];
    v27 = *(a2 + 80);
    v28 = *(a2 + 72);
    v29 = a1[10];
    v30 = a1[9];
    v24 = *(a2 + 88);
    v25 = a1[11];
    v26 = a1[12];
    v19 = _stringCompareWithSmolCheck(_:_:expecting:)();
    result = 0;
    if ((v19 & 1) != 0 && v2 == v13 && v3 == v14)
    {
LABEL_9:
      if (v5 != v16)
      {
        return result;
      }

      if (!specialized static Data.== infix(_:_:)(v4, v7, v15, v17) || !specialized static Data.== infix(_:_:)(v35, v34, v33, v32) || !specialized static Data.== infix(_:_:)(v30, v29, v28, v27))
      {
        return 0;
      }

      if (v26 >> 60 == 15)
      {
        v20 = v31;
        v21 = v25;
        if (v31 >> 60 == 15)
        {
          outlined copy of Data?(v25, v26);
          outlined copy of Data?(v24, v31);
          outlined consume of Data?(v25, v26);
          return 1;
        }
      }

      else
      {
        v20 = v31;
        v21 = v25;
        if (v31 >> 60 != 15)
        {
          outlined copy of Data?(v25, v26);
          outlined copy of Data?(v24, v31);
          v23 = specialized static Data.== infix(_:_:)(v25, v26, v24, v31);
          outlined consume of Data?(v24, v31);
          outlined consume of Data?(v25, v26);
          return v23;
        }
      }

      v22 = v21;
      outlined copy of Data?(v21, v26);
      outlined copy of Data?(v24, v20);
      outlined consume of Data?(v22, v26);
      outlined consume of Data?(v24, v20);
      return 0;
    }
  }

  return result;
}

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVTt0g5Tf4g_n(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi_15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVtMd, &_sSi_15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVtMR);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = (&v20 - v4);
  v6 = *(a1 + 16);
  if (v6)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVGMd, &_ss18_DictionaryStorageCySi15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);
    while (1)
    {
      outlined init with copy of MLS.OutgoingEventState?(v9, v5, &_sSi_15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVtMd, &_sSi_15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVtMR);
      v11 = *v5;
      result = specialized __RawDictionaryStorage.find<A>(_:)(*v5);
      if (v13)
      {
        break;
      }

      v14 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v7[6] + 8 * result) = v11;
      v15 = v7[7];
      v16 = type metadata accessor for XPCUtils.XPCInterfaceRequest(0);
      result = outlined init with take of XPCUtils.XPCInterfaceRequest(v5 + v8, v15 + *(*(v16 - 8) + 72) * v14, type metadata accessor for XPCUtils.XPCInterfaceRequest);
      v17 = v7[2];
      v18 = __OFADD__(v17, 1);
      v19 = v17 + 1;
      if (v18)
      {
        goto LABEL_10;
      }

      v7[2] = v19;
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

unint64_t _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_15SecureMessaging8XPCUtilsO10XPCRequest_pTt0g5Tf4g_n(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySi15SecureMessaging8XPCUtilsO10XPCRequest_pGMd, &_ss18_DictionaryStorageCySi15SecureMessaging8XPCUtilsO10XPCRequest_pGMR);
    v3 = static _DictionaryStorage.allocate(capacity:)();
    for (i = a1 + 32; ; i += 48)
    {
      outlined init with copy of MLS.OutgoingEventState?(i, &v11, &_sSi_15SecureMessaging8XPCUtilsO10XPCRequest_ptMd, &_sSi_15SecureMessaging8XPCUtilsO10XPCRequest_ptMR);
      v5 = v11;
      result = specialized __RawDictionaryStorage.find<A>(_:)(v11);
      if (v7)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      *(v3[6] + 8 * result) = v5;
      result = outlined init with take of MLS.KeyUpdatePolicy(&v12, v3[7] + 40 * result);
      v8 = v3[2];
      v9 = __OFADD__(v8, 1);
      v10 = v8 + 1;
      if (v9)
      {
        goto LABEL_10;
      }

      v3[2] = v10;
      if (!--v1)
      {
        return v3;
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