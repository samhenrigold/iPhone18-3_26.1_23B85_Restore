uint64_t protocol witness for CodingKey.init(stringValue:) in conformance DocumentRegistrationEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x737574617473 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 7107189 && a2 == 0xE300000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DocumentRegistrationEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DocumentRegistrationEnvelope.CodingKeys and conformance DocumentRegistrationEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DocumentRegistrationEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DocumentRegistrationEnvelope.CodingKeys and conformance DocumentRegistrationEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DocumentRegistrationEnvelope.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration28DocumentRegistrationEnvelopeV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration28DocumentRegistrationEnvelopeV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DocumentRegistrationEnvelope.CodingKeys and conformance DocumentRegistrationEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for DocumentRegistrationStatusEnvelope(0);
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type DocumentRegistrationStatusEnvelope and conformance DocumentRegistrationStatusEnvelope, type metadata accessor for DocumentRegistrationStatusEnvelope, &protocol conformance descriptor for DocumentRegistrationStatusEnvelope);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for DocumentRegistrationEnvelope(0);
    v8[14] = 1;
    type metadata accessor for URL();
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t DocumentRegistrationEnvelope.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v24 = type metadata accessor for URL();
  v21 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = type metadata accessor for DocumentRegistrationStatusEnvelope(0);
  MEMORY[0x1EEE9AC00](v25);
  v26 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration28DocumentRegistrationEnvelopeV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration28DocumentRegistrationEnvelopeV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v23 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v8 = &v20 - v7;
  v9 = type metadata accessor for DocumentRegistrationEnvelope(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DocumentRegistrationEnvelope.CodingKeys and conformance DocumentRegistrationEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v20 = a1;
  v12 = v11;
  v13 = v23;
  v14 = v24;
  v29 = 0;
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type DocumentRegistrationStatusEnvelope and conformance DocumentRegistrationStatusEnvelope, type metadata accessor for DocumentRegistrationStatusEnvelope, &protocol conformance descriptor for DocumentRegistrationStatusEnvelope);
  v15 = v26;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  outlined init with take of DocumentRegistrationEnvelope(v15, v12, type metadata accessor for DocumentRegistrationStatusEnvelope);
  v28 = 1;
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  v16 = v5;
  v17 = v14;
  v18 = v27;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v13 + 8))(v8, v18);
  (*(v21 + 32))(v12 + *(v9 + 20), v16, v17);
  outlined init with copy of DocumentResourceEnvelope(v12, v22, type metadata accessor for DocumentRegistrationEnvelope);
  __swift_destroy_boxed_opaque_existential_0(v20);
  return outlined destroy of DocumentResourceEnvelope(v12, type metadata accessor for DocumentRegistrationEnvelope);
}

uint64_t DocumentRegistrationStatusEnvelope.encode(to:)(void *a1)
{
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration34DocumentRegistrationStatusEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO15ErrorCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration34DocumentRegistrationStatusEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO15ErrorCodingKeysOGMR);
  v33 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v29 = &v27 - v2;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration34DocumentRegistrationStatusEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO18FinishedCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration34DocumentRegistrationStatusEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO18FinishedCodingKeysOGMR);
  v34 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v30 = &v27 - v3;
  v4 = type metadata accessor for DocumentResourceIdentifier();
  v31 = *(v4 - 8);
  v32 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v28 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration34DocumentRegistrationStatusEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO21RegisteringCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration34DocumentRegistrationStatusEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO21RegisteringCodingKeysOGMR);
  v27 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v27 - v7;
  v9 = type metadata accessor for DocumentRegistrationStatusEnvelope(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration34DocumentRegistrationStatusEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration34DocumentRegistrationStatusEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMR);
  v38 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v27 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DocumentRegistrationStatusEnvelope.CodingKeys and conformance DocumentRegistrationStatusEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of DocumentResourceEnvelope(v37, v11, type metadata accessor for DocumentRegistrationStatusEnvelope);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v17 = v31;
      v16 = v32;
      v18 = v28;
      (*(v31 + 32))(v28, v11, v32);
      LOBYTE(v39) = 1;
      lazy protocol witness table accessor for type DocumentRegistrationStatusEnvelope.FinishedCodingKeys and conformance DocumentRegistrationStatusEnvelope.FinishedCodingKeys();
      v19 = v30;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type DocumentResourceIdentifier and conformance DocumentResourceIdentifier, MEMORY[0x1E69C6178], MEMORY[0x1E69C6180]);
      v20 = v36;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v34 + 8))(v19, v20);
      (*(v17 + 8))(v18, v16);
    }

    else
    {
      LOBYTE(v39) = 2;
      lazy protocol witness table accessor for type DocumentRegistrationStatusEnvelope.ErrorCodingKeys and conformance DocumentRegistrationStatusEnvelope.ErrorCodingKeys();
      v24 = v29;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v25 = v35;
      KeyedEncodingContainer.encode(_:forKey:)();

      (*(v33 + 8))(v24, v25);
    }
  }

  else
  {
    v21 = *v11;
    v22 = *(v11 + 1);
    v23 = *(v11 + 2);
    LOBYTE(v39) = 0;
    lazy protocol witness table accessor for type DocumentRegistrationStatusEnvelope.RegisteringCodingKeys and conformance DocumentRegistrationStatusEnvelope.RegisteringCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v39 = v21;
    v40 = v22;
    v41 = v23;
    lazy protocol witness table accessor for type ProgressEnvelope and conformance ProgressEnvelope();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v27 + 8))(v8, v6);
  }

  return (*(v38 + 8))(v14, v12);
}

uint64_t DocumentRegistrationStatusEnvelope.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v64 = a2;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration34DocumentRegistrationStatusEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO15ErrorCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration34DocumentRegistrationStatusEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO15ErrorCodingKeysOGMR);
  v59 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v63 = &v49 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration34DocumentRegistrationStatusEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO18FinishedCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration34DocumentRegistrationStatusEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO18FinishedCodingKeysOGMR);
  v57 = *(v4 - 8);
  v58 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v62 = &v49 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration34DocumentRegistrationStatusEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO21RegisteringCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration34DocumentRegistrationStatusEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO21RegisteringCodingKeysOGMR);
  v55 = *(v6 - 8);
  v56 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v60 = &v49 - v7;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration34DocumentRegistrationStatusEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration34DocumentRegistrationStatusEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMR);
  v65 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v9 = &v49 - v8;
  v10 = type metadata accessor for DocumentRegistrationStatusEnvelope(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v49 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v49 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v49 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v49 - v20;
  v22 = a1[3];
  v73 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v22);
  lazy protocol witness table accessor for type DocumentRegistrationStatusEnvelope.CodingKeys and conformance DocumentRegistrationStatusEnvelope.CodingKeys();
  v23 = v66;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v23)
  {
    v50 = v18;
    v51 = v12;
    v52 = v15;
    v24 = v60;
    v25 = v61;
    v27 = v62;
    v26 = v63;
    v66 = v21;
    v53 = v10;
    v28 = v64;
    v29 = KeyedDecodingContainer.allKeys.getter();
    v30 = (2 * *(v29 + 16)) | 1;
    v69 = v29;
    v70 = v29 + 32;
    v71 = 0;
    v72 = v30;
    v31 = specialized Collection<>.popFirst()();
    if (v31 != 3 && v71 == v72 >> 1)
    {
      if (v31)
      {
        if (v31 == 1)
        {
          LOBYTE(v67) = 1;
          lazy protocol witness table accessor for type DocumentRegistrationStatusEnvelope.FinishedCodingKeys and conformance DocumentRegistrationStatusEnvelope.FinishedCodingKeys();
          v32 = v27;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          v33 = v25;
          type metadata accessor for DocumentResourceIdentifier();
          lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type DocumentResourceIdentifier and conformance DocumentResourceIdentifier, MEMORY[0x1E69C6178], MEMORY[0x1E69C6198]);
          v34 = v52;
          v35 = v58;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v36 = v65;
          (*(v57 + 8))(v32, v35);
          (*(v36 + 8))(v9, v33);
          swift_unknownObjectRelease();
          swift_storeEnumTagMultiPayload();
          v44 = v34;
LABEL_12:
          v48 = v66;
          outlined init with take of DocumentRegistrationEnvelope(v44, v66, type metadata accessor for DocumentRegistrationStatusEnvelope);
          outlined init with take of DocumentRegistrationEnvelope(v48, v28, type metadata accessor for DocumentRegistrationStatusEnvelope);
          return __swift_destroy_boxed_opaque_existential_0(v73);
        }

        LOBYTE(v67) = 2;
        lazy protocol witness table accessor for type DocumentRegistrationStatusEnvelope.ErrorCodingKeys and conformance DocumentRegistrationStatusEnvelope.ErrorCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v41 = v54;
        v45 = KeyedDecodingContainer.decode(_:forKey:)();
        v47 = v46;
        (*(v59 + 8))(v26, v41);
        (*(v65 + 8))(v9, v25);
        swift_unknownObjectRelease();
        v43 = v51;
        *v51 = v45;
        v43[1] = v47;
      }

      else
      {
        LOBYTE(v67) = 0;
        lazy protocol witness table accessor for type DocumentRegistrationStatusEnvelope.RegisteringCodingKeys and conformance DocumentRegistrationStatusEnvelope.RegisteringCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        lazy protocol witness table accessor for type ProgressEnvelope and conformance ProgressEnvelope();
        v42 = v56;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v55 + 8))(v24, v42);
        (*(v65 + 8))(v9, v25);
        swift_unknownObjectRelease();
        v43 = v50;
        *v50 = v67;
        *(v43 + 1) = v68;
      }

      swift_storeEnumTagMultiPayload();
      v44 = v43;
      goto LABEL_12;
    }

    v37 = type metadata accessor for DecodingError();
    swift_allocError();
    v39 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v39 = v53;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
    swift_willThrow();
    (*(v65 + 8))(v9, v25);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v73);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance DocumentRegistrationStatusEnvelope.CodingKeys()
{
  v1 = 0x64656873696E6966;
  if (*v0 != 1)
  {
    v1 = 0x726F727265;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7265747369676572;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance DocumentRegistrationStatusEnvelope.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized DocumentRegistrationStatusEnvelope.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DocumentRegistrationStatusEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DocumentRegistrationStatusEnvelope.CodingKeys and conformance DocumentRegistrationStatusEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DocumentRegistrationStatusEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DocumentRegistrationStatusEnvelope.CodingKeys and conformance DocumentRegistrationStatusEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DocumentRegistrationStatusEnvelope.ErrorCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DocumentRegistrationStatusEnvelope.ErrorCodingKeys and conformance DocumentRegistrationStatusEnvelope.ErrorCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DocumentRegistrationStatusEnvelope.ErrorCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DocumentRegistrationStatusEnvelope.ErrorCodingKeys and conformance DocumentRegistrationStatusEnvelope.ErrorCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DocumentRegistrationStatusEnvelope.FinishedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DocumentRegistrationStatusEnvelope.FinishedCodingKeys and conformance DocumentRegistrationStatusEnvelope.FinishedCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DocumentRegistrationStatusEnvelope.FinishedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DocumentRegistrationStatusEnvelope.FinishedCodingKeys and conformance DocumentRegistrationStatusEnvelope.FinishedCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DocumentRegistrationStatusEnvelope.RegisteringCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DocumentRegistrationStatusEnvelope.RegisteringCodingKeys and conformance DocumentRegistrationStatusEnvelope.RegisteringCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DocumentRegistrationStatusEnvelope.RegisteringCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DocumentRegistrationStatusEnvelope.RegisteringCodingKeys and conformance DocumentRegistrationStatusEnvelope.RegisteringCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ProgressEnvelope.encode(to:)(void *a1, uint64_t a2, uint64_t a3, float a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration16ProgressEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration16ProgressEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11[-v8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ProgressEnvelope.CodingKeys and conformance ProgressEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v11[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ProgressEnvelope.CodingKeys()
{
  v1 = 0x7365747962;
  if (*v0 != 1)
  {
    v1 = 0x7479426C61746F74;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73736572676F7270;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ProgressEnvelope.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized ProgressEnvelope.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ProgressEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ProgressEnvelope.CodingKeys and conformance ProgressEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ProgressEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ProgressEnvelope.CodingKeys and conformance ProgressEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance ProgressEnvelope@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = specialized ProgressEnvelope.init(from:)(a2);
  if (!v2)
  {
    *a1 = v6;
    *(a1 + 8) = result;
    *(a1 + 16) = v5;
  }

  return result;
}

unint64_t SamplingParametersEnvelope.CodingKeys.stringValue.getter(char a1)
{
  result = 0x7967657461727473;
  switch(a1)
  {
    case 1:
      result = 0x74617265706D6574;
      break;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0x65506874676E656CLL;
      break;
    case 4:
      result = 0x546D756D6978616DLL;
      break;
    case 5:
      result = 0x75716553706F7473;
      break;
    case 6:
      result = 0x65536D6F646E6172;
      break;
    case 7:
      result = 0x74756F656D6974;
      break;
    case 8:
      result = 0xD000000000000016;
      break;
    case 9:
      result = 0x6165486E656B6F74;
      break;
    case 10:
      result = 0xD00000000000001FLL;
      break;
    case 11:
      result = 0xD000000000000013;
      break;
    case 12:
      result = 0xD000000000000014;
      break;
    case 13:
      result = 0xD000000000000015;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SamplingParametersEnvelope.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized SamplingParametersEnvelope.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SamplingParametersEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SamplingParametersEnvelope.CodingKeys and conformance SamplingParametersEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SamplingParametersEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SamplingParametersEnvelope.CodingKeys and conformance SamplingParametersEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SamplingParametersEnvelope.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration26SamplingParametersEnvelopeV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration26SamplingParametersEnvelopeV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v17 - v6;
  v8 = *v2;
  v9 = *(v2 + 8);
  v10 = v2[2];
  v39 = *(v2 + 24);
  v33 = v2[4];
  v34 = v10;
  v32 = *(v2 + 40);
  v31 = v2[6];
  LODWORD(v10) = *(v2 + 56);
  v11 = v2[8];
  v29 = *(v2 + 72);
  v30 = v10;
  v12 = v2[11];
  v27 = v2[10];
  v28 = v11;
  v25 = v12;
  v26 = *(v2 + 96);
  v23 = v2[13];
  v24 = *(v2 + 112);
  v21 = v2[15];
  v22 = *(v2 + 128);
  v20 = *(v2 + 129);
  v19 = *(v2 + 130);
  v18 = *(v2 + 131);
  v13 = v2[18];
  v17[0] = v2[17];
  v17[1] = v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SamplingParametersEnvelope.CodingKeys and conformance SamplingParametersEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  *&v36 = v8;
  BYTE8(v36) = v9;
  v40 = 0;
  lazy protocol witness table accessor for type SamplingStrategyEnvelope and conformance SamplingStrategyEnvelope();
  v14 = v35;
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (v14)
  {
    return (*(v5 + 8))(v7, v4);
  }

  v35 = v5;
  LOBYTE(v36) = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v36) = 2;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v36) = 3;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v36) = 4;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  *&v36 = v27;
  v40 = 5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd, &_sShySSGMR);
  lazy protocol witness table accessor for type Set<String> and conformance <> Set<A>();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  LOBYTE(v36) = 6;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v36) = 7;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v36) = 8;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v36) = 9;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v36) = 10;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v36) = 11;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  LOBYTE(v36) = 12;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v16 = *(v2 + 21);
  v36 = *(v2 + 19);
  v37 = v16;
  v38[0] = *(v2 + 23);
  *(v38 + 10) = *(v2 + 194);
  v40 = 13;
  lazy protocol witness table accessor for type SpeculationParameters and conformance SpeculationParameters();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  return (*(v35 + 8))(v7, v4);
}

uint64_t SamplingParametersEnvelope.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration26SamplingParametersEnvelopeV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration26SamplingParametersEnvelopeV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v5 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v7 = &v29 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SamplingParametersEnvelope.CodingKeys and conformance SamplingParametersEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v8 = v5;
  LOBYTE(v48) = 0;
  lazy protocol witness table accessor for type SamplingStrategyEnvelope and conformance SamplingStrategyEnvelope();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  v9 = v58;
  v10 = v59;
  LOBYTE(v58) = 1;
  v47 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v109 = v11 & 1;
  LOBYTE(v58) = 2;
  v46 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v107 = v12 & 1;
  LOBYTE(v58) = 3;
  v45 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v105 = v13 & 1;
  LOBYTE(v58) = 4;
  v44 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v103 = v14 & 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sShySSGMd, &_sShySSGMR);
  LOBYTE(v48) = 5;
  lazy protocol witness table accessor for type Set<String> and conformance <> Set<A>();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v43 = v58;
  LOBYTE(v58) = 6;
  v42 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v101 = v15 & 1;
  LOBYTE(v58) = 7;
  v41 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v99 = v16 & 1;
  LOBYTE(v58) = 8;
  v40 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v97 = v17 & 1;
  LOBYTE(v58) = 9;
  v39 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v58) = 10;
  v38 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v58) = 11;
  v37 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  LOBYTE(v58) = 12;
  v35 = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v36 = v18;
  v90 = 13;
  lazy protocol witness table accessor for type SpeculationParameters and conformance SpeculationParameters();
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v8 + 8))(v7, v111);
  v94 = v91;
  v95 = v92;
  v96[0] = v93[0];
  *(v96 + 10) = *(v93 + 10);
  *&v48 = v9;
  LOBYTE(v8) = v10;
  BYTE8(v48) = v10;
  v19 = v47;
  *&v49 = v47;
  v20 = v109;
  BYTE8(v49) = v109;
  *&v50 = v46;
  v30 = v107;
  BYTE8(v50) = v107;
  *&v51 = v45;
  v31 = v105;
  BYTE8(v51) = v105;
  *&v52 = v44;
  v32 = v103;
  BYTE8(v52) = v103;
  *&v53 = v43;
  *(&v53 + 1) = v42;
  v33 = v101;
  LOBYTE(v54) = v101;
  *(&v54 + 1) = v41;
  v34 = v99;
  LOBYTE(v55) = v99;
  *(&v55 + 1) = v40;
  LODWORD(v111) = v97;
  LOBYTE(v56) = v97;
  BYTE1(v56) = v39;
  BYTE2(v56) = v38;
  BYTE3(v56) = v37;
  *(&v56 + 1) = v35;
  *v57 = v36;
  *&v57[50] = *(v93 + 10);
  *&v57[40] = v93[0];
  *&v57[24] = v92;
  *&v57[8] = v91;
  v21 = v49;
  *a2 = v48;
  *(a2 + 16) = v21;
  v22 = v53;
  *(a2 + 64) = v52;
  *(a2 + 80) = v22;
  v23 = v51;
  *(a2 + 32) = v50;
  *(a2 + 48) = v23;
  *(a2 + 208) = *&v57[64];
  v24 = *&v57[48];
  *(a2 + 176) = *&v57[32];
  *(a2 + 192) = v24;
  v25 = *&v57[16];
  *(a2 + 144) = *v57;
  *(a2 + 160) = v25;
  v26 = v54;
  v27 = v56;
  *(a2 + 112) = v55;
  *(a2 + 128) = v27;
  *(a2 + 96) = v26;
  outlined init with copy of SamplingParametersEnvelope(&v48, &v58);
  __swift_destroy_boxed_opaque_existential_0(a1);
  *&v89[10] = *(v96 + 10);
  *v89 = v96[0];
  v88 = v95;
  v58 = v9;
  v59 = v8;
  *v60 = v110[0];
  *&v60[3] = *(v110 + 3);
  v61 = v19;
  v62 = v20;
  *v63 = *v108;
  *&v63[3] = *&v108[3];
  v64 = v46;
  v65 = v30;
  *v66 = *v106;
  *&v66[3] = *&v106[3];
  v67 = v45;
  v68 = v31;
  *v69 = *v104;
  *&v69[3] = *&v104[3];
  v70 = v44;
  v71 = v32;
  *v72 = *v102;
  *&v72[3] = *&v102[3];
  v73 = v43;
  v74 = v42;
  v75 = v33;
  *&v76[3] = *&v100[3];
  *v76 = *v100;
  v77 = v41;
  v78 = v34;
  *&v79[3] = *&v98[3];
  *v79 = *v98;
  v80 = v40;
  v81 = v111;
  v82 = v39;
  v83 = v38;
  v84 = v37;
  v85 = v35;
  v86 = v36;
  v87 = v94;
  return outlined destroy of SamplingParametersEnvelope(&v58);
}

uint64_t SamplingStrategyEnvelope.encode(to:)(void *a1, uint64_t a2, int a3)
{
  v27 = a3;
  v26 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration24SamplingStrategyEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO14TopKCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration24SamplingStrategyEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO14TopKCodingKeysOGMR);
  v24 = *(v4 - 8);
  v25 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v20 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration24SamplingStrategyEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO07NucleusF10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration24SamplingStrategyEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO07NucleusF10CodingKeysOGMR);
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration24SamplingStrategyEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO16ArgmaxCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration24SamplingStrategyEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO16ArgmaxCodingKeysOGMR);
  v20 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration24SamplingStrategyEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration24SamplingStrategyEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMR);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v20 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SamplingStrategyEnvelope.CodingKeys and conformance SamplingStrategyEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (!v27)
  {
    v29 = 1;
    lazy protocol witness table accessor for type SamplingStrategyEnvelope.NucleusSamplingCodingKeys and conformance SamplingStrategyEnvelope.NucleusSamplingCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v18 = v22;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v21 + 8))(v8, v18);
    return (*(v13 + 8))(v15, v12);
  }

  if (v27 == 1)
  {
    v30 = 2;
    lazy protocol witness table accessor for type SamplingStrategyEnvelope.TopKCodingKeys and conformance SamplingStrategyEnvelope.TopKCodingKeys();
    v16 = v23;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v17 = v25;
    KeyedEncodingContainer.encode(_:forKey:)();
    (*(v24 + 8))(v16, v17);
    return (*(v13 + 8))(v15, v12);
  }

  v28 = 0;
  lazy protocol witness table accessor for type SamplingStrategyEnvelope.ArgmaxCodingKeys and conformance SamplingStrategyEnvelope.ArgmaxCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v20 + 8))(v11, v9);
  return (*(v13 + 8))(v15, v12);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SamplingStrategyEnvelope.ArgmaxCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SamplingStrategyEnvelope.ArgmaxCodingKeys and conformance SamplingStrategyEnvelope.ArgmaxCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SamplingStrategyEnvelope.ArgmaxCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SamplingStrategyEnvelope.ArgmaxCodingKeys and conformance SamplingStrategyEnvelope.ArgmaxCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance SamplingStrategyEnvelope.CodingKeys()
{
  v1 = 0x537375656C63756ELL;
  if (*v0 != 1)
  {
    v1 = 1265659764;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x78616D677261;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SamplingStrategyEnvelope.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized SamplingStrategyEnvelope.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SamplingStrategyEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SamplingStrategyEnvelope.CodingKeys and conformance SamplingStrategyEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SamplingStrategyEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SamplingStrategyEnvelope.CodingKeys and conformance SamplingStrategyEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SamplingStrategyEnvelope.NucleusSamplingCodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6C6F687365726874 && a2 == 0xE900000000000064)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SamplingStrategyEnvelope.NucleusSamplingCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SamplingStrategyEnvelope.NucleusSamplingCodingKeys and conformance SamplingStrategyEnvelope.NucleusSamplingCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SamplingStrategyEnvelope.NucleusSamplingCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SamplingStrategyEnvelope.NucleusSamplingCodingKeys and conformance SamplingStrategyEnvelope.NucleusSamplingCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SamplingStrategyEnvelope.TopKCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SamplingStrategyEnvelope.TopKCodingKeys and conformance SamplingStrategyEnvelope.TopKCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SamplingStrategyEnvelope.TopKCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SamplingStrategyEnvelope.TopKCodingKeys and conformance SamplingStrategyEnvelope.TopKCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance SamplingStrategyEnvelope@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = specialized SamplingStrategyEnvelope.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
  }

  return result;
}

uint64_t SchemaEnvelope.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = type metadata accessor for GenerationSchema();
  v16 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14SchemaEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14SchemaEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v17 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for SchemaEnvelope(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SchemaEnvelope.CodingKeys and conformance SchemaEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type GenerationSchema and conformance GenerationSchema, MEMORY[0x1E69A0B98], MEMORY[0x1E69A0BB0]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    outlined init with take of DocumentRegistrationEnvelope(v11, v13, type metadata accessor for SchemaEnvelope);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance SchemaEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x616D65686373 && a2 == 0xE600000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance SchemaEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SchemaEnvelope.CodingKeys and conformance SchemaEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance SchemaEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type SchemaEnvelope.CodingKeys and conformance SchemaEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance SchemaEnvelope(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14SchemaEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14SchemaEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type SchemaEnvelope.CodingKeys and conformance SchemaEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for GenerationSchema();
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type GenerationSchema and conformance GenerationSchema, MEMORY[0x1E69A0B98], MEMORY[0x1E69A0BA0]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t ToolDescriptionEnvelope.ToolTypeEnvelope.init(sealing:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for Schema();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for FunctionDescription(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v22 - v12;
  v14 = type metadata accessor for ToolType(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v22 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DocumentResourceEnvelope(a1, v16, type metadata accessor for ToolType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      outlined destroy of DocumentResourceEnvelope(a1, type metadata accessor for ToolType);
      v18 = type metadata accessor for FileGenerationParameters();
    }

    else
    {
      outlined destroy of DocumentResourceEnvelope(a1, type metadata accessor for ToolType);
      v18 = type metadata accessor for ImageGenerationParameters();
    }

    (*(*(v18 - 8) + 32))(a2, v16, v18);
    type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope(0);
  }

  else
  {
    if (EnumCaseMultiPayload == 2)
    {
      outlined init with take of DocumentRegistrationEnvelope(v16, v13, type metadata accessor for FunctionDescription);
      outlined init with copy of DocumentResourceEnvelope(v13, v10, type metadata accessor for FunctionDescription);
      v19 = *(v10 + 1);
      *a2 = *v10;
      a2[1] = v19;
      v20 = *(v10 + 3);
      a2[2] = *(v10 + 2);
      a2[3] = v20;
      (*(v5 + 16))(v7, &v10[*(v8 + 24)], v4);
      type metadata accessor for ToolDescriptionEnvelope.FunctionDescriptionEnvelope(0);

      Schema.type.getter();
      outlined destroy of DocumentResourceEnvelope(a1, type metadata accessor for ToolType);
      (*(v5 + 8))(v7, v4);
      outlined destroy of DocumentResourceEnvelope(v10, type metadata accessor for FunctionDescription);
      outlined destroy of DocumentResourceEnvelope(v13, type metadata accessor for FunctionDescription);
    }

    else
    {
      outlined destroy of DocumentResourceEnvelope(a1, type metadata accessor for ToolType);
    }

    type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope(0);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t ToolDescriptionEnvelope.ToolTypeEnvelope.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV0f4TypeH033_FCE651B3B8F212418F5C81F0A4785E63LLO18FunctionCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV0f4TypeH033_FCE651B3B8F212418F5C81F0A4785E63LLO18FunctionCodingKeysOGMR);
  v56 = *(v2 - 8);
  v57 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v55 = &v47 - v3;
  v53 = type metadata accessor for ToolDescriptionEnvelope.FunctionDescriptionEnvelope(0);
  MEMORY[0x1EEE9AC00](v53);
  v54 = &v47 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v66 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV0f4TypeH033_FCE651B3B8F212418F5C81F0A4785E63LLO04FileeF10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV0f4TypeH033_FCE651B3B8F212418F5C81F0A4785E63LLO04FileeF10CodingKeysOGMR);
  v52 = *(v66 - 8);
  MEMORY[0x1EEE9AC00](v66);
  v65 = &v47 - v5;
  v6 = type metadata accessor for FileGenerationParameters();
  v63 = *(v6 - 8);
  v64 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v62 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV0f4TypeH033_FCE651B3B8F212418F5C81F0A4785E63LLO05ImageeF10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV0f4TypeH033_FCE651B3B8F212418F5C81F0A4785E63LLO05ImageeF10CodingKeysOGMR);
  v51 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v60 = &v47 - v8;
  v9 = type metadata accessor for ImageGenerationParameters();
  v58 = *(v9 - 8);
  v59 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV0f4TypeH033_FCE651B3B8F212418F5C81F0A4785E63LLO24ImageGeneratorCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV0f4TypeH033_FCE651B3B8F212418F5C81F0A4785E63LLO24ImageGeneratorCodingKeysOGMR);
  v49 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v13 = &v47 - v12;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV0f4TypeH033_FCE651B3B8F212418F5C81F0A4785E63LLO18BrowswerCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV0f4TypeH033_FCE651B3B8F212418F5C81F0A4785E63LLO18BrowswerCodingKeysOGMR);
  v47 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v15 = &v47 - v14;
  v16 = type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v47 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV0f4TypeH033_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV0f4TypeH033_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMR);
  v69 = *(v19 - 8);
  v70 = v19;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v47 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ToolDescriptionEnvelope.ToolTypeEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.CodingKeys();
  v68 = v21;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of DocumentResourceEnvelope(v67, v18, type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v25 = v11;
    v27 = v59;
    v26 = v60;
    v29 = v61;
    v28 = v62;
    v30 = v65;
    v31 = v63;
    v32 = v66;
    if (EnumCaseMultiPayload)
    {
      v43 = v18;
      v44 = v64;
      (*(v63 + 32))(v62, v43, v64);
      v75 = 3;
      lazy protocol witness table accessor for type ToolDescriptionEnvelope.ToolTypeEnvelope.FileGenerationToolCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.FileGenerationToolCodingKeys();
      v35 = v70;
      v45 = v68;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type FileGenerationParameters and conformance FileGenerationParameters, MEMORY[0x1E69A0CF8], MEMORY[0x1E69A0D00]);
      v46 = v71;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (!v46)
      {
        (*(v52 + 8))(v30, v32);
        (*(v31 + 8))(v28, v44);
        return (*(v69 + 8))(v45, v35);
      }

      (*(v52 + 8))(v30, v32);
      (*(v31 + 8))(v28, v44);
      v36 = v45;
    }

    else
    {
      v33 = v58;
      v34 = v25;
      (*(v58 + 32))(v25, v18, v59);
      v74 = 2;
      lazy protocol witness table accessor for type ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGenerationToolCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGenerationToolCodingKeys();
      v35 = v70;
      v36 = v68;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type ImageGenerationParameters and conformance ImageGenerationParameters, MEMORY[0x1E69A0D90], MEMORY[0x1E69A0D98]);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v51 + 8))(v26, v29);
      (*(v33 + 8))(v34, v27);
    }

    return (*(v69 + 8))(v36, v35);
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v37 = v54;
    outlined init with take of DocumentRegistrationEnvelope(v18, v54, type metadata accessor for ToolDescriptionEnvelope.FunctionDescriptionEnvelope);
    v76 = 4;
    lazy protocol witness table accessor for type ToolDescriptionEnvelope.ToolTypeEnvelope.FunctionCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.FunctionCodingKeys();
    v38 = v55;
    v39 = v70;
    v40 = v68;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type ToolDescriptionEnvelope.FunctionDescriptionEnvelope and conformance ToolDescriptionEnvelope.FunctionDescriptionEnvelope, type metadata accessor for ToolDescriptionEnvelope.FunctionDescriptionEnvelope, &protocol conformance descriptor for ToolDescriptionEnvelope.FunctionDescriptionEnvelope);
    v41 = v57;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v56 + 8))(v38, v41);
    outlined destroy of DocumentResourceEnvelope(v37, type metadata accessor for ToolDescriptionEnvelope.FunctionDescriptionEnvelope);
    return (*(v69 + 8))(v40, v39);
  }

  else
  {
    if (EnumCaseMultiPayload == 3)
    {
      v72 = 0;
      lazy protocol witness table accessor for type ToolDescriptionEnvelope.ToolTypeEnvelope.BrowswerCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.BrowswerCodingKeys();
      v23 = v70;
      v24 = v68;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v47 + 8))(v15, v48);
    }

    else
    {
      v73 = 1;
      lazy protocol witness table accessor for type ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGeneratorCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGeneratorCodingKeys();
      v23 = v70;
      v24 = v68;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v49 + 8))(v13, v50);
    }

    return (*(v69 + 8))(v24, v23);
  }
}

