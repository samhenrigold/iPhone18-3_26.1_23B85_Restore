uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.EncryptedRCS.AdditionalAuthenticatedData.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO27AdditionalAuthenticatedDataV10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO27AdditionalAuthenticatedDataV10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v20 = *(v1 + 16);
  v9 = *(v1 + 24);
  v15 = *(v1 + 32);
  v16 = v9;
  v14 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  outlined copy of Data._Representation(v7, v8);
  lazy protocol witness table accessor for type MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = v7;
  v19 = v8;
  v21 = 0;
  lazy protocol witness table accessor for type Data and conformance Data();
  v10 = v17;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data._Representation(v18, v19);
  if (!v10)
  {
    v11 = v15;
    v12 = v14;
    LOBYTE(v18) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v18) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v18 = v11;
    v19 = v12;
    v21 = 3;
    outlined copy of Data?(v11, v12);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v18, v19);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t MLS.EncryptedRCS.AdditionalAuthenticatedData.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO27AdditionalAuthenticatedDataV10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO27AdditionalAuthenticatedDataV10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v15 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v20 = 0;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v9 = v17;
  v16 = v18;
  LOBYTE(v17) = 1;
  v19 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v17) = 2;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v20 = 3;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v10 = v17;
  v11 = v18;
  v12 = v9;
  *a2 = v9;
  v13 = v16;
  *(a2 + 8) = v16;
  *(a2 + 16) = v19;
  *(a2 + 24) = v15;
  *(a2 + 32) = v10;
  *(a2 + 40) = v11;
  outlined copy of Data._Representation(v12, v13);
  outlined copy of Data?(v10, v11);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  outlined consume of Data._Representation(v12, v13);
  return outlined consume of Data?(v10, v11);
}

uint64_t MLS.EncryptedRCS.SigningInputError.underlyingErrorDescription.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 8) = a1;
  *(v2 + 16) = a2;
  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance MLS.EncryptedRCS.SigningInputError.ErrorType@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized MLS.EncryptedRCS.SigningInputError.ErrorType.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for Error._code.getter in conformance MLS.EncryptedRCS.SigningInputError.ErrorType(uint64_t a1, uint64_t a2)
{
  v4 = lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInputError.ErrorType and conformance MLS.EncryptedRCS.SigningInputError.ErrorType();
  v5 = lazy protocol witness table accessor for type Int and conformance Int();

  return MEMORY[0x2821FE2D0](a1, a2, v4, v5);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance MLS.EncryptedRCS.SigningInputError.CodingKeys()
{
  if (*v0)
  {
    return 0xD00000000000001ALL;
  }

  else
  {
    return 1701869940;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.EncryptedRCS.SigningInputError.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701869940 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000002651E8EB0 == a2)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.EncryptedRCS.SigningInputError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInputError.CodingKeys and conformance MLS.EncryptedRCS.SigningInputError.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.EncryptedRCS.SigningInputError.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInputError.CodingKeys and conformance MLS.EncryptedRCS.SigningInputError.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.EncryptedRCS.SigningInputError.encode(to:)(void *a1, char a2, uint64_t a3, uint64_t a4)
{
  v12[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO17SigningInputErrorV10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO17SigningInputErrorV10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMR);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInputError.CodingKeys and conformance MLS.EncryptedRCS.SigningInputError.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  v14 = 0;
  lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInputError.ErrorType and conformance MLS.EncryptedRCS.SigningInputError.ErrorType();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v13 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t protocol witness for VersatileError.underlyingErrorDescription.getter in conformance MLS.EncryptedRCS.SigningInputError()
{
  v1 = *(v0 + 8);

  return v1;
}

_BYTE *protocol witness for VersatileError.init(type:underlyingErrorDescription:) in conformance MLS.EncryptedRCS.SigningInputError@<X0>(_BYTE *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = *result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t protocol witness for Error._domain.getter in conformance MLS.EncryptedRCS.SigningInputError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInputError and conformance MLS.EncryptedRCS.SigningInputError();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t protocol witness for Error._code.getter in conformance MLS.EncryptedRCS.SigningInputError(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInputError and conformance MLS.EncryptedRCS.SigningInputError();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance MLS.EncryptedRCS.SigningInputError@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = specialized MLS.EncryptedRCS.SigningInputError.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t MLS.EncryptedRCS.SigningInput.messageID.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t MLS.EncryptedRCS.SigningInput.contentType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  v5 = *(v1 + 40);
  v6 = *(v1 + 48);
  v7 = *(v1 + 56);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  *(a1 + 32) = v6;
  *(a1 + 40) = v7;
  return outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v2, v3, v4, v5, v6, v7, outlined copy of Data._Representation, outlined copy of Data?);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys()
{
  v1 = 0x4979616C70736964;
  if (*v0 != 1)
  {
    v1 = 0x6E617254656C6966;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x79726576696C6564;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.EncryptedRCS.SigningInput.ContentType.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO12SigningInputV11ContentTypeO22FileTransferCodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO12SigningInputV11ContentTypeO22FileTransferCodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMR);
  v34 = *(v3 - 8);
  v35 = v3;
  MEMORY[0x28223BE20](v3);
  v33 = &v28 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO12SigningInputV11ContentTypeO21DisplayIMDNCodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO12SigningInputV11ContentTypeO21DisplayIMDNCodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMR);
  v31 = *(v5 - 8);
  v32 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v28 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO12SigningInputV11ContentTypeO22DeliveryIMDNCodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO12SigningInputV11ContentTypeO22DeliveryIMDNCodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMR);
  v9 = *(v8 - 8);
  v29 = v8;
  v30 = v9;
  MEMORY[0x28223BE20](v8);
  v11 = &v28 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO12SigningInputV11ContentTypeO10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO12SigningInputV11ContentTypeO10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMR);
  v40 = *(v12 - 8);
  v41 = v12;
  MEMORY[0x28223BE20](v12);
  v14 = &v28 - v13;
  v15 = v1[1];
  v38 = *v1;
  v39 = v15;
  v16 = v1[2];
  v17 = v1[4];
  v36 = v1[3];
  v37 = v17;
  v18 = *(v1 + 10);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v19 = (v16 >> 60) & 3;
  if (v19)
  {
    if (v19 == 1)
    {
      LOBYTE(v42) = 1;
      lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys();
      v20 = v41;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v42 = v38;
      v43 = v39;
      v44 = v16 & 0xCFFFFFFFFFFFFFFFLL;
      v45 = v36;
      v46 = v37;
      LOWORD(v47) = v18;
      lazy protocol witness table accessor for type MLS.EncryptedRCS.DisplayIMDNSigningInput and conformance MLS.EncryptedRCS.DisplayIMDNSigningInput();
      v21 = v32;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v31 + 8))(v7, v21);
    }

    else
    {
      v25 = v16 & 0xCFFFFFFFFFFFFFFFLL;
      LOBYTE(v42) = 2;
      lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys();
      v26 = v33;
      v20 = v41;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v42 = v38;
      v43 = v39;
      v44 = v25;
      lazy protocol witness table accessor for type MLS.EncryptedRCS.FileTransferSigningInput and conformance MLS.EncryptedRCS.FileTransferSigningInput();
      v27 = v35;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v34 + 8))(v26, v27);
    }

    return (*(v40 + 8))(v14, v20);
  }

  else
  {
    LOBYTE(v42) = 0;
    lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys();
    v22 = v41;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v42 = v38;
    v43 = v39;
    v44 = v16;
    v45 = v36;
    v46 = v37;
    v47 = v18;
    lazy protocol witness table accessor for type MLS.EncryptedRCS.DeliveryIMDNSigningInput and conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput();
    v23 = v29;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v30 + 8))(v11, v23);
    return (*(v40 + 8))(v14, v22);
  }
}

uint64_t MLS.EncryptedRCS.SigningInput.ContentType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO12SigningInputV11ContentTypeO22FileTransferCodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO12SigningInputV11ContentTypeO22FileTransferCodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMR);
  v41 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v42 = &v37 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO12SigningInputV11ContentTypeO21DisplayIMDNCodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO12SigningInputV11ContentTypeO21DisplayIMDNCodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMR);
  v5 = *(v4 - 8);
  v39 = v4;
  v40 = v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v37 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO12SigningInputV11ContentTypeO22DeliveryIMDNCodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO12SigningInputV11ContentTypeO22DeliveryIMDNCodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMR);
  v38 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v37 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO12SigningInputV11ContentTypeO10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO12SigningInputV11ContentTypeO10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMR);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v37 - v13;
  v15 = a1[3];
  v54 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys();
  v16 = v44;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v16)
  {
    v44 = v12;
    v18 = v42;
    v17 = v43;
    v19 = KeyedDecodingContainer.allKeys.getter();
    v20 = (2 * *(v19 + 16)) | 1;
    v50 = v19;
    v51 = v19 + 32;
    v52 = 0;
    v53 = v20;
    v21 = specialized Collection<>.popFirst()();
    if (v21 == 3 || v52 != v53 >> 1)
    {
      v25 = type metadata accessor for DecodingError();
      swift_allocError();
      v26 = v14;
      v28 = v27;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      *v28 = &type metadata for MLS.EncryptedRCS.SigningInput.ContentType;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v25 - 8) + 104))(v28, *MEMORY[0x277D84160], v25);
      swift_willThrow();
      (*(v44 + 8))(v26, v11);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v21)
      {
        if (v21 == 1)
        {
          LOBYTE(v45) = 1;
          lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys();
          v22 = v7;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v23 = v44;
          lazy protocol witness table accessor for type MLS.EncryptedRCS.DisplayIMDNSigningInput and conformance MLS.EncryptedRCS.DisplayIMDNSigningInput();
          v24 = v39;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v40 + 8))(v22, v24);
          (*(v23 + 8))(v14, v11);
          swift_unknownObjectRelease();
          v32 = v45;
          v33 = v46;
          v34 = v48;
          v35 = v49;
          v36 = v47 | 0x1000000000000000;
        }

        else
        {
          LOBYTE(v45) = 2;
          lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys();
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v30 = v44;
          lazy protocol witness table accessor for type MLS.EncryptedRCS.FileTransferSigningInput and conformance MLS.EncryptedRCS.FileTransferSigningInput();
          v31 = v37;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v41 + 8))(v18, v31);
          (*(v30 + 8))(v14, v11);
          swift_unknownObjectRelease();
          v35 = 0;
          v32 = v45;
          v33 = v46;
          v36 = v47 | 0x2000000000000000;
          v34 = 0uLL;
        }
      }

      else
      {
        LOBYTE(v45) = 0;
        lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        lazy protocol witness table accessor for type MLS.EncryptedRCS.DeliveryIMDNSigningInput and conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput();
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v38 + 8))(v10, v8);
        (*(v44 + 8))(v14, v11);
        swift_unknownObjectRelease();
        v32 = v45;
        v33 = v46;
        v36 = v47;
        v34 = v48;
        v35 = v49;
      }

      *v17 = v32;
      *(v17 + 8) = v33;
      *(v17 + 16) = v36;
      *(v17 + 24) = v34;
      *(v17 + 40) = v35;
    }
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v54);
}

unint64_t MLS.EncryptedRCS.SigningInput.description.getter(uint64_t a1)
{
  v2 = (*(v1 + 32) >> 60) & 3;
  if (!v2)
  {
    return MLS.EncryptedRCS.DeliveryIMDNSigningInput.description.getter();
  }

  if (v2 == 1)
  {
    return MLS.EncryptedRCS.DisplayIMDNSigningInput.description.getter();
  }

  return MLS.EncryptedRCS.FileTransferSigningInput.description.getter();
}

uint64_t MLS.EncryptedRCS.DeliveryIMDNSigningInput.description.getter()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  outlined copy of Data?(v2, v1);
  _StringGuts.grow(_:)(102);
  MEMORY[0x2667545A0](0xD000000000000016, 0x80000002651E8DD0);
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2667545A0](v3);

  MEMORY[0x2667545A0](0x67617373656D202CLL, 0xED0000203A444965);
  v4 = Data.description.getter();
  MEMORY[0x2667545A0](v4);

  MEMORY[0x2667545A0](0xD000000000000015, 0x80000002651E8DF0);
  if (v1 >> 60 == 15)
  {
    v2 = 0;
    v1 = 0xC000000000000000;
  }

  v5 = Data.description.getter();
  MEMORY[0x2667545A0](v5);

  outlined consume of Data._Representation(v2, v1);
  MEMORY[0x2667545A0](0xD000000000000011, 0x80000002651E8770);
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2667545A0](v6);

  MEMORY[0x2667545A0](0xD000000000000012, 0x80000002651E8E10);
  v7 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2667545A0](v7);

  MEMORY[0x2667545A0](41, 0xE100000000000000);
  return 0;
}

uint64_t MLS.EncryptedRCS.DisplayIMDNSigningInput.description.getter()
{
  v2 = *(v0 + 24);
  v1 = *(v0 + 32);
  outlined copy of Data?(v2, v1);
  _StringGuts.grow(_:)(81);
  MEMORY[0x2667545A0](0xD000000000000015, 0x80000002651E8E30);
  v3 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2667545A0](v3);

  MEMORY[0x2667545A0](0x67617373656D202CLL, 0xED0000203A444965);
  v4 = Data.description.getter();
  MEMORY[0x2667545A0](v4);

  MEMORY[0x2667545A0](0xD000000000000015, 0x80000002651E8DF0);
  if (v1 >> 60 == 15)
  {
    v2 = 0;
    v1 = 0xC000000000000000;
  }

  v5 = Data.description.getter();
  MEMORY[0x2667545A0](v5);

  outlined consume of Data._Representation(v2, v1);
  MEMORY[0x2667545A0](0xD000000000000011, 0x80000002651E8E50);
  v6 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2667545A0](v6);

  MEMORY[0x2667545A0](41, 0xE100000000000000);
  return 0;
}

unint64_t MLS.EncryptedRCS.FileTransferSigningInput.description.getter()
{
  _StringGuts.grow(_:)(40);

  v0 = dispatch thunk of CustomStringConvertible.description.getter();
  MEMORY[0x2667545A0](v0);

  MEMORY[0x2667545A0](0x67617373656D202CLL, 0xED0000203A444965);
  v1 = Data.description.getter();
  MEMORY[0x2667545A0](v1);

  MEMORY[0x2667545A0](41, 0xE100000000000000);
  return 0xD000000000000016;
}

__n128 MLS.EncryptedRCS.SigningInput.init(displayIMDN:messageID:)@<Q0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v4 = *(a1 + 1);
  v5 = a1[20];
  v6 = *(a1 + 2) | 0x1000000000000000;
  *(a4 + 16) = *a1;
  *(a4 + 24) = v4;
  *(a4 + 32) = v6;
  result = *(a1 + 12);
  *(a4 + 40) = result;
  *(a4 + 56) = v5;
  *a4 = a2;
  *(a4 + 8) = a3;
  return result;
}

double MLS.EncryptedRCS.SigningInput.init(deliveryIMDN:)@<D0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 10);
  *(a2 + 16) = *a1;
  *(a2 + 24) = *(a1 + 4);
  *(a2 + 40) = *(a1 + 12);
  *(a2 + 56) = v2;
  result = 0.0;
  *a2 = xmmword_2651B68A0;
  return result;
}

double MLS.EncryptedRCS.SigningInput.init(displayIMDN:)@<D0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 1);
  v3 = a1[20];
  v4 = *(a1 + 2) | 0x1000000000000000;
  *(a2 + 16) = *a1;
  *(a2 + 24) = v2;
  *(a2 + 32) = v4;
  *(a2 + 40) = *(a1 + 12);
  *(a2 + 56) = v3;
  result = 0.0;
  *a2 = xmmword_2651B68A0;
  return result;
}

double MLS.EncryptedRCS.SigningInput.init(fileTransfer:)@<D0>(unsigned __int16 *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *(a1 + 1);
  v3 = *(a1 + 2) | 0x2000000000000000;
  *(a2 + 16) = *a1;
  *(a2 + 24) = v2;
  *(a2 + 40) = 0;
  *(a2 + 48) = 0;
  *(a2 + 32) = v3;
  *(a2 + 56) = 0;
  result = 0.0;
  *a2 = xmmword_2651B68A0;
  return result;
}

uint64_t MLS.EncryptedRCS.SigningInput.verifiableDerivedContent.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for MLS.VerifiableDerivedContentVersion();
  v4 = MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x28223BE20](v4);
  v10 = &v21 - v9;
  v12 = *(v1 + 16);
  v11 = *(v1 + 24);
  v14 = *(v1 + 32);
  v13 = *(v1 + 40);
  v15 = *(v1 + 48);
  v16 = *(v1 + 56);
  v17 = (v14 >> 60) & 3;
  if (v17)
  {
    if (v17 == 1)
    {
      v23 = *(v1 + 16);
      v24 = v11;
      v25 = v14 & 0xCFFFFFFFFFFFFFFFLL;
      v26 = v13;
      v27 = v15;
      LOWORD(v28) = v16;
      return MLS.EncryptedRCS.DisplayIMDNSigningInput.verifiableDerivedContent.getter(a1);
    }

    else
    {
      v19 = v7;
      v22 = v15;
      v20 = v8;
      outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v12, v11, v14, v13, v15, v16, outlined copy of Data._Representation, outlined copy of Data?);
      outlined copy of Data._Representation(v11, v14 & 0xCFFFFFFFFFFFFFFFLL);
      MLS.MlsClientFailureReason.init(rawValue:)();
      (*(v20 + 16))(v6, v10, v19);
      a1[3] = type metadata accessor for MLS.VerifiableFileTransfer();
      a1[4] = lazy protocol witness table accessor for type MLS.VerifiableFileTransfer and conformance MLS.VerifiableFileTransfer(&lazy protocol witness table cache variable for type MLS.VerifiableFileTransfer and conformance MLS.VerifiableFileTransfer, MEMORY[0x277D6AAA0], MEMORY[0x277D6AA98]);
      __swift_allocate_boxed_opaque_existential_1(a1);
      MLS.VerifiableFileTransfer.init(version:messageID:)();
      outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v12, v11, v14, v13, v22, v16, outlined consume of Data._Representation, outlined consume of Data?);
      return (*(v20 + 8))(v10, v19);
    }
  }

  else
  {
    v23 = *(v1 + 16);
    v24 = v11;
    v25 = v14;
    v26 = v13;
    v27 = v15;
    v28 = v16;
    return MLS.EncryptedRCS.DeliveryIMDNSigningInput.verifiableDerivedContent.getter(a1);
  }
}

uint64_t MLS.EncryptedRCS.DeliveryIMDNSigningInput.verifiableDerivedContent.getter@<X0>(uint64_t *a1@<X8>)
{
  v38 = a1;
  v2 = type metadata accessor for MLS.MlsClientFailureReason();
  v36 = *(v2 - 8);
  v37 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v35 = v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v39 = v29 - v5;
  v40 = type metadata accessor for MLS.DeliveryNotificationStatus();
  v34 = *(v40 - 8);
  v6 = MEMORY[0x28223BE20](v40);
  v31 = v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v9 = v29 - v8;
  v10 = type metadata accessor for MLS.VerifiableDerivedContentVersion();
  v30 = v10;
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = v29 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = v29 - v15;
  v17 = v1[1];
  v32 = v1[2];
  v33 = v17;
  v18 = v1[3];
  v19 = v1[4];
  outlined copy of Data._Representation(v17, v32);
  outlined copy of Data?(v18, v19);
  MLS.MlsClientFailureReason.init(rawValue:)();
  MLS.MlsClientFailureReason.init(rawValue:)();
  v20 = v39;
  MLS.MlsClientFailureReason.init(rawValue:)();
  (*(v11 + 16))(v14, v16, v10);
  v21 = v34;
  (*(v34 + 16))(v31, v9, v40);
  if (v19 >> 60 == 15)
  {
    v22 = 0;
  }

  else
  {
    v22 = v18;
  }

  v23 = 0xC000000000000000;
  if (v19 >> 60 != 15)
  {
    v23 = v19;
  }

  v29[1] = v23;
  v29[2] = v22;
  v24 = v36;
  v25 = v37;
  (*(v36 + 16))(v35, v20, v37);
  v26 = type metadata accessor for MLS.VerifiableDeliveryImdn();
  v27 = v38;
  v38[3] = v26;
  v27[4] = lazy protocol witness table accessor for type MLS.VerifiableFileTransfer and conformance MLS.VerifiableFileTransfer(&lazy protocol witness table cache variable for type MLS.VerifiableDeliveryImdn and conformance MLS.VerifiableDeliveryImdn, MEMORY[0x277D6AA90], MEMORY[0x277D6AA88]);
  __swift_allocate_boxed_opaque_existential_1(v27);
  MLS.VerifiableDeliveryImdn.init(version:deliveryNotificationStatus:contentMessageId:originalContentMessageId:mlsClientFailureReason:)();
  (*(v24 + 8))(v39, v25);
  (*(v21 + 8))(v9, v40);
  return (*(v11 + 8))(v16, v30);
}

uint64_t MLS.EncryptedRCS.DisplayIMDNSigningInput.verifiableDerivedContent.getter@<X0>(uint64_t *a1@<X8>)
{
  v26 = a1;
  v25 = type metadata accessor for MLS.DisplayNotificationStatus();
  v2 = *(v25 - 8);
  v3 = MEMORY[0x28223BE20](v25);
  v24 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - v5;
  v7 = type metadata accessor for MLS.VerifiableDerivedContentVersion();
  v21 = v7;
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v13 = &v21 - v12;
  v14 = v1[1];
  v22 = v1[2];
  v23 = v14;
  v15 = v1[3];
  v16 = v1[4];
  outlined copy of Data._Representation(v14, v22);
  outlined copy of Data?(v15, v16);
  MLS.MlsClientFailureReason.init(rawValue:)();
  MLS.MlsClientFailureReason.init(rawValue:)();
  (*(v8 + 16))(v11, v13, v7);
  v17 = v25;
  (*(v2 + 16))(v24, v6, v25);
  v18 = type metadata accessor for MLS.VerifiableDisplayImdn();
  v19 = v26;
  v26[3] = v18;
  v19[4] = lazy protocol witness table accessor for type MLS.VerifiableFileTransfer and conformance MLS.VerifiableFileTransfer(&lazy protocol witness table cache variable for type MLS.VerifiableDisplayImdn and conformance MLS.VerifiableDisplayImdn, MEMORY[0x277D6AA80], MEMORY[0x277D6AA78]);
  __swift_allocate_boxed_opaque_existential_1(v19);
  MLS.VerifiableDisplayImdn.init(version:displayNotificationStatus:contentMessageId:originalContentMessageId:)();
  (*(v2 + 8))(v6, v17);
  return (*(v8 + 8))(v13, v21);
}

uint64_t MLS.EncryptedRCS.FileTransferSigningInput.verifiableDerivedContent.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for MLS.VerifiableDerivedContentVersion();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v11 - v8;
  outlined copy of Data._Representation(*(v1 + 8), *(v1 + 16));
  MLS.MlsClientFailureReason.init(rawValue:)();
  (*(v4 + 16))(v7, v9, v3);
  a1[3] = type metadata accessor for MLS.VerifiableFileTransfer();
  a1[4] = lazy protocol witness table accessor for type MLS.VerifiableFileTransfer and conformance MLS.VerifiableFileTransfer(&lazy protocol witness table cache variable for type MLS.VerifiableFileTransfer and conformance MLS.VerifiableFileTransfer, MEMORY[0x277D6AAA0], MEMORY[0x277D6AA98]);
  __swift_allocate_boxed_opaque_existential_1(a1);
  MLS.VerifiableFileTransfer.init(version:messageID:)();
  return (*(v4 + 8))(v9, v3);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance MLS.EncryptedRCS.SigningInput.CodingKeys()
{
  if (*v0)
  {
    return 0x54746E65746E6F63;
  }

  else
  {
    return 0x496567617373656DLL;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.EncryptedRCS.SigningInput.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x496567617373656DLL && a2 == 0xE900000000000044;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x54746E65746E6F63 && a2 == 0xEB00000000657079)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.EncryptedRCS.SigningInput.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.EncryptedRCS.SigningInput.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.EncryptedRCS.SigningInput.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO12SigningInputV10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO12SigningInputV10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMR);
  v17 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v9 = *(v1 + 16);
  v15 = *(v1 + 24);
  v16 = v9;
  v10 = *(v1 + 32);
  v13 = *(v1 + 40);
  v14 = v10;
  v12 = *(v1 + 48);
  v24 = *(v1 + 56);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  outlined copy of Data._Representation(v7, v8);
  lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v18 = v7;
  v19 = v8;
  v25 = 0;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data._Representation(v18, v19);
  if (!v2)
  {
    v18 = v16;
    v19 = v15;
    v20 = v14;
    v21 = v13;
    v22 = v12;
    v23 = v24;
    v25 = 1;
    outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v16, v15, v14, v13, v12, v24, outlined copy of Data._Representation, outlined copy of Data?);
    lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput.ContentType and conformance MLS.EncryptedRCS.SigningInput.ContentType();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v18, v19, v20, v21, v22, v23, outlined consume of Data._Representation, outlined consume of Data?);
  }

  return (*(v17 + 8))(v6, v4);
}

uint64_t MLS.EncryptedRCS.SigningInput.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO12SigningInputV10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO12SigningInputV10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v18[0]) = 0;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v10 = v20;
  v9 = v21;
  v31 = 1;
  lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput.ContentType and conformance MLS.EncryptedRCS.SigningInput.ContentType();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  v11 = v26;
  v12 = v27;
  v17 = v28;
  v30 = v29;
  *&v18[0] = v10;
  *(&v18[0] + 1) = v9;
  v18[1] = v26;
  *v19 = v27;
  *&v19[16] = v28;
  *&v19[24] = v29;
  v13 = v18[0];
  v14 = v26;
  v15 = v27;
  *(a2 + 44) = *&v19[12];
  a2[1] = v14;
  a2[2] = v15;
  *a2 = v13;
  outlined init with copy of MLS.EncryptedRCS.SigningInput(v18, &v20);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v20 = v10;
  v21 = v9;
  v22 = v11;
  v23 = v12;
  v24 = v17;
  v25 = v30;
  return outlined destroy of MLS.EncryptedRCS.SigningInput(&v20);
}

unint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.EncryptedRCS.SigningInput()
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

uint64_t MLS.EncryptedRCS.DeliveryIMDNSigningInput.messageID.getter()
{
  v1 = *(v0 + 8);
  outlined copy of Data._Representation(v1, *(v0 + 16));
  return v1;
}

uint64_t MLS.EncryptedRCS.DeliveryIMDNSigningInput.originalMessageID.getter()
{
  v1 = *(v0 + 24);
  outlined copy of Data?(v1, *(v0 + 32));
  return v1;
}

double MLS.EncryptedRCS.DeliveryIMDNSigningInput.init(version:messageID:failureReason:deliveryStatus:)@<D0>(__int16 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int16 a4@<W3>, __int16 a5@<W4>, uint64_t a6@<X8>)
{
  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  *(a6 + 40) = a4;
  *(a6 + 42) = a5;
  result = 0.0;
  *(a6 + 24) = xmmword_2651B5F50;
  return result;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys()
{
  v1 = *v0;
  v2 = 0x6E6F6973726576;
  v3 = 0xD000000000000011;
  v4 = 0x526572756C696166;
  if (v1 != 3)
  {
    v4 = 0x79726576696C6564;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x496567617373656DLL;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.EncryptedRCS.DeliveryIMDNSigningInput.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO24DeliveryIMDNSigningInputV10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO24DeliveryIMDNSigningInputV10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v14 - v5;
  v8 = *(v1 + 8);
  v7 = *(v1 + 16);
  v9 = *(v1 + 32);
  v16 = *(v1 + 24);
  v17 = v7;
  v15 = v9;
  v21 = *(v1 + 40);
  v14[3] = *(v1 + 42);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v19) = 0;
  v10 = v18;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v10)
  {
    v12 = v15;
    v11 = v16;
    v19 = v8;
    v20 = v17;
    v22 = 1;
    outlined copy of Data._Representation(v8, v17);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v19, v20);
    v19 = v11;
    v20 = v12;
    v22 = 2;
    outlined copy of Data?(v11, v12);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v19, v20);
    LOBYTE(v19) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v19) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t MLS.EncryptedRCS.DeliveryIMDNSigningInput.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO24DeliveryIMDNSigningInputV10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO24DeliveryIMDNSigningInputV10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v20) = 0;
  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v23 = 1;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v18 = v20;
  v19 = v21;
  v23 = 2;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v16 = v21;
  v17 = v20;
  LOBYTE(v20) = 3;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  LOBYTE(v20) = 4;
  v10 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  *a2 = v9;
  v13 = v18;
  v12 = v19;
  *(a2 + 8) = v18;
  *(a2 + 16) = v12;
  v15 = v16;
  v14 = v17;
  *(a2 + 24) = v17;
  *(a2 + 32) = v15;
  *(a2 + 40) = v22;
  *(a2 + 42) = v10;
  outlined copy of Data._Representation(v13, v12);
  outlined copy of Data?(v14, v15);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  outlined consume of Data._Representation(v13, v12);
  return outlined consume of Data?(v14, v15);
}

uint64_t MLS.EncryptedRCS.DisplayIMDNSigningInput.messageID.getter()
{
  v1 = *(v0 + 8);
  outlined copy of Data._Representation(v1, *(v0 + 16));
  return v1;
}

uint64_t MLS.EncryptedRCS.DisplayIMDNSigningInput.originalMessageID.getter()
{
  v1 = *(v0 + 24);
  outlined copy of Data?(v1, *(v0 + 32));
  return v1;
}