uint64_t ToolDescriptionEnvelope.ToolTypeEnvelope.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV0f4TypeH033_FCE651B3B8F212418F5C81F0A4785E63LLO18FunctionCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV0f4TypeH033_FCE651B3B8F212418F5C81F0A4785E63LLO18FunctionCodingKeysOGMR);
  v64 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v72 = &v50 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV0f4TypeH033_FCE651B3B8F212418F5C81F0A4785E63LLO04FileeF10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV0f4TypeH033_FCE651B3B8F212418F5C81F0A4785E63LLO04FileeF10CodingKeysOGMR);
  v62 = *(v4 - 8);
  v63 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v65 = &v50 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV0f4TypeH033_FCE651B3B8F212418F5C81F0A4785E63LLO05ImageeF10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV0f4TypeH033_FCE651B3B8F212418F5C81F0A4785E63LLO05ImageeF10CodingKeysOGMR);
  v59 = *(v6 - 8);
  v60 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v71 = &v50 - v7;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV0f4TypeH033_FCE651B3B8F212418F5C81F0A4785E63LLO24ImageGeneratorCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV0f4TypeH033_FCE651B3B8F212418F5C81F0A4785E63LLO24ImageGeneratorCodingKeysOGMR);
  v58 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v70 = &v50 - v8;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV0f4TypeH033_FCE651B3B8F212418F5C81F0A4785E63LLO18BrowswerCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV0f4TypeH033_FCE651B3B8F212418F5C81F0A4785E63LLO18BrowswerCodingKeysOGMR);
  v55 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v68 = &v50 - v9;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV0f4TypeH033_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV0f4TypeH033_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMR);
  v67 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v11 = &v50 - v10;
  v12 = type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v50 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v50 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v50 - v19;
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v50 - v22;
  v24 = a1[3];
  v73 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  lazy protocol witness table accessor for type ToolDescriptionEnvelope.ToolTypeEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.CodingKeys();
  v25 = v74;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v25)
  {
    goto LABEL_10;
  }

  v26 = v68;
  v51 = v20;
  v52 = v17;
  v53 = v14;
  v28 = v70;
  v27 = v71;
  v29 = v72;
  v54 = v12;
  v74 = v23;
  v30 = v69;
  v31 = KeyedDecodingContainer.allKeys.getter();
  v32 = (2 * *(v31 + 16)) | 1;
  v75 = v31;
  v76 = v31 + 32;
  v77 = 0;
  v78 = v32;
  v33 = specialized Collection<>.popFirst()();
  if (v33 == 5 || v77 != v78 >> 1)
  {
    v37 = type metadata accessor for DecodingError();
    swift_allocError();
    v39 = v38;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v39 = v54;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v37 - 8) + 104))(v39, *MEMORY[0x1E69E6AF8], v37);
    swift_willThrow();
    (*(v67 + 8))(v11, v30);
    swift_unknownObjectRelease();
LABEL_10:
    v40 = v73;
    return __swift_destroy_boxed_opaque_existential_0(v40);
  }

  if (v33 <= 1u)
  {
    if (v33)
    {
      v79 = 1;
      lazy protocol witness table accessor for type ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGeneratorCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGeneratorCodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v43 = v66;
      v42 = v67;
      (*(v58 + 8))(v28, v57);
    }

    else
    {
      v79 = 0;
      lazy protocol witness table accessor for type ToolDescriptionEnvelope.ToolTypeEnvelope.BrowswerCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.BrowswerCodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v43 = v66;
      v42 = v67;
      (*(v55 + 8))(v26, v56);
    }

    (*(v42 + 8))(v11, v30);
    swift_unknownObjectRelease();
    v44 = v74;
    swift_storeEnumTagMultiPayload();
    v49 = v73;
  }

  else
  {
    if (v33 == 2)
    {
      v79 = 2;
      lazy protocol witness table accessor for type ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGenerationToolCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGenerationToolCodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      type metadata accessor for ImageGenerationParameters();
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type ImageGenerationParameters and conformance ImageGenerationParameters, MEMORY[0x1E69A0D90], MEMORY[0x1E69A0DA8]);
      v35 = v51;
      v45 = v60;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v46 = v67;
      (*(v59 + 8))(v27, v45);
      (*(v46 + 8))(v11, v30);
      swift_unknownObjectRelease();
    }

    else
    {
      if (v33 == 3)
      {
        v79 = 3;
        lazy protocol witness table accessor for type ToolDescriptionEnvelope.ToolTypeEnvelope.FileGenerationToolCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.FileGenerationToolCodingKeys();
        v34 = v65;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        type metadata accessor for FileGenerationParameters();
        lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type FileGenerationParameters and conformance FileGenerationParameters, MEMORY[0x1E69A0CF8], MEMORY[0x1E69A0D10]);
        v35 = v52;
        v36 = v63;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v62 + 8))(v34, v36);
        (*(v67 + 8))(v11, v30);
      }

      else
      {
        v79 = 4;
        lazy protocol witness table accessor for type ToolDescriptionEnvelope.ToolTypeEnvelope.FunctionCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.FunctionCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        type metadata accessor for ToolDescriptionEnvelope.FunctionDescriptionEnvelope(0);
        lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type ToolDescriptionEnvelope.FunctionDescriptionEnvelope and conformance ToolDescriptionEnvelope.FunctionDescriptionEnvelope, type metadata accessor for ToolDescriptionEnvelope.FunctionDescriptionEnvelope, &protocol conformance descriptor for ToolDescriptionEnvelope.FunctionDescriptionEnvelope);
        v35 = v53;
        v47 = v61;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        v48 = v67;
        (*(v64 + 8))(v29, v47);
        (*(v48 + 8))(v11, v30);
      }

      swift_unknownObjectRelease();
    }

    swift_storeEnumTagMultiPayload();
    v44 = v74;
    outlined init with take of DocumentRegistrationEnvelope(v35, v74, type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope);
    v49 = v73;
    v43 = v66;
  }

  outlined init with take of DocumentRegistrationEnvelope(v44, v43, type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope);
  v40 = v49;
  return __swift_destroy_boxed_opaque_existential_0(v40);
}

uint64_t ToolDescriptionEnvelope.FunctionDescriptionEnvelope.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV08FunctiongH033_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV08FunctiongH033_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ToolDescriptionEnvelope.FunctionDescriptionEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.FunctionDescriptionEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    type metadata accessor for ToolDescriptionEnvelope.FunctionDescriptionEnvelope(0);
    v8[13] = 2;
    type metadata accessor for SchemaEnvelope(0);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type SchemaEnvelope and conformance SchemaEnvelope, type metadata accessor for SchemaEnvelope, &protocol conformance descriptor for SchemaEnvelope);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ToolDescriptionEnvelope.FunctionDescriptionEnvelope.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v23 = type metadata accessor for SchemaEnvelope(0);
  MEMORY[0x1EEE9AC00](v23);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV08FunctiongH033_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV08FunctiongH033_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = type metadata accessor for ToolDescriptionEnvelope.FunctionDescriptionEnvelope(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v20 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ToolDescriptionEnvelope.FunctionDescriptionEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.FunctionDescriptionEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v3)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v21 = a1;
  v13 = v24;
  v14 = v25;
  v28 = 0;
  *v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v12[1] = v15;
  v27 = 1;
  v12[2] = KeyedDecodingContainer.decode(_:forKey:)();
  v12[3] = v16;
  v26 = 2;
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type SchemaEnvelope and conformance SchemaEnvelope, type metadata accessor for SchemaEnvelope, &protocol conformance descriptor for SchemaEnvelope);
  v20 = v12;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v13 + 8))(v9, v14);
  v17 = *(v10 + 24);
  v18 = v20;
  outlined init with take of DocumentRegistrationEnvelope(v6, v20 + v17, type metadata accessor for SchemaEnvelope);
  outlined init with copy of DocumentResourceEnvelope(v18, v22, type metadata accessor for ToolDescriptionEnvelope.FunctionDescriptionEnvelope);
  __swift_destroy_boxed_opaque_existential_0(v21);
  return outlined destroy of DocumentResourceEnvelope(v18, type metadata accessor for ToolDescriptionEnvelope.FunctionDescriptionEnvelope);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ToolDescriptionEnvelope.ToolTypeEnvelope.BrowswerCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDescriptionEnvelope.ToolTypeEnvelope.BrowswerCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.BrowswerCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ToolDescriptionEnvelope.ToolTypeEnvelope.BrowswerCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDescriptionEnvelope.ToolTypeEnvelope.BrowswerCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.BrowswerCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance ToolDescriptionEnvelope.ToolTypeEnvelope.CodingKeys()
{
  v1 = *v0;
  v2 = 0x72657773776F7262;
  v3 = 0xD000000000000013;
  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0x6E6F6974636E7566;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x6E65476567616D69;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ToolDescriptionEnvelope.ToolTypeEnvelope.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized ToolDescriptionEnvelope.ToolTypeEnvelope.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ToolDescriptionEnvelope.ToolTypeEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDescriptionEnvelope.ToolTypeEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ToolDescriptionEnvelope.ToolTypeEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDescriptionEnvelope.ToolTypeEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ToolDescriptionEnvelope.ToolTypeEnvelope.FileGenerationToolCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDescriptionEnvelope.ToolTypeEnvelope.FileGenerationToolCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.FileGenerationToolCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ToolDescriptionEnvelope.ToolTypeEnvelope.FileGenerationToolCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDescriptionEnvelope.ToolTypeEnvelope.FileGenerationToolCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.FileGenerationToolCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ToolDescriptionEnvelope.ToolTypeEnvelope.FunctionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDescriptionEnvelope.ToolTypeEnvelope.FunctionCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.FunctionCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ToolDescriptionEnvelope.ToolTypeEnvelope.FunctionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDescriptionEnvelope.ToolTypeEnvelope.FunctionCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.FunctionCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGenerationToolCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGenerationToolCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGenerationToolCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGenerationToolCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGenerationToolCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGenerationToolCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGeneratorCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGeneratorCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGeneratorCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGeneratorCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGeneratorCodingKeys and conformance ToolDescriptionEnvelope.ToolTypeEnvelope.ImageGeneratorCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance ToolDescriptionEnvelope.FunctionDescriptionEnvelope.CodingKeys()
{
  v1 = 0xD000000000000010;
  if (*v0 != 1)
  {
    v1 = 0x746E656D75677261;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ToolDescriptionEnvelope.FunctionDescriptionEnvelope.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized ToolDescriptionEnvelope.FunctionDescriptionEnvelope.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ToolDescriptionEnvelope.FunctionDescriptionEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDescriptionEnvelope.FunctionDescriptionEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.FunctionDescriptionEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ToolDescriptionEnvelope.FunctionDescriptionEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDescriptionEnvelope.FunctionDescriptionEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.FunctionDescriptionEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ToolDescriptionEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1701869940 && a2 == 0xE400000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ToolDescriptionEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDescriptionEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ToolDescriptionEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDescriptionEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ToolDescriptionEnvelope.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ToolDescriptionEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope(0);
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope and conformance ToolDescriptionEnvelope.ToolTypeEnvelope, type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope, &protocol conformance descriptor for ToolDescriptionEnvelope.ToolTypeEnvelope);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t ToolDescriptionEnvelope.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope(0);
  MEMORY[0x1EEE9AC00](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for ToolDescriptionEnvelope(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ToolDescriptionEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v12 = v15;
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope and conformance ToolDescriptionEnvelope.ToolTypeEnvelope, type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope, &protocol conformance descriptor for ToolDescriptionEnvelope.ToolTypeEnvelope);
    v13 = v17;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v16 + 8))(v8, v6);
    outlined init with take of DocumentRegistrationEnvelope(v13, v11, type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope);
    outlined init with take of DocumentRegistrationEnvelope(v11, v12, type metadata accessor for ToolDescriptionEnvelope);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance ToolDescriptionEnvelope(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDescriptionEnvelopeV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ToolDescriptionEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope(0);
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type ToolDescriptionEnvelope.ToolTypeEnvelope and conformance ToolDescriptionEnvelope.ToolTypeEnvelope, type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope, &protocol conformance descriptor for ToolDescriptionEnvelope.ToolTypeEnvelope);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t ToolCallEnvelope.KindEnvelope.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a4;
  v18 = a5;
  v15 = a2;
  v16 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration16ToolCallEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV04KindH0O18FunctionCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration16ToolCallEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV04KindH0O18FunctionCodingKeysOGMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration16ToolCallEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV04KindH0O10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration16ToolCallEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV04KindH0O10CodingKeysOGMR);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v15 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ToolCallEnvelope.KindEnvelope.CodingKeys and conformance ToolCallEnvelope.KindEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  lazy protocol witness table accessor for type ToolCallEnvelope.KindEnvelope.FunctionCodingKeys and conformance ToolCallEnvelope.KindEnvelope.FunctionCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v19 = v15;
  v20 = v16;
  v21 = v17;
  v22 = v18;
  lazy protocol witness table accessor for type ToolCallEnvelope.FunctionEnvelope and conformance ToolCallEnvelope.FunctionEnvelope();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v7 + 8))(v9, v6);
  return (*(v11 + 8))(v13, v10);
}

uint64_t PromptRenderingEnvelope.SourceEnvelope.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6, uint64_t *a7, uint64_t (*a8)(void), uint64_t a9)
{
  v20[2] = a3;
  v20[0] = a4;
  v20[1] = a5;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a6, a7);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v20 - v13;
  v15 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  (a8)(v15, v16, v17);
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v22 = 0;
  v18 = v20[3];
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v18)
  {
    v21 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v12 + 8))(v14, v11);
}

uint64_t ToolCallEnvelope.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration16ToolCallEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration16ToolCallEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ToolCallEnvelope.CodingKeys and conformance ToolCallEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12[0]) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    outlined init with take of Any((v3 + 16), v14);
    outlined init with take of Any(v14, v12);
    v11[0] = 1;
    lazy protocol witness table accessor for type ToolCallEnvelope.KindEnvelope and conformance ToolCallEnvelope.KindEnvelope();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v13 = *(v3 + 48);
    *v12 = *(v3 + 48);
    v11[23] = 2;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(&v13, v11, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v12[0], v12[1]);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ToolCallEnvelope.KindEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E6F6974636E7566 && a2 == 0xE800000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ToolCallEnvelope.KindEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolCallEnvelope.KindEnvelope.CodingKeys and conformance ToolCallEnvelope.KindEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ToolCallEnvelope.KindEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolCallEnvelope.KindEnvelope.CodingKeys and conformance ToolCallEnvelope.KindEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ToolCallEnvelope.KindEnvelope.FunctionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolCallEnvelope.KindEnvelope.FunctionCodingKeys and conformance ToolCallEnvelope.KindEnvelope.FunctionCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ToolCallEnvelope.KindEnvelope.FunctionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolCallEnvelope.KindEnvelope.FunctionCodingKeys and conformance ToolCallEnvelope.KindEnvelope.FunctionCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *protocol witness for Decodable.init(from:) in conformance ToolCallEnvelope.KindEnvelope@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = specialized ToolCallEnvelope.KindEnvelope.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ToolCallEnvelope.FunctionEnvelope.CodingKeys()
{
  if (*v0)
  {
    return 0x746E656D75677261;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ToolCallEnvelope.FunctionEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E656D75677261 && a2 == 0xE900000000000073)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ToolCallEnvelope.FunctionEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolCallEnvelope.FunctionEnvelope.CodingKeys and conformance ToolCallEnvelope.FunctionEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ToolCallEnvelope.FunctionEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolCallEnvelope.FunctionEnvelope.CodingKeys and conformance ToolCallEnvelope.FunctionEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ToolCallEnvelope.CodingKeys()
{
  v1 = 1684957547;
  if (*v0 != 1)
  {
    v1 = 0x6F666E4972657375;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ToolCallEnvelope.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized ToolCallEnvelope.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ToolCallEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolCallEnvelope.CodingKeys and conformance ToolCallEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ToolCallEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolCallEnvelope.CodingKeys and conformance ToolCallEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double protocol witness for Decodable.init(from:) in conformance ToolCallEnvelope@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  specialized ToolCallEnvelope.init(from:)(a2, v7);
  if (!v2)
  {
    v5 = v7[1];
    *a1 = v7[0];
    a1[1] = v5;
    result = *&v8;
    v6 = v9;
    a1[2] = v8;
    a1[3] = v6;
  }

  return result;
}

uint64_t ClassificationResponseEnvelope.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration30ClassificationResponseEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration30ClassificationResponseEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v16 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ClassificationResponseEnvelope.CodingKeys and conformance ClassificationResponseEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  *&v18 = *v3;
  LOBYTE(v16[0]) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSbGMd, &_sSDySSSbGMR);
  lazy protocol witness table accessor for type [String : Bool] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : Bool] and conformance <> [A : B], MEMORY[0x1E69E6160], MEMORY[0x1E69E6378], MEMORY[0x1E69E5E38]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v18 = *(v3 + 8);
    *&v19 = *(v3 + 24);
    LOBYTE(v16[0]) = 1;
    lazy protocol witness table accessor for type ModelInformationEnvelope and conformance ModelInformationEnvelope();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v18) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v9 = *(v3 + 88);
    v10 = *(v3 + 120);
    v25[4] = *(v3 + 104);
    v25[5] = v10;
    v26 = *(v3 + 136);
    v11 = *(v3 + 56);
    v25[0] = *(v3 + 40);
    v25[1] = v11;
    v25[2] = *(v3 + 72);
    v25[3] = v9;
    v12 = *(v3 + 88);
    v13 = *(v3 + 120);
    v22 = *(v3 + 104);
    v23 = v13;
    v24 = *(v3 + 136);
    v14 = *(v3 + 56);
    v18 = *(v3 + 40);
    v19 = v14;
    v20 = *(v3 + 72);
    v21 = v12;
    v27 = 3;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v25, v16, &_s15TokenGeneration23PromptRenderingEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVSgMd, &_s15TokenGeneration23PromptRenderingEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVSgMR);
    lazy protocol witness table accessor for type PromptRenderingEnvelope and conformance PromptRenderingEnvelope();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v16[4] = v22;
    v16[5] = v23;
    v17 = v24;
    v16[0] = v18;
    v16[1] = v19;
    v16[2] = v20;
    v16[3] = v21;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &_s15TokenGeneration23PromptRenderingEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVSgMd, &_s15TokenGeneration23PromptRenderingEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVSgMR);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ClassificationParametersEnvelope.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration32ClassificationParametersEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration32ClassificationParametersEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - v5;
  v7 = *v1;
  v8 = v1[1];
  v14 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ClassificationParametersEnvelope.CodingKeys and conformance ClassificationParametersEnvelope.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = v7;
  v13 = v8;
  v15 = 0;
  lazy protocol witness table accessor for type ClassificationParameters.ThresholdConfiguration and conformance ClassificationParameters.ThresholdConfiguration();
  v9 = v11[1];
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  if (!v9)
  {
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ClassificationParametersEnvelope.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration32ClassificationParametersEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration32ClassificationParametersEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ClassificationParametersEnvelope.CodingKeys and conformance ClassificationParametersEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v14 = 0;
  lazy protocol witness table accessor for type ClassificationParameters.ThresholdConfiguration and conformance ClassificationParameters.ThresholdConfiguration();
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v10 = v13[0];
  v9 = v13[1];
  LOBYTE(v13[0]) = 1;
  v11 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v6 + 8))(v8, v5);
  *a2 = v10;
  *(a2 + 8) = v9;
  *(a2 + 16) = v11 & 1;

  __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t OneShotRequest.CodingKeys.stringValue.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v4 = 0x6B6F54746E756F63;
    v5 = 0xD000000000000019;
    if (a1 != 2)
    {
      v5 = 0x6574656C706D6F63;
    }

    if (!a1)
    {
      v4 = 0xD000000000000012;
    }

    if (a1 <= 1u)
    {
      return v4;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v1 = 0x7966697373616C63;
    v2 = 0xD000000000000016;
    if (a1 != 7)
    {
      v2 = 0x41656C69706D6F63;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    if (a1 <= 5u)
    {
      return 0xD000000000000016;
    }

    else
    {
      return v1;
    }
  }
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance ClassificationResponseEnvelope.CodingKeys()
{
  v1 = 0x736C6562616CLL;
  v2 = 0xD00000000000001ELL;
  if (*v0 != 2)
  {
    v2 = 0x64657265646E6572;
  }

  if (*v0)
  {
    v1 = 0xD000000000000010;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ClassificationResponseEnvelope.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized ClassificationResponseEnvelope.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ClassificationResponseEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ClassificationResponseEnvelope.CodingKeys and conformance ClassificationResponseEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ClassificationResponseEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ClassificationResponseEnvelope.CodingKeys and conformance ClassificationResponseEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 protocol witness for Decodable.init(from:) in conformance ClassificationResponseEnvelope@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  specialized ClassificationResponseEnvelope.init(from:)(a2, v8);
  if (!v2)
  {
    v5 = v8[7];
    *(a1 + 96) = v8[6];
    *(a1 + 112) = v5;
    *(a1 + 128) = v8[8];
    v6 = v8[3];
    *(a1 + 32) = v8[2];
    *(a1 + 48) = v6;
    v7 = v8[5];
    *(a1 + 64) = v8[4];
    *(a1 + 80) = v7;
    result = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = result;
  }

  return result;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance ClassificationParametersEnvelope.CodingKeys()
{
  if (*v0)
  {
    return 0xD000000000000021;
  }

  else
  {
    return 0xD000000000000016;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ClassificationParametersEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000016 && 0x80000001ABA41B30 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000021 && 0x80000001ABA41B50 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ClassificationParametersEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ClassificationParametersEnvelope.CodingKeys and conformance ClassificationParametersEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ClassificationParametersEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ClassificationParametersEnvelope.CodingKeys and conformance ClassificationParametersEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RequestPayload.ClassifyPromptCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RequestPayload.ClassifyPromptCodingKeys and conformance RequestPayload.ClassifyPromptCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RequestPayload.ClassifyPromptCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RequestPayload.ClassifyPromptCodingKeys and conformance RequestPayload.ClassifyPromptCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RequestPayload.ClassifyPromptTemplateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RequestPayload.ClassifyPromptTemplateCodingKeys and conformance RequestPayload.ClassifyPromptTemplateCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RequestPayload.ClassifyPromptTemplateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RequestPayload.ClassifyPromptTemplateCodingKeys and conformance RequestPayload.ClassifyPromptTemplateCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RequestPayload.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RequestPayload.CodingKeys and conformance RequestPayload.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RequestPayload.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RequestPayload.CodingKeys and conformance RequestPayload.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RequestPayload.CompileAdapterCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RequestPayload.CompileAdapterCodingKeys and conformance RequestPayload.CompileAdapterCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RequestPayload.CompileAdapterCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RequestPayload.CompileAdapterCodingKeys and conformance RequestPayload.CompileAdapterCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RequestPayload.CompletePromptCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RequestPayload.CompletePromptCodingKeys and conformance RequestPayload.CompletePromptCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RequestPayload.CompletePromptCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RequestPayload.CompletePromptCodingKeys and conformance RequestPayload.CompletePromptCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RequestPayload.CompletePromptTemplateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RequestPayload.CompletePromptTemplateCodingKeys and conformance RequestPayload.CompletePromptTemplateCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RequestPayload.CompletePromptTemplateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RequestPayload.CompletePromptTemplateCodingKeys and conformance RequestPayload.CompletePromptTemplateCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RequestPayload.CountTokensCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RequestPayload.CountTokensCodingKeys and conformance RequestPayload.CountTokensCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RequestPayload.CountTokensCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RequestPayload.CountTokensCodingKeys and conformance RequestPayload.CountTokensCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RequestPayload.CountTokensPromptTemplateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RequestPayload.CountTokensPromptTemplateCodingKeys and conformance RequestPayload.CountTokensPromptTemplateCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RequestPayload.CountTokensPromptTemplateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RequestPayload.CountTokensPromptTemplateCodingKeys and conformance RequestPayload.CountTokensPromptTemplateCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RequestPayload.FetchModelMetadataCodingKeys(uint64_t a1)
{
  ModelMetadataCodingKeys = lazy protocol witness table accessor for type RequestPayload.FetchModelMetadataCodingKeys and conformance RequestPayload.FetchModelMetadataCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, ModelMetadataCodingKeys);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RequestPayload.FetchModelMetadataCodingKeys(uint64_t a1)
{
  ModelMetadataCodingKeys = lazy protocol witness table accessor for type RequestPayload.FetchModelMetadataCodingKeys and conformance RequestPayload.FetchModelMetadataCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, ModelMetadataCodingKeys);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RequestPayload.FetchTokenizerMetadataCodingKeys(uint64_t a1)
{
  TokenizerMetadataCodingKeys = lazy protocol witness table accessor for type RequestPayload.FetchTokenizerMetadataCodingKeys and conformance RequestPayload.FetchTokenizerMetadataCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, TokenizerMetadataCodingKeys);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RequestPayload.FetchTokenizerMetadataCodingKeys(uint64_t a1)
{
  TokenizerMetadataCodingKeys = lazy protocol witness table accessor for type RequestPayload.FetchTokenizerMetadataCodingKeys and conformance RequestPayload.FetchTokenizerMetadataCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, TokenizerMetadataCodingKeys);
}

uint64_t RequestPayload.encode(to:)(void *a1)
{
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14RequestPayloadO24CompileAdapterCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14RequestPayloadO24CompileAdapterCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v81 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v103 = &v75 - v2;
  v101 = type metadata accessor for CompileAdapterRequest(0);
  MEMORY[0x1EEE9AC00](v101);
  v102 = &v75 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14RequestPayloadO32ClassifyPromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14RequestPayloadO32ClassifyPromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v80 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v99 = &v75 - v4;
  v97 = type metadata accessor for ClassifyPromptTemplateRequest(0);
  MEMORY[0x1EEE9AC00](v97);
  v98 = &v75 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14RequestPayloadO24ClassifyPromptCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14RequestPayloadO24ClassifyPromptCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v79 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v95 = &v75 - v6;
  v93 = type metadata accessor for ClassifyPromptRequest(0);
  MEMORY[0x1EEE9AC00](v93);
  v94 = &v75 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14RequestPayloadO32FetchTokenizerMetadataCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14RequestPayloadO32FetchTokenizerMetadataCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v78 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v91 = &v75 - v8;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14RequestPayloadO32CompletePromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14RequestPayloadO32CompletePromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v77 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v89 = &v75 - v9;
  v87 = type metadata accessor for CompletePromptTemplateRequest(0);
  MEMORY[0x1EEE9AC00](v87);
  v88 = &v75 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14RequestPayloadO24CompletePromptCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14RequestPayloadO24CompletePromptCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v75 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v111 = &v75 - v11;
  v85 = type metadata accessor for CompletePromptRequest(0);
  MEMORY[0x1EEE9AC00](v85);
  v110 = &v75 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14RequestPayloadO35CountTokensPromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14RequestPayloadO35CountTokensPromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v76 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v108 = &v75 - v13;
  v83 = type metadata accessor for CountTokensPromptTemplateRequest(0);
  MEMORY[0x1EEE9AC00](v83);
  v107 = &v75 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14RequestPayloadO21CountTokensCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14RequestPayloadO21CountTokensCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v86 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v105 = &v75 - v15;
  v84 = type metadata accessor for CountTokensRequest(0);
  MEMORY[0x1EEE9AC00](v84);
  v17 = &v75 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14RequestPayloadO28FetchModelMetadataCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14RequestPayloadO28FetchModelMetadataCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v82 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v75 - v19;
  v21 = type metadata accessor for RequestPayload(0);
  MEMORY[0x1EEE9AC00](v21);
  v23 = (&v75 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0));
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14RequestPayloadO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14RequestPayloadO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v113 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v25 = &v75 - v24;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type RequestPayload.CodingKeys and conformance RequestPayload.CodingKeys();
  v115 = v25;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of DocumentResourceEnvelope(v114, v23, type metadata accessor for RequestPayload);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    v33 = v17;
    v35 = v105;
    v34 = v106;
    v36 = v108;
    v37 = v109;
    v38 = v111;
    v39 = v112;
    if (EnumCaseMultiPayload <= 1)
    {
      if (!EnumCaseMultiPayload)
      {
        v40 = *v23;
        v41 = v23[1];
        v42 = v23[3];
        v111 = v23[2];
        v112 = v40;
        v43 = v23[4];
        v114 = v23[5];
        v44 = v114;
        v109 = v23[6];
        v110 = v43;
        LOBYTE(v116) = 0;
        lazy protocol witness table accessor for type RequestPayload.FetchModelMetadataCodingKeys and conformance RequestPayload.FetchModelMetadataCodingKeys();
        v45 = v123;
        v46 = v115;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v116 = v112;
        v117 = v41;
        v118 = v111;
        v119 = v42;
        v120 = v110;
        v121 = v44;
        v122 = v109;
        lazy protocol witness table accessor for type FetchModelMetadataRequest and conformance FetchModelMetadataRequest();
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        (*(v82 + 8))(v20, v18);
        (*(v113 + 8))(v46, v45);
      }

      v61 = v33;
      outlined init with take of DocumentRegistrationEnvelope(v23, v33, type metadata accessor for CountTokensRequest);
      LOBYTE(v116) = 1;
      lazy protocol witness table accessor for type RequestPayload.CountTokensCodingKeys and conformance RequestPayload.CountTokensCodingKeys();
      v27 = v123;
      v28 = v115;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type CountTokensRequest and conformance CountTokensRequest, type metadata accessor for CountTokensRequest, &protocol conformance descriptor for CountTokensRequest);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v86 + 8))(v35, v34);
      v62 = type metadata accessor for CountTokensRequest;
      v63 = v61;
      goto LABEL_18;
    }

    v27 = v123;
    if (EnumCaseMultiPayload == 2)
    {
      v48 = v107;
      outlined init with take of DocumentRegistrationEnvelope(v23, v107, type metadata accessor for CountTokensPromptTemplateRequest);
      LOBYTE(v116) = 2;
      lazy protocol witness table accessor for type RequestPayload.CountTokensPromptTemplateCodingKeys and conformance RequestPayload.CountTokensPromptTemplateCodingKeys();
      v49 = v115;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type CountTokensPromptTemplateRequest and conformance CountTokensPromptTemplateRequest, type metadata accessor for CountTokensPromptTemplateRequest, &protocol conformance descriptor for CountTokensPromptTemplateRequest);
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v76 + 8))(v36, v37);
      outlined destroy of DocumentResourceEnvelope(v48, type metadata accessor for CountTokensPromptTemplateRequest);
      v50 = *(v113 + 8);
      v51 = v49;
      return v50(v51, v27);
    }

    v29 = v110;
    outlined init with take of DocumentRegistrationEnvelope(v23, v110, type metadata accessor for CompletePromptRequest);
    LOBYTE(v116) = 3;
    lazy protocol witness table accessor for type RequestPayload.CompletePromptCodingKeys and conformance RequestPayload.CompletePromptCodingKeys();
    v28 = v115;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type CompletePromptRequest and conformance CompletePromptRequest, type metadata accessor for CompletePromptRequest, &protocol conformance descriptor for CompletePromptRequest);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v75 + 8))(v38, v39);
    v32 = type metadata accessor for CompletePromptRequest;
LABEL_17:
    v62 = v32;
    v63 = v29;
LABEL_18:
    outlined destroy of DocumentResourceEnvelope(v63, v62);
    v50 = *(v113 + 8);
    v51 = v28;
    return v50(v51, v27);
  }

  if (EnumCaseMultiPayload > 5)
  {
    v27 = v123;
    v28 = v115;
    if (EnumCaseMultiPayload == 6)
    {
      v29 = v94;
      outlined init with take of DocumentRegistrationEnvelope(v23, v94, type metadata accessor for ClassifyPromptRequest);
      LOBYTE(v116) = 6;
      lazy protocol witness table accessor for type RequestPayload.ClassifyPromptCodingKeys and conformance RequestPayload.ClassifyPromptCodingKeys();
      v59 = v95;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type ClassifyPromptRequest and conformance ClassifyPromptRequest, type metadata accessor for ClassifyPromptRequest, &protocol conformance descriptor for ClassifyPromptRequest);
      v60 = v96;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v79 + 8))(v59, v60);
      v32 = type metadata accessor for ClassifyPromptRequest;
    }

    else if (EnumCaseMultiPayload == 7)
    {
      v29 = v98;
      outlined init with take of DocumentRegistrationEnvelope(v23, v98, type metadata accessor for ClassifyPromptTemplateRequest);
      LOBYTE(v116) = 7;
      lazy protocol witness table accessor for type RequestPayload.ClassifyPromptTemplateCodingKeys and conformance RequestPayload.ClassifyPromptTemplateCodingKeys();
      v30 = v99;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type ClassifyPromptTemplateRequest and conformance ClassifyPromptTemplateRequest, type metadata accessor for ClassifyPromptTemplateRequest, &protocol conformance descriptor for ClassifyPromptTemplateRequest);
      v31 = v100;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v80 + 8))(v30, v31);
      v32 = type metadata accessor for ClassifyPromptTemplateRequest;
    }

    else
    {
      v29 = v102;
      outlined init with take of DocumentRegistrationEnvelope(v23, v102, type metadata accessor for CompileAdapterRequest);
      LOBYTE(v116) = 8;
      lazy protocol witness table accessor for type RequestPayload.CompileAdapterCodingKeys and conformance RequestPayload.CompileAdapterCodingKeys();
      v64 = v103;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type CompileAdapterRequest and conformance CompileAdapterRequest, type metadata accessor for CompileAdapterRequest, &protocol conformance descriptor for CompileAdapterRequest);
      v65 = v104;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v81 + 8))(v64, v65);
      v32 = type metadata accessor for CompileAdapterRequest;
    }

    goto LABEL_17;
  }

  v52 = v123;
  if (EnumCaseMultiPayload == 4)
  {
    v53 = v23;
    v54 = v88;
    outlined init with take of DocumentRegistrationEnvelope(v53, v88, type metadata accessor for CompletePromptTemplateRequest);
    LOBYTE(v116) = 4;
    lazy protocol witness table accessor for type RequestPayload.CompletePromptTemplateCodingKeys and conformance RequestPayload.CompletePromptTemplateCodingKeys();
    v55 = v89;
    v56 = v52;
    v57 = v115;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type CompletePromptTemplateRequest and conformance CompletePromptTemplateRequest, type metadata accessor for CompletePromptTemplateRequest, &protocol conformance descriptor for CompletePromptTemplateRequest);
    v58 = v90;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v77 + 8))(v55, v58);
    outlined destroy of DocumentResourceEnvelope(v54, type metadata accessor for CompletePromptTemplateRequest);
    return (*(v113 + 8))(v57, v56);
  }

  else
  {
    v66 = v23[1];
    v114 = *v23;
    v68 = v23[2];
    v67 = v23[3];
    v70 = v23[4];
    v69 = v23[5];
    v71 = v23[6];
    LOBYTE(v116) = 5;
    lazy protocol witness table accessor for type RequestPayload.FetchTokenizerMetadataCodingKeys and conformance RequestPayload.FetchTokenizerMetadataCodingKeys();
    v72 = v91;
    v73 = v115;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v116 = v114;
    v117 = v66;
    v114 = v66;
    v118 = v68;
    v119 = v67;
    v120 = v70;
    v121 = v69;
    v122 = v71;
    lazy protocol witness table accessor for type FetchTokenizerMetadataRequest and conformance FetchTokenizerMetadataRequest();
    v74 = v92;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v78 + 8))(v72, v74);
    (*(v113 + 8))(v73, v123);
  }
}

uint64_t RequestPayload.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v135 = a2;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14RequestPayloadO24CompileAdapterCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14RequestPayloadO24CompileAdapterCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v122 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v127 = &v96 - v3;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14RequestPayloadO32ClassifyPromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14RequestPayloadO32ClassifyPromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v119 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v128 = &v96 - v4;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14RequestPayloadO24ClassifyPromptCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14RequestPayloadO24ClassifyPromptCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v117 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v134 = &v96 - v5;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14RequestPayloadO32FetchTokenizerMetadataCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14RequestPayloadO32FetchTokenizerMetadataCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v126 = &v96 - v6;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14RequestPayloadO32CompletePromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14RequestPayloadO32CompletePromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v113 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v125 = &v96 - v7;
  v112 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14RequestPayloadO24CompletePromptCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14RequestPayloadO24CompletePromptCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v111 = *(v112 - 8);
  MEMORY[0x1EEE9AC00](v112);
  v133 = &v96 - v8;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14RequestPayloadO35CountTokensPromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14RequestPayloadO35CountTokensPromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v110 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v132 = &v96 - v9;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14RequestPayloadO21CountTokensCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14RequestPayloadO21CountTokensCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v107 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v124 = &v96 - v10;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14RequestPayloadO28FetchModelMetadataCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14RequestPayloadO28FetchModelMetadataCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v123 = &v96 - v11;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14RequestPayloadO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14RequestPayloadO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v130 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v13 = &v96 - v12;
  v129 = type metadata accessor for RequestPayload(0);
  MEMORY[0x1EEE9AC00](v129);
  v104 = &v96 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v103 = &v96 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v102 = &v96 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v100 = (&v96 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v101 = &v96 - v22;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v96 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v96 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v96 - v30;
  MEMORY[0x1EEE9AC00](v32);
  v34 = &v96 - v33;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v96 - v36;
  v38 = a1[3];
  v137 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v38);
  lazy protocol witness table accessor for type RequestPayload.CodingKeys and conformance RequestPayload.CodingKeys();
  v131 = v13;
  v39 = v147;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v39)
  {
    return __swift_destroy_boxed_opaque_existential_0(v137);
  }

  v96 = v34;
  v97 = v31;
  v98 = v28;
  v99 = v25;
  v41 = v132;
  v40 = v133;
  v147 = v37;
  v43 = v134;
  v42 = v135;
  v44 = v136;
  v45 = v131;
  v46 = KeyedDecodingContainer.allKeys.getter();
  v47 = (2 * *(v46 + 16)) | 1;
  v143 = v46;
  v144 = v46 + 32;
  v145 = 0;
  v146 = v47;
  v48 = specialized Collection<>.popFirst()();
  if (v48 == 9 || v145 != v146 >> 1)
  {
    v54 = type metadata accessor for DecodingError();
    swift_allocError();
    v56 = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v56 = v129;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v54 - 8) + 104))(v56, *MEMORY[0x1E69E6AF8], v54);
    swift_willThrow();
    (*(v130 + 8))(v45, v44);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v137);
  }

  if (v48 > 3u)
  {
    if (v48 > 5u)
    {
      if (v48 == 6)
      {
        LOBYTE(v138) = 6;
        lazy protocol witness table accessor for type RequestPayload.ClassifyPromptCodingKeys and conformance RequestPayload.ClassifyPromptCodingKeys();
        v72 = v43;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v73 = v130;
        v74 = v45;
        type metadata accessor for ClassifyPromptRequest(0);
        lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type ClassifyPromptRequest and conformance ClassifyPromptRequest, type metadata accessor for ClassifyPromptRequest, &protocol conformance descriptor for ClassifyPromptRequest);
        v52 = v102;
        v75 = v118;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v117 + 8))(v72, v75);
        (*(v73 + 8))(v74, v136);
        swift_unknownObjectRelease();
        goto LABEL_23;
      }

      v49 = v130;
      if (v48 == 7)
      {
        LOBYTE(v138) = 7;
        lazy protocol witness table accessor for type RequestPayload.ClassifyPromptTemplateCodingKeys and conformance RequestPayload.ClassifyPromptTemplateCodingKeys();
        v50 = v128;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v51 = v45;
        type metadata accessor for ClassifyPromptTemplateRequest(0);
        lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type ClassifyPromptTemplateRequest and conformance ClassifyPromptTemplateRequest, type metadata accessor for ClassifyPromptTemplateRequest, &protocol conformance descriptor for ClassifyPromptTemplateRequest);
        v52 = v103;
        v53 = v120;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v119 + 8))(v50, v53);
        (*(v49 + 8))(v51, v136);
        swift_unknownObjectRelease();
LABEL_23:
        swift_storeEnumTagMultiPayload();
        v90 = v52;
        goto LABEL_25;
      }

      LOBYTE(v138) = 8;
      lazy protocol witness table accessor for type RequestPayload.CompileAdapterCodingKeys and conformance RequestPayload.CompileAdapterCodingKeys();
      v80 = v127;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      type metadata accessor for CompileAdapterRequest(0);
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type CompileAdapterRequest and conformance CompileAdapterRequest, type metadata accessor for CompileAdapterRequest, &protocol conformance descriptor for CompileAdapterRequest);
      v86 = v104;
      v87 = v121;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v122 + 8))(v80, v87);
      (*(v49 + 8))(v45, v136);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v90 = v86;
      goto LABEL_25;
    }

    if (v48 == 4)
    {
      LOBYTE(v138) = 4;
      lazy protocol witness table accessor for type RequestPayload.CompletePromptTemplateCodingKeys and conformance RequestPayload.CompletePromptTemplateCodingKeys();
      v68 = v125;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v69 = v130;
      type metadata accessor for CompletePromptTemplateRequest(0);
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type CompletePromptTemplateRequest and conformance CompletePromptTemplateRequest, type metadata accessor for CompletePromptTemplateRequest, &protocol conformance descriptor for CompletePromptTemplateRequest);
      v70 = v101;
      v71 = v114;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v113 + 8))(v68, v71);
      (*(v69 + 8))(v45, v136);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v90 = v70;
      goto LABEL_25;
    }

    LOBYTE(v138) = 5;
    lazy protocol witness table accessor for type RequestPayload.FetchTokenizerMetadataCodingKeys and conformance RequestPayload.FetchTokenizerMetadataCodingKeys();
    v81 = v126;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v82 = v44;
    v83 = v130;
    v88 = v82;
    lazy protocol witness table accessor for type FetchTokenizerMetadataRequest and conformance FetchTokenizerMetadataRequest();
    v89 = v116;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v115 + 8))(v81, v89);
    (*(v83 + 8))(v45, v88);
    swift_unknownObjectRelease();
    v91 = v139;
    v92 = v140;
    v93 = v142;
    v65 = v100;
    *v100 = v138;
    *(v65 + 2) = v91;
    *(v65 + 3) = v92;
    v65[2] = v141;
    *(v65 + 6) = v93;
LABEL_24:
    swift_storeEnumTagMultiPayload();
    v90 = v65;
    goto LABEL_25;
  }

  if (v48 <= 1u)
  {
    if (v48)
    {
      LOBYTE(v138) = 1;
      lazy protocol witness table accessor for type RequestPayload.CountTokensCodingKeys and conformance RequestPayload.CountTokensCodingKeys();
      v76 = v124;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v77 = v130;
      v84 = v45;
      type metadata accessor for CountTokensRequest(0);
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type CountTokensRequest and conformance CountTokensRequest, type metadata accessor for CountTokensRequest, &protocol conformance descriptor for CountTokensRequest);
      v52 = v97;
      v85 = v108;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v107 + 8))(v76, v85);
      (*(v77 + 8))(v84, v136);
      swift_unknownObjectRelease();
      goto LABEL_23;
    }

    LOBYTE(v138) = 0;
    lazy protocol witness table accessor for type RequestPayload.FetchModelMetadataCodingKeys and conformance RequestPayload.FetchModelMetadataCodingKeys();
    v58 = v123;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v59 = v44;
    v60 = v130;
    lazy protocol witness table accessor for type FetchModelMetadataRequest and conformance FetchModelMetadataRequest();
    v61 = v106;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v105 + 8))(v58, v61);
    (*(v60 + 8))(v45, v59);
    swift_unknownObjectRelease();
    v62 = v139;
    v63 = v140;
    v64 = v142;
    v65 = v96;
    *v96 = v138;
    *(v65 + 2) = v62;
    *(v65 + 3) = v63;
    v65[2] = v141;
    *(v65 + 6) = v64;
    goto LABEL_24;
  }

  if (v48 == 2)
  {
    LOBYTE(v138) = 2;
    lazy protocol witness table accessor for type RequestPayload.CountTokensPromptTemplateCodingKeys and conformance RequestPayload.CountTokensPromptTemplateCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v66 = v45;
    type metadata accessor for CountTokensPromptTemplateRequest(0);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type CountTokensPromptTemplateRequest and conformance CountTokensPromptTemplateRequest, type metadata accessor for CountTokensPromptTemplateRequest, &protocol conformance descriptor for CountTokensPromptTemplateRequest);
    v52 = v98;
    v67 = v109;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v110 + 8))(v41, v67);
    (*(v130 + 8))(v66, v136);
    swift_unknownObjectRelease();
    goto LABEL_23;
  }

  LOBYTE(v138) = 3;
  lazy protocol witness table accessor for type RequestPayload.CompletePromptCodingKeys and conformance RequestPayload.CompletePromptCodingKeys();
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  type metadata accessor for CompletePromptRequest(0);
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type CompletePromptRequest and conformance CompletePromptRequest, type metadata accessor for CompletePromptRequest, &protocol conformance descriptor for CompletePromptRequest);
  v78 = v99;
  v79 = v112;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v111 + 8))(v40, v79);
  (*(v130 + 8))(v45, v44);
  swift_unknownObjectRelease();
  swift_storeEnumTagMultiPayload();
  v90 = v78;
LABEL_25:
  v94 = v147;
  outlined init with take of DocumentRegistrationEnvelope(v90, v147, type metadata accessor for RequestPayload);
  v95 = v137;
  outlined init with take of DocumentRegistrationEnvelope(v94, v42, type metadata accessor for RequestPayload);
  return __swift_destroy_boxed_opaque_existential_0(v95);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance StreamingRequestPayload.CodingKeys()
{
  if (*v0)
  {
    return 0xD000000000000016;
  }

  else
  {
    return 0x6574656C706D6F63;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance StreamingRequestPayload.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6574656C706D6F63 && a2 == 0xEE0074706D6F7250;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001ABA41290 == a2)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StreamingRequestPayload.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StreamingRequestPayload.CodingKeys and conformance StreamingRequestPayload.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StreamingRequestPayload.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StreamingRequestPayload.CodingKeys and conformance StreamingRequestPayload.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StreamingRequestPayload.CompletePromptCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StreamingRequestPayload.CompletePromptCodingKeys and conformance StreamingRequestPayload.CompletePromptCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StreamingRequestPayload.CompletePromptCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StreamingRequestPayload.CompletePromptCodingKeys and conformance StreamingRequestPayload.CompletePromptCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance StreamingRequestPayload.CompletePromptTemplateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StreamingRequestPayload.CompletePromptTemplateCodingKeys and conformance StreamingRequestPayload.CompletePromptTemplateCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance StreamingRequestPayload.CompletePromptTemplateCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type StreamingRequestPayload.CompletePromptTemplateCodingKeys and conformance StreamingRequestPayload.CompletePromptTemplateCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t StreamingRequestPayload.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration23StreamingRequestPayloadO32CompletePromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration23StreamingRequestPayloadO32CompletePromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v30 = &v24 - v3;
  v28 = type metadata accessor for CompletePromptTemplateRequest(0);
  MEMORY[0x1EEE9AC00](v28);
  v29 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration23StreamingRequestPayloadO24CompletePromptCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration23StreamingRequestPayloadO24CompletePromptCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  v25 = type metadata accessor for CompletePromptRequest(0);
  MEMORY[0x1EEE9AC00](v25);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StreamingRequestPayload(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration23StreamingRequestPayloadO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration23StreamingRequestPayloadO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v13 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v15 = &v24 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type StreamingRequestPayload.CodingKeys and conformance StreamingRequestPayload.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of DocumentResourceEnvelope(v33, v12, type metadata accessor for StreamingRequestPayload);
  v16 = (v13 + 8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = v29;
    outlined init with take of DocumentRegistrationEnvelope(v12, v29, type metadata accessor for CompletePromptTemplateRequest);
    v36 = 1;
    lazy protocol witness table accessor for type StreamingRequestPayload.CompletePromptTemplateCodingKeys and conformance StreamingRequestPayload.CompletePromptTemplateCodingKeys();
    v18 = v30;
    v19 = v34;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type CompletePromptTemplateRequest and conformance CompletePromptTemplateRequest, type metadata accessor for CompletePromptTemplateRequest, &protocol conformance descriptor for CompletePromptTemplateRequest);
    v20 = v32;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v31 + 8))(v18, v20);
    outlined destroy of DocumentResourceEnvelope(v17, type metadata accessor for CompletePromptTemplateRequest);
    return (*v16)(v15, v19);
  }

  else
  {
    outlined init with take of DocumentRegistrationEnvelope(v12, v9, type metadata accessor for CompletePromptRequest);
    v35 = 0;
    lazy protocol witness table accessor for type StreamingRequestPayload.CompletePromptCodingKeys and conformance StreamingRequestPayload.CompletePromptCodingKeys();
    v22 = v34;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type CompletePromptRequest and conformance CompletePromptRequest, type metadata accessor for CompletePromptRequest, &protocol conformance descriptor for CompletePromptRequest);
    v23 = v27;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v26 + 8))(v7, v23);
    outlined destroy of DocumentResourceEnvelope(v9, type metadata accessor for CompletePromptRequest);
    return (*v16)(v15, v22);
  }
}

uint64_t StreamingRequestPayload.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration23StreamingRequestPayloadO32CompletePromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration23StreamingRequestPayloadO32CompletePromptTemplateCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v47 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v50 = &v39 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration23StreamingRequestPayloadO24CompletePromptCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration23StreamingRequestPayloadO24CompletePromptCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration23StreamingRequestPayloadO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration23StreamingRequestPayloadO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v48 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v39 - v7;
  v9 = type metadata accessor for StreamingRequestPayload(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v39 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v39 - v16;
  v18 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  lazy protocol witness table accessor for type StreamingRequestPayload.CodingKeys and conformance StreamingRequestPayload.CodingKeys();
  v19 = v51;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_0(v52);
  }

  v40 = v11;
  v41 = v14;
  v21 = v49;
  v20 = v50;
  v42 = 0;
  v39 = v17;
  v51 = v9;
  v22 = v48;
  v23 = KeyedDecodingContainer.allKeys.getter();
  v24 = (2 * *(v23 + 16)) | 1;
  v53 = v23;
  v54 = v23 + 32;
  v55 = 0;
  v56 = v24;
  v25 = specialized Collection<>.popFirst()();
  v26 = v6;
  v27 = v8;
  if (v25 == 2 || v55 != v56 >> 1)
  {
    v32 = type metadata accessor for DecodingError();
    swift_allocError();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v34 = v51;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
    swift_willThrow();
    goto LABEL_8;
  }

  if ((v25 & 1) == 0)
  {
    v57 = 0;
    lazy protocol witness table accessor for type StreamingRequestPayload.CompletePromptCodingKeys and conformance StreamingRequestPayload.CompletePromptCodingKeys();
    v36 = v42;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    if (!v36)
    {
      type metadata accessor for CompletePromptRequest(0);
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type CompletePromptRequest and conformance CompletePromptRequest, type metadata accessor for CompletePromptRequest, &protocol conformance descriptor for CompletePromptRequest);
      v30 = v41;
      v37 = v46;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v45 + 8))(v21, v37);
      (*(v22 + 8))(v8, v6);
      swift_unknownObjectRelease();
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  v57 = 1;
  lazy protocol witness table accessor for type StreamingRequestPayload.CompletePromptTemplateCodingKeys and conformance StreamingRequestPayload.CompletePromptTemplateCodingKeys();
  v28 = v20;
  v29 = v42;
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  if (v29)
  {
LABEL_8:
    (*(v22 + 8))(v27, v6);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v52);
  }

  type metadata accessor for CompletePromptTemplateRequest(0);
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type CompletePromptTemplateRequest and conformance CompletePromptTemplateRequest, type metadata accessor for CompletePromptTemplateRequest, &protocol conformance descriptor for CompletePromptTemplateRequest);
  v30 = v40;
  v31 = v44;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v47 + 8))(v28, v31);
  (*(v22 + 8))(v27, v26);
  swift_unknownObjectRelease();
LABEL_12:
  swift_storeEnumTagMultiPayload();
  v38 = v39;
  outlined init with take of DocumentRegistrationEnvelope(v30, v39, type metadata accessor for StreamingRequestPayload);
  outlined init with take of DocumentRegistrationEnvelope(v38, v43, type metadata accessor for StreamingRequestPayload);
  return __swift_destroy_boxed_opaque_existential_0(v52);
}