double MLS.EncryptedRCS.DisplayIMDNSigningInput.init(version:messageID:displayNotificationStatus:)@<D0>(__int16 a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, __int16 a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = a1;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 40) = a4;
  result = 0.0;
  *(a5 + 24) = xmmword_2651B5F50;
  return result;
}

uint64_t MLS.EncryptedRCS.DisplayIMDNSigningInput.init(version:messageID:originalMessageID:displayNotificationStatus:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, __int16 a6@<W5>, uint64_t a7@<X8>)
{
  *a7 = result;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 40) = a6;
  *(a7 + 24) = a4;
  *(a7 + 32) = a5;
  return result;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys()
{
  v1 = 0x6E6F6973726576;
  v2 = 0xD000000000000011;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000019;
  }

  if (*v0)
  {
    v1 = 0x496567617373656DLL;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.EncryptedRCS.DisplayIMDNSigningInput.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO23DisplayIMDNSigningInputV10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO23DisplayIMDNSigningInputV10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v14 - v5;
  v7 = *(v1 + 8);
  v8 = *(v1 + 16);
  v9 = *(v1 + 32);
  v15 = *(v1 + 24);
  v16 = v7;
  v14 = v9;
  v20 = *(v1 + 40);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v18) = 0;
  v10 = v17;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v10)
  {
    v11 = v14;
    v12 = v15;
    v18 = v16;
    v19 = v8;
    v21 = 1;
    outlined copy of Data._Representation(v16, v8);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v18, v19);
    v18 = v12;
    v19 = v11;
    v21 = 2;
    outlined copy of Data?(v12, v11);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v18, v19);
    LOBYTE(v18) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t MLS.EncryptedRCS.DisplayIMDNSigningInput.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO23DisplayIMDNSigningInputV10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO23DisplayIMDNSigningInputV10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  LOBYTE(v20) = 0;
  v22 = KeyedDecodingContainer.decode(_:forKey:)();
  v23 = 1;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v10 = v20;
  v9 = v21;
  v23 = 2;
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v17 = v20;
  v18 = v21;
  v19 = v9;
  LOBYTE(v20) = 3;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  *a2 = v22;
  v13 = v18;
  v12 = v19;
  *(a2 + 8) = v10;
  *(a2 + 16) = v12;
  v14 = v17;
  *(a2 + 24) = v17;
  *(a2 + 32) = v13;
  *(a2 + 40) = v11;
  outlined copy of Data._Representation(v10, v12);
  outlined copy of Data?(v14, v13);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  outlined consume of Data._Representation(v10, v12);
  return outlined consume of Data?(v14, v13);
}

uint64_t MLS.EncryptedRCS.FileTransferSigningInput.messageID.getter()
{
  v1 = *(v0 + 8);
  outlined copy of Data._Representation(v1, *(v0 + 16));
  return v1;
}

uint64_t MLS.EncryptedRCS.FileTransferSigningInput.init(version:messageID:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys()
{
  if (*v0)
  {
    return 0x496567617373656DLL;
  }

  else
  {
    return 0x6E6F6973726576;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x496567617373656DLL && a2 == 0xE900000000000044)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys and conformance MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys and conformance MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MLS.EncryptedRCS.FileTransferSigningInput.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO24FileTransferSigningInputV10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO24FileTransferSigningInputV10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = *(v1 + 16);
  v10[0] = *(v1 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys and conformance MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v11) = 0;
  v8 = v10[1];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v8)
  {
    v11 = v10[0];
    v12 = v7;
    v13 = 1;
    outlined copy of Data._Representation(v10[0], v7);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v11, v12);
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t MLS.EncryptedRCS.FileTransferSigningInput.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO24FileTransferSigningInputV10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO24FileTransferSigningInputV10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys and conformance MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    LOBYTE(v12) = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v13 = 1;
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v10 = v12;
    *a2 = v9;
    *(a2 + 8) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t MLS.EncryptedRCS.Platform.rawValue.getter()
{
  if (*v0)
  {
    return 2;
  }

  else
  {
    return 1;
  }
}

uint64_t MLS.EncryptedRCS.Platform.init(rawValue:)@<X0>(uint64_t result@<X0>, char *a2@<X8>)
{
  if (result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (result == 1)
  {
    v2 = 0;
  }

  *a2 = v2;
  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance MLS.EncryptedRCS.Platform()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  if (v1)
  {
    v2 = 2;
  }

  else
  {
    v2 = 1;
  }

  MEMORY[0x266754DE0](v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance MLS.EncryptedRCS.Platform()
{
  if (*v0)
  {
    v1 = 2;
  }

  else
  {
    v1 = 1;
  }

  return MEMORY[0x266754DE0](v1);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance MLS.EncryptedRCS.Platform(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  if (v2)
  {
    v3 = 2;
  }

  else
  {
    v3 = 1;
  }

  MEMORY[0x266754DE0](v3);
  return Hasher._finalize()();
}

void *protocol witness for RawRepresentable.init(rawValue:) in conformance MLS.EncryptedRCS.Platform@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 2)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result == 1)
  {
    v3 = 0;
  }

  else
  {
    v3 = v2;
  }

  *a2 = v3;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance MLS.EncryptedRCS.Platform(uint64_t *a1@<X8>)
{
  v2 = 1;
  if (*v1)
  {
    v2 = 2;
  }

  *a1 = v2;
}

uint64_t static MLS.EncryptedRCS.configuration<A, B, C>(communicator:delegate:selfMember:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X3>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>)
{
  v14 = *a3;
  v13 = a3[1];
  v15 = a3[2];
  v16 = *(a3 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO23NoOpKeyPackageExchangerCy_AC12EncryptedRCSO6MemberVGMd, &_s15SecureMessaging3MLSO23NoOpKeyPackageExchangerCy_AC12EncryptedRCSO6MemberVGMR);
  v23 = swift_allocObject();
  v17 = lazy protocol witness table accessor for type MLS.NoOpKeyPackageExchanger<MLS.EncryptedRCS.Member> and conformance MLS.NoOpKeyPackageExchanger<A>();
  type metadata accessor for MLS.NoOpPersister();
  v18 = swift_allocObject();
  v26[0] = v14;
  v26[1] = v13;
  v26[2] = v15;
  v27 = v16;
  v19 = lazy protocol witness table accessor for type MLS.EncryptedRCS.Member and conformance MLS.EncryptedRCS.Member();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  *(&v22 + 1) = v19;
  *&v22 = a4;
  MLS.Configuration.init(clientIdentifier:communicator:delegate:keyPackageExchanger:persister:runInDaemon:selfMember:)(a1, a7, a2, a8, v23, v17, v18, x8_0, &protocol witness table for MLS.NoOpPersister, 1, v26, &type metadata for MLS.EncryptedRCS.Member, v22, AssociatedConformanceWitness);

  swift_unknownObjectRetain();
  return swift_unknownObjectRetain();
}

__n128 MLS.AdditionalAuthenticatedData.init(encryptedRCSAAD:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
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

BOOL specialized static Data.== infix(_:_:)(_BOOL8 result, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a2 >> 62;
  v5 = a4 >> 62;
  if (a2 >> 62 == 3)
  {
    v6 = 0;
    if (!result && a2 == 0xC000000000000000 && a4 >> 62 == 3)
    {
      v6 = 0;
      if (!a3 && a4 == 0xC000000000000000)
      {
        return 1;
      }
    }

    goto LABEL_14;
  }

  if (!v4)
  {
    v6 = BYTE6(a2);
    goto LABEL_14;
  }

  if (v4 == 1)
  {
    LODWORD(v6) = HIDWORD(result) - result;
    if (__OFSUB__(HIDWORD(result), result))
    {
LABEL_30:
      __break(1u);
      goto LABEL_31;
    }

    v6 = v6;
LABEL_14:
    if (v5 > 1)
    {
      if (v5 != 2)
      {
        return v6 == 0;
      }

      v11 = *(a3 + 16);
      v10 = *(a3 + 24);
      v9 = __OFSUB__(v10, v11);
      v12 = v10 - v11;
      if (!v9)
      {
        if (v6 != v12)
        {
          return 0;
        }

        goto LABEL_21;
      }

      __break(1u);
    }

    else
    {
      if (!v5)
      {
        if (v6 != BYTE6(a4))
        {
          return 0;
        }

LABEL_21:
        if (v6 >= 1)
        {
          v13 = result;
          outlined copy of Data._Representation(a3, a4);
          return specialized Data.withUnsafeBytes<A>(_:)(v13, a2, a3, a4) & 1;
        }

        return 1;
      }

      if (!__OFSUB__(HIDWORD(a3), a3))
      {
        if (v6 != HIDWORD(a3) - a3)
        {
          return 0;
        }

        goto LABEL_21;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

  v8 = *(result + 16);
  v7 = *(result + 24);
  v9 = __OFSUB__(v7, v8);
  v6 = v7 - v8;
  if (!v9)
  {
    goto LABEL_14;
  }

LABEL_31:
  __break(1u);
  return result;
}

BOOL specialized static MLS.EncryptedRCS.DeliveryIMDNSigningInput.== infix(_:_:)(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 3);
  v2 = *(a1 + 4);
  v4 = a1[20];
  v5 = a1[21];
  v7 = *(a2 + 3);
  v6 = *(a2 + 4);
  v8 = a2[20];
  v9 = a2[21];
  if (!specialized static Data.== infix(_:_:)(*(a1 + 1), *(a1 + 2), *(a2 + 1), *(a2 + 2)))
  {
    return 0;
  }

  if (v2 >> 60 == 15)
  {
    if (v6 >> 60 == 15)
    {
      outlined copy of Data?(v3, v2);
      outlined copy of Data?(v7, v6);
      outlined consume of Data?(v3, v2);
      if (v4 == v8)
      {
        return v5 == v9;
      }

      return 0;
    }

    goto LABEL_9;
  }

  if (v6 >> 60 == 15)
  {
LABEL_9:
    outlined copy of Data?(v3, v2);
    outlined copy of Data?(v7, v6);
    outlined consume of Data?(v3, v2);
    outlined consume of Data?(v7, v6);
    return 0;
  }

  outlined copy of Data?(v3, v2);
  outlined copy of Data?(v7, v6);
  v11 = specialized static Data.== infix(_:_:)(v3, v2, v7, v6);
  outlined consume of Data?(v7, v6);
  outlined consume of Data?(v3, v2);
  result = 0;
  if (v11 && v4 == v8)
  {
    return v5 == v9;
  }

  return result;
}

BOOL specialized static MLS.EncryptedRCS.DisplayIMDNSigningInput.== infix(_:_:)(unsigned __int16 *a1, unsigned __int16 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v3 = *(a1 + 3);
  v2 = *(a1 + 4);
  v4 = a1[20];
  v6 = *(a2 + 3);
  v5 = *(a2 + 4);
  v7 = a2[20];
  if (!specialized static Data.== infix(_:_:)(*(a1 + 1), *(a1 + 2), *(a2 + 1), *(a2 + 2)))
  {
    return 0;
  }

  if (v2 >> 60 != 15)
  {
    if (v5 >> 60 != 15)
    {
      outlined copy of Data?(v3, v2);
      outlined copy of Data?(v6, v5);
      v9 = specialized static Data.== infix(_:_:)(v3, v2, v6, v5);
      outlined consume of Data?(v6, v5);
      outlined consume of Data?(v3, v2);
      if (v9)
      {
        return v4 == v7;
      }

      return 0;
    }

LABEL_8:
    outlined copy of Data?(v3, v2);
    outlined copy of Data?(v6, v5);
    outlined consume of Data?(v3, v2);
    outlined consume of Data?(v6, v5);
    return 0;
  }

  if (v5 >> 60 != 15)
  {
    goto LABEL_8;
  }

  outlined copy of Data?(v3, v2);
  outlined copy of Data?(v6, v5);
  outlined consume of Data?(v3, v2);
  return v4 == v7;
}

BOOL specialized static MLS.EncryptedRCS.SigningInput.ContentType.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = a1[3];
  v5 = a1[4];
  v6 = *(a1 + 10);
  v8 = *a2;
  v7 = a2[1];
  v9 = a2[2];
  v50 = a2[3];
  v51 = *a1;
  v49 = a2[4];
  v10 = *(a2 + 10);
  v11 = a1[2];
  v12 = (v11 >> 60) & 3;
  v48 = *(a1 + 10);
  if (!v12)
  {
    if ((v9 & 0x3000000000000000) == 0)
    {
      v58 = *a1;
      v16 = v3;
      v17 = v10;
      v59 = v2;
      v60 = v11;
      v61 = v4;
      v62 = v5;
      v63 = v6;
      v52 = v8;
      v53 = v7;
      v54 = v9;
      v55 = v50;
      v56 = v49;
      v57 = v10;
      v18 = v6;
      v42 = v7;
      v45 = v8;
      v39 = v9;
      v19 = v7;
      v20 = v2;
      outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v8, v7, v9, v50, v49, v17, outlined copy of Data._Representation, outlined copy of Data?);
      outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v16, v20, v11, v4, v5, v18, outlined copy of Data._Representation, outlined copy of Data?);
      outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v16, v20, v11, v4, v5, v18, outlined copy of Data._Representation, outlined copy of Data?);
      outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v45, v19, v39, v50, v49, v17, outlined copy of Data._Representation, outlined copy of Data?);
      v15 = specialized static MLS.EncryptedRCS.DeliveryIMDNSigningInput.== infix(_:_:)(&v58, &v52);
      outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v51, v20, v11, v4, v5, v18, outlined consume of Data._Representation, outlined consume of Data?);
      outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v45, v42, v39, v50, v49, v17, outlined consume of Data._Representation, outlined consume of Data?);
      outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v45, v42, v39, v50, v49, v17, outlined consume of Data._Representation, outlined consume of Data?);
      outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v51, v20, v11, v4, v5, v48, outlined consume of Data._Representation, outlined consume of Data?);
      return v15;
    }

    goto LABEL_11;
  }

  if (v12 != 1)
  {
    if ((v9 & 0x3000000000000000) == 0x2000000000000000)
    {
      v40 = a2[2];
      v43 = a2[1];
      v37 = a1[3];
      if (*a1 == v8)
      {
        v46 = *a2;
        v36 = *(a2 + 10);
        v21 = a1[1];
        outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v8, v7, v9, v50, v49, v36, outlined copy of Data._Representation, outlined copy of Data?);
        outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v3, v21, v11, v4, v5, v6, outlined copy of Data._Representation, outlined copy of Data?);
        outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v3, v21, v11, v4, v5, v6, outlined copy of Data._Representation, outlined copy of Data?);
        outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v46, v43, v40, v50, v49, v36, outlined copy of Data._Representation, outlined copy of Data?);
        v34 = specialized static Data.== infix(_:_:)(v21, v11 & 0xCFFFFFFFFFFFFFFFLL, v43, v40 & 0xCFFFFFFFFFFFFFFFLL);
        outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v51, v21, v11, v4, v5, v6, outlined consume of Data._Representation, outlined consume of Data?);
        outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v46, v43, v40, v50, v49, v36, outlined consume of Data._Representation, outlined consume of Data?);
        outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v46, v43, v40, v50, v49, v36, outlined consume of Data._Representation, outlined consume of Data?);
        outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v51, v21, v11, v4, v5, v48, outlined consume of Data._Representation, outlined consume of Data?);
        return v34;
      }

      v31 = *a2;
      v32 = a2[1];
      v33 = a1[1];
      outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(*a1, v2, v11, a1[3], v5, v6, outlined copy of Data._Representation, outlined copy of Data?);
      outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v31, v32, v40, v50, v49, v10, outlined copy of Data._Representation, outlined copy of Data?);
      outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v51, v33, v11, v37, v5, v6, outlined consume of Data._Representation, outlined consume of Data?);
      v25 = v31;
      v26 = v43;
      v27 = v40;
      v28 = v50;
      v29 = v49;
LABEL_12:
      outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v25, v26, v27, v28, v29, v10, outlined consume of Data._Representation, outlined consume of Data?);
      return 0;
    }

LABEL_11:
    v22 = *a2;
    v23 = a2[2];
    v24 = a2[1];
    v47 = a1[1];
    outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(*a1, v2, v11, v4, v5, v6, outlined copy of Data._Representation, outlined copy of Data?);
    outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v22, v24, v23, v50, v49, v10, outlined copy of Data._Representation, outlined copy of Data?);
    outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v51, v47, v11, v4, v5, v48, outlined consume of Data._Representation, outlined consume of Data?);
    v25 = v22;
    v26 = v24;
    v27 = v23;
    v28 = v50;
    v29 = v49;
    goto LABEL_12;
  }

  if ((v9 & 0x3000000000000000) != 0x1000000000000000)
  {
    goto LABEL_11;
  }

  v58 = *a1;
  v59 = v2;
  v60 = v11 & 0xCFFFFFFFFFFFFFFFLL;
  v61 = v4;
  v62 = v5;
  LOWORD(v63) = v6;
  v52 = v8;
  v53 = v7;
  v54 = v9 & 0xCFFFFFFFFFFFFFFFLL;
  v55 = v50;
  v56 = v49;
  LOWORD(v57) = v10;
  v35 = v10;
  v41 = v7;
  v44 = v8;
  v38 = v9;
  v13 = v10;
  v14 = v2;
  outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v8, v7, v9, v50, v49, v13, outlined copy of Data._Representation, outlined copy of Data?);
  outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v51, v14, v11, v4, v5, v6, outlined copy of Data._Representation, outlined copy of Data?);
  outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v51, v14, v11, v4, v5, v6, outlined copy of Data._Representation, outlined copy of Data?);
  outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v44, v41, v38, v50, v49, v35, outlined copy of Data._Representation, outlined copy of Data?);
  v15 = specialized static MLS.EncryptedRCS.DisplayIMDNSigningInput.== infix(_:_:)(&v58, &v52);
  outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v51, v14, v11, v4, v5, v6, outlined consume of Data._Representation, outlined consume of Data?);
  outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v44, v41, v38, v50, v49, v35, outlined consume of Data._Representation, outlined consume of Data?);
  outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v44, v41, v38, v50, v49, v35, outlined consume of Data._Representation, outlined consume of Data?);
  outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(v51, v14, v11, v4, v5, v48, outlined consume of Data._Representation, outlined consume of Data?);
  return v15;
}

BOOL specialized static MLS.EncryptedRCS.SigningInput.== infix(_:_:)(uint64_t a1, uint64_t a2)
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

uint64_t specialized static MLS.EncryptedRCS.SigningInputError.== infix(_:_:)(char a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6)
{
  if (a1 == a4)
  {
    if (a3)
    {
      if (a6)
      {
        if (a2 == a5 && a3 == a6)
        {
          return 1;
        }

        if (_stringCompareWithSmolCheck(_:_:expecting:)())
        {
          return 1;
        }
      }
    }

    else if (!a6)
    {
      return 1;
    }
  }

  return 0;
}

BOOL specialized static MLS.EncryptedRCS.AdditionalAuthenticatedData.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v4 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v6 = *(a2 + 16);
  v8 = *(a2 + 24);
  v7 = *(a2 + 32);
  v9 = *(a2 + 40);
  v10 = specialized static Data.== infix(_:_:)(*a1, *(a1 + 8), *a2, *(a2 + 8));
  result = 0;
  if (v10 && v2 == v6 && v4 == v8)
  {
    if (v5 >> 60 == 15)
    {
      if (v9 >> 60 == 15)
      {
        outlined copy of Data?(v3, v5);
        outlined copy of Data?(v7, v9);
        outlined consume of Data?(v3, v5);
        return 1;
      }
    }

    else if (v9 >> 60 != 15)
    {
      outlined copy of Data?(v3, v5);
      outlined copy of Data?(v7, v9);
      v12 = specialized static Data.== infix(_:_:)(v3, v5, v7, v9);
      outlined consume of Data?(v7, v9);
      outlined consume of Data?(v3, v5);
      return v12;
    }

    outlined copy of Data?(v3, v5);
    outlined copy of Data?(v7, v9);
    outlined consume of Data?(v3, v5);
    outlined consume of Data?(v7, v9);
    return 0;
  }

  return result;
}

uint64_t specialized static MLS.EncryptedRCS.Member.== infix(_:_:)(uint64_t *a1, uint64_t a2)
{
  v2 = a1[2];
  v3 = *(a1 + 24);
  v4 = *(a2 + 16);
  v5 = *(a2 + 24);
  v6 = *a1 == *a2 && a1[1] == *(a2 + 8);
  if (v6 || (v7 = _stringCompareWithSmolCheck(_:_:expecting:)(), result = 0, (v7 & 1) != 0))
  {
    if (v3)
    {
      if ((v5 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v2 == v4)
      {
        v9 = v5;
      }

      else
      {
        v9 = 1;
      }

      if (v9)
      {
        return 0;
      }
    }

    return 1;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.EncryptedRCS.Member.CodingKeys and conformance MLS.EncryptedRCS.Member.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.Member.CodingKeys and conformance MLS.EncryptedRCS.Member.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.Member.CodingKeys and conformance MLS.EncryptedRCS.Member.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.Member.CodingKeys and conformance MLS.EncryptedRCS.Member.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.Member.CodingKeys and conformance MLS.EncryptedRCS.Member.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.Member.CodingKeys and conformance MLS.EncryptedRCS.Member.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.Member.CodingKeys and conformance MLS.EncryptedRCS.Member.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.Member.CodingKeys and conformance MLS.EncryptedRCS.Member.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.Member.CodingKeys and conformance MLS.EncryptedRCS.Member.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.Member.CodingKeys and conformance MLS.EncryptedRCS.Member.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.Member.CodingKeys and conformance MLS.EncryptedRCS.Member.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.Member.CodingKeys and conformance MLS.EncryptedRCS.Member.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.Member.CodingKeys and conformance MLS.EncryptedRCS.Member.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type URI and conformance URI()
{
  result = lazy protocol witness table cache variable for type URI and conformance URI;
  if (!lazy protocol witness table cache variable for type URI and conformance URI)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URI and conformance URI);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URI and conformance URI;
  if (!lazy protocol witness table cache variable for type URI and conformance URI)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URI and conformance URI);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type URI and conformance URI;
  if (!lazy protocol witness table cache variable for type URI and conformance URI)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type URI and conformance URI);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys and conformance MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys);
  }

  return result;
}

uint64_t specialized MLS.EncryptedRCS.AdditionalAuthenticatedData.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x496567617373656DLL && a2 == 0xE900000000000044;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6172456C6C616D73 && a2 == 0xE800000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 6386277 && a2 == 0xE300000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002651E8E90 == a2)
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

unint64_t specialized MLS.EncryptedRCS.SigningInputError.ErrorType.init(rawValue:)(unint64_t result)
{
  if (result >= 4)
  {
    return 4;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInputError.CodingKeys and conformance MLS.EncryptedRCS.SigningInputError.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError.CodingKeys and conformance MLS.EncryptedRCS.SigningInputError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError.CodingKeys and conformance MLS.EncryptedRCS.SigningInputError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError.CodingKeys and conformance MLS.EncryptedRCS.SigningInputError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError.CodingKeys and conformance MLS.EncryptedRCS.SigningInputError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError.CodingKeys and conformance MLS.EncryptedRCS.SigningInputError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError.CodingKeys and conformance MLS.EncryptedRCS.SigningInputError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError.CodingKeys and conformance MLS.EncryptedRCS.SigningInputError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError.CodingKeys and conformance MLS.EncryptedRCS.SigningInputError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError.CodingKeys and conformance MLS.EncryptedRCS.SigningInputError.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError.CodingKeys and conformance MLS.EncryptedRCS.SigningInputError.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError.CodingKeys and conformance MLS.EncryptedRCS.SigningInputError.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError.CodingKeys and conformance MLS.EncryptedRCS.SigningInputError.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInputError.ErrorType and conformance MLS.EncryptedRCS.SigningInputError.ErrorType()
{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError.ErrorType and conformance MLS.EncryptedRCS.SigningInputError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError.ErrorType and conformance MLS.EncryptedRCS.SigningInputError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError.ErrorType and conformance MLS.EncryptedRCS.SigningInputError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError.ErrorType and conformance MLS.EncryptedRCS.SigningInputError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError.ErrorType and conformance MLS.EncryptedRCS.SigningInputError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError.ErrorType and conformance MLS.EncryptedRCS.SigningInputError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError.ErrorType and conformance MLS.EncryptedRCS.SigningInputError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError.ErrorType and conformance MLS.EncryptedRCS.SigningInputError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError.ErrorType and conformance MLS.EncryptedRCS.SigningInputError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError.ErrorType and conformance MLS.EncryptedRCS.SigningInputError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError.ErrorType and conformance MLS.EncryptedRCS.SigningInputError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError.ErrorType and conformance MLS.EncryptedRCS.SigningInputError.ErrorType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError.ErrorType and conformance MLS.EncryptedRCS.SigningInputError.ErrorType;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError.ErrorType and conformance MLS.EncryptedRCS.SigningInputError.ErrorType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError.ErrorType and conformance MLS.EncryptedRCS.SigningInputError.ErrorType);
  }

  return result;
}

uint64_t specialized MLS.EncryptedRCS.SigningInputError.init(from:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO17SigningInputErrorV10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging3MLSO12EncryptedRCSO17SigningInputErrorV10CodingKeys33_4496A24A853201C8E555AEE5518058D3LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInputError.CodingKeys and conformance MLS.EncryptedRCS.SigningInputError.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v1)
  {
    v9[14] = 0;
    lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInputError.ErrorType and conformance MLS.EncryptedRCS.SigningInputError.ErrorType();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v7 = v9[15];
    v9[13] = 1;
    KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return v7;
}

unint64_t lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.FileTransferCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.EncryptedRCS.FileTransferSigningInput and conformance MLS.EncryptedRCS.FileTransferSigningInput()
{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.FileTransferSigningInput and conformance MLS.EncryptedRCS.FileTransferSigningInput;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.FileTransferSigningInput and conformance MLS.EncryptedRCS.FileTransferSigningInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.FileTransferSigningInput and conformance MLS.EncryptedRCS.FileTransferSigningInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.FileTransferSigningInput and conformance MLS.EncryptedRCS.FileTransferSigningInput;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.FileTransferSigningInput and conformance MLS.EncryptedRCS.FileTransferSigningInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.FileTransferSigningInput and conformance MLS.EncryptedRCS.FileTransferSigningInput);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DisplayIMDNCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.EncryptedRCS.DisplayIMDNSigningInput and conformance MLS.EncryptedRCS.DisplayIMDNSigningInput()
{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.DisplayIMDNSigningInput and conformance MLS.EncryptedRCS.DisplayIMDNSigningInput;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.DisplayIMDNSigningInput and conformance MLS.EncryptedRCS.DisplayIMDNSigningInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.DisplayIMDNSigningInput and conformance MLS.EncryptedRCS.DisplayIMDNSigningInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.DisplayIMDNSigningInput and conformance MLS.EncryptedRCS.DisplayIMDNSigningInput;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.DisplayIMDNSigningInput and conformance MLS.EncryptedRCS.DisplayIMDNSigningInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.DisplayIMDNSigningInput and conformance MLS.EncryptedRCS.DisplayIMDNSigningInput);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys and conformance MLS.EncryptedRCS.SigningInput.ContentType.DeliveryIMDNCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.EncryptedRCS.DeliveryIMDNSigningInput and conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput()
{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.DeliveryIMDNSigningInput and conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.DeliveryIMDNSigningInput and conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.DeliveryIMDNSigningInput and conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.DeliveryIMDNSigningInput and conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.DeliveryIMDNSigningInput and conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.DeliveryIMDNSigningInput and conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput);
  }

  return result;
}