uint64_t StreamingRequestPayload.xpcData.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for CompletePromptTemplateRequest(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CompletePromptRequest(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for StreamingRequestPayload(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DocumentResourceEnvelope(v2, v12, type metadata accessor for StreamingRequestPayload);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of DocumentRegistrationEnvelope(v12, v6, type metadata accessor for CompletePromptTemplateRequest);
    v13 = type metadata accessor for XPCDictionary();
    (*(*(v13 - 8) + 16))(a1, v6, v13);
    v14 = type metadata accessor for CompletePromptTemplateRequest;
    v15 = v6;
  }

  else
  {
    outlined init with take of DocumentRegistrationEnvelope(v12, v9, type metadata accessor for CompletePromptRequest);
    v16 = type metadata accessor for XPCDictionary();
    (*(*(v16 - 8) + 16))(a1, v9, v16);
    v14 = type metadata accessor for CompletePromptRequest;
    v15 = v9;
  }

  return outlined destroy of DocumentResourceEnvelope(v15, v14);
}

uint64_t StreamingRequestPayload.revive(withXpcData:)(uint64_t a1)
{
  v3 = type metadata accessor for CompletePromptTemplateRequest(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for CompletePromptRequest(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for StreamingRequestPayload(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with take of DocumentRegistrationEnvelope(v1, v11, type metadata accessor for StreamingRequestPayload);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of DocumentRegistrationEnvelope(v11, v5, type metadata accessor for CompletePromptTemplateRequest);
    v12 = type metadata accessor for XPCDictionary();
    (*(*(v12 - 8) + 24))(v5, a1, v12);
    outlined init with take of DocumentRegistrationEnvelope(v5, v1, type metadata accessor for CompletePromptTemplateRequest);
  }

  else
  {
    outlined init with take of DocumentRegistrationEnvelope(v11, v8, type metadata accessor for CompletePromptRequest);
    v13 = type metadata accessor for XPCDictionary();
    (*(*(v13 - 8) + 24))(v8, a1, v13);
    outlined init with take of DocumentRegistrationEnvelope(v8, v1, type metadata accessor for CompletePromptRequest);
  }

  return swift_storeEnumTagMultiPayload();
}

uint64_t protocol witness for XPCRevivable.xpcData.getter in conformance StreamingRequestPayload@<X0>(uint64_t a2@<X8>)
{
  v3 = v2;
  v5 = type metadata accessor for CompletePromptTemplateRequest(0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CompletePromptRequest(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DocumentResourceEnvelope(v3, v13, type metadata accessor for StreamingRequestPayload);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of DocumentRegistrationEnvelope(v13, v7, type metadata accessor for CompletePromptTemplateRequest);
    v14 = type metadata accessor for XPCDictionary();
    (*(*(v14 - 8) + 16))(a2, v7, v14);
    v15 = type metadata accessor for CompletePromptTemplateRequest;
    v16 = v7;
  }

  else
  {
    outlined init with take of DocumentRegistrationEnvelope(v13, v10, type metadata accessor for CompletePromptRequest);
    v17 = type metadata accessor for XPCDictionary();
    (*(*(v17 - 8) + 16))(a2, v10, v17);
    v15 = type metadata accessor for CompletePromptRequest;
    v16 = v10;
  }

  return outlined destroy of DocumentResourceEnvelope(v16, v15);
}

uint64_t OneShotRequest.xpcData.getter@<X0>(uint64_t (*a1)(void, __n128)@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  v45 = a3;
  v46 = a4;
  v7 = type metadata accessor for CompileAdapterRequest(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v44 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ClassifyPromptTemplateRequest(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ClassifyPromptRequest(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CompletePromptTemplateRequest(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for CompletePromptRequest(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for CountTokensPromptTemplateRequest(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v43 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for CountTokensRequest(0);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v43 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a1(0, v25);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v43 - v29;
  outlined init with copy of DocumentResourceEnvelope(v4, &v43 - v29, a2);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 3)
  {
    if (EnumCaseMultiPayload > 1)
    {
      if (EnumCaseMultiPayload != 2)
      {
        outlined init with take of DocumentRegistrationEnvelope(v30, v20, type metadata accessor for CompletePromptRequest);
        v41 = type metadata accessor for XPCDictionary();
        (*(*(v41 - 8) + 16))(v46, v20, v41);
        v33 = type metadata accessor for CompletePromptRequest;
        v34 = v20;
        return outlined destroy of DocumentResourceEnvelope(v34, v33);
      }

      outlined init with take of DocumentRegistrationEnvelope(v30, v23, type metadata accessor for CountTokensPromptTemplateRequest);
      v36 = type metadata accessor for XPCDictionary();
      (*(*(v36 - 8) + 16))(v46, v23, v36);
      v37 = type metadata accessor for CountTokensPromptTemplateRequest;
LABEL_17:
      v33 = v37;
      v34 = v23;
      return outlined destroy of DocumentResourceEnvelope(v34, v33);
    }

    if (EnumCaseMultiPayload)
    {
      outlined init with take of DocumentRegistrationEnvelope(v30, v27, type metadata accessor for CountTokensRequest);
      v35 = type metadata accessor for XPCDictionary();
      (*(*(v35 - 8) + 16))(v46, v27, v35);
      v33 = type metadata accessor for CountTokensRequest;
      v34 = v27;
      return outlined destroy of DocumentResourceEnvelope(v34, v33);
    }

LABEL_13:
    outlined destroy of DocumentResourceEnvelope(v30, v45);
    return XPCDictionary.init()();
  }

  if (EnumCaseMultiPayload <= 5)
  {
    if (EnumCaseMultiPayload == 4)
    {
      outlined init with take of DocumentRegistrationEnvelope(v30, v17, type metadata accessor for CompletePromptTemplateRequest);
      v38 = type metadata accessor for XPCDictionary();
      (*(*(v38 - 8) + 16))(v46, v17, v38);
      v33 = type metadata accessor for CompletePromptTemplateRequest;
      v34 = v17;
      return outlined destroy of DocumentResourceEnvelope(v34, v33);
    }

    goto LABEL_13;
  }

  if (EnumCaseMultiPayload == 6)
  {
    outlined init with take of DocumentRegistrationEnvelope(v30, v14, type metadata accessor for ClassifyPromptRequest);
    v40 = type metadata accessor for XPCDictionary();
    (*(*(v40 - 8) + 16))(v46, v14, v40);
    v33 = type metadata accessor for ClassifyPromptRequest;
    v34 = v14;
    return outlined destroy of DocumentResourceEnvelope(v34, v33);
  }

  if (EnumCaseMultiPayload != 7)
  {
    v23 = v44;
    outlined init with take of DocumentRegistrationEnvelope(v30, v44, type metadata accessor for CompileAdapterRequest);
    v42 = type metadata accessor for XPCDictionary();
    (*(*(v42 - 8) + 16))(v46, v23, v42);
    v37 = type metadata accessor for CompileAdapterRequest;
    goto LABEL_17;
  }

  outlined init with take of DocumentRegistrationEnvelope(v30, v11, type metadata accessor for ClassifyPromptTemplateRequest);
  v32 = type metadata accessor for XPCDictionary();
  (*(*(v32 - 8) + 16))(v46, v11, v32);
  v33 = type metadata accessor for ClassifyPromptTemplateRequest;
  v34 = v11;
  return outlined destroy of DocumentResourceEnvelope(v34, v33);
}

uint64_t OneShotRequest.revive(withXpcData:)(uint64_t a1, uint64_t (*a2)(void, __n128), uint64_t (*a3)(void), uint64_t (*a4)(void))
{
  v43 = a3;
  v44 = a4;
  v6 = v4;
  v42 = a1;
  v7 = type metadata accessor for CompileAdapterRequest(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v41 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ClassifyPromptTemplateRequest(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ClassifyPromptRequest(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for CompletePromptTemplateRequest(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v41 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for CompletePromptRequest(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v41 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for CountTokensPromptTemplateRequest(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v41 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for CountTokensRequest(0);
  v25 = MEMORY[0x1EEE9AC00](v24 - 8);
  v27 = &v41 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = a2(0, v25);
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v41 - v29;
  outlined init with copy of DocumentResourceEnvelope(v6, &v41 - v29, v43);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 3)
  {
    if (EnumCaseMultiPayload > 5)
    {
      if (EnumCaseMultiPayload == 6)
      {
        outlined destroy of DocumentResourceEnvelope(v6, v44);
        outlined init with take of DocumentRegistrationEnvelope(v30, v14, type metadata accessor for ClassifyPromptRequest);
        v37 = type metadata accessor for XPCDictionary();
        (*(*(v37 - 8) + 24))(v14, v42, v37);
        outlined init with take of DocumentRegistrationEnvelope(v14, v6, type metadata accessor for ClassifyPromptRequest);
      }

      else if (EnumCaseMultiPayload == 7)
      {
        outlined destroy of DocumentResourceEnvelope(v6, v44);
        outlined init with take of DocumentRegistrationEnvelope(v30, v11, type metadata accessor for ClassifyPromptTemplateRequest);
        v32 = type metadata accessor for XPCDictionary();
        (*(*(v32 - 8) + 24))(v11, v42, v32);
        outlined init with take of DocumentRegistrationEnvelope(v11, v6, type metadata accessor for ClassifyPromptTemplateRequest);
      }

      else
      {
        outlined destroy of DocumentResourceEnvelope(v6, v44);
        v39 = v41;
        outlined init with take of DocumentRegistrationEnvelope(v30, v41, type metadata accessor for CompileAdapterRequest);
        v40 = type metadata accessor for XPCDictionary();
        (*(*(v40 - 8) + 24))(v39, v42, v40);
        outlined init with take of DocumentRegistrationEnvelope(v39, v6, type metadata accessor for CompileAdapterRequest);
      }

      return swift_storeEnumTagMultiPayload();
    }

    if (EnumCaseMultiPayload == 4)
    {
      outlined destroy of DocumentResourceEnvelope(v6, v44);
      outlined init with take of DocumentRegistrationEnvelope(v30, v17, type metadata accessor for CompletePromptTemplateRequest);
      v35 = type metadata accessor for XPCDictionary();
      (*(*(v35 - 8) + 24))(v17, v42, v35);
      outlined init with take of DocumentRegistrationEnvelope(v17, v6, type metadata accessor for CompletePromptTemplateRequest);
      return swift_storeEnumTagMultiPayload();
    }

    return outlined destroy of DocumentResourceEnvelope(v30, v44);
  }

  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      outlined destroy of DocumentResourceEnvelope(v6, v44);
      outlined init with take of DocumentRegistrationEnvelope(v30, v23, type metadata accessor for CountTokensPromptTemplateRequest);
      v34 = type metadata accessor for XPCDictionary();
      (*(*(v34 - 8) + 24))(v23, v42, v34);
      outlined init with take of DocumentRegistrationEnvelope(v23, v6, type metadata accessor for CountTokensPromptTemplateRequest);
    }

    else
    {
      outlined destroy of DocumentResourceEnvelope(v6, v44);
      outlined init with take of DocumentRegistrationEnvelope(v30, v20, type metadata accessor for CompletePromptRequest);
      v38 = type metadata accessor for XPCDictionary();
      (*(*(v38 - 8) + 24))(v20, v42, v38);
      outlined init with take of DocumentRegistrationEnvelope(v20, v6, type metadata accessor for CompletePromptRequest);
    }

    return swift_storeEnumTagMultiPayload();
  }

  if (!EnumCaseMultiPayload)
  {
    return outlined destroy of DocumentResourceEnvelope(v30, v44);
  }

  outlined destroy of DocumentResourceEnvelope(v6, v44);
  outlined init with take of DocumentRegistrationEnvelope(v30, v27, type metadata accessor for CountTokensRequest);
  v33 = type metadata accessor for XPCDictionary();
  (*(*(v33 - 8) + 24))(v27, v42, v33);
  outlined init with take of DocumentRegistrationEnvelope(v27, v6, type metadata accessor for CountTokensRequest);
  return swift_storeEnumTagMultiPayload();
}

unint64_t lazy protocol witness table accessor for type RegisterDocumentRequest.CodingKeys and conformance RegisterDocumentRequest.CodingKeys()
{
  result = lazy protocol witness table cache variable for type RegisterDocumentRequest.CodingKeys and conformance RegisterDocumentRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type RegisterDocumentRequest.CodingKeys and conformance RegisterDocumentRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegisterDocumentRequest.CodingKeys and conformance RegisterDocumentRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RegisterDocumentRequest.CodingKeys and conformance RegisterDocumentRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type RegisterDocumentRequest.CodingKeys and conformance RegisterDocumentRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegisterDocumentRequest.CodingKeys and conformance RegisterDocumentRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RegisterDocumentRequest.CodingKeys and conformance RegisterDocumentRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type RegisterDocumentRequest.CodingKeys and conformance RegisterDocumentRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegisterDocumentRequest.CodingKeys and conformance RegisterDocumentRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RegisterDocumentRequest.CodingKeys and conformance RegisterDocumentRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type RegisterDocumentRequest.CodingKeys and conformance RegisterDocumentRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegisterDocumentRequest.CodingKeys and conformance RegisterDocumentRequest.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [DocumentResourceEnvelope] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [DocumentResourceEnvelope] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [DocumentResourceEnvelope] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15TokenGeneration24DocumentResourceEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMd, &_sSay15TokenGeneration24DocumentResourceEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMR);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope, type metadata accessor for DocumentResourceEnvelope, &protocol conformance descriptor for DocumentResourceEnvelope);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DocumentResourceEnvelope] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [DocumentResourceEnvelope] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [DocumentResourceEnvelope] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15TokenGeneration24DocumentResourceEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMd, &_sSay15TokenGeneration24DocumentResourceEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMR);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope, type metadata accessor for DocumentResourceEnvelope, &protocol conformance descriptor for DocumentResourceEnvelope);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DocumentResourceEnvelope] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RequestMetadataEnvelope and conformance RequestMetadataEnvelope()
{
  result = lazy protocol witness table cache variable for type RequestMetadataEnvelope and conformance RequestMetadataEnvelope;
  if (!lazy protocol witness table cache variable for type RequestMetadataEnvelope and conformance RequestMetadataEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestMetadataEnvelope and conformance RequestMetadataEnvelope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestMetadataEnvelope and conformance RequestMetadataEnvelope;
  if (!lazy protocol witness table cache variable for type RequestMetadataEnvelope and conformance RequestMetadataEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestMetadataEnvelope and conformance RequestMetadataEnvelope);
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type RegisterDocumentResponseElement.CodingKeys and conformance RegisterDocumentResponseElement.CodingKeys()
{
  result = lazy protocol witness table cache variable for type RegisterDocumentResponseElement.CodingKeys and conformance RegisterDocumentResponseElement.CodingKeys;
  if (!lazy protocol witness table cache variable for type RegisterDocumentResponseElement.CodingKeys and conformance RegisterDocumentResponseElement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegisterDocumentResponseElement.CodingKeys and conformance RegisterDocumentResponseElement.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RegisterDocumentResponseElement.CodingKeys and conformance RegisterDocumentResponseElement.CodingKeys;
  if (!lazy protocol witness table cache variable for type RegisterDocumentResponseElement.CodingKeys and conformance RegisterDocumentResponseElement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegisterDocumentResponseElement.CodingKeys and conformance RegisterDocumentResponseElement.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RegisterDocumentResponseElement.CodingKeys and conformance RegisterDocumentResponseElement.CodingKeys;
  if (!lazy protocol witness table cache variable for type RegisterDocumentResponseElement.CodingKeys and conformance RegisterDocumentResponseElement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegisterDocumentResponseElement.CodingKeys and conformance RegisterDocumentResponseElement.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RegisterDocumentResponseElement.CodingKeys and conformance RegisterDocumentResponseElement.CodingKeys;
  if (!lazy protocol witness table cache variable for type RegisterDocumentResponseElement.CodingKeys and conformance RegisterDocumentResponseElement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RegisterDocumentResponseElement.CodingKeys and conformance RegisterDocumentResponseElement.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CompileAdapterRequest.CodingKeys and conformance CompileAdapterRequest.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CompileAdapterRequest.CodingKeys and conformance CompileAdapterRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompileAdapterRequest.CodingKeys and conformance CompileAdapterRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterRequest.CodingKeys and conformance CompileAdapterRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompileAdapterRequest.CodingKeys and conformance CompileAdapterRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompileAdapterRequest.CodingKeys and conformance CompileAdapterRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterRequest.CodingKeys and conformance CompileAdapterRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompileAdapterRequest.CodingKeys and conformance CompileAdapterRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompileAdapterRequest.CodingKeys and conformance CompileAdapterRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterRequest.CodingKeys and conformance CompileAdapterRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompileAdapterRequest.CodingKeys and conformance CompileAdapterRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompileAdapterRequest.CodingKeys and conformance CompileAdapterRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterRequest.CodingKeys and conformance CompileAdapterRequest.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.CodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.CodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.CodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.CodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.CodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.CodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.CodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.CodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.CodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.CodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.CodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.CodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.CodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys()
{
  result = lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys;
  if (!lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys;
  if (!lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys;
  if (!lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys()
{
  result = lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys;
  if (!lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys;
  if (!lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys;
  if (!lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys()
{
  result = lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys;
  if (!lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys;
  if (!lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys;
  if (!lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys()
{
  result = lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys;
  if (!lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys;
  if (!lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys;
  if (!lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys()
{
  result = lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys;
  if (!lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys;
  if (!lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys;
  if (!lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CompileAdapterResponse.CodingKeys and conformance CompileAdapterResponse.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CompileAdapterResponse.CodingKeys and conformance CompileAdapterResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompileAdapterResponse.CodingKeys and conformance CompileAdapterResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterResponse.CodingKeys and conformance CompileAdapterResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompileAdapterResponse.CodingKeys and conformance CompileAdapterResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompileAdapterResponse.CodingKeys and conformance CompileAdapterResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterResponse.CodingKeys and conformance CompileAdapterResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompileAdapterResponse.CodingKeys and conformance CompileAdapterResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompileAdapterResponse.CodingKeys and conformance CompileAdapterResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterResponse.CodingKeys and conformance CompileAdapterResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompileAdapterResponse.CodingKeys and conformance CompileAdapterResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompileAdapterResponse.CodingKeys and conformance CompileAdapterResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterResponse.CodingKeys and conformance CompileAdapterResponse.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult and conformance CompileAdapterResponse.DraftModelCompileResult()
{
  result = lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult and conformance CompileAdapterResponse.DraftModelCompileResult;
  if (!lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult and conformance CompileAdapterResponse.DraftModelCompileResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult and conformance CompileAdapterResponse.DraftModelCompileResult);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult and conformance CompileAdapterResponse.DraftModelCompileResult;
  if (!lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult and conformance CompileAdapterResponse.DraftModelCompileResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult and conformance CompileAdapterResponse.DraftModelCompileResult);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult and conformance CompileAdapterResponse.DraftModelCompileResult;
  if (!lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult and conformance CompileAdapterResponse.DraftModelCompileResult)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompileAdapterResponse.DraftModelCompileResult and conformance CompileAdapterResponse.DraftModelCompileResult);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FetchModelMetadataRequest.CodingKeys and conformance FetchModelMetadataRequest.CodingKeys()
{
  result = lazy protocol witness table cache variable for type FetchModelMetadataRequest.CodingKeys and conformance FetchModelMetadataRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type FetchModelMetadataRequest.CodingKeys and conformance FetchModelMetadataRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchModelMetadataRequest.CodingKeys and conformance FetchModelMetadataRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FetchModelMetadataRequest.CodingKeys and conformance FetchModelMetadataRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type FetchModelMetadataRequest.CodingKeys and conformance FetchModelMetadataRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchModelMetadataRequest.CodingKeys and conformance FetchModelMetadataRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FetchModelMetadataRequest.CodingKeys and conformance FetchModelMetadataRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type FetchModelMetadataRequest.CodingKeys and conformance FetchModelMetadataRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchModelMetadataRequest.CodingKeys and conformance FetchModelMetadataRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FetchModelMetadataRequest.CodingKeys and conformance FetchModelMetadataRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type FetchModelMetadataRequest.CodingKeys and conformance FetchModelMetadataRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchModelMetadataRequest.CodingKeys and conformance FetchModelMetadataRequest.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FetchModelMetadataResponse.CodingKeys and conformance FetchModelMetadataResponse.CodingKeys()
{
  result = lazy protocol witness table cache variable for type FetchModelMetadataResponse.CodingKeys and conformance FetchModelMetadataResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type FetchModelMetadataResponse.CodingKeys and conformance FetchModelMetadataResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchModelMetadataResponse.CodingKeys and conformance FetchModelMetadataResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FetchModelMetadataResponse.CodingKeys and conformance FetchModelMetadataResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type FetchModelMetadataResponse.CodingKeys and conformance FetchModelMetadataResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchModelMetadataResponse.CodingKeys and conformance FetchModelMetadataResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FetchModelMetadataResponse.CodingKeys and conformance FetchModelMetadataResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type FetchModelMetadataResponse.CodingKeys and conformance FetchModelMetadataResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchModelMetadataResponse.CodingKeys and conformance FetchModelMetadataResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FetchModelMetadataResponse.CodingKeys and conformance FetchModelMetadataResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type FetchModelMetadataResponse.CodingKeys and conformance FetchModelMetadataResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchModelMetadataResponse.CodingKeys and conformance FetchModelMetadataResponse.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CountTokensRequest.CodingKeys and conformance CountTokensRequest.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CountTokensRequest.CodingKeys and conformance CountTokensRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type CountTokensRequest.CodingKeys and conformance CountTokensRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CountTokensRequest.CodingKeys and conformance CountTokensRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CountTokensRequest.CodingKeys and conformance CountTokensRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type CountTokensRequest.CodingKeys and conformance CountTokensRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CountTokensRequest.CodingKeys and conformance CountTokensRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CountTokensRequest.CodingKeys and conformance CountTokensRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type CountTokensRequest.CodingKeys and conformance CountTokensRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CountTokensRequest.CodingKeys and conformance CountTokensRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CountTokensRequest.CodingKeys and conformance CountTokensRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type CountTokensRequest.CodingKeys and conformance CountTokensRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CountTokensRequest.CodingKeys and conformance CountTokensRequest.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptEnvelope and conformance PromptEnvelope()
{
  result = lazy protocol witness table cache variable for type PromptEnvelope and conformance PromptEnvelope;
  if (!lazy protocol witness table cache variable for type PromptEnvelope and conformance PromptEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptEnvelope and conformance PromptEnvelope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptEnvelope and conformance PromptEnvelope;
  if (!lazy protocol witness table cache variable for type PromptEnvelope and conformance PromptEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptEnvelope and conformance PromptEnvelope);
  }

  return result;
}

void *specialized _NativeDictionary.mapValues<A>(_:)(uint64_t a1, uint64_t a2, __n128 a3)
{
  v97 = a2;
  v4 = type metadata accessor for ChatMessagePrompt();
  v72 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v70 = v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A0VSgMd, &_s9PromptKit0A0VSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v65 - v7;
  v9 = type metadata accessor for Prompt();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v94 = v65 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v93 = v65 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v76 = v65 - v15;
  v16 = type metadata accessor for GenerativeConfigurationKey();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v81 = v65 - v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy9PromptKit26GenerativeConfigurationKeyVSe_SEpGMd, &_ss18_DictionaryStorageCy9PromptKit26GenerativeConfigurationKeyVSe_SEpGMR);
  result = static _DictionaryStorage.copy(original:)();
  v23 = v9;
  v24 = result;
  v25 = 0;
  v26 = *(a1 + 64);
  v74 = a1 + 64;
  v27 = 1 << *(a1 + 32);
  v28 = -1;
  if (v27 < 64)
  {
    v28 = ~(-1 << v27);
  }

  v29 = v28 & v26;
  v73 = (v27 + 63) >> 6;
  v79 = v17 + 16;
  v82 = v17;
  v88 = v17 + 32;
  v30 = v19;
  v78 = (v10 + 56);
  v96 = (v10 + 8);
  v91 = (v72 + 32);
  v92 = v72 + 16;
  v75 = (v10 + 32);
  v77 = result + 8;
  v80 = result;
  v71 = v8;
  if (v29)
  {
    while (1)
    {
      v83 = (v29 - 1) & v29;
      v84 = v25;
      v31 = __clz(__rbit64(v29)) | (v25 << 6);
LABEL_10:
      v35 = *(a1 + 48);
      v36 = v82;
      v37 = *(v82 + 16);
      v86 = *(v82 + 72) * v31;
      v38 = v81;
      v37(v81, v35 + v86, v16);
      v39 = *(a1 + 56);
      v87 = v31;
      outlined init with copy of Decodable & Encodable(v39 + 48 * v31, &v102);
      v40 = *(v36 + 32);
      v40(v30, v38, v16);
      outlined init with copy of Decodable & Encodable(&v102, &v98);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSe_SEpMd, &_sSe_SEpMR);
      v41 = swift_dynamicCast();
      v42 = *v78;
      v85 = v40;
      if (v41)
      {
        v42(v8, 0, 1, v23);
        v43 = v16;
        v44 = v76;
        (*v75)(v76, v8, v23);
        v99 = v23;
        v45 = MEMORY[0x1E69C63A0];
        v100 = lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Prompt and conformance Prompt, MEMORY[0x1E69C63A0], MEMORY[0x1E69C63B0]);
        v101 = lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Prompt and conformance Prompt, v45, MEMORY[0x1E69C63A8]);
        boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v98);
        Prompt.seal(xpcData:)(v97, boxed_opaque_existential_1);
        v47 = v44;
        v16 = v43;
        (*v96)(v47, v23);
      }

      else
      {
        v42(v8, 1, 1, v23);
        outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s9PromptKit0A0VSgMd, &_s9PromptKit0A0VSgMR);
        outlined init with copy of Decodable & Encodable(&v102, &v98);
        v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9PromptKit011ChatMessageA0VGMd, &_sSay9PromptKit011ChatMessageA0VGMR);
        if (swift_dynamicCast())
        {
          v49 = v103;
          v50 = *(v103 + 16);
          if (v50)
          {
            v66 = v48;
            v67 = v30;
            v68 = v16;
            v95 = v23;
            v69 = a1;
            *&v98 = MEMORY[0x1E69E7CC0];
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v50, 0);
            v51 = v98;
            v52 = (*(v72 + 80) + 32) & ~*(v72 + 80);
            v65[1] = v49;
            v90 = v52;
            v53 = v49 + v52;
            v54 = *(v72 + 72);
            v89 = *(v72 + 16);
            v55 = v70;
            do
            {
              v89(v55, v53, v4);
              v56 = v94;
              ChatMessagePrompt.prompt.getter();
              Prompt.seal(xpcData:)(v97, v93);
              (*v96)(v56, v95);
              ChatMessagePrompt.prompt.setter();
              *&v98 = v51;
              v57 = v4;
              v59 = *(v51 + 16);
              v58 = *(v51 + 24);
              if (v59 >= v58 >> 1)
              {
                specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v58 > 1), v59 + 1, 1);
                v51 = v98;
              }

              *(v51 + 16) = v59 + 1;
              (*v91)(v51 + v90 + v59 * v54, v55, v57);
              v53 += v54;
              --v50;
              v4 = v57;
            }

            while (v50);

            a1 = v69;
            v23 = v95;
            v16 = v68;
            v30 = v67;
            v48 = v66;
          }

          else
          {

            v51 = MEMORY[0x1E69E7CC0];
          }

          v99 = v48;
          v100 = lazy protocol witness table accessor for type [ChatMessagePrompt] and conformance <A> [A]();
          v101 = lazy protocol witness table accessor for type [ChatMessagePrompt] and conformance <A> [A]();
          *&v98 = v51;
          v8 = v71;
        }

        else
        {
          outlined init with copy of Decodable & Encodable(&v102, &v98);
        }
      }

      v24 = v80;
      v60 = v86;
      __swift_destroy_boxed_opaque_existential_0(&v102);
      v61 = v87;
      *(v77 + ((v87 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v87;
      v85(v24[6] + v60, v30, v16);
      result = outlined init with take of Decodable & Encodable(&v98, (v24[7] + 48 * v61));
      v62 = v24[2];
      v63 = __OFADD__(v62, 1);
      v64 = v62 + 1;
      if (v63)
      {
        break;
      }

      v24[2] = v64;
      v25 = v84;
      v29 = v83;
      if (!v83)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v32 = v25;
    while (1)
    {
      v33 = v32 + 1;
      if (__OFADD__(v32, 1))
      {
        break;
      }

      if (v33 >= v73)
      {
        return v24;
      }

      v34 = *(v74 + 8 * v33);
      ++v32;
      if (v34)
      {
        v83 = (v34 - 1) & v34;
        v84 = v33;
        v31 = __clz(__rbit64(v34)) | (v33 << 6);
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t specialized _NativeDictionary.mapValues<A>(_:)(void (*a1)(uint64_t *, __n128), uint64_t a2, uint64_t a3, __n128 a4)
{
  v36 = a1;
  v37 = a2;
  v34 = type metadata accessor for PromptTemplateInfo.RichVariableBinding();
  v5 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingVGMd, &_ss18_DictionaryStorageCySS19TokenGenerationCore18PromptTemplateInfoV19RichVariableBindingVGMR);
  result = static _DictionaryStorage.copy(original:)();
  v9 = result;
  v10 = 0;
  v38 = a3;
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
  v32 = result + 64;
  v33 = v5;
  v31 = v5 + 32;
  v35 = result;
  if (v16)
  {
    while (1)
    {
      v18 = __clz(__rbit64(v16));
      v39 = (v16 - 1) & v16;
LABEL_10:
      v21 = v18 | (v10 << 6);
      v22 = (*(v38 + 48) + 16 * v21);
      v24 = *v22;
      v23 = v22[1];
      v41 = *(*(v38 + 56) + 8 * v21);

      v25 = v40;
      (v36)(&v41);

      v40 = v25;
      if (v25)
      {
        break;
      }

      *(v32 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
      v26 = v34;
      v9 = v35;
      v27 = (*(v35 + 48) + 16 * v21);
      *v27 = v24;
      v27[1] = v23;
      result = (*(v33 + 32))(*(v9 + 56) + *(v33 + 72) * v21, v7, v26);
      v28 = *(v9 + 16);
      v29 = __OFADD__(v28, 1);
      v30 = v28 + 1;
      if (v29)
      {
        goto LABEL_17;
      }

      *(v9 + 16) = v30;
      v16 = v39;
      if (!v39)
      {
        goto LABEL_5;
      }
    }

    v9 = v35;

    return v9;
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
        return v9;
      }

      v20 = *(v12 + 8 * v10);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_10;
      }
    }

    __break(1u);
LABEL_17:
    __break(1u);
  }

  return result;
}

uint64_t specialized static Constraints.== infix(_:_:)(uint64_t a1, char *a2)
{
  v43 = a2;
  v3 = type metadata accessor for GenerationSchema();
  v41 = *(v3 - 8);
  v42 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Constraints(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v40 - v10);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v40 - v13);
  MEMORY[0x1EEE9AC00](v15);
  v17 = (&v40 - v16);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v40 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsO_ACtMd, &_s15TokenGeneration11ConstraintsO_ACtMR);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v24 = (&v40 + *(v23 + 56) - v22);
  v25 = a1;
  v26 = &v40 - v22;
  outlined init with copy of DocumentResourceEnvelope(v25, &v40 - v22, type metadata accessor for Constraints);
  outlined init with copy of DocumentResourceEnvelope(v43, v24, type metadata accessor for Constraints);
  v43 = v26;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      outlined init with copy of DocumentResourceEnvelope(v43, v14, type metadata accessor for Constraints);
      v29 = *v14;
      v28 = v14[1];
      if (swift_getEnumCaseMultiPayload() != 2)
      {
        goto LABEL_24;
      }

      goto LABEL_12;
    }

    if (EnumCaseMultiPayload == 3)
    {
      outlined init with copy of DocumentResourceEnvelope(v43, v11, type metadata accessor for Constraints);
      v29 = *v11;
      v28 = v11[1];
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_24;
      }

LABEL_12:
      if (v29 != *v24 || v28 != v24[1])
      {
        goto LABEL_22;
      }

LABEL_27:

      goto LABEL_28;
    }

    outlined init with copy of DocumentResourceEnvelope(v43, v8, type metadata accessor for Constraints);
    v29 = *v8;
    v28 = v8[1];
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      goto LABEL_12;
    }

LABEL_24:

LABEL_25:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v43, &_s15TokenGeneration11ConstraintsO_ACtMd, &_s15TokenGeneration11ConstraintsO_ACtMR);
    goto LABEL_26;
  }

  v31 = v41;
  v30 = v42;
  if (!EnumCaseMultiPayload)
  {
    outlined init with copy of DocumentResourceEnvelope(v43, v20, type metadata accessor for Constraints);
    if (!swift_getEnumCaseMultiPayload())
    {
      (*(v31 + 32))(v5, v24, v30);
      v37 = static GenerationSchema.== infix(_:_:)();
      v39 = *(v31 + 8);
      v39(v5, v30);
      v39(v20, v30);
      outlined destroy of DocumentResourceEnvelope(v43, type metadata accessor for Constraints);
      return v37 & 1;
    }

    (*(v31 + 8))(v20, v30);
    goto LABEL_25;
  }

  outlined init with copy of DocumentResourceEnvelope(v43, v17, type metadata accessor for Constraints);
  v34 = *v17;
  v33 = v17[1];
  if (swift_getEnumCaseMultiPayload() != 1)
  {
    goto LABEL_24;
  }

  if (v34 == *v24 && v33 == v24[1])
  {
    goto LABEL_27;
  }

LABEL_22:
  v36 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if (v36)
  {
LABEL_28:
    outlined destroy of DocumentResourceEnvelope(v43, type metadata accessor for Constraints);
    v37 = 1;
    return v37 & 1;
  }

  outlined destroy of DocumentResourceEnvelope(v43, type metadata accessor for Constraints);
LABEL_26:
  v37 = 0;
  return v37 & 1;
}

uint64_t specialized static RequestMetadata.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v2 = a1[2];
  v4 = a1[3];
  v3 = a1[4];
  v6 = a1[5];
  v5 = a1[6];
  v7 = a2[2];
  v8 = a2[3];
  v10 = a2[4];
  v9 = a2[5];
  v11 = a2[6];
  if ((*a1 != *a2 || a1[1] != a2[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v2 != v7 || v4 != v8) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  if (v6)
  {
    if (v9 && (v3 == v10 && v6 == v9 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0))
    {
      goto LABEL_12;
    }

    return 0;
  }

  if (v9)
  {
    return 0;
  }

LABEL_12:

  return _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_SSTt1g5(v5, v11);
}

uint64_t specialized static ToolType.== infix(_:_:)(char *a1, uint64_t a2)
{
  v43 = a1;
  v44 = a2;
  v38 = type metadata accessor for FunctionDescription(0);
  MEMORY[0x1EEE9AC00](v38);
  v39 = (&v37 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  v3 = type metadata accessor for FileGenerationParameters();
  v42 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ImageGenerationParameters();
  v41 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ToolType(0);
  MEMORY[0x1EEE9AC00](v9);
  v40 = (&v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v37 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration8ToolTypeO_ACtMd, &_s15TokenGeneration8ToolTypeO_ACtMR);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = &v37 - v18;
  v21 = *(v20 + 56);
  outlined init with copy of DocumentResourceEnvelope(v43, &v37 - v18, type metadata accessor for ToolType);
  outlined init with copy of DocumentResourceEnvelope(v44, &v19[v21], type metadata accessor for ToolType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v43 = v5;
    v44 = v6;
    v24 = v41;
    v23 = v42;
    if (EnumCaseMultiPayload)
    {
      outlined init with copy of DocumentResourceEnvelope(v19, v13, type metadata accessor for ToolType);
      if (swift_getEnumCaseMultiPayload() != 1)
      {
        (*(v23 + 8))(v13, v3);
        goto LABEL_24;
      }

      v28 = v23;
      v29 = &v19[v21];
      v30 = v43;
      (*(v23 + 32))(v43, v29, v3);
      v27 = static FileGenerationParameters.== infix(_:_:)();
      v31 = *(v28 + 8);
      v31(v30, v3);
      v31(v13, v3);
    }

    else
    {
      outlined init with copy of DocumentResourceEnvelope(v19, v16, type metadata accessor for ToolType);
      if (swift_getEnumCaseMultiPayload())
      {
        (*(v24 + 8))(v16, v44);
        goto LABEL_24;
      }

      v32 = v24;
      v33 = *(v24 + 32);
      v34 = v44;
      v33(v8, &v19[v21], v44);
      v27 = static ImageGenerationParameters.== infix(_:_:)();
      v35 = *(v32 + 8);
      v35(v8, v34);
      v35(v16, v34);
    }

    outlined destroy of DocumentResourceEnvelope(v19, type metadata accessor for ToolType);
    return v27 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v25 = v40;
    outlined init with copy of DocumentResourceEnvelope(v19, v40, type metadata accessor for ToolType);
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      v26 = v39;
      outlined init with take of DocumentRegistrationEnvelope(&v19[v21], v39, type metadata accessor for FunctionDescription);
      if ((*v25 != *v26 || v25[1] != v26[1]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (v25[2] != v26[2] || v25[3] != v26[3]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0 || (static Schema.== infix(_:_:)() & 1) == 0)
      {
        outlined destroy of DocumentResourceEnvelope(v26, type metadata accessor for FunctionDescription);
        outlined destroy of DocumentResourceEnvelope(v25, type metadata accessor for FunctionDescription);
        outlined destroy of DocumentResourceEnvelope(v19, type metadata accessor for ToolType);
        goto LABEL_25;
      }

      outlined destroy of DocumentResourceEnvelope(v26, type metadata accessor for FunctionDescription);
      outlined destroy of DocumentResourceEnvelope(v25, type metadata accessor for FunctionDescription);
      goto LABEL_19;
    }

    outlined destroy of DocumentResourceEnvelope(v25, type metadata accessor for FunctionDescription);
LABEL_24:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v19, &_s15TokenGeneration8ToolTypeO_ACtMd, &_s15TokenGeneration8ToolTypeO_ACtMR);
LABEL_25:
    v27 = 0;
    return v27 & 1;
  }

  if (EnumCaseMultiPayload != 3)
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      goto LABEL_19;
    }

    goto LABEL_24;
  }

  if (swift_getEnumCaseMultiPayload() != 3)
  {
    goto LABEL_24;
  }

LABEL_19:
  outlined destroy of DocumentResourceEnvelope(v19, type metadata accessor for ToolType);
  v27 = 1;
  return v27 & 1;
}

uint64_t specialized static PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v62 = a1;
  v63 = a2;
  v2 = type metadata accessor for Prompt.PreprocessedImageData();
  v59 = *(v2 - 8);
  v60 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v55 = &v54 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for Prompt.ImageEmbeddingData();
  v57 = *(v4 - 8);
  v58 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v54 = &v54 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Prompt.ImageData();
  v61 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope(0);
  MEMORY[0x1EEE9AC00](v9);
  v56 = &v54 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v54 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v54 - v15);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v54 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v54 - v21;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingF0V09ComponentF0V07ContentF0O_AJtMd, &_s15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingF0V09ComponentF0V07ContentF0O_AJtMR);
  MEMORY[0x1EEE9AC00](v23 - 8);
  v25 = &v54 - v24;
  v27 = &v54 + *(v26 + 56) - v24;
  outlined init with copy of DocumentResourceEnvelope(v62, &v54 - v24, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope);
  outlined init with copy of DocumentResourceEnvelope(v63, v27, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v36 = v8;
    v37 = v61;
    if (EnumCaseMultiPayload)
    {
      outlined init with copy of DocumentResourceEnvelope(v25, v19, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        (*(v37 + 32))(v36, v27, v6);
        v32 = static Prompt.ImageData.== infix(_:_:)();
        v52 = *(v37 + 8);
        v52(v36, v6);
        v52(v19, v6);
        goto LABEL_28;
      }

      (*(v37 + 8))(v19, v6);
      goto LABEL_33;
    }

    outlined init with copy of DocumentResourceEnvelope(v25, v22, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope);
    v39 = *v22;
    v38 = *(v22 + 1);
    v40 = v22[16];
    if (!swift_getEnumCaseMultiPayload())
    {
      v41 = v27[16];
      if (v39 != *v27 || v38 != *(v27 + 1))
      {
        v43 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v43 & 1) != 0 && ((v40 ^ v41) & 1) == 0)
        {
          goto LABEL_39;
        }

        goto LABEL_38;
      }

      if (v40 != v41)
      {
        goto LABEL_38;
      }

LABEL_39:
      outlined destroy of DocumentResourceEnvelope(v25, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope);
      v32 = 1;
      return v32 & 1;
    }

LABEL_22:

LABEL_33:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v25, &_s15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingF0V09ComponentF0V07ContentF0O_AJtMd, &_s15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingF0V09ComponentF0V07ContentF0O_AJtMR);
LABEL_34:
    v32 = 0;
    return v32 & 1;
  }

  if (EnumCaseMultiPayload == 2)
  {
    outlined init with copy of DocumentResourceEnvelope(v25, v16, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope);
    v45 = *v16;
    v44 = v16[1];
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      if (v45 != *v27 || v44 != *(v27 + 1))
      {
        v47 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v47)
        {
          goto LABEL_39;
        }

LABEL_38:
        outlined destroy of DocumentResourceEnvelope(v25, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope);
        goto LABEL_34;
      }

      goto LABEL_39;
    }

    goto LABEL_22;
  }

  if (EnumCaseMultiPayload != 3)
  {
    v48 = v56;
    outlined init with copy of DocumentResourceEnvelope(v25, v56, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope);
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      v50 = v59;
      v49 = v60;
      v51 = v55;
      (*(v59 + 32))(v55, v27, v60);
      v32 = static Prompt.PreprocessedImageData.== infix(_:_:)();
      v33 = *(v50 + 8);
      v33(v51, v49);
      v34 = v48;
      v35 = v49;
      goto LABEL_25;
    }

    (*(v59 + 8))(v48, v60);
    goto LABEL_33;
  }

  outlined init with copy of DocumentResourceEnvelope(v25, v13, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope);
  if (swift_getEnumCaseMultiPayload() != 3)
  {
    (*(v57 + 8))(v13, v58);
    goto LABEL_33;
  }

  v30 = v57;
  v29 = v58;
  v31 = v54;
  (*(v57 + 32))(v54, v27, v58);
  v32 = static Prompt.ImageEmbeddingData.== infix(_:_:)();
  v33 = *(v30 + 8);
  v33(v31, v29);
  v34 = v13;
  v35 = v29;
LABEL_25:
  v33(v34, v35);
LABEL_28:
  outlined destroy of DocumentResourceEnvelope(v25, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope);
  return v32 & 1;
}

uint64_t specialized static FetchTokenizerMetadataResponse.== infix(_:_:)(void *a1, uint64_t *a2)
{
  v2 = a1[2];
  v3 = *(a2 + 16);
  if (*(a1 + 16) == 0xFF)
  {
    if (v3 == 255)
    {
      return 1;
    }
  }

  else if (v3 != 255)
  {
    v4 = *a1;
    v5 = *a2;
    if (v2)
    {
      if ((v3 & 1) == 0 || v4 != v5)
      {
        return 0;
      }
    }

    else if ((v3 & 1) != 0 || v4 != v5 || a1[1] != a2[1])
    {
      return 0;
    }

    if (HIDWORD(v2) == *(a2 + 5))
    {
      return 1;
    }
  }

  return 0;
}

BOOL specialized static PromptTemplateInfoEnvelope.== infix(_:_:)(uint64_t *a1, uint64_t *a2, __n128 a3)
{
  v5 = type metadata accessor for Locale();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSg_ADtMd, &_s10Foundation6LocaleVSg_ADtMR);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v23 - v13;
  _sSDsSQR_rlE2eeoiySbSDyxq_G_ABtFZSS_15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingG0VTt1g5(*a1, *a2);
  if ((v15 & 1) == 0 || (a1[1] != a2[1] || a1[2] != a2[2]) && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v24 = v8;
  v16 = *(type metadata accessor for PromptTemplateInfoEnvelope(0) + 24);
  v17 = *(v12 + 48);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + v16, v14, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2 + v16, &v14[v17], &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v18 = *(v6 + 48);
  if (v18(v14, 1, v5) == 1)
  {
    if (v18(&v14[v17], 1, v5) == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
      return 1;
    }

    goto LABEL_10;
  }

  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, v11, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  if (v18(&v14[v17], 1, v5) == 1)
  {
    (*(v6 + 8))(v11, v5);
LABEL_10:
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s10Foundation6LocaleVSg_ADtMd, &_s10Foundation6LocaleVSg_ADtMR);
    return 0;
  }

  v20 = v24;
  (*(v6 + 32))(v24, &v14[v17], v5);
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770], MEMORY[0x1E6969788]);
  v21 = dispatch thunk of static Equatable.== infix(_:_:)();
  v22 = *(v6 + 8);
  v22(v20, v5);
  v22(v11, v5);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  return (v21 & 1) != 0;
}

uint64_t specialized ImageFormatEnvelope.init(sealing:)(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for Prompt.ImageAttachment.Format();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3, v5);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == *MEMORY[0x1E69DA730] || v8 == *MEMORY[0x1E69DA728])
  {
    v10 = v8 != *MEMORY[0x1E69DA730];
    (*(v4 + 8))(a1, v3);
    return v10;
  }

  else
  {
    v13 = 0;
    v14 = 0xE000000000000000;
    _StringGuts.grow(_:)(23);

    v13 = 0xD000000000000015;
    v14 = 0x80000001ABA41A40;
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Prompt.ImageAttachment.Format and conformance Prompt.ImageAttachment.Format, MEMORY[0x1E69DA738], MEMORY[0x1E69DA740]);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1AC5A5BC0](v11);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized ImageEmbeddingEncodingEnvelope.init(sealing:)(uint64_t a1, __n128 a2)
{
  v3 = type metadata accessor for Prompt.ImageEmbeddingAttachment.Encoding();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v7, a1, v3, v5);
  v8 = (*(v4 + 88))(v7, v3);
  if (v8 == *MEMORY[0x1E69DA780] || v8 == *MEMORY[0x1E69DA788])
  {
    v10 = v8 != *MEMORY[0x1E69DA780];
    (*(v4 + 8))(a1, v3);
    return v10;
  }

  else
  {
    v13 = 0;
    v14 = 0xE000000000000000;
    _StringGuts.grow(_:)(35);

    v13 = 0xD000000000000021;
    v14 = 0x80000001ABA41A60;
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Prompt.ImageEmbeddingAttachment.Encoding and conformance Prompt.ImageEmbeddingAttachment.Encoding, MEMORY[0x1E69DA790], MEMORY[0x1E69DA798]);
    v11 = dispatch thunk of CustomStringConvertible.description.getter();
    MEMORY[0x1AC5A5BC0](v11);

    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t specialized ToolDefinitionsEnvelope.init(sealing:)(uint64_t a1)
{
  v2 = type metadata accessor for Tool.Type();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v46 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v46 - v7;
  v9 = type metadata accessor for Tool();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v67 = &v46 - v14;
  v15 = type metadata accessor for ToolDefinitionsEnvelope.ToolEnvelope(0);
  v63 = *(v15 - 8);
  v64 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v62 = &v46 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v65 = &v46 - v18;
  v19 = Prompt.ToolDefinitions.tools.getter();
  v20 = *(v19 + 16);
  if (v20)
  {
    v66 = v12;
    v46 = v5;
    v49 = a1;
    v70 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v20, 0);
    v22 = *(v10 + 16);
    v21 = v10 + 16;
    v23 = v70;
    v24 = *(v21 + 64);
    v48 = v19;
    v25 = v19 + ((v24 + 32) & ~v24);
    v58 = *(v21 + 56);
    v59 = v22;
    v57 = (v3 + 88);
    v56 = *MEMORY[0x1E69A0DD0];
    v53 = *MEMORY[0x1E69A0DB8];
    v52 = *MEMORY[0x1E69A0DB0];
    v51 = *MEMORY[0x1E69A0DC8];
    v50 = *MEMORY[0x1E69A0DC0];
    v60 = v21;
    v55 = (v21 - 8);
    v47 = v3;
    v54 = (v3 + 96);
    v61 = v2;
    while (1)
    {
      v26 = v67;
      v27 = v9;
      v28 = v9;
      v29 = v8;
      v30 = v59;
      v59(v67, v25, v27);
      v31 = v66;
      v30(v66, v26, v28);
      v8 = v29;
      Tool.type.getter();
      v32 = (*v57)(v29, v2);
      if (v32 == v56)
      {
        v33 = *v55;
        (*v55)(v31, v28);
        (*v54)(v29, v2);
        v34 = type metadata accessor for Tool.Function();
        v35 = v62;
        (*(*(v34 - 8) + 32))(v62, v29, v34);
        v9 = v28;
      }

      else if (v32 == v53)
      {
        v33 = *v55;
        v9 = v28;
        (*v55)(v66, v28);
        (*v54)(v8, v2);
        v36 = type metadata accessor for ImageGenerationParameters();
        v35 = v62;
        (*(*(v36 - 8) + 32))(v62, v8, v36);
      }

      else
      {
        v9 = v28;
        if (v32 == v52)
        {
          v33 = *v55;
          (*v55)(v66, v28);
          (*v54)(v8, v2);
          v37 = type metadata accessor for FileGenerationParameters();
          v35 = v62;
          (*(*(v37 - 8) + 32))(v62, v8, v37);
        }

        else
        {
          if (v32 != v51 && v32 != v50)
          {
            v68 = 0;
            v69 = 0xE000000000000000;
            _StringGuts.grow(_:)(21);
            MEMORY[0x1AC5A5BC0](0xD000000000000013, 0x80000001ABA41750);
            v45 = v46;
            Tool.type.getter();
            _print_unlocked<A, B>(_:_:)();
            (*(v47 + 8))(v45, v2);
            result = _assertionFailure(_:_:file:line:flags:)();
            __break(1u);
            return result;
          }

          v33 = *v55;
          (*v55)(v66, v28);
          v35 = v62;
        }
      }

      swift_storeEnumTagMultiPayload();
      v38 = v35;
      v39 = v65;
      outlined init with take of DocumentRegistrationEnvelope(v38, v65, type metadata accessor for ToolDefinitionsEnvelope.ToolEnvelope);
      v33(v67, v9);
      v70 = v23;
      v41 = *(v23 + 16);
      v40 = *(v23 + 24);
      if (v41 >= v40 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v40 > 1), v41 + 1, 1);
        v39 = v65;
        v23 = v70;
      }

      *(v23 + 16) = v41 + 1;
      outlined init with take of DocumentRegistrationEnvelope(v39, v23 + ((*(v63 + 80) + 32) & ~*(v63 + 80)) + *(v63 + 72) * v41, type metadata accessor for ToolDefinitionsEnvelope.ToolEnvelope);
      v25 += v58;
      --v20;
      v2 = v61;
      if (!v20)
      {
        v42 = type metadata accessor for Prompt.ToolDefinitions();
        (*(*(v42 - 8) + 8))(v49, v42);

        return v23;
      }
    }
  }

  v43 = type metadata accessor for Prompt.ToolDefinitions();
  (*(*(v43 - 8) + 8))(a1, v43);
  return MEMORY[0x1E69E7CC0];
}

uint64_t specialized PromptEnvelope.init(sealing:xpcData:)(uint64_t a1, uint64_t a2)
{
  v57 = type metadata accessor for Prompt.SpecialToken();
  v4 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v6 = v44 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = type metadata accessor for Prompt.Delimiter();
  v7 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v53 = v44 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v60 = v44 - v10;
  v11 = type metadata accessor for PromptEnvelope.DelimiterEnvelope(0);
  v54 = *(v11 - 8);
  v55 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = (v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v14 = Prompt.string.getter();
  v16 = v15;
  v17 = Prompt.delimiters.getter();
  v18 = *(v17 + 16);
  if (v18)
  {
    v44[2] = v16;
    v45 = v14;
    v46 = a2;
    v47 = a1;
    v61 = MEMORY[0x1E69E7CC0];
    v59 = v18;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
    v19 = v61;
    v21 = *(v7 + 16);
    v20 = v7 + 16;
    v22 = (*(v20 + 64) + 32) & ~*(v20 + 64);
    v44[1] = v17;
    v23 = v17 + v22;
    v50 = *(v20 + 56);
    v51 = v21;
    v48 = (v20 - 8);
    v49 = v4 + 8;
    v52 = v20;
    v24 = (v4 + 8);
    do
    {
      v58 = v19;
      v25 = v60;
      v26 = v56;
      v27 = v51;
      v51(v60, v23, v56);
      v28 = v53;
      v27(v53, v25, v26);
      v13[4] = Prompt.Delimiter.position.getter();
      Prompt.Delimiter.token.getter();
      v29 = Prompt.SpecialToken.identifier.getter();
      v31 = v30;
      v32 = *v24;
      v33 = v57;
      (*v24)(v6, v57);
      *v13 = v29;
      v13[1] = v31;
      Prompt.Delimiter.token.getter();
      v34 = Prompt.SpecialToken.instance.getter();
      v36 = v35;
      v32(v6, v33);
      v13[2] = v34;
      v13[3] = v36;
      v13[5] = Prompt.Delimiter.priority.getter();
      Prompt.Delimiter.token.getter();
      v37 = v55;
      Prompt.SpecialToken.locale.getter();
      v32(v6, v33);
      Prompt.Delimiter.token.getter();
      LOBYTE(v34) = Prompt.SpecialToken.annotationOnly.getter();
      v32(v6, v33);
      v38 = *v48;
      (*v48)(v28, v26);
      v19 = v58;
      v38(v60, v26);
      *(v13 + *(v37 + 36)) = v34 & 1;
      v61 = v19;
      v40 = *(v19 + 16);
      v39 = *(v19 + 24);
      if (v40 >= v39 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1);
        v19 = v61;
      }

      *(v19 + 16) = v40 + 1;
      outlined init with take of DocumentRegistrationEnvelope(v13, v19 + ((*(v54 + 80) + 32) & ~*(v54 + 80)) + *(v54 + 72) * v40, type metadata accessor for PromptEnvelope.DelimiterEnvelope);
      v23 += v50;
      --v59;
    }

    while (v59);

    a2 = v46;
    a1 = v47;
    v14 = v45;
  }

  else
  {
  }

  v41 = Prompt.attachments.getter();
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay15TokenGeneration6PromptV10AttachmentVG_AF0F8Envelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0gH0Vs5NeverOTg504_s15d12Generation14f11Envelope33_ijklmnopq57LLV7sealing7xpcDataAdA0C0V_3XPC13XPCDictionaryVztcfcAD010G14D0VAH0S0VXEfU_3XPC13XPCDictionaryVTf1cn_n(v41, a2);

  v42 = type metadata accessor for Prompt();
  (*(*(v42 - 8) + 8))(a1, v42);
  return v14;
}

BOOL specialized static TokenGenerationInterfaceVersion.isVersionSupported(requestVersion:)(uint64_t a1)
{
  v2 = type metadata accessor for Version();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v30 - v7;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v30 - v10;
  v33 = Version.major.getter();
  if (one-time initialization token for currentInterfaceVersion != -1)
  {
    swift_once();
  }

  __swift_project_value_buffer(v2, static TokenGenerationInterfaceVersion.currentInterfaceVersion);
  v32 = Version.major.getter();
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.inference);
  v13 = *(v3 + 16);
  v13(v11, a1, v2);
  v13(v8, a1, v2);
  v13(v5, a1, v2);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v31 = v15;
    v17 = v16;
    v30 = swift_slowAlloc();
    v34 = v30;
    *v17 = 67110658;
    v18 = Version.major.getter();
    v19 = *(v3 + 8);
    v19(v11, v2);
    *(v17 + 4) = v18;
    *(v17 + 8) = 1024;
    v20 = Version.minor.getter();
    v19(v8, v2);
    *(v17 + 10) = v20;
    *(v17 + 14) = 1024;
    v21 = Version.patch.getter();
    v19(v5, v2);
    *(v17 + 16) = v21;
    *(v17 + 20) = 1024;
    *(v17 + 22) = Version.major.getter();
    *(v17 + 26) = 1024;
    *(v17 + 28) = Version.minor.getter();
    *(v17 + 32) = 1024;
    *(v17 + 34) = Version.patch.getter();
    *(v17 + 38) = 2080;
    v23 = v32;
    v22 = v33;
    if (v32 < v33)
    {
      v24 = 7630702;
    }

    else
    {
      v24 = 0;
    }

    if (v32 < v33)
    {
      v25 = 0xE300000000000000;
    }

    else
    {
      v25 = 0xE000000000000000;
    }

    v26 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v24, v25, &v34);

    *(v17 + 40) = v26;
    _os_log_impl(&dword_1AB828000, v14, v31, "    Client Request Interface Version: v%u.%u.%u\n    Current Inference Provider Interface Version: v%u.%u.%u\n    Compatibility: Request interface is %s supported", v17, 0x30u);
    v27 = v30;
    __swift_destroy_boxed_opaque_existential_0(v30);
    MEMORY[0x1AC5A6CD0](v27, -1, -1);
    MEMORY[0x1AC5A6CD0](v17, -1, -1);
  }

  else
  {
    v28 = *(v3 + 8);
    v28(v5, v2);
    v28(v8, v2);
    v28(v11, v2);

    v23 = v32;
    v22 = v33;
  }

  return v23 >= v22;
}

uint64_t specialized ModelInformationEnvelope.init(sealing:)(uint64_t *a1)
{
  v1 = *a1;
  v2 = *(*a1 + 16);
  v3 = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v15 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v2, 0);
    v3 = v15;
    v4 = (v1 + 72);
    do
    {
      v5 = *(v4 - 5);
      v6 = *(v4 - 4);
      v7 = *(v4 - 2);
      v14 = *(v4 - 3);
      v8 = *(v4 - 1);
      v9 = *v4;

      outlined copy of Data._Representation(v8, v9);
      v11 = *(v15 + 16);
      v10 = *(v15 + 24);
      if (v11 >= v10 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v10 > 1), v11 + 1, 1);
      }

      v4 += 6;
      *(v15 + 16) = v11 + 1;
      v12 = (v15 + 48 * v11);
      v12[4] = v5;
      v12[5] = v6;
      v12[6] = v14;
      v12[7] = v7;
      v12[8] = v8;
      v12[9] = v9;
      --v2;
    }

    while (v2);
  }

  return v3;
}

__n128 specialized PromptRenderingEnvelope.init(sealing:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Prompt.Rendering.Source();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Prompt.Rendering.source.getter();
  v8 = Prompt.string.getter();
  v30 = v9;
  v31 = v8;
  v10 = Prompt.Rendering.Source.version.getter();
  v28 = v11;
  v29 = v10;
  (*(v5 + 8))(v7, v4);
  v27 = Prompt.Rendering.segments.getter();
  v12 = Prompt.Rendering.renderedString.getter();
  v26 = v13;
  v14 = Prompt.Rendering.originalPrompt.getter();
  v16 = v15;
  v17 = Prompt.Rendering.tokenIDs.getter();
  v18 = Prompt.Rendering.userInfo.getter();
  v19 = Prompt.Rendering.detokenizedString.getter();
  v21 = v20;
  v22 = type metadata accessor for Prompt.Rendering();
  (*(*(v22 - 8) + 8))(a1, v22);
  *&v33 = v31;
  *(&v33 + 1) = v30;
  *&v34 = v29;
  *(&v34 + 1) = v28;
  *&v35 = v27;
  *(&v35 + 1) = v12;
  v36.n128_u64[0] = v26;
  v36.n128_u64[1] = v14;
  *&v37 = v16;
  *(&v37 + 1) = v17;
  *&v38 = v18;
  *(&v38 + 1) = v19;
  v39 = v21;
  v40[0] = v31;
  v40[1] = v30;
  v40[2] = v29;
  v40[3] = v28;
  v40[4] = v27;
  v40[5] = v12;
  v40[6] = v26;
  v40[7] = v14;
  v40[8] = v16;
  v40[9] = v17;
  v40[10] = v18;
  v40[11] = v19;
  v40[12] = v21;
  outlined init with copy of PromptRenderingEnvelope(&v33, &v32);
  outlined destroy of PromptRenderingEnvelope(v40);
  v23 = v38;
  *(a2 + 64) = v37;
  *(a2 + 80) = v23;
  *(a2 + 96) = v39;
  v24 = v34;
  *a2 = v33;
  *(a2 + 16) = v24;
  result = v36;
  *(a2 + 32) = v35;
  *(a2 + 48) = result;
  return result;
}