uint64_t outlined copy of MLS.EncryptedRCS.SigningInput.ContentType(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t (*a7)(uint64_t, unint64_t), uint64_t (*a8)(uint64_t, uint64_t))
{
  result = a2;
  v9 = (a3 >> 60) & 3;
  if (((a3 >> 60) & 3) > 1)
  {
    if (v9 == 2)
    {

      return a7(a2, a3 & 0xCFFFFFFFFFFFFFFFLL);
    }
  }

  else
  {
    if (v9)
    {
      v12 = a3 & 0xCFFFFFFFFFFFFFFFLL;
    }

    else
    {
      v12 = a3;
    }

    a7(result, v12);

    return a8(a4, a5);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type MLS.VerifiableFileTransfer and conformance MLS.VerifiableFileTransfer(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.CodingKeys and conformance MLS.EncryptedRCS.SigningInput.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInput.ContentType and conformance MLS.EncryptedRCS.SigningInput.ContentType()
{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType and conformance MLS.EncryptedRCS.SigningInput.ContentType;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType and conformance MLS.EncryptedRCS.SigningInput.ContentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType and conformance MLS.EncryptedRCS.SigningInput.ContentType);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType and conformance MLS.EncryptedRCS.SigningInput.ContentType;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType and conformance MLS.EncryptedRCS.SigningInput.ContentType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInput.ContentType and conformance MLS.EncryptedRCS.SigningInput.ContentType);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys and conformance MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys and conformance MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys()
{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys and conformance MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys and conformance MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys and conformance MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys and conformance MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys and conformance MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys and conformance MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys and conformance MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys and conformance MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys and conformance MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys and conformance MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys and conformance MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys and conformance MLS.EncryptedRCS.FileTransferSigningInput.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.NoOpKeyPackageExchanger<MLS.EncryptedRCS.Member> and conformance MLS.NoOpKeyPackageExchanger<A>()
{
  result = lazy protocol witness table cache variable for type MLS.NoOpKeyPackageExchanger<MLS.EncryptedRCS.Member> and conformance MLS.NoOpKeyPackageExchanger<A>;
  if (!lazy protocol witness table cache variable for type MLS.NoOpKeyPackageExchanger<MLS.EncryptedRCS.Member> and conformance MLS.NoOpKeyPackageExchanger<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15SecureMessaging3MLSO23NoOpKeyPackageExchangerCy_AC12EncryptedRCSO6MemberVGMd, &_s15SecureMessaging3MLSO23NoOpKeyPackageExchangerCy_AC12EncryptedRCSO6MemberVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.NoOpKeyPackageExchanger<MLS.EncryptedRCS.Member> and conformance MLS.NoOpKeyPackageExchanger<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.EncryptedRCS.Member and conformance MLS.EncryptedRCS.Member()
{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.Member and conformance MLS.EncryptedRCS.Member;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.Member and conformance MLS.EncryptedRCS.Member)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.Member and conformance MLS.EncryptedRCS.Member);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.Member and conformance MLS.EncryptedRCS.Member;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.Member and conformance MLS.EncryptedRCS.Member)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.Member and conformance MLS.EncryptedRCS.Member);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.Member and conformance MLS.EncryptedRCS.Member;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.Member and conformance MLS.EncryptedRCS.Member)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.Member and conformance MLS.EncryptedRCS.Member);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.Member and conformance MLS.EncryptedRCS.Member;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.Member and conformance MLS.EncryptedRCS.Member)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.Member and conformance MLS.EncryptedRCS.Member);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.Member and conformance MLS.EncryptedRCS.Member;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.Member and conformance MLS.EncryptedRCS.Member)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.Member and conformance MLS.EncryptedRCS.Member);
  }

  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.EncryptedRCS.Member(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type MLS.EncryptedRCS.Member and conformance MLS.EncryptedRCS.Member();
  a1[2] = lazy protocol witness table accessor for type MLS.EncryptedRCS.Member and conformance MLS.EncryptedRCS.Member();
  result = lazy protocol witness table accessor for type MLS.EncryptedRCS.Member and conformance MLS.EncryptedRCS.Member();
  a1[3] = result;
  return result;
}

unint64_t instantiation function for generic protocol witness table for MLS.EncryptedRCS.SigningInputError(void *a1)
{
  a1[1] = lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInputError and conformance MLS.EncryptedRCS.SigningInputError();
  a1[2] = lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInputError and conformance MLS.EncryptedRCS.SigningInputError();
  a1[3] = lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInputError and conformance MLS.EncryptedRCS.SigningInputError();
  result = lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInputError and conformance MLS.EncryptedRCS.SigningInputError();
  a1[4] = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.EncryptedRCS.SigningInputError and conformance MLS.EncryptedRCS.SigningInputError()
{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError and conformance MLS.EncryptedRCS.SigningInputError;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError and conformance MLS.EncryptedRCS.SigningInputError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError and conformance MLS.EncryptedRCS.SigningInputError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError and conformance MLS.EncryptedRCS.SigningInputError;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError and conformance MLS.EncryptedRCS.SigningInputError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError and conformance MLS.EncryptedRCS.SigningInputError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError and conformance MLS.EncryptedRCS.SigningInputError;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError and conformance MLS.EncryptedRCS.SigningInputError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError and conformance MLS.EncryptedRCS.SigningInputError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError and conformance MLS.EncryptedRCS.SigningInputError;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError and conformance MLS.EncryptedRCS.SigningInputError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError and conformance MLS.EncryptedRCS.SigningInputError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError and conformance MLS.EncryptedRCS.SigningInputError;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError and conformance MLS.EncryptedRCS.SigningInputError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.SigningInputError and conformance MLS.EncryptedRCS.SigningInputError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type MLS.EncryptedRCS.Platform and conformance MLS.EncryptedRCS.Platform()
{
  result = lazy protocol witness table cache variable for type MLS.EncryptedRCS.Platform and conformance MLS.EncryptedRCS.Platform;
  if (!lazy protocol witness table cache variable for type MLS.EncryptedRCS.Platform and conformance MLS.EncryptedRCS.Platform)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type MLS.EncryptedRCS.Platform and conformance MLS.EncryptedRCS.Platform);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MLS.EncryptedRCS.Member(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 8);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MLS.EncryptedRCS.Member(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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

    *(result + 25) = 0;
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

uint64_t getEnumTagSinglePayload for MLS.EncryptedRCS.AdditionalAuthenticatedData(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 48))
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

uint64_t storeEnumTagSinglePayload for MLS.EncryptedRCS.AdditionalAuthenticatedData(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 48) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 48) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLS.EncryptedRCS.SigningInputError(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for MLS.EncryptedRCS.SigningInputError(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy60_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 44) = *(a2 + 44);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MLS.EncryptedRCS.SigningInput(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 60))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 18);
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

double storeEnumTagSinglePayload for MLS.EncryptedRCS.SigningInput(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 40) = 0u;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 56) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 60) = 1;
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
      *(a1 + 16) = -a2 << 16;
      result = 0.0;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0u;
      *(a1 + 56) = 0;
      return result;
    }

    *(a1 + 60) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy44_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 28) = *(a2 + 28);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for MLS.EncryptedRCS.SigningInput.ContentType(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 44))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 2);
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

double storeEnumTagSinglePayload for MLS.EncryptedRCS.SigningInput.ContentType(uint64_t a1, int a2, int a3)
{
  if (a2 < 0)
  {
    result = 0.0;
    *(a1 + 24) = 0u;
    *(a1 + 8) = 0u;
    *(a1 + 40) = 0;
    *a1 = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(a1 + 44) = 1;
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
      *a1 = -a2 << 16;
      result = 0.0;
      *(a1 + 8) = 0u;
      *(a1 + 24) = 0u;
      *(a1 + 40) = 0;
      return result;
    }

    *(a1 + 44) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void *destructiveInjectEnumTag for MLS.EncryptedRCS.SigningInput.ContentType(void *result, char a2)
{
  v2 = result[2] & 0xCFFFFFFFFFFFFFFFLL | ((a2 & 3) << 60);
  *result = *result;
  result[2] = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for MLS.EncryptedRCS.DeliveryIMDNSigningInput(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 44))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for MLS.EncryptedRCS.DeliveryIMDNSigningInput(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 44) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 44) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

__n128 __swift_memcpy42_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 26) = *(a2 + 26);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for MLS.EncryptedRCS.DisplayIMDNSigningInput(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 42))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for MLS.EncryptedRCS.DisplayIMDNSigningInput(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 42) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 42) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MLS.EncryptedRCS.FileTransferSigningInput(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xD && *(a1 + 24))
  {
    return (*a1 + 13);
  }

  v3 = (((*(a1 + 16) >> 60) >> 2) & 0xFFFFFFF3 | (4 * ((*(a1 + 16) >> 60) & 3))) ^ 0xF;
  if (v3 >= 0xC)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t storeEnumTagSinglePayload for MLS.EncryptedRCS.FileTransferSigningInput(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xC)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 13;
    if (a3 >= 0xD)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xD)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 8) = 0;
      *(result + 16) = (((-a2 >> 2) & 3) - 4 * a2) << 60;
    }
  }

  return result;
}

uint64_t specialized MLS.EncryptedRCS.SigningInput.ContentType.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x79726576696C6564 && a2 == 0xEC0000004E444D49;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4979616C70736964 && a2 == 0xEB000000004E444DLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E617254656C6966 && a2 == 0xEC00000072656673)
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

uint64_t specialized MLS.EncryptedRCS.DeliveryIMDNSigningInput.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496567617373656DLL && a2 == 0xE900000000000044 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002651E8E90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x526572756C696166 && a2 == 0xED00006E6F736165 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x79726576696C6564 && a2 == 0xEE00737574617453)
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

uint64_t specialized MLS.EncryptedRCS.DisplayIMDNSigningInput.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x496567617373656DLL && a2 == 0xE900000000000044 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x80000002651E8E90 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000019 && 0x80000002651E8ED0 == a2)
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

unint64_t lazy protocol witness table accessor for type Int and conformance Int()
{
  result = lazy protocol witness table cache variable for type Int and conformance Int;
  if (!lazy protocol witness table cache variable for type Int and conformance Int)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Int and conformance Int);
  }

  return result;
}

uint64_t static XPCUtils.XPCClient.weakSharedInstance.getter()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = partial apply for closure #2 in KDSRegistration.XPCCoordinator.isRegisteredChanged(simUniqueID:isRegistered:context:completion:);

  return specialized static XPCUtils.XPCClient.weakSharedInstance.getter();
}

Swift::Int XPCUtils.XPCInterfaceType.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x266754DE0](v1);
  return Hasher._finalize()();
}

uint64_t XPCUtils.XPCClient.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t XPCUtils.XPCClient.__allocating_init(machServiceName:listenerEndpoint:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  swift_allocObject();
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = XPCUtils.XPCClient.__allocating_init(machServiceName:listenerEndpoint:);

  return specialized XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:)(a1, a2, a3);
}

uint64_t XPCUtils.XPCClient.__allocating_init(machServiceName:listenerEndpoint:)(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:);

  return specialized XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:)(a1, a2, a3);
}

uint64_t closure #1 in XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return MEMORY[0x2822009F8](closure #1 in XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:), 0, 0);
}

uint64_t closure #1 in XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  *(v0 + 64) = result;
  if (result)
  {
    *(v0 + 96) = 0;
    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    *v2 = v0;
    v2[1] = closure #1 in XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:);

    return XPCUtils.XPCClient.remoteObjectProxy(for:)((v0 + 96));
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = v0[6];
  v0[5] = &unk_2876DCC70;
  *v1 = swift_dynamicCastObjCProtocolUnconditional();
  v2 = v0[1];

  return v2();
}

{
  return (*(v0 + 8))();
}

uint64_t closure #1 in XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = closure #1 in XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:);
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = closure #1 in XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t closure #2 in XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 48) = a1;
  *(v2 + 56) = a2;
  return MEMORY[0x2822009F8](closure #2 in XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:), 0, 0);
}

uint64_t closure #2 in XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:)()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  *(v0 + 64) = result;
  if (result)
  {
    *(v0 + 96) = 1;
    v2 = swift_task_alloc();
    *(v0 + 72) = v2;
    *v2 = v0;
    v2[1] = closure #2 in XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:);

    return XPCUtils.XPCClient.remoteObjectProxy(for:)((v0 + 96));
  }

  else
  {
    __break(1u);
  }

  return result;
}

{
  v1 = v0[6];
  v0[5] = &unk_2876DCD30;
  *v1 = swift_dynamicCastObjCProtocolUnconditional();
  v2 = v0[1];

  return v2();
}

uint64_t closure #2 in XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:)(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 80) = v1;

  if (v1)
  {
    v5 = closure #2 in XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:);
  }

  else
  {
    *(v4 + 88) = a1;
    v5 = closure #2 in XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t closure #3 in XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:)(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v2 = *(Strong + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_deliveryInterface);

    (*(*v2 + 400))(v3);
  }

  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v5 = *(result + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_registrationInterface);

    (*(*v5 + 400))(v6);
  }

  return result;
}

uint64_t XPCUtils.XPCClient.remoteObjectProxy(for:)(_BYTE *a1)
{
  *(v2 + 16) = v1;
  *(v2 + 41) = *a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v3 = static XPCActor.shared;

  return MEMORY[0x2822009F8](XPCUtils.XPCClient.remoteObjectProxy(for:), v3, 0);
}

uint64_t XPCUtils.XPCClient.remoteObjectProxy(for:)(uint64_t a1)
{
  v16 = v1;
  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = *(v1 + 41);
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v15 = v6;
    *v5 = 136315138;
    *(v1 + 40) = v4;
    v7 = String.init<A>(describing:)();
    v9 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v15);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_264F1F000, v2, v3, "XPCClient -- Getting remote object proxy for %s interface.", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x266755550](v6, -1, -1);
    MEMORY[0x266755550](v5, -1, -1);
  }

  if (*(v1 + 41))
  {
    v14 = _s15SecureMessaging8XPCUtilsO10ConnectionC21createDaemonInterface10resultType05errorI019isReconnectionEvent20requestCreationBlock03xpcP0qd__qd__m_qd_0_mSbAC19XPCInterfaceRequestVScCyAC20CollaboratorProtocol_ps5Error_pGYbXEyx_yAcN_pSg_10Foundation4DataVSgtYbctYbXEtYaKAcNRd__AC07XPCableV0Rd_0_r0_lFAC09XPCDaemonU0_p_AC012RegistrationtU0_pAC09XPCClientoV0VTtt0g5Tf4dnnn_n;
    v10 = swift_task_alloc();
    *(v1 + 32) = v10;
    *v10 = v1;
    v10[1] = XPCUtils.XPCClient.remoteObjectProxy(for:);
    v11 = closure #4 in XPCUtils.XPCClient.remoteObjectProxy(for:);
  }

  else
  {
    v14 = _s15SecureMessaging8XPCUtilsO10ConnectionC21createDaemonInterface10resultType05errorI019isReconnectionEvent20requestCreationBlock03xpcP0qd__qd__m_qd_0_mSbAC19XPCInterfaceRequestVScCyAC20CollaboratorProtocol_ps5Error_pGYbXEyx_yAcN_pSg_10Foundation4DataVSgtYbctYbXEtYaKAcNRd__AC07XPCableV0Rd_0_r0_lFAC09XPCDaemonU0_p_AC08DeliverytU0_pAC09XPCClientoV0VTtt0g5Tf4dnnn_n;
    v12 = swift_task_alloc();
    *(v1 + 24) = v12;
    *v12 = v1;
    v12[1] = XPCUtils.XPCClient.remoteObjectProxy(for:);
    v11 = closure #2 in XPCUtils.XPCClient.remoteObjectProxy(for:);
  }

  return v14(closure #1 in XPCUtils.XPCClient.remoteObjectProxy(for:), 0, v11, 0);
}

{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

{
  v7 = *v2;

  v5 = *(v7 + 8);
  if (!v1)
  {
    v4 = a1;
  }

  return v5(v4);
}

uint64_t thunk for @escaping @callee_guaranteed @Sendable (@guaranteed XPCUtils.CollaboratorProtocol?, @guaranteed Data?) -> ()(uint64_t a1, uint64_t a2, void *a3)
{
  v3 = a3;
  v5 = *(a1 + 32);
  if (a3)
  {

    swift_unknownObjectRetain();
    v6 = v3;
    v3 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;
  }

  else
  {

    swift_unknownObjectRetain();
    v8 = 0xF000000000000000;
  }

  v5(a2, v3, v8);
  swift_unknownObjectRelease();
  outlined consume of Data?(v3, v8);
}

uint64_t closure #1 in XPCUtils.XPCClient.remoteObjectProxy(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy15SecureMessaging8XPCUtilsO20CollaboratorProtocol_ps5Error_pGMd, &_sScCy15SecureMessaging8XPCUtilsO20CollaboratorProtocol_ps5Error_pGMR);
  v5 = *(*(v4 - 8) + 16);

  return v5(a2, a1, v4);
}

void closure #2 in XPCUtils.XPCClient.remoteObjectProxy(for:)(void **a1, uint64_t a2, uint64_t a3, uint64_t a4, SEL *a5)
{
  v6 = *a1;
  v8[4] = a2;
  v8[5] = a3;
  v8[0] = MEMORY[0x277D85DD0];
  v8[1] = 1107296256;
  v8[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed XPCUtils.CollaboratorProtocol?, @guaranteed Data?) -> ();
  v8[3] = a4;
  v7 = _Block_copy(v8);

  [v6 *a5];
  _Block_release(v7);
}

uint64_t XPCUtils.XPCClient.deinit()
{
  v1 = OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t XPCUtils.XPCClient.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void specialized XPCUtils.Connection.failAllRunningRequestsAndRestartConnection()()
{
  v1 = type metadata accessor for XPCUtils.XPCInterfaceRequest(0);
  v76 = *(v1 - 8);
  v2 = MEMORY[0x28223BE20](v1 - 8);
  v81 = &v72 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v75 = &v72 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi3key_15SecureMessaging8XPCUtilsO19XPCInterfaceRequestV5valuetSgMd, &_sSi3key_15SecureMessaging8XPCUtilsO19XPCInterfaceRequestV5valuetSgMR);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v72 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v10 = (&v72 - v9);
  v11 = *(*v0 + 184);
  swift_beginAccess();
  v79 = v0;
  v73 = v11;
  v12 = *(v0 + v11);
  v13 = v12 + 64;
  v14 = 1 << *(v12 + 32);
  v15 = -1;
  if (v14 < 64)
  {
    v15 = ~(-1 << v14);
  }

  v16 = v15 & *(v12 + 64);
  v78 = direct field offset for XPCUtils.Connection.logger;
  v17 = (v14 + 63) >> 6;
  v77 = v12;

  v18 = 0;
  v19 = &_sSi3key_15SecureMessaging8XPCUtilsO19XPCInterfaceRequestV5valuetMd;
  *&v20 = 134217984;
  v74 = v20;
  for (i = v8; ; v8 = i)
  {
    if (!v16)
    {
      if (v17 <= v18 + 1)
      {
        v24 = v18 + 1;
      }

      else
      {
        v24 = v17;
      }

      v25 = v24 - 1;
      while (1)
      {
        v23 = v18 + 1;
        if (__OFADD__(v18, 1))
        {
          break;
        }

        if (v23 >= v17)
        {
          v47 = __swift_instantiateConcreteTypeFromMangledNameV2(v19, &_sSi3key_15SecureMessaging8XPCUtilsO19XPCInterfaceRequestV5valuetMR);
          (*(*(v47 - 8) + 56))(v8, 1, 1, v47);
          v16 = 0;
          goto LABEL_16;
        }

        v16 = *(v13 + 8 * v23);
        ++v18;
        if (v16)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_35;
    }

    v23 = v18;
LABEL_15:
    v26 = __clz(__rbit64(v16));
    v16 &= v16 - 1;
    v27 = v26 | (v23 << 6);
    v28 = *(*(v77 + 48) + 8 * v27);
    v29 = v75;
    outlined init with copy of XPCUtils.XPCInterfaceRequest(*(v77 + 56) + *(v76 + 72) * v27, v75);
    v30 = __swift_instantiateConcreteTypeFromMangledNameV2(v19, &_sSi3key_15SecureMessaging8XPCUtilsO19XPCInterfaceRequestV5valuetMR);
    v31 = *(v30 + 48);
    v32 = i;
    *i = v28;
    v8 = v32;
    outlined init with take of XPCUtils.XPCInterfaceRequest(v29, &v32[v31]);
    (*(*(v30 - 8) + 56))(v8, 0, 1, v30);
    v25 = v23;
LABEL_16:
    outlined init with take of (key: Int, value: XPCUtils.XPCInterfaceRequest)?(v8, v10);
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(v19, &_sSi3key_15SecureMessaging8XPCUtilsO19XPCInterfaceRequestV5valuetMR);
    if ((*(*(v33 - 8) + 48))(v10, 1, v33) == 1)
    {
      break;
    }

    v34 = v19;
    v35 = *v10;
    outlined init with take of XPCUtils.XPCInterfaceRequest(v10 + *(v33 + 48), v81);
    v36 = Logger.logObject.getter();
    v37 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = v74;
      *(v38 + 4) = v35;
      _os_log_impl(&dword_264F1F000, v36, v37, "XPCConnection failing request due to interruption event { requestID: %ld }", v38, 0xCu);
      MEMORY[0x266755550](v38, -1, -1);
    }

    lazy protocol witness table accessor for type XPCUtils.XPCError and conformance XPCUtils.XPCError();
    v39 = swift_allocError();
    *v40 = 0;
    *(v40 + 8) = 0;
    *(v40 + 16) = 0;
    v84 = v39;
    v41 = v39;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {

      aBlock[0] = v39;
      v21 = v39;
    }

    else
    {
      lazy protocol witness table accessor for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError();
      v42 = swift_allocError();
      v44 = v43;
      swift_getErrorValue();
      v45 = Error.readableDescription.getter(v82, v83);
      *v44 = 3;
      *(v44 + 8) = v45;
      *(v44 + 16) = v46;
      aBlock[0] = v42;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy15SecureMessaging8XPCUtilsO20CollaboratorProtocol_ps5Error_pGMd, &_sScCy15SecureMessaging8XPCUtilsO20CollaboratorProtocol_ps5Error_pGMR);
    v22 = v81;
    CheckedContinuation.resume(throwing:)();
    outlined destroy of XPCUtils.XPCInterfaceRequest(v22);

    v18 = v25;
    v19 = v34;
  }

  v48 = v79;
  v49 = v73;
  swift_beginAccess();
  if (*(*(v48 + v49) + 16))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v84 = *(v48 + v49);
    *(v48 + v49) = 0x8000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySi15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVGMd, &_ss17_NativeDictionaryVySi15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVGMR);
    _NativeDictionary.removeAll(isUnique:)(isUniquelyReferenced_nonNull_native);
    *(v48 + v49) = v84;
  }

  swift_endAccess();
  v51 = *(v48 + direct field offset for XPCUtils.Connection.listenerEndpoint);
  if (v51)
  {
    v52 = [objc_allocWithZone(MEMORY[0x277CCAE80]) initWithListenerEndpoint_];
  }

  else
  {
    v53 = *(v48 + direct field offset for XPCUtils.Connection.machServiceName);
    v54 = *(v48 + direct field offset for XPCUtils.Connection.machServiceName + 8);
    v55 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v56 = MEMORY[0x266754510](v53, v54);
    v52 = [v55 initWithMachServiceName:v56 options:0];
  }

  v57 = *(v48 + direct field offset for XPCUtils.Connection.queue);
  v58 = v52;
  [v58 _setQueue_];
  [v58 setRemoteObjectInterface_];
  aBlock[4] = partial apply for specialized closure #1 in XPCUtils.Connection.failAllRunningRequestsAndRestartConnection();
  aBlock[5] = v48;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_50;
  v59 = _Block_copy(aBlock);

  [v58 setInterruptionHandler_];
  _Block_release(v59);
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v60, v61))
  {
    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&dword_264F1F000, v60, v61, "XPCConnection starting new connection after interrupt", v62, 2u);
    MEMORY[0x266755550](v62, -1, -1);
  }

  [v58 resume];
  v63 = direct field offset for XPCUtils.Connection.connection;
  v64 = *(v48 + direct field offset for XPCUtils.Connection.connection);
  *(v48 + direct field offset for XPCUtils.Connection.connection) = v58;
  v65 = *(v48 + direct field offset for XPCUtils.Connection._nextConnectionID);
  if (__OFADD__(v65, 1))
  {
LABEL_35:
    __break(1u);
    return;
  }

  *(v48 + direct field offset for XPCUtils.Connection._nextConnectionID) = v65 + 1;
  *(v48 + direct field offset for XPCUtils.Connection.connectionID) = v65;
  [v64 setInterruptionHandler_];
  [v64 setInvalidationHandler_];
  [v64 invalidate];
  v66 = [*(v48 + v63) remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging8XPCUtilsO17XPCDaemonProtocol_pMd, &_s15SecureMessaging8XPCUtilsO17XPCDaemonProtocol_pMR);
  swift_dynamicCast();
  v67 = *(*v48 + 176);
  swift_beginAccess();
  *(v48 + v67) = v85;
  swift_unknownObjectRelease();
  v68 = v48 + *(*v48 + 192);
  swift_beginAccess();
  v69 = *v68;
  if (*v68)
  {
    v70 = *(v68 + 8);

    v69(v71);

    outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error))?(v69, v70);
  }

  else
  {

    v64 = v58;
  }
}

uint64_t specialized closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, void (*a6)(uint64_t *, uint64_t, uint64_t), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v24 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVSgMd, &_s15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v23 - v14;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  a4(a1);
  v16 = type metadata accessor for XPCUtils.XPCInterfaceRequest(0);
  (*(*(v16 - 8) + 56))(v15, 0, 1, v16);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v15, a3);
  swift_endAccess();
  v17 = Logger.logObject.getter();
  v18 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 134217984;
    *(v19 + 4) = a3;
    _os_log_impl(&dword_264F1F000, v17, v18, "XPCConnection stored and sending request { requestID: %ld }", v19, 0xCu);
    MEMORY[0x266755550](v19, -1, -1);
  }

  v20 = *(*a2 + 176);
  swift_beginAccess();
  v25 = *(a2 + v20);
  v21 = swift_allocObject();
  *(v21 + 16) = a2;
  *(v21 + 24) = a3;
  swift_unknownObjectRetain();

  v24(&v25, a9, v21);
  swift_unknownObjectRelease();
}

uint64_t specialized closure #1 in closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v22 - v14;
  v16 = type metadata accessor for TaskPriority();
  (*(*(v16 - 8) + 56))(v15, 1, 1, v16);

  outlined copy of Data?(a2, a3);
  v17 = one-time initialization token for shared;
  swift_unknownObjectRetain();
  if (v17 != -1)
  {
    swift_once();
  }

  v18 = static XPCActor.shared;
  v19 = _s15SecureMessaging8XPCActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type XPCActor and conformance XPCActor, type metadata accessor for XPCActor, &protocol conformance descriptor for XPCActor);
  v20 = swift_allocObject();
  v20[2] = v18;
  v20[3] = v19;
  v20[4] = a4;
  v20[5] = a5;
  v20[6] = a2;
  v20[7] = a3;
  v20[8] = a1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v15, a7, v20);
}

uint64_t specialized closure #1 in closure #1 in closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[23] = a7;
  v8[24] = a8;
  v8[21] = a5;
  v8[22] = a6;
  v8[20] = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static XPCActor.shared;

  return MEMORY[0x2822009F8](specialized closure #1 in closure #1 in closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:), v9, 0);
}

{
  v8[23] = a7;
  v8[24] = a8;
  v8[21] = a5;
  v8[22] = a6;
  v8[20] = a4;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static XPCActor.shared;

  return MEMORY[0x2822009F8](specialized closure #1 in closure #1 in closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:), v9, 0);
}

uint64_t specialized closure #1 in closure #1 in closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:)()
{
  v65 = v0;
  v2 = *(v0 + 176);
  v1 = *(v0 + 184);
  outlined copy of Data?(v2, v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  outlined consume of Data?(v2, v1);
  if (os_log_type_enabled(v3, v4))
  {
    v6 = *(v0 + 176);
    v5 = *(v0 + 184);
    v7 = *(v0 + 168);
    v8 = swift_slowAlloc();
    v63 = v0;
    v64 = swift_slowAlloc();
    v9 = v64;
    *v8 = 134218242;
    *(v8 + 4) = v7;
    *(v8 + 12) = 2080;
    if (v5 >> 60 == 15)
    {
      v10 = 0;
    }

    else
    {
      v10 = v6;
    }

    if (v5 >> 60 == 15)
    {
      v11 = 0xC000000000000000;
    }

    else
    {
      v11 = v5;
    }

    outlined copy of Data?(v6, v5);
    v12 = Data.description.getter();
    v14 = v13;
    outlined consume of Data._Representation(v10, v11);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v64);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_264F1F000, v3, v4, "XPCConnection received result { requestID: %ld, errorData: %s }", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    v16 = v9;
    v0 = v63;
    MEMORY[0x266755550](v16, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  v17 = *(v0 + 192);
  if (v17)
  {
    swift_unknownObjectRetain();
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = *(v0 + 168);
      v21 = swift_slowAlloc();
      *v21 = 134217984;
      *(v21 + 4) = v20;
      _os_log_impl(&dword_264F1F000, v18, v19, "XPCConnection fullfilling with result { requestID: %ld }", v21, 0xCu);
      MEMORY[0x266755550](v21, -1, -1);
    }

    v22 = *(v0 + 168);

    specialized XPCUtils.Connection.finish(requestID:with:)(v22, v17);
    swift_unknownObjectRelease();
  }

  else
  {
    v23 = *(v0 + 184);
    if (v23 >> 60 == 15)
    {
      v24 = Logger.logObject.getter();
      v25 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = *(v0 + 168);
        v27 = swift_slowAlloc();
        *v27 = 134217984;
        *(v27 + 4) = v26;
        _os_log_impl(&dword_264F1F000, v24, v25, "XPCConnection failing with empty result { requestID: %ld }", v27, 0xCu);
        MEMORY[0x266755550](v27, -1, -1);
      }

      lazy protocol witness table accessor for type XPCUtils.XPCError and conformance XPCUtils.XPCError();
      v28 = swift_allocError();
      v30 = v29;
      *(v29 + 8) = 0;
      *(v29 + 16) = 0;

      *v30 = 1;
      swift_getErrorValue();
      v31 = Error.readableDescription.getter(*(v0 + 48), *(v0 + 56));
      v33 = v32;

      *(v0 + 16) = 3;
      *(v0 + 24) = v31;
      *(v0 + 32) = v33;
      lazy protocol witness table accessor for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError();
      v34 = _getErrorEmbeddedNSError<A>(_:)();
      if (v34)
      {
        v35 = v34;
      }

      else
      {
        v35 = swift_allocError();
        v40 = *(v0 + 24);
        *v41 = *(v0 + 16);
        *(v41 + 8) = v40;
      }

      specialized XPCUtils.Connection.fail(requestID:with:)(*(v0 + 168), v35);
    }

    else
    {
      outlined copy of Data._Representation(*(v0 + 176), v23);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = *(v0 + 168);
        v39 = swift_slowAlloc();
        *v39 = 134217984;
        *(v39 + 4) = v38;
        _os_log_impl(&dword_264F1F000, v36, v37, "XPCConnection decoding error data { requestID: %ld }", v39, 0xCu);
        MEMORY[0x266755550](v39, -1, -1);
      }

      lazy protocol witness table accessor for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError();
      dispatch thunk of JSONDecoder.decode<A>(_:from:)();
      v42 = *(v0 + 16);
      v44 = *(v0 + 24);
      v43 = *(v0 + 32);
      swift_bridgeObjectRetain_n();
      v45 = Logger.logObject.getter();
      v46 = static os_log_type_t.default.getter();

      if (os_log_type_enabled(v45, v46))
      {
        v47 = *(v0 + 168);
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *v48 = 134218242;
        *(v48 + 4) = v47;
        *(v48 + 12) = 2112;
        *(v0 + 112) = v42;
        *(v0 + 120) = v44;
        *(v0 + 128) = v43;
        lazy protocol witness table accessor for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError();

        if (_getErrorEmbeddedNSError<A>(_:)())
        {
        }

        else
        {
          swift_allocError();
          v52 = *(v0 + 120);
          *v53 = *(v0 + 112);
          *(v53 + 8) = v52;
        }

        v54 = _swift_stdlib_bridgeErrorToNSError();

        *(v48 + 14) = v54;
        *v49 = v54;
        _os_log_impl(&dword_264F1F000, v45, v46, "XPCConnection failing with error { requestID: %ld, error: %@ }", v48, 0x16u);
        outlined destroy of NSObject?(v49, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x266755550](v49, -1, -1);
        MEMORY[0x266755550](v48, -1, -1);
      }

      else
      {
      }

      v55 = *(v0 + 24);
      v56 = *(v0 + 32);
      *(v0 + 112) = *(v0 + 16);
      *(v0 + 120) = v55;
      *(v0 + 128) = v56;
      lazy protocol witness table accessor for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError();

      v57 = _getErrorEmbeddedNSError<A>(_:)();
      if (v57)
      {
        v58 = v57;
      }

      else
      {
        v58 = swift_allocError();
        v59 = *(v0 + 120);
        *v60 = *(v0 + 112);
        *(v60 + 8) = v59;
      }

      v62 = *(v0 + 176);
      v61 = *(v0 + 184);
      specialized XPCUtils.Connection.fail(requestID:with:)(*(v0 + 168), v58);
      outlined consume of Data?(v62, v61);
    }
  }

  v50 = *(v0 + 8);

  return v50();
}