unint64_t lazy protocol witness table accessor for type CountTokensResponse.CodingKeys and conformance CountTokensResponse.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CountTokensResponse.CodingKeys and conformance CountTokensResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type CountTokensResponse.CodingKeys and conformance CountTokensResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CountTokensResponse.CodingKeys and conformance CountTokensResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CountTokensResponse.CodingKeys and conformance CountTokensResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type CountTokensResponse.CodingKeys and conformance CountTokensResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CountTokensResponse.CodingKeys and conformance CountTokensResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CountTokensResponse.CodingKeys and conformance CountTokensResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type CountTokensResponse.CodingKeys and conformance CountTokensResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CountTokensResponse.CodingKeys and conformance CountTokensResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CountTokensResponse.CodingKeys and conformance CountTokensResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type CountTokensResponse.CodingKeys and conformance CountTokensResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CountTokensResponse.CodingKeys and conformance CountTokensResponse.CodingKeys);
  }

  return result;
}

uint64_t partial apply for closure #1 in PromptTemplateInfoEnvelope.unseal(_:)(uint64_t *a1)
{
  return partial apply for closure #1 in PromptTemplateInfoEnvelope.unseal(_:)(a1);
}

{
  v2 = *a1;
  v4[2] = *(v1 + 16);
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV010AttachmentG0VG_AF0F0V0Q0Vs5NeverOTg5Tm(partial apply for closure #1 in PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.unseal(_:), v4, v2, MEMORY[0x1E69DA8B8], specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope);
  return PromptTemplateInfo.RichVariableBinding.init(components:)();
}

unint64_t lazy protocol witness table accessor for type CountTokensPromptTemplateRequest.CodingKeys and conformance CountTokensPromptTemplateRequest.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CountTokensPromptTemplateRequest.CodingKeys and conformance CountTokensPromptTemplateRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type CountTokensPromptTemplateRequest.CodingKeys and conformance CountTokensPromptTemplateRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CountTokensPromptTemplateRequest.CodingKeys and conformance CountTokensPromptTemplateRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CountTokensPromptTemplateRequest.CodingKeys and conformance CountTokensPromptTemplateRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type CountTokensPromptTemplateRequest.CodingKeys and conformance CountTokensPromptTemplateRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CountTokensPromptTemplateRequest.CodingKeys and conformance CountTokensPromptTemplateRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CountTokensPromptTemplateRequest.CodingKeys and conformance CountTokensPromptTemplateRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type CountTokensPromptTemplateRequest.CodingKeys and conformance CountTokensPromptTemplateRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CountTokensPromptTemplateRequest.CodingKeys and conformance CountTokensPromptTemplateRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CountTokensPromptTemplateRequest.CodingKeys and conformance CountTokensPromptTemplateRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type CountTokensPromptTemplateRequest.CodingKeys and conformance CountTokensPromptTemplateRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CountTokensPromptTemplateRequest.CodingKeys and conformance CountTokensPromptTemplateRequest.CodingKeys);
  }

  return result;
}

void outlined consume of PromptEnvelope?(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

uint64_t outlined assign with take of PromptVariantEnvelope(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

unint64_t lazy protocol witness table accessor for type CompletePromptTemplateRequest.CodingKeys and conformance CompletePromptTemplateRequest.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CompletePromptTemplateRequest.CodingKeys and conformance CompletePromptTemplateRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompletePromptTemplateRequest.CodingKeys and conformance CompletePromptTemplateRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompletePromptTemplateRequest.CodingKeys and conformance CompletePromptTemplateRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompletePromptTemplateRequest.CodingKeys and conformance CompletePromptTemplateRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompletePromptTemplateRequest.CodingKeys and conformance CompletePromptTemplateRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompletePromptTemplateRequest.CodingKeys and conformance CompletePromptTemplateRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompletePromptTemplateRequest.CodingKeys and conformance CompletePromptTemplateRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompletePromptTemplateRequest.CodingKeys and conformance CompletePromptTemplateRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompletePromptTemplateRequest.CodingKeys and conformance CompletePromptTemplateRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompletePromptTemplateRequest.CodingKeys and conformance CompletePromptTemplateRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompletePromptTemplateRequest.CodingKeys and conformance CompletePromptTemplateRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompletePromptTemplateRequest.CodingKeys and conformance CompletePromptTemplateRequest.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [ToolDescriptionEnvelope] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [ToolDescriptionEnvelope] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [ToolDescriptionEnvelope] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15TokenGeneration23ToolDescriptionEnvelopeVGMd, &_sSay15TokenGeneration23ToolDescriptionEnvelopeVGMR);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type ToolDescriptionEnvelope and conformance ToolDescriptionEnvelope, type metadata accessor for ToolDescriptionEnvelope, &protocol conformance descriptor for ToolDescriptionEnvelope);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ToolDescriptionEnvelope] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [ToolDescriptionEnvelope] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [ToolDescriptionEnvelope] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15TokenGeneration23ToolDescriptionEnvelopeVGMd, &_sSay15TokenGeneration23ToolDescriptionEnvelopeVGMR);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type ToolDescriptionEnvelope and conformance ToolDescriptionEnvelope, type metadata accessor for ToolDescriptionEnvelope, &protocol conformance descriptor for ToolDescriptionEnvelope);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [ToolDescriptionEnvelope] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ToolChoiceEnvelope and conformance ToolChoiceEnvelope()
{
  result = lazy protocol witness table cache variable for type ToolChoiceEnvelope and conformance ToolChoiceEnvelope;
  if (!lazy protocol witness table cache variable for type ToolChoiceEnvelope and conformance ToolChoiceEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolChoiceEnvelope and conformance ToolChoiceEnvelope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolChoiceEnvelope and conformance ToolChoiceEnvelope;
  if (!lazy protocol witness table cache variable for type ToolChoiceEnvelope and conformance ToolChoiceEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolChoiceEnvelope and conformance ToolChoiceEnvelope);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [DocumentResourceIdentifier] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [DocumentResourceIdentifier] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [DocumentResourceIdentifier] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay26GenerativeModelsFoundation26DocumentResourceIdentifierVGMd, &_sSay26GenerativeModelsFoundation26DocumentResourceIdentifierVGMR);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type DocumentResourceIdentifier and conformance DocumentResourceIdentifier, MEMORY[0x1E69C6178], MEMORY[0x1E69C6180]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DocumentResourceIdentifier] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [DocumentResourceIdentifier] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [DocumentResourceIdentifier] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay26GenerativeModelsFoundation26DocumentResourceIdentifierVGMd, &_sSay26GenerativeModelsFoundation26DocumentResourceIdentifierVGMR);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type DocumentResourceIdentifier and conformance DocumentResourceIdentifier, MEMORY[0x1E69C6178], MEMORY[0x1E69C6198]);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [DocumentResourceIdentifier] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CompletePromptRequest.CodingKeys and conformance CompletePromptRequest.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CompletePromptRequest.CodingKeys and conformance CompletePromptRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompletePromptRequest.CodingKeys and conformance CompletePromptRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompletePromptRequest.CodingKeys and conformance CompletePromptRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompletePromptRequest.CodingKeys and conformance CompletePromptRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompletePromptRequest.CodingKeys and conformance CompletePromptRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompletePromptRequest.CodingKeys and conformance CompletePromptRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompletePromptRequest.CodingKeys and conformance CompletePromptRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompletePromptRequest.CodingKeys and conformance CompletePromptRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompletePromptRequest.CodingKeys and conformance CompletePromptRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompletePromptRequest.CodingKeys and conformance CompletePromptRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompletePromptRequest.CodingKeys and conformance CompletePromptRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompletePromptRequest.CodingKeys and conformance CompletePromptRequest.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ClassifyPromptRequest.CodingKeys and conformance ClassifyPromptRequest.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ClassifyPromptRequest.CodingKeys and conformance ClassifyPromptRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassifyPromptRequest.CodingKeys and conformance ClassifyPromptRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifyPromptRequest.CodingKeys and conformance ClassifyPromptRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassifyPromptRequest.CodingKeys and conformance ClassifyPromptRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassifyPromptRequest.CodingKeys and conformance ClassifyPromptRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifyPromptRequest.CodingKeys and conformance ClassifyPromptRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassifyPromptRequest.CodingKeys and conformance ClassifyPromptRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassifyPromptRequest.CodingKeys and conformance ClassifyPromptRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifyPromptRequest.CodingKeys and conformance ClassifyPromptRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassifyPromptRequest.CodingKeys and conformance ClassifyPromptRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassifyPromptRequest.CodingKeys and conformance ClassifyPromptRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifyPromptRequest.CodingKeys and conformance ClassifyPromptRequest.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ClassificationParametersEnvelope and conformance ClassificationParametersEnvelope()
{
  result = lazy protocol witness table cache variable for type ClassificationParametersEnvelope and conformance ClassificationParametersEnvelope;
  if (!lazy protocol witness table cache variable for type ClassificationParametersEnvelope and conformance ClassificationParametersEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassificationParametersEnvelope and conformance ClassificationParametersEnvelope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassificationParametersEnvelope and conformance ClassificationParametersEnvelope;
  if (!lazy protocol witness table cache variable for type ClassificationParametersEnvelope and conformance ClassificationParametersEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassificationParametersEnvelope and conformance ClassificationParametersEnvelope);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ClassifyPromptTemplateRequest.CodingKeys and conformance ClassifyPromptTemplateRequest.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ClassifyPromptTemplateRequest.CodingKeys and conformance ClassifyPromptTemplateRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassifyPromptTemplateRequest.CodingKeys and conformance ClassifyPromptTemplateRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifyPromptTemplateRequest.CodingKeys and conformance ClassifyPromptTemplateRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassifyPromptTemplateRequest.CodingKeys and conformance ClassifyPromptTemplateRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassifyPromptTemplateRequest.CodingKeys and conformance ClassifyPromptTemplateRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifyPromptTemplateRequest.CodingKeys and conformance ClassifyPromptTemplateRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassifyPromptTemplateRequest.CodingKeys and conformance ClassifyPromptTemplateRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassifyPromptTemplateRequest.CodingKeys and conformance ClassifyPromptTemplateRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifyPromptTemplateRequest.CodingKeys and conformance ClassifyPromptTemplateRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassifyPromptTemplateRequest.CodingKeys and conformance ClassifyPromptTemplateRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassifyPromptTemplateRequest.CodingKeys and conformance ClassifyPromptTemplateRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifyPromptTemplateRequest.CodingKeys and conformance ClassifyPromptTemplateRequest.CodingKeys);
  }

  return result;
}

uint64_t specialized StreamingRequest.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574656C706D6F63 && a2 == 0xEE0074706D6F7250;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD000000000000016 && 0x80000001ABA41290 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001ABA41270 == a2)
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

unint64_t specialized CompileAdapterRequest.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CompileAdapterRequest.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized CompileAdapterResponse.DraftModelCompileResult.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4D74666172446F6ELL && a2 == 0xEC0000006C65646FLL;
  if (v4 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4379646165726C61 && a2 == 0xEF64656C69706D6FLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001ABA417C0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69706D6F43746F6ELL && a2 == 0xEB0000000064656CLL || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x64656C69706D6F63 && a2 == 0xE800000000000000)
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

unint64_t specialized CountTokensRequest.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CountTokensRequest.CodingKeys.init(rawValue:), v2);

  if (v3 >= 3)
  {
    return 3;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized CountTokensPromptTemplateRequest.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CountTokensPromptTemplateRequest.CodingKeys.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized CompletePromptTemplateRequest.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CompletePromptTemplateRequest.CodingKeys.init(rawValue:), v2);

  if (v3 >= 9)
  {
    return 9;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized CompletePromptRequest.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of CompletePromptRequest.CodingKeys.init(rawValue:), v2);

  if (v3 >= 8)
  {
    return 8;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized ClassifyPromptRequest.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ClassifyPromptRequest.CodingKeys.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t specialized ClassifyPromptTemplateRequest.CodingKeys.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of ClassifyPromptTemplateRequest.CodingKeys.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

uint64_t specialized ClassificationResponseEnvelope.init(sealing:xpcData:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Prompt.Rendering();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v33 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v33 - v12;
  v14 = *a1;
  v16 = a1[2];
  v15 = a1[3];
  *&v42 = a1[1];
  *(&v42 + 1) = v16;
  *&v43 = v15;

  v17 = specialized ModelInformationEnvelope.init(sealing:)(&v42);
  v40 = v18;
  v41 = v17;
  v39 = v19;
  v20 = type metadata accessor for ClassificationResponse(0);
  v21 = *(a1 + *(v20 + 28));
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + *(v20 + 24), v13, &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  if ((*(v5 + 48))(v13, 1, v4) == 1)
  {
    result = outlined destroy of DocumentResourceEnvelope(a1, type metadata accessor for ClassificationResponse);
    v23 = 0;
    v24 = 0uLL;
    v25 = 0uLL;
    v26 = 0uLL;
    v27 = 0uLL;
    v28 = 0uLL;
    v29 = 0uLL;
  }

  else
  {
    (*(v5 + 32))(v10, v13, v4);
    (*(v5 + 16))(v7, v10, v4);
    specialized PromptRenderingEnvelope.init(sealing:)(v7, &v42);
    v37 = v43;
    v38 = v42;
    v36 = v44;
    v35 = v45;
    v34 = v46;
    v33 = v47;
    v23 = v48;
    outlined destroy of DocumentResourceEnvelope(a1, type metadata accessor for ClassificationResponse);
    result = (*(v5 + 8))(v10, v4);
    v29 = v33;
    v28 = v34;
    v27 = v35;
    v26 = v36;
    v25 = v37;
    v24 = v38;
  }

  v31 = v40;
  v30 = v41;
  *a2 = v14;
  *(a2 + 8) = v30;
  v32 = v39;
  *(a2 + 16) = v31;
  *(a2 + 24) = v32;
  *(a2 + 32) = v21;
  *(a2 + 40) = v24;
  *(a2 + 56) = v25;
  *(a2 + 72) = v26;
  *(a2 + 88) = v27;
  *(a2 + 104) = v28;
  *(a2 + 120) = v29;
  *(a2 + 136) = v23;
  return result;
}

unint64_t lazy protocol witness table accessor for type ClassifyPromptResponse.CodingKeys and conformance ClassifyPromptResponse.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ClassifyPromptResponse.CodingKeys and conformance ClassifyPromptResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassifyPromptResponse.CodingKeys and conformance ClassifyPromptResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifyPromptResponse.CodingKeys and conformance ClassifyPromptResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassifyPromptResponse.CodingKeys and conformance ClassifyPromptResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassifyPromptResponse.CodingKeys and conformance ClassifyPromptResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifyPromptResponse.CodingKeys and conformance ClassifyPromptResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassifyPromptResponse.CodingKeys and conformance ClassifyPromptResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassifyPromptResponse.CodingKeys and conformance ClassifyPromptResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifyPromptResponse.CodingKeys and conformance ClassifyPromptResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassifyPromptResponse.CodingKeys and conformance ClassifyPromptResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type ClassifyPromptResponse.CodingKeys and conformance ClassifyPromptResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassifyPromptResponse.CodingKeys and conformance ClassifyPromptResponse.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ClassificationResponseEnvelope and conformance ClassificationResponseEnvelope()
{
  result = lazy protocol witness table cache variable for type ClassificationResponseEnvelope and conformance ClassificationResponseEnvelope;
  if (!lazy protocol witness table cache variable for type ClassificationResponseEnvelope and conformance ClassificationResponseEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassificationResponseEnvelope and conformance ClassificationResponseEnvelope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ClassificationResponseEnvelope and conformance ClassificationResponseEnvelope;
  if (!lazy protocol witness table cache variable for type ClassificationResponseEnvelope and conformance ClassificationResponseEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ClassificationResponseEnvelope and conformance ClassificationResponseEnvelope);
  }

  return result;
}

uint64_t specialized TextContentEnvelope.init(sealing:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for PromptCompletion.DocumentCitation(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v58 = &v50 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for PromptCompletion.URLCitation(0);
  MEMORY[0x1EEE9AC00](v57);
  v56 = &v50 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = type metadata accessor for PromptCompletion.Annotation.Type(0);
  MEMORY[0x1EEE9AC00](v63);
  v8 = &v50 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PromptCompletion.Annotation(0);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (&v50 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = type metadata accessor for AnnotationEnvelope(0);
  v62 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = *a1;
  v18 = a1[1];
  v20 = a1[2];
  v21 = a1[3];
  v54 = a1[4];
  v55 = v21;
  v22 = *(v20 + 16);
  v53 = v20;
  if (v22)
  {
    v23 = v20;
    v61 = &v50 - v17;
    v51 = v19;
    v52 = a2;
    v65 = MEMORY[0x1E69E7CC0];
    v50 = v18;

    v59 = v15;
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
    v24 = v59;
    v64 = v65;
    v25 = v23 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v60 = *(v10 + 72);
    do
    {
      outlined init with copy of DocumentResourceEnvelope(v25, v12, type metadata accessor for PromptCompletion.Annotation);
      *v24 = *v12;
      outlined init with take of DocumentRegistrationEnvelope(v12 + *(v9 + 20), v8, type metadata accessor for PromptCompletion.Annotation.Type);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      v27 = (v24 + *(v13 + 20));
      if (EnumCaseMultiPayload == 1)
      {
        v28 = v58;
        outlined init with take of DocumentRegistrationEnvelope(v8, v58, type metadata accessor for PromptCompletion.DocumentCitation);
        v29 = type metadata accessor for DocumentResourceIdentifier();
        (*(*(v29 - 8) + 32))(v27, v28, v29);
      }

      else
      {
        v30 = v56;
        outlined init with take of DocumentRegistrationEnvelope(v8, v56, type metadata accessor for PromptCompletion.URLCitation);
        v31 = *(v30 + 1);
        *v27 = *v30;
        v27[1] = v31;
        v32 = *(v57 + 20);
        v33 = v13;
        v34 = v12;
        v35 = v9;
        v36 = v8;
        v37 = *(type metadata accessor for AnnotationEnvelope.URLCitationEnvelope(0) + 20);
        v38 = type metadata accessor for URL();
        v39 = v27 + v37;
        v8 = v36;
        v9 = v35;
        v12 = v34;
        v13 = v33;
        v24 = v59;
        (*(*(v38 - 8) + 32))(v39, &v30[v32], v38);
      }

      type metadata accessor for AnnotationEnvelope.CitationTypeEnvelope(0);
      swift_storeEnumTagMultiPayload();
      v40 = v61;
      outlined init with take of DocumentRegistrationEnvelope(v24, v61, type metadata accessor for AnnotationEnvelope);
      v41 = v64;
      v65 = v64;
      v43 = *(v64 + 16);
      v42 = *(v64 + 24);
      if (v43 >= v42 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1);
        v24 = v59;
        v41 = v65;
      }

      *(v41 + 16) = v43 + 1;
      v44 = (*(v62 + 80) + 32) & ~*(v62 + 80);
      v64 = v41;
      outlined init with take of DocumentRegistrationEnvelope(v40, v41 + v44 + *(v62 + 72) * v43, type metadata accessor for AnnotationEnvelope);
      v25 += v60;
      --v22;
    }

    while (v22);
    v19 = v51;
    a2 = v52;
    v45 = v50;
    v46 = v64;
  }

  else
  {
    v45 = v18;

    v46 = MEMORY[0x1E69E7CC0];
  }

  v48 = v54;
  v47 = v55;
  outlined copy of Data?(v55, v54);
  outlined consume of Data?(0, 0xF000000000000000);

  outlined consume of Data?(v47, v48);

  outlined copy of Data?(v47, v48);

  result = outlined consume of Data?(v47, v48);
  *a2 = v19;
  a2[1] = v45;
  a2[2] = v46;
  a2[3] = v47;
  a2[4] = v48;
  return result;
}

uint64_t specialized PromptCompletionEnvelope.CandidateEnvelope.init(sealing:)@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v108 = a2;
  v127 = type metadata accessor for Prompt.ToolCall.Function();
  v114 = *(v127 - 8);
  MEMORY[0x1EEE9AC00](v127);
  v126 = &v101 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v125 = &v101 - v6;
  v7 = type metadata accessor for Prompt.ToolCall.Kind();
  v113 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v101 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v101 - v11;
  v124 = type metadata accessor for Prompt.ToolCall();
  v111 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v123 = &v101 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v122 = &v101 - v15;
  v132 = type metadata accessor for PromptCompletion.FileContent(0);
  MEMORY[0x1EEE9AC00](v132);
  v131 = &v101 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for PromptCompletion.Content(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = (&v101 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  v20 = type metadata accessor for PromptCompletion.Segment(0);
  v133 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = &v101 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v137 = &v101 - v24;
  v135 = type metadata accessor for PromptCompletionEnvelope.SegmentEnvelope(0);
  v134 = *(v135 - 8);
  MEMORY[0x1EEE9AC00](v135);
  v26 = &v101 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v136 = &v101 - v28;
  v29 = *a1;
  v129 = a1[1];
  v30 = a1[3];
  v102 = a1[2];
  v103 = v30;
  v31 = a1[5];
  v107 = a1[4];
  v106 = v31;
  v105 = a1[6];
  v32 = *(v29 + 16);
  v138 = v7;
  v128 = v9;
  v104 = v29;
  if (v32)
  {
    v120 = v12;
    *&v140 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v32, 0);
    v33 = v140;
    v34 = v29 + ((*(v133 + 80) + 32) & ~*(v133 + 80));
    v133 = *(v133 + 72);
    v130 = v17;
    v121 = v22;
    while (1)
    {
      v35 = v137;
      outlined init with copy of DocumentResourceEnvelope(v34, v137, type metadata accessor for PromptCompletion.Segment);
      outlined init with copy of DocumentResourceEnvelope(v35, v22, type metadata accessor for PromptCompletion.Segment);
      outlined init with copy of DocumentResourceEnvelope(v22, v19, type metadata accessor for PromptCompletion.Content);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload > 1)
      {
        if (EnumCaseMultiPayload != 2)
        {
LABEL_8:
          outlined destroy of DocumentResourceEnvelope(v22, type metadata accessor for PromptCompletion.Segment);
          *v26 = *v19;
          goto LABEL_9;
        }

        outlined destroy of DocumentResourceEnvelope(v22, type metadata accessor for PromptCompletion.Segment);
        v38 = v131;
        outlined init with take of DocumentRegistrationEnvelope(v19, v131, type metadata accessor for PromptCompletion.FileContent);
        v39 = type metadata accessor for URL();
        (*(*(v39 - 8) + 16))(v26, v38, v39);
        v40 = v132;
        v41 = (v38 + *(v132 + 20));
        v43 = *v41;
        v42 = v41[1];
        v44 = type metadata accessor for FileContentEnvelope(0);
        v45 = &v26[v44[5]];
        *v45 = v43;
        *(v45 + 1) = v42;
        v46 = (v38 + *(v40 + 24));
        v47 = *v46;
        v48 = v46[1];
        v49 = &v26[v44[6]];
        *v49 = v47;
        *(v49 + 1) = v48;
        v50 = *(v40 + 28);
        v51 = v33;
        v52 = *(v38 + v50);

        v53 = v38;
        v22 = v121;
        outlined destroy of DocumentResourceEnvelope(v53, type metadata accessor for PromptCompletion.FileContent);
        *&v26[v44[7]] = v52;
        v33 = v51;
      }

      else
      {
        if (EnumCaseMultiPayload)
        {
          goto LABEL_8;
        }

        v144 = *v19;
        v145 = *(v19 + 8);
        v146 = *(v19 + 24);
        specialized TextContentEnvelope.init(sealing:)(&v144, v151);
        outlined destroy of DocumentResourceEnvelope(v22, type metadata accessor for PromptCompletion.Segment);
        v37 = v151[1];
        *v26 = v151[0];
        *(v26 + 1) = v37;
        *(v26 + 4) = v152;
      }

LABEL_9:
      v54 = v136;
      swift_storeEnumTagMultiPayload();
      outlined init with take of DocumentRegistrationEnvelope(v26, v54, type metadata accessor for PromptCompletionEnvelope.SegmentEnvelope);
      outlined destroy of DocumentResourceEnvelope(v137, type metadata accessor for PromptCompletion.Segment);
      *&v140 = v33;
      v56 = *(v33 + 16);
      v55 = *(v33 + 24);
      if (v56 >= v55 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v55 > 1), v56 + 1, 1);
        v54 = v136;
        v33 = v140;
      }

      *(v33 + 16) = v56 + 1;
      outlined init with take of DocumentRegistrationEnvelope(v54, v33 + ((*(v134 + 80) + 32) & ~*(v134 + 80)) + *(v134 + 72) * v56, type metadata accessor for PromptCompletionEnvelope.SegmentEnvelope);
      v34 += v133;
      if (!--v32)
      {
        v9 = v128;
        v12 = v120;
        goto LABEL_14;
      }
    }
  }

  v33 = MEMORY[0x1E69E7CC0];
LABEL_14:
  v57 = v129;
  v58 = *(v129 + 16);
  v59 = MEMORY[0x1E69E7CC0];
  if (v58)
  {
    v101 = v33;
    v150 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v58, 0);
    if (*(v57 + 16))
    {
      v60 = 0;
      v61 = v57 + ((*(v111 + 80) + 32) & ~*(v111 + 80));
      v121 = (v111 + 16);
      v120 = (v113 + 2);
      v119 = (v113 + 11);
      v118 = *MEMORY[0x1E69DA808];
      v117 = v113 + 12;
      v116 = (v114 + 4);
      v115 = (v114 + 2);
      ++v114;
      ++v113;
      v112 = (v111 + 8);
      v59 = v150;
      v109 = *(v111 + 72);
      v111 = *(v111 + 16);
      v110 = (v58 - 1);
      while (1)
      {
        v136 = v60;
        v137 = v59;
        v62 = v122;
        v130 = v61;
        v63 = v124;
        v64 = v111;
        (v111)(v122);
        v65 = v123;
        v64(v123, v62, v63);
        v135 = Prompt.ToolCall.id.getter();
        v134 = v66;
        Prompt.ToolCall.kind.getter();
        v67 = v138;
        (*v120)(v9, v12, v138);
        v68 = (*v119)(v9, v67);
        if (v68 != v118)
        {
          break;
        }

        (*v117)(v9, v138);
        v69 = v125;
        v70 = v9;
        v71 = v127;
        (*v116)(v125, v70, v127);
        v72 = v126;
        (*v115)(v126, v69, v71);
        v133 = Prompt.ToolCall.Function.name.getter();
        v132 = v73;
        v131 = Prompt.ToolCall.Function.arguments.getter();
        v75 = v74;
        v76 = *v114;
        (*v114)(v72, v71);
        v76(v69, v71);
        (*v113)(v12, v138);
        v77 = Prompt.ToolCall._userInfo.getter();
        v79 = v78;
        v80 = *v112;
        (*v112)(v65, v63);
        v80(v62, v63);
        outlined consume of Data?(0, 0xF000000000000000);
        *&v140 = v135;
        *(&v140 + 1) = v134;
        *&v141 = v133;
        *(&v141 + 1) = v132;
        *&v142 = v131;
        *(&v142 + 1) = v75;
        *&v143 = v77;
        *(&v143 + 1) = v79;
        v144 = v135;
        *&v145 = v134;
        *(&v145 + 1) = v133;
        *&v146 = v132;
        *(&v146 + 1) = v131;
        v147 = v75;
        v148 = v77;
        v149 = v79;
        outlined init with copy of ToolCallEnvelope(&v140, v139);
        outlined destroy of ToolCallEnvelope(&v144);
        v59 = v137;
        v150 = v137;
        v82 = *(v137 + 16);
        v81 = *(v137 + 24);
        if (v82 >= v81 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v81 > 1), v82 + 1, 1);
          v59 = v150;
        }

        *(v59 + 16) = v82 + 1;
        v83 = (v59 + (v82 << 6));
        v84 = v140;
        v85 = v141;
        v86 = v143;
        v83[4] = v142;
        v83[5] = v86;
        v83[2] = v84;
        v83[3] = v85;
        if (v110 == v136)
        {
          v33 = v101;
          goto LABEL_24;
        }

        v60 = v136 + 1;
        v61 = v130 + v109;
        v9 = v128;
        if ((v136 + 1) >= *(v129 + 16))
        {
          goto LABEL_34;
        }
      }
    }

    else
    {
LABEL_34:
      __break(1u);
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    result = swift_unexpectedError();
    __break(1u);
  }

  else
  {
LABEL_24:
    v87 = v102;
    if (v102)
    {
      swift_bridgeObjectRetain_n();
      _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDy15TokenGeneration16PromptCompletionV10ModerationV8CategoryVAJ11ProbabilityOG_SS_AF0H8Envelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0jK0Ots5NeverOTg504_s15d12Generation16fg3V10h2V8i5VAE11j19OSSAA0E8Envelope33_lmnopqrst39LLV0gH0OIgnnod_AG3key_AI5valuetSS_ANts5U131OIegnrzr_TR04_s15a12Generation18e11Envelope33_ijklmnopq16LLV7sealingAdA16cd18V0C0V_tcfcSS_AD011g7D0OtAI8F14V_AI0Q0OtXEfU_Tf3nnnpf_nTf1cn_n(v87);
      v89 = v88;

      if (*(v89 + 16))
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityF0OGMd, &_ss18_DictionaryStorageCySS15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityF0OGMR);
        v90 = static _DictionaryStorage.allocate(capacity:)();
      }

      else
      {
        v90 = MEMORY[0x1E69E7CC8];
      }

      v92 = v33;
      v144 = v90;
      specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v89, 1, &v144);
      v91 = v59;

      v93 = v144;
    }

    else
    {
      v91 = v59;
      v92 = v33;
      v93 = 0;
    }

    v94 = v107;
    v95 = v103;
    if (v107 >= 3)
    {
      v96 = v103;
    }

    else
    {
      v96 = 0;
    }

    outlined copy of FinishReason(v103, v107);
    v97 = v106;
    v98 = v105;
    outlined copy of Data._Representation(v106, v105);

    outlined consume of FinishReason(v95, v94);
    result = outlined consume of Data._Representation(v97, v98);
    v100 = v108;
    *v108 = v92;
    v100[1] = v91;
    v100[2] = v93;
    v100[3] = v96;
    v100[4] = v94;
    v100[5] = v97;
    v100[6] = v98;
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CompletePromptResponse.CodingKeys and conformance CompletePromptResponse.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CompletePromptResponse.CodingKeys and conformance CompletePromptResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompletePromptResponse.CodingKeys and conformance CompletePromptResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompletePromptResponse.CodingKeys and conformance CompletePromptResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompletePromptResponse.CodingKeys and conformance CompletePromptResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompletePromptResponse.CodingKeys and conformance CompletePromptResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompletePromptResponse.CodingKeys and conformance CompletePromptResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompletePromptResponse.CodingKeys and conformance CompletePromptResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompletePromptResponse.CodingKeys and conformance CompletePromptResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompletePromptResponse.CodingKeys and conformance CompletePromptResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompletePromptResponse.CodingKeys and conformance CompletePromptResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompletePromptResponse.CodingKeys and conformance CompletePromptResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompletePromptResponse.CodingKeys and conformance CompletePromptResponse.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionEnvelope and conformance PromptCompletionEnvelope()
{
  result = lazy protocol witness table cache variable for type PromptCompletionEnvelope and conformance PromptCompletionEnvelope;
  if (!lazy protocol witness table cache variable for type PromptCompletionEnvelope and conformance PromptCompletionEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEnvelope and conformance PromptCompletionEnvelope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionEnvelope and conformance PromptCompletionEnvelope;
  if (!lazy protocol witness table cache variable for type PromptCompletionEnvelope and conformance PromptCompletionEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEnvelope and conformance PromptCompletionEnvelope);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type CompletePromptResponseElement.CodingKeys and conformance CompletePromptResponseElement.CodingKeys()
{
  result = lazy protocol witness table cache variable for type CompletePromptResponseElement.CodingKeys and conformance CompletePromptResponseElement.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompletePromptResponseElement.CodingKeys and conformance CompletePromptResponseElement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompletePromptResponseElement.CodingKeys and conformance CompletePromptResponseElement.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompletePromptResponseElement.CodingKeys and conformance CompletePromptResponseElement.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompletePromptResponseElement.CodingKeys and conformance CompletePromptResponseElement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompletePromptResponseElement.CodingKeys and conformance CompletePromptResponseElement.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompletePromptResponseElement.CodingKeys and conformance CompletePromptResponseElement.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompletePromptResponseElement.CodingKeys and conformance CompletePromptResponseElement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompletePromptResponseElement.CodingKeys and conformance CompletePromptResponseElement.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type CompletePromptResponseElement.CodingKeys and conformance CompletePromptResponseElement.CodingKeys;
  if (!lazy protocol witness table cache variable for type CompletePromptResponseElement.CodingKeys and conformance CompletePromptResponseElement.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type CompletePromptResponseElement.CodingKeys and conformance CompletePromptResponseElement.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FetchTokenizerMetadataRequest.CodingKeys and conformance FetchTokenizerMetadataRequest.CodingKeys()
{
  result = lazy protocol witness table cache variable for type FetchTokenizerMetadataRequest.CodingKeys and conformance FetchTokenizerMetadataRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type FetchTokenizerMetadataRequest.CodingKeys and conformance FetchTokenizerMetadataRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchTokenizerMetadataRequest.CodingKeys and conformance FetchTokenizerMetadataRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FetchTokenizerMetadataRequest.CodingKeys and conformance FetchTokenizerMetadataRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type FetchTokenizerMetadataRequest.CodingKeys and conformance FetchTokenizerMetadataRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchTokenizerMetadataRequest.CodingKeys and conformance FetchTokenizerMetadataRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FetchTokenizerMetadataRequest.CodingKeys and conformance FetchTokenizerMetadataRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type FetchTokenizerMetadataRequest.CodingKeys and conformance FetchTokenizerMetadataRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchTokenizerMetadataRequest.CodingKeys and conformance FetchTokenizerMetadataRequest.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FetchTokenizerMetadataRequest.CodingKeys and conformance FetchTokenizerMetadataRequest.CodingKeys;
  if (!lazy protocol witness table cache variable for type FetchTokenizerMetadataRequest.CodingKeys and conformance FetchTokenizerMetadataRequest.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchTokenizerMetadataRequest.CodingKeys and conformance FetchTokenizerMetadataRequest.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FetchTokenizerMetadataResponse.CodingKeys and conformance FetchTokenizerMetadataResponse.CodingKeys()
{
  result = lazy protocol witness table cache variable for type FetchTokenizerMetadataResponse.CodingKeys and conformance FetchTokenizerMetadataResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type FetchTokenizerMetadataResponse.CodingKeys and conformance FetchTokenizerMetadataResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchTokenizerMetadataResponse.CodingKeys and conformance FetchTokenizerMetadataResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FetchTokenizerMetadataResponse.CodingKeys and conformance FetchTokenizerMetadataResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type FetchTokenizerMetadataResponse.CodingKeys and conformance FetchTokenizerMetadataResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchTokenizerMetadataResponse.CodingKeys and conformance FetchTokenizerMetadataResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FetchTokenizerMetadataResponse.CodingKeys and conformance FetchTokenizerMetadataResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type FetchTokenizerMetadataResponse.CodingKeys and conformance FetchTokenizerMetadataResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchTokenizerMetadataResponse.CodingKeys and conformance FetchTokenizerMetadataResponse.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FetchTokenizerMetadataResponse.CodingKeys and conformance FetchTokenizerMetadataResponse.CodingKeys;
  if (!lazy protocol witness table cache variable for type FetchTokenizerMetadataResponse.CodingKeys and conformance FetchTokenizerMetadataResponse.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchTokenizerMetadataResponse.CodingKeys and conformance FetchTokenizerMetadataResponse.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ImageTokenizationRecommendations and conformance ImageTokenizationRecommendations()
{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations and conformance ImageTokenizationRecommendations;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations and conformance ImageTokenizationRecommendations)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations and conformance ImageTokenizationRecommendations);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ImageTokenizationRecommendations and conformance ImageTokenizationRecommendations;
  if (!lazy protocol witness table cache variable for type ImageTokenizationRecommendations and conformance ImageTokenizationRecommendations)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ImageTokenizationRecommendations and conformance ImageTokenizationRecommendations);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Constraints.CodingKeys and conformance Constraints.CodingKeys()
{
  result = lazy protocol witness table cache variable for type Constraints.CodingKeys and conformance Constraints.CodingKeys;
  if (!lazy protocol witness table cache variable for type Constraints.CodingKeys and conformance Constraints.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Constraints.CodingKeys and conformance Constraints.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Constraints.CodingKeys and conformance Constraints.CodingKeys;
  if (!lazy protocol witness table cache variable for type Constraints.CodingKeys and conformance Constraints.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Constraints.CodingKeys and conformance Constraints.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Constraints.CodingKeys and conformance Constraints.CodingKeys;
  if (!lazy protocol witness table cache variable for type Constraints.CodingKeys and conformance Constraints.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Constraints.CodingKeys and conformance Constraints.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Constraints.CodingKeys and conformance Constraints.CodingKeys;
  if (!lazy protocol witness table cache variable for type Constraints.CodingKeys and conformance Constraints.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Constraints.CodingKeys and conformance Constraints.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Constraints.SchemaIdentifierCodingKeys and conformance Constraints.SchemaIdentifierCodingKeys()
{
  result = lazy protocol witness table cache variable for type Constraints.SchemaIdentifierCodingKeys and conformance Constraints.SchemaIdentifierCodingKeys;
  if (!lazy protocol witness table cache variable for type Constraints.SchemaIdentifierCodingKeys and conformance Constraints.SchemaIdentifierCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Constraints.SchemaIdentifierCodingKeys and conformance Constraints.SchemaIdentifierCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Constraints.SchemaIdentifierCodingKeys and conformance Constraints.SchemaIdentifierCodingKeys;
  if (!lazy protocol witness table cache variable for type Constraints.SchemaIdentifierCodingKeys and conformance Constraints.SchemaIdentifierCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Constraints.SchemaIdentifierCodingKeys and conformance Constraints.SchemaIdentifierCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Constraints.SchemaIdentifierCodingKeys and conformance Constraints.SchemaIdentifierCodingKeys;
  if (!lazy protocol witness table cache variable for type Constraints.SchemaIdentifierCodingKeys and conformance Constraints.SchemaIdentifierCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Constraints.SchemaIdentifierCodingKeys and conformance Constraints.SchemaIdentifierCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Constraints.SchemaIdentifierCodingKeys and conformance Constraints.SchemaIdentifierCodingKeys;
  if (!lazy protocol witness table cache variable for type Constraints.SchemaIdentifierCodingKeys and conformance Constraints.SchemaIdentifierCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Constraints.SchemaIdentifierCodingKeys and conformance Constraints.SchemaIdentifierCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Constraints.GrammarIdentifierCodingKeys and conformance Constraints.GrammarIdentifierCodingKeys()
{
  result = lazy protocol witness table cache variable for type Constraints.GrammarIdentifierCodingKeys and conformance Constraints.GrammarIdentifierCodingKeys;
  if (!lazy protocol witness table cache variable for type Constraints.GrammarIdentifierCodingKeys and conformance Constraints.GrammarIdentifierCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Constraints.GrammarIdentifierCodingKeys and conformance Constraints.GrammarIdentifierCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Constraints.GrammarIdentifierCodingKeys and conformance Constraints.GrammarIdentifierCodingKeys;
  if (!lazy protocol witness table cache variable for type Constraints.GrammarIdentifierCodingKeys and conformance Constraints.GrammarIdentifierCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Constraints.GrammarIdentifierCodingKeys and conformance Constraints.GrammarIdentifierCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Constraints.GrammarIdentifierCodingKeys and conformance Constraints.GrammarIdentifierCodingKeys;
  if (!lazy protocol witness table cache variable for type Constraints.GrammarIdentifierCodingKeys and conformance Constraints.GrammarIdentifierCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Constraints.GrammarIdentifierCodingKeys and conformance Constraints.GrammarIdentifierCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Constraints.GrammarIdentifierCodingKeys and conformance Constraints.GrammarIdentifierCodingKeys;
  if (!lazy protocol witness table cache variable for type Constraints.GrammarIdentifierCodingKeys and conformance Constraints.GrammarIdentifierCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Constraints.GrammarIdentifierCodingKeys and conformance Constraints.GrammarIdentifierCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Constraints.PartialGrammarCodingKeys and conformance Constraints.PartialGrammarCodingKeys()
{
  result = lazy protocol witness table cache variable for type Constraints.PartialGrammarCodingKeys and conformance Constraints.PartialGrammarCodingKeys;
  if (!lazy protocol witness table cache variable for type Constraints.PartialGrammarCodingKeys and conformance Constraints.PartialGrammarCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Constraints.PartialGrammarCodingKeys and conformance Constraints.PartialGrammarCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Constraints.PartialGrammarCodingKeys and conformance Constraints.PartialGrammarCodingKeys;
  if (!lazy protocol witness table cache variable for type Constraints.PartialGrammarCodingKeys and conformance Constraints.PartialGrammarCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Constraints.PartialGrammarCodingKeys and conformance Constraints.PartialGrammarCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Constraints.PartialGrammarCodingKeys and conformance Constraints.PartialGrammarCodingKeys;
  if (!lazy protocol witness table cache variable for type Constraints.PartialGrammarCodingKeys and conformance Constraints.PartialGrammarCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Constraints.PartialGrammarCodingKeys and conformance Constraints.PartialGrammarCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Constraints.PartialGrammarCodingKeys and conformance Constraints.PartialGrammarCodingKeys;
  if (!lazy protocol witness table cache variable for type Constraints.PartialGrammarCodingKeys and conformance Constraints.PartialGrammarCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Constraints.PartialGrammarCodingKeys and conformance Constraints.PartialGrammarCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Constraints.GrammarCodingKeys and conformance Constraints.GrammarCodingKeys()
{
  result = lazy protocol witness table cache variable for type Constraints.GrammarCodingKeys and conformance Constraints.GrammarCodingKeys;
  if (!lazy protocol witness table cache variable for type Constraints.GrammarCodingKeys and conformance Constraints.GrammarCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Constraints.GrammarCodingKeys and conformance Constraints.GrammarCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Constraints.GrammarCodingKeys and conformance Constraints.GrammarCodingKeys;
  if (!lazy protocol witness table cache variable for type Constraints.GrammarCodingKeys and conformance Constraints.GrammarCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Constraints.GrammarCodingKeys and conformance Constraints.GrammarCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Constraints.GrammarCodingKeys and conformance Constraints.GrammarCodingKeys;
  if (!lazy protocol witness table cache variable for type Constraints.GrammarCodingKeys and conformance Constraints.GrammarCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Constraints.GrammarCodingKeys and conformance Constraints.GrammarCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Constraints.GrammarCodingKeys and conformance Constraints.GrammarCodingKeys;
  if (!lazy protocol witness table cache variable for type Constraints.GrammarCodingKeys and conformance Constraints.GrammarCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Constraints.GrammarCodingKeys and conformance Constraints.GrammarCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Constraints.SchemaCodingKeys and conformance Constraints.SchemaCodingKeys()
{
  result = lazy protocol witness table cache variable for type Constraints.SchemaCodingKeys and conformance Constraints.SchemaCodingKeys;
  if (!lazy protocol witness table cache variable for type Constraints.SchemaCodingKeys and conformance Constraints.SchemaCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Constraints.SchemaCodingKeys and conformance Constraints.SchemaCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Constraints.SchemaCodingKeys and conformance Constraints.SchemaCodingKeys;
  if (!lazy protocol witness table cache variable for type Constraints.SchemaCodingKeys and conformance Constraints.SchemaCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Constraints.SchemaCodingKeys and conformance Constraints.SchemaCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Constraints.SchemaCodingKeys and conformance Constraints.SchemaCodingKeys;
  if (!lazy protocol witness table cache variable for type Constraints.SchemaCodingKeys and conformance Constraints.SchemaCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Constraints.SchemaCodingKeys and conformance Constraints.SchemaCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Constraints.SchemaCodingKeys and conformance Constraints.SchemaCodingKeys;
  if (!lazy protocol witness table cache variable for type Constraints.SchemaCodingKeys and conformance Constraints.SchemaCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Constraints.SchemaCodingKeys and conformance Constraints.SchemaCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PromptCompletionEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ModelInformationEnvelope and conformance ModelInformationEnvelope()
{
  result = lazy protocol witness table cache variable for type ModelInformationEnvelope and conformance ModelInformationEnvelope;
  if (!lazy protocol witness table cache variable for type ModelInformationEnvelope and conformance ModelInformationEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModelInformationEnvelope and conformance ModelInformationEnvelope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ModelInformationEnvelope and conformance ModelInformationEnvelope;
  if (!lazy protocol witness table cache variable for type ModelInformationEnvelope and conformance ModelInformationEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ModelInformationEnvelope and conformance ModelInformationEnvelope);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type UsageEnvelope and conformance UsageEnvelope()
{
  result = lazy protocol witness table cache variable for type UsageEnvelope and conformance UsageEnvelope;
  if (!lazy protocol witness table cache variable for type UsageEnvelope and conformance UsageEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UsageEnvelope and conformance UsageEnvelope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type UsageEnvelope and conformance UsageEnvelope;
  if (!lazy protocol witness table cache variable for type UsageEnvelope and conformance UsageEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UsageEnvelope and conformance UsageEnvelope);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type [PromptCompletionEnvelope.CandidateEnvelope] and conformance <A> [A]()
{
  result = lazy protocol witness table cache variable for type [PromptCompletionEnvelope.CandidateEnvelope] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [PromptCompletionEnvelope.CandidateEnvelope] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15TokenGeneration24PromptCompletionEnvelopeV09CandidateE033_FCE651B3B8F212418F5C81F0A4785E63LLVGMd, &_sSay15TokenGeneration24PromptCompletionEnvelopeV09CandidateE033_FCE651B3B8F212418F5C81F0A4785E63LLVGMR);
    lazy protocol witness table accessor for type PromptCompletionEnvelope.CandidateEnvelope and conformance PromptCompletionEnvelope.CandidateEnvelope();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [PromptCompletionEnvelope.CandidateEnvelope] and conformance <A> [A]);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type [PromptCompletionEnvelope.CandidateEnvelope] and conformance <A> [A];
  if (!lazy protocol witness table cache variable for type [PromptCompletionEnvelope.CandidateEnvelope] and conformance <A> [A])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay15TokenGeneration24PromptCompletionEnvelopeV09CandidateE033_FCE651B3B8F212418F5C81F0A4785E63LLVGMd, &_sSay15TokenGeneration24PromptCompletionEnvelopeV09CandidateE033_FCE651B3B8F212418F5C81F0A4785E63LLVGMR);
    lazy protocol witness table accessor for type PromptCompletionEnvelope.CandidateEnvelope and conformance PromptCompletionEnvelope.CandidateEnvelope();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type [PromptCompletionEnvelope.CandidateEnvelope] and conformance <A> [A]);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionEnvelope.CandidateEnvelope and conformance PromptCompletionEnvelope.CandidateEnvelope()
{
  result = lazy protocol witness table cache variable for type PromptCompletionEnvelope.CandidateEnvelope and conformance PromptCompletionEnvelope.CandidateEnvelope;
  if (!lazy protocol witness table cache variable for type PromptCompletionEnvelope.CandidateEnvelope and conformance PromptCompletionEnvelope.CandidateEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEnvelope.CandidateEnvelope and conformance PromptCompletionEnvelope.CandidateEnvelope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionEnvelope.CandidateEnvelope and conformance PromptCompletionEnvelope.CandidateEnvelope;
  if (!lazy protocol witness table cache variable for type PromptCompletionEnvelope.CandidateEnvelope and conformance PromptCompletionEnvelope.CandidateEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionEnvelope.CandidateEnvelope and conformance PromptCompletionEnvelope.CandidateEnvelope);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ToolChoiceEnvelope.CodingKeys and conformance ToolChoiceEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ToolChoiceEnvelope.CodingKeys and conformance ToolChoiceEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type ToolChoiceEnvelope.CodingKeys and conformance ToolChoiceEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolChoiceEnvelope.CodingKeys and conformance ToolChoiceEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolChoiceEnvelope.CodingKeys and conformance ToolChoiceEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type ToolChoiceEnvelope.CodingKeys and conformance ToolChoiceEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolChoiceEnvelope.CodingKeys and conformance ToolChoiceEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolChoiceEnvelope.CodingKeys and conformance ToolChoiceEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type ToolChoiceEnvelope.CodingKeys and conformance ToolChoiceEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolChoiceEnvelope.CodingKeys and conformance ToolChoiceEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolChoiceEnvelope.CodingKeys and conformance ToolChoiceEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type ToolChoiceEnvelope.CodingKeys and conformance ToolChoiceEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolChoiceEnvelope.CodingKeys and conformance ToolChoiceEnvelope.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ToolChoiceEnvelope.FunctionCodingKeys and conformance ToolChoiceEnvelope.FunctionCodingKeys()
{
  result = lazy protocol witness table cache variable for type ToolChoiceEnvelope.FunctionCodingKeys and conformance ToolChoiceEnvelope.FunctionCodingKeys;
  if (!lazy protocol witness table cache variable for type ToolChoiceEnvelope.FunctionCodingKeys and conformance ToolChoiceEnvelope.FunctionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolChoiceEnvelope.FunctionCodingKeys and conformance ToolChoiceEnvelope.FunctionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolChoiceEnvelope.FunctionCodingKeys and conformance ToolChoiceEnvelope.FunctionCodingKeys;
  if (!lazy protocol witness table cache variable for type ToolChoiceEnvelope.FunctionCodingKeys and conformance ToolChoiceEnvelope.FunctionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolChoiceEnvelope.FunctionCodingKeys and conformance ToolChoiceEnvelope.FunctionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolChoiceEnvelope.FunctionCodingKeys and conformance ToolChoiceEnvelope.FunctionCodingKeys;
  if (!lazy protocol witness table cache variable for type ToolChoiceEnvelope.FunctionCodingKeys and conformance ToolChoiceEnvelope.FunctionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolChoiceEnvelope.FunctionCodingKeys and conformance ToolChoiceEnvelope.FunctionCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolChoiceEnvelope.FunctionCodingKeys and conformance ToolChoiceEnvelope.FunctionCodingKeys;
  if (!lazy protocol witness table cache variable for type ToolChoiceEnvelope.FunctionCodingKeys and conformance ToolChoiceEnvelope.FunctionCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolChoiceEnvelope.FunctionCodingKeys and conformance ToolChoiceEnvelope.FunctionCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ToolChoiceEnvelope.RequiredCodingKeys and conformance ToolChoiceEnvelope.RequiredCodingKeys()
{
  result = lazy protocol witness table cache variable for type ToolChoiceEnvelope.RequiredCodingKeys and conformance ToolChoiceEnvelope.RequiredCodingKeys;
  if (!lazy protocol witness table cache variable for type ToolChoiceEnvelope.RequiredCodingKeys and conformance ToolChoiceEnvelope.RequiredCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolChoiceEnvelope.RequiredCodingKeys and conformance ToolChoiceEnvelope.RequiredCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolChoiceEnvelope.RequiredCodingKeys and conformance ToolChoiceEnvelope.RequiredCodingKeys;
  if (!lazy protocol witness table cache variable for type ToolChoiceEnvelope.RequiredCodingKeys and conformance ToolChoiceEnvelope.RequiredCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolChoiceEnvelope.RequiredCodingKeys and conformance ToolChoiceEnvelope.RequiredCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolChoiceEnvelope.RequiredCodingKeys and conformance ToolChoiceEnvelope.RequiredCodingKeys;
  if (!lazy protocol witness table cache variable for type ToolChoiceEnvelope.RequiredCodingKeys and conformance ToolChoiceEnvelope.RequiredCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolChoiceEnvelope.RequiredCodingKeys and conformance ToolChoiceEnvelope.RequiredCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ToolChoiceEnvelope.AutomaticCodingKeys and conformance ToolChoiceEnvelope.AutomaticCodingKeys()
{
  result = lazy protocol witness table cache variable for type ToolChoiceEnvelope.AutomaticCodingKeys and conformance ToolChoiceEnvelope.AutomaticCodingKeys;
  if (!lazy protocol witness table cache variable for type ToolChoiceEnvelope.AutomaticCodingKeys and conformance ToolChoiceEnvelope.AutomaticCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolChoiceEnvelope.AutomaticCodingKeys and conformance ToolChoiceEnvelope.AutomaticCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolChoiceEnvelope.AutomaticCodingKeys and conformance ToolChoiceEnvelope.AutomaticCodingKeys;
  if (!lazy protocol witness table cache variable for type ToolChoiceEnvelope.AutomaticCodingKeys and conformance ToolChoiceEnvelope.AutomaticCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolChoiceEnvelope.AutomaticCodingKeys and conformance ToolChoiceEnvelope.AutomaticCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolChoiceEnvelope.AutomaticCodingKeys and conformance ToolChoiceEnvelope.AutomaticCodingKeys;
  if (!lazy protocol witness table cache variable for type ToolChoiceEnvelope.AutomaticCodingKeys and conformance ToolChoiceEnvelope.AutomaticCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolChoiceEnvelope.AutomaticCodingKeys and conformance ToolChoiceEnvelope.AutomaticCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ToolChoiceEnvelope.NoneCodingKeys and conformance ToolChoiceEnvelope.NoneCodingKeys()
{
  result = lazy protocol witness table cache variable for type ToolChoiceEnvelope.NoneCodingKeys and conformance ToolChoiceEnvelope.NoneCodingKeys;
  if (!lazy protocol witness table cache variable for type ToolChoiceEnvelope.NoneCodingKeys and conformance ToolChoiceEnvelope.NoneCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolChoiceEnvelope.NoneCodingKeys and conformance ToolChoiceEnvelope.NoneCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolChoiceEnvelope.NoneCodingKeys and conformance ToolChoiceEnvelope.NoneCodingKeys;
  if (!lazy protocol witness table cache variable for type ToolChoiceEnvelope.NoneCodingKeys and conformance ToolChoiceEnvelope.NoneCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolChoiceEnvelope.NoneCodingKeys and conformance ToolChoiceEnvelope.NoneCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolChoiceEnvelope.NoneCodingKeys and conformance ToolChoiceEnvelope.NoneCodingKeys;
  if (!lazy protocol witness table cache variable for type ToolChoiceEnvelope.NoneCodingKeys and conformance ToolChoiceEnvelope.NoneCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolChoiceEnvelope.NoneCodingKeys and conformance ToolChoiceEnvelope.NoneCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type DocumentRegistrationEnvelope.CodingKeys and conformance DocumentRegistrationEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type DocumentRegistrationEnvelope.CodingKeys and conformance DocumentRegistrationEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type DocumentRegistrationEnvelope.CodingKeys and conformance DocumentRegistrationEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DocumentRegistrationEnvelope.CodingKeys and conformance DocumentRegistrationEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DocumentRegistrationEnvelope.CodingKeys and conformance DocumentRegistrationEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type DocumentRegistrationEnvelope.CodingKeys and conformance DocumentRegistrationEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DocumentRegistrationEnvelope.CodingKeys and conformance DocumentRegistrationEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DocumentRegistrationEnvelope.CodingKeys and conformance DocumentRegistrationEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type DocumentRegistrationEnvelope.CodingKeys and conformance DocumentRegistrationEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DocumentRegistrationEnvelope.CodingKeys and conformance DocumentRegistrationEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type DocumentRegistrationEnvelope.CodingKeys and conformance DocumentRegistrationEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type DocumentRegistrationEnvelope.CodingKeys and conformance DocumentRegistrationEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type DocumentRegistrationEnvelope.CodingKeys and conformance DocumentRegistrationEnvelope.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SamplingParametersEnvelope.CodingKeys and conformance SamplingParametersEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type SamplingParametersEnvelope.CodingKeys and conformance SamplingParametersEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type SamplingParametersEnvelope.CodingKeys and conformance SamplingParametersEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SamplingParametersEnvelope.CodingKeys and conformance SamplingParametersEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SamplingParametersEnvelope.CodingKeys and conformance SamplingParametersEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type SamplingParametersEnvelope.CodingKeys and conformance SamplingParametersEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SamplingParametersEnvelope.CodingKeys and conformance SamplingParametersEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SamplingParametersEnvelope.CodingKeys and conformance SamplingParametersEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type SamplingParametersEnvelope.CodingKeys and conformance SamplingParametersEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SamplingParametersEnvelope.CodingKeys and conformance SamplingParametersEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SamplingParametersEnvelope.CodingKeys and conformance SamplingParametersEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type SamplingParametersEnvelope.CodingKeys and conformance SamplingParametersEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SamplingParametersEnvelope.CodingKeys and conformance SamplingParametersEnvelope.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SamplingStrategyEnvelope and conformance SamplingStrategyEnvelope()
{
  result = lazy protocol witness table cache variable for type SamplingStrategyEnvelope and conformance SamplingStrategyEnvelope;
  if (!lazy protocol witness table cache variable for type SamplingStrategyEnvelope and conformance SamplingStrategyEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SamplingStrategyEnvelope and conformance SamplingStrategyEnvelope);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SamplingStrategyEnvelope and conformance SamplingStrategyEnvelope;
  if (!lazy protocol witness table cache variable for type SamplingStrategyEnvelope and conformance SamplingStrategyEnvelope)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SamplingStrategyEnvelope and conformance SamplingStrategyEnvelope);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Set<String> and conformance <> Set<A>()
{
  result = lazy protocol witness table cache variable for type Set<String> and conformance <> Set<A>;
  if (!lazy protocol witness table cache variable for type Set<String> and conformance <> Set<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShySSGMd, &_sShySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Set<String> and conformance <> Set<A>);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type Set<String> and conformance <> Set<A>;
  if (!lazy protocol witness table cache variable for type Set<String> and conformance <> Set<A>)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sShySSGMd, &_sShySSGMR);
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Set<String> and conformance <> Set<A>);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type SpeculationParameters and conformance SpeculationParameters()
{
  result = lazy protocol witness table cache variable for type SpeculationParameters and conformance SpeculationParameters;
  if (!lazy protocol witness table cache variable for type SpeculationParameters and conformance SpeculationParameters)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpeculationParameters and conformance SpeculationParameters);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpeculationParameters and conformance SpeculationParameters;
  if (!lazy protocol witness table cache variable for type SpeculationParameters and conformance SpeculationParameters)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpeculationParameters and conformance SpeculationParameters);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type SpeculationParameters and conformance SpeculationParameters;
  if (!lazy protocol witness table cache variable for type SpeculationParameters and conformance SpeculationParameters)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SpeculationParameters and conformance SpeculationParameters);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type ToolDescriptionEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.CodingKeys()
{
  result = lazy protocol witness table cache variable for type ToolDescriptionEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type ToolDescriptionEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolDescriptionEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolDescriptionEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type ToolDescriptionEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolDescriptionEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolDescriptionEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type ToolDescriptionEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolDescriptionEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type ToolDescriptionEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.CodingKeys;
  if (!lazy protocol witness table cache variable for type ToolDescriptionEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type ToolDescriptionEnvelope.CodingKeys and conformance ToolDescriptionEnvelope.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RequestPayload.CodingKeys and conformance RequestPayload.CodingKeys()
{
  result = lazy protocol witness table cache variable for type RequestPayload.CodingKeys and conformance RequestPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.CodingKeys and conformance RequestPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.CodingKeys and conformance RequestPayload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.CodingKeys and conformance RequestPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.CodingKeys and conformance RequestPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.CodingKeys and conformance RequestPayload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.CodingKeys and conformance RequestPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.CodingKeys and conformance RequestPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.CodingKeys and conformance RequestPayload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.CodingKeys and conformance RequestPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.CodingKeys and conformance RequestPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.CodingKeys and conformance RequestPayload.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RequestPayload.CompileAdapterCodingKeys and conformance RequestPayload.CompileAdapterCodingKeys()
{
  result = lazy protocol witness table cache variable for type RequestPayload.CompileAdapterCodingKeys and conformance RequestPayload.CompileAdapterCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.CompileAdapterCodingKeys and conformance RequestPayload.CompileAdapterCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.CompileAdapterCodingKeys and conformance RequestPayload.CompileAdapterCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.CompileAdapterCodingKeys and conformance RequestPayload.CompileAdapterCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.CompileAdapterCodingKeys and conformance RequestPayload.CompileAdapterCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.CompileAdapterCodingKeys and conformance RequestPayload.CompileAdapterCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.CompileAdapterCodingKeys and conformance RequestPayload.CompileAdapterCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.CompileAdapterCodingKeys and conformance RequestPayload.CompileAdapterCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.CompileAdapterCodingKeys and conformance RequestPayload.CompileAdapterCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.CompileAdapterCodingKeys and conformance RequestPayload.CompileAdapterCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.CompileAdapterCodingKeys and conformance RequestPayload.CompileAdapterCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.CompileAdapterCodingKeys and conformance RequestPayload.CompileAdapterCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RequestPayload.ClassifyPromptTemplateCodingKeys and conformance RequestPayload.ClassifyPromptTemplateCodingKeys()
{
  result = lazy protocol witness table cache variable for type RequestPayload.ClassifyPromptTemplateCodingKeys and conformance RequestPayload.ClassifyPromptTemplateCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.ClassifyPromptTemplateCodingKeys and conformance RequestPayload.ClassifyPromptTemplateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.ClassifyPromptTemplateCodingKeys and conformance RequestPayload.ClassifyPromptTemplateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.ClassifyPromptTemplateCodingKeys and conformance RequestPayload.ClassifyPromptTemplateCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.ClassifyPromptTemplateCodingKeys and conformance RequestPayload.ClassifyPromptTemplateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.ClassifyPromptTemplateCodingKeys and conformance RequestPayload.ClassifyPromptTemplateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.ClassifyPromptTemplateCodingKeys and conformance RequestPayload.ClassifyPromptTemplateCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.ClassifyPromptTemplateCodingKeys and conformance RequestPayload.ClassifyPromptTemplateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.ClassifyPromptTemplateCodingKeys and conformance RequestPayload.ClassifyPromptTemplateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.ClassifyPromptTemplateCodingKeys and conformance RequestPayload.ClassifyPromptTemplateCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.ClassifyPromptTemplateCodingKeys and conformance RequestPayload.ClassifyPromptTemplateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.ClassifyPromptTemplateCodingKeys and conformance RequestPayload.ClassifyPromptTemplateCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RequestPayload.ClassifyPromptCodingKeys and conformance RequestPayload.ClassifyPromptCodingKeys()
{
  result = lazy protocol witness table cache variable for type RequestPayload.ClassifyPromptCodingKeys and conformance RequestPayload.ClassifyPromptCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.ClassifyPromptCodingKeys and conformance RequestPayload.ClassifyPromptCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.ClassifyPromptCodingKeys and conformance RequestPayload.ClassifyPromptCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.ClassifyPromptCodingKeys and conformance RequestPayload.ClassifyPromptCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.ClassifyPromptCodingKeys and conformance RequestPayload.ClassifyPromptCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.ClassifyPromptCodingKeys and conformance RequestPayload.ClassifyPromptCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.ClassifyPromptCodingKeys and conformance RequestPayload.ClassifyPromptCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.ClassifyPromptCodingKeys and conformance RequestPayload.ClassifyPromptCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.ClassifyPromptCodingKeys and conformance RequestPayload.ClassifyPromptCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.ClassifyPromptCodingKeys and conformance RequestPayload.ClassifyPromptCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.ClassifyPromptCodingKeys and conformance RequestPayload.ClassifyPromptCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.ClassifyPromptCodingKeys and conformance RequestPayload.ClassifyPromptCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RequestPayload.FetchTokenizerMetadataCodingKeys and conformance RequestPayload.FetchTokenizerMetadataCodingKeys()
{
  result = lazy protocol witness table cache variable for type RequestPayload.FetchTokenizerMetadataCodingKeys and conformance RequestPayload.FetchTokenizerMetadataCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.FetchTokenizerMetadataCodingKeys and conformance RequestPayload.FetchTokenizerMetadataCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.FetchTokenizerMetadataCodingKeys and conformance RequestPayload.FetchTokenizerMetadataCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.FetchTokenizerMetadataCodingKeys and conformance RequestPayload.FetchTokenizerMetadataCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.FetchTokenizerMetadataCodingKeys and conformance RequestPayload.FetchTokenizerMetadataCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.FetchTokenizerMetadataCodingKeys and conformance RequestPayload.FetchTokenizerMetadataCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.FetchTokenizerMetadataCodingKeys and conformance RequestPayload.FetchTokenizerMetadataCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.FetchTokenizerMetadataCodingKeys and conformance RequestPayload.FetchTokenizerMetadataCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.FetchTokenizerMetadataCodingKeys and conformance RequestPayload.FetchTokenizerMetadataCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.FetchTokenizerMetadataCodingKeys and conformance RequestPayload.FetchTokenizerMetadataCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.FetchTokenizerMetadataCodingKeys and conformance RequestPayload.FetchTokenizerMetadataCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.FetchTokenizerMetadataCodingKeys and conformance RequestPayload.FetchTokenizerMetadataCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FetchTokenizerMetadataRequest and conformance FetchTokenizerMetadataRequest()
{
  result = lazy protocol witness table cache variable for type FetchTokenizerMetadataRequest and conformance FetchTokenizerMetadataRequest;
  if (!lazy protocol witness table cache variable for type FetchTokenizerMetadataRequest and conformance FetchTokenizerMetadataRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchTokenizerMetadataRequest and conformance FetchTokenizerMetadataRequest);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FetchTokenizerMetadataRequest and conformance FetchTokenizerMetadataRequest;
  if (!lazy protocol witness table cache variable for type FetchTokenizerMetadataRequest and conformance FetchTokenizerMetadataRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchTokenizerMetadataRequest and conformance FetchTokenizerMetadataRequest);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RequestPayload.CompletePromptTemplateCodingKeys and conformance RequestPayload.CompletePromptTemplateCodingKeys()
{
  result = lazy protocol witness table cache variable for type RequestPayload.CompletePromptTemplateCodingKeys and conformance RequestPayload.CompletePromptTemplateCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.CompletePromptTemplateCodingKeys and conformance RequestPayload.CompletePromptTemplateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.CompletePromptTemplateCodingKeys and conformance RequestPayload.CompletePromptTemplateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.CompletePromptTemplateCodingKeys and conformance RequestPayload.CompletePromptTemplateCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.CompletePromptTemplateCodingKeys and conformance RequestPayload.CompletePromptTemplateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.CompletePromptTemplateCodingKeys and conformance RequestPayload.CompletePromptTemplateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.CompletePromptTemplateCodingKeys and conformance RequestPayload.CompletePromptTemplateCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.CompletePromptTemplateCodingKeys and conformance RequestPayload.CompletePromptTemplateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.CompletePromptTemplateCodingKeys and conformance RequestPayload.CompletePromptTemplateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.CompletePromptTemplateCodingKeys and conformance RequestPayload.CompletePromptTemplateCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.CompletePromptTemplateCodingKeys and conformance RequestPayload.CompletePromptTemplateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.CompletePromptTemplateCodingKeys and conformance RequestPayload.CompletePromptTemplateCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RequestPayload.CompletePromptCodingKeys and conformance RequestPayload.CompletePromptCodingKeys()
{
  result = lazy protocol witness table cache variable for type RequestPayload.CompletePromptCodingKeys and conformance RequestPayload.CompletePromptCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.CompletePromptCodingKeys and conformance RequestPayload.CompletePromptCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.CompletePromptCodingKeys and conformance RequestPayload.CompletePromptCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.CompletePromptCodingKeys and conformance RequestPayload.CompletePromptCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.CompletePromptCodingKeys and conformance RequestPayload.CompletePromptCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.CompletePromptCodingKeys and conformance RequestPayload.CompletePromptCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.CompletePromptCodingKeys and conformance RequestPayload.CompletePromptCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.CompletePromptCodingKeys and conformance RequestPayload.CompletePromptCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.CompletePromptCodingKeys and conformance RequestPayload.CompletePromptCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.CompletePromptCodingKeys and conformance RequestPayload.CompletePromptCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.CompletePromptCodingKeys and conformance RequestPayload.CompletePromptCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.CompletePromptCodingKeys and conformance RequestPayload.CompletePromptCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RequestPayload.CountTokensPromptTemplateCodingKeys and conformance RequestPayload.CountTokensPromptTemplateCodingKeys()
{
  result = lazy protocol witness table cache variable for type RequestPayload.CountTokensPromptTemplateCodingKeys and conformance RequestPayload.CountTokensPromptTemplateCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.CountTokensPromptTemplateCodingKeys and conformance RequestPayload.CountTokensPromptTemplateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.CountTokensPromptTemplateCodingKeys and conformance RequestPayload.CountTokensPromptTemplateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.CountTokensPromptTemplateCodingKeys and conformance RequestPayload.CountTokensPromptTemplateCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.CountTokensPromptTemplateCodingKeys and conformance RequestPayload.CountTokensPromptTemplateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.CountTokensPromptTemplateCodingKeys and conformance RequestPayload.CountTokensPromptTemplateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.CountTokensPromptTemplateCodingKeys and conformance RequestPayload.CountTokensPromptTemplateCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.CountTokensPromptTemplateCodingKeys and conformance RequestPayload.CountTokensPromptTemplateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.CountTokensPromptTemplateCodingKeys and conformance RequestPayload.CountTokensPromptTemplateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.CountTokensPromptTemplateCodingKeys and conformance RequestPayload.CountTokensPromptTemplateCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.CountTokensPromptTemplateCodingKeys and conformance RequestPayload.CountTokensPromptTemplateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.CountTokensPromptTemplateCodingKeys and conformance RequestPayload.CountTokensPromptTemplateCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RequestPayload.CountTokensCodingKeys and conformance RequestPayload.CountTokensCodingKeys()
{
  result = lazy protocol witness table cache variable for type RequestPayload.CountTokensCodingKeys and conformance RequestPayload.CountTokensCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.CountTokensCodingKeys and conformance RequestPayload.CountTokensCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.CountTokensCodingKeys and conformance RequestPayload.CountTokensCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.CountTokensCodingKeys and conformance RequestPayload.CountTokensCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.CountTokensCodingKeys and conformance RequestPayload.CountTokensCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.CountTokensCodingKeys and conformance RequestPayload.CountTokensCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.CountTokensCodingKeys and conformance RequestPayload.CountTokensCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.CountTokensCodingKeys and conformance RequestPayload.CountTokensCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.CountTokensCodingKeys and conformance RequestPayload.CountTokensCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.CountTokensCodingKeys and conformance RequestPayload.CountTokensCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.CountTokensCodingKeys and conformance RequestPayload.CountTokensCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.CountTokensCodingKeys and conformance RequestPayload.CountTokensCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RequestPayload.FetchModelMetadataCodingKeys and conformance RequestPayload.FetchModelMetadataCodingKeys()
{
  result = lazy protocol witness table cache variable for type RequestPayload.FetchModelMetadataCodingKeys and conformance RequestPayload.FetchModelMetadataCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.FetchModelMetadataCodingKeys and conformance RequestPayload.FetchModelMetadataCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.FetchModelMetadataCodingKeys and conformance RequestPayload.FetchModelMetadataCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.FetchModelMetadataCodingKeys and conformance RequestPayload.FetchModelMetadataCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.FetchModelMetadataCodingKeys and conformance RequestPayload.FetchModelMetadataCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.FetchModelMetadataCodingKeys and conformance RequestPayload.FetchModelMetadataCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.FetchModelMetadataCodingKeys and conformance RequestPayload.FetchModelMetadataCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.FetchModelMetadataCodingKeys and conformance RequestPayload.FetchModelMetadataCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.FetchModelMetadataCodingKeys and conformance RequestPayload.FetchModelMetadataCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type RequestPayload.FetchModelMetadataCodingKeys and conformance RequestPayload.FetchModelMetadataCodingKeys;
  if (!lazy protocol witness table cache variable for type RequestPayload.FetchModelMetadataCodingKeys and conformance RequestPayload.FetchModelMetadataCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestPayload.FetchModelMetadataCodingKeys and conformance RequestPayload.FetchModelMetadataCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type FetchModelMetadataRequest and conformance FetchModelMetadataRequest()
{
  result = lazy protocol witness table cache variable for type FetchModelMetadataRequest and conformance FetchModelMetadataRequest;
  if (!lazy protocol witness table cache variable for type FetchModelMetadataRequest and conformance FetchModelMetadataRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchModelMetadataRequest and conformance FetchModelMetadataRequest);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type FetchModelMetadataRequest and conformance FetchModelMetadataRequest;
  if (!lazy protocol witness table cache variable for type FetchModelMetadataRequest and conformance FetchModelMetadataRequest)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FetchModelMetadataRequest and conformance FetchModelMetadataRequest);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StreamingRequestPayload.CodingKeys and conformance StreamingRequestPayload.CodingKeys()
{
  result = lazy protocol witness table cache variable for type StreamingRequestPayload.CodingKeys and conformance StreamingRequestPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type StreamingRequestPayload.CodingKeys and conformance StreamingRequestPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StreamingRequestPayload.CodingKeys and conformance StreamingRequestPayload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StreamingRequestPayload.CodingKeys and conformance StreamingRequestPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type StreamingRequestPayload.CodingKeys and conformance StreamingRequestPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StreamingRequestPayload.CodingKeys and conformance StreamingRequestPayload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StreamingRequestPayload.CodingKeys and conformance StreamingRequestPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type StreamingRequestPayload.CodingKeys and conformance StreamingRequestPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StreamingRequestPayload.CodingKeys and conformance StreamingRequestPayload.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StreamingRequestPayload.CodingKeys and conformance StreamingRequestPayload.CodingKeys;
  if (!lazy protocol witness table cache variable for type StreamingRequestPayload.CodingKeys and conformance StreamingRequestPayload.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StreamingRequestPayload.CodingKeys and conformance StreamingRequestPayload.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StreamingRequestPayload.CompletePromptTemplateCodingKeys and conformance StreamingRequestPayload.CompletePromptTemplateCodingKeys()
{
  result = lazy protocol witness table cache variable for type StreamingRequestPayload.CompletePromptTemplateCodingKeys and conformance StreamingRequestPayload.CompletePromptTemplateCodingKeys;
  if (!lazy protocol witness table cache variable for type StreamingRequestPayload.CompletePromptTemplateCodingKeys and conformance StreamingRequestPayload.CompletePromptTemplateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StreamingRequestPayload.CompletePromptTemplateCodingKeys and conformance StreamingRequestPayload.CompletePromptTemplateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StreamingRequestPayload.CompletePromptTemplateCodingKeys and conformance StreamingRequestPayload.CompletePromptTemplateCodingKeys;
  if (!lazy protocol witness table cache variable for type StreamingRequestPayload.CompletePromptTemplateCodingKeys and conformance StreamingRequestPayload.CompletePromptTemplateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StreamingRequestPayload.CompletePromptTemplateCodingKeys and conformance StreamingRequestPayload.CompletePromptTemplateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StreamingRequestPayload.CompletePromptTemplateCodingKeys and conformance StreamingRequestPayload.CompletePromptTemplateCodingKeys;
  if (!lazy protocol witness table cache variable for type StreamingRequestPayload.CompletePromptTemplateCodingKeys and conformance StreamingRequestPayload.CompletePromptTemplateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StreamingRequestPayload.CompletePromptTemplateCodingKeys and conformance StreamingRequestPayload.CompletePromptTemplateCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StreamingRequestPayload.CompletePromptTemplateCodingKeys and conformance StreamingRequestPayload.CompletePromptTemplateCodingKeys;
  if (!lazy protocol witness table cache variable for type StreamingRequestPayload.CompletePromptTemplateCodingKeys and conformance StreamingRequestPayload.CompletePromptTemplateCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StreamingRequestPayload.CompletePromptTemplateCodingKeys and conformance StreamingRequestPayload.CompletePromptTemplateCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type StreamingRequestPayload.CompletePromptCodingKeys and conformance StreamingRequestPayload.CompletePromptCodingKeys()
{
  result = lazy protocol witness table cache variable for type StreamingRequestPayload.CompletePromptCodingKeys and conformance StreamingRequestPayload.CompletePromptCodingKeys;
  if (!lazy protocol witness table cache variable for type StreamingRequestPayload.CompletePromptCodingKeys and conformance StreamingRequestPayload.CompletePromptCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StreamingRequestPayload.CompletePromptCodingKeys and conformance StreamingRequestPayload.CompletePromptCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StreamingRequestPayload.CompletePromptCodingKeys and conformance StreamingRequestPayload.CompletePromptCodingKeys;
  if (!lazy protocol witness table cache variable for type StreamingRequestPayload.CompletePromptCodingKeys and conformance StreamingRequestPayload.CompletePromptCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StreamingRequestPayload.CompletePromptCodingKeys and conformance StreamingRequestPayload.CompletePromptCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StreamingRequestPayload.CompletePromptCodingKeys and conformance StreamingRequestPayload.CompletePromptCodingKeys;
  if (!lazy protocol witness table cache variable for type StreamingRequestPayload.CompletePromptCodingKeys and conformance StreamingRequestPayload.CompletePromptCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StreamingRequestPayload.CompletePromptCodingKeys and conformance StreamingRequestPayload.CompletePromptCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type StreamingRequestPayload.CompletePromptCodingKeys and conformance StreamingRequestPayload.CompletePromptCodingKeys;
  if (!lazy protocol witness table cache variable for type StreamingRequestPayload.CompletePromptCodingKeys and conformance StreamingRequestPayload.CompletePromptCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type StreamingRequestPayload.CompletePromptCodingKeys and conformance StreamingRequestPayload.CompletePromptCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type RequestMetadata and conformance RequestMetadata()
{
  result = lazy protocol witness table cache variable for type RequestMetadata and conformance RequestMetadata;
  if (!lazy protocol witness table cache variable for type RequestMetadata and conformance RequestMetadata)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type RequestMetadata and conformance RequestMetadata);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for RegisterDocumentRequest(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for RegisterDocumentRequest(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for CountTokensRequest(uint64_t a1)
{
  result = type metadata accessor for XPCDictionary();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PromptVariantEnvelope(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t getEnumTagSinglePayload for CountTokensResponse(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 112))
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

uint64_t storeEnumTagSinglePayload for CountTokensResponse(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 112) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

void type metadata completion function for CountTokensPromptTemplateRequest(uint64_t a1)
{
  type metadata accessor for XPCDictionary();
  if (v1 <= 0x3F)
  {
    type metadata accessor for PromptEnvelope?(319, &lazy cache variable for type metadata for PromptEnvelope?, &unk_1F2068E38, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PromptVariantEnvelope?(319, &lazy cache variable for type metadata for PromptVariantEnvelope?, type metadata accessor for PromptVariantEnvelope, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for PromptTemplateInfoEnvelope(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void type metadata completion function for CompletePromptTemplateRequest(uint64_t a1)
{
  type metadata accessor for XPCDictionary();
  if (v1 <= 0x3F)
  {
    type metadata accessor for PromptEnvelope?(319, &lazy cache variable for type metadata for PromptEnvelope?, &unk_1F2068E38, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PromptVariantEnvelope?(319, &lazy cache variable for type metadata for PromptVariantEnvelope?, type metadata accessor for PromptVariantEnvelope, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for PromptTemplateInfoEnvelope(319);
        if (v4 <= 0x3F)
        {
          type metadata accessor for PromptVariantEnvelope?(319, &lazy cache variable for type metadata for [ToolDescriptionEnvelope], type metadata accessor for ToolDescriptionEnvelope, MEMORY[0x1E69E62F8]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for PromptEnvelope?(319, &lazy cache variable for type metadata for ToolChoiceEnvelope?, &type metadata for ToolChoiceEnvelope, MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              type metadata accessor for PromptVariantEnvelope?(319, &lazy cache variable for type metadata for [DocumentResourceIdentifier], MEMORY[0x1E69C6178], MEMORY[0x1E69E62F8]);
              if (v7 <= 0x3F)
              {
                type metadata accessor for PromptVariantEnvelope?(319, &lazy cache variable for type metadata for Constraints?, type metadata accessor for Constraints, MEMORY[0x1E69E6720]);
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

void type metadata accessor for PromptVariantEnvelope?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void type metadata completion function for CompletePromptRequest(uint64_t a1)
{
  type metadata accessor for XPCDictionary();
  if (v1 <= 0x3F)
  {
    type metadata accessor for PromptVariantEnvelope(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PromptVariantEnvelope?(319, &lazy cache variable for type metadata for Constraints?, type metadata accessor for Constraints, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for PromptVariantEnvelope?(319, &lazy cache variable for type metadata for [ToolDescriptionEnvelope], type metadata accessor for ToolDescriptionEnvelope, MEMORY[0x1E69E62F8]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for PromptEnvelope?(319, &lazy cache variable for type metadata for ToolChoiceEnvelope?, &type metadata for ToolChoiceEnvelope, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for PromptVariantEnvelope?(319, &lazy cache variable for type metadata for [DocumentResourceIdentifier], MEMORY[0x1E69C6178], MEMORY[0x1E69E62F8]);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_66Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for XPCDictionary();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else if (a2 == 0x7FFFFFFF)
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }

  else
  {
    v11 = type metadata accessor for PromptVariantEnvelope(0);
    v12 = *(*(v11 - 8) + 48);
    v13 = a1 + *(a3 + 24);

    return v12(v13, a2, v11);
  }
}

uint64_t __swift_store_extra_inhabitant_index_67Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for XPCDictionary();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else if (a3 == 0x7FFFFFFF)
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  else
  {
    v11 = type metadata accessor for PromptVariantEnvelope(0);
    v12 = *(*(v11 - 8) + 56);
    v13 = a1 + *(a4 + 24);

    return v12(v13, a2, a2, v11);
  }

  return result;
}

uint64_t type metadata completion function for ClassifyPromptRequest(uint64_t a1)
{
  result = type metadata accessor for XPCDictionary();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PromptVariantEnvelope(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void type metadata completion function for ClassifyPromptTemplateRequest(uint64_t a1)
{
  type metadata accessor for XPCDictionary();
  if (v1 <= 0x3F)
  {
    type metadata accessor for PromptEnvelope?(319, &lazy cache variable for type metadata for PromptEnvelope?, &unk_1F2068E38, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for PromptVariantEnvelope?(319, &lazy cache variable for type metadata for PromptVariantEnvelope?, type metadata accessor for PromptVariantEnvelope, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for PromptTemplateInfoEnvelope(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

uint64_t type metadata completion function for ClassifyPromptResponse(uint64_t a1)
{
  result = type metadata accessor for XPCDictionary();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v6 = (a4)(0, a2, a3);
  v7 = *(*(v6 - 8) + 48);

  return v7(a1, a2, v6);
}

uint64_t __swift_store_extra_inhabitant_indexTm_2(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v7 = (a5)(0, a2, a3, a4);
  v8 = *(*(v7 - 8) + 56);

  return v8(a1, a2, a2, v7);
}

uint64_t type metadata completion function for RegisterDocumentResponseElement(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void type metadata completion function for CompletePromptResponse(uint64_t a1)
{
  type metadata accessor for PromptVariantEnvelope?(319, &lazy cache variable for type metadata for InferenceResponseEnvelope?, MEMORY[0x1E69C6508], MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
  }
}

uint64_t getEnumTagSinglePayload for FetchTokenizerMetadataResponse(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 24))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for FetchTokenizerMetadataResponse(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 24) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 24) = 0;
    }

    if (a2)
    {
      *(result + 16) = ~a2;
    }
  }

  return result;
}

uint64_t type metadata completion function for Constraints(uint64_t a1)
{
  result = type metadata accessor for GenerationSchema();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

__n128 __swift_memcpy176_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t getEnumTagSinglePayload for PromptCompletionEnvelope(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for PromptCompletionEnvelope(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
    *(result + 152) = 0u;
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
      *(result + 176) = 1;
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

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t type metadata completion function for DocumentRegistrationEnvelope(uint64_t a1)
{
  result = type metadata accessor for DocumentRegistrationStatusEnvelope(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for URL();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

__n128 __swift_memcpy210_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  v6 = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = v6;
  *(a1 + 112) = v7;
  result = *(a2 + 160);
  v10 = *(a2 + 176);
  v11 = *(a2 + 192);
  *(a1 + 208) = *(a2 + 208);
  *(a1 + 176) = v10;
  *(a1 + 192) = v11;
  *(a1 + 160) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for SamplingParametersEnvelope(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 210))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 80);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for SamplingParametersEnvelope(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 200) = 0;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 208) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 210) = 1;
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
      *(result + 80) = (a2 - 1);
      return result;
    }

    *(result + 210) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for SamplingStrategyEnvelope(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 9))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 8);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for SamplingStrategyEnvelope(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 8) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t getEnumTag for SamplingStrategyEnvelope(uint64_t a1)
{
  if (*(a1 + 8) <= 1u)
  {
    return *(a1 + 8);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t destructiveInjectEnumTag for SamplingStrategyEnvelope(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t getEnumTagSinglePayload for SamplingParametersEnvelope.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for SamplingParametersEnvelope.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t type metadata completion function for PromptCompletionStreamElementEnvelope.Envelope(uint64_t a1)
{
  result = type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope(319);
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_404Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  if (a2 == 0x7FFFFFFF)
  {
    v5 = *(a1 + 8);
    if (v5 >= 0xFFFFFFFF)
    {
      LODWORD(v5) = -1;
    }

    return (v5 + 1);
  }

  else
  {
    v9 = a4(0);
    v10 = *(*(v9 - 8) + 48);
    v11 = a1 + *(a3 + 28);

    return v10(v11, a2, v9);
  }
}

uint64_t __swift_store_extra_inhabitant_index_405Tm(uint64_t result, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  v6 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v8 = a5(0);
    v9 = *(*(v8 - 8) + 56);
    v10 = v6 + *(a4 + 28);

    return v9(v10, a2, a2, v8);
  }

  return result;
}

uint64_t type metadata completion function for PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t))
{
  result = a4(319, a2, a3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
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

uint64_t getEnumTagSinglePayload for PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 120))
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

uint64_t storeEnumTagSinglePayload for PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t type metadata completion function for PromptCompletionEnvelope.SegmentEnvelope(uint64_t a1)
{
  result = type metadata accessor for FileContentEnvelope(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for StreamingRequestPayload(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(uint64_t))
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    result = a5(319);
    if (v8 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t type metadata completion function for AnnotationEnvelope(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  result = a5(319, a2, a3);
  if (v6 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t __swift_get_extra_inhabitant_index_37Tm(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void))
{
  v7 = a4(0);
  v8 = *(v7 - 8);
  if (*(v8 + 84) == a2)
  {
    v9 = *(v8 + 48);

    return v9(a1, a2, v7);
  }

  else
  {
    v11 = *(a1 + *(a3 + 20) + 8);
    if (v11 >= 0xFFFFFFFF)
    {
      LODWORD(v11) = -1;
    }

    return (v11 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_38Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4, uint64_t (*a5)(void))
{
  result = a5(0);
  v10 = *(result - 8);
  if (*(v10 + 84) == a3)
  {
    v11 = *(v10 + 56);

    return v11(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata completion function for CompileAdapterRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t a5, uint64_t a6)
{
  result = a4(319, a2, a3);
  if (v7 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}