void specialized XPCUtils.Connection.finish(requestID:with:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVSgMd, &_s15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v14 - v5;
  v7 = type metadata accessor for XPCUtils.XPCInterfaceRequest(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  specialized Dictionary.removeValue(forKey:)(a1, v6);
  swift_endAccess();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of NSObject?(v6, &_s15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVSgMd, &_s15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVSgMR);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = a1;
      _os_log_impl(&dword_264F1F000, v11, v12, "XPCConnection not tracking requestID. Failing finish operation { requestID: %ld }", v13, 0xCu);
      MEMORY[0x266755550](v13, -1, -1);
    }
  }

  else
  {
    outlined init with take of XPCUtils.XPCInterfaceRequest(v6, v10);
    v14[1] = a2;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy15SecureMessaging8XPCUtilsO20CollaboratorProtocol_ps5Error_pGMd, &_sScCy15SecureMessaging8XPCUtilsO20CollaboratorProtocol_ps5Error_pGMR);
    CheckedContinuation.resume(returning:)();
    outlined destroy of XPCUtils.XPCInterfaceRequest(v10);
  }
}

void specialized XPCUtils.Connection.fail(requestID:with:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVSgMd, &_s15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for XPCUtils.XPCInterfaceRequest(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  specialized Dictionary.removeValue(forKey:)(a1, v6);
  swift_endAccess();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of NSObject?(v6, &_s15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVSgMd, &_s15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVSgMR);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = a1;
      _os_log_impl(&dword_264F1F000, v11, v12, "XPCConnection not tracking requestID. Failing fail operation { requestID: %ld }", v13, 0xCu);
      MEMORY[0x266755550](v13, -1, -1);
    }
  }

  else
  {
    outlined init with take of XPCUtils.XPCInterfaceRequest(v6, v10);
    XPCUtils.XPCInterfaceRequest.resume(throwing:)(a2);
    outlined destroy of XPCUtils.XPCInterfaceRequest(v10);
  }
}

void specialized closure #1 in XPCUtils.Connection.init(queue:machServiceName:remoteObjectInterface:listenerEndpoint:)(uint64_t a1)
{
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_264F1F000, v1, v2, "XPCConnection interrupted", v3, 2u);
    MEMORY[0x266755550](v3, -1, -1);
  }

  specialized XPCUtils.Connection.failAllRunningRequestsAndRestartConnection()();
}

uint64_t specialized XPCUtils.XPCInterface.init(remoteInterface:)(uint64_t a1)
{
  v2 = v1;
  Logger.init(subsystem:category:)();
  *(v1 + direct field offset for XPCUtils.XPCInterface.needsReconnection) = 0;
  v4 = direct field offset for XPCUtils.XPCInterface.jsonDecoder;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  *(v1 + v4) = JSONDecoder.init()();
  v5 = direct field offset for XPCUtils.XPCInterface.jsonEncoder;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  *(v1 + v5) = JSONEncoder.init()();
  *(v1 + direct field offset for XPCUtils.XPCInterface._nextRequestID) = 0;
  *(v1 + direct field offset for XPCUtils.XPCInterface._nextConnectionID) = 1;
  v6 = direct field offset for XPCUtils.XPCInterface.runningRequests;
  *(v2 + v6) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_15SecureMessaging8XPCUtilsO10XPCRequest_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v7 = (v2 + direct field offset for XPCUtils.XPCInterface.connectionBlock);
  *v7 = 0;
  v7[1] = 0;
  v8 = (v2 + direct field offset for XPCUtils.XPCInterface.reconnectionBlock);
  *v8 = 0;
  v8[1] = 0;
  v9 = *(*v2 + 160);
  *(v2 + v9) = 0;
  swift_beginAccess();
  *(v2 + v9) = a1;
  return v2;
}

uint64_t specialized XPCUtils.Connection.init(queue:machServiceName:remoteObjectInterface:listenerEndpoint:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v6 = v5;
  Logger.init(subsystem:category:)();
  *(v5 + direct field offset for XPCUtils.Connection._nextRequestID) = 0;
  *(v5 + direct field offset for XPCUtils.Connection._nextConnectionID) = 1;
  v12 = direct field offset for XPCUtils.Connection.jsonDecoder;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  *(v5 + v12) = JSONDecoder.init()();
  v13 = direct field offset for XPCUtils.Connection.jsonEncoder;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  *(v5 + v13) = JSONEncoder.init()();
  *(v5 + direct field offset for XPCUtils.Connection.connectionID) = 0;
  v14 = *(*v5 + 184);
  *(v6 + v14) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v15 = (v6 + *(*v6 + 192));
  *v15 = 0;
  v15[1] = 0;
  *(v6 + direct field offset for XPCUtils.Connection.queue) = a1;
  v16 = (v6 + direct field offset for XPCUtils.Connection.machServiceName);
  *v16 = a2;
  v16[1] = a3;
  *(v6 + direct field offset for XPCUtils.Connection.remoteObjectInterface) = a4;
  *(v6 + direct field offset for XPCUtils.Connection.listenerEndpoint) = a5;
  v17 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v18 = a1;
  v19 = a4;
  if (a5)
  {
    v20 = [v17 initWithListenerEndpoint_];
  }

  else
  {

    v21 = MEMORY[0x266754510](a2, a3);

    v20 = [v17 initWithMachServiceName:v21 options:0];
  }

  v22 = *(v6 + direct field offset for XPCUtils.Connection.queue);
  v23 = v20;
  [v23 _setQueue_];
  v24 = v23;
  [v24 setRemoteObjectInterface_];
  *(v6 + direct field offset for XPCUtils.Connection.connection) = v24;
  v25 = [v24 remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging8XPCUtilsO17XPCDaemonProtocol_pMd, &_s15SecureMessaging8XPCUtilsO17XPCDaemonProtocol_pMR);
  swift_dynamicCast();
  v31[4] = partial apply for specialized closure #1 in XPCUtils.Connection.init(queue:machServiceName:remoteObjectInterface:listenerEndpoint:);
  v31[5] = v6;
  v31[0] = MEMORY[0x277D85DD0];
  v31[1] = 1107296256;
  v31[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v31[3] = &block_descriptor_47;
  v26 = _Block_copy(v31);

  [v24 setInterruptionHandler_];
  _Block_release(v26);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_264F1F000, v27, v28, "XPCConnection starting XPC connection", v29, 2u);
    MEMORY[0x266755550](v29, -1, -1);
  }

  [v24 resume];
  return v6;
}

uint64_t specialized XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[8] = a3;
  v4[9] = v3;
  v4[6] = a1;
  v4[7] = a2;
  v5 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v4[10] = v5;
  v4[11] = *(v5 - 8);
  v4[12] = swift_task_alloc();
  v4[13] = type metadata accessor for OS_dispatch_queue_serial.Attributes();
  v4[14] = swift_task_alloc();
  type metadata accessor for DispatchQoS();
  v4[15] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static XPCActor.shared;
  v4[16] = static XPCActor.shared;

  return MEMORY[0x2822009F8](specialized XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:), v6, 0);
}

uint64_t specialized XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:)()
{
  v1 = v0;
  v2 = v0[12];
  v3 = v0[11];
  v4 = v0[9];
  v14 = v0[10];
  v15 = v0[8];
  v16 = v0[6];
  v18 = v0[7];
  Logger.init(subsystem:category:)();
  type metadata accessor for OS_dispatch_queue_serial();
  static DispatchQoS.unspecified.getter();
  v0[5] = MEMORY[0x277D84F90];
  _s15SecureMessaging8XPCActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type OS_dispatch_queue_serial.Attributes and conformance OS_dispatch_queue_serial.Attributes, MEMORY[0x277D852D8], MEMORY[0x277D852E0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMd, &_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue_serial.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v3 + 104))(v2, *MEMORY[0x277D85268], v14);
  v5 = OS_dispatch_queue_serial.init(label:qos:attributes:autoreleaseFrequency:target:)();
  v6 = specialized static XPCUtils.interfaceForXPCDaemonProtocol()();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging8XPCUtilsO10ConnectionCy_AC17XPCDaemonProtocol_pGMd, &_s15SecureMessaging8XPCUtilsO10ConnectionCy_AC17XPCDaemonProtocol_pGMR);
  swift_allocObject();
  v7 = v15;
  v8 = specialized XPCUtils.Connection.init(queue:machServiceName:remoteObjectInterface:listenerEndpoint:)(v5, v16, v18, v6, v15);

  *(v4 + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_xpc) = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging8XPCUtilsO12XPCInterfaceCy_AC28DeliveryCollaboratorProtocol_pGMd, &_s15SecureMessaging8XPCUtilsO12XPCInterfaceCy_AC28DeliveryCollaboratorProtocol_pGMR);
  swift_allocObject();
  *(v4 + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_deliveryInterface) = specialized XPCUtils.XPCInterface.init(remoteInterface:)(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging8XPCUtilsO12XPCInterfaceCy_AC32RegistrationCollaboratorProtocol_pGMd, &_s15SecureMessaging8XPCUtilsO12XPCInterfaceCy_AC32RegistrationCollaboratorProtocol_pGMR);
  swift_allocObject();
  *(v4 + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_registrationInterface) = specialized XPCUtils.XPCInterface.init(remoteInterface:)(0);
  v9 = *(v4 + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_deliveryInterface);
  v1[17] = v9;
  v10 = swift_allocObject();
  v1[18] = v10;
  swift_weakInit();
  v11 = *(*v9 + 344);

  v17 = (v11 + *v11);
  v12 = swift_task_alloc();
  v1[19] = v12;
  *v12 = v1;
  v12[1] = specialized XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:);

  return v17(&async function pointer to partial apply for closure #1 in XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:), v10);
}

{
  v1 = *(*v0 + 128);

  return MEMORY[0x2822009F8](specialized XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:), v1, 0);
}

{
  v1 = *(v0[9] + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_registrationInterface);
  v0[20] = v1;
  v2 = swift_allocObject();
  v0[21] = v2;
  swift_weakInit();
  v3 = *(*v1 + 344);

  v6 = (v3 + *v3);
  v4 = swift_task_alloc();
  v0[22] = v4;
  *v4 = v0;
  v4[1] = specialized XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:);

  return v6(&async function pointer to partial apply for closure #2 in XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:), v2);
}

{
  v1 = *(*v0 + 128);

  return MEMORY[0x2822009F8](specialized XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:), v1, 0);
}

{
  v1 = *(*(v0 + 72) + OBJC_IVAR____TtCO15SecureMessaging8XPCUtils9XPCClient_xpc);
  v2 = swift_allocObject();
  swift_weakInit();

  v3 = (v1 + *(*v1 + 192));

  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = partial apply for closure #3 in XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:);
  v3[1] = v2;
  outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error))?(v4, v5);

  v6 = *(v0 + 8);
  v7 = *(v0 + 72);

  return v6(v7);
}

uint64_t specialized static XPCUtils.XPCClient.weakSharedInstance.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v1 = static XPCActor.shared;
  *(v0 + 16) = static XPCActor.shared;

  return MEMORY[0x2822009F8](specialized static XPCUtils.XPCClient.weakSharedInstance.getter, v1, 0);
}

{
  if (one-time initialization token for weakReference != -1)
  {
    swift_once();
  }

  if (swift_weakLoadStrong())
  {
    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    type metadata accessor for XPCUtils.XPCClient(0);
    swift_allocObject();
    v3 = swift_task_alloc();
    *(v0 + 24) = v3;
    *v3 = v0;
    v3[1] = specialized static XPCUtils.XPCClient.weakSharedInstance.getter;

    return specialized XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:)(0xD00000000000001ELL, 0x80000002651E7980, 0);
  }
}

{
  swift_weakAssign();
  v1 = *(v0 + 32);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t specialized static XPCUtils.XPCClient.weakSharedInstance.getter(uint64_t a1)
{
  v2 = *(*v1 + 16);
  *(*v1 + 32) = a1;

  return MEMORY[0x2822009F8](specialized static XPCUtils.XPCClient.weakSharedInstance.getter, v2, 0);
}

unint64_t lazy protocol witness table accessor for type XPCUtils.XPCInterfaceType and conformance XPCUtils.XPCInterfaceType()
{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCInterfaceType and conformance XPCUtils.XPCInterfaceType;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCInterfaceType and conformance XPCUtils.XPCInterfaceType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCInterfaceType and conformance XPCUtils.XPCInterfaceType);
  }

  return result;
}

uint64_t type metadata accessor for XPCUtils.XPCClient(uint64_t a1)
{
  result = type metadata singleton initialization cache for XPCUtils.XPCClient;
  if (!type metadata singleton initialization cache for XPCUtils.XPCClient)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for XPCUtils.XPCClient(uint64_t a1)
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

uint64_t dispatch thunk of XPCUtils.XPCClient.__allocating_init(machServiceName:listenerEndpoint:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(v3 + 112) + **(v3 + 112));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for closure #2 in KDSRegistration.XPCCoordinator.isRegisteredChanged(simUniqueID:isRegistered:context:completion:);

  return v10(a1, a2, a3);
}

uint64_t _s15SecureMessaging8XPCUtilsO10ConnectionC21createDaemonInterface10resultType05errorI019isReconnectionEvent20requestCreationBlock03xpcP0qd__qd__m_qd_0_mSbAC19XPCInterfaceRequestVScCyAC20CollaboratorProtocol_ps5Error_pGYbXEyx_yAcN_pSg_10Foundation4DataVSgtYbctYbXEtYaKAcNRd__AC07XPCableV0Rd_0_r0_lFAC09XPCDaemonU0_p_AC08DeliverytU0_pAC09XPCClientoV0VTtt0g5Tf4dnnn_n(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static XPCActor.shared;
  v5[10] = static XPCActor.shared;

  return MEMORY[0x2822009F8](_s15SecureMessaging8XPCUtilsO10ConnectionC21createDaemonInterface10resultType05errorI019isReconnectionEvent20requestCreationBlock03xpcP0qd__qd__m_qd_0_mSbAC19XPCInterfaceRequestVScCyAC20CollaboratorProtocol_ps5Error_pGYbXEyx_yAcN_pSg_10Foundation4DataVSgtYbctYbXEtYaKAcNRd__AC07XPCableV0Rd_0_r0_lFAC09XPCDaemonU0_p_AC08DeliverytU0_pAC09XPCClientoV0VTtt0g5Tf4dnnn_nTY0_, v6, 0);
}

uint64_t _s15SecureMessaging8XPCUtilsO10ConnectionC21createDaemonInterface10resultType05errorI019isReconnectionEvent20requestCreationBlock03xpcP0qd__qd__m_qd_0_mSbAC19XPCInterfaceRequestVScCyAC20CollaboratorProtocol_ps5Error_pGYbXEyx_yAcN_pSg_10Foundation4DataVSgtYbctYbXEtYaKAcNRd__AC07XPCableV0Rd_0_r0_lFAC09XPCDaemonU0_p_AC08DeliverytU0_pAC09XPCClientoV0VTtt0g5Tf4dnnn_nTY0_(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t a1), uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 72);
  v10 = direct field offset for XPCUtils.Connection._nextRequestID;
  v11 = *(v9 + direct field offset for XPCUtils.Connection._nextRequestID);
  *(v8 + 88) = v11;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
  }

  else
  {
    *(v9 + v10) = v11 + 1;
    *(v8 + 96) = direct field offset for XPCUtils.Connection.logger;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = v11;
      _os_log_impl(&dword_264F1F000, v12, v13, "XPCConnection told to send { requestID: %ld }", v14, 0xCu);
      MEMORY[0x266755550](v14, -1, -1);
    }

    v16 = *(v8 + 72);
    v15 = *(v8 + 80);
    v21 = *(v8 + 56);
    v22 = *(v8 + 40);

    v17 = _s15SecureMessaging8XPCActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type XPCActor and conformance XPCActor, type metadata accessor for XPCActor, &protocol conformance descriptor for XPCActor);
    v18 = swift_task_alloc();
    *(v8 + 104) = v18;
    *(v18 + 16) = v16;
    *(v18 + 24) = v11;
    *(v18 + 32) = v22;
    *(v18 + 48) = v21;
    v19 = swift_task_alloc();
    *(v8 + 112) = v19;
    a8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging8XPCUtilsO20CollaboratorProtocol_pMd, &_s15SecureMessaging8XPCUtilsO20CollaboratorProtocol_pMR);
    *(v8 + 120) = a8;
    *v19 = v8;
    v19[1] = _s15SecureMessaging8XPCUtilsO10ConnectionC21createDaemonInterface10resultType05errorI019isReconnectionEvent20requestCreationBlock03xpcP0qd__qd__m_qd_0_mSbAC19XPCInterfaceRequestVScCyAC20CollaboratorProtocol_ps5Error_pGYbXEyx_yAcN_pSg_10Foundation4DataVSgtYbctYbXEtYaKAcNRd__AC07XPCableV0Rd_0_r0_lFAC09XPCDaemonU0_p_AC08DeliverytU0_pAC09XPCClientoV0VTtt0g5Tf4dnnn_nTQ1_;
    a6 = partial apply for specialized closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:);
    a1 = v8 + 16;
    a5 = 0x80000002651E8F70;
    a2 = v15;
    a3 = v17;
    a4 = 0xD00000000000005ELL;
    a7 = v18;
  }

  return MEMORY[0x2822008A0](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t _s15SecureMessaging8XPCUtilsO10ConnectionC21createDaemonInterface10resultType05errorI019isReconnectionEvent20requestCreationBlock03xpcP0qd__qd__m_qd_0_mSbAC19XPCInterfaceRequestVScCyAC20CollaboratorProtocol_ps5Error_pGYbXEyx_yAcN_pSg_10Foundation4DataVSgtYbctYbXEtYaKAcNRd__AC07XPCableV0Rd_0_r0_lFAC09XPCDaemonU0_p_AC08DeliverytU0_pAC09XPCClientoV0VTtt0g5Tf4dnnn_nTQ1_()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = _s15SecureMessaging8XPCUtilsO10ConnectionC21createDaemonInterface10resultType05errorI019isReconnectionEvent20requestCreationBlock03xpcP0qd__qd__m_qd_0_mSbAC19XPCInterfaceRequestVScCyAC20CollaboratorProtocol_ps5Error_pGYbXEyx_yAcN_pSg_10Foundation4DataVSgtYbctYbXEtYaKAcNRd__AC07XPCableV0Rd_0_r0_lFAC09XPCDaemonU0_p_AC08DeliverytU0_pAC09XPCClientoV0VTtt0g5Tf4dnnn_nTY3_;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = _s15SecureMessaging8XPCUtilsO10ConnectionC21createDaemonInterface10resultType05errorI019isReconnectionEvent20requestCreationBlock03xpcP0qd__qd__m_qd_0_mSbAC19XPCInterfaceRequestVScCyAC20CollaboratorProtocol_ps5Error_pGYbXEyx_yAcN_pSg_10Foundation4DataVSgtYbctYbXEtYaKAcNRd__AC07XPCableV0Rd_0_r0_lFAC09XPCDaemonU0_p_AC08DeliverytU0_pAC09XPCClientoV0VTtt0g5Tf4dnnn_nTY2_;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t _s15SecureMessaging8XPCUtilsO10ConnectionC21createDaemonInterface10resultType05errorI019isReconnectionEvent20requestCreationBlock03xpcP0qd__qd__m_qd_0_mSbAC19XPCInterfaceRequestVScCyAC20CollaboratorProtocol_ps5Error_pGYbXEyx_yAcN_pSg_10Foundation4DataVSgtYbctYbXEtYaKAcNRd__AC07XPCableV0Rd_0_r0_lFAC09XPCDaemonU0_p_AC08DeliverytU0_pAC09XPCClientoV0VTtt0g5Tf4dnnn_nTY2_(uint64_t a1)
{
  v2 = v1[2];
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v1[11];
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = v5;
    _os_log_impl(&dword_264F1F000, v3, v4, "XPCConnection fulfilling with successful result { requestID: %ld }", v6, 0xCu);
    MEMORY[0x266755550](v6, -1, -1);
  }

  v1[3] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging8XPCUtilsO28DeliveryCollaboratorProtocol_pMd, &_s15SecureMessaging8XPCUtilsO28DeliveryCollaboratorProtocol_pMR);
  swift_dynamicCast();
  v7 = v1[4];
  v8 = v1[1];

  return v8(v7);
}

uint64_t _s15SecureMessaging8XPCUtilsO10ConnectionC21createDaemonInterface10resultType05errorI019isReconnectionEvent20requestCreationBlock03xpcP0qd__qd__m_qd_0_mSbAC19XPCInterfaceRequestVScCyAC20CollaboratorProtocol_ps5Error_pGYbXEyx_yAcN_pSg_10Foundation4DataVSgtYbctYbXEtYaKAcNRd__AC07XPCableV0Rd_0_r0_lFAC09XPCDaemonU0_p_AC012RegistrationtU0_pAC09XPCClientoV0VTtt0g5Tf4dnnn_n(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[8] = a4;
  v5[9] = v4;
  v5[6] = a2;
  v5[7] = a3;
  v5[5] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static XPCActor.shared;
  v5[10] = static XPCActor.shared;

  return MEMORY[0x2822009F8](_s15SecureMessaging8XPCUtilsO10ConnectionC21createDaemonInterface10resultType05errorI019isReconnectionEvent20requestCreationBlock03xpcP0qd__qd__m_qd_0_mSbAC19XPCInterfaceRequestVScCyAC20CollaboratorProtocol_ps5Error_pGYbXEyx_yAcN_pSg_10Foundation4DataVSgtYbctYbXEtYaKAcNRd__AC07XPCableV0Rd_0_r0_lFAC09XPCDaemonU0_p_AC012RegistrationtU0_pAC09XPCClientoV0VTtt0g5Tf4dnnn_nTY0_, v6, 0);
}

uint64_t _s15SecureMessaging8XPCUtilsO10ConnectionC21createDaemonInterface10resultType05errorI019isReconnectionEvent20requestCreationBlock03xpcP0qd__qd__m_qd_0_mSbAC19XPCInterfaceRequestVScCyAC20CollaboratorProtocol_ps5Error_pGYbXEyx_yAcN_pSg_10Foundation4DataVSgtYbctYbXEtYaKAcNRd__AC07XPCableV0Rd_0_r0_lFAC09XPCDaemonU0_p_AC012RegistrationtU0_pAC09XPCClientoV0VTtt0g5Tf4dnnn_nTY0_(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t a1), uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 72);
  v10 = direct field offset for XPCUtils.Connection._nextRequestID;
  v11 = *(v9 + direct field offset for XPCUtils.Connection._nextRequestID);
  *(v8 + 88) = v11;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
  }

  else
  {
    *(v9 + v10) = v11 + 1;
    *(v8 + 96) = direct field offset for XPCUtils.Connection.logger;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = v11;
      _os_log_impl(&dword_264F1F000, v12, v13, "XPCConnection told to send { requestID: %ld }", v14, 0xCu);
      MEMORY[0x266755550](v14, -1, -1);
    }

    v16 = *(v8 + 72);
    v15 = *(v8 + 80);
    v21 = *(v8 + 56);
    v22 = *(v8 + 40);

    v17 = _s15SecureMessaging8XPCActorCACScAAAWlTm_0(&lazy protocol witness table cache variable for type XPCActor and conformance XPCActor, type metadata accessor for XPCActor, &protocol conformance descriptor for XPCActor);
    v18 = swift_task_alloc();
    *(v8 + 104) = v18;
    *(v18 + 16) = v16;
    *(v18 + 24) = v11;
    *(v18 + 32) = v22;
    *(v18 + 48) = v21;
    v19 = swift_task_alloc();
    *(v8 + 112) = v19;
    a8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging8XPCUtilsO20CollaboratorProtocol_pMd, &_s15SecureMessaging8XPCUtilsO20CollaboratorProtocol_pMR);
    *(v8 + 120) = a8;
    *v19 = v8;
    v19[1] = _s15SecureMessaging8XPCUtilsO10ConnectionC21createDaemonInterface10resultType05errorI019isReconnectionEvent20requestCreationBlock03xpcP0qd__qd__m_qd_0_mSbAC19XPCInterfaceRequestVScCyAC20CollaboratorProtocol_ps5Error_pGYbXEyx_yAcN_pSg_10Foundation4DataVSgtYbctYbXEtYaKAcNRd__AC07XPCableV0Rd_0_r0_lFAC09XPCDaemonU0_p_AC012RegistrationtU0_pAC09XPCClientoV0VTtt0g5Tf4dnnn_nTQ1_;
    a6 = partial apply for specialized closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:);
    a1 = v8 + 16;
    a5 = 0x80000002651E8F70;
    a2 = v15;
    a3 = v17;
    a4 = 0xD00000000000005ELL;
    a7 = v18;
  }

  return MEMORY[0x2822008A0](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t _s15SecureMessaging8XPCUtilsO10ConnectionC21createDaemonInterface10resultType05errorI019isReconnectionEvent20requestCreationBlock03xpcP0qd__qd__m_qd_0_mSbAC19XPCInterfaceRequestVScCyAC20CollaboratorProtocol_ps5Error_pGYbXEyx_yAcN_pSg_10Foundation4DataVSgtYbctYbXEtYaKAcNRd__AC07XPCableV0Rd_0_r0_lFAC09XPCDaemonU0_p_AC012RegistrationtU0_pAC09XPCClientoV0VTtt0g5Tf4dnnn_nTQ1_()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  if (v0)
  {
    v3 = *(v2 + 80);
    v4 = _s15SecureMessaging8XPCUtilsO10ConnectionC21createDaemonInterface10resultType05errorI019isReconnectionEvent20requestCreationBlock03xpcP0qd__qd__m_qd_0_mSbAC19XPCInterfaceRequestVScCyAC20CollaboratorProtocol_ps5Error_pGYbXEyx_yAcN_pSg_10Foundation4DataVSgtYbctYbXEtYaKAcNRd__AC07XPCableV0Rd_0_r0_lFAC09XPCDaemonU0_p_AC012RegistrationtU0_pAC09XPCClientoV0VTtt0g5Tf4dnnn_nTY3_;
  }

  else
  {
    v5 = *(v2 + 80);

    v4 = _s15SecureMessaging8XPCUtilsO10ConnectionC21createDaemonInterface10resultType05errorI019isReconnectionEvent20requestCreationBlock03xpcP0qd__qd__m_qd_0_mSbAC19XPCInterfaceRequestVScCyAC20CollaboratorProtocol_ps5Error_pGYbXEyx_yAcN_pSg_10Foundation4DataVSgtYbctYbXEtYaKAcNRd__AC07XPCableV0Rd_0_r0_lFAC09XPCDaemonU0_p_AC012RegistrationtU0_pAC09XPCClientoV0VTtt0g5Tf4dnnn_nTY2_;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t _s15SecureMessaging8XPCUtilsO10ConnectionC21createDaemonInterface10resultType05errorI019isReconnectionEvent20requestCreationBlock03xpcP0qd__qd__m_qd_0_mSbAC19XPCInterfaceRequestVScCyAC20CollaboratorProtocol_ps5Error_pGYbXEyx_yAcN_pSg_10Foundation4DataVSgtYbctYbXEtYaKAcNRd__AC07XPCableV0Rd_0_r0_lFAC09XPCDaemonU0_p_AC012RegistrationtU0_pAC09XPCClientoV0VTtt0g5Tf4dnnn_nTY2_(uint64_t a1)
{
  v2 = v1[2];
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v1[11];
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = v5;
    _os_log_impl(&dword_264F1F000, v3, v4, "XPCConnection fulfilling with successful result { requestID: %ld }", v6, 0xCu);
    MEMORY[0x266755550](v6, -1, -1);
  }

  v1[3] = v2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging8XPCUtilsO32RegistrationCollaboratorProtocol_pMd, &_s15SecureMessaging8XPCUtilsO32RegistrationCollaboratorProtocol_pMR);
  swift_dynamicCast();
  v7 = v1[4];
  v8 = v1[1];

  return v8(v7);
}

uint64_t _s15SecureMessaging8XPCUtilsO10ConnectionC21createDaemonInterface10resultType05errorI019isReconnectionEvent20requestCreationBlock03xpcP0qd__qd__m_qd_0_mSbAC19XPCInterfaceRequestVScCyAC20CollaboratorProtocol_ps5Error_pGYbXEyx_yAcN_pSg_10Foundation4DataVSgtYbctYbXEtYaKAcNRd__AC07XPCableV0Rd_0_r0_lFAC09XPCDaemonU0_p_AC012RegistrationtU0_pAC09XPCClientoV0VTtt0g5Tf4dnnn_nTY3_()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t partial apply for specialized closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:)(uint64_t a1)
{
  return partial apply for specialized closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:)(a1, &unk_2876C85E0, partial apply for specialized closure #1 in closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:));
}

{
  return partial apply for specialized closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:)(a1, &unk_2876C8658, partial apply for specialized closure #1 in closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:));
}

uint64_t sub_264FA5BD0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t partial apply for specialized closure #1 in closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:)(uint64_t a1, uint64_t a2, unint64_t a3)
{
  return specialized closure #1 in closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:)(a1, a2, a3, *(v3 + 16), *(v3 + 24), &unk_2876C8608, &async function pointer to partial apply for specialized closure #1 in closure #1 in closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:));
}

{
  return specialized closure #1 in closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:)(a1, a2, a3, *(v3 + 16), *(v3 + 24), &unk_2876C8680, &async function pointer to partial apply for specialized closure #1 in closure #1 in closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:));
}

uint64_t partial apply for specialized closure #1 in closure #1 in closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return specialized closure #1 in closure #1 in closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  v10 = v1[8];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return specialized closure #1 in closure #1 in closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:)(a1, v4, v5, v6, v7, v8, v9, v10);
}

unint64_t lazy protocol witness table accessor for type XPCUtils.XPCError and conformance XPCUtils.XPCError()
{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCError and conformance XPCUtils.XPCError);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError()
{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError);
  }

  return result;
}

uint64_t outlined init with take of XPCUtils.XPCInterfaceRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCUtils.XPCInterfaceRequest(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of XPCUtils.XPCInterfaceRequest(uint64_t a1)
{
  v2 = type metadata accessor for XPCUtils.XPCInterfaceRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t block_copy_helper_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t objectdestroy_17Tm()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 56);
  if (v1 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v0 + 48), v1);
  }

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

unint64_t type metadata accessor for OS_dispatch_queue_serial()
{
  result = lazy cache variable for type metadata for OS_dispatch_queue_serial;
  if (!lazy cache variable for type metadata for OS_dispatch_queue_serial)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for OS_dispatch_queue_serial);
  }

  return result;
}

uint64_t _s15SecureMessaging8XPCActorCACScAAAWlTm_0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type [OS_dispatch_queue_serial.Attributes] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [OS_dispatch_queue_serial.Attributes] and conformance [A];
  if (!lazy protocol witness table cache variable for type [OS_dispatch_queue_serial.Attributes] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMd, &_sSaySo24OS_dispatch_queue_serialC8DispatchE10AttributesVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [OS_dispatch_queue_serial.Attributes] and conformance [A]);
  }

  return result;
}

uint64_t sub_264FA61B8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t partial apply for closure #1 in XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:)(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:)(a1, v1);
}

uint64_t partial apply for closure #2 in XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:)(uint64_t a1)
{
  v4 = swift_task_alloc();
  *(v2 + 16) = v4;
  *v4 = v2;
  v4[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #2 in XPCUtils.XPCClient.init(machServiceName:listenerEndpoint:)(a1, v1);
}

uint64_t outlined init with copy of XPCUtils.XPCInterfaceRequest(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for XPCUtils.XPCInterfaceRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of (key: Int, value: XPCUtils.XPCInterfaceRequest)?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi3key_15SecureMessaging8XPCUtilsO19XPCInterfaceRequestV5valuetSgMd, &_sSi3key_15SecureMessaging8XPCUtilsO19XPCInterfaceRequestV5valuetSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t VersatileError.init(type:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v11 - v8;
  (*(v7 + 16))(&v11 - v8, a1, AssociatedTypeWitness);
  (*(a3 + 104))(v9, 0, 0, a2, a3);
  return (*(v7 + 8))(a1, AssociatedTypeWitness);
}

uint64_t _s15SecureMessaging12asyncRethrow_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lF(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v9 = v7;
  v9[14] = v15;
  v9[15] = v16;
  v9[12] = a6;
  v9[13] = a7;
  v9[10] = a4;
  v9[11] = a5;
  swift_getAssociatedTypeWitness();
  v9[16] = swift_task_alloc();
  v13 = (a2 + *a2);
  v11 = swift_task_alloc();
  v9[17] = v11;
  *v11 = v9;
  v11[1] = _s15SecureMessaging12asyncRethrow_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lFTQ0_;

  return v13(a1);
}

uint64_t _s15SecureMessaging12asyncRethrow_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lFTQ0_()
{
  v2 = *v1;
  *(v2 + 144) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](_s15SecureMessaging12asyncRethrow_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lFTY1_, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t _s15SecureMessaging12asyncRethrow_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lFTY1_()
{
  v1 = v0[11];
  swift_getErrorValue();
  v2 = Error.readableDescription.getter(v0[3], v0[4]);
  if (v1)
  {
    (v0[11])(v2, v3);
  }

  v4 = v0[18];
  v5 = v0[16];
  v7 = v0[13];
  v6 = v0[14];

  (*(v6 + 88))(v7, v6);
  swift_getErrorValue();
  v8 = Error.readableDescription.getter(v0[6], v0[7]);
  (*(v6 + 104))(v5, v8, v9, v7, v6);
  swift_willThrowTypedImpl();

  v10 = v0[1];

  return v10();
}

uint64_t _s15SecureMessaging23asyncRethrowIfWrongType_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lF(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v10 = v7;
  v10[15] = v16;
  v10[16] = v17;
  v10[13] = a6;
  v10[14] = a7;
  v10[11] = a4;
  v10[12] = a5;
  swift_getAssociatedTypeWitness();
  v10[17] = swift_task_alloc();
  v10[18] = *(a7 - 8);
  v10[19] = swift_task_alloc();
  v10[20] = swift_task_alloc();
  v14 = (a2 + *a2);
  v12 = swift_task_alloc();
  v10[21] = v12;
  *v12 = v10;
  v12[1] = _s15SecureMessaging23asyncRethrowIfWrongType_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lFTQ0_;

  return v14(a1);
}

uint64_t _s15SecureMessaging23asyncRethrowIfWrongType_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lFTQ0_()
{
  v2 = *v1;
  *(v2 + 176) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](_s15SecureMessaging23asyncRethrowIfWrongType_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lFTY1_, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t _s15SecureMessaging23asyncRethrowIfWrongType_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lFTY1_()
{
  v1 = *(v0 + 176);
  *(v0 + 64) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 152);
    v4 = *(v0 + 160);
    v5 = *(v0 + 144);
    v6 = *(v0 + 112);
    v7 = *(v0 + 96);

    (*(v5 + 32))(v3, v4, v6);
    if (v7)
    {
      v8 = *(v0 + 96);
      v9 = Error.readableDescription.getter(*(v0 + 112), *(*(*(v0 + 120) + 8) + 8));
      v8(v9);
    }

    v11 = *(v0 + 144);
    v10 = *(v0 + 152);
    v12 = *(v0 + 112);
    (*(v11 + 16))(*(v0 + 128), v10, v12);
    swift_willThrowTypedImpl();
    (*(v11 + 8))(v10, v12);
    v13 = *(v0 + 64);
  }

  else
  {
    v14 = *(v0 + 96);

    swift_getErrorValue();
    v15 = Error.readableDescription.getter(*(v0 + 24), *(v0 + 32));
    if (v14)
    {
      (*(v0 + 96))(v15, v16);
    }

    v17 = *(v0 + 176);
    v18 = *(v0 + 136);
    v20 = *(v0 + 112);
    v19 = *(v0 + 120);

    (*(v19 + 88))(v20, v19);
    swift_getErrorValue();
    v21 = Error.readableDescription.getter(*(v0 + 48), *(v0 + 56));
    (*(v19 + 104))(v18, v21, v22, v20, v19);
    swift_willThrowTypedImpl();
    v13 = v17;
  }

  v23 = *(v0 + 8);

  return v23();
}

void _s15SecureMessaging7rethrow_2as3logq_q_yKXK_xySScSgtxYKAA14VersatileErrorRzr0_lF(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v22[0] = a5;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v15 = MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v17 = v22 - v16;
  a1(v15);
  if (v9)
  {
    swift_getErrorValue();
    v18 = Error.readableDescription.getter(v22[6], v22[7]);
    if (a4)
    {
      a4(v18, v19);
    }

    (*(a8 + 88))(a6, a8);
    swift_getErrorValue();
    v20 = Error.readableDescription.getter(v22[2], v22[3]);
    (*(a8 + 104))(v17, v20, v21, a6, a8);
    swift_willThrowTypedImpl();
  }
}

uint64_t VersatileError.errorCode.getter(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v5 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v7 = v9 - v6;
  (*(a2 + 88))(a1, a2);
  swift_getAssociatedConformanceWitness();
  dispatch thunk of RawRepresentable.rawValue.getter();
  (*(v5 + 8))(v7, AssociatedTypeWitness);
  return v9[1];
}

uint64_t Error.readableDescription.getter(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v57 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s8SwiftMLS0B0O8MLSErrorOSgMd, &_s8SwiftMLS0B0O8MLSErrorOSgMR);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v8 = &v55 - v7;
  v9 = *(a1 - 8);
  v10 = MEMORY[0x28223BE20](v6);
  v55 = &v55 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v55 - v13;
  MEMORY[0x28223BE20](v12);
  v16 = &v55 - v15;
  v17 = type metadata accessor for MLS.MLSError();
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v55 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = v9;
  v21 = *(v9 + 16);
  v58 = v3;
  v21(v16, v3, a1);
  v22 = swift_dynamicCast();
  v23 = *(v18 + 56);
  if (v22)
  {
    v23(v8, 0, 1, v17);
    (*(v18 + 32))(v20, v8, v17);
    v61 = 0;
    v62 = 0xE000000000000000;
    _StringGuts.grow(_:)(16);
    MEMORY[0x2667545A0](0x534C4D7466697753, 0xEE002E726F727245);
    _print_unlocked<A, B>(_:_:)();
    v24 = v61;
    (*(v18 + 8))(v20, v17);
  }

  else
  {
    v23(v8, 1, 1, v17);
    outlined destroy of NSObject?(v8, &_s8SwiftMLS0B0O8MLSErrorOSgMd, &_s8SwiftMLS0B0O8MLSErrorOSgMR);
    v25 = v58;
    v21(v14, v58, a1);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging14VersatileError_pMd, &_s15SecureMessaging14VersatileError_pMR);
    if (swift_dynamicCast())
    {
      outlined init with take of MLS.KeyUpdatePolicy(v59, &v61);
      v26 = v63;
      v27 = v64;
      __swift_project_boxed_opaque_existential_1(&v61, v63);
      v28 = (*(v27 + 96))(v26, v27);
      if (v29)
      {
        v30 = v28;
        v31 = v29;
        *&v59[0] = 0;
        *(&v59[0] + 1) = 0xE000000000000000;
        v32 = v63;
        v33 = v64;
        __swift_project_boxed_opaque_existential_1(&v61, v63);
        AssociatedTypeWitness = swift_getAssociatedTypeWitness();
        v35 = *(AssociatedTypeWitness - 8);
        MEMORY[0x28223BE20](AssociatedTypeWitness);
        v37 = &v55 - v36;
        (*(v33 + 88))(v32, v33);
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        (*(v35 + 8))(v37, AssociatedTypeWitness);
        MEMORY[0x2667545A0](v30, v31);
      }

      else
      {
        *&v59[0] = 0;
        *(&v59[0] + 1) = 0xE000000000000000;
        v41 = v63;
        v42 = v64;
        __swift_project_boxed_opaque_existential_1(&v61, v63);
        v43 = swift_getAssociatedTypeWitness();
        v44 = *(v43 - 8);
        MEMORY[0x28223BE20](v43);
        v46 = &v55 - v45;
        (*(v42 + 88))(v41, v42);
        DefaultStringInterpolation.appendInterpolation<A>(_:)();
        (*(v44 + 8))(v46, v43);
      }

      v24 = *&v59[0];
      __swift_destroy_boxed_opaque_existential_1Tm(&v61);
    }

    else
    {
      v60 = 0;
      memset(v59, 0, sizeof(v59));
      outlined destroy of NSObject?(v59, &_s15SecureMessaging14VersatileError_pSgMd, &_s15SecureMessaging14VersatileError_pSgMR);
      v38 = v55;
      v21(v55, v25, a1);
      v39 = _getErrorEmbeddedNSError<A>(_:)();
      if (v39)
      {
        v40 = v39;
        (*(v56 + 8))(v38, a1);
      }

      else
      {
        v40 = swift_allocError();
        (*(v56 + 32))(v47, v38, a1);
      }

      v48 = _convertErrorToNSError(_:)();

      v49 = [v48 domain];
      v50 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v52 = v51;

      v61 = v50;
      v62 = v52;
      MEMORY[0x2667545A0](58, 0xE100000000000000);
      *&v59[0] = [v48 code];
      v53 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x2667545A0](v53);

      return v61;
    }
  }

  return v24;
}

void _s15SecureMessaging18rethrowIfWrongType_2as3logq_q_yKXK_xySScSgtxYKAA14VersatileErrorRzr0_lF(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v32[2] = a5;
  v33 = a4;
  v32[1] = a3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v14 = MEMORY[0x28223BE20](AssociatedTypeWitness - 8);
  v32[0] = v32 - v15;
  v16 = *(a6 - 8);
  v17 = MEMORY[0x28223BE20](v14);
  v19 = v32 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x28223BE20](v17);
  v22 = v32 - v21;
  a1(v20);
  if (v9)
  {
    v38 = v9;
    v23 = v9;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {

      (*(v16 + 32))(v19, v22, a6);
      v24 = v33;
      if (v33)
      {
        v25 = Error.readableDescription.getter(a6, *(*(a8 + 8) + 8));
        v24(v25);
      }

      (*(v16 + 16))(a9, v19, a6);
      swift_willThrowTypedImpl();
      (*(v16 + 8))(v19, a6);
      v26 = v38;
    }

    else
    {

      swift_getErrorValue();
      v27 = Error.readableDescription.getter(v36, v37);
      if (v33)
      {
        (v33)(v27, v28);
      }

      v29 = v32[0];
      (*(a8 + 88))(a6, a8);
      swift_getErrorValue();
      v30 = Error.readableDescription.getter(v34, v35);
      (*(a8 + 104))(v29, v30, v31, a6, a8);
      swift_willThrowTypedImpl();
      v26 = v9;
    }
  }
}

uint64_t asyncRethrowIfWrongType<A, B, C>(_:catching:as:elseAs:log:)(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = v8;
  v10[18] = v18;
  v10[19] = v19;
  v10[16] = v16;
  v10[17] = v17;
  v10[14] = a7;
  v10[15] = a8;
  v10[12] = a5;
  v10[13] = a6;
  swift_getAssociatedTypeWitness();
  v10[20] = swift_task_alloc();
  v10[21] = *(v17 - 8);
  v10[22] = swift_task_alloc();
  v10[23] = swift_task_alloc();
  v10[24] = *(v16 - 8);
  v10[25] = swift_task_alloc();
  v10[26] = swift_task_alloc();
  v10[27] = swift_task_alloc();
  v10[28] = swift_task_alloc();
  v10[29] = swift_task_alloc();
  v14 = (a2 + *a2);
  v12 = swift_task_alloc();
  v10[30] = v12;
  *v12 = v10;
  v12[1] = asyncRethrowIfWrongType<A, B, C>(_:catching:as:elseAs:log:);

  return v14(a1);
}

uint64_t asyncRethrowIfWrongType<A, B, C>(_:catching:as:elseAs:log:)()
{
  v2 = *v1;
  *(v2 + 248) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](asyncRethrowIfWrongType<A, B, C>(_:catching:as:elseAs:log:), 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

{
  v1 = *(v0 + 248);
  *(v0 + 64) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  v3 = swift_dynamicCast();
  v4 = *(v0 + 248);
  if (v3)
  {
    v5 = *(v0 + 224);
    v6 = *(v0 + 232);
    v7 = *(v0 + 192);
    v8 = *(v0 + 128);
    v9 = *(v0 + 112);

    v10 = *(v7 + 32);
    v10(v5, v6, v8);
    if (v9)
    {
      v11 = *(v0 + 112);
      v12 = Error.readableDescription.getter(*(v0 + 128), *(*(*(v0 + 144) + 8) + 8));
      v11(v12);
    }

    (*(*(v0 + 192) + 16))(*(v0 + 216), *(v0 + 224), *(v0 + 128));
    v13 = _getErrorEmbeddedNSError<A>(_:)();
    v14 = *(v0 + 216);
    if (v13)
    {
      (*(*(v0 + 192) + 8))(*(v0 + 216), *(v0 + 128));
    }

    else
    {
      v45 = *(v0 + 128);
      swift_allocError();
      v10(v46, v14, v45);
    }

    v47 = *(v0 + 224);
    v48 = *(v0 + 192);
    v49 = *(v0 + 128);
    swift_willThrow();
    (*(v48 + 8))(v47, v49);
    v50 = *(v0 + 64);
  }

  else
  {

    *(v0 + 72) = v4;
    v15 = v4;
    if (swift_dynamicCast())
    {
      v17 = *(v0 + 176);
      v16 = *(v0 + 184);
      v18 = *(v0 + 168);
      v19 = *(v0 + 152);
      v20 = *(v0 + 136);
      v21 = *(v0 + 112);

      (*(v18 + 32))(v17, v16, v20);
      v22 = Error.readableDescription.getter(v20, v19);
      if (v21)
      {
        (*(v0 + 112))(v22, v23);
      }

      v25 = *(v0 + 152);
      v24 = *(v0 + 160);
      v27 = *(v0 + 136);
      v26 = *(v0 + 144);
      v28 = *(v0 + 128);

      (*(v26 + 88))(v28, v26);
      v29 = Error.readableDescription.getter(v27, v25);
      (*(v26 + 104))(v24, v29, v30, v28, v26);
      v31 = _getErrorEmbeddedNSError<A>(_:)();
      v32 = *(v0 + 208);
      v33 = *(v0 + 192);
      if (v31)
      {
        (*(v33 + 8))(*(v0 + 208), *(v0 + 128));
      }

      else
      {
        v51 = *(v0 + 128);
        swift_allocError();
        (*(v33 + 32))(v52, v32, v51);
      }

      v54 = *(v0 + 168);
      v53 = *(v0 + 176);
      v55 = *(v0 + 136);
      swift_willThrow();
      (*(v54 + 8))(v53, v55);
      v50 = *(v0 + 72);
    }

    else
    {
      v34 = *(v0 + 112);

      swift_getErrorValue();
      v35 = Error.readableDescription.getter(*(v0 + 24), *(v0 + 32));
      if (v34)
      {
        (*(v0 + 112))(v35, v36);
      }

      v37 = *(v0 + 160);
      v38 = *(v0 + 144);
      v39 = *(v0 + 128);

      (*(v38 + 88))(v39, v38);
      swift_getErrorValue();
      v40 = Error.readableDescription.getter(*(v0 + 48), *(v0 + 56));
      (*(v38 + 104))(v37, v40, v41, v39, v38);
      v42 = _getErrorEmbeddedNSError<A>(_:)();
      v44 = *(v0 + 192);
      v43 = *(v0 + 200);
      if (v42)
      {
        (*(v44 + 8))(*(v0 + 200), *(v0 + 128));
      }

      else
      {
        v56 = *(v0 + 128);
        swift_allocError();
        (*(v44 + 32))(v57, v43, v56);
      }

      v58 = *(v0 + 248);
      swift_willThrow();
      v50 = v58;
    }
  }

  v59 = *(v0 + 8);

  return v59();
}

uint64_t _s15SecureMessaging12asyncRethrow_8catching2as6elseAs3logq0_q0_yYaYbKXK_q_mxxySSYbcSgtYaxYKAA14VersatileErrorRzs0K0R_r1_lF(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = v8;
  v10[18] = v19;
  v10[19] = v20;
  v10[16] = v17;
  v10[17] = v18;
  v10[14] = a8;
  v10[15] = v16;
  v10[12] = a6;
  v10[13] = a7;
  v10[11] = a5;
  swift_getAssociatedTypeWitness();
  v10[20] = swift_task_alloc();
  v10[21] = *(v17 - 8);
  v10[22] = swift_task_alloc();
  v10[23] = swift_task_alloc();
  v14 = (a2 + *a2);
  v12 = swift_task_alloc();
  v10[24] = v12;
  *v12 = v10;
  v12[1] = _s15SecureMessaging12asyncRethrow_8catching2as6elseAs3logq0_q0_yYaYbKXK_q_mxxySSYbcSgtYaxYKAA14VersatileErrorRzs0K0R_r1_lFTQ0_;

  return v14(a1);
}

uint64_t _s15SecureMessaging12asyncRethrow_8catching2as6elseAs3logq0_q0_yYaYbKXK_q_mxxySSYbcSgtYaxYKAA14VersatileErrorRzs0K0R_r1_lFTQ0_()
{
  v2 = *v1;
  *(v2 + 200) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](_s15SecureMessaging12asyncRethrow_8catching2as6elseAs3logq0_q0_yYaYbKXK_q_mxxySSYbcSgtYaxYKAA14VersatileErrorRzs0K0R_r1_lFTY1_, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t _s15SecureMessaging12asyncRethrow_8catching2as6elseAs3logq0_q0_yYaYbKXK_q_mxxySSYbcSgtYaxYKAA14VersatileErrorRzs0K0R_r1_lFTY1_()
{
  v1 = *(v0 + 200);
  *(v0 + 64) = v1;
  v2 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {
    v3 = *(v0 + 176);
    v4 = *(v0 + 184);
    v5 = *(v0 + 168);
    v6 = *(v0 + 144);
    v7 = *(v0 + 128);
    v8 = *(v0 + 104);

    (*(v5 + 32))(v3, v4, v7);
    v9 = Error.readableDescription.getter(v7, v6);
    if (v8)
    {
      (*(v0 + 104))(v9, v10);
    }

    v11 = *(v0 + 168);
    v12 = *(v0 + 176);
    v13 = *(v0 + 160);
    v14 = *(v0 + 136);
    v31 = *(v0 + 144);
    v16 = *(v0 + 120);
    v15 = *(v0 + 128);

    (*(v14 + 88))(v16, v14);
    v17 = Error.readableDescription.getter(v15, v31);
    (*(v14 + 104))(v13, v17, v18, v16, v14);
    swift_willThrowTypedImpl();
    (*(v11 + 8))(v12, v15);
    v19 = *(v0 + 64);
  }

  else
  {
    v20 = *(v0 + 104);

    swift_getErrorValue();
    v21 = Error.readableDescription.getter(*(v0 + 24), *(v0 + 32));
    if (v20)
    {
      (*(v0 + 104))(v21, v22);
    }

    v23 = *(v0 + 200);
    v24 = *(v0 + 160);
    v25 = *(v0 + 136);
    v26 = *(v0 + 120);

    (*(v25 + 88))(v26, v25);
    swift_getErrorValue();
    v27 = Error.readableDescription.getter(*(v0 + 48), *(v0 + 56));
    (*(v25 + 104))(v24, v27, v28, v26, v25);
    swift_willThrowTypedImpl();
    v19 = v23;
  }

  v29 = *(v0 + 8);

  return v29();
}

double MLS.GroupLoader.uniqueClientIdentifier.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;

  return result;
}

uint64_t MLS.GroupLoader.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupLoader_logger;
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

double MLS.GroupLoader.identifierToSwiftMLSGroup.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t MLS.GroupLoader.identifierToSwiftMLSGroup.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupLoader_identifierToSwiftMLSGroup;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t MLS.GroupLoader.__allocating_init(uniqueClientIdentifier:persister:swiftMLSClient:)(uint64_t *a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = swift_allocObject();
  v10 = *a1;
  v9 = a1[1];
  Logger.init(subsystem:category:)();
  v11 = OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupLoader_identifierToSwiftMLSGroup;
  *(v8 + v11) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(v8 + 16) = v10;
  *(v8 + 24) = v9;
  *(v8 + 32) = a2;
  *(v8 + 40) = a3;
  v12 = a4[1];
  *(v8 + 48) = *a4;
  *(v8 + 64) = v12;
  *(v8 + 73) = *(a4 + 25);
  return v8;
}

uint64_t MLS.GroupLoader.init(uniqueClientIdentifier:persister:swiftMLSClient:)(uint64_t *a1, uint64_t a2, uint64_t a3, _OWORD *a4)
{
  v8 = *a1;
  v9 = a1[1];
  Logger.init(subsystem:category:)();
  v10 = OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupLoader_identifierToSwiftMLSGroup;
  *(v4 + v10) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  *(v4 + 16) = v8;
  *(v4 + 24) = v9;
  *(v4 + 32) = a2;
  *(v4 + 40) = a3;
  *(v4 + 73) = *(a4 + 25);
  v11 = a4[1];
  *(v4 + 48) = *a4;
  *(v4 + 64) = v11;
  return v4;
}

uint64_t MLS.GroupLoader.atomically<A>(with:do:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[7] = a6;
  v7[8] = v6;
  v7[5] = a4;
  v7[6] = a5;
  v7[3] = a2;
  v7[4] = a3;
  v7[2] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v8 = static MLSActor.shared;
  v7[9] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.GroupLoader.atomically<A>(with:do:), v8, 0);
}

void MLS.GroupLoader.atomically<A>(with:do:)()
{
  v1 = (*(**(v0 + 64) + 120))();

  v2 = Logger.logObject.getter();
  v3 = static os_log_type_t.default.getter();

  if (os_log_type_enabled(v2, v3))
  {
    v5 = *(v0 + 24);
    v4 = *(v0 + 32);
    v6 = swift_slowAlloc();
    v7 = swift_slowAlloc();
    v17 = v7;
    *v6 = 136315394;
    *(v6 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v4, &v17);
    *(v6 + 12) = 2048;
    *(v6 + 14) = *(v1 + 16);

    _os_log_impl(&dword_264F1F000, v2, v3, "GroupLoader atomically { transactionID: %s, groupCount: %ld }", v6, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    MEMORY[0x266755550](v7, -1, -1);
    MEMORY[0x266755550](v6, -1, -1);
  }

  else
  {
  }

  v8 = *(v0 + 64);
  v10 = *(v0 + 24);
  v9 = *(v0 + 32);
  v11 = *(v8 + 40);
  ObjectType = swift_getObjectType();
  v13 = swift_allocObject();
  *(v0 + 80) = v13;
  v13[2] = v8;
  v13[3] = v10;
  v13[4] = v9;
  v13[5] = v1;
  v14 = *(v11 + 8);

  v16 = v14 + *v14;
  v15 = swift_task_alloc();
  *(v0 + 88) = v15;
  *v15 = v0;
  v15[1] = MLS.GroupLoader.atomically<A>(with:do:);
  v19 = ObjectType;
  v20 = v11;

  __asm { BRAA            X8, X16 }
}

uint64_t MLS.GroupLoader.atomically<A>(with:do:)()
{
  v2 = *v1;
  v2[12] = v0;

  if (v0)
  {
    v3 = v2[9];

    return MEMORY[0x2822009F8](MLS.GroupLoader.atomically<A>(with:do:), v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t closure #1 in MLS.GroupLoader.atomically<A>(with:do:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;

  return MEMORY[0x2822009F8](closure #1 in MLS.GroupLoader.atomically<A>(with:do:), v5, 0);
}

uint64_t closure #1 in MLS.GroupLoader.atomically<A>(with:do:)()
{
  v16 = v0;
  swift_retain_n();

  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();

  v3 = os_log_type_enabled(v1, v2);
  v4 = v0[5];
  if (v3)
  {
    v6 = v0[3];
    v5 = v0[4];
    v7 = v0[2];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v15 = v9;
    *v8 = 136315650;
    *(v8 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v15);
    *(v8 + 12) = 2048;
    v10 = *((*(*v7 + 120))() + 16);

    *(v8 + 14) = v10;

    *(v8 + 22) = 2048;
    *(v8 + 24) = *(v4 + 16);

    _os_log_impl(&dword_264F1F000, v1, v2, "GroupLoader atomically rolling back { transactionID: %s, countBeforeRollback: %ld, countRollingBackTo: %ld }", v8, 0x20u);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x266755550](v9, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  else
  {
  }

  v11 = *(*v0[2] + 128);

  v11(v12);
  v13 = v0[1];

  return v13();
}

uint64_t MLS.GroupLoader.save(swiftMLSGroup:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[15] = a3;
  v4[16] = v3;
  v4[13] = a1;
  v4[14] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;
  v4[17] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.GroupLoader.save(swiftMLSGroup:for:), v5, 0);
}

uint64_t MLS.GroupLoader.save(swiftMLSGroup:for:)()
{
  v1 = v0[16];
  v2 = v0[13];
  v0[18] = *(v1 + 32);
  v0[19] = *(v1 + 40);
  v0[20] = swift_getObjectType();
  v3 = v2[3];
  v4 = v2[4];
  __swift_project_boxed_opaque_existential_1(v2, v3);
  v7 = (*(v4 + 8) + **(v4 + 8));
  v5 = swift_task_alloc();
  v0[21] = v5;
  *v5 = v0;
  v5[1] = MLS.GroupLoader.save(swiftMLSGroup:for:);

  return v7(v3, v4);
}

{
  v1 = v0[19];
  v2 = v0[16];
  v3 = *(v2 + 24);
  v0[11] = *(v2 + 16);
  v0[12] = v3;
  v4 = *(v1 + 32);

  v13 = (v4 + *v4);
  v5 = swift_task_alloc();
  v0[24] = v5;
  *v5 = v0;
  v5[1] = MLS.GroupLoader.save(swiftMLSGroup:for:);
  v6 = v0[23];
  v8 = v0[19];
  v7 = v0[20];
  v9 = v0[14];
  v10 = v0[15];
  v11 = v0[22];

  return (v13)(v11, v6, v9, v10, v0 + 11, v7, v8);
}

{
  v2 = *v1;
  v3 = *(*v1 + 184);
  v4 = *(*v1 + 176);
  *(*v1 + 200) = v0;

  outlined consume of Data._Representation(v4, v3);
  v5 = *(v2 + 136);
  if (v0)
  {
    v6 = MLS.GroupLoader.save(swiftMLSGroup:for:);
  }

  else
  {
    v6 = MLS.GroupLoader.save(swiftMLSGroup:for:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

{
  v2 = v0[15];
  v1 = v0[16];
  v3 = v0[14];
  outlined init with copy of ServerBag.MLS(v0[13], (v0 + 2));
  v4 = *(*v1 + 136);

  v5 = v4(v0 + 7);
  specialized Dictionary.subscript.setter((v0 + 2), v3, v2);
  v5(v0 + 7, 0);
  v6 = v0[1];

  return v6();
}

{
  return (*(v0 + 8))();
}

uint64_t MLS.GroupLoader.save(swiftMLSGroup:for:)(uint64_t a1, uint64_t a2)
{
  v3 = *v2;
  v4 = *(*v2 + 136);
  *(v3 + 176) = a1;
  *(v3 + 184) = a2;

  return MEMORY[0x2822009F8](MLS.GroupLoader.save(swiftMLSGroup:for:), v4, 0);
}

uint64_t MLS.GroupLoader.delete(group:throwing:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[20] = a5;
  v6[21] = v5;
  v6[18] = a3;
  v6[19] = a4;
  v6[16] = a1;
  v6[17] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6[22] = static MLSActor.shared;
  v9 = swift_task_alloc();
  v6[23] = v9;
  *v9 = v6;
  v9[1] = MLS.GroupLoader.delete(group:throwing:identifier:);

  return MLS.GroupLoader.load(group:)((v6 + 7), a1, a2);
}

uint64_t MLS.GroupLoader.delete(group:throwing:identifier:)()
{
  v2 = *(*v1 + 176);
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = MLS.GroupLoader.delete(group:throwing:identifier:);
  }

  else
  {
    v3 = MLS.GroupLoader.delete(group:throwing:identifier:);
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

{
  if (*(v0 + 80))
  {
    v1 = *(v0 + 160);
    v2 = *(v0 + 168);
    v3 = *(v0 + 144);
    v4 = *(v0 + 152);
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 56), v0 + 16);
    v5 = v3[3];
    *(v0 + 200) = v5;
    *(v0 + 208) = v3[4];
    v6 = __swift_project_boxed_opaque_existential_1(v3, v5);
    v7 = swift_task_alloc();
    *(v0 + 216) = v7;
    v7[2] = v0 + 16;
    v8 = swift_allocObject();
    *(v0 + 224) = v8;
    v8[2] = v2;
    v8[3] = v4;
    v8[4] = v1;
    v9 = *(v5 - 8);
    *(v0 + 232) = v9;
    *(v0 + 240) = *(v9 + 64);
    *(v0 + 248) = swift_task_alloc();

    v10 = swift_task_alloc();
    *(v0 + 256) = v10;
    *v10 = v0;
    v10[1] = MLS.GroupLoader.delete(group:throwing:identifier:);
    v11 = &async function pointer to partial apply for implicit closure #1 in MLS.GroupLoader.delete(group:throwing:identifier:);
    v12 = partial apply for closure #1 in MLS.GroupLoader.delete(group:throwing:identifier:);
  }

  else
  {
    outlined destroy of MLS.SwiftMLSGroupProtocol?(v0 + 56);
    v13 = *(v0 + 160);
    v14 = *(v0 + 168);
    v15 = *(v0 + 144);
    v16 = *(v0 + 152);
    v18 = *(v0 + 128);
    v17 = *(v0 + 136);
    v5 = v15[3];
    *(v0 + 264) = v5;
    *(v0 + 272) = v15[4];
    v6 = __swift_project_boxed_opaque_existential_1(v15, v5);
    v7 = swift_task_alloc();
    *(v0 + 280) = v7;
    v7[2] = v14;
    v7[3] = v18;
    v7[4] = v17;
    v8 = swift_allocObject();
    *(v0 + 288) = v8;
    v8[2] = v14;
    v8[3] = v16;
    v8[4] = v13;
    v19 = *(v5 - 8);
    *(v0 + 296) = v19;
    *(v0 + 304) = *(v19 + 64);
    *(v0 + 312) = swift_task_alloc();

    v10 = swift_task_alloc();
    *(v0 + 320) = v10;
    *v10 = v0;
    v10[1] = MLS.GroupLoader.delete(group:throwing:identifier:);
    v11 = &async function pointer to partial apply for implicit closure #2 in MLS.GroupLoader.delete(group:throwing:identifier:);
    v12 = partial apply for closure #2 in MLS.GroupLoader.delete(group:throwing:identifier:);
  }

  return _s15SecureMessaging12asyncRethrow_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lF(v10, v11, v7, v6, v12, v8, v5);
}

{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 176);
    v4 = MLS.GroupLoader.delete(group:throwing:identifier:);
  }

  else
  {
    v5 = *(v2 + 176);

    v4 = MLS.GroupLoader.delete(group:throwing:identifier:);
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v1 = v0[20];
  v2 = v0[21];
  v3 = v0[18];
  v4 = v0[19];
  v6 = v0[16];
  v5 = v0[17];
  v7 = v3[3];
  v0[33] = v7;
  v0[34] = v3[4];
  v8 = __swift_project_boxed_opaque_existential_1(v3, v7);
  v9 = swift_task_alloc();
  v0[35] = v9;
  v9[2] = v2;
  v9[3] = v6;
  v9[4] = v5;
  v10 = swift_allocObject();
  v0[36] = v10;
  v10[2] = v2;
  v10[3] = v4;
  v10[4] = v1;
  v11 = *(v7 - 8);
  v0[37] = v11;
  v0[38] = *(v11 + 64);
  v0[39] = swift_task_alloc();

  v12 = swift_task_alloc();
  v0[40] = v12;
  *v12 = v0;
  v12[1] = MLS.GroupLoader.delete(group:throwing:identifier:);

  return _s15SecureMessaging12asyncRethrow_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lF(v12, &async function pointer to partial apply for implicit closure #2 in MLS.GroupLoader.delete(group:throwing:identifier:), v9, v8, partial apply for closure #2 in MLS.GroupLoader.delete(group:throwing:identifier:), v10, v7);
}

{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 176);
    v4 = MLS.GroupLoader.delete(group:throwing:identifier:);
  }

  else
  {
    v5 = *(v2 + 176);

    v4 = MLS.GroupLoader.delete(group:throwing:identifier:);
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v10 = v0;
  v1 = v0[21];
  v3 = v0[16];
  v2 = v0[17];
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  v4 = *(*v1 + 136);

  v5 = v4(v0 + 12);
  specialized Dictionary.subscript.setter(v8, v3, v2);
  v5(v0 + 12, 0);
  v6 = v0[1];

  return v6();
}

{
  return (*(v0 + 8))();
}

{
  v1 = v0[31];
  v2 = v0[29];
  v3 = v0[25];
  v4 = swift_task_alloc();
  v5 = *(v2 + 32);
  v5(v4, v1, v3);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v0[29] + 8))(v4, v0[25]);
  }

  else
  {
    v6 = v0[25];
    swift_allocError();
    v5(v7, v4, v6);
  }

  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);
  v8 = v0[1];

  return v8();
}

{
  v1 = v0[39];
  v2 = v0[37];
  v3 = v0[33];
  v4 = swift_task_alloc();
  v5 = *(v2 + 32);
  v5(v4, v1, v3);
  if (_getErrorEmbeddedNSError<A>(_:)())
  {
    (*(v0[37] + 8))(v4, v0[33]);
  }

  else
  {
    v6 = v0[33];
    swift_allocError();
    v5(v7, v4, v6);
  }

  v8 = v0[1];

  return v8();
}

uint64_t implicit closure #1 in MLS.GroupLoader.delete(group:throwing:identifier:)()
{
  v1 = *(v0 + 16);
  v2 = v1[3];
  v3 = v1[4];
  __swift_project_boxed_opaque_existential_1(v1, v2);
  v6 = (*(v3 + 72) + **(v3 + 72));
  v4 = swift_task_alloc();
  *(v0 + 24) = v4;
  *v4 = v0;
  v4[1] = implicit closure #1 in MLS.GroupLoader.delete(group:throwing:identifier:);

  return v6(v2, v3);
}

{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t implicit closure #2 in MLS.GroupLoader.delete(group:throwing:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[5] = a3;
  v4[6] = a4;
  v4[4] = a2;
  return MEMORY[0x2822009F8](implicit closure #2 in MLS.GroupLoader.delete(group:throwing:identifier:), 0, 0);
}

uint64_t implicit closure #2 in MLS.GroupLoader.delete(group:throwing:identifier:)()
{
  v1 = v0[4];
  v2 = v1[5];
  ObjectType = swift_getObjectType();
  v4 = v1[3];
  v0[2] = v1[2];
  v0[3] = v4;
  v5 = *(v2 + 96);

  v10 = (v5 + *v5);
  v6 = swift_task_alloc();
  v0[7] = v6;
  *v6 = v0;
  v6[1] = implicit closure #2 in MLS.GroupLoader.delete(group:throwing:identifier:);
  v8 = v0[5];
  v7 = v0[6];

  return (v10)(v8, v7, v0 + 2, ObjectType, v2);
}

{
  v2 = *v1;
  *(*v1 + 64) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](implicit closure #5 in MLS.UpdateOtherExpiredKeyPackagesOperation.perform(on:metricCollector:keyPackageResult:), 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

void closure #1 in MLS.GroupLoader.delete(group:throwing:identifier:)(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, const char *a6)
{

  oslog = Logger.logObject.getter();
  v11 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v15 = v13;
    *v12 = 136315394;
    *(v12 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, &v15);
    *(v12 + 12) = 2080;
    *(v12 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v15);
    _os_log_impl(&dword_264F1F000, oslog, v11, a6, v12, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v13, -1, -1);
    MEMORY[0x266755550](v12, -1, -1);
  }
}

uint64_t MLS.GroupLoader.LoadedGroupAndOperation.swiftMLSGroup.getter@<X0>(uint64_t a1@<X8>)
{
  outlined init with copy of MLS.GroupLoader.LoadedGroupAndOperation(v1, v5);
  if (v8)
  {
    v3 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v3;
    *(a1 + 32) = v7;
  }

  else
  {
    outlined init with take of MLS.KeyUpdatePolicy(v6, a1);
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v5);
}

uint64_t _s15SecureMessaging3MLSO11GroupLoaderC04loadD09operation06cachedD0AE06LoadedD12AndOperationOx_AC21SwiftMLSGroupProtocol_pSgtYa9ErrorTypeQzYKAC0dK0RzlF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7[66] = a6;
  v7[65] = v6;
  v7[63] = a4;
  v7[64] = a5;
  v7[61] = a2;
  v7[62] = a3;
  v7[60] = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7[67] = AssociatedTypeWitness;
  v7[68] = *(AssociatedTypeWitness - 8);
  v7[69] = swift_task_alloc();
  v7[70] = swift_task_alloc();
  v9 = swift_getAssociatedTypeWitness();
  v7[71] = v9;
  v7[72] = *(v9 - 8);
  v7[73] = swift_task_alloc();
  v7[74] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = static MLSActor.shared;
  v7[75] = static MLSActor.shared;

  return MEMORY[0x2822009F8](_s15SecureMessaging3MLSO11GroupLoaderC04loadD09operation06cachedD0AE06LoadedD12AndOperationOx_AC21SwiftMLSGroupProtocol_pSgtYa9ErrorTypeQzYKAC0dK0RzlFTY0_, v10, 0);
}

uint64_t _s15SecureMessaging3MLSO11GroupLoaderC04loadD09operation06cachedD0AE06LoadedD12AndOperationOx_AC21SwiftMLSGroupProtocol_pSgtYa9ErrorTypeQzYKAC0dK0RzlFTY0_()
{
  (*(*(v0 + 512) + 128))(*(v0 + 504));
  v1 = *(v0 + 232);
  v2 = *(v0 + 496);
  if (v1)
  {
    v3 = (v0 + 16);
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 192), v0 + 240);
    outlined init with copy of MLS.SwiftMLSGroupProtocol?(v2, v0 + 320);
    if (!*(v0 + 344))
    {
      v12 = *(v0 + 584);
      v13 = *(v0 + 576);
      v14 = *(v0 + 568);
      v15 = *(v0 + 520);
      v17 = *(v0 + 504);
      v16 = *(v0 + 512);
      outlined destroy of MLS.SwiftMLSGroupProtocol?(v0 + 320);
      outlined init with copy of ServerBag.MLS(v0 + 240, v0 + 16);
      v16[9](v17, v16);
      *(v0 + 640) = v18;
      v16[7](v17, v16);
      *(v0 + 648) = v19;
      v16[10](v17, v16);
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(AssociatedConformanceWitness + 16))(v14, AssociatedConformanceWitness);
      *(v0 + 656) = v21;
      (*(v13 + 8))(v12, v14);
      v34 = *(*v15 + 184) + **(*v15 + 184);
      v22 = swift_task_alloc();
      *(v0 + 664) = v22;
      swift_getAssociatedConformanceWitness();
      *v22 = v0;
      v22[1] = _s15SecureMessaging3MLSO11GroupLoaderC04loadD09operation06cachedD0AE06LoadedD12AndOperationOx_AC21SwiftMLSGroupProtocol_pSgtYa9ErrorTypeQzYKAC0dK0RzlFTQ3_;

      __asm { BRAA            X8, X16 }
    }

    outlined init with take of MLS.KeyUpdatePolicy((v0 + 320), v0 + 280);
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 240), v0 + 16);
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 280), v0 + 56);
    v4 = 96;
  }

  else
  {
    v3 = (v0 + 104);
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 192), v0 + 360);
    outlined init with copy of MLS.SwiftMLSGroupProtocol?(v2, v0 + 440);
    if (!*(v0 + 464))
    {
      v23 = *(v0 + 592);
      v24 = *(v0 + 576);
      v25 = *(v0 + 568);
      v26 = *(v0 + 520);
      v28 = *(v0 + 504);
      v27 = *(v0 + 512);
      outlined destroy of MLS.SwiftMLSGroupProtocol?(v0 + 440);
      outlined init with copy of ServerBag.MLS(v0 + 360, v0 + 104);
      v27[9](v28, v27);
      *(v0 + 608) = v29;
      v27[7](v28, v27);
      *(v0 + 616) = v30;
      v27[10](v28, v27);
      v31 = swift_getAssociatedConformanceWitness();
      (*(v31 + 16))(v25, v31);
      *(v0 + 624) = v32;
      (*(v24 + 8))(v23, v25);
      v35 = *(*v26 + 192) + **(*v26 + 192);
      v33 = swift_task_alloc();
      *(v0 + 632) = v33;
      swift_getAssociatedConformanceWitness();
      *v33 = v0;
      v33[1] = _s15SecureMessaging3MLSO11GroupLoaderC04loadD09operation06cachedD0AE06LoadedD12AndOperationOx_AC21SwiftMLSGroupProtocol_pSgtYa9ErrorTypeQzYKAC0dK0RzlFTQ1_;

      __asm { BRAA            X8, X16 }
    }

    outlined init with take of MLS.KeyUpdatePolicy((v0 + 440), v0 + 400);
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 360), v0 + 104);
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 400), v0 + 144);
    v4 = 184;
  }

  *(v0 + v4) = v1;
  v5 = *(v0 + 480);
  v6 = *v3;
  *(v5 + 16) = v3[1];
  v7 = v3[2];
  v8 = v3[3];
  v9 = v3[4];
  *(v5 + 80) = *(v3 + 80);
  *(v5 + 48) = v8;
  *(v5 + 64) = v9;
  *(v5 + 32) = v7;
  *v5 = v6;

  v10 = *(v0 + 8);

  return v10();
}

uint64_t _s15SecureMessaging3MLSO11GroupLoaderC04loadD09operation06cachedD0AE06LoadedD12AndOperationOx_AC21SwiftMLSGroupProtocol_pSgtYa9ErrorTypeQzYKAC0dK0RzlFTQ1_()
{
  v2 = *v1;

  v3 = *(v2 + 600);
  if (v0)
  {
    v4 = _s15SecureMessaging3MLSO11GroupLoaderC04loadD09operation06cachedD0AE06LoadedD12AndOperationOx_AC21SwiftMLSGroupProtocol_pSgtYa9ErrorTypeQzYKAC0dK0RzlFTY5_;
  }

  else
  {
    v4 = _s15SecureMessaging3MLSO11GroupLoaderC04loadD09operation06cachedD0AE06LoadedD12AndOperationOx_AC21SwiftMLSGroupProtocol_pSgtYa9ErrorTypeQzYKAC0dK0RzlFTY2_;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t _s15SecureMessaging3MLSO11GroupLoaderC04loadD09operation06cachedD0AE06LoadedD12AndOperationOx_AC21SwiftMLSGroupProtocol_pSgtYa9ErrorTypeQzYKAC0dK0RzlFTY2_()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 360));
  *(v0 + 184) = 0;
  v1 = *(v0 + 480);
  v2 = *(v0 + 104);
  *(v1 + 16) = *(v0 + 120);
  v3 = *(v0 + 136);
  v4 = *(v0 + 152);
  v5 = *(v0 + 168);
  *(v1 + 80) = 0;
  *(v1 + 48) = v4;
  *(v1 + 64) = v5;
  *(v1 + 32) = v3;
  *v1 = v2;

  v6 = *(v0 + 8);

  return v6();
}

uint64_t _s15SecureMessaging3MLSO11GroupLoaderC04loadD09operation06cachedD0AE06LoadedD12AndOperationOx_AC21SwiftMLSGroupProtocol_pSgtYa9ErrorTypeQzYKAC0dK0RzlFTQ3_()
{
  v2 = *v1;

  v3 = *(v2 + 600);
  if (v0)
  {
    v4 = _s15SecureMessaging3MLSO11GroupLoaderC04loadD09operation06cachedD0AE06LoadedD12AndOperationOx_AC21SwiftMLSGroupProtocol_pSgtYa9ErrorTypeQzYKAC0dK0RzlFTY6_;
  }

  else
  {
    v4 = _s15SecureMessaging3MLSO11GroupLoaderC04loadD09operation06cachedD0AE06LoadedD12AndOperationOx_AC21SwiftMLSGroupProtocol_pSgtYa9ErrorTypeQzYKAC0dK0RzlFTY4_;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t _s15SecureMessaging3MLSO11GroupLoaderC04loadD09operation06cachedD0AE06LoadedD12AndOperationOx_AC21SwiftMLSGroupProtocol_pSgtYa9ErrorTypeQzYKAC0dK0RzlFTY4_()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 240));
  *(v0 + 96) = 1;
  v1 = *(v0 + 480);
  v2 = *(v0 + 16);
  *(v1 + 16) = *(v0 + 32);
  v3 = *(v0 + 48);
  v4 = *(v0 + 64);
  v5 = *(v0 + 80);
  *(v1 + 80) = 1;
  *(v1 + 48) = v4;
  *(v1 + 64) = v5;
  *(v1 + 32) = v3;
  *v1 = v2;

  v6 = *(v0 + 8);

  return v6();
}

uint64_t _s15SecureMessaging3MLSO11GroupLoaderC04loadD09operation06cachedD0AE06LoadedD12AndOperationOx_AC21SwiftMLSGroupProtocol_pSgtYa9ErrorTypeQzYKAC0dK0RzlFTY5_()
{
  v1 = v0[70];
  v2 = v0[68];
  v3 = v0[67];
  v4 = v0[66];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 45);
  (*(v2 + 32))(v4, v1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 13);

  v5 = v0[1];

  return v5();
}

uint64_t _s15SecureMessaging3MLSO11GroupLoaderC04loadD09operation06cachedD0AE06LoadedD12AndOperationOx_AC21SwiftMLSGroupProtocol_pSgtYa9ErrorTypeQzYKAC0dK0RzlFTY6_()
{
  v1 = v0[69];
  v2 = v0[68];
  v3 = v0[67];
  v4 = v0[66];
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 30);
  (*(v2 + 32))(v4, v1, v3);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 2);

  v5 = v0[1];

  return v5();
}

uint64_t _s15SecureMessaging3MLSO11GroupLoaderC12optionalLoad5group13operationName10identifier9errorType09onMissingD0AC21SwiftMLSGroupProtocol_pSgSS_S2SxmyyYacSgtYaxYKAC0dG5ErrorRzlF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8[11] = v7;
  v8[12] = v14;
  v8[9] = v12;
  v8[10] = v13;
  v8[7] = a6;
  v8[8] = a7;
  v8[5] = a4;
  v8[6] = a5;
  v8[3] = a2;
  v8[4] = a3;
  v8[2] = a1;
  v8[13] = *(v13 + 8);
  v8[14] = swift_getAssociatedTypeWitness();
  v8[15] = swift_task_alloc();
  v8[16] = *(v12 - 8);
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static MLSActor.shared;
  v8[19] = static MLSActor.shared;

  return MEMORY[0x2822009F8](_s15SecureMessaging3MLSO11GroupLoaderC12optionalLoad5group13operationName10identifier9errorType09onMissingD0AC21SwiftMLSGroupProtocol_pSgSS_S2SxmyyYacSgtYaxYKAC0dG5ErrorRzlFTY0_, v9, 0);
}

uint64_t _s15SecureMessaging3MLSO11GroupLoaderC12optionalLoad5group13operationName10identifier9errorType09onMissingD0AC21SwiftMLSGroupProtocol_pSgSS_S2SxmyyYacSgtYaxYKAC0dG5ErrorRzlFTY0_()
{
  v1 = v0[14];
  v2 = v0[15];
  v16 = v0[13];
  v3 = v0[11];
  v4 = v0[9];
  v5 = v0[6];
  v18 = v0[7];
  v19 = v0[8];
  v6 = v0[4];
  v17 = v0[5];
  v7 = v0[3];
  v8 = swift_task_alloc();
  v0[20] = v8;
  v8[2] = v3;
  v8[3] = v7;
  v8[4] = v6;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 16))(v1, AssociatedConformanceWitness);
  VersatileError.init(type:)(v2, v4, v16);
  v10 = swift_allocObject();
  v0[21] = v10;
  v10[2] = v3;
  v10[3] = v17;
  v10[4] = v5;
  v10[5] = v18;
  v10[6] = v19;

  v11 = swift_task_alloc();
  v0[22] = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
  *v11 = v0;
  v11[1] = _s15SecureMessaging3MLSO11GroupLoaderC12optionalLoad5group13operationName10identifier9errorType09onMissingD0AC21SwiftMLSGroupProtocol_pSgSS_S2SxmyyYacSgtYaxYKAC0dG5ErrorRzlFTQ1_;
  v12 = v0[18];
  v13 = v0[9];
  v14 = v0[2];

  return _s15SecureMessaging12asyncRethrow_2as3logq_q_yYaYbKXK_xySSYbcSgtYaxYKAA14VersatileErrorRzr0_lF(v14, &_s15SecureMessaging3MLSO11GroupLoaderC12optionalLoad5group13operationName10identifier9errorType09onMissingD0AC21SwiftMLSGroupProtocol_pSgSS_S2SxmyyYacSgtYaxYKAC0dG5ErrorRzlFAMyYaYbKXEfu_TATu, v8, v12, _s15SecureMessaging3MLSO11GroupLoaderC12optionalLoad5group13operationName10identifier9errorType09onMissingD0AC21SwiftMLSGroupProtocol_pSgSS_S2SxmyyYacSgtYaxYKAC0dG5ErrorRzlFySSYbcfU_TA, v10, v13);
}

uint64_t _s15SecureMessaging3MLSO11GroupLoaderC12optionalLoad5group13operationName10identifier9errorType09onMissingD0AC21SwiftMLSGroupProtocol_pSgSS_S2SxmyyYacSgtYaxYKAC0dG5ErrorRzlFTQ1_()
{
  v2 = *v1;
  v3 = *(*v1 + 144);
  v4 = *(*v1 + 128);
  v5 = *(*v1 + 72);
  v6 = *v1;

  (*(v4 + 8))(v3, v5);

  if (v0)
  {
    v7 = *(v2 + 152);

    return MEMORY[0x2822009F8](_s15SecureMessaging3MLSO11GroupLoaderC12optionalLoad5group13operationName10identifier9errorType09onMissingD0AC21SwiftMLSGroupProtocol_pSgSS_S2SxmyyYacSgtYaxYKAC0dG5ErrorRzlFTY2_, v7, 0);
  }

  else
  {

    v8 = *(v6 + 8);

    return v8();
  }
}

uint64_t _s15SecureMessaging3MLSO11GroupLoaderC12optionalLoad5group13operationName10identifier9errorType09onMissingD0AC21SwiftMLSGroupProtocol_pSgSS_S2SxmyyYacSgtYaxYKAC0dG5ErrorRzlFTY2_()
{
  (*(v0[16] + 32))(v0[12], v0[17], v0[9]);

  v1 = v0[1];

  return v1();
}

uint64_t _s15SecureMessaging3MLSO11GroupLoaderC12optionalLoad5group13operationName10identifier9errorType09onMissingD0AC21SwiftMLSGroupProtocol_pSgSS_S2SxmyyYacSgtYaxYKAC0dG5ErrorRzlFAMyYaYbKXEfu_(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return MLS.GroupLoader.load(group:)(a1, a3, a4);
}

void _s15SecureMessaging3MLSO11GroupLoaderC12optionalLoad5group13operationName10identifier9errorType09onMissingD0AC21SwiftMLSGroupProtocol_pSgSS_S2SxmyyYacSgtYaxYKAC0dG5ErrorRzlFySSYbcfU_(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, unint64_t a7)
{

  oslog = Logger.logObject.getter();
  v13 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(oslog, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v17 = v15;
    *v14 = 136315650;
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a4, a5, &v17);
    *(v14 + 12) = 2080;
    *(v14 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a6, a7, &v17);
    *(v14 + 22) = 2080;
    *(v14 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, &v17);
    _os_log_impl(&dword_264F1F000, oslog, v13, "OperationRunner %s failed loading group { identifier: %s, error: %s }", v14, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v15, -1, -1);
    MEMORY[0x266755550](v14, -1, -1);
  }
}

uint64_t _s15SecureMessaging3MLSO11GroupLoaderC4load5group13operationName10identifier9errorType09onMissingD0AC21SwiftMLSGroupProtocol_pSS_S2SxmyyYacSgtYaxYKAC0D9LoadErrorRzlF(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v14[23] = v13;
  v14[24] = a13;
  v14[21] = a11;
  v14[22] = a12;
  v14[19] = a9;
  v14[20] = a10;
  v14[17] = a6;
  v14[18] = a7;
  v14[15] = a4;
  v14[16] = a5;
  v14[13] = a2;
  v14[14] = a3;
  v14[12] = a1;
  v14[25] = *(a12 + 8);
  v14[26] = swift_getAssociatedTypeWitness();
  v14[27] = swift_task_alloc();
  v14[28] = *(a11 - 8);
  v20 = swift_task_alloc();
  v14[29] = v20;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v14[30] = static MLSActor.shared;
  v23 = (*(*v13 + 184) + **(*v13 + 184));
  v21 = swift_task_alloc();
  v14[31] = v21;
  *v21 = v14;
  v21[1] = _s15SecureMessaging3MLSO11GroupLoaderC4load5group13operationName10identifier9errorType09onMissingD0AC21SwiftMLSGroupProtocol_pSS_S2SxmyyYacSgtYaxYKAC0D9LoadErrorRzlFTQ0_;

  return v23(v14 + 2, a2, a3, a4, a5, a6, a7, a8, 0, 0, a11, a12, v20);
}

uint64_t _s15SecureMessaging3MLSO11GroupLoaderC4load5group13operationName10identifier9errorType09onMissingD0AC21SwiftMLSGroupProtocol_pSS_S2SxmyyYacSgtYaxYKAC0D9LoadErrorRzlFTQ0_()
{
  v2 = *(*v1 + 240);

  if (v0)
  {
    v3 = _s15SecureMessaging3MLSO11GroupLoaderC4load5group13operationName10identifier9errorType09onMissingD0AC21SwiftMLSGroupProtocol_pSS_S2SxmyyYacSgtYaxYKAC0D9LoadErrorRzlFTY4_;
  }

  else
  {
    v3 = _s15SecureMessaging3MLSO11GroupLoaderC4load5group13operationName10identifier9errorType09onMissingD0AC21SwiftMLSGroupProtocol_pSS_S2SxmyyYacSgtYaxYKAC0D9LoadErrorRzlFTY1_;
  }

  return MEMORY[0x2822009F8](v3, v2, 0);
}

uint64_t _s15SecureMessaging3MLSO11GroupLoaderC4load5group13operationName10identifier9errorType09onMissingD0AC21SwiftMLSGroupProtocol_pSS_S2SxmyyYacSgtYaxYKAC0D9LoadErrorRzlFTY1_()
{
  v24 = v0;
  outlined init with copy of MLS.SwiftMLSGroupProtocol?(v0 + 16, v0 + 56);
  if (*(v0 + 80))
  {
    v1 = *(v0 + 96);
    outlined destroy of MLS.SwiftMLSGroupProtocol?(v0 + 16);
    outlined init with take of MLS.KeyUpdatePolicy((v0 + 56), v1);

    v2 = *(v0 + 8);
LABEL_3:

    return v2();
  }

  outlined destroy of MLS.SwiftMLSGroupProtocol?(v0 + 56);

  v4 = Logger.logObject.getter();
  v5 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v4, v5))
  {
    v7 = *(v0 + 136);
    v6 = *(v0 + 144);
    v9 = *(v0 + 120);
    v8 = *(v0 + 128);
    v10 = *(v0 + 104);
    v21 = *(v0 + 112);
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v23 = v12;
    *v11 = 136315650;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v8, &v23);
    *(v11 + 12) = 2080;
    *(v11 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v6, &v23);
    *(v11 + 22) = 2080;
    *(v11 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v21, &v23);
    _os_log_impl(&dword_264F1F000, v4, v5, "GroupLoader %s failed to find group { identifier: %s, group: %s }", v11, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x266755550](v12, -1, -1);
    MEMORY[0x266755550](v11, -1, -1);
  }

  v13 = *(v0 + 152);
  if (!v13)
  {
    v16 = *(v0 + 208);
    v15 = *(v0 + 216);
    v18 = *(v0 + 192);
    v17 = *(v0 + 200);
    v19 = *(v0 + 168);
    AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
    (*(AssociatedConformanceWitness + 24))(v16, AssociatedConformanceWitness);
    VersatileError.init(type:)(v15, v19, v17);
    swift_willThrowTyped(v18, v19, *(*(v17 + 8) + 8));
    outlined destroy of MLS.SwiftMLSGroupProtocol?(v0 + 16);

    v2 = *(v0 + 8);
    goto LABEL_3;
  }

  v22 = (v13 + *v13);
  v14 = swift_task_alloc();
  *(v0 + 256) = v14;
  *v14 = v0;
  v14[1] = _s15SecureMessaging3MLSO11GroupLoaderC4load5group13operationName10identifier9errorType09onMissingD0AC21SwiftMLSGroupProtocol_pSS_S2SxmyyYacSgtYaxYKAC0D9LoadErrorRzlFTQ2_;

  return v22();
}

uint64_t _s15SecureMessaging3MLSO11GroupLoaderC4load5group13operationName10identifier9errorType09onMissingD0AC21SwiftMLSGroupProtocol_pSS_S2SxmyyYacSgtYaxYKAC0D9LoadErrorRzlFTQ2_()
{
  v1 = *(*v0 + 240);

  return MEMORY[0x2822009F8](_s15SecureMessaging3MLSO11GroupLoaderC4load5group13operationName10identifier9errorType09onMissingD0AC21SwiftMLSGroupProtocol_pSS_S2SxmyyYacSgtYaxYKAC0D9LoadErrorRzlFTY3_, v1, 0);
}

uint64_t _s15SecureMessaging3MLSO11GroupLoaderC4load5group13operationName10identifier9errorType09onMissingD0AC21SwiftMLSGroupProtocol_pSS_S2SxmyyYacSgtYaxYKAC0D9LoadErrorRzlFTY3_()
{
  v2 = v0[26];
  v1 = v0[27];
  v4 = v0[24];
  v3 = v0[25];
  v5 = v0[21];
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  (*(AssociatedConformanceWitness + 24))(v2, AssociatedConformanceWitness);
  VersatileError.init(type:)(v1, v5, v3);
  swift_willThrowTyped(v4, v5, *(*(v3 + 8) + 8));
  outlined destroy of MLS.SwiftMLSGroupProtocol?((v0 + 2));

  v7 = v0[1];

  return v7();
}

uint64_t _s15SecureMessaging3MLSO11GroupLoaderC4load5group13operationName10identifier9errorType09onMissingD0AC21SwiftMLSGroupProtocol_pSS_S2SxmyyYacSgtYaxYKAC0D9LoadErrorRzlFTY4_()
{
  (*(v0[28] + 32))(v0[24], v0[29], v0[21]);

  v1 = v0[1];

  return v1();
}

uint64_t MLS.GroupLoader.load(group:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4[41] = a3;
  v4[42] = v3;
  v4[39] = a1;
  v4[40] = a2;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v5 = static MLSActor.shared;
  v4[43] = static MLSActor.shared;

  return MEMORY[0x2822009F8](MLS.GroupLoader.load(group:), v5, 0);
}

uint64_t MLS.GroupLoader.load(group:)()
{
  v1 = (*(**(v0 + 336) + 120))();
  if (*(v1 + 16) && (v2 = specialized __RawDictionaryStorage.find<A>(_:)(*(v0 + 320), *(v0 + 328)), (v3 & 1) != 0))
  {
    v4 = *(v0 + 312);
    outlined init with copy of ServerBag.MLS(*(v1 + 56) + 40 * v2, v0 + 64);

    outlined init with take of MLS.KeyUpdatePolicy((v0 + 64), v4);
    v5 = *(v0 + 8);

    return v5();
  }

  else
  {
    v7 = *(v0 + 336);

    v8 = v7[5];
    ObjectType = swift_getObjectType();
    v10 = v7[3];
    *(v0 + 296) = v7[2];
    *(v0 + 304) = v10;
    v11 = *(v8 + 40);

    v15 = (v11 + *v11);
    v12 = swift_task_alloc();
    *(v0 + 352) = v12;
    *v12 = v0;
    v12[1] = MLS.GroupLoader.load(group:);
    v14 = *(v0 + 320);
    v13 = *(v0 + 328);

    return v15(v14, v13, v0 + 296, ObjectType, v8);
  }
}

{
  if (*(v0 + 368) >> 60 == 15)
  {
    v1 = *(v0 + 312);
    *(v1 + 32) = 0;
    *v1 = 0u;
    *(v1 + 16) = 0u;
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    outlined init with copy of MLS.SwiftMLSClientPicker(*(v0 + 336) + 48, v0 + 16);
    if (*(v0 + 56))
    {
      outlined init with take of MLS.KeyUpdatePolicy((v0 + 16), v0 + 144);
    }

    else
    {
      outlined init with take of MLS.KeyUpdatePolicy((v0 + 16), v0 + 224);
      v4 = *(v0 + 248);
      v5 = *(v0 + 256);
      v6 = __swift_project_boxed_opaque_existential_1((v0 + 224), v4);
      *(v0 + 168) = v4;
      *(v0 + 176) = *(v5 + 8);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((v0 + 144));
      (*(*(v4 - 8) + 16))(boxed_opaque_existential_1, v6, v4);
      __swift_destroy_boxed_opaque_existential_1Tm((v0 + 224));
    }

    v8 = *(v0 + 168);
    v9 = *(v0 + 176);
    __swift_project_boxed_opaque_existential_1((v0 + 144), v8);
    v13 = (*(v9 + 88) + **(v9 + 88));
    v10 = swift_task_alloc();
    *(v0 + 384) = v10;
    *v10 = v0;
    v10[1] = MLS.GroupLoader.load(group:);
    v11 = *(v0 + 360);
    v12 = *(v0 + 368);

    return v13(v0 + 104, v11, v12, v8, v9);
  }
}

{
  v2 = *v1;
  *(*v1 + 392) = v0;

  v3 = *(v2 + 344);
  if (v0)
  {
    v4 = MLS.GroupLoader.load(group:);
  }

  else
  {
    v4 = MLS.GroupLoader.load(group:);
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{
  v2 = *(v0 + 360);
  v1 = *(v0 + 368);
  v4 = *(v0 + 328);
  v3 = *(v0 + 336);
  v6 = *(v0 + 312);
  v5 = *(v0 + 320);
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 144));
  outlined init with copy of MLS.SwiftMLSGroupProtocol?(v0 + 104, v0 + 184);
  v7 = *(*v3 + 136);

  v8 = v7(v0 + 264);
  specialized Dictionary.subscript.setter(v0 + 184, v5, v4);
  v8(v0 + 264, 0);
  outlined consume of Data?(v2, v1);
  v9 = *(v0 + 104);
  v10 = *(v0 + 120);
  *(v6 + 32) = *(v0 + 136);
  *v6 = v9;
  *(v6 + 16) = v10;
  v11 = *(v0 + 8);

  return v11();
}

{
  return (*(v0 + 8))();
}

{
  outlined consume of Data?(v0[45], v0[46]);
  __swift_destroy_boxed_opaque_existential_1Tm(v0 + 18);
  v1 = v0[1];

  return v1();
}

uint64_t MLS.GroupLoader.load(group:)(uint64_t a1, uint64_t a2)
{
  v4 = *v3;
  v4[45] = a1;
  v4[46] = a2;
  v4[47] = v2;

  v5 = v4[43];
  if (v2)
  {
    v6 = MLS.GroupLoader.load(group:);
  }

  else
  {
    v6 = MLS.GroupLoader.load(group:);
  }

  return MEMORY[0x2822009F8](v6, v5, 0);
}

uint64_t MLS.GroupLoader.deinit()
{

  swift_unknownObjectRelease();
  outlined destroy of MLS.SwiftMLSClientPicker(v0 + 48);
  v1 = OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupLoader_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t MLS.GroupLoader.__deallocating_deinit()
{

  swift_unknownObjectRelease();
  outlined destroy of MLS.SwiftMLSClientPicker(v0 + 48);
  v1 = OBJC_IVAR____TtCO15SecureMessaging3MLS11GroupLoader_logger;
  v2 = type metadata accessor for Logger();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t sub_264FADCA4()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t partial apply for closure #1 in MLS.GroupLoader.atomically<A>(with:do:)()
{
  v2 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v4 = v0[5];
  v6 = swift_task_alloc();
  *(v1 + 16) = v6;
  *v6 = v1;
  v6[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in MLS.GroupLoader.atomically<A>(with:do:)(v2, v3, v5, v4);
}

uint64_t partial apply for implicit closure #2 in MLS.GroupLoader.delete(group:throwing:identifier:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return implicit closure #2 in MLS.GroupLoader.delete(group:throwing:identifier:)(a1, v4, v5, v6);
}

uint64_t partial apply for implicit closure #1 in MLS.GroupLoader.delete(group:throwing:identifier:)(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return implicit closure #1 in MLS.GroupLoader.delete(group:throwing:identifier:)(a1, v4);
}

uint64_t objectdestroy_10Tm()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t outlined init with copy of MLS.SwiftMLSGroupProtocol?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMd, &_s15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t _s15SecureMessaging3MLSO11GroupLoaderC12optionalLoad5group13operationName10identifier9errorType09onMissingD0AC21SwiftMLSGroupProtocol_pSgSS_S2SxmyyYacSgtYaxYKAC0dG5ErrorRzlFAMyYaYbKXEfu_TA(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return _s15SecureMessaging3MLSO11GroupLoaderC12optionalLoad5group13operationName10identifier9errorType09onMissingD0AC21SwiftMLSGroupProtocol_pSgSS_S2SxmyyYacSgtYaxYKAC0dG5ErrorRzlFAMyYaYbKXEfu_(a1, v4, v5, v6);
}

uint64_t sub_264FAE0A4()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_264FAE150@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 120))();
  *a2 = result;
  return result;
}

uint64_t sub_264FAE19C(void *a1, uint64_t a2)
{
  v2 = *(**a2 + 128);

  return v2(v3);
}

uint64_t type metadata accessor for MLS.GroupLoader(uint64_t a1)
{
  result = type metadata singleton initialization cache for MLS.GroupLoader;
  if (!type metadata singleton initialization cache for MLS.GroupLoader)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for MLS.GroupLoader(uint64_t a1)
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

uint64_t dispatch thunk of MLS.GroupLoader.atomically<A>(with:do:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 152) + **(*v6 + 152));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t dispatch thunk of MLS.GroupLoader.save(swiftMLSGroup:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v10 = (*(*v3 + 160) + **(*v3 + 160));
  v8 = swift_task_alloc();
  *(v4 + 16) = v8;
  *v8 = v4;
  v8[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v10(a1, a2, a3);
}

uint64_t dispatch thunk of MLS.GroupLoader.delete(group:throwing:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = (*(*v5 + 168) + **(*v5 + 168));
  v12 = swift_task_alloc();
  *(v6 + 16) = v12;
  *v12 = v6;
  v12[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v14(a1, a2, a3, a4, a5);
}

uint64_t _s15SecureMessaging3MLSO11GroupLoaderC04loadD09operation06cachedD0AE06LoadedD12AndOperationOx_AC21SwiftMLSGroupProtocol_pSgtYa9ErrorTypeQzYKAC0dK0RzlFTj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16 = (*(*v6 + 176) + **(*v6 + 176));
  v14 = swift_task_alloc();
  *(v7 + 16) = v14;
  *v14 = v7;
  v14[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v16(a1, a2, a3, a4, a5, a6);
}

uint64_t _s15SecureMessaging3MLSO11GroupLoaderC12optionalLoad5group13operationName10identifier9errorType09onMissingD0AC21SwiftMLSGroupProtocol_pSgSS_S2SxmyyYacSgtYaxYKAC0dG5ErrorRzlFTj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v20 = (*(*v13 + 184) + **(*v13 + 184));
  v18 = swift_task_alloc();
  *(v14 + 16) = v18;
  *v18 = v14;
  v18[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v20(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t _s15SecureMessaging3MLSO11GroupLoaderC4load5group13operationName10identifier9errorType09onMissingD0AC21SwiftMLSGroupProtocol_pSS_S2SxmyyYacSgtYaxYKAC0D9LoadErrorRzlFTj(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13)
{
  v20 = (*(*v13 + 192) + **(*v13 + 192));
  v18 = swift_task_alloc();
  *(v14 + 16) = v18;
  *v18 = v14;
  v18[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return v20(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13);
}

uint64_t get_enum_tag_for_layout_string_15SecureMessaging3MLSO21SwiftMLSGroupProtocol_pSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy81_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for MLS.GroupLoader.LoadedGroupAndOperation(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 81))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 80);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for MLS.GroupLoader.LoadedGroupAndOperation(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 80) = 0;
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 80) = -a2;
    }
  }

  return result;
}

uint64_t destructiveInjectEnumTag for MLS.GroupLoader.LoadedGroupAndOperation(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 48) = 0u;
    *(result + 64) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 80) = a2;
  return result;
}

uint64_t *XPCUtils.Connection.__allocating_init(queue:machServiceName:remoteObjectInterface:listenerEndpoint:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  swift_allocObject();
  v10 = specialized XPCUtils.Connection.init(queue:machServiceName:remoteObjectInterface:listenerEndpoint:)(a1, a2, a3, a4, a5);

  return v10;
}

uint64_t XPCUtils.Connection.addInterruptionHandlerBlock(_:)(uint64_t a1, uint64_t a2)
{
  v3[6] = a2;
  v3[7] = v2;
  v3[5] = a1;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v4 = static XPCActor.shared;

  return MEMORY[0x2822009F8](XPCUtils.Connection.addInterruptionHandlerBlock(_:), v4, 0);
}

uint64_t XPCUtils.Connection.addInterruptionHandlerBlock(_:)()
{
  v1 = v0[6];
  v2 = v0[5];
  v3 = (v0[7] + *(*v0[7] + 192));
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  *v3 = v2;
  v3[1] = v1;
  outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error))?(v4, v5);
  v7 = v0[1];

  return v7();
}

uint64_t XPCUtils.XPCInterfaceRequest.init(continuation:type:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy15SecureMessaging8XPCUtilsO20CollaboratorProtocol_ps5Error_pGMd, &_sScCy15SecureMessaging8XPCUtilsO20CollaboratorProtocol_ps5Error_pGMR);
  v5 = *(*(v4 - 8) + 32);

  return v5(a2, a1, v4);
}

uint64_t XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v9[11] = v14;
  v9[12] = v8;
  v9[9] = a8;
  v9[10] = v13;
  v9[7] = a6;
  v9[8] = a7;
  v9[5] = a4;
  v9[6] = a5;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v10 = static XPCActor.shared;
  v9[13] = static XPCActor.shared;

  return MEMORY[0x2822009F8](XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:), v10, 0);
}

uint64_t XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, uint64_t (*a6)(uint64_t a1), uint64_t a7, uint64_t a8)
{
  v9 = *(v8 + 96);
  v10 = direct field offset for XPCUtils.Connection._nextRequestID;
  v11 = *(v9 + direct field offset for XPCUtils.Connection._nextRequestID);
  *(v8 + 112) = v11;
  if (__OFADD__(v11, 1))
  {
    __break(1u);
  }

  else
  {
    *(v9 + v10) = v11 + 1;
    *(v8 + 120) = direct field offset for XPCUtils.Connection.logger;
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      *v14 = 134217984;
      *(v14 + 4) = v11;
      _os_log_impl(&dword_264F1F000, v12, v13, "XPCConnection told to send { requestID: %ld }", v14, 0xCu);
      MEMORY[0x266755550](v14, -1, -1);
    }

    v15 = *(v8 + 104);
    v20 = *(v8 + 88);
    v21 = *(v8 + 72);
    v22 = *(v8 + 56);
    v23 = *(v8 + 40);

    v16 = _s15SecureMessaging8XPCActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type XPCActor and conformance XPCActor, type metadata accessor for XPCActor, &protocol conformance descriptor for XPCActor);
    v17 = swift_task_alloc();
    *(v8 + 128) = v17;
    *(v17 + 16) = v21;
    *(v17 + 32) = v20;
    *(v17 + 48) = v11;
    *(v17 + 56) = v23;
    *(v17 + 72) = v22;
    v18 = swift_task_alloc();
    *(v8 + 136) = v18;
    a8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging8XPCUtilsO20CollaboratorProtocol_pMd, &_s15SecureMessaging8XPCUtilsO20CollaboratorProtocol_pMR);
    *(v8 + 144) = a8;
    *v18 = v8;
    v18[1] = XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:);
    a6 = partial apply for closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:);
    a1 = v8 + 16;
    a5 = 0x80000002651E8F70;
    a2 = v15;
    a3 = v16;
    a4 = 0xD00000000000005ELL;
    a7 = v17;
  }

  return MEMORY[0x2822008A0](a1, a2, a3, a4, a5, a6, a7, a8);
}

uint64_t XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:)()
{
  v2 = *v1;
  *(*v1 + 152) = v0;

  if (v0)
  {
    v3 = *(v2 + 104);
    v4 = XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:);
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:);
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:)(uint64_t a1)
{
  v2 = v1[2];
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = v1[14];
    v6 = swift_slowAlloc();
    *v6 = 134217984;
    *(v6 + 4) = v5;
    _os_log_impl(&dword_264F1F000, v3, v4, "XPCConnection fulfilling with successful result { requestID: %ld }", v6, 0xCu);
    MEMORY[0x266755550](v6, -1, -1);
  }

  v1[3] = v2;
  swift_dynamicCast();
  v7 = v1[4];
  v8 = v1[1];

  return v8(v7);
}

Swift::Int XPCUtils.XPCInterfaceRequest.RequestType.hashValue.getter()
{
  Hasher.init(_seed:)();
  MEMORY[0x266754DE0](0);
  return Hasher._finalize()();
}

uint64_t XPCUtils.XPCInterfaceRequest.continuation.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy15SecureMessaging8XPCUtilsO20CollaboratorProtocol_ps5Error_pGMd, &_sScCy15SecureMessaging8XPCUtilsO20CollaboratorProtocol_ps5Error_pGMR);
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t XPCUtils.XPCInterfaceRequest.resume(returning:)(uint64_t a1)
{
  swift_unknownObjectRetain();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy15SecureMessaging8XPCUtilsO20CollaboratorProtocol_ps5Error_pGMd, &_sScCy15SecureMessaging8XPCUtilsO20CollaboratorProtocol_ps5Error_pGMR);
  return CheckedContinuation.resume(returning:)();
}

uint64_t XPCUtils.XPCInterfaceRequest.resume(throwing:)(void *a1)
{
  v2 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
  if (swift_dynamicCast())
  {

    v3 = a1;
  }

  else
  {
    lazy protocol witness table accessor for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError();
    swift_allocError();
    v5 = v4;
    swift_getErrorValue();
    v6 = Error.readableDescription.getter(v9, v10);
    *v5 = 3;
    *(v5 + 8) = v6;
    *(v5 + 16) = v7;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy15SecureMessaging8XPCUtilsO20CollaboratorProtocol_ps5Error_pGMd, &_sScCy15SecureMessaging8XPCUtilsO20CollaboratorProtocol_ps5Error_pGMR);
  return CheckedContinuation.resume(throwing:)();
}

uint64_t key path getter for XPCUtils.Connection.interruptionHandlerBlock : <A>XPCUtils.Connection<A>@<X0>(uint64_t a1@<X0>, uint64_t (**a2)()@<X8>)
{
  v3 = (*a1 + *(**a1 + 192));
  swift_beginAccess();
  v4 = *v3;
  v5 = v3[1];
  if (v4)
  {
    v6 = swift_allocObject();
    *(v6 + 16) = v4;
    *(v6 + 24) = v5;
    v7 = partial apply for thunk for @escaping @callee_guaranteed @Sendable () -> ();
  }

  else
  {
    v7 = 0;
    v6 = 0;
  }

  *a2 = v7;
  a2[1] = v6;
  return _sxSbs5Error_pRi_zRi0_zlyxIseghndzo_Sgs8SendableRzlWOy(v4, v5);
}

uint64_t key path setter for XPCUtils.Connection.interruptionHandlerBlock : <A>XPCUtils.Connection<A>(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  if (*a1)
  {
    v5 = swift_allocObject();
    *(v5 + 16) = v3;
    *(v5 + 24) = v4;
    v6 = partial apply for thunk for @escaping @callee_guaranteed @Sendable () -> (@out ());
  }

  else
  {
    v6 = 0;
    v5 = 0;
  }

  v7 = (*a2 + *(**a2 + 192));
  swift_beginAccess();
  v8 = *v7;
  v9 = v7[1];
  *v7 = v6;
  v7[1] = v5;
  _sxSbs5Error_pRi_zRi0_zlyxIseghndzo_Sgs8SendableRzlWOy(v3, v4);
  return outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error))?(v8, v9);
}

uint64_t XPCUtils.Connection.interruptionHandlerBlock.getter()
{
  v1 = (v0 + *(*v0 + 192));
  swift_beginAccess();
  v2 = *v1;
  _sxSbs5Error_pRi_zRi0_zlyxIseghndzo_Sgs8SendableRzlWOy(*v1, v1[1]);
  return v2;
}

uint64_t XPCUtils.Connection.interruptionHandlerBlock.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 192));
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error))?(v6, v7);
}

uint64_t *XPCUtils.Connection.init(queue:machServiceName:remoteObjectInterface:listenerEndpoint:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v8 = specialized XPCUtils.Connection.init(queue:machServiceName:remoteObjectInterface:listenerEndpoint:)(a1, a2, a3, a4, a5);

  return v8;
}

void XPCUtils.Connection.failAllRunningRequestsAndRestartConnection()(uint64_t a1)
{
  v2 = *v1;
  v79 = *(*v1 + 80);
  v78 = *(v79 - 8);
  MEMORY[0x28223BE20](a1);
  v77 = &v77 - v3;
  v4 = type metadata accessor for XPCUtils.XPCInterfaceRequest(0);
  v83 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4 - 8);
  v87 = &v77 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v82 = &v77 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi3key_15SecureMessaging8XPCUtilsO19XPCInterfaceRequestV5valuetSgMd, &_sSi3key_15SecureMessaging8XPCUtilsO19XPCInterfaceRequestV5valuetSgMR);
  v9 = MEMORY[0x28223BE20](v8 - 8);
  v11 = (&v77 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v13 = (&v77 - v12);
  v14 = *(v2 + 184);
  swift_beginAccess();
  v86 = v1;
  v80 = v14;
  v15 = *(v1 + v14);
  v18 = *(v15 + 64);
  v17 = v15 + 64;
  v16 = v18;
  v19 = 1 << *(*(v1 + v14) + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v16;
  v84 = *(v1 + v14);
  v85 = direct field offset for XPCUtils.Connection.logger;
  v22 = (v19 + 63) >> 6;

  v23 = 0;
  *&v24 = 134217984;
  v81 = v24;
  while (1)
  {
    if (!v21)
    {
      if (v22 <= v23 + 1)
      {
        v28 = v23 + 1;
      }

      else
      {
        v28 = v22;
      }

      v29 = v28 - 1;
      while (1)
      {
        v27 = v23 + 1;
        if (__OFADD__(v23, 1))
        {
          break;
        }

        if (v27 >= v22)
        {
          v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi3key_15SecureMessaging8XPCUtilsO19XPCInterfaceRequestV5valuetMd, &_sSi3key_15SecureMessaging8XPCUtilsO19XPCInterfaceRequestV5valuetMR);
          (*(*(v50 - 8) + 56))(v11, 1, 1, v50);
          v21 = 0;
          goto LABEL_16;
        }

        v21 = *(v17 + 8 * v27);
        ++v23;
        if (v21)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
      goto LABEL_35;
    }

    v27 = v23;
LABEL_15:
    v30 = __clz(__rbit64(v21));
    v21 &= v21 - 1;
    v31 = v30 | (v27 << 6);
    v32 = *(*(v84 + 48) + 8 * v31);
    v33 = v82;
    outlined init with copy of XPCUtils.XPCInterfaceRequest(*(v84 + 56) + *(v83 + 72) * v31, v82);
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi3key_15SecureMessaging8XPCUtilsO19XPCInterfaceRequestV5valuetMd, &_sSi3key_15SecureMessaging8XPCUtilsO19XPCInterfaceRequestV5valuetMR);
    v35 = *(v34 + 48);
    *v11 = v32;
    outlined init with take of XPCUtils.XPCInterfaceRequest(v33, v11 + v35);
    (*(*(v34 - 8) + 56))(v11, 0, 1, v34);
    v29 = v27;
LABEL_16:
    outlined init with take of (key: Int, value: XPCUtils.XPCInterfaceRequest)?(v11, v13);
    v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSi3key_15SecureMessaging8XPCUtilsO19XPCInterfaceRequestV5valuetMd, &_sSi3key_15SecureMessaging8XPCUtilsO19XPCInterfaceRequestV5valuetMR);
    if ((*(*(v36 - 8) + 48))(v13, 1, v36) == 1)
    {
      break;
    }

    v23 = v29;
    v37 = *v13;
    outlined init with take of XPCUtils.XPCInterfaceRequest(v13 + *(v36 + 48), v87);
    v38 = Logger.logObject.getter();
    v39 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v38, v39))
    {
      v40 = swift_slowAlloc();
      *v40 = v81;
      *(v40 + 4) = v37;
      _os_log_impl(&dword_264F1F000, v38, v39, "XPCConnection failing request due to interruption event { requestID: %ld }", v40, 0xCu);
      MEMORY[0x266755550](v40, -1, -1);
    }

    lazy protocol witness table accessor for type XPCUtils.XPCError and conformance XPCUtils.XPCError();
    v41 = swift_allocError();
    v43 = v42;
    *(v42 + 8) = 0;
    *(v42 + 16) = 0;

    *v43 = 0;
    v90 = v41;
    v44 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    if (swift_dynamicCast())
    {

      aBlock[0] = v41;
      v25 = v41;
    }

    else
    {
      lazy protocol witness table accessor for type XPCUtils.XPCClientCreationError and conformance XPCUtils.XPCClientCreationError();
      v45 = swift_allocError();
      v47 = v46;
      swift_getErrorValue();
      v48 = Error.readableDescription.getter(v88, v89);
      *v47 = 3;
      *(v47 + 8) = v48;
      *(v47 + 16) = v49;
      aBlock[0] = v45;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy15SecureMessaging8XPCUtilsO20CollaboratorProtocol_ps5Error_pGMd, &_sScCy15SecureMessaging8XPCUtilsO20CollaboratorProtocol_ps5Error_pGMR);
    v26 = v87;
    CheckedContinuation.resume(throwing:)();
    outlined destroy of XPCUtils.XPCInterfaceRequest(v26);
  }

  v51 = v86;
  v52 = v80;
  swift_beginAccess();
  if (*(*(v51 + v52) + 16))
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v90 = *(v51 + v52);
    *(v51 + v52) = 0x8000000000000000;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss17_NativeDictionaryVySi15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVGMd, &_ss17_NativeDictionaryVySi15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVGMR);
    _NativeDictionary.removeAll(isUnique:)(isUniquelyReferenced_nonNull_native);
    *(v51 + v52) = v90;
  }

  swift_endAccess();
  v54 = *(v51 + direct field offset for XPCUtils.Connection.listenerEndpoint);
  if (v54)
  {
    v55 = [objc_allocWithZone(MEMORY[0x277CCAE80]) initWithListenerEndpoint_];
  }

  else
  {
    v56 = *(v51 + direct field offset for XPCUtils.Connection.machServiceName);
    v57 = *(v51 + direct field offset for XPCUtils.Connection.machServiceName + 8);
    v58 = objc_allocWithZone(MEMORY[0x277CCAE80]);
    v59 = MEMORY[0x266754510](v56, v57);
    v55 = [v58 initWithMachServiceName:v59 options:0];
  }

  v60 = *(v51 + direct field offset for XPCUtils.Connection.queue);
  v61 = v55;
  [v61 _setQueue_];
  [v61 setRemoteObjectInterface_];
  aBlock[4] = partial apply for closure #1 in XPCUtils.Connection.failAllRunningRequestsAndRestartConnection();
  aBlock[5] = v51;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_32;
  v62 = _Block_copy(aBlock);

  [v61 setInterruptionHandler_];
  _Block_release(v62);
  v63 = Logger.logObject.getter();
  v64 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v63, v64))
  {
    v65 = swift_slowAlloc();
    *v65 = 0;
    _os_log_impl(&dword_264F1F000, v63, v64, "XPCConnection starting new connection after interrupt", v65, 2u);
    MEMORY[0x266755550](v65, -1, -1);
  }

  [v61 resume];
  v66 = direct field offset for XPCUtils.Connection.connection;
  v67 = *(v51 + direct field offset for XPCUtils.Connection.connection);
  *(v51 + direct field offset for XPCUtils.Connection.connection) = v61;
  v68 = *(v51 + direct field offset for XPCUtils.Connection._nextConnectionID);
  if (__OFADD__(v68, 1))
  {
LABEL_35:
    __break(1u);
    return;
  }

  *(v51 + direct field offset for XPCUtils.Connection._nextConnectionID) = v68 + 1;
  *(v51 + direct field offset for XPCUtils.Connection.connectionID) = v68;
  [v67 setInterruptionHandler_];
  [v67 setInvalidationHandler_];
  [v67 invalidate];
  v69 = [*(v51 + v66) remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  v70 = v77;
  v71 = v79;
  swift_dynamicCast();
  v72 = *(*v51 + 176);
  swift_beginAccess();
  (*(v78 + 40))(v51 + v72, v70, v71);
  swift_endAccess();
  v73 = v51 + *(*v51 + 192);
  swift_beginAccess();
  v74 = *v73;
  if (*v73)
  {
    v75 = *(v73 + 8);

    v74(v76);

    outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error))?(v74, v75);
  }

  else
  {

    v67 = v61;
  }
}

char *XPCUtils.Connection.deinit()
{
  v1 = v0;
  v43 = *v0;
  v2 = type metadata accessor for DispatchWorkItemFlags();
  v41 = *(v2 - 8);
  v42 = v2;
  MEMORY[0x28223BE20](v2);
  v40 = &v31 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for DispatchQoS();
  v38 = *(v4 - 8);
  v39 = v4;
  MEMORY[0x28223BE20](v4);
  v36 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Logger();
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  v9 = MEMORY[0x28223BE20](v6);
  v10 = &v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - v11;
  v13 = *(v7 + 16);
  v44 = direct field offset for XPCUtils.Connection.logger;
  v37 = v14;
  v13(&v31 - v11, &v1[direct field offset for XPCUtils.Connection.logger]);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_264F1F000, v15, v16, "XPCConnection deinit", v17, 2u);
    MEMORY[0x266755550](v17, -1, -1);
  }

  v18 = *(v7 + 8);
  v33 = v7 + 8;
  v34 = v18;
  v19 = v37;
  v18(v12, v37);
  v35 = direct field offset for XPCUtils.Connection.connection;
  v20 = *&v1[direct field offset for XPCUtils.Connection.connection];
  v32 = direct field offset for XPCUtils.Connection.queue;
  v21 = *&v1[direct field offset for XPCUtils.Connection.queue];
  (v13)(v10, &v1[v44], v19);
  v22 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v23 = swift_allocObject();
  (*(v7 + 32))(v23 + v22, v10, v19);
  *(v23 + ((v8 + v22 + 7) & 0xFFFFFFFFFFFFFFF8)) = v20;
  aBlock[4] = partial apply for closure #1 in XPCUtils.Connection.deinit;
  aBlock[5] = v23;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  aBlock[3] = &block_descriptor_1;
  v24 = _Block_copy(aBlock);
  v25 = v20;
  v26 = v21;
  v27 = v36;
  static DispatchQoS.unspecified.getter();
  v45 = MEMORY[0x277D84F90];
  _s15SecureMessaging8XPCActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type DispatchWorkItemFlags and conformance DispatchWorkItemFlags, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]();
  v28 = v40;
  v29 = v42;
  dispatch thunk of SetAlgebra.init<A>(_:)();
  MEMORY[0x266754870](0, v27, v28, v24);
  _Block_release(v24);

  (*(v41 + 8))(v28, v29);
  (*(v38 + 8))(v27, v39);

  v34(&v1[v44], v19);

  (*(*(*(v43 + 80) - 8) + 8))(&v1[*(*v1 + 176)]);

  outlined consume of (@escaping @callee_guaranteed @Sendable @async (@guaranteed String) -> (@error @owned Error))?(*&v1[*(*v1 + 192)], *&v1[*(*v1 + 192) + 8]);
  return v1;
}

id closure #1 in XPCUtils.Connection.deinit(uint64_t a1, void *a2)
{
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    *v5 = 0;
    _os_log_impl(&dword_264F1F000, v3, v4, "XPCConnection invalidating due to deinit", v5, 2u);
    MEMORY[0x266755550](v5, -1, -1);
  }

  return [a2 invalidate];
}

uint64_t thunk for @escaping @callee_guaranteed () -> ()(uint64_t a1)
{
  v1 = *(a1 + 32);

  v1(v2);
}

uint64_t XPCUtils.Connection.__deallocating_deinit()
{
  XPCUtils.Connection.deinit();

  return swift_deallocClassInstance();
}

uint64_t closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t), uint64_t a5, void (*a6)(char *, uint64_t (*)(), void *), uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v33 = a8;
  v34 = a7;
  v35 = a6;
  v14 = *(*a2 + 80);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](a1);
  v17 = &v31 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVSgMd, &_s15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVSgMR);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v31 - v19;
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  if ((swift_task_isCurrentExecutor() & 1) == 0)
  {
    swift_task_reportUnexpectedExecutor();
  }

  v21 = a10;
  v32 = a9;
  a4(a1);
  v22 = type metadata accessor for XPCUtils.XPCInterfaceRequest(0);
  (*(*(v22 - 8) + 56))(v20, 0, 1, v22);
  swift_beginAccess();
  specialized Dictionary.subscript.setter(v20, a3);
  swift_endAccess();
  v23 = Logger.logObject.getter();
  v24 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v23, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 134217984;
    *(v25 + 4) = a3;
    _os_log_impl(&dword_264F1F000, v23, v24, "XPCConnection stored and sending request { requestID: %ld }", v25, 0xCu);
    v26 = v25;
    v21 = a10;
    MEMORY[0x266755550](v26, -1, -1);
  }

  v27 = *(*a2 + 176);
  swift_beginAccess();
  (*(v15 + 16))(v17, a2 + v27, v14);
  v28 = swift_allocObject();
  v29 = v32;
  v28[2] = v33;
  v28[3] = v29;
  v28[4] = v21;
  v28[5] = a2;
  v28[6] = a3;

  v35(v17, partial apply for closure #1 in closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:), v28);

  return (*(v15 + 8))(v17, v14);
}

uint64_t closure #1 in closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v24 = a5;
  v25 = a8;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScPSgMd, &_sScPSgMR);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v24 - v15;
  v17 = type metadata accessor for TaskPriority();
  (*(*(v17 - 8) + 56))(v16, 1, 1, v17);

  outlined copy of Data?(a2, a3);
  v18 = one-time initialization token for shared;
  swift_unknownObjectRetain();
  if (v18 != -1)
  {
    swift_once();
  }

  v19 = static XPCActor.shared;
  v20 = _s15SecureMessaging8XPCActorCACScAAAWlTm_1(&lazy protocol witness table cache variable for type XPCActor and conformance XPCActor, type metadata accessor for XPCActor, &protocol conformance descriptor for XPCActor);
  v21 = swift_allocObject();
  v21[2] = v19;
  v21[3] = v20;
  v21[4] = a6;
  v21[5] = a7;
  v22 = v24;
  v21[6] = v25;
  v21[7] = a4;
  v21[8] = v22;
  v21[9] = a2;
  v21[10] = a3;
  v21[11] = a1;

  _sScTss5NeverORs_rlE4name8priority9operationScTyxABGSSSg_ScPSgxyYaYAcntcfCyt_Tt2g5(0, 0, v16, &async function pointer to partial apply for closure #1 in closure #1 in closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:), v21);
}

uint64_t closure #1 in closure #1 in closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[8] = v13;
  v8[9] = v14;
  v8[6] = a8;
  v8[7] = v12;
  v8[4] = a6;
  v8[5] = a7;
  v8[2] = a4;
  v8[3] = a5;
  v8[10] = *(v14 + 8);
  v8[11] = swift_getAssociatedTypeWitness();
  v8[12] = swift_task_alloc();
  v8[13] = *(v13 - 8);
  v8[14] = swift_task_alloc();
  v8[15] = swift_task_alloc();
  v8[16] = swift_task_alloc();
  v8[17] = swift_task_alloc();
  v8[18] = swift_task_alloc();
  v8[19] = swift_task_alloc();
  v8[20] = swift_task_alloc();
  v8[21] = swift_task_alloc();
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v9 = static XPCActor.shared;

  return MEMORY[0x2822009F8](closure #1 in closure #1 in closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:), v9, 0);
}

uint64_t closure #1 in closure #1 in closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:)()
{
  v95 = v0;
  v2 = v0[4];
  v1 = v0[5];
  outlined copy of Data?(v2, v1);
  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.default.getter();
  outlined consume of Data?(v2, v1);
  if (os_log_type_enabled(v3, v4))
  {
    v6 = v0[4];
    v5 = v0[5];
    v7 = v0[3];
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    v94 = v9;
    *v8 = 134218242;
    *(v8 + 4) = v7;
    *(v8 + 12) = 2080;
    if (v5 >> 60 == 15)
    {
      v10 = 0;
    }

    else
    {
      v10 = v6;
    }

    if (v5 >> 60 == 15)
    {
      v11 = 0xC000000000000000;
    }

    else
    {
      v11 = v5;
    }

    outlined copy of Data?(v6, v5);
    v12 = Data.description.getter();
    v14 = v13;
    outlined consume of Data._Representation(v10, v11);
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v14, &v94);

    *(v8 + 14) = v15;
    _os_log_impl(&dword_264F1F000, v3, v4, "XPCConnection received result { requestID: %ld, errorData: %s }", v8, 0x16u);
    __swift_destroy_boxed_opaque_existential_1Tm(v9);
    MEMORY[0x266755550](v9, -1, -1);
    MEMORY[0x266755550](v8, -1, -1);
  }

  v16 = v0[6];
  if (v16)
  {
    swift_unknownObjectRetain();
    v17 = Logger.logObject.getter();
    v18 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = v0[3];
      v20 = swift_slowAlloc();
      *v20 = 134217984;
      *(v20 + 4) = v19;
      _os_log_impl(&dword_264F1F000, v17, v18, "XPCConnection fullfilling with result { requestID: %ld }", v20, 0xCu);
      MEMORY[0x266755550](v20, -1, -1);
    }

    v21 = v0[3];

    XPCUtils.Connection.finish(requestID:with:)(v21, v16);
    swift_unknownObjectRelease();
  }

  else
  {
    v22 = v0[5];
    if (v22 >> 60 == 15)
    {
      v23 = Logger.logObject.getter();
      v24 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v23, v24))
      {
        v25 = v0[3];
        v26 = swift_slowAlloc();
        *v26 = 134217984;
        *(v26 + 4) = v25;
        _os_log_impl(&dword_264F1F000, v23, v24, "XPCConnection failing with empty result { requestID: %ld }", v26, 0xCu);
        MEMORY[0x266755550](v26, -1, -1);
      }

      v27 = v0[9];
      v28 = v0[8];

      lazy protocol witness table accessor for type XPCUtils.XPCError and conformance XPCUtils.XPCError();
      v29 = swift_allocError();
      v31 = v30;
      *(v30 + 8) = 0;
      *(v30 + 16) = 0;

      *v31 = 1;
      static XPCUtils.XPCableError.xpcError(underlyingError:)(v29, v28, v27);

      v32 = _getErrorEmbeddedNSError<A>(_:)();
      v33 = v0[15];
      v34 = v0[13];
      if (v32)
      {
        v35 = v32;
        (*(v34 + 8))(v0[15], v0[8]);
      }

      else
      {
        v52 = v0[8];
        v35 = swift_allocError();
        (*(v34 + 32))(v53, v33, v52);
      }

      XPCUtils.Connection.fail(requestID:with:)(v0[3], v35);
    }

    else
    {
      outlined copy of Data._Representation(v0[4], v22);
      v36 = Logger.logObject.getter();
      v37 = static os_log_type_t.default.getter();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = v0[3];
        v39 = swift_slowAlloc();
        *v39 = 134217984;
        *(v39 + 4) = v38;
        _os_log_impl(&dword_264F1F000, v36, v37, "XPCConnection decoding error data { requestID: %ld }", v39, 0xCu);
        MEMORY[0x266755550](v39, -1, -1);
      }

      v89 = v0[19];
      v40 = v0[12];
      v92 = v0[13];
      v41 = v0[11];
      v87 = v0[10];
      v88 = v0[20];
      v42 = v0[8];
      v43 = v0[9];
      v44 = v0[7];
      v45 = v0[4];
      v46 = v0[5];
      v47 = v0[2];

      v48 = swift_task_alloc();
      v48[2] = v44;
      v48[3] = v42;
      v48[4] = v43;
      v48[5] = v47;
      v48[6] = v45;
      v48[7] = v46;
      AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
      (*(AssociatedConformanceWitness + 16))(v41, AssociatedConformanceWitness);
      VersatileError.init(type:)(v40, v42, v87);
      _s15SecureMessaging7rethrow_2as3logq_q_yKXK_xySScSgtxYKAA14VersatileErrorRzr0_lF(partial apply for implicit closure #6 in closure #1 in closure #1 in closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:), v48, v88, 0, 0, v42, v42, v87, v89);
      v50 = *(v92 + 8);
      v50(v88, v42);
      v51 = v0[13];
      v54 = v0[21];
      v55 = v0[18];
      v56 = v0[8];

      v57 = *(v51 + 16);
      v57(v55, v54, v56);
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.default.getter();
      v60 = os_log_type_enabled(v58, v59);
      v61 = v0[18];
      if (v60)
      {
        v91 = v59;
        v62 = v0[17];
        v63 = v0[8];
        v64 = v0[3];
        v65 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        *v65 = 134218242;
        *(v65 + 4) = v64;
        *(v65 + 12) = 2112;
        v93 = v57;
        v57(v62, v61, v63);
        v66 = _getErrorEmbeddedNSError<A>(_:)();
        v67 = v0[17];
        if (v66)
        {
          v50(v0[17], v0[8]);
        }

        else
        {
          v71 = v0[13];
          v72 = v0[8];
          swift_allocError();
          (*(v71 + 32))(v73, v67, v72);
        }

        v74 = v0[18];
        v75 = v0[8];
        v76 = _swift_stdlib_bridgeErrorToNSError();
        v50(v74, v75);
        *(v65 + 14) = v76;
        *v90 = v76;
        _os_log_impl(&dword_264F1F000, v58, v91, "XPCConnection failing with error { requestID: %ld, error: %@ }", v65, 0x16u);
        outlined destroy of NSObject?(v90, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
        MEMORY[0x266755550](v90, -1, -1);
        MEMORY[0x266755550](v65, -1, -1);

        v57 = v93;
      }

      else
      {
        v70 = v0[8];

        v50(v61, v70);
      }

      v57(v0[16], v0[21], v0[8]);
      v77 = _getErrorEmbeddedNSError<A>(_:)();
      v78 = v0[16];
      if (v77)
      {
        v79 = v77;
        v50(v0[16], v0[8]);
      }

      else
      {
        v80 = v0[13];
        v81 = v0[8];
        v79 = swift_allocError();
        (*(v80 + 32))(v82, v78, v81);
      }

      v83 = v0[21];
      v84 = v0[8];
      v86 = v0[4];
      v85 = v0[5];
      XPCUtils.Connection.fail(requestID:with:)(v0[3], v79);
      outlined consume of Data?(v86, v85);

      v50(v83, v84);
    }
  }

  v68 = v0[1];

  return v68();
}

void XPCUtils.Connection.finish(requestID:with:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVSgMd, &_s15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = v14 - v5;
  v7 = type metadata accessor for XPCUtils.XPCInterfaceRequest(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  specialized Dictionary.removeValue(forKey:)(a1, v6);
  swift_endAccess();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of NSObject?(v6, &_s15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVSgMd, &_s15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVSgMR);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = a1;
      _os_log_impl(&dword_264F1F000, v11, v12, "XPCConnection not tracking requestID. Failing finish operation { requestID: %ld }", v13, 0xCu);
      MEMORY[0x266755550](v13, -1, -1);
    }
  }

  else
  {
    outlined init with take of XPCUtils.XPCInterfaceRequest(v6, v10);
    v14[1] = a2;
    swift_unknownObjectRetain();
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy15SecureMessaging8XPCUtilsO20CollaboratorProtocol_ps5Error_pGMd, &_sScCy15SecureMessaging8XPCUtilsO20CollaboratorProtocol_ps5Error_pGMR);
    CheckedContinuation.resume(returning:)();
    outlined destroy of XPCUtils.XPCInterfaceRequest(v10);
  }
}

void XPCUtils.Connection.fail(requestID:with:)(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVSgMd, &_s15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v14 - v5;
  v7 = type metadata accessor for XPCUtils.XPCInterfaceRequest(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  specialized Dictionary.removeValue(forKey:)(a1, v6);
  swift_endAccess();
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    outlined destroy of NSObject?(v6, &_s15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVSgMd, &_s15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVSgMR);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 134217984;
      *(v13 + 4) = a1;
      _os_log_impl(&dword_264F1F000, v11, v12, "XPCConnection not tracking requestID. Failing fail operation { requestID: %ld }", v13, 0xCu);
      MEMORY[0x266755550](v13, -1, -1);
    }
  }

  else
  {
    outlined init with take of XPCUtils.XPCInterfaceRequest(v6, v10);
    XPCUtils.XPCInterfaceRequest.resume(throwing:)(a2);
    outlined destroy of XPCUtils.XPCInterfaceRequest(v10);
  }
}

void closure #1 in XPCUtils.Connection.init(queue:machServiceName:remoteObjectInterface:listenerEndpoint:)(uint64_t a1)
{
  v1 = Logger.logObject.getter();
  v2 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v1, v2))
  {
    v3 = swift_slowAlloc();
    *v3 = 0;
    _os_log_impl(&dword_264F1F000, v1, v2, "XPCConnection interrupted", v3, 2u);
    MEMORY[0x266755550](v3, -1, -1);
  }

  XPCUtils.Connection.failAllRunningRequestsAndRestartConnection()(v4);
}

uint64_t *specialized XPCUtils.Connection.init(queue:machServiceName:remoteObjectInterface:listenerEndpoint:)(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v6 = v5;
  Logger.init(subsystem:category:)();
  *(v5 + direct field offset for XPCUtils.Connection._nextRequestID) = 0;
  *(v5 + direct field offset for XPCUtils.Connection._nextConnectionID) = 1;
  v12 = direct field offset for XPCUtils.Connection.jsonDecoder;
  type metadata accessor for JSONDecoder();
  swift_allocObject();
  *(v5 + v12) = JSONDecoder.init()();
  v13 = direct field offset for XPCUtils.Connection.jsonEncoder;
  type metadata accessor for JSONEncoder();
  swift_allocObject();
  *(v5 + v13) = JSONEncoder.init()();
  *(v5 + direct field offset for XPCUtils.Connection.connectionID) = 0;
  v14 = *(*v5 + 184);
  *(v6 + v14) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSi_15SecureMessaging8XPCUtilsO19XPCInterfaceRequestVTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v15 = (v6 + *(*v6 + 192));
  *v15 = 0;
  v15[1] = 0;
  *(v6 + direct field offset for XPCUtils.Connection.queue) = a1;
  v16 = (v6 + direct field offset for XPCUtils.Connection.machServiceName);
  *v16 = a2;
  v16[1] = a3;
  *(v6 + direct field offset for XPCUtils.Connection.remoteObjectInterface) = a4;
  *(v6 + direct field offset for XPCUtils.Connection.listenerEndpoint) = a5;
  v17 = objc_allocWithZone(MEMORY[0x277CCAE80]);
  v18 = a1;
  if (a5)
  {
    v19 = a4;
    v20 = [v17 initWithListenerEndpoint_];
  }

  else
  {

    v21 = a4;
    v22 = MEMORY[0x266754510](a2, a3);

    v20 = [v17 initWithMachServiceName:v22 options:0];
  }

  v23 = *(v6 + direct field offset for XPCUtils.Connection.queue);
  v24 = v20;
  [v24 _setQueue_];
  v25 = v24;
  [v25 setRemoteObjectInterface_];
  *(v6 + direct field offset for XPCUtils.Connection.connection) = v25;
  v26 = [v25 remoteObjectProxy];
  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  v32[4] = partial apply for closure #1 in XPCUtils.Connection.init(queue:machServiceName:remoteObjectInterface:listenerEndpoint:);
  v32[5] = v6;
  v32[0] = MEMORY[0x277D85DD0];
  v32[1] = 1107296256;
  v32[2] = thunk for @escaping @callee_guaranteed @Sendable () -> ();
  v32[3] = &block_descriptor_29;
  v27 = _Block_copy(v32);

  [v25 setInterruptionHandler_];
  _Block_release(v27);
  v28 = Logger.logObject.getter();
  v29 = static os_log_type_t.default.getter();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_264F1F000, v28, v29, "XPCConnection starting XPC connection", v30, 2u);
    MEMORY[0x266755550](v30, -1, -1);
  }

  [v25 resume];
  return v6;
}

uint64_t _sxSbs5Error_pRi_zRi0_zlyxIseghndzo_Sgs8SendableRzlWOy(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_264FB25A8()
{
  v1 = type metadata accessor for Logger();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

id partial apply for closure #1 in XPCUtils.Connection.deinit()
{
  v1 = *(type metadata accessor for Logger() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in XPCUtils.Connection.deinit(v0 + v2, v3);
}

uint64_t block_copy_helper_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t _s15SecureMessaging8XPCActorCACScAAAWlTm_1(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A]()
{
  result = lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A];
  if (!lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay8Dispatch0A13WorkItemFlagsVGMd, &_sSay8Dispatch0A13WorkItemFlagsVGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DispatchWorkItemFlags] and conformance [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type XPCUtils.XPCInterfaceRequest.RequestType and conformance XPCUtils.XPCInterfaceRequest.RequestType()
{
  result = lazy protocol witness table cache variable for type XPCUtils.XPCInterfaceRequest.RequestType and conformance XPCUtils.XPCInterfaceRequest.RequestType;
  if (!lazy protocol witness table cache variable for type XPCUtils.XPCInterfaceRequest.RequestType and conformance XPCUtils.XPCInterfaceRequest.RequestType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type XPCUtils.XPCInterfaceRequest.RequestType and conformance XPCUtils.XPCInterfaceRequest.RequestType);
  }

  return result;
}

uint64_t sub_264FB2830(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy15SecureMessaging8XPCUtilsO20CollaboratorProtocol_ps5Error_pGMd, &_sScCy15SecureMessaging8XPCUtilsO20CollaboratorProtocol_ps5Error_pGMR);
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_264FB28BC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sScCy15SecureMessaging8XPCUtilsO20CollaboratorProtocol_ps5Error_pGMd, &_sScCy15SecureMessaging8XPCUtilsO20CollaboratorProtocol_ps5Error_pGMR);
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t type metadata accessor for XPCUtils.XPCInterfaceRequest(uint64_t a1)
{
  result = type metadata singleton initialization cache for XPCUtils.XPCInterfaceRequest;
  if (!type metadata singleton initialization cache for XPCUtils.XPCInterfaceRequest)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for XPCUtils.XPCInterfaceRequest(uint64_t a1)
{
  type metadata accessor for CheckedContinuation<XPCUtils.CollaboratorProtocol, Error>(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

void type metadata accessor for CheckedContinuation<XPCUtils.CollaboratorProtocol, Error>(uint64_t a1)
{
  if (!lazy cache variable for type metadata for CheckedContinuation<XPCUtils.CollaboratorProtocol, Error>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s15SecureMessaging8XPCUtilsO20CollaboratorProtocol_pMd, &_s15SecureMessaging8XPCUtilsO20CollaboratorProtocol_pMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v1 = type metadata accessor for CheckedContinuation();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for CheckedContinuation<XPCUtils.CollaboratorProtocol, Error>);
    }
  }
}

uint64_t type metadata completion function for XPCUtils.Connection(uint64_t a1)
{
  result = type metadata accessor for Logger();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t sub_264FB2C28()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_264FB2CB0()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_264FB2CF8()
{
  swift_unknownObjectRelease();

  v1 = *(v0 + 80);
  if (v1 >> 60 != 15)
  {
    outlined consume of Data._Representation(*(v0 + 72), v1);
  }

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t partial apply for closure #1 in closure #1 in closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:)(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[7];
  v7 = v1[8];
  v8 = v1[9];
  v10 = v1[10];
  v9 = v1[11];
  v11 = swift_task_alloc();
  *(v2 + 16) = v11;
  *v11 = v2;
  v11[1] = partial apply for specialized closure #1 in static XPCUtils.decodeAndSendReply<A, B, C>(errorType:replyBlock:decodeBlock:eventDeliveryBlock:);

  return closure #1 in closure #1 in closure #1 in XPCUtils.Connection.createDaemonInterface<A, B>(resultType:errorType:isReconnectionEvent:requestCreationBlock:xpcBlock:)(a1, v4, v5, v6, v7, v8, v10, v9);
}

double static KDSRegistration.EncryptedRCS.configuration<A>(provider:simUniqueID:simLabelID:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *x8_0@<X8>)
{
  KDSRegistration.Configuration.init(clientIdentifier:provider:simUniqueID:simLabelID:testPhoneNumber:)(a1, a2, a3, a4, a5, 0, 0, x8_0);
  swift_unknownObjectRetain();

  return result;
}

uint64_t KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.accountKey.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.init(accountKey:hasAccountKeyChanged:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0x4B746E756F636361;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x4B746E756F636361 && a2 == 0xEA00000000007965;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000002651E91A0 == a2)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO12EncryptedRCSO30PhoneAuthenticationInfoRequestV10CodingKeys33_3A8997C23693286548A17787F537EE24LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO12EncryptedRCSO30PhoneAuthenticationInfoRequestV10CodingKeys33_3A8997C23693286548A17787F537EE24LLOGMR);
  v11 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v10 - v5;
  v7 = *v1;
  v8 = *(v1 + 8);
  v14 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  outlined copy of Data._Representation(v7, v8);
  lazy protocol witness table accessor for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = v7;
  v13 = v8;
  v15 = 0;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data._Representation(v12, v13);
  if (!v2)
  {
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v11 + 8))(v6, v4);
}

unint64_t lazy protocol witness table accessor for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys()
{
  result = lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys);
  }

  return result;
}

uint64_t KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO12EncryptedRCSO30PhoneAuthenticationInfoRequestV10CodingKeys33_3A8997C23693286548A17787F537EE24LLOGMd, &_ss22KeyedDecodingContainerVy15SecureMessaging15KDSRegistrationO12EncryptedRCSO30PhoneAuthenticationInfoRequestV10CodingKeys33_3A8997C23693286548A17787F537EE24LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfoRequest.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v14 = 0;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v10 = v13[0];
  v9 = v13[1];
  LOBYTE(v13[0]) = 1;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  *a2 = v10;
  *(a2 + 8) = v9;
  *(a2 + 16) = v11 & 1;
  outlined copy of Data._Representation(v10, v9);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return outlined consume of Data._Representation(v10, v9);
}

uint64_t KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.acsSignature.getter()
{
  v1 = *v0;
  outlined copy of Data._Representation(*v0, *(v0 + 8));
  return v1;
}

uint64_t KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.init(acsSignature:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  *a3 = result;
  a3[1] = a2;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x616E676953736361 && a2 == 0xEC00000065727574)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoV10CodingKeys33_3A8997C23693286548A17787F537EE24LLOGMd, &_ss22KeyedEncodingContainerVy15SecureMessaging15KDSRegistrationO12EncryptedRCSO23PhoneAuthenticationInfoV10CodingKeys33_3A8997C23693286548A17787F537EE24LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v10 - v5;
  v7 = *v1;
  v8 = v1[1];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  outlined copy of Data._Representation(v7, v8);
  lazy protocol witness table accessor for type KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys and conformance KDSRegistration.EncryptedRCS.PhoneAuthenticationInfo.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = v7;
  v11 = v8;
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data._Representation(v10, v11);
  return (*(v4 + 8))(v6, v3);
}