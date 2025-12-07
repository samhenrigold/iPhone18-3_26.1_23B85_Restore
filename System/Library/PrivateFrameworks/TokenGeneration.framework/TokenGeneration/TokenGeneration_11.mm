uint64_t CompileAdapterRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration21CompileAdapterRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration21CompileAdapterRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v4 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v6 = &v24 - v5;
  v7 = type metadata accessor for CompileAdapterRequest(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  XPCDictionary.init()();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CompileAdapterRequest.CodingKeys and conformance CompileAdapterRequest.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    v17 = type metadata accessor for XPCDictionary();
    return (*(*(v17 - 8) + 8))(v9, v17);
  }

  else
  {
    v10 = v4;
    v11 = v25;
    v32 = 0;
    lazy protocol witness table accessor for type RequestMetadataEnvelope and conformance RequestMetadataEnvelope();
    v12 = v26;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v13 = v28;
    v14 = v29;
    v15 = v31;
    v16 = &v9[v7[5]];
    *v16 = v27;
    *(v16 + 2) = v13;
    *(v16 + 3) = v14;
    *(v16 + 2) = v30;
    *(v16 + 6) = v15;
    LOBYTE(v27) = 1;
    v9[v7[7]] = KeyedDecodingContainer.decode(_:forKey:)() & 1;
    LOBYTE(v27) = 2;
    v18 = KeyedDecodingContainer.decode(_:forKey:)();
    v19 = v6;
    v21 = v20;
    (*(v10 + 8))(v19, v12);
    v22 = &v9[v7[6]];
    *v22 = v18;
    v22[1] = v21;
    outlined init with copy of DocumentResourceEnvelope(v9, v11, type metadata accessor for CompileAdapterRequest);
    __swift_destroy_boxed_opaque_existential_0(a1);
    return outlined destroy of DocumentResourceEnvelope(v9, type metadata accessor for CompileAdapterRequest);
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance CompileAdapterResponse.DraftModelCompileResult.CodingKeys()
{
  v1 = *v0;
  v2 = 0x4D74666172446F6ELL;
  v3 = 0xD000000000000014;
  v4 = 0x69706D6F43746F6ELL;
  if (v1 != 3)
  {
    v4 = 0x64656C69706D6F63;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x4379646165726C61;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CompileAdapterResponse.DraftModelCompileResult.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized CompileAdapterResponse.DraftModelCompileResult.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CompileAdapterResponse.DraftModelCompileResult.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.CodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CompileAdapterResponse.DraftModelCompileResult.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.CodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CompileAdapterResponse.DraftModelCompileResult.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration22CompileAdapterResponseV010DraftModelF6ResultO18CompiledCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration22CompileAdapterResponseV010DraftModelF6ResultO18CompiledCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v39 = &v33 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration22CompileAdapterResponseV010DraftModelF6ResultO21NotCompiledCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration22CompileAdapterResponseV010DraftModelF6ResultO21NotCompiledCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v37 = *(v5 - 8);
  v38 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v36 = &v33 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration22CompileAdapterResponseV010DraftModelF6ResultO30SkippedBecauseQueuedCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration22CompileAdapterResponseV010DraftModelF6ResultO30SkippedBecauseQueuedCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v33 = &v33 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration22CompileAdapterResponseV010DraftModelF6ResultO25AlreadyCompiledCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration22CompileAdapterResponseV010DraftModelF6ResultO25AlreadyCompiledCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration22CompileAdapterResponseV010DraftModelF6ResultO02NoiJ10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration22CompileAdapterResponseV010DraftModelF6ResultO02NoiJ10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v42 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration22CompileAdapterResponseV010DraftModelF6ResultO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration22CompileAdapterResponseV010DraftModelF6ResultO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v15 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v16 = *v1;
  v17 = a1[3];
  v18 = a1;
  v20 = &v33 - v19;
  __swift_project_boxed_opaque_existential_1(v18, v17);
  lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.CodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v21 = (v15 + 8);
  if (v16 <= 1)
  {
    v26 = v20;
    v28 = v42;
    v27 = v43;
    v29 = v11;
    v30 = v44;
    if (v16)
    {
      v47 = 1;
      lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys();
      v31 = v45;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v27 + 8))(v29, v30);
    }

    else
    {
      v46 = 0;
      lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys();
      v31 = v45;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v28 + 8))(v14, v12);
    }

    return (*v21)(v26, v31);
  }

  else
  {
    if (v16 == 2)
    {
      v48 = 2;
      lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys();
      v22 = v33;
      v23 = v45;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v25 = v34;
      v24 = v35;
    }

    else if (v16 == 3)
    {
      v49 = 3;
      lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys();
      v22 = v36;
      v23 = v45;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v25 = v37;
      v24 = v38;
    }

    else
    {
      v50 = 4;
      lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys();
      v22 = v39;
      v23 = v45;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v25 = v40;
      v24 = v41;
    }

    (*(v25 + 8))(v22, v24);
    return (*v21)(v20, v23);
  }
}

Swift::Int CompileAdapterResponse.DraftModelCompileResult.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x1AC5A6570](v1);
  return Hasher._finalize()();
}

uint64_t CompileAdapterResponse.DraftModelCompileResult.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v59 = a2;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration22CompileAdapterResponseV010DraftModelF6ResultO18CompiledCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration22CompileAdapterResponseV010DraftModelF6ResultO18CompiledCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v52 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v56 = &v45 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration22CompileAdapterResponseV010DraftModelF6ResultO21NotCompiledCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration22CompileAdapterResponseV010DraftModelF6ResultO21NotCompiledCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v5 = *(v4 - 8);
  v53 = v4;
  v54 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v58 = &v45 - v6;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration22CompileAdapterResponseV010DraftModelF6ResultO30SkippedBecauseQueuedCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration22CompileAdapterResponseV010DraftModelF6ResultO30SkippedBecauseQueuedCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v48 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v57 = &v45 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration22CompileAdapterResponseV010DraftModelF6ResultO25AlreadyCompiledCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration22CompileAdapterResponseV010DraftModelF6ResultO25AlreadyCompiledCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v45 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration22CompileAdapterResponseV010DraftModelF6ResultO02NoiJ10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration22CompileAdapterResponseV010DraftModelF6ResultO02NoiJ10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v47 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v45 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration22CompileAdapterResponseV010DraftModelF6ResultO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration22CompileAdapterResponseV010DraftModelF6ResultO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v45 - v16;
  v18 = a1[3];
  v60 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.CodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CodingKeys();
  v19 = v61;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v19)
  {
    goto LABEL_11;
  }

  v20 = v13;
  v45 = v11;
  v46 = 0;
  v22 = v57;
  v21 = v58;
  v61 = v15;
  v23 = v59;
  v24 = v14;
  v25 = KeyedDecodingContainer.allKeys.getter();
  v26 = (2 * *(v25 + 16)) | 1;
  v62 = v25;
  v63 = v25 + 32;
  v64 = 0;
  v65 = v26;
  v27 = specialized Collection<>.popFirst()();
  if (v27 == 5 || v64 != v65 >> 1)
  {
    v32 = type metadata accessor for DecodingError();
    swift_allocError();
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v34 = &type metadata for CompileAdapterResponse.DraftModelCompileResult;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v32 - 8) + 104))(v34, *MEMORY[0x1E69E6AF8], v32);
    swift_willThrow();
    (*(v61 + 8))(v17, v14);
    goto LABEL_10;
  }

  v66 = v27;
  if (v27 <= 1u)
  {
    if (v27)
    {
      v67 = 1;
      lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.AlreadyCompiledCodingKeys();
      v43 = v10;
      v38 = v14;
      v44 = v46;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v44)
      {
        v40 = v61;
        goto LABEL_23;
      }

      (*(v49 + 8))(v43, v50);
      (*(v61 + 8))(v17, v14);
    }

    else
    {
      v67 = 0;
      lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.NoDraftModelCodingKeys();
      v37 = v46;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v37)
      {
        (*(v61 + 8))(v17, v14);
        goto LABEL_10;
      }

      (*(v47 + 8))(v20, v45);
      (*(v61 + 8))(v17, v14);
    }

    swift_unknownObjectRelease();
    v35 = v60;
    v28 = v23;
    goto LABEL_30;
  }

  v28 = v23;
  if (v27 == 2)
  {
    v67 = 2;
    lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.SkippedBecauseQueuedCodingKeys();
    v38 = v24;
    v39 = v46;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v40 = v61;
    if (!v39)
    {
      (*(v48 + 8))(v22, v51);
      (*(v40 + 8))(v17, v38);
LABEL_25:
      swift_unknownObjectRelease();
      v35 = v60;
      goto LABEL_30;
    }

LABEL_23:
    (*(v40 + 8))(v17, v38);
    goto LABEL_10;
  }

  v29 = v17;
  v30 = v61;
  if (v27 != 3)
  {
    v67 = 4;
    lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.CompiledCodingKeys();
    v41 = v56;
    v42 = v46;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    if (v42)
    {
      (*(v30 + 8))(v29, v24);
      goto LABEL_10;
    }

    (*(v52 + 8))(v41, v55);
    (*(v30 + 8))(v29, v24);
    swift_unknownObjectRelease();
    v35 = v60;
    v28 = v23;
LABEL_30:
    *v28 = v66;
    return __swift_destroy_boxed_opaque_existential_0(v35);
  }

  v67 = 3;
  lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys and conformance CompileAdapterResponse.DraftModelCompileResult.NotCompiledCodingKeys();
  v31 = v46;
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  if (!v31)
  {
    (*(v54 + 8))(v21, v53);
    (*(v30 + 8))(v29, v24);
    goto LABEL_25;
  }

  (*(v30 + 8))(v29, v24);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  v35 = v60;
  return __swift_destroy_boxed_opaque_existential_0(v35);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CompileAdapterResponse.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000017 && 0x80000001ABA417E0 == a2)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CompileAdapterResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CompileAdapterResponse.CodingKeys and conformance CompileAdapterResponse.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CompileAdapterResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CompileAdapterResponse.CodingKeys and conformance CompileAdapterResponse.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CompileAdapterResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration22CompileAdapterResponseV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration22CompileAdapterResponseV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CompileAdapterResponse.CodingKeys and conformance CompileAdapterResponse.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v10 = v7;
  lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult and conformance CompileAdapterResponse.DraftModelCompileResult();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t CompileAdapterResponse.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration22CompileAdapterResponseV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration22CompileAdapterResponseV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CompileAdapterResponse.CodingKeys and conformance CompileAdapterResponse.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type CompileAdapterResponse.DraftModelCompileResult and conformance CompileAdapterResponse.DraftModelCompileResult();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v11;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FetchModelMetadataRequest.CodingKeys(uint64_t a1)
{
  ModelMetadata = lazy protocol witness table accessor for type FetchModelMetadataRequest.CodingKeys and conformance FetchModelMetadataRequest.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, ModelMetadata);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FetchModelMetadataRequest.CodingKeys(uint64_t a1)
{
  ModelMetadata = lazy protocol witness table accessor for type FetchModelMetadataRequest.CodingKeys and conformance FetchModelMetadataRequest.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, ModelMetadata);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance FetchModelMetadataResponse.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x53747865746E6F63 && a2 == 0xEB00000000657A69)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FetchModelMetadataResponse.CodingKeys(uint64_t a1)
{
  ModelMetadata = lazy protocol witness table accessor for type FetchModelMetadataResponse.CodingKeys and conformance FetchModelMetadataResponse.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, ModelMetadata);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FetchModelMetadataResponse.CodingKeys(uint64_t a1)
{
  ModelMetadata = lazy protocol witness table accessor for type FetchModelMetadataResponse.CodingKeys and conformance FetchModelMetadataResponse.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, ModelMetadata);
}

uint64_t FetchModelMetadataResponse.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration26FetchModelMetadataResponseV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration26FetchModelMetadataResponseV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type FetchModelMetadataResponse.CodingKeys and conformance FetchModelMetadataResponse.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t FetchModelMetadataResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration26FetchModelMetadataResponseV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration26FetchModelMetadataResponseV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type FetchModelMetadataResponse.CodingKeys and conformance FetchModelMetadataResponse.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance FetchModelMetadataResponse(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration26FetchModelMetadataResponseV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration26FetchModelMetadataResponseV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type FetchModelMetadataResponse.CodingKeys and conformance FetchModelMetadataResponse.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance CountTokensRequest.CodingKeys(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x7461646174656D5FLL;
  v4 = 0xE900000000000061;
  if (v2 != 1)
  {
    v3 = 0x5674706D6F72705FLL;
    v4 = 0xEE00746E61697261;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x74706D6F72705FLL;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0x7461646174656D5FLL;
  v8 = 0xE900000000000061;
  if (*a2 != 1)
  {
    v7 = 0x5674706D6F72705FLL;
    v8 = 0xEE00746E61697261;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x74706D6F72705FLL;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE700000000000000;
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

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CountTokensRequest.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CountTokensRequest.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CountTokensRequest.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CountTokensRequest.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized CountTokensRequest.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance CountTokensRequest.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE900000000000061;
  v5 = 0x7461646174656D5FLL;
  if (v2 != 1)
  {
    v5 = 0x5674706D6F72705FLL;
    v4 = 0xEE00746E61697261;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x74706D6F72705FLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CountTokensRequest.CodingKeys()
{
  v1 = 0x7461646174656D5FLL;
  if (*v0 != 1)
  {
    v1 = 0x5674706D6F72705FLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x74706D6F72705FLL;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance CountTokensRequest.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized CountTokensRequest.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CountTokensRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CountTokensRequest.CodingKeys and conformance CountTokensRequest.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CountTokensRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CountTokensRequest.CodingKeys and conformance CountTokensRequest.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PromptEnvelope.unseal(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v36 = a1;
  v37 = a5;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v48 = v35 - v11;
  v47 = type metadata accessor for Prompt.SpecialToken();
  v12 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v46 = v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v44 = v35 - v15;
  v45 = type metadata accessor for PromptEnvelope.DelimiterEnvelope(0);
  v16 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v18 = v35 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = type metadata accessor for Prompt.Delimiter();
  v19 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v21 = v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(a4 + 16);
  if (v22)
  {
    v35[1] = a6;
    v35[2] = a2;
    v51 = MEMORY[0x1E69E7CC0];
    v35[3] = a3;

    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
    v23 = v16;
    v24 = v51;
    v25 = a4 + ((*(v23 + 80) + 32) & ~*(v23 + 80));
    v26 = *(v23 + 72);
    v40 = (v12 + 16);
    v41 = v26;
    v38 = v19 + 32;
    v39 = (v12 + 8);
    v42 = v19;
    do
    {
      v49 = v22;
      v50 = v24;
      outlined init with copy of DocumentResourceEnvelope(v25, v18, type metadata accessor for PromptEnvelope.DelimiterEnvelope);
      outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(&v18[*(v45 + 32)], v48, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);

      v27 = v44;
      Prompt.SpecialToken.init(identifier:instance:locale:)();
      Prompt.SpecialToken.annotationOnly.setter();
      v28 = v47;
      (*v40)(v46, v27, v47);
      Prompt.Delimiter.init(token:position:priority:)();
      v29 = v27;
      v24 = v50;
      (*v39)(v29, v28);
      outlined destroy of DocumentResourceEnvelope(v18, type metadata accessor for PromptEnvelope.DelimiterEnvelope);
      v51 = v24;
      v31 = *(v24 + 16);
      v30 = *(v24 + 24);
      if (v31 >= v30 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1);
        v24 = v51;
      }

      *(v24 + 16) = v31 + 1;
      v32 = (*(v42 + 32))(v24 + ((*(v42 + 80) + 32) & ~*(v42 + 80)) + *(v42 + 72) * v31, v21, v43);
      v25 += v41;
      v22 = v49 - 1;
    }

    while (v49 != 1);
  }

  else
  {
  }

  MEMORY[0x1EEE9AC00](v32);
  v33 = v37;
  v35[-2] = v36;
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV010AttachmentG0VG_AF0F0V0Q0Vs5NeverOTg5Tm(partial apply for closure #2 in PromptEnvelope.unseal(_:), &v35[-4], v33, MEMORY[0x1E69DA700], specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:), type metadata accessor for PromptEnvelope.AttachmentEnvelope);
  return Prompt.init(string:delimiters:attachments:)();
}

uint64_t PromptVariantEnvelope.unseal(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a1;
  v32 = a2;
  v2 = type metadata accessor for PromptVariantEnvelope.CompletionPromptEnvelope(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v29 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for RunnableConfigurationStorage();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
  v30 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v29 - v7;
  v9 = type metadata accessor for OverridableConfigurationStorage();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v29 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for PromptVariantEnvelope.ChatMessagesPromptEnvelope(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for PromptVariantEnvelope(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v29 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DocumentResourceEnvelope(v29, v18, type metadata accessor for PromptVariantEnvelope);
  v19 = (v10 + 16);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of DocumentRegistrationEnvelope(v18, v4, type metadata accessor for PromptVariantEnvelope.CompletionPromptEnvelope);
    (*v19)(v12, v4, v9);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v31, v8, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
    v20 = (*(v30 + 80) + 16) & ~*(v30 + 80);
    v21 = swift_allocObject();
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v8, v21 + v20, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
    OverridableConfigurationStorage.mapValue.setter();
    RunnableConfigurationStorage.init()();
    v22 = v32;
    CompletionPrompt.init(overridableConfigurationStorage:runnableConfigurationStorage:)();
    outlined destroy of DocumentResourceEnvelope(v4, type metadata accessor for PromptVariantEnvelope.CompletionPromptEnvelope);
    v23 = MEMORY[0x1E69DA6E0];
  }

  else
  {
    outlined init with take of DocumentRegistrationEnvelope(v18, v15, type metadata accessor for PromptVariantEnvelope.ChatMessagesPromptEnvelope);
    (*v19)(v12, v15, v9);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v31, v8, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
    v24 = (*(v30 + 80) + 16) & ~*(v30 + 80);
    v25 = swift_allocObject();
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v8, v25 + v24, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
    OverridableConfigurationStorage.mapValue.setter();
    RunnableConfigurationStorage.init()();
    v22 = v32;
    ChatMessagesPrompt.init(overridableConfigurationStorage:runnableConfigurationStorage:)();
    outlined destroy of DocumentResourceEnvelope(v15, type metadata accessor for PromptVariantEnvelope.ChatMessagesPromptEnvelope);
    v23 = MEMORY[0x1E69DA6E8];
  }

  v26 = *v23;
  v27 = type metadata accessor for PromptVariant();
  return (*(*(v27 - 8) + 104))(v22, v26, v27);
}

uint64_t PromptVariantEnvelope.init(sealing:xpcData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v41 = a2;
  v42 = a3;
  v4 = type metadata accessor for CompletionPrompt();
  v39 = *(v4 - 8);
  v40 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v38 = &v37 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v37 - v7;
  v9 = type metadata accessor for OverridableConfigurationStorage();
  v43 = *(v9 - 8);
  v44 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ChatMessagesPrompt();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v37 - v17;
  v19 = type metadata accessor for PromptVariant();
  v20 = *(v19 - 8);
  v21 = MEMORY[0x1EEE9AC00](v19);
  v23 = &v37 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = *(v20 + 16);
  v45 = a1;
  v24(v23, a1, v19, v21);
  v25 = (*(v20 + 88))(v23, v19);
  if (v25 == *MEMORY[0x1E69DA6E0])
  {
    (*(v20 + 96))(v23, v19);
    v27 = v39;
    v26 = v40;
    (*(v39 + 32))(v8, v23, v40);
    v28 = v38;
    (*(v27 + 16))(v38, v8, v26);
    CompletionPrompt._overridableConfigurationStorage.getter();
    v29 = OverridableConfigurationStorage.configuration.getter();
    specialized _NativeDictionary.mapValues<A>(_:)(v29, v41, v30);

    OverridableConfigurationStorage.init(configuration:)();
    (*(v20 + 8))(v45, v19);
    (*(v43 + 8))(v11, v44);
    v31 = *(v27 + 8);
    v31(v28, v26);
    v31(v8, v26);
LABEL_5:
    type metadata accessor for PromptVariantEnvelope(0);
    return swift_storeEnumTagMultiPayload();
  }

  v32 = v41;
  if (v25 == *MEMORY[0x1E69DA6E8])
  {
    (*(v20 + 96))(v23, v19);
    (*(v13 + 32))(v18, v23, v12);
    (*(v13 + 16))(v15, v18, v12);
    ChatMessagesPrompt._overridableConfigurationStorage.getter();
    v33 = OverridableConfigurationStorage.configuration.getter();
    specialized _NativeDictionary.mapValues<A>(_:)(v33, v32, v34);

    OverridableConfigurationStorage.init(configuration:)();
    (*(v20 + 8))(v45, v19);
    (*(v43 + 8))(v11, v44);
    v35 = *(v13 + 8);
    v35(v15, v12);
    v35(v18, v12);
    goto LABEL_5;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t (*CountTokensRequest.promptVariant.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(type metadata accessor for PromptVariantEnvelope(0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v5[1] = v7;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR) - 8) + 64);
  if (v3)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  v10 = v9;
  v5[2] = v9;
  v11 = type metadata accessor for PromptVariant();
  v5[3] = v11;
  v12 = *(v11 - 8);
  v5[4] = v12;
  v13 = *(v12 + 64);
  if (v3)
  {
    v5[5] = swift_coroFrameAlloc();
    v5[6] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[5] = malloc(*(v12 + 64));
    v5[6] = malloc(v13);
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[7] = v14;
  *(v5 + 16) = *(type metadata accessor for CountTokensRequest(0) + 24);
  v16 = type metadata accessor for XPCDictionary();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v10, v1, v16);
  (*(v17 + 56))(v10, 0, 1, v16);
  PromptVariantEnvelope.unseal(_:)(v10, v15);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
  return CountTokensRequest.promptVariant.modify;
}

double CountTokensRequest.metadata.getter@<D0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CountTokensRequest(0) + 28));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v8 = v3[4];
  v7 = v3[5];
  v9 = v3[6];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v8;
  a1[5] = v7;
  a1[6] = v9;

  return result;
}

uint64_t CountTokensRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration18CountTokensRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration18CountTokensRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CountTokensRequest.CodingKeys and conformance CountTokensRequest.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = type metadata accessor for CountTokensRequest(0);
  v10 = (v3 + *(v9 + 20));
  v11 = v10[3];
  v22 = *v10;
  v23 = *(v10 + 1);
  v24 = v11;
  v28 = 0;
  lazy protocol witness table accessor for type PromptEnvelope and conformance PromptEnvelope();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = *(v9 + 28);
    v21 = v3;
    v13 = (v3 + v12);
    v14 = v13[1];
    v15 = v13[2];
    v16 = v13[3];
    v17 = v13[4];
    v18 = v13[5];
    v19 = v13[6];
    v22 = *v13;
    *&v23 = v14;
    *(&v23 + 1) = v15;
    v24 = v16;
    v25 = v17;
    v26 = v18;
    v27 = v19;
    v28 = 1;
    lazy protocol witness table accessor for type RequestMetadataEnvelope and conformance RequestMetadataEnvelope();

    KeyedEncodingContainer.encode<A>(_:forKey:)();

    LOBYTE(v22) = 2;
    type metadata accessor for PromptVariantEnvelope(0);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptVariantEnvelope and conformance PromptVariantEnvelope, type metadata accessor for PromptVariantEnvelope, &protocol conformance descriptor for PromptVariantEnvelope);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t CountTokensRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = type metadata accessor for PromptVariantEnvelope(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration18CountTokensRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration18CountTokensRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v27 = *(v7 - 8);
  v28 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v25 - v8;
  v10 = type metadata accessor for CountTokensRequest(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  XPCDictionary.init()();
  v13 = a1[3];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  lazy protocol witness table accessor for type CountTokensRequest.CodingKeys and conformance CountTokensRequest.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v29);
    v17 = type metadata accessor for XPCDictionary();
    return (*(*(v17 - 8) + 8))(v12, v17);
  }

  else
  {
    v14 = v27;
    v15 = v6;
    v34 = 0;
    lazy protocol witness table accessor for type PromptEnvelope and conformance PromptEnvelope();
    v16 = v28;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v18 = v31;
    v19 = &v12[v10[5]];
    *v19 = *v30;
    *(v19 + 8) = *&v30[8];
    *(v19 + 3) = v18;
    v34 = 1;
    lazy protocol witness table accessor for type RequestMetadataEnvelope and conformance RequestMetadataEnvelope();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v20 = *&v30[16];
    v21 = v31;
    v22 = v33;
    v23 = &v12[v10[7]];
    *v23 = *v30;
    *(v23 + 2) = v20;
    *(v23 + 3) = v21;
    *(v23 + 2) = v32;
    *(v23 + 6) = v22;
    v30[0] = 2;
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptVariantEnvelope and conformance PromptVariantEnvelope, type metadata accessor for PromptVariantEnvelope, &protocol conformance descriptor for PromptVariantEnvelope);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v14 + 8))(v9, v16);
    outlined init with take of DocumentRegistrationEnvelope(v15, &v12[v10[6]], type metadata accessor for PromptVariantEnvelope);
    outlined init with copy of DocumentResourceEnvelope(v12, v26, type metadata accessor for CountTokensRequest);
    __swift_destroy_boxed_opaque_existential_0(v29);
    return outlined destroy of DocumentResourceEnvelope(v12, type metadata accessor for CountTokensRequest);
  }
}

uint64_t CountTokensResponse.renderedPrompt.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Prompt.Rendering.Source();
  MEMORY[0x1EEE9AC00](v3 - 8);
  if (*(v1 + 16))
  {

    Prompt.Rendering.Source.init(identifier:version:)();

    Prompt.Rendering.init(source:segments:renderedString:originalPrompt:tokenIDs:userInfo:detokenizedString:)();
    v4 = type metadata accessor for Prompt.Rendering();
    return (*(*(v4 - 8) + 56))(a1, 0, 1, v4);
  }

  else
  {
    v6 = type metadata accessor for Prompt.Rendering();
    v7 = *(*(v6 - 8) + 56);

    return v7(a1, 1, 1, v6);
  }
}

uint64_t CountTokensResponse.init(count:renderedPrompt:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Prompt.Rendering();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v24 - v14;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2, &v24 - v14, &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  if ((*(v7 + 48))(v15, 1, v6) == 1)
  {
    result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2, &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
    v17 = 0;
    v18 = 0uLL;
    v19 = 0uLL;
    v20 = 0uLL;
    v21 = 0uLL;
    v22 = 0uLL;
    v23 = 0uLL;
  }

  else
  {
    (*(v7 + 32))(v12, v15, v6);
    (*(v7 + 16))(v9, v12, v6);
    specialized PromptRenderingEnvelope.init(sealing:)(v9, v30);
    v28 = v30[1];
    v29 = v30[0];
    v26 = v30[3];
    v27 = v30[2];
    v25 = v30[4];
    v24 = v30[5];
    v17 = v31;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(a2, &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
    result = (*(v7 + 8))(v12, v6);
    v23 = v24;
    v22 = v25;
    v21 = v26;
    v20 = v27;
    v19 = v28;
    v18 = v29;
  }

  *a3 = a1;
  *(a3 + 8) = v18;
  *(a3 + 24) = v19;
  *(a3 + 40) = v20;
  *(a3 + 56) = v21;
  *(a3 + 72) = v22;
  *(a3 + 88) = v23;
  *(a3 + 104) = v17;
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CountTokensResponse.CodingKeys()
{
  if (*v0)
  {
    return 0x657265646E65725FLL;
  }

  else
  {
    return 0x746E756F63;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CountTokensResponse.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746E756F63 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x657265646E65725FLL && a2 == 0xEF74706D6F725064)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CountTokensResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CountTokensResponse.CodingKeys and conformance CountTokensResponse.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CountTokensResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CountTokensResponse.CodingKeys and conformance CountTokensResponse.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CountTokensResponse.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration19CountTokensResponseV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration19CountTokensResponseV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v16 - v6;
  v8 = *(v1 + 56);
  v9 = *(v1 + 88);
  v29 = *(v1 + 72);
  v30 = v9;
  v31 = *(v1 + 104);
  v10 = *(v1 + 24);
  v25 = *(v1 + 8);
  v26 = v10;
  v27 = *(v1 + 40);
  v28 = v8;
  v11 = a1[3];
  v12 = a1;
  v14 = v13;
  __swift_project_boxed_opaque_existential_1(v12, v11);
  lazy protocol witness table accessor for type CountTokensResponse.CodingKeys and conformance CountTokensResponse.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v18) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v22 = v29;
    v23 = v30;
    v24 = v31;
    v18 = v25;
    v19 = v26;
    v20 = v27;
    v21 = v28;
    v32 = 1;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(&v25, v16, &_s15TokenGeneration23PromptRenderingEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVSgMd, &_s15TokenGeneration23PromptRenderingEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVSgMR);
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

  return (*(v5 + 8))(v7, v14);
}

uint64_t CountTokensResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration19CountTokensResponseV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration19CountTokensResponseV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CountTokensResponse.CodingKeys and conformance CountTokensResponse.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    LOBYTE(v15) = 0;
    v9 = KeyedDecodingContainer.decode(_:forKey:)();
    v22 = 1;
    lazy protocol witness table accessor for type PromptRenderingEnvelope and conformance PromptRenderingEnvelope();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v10 = v17;
    *(a2 + 56) = v18;
    v11 = v20;
    *(a2 + 72) = v19;
    *(a2 + 88) = v11;
    v12 = v16;
    *(a2 + 8) = v15;
    *(a2 + 24) = v12;
    *a2 = v9;
    *(a2 + 104) = v21;
    *(a2 + 40) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CountTokensPromptTemplateRequest.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance CountTokensPromptTemplateRequest.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CountTokensPromptTemplateRequest.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CountTokensPromptTemplateRequest.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized CountTokensPromptTemplateRequest.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance CountTokensPromptTemplateRequest.CodingKeys(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x74706D6F72705FLL;
  v4 = 0x80000001ABA3F3F0;
  v5 = 0xD000000000000013;
  if (*v1 != 2)
  {
    v5 = 0x7461646174656D5FLL;
    v4 = 0xE900000000000061;
  }

  if (*v1)
  {
    v3 = 0x5674706D6F72705FLL;
    v2 = 0xEE00746E61697261;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance CountTokensPromptTemplateRequest.CodingKeys()
{
  v1 = 0x74706D6F72705FLL;
  v2 = 0xD000000000000013;
  if (*v0 != 2)
  {
    v2 = 0x7461646174656D5FLL;
  }

  if (*v0)
  {
    v1 = 0x5674706D6F72705FLL;
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

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance CountTokensPromptTemplateRequest.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized CountTokensPromptTemplateRequest.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CountTokensPromptTemplateRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CountTokensPromptTemplateRequest.CodingKeys and conformance CountTokensPromptTemplateRequest.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CountTokensPromptTemplateRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CountTokensPromptTemplateRequest.CodingKeys and conformance CountTokensPromptTemplateRequest.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CountTokensPromptTemplateRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration32CountTokensPromptTemplateRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration32CountTokensPromptTemplateRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CountTokensPromptTemplateRequest.CodingKeys and conformance CountTokensPromptTemplateRequest.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = type metadata accessor for CountTokensPromptTemplateRequest(0);
  v10 = (v3 + *(v9 + 20));
  v11 = v10[1];
  v20 = *v10;
  v21 = v11;
  v25 = 0;
  lazy protocol witness table accessor for type PromptEnvelope and conformance PromptEnvelope();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v20) = 1;
    type metadata accessor for PromptVariantEnvelope(0);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptVariantEnvelope and conformance PromptVariantEnvelope, type metadata accessor for PromptVariantEnvelope, &protocol conformance descriptor for PromptVariantEnvelope);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    LOBYTE(v20) = 2;
    type metadata accessor for PromptTemplateInfoEnvelope(0);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptTemplateInfoEnvelope and conformance PromptTemplateInfoEnvelope, type metadata accessor for PromptTemplateInfoEnvelope, &protocol conformance descriptor for PromptTemplateInfoEnvelope);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = (v3 + *(v9 + 32));
    v13 = v12[1];
    v14 = v12[2];
    v15 = v12[3];
    v16 = v12[4];
    v17 = v12[5];
    v18 = v12[6];
    *&v20 = *v12;
    *(&v20 + 1) = v13;
    *&v21 = v14;
    *(&v21 + 1) = v15;
    v22 = v16;
    v23 = v17;
    v24 = v18;
    v25 = 3;
    lazy protocol witness table accessor for type RequestMetadataEnvelope and conformance RequestMetadataEnvelope();

    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t CountTokensPromptTemplateRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v34 = type metadata accessor for PromptTemplateInfoEnvelope(0);
  MEMORY[0x1EEE9AC00](v34);
  v4 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = v32 - v6;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration32CountTokensPromptTemplateRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration32CountTokensPromptTemplateRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v9 = v32 - v8;
  v10 = type metadata accessor for CountTokensPromptTemplateRequest(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  XPCDictionary.init()();
  v39 = v10;
  v13 = *(v10 + 24);
  v14 = type metadata accessor for PromptVariantEnvelope(0);
  v15 = *(*(v14 - 8) + 56);
  v41 = v13;
  v15(&v12[v13], 1, 1, v14);
  v16 = a1[3];
  v40 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  lazy protocol witness table accessor for type CountTokensPromptTemplateRequest.CodingKeys and conformance CountTokensPromptTemplateRequest.CodingKeys();
  v36 = v9;
  v17 = v38;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v17)
  {
    v20 = v41;
    __swift_destroy_boxed_opaque_existential_0(v40);
    v21 = type metadata accessor for XPCDictionary();
    (*(*(v21 - 8) + 8))(v12, v21);
    outlined consume of PromptEnvelope?(0, 0, 0, 0);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(&v12[v20], &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR);
  }

  else
  {
    v18 = v7;
    v19 = v35;
    v47 = 0;
    lazy protocol witness table accessor for type PromptEnvelope and conformance PromptEnvelope();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v23 = v39;
    v24 = &v12[*(v39 + 20)];
    v25 = *(&v42 + 1);
    v26 = v43;
    v27 = v44;
    *v24 = v42;
    *(v24 + 1) = v25;
    v32[0] = v26;
    v32[1] = v25;
    *(v24 + 2) = v26;
    *(v24 + 3) = v27;
    v38 = v27;
    LOBYTE(v42) = 1;
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptVariantEnvelope and conformance PromptVariantEnvelope, type metadata accessor for PromptVariantEnvelope, &protocol conformance descriptor for PromptVariantEnvelope);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    outlined assign with take of AsyncCompactMapSequence<ResponseSequence, Data>.Iterator?(v18, &v12[v41], &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR);
    LOBYTE(v42) = 2;
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptTemplateInfoEnvelope and conformance PromptTemplateInfoEnvelope, type metadata accessor for PromptTemplateInfoEnvelope, &protocol conformance descriptor for PromptTemplateInfoEnvelope);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    outlined init with take of DocumentRegistrationEnvelope(v4, &v12[*(v23 + 28)], type metadata accessor for PromptTemplateInfoEnvelope);
    v47 = 3;
    lazy protocol witness table accessor for type RequestMetadataEnvelope and conformance RequestMetadataEnvelope();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v19 + 8))(v36, v37);
    v28 = v43;
    v29 = v44;
    v30 = v46;
    v31 = &v12[*(v23 + 32)];
    *v31 = v42;
    *(v31 + 2) = v28;
    *(v31 + 3) = v29;
    *(v31 + 2) = v45;
    *(v31 + 6) = v30;
    outlined init with copy of DocumentResourceEnvelope(v12, v33, type metadata accessor for CountTokensPromptTemplateRequest);
    __swift_destroy_boxed_opaque_existential_0(v40);
    return outlined destroy of DocumentResourceEnvelope(v12, type metadata accessor for CountTokensPromptTemplateRequest);
  }
}

unint64_t CompletePromptTemplateRequest.CodingKeys.rawValue.getter(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x74706D6F72705FLL;
    v6 = 0xD000000000000013;
    if (a1 != 2)
    {
      v6 = 0x74656D617261705FLL;
    }

    if (a1)
    {
      v5 = 0x5674706D6F72705FLL;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0x746E656D75636F64;
    v2 = 0x69617274736E6F63;
    if (a1 != 7)
    {
      v2 = 0x7461646174656D5FLL;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0x736C6F6F745FLL;
    if (a1 != 4)
    {
      v3 = 0x6F68436C6F6F745FLL;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance CompletePromptTemplateRequest.CodingKeys()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance CompletePromptTemplateRequest.CodingKeys(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  specialized RawRepresentable<>.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CompletePromptTemplateRequest.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized CompletePromptTemplateRequest.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

unint64_t protocol witness for RawRepresentable.rawValue.getter in conformance CompletePromptTemplateRequest.CodingKeys@<X0>(unint64_t *a1@<X8>)
{
  result = CompletePromptTemplateRequest.CodingKeys.rawValue.getter(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance CompletePromptTemplateRequest.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized CompletePromptTemplateRequest.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CompletePromptTemplateRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CompletePromptTemplateRequest.CodingKeys and conformance CompletePromptTemplateRequest.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CompletePromptTemplateRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CompletePromptTemplateRequest.CodingKeys and conformance CompletePromptTemplateRequest.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t (*CompletePromptTemplateRequest.prompt.modify(void *a1))()
{
  v2 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x78uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = type metadata accessor for Prompt();
  v4[1] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[2] = v6;
  v8 = *(v6 + 64);
  if (v2)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v9 = malloc(v8);
  }

  v4[4] = v9;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR) - 8) + 64);
  if (v2)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(v10);
  }

  v12 = v11;
  v4[5] = v11;
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR) - 8) + 64);
  if (v2)
  {
    v4[6] = swift_coroFrameAlloc();
    v4[7] = swift_coroFrameAlloc();
    v4[8] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v4[6] = malloc(v13);
    v4[7] = malloc(v13);
    v4[8] = malloc(v13);
    v14 = malloc(v13);
  }

  v15 = v14;
  v4[9] = v14;
  v16 = *(type metadata accessor for CompletePromptTemplateRequest(0) + 20);
  *(v4 + 28) = v16;
  v17 = (v1 + v16);
  v18 = *v17;
  v4[10] = *v17;
  v19 = v17[1];
  v4[11] = v19;
  v20 = v17[2];
  v4[12] = v20;
  v21 = v17[3];
  v4[13] = v21;
  if (v19)
  {
    v22 = type metadata accessor for XPCDictionary();
    v27 = v7;
    v23 = v5;
    v24 = *(v22 - 8);
    (*(v24 + 16))(v12, v1, v22);
    (*(v24 + 56))(v12, 0, 1, v22);
    v5 = v23;
    v7 = v27;
    PromptEnvelope.unseal(_:)(v12, v18, v19, v20, v21, v15);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v12, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  (*(v7 + 56))(v15, v25, 1, v5);
  return CompletePromptTemplateRequest.prompt.modify;
}

uint64_t CountTokensPromptTemplateRequest.promptTemplateInfo.getter(uint64_t (*a1)(void, __n128), void (*a2)(uint64_t *, __n128))
{
  v5 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v20[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v20[-v11];
  v13 = (v2 + *(a1(0, v10) + 28));
  v14 = type metadata accessor for XPCDictionary();
  v15 = *(v14 - 8);
  (*(v15 + 16))(v12, v5, v14);
  (*(v15 + 56))(v12, 0, 1, v14);
  v16 = *v13;
  v21 = v12;

  specialized _NativeDictionary.mapValues<A>(_:)(a2, v20, v16, v17);
  v18 = type metadata accessor for PromptTemplateInfoEnvelope(0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13 + *(v18 + 24), v8, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  PromptTemplateInfo.init(templateID:richVariableBindings:locale:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v12, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
}

uint64_t (*CompletePromptTemplateRequest.promptTemplateInfo.modify(void *a1))()
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x60uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v2;
  v7 = type metadata accessor for PromptTemplateInfoEnvelope(0);
  v6[1] = v7;
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(*(v7 - 8) + 64));
  }

  v6[2] = v8;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR) - 8) + 64);
  if (v4)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(v9);
  }

  v11 = v10;
  v6[3] = v10;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR) - 8) + 64);
  if (v4)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(v12);
  }

  v14 = v13;
  v6[4] = v13;
  v15 = type metadata accessor for PromptTemplateInfo();
  v6[5] = v15;
  v16 = *(v15 - 8);
  v6[6] = v16;
  v17 = *(v16 + 64);
  v27[4] = a1;
  if (v4)
  {
    v6[7] = swift_coroFrameAlloc();
    v6[8] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v6[7] = malloc(v17);
    v6[8] = malloc(v17);
    v18 = malloc(v17);
  }

  v6[9] = v18;
  v19 = *(type metadata accessor for CompletePromptTemplateRequest(0) + 28);
  *(v6 + 22) = v19;
  v20 = (v2 + v19);
  v21 = type metadata accessor for XPCDictionary();
  v22 = *(v21 - 8);
  (*(v22 + 16))(v14, v2, v21);
  v23 = (*(v22 + 56))(v14, 0, 1, v21);
  v24 = *v20;
  MEMORY[0x1EEE9AC00](v23);
  v27[2] = v14;

  specialized _NativeDictionary.mapValues<A>(_:)(closure #1 in PromptTemplateInfoEnvelope.unseal(_:)partial apply, v27, v24, v25);
  v6[10] = 0;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v20 + *(v7 + 24), v11, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  PromptTemplateInfo.init(templateID:richVariableBindings:locale:)();
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
  return CompletePromptTemplateRequest.promptTemplateInfo.modify;
}

uint64_t CompletePromptTemplateRequest.parameters.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CompletePromptTemplateRequest(0) + 32);
  v4 = *(v3 + 176);
  v17[10] = *(v3 + 160);
  v17[11] = v4;
  v17[12] = *(v3 + 192);
  v18 = *(v3 + 208);
  v5 = *(v3 + 112);
  v17[6] = *(v3 + 96);
  v17[7] = v5;
  v6 = *(v3 + 144);
  v17[8] = *(v3 + 128);
  v17[9] = v6;
  v7 = *(v3 + 48);
  v17[2] = *(v3 + 32);
  v17[3] = v7;
  v8 = *(v3 + 80);
  v17[4] = *(v3 + 64);
  v17[5] = v8;
  v9 = *(v3 + 16);
  v17[0] = *v3;
  v17[1] = v9;
  outlined init with copy of SamplingParametersEnvelope(v17, v19);
  SamplingParametersEnvelope.unseal()(a1);
  v10 = *(v3 + 176);
  v19[10] = *(v3 + 160);
  v19[11] = v10;
  v19[12] = *(v3 + 192);
  v20 = *(v3 + 208);
  v11 = *(v3 + 112);
  v19[6] = *(v3 + 96);
  v19[7] = v11;
  v12 = *(v3 + 144);
  v19[8] = *(v3 + 128);
  v19[9] = v12;
  v13 = *(v3 + 48);
  v19[2] = *(v3 + 32);
  v19[3] = v13;
  v14 = *(v3 + 80);
  v19[4] = *(v3 + 64);
  v19[5] = v14;
  v15 = *(v3 + 16);
  v19[0] = *v3;
  v19[1] = v15;
  return outlined destroy of SamplingParametersEnvelope(v19);
}

uint64_t ToolDescriptionEnvelope.unseal()@<X0>(uint64_t a1@<X8>)
{
  v25 = a1;
  v2 = type metadata accessor for GenerationSchema();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for ToolDescriptionEnvelope.FunctionDescriptionEnvelope(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolType(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of DocumentResourceEnvelope(v1, v11, type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload != 1)
      {
        outlined init with take of DocumentRegistrationEnvelope(v11, v8, type metadata accessor for ToolDescriptionEnvelope.FunctionDescriptionEnvelope);
        v17 = *v8;
        v18 = *(v8 + 1);
        v19 = *(v8 + 3);
        v23 = *(v8 + 2);
        v24 = v17;
        (*(v3 + 16))(v5, &v8[*(v6 + 24)], v2);
        type metadata accessor for FunctionDescription(0);

        Schema.init(type:)();
        outlined destroy of DocumentResourceEnvelope(v8, type metadata accessor for ToolDescriptionEnvelope.FunctionDescriptionEnvelope);
        v20 = v23;
        *v14 = v24;
        v14[1] = v18;
        v14[2] = v20;
        v14[3] = v19;
        goto LABEL_8;
      }

      v16 = type metadata accessor for FileGenerationParameters();
    }

    else
    {
      v16 = type metadata accessor for ImageGenerationParameters();
    }

    (*(*(v16 - 8) + 32))(v14, v11, v16);
  }

LABEL_8:
  swift_storeEnumTagMultiPayload();
  return outlined init with take of DocumentRegistrationEnvelope(v14, v25, type metadata accessor for ToolType);
}

uint64_t ToolChoiceEnvelope.unseal()()
{
  v1 = *(v0 + 8);
  switch(v1)
  {
    case 0:
      return static ToolChoice.none.getter();
    case 1:
      return static ToolChoice.automatic.getter();
    case 2:
      return static ToolChoice.required.getter();
  }

  return static ToolChoice.function(name:)();
}

double CompletePromptTemplateRequest.metadata.getter@<D0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CompletePromptTemplateRequest(0) + 52));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v8 = v3[4];
  v7 = v3[5];
  v9 = v3[6];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v8;
  a1[5] = v7;
  a1[6] = v9;

  return result;
}

uint64_t ToolDescription.init(toolType:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for GenerationSchema();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = type metadata accessor for ToolType.Function();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v40[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ToolType.Type();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v40[-1] - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v40[-1] - v14);
  ToolType.type.getter();
  v16 = (*(v10 + 88))(v15, v9);
  if (v16 == *MEMORY[0x1E69A0E58])
  {
    v17 = type metadata accessor for ToolType();
    (*(*(v17 - 8) + 8))(a1, v17);
    (*(v10 + 96))(v15, v9);
    v18 = type metadata accessor for ImageGenerationParameters();
    (*(*(v18 - 8) + 32))(a2, v15, v18);
    type metadata accessor for ToolType(0);
    return swift_storeEnumTagMultiPayload();
  }

  v39 = a1;
  if (v16 == *MEMORY[0x1E69A0E50])
  {
    v19 = type metadata accessor for ToolType();
    (*(*(v19 - 8) + 8))(v39, v19);
    (*(v10 + 96))(v15, v9);
    v20 = type metadata accessor for FileGenerationParameters();
    (*(*(v20 - 8) + 32))(a2, v15, v20);
    type metadata accessor for ToolType(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (v16 == *MEMORY[0x1E69A0E78])
  {
    (*(v10 + 96))(v15, v9);
    (*(v6 + 32))(v8, v15, v5);
    v21 = Tool.Function.name.getter();
    v23 = v22;
    v24 = Tool.Function.description.getter();
    v26 = v25;
    Tool.Function.parameters.getter();
    type metadata accessor for FunctionDescription(0);
    Schema.init(type:)();
    v27 = type metadata accessor for ToolType();
    (*(*(v27 - 8) + 8))(v39, v27);
    (*(v6 + 8))(v8, v5);
    *a2 = v21;
    a2[1] = v23;
    a2[2] = v24;
    a2[3] = v26;
    type metadata accessor for ToolType(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (v16 == *MEMORY[0x1E69A0E70])
  {
    (*(v10 + 96))(v15, v9);
    outlined init with take of any AsyncIteratorProtocol<Self.Element == A, Self.Failure == Error>(v15, v40);
    __swift_project_boxed_opaque_existential_1(v40, v41);
    v29 = dispatch thunk of DynamicArgumentsTooling.name.getter();
    v31 = v30;
    __swift_project_boxed_opaque_existential_1(v40, v41);
    v32 = dispatch thunk of DynamicArgumentsTooling.usageDescription.getter();
    v34 = v33;
    __swift_project_boxed_opaque_existential_1(v40, v41);
    DynamicType = swift_getDynamicType();
    static Tooling.argumentsSchema.getter(DynamicType, v42);
    type metadata accessor for FunctionDescription(0);
    Schema.init(type:)();
    v36 = type metadata accessor for ToolType();
    (*(*(v36 - 8) + 8))(v39, v36);
    *a2 = v29;
    a2[1] = v31;
    a2[2] = v32;
    a2[3] = v34;
    type metadata accessor for ToolType(0);
    swift_storeEnumTagMultiPayload();
    return __swift_destroy_boxed_opaque_existential_0(v40);
  }

  else
  {
    v37 = v39;
    if (v16 == *MEMORY[0x1E69A0E68] || v16 == *MEMORY[0x1E69A0E60])
    {
      v38 = type metadata accessor for ToolType();
      (*(*(v38 - 8) + 8))(v37, v38);
      type metadata accessor for ToolType(0);
      return swift_storeEnumTagMultiPayload();
    }

    v40[0] = 0;
    v40[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(21);
    MEMORY[0x1AC5A5BC0](0xD000000000000013, 0x80000001ABA41750);
    ToolType.type.getter();
    _print_unlocked<A, B>(_:_:)();
    (*(v10 + 8))(v12, v9);
    result = _assertionFailure(_:_:file:line:flags:)();
    __break(1u);
  }

  return result;
}

uint64_t ToolDescriptionEnvelope.init(sealing:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = type metadata accessor for ToolType(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DocumentResourceEnvelope(a1, v6, type metadata accessor for ToolType);
  ToolDescriptionEnvelope.ToolTypeEnvelope.init(sealing:)(v6, a2);
  return outlined destroy of DocumentResourceEnvelope(a1, type metadata accessor for ToolDescription);
}

uint64_t ToolChoiceEnvelope.init(sealing:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for ToolChoice.FunctionChoice();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ToolChoice.Value();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  ToolChoice.value.getter();
  v12 = (*(v9 + 88))(v11, v8);
  if (v12 == *MEMORY[0x1E69A0B20])
  {
    (*(v9 + 96))(v11, v8);
    (*(v5 + 32))(v7, v11, v4);
    v13 = ToolChoice.FunctionChoice.name.getter();
    v15 = v14;
    v16 = type metadata accessor for ToolChoice();
    (*(*(v16 - 8) + 8))(a1, v16);
    result = (*(v5 + 8))(v7, v4);
LABEL_9:
    *a2 = v13;
    a2[1] = v15;
    return result;
  }

  if (v12 == *MEMORY[0x1E69A0B18])
  {
    v18 = type metadata accessor for ToolChoice();
    result = (*(*(v18 - 8) + 8))(a1, v18);
    v13 = 0;
    v15 = 0;
    goto LABEL_9;
  }

  if (v12 == *MEMORY[0x1E69A0B30])
  {
    v19 = type metadata accessor for ToolChoice();
    result = (*(*(v19 - 8) + 8))(a1, v19);
    v13 = 0;
    v15 = 1;
    goto LABEL_9;
  }

  if (v12 == *MEMORY[0x1E69A0B28])
  {
    v20 = type metadata accessor for ToolChoice();
    result = (*(*(v20 - 8) + 8))(a1, v20);
    v13 = 0;
    v15 = 2;
    goto LABEL_9;
  }

  v21[0] = 0;
  v21[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(22);
  MEMORY[0x1AC5A5BC0](0xD000000000000014, 0x80000001ABA41770);
  type metadata accessor for ToolChoice();
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t CompletePromptTemplateRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration29CompletePromptTemplateRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration29CompletePromptTemplateRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CompletePromptTemplateRequest.CodingKeys and conformance CompletePromptTemplateRequest.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = type metadata accessor for CompletePromptTemplateRequest(0);
  v10 = (v3 + v9[5]);
  v11 = v10[1];
  v59 = *v10;
  v60 = v11;
  LOBYTE(v45) = 0;
  lazy protocol witness table accessor for type PromptEnvelope and conformance PromptEnvelope();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v59) = 1;
    type metadata accessor for PromptVariantEnvelope(0);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptVariantEnvelope and conformance PromptVariantEnvelope, type metadata accessor for PromptVariantEnvelope, &protocol conformance descriptor for PromptVariantEnvelope);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v75 = 2;
    type metadata accessor for PromptTemplateInfoEnvelope(0);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptTemplateInfoEnvelope and conformance PromptTemplateInfoEnvelope, type metadata accessor for PromptTemplateInfoEnvelope, &protocol conformance descriptor for PromptTemplateInfoEnvelope);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = (v3 + v9[8]);
    v13 = v12[11];
    v14 = v12[9];
    v69 = v12[10];
    v70 = v13;
    v15 = v12[11];
    v71 = v12[12];
    v16 = v12[7];
    v17 = v12[5];
    v65 = v12[6];
    v66 = v16;
    v18 = v12[7];
    v19 = v12[9];
    v67 = v12[8];
    v68 = v19;
    v20 = v12[3];
    v21 = v12[1];
    v61 = v12[2];
    v62 = v20;
    v22 = v12[3];
    v23 = v12[5];
    v63 = v12[4];
    v64 = v23;
    v24 = v12[1];
    v59 = *v12;
    v60 = v24;
    v55 = v69;
    v56 = v15;
    v57 = v12[12];
    v51 = v65;
    v52 = v18;
    v53 = v67;
    v54 = v14;
    v47 = v61;
    v48 = v22;
    v49 = v63;
    v50 = v17;
    v72 = *(v12 + 104);
    v58 = *(v12 + 104);
    v45 = v59;
    v46 = v21;
    v74 = 3;
    outlined init with copy of SamplingParametersEnvelope(&v59, v43);
    lazy protocol witness table accessor for type SamplingParametersEnvelope and conformance SamplingParametersEnvelope();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v43[10] = v55;
    v43[11] = v56;
    v43[12] = v57;
    v44 = v58;
    v43[6] = v51;
    v43[7] = v52;
    v43[8] = v53;
    v43[9] = v54;
    v43[2] = v47;
    v43[3] = v48;
    v43[4] = v49;
    v43[5] = v50;
    v43[0] = v45;
    v43[1] = v46;
    outlined destroy of SamplingParametersEnvelope(v43);
    v36 = *(v3 + v9[9]);
    v73 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15TokenGeneration23ToolDescriptionEnvelopeVGMd, &_sSay15TokenGeneration23ToolDescriptionEnvelopeVGMR);
    lazy protocol witness table accessor for type [ToolDescriptionEnvelope] and conformance <A> [A]();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v25 = (v3 + v9[10]);
    v26 = v25[1];
    v36 = *v25;
    v37 = v26;
    v73 = 5;
    outlined copy of FinishReason?(v36, v26);
    lazy protocol witness table accessor for type ToolChoiceEnvelope and conformance ToolChoiceEnvelope();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of FinishReason?(v36, v37);
    v36 = *(v3 + v9[11]);
    v73 = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26GenerativeModelsFoundation26DocumentResourceIdentifierVGMd, &_sSay26GenerativeModelsFoundation26DocumentResourceIdentifierVGMR);
    lazy protocol witness table accessor for type [DocumentResourceIdentifier] and conformance <A> [A]();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v36) = 7;
    type metadata accessor for Constraints(0);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Constraints and conformance Constraints, type metadata accessor for Constraints, &protocol conformance descriptor for Constraints);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v27 = (v3 + v9[13]);
    v28 = v27[1];
    v29 = v27[2];
    v30 = v27[3];
    v31 = v27[4];
    v32 = v27[5];
    v33 = v27[6];
    v36 = *v27;
    v37 = v28;
    v38 = v29;
    v39 = v30;
    v40 = v31;
    v41 = v32;
    v42 = v33;
    v73 = 8;
    lazy protocol witness table accessor for type RequestMetadataEnvelope and conformance RequestMetadataEnvelope();

    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t CompletePromptTemplateRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v44 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v45 = v43 - v4;
  v46 = type metadata accessor for PromptTemplateInfoEnvelope(0);
  MEMORY[0x1EEE9AC00](v46);
  v6 = v43 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v43 - v8;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration29CompletePromptTemplateRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration29CompletePromptTemplateRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v47 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v11 = v43 - v10;
  v12 = type metadata accessor for CompletePromptTemplateRequest(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  XPCDictionary.init()();
  v51 = v12;
  v15 = *(v12 + 24);
  v16 = type metadata accessor for PromptVariantEnvelope(0);
  v17 = *(*(v16 - 8) + 56);
  v54 = v15;
  v50 = v14;
  v17(&v14[v15], 1, 1, v16);
  v18 = a1[3];
  v53 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  lazy protocol witness table accessor for type CompletePromptTemplateRequest.CodingKeys and conformance CompletePromptTemplateRequest.CodingKeys();
  v48 = v11;
  v19 = v52;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v19)
  {
    v20 = v9;
    v52 = v6;
    LOBYTE(v55) = 0;
    lazy protocol witness table accessor for type PromptEnvelope and conformance PromptEnvelope();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v25 = v50;
    v26 = v51;
    v27 = &v50[v51[5]];
    v28 = v60;
    v29 = v61;
    *v27 = v60;
    v43[3] = *(&v29 + 1);
    v43[4] = *(&v28 + 1);
    *(v27 + 1) = v29;
    LOBYTE(v60) = 1;
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptVariantEnvelope and conformance PromptVariantEnvelope, type metadata accessor for PromptVariantEnvelope, &protocol conformance descriptor for PromptVariantEnvelope);
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v43[2] = v29;
    outlined assign with take of AsyncCompactMapSequence<ResponseSequence, Data>.Iterator?(v20, v25 + v54, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR);
    LOBYTE(v60) = 2;
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptTemplateInfoEnvelope and conformance PromptTemplateInfoEnvelope, type metadata accessor for PromptTemplateInfoEnvelope, &protocol conformance descriptor for PromptTemplateInfoEnvelope);
    v30 = v52;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    outlined init with take of DocumentRegistrationEnvelope(v30, v25 + v26[7], type metadata accessor for PromptTemplateInfoEnvelope);
    v75 = 3;
    lazy protocol witness table accessor for type SamplingParametersEnvelope and conformance SamplingParametersEnvelope();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v31 = v25 + v26[8];
    v32 = v71;
    *(v31 + 160) = v70;
    *(v31 + 176) = v32;
    *(v31 + 192) = v72;
    *(v31 + 208) = v73;
    v33 = v67;
    *(v31 + 96) = v66;
    *(v31 + 112) = v33;
    v34 = v69;
    *(v31 + 128) = v68;
    *(v31 + 144) = v34;
    v35 = v63;
    *(v31 + 32) = v62;
    *(v31 + 48) = v35;
    v36 = v65;
    *(v31 + 64) = v64;
    *(v31 + 80) = v36;
    v37 = v61;
    *v31 = v60;
    *(v31 + 16) = v37;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15TokenGeneration23ToolDescriptionEnvelopeVGMd, &_sSay15TokenGeneration23ToolDescriptionEnvelopeVGMR);
    v74 = 4;
    lazy protocol witness table accessor for type [ToolDescriptionEnvelope] and conformance <A> [A]();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v25 + v26[9]) = v55;
    v74 = 5;
    lazy protocol witness table accessor for type ToolChoiceEnvelope and conformance ToolChoiceEnvelope();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v25 + v26[10]) = v55;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26GenerativeModelsFoundation26DocumentResourceIdentifierVGMd, &_sSay26GenerativeModelsFoundation26DocumentResourceIdentifierVGMR);
    v74 = 6;
    lazy protocol witness table accessor for type [DocumentResourceIdentifier] and conformance <A> [A]();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v25 + v26[11]) = v55;
    type metadata accessor for Constraints(0);
    LOBYTE(v55) = 7;
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Constraints and conformance Constraints, type metadata accessor for Constraints, &protocol conformance descriptor for Constraints);
    v38 = v45;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v43[1] = v28;
    outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v38, v25 + v26[12], &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    v74 = 8;
    lazy protocol witness table accessor for type RequestMetadataEnvelope and conformance RequestMetadataEnvelope();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v52 = 0;
    (*(v47 + 8))(v48, v49);
    v39 = v56;
    v40 = v57;
    v41 = v59;
    v42 = v25 + v26[13];
    *v42 = v55;
    *(v42 + 16) = v39;
    *(v42 + 24) = v40;
    *(v42 + 32) = v58;
    *(v42 + 48) = v41;
    outlined init with copy of DocumentResourceEnvelope(v25, v44, type metadata accessor for CompletePromptTemplateRequest);
    __swift_destroy_boxed_opaque_existential_0(v53);
    return outlined destroy of DocumentResourceEnvelope(v25, type metadata accessor for CompletePromptTemplateRequest);
  }

  v52 = v19;
  LODWORD(v46) = 0;
  LODWORD(v47) = 0;
  LODWORD(v48) = 0;
  LODWORD(v49) = 0;
  v21 = v50;
  v22 = v51;
  __swift_destroy_boxed_opaque_existential_0(v53);
  v23 = type metadata accessor for XPCDictionary();
  (*(*(v23 - 8) + 8))(v21, v23);
  outlined consume of PromptEnvelope?(0, 0, 0, 0);
  result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(&v21[v54], &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR);
  if (v46)
  {

    if (!v47)
    {
LABEL_6:
      if (!v48)
      {
        goto LABEL_8;
      }

      goto LABEL_7;
    }
  }

  else if (!v47)
  {
    goto LABEL_6;
  }

  result = outlined consume of FinishReason?(*&v21[v22[10]], *&v21[v22[10] + 8]);
  if (v48)
  {
LABEL_7:
  }

LABEL_8:
  if (v49)
  {
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(&v21[v22[12]], &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  }

  return result;
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance CompletePromptRequest.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized CompletePromptRequest.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance CompletePromptRequest.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0x74706D6F72705FLL;
  v5 = 0x7461646174656D5FLL;
  v6 = 0xEE00746E61697261;
  if (v2 == 6)
  {
    v6 = 0xE900000000000061;
  }

  else
  {
    v5 = 0x5674706D6F72705FLL;
  }

  v7 = 0xE900000000000073;
  v8 = 0x746E656D75636F64;
  if (v2 != 4)
  {
    v8 = 0x69617274736E6F63;
    v7 = 0xEB0000000073746ELL;
  }

  if (*v1 > 5u)
  {
    v7 = v6;
  }

  else
  {
    v5 = v8;
  }

  v9 = 0xE600000000000000;
  v10 = 0x736C6F6F745FLL;
  if (v2 != 2)
  {
    v10 = 0x6F68436C6F6F745FLL;
    v9 = 0xEB00000000656369;
  }

  if (*v1)
  {
    v4 = 0x74656D617261705FLL;
    v3 = 0xEB00000000737265;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  if (*v1 <= 3u)
  {
    v11 = v4;
  }

  else
  {
    v11 = v5;
  }

  if (*v1 > 3u)
  {
    v3 = v7;
  }

  *a1 = v11;
  a1[1] = v3;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CompletePromptRequest.CodingKeys()
{
  v1 = *v0;
  v2 = 0x74706D6F72705FLL;
  v3 = 0x7461646174656D5FLL;
  if (v1 != 6)
  {
    v3 = 0x5674706D6F72705FLL;
  }

  v4 = 0x746E656D75636F64;
  if (v1 != 4)
  {
    v4 = 0x69617274736E6F63;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 0x736C6F6F745FLL;
  if (v1 != 2)
  {
    v5 = 0x6F68436C6F6F745FLL;
  }

  if (*v0)
  {
    v2 = 0x74656D617261705FLL;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance CompletePromptRequest.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized CompletePromptRequest.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CompletePromptRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CompletePromptRequest.CodingKeys and conformance CompletePromptRequest.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CompletePromptRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CompletePromptRequest.CodingKeys and conformance CompletePromptRequest.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t (*CompletePromptRequest.prompt.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Prompt();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v5[3] = v10;
  v11 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v5[5] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v5[5] = malloc(v11);
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[6] = v12;
  v14 = *(type metadata accessor for CompletePromptRequest(0) + 20);
  *(v5 + 20) = v14;
  v15 = (v1 + v14);
  v16 = *v15;
  v17 = v15[1];
  v5[7] = v17;
  v18 = v15[2];
  v5[8] = v18;
  v19 = v15[3];
  v5[9] = v19;
  v20 = type metadata accessor for XPCDictionary();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v8, v1, v20);
  (*(v21 + 56))(v8, 0, 1, v20);
  PromptEnvelope.unseal(_:)(v8, v16, v17, v18, v19, v13);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
  return CompletePromptRequest.prompt.modify;
}

uint64_t CountTokensRequest.promptVariant.getter@<X0>(uint64_t (*a1)(void, __n128)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v12 - v7;
  a1(0, v6);
  v9 = type metadata accessor for XPCDictionary();
  v10 = *(v9 - 8);
  (*(v10 + 16))(v8, v2, v9);
  (*(v10 + 56))(v8, 0, 1, v9);
  PromptVariantEnvelope.unseal(_:)(v8, a2);
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
}

uint64_t key path getter for CountTokensRequest.promptVariant : CountTokensRequest@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, __n128)@<X3>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v13 - v8;
  a2(0, v7);
  v10 = type metadata accessor for XPCDictionary();
  v11 = *(v10 - 8);
  (*(v11 + 16))(v9, a1, v10);
  (*(v11 + 56))(v9, 0, 1, v10);
  PromptVariantEnvelope.unseal(_:)(v9, a3);
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v9, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
}

uint64_t (*CompletePromptRequest.promptVariant.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(type metadata accessor for PromptVariantEnvelope(0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v5[1] = v7;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR) - 8) + 64);
  if (v3)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  v10 = v9;
  v5[2] = v9;
  v11 = type metadata accessor for PromptVariant();
  v5[3] = v11;
  v12 = *(v11 - 8);
  v5[4] = v12;
  v13 = *(v12 + 64);
  if (v3)
  {
    v5[5] = swift_coroFrameAlloc();
    v5[6] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[5] = malloc(*(v12 + 64));
    v5[6] = malloc(v13);
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[7] = v14;
  *(v5 + 16) = *(type metadata accessor for CompletePromptRequest(0) + 24);
  v16 = type metadata accessor for XPCDictionary();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v10, v1, v16);
  (*(v17 + 56))(v10, 0, 1, v16);
  PromptVariantEnvelope.unseal(_:)(v10, v15);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
  return CompletePromptRequest.promptVariant.modify;
}

uint64_t CompletePromptRequest.parameters.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for CompletePromptRequest(0) + 28);
  v4 = *(v3 + 176);
  v17[10] = *(v3 + 160);
  v17[11] = v4;
  v17[12] = *(v3 + 192);
  v18 = *(v3 + 208);
  v5 = *(v3 + 112);
  v17[6] = *(v3 + 96);
  v17[7] = v5;
  v6 = *(v3 + 144);
  v17[8] = *(v3 + 128);
  v17[9] = v6;
  v7 = *(v3 + 48);
  v17[2] = *(v3 + 32);
  v17[3] = v7;
  v8 = *(v3 + 80);
  v17[4] = *(v3 + 64);
  v17[5] = v8;
  v9 = *(v3 + 16);
  v17[0] = *v3;
  v17[1] = v9;
  outlined init with copy of SamplingParametersEnvelope(v17, v19);
  SamplingParametersEnvelope.unseal()(a1);
  v10 = *(v3 + 176);
  v19[10] = *(v3 + 160);
  v19[11] = v10;
  v19[12] = *(v3 + 192);
  v20 = *(v3 + 208);
  v11 = *(v3 + 112);
  v19[6] = *(v3 + 96);
  v19[7] = v11;
  v12 = *(v3 + 144);
  v19[8] = *(v3 + 128);
  v19[9] = v12;
  v13 = *(v3 + 48);
  v19[2] = *(v3 + 32);
  v19[3] = v13;
  v14 = *(v3 + 80);
  v19[4] = *(v3 + 64);
  v19[5] = v14;
  v15 = *(v3 + 16);
  v19[0] = *v3;
  v19[1] = v15;
  return outlined destroy of SamplingParametersEnvelope(v19);
}

uint64_t CompletePromptTemplateRequest.tools.getter(uint64_t (*a1)(void, __n128))
{
  v40 = type metadata accessor for GenerationSchema();
  v3 = *(v40 - 8);
  MEMORY[0x1EEE9AC00](v40);
  v39 = &v34 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = type metadata accessor for ToolDescriptionEnvelope.FunctionDescriptionEnvelope(0);
  MEMORY[0x1EEE9AC00](v38);
  v37 = &v34 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope(0);
  MEMORY[0x1EEE9AC00](v45);
  v47 = &v34 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ToolType(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for ToolDescriptionEnvelope(0);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v48 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ToolDescription(0);
  v46 = *(v13 - 8);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v41 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(v1 + *(a1(0, v14) + 36));
  v17 = *(v16 + 16);
  v18 = MEMORY[0x1E69E7CC0];
  if (v17)
  {
    v49 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v17, 0);
    v18 = v49;
    v19 = v16 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v44 = *(v11 + 72);
    v35 = (v3 + 16);
    v36 = v7;
    v20 = v41;
    do
    {
      v21 = v48;
      outlined init with copy of DocumentResourceEnvelope(v19, v48, type metadata accessor for ToolDescriptionEnvelope);
      outlined init with copy of DocumentResourceEnvelope(v21, v47, type metadata accessor for ToolDescriptionEnvelope.ToolTypeEnvelope);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          outlined destroy of DocumentResourceEnvelope(v48, type metadata accessor for ToolDescriptionEnvelope);
          v23 = type metadata accessor for FileGenerationParameters();
        }

        else
        {
          outlined destroy of DocumentResourceEnvelope(v48, type metadata accessor for ToolDescriptionEnvelope);
          v23 = type metadata accessor for ImageGenerationParameters();
        }

        (*(*(v23 - 8) + 32))(v9, v47, v23);
      }

      else if (EnumCaseMultiPayload == 2)
      {
        v24 = v37;
        outlined init with take of DocumentRegistrationEnvelope(v47, v37, type metadata accessor for ToolDescriptionEnvelope.FunctionDescriptionEnvelope);
        v25 = *v24;
        v26 = *(v24 + 1);
        v27 = *(v24 + 3);
        v42 = *(v24 + 2);
        v43 = v25;
        (*v35)(v39, &v24[*(v38 + 24)], v40);
        type metadata accessor for FunctionDescription(0);

        Schema.init(type:)();
        v28 = v24;
        v20 = v41;
        outlined destroy of DocumentResourceEnvelope(v28, type metadata accessor for ToolDescriptionEnvelope.FunctionDescriptionEnvelope);
        outlined destroy of DocumentResourceEnvelope(v48, type metadata accessor for ToolDescriptionEnvelope);
        v29 = v42;
        *v9 = v43;
        v9[1] = v26;
        v9[2] = v29;
        v9[3] = v27;
      }

      else
      {
        outlined destroy of DocumentResourceEnvelope(v48, type metadata accessor for ToolDescriptionEnvelope);
      }

      swift_storeEnumTagMultiPayload();
      outlined init with take of DocumentRegistrationEnvelope(v9, v20, type metadata accessor for ToolType);
      v49 = v18;
      v30 = v20;
      v32 = *(v18 + 16);
      v31 = *(v18 + 24);
      if (v32 >= v31 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v31 > 1), v32 + 1, 1);
        v18 = v49;
      }

      *(v18 + 16) = v32 + 1;
      outlined init with take of DocumentRegistrationEnvelope(v30, v18 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v32, type metadata accessor for ToolDescription);
      v19 += v44;
      --v17;
      v20 = v30;
    }

    while (v17);
  }

  return v18;
}

uint64_t CompletePromptTemplateRequest.toolChoice.getter@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = (v2 + *(a1(0) + 40));
  v5 = v4[1];
  if (v5 > 1)
  {
    if (v5 == 2)
    {
      static ToolChoice.required.getter();
      goto LABEL_11;
    }

    if (v5 == 3)
    {
      v5 = 1;
      goto LABEL_12;
    }

    goto LABEL_8;
  }

  if (!v5)
  {
    static ToolChoice.none.getter();
    goto LABEL_12;
  }

  if (v5 != 1)
  {
LABEL_8:
    v6 = *v4;
    outlined copy of FinishReason(*v4, v4[1]);
    static ToolChoice.function(name:)();
    outlined consume of FinishReason?(v6, v5);
    goto LABEL_11;
  }

  static ToolChoice.automatic.getter();
LABEL_11:
  v5 = 0;
LABEL_12:
  v7 = type metadata accessor for ToolChoice();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v5, 1, v7);
}

double CompletePromptTemplateRequest.documents.getter(uint64_t (*a1)(void))
{
  a1(0);

  return result;
}

double CompletePromptRequest.metadata.getter@<D0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for CompletePromptRequest(0) + 48));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v8 = v3[4];
  v7 = v3[5];
  v9 = v3[6];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v8;
  a1[5] = v7;
  a1[6] = v9;

  return result;
}

uint64_t CompletePromptRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration21CompletePromptRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration21CompletePromptRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v36 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CompletePromptRequest.CodingKeys and conformance CompletePromptRequest.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = type metadata accessor for CompletePromptRequest(0);
  v10 = (v3 + v9[5]);
  v11 = v10[3];
  v74 = *v10;
  v75 = *(v10 + 1);
  v76 = v11;
  v79 = 0;
  lazy protocol witness table accessor for type PromptEnvelope and conformance PromptEnvelope();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = v3 + v9[7];
    v13 = *(v12 + 176);
    v14 = *(v12 + 144);
    v70 = *(v12 + 160);
    v71 = v13;
    v15 = *(v12 + 176);
    v72 = *(v12 + 192);
    v16 = *(v12 + 112);
    v17 = *(v12 + 80);
    v66 = *(v12 + 96);
    v67 = v16;
    v18 = *(v12 + 112);
    v19 = *(v12 + 144);
    v68 = *(v12 + 128);
    v69 = v19;
    v20 = *(v12 + 48);
    v21 = *(v12 + 16);
    v62 = *(v12 + 32);
    v63 = v20;
    v22 = *(v12 + 48);
    v23 = *(v12 + 80);
    v64 = *(v12 + 64);
    v65 = v23;
    v24 = *(v12 + 16);
    v61[0] = *v12;
    v61[1] = v24;
    v57 = v70;
    v58 = v15;
    v59 = *(v12 + 192);
    v53 = v66;
    v54 = v18;
    v55 = v68;
    v56 = v14;
    v49 = v62;
    v50 = v22;
    v51 = v64;
    v52 = v17;
    v73 = *(v12 + 208);
    v60 = *(v12 + 208);
    v47 = v61[0];
    v48 = v21;
    v78 = 1;
    outlined init with copy of SamplingParametersEnvelope(v61, v45);
    lazy protocol witness table accessor for type SamplingParametersEnvelope and conformance SamplingParametersEnvelope();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v45[10] = v57;
    v45[11] = v58;
    v45[12] = v59;
    v46 = v60;
    v45[6] = v53;
    v45[7] = v54;
    v45[8] = v55;
    v45[9] = v56;
    v45[2] = v49;
    v45[3] = v50;
    v45[4] = v51;
    v45[5] = v52;
    v45[0] = v47;
    v45[1] = v48;
    outlined destroy of SamplingParametersEnvelope(v45);
    v38 = *(v3 + v9[9]);
    v77 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15TokenGeneration23ToolDescriptionEnvelopeVGMd, &_sSay15TokenGeneration23ToolDescriptionEnvelopeVGMR);
    lazy protocol witness table accessor for type [ToolDescriptionEnvelope] and conformance <A> [A]();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v25 = (v3 + v9[10]);
    v26 = v25[1];
    v38 = *v25;
    v39 = v26;
    v77 = 3;
    outlined copy of FinishReason?(v38, v26);
    lazy protocol witness table accessor for type ToolChoiceEnvelope and conformance ToolChoiceEnvelope();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of FinishReason?(v38, v39);
    v38 = *(v3 + v9[11]);
    v77 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26GenerativeModelsFoundation26DocumentResourceIdentifierVGMd, &_sSay26GenerativeModelsFoundation26DocumentResourceIdentifierVGMR);
    lazy protocol witness table accessor for type [DocumentResourceIdentifier] and conformance <A> [A]();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v38) = 5;
    type metadata accessor for Constraints(0);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Constraints and conformance Constraints, type metadata accessor for Constraints, &protocol conformance descriptor for Constraints);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v27 = (v3 + v9[12]);
    v28 = *v27;
    v29 = v27[1];
    v30 = v27[2];
    v31 = v27[3];
    v32 = v27[4];
    v33 = v27[5];
    v34 = v27[6];
    v36[1] = v33;
    v37 = v34;
    v38 = v28;
    v39 = v29;
    v40 = v30;
    v41 = v31;
    v42 = v32;
    v43 = v33;
    v44 = v34;
    v77 = 6;
    lazy protocol witness table accessor for type RequestMetadataEnvelope and conformance RequestMetadataEnvelope();

    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v37 = v43;

    LOBYTE(v38) = 7;
    type metadata accessor for PromptVariantEnvelope(0);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptVariantEnvelope and conformance PromptVariantEnvelope, type metadata accessor for PromptVariantEnvelope, &protocol conformance descriptor for PromptVariantEnvelope);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t CompletePromptRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v51 = a2;
  v52 = type metadata accessor for PromptVariantEnvelope(0);
  MEMORY[0x1EEE9AC00](v52);
  v4 = &v49 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v49 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration21CompletePromptRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration21CompletePromptRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v53 = *(v8 - 8);
  v54 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v49 - v9;
  v11 = type metadata accessor for CompletePromptRequest(0);
  MEMORY[0x1EEE9AC00](v11);
  v58 = &v49 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  XPCDictionary.init()();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CompletePromptRequest.CodingKeys and conformance CompletePromptRequest.CodingKeys();
  v55 = v10;
  v13 = v57;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  v56 = a1;
  if (v13)
  {
    v57 = v13;
    v14 = v11;
    v18 = 0;
    v19 = 0;
    LODWORD(v54) = 0;
    v20 = 0;
    v21 = 0;
    LODWORD(v55) = 0;
    v22 = v58;
  }

  else
  {
    v15 = v7;
    v14 = v11;
    v50 = v4;
    v16 = v53;
    LOBYTE(v59) = 0;
    lazy protocol witness table accessor for type PromptEnvelope and conformance PromptEnvelope();
    v17 = v54;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v32 = *(&v64[1] + 1);
    v33 = &v58[v11[5]];
    *v33 = *&v64[0];
    *(v33 + 8) = *(v64 + 8);
    *(v33 + 3) = v32;
    v78 = 1;
    lazy protocol witness table accessor for type SamplingParametersEnvelope and conformance SamplingParametersEnvelope();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v34 = v16;
    v35 = a1;
    v22 = v58;
    v36 = &v58[v11[7]];
    v37 = v74;
    *(v36 + 10) = v73;
    *(v36 + 11) = v37;
    *(v36 + 12) = v75;
    *(v36 + 104) = v76;
    v38 = v70;
    *(v36 + 6) = v69;
    *(v36 + 7) = v38;
    v39 = v72;
    *(v36 + 8) = v71;
    *(v36 + 9) = v39;
    v40 = v66;
    *(v36 + 2) = v65;
    *(v36 + 3) = v40;
    v41 = v68;
    *(v36 + 4) = v67;
    *(v36 + 5) = v41;
    v42 = v64[1];
    *v36 = v64[0];
    *(v36 + 1) = v42;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15TokenGeneration23ToolDescriptionEnvelopeVGMd, &_sSay15TokenGeneration23ToolDescriptionEnvelopeVGMR);
    v77 = 2;
    lazy protocol witness table accessor for type [ToolDescriptionEnvelope] and conformance <A> [A]();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    *(v22 + v11[9]) = v59;
    v77 = 3;
    lazy protocol witness table accessor for type ToolChoiceEnvelope and conformance ToolChoiceEnvelope();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    *(v22 + v11[10]) = v59;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay26GenerativeModelsFoundation26DocumentResourceIdentifierVGMd, &_sSay26GenerativeModelsFoundation26DocumentResourceIdentifierVGMR);
    v77 = 4;
    lazy protocol witness table accessor for type [DocumentResourceIdentifier] and conformance <A> [A]();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v57 = 0;
    *(v22 + v11[11]) = v59;
    type metadata accessor for Constraints(0);
    LOBYTE(v59) = 5;
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Constraints and conformance Constraints, type metadata accessor for Constraints, &protocol conformance descriptor for Constraints);
    v43 = v57;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    if (!v43)
    {
      outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v15, v22 + v11[8], &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
      v77 = 6;
      lazy protocol witness table accessor for type RequestMetadataEnvelope and conformance RequestMetadataEnvelope();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v44 = v60;
      v45 = v61;
      v46 = v63;
      v47 = v22 + v11[12];
      *v47 = v59;
      *(v47 + 16) = v44;
      *(v47 + 24) = v45;
      *(v47 + 32) = v62;
      *(v47 + 48) = v46;
      LOBYTE(v59) = 7;
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptVariantEnvelope and conformance PromptVariantEnvelope, type metadata accessor for PromptVariantEnvelope, &protocol conformance descriptor for PromptVariantEnvelope);
      v48 = v50;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v34 + 8))(v55, v17);
      outlined init with take of DocumentRegistrationEnvelope(v48, v22 + v11[6], type metadata accessor for PromptVariantEnvelope);
      outlined init with copy of DocumentResourceEnvelope(v22, v51, type metadata accessor for CompletePromptRequest);
      __swift_destroy_boxed_opaque_existential_0(v35);
      return outlined destroy of DocumentResourceEnvelope(v22, type metadata accessor for CompletePromptRequest);
    }

    v57 = v43;
    (*(v34 + 8))(v55, v17);
    LODWORD(v54) = 0;
    v18 = 1;
    v19 = 1;
    v20 = 1;
    v21 = 1;
    LODWORD(v55) = 1;
  }

  __swift_destroy_boxed_opaque_existential_0(v56);
  v23 = type metadata accessor for XPCDictionary();
  result = (*(*(v23 - 8) + 8))(v22, v23);
  if (v18)
  {

    if (!v19)
    {
      goto LABEL_6;
    }
  }

  else if (!v19)
  {
LABEL_6:
    if (v54)
    {
      goto LABEL_7;
    }

    goto LABEL_15;
  }

  v25 = v22 + v14[7];
  v26 = *(v25 + 176);
  v73 = *(v25 + 160);
  v74 = v26;
  v75 = *(v25 + 192);
  v76 = *(v25 + 208);
  v27 = *(v25 + 112);
  v69 = *(v25 + 96);
  v70 = v27;
  v28 = *(v25 + 144);
  v71 = *(v25 + 128);
  v72 = v28;
  v29 = *(v25 + 48);
  v65 = *(v25 + 32);
  v66 = v29;
  v30 = *(v25 + 80);
  v67 = *(v25 + 64);
  v68 = v30;
  v31 = *(v25 + 16);
  v64[0] = *v25;
  v64[1] = v31;
  result = outlined destroy of SamplingParametersEnvelope(v64);
  if (v54)
  {
LABEL_7:
    result = outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v22 + v14[8], &_s15TokenGeneration11ConstraintsOSgMd, &_s15TokenGeneration11ConstraintsOSgMR);
    if (!v20)
    {
      goto LABEL_8;
    }

    goto LABEL_16;
  }

LABEL_15:
  if (!v20)
  {
LABEL_8:
    if (!v21)
    {
      goto LABEL_10;
    }

    goto LABEL_9;
  }

LABEL_16:

  if (v21)
  {
LABEL_9:
    result = outlined consume of FinishReason?(*(v22 + v14[10]), *(v22 + v14[10] + 8));
  }

LABEL_10:
  if (v55)
  {
  }

  return result;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ClassifyPromptRequest.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ClassifyPromptRequest.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ClassifyPromptRequest.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ClassifyPromptRequest.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ClassifyPromptRequest.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ClassifyPromptRequest.CodingKeys(uint64_t *a1@<X8>)
{
  v2 = 0x7461646174656D5FLL;
  v3 = 0xE900000000000074;
  v4 = 0x706D6F725067745FLL;
  if (*v1 != 2)
  {
    v4 = 0x74656D617261705FLL;
    v3 = 0xEB00000000737265;
  }

  v5 = 0xE700000000000000;
  if (*v1)
  {
    v2 = 0x74706D6F72705FLL;
  }

  else
  {
    v5 = 0xE900000000000061;
  }

  if (*v1 <= 1u)
  {
    v6 = v2;
  }

  else
  {
    v6 = v4;
  }

  if (*v1 <= 1u)
  {
    v7 = v5;
  }

  else
  {
    v7 = v3;
  }

  *a1 = v6;
  a1[1] = v7;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ClassifyPromptRequest.CodingKeys()
{
  v1 = 0x7461646174656D5FLL;
  v2 = 0x706D6F725067745FLL;
  if (*v0 != 2)
  {
    v2 = 0x74656D617261705FLL;
  }

  if (*v0)
  {
    v1 = 0x74706D6F72705FLL;
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

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance ClassifyPromptRequest.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized ClassifyPromptRequest.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ClassifyPromptRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ClassifyPromptRequest.CodingKeys and conformance ClassifyPromptRequest.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ClassifyPromptRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ClassifyPromptRequest.CodingKeys and conformance ClassifyPromptRequest.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t key path getter for CompletePromptRequest.prompt : CompletePromptRequest@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, __n128)@<X3>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v18 - v8;
  v10 = (a1 + *(a2(0, v7) + 20));
  v11 = *v10;
  v12 = v10[1];
  v13 = v10[2];
  v14 = v10[3];
  v15 = type metadata accessor for XPCDictionary();
  v16 = *(v15 - 8);
  (*(v16 + 16))(v9, a1, v15);
  (*(v16 + 56))(v9, 0, 1, v15);
  PromptEnvelope.unseal(_:)(v9, v11, v12, v13, v14, a3);
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v9, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
}

uint64_t key path setter for CompletePromptRequest.prompt : CompletePromptRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = type metadata accessor for Prompt();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - v14;
  v16 = *(v9 + 16);
  v16(&v26 - v14, a1, v8, v13);
  (v16)(v11, v15, v8);
  v17 = specialized PromptEnvelope.init(sealing:xpcData:)(v11, a2);
  v19 = v18;
  v21 = v20;
  v23 = v22;
  (*(v9 + 8))(v15, v8);
  v24 = (a2 + *(a5(0) + 20));

  *v24 = v17;
  v24[1] = v19;
  v24[2] = v21;
  v24[3] = v23;
  return result;
}

uint64_t CompletePromptRequest.prompt.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v5 = type metadata accessor for Prompt();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v9, a1, v5, v7);
  v10 = specialized PromptEnvelope.init(sealing:xpcData:)(v9, v2);
  v12 = v11;
  v14 = v13;
  v16 = v15;
  (*(v6 + 8))(a1, v5);
  v17 = (v2 + *(a2(0) + 20));

  *v17 = v10;
  v17[1] = v12;
  v17[2] = v14;
  v17[3] = v16;
  return result;
}

uint64_t (*ClassifyPromptRequest.tgPrompt.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x58uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v8 = v7;
  v5[1] = v7;
  v9 = type metadata accessor for Prompt();
  v5[2] = v9;
  v10 = *(v9 - 8);
  v5[3] = v10;
  v11 = *(v10 + 64);
  if (v3)
  {
    v5[4] = swift_coroFrameAlloc();
    v5[5] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v5[4] = malloc(*(v10 + 64));
    v5[5] = malloc(v11);
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[6] = v12;
  v14 = *(type metadata accessor for ClassifyPromptRequest(0) + 20);
  *(v5 + 20) = v14;
  v15 = (v1 + v14);
  v16 = *v15;
  v17 = v15[1];
  v5[7] = v17;
  v18 = v15[2];
  v5[8] = v18;
  v19 = v15[3];
  v5[9] = v19;
  v20 = type metadata accessor for XPCDictionary();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v8, v1, v20);
  (*(v21 + 56))(v8, 0, 1, v20);
  PromptEnvelope.unseal(_:)(v8, v16, v17, v18, v19, v13);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
  return ClassifyPromptRequest.tgPrompt.modify;
}

void CompletePromptRequest.prompt.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = *((*a1)[3] + 16);
  v4((*a1)[5], v3[6], v3[2]);
  v5 = v3[6];
  v6 = v3[5];
  v7 = *v3;
  v27 = v3[1];
  v8 = (*v3 + *(v3 + 20));
  v10 = v3[2];
  v9 = v3[3];
  if (a2)
  {
    v11 = v3[4];
    v4(v11, v6, v3[2]);
    v12 = specialized PromptEnvelope.init(sealing:xpcData:)(v11, v7);
    v24 = v14;
    v25 = v13;
    v16 = v15;
    v17 = *(v9 + 8);
    v17(v6, v10);

    *v8 = v12;
    v8[1] = v25;
    v8[2] = v24;
    v8[3] = v16;
    v17(v5, v10);
  }

  else
  {
    v11 = v3[4];
    v18 = specialized PromptEnvelope.init(sealing:xpcData:)(v6, v7);
    v20 = v19;
    v22 = v21;
    v26 = v23;
    (*(v9 + 8))(v5, v10);

    *v8 = v18;
    v8[1] = v20;
    v8[2] = v22;
    v8[3] = v26;
  }

  free(v5);
  free(v6);
  free(v11);
  free(v27);

  free(v3);
}

uint64_t key path setter for CountTokensRequest.promptVariant : CountTokensRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  v8 = type metadata accessor for PromptVariantEnvelope(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PromptVariant();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v22 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = MEMORY[0x1EEE9AC00](v15);
  v18 = &v22 - v17;
  v19 = *(v12 + 16);
  v19(&v22 - v17, a1, v11, v16);
  (v19)(v14, v18, v11);
  PromptVariantEnvelope.init(sealing:xpcData:)(v14, a2, v10);
  (*(v12 + 8))(v18, v11);
  v20 = a5(0);
  return outlined assign with take of PromptVariantEnvelope(v10, a2 + *(v20 + 24), type metadata accessor for PromptVariantEnvelope);
}

uint64_t CountTokensRequest.promptVariant.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v5 = type metadata accessor for PromptVariant();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PromptVariantEnvelope(0);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, a1, v5, v10);
  PromptVariantEnvelope.init(sealing:xpcData:)(v8, v2, v12);
  (*(v6 + 8))(a1, v5);
  v13 = a2(0);
  return outlined assign with take of PromptVariantEnvelope(v12, v2 + *(v13 + 24), type metadata accessor for PromptVariantEnvelope);
}

uint64_t (*ClassifyPromptRequest.prompt.modify(void *a1))()
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x48uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(type metadata accessor for PromptVariantEnvelope(0) - 8) + 64);
  if (v3)
  {
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v7 = malloc(v6);
  }

  v5[1] = v7;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR) - 8) + 64);
  if (v3)
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(v8);
  }

  v10 = v9;
  v5[2] = v9;
  v11 = type metadata accessor for PromptVariant();
  v5[3] = v11;
  v12 = *(v11 - 8);
  v5[4] = v12;
  v13 = *(v12 + 64);
  if (v3)
  {
    v5[5] = swift_coroFrameAlloc();
    v5[6] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v5[5] = malloc(*(v12 + 64));
    v5[6] = malloc(v13);
    v14 = malloc(v13);
  }

  v15 = v14;
  v5[7] = v14;
  *(v5 + 16) = *(type metadata accessor for ClassifyPromptRequest(0) + 24);
  v16 = type metadata accessor for XPCDictionary();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v10, v1, v16);
  (*(v17 + 56))(v10, 0, 1, v16);
  PromptVariantEnvelope.unseal(_:)(v10, v15);
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v10, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
  return CompletePromptRequest.promptVariant.modify;
}

void CountTokensRequest.promptVariant.modify(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*(*a1 + 32) + 16);
  v4(*(*a1 + 48), *(v3 + 56), *(v3 + 24));
  v5 = *(v3 + 48);
  v13 = *(v3 + 64);
  v14 = *(v3 + 56);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  v8 = *(v3 + 24);
  v15 = *(v3 + 16);
  v10 = *v3;
  v9 = *(v3 + 8);
  if (a2)
  {
    v4(v7, v5, v8);
    PromptVariantEnvelope.init(sealing:xpcData:)(v7, v10, v9);
    v11 = *(v6 + 8);
    v11(v5, v8);
    outlined assign with take of PromptVariantEnvelope(v9, v10 + v13, type metadata accessor for PromptVariantEnvelope);
    v12 = v14;
    v11(v14, v8);
  }

  else
  {
    PromptVariantEnvelope.init(sealing:xpcData:)(v5, *v3, *(v3 + 8));
    v12 = v14;
    (*(v6 + 8))(v14, v8);
    outlined assign with take of PromptVariantEnvelope(v9, v10 + v13, type metadata accessor for PromptVariantEnvelope);
  }

  free(v12);
  free(v5);
  free(v7);
  free(v15);
  free(v9);

  free(v3);
}

double ClassifyPromptRequest.parameters.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ClassifyPromptRequest(0) + 28));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;

  return result;
}

double CountTokensPromptTemplateRequest.metadata.getter@<D0>(uint64_t (*a1)(void)@<X0>, void *a2@<X8>)
{
  v4 = (v2 + *(a1(0) + 32));
  v5 = v4[1];
  v6 = v4[2];
  v7 = v4[3];
  v9 = v4[4];
  v8 = v4[5];
  v10 = v4[6];
  *a2 = *v4;
  a2[1] = v5;
  a2[2] = v6;
  a2[3] = v7;
  a2[4] = v9;
  a2[5] = v8;
  a2[6] = v10;

  return result;
}

uint64_t ClassifyPromptRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration21ClassifyPromptRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration21ClassifyPromptRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v26 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ClassifyPromptRequest.CodingKeys and conformance ClassifyPromptRequest.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = type metadata accessor for ClassifyPromptRequest(0);
  v10 = v9[8];
  v26 = v3;
  v11 = (v3 + v10);
  v12 = v11[1];
  v13 = v11[2];
  v14 = v11[3];
  v15 = v11[4];
  v16 = v11[5];
  v17 = v11[6];
  v27 = *v11;
  *&v28 = v12;
  *(&v28 + 1) = v13;
  v29 = v14;
  v30 = v15;
  v31 = v16;
  v32 = v17;
  v33 = 0;
  lazy protocol witness table accessor for type RequestMetadataEnvelope and conformance RequestMetadataEnvelope();

  v18 = v5;

  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v2)
  {
  }

  else
  {

    LOBYTE(v27) = 1;
    type metadata accessor for PromptVariantEnvelope(0);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptVariantEnvelope and conformance PromptVariantEnvelope, type metadata accessor for PromptVariantEnvelope, &protocol conformance descriptor for PromptVariantEnvelope);
    v19 = v26;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v20 = (v19 + v9[5]);
    v21 = v20[3];
    v27 = *v20;
    v28 = *(v20 + 1);
    v29 = v21;
    v33 = 2;
    lazy protocol witness table accessor for type PromptEnvelope and conformance PromptEnvelope();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v23 = (v19 + v9[7]);
    v24 = *v23;
    v25 = v23[1];
    LOBYTE(v23) = *(v23 + 16);
    v27 = v24;
    *&v28 = v25;
    BYTE8(v28) = v23;
    v33 = 3;
    lazy protocol witness table accessor for type ClassificationParametersEnvelope and conformance ClassificationParametersEnvelope();

    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v18);
}

uint64_t ClassifyPromptRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = type metadata accessor for PromptVariantEnvelope(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration21ClassifyPromptRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration21ClassifyPromptRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v7 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v9 = &v24 - v8;
  v26 = type metadata accessor for ClassifyPromptRequest(0);
  MEMORY[0x1EEE9AC00](v26);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  XPCDictionary.init()();
  v12 = a1[3];
  v27 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  lazy protocol witness table accessor for type ClassifyPromptRequest.CodingKeys and conformance ClassifyPromptRequest.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v27);
    v13 = type metadata accessor for XPCDictionary();
    return (*(*(v13 - 8) + 8))(v11, v13);
  }

  else
  {
    v32 = 0;
    lazy protocol witness table accessor for type RequestMetadataEnvelope and conformance RequestMetadataEnvelope();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v14 = *&v28[16];
    v15 = v29;
    v16 = v31;
    v17 = v26;
    v18 = &v11[*(v26 + 32)];
    *v18 = *v28;
    *(v18 + 2) = v14;
    *(v18 + 3) = v15;
    *(v18 + 2) = v30;
    *(v18 + 6) = v16;
    v28[0] = 1;
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptVariantEnvelope and conformance PromptVariantEnvelope, type metadata accessor for PromptVariantEnvelope, &protocol conformance descriptor for PromptVariantEnvelope);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    outlined init with take of DocumentRegistrationEnvelope(v6, &v11[v17[6]], type metadata accessor for PromptVariantEnvelope);
    v32 = 2;
    lazy protocol witness table accessor for type PromptEnvelope and conformance PromptEnvelope();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v19 = v29;
    v20 = &v11[v17[5]];
    *v20 = *v28;
    *(v20 + 8) = *&v28[8];
    *(v20 + 3) = v19;
    v32 = 3;
    lazy protocol witness table accessor for type ClassificationParametersEnvelope and conformance ClassificationParametersEnvelope();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v7 + 8))(v9, v25);
    v21 = v28[16];
    v22 = &v11[v17[7]];
    *v22 = *v28;
    v22[16] = v21;
    outlined init with copy of DocumentResourceEnvelope(v11, v24, type metadata accessor for ClassifyPromptRequest);
    __swift_destroy_boxed_opaque_existential_0(v27);
    return outlined destroy of DocumentResourceEnvelope(v11, type metadata accessor for ClassifyPromptRequest);
  }
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ClassifyPromptTemplateRequest.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance ClassifyPromptTemplateRequest.CodingKeys(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ClassifyPromptTemplateRequest.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ClassifyPromptTemplateRequest.CodingKeys@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized ClassifyPromptTemplateRequest.CodingKeys.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance ClassifyPromptTemplateRequest.CodingKeys(unint64_t *a1@<X8>)
{
  v2 = 0xE700000000000000;
  v3 = 0x74706D6F72705FLL;
  v4 = 0xEB00000000737265;
  v5 = 0x74656D617261705FLL;
  if (*v1 != 2)
  {
    v5 = 0x7461646174656D5FLL;
    v4 = 0xE900000000000061;
  }

  if (*v1)
  {
    v3 = 0xD000000000000013;
    v2 = 0x80000001ABA3F3F0;
  }

  if (*v1 <= 1u)
  {
    v6 = v3;
  }

  else
  {
    v6 = v5;
  }

  if (*v1 > 1u)
  {
    v2 = v4;
  }

  *a1 = v6;
  a1[1] = v2;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance ClassifyPromptTemplateRequest.CodingKeys()
{
  v1 = 0x74706D6F72705FLL;
  v2 = 0x74656D617261705FLL;
  if (*v0 != 2)
  {
    v2 = 0x7461646174656D5FLL;
  }

  if (*v0)
  {
    v1 = 0xD000000000000013;
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

unint64_t protocol witness for CodingKey.init(stringValue:) in conformance ClassifyPromptTemplateRequest.CodingKeys@<X0>(Swift::String a1@<X1:X0>, _BYTE *a2@<X8>)
{
  result = specialized ClassifyPromptTemplateRequest.CodingKeys.init(rawValue:)(a1);
  *a2 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ClassifyPromptTemplateRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ClassifyPromptTemplateRequest.CodingKeys and conformance ClassifyPromptTemplateRequest.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ClassifyPromptTemplateRequest.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ClassifyPromptTemplateRequest.CodingKeys and conformance ClassifyPromptTemplateRequest.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t key path getter for CompletePromptTemplateRequest.prompt : CompletePromptTemplateRequest@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, __n128)@<X3>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v21 - v8;
  v10 = (a1 + *(a2(0, v7) + 20));
  v11 = v10[1];
  if (v11)
  {
    v13 = v10[2];
    v12 = v10[3];
    v14 = *v10;
    v15 = type metadata accessor for XPCDictionary();
    v16 = *(v15 - 8);
    (*(v16 + 16))(v9, a1, v15);
    (*(v16 + 56))(v9, 0, 1, v15);
    PromptEnvelope.unseal(_:)(v9, v14, v11, v13, v12, a3);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v9, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
    v17 = type metadata accessor for Prompt();
    return (*(*(v17 - 8) + 56))(a3, 0, 1, v17);
  }

  else
  {
    v19 = type metadata accessor for Prompt();
    v20 = *(*(v19 - 8) + 56);

    return v20(a3, 1, 1, v19);
  }
}

void CompletePromptTemplateRequest.prompt.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v5 = type metadata accessor for Prompt();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v23 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v23 - v13;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &v23 - v13, &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
  if ((*(v6 + 48))(v14, 1, v5) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
  }

  else
  {
    (*(v6 + 32))(v11, v14, v5);
    (*(v6 + 16))(v8, v11, v5);
    v15 = specialized PromptEnvelope.init(sealing:xpcData:)(v8, v2);
    v16 = v19;
    v17 = v20;
    v18 = v21;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
    (*(v6 + 8))(v11, v5);
  }

  v22 = (v2 + *(a2(0) + 20));
  outlined consume of PromptEnvelope?(*v22, v22[1], v22[2], v22[3]);
  *v22 = v15;
  v22[1] = v16;
  v22[2] = v17;
  v22[3] = v18;
}

uint64_t (*ClassifyPromptTemplateRequest.prompt.modify(void *a1))()
{
  v2 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x78uLL);
  }

  v4 = v3;
  *a1 = v3;
  *v3 = v1;
  v5 = type metadata accessor for Prompt();
  v4[1] = v5;
  v6 = *(v5 - 8);
  v7 = v6;
  v4[2] = v6;
  v8 = *(v6 + 64);
  if (v2)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(*(v6 + 64));
    v9 = malloc(v8);
  }

  v4[4] = v9;
  v10 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR) - 8) + 64);
  if (v2)
  {
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v11 = malloc(v10);
  }

  v12 = v11;
  v4[5] = v11;
  v13 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR) - 8) + 64);
  if (v2)
  {
    v4[6] = swift_coroFrameAlloc();
    v4[7] = swift_coroFrameAlloc();
    v4[8] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v4[6] = malloc(v13);
    v4[7] = malloc(v13);
    v4[8] = malloc(v13);
    v14 = malloc(v13);
  }

  v15 = v14;
  v4[9] = v14;
  v16 = *(type metadata accessor for ClassifyPromptTemplateRequest(0) + 20);
  *(v4 + 28) = v16;
  v17 = (v1 + v16);
  v18 = *v17;
  v4[10] = *v17;
  v19 = v17[1];
  v4[11] = v19;
  v20 = v17[2];
  v4[12] = v20;
  v21 = v17[3];
  v4[13] = v21;
  if (v19)
  {
    v22 = type metadata accessor for XPCDictionary();
    v27 = v7;
    v23 = v5;
    v24 = *(v22 - 8);
    (*(v24 + 16))(v12, v1, v22);
    (*(v24 + 56))(v12, 0, 1, v22);
    v5 = v23;
    v7 = v27;
    PromptEnvelope.unseal(_:)(v12, v18, v19, v20, v21, v15);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v12, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
    v25 = 0;
  }

  else
  {
    v25 = 1;
  }

  (*(v7 + 56))(v15, v25, 1, v5);
  return ClassifyPromptTemplateRequest.prompt.modify;
}

void CompletePromptTemplateRequest.prompt.modify(void **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 9);
  if (a2)
  {
    v5 = v2[6];
    v4 = v2[7];
    v6 = v2[1];
    v7 = v2[2];
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v3, v4, &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, v5, &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
    v8 = (*(v7 + 48))(v5, 1, v6);
    v10 = v2[12];
    v9 = v2[13];
    v12 = v2[10];
    v11 = v2[11];
    v13 = v2[7];
    if (v8 == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2[7], &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
      outlined consume of PromptEnvelope?(v12, v11, v10, v9);
      v14 = 0;
      v15 = 0;
      v16 = 0;
      v17 = 0;
    }

    else
    {
      v32 = v2[3];
      v31 = v2[4];
      v60 = v2[12];
      v62 = v2[13];
      v33 = v2[1];
      v34 = v2[2];
      v35 = *v2;
      (*(v34 + 32))(v31, v2[6], v33);
      (*(v34 + 16))(v32, v31, v33);
      v58 = specialized PromptEnvelope.init(sealing:xpcData:)(v32, v35);
      v37 = v36;
      v16 = v38;
      v17 = v39;
      (*(v34 + 8))(v31, v33);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
      outlined consume of PromptEnvelope?(v12, v11, v60, v62);
      v15 = v37;
      v14 = v58;
    }

    v41 = v2[8];
    v40 = v2[9];
    v43 = v2[6];
    v42 = v2[7];
    v45 = v2[4];
    v44 = v2[5];
    v46 = v2[3];
    v47 = (*v2 + *(v2 + 28));
    *v47 = v14;
    v47[1] = v15;
    v47[2] = v16;
    v47[3] = v17;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v40, &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
  }

  else
  {
    v18 = v2[8];
    v19 = v2[1];
    v20 = v2[2];
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v3, v18, &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
    v21 = (*(v20 + 48))(v18, 1, v19);
    v23 = v2[12];
    v22 = v2[13];
    v25 = v2[10];
    v24 = v2[11];
    v26 = v2[9];
    if (v21 == 1)
    {
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2[9], &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
      outlined consume of PromptEnvelope?(v25, v24, v23, v22);
      v27 = 0;
      v28 = 0;
      v29 = 0;
      v30 = 0;
    }

    else
    {
      v49 = v2[3];
      v48 = v2[4];
      v61 = v2[12];
      v63 = v2[13];
      v50 = v2[1];
      v51 = v2[2];
      v52 = *v2;
      (*(v51 + 32))(v48, v2[8], v50);
      (*(v51 + 16))(v49, v48, v50);
      v59 = specialized PromptEnvelope.init(sealing:xpcData:)(v49, v52);
      v54 = v53;
      v29 = v55;
      v30 = v56;
      (*(v51 + 8))(v48, v50);
      outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v26, &_s15TokenGeneration6PromptVSgMd, &_s15TokenGeneration6PromptVSgMR);
      outlined consume of PromptEnvelope?(v25, v24, v61, v63);
      v28 = v54;
      v27 = v59;
    }

    v41 = v2[8];
    v40 = v2[9];
    v43 = v2[6];
    v42 = v2[7];
    v45 = v2[4];
    v44 = v2[5];
    v46 = v2[3];
    v57 = (*v2 + *(v2 + 28));
    *v57 = v27;
    v57[1] = v28;
    v57[2] = v29;
    v57[3] = v30;
  }

  free(v40);
  free(v41);
  free(v42);
  free(v43);
  free(v44);
  free(v45);
  free(v46);

  free(v2);
}

uint64_t CountTokensPromptTemplateRequest.promptVariant.getter@<X0>(uint64_t (*a1)(void, __n128)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v19 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v19 - v10;
  v12 = a1(0, v9);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2 + *(v12 + 24), v11, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR);
  v13 = type metadata accessor for PromptVariantEnvelope(0);
  if ((*(*(v13 - 8) + 48))(v11, 1, v13) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v11, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR);
    v14 = 1;
  }

  else
  {
    v15 = type metadata accessor for XPCDictionary();
    v16 = *(v15 - 8);
    (*(v16 + 16))(v7, v2, v15);
    (*(v16 + 56))(v7, 0, 1, v15);
    PromptVariantEnvelope.unseal(_:)(v7, a2);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v7, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
    outlined destroy of DocumentResourceEnvelope(v11, type metadata accessor for PromptVariantEnvelope);
    v14 = 0;
  }

  v17 = type metadata accessor for PromptVariant();
  return (*(*(v17 - 8) + 56))(a2, v14, 1, v17);
}

uint64_t key path setter for CompletePromptTemplateRequest.prompt : CompletePromptTemplateRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(char *))
{
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v15 - v12;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &v15 - v12, a5, a6);
  return a7(v13);
}

uint64_t ClassifyPromptTemplateRequest.promptVariant.setter(uint64_t a1)
{
  v3 = type metadata accessor for PromptVariant();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v20 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v20 - v14;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v12, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  if ((*(v4 + 48))(v12, 1, v3) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
    v16 = 1;
  }

  else
  {
    (*(v4 + 32))(v9, v12, v3);
    (*(v4 + 16))(v6, v9, v3);
    PromptVariantEnvelope.init(sealing:xpcData:)(v6, v1, v15);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
    (*(v4 + 8))(v9, v3);
    v16 = 0;
  }

  v17 = type metadata accessor for PromptVariantEnvelope(0);
  (*(*(v17 - 8) + 56))(v15, v16, 1, v17);
  v18 = type metadata accessor for ClassifyPromptTemplateRequest(0);
  return outlined assign with take of AsyncCompactMapSequence<ResponseSequence, Data>.Iterator?(v15, v1 + *(v18 + 24), &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR);
}

void (*ClassifyPromptTemplateRequest.promptVariant.modify(void *a1))(void **a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x70uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = type metadata accessor for PromptVariant();
  v5[1] = v6;
  v7 = *(v6 - 8);
  v8 = v7;
  v5[2] = v7;
  v9 = *(v7 + 64);
  if (v3)
  {
    v5[3] = swift_coroFrameAlloc();
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v5[3] = malloc(*(v7 + 64));
    v10 = malloc(v9);
  }

  v5[4] = v10;
  v11 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR) - 8) + 64);
  if (v3)
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(v11);
  }

  v13 = v12;
  v5[5] = v12;
  v14 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR) - 8) + 64);
  if (v3)
  {
    v5[6] = swift_coroFrameAlloc();
    v15 = swift_coroFrameAlloc();
  }

  else
  {
    v5[6] = malloc(v14);
    v15 = malloc(v14);
  }

  v16 = v15;
  v5[7] = v15;
  v17 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR) - 8) + 64);
  if (v3)
  {
    v5[8] = swift_coroFrameAlloc();
    v5[9] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v5[8] = malloc(v17);
    v5[9] = malloc(v17);
    v18 = malloc(v17);
  }

  v19 = v18;
  v5[10] = v18;
  v20 = *(type metadata accessor for ClassifyPromptTemplateRequest(0) + 24);
  *(v5 + 26) = v20;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1 + v20, v16, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR);
  v21 = type metadata accessor for PromptVariantEnvelope(0);
  v5[11] = v21;
  v22 = *(v21 - 8);
  v5[12] = v22;
  if ((*(v22 + 48))(v16, 1, v21) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v16, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR);
    v23 = 1;
  }

  else
  {
    v24 = type metadata accessor for XPCDictionary();
    v25 = *(v24 - 8);
    (*(v25 + 16))(v13, v1, v24);
    (*(v25 + 56))(v13, 0, 1, v24);
    PromptVariantEnvelope.unseal(_:)(v13, v19);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v13, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
    outlined destroy of DocumentResourceEnvelope(v16, type metadata accessor for PromptVariantEnvelope);
    v23 = 0;
  }

  (*(v8 + 56))(v19, v23, 1, v6);
  return ClassifyPromptTemplateRequest.promptVariant.modify;
}

void ClassifyPromptTemplateRequest.promptVariant.modify(void **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 9);
  v4 = *(*a1 + 10);
  if (a2)
  {
    v6 = v2[7];
    v5 = v2[8];
    v8 = v2[5];
    v7 = v2[6];
    v24 = v2[3];
    v25 = v2[4];
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, v5, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
    ClassifyPromptTemplateRequest.promptVariant.setter(v5);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
  }

  else
  {
    v9 = v2[1];
    v10 = v2[2];
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(*(*a1 + 10), v3, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
    v11 = 1;
    if ((*(v10 + 48))(v3, 1, v9) != 1)
    {
      v12 = v2[6];
      v14 = v2[3];
      v13 = v2[4];
      v15 = v2[1];
      v16 = v2[2];
      v17 = *v2;
      (*(v16 + 32))(v13, v2[9], v15);
      (*(v16 + 16))(v14, v13, v15);
      PromptVariantEnvelope.init(sealing:xpcData:)(v14, v17, v12);
      (*(v16 + 8))(v13, v15);
      v11 = 0;
    }

    v18 = v2[12];
    v22 = v2[11];
    v23 = *(v2 + 26);
    v3 = v2[9];
    v4 = v2[10];
    v6 = v2[7];
    v5 = v2[8];
    v19 = v2[5];
    v7 = v2[6];
    v24 = v2[3];
    v25 = v2[4];
    v20 = *v2;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v4, &_s15TokenGeneration13PromptVariantOSgMd, &_s15TokenGeneration13PromptVariantOSgMR);
    (*(v18 + 56))(v7, v11, 1, v22);
    v21 = v20 + v23;
    v8 = v19;
    outlined assign with take of AsyncCompactMapSequence<ResponseSequence, Data>.Iterator?(v7, v21, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR);
  }

  free(v4);
  free(v3);
  free(v5);
  free(v6);
  free(v7);
  free(v8);
  free(v25);
  free(v24);

  free(v2);
}

uint64_t key path getter for CompletePromptTemplateRequest.promptTemplateInfo : CompletePromptTemplateRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void, __n128), void (*a5)(uint64_t *, __n128))
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v22[-v9];
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v22[-v13];
  v15 = (a1 + *(a4(0, v12) + 28));
  v16 = type metadata accessor for XPCDictionary();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v14, a1, v16);
  (*(v17 + 56))(v14, 0, 1, v16);
  v18 = *v15;
  v23 = v14;

  specialized _NativeDictionary.mapValues<A>(_:)(a5, v22, v18, v19);
  v20 = type metadata accessor for PromptTemplateInfoEnvelope(0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v15 + *(v20 + 24), v10, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  PromptTemplateInfo.init(templateID:richVariableBindings:locale:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
}

uint64_t key path setter for CompletePromptTemplateRequest.promptTemplateInfo : CompletePromptTemplateRequest(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v26[0] = a5;
  v7 = type metadata accessor for PromptTemplateInfoEnvelope(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  v10 = type metadata accessor for PromptTemplateInfo();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v26 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  v17 = v26 - v16;
  v18 = *(v11 + 16);
  v18(v26 - v16, a1, v10, v15);
  (v18)(v13, v17, v10);
  v9[1] = PromptTemplateInfo.templateID.getter();
  v9[2] = v19;
  v20 = PromptTemplateInfo.richVariableBindings.getter();
  v22 = specialized _NativeDictionary.mapValues<A>(_:)(v20, a2, v21);

  *v9 = v22;
  PromptTemplateInfo.locale.getter();
  v23 = *(v11 + 8);
  v23(v13, v10);
  v23(v17, v10);
  v24 = (v26[0])(0);
  return outlined assign with take of PromptVariantEnvelope(v9, a2 + *(v24 + 28), type metadata accessor for PromptTemplateInfoEnvelope);
}

uint64_t CompletePromptTemplateRequest.promptTemplateInfo.setter(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = v2;
  v6 = type metadata accessor for PromptTemplateInfo();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v21[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = type metadata accessor for PromptTemplateInfoEnvelope(0);
  v11 = MEMORY[0x1EEE9AC00](v10);
  v13 = &v21[-((v12 + 15) & 0xFFFFFFFFFFFFFFF0)];
  (*(v7 + 16))(v9, a1, v6, v11);
  v13[1] = PromptTemplateInfo.templateID.getter();
  v13[2] = v14;
  v15 = PromptTemplateInfo.richVariableBindings.getter();
  v17 = specialized _NativeDictionary.mapValues<A>(_:)(v15, v4, v16);

  *v13 = v17;
  PromptTemplateInfo.locale.getter();
  v18 = *(v7 + 8);
  v18(a1, v6);
  v18(v9, v6);
  v19 = a2(0);
  return outlined assign with take of PromptVariantEnvelope(v13, v4 + *(v19 + 28), type metadata accessor for PromptTemplateInfoEnvelope);
}

uint64_t (*ClassifyPromptTemplateRequest.promptTemplateInfo.modify(void *a1))()
{
  v2 = v1;
  v4 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v5 = swift_coroFrameAlloc();
  }

  else
  {
    v5 = malloc(0x60uLL);
  }

  v6 = v5;
  *a1 = v5;
  *v5 = v2;
  v7 = type metadata accessor for PromptTemplateInfoEnvelope(0);
  v6[1] = v7;
  if (v4)
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(*(*(v7 - 8) + 64));
  }

  v6[2] = v8;
  v9 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR) - 8) + 64);
  if (v4)
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(v9);
  }

  v11 = v10;
  v6[3] = v10;
  v12 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR) - 8) + 64);
  if (v4)
  {
    v13 = swift_coroFrameAlloc();
  }

  else
  {
    v13 = malloc(v12);
  }

  v14 = v13;
  v6[4] = v13;
  v15 = type metadata accessor for PromptTemplateInfo();
  v6[5] = v15;
  v16 = *(v15 - 8);
  v6[6] = v16;
  v17 = *(v16 + 64);
  v27[4] = a1;
  if (v4)
  {
    v6[7] = swift_coroFrameAlloc();
    v6[8] = swift_coroFrameAlloc();
    v18 = swift_coroFrameAlloc();
  }

  else
  {
    v6[7] = malloc(v17);
    v6[8] = malloc(v17);
    v18 = malloc(v17);
  }

  v6[9] = v18;
  v19 = *(type metadata accessor for ClassifyPromptTemplateRequest(0) + 28);
  *(v6 + 22) = v19;
  v20 = (v2 + v19);
  v21 = type metadata accessor for XPCDictionary();
  v22 = *(v21 - 8);
  (*(v22 + 16))(v14, v2, v21);
  v23 = (*(v22 + 56))(v14, 0, 1, v21);
  v24 = *v20;
  MEMORY[0x1EEE9AC00](v23);
  v27[2] = v14;

  specialized _NativeDictionary.mapValues<A>(_:)(closure #1 in PromptTemplateInfoEnvelope.unseal(_:)partial apply, v27, v24, v25);
  v6[10] = 0;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v20 + *(v7 + 24), v11, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  PromptTemplateInfo.init(templateID:richVariableBindings:locale:)();
  outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v14, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
  return ClassifyPromptTemplateRequest.promptTemplateInfo.modify;
}

void CompletePromptTemplateRequest.promptTemplateInfo.modify(uint64_t **a1, char a2)
{
  v3 = *a1;
  v4 = *((*a1)[6] + 16);
  v4((*a1)[8], v3[9], v3[5]);
  v23 = *(v3 + 22);
  v24 = v3[9];
  v5 = v3[7];
  v6 = v3[5];
  v7 = v3[6];
  v25 = v3[4];
  v26 = v3[3];
  v8 = v3[2];
  v9 = *v3;
  if (a2)
  {
    v10 = v3[8];
    v4(v5, v10, v6);
    v11 = v10;
    v8[1] = PromptTemplateInfo.templateID.getter();
    v8[2] = v12;
    v13 = PromptTemplateInfo.richVariableBindings.getter();
    v15 = specialized _NativeDictionary.mapValues<A>(_:)(v13, v9, v14);

    *v8 = v15;
    PromptTemplateInfo.locale.getter();
    v16 = *(v7 + 8);
    v16(v5, v6);
    v16(v10, v6);
    outlined assign with take of PromptVariantEnvelope(v8, v9 + v23, type metadata accessor for PromptTemplateInfoEnvelope);
    v17 = v24;
    v16(v24, v6);
  }

  else
  {
    v11 = v3[8];
    v8[1] = PromptTemplateInfo.templateID.getter();
    v8[2] = v18;
    v19 = PromptTemplateInfo.richVariableBindings.getter();
    v21 = specialized _NativeDictionary.mapValues<A>(_:)(v19, v9, v20);

    *v8 = v21;
    PromptTemplateInfo.locale.getter();
    v22 = *(v7 + 8);
    v22(v11, v6);
    v17 = v24;
    v22(v24, v6);
    outlined assign with take of PromptVariantEnvelope(v8, v9 + v23, type metadata accessor for PromptTemplateInfoEnvelope);
  }

  free(v17);
  free(v11);
  free(v5);
  free(v25);
  free(v26);
  free(v8);

  free(v3);
}

double ClassifyPromptTemplateRequest.parameters.getter@<D0>(uint64_t a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ClassifyPromptTemplateRequest(0) + 32));
  v5 = *v3;
  v4 = v3[1];
  LOBYTE(v3) = *(v3 + 16);
  *a1 = v5;
  *(a1 + 8) = v4;
  *(a1 + 16) = v3;

  return result;
}

double ClassifyPromptTemplateRequest.metadata.getter@<D0>(void *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ClassifyPromptTemplateRequest(0) + 36));
  v4 = v3[1];
  v5 = v3[2];
  v6 = v3[3];
  v8 = v3[4];
  v7 = v3[5];
  v9 = v3[6];
  *a1 = *v3;
  a1[1] = v4;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v8;
  a1[5] = v7;
  a1[6] = v9;

  return result;
}

uint64_t ClassifyPromptTemplateRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration29ClassifyPromptTemplateRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration29ClassifyPromptTemplateRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v23 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ClassifyPromptTemplateRequest.CodingKeys and conformance ClassifyPromptTemplateRequest.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = type metadata accessor for ClassifyPromptTemplateRequest(0);
  v10 = (v3 + v9[5]);
  v11 = v10[1];
  v23 = *v10;
  v24 = v11;
  v28 = 0;
  lazy protocol witness table accessor for type PromptEnvelope and conformance PromptEnvelope();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v23) = 1;
    type metadata accessor for PromptTemplateInfoEnvelope(0);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptTemplateInfoEnvelope and conformance PromptTemplateInfoEnvelope, type metadata accessor for PromptTemplateInfoEnvelope, &protocol conformance descriptor for PromptTemplateInfoEnvelope);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = (v3 + v9[8]);
    v13 = *v12;
    v14 = v12[1];
    LOBYTE(v12) = *(v12 + 16);
    *&v23 = v13;
    *(&v23 + 1) = v14;
    LOBYTE(v24) = v12;
    v28 = 2;
    lazy protocol witness table accessor for type ClassificationParametersEnvelope and conformance ClassificationParametersEnvelope();

    KeyedEncodingContainer.encode<A>(_:forKey:)();

    v15 = (v3 + v9[9]);
    v16 = v15[1];
    v17 = v15[2];
    v18 = v15[3];
    v19 = v15[4];
    v20 = v15[5];
    v21 = v15[6];
    *&v23 = *v15;
    *(&v23 + 1) = v16;
    *&v24 = v17;
    *(&v24 + 1) = v18;
    v25 = v19;
    v26 = v20;
    v27 = v21;
    v28 = 3;
    lazy protocol witness table accessor for type RequestMetadataEnvelope and conformance RequestMetadataEnvelope();

    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ClassifyPromptTemplateRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  v4 = type metadata accessor for PromptTemplateInfoEnvelope(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = v32 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration29ClassifyPromptTemplateRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration29ClassifyPromptTemplateRequestV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v34 = *(v7 - 8);
  v35 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v32 - v8;
  v10 = type metadata accessor for ClassifyPromptTemplateRequest(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  XPCDictionary.init()();
  v37 = v10;
  v13 = *(v10 + 24);
  v14 = type metadata accessor for PromptVariantEnvelope(0);
  v15 = *(*(v14 - 8) + 56);
  v36 = v13;
  v15(&v12[v13], 1, 1, v14);
  v16 = a1[3];
  v38 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  lazy protocol witness table accessor for type ClassifyPromptTemplateRequest.CodingKeys and conformance ClassifyPromptTemplateRequest.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(v38);
    v19 = type metadata accessor for XPCDictionary();
    (*(*(v19 - 8) + 8))(v12, v19);
    outlined consume of PromptEnvelope?(0, 0, 0, 0);
    return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(&v12[v36], &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMd, &_s15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLOSgMR);
  }

  else
  {
    v17 = v34;
    v44 = 0;
    lazy protocol witness table accessor for type PromptEnvelope and conformance PromptEnvelope();
    v18 = v35;
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    v20 = v37;
    v21 = &v12[v37[5]];
    v22 = *(&v39 + 1);
    v23 = v40;
    v24 = v41;
    v32[2] = *(&v39 + 1);
    v32[3] = v39;
    *v21 = v39;
    *(v21 + 1) = v22;
    v32[1] = v23;
    *(v21 + 2) = v23;
    *(v21 + 3) = v24;
    LOBYTE(v39) = 1;
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptTemplateInfoEnvelope and conformance PromptTemplateInfoEnvelope, type metadata accessor for PromptTemplateInfoEnvelope, &protocol conformance descriptor for PromptTemplateInfoEnvelope);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    outlined init with take of DocumentRegistrationEnvelope(v6, &v12[v20[7]], type metadata accessor for PromptTemplateInfoEnvelope);
    v44 = 2;
    lazy protocol witness table accessor for type ClassificationParametersEnvelope and conformance ClassificationParametersEnvelope();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    v25 = v40;
    v26 = &v12[v20[8]];
    *v26 = v39;
    v26[16] = v25;
    v44 = 3;
    lazy protocol witness table accessor for type RequestMetadataEnvelope and conformance RequestMetadataEnvelope();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v17 + 8))(v9, v18);
    v27 = v40;
    v28 = v41;
    v29 = v43;
    v30 = &v12[v20[9]];
    *v30 = v39;
    *(v30 + 2) = v27;
    *(v30 + 3) = v28;
    *(v30 + 2) = v42;
    *(v30 + 6) = v29;
    outlined init with copy of DocumentResourceEnvelope(v12, v33, type metadata accessor for ClassifyPromptTemplateRequest);
    __swift_destroy_boxed_opaque_existential_0(v38);
    return outlined destroy of DocumentResourceEnvelope(v12, type metadata accessor for ClassifyPromptTemplateRequest);
  }
}

uint64_t protocol witness for XPCRevivable.xpcData.getter in conformance CompileAdapterRequest@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for XPCDictionary();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ClassifyPromptResponse.CodingKeys()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ClassifyPromptResponse.CodingKeys(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance ClassifyPromptResponse.CodingKeys@<X0>(Swift::String *a1@<X0>, BOOL *a2@<X8>)
{
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for RawRepresentable.init(rawValue:) in conformance ClassifyPromptResponse.CodingKeys, *a1);

  *a2 = v3 != 0;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ClassifyPromptResponse.CodingKeys@<X0>(Swift::String string@<0:X0, 8:X1>, BOOL *a2@<X8>)
{
  object = string._object;
  v3._countAndFlagsBits = string._countAndFlagsBits;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of protocol witness for CodingKey.init(stringValue:) in conformance ClassifyPromptResponse.CodingKeys, v3);

  *a2 = v5 != 0;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ClassifyPromptResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ClassifyPromptResponse.CodingKeys and conformance ClassifyPromptResponse.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ClassifyPromptResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ClassifyPromptResponse.CodingKeys and conformance ClassifyPromptResponse.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ClassificationResponseEnvelope.unseal(_:)@<X0>(char *a1@<X8>)
{
  v3 = type metadata accessor for Prompt.Rendering.Source();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v23 - v5;
  v8 = *v1;
  v7 = v1[1];
  v9 = v1[2];
  v10 = v1[3];

  ModelInformationEnvelope.unseal()(v7, v9, v10, v28);
  v27 = v28[1];
  v25 = v28[0];
  v26 = v28[2];
  if (v1[6])
  {
    v24 = v6;
    v11 = v1[16];
    v12 = v1[15];
    v23[2] = v1[14];
    v23[3] = v12;
    v13 = v1[12];
    v14 = v1[13];
    v23[5] = v11;
    v23[6] = v13;
    v15 = v1[10];
    v23[0] = v1[11];
    v23[1] = v14;
    v23[4] = v15;

    Prompt.Rendering.Source.init(identifier:version:)();

    v6 = v24;
    Prompt.Rendering.init(source:segments:renderedString:originalPrompt:tokenIDs:userInfo:detokenizedString:)();
    v16 = type metadata accessor for Prompt.Rendering();
    (*(*(v16 - 8) + 56))(v6, 0, 1, v16);
  }

  else
  {
    v16 = type metadata accessor for Prompt.Rendering();
    (*(*(v16 - 8) + 56))(v6, 1, 1, v16);
  }

  v17 = *(v1 + 32);
  v18 = type metadata accessor for ClassificationResponse(0);
  v19 = *(v18 + 24);
  type metadata accessor for Prompt.Rendering();
  (*(*(v16 - 8) + 56))(&a1[v19], 1, 1, v16);
  v20 = v25;
  *a1 = v8;
  *(a1 + 1) = v20;
  v21 = v26;
  *(a1 + 2) = v27;
  *(a1 + 3) = v21;
  a1[*(v18 + 28)] = v17;
  return outlined assign with take of AsyncCompactMapSequence<ResponseSequence, Data>.Iterator?(v6, &a1[v19], &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
}

__n128 ClassifyPromptResponse.init(response:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for ClassificationResponse(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  XPCDictionary.init()();
  outlined init with copy of DocumentResourceEnvelope(a1, v6, type metadata accessor for ClassificationResponse);
  specialized ClassificationResponseEnvelope.init(sealing:xpcData:)(v6, v12);
  outlined destroy of DocumentResourceEnvelope(a1, type metadata accessor for ClassificationResponse);
  v7 = a2 + *(type metadata accessor for ClassifyPromptResponse(0) + 20);
  v8 = v12[7];
  *(v7 + 96) = v12[6];
  *(v7 + 112) = v8;
  *(v7 + 128) = v12[8];
  v9 = v12[3];
  *(v7 + 32) = v12[2];
  *(v7 + 48) = v9;
  v10 = v12[5];
  *(v7 + 64) = v12[4];
  *(v7 + 80) = v10;
  result = v12[1];
  *v7 = v12[0];
  *(v7 + 16) = result;
  return result;
}

uint64_t ClassifyPromptResponse.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration22ClassifyPromptResponseV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration22ClassifyPromptResponseV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ClassifyPromptResponse.CodingKeys and conformance ClassifyPromptResponse.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = (v2 + *(type metadata accessor for ClassifyPromptResponse(0) + 20));
  v9 = v8[5];
  v10 = v8[7];
  v33 = v8[6];
  v34 = v10;
  v11 = v8[7];
  v35 = v8[8];
  v12 = v8[1];
  v13 = v8[3];
  v29 = v8[2];
  v30 = v13;
  v14 = v8[3];
  v15 = v8[5];
  v31 = v8[4];
  v32 = v15;
  v16 = v8[1];
  v28[0] = *v8;
  v28[1] = v16;
  v25 = v33;
  v26 = v11;
  v27 = v8[8];
  v21 = v29;
  v22 = v14;
  v23 = v31;
  v24 = v9;
  v19 = v28[0];
  v20 = v12;
  outlined init with copy of ClassificationResponseEnvelope(v28, v18);
  lazy protocol witness table accessor for type ClassificationResponseEnvelope and conformance ClassificationResponseEnvelope();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v18[6] = v25;
  v18[7] = v26;
  v18[8] = v27;
  v18[2] = v21;
  v18[3] = v22;
  v18[4] = v23;
  v18[5] = v24;
  v18[0] = v19;
  v18[1] = v20;
  outlined destroy of ClassificationResponseEnvelope(v18);
  return (*(v5 + 8))(v7, v4);
}

uint64_t ClassifyPromptResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration22ClassifyPromptResponseV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration22ClassifyPromptResponseV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v29 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v18 - v5;
  v7 = type metadata accessor for ClassifyPromptResponse(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  XPCDictionary.init()();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ClassifyPromptResponse.CodingKeys and conformance ClassifyPromptResponse.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    v11 = type metadata accessor for XPCDictionary();
    return (*(*(v11 - 8) + 8))(v9, v11);
  }

  else
  {
    v10 = v19;
    lazy protocol witness table accessor for type ClassificationResponseEnvelope and conformance ClassificationResponseEnvelope();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v29 + 8))(v6, v4);
    v12 = &v9[*(v7 + 20)];
    v13 = v27;
    *(v12 + 6) = v26;
    *(v12 + 7) = v13;
    *(v12 + 8) = v28;
    v14 = v23;
    *(v12 + 2) = v22;
    *(v12 + 3) = v14;
    v15 = v25;
    *(v12 + 4) = v24;
    *(v12 + 5) = v15;
    v16 = v21;
    *v12 = v20;
    *(v12 + 1) = v16;
    outlined init with copy of DocumentResourceEnvelope(v9, v10, type metadata accessor for ClassifyPromptResponse);
    __swift_destroy_boxed_opaque_existential_0(a1);
    return outlined destroy of DocumentResourceEnvelope(v9, type metadata accessor for ClassifyPromptResponse);
  }
}

uint64_t FunctionDescription.init(name:usageDescription:argumentsSchema:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  *a6 = a1;
  *(a6 + 1) = a2;
  *(a6 + 2) = a3;
  *(a6 + 3) = a4;
  v8 = *(type metadata accessor for FunctionDescription(0) + 24);
  v9 = type metadata accessor for Schema();
  v10 = *(*(v9 - 8) + 32);

  return v10(&a6[v8], a5, v9);
}

uint64_t ToolDescription.toolType.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v19[1] = a1;
  v3 = type metadata accessor for FunctionDescription(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for FileGenerationParameters();
  v19[0] = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for ImageGenerationParameters();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for ToolType(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DocumentResourceEnvelope(v2, v15, type metadata accessor for ToolType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v18 = v19[0];
      (*(v19[0] + 32))(v8, v15, v6);
      static ToolType.fileGenerationTool(parameters:)();
      return (*(v18 + 8))(v8, v6);
    }

    else
    {
      (*(v10 + 32))(v12, v15, v9);
      static ToolType.imageGenerationTool(parameters:)();
      return (*(v10 + 8))(v12, v9);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    outlined init with take of DocumentRegistrationEnvelope(v15, v5, type metadata accessor for FunctionDescription);
    static ToolType.function(name:description:parameters:)();
    return outlined destroy of DocumentResourceEnvelope(v5, type metadata accessor for FunctionDescription);
  }

  else if (EnumCaseMultiPayload == 3)
  {
    return static ToolType.browser.getter();
  }

  else
  {
    return static ToolType.imageGenerator.getter();
  }
}

uint64_t static FunctionDescription.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (!v4 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v5 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for FunctionDescription(0);

  return static Schema.== infix(_:_:)();
}

uint64_t ToolDescription.hash(into:)(uint64_t a1)
{
  v17[1] = a1;
  v17[0] = type metadata accessor for FunctionDescription(0);
  MEMORY[0x1EEE9AC00](v17[0]);
  v3 = v17 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for FileGenerationParameters();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for ImageGenerationParameters();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ToolType(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DocumentResourceEnvelope(v1, v14, type metadata accessor for ToolType);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v5 + 32))(v7, v14, v4);
      MEMORY[0x1AC5A6570](3);
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type FileGenerationParameters and conformance FileGenerationParameters, MEMORY[0x1E69A0CF8], MEMORY[0x1E69A0D08]);
      dispatch thunk of Hashable.hash(into:)();
      return (*(v5 + 8))(v7, v4);
    }

    else
    {
      (*(v9 + 32))(v11, v14, v8);
      MEMORY[0x1AC5A6570](2);
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type ImageGenerationParameters and conformance ImageGenerationParameters, MEMORY[0x1E69A0D90], MEMORY[0x1E69A0DA0]);
      dispatch thunk of Hashable.hash(into:)();
      return (*(v9 + 8))(v11, v8);
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    outlined init with take of DocumentRegistrationEnvelope(v14, v3, type metadata accessor for FunctionDescription);
    MEMORY[0x1AC5A6570](4);
    String.hash(into:)();
    String.hash(into:)();
    type metadata accessor for Schema();
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Schema and conformance Schema, MEMORY[0x1E69A0E08], MEMORY[0x1E69A0E10]);
    dispatch thunk of Hashable.hash(into:)();
    return outlined destroy of DocumentResourceEnvelope(v3, type metadata accessor for FunctionDescription);
  }

  else
  {
    return MEMORY[0x1AC5A6570](EnumCaseMultiPayload != 3);
  }
}

Swift::Int ToolDescription.hashValue.getter(void (*a1)(void *))
{
  Hasher.init(_seed:)();
  a1(v3);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance ToolDescription(uint64_t a1, uint64_t a2, void (*a3)(void *))
{
  Hasher.init(_seed:)();
  a3(v5);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance ToolDescription(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(void *))
{
  Hasher.init(_seed:)();
  a4(v6);
  return Hasher._finalize()();
}

uint64_t FunctionDescription.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t FunctionDescription.name.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t FunctionDescription.usageDescription.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FunctionDescription.usageDescription.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t FunctionDescription.argumentsSchema.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for FunctionDescription(0) + 24);
  v4 = type metadata accessor for Schema();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t FunctionDescription.argumentsSchema.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for FunctionDescription(0) + 24);
  v4 = type metadata accessor for Schema();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t FunctionDescription.hash(into:)(uint64_t a1)
{
  String.hash(into:)();
  String.hash(into:)();
  type metadata accessor for FunctionDescription(0);
  type metadata accessor for Schema();
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Schema and conformance Schema, MEMORY[0x1E69A0E08], MEMORY[0x1E69A0E10]);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int FunctionDescription.hashValue.getter()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  type metadata accessor for FunctionDescription(0);
  type metadata accessor for Schema();
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Schema and conformance Schema, MEMORY[0x1E69A0E08], MEMORY[0x1E69A0E10]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance FunctionDescription()
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  type metadata accessor for Schema();
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Schema and conformance Schema, MEMORY[0x1E69A0E08], MEMORY[0x1E69A0E10]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance FunctionDescription(uint64_t a1)
{
  String.hash(into:)();
  String.hash(into:)();
  type metadata accessor for Schema();
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Schema and conformance Schema, MEMORY[0x1E69A0E08], MEMORY[0x1E69A0E10]);
  return dispatch thunk of Hashable.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance FunctionDescription(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  type metadata accessor for Schema();
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Schema and conformance Schema, MEMORY[0x1E69A0E08], MEMORY[0x1E69A0E10]);
  dispatch thunk of Hashable.hash(into:)();
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance FunctionDescription(uint64_t *a1, void *a2, uint64_t a3)
{
  v5 = *a1 == *a2 && a1[1] == a2[1];
  if (!v5 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  v6 = a1[2] == a2[2] && a1[3] == a2[3];
  if (!v6 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    return 0;
  }

  return static Schema.== infix(_:_:)();
}

uint64_t CompletePromptResponse.response.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for PromptCompletion(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v31[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit25InferenceResponseEnvelopeVSgMd, &_s9PromptKit25InferenceResponseEnvelopeVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v31[-v7];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit17InferenceResponseVSgMd, &_s9PromptKit17InferenceResponseVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v31[-v10];
  v12 = type metadata accessor for CompletePromptResponse(0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1 + *(v12 + 20), v8, &_s9PromptKit25InferenceResponseEnvelopeVSgMd, &_s9PromptKit25InferenceResponseEnvelopeVSgMR);
  v13 = type metadata accessor for InferenceResponseEnvelope();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v8, 1, v13) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s9PromptKit25InferenceResponseEnvelopeVSgMd, &_s9PromptKit25InferenceResponseEnvelopeVSgMR);
    v15 = type metadata accessor for InferenceResponse();
    v16 = *(v15 - 8);
    (*(v16 + 56))(v11, 1, 1, v15);
    v17 = v1[7];
    v18 = v1[9];
    v50 = v1[8];
    v51 = v18;
    v19 = v1[9];
    v52 = v1[10];
    v20 = v1[3];
    v21 = v1[5];
    v46 = v1[4];
    v47 = v21;
    v22 = v1[5];
    v23 = v1[7];
    v48 = v1[6];
    v49 = v23;
    v24 = v1[1];
    v43[0] = *v1;
    v43[1] = v24;
    v25 = v1[3];
    v27 = *v1;
    v26 = v1[1];
    v44 = v1[2];
    v45 = v25;
    v40 = v50;
    v41 = v19;
    v42 = v1[10];
    v36 = v46;
    v37 = v22;
    v38 = v48;
    v39 = v17;
    v32 = v27;
    v33 = v26;
    v34 = v44;
    v35 = v20;
    outlined init with copy of PromptCompletionEnvelope(v43, v31);
    PromptCompletionEnvelope.unseal()(v5);
    v53[8] = v40;
    v53[9] = v41;
    v53[10] = v42;
    v53[4] = v36;
    v53[5] = v37;
    v53[6] = v38;
    v53[7] = v39;
    v53[0] = v32;
    v53[1] = v33;
    v53[2] = v34;
    v53[3] = v35;
    outlined destroy of PromptCompletionEnvelope(v53);
    InferenceResponse.init(_:)(v5, a1);
    result = (*(v16 + 48))(v11, 1, v15);
    if (result != 1)
    {
      return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v11, &_s9PromptKit17InferenceResponseVSgMd, &_s9PromptKit17InferenceResponseVSgMR);
    }
  }

  else
  {
    InferenceResponseEnvelope.unseal()();
    (*(v14 + 8))(v8, v13);
    v29 = type metadata accessor for InferenceResponse();
    v30 = *(v29 - 8);
    (*(v30 + 56))(v11, 0, 1, v29);
    return (*(v30 + 32))(a1, v11, v29);
  }

  return result;
}

__n128 CompletePromptResponse.init(response:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PromptCompletion(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for InferenceResponse();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(type metadata accessor for CompletePromptResponse(0) + 20);
  v12 = *(v8 + 16);
  v12(v10, a1, v7);
  InferenceResponseEnvelope.init(sealing:)();
  v13 = type metadata accessor for InferenceResponseEnvelope();
  (*(*(v13 - 8) + 56))(a2 + v11, 0, 1, v13);
  v12(v10, a1, v7);
  PromptCompletion.init(_:)(v10, v6);
  v14 = PromptCompletionEnvelope.init(sealing:)(v6, v20);
  (*(v8 + 8))(a1, v7, v14);
  v15 = v20[9];
  *(a2 + 128) = v20[8];
  *(a2 + 144) = v15;
  *(a2 + 160) = v20[10];
  v16 = v20[5];
  *(a2 + 64) = v20[4];
  *(a2 + 80) = v16;
  v17 = v20[7];
  *(a2 + 96) = v20[6];
  *(a2 + 112) = v17;
  v18 = v20[1];
  *a2 = v20[0];
  *(a2 + 16) = v18;
  result = v20[3];
  *(a2 + 32) = v20[2];
  *(a2 + 48) = result;
  return result;
}

double PromptCompletionEnvelope.init(sealing:)@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for Prompt.Rendering();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  *&v57 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v52 = &v49 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v49 - v10;
  v12 = a1[1];
  v13 = a1[2];
  *&v66 = *a1;
  *(&v66 + 1) = v12;
  *&v67 = v13;

  v14 = specialized ModelInformationEnvelope.init(sealing:)(&v66);
  v15 = a1[3];
  v62 = v16;
  v61 = v17;
  *&v60 = v11;
  if (v15)
  {
    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDy15TokenGeneration16PromptCompletionV10ModerationV8CategoryVAJ11ProbabilityOG_SS_AF0H8Envelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0jK0Ots5NeverOTg504_s15d12Generation16fg3V10h2V8i5VAE11j19OSSAA0E8Envelope33_lmnopqrst39LLV0gH0OIgnnod_AG3key_AI5valuetSS_ANts5U131OIegnrzr_TR04_s15a12Generation18e11Envelope33_ijklmnopq16LLV7sealingAdA16cd18V0C0V_tcfcSS_AD011g7D0OtAI8F14V_AI0Q0OtXEfU_Tf3nnnpf_nTf1cn_n(v15);
    v19 = v18;
    if (*(v18 + 16))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityF0OGMd, &_ss18_DictionaryStorageCySS15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityF0OGMR);
      v20 = static _DictionaryStorage.allocate(capacity:)();
    }

    else
    {
      v20 = MEMORY[0x1E69E7CC8];
    }

    *&v66 = v20;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v19, 1, &v66);
    v21 = v66;
  }

  else
  {
    v21 = 0;
  }

  v22 = a1[5];
  v59 = a1[6];
  v58 = v22;
  v23 = a1[4];
  v24 = *(v23 + 16);
  v25 = MEMORY[0x1E69E7CC0];
  if (v24)
  {
    v50 = v21;
    v51 = v14;
    *&v53 = v5;
    *&v54 = v4;
    *&v55 = a1;
    *&v56 = a2;
    v63 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v24, 0);
    v25 = v63;
    v26 = (v23 + 80);
    do
    {
      v27 = *(v26 - 5);
      v28 = *(v26 - 4);
      v29 = *(v26 - 3);
      v31 = *(v26 - 2);
      v30 = *(v26 - 1);
      v32 = *v26;
      *&v66 = *(v26 - 6);
      *(&v66 + 1) = v27;
      *&v67 = v28;
      *(&v67 + 1) = v29;
      *&v68 = v31;
      *(&v68 + 1) = v30;
      *&v69 = v32;

      outlined copy of FinishReason(v29, v31);
      outlined copy of Data._Representation(v30, v32);
      specialized PromptCompletionEnvelope.CandidateEnvelope.init(sealing:)(&v66, v64);
      v63 = v25;
      v34 = *(v25 + 16);
      v33 = *(v25 + 24);
      if (v34 >= v33 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v33 > 1), v34 + 1, 1);
        v25 = v63;
      }

      v26 += 7;
      *(v25 + 16) = v34 + 1;
      v35 = v25 + 56 * v34;
      v36 = v64[0];
      v37 = v64[1];
      v38 = v64[2];
      *(v35 + 80) = v65;
      *(v35 + 48) = v37;
      *(v35 + 64) = v38;
      *(v35 + 32) = v36;
      --v24;
    }

    while (v24);
    a2 = v56;
    a1 = v55;
    v4 = v54;
    v5 = v53;
    v14 = v51;
    v21 = v50;
  }

  v39 = type metadata accessor for PromptCompletion(0);
  v40 = v60;
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1 + *(v39 + 36), v60, &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  if ((*(v5 + 48))(v40, 1, v4) == 1)
  {
    v41 = 0;
    v60 = 0u;
    v57 = 0u;
    v56 = 0u;
    v55 = 0u;
    v54 = 0u;
    v53 = 0u;
  }

  else
  {
    v42 = v52;
    (*(v5 + 32))(v52, v40, v4);
    v43 = v57;
    (*(v5 + 16))(v57, v42, v4);
    specialized PromptRenderingEnvelope.init(sealing:)(v43, &v66);
    v57 = v67;
    v60 = v66;
    v55 = v69;
    v56 = v68;
    v53 = v71;
    v54 = v70;
    v41 = v72;
    (*(v5 + 8))(v42, v4);
  }

  v44 = a1[7];
  v45 = a1[8];
  outlined copy of Data._Representation(v44, v45);
  outlined destroy of DocumentResourceEnvelope(a1, type metadata accessor for PromptCompletion);
  v46 = v62;
  *a2 = v14;
  *(a2 + 8) = v46;
  *(a2 + 16) = v61;
  *(a2 + 24) = v21;
  v47 = v59;
  *(a2 + 32) = v58;
  *(a2 + 40) = v47;
  *(a2 + 48) = v25;
  *(a2 + 56) = v44;
  *(a2 + 64) = v45;
  *(a2 + 88) = v57;
  *(a2 + 72) = v60;
  *(a2 + 120) = v55;
  *(a2 + 104) = v56;
  *(a2 + 152) = v53;
  result = *&v54;
  *(a2 + 136) = v54;
  *(a2 + 168) = v41;
  return result;
}

__n128 CompletePromptResponse.init(completion:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for PromptCompletion(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for InferenceResponse();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(type metadata accessor for CompletePromptResponse(0) + 20);
  outlined init with copy of DocumentResourceEnvelope(a1, v6, type metadata accessor for PromptCompletion);
  InferenceResponse.init(_:)(v6, v9);
  InferenceResponseEnvelope.init(sealing:)();
  v11 = type metadata accessor for InferenceResponseEnvelope();
  (*(*(v11 - 8) + 56))(a2 + v10, 0, 1, v11);
  outlined init with copy of DocumentResourceEnvelope(a1, v6, type metadata accessor for PromptCompletion);
  PromptCompletionEnvelope.init(sealing:)(v6, v17);
  outlined destroy of DocumentResourceEnvelope(a1, type metadata accessor for PromptCompletion);
  v12 = v17[9];
  *(a2 + 128) = v17[8];
  *(a2 + 144) = v12;
  *(a2 + 160) = v17[10];
  v13 = v17[5];
  *(a2 + 64) = v17[4];
  *(a2 + 80) = v13;
  v14 = v17[7];
  *(a2 + 96) = v17[6];
  *(a2 + 112) = v14;
  v15 = v17[1];
  *a2 = v17[0];
  *(a2 + 16) = v15;
  result = v17[3];
  *(a2 + 32) = v17[2];
  *(a2 + 48) = result;
  return result;
}

__n128 CompletePromptResponse.init(tokens:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v85 = a2;
  v93 = *MEMORY[0x1E69E9840];
  v3 = type metadata accessor for InferenceResponse();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v83 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v80 - v6;
  v81 = type metadata accessor for PromptCompletion(0);
  MEMORY[0x1EEE9AC00](v81);
  v82 = (&v80 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v9);
  v84 = (&v80 - v10);
  *&v90 = type metadata accessor for Token();
  v11 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v13 = &v80 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Log.inference);
  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    *v17 = 0;
    _os_log_impl(&dword_1AB828000, v15, v16, "Metadata like usage and finish reason will be bogus because a deprecated initializer is being used. Use init(completion:) instead.", v17, 2u);
    MEMORY[0x1AC5A6CD0](v17, -1, -1);
  }

  v86 = v7;

  v18 = *(a1 + 16);
  v19 = MEMORY[0x1E69E7CC0];
  if (v18)
  {
    v91 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18, 0);
    v20 = v91;
    v22 = *(v11 + 16);
    v21 = v11 + 16;
    v88 = v22;
    v23 = (*(v21 + 64) + 32) & ~*(v21 + 64);
    v80 = a1;
    v24 = a1 + v23;
    v87 = *(v21 + 56);
    v89 = v21;
    v25 = (v21 - 8);
    do
    {
      v26 = v90;
      v88(v13, v24, v90);
      v27 = Token.text.getter();
      v29 = v28;
      (*v25)(v13, v26);
      v91 = v20;
      v31 = v20[2];
      v30 = v20[3];
      if (v31 >= v30 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1);
        v20 = v91;
      }

      v20[2] = v31 + 1;
      v32 = &v20[2 * v31];
      v32[4] = v27;
      v32[5] = v29;
      v24 += v87;
      --v18;
    }

    while (v18);

    v19 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v20 = MEMORY[0x1E69E7CC0];
  }

  v91 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v33 = BidirectionalCollection<>.joined(separator:)();
  v35 = v34;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration16PromptCompletionV7SegmentVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration16PromptCompletionV7SegmentVGMR);
  v36 = *(type metadata accessor for PromptCompletion.Segment(0) - 8);
  v37 = (*(v36 + 80) + 32) & ~*(v36 + 80);
  v38 = swift_allocObject();
  v90 = xmmword_1ABA1D930;
  *(v38 + 16) = xmmword_1ABA1D930;
  v39 = v38 + v37;
  *v39 = v33;
  *(v39 + 8) = v35;
  *(v39 + 16) = v19;
  *(v39 + 24) = xmmword_1ABA1D8C0;
  type metadata accessor for PromptCompletion.Content(0);
  swift_storeEnumTagMultiPayload();

  outlined copy of Data?(0, 0xF000000000000000);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v19);
  v40 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  v91 = 0;
  v42 = [v40 dataWithJSONObject:isa options:0 error:&v91];

  v43 = v91;
  if (!v42)
  {
    v51 = v43;
    _convertNSErrorToError(_:)();

    swift_willThrow();
    __break(1u);
    goto LABEL_17;
  }

  v44 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v46 = v45;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration16ModelInformationV5AssetVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration16ModelInformationV5AssetVGMR);
  v47 = swift_allocObject();
  *(v47 + 16) = v90;
  v48 = MEMORY[0x1E69E7CC0];
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v49 = Dictionary._bridgeToObjectiveC()().super.isa;
  v91 = 0;
  v50 = [v40 dataWithJSONObject:v49 options:0 error:&v91];

  v51 = v91;
  if (!v50)
  {
LABEL_17:
    v78 = v51;
    _convertNSErrorToError(_:)();

    v62 = swift_willThrow();
    __break(1u);
LABEL_18:
    v79 = v62;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    __break(1u);
  }

  v89 = v35;
  v52 = v91;

  v53 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v55 = v54;

  *(v47 + 32) = 0;
  *(v47 + 40) = 0xE000000000000000;
  *(v47 + 48) = xmmword_1ABA2BBC0;
  *(v47 + 64) = v53;
  *(v47 + 72) = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration16PromptCompletionV9CandidateVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration16PromptCompletionV9CandidateVGMR);
  v56 = swift_allocObject();
  *(v56 + 16) = v90;
  *(v56 + 32) = v38;
  *(v56 + 40) = v48;
  *(v56 + 48) = 0;
  *(v56 + 56) = 0;
  *(v56 + 64) = 0;
  *(v56 + 72) = v44;
  *(v56 + 80) = v46;

  outlined copy of FinishReason(0, 0);
  *&v90 = v44;
  v88 = v46;
  outlined copy of Data._Representation(v44, v46);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v48);
  v57 = type metadata accessor for Prompt.Rendering();
  v58 = *(*(v57 - 8) + 56);
  v87 = v38;
  v59 = v86;
  v58(v86, 1, 1, v57);
  v60 = Dictionary._bridgeToObjectiveC()().super.isa;
  v91 = 0;
  v61 = [v40 dataWithJSONObject:v60 options:0 error:&v91];

  v62 = v91;
  if (!v61)
  {
    goto LABEL_18;
  }

  v63 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v65 = v64;

  v66 = v84;
  v84[3] = 0;
  v67 = *(v81 + 36);
  v58(v66 + v67, 1, 1, v57);
  v66[1] = 0;
  v66[2] = 0;
  *v66 = v47;

  v66[3] = 0;
  v66[4] = v56;
  v66[5] = 0;
  v66[6] = 0;
  v66[7] = v63;
  v66[8] = v65;
  outlined assign with take of AsyncCompactMapSequence<ResponseSequence, Data>.Iterator?(v59, v66 + v67, &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  v68 = *(type metadata accessor for CompletePromptResponse(0) + 20);
  v69 = v82;
  outlined init with copy of DocumentResourceEnvelope(v66, v82, type metadata accessor for PromptCompletion);
  InferenceResponse.init(_:)(v69, v83);
  v70 = v85;
  InferenceResponseEnvelope.init(sealing:)();
  v71 = type metadata accessor for InferenceResponseEnvelope();
  (*(*(v71 - 8) + 56))(v70 + v68, 0, 1, v71);
  outlined init with copy of DocumentResourceEnvelope(v66, v69, type metadata accessor for PromptCompletion);
  PromptCompletionEnvelope.init(sealing:)(v69, v92);

  outlined consume of FinishReason(0, 0);
  outlined consume of Data._Representation(v90, v88);

  outlined consume of Data?(0, 0xF000000000000000);
  outlined destroy of DocumentResourceEnvelope(v66, type metadata accessor for PromptCompletion);
  v72 = v92[9];
  *(v70 + 128) = v92[8];
  *(v70 + 144) = v72;
  *(v70 + 160) = v92[10];
  v73 = v92[5];
  *(v70 + 64) = v92[4];
  *(v70 + 80) = v73;
  v74 = v92[7];
  *(v70 + 96) = v92[6];
  *(v70 + 112) = v74;
  v76 = v92[1];
  v75 = v92[2];
  *v70 = v92[0];
  *(v70 + 16) = v76;
  result = v92[3];
  *(v70 + 32) = v75;
  *(v70 + 48) = result;
  return result;
}

__n128 CompletePromptResponse.init(toolCalls:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v56 = *MEMORY[0x1E69E9840];
  v4 = type metadata accessor for InferenceResponse();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v53 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v48 - v7;
  v51 = type metadata accessor for PromptCompletion(0);
  MEMORY[0x1EEE9AC00](v51);
  v52 = (&v48 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v48 - v11;
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v54 = v8;
  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Log.inference);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    *v16 = 0;
    _os_log_impl(&dword_1AB828000, v14, v15, "Metadata like usage and finish reason will be bogus because a deprecated initializer is being used. Use init(completion:) instead.", v16, 2u);
    MEMORY[0x1AC5A6CD0](v16, -1, -1);
  }

  v17 = MEMORY[0x1E69E7CC0];
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(MEMORY[0x1E69E7CC0]);
  v18 = objc_opt_self();
  isa = Dictionary._bridgeToObjectiveC()().super.isa;
  *&v55[0] = 0;
  v20 = [v18 dataWithJSONObject:isa options:0 error:v55];

  v21 = *&v55[0];
  if (!v20)
  {
    v46 = v21;
    v31 = _convertNSErrorToError(_:)();

    swift_willThrow();
    __break(1u);
LABEL_9:
    v47 = v31;

    _convertNSErrorToError(_:)();

    swift_willThrow();
    __break(1u);
  }

  v22 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v24 = v23;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy15TokenGeneration16PromptCompletionV9CandidateVGMd, &_ss23_ContiguousArrayStorageCy15TokenGeneration16PromptCompletionV9CandidateVGMR);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1ABA1D930;
  *(v25 + 32) = v17;
  *(v25 + 40) = a1;
  *(v25 + 48) = 0;
  *(v25 + 56) = 0;
  *(v25 + 64) = 0;
  *(v25 + 72) = v22;
  *(v25 + 80) = v24;

  outlined copy of FinishReason(0, 0);
  v50 = v22;
  v49 = v24;
  outlined copy of Data._Representation(v22, v24);
  _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_ypTt0g5Tf4g_n(v17);
  v26 = type metadata accessor for Prompt.Rendering();
  v27 = *(v26 - 8);
  v48 = a1;
  v28 = *(v27 + 56);
  v28(v54, 1, 1, v26);
  v29 = Dictionary._bridgeToObjectiveC()().super.isa;
  *&v55[0] = 0;
  v30 = [v18 dataWithJSONObject:v29 options:0 error:v55];

  v31 = *&v55[0];
  if (!v30)
  {
    goto LABEL_9;
  }

  v32 = *&v55[0];

  v33 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v35 = v34;

  *(v12 + 3) = 0;
  v36 = *(v51 + 36);
  v28(&v12[v36], 1, 1, v26);
  *(v12 + 2) = 0;
  *v12 = MEMORY[0x1E69E7CC0];
  *(v12 + 1) = 0;

  *(v12 + 3) = 0;
  *(v12 + 4) = v25;
  *(v12 + 5) = 0;
  *(v12 + 6) = 0;
  *(v12 + 7) = v33;
  *(v12 + 8) = v35;
  outlined assign with take of AsyncCompactMapSequence<ResponseSequence, Data>.Iterator?(v54, &v12[v36], &_s15TokenGeneration6PromptV9RenderingVSgMd, &_s15TokenGeneration6PromptV9RenderingVSgMR);
  v37 = *(type metadata accessor for CompletePromptResponse(0) + 20);
  v38 = v52;
  outlined init with copy of DocumentResourceEnvelope(v12, v52, type metadata accessor for PromptCompletion);
  InferenceResponse.init(_:)(v38, v53);
  InferenceResponseEnvelope.init(sealing:)();
  v39 = type metadata accessor for InferenceResponseEnvelope();
  (*(*(v39 - 8) + 56))(a2 + v37, 0, 1, v39);
  outlined init with copy of DocumentResourceEnvelope(v12, v38, type metadata accessor for PromptCompletion);
  PromptCompletionEnvelope.init(sealing:)(v38, v55);

  outlined consume of FinishReason(0, 0);
  outlined consume of Data._Representation(v50, v49);
  outlined destroy of DocumentResourceEnvelope(v12, type metadata accessor for PromptCompletion);
  v40 = v55[9];
  *(a2 + 128) = v55[8];
  *(a2 + 144) = v40;
  *(a2 + 160) = v55[10];
  v41 = v55[5];
  *(a2 + 64) = v55[4];
  *(a2 + 80) = v41;
  v42 = v55[7];
  *(a2 + 96) = v55[6];
  *(a2 + 112) = v42;
  v44 = v55[1];
  v43 = v55[2];
  *a2 = v55[0];
  *(a2 + 16) = v44;
  result = v55[3];
  *(a2 + 32) = v43;
  *(a2 + 48) = result;
  return result;
}

void *CompletePromptResponse.tokens.getter()
{
  v1 = v0;
  v2 = type metadata accessor for PromptCompletion.Content(0);
  MEMORY[0x1EEE9AC00](v2);
  v4 = v48 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = type metadata accessor for Token();
  v53 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v54 = v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for PromptCompletion.Segment(0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v52 = v48 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for PromptCompletion(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v48 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Log.inference);
  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v49 = v15;
    v51 = swift_slowAlloc();
    *&v56[0] = v51;
    *v15 = 136315138;
    *&v55[0] = type metadata accessor for CompletePromptResponse(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration22CompletePromptResponseVmMd, &_s15TokenGeneration22CompletePromptResponseVmMR);
    v16 = String.init<A>(describing:)();
    v18 = v11;
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v17, v56);

    v20 = v49;
    *(v49 + 1) = v19;
    v11 = v18;
    _os_log_impl(&dword_1AB828000, v13, v14, "Accessing tokens on %s is deprecated.", v20, 0xCu);
    v21 = v51;
    __swift_destroy_boxed_opaque_existential_0(v51);
    MEMORY[0x1AC5A6CD0](v21, -1, -1);
    MEMORY[0x1AC5A6CD0](v20, -1, -1);
  }

  v22 = v1[9];
  v55[8] = v1[8];
  v55[9] = v22;
  v55[10] = v1[10];
  v23 = v1[5];
  v55[4] = v1[4];
  v55[5] = v23;
  v24 = v1[7];
  v55[6] = v1[6];
  v55[7] = v24;
  v25 = v1[1];
  v55[0] = *v1;
  v55[1] = v25;
  v26 = v1[3];
  v55[2] = v1[2];
  v55[3] = v26;
  outlined init with copy of PromptCompletionEnvelope(v55, v56);
  PromptCompletionEnvelope.unseal()(v11);
  v27 = v1[9];
  v56[8] = v1[8];
  v56[9] = v27;
  v56[10] = v1[10];
  v28 = v1[5];
  v56[4] = v1[4];
  v56[5] = v28;
  v29 = v1[7];
  v56[6] = v1[6];
  v56[7] = v29;
  v30 = v1[1];
  v56[0] = *v1;
  v56[1] = v30;
  v31 = v1[3];
  v56[2] = v1[2];
  v56[3] = v31;
  outlined destroy of PromptCompletionEnvelope(v56);
  v32 = *(v11 + 4);

  outlined destroy of DocumentResourceEnvelope(v11, type metadata accessor for PromptCompletion);
  if (v32[2] && (v49 = v7, v51 = v2, v33 = v32[4], v34 = v32[7], v36 = v32[8], v35 = v32[9], v37 = v32[10], , , , outlined copy of FinishReason(v34, v36), outlined copy of Data._Representation(v35, v37), , , , outlined consume of FinishReason(v34, v36), outlined consume of Data._Representation(v35, v37), v48[0] = v33, (v38 = *(v33 + 16)) != 0))
  {
    v39 = v48[0] + ((*(v49 + 80) + 32) & ~*(v49 + 80));
    v40 = *(v49 + 9);
    v41 = v52;
    v48[1] = v53 + 32;
    v42 = MEMORY[0x1E69E7CC0];
    v49 = v40;
    do
    {
      outlined init with copy of DocumentResourceEnvelope(v39, v41, type metadata accessor for PromptCompletion.Segment);
      outlined init with copy of DocumentResourceEnvelope(v41, v4, type metadata accessor for PromptCompletion.Content);
      if (swift_getEnumCaseMultiPayload())
      {
        outlined destroy of DocumentResourceEnvelope(v41, type metadata accessor for PromptCompletion.Segment);
        outlined destroy of DocumentResourceEnvelope(v4, type metadata accessor for PromptCompletion.Content);
      }

      else
      {
        v43 = *(v4 + 3);
        v44 = *(v4 + 4);

        Token.init(text:)();
        v41 = v52;

        outlined consume of Data?(v43, v44);
        outlined destroy of DocumentResourceEnvelope(v41, type metadata accessor for PromptCompletion.Segment);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, v42[2] + 1, 1, v42);
        }

        v46 = v42[2];
        v45 = v42[3];
        if (v46 >= v45 >> 1)
        {
          v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v45 > 1), v46 + 1, 1, v42);
        }

        v42[2] = v46 + 1;
        (*(v53 + 32))(v42 + ((*(v53 + 80) + 32) & ~*(v53 + 80)) + *(v53 + 72) * v46, v54, v50);
        v40 = v49;
      }

      v39 += v40;
      --v38;
    }

    while (v38);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v42;
}

uint64_t CompletePromptResponse.toolCalls.getter()
{
  v1 = v0;
  v2 = type metadata accessor for PromptCompletion(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = v30 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v5 = type metadata accessor for Logger();
  __swift_project_value_buffer(v5, static Log.inference);
  v6 = Logger.logObject.getter();
  v7 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *&v31[0] = v9;
    *v8 = 136315138;
    *&v30[0] = type metadata accessor for CompletePromptResponse(0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration22CompletePromptResponseVmMd, &_s15TokenGeneration22CompletePromptResponseVmMR);
    v10 = String.init<A>(describing:)();
    v12 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v10, v11, v31);

    *(v8 + 4) = v12;
    _os_log_impl(&dword_1AB828000, v6, v7, "Accessing tool calls on %s is deprecated.", v8, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v9);
    MEMORY[0x1AC5A6CD0](v9, -1, -1);
    MEMORY[0x1AC5A6CD0](v8, -1, -1);
  }

  v13 = v1[9];
  v30[8] = v1[8];
  v30[9] = v13;
  v30[10] = v1[10];
  v14 = v1[5];
  v30[4] = v1[4];
  v30[5] = v14;
  v15 = v1[7];
  v30[6] = v1[6];
  v30[7] = v15;
  v16 = v1[1];
  v30[0] = *v1;
  v30[1] = v16;
  v17 = v1[3];
  v30[2] = v1[2];
  v30[3] = v17;
  outlined init with copy of PromptCompletionEnvelope(v30, v31);
  PromptCompletionEnvelope.unseal()(v4);
  v18 = v1[9];
  v31[8] = v1[8];
  v31[9] = v18;
  v31[10] = v1[10];
  v19 = v1[5];
  v31[4] = v1[4];
  v31[5] = v19;
  v20 = v1[7];
  v31[6] = v1[6];
  v31[7] = v20;
  v21 = v1[1];
  v31[0] = *v1;
  v31[1] = v21;
  v22 = v1[3];
  v31[2] = v1[2];
  v31[3] = v22;
  outlined destroy of PromptCompletionEnvelope(v31);
  v23 = *(v4 + 4);

  outlined destroy of DocumentResourceEnvelope(v4, type metadata accessor for PromptCompletion);
  if (v23[2])
  {
    v24 = v23[5];
    v25 = v23[7];
    v26 = v23[8];
    v27 = v23[9];
    v28 = v23[10];

    outlined copy of FinishReason(v25, v26);
    outlined copy of Data._Representation(v27, v28);

    outlined consume of FinishReason(v25, v26);
    outlined consume of Data._Representation(v27, v28);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v24;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance CompletePromptResponse.CodingKeys()
{
  if (*v0)
  {
    return 0x736E6F707365725FLL;
  }

  else
  {
    return 0x74656C706D6F635FLL;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CompletePromptResponse.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74656C706D6F635FLL && a2 == 0xEB000000006E6F69;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x736E6F707365725FLL && a2 == 0xE900000000000065)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CompletePromptResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CompletePromptResponse.CodingKeys and conformance CompletePromptResponse.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CompletePromptResponse.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CompletePromptResponse.CodingKeys and conformance CompletePromptResponse.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CompletePromptResponse.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration22CompletePromptResponseV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration22CompletePromptResponseV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v45 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v20[-v6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CompletePromptResponse.CodingKeys and conformance CompletePromptResponse.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8 = v3[8];
  v9 = v3[6];
  v41 = v3[7];
  v42 = v8;
  v10 = v3[8];
  v11 = v3[10];
  v43 = v3[9];
  v44 = v11;
  v12 = v3[4];
  v13 = v3[2];
  v37 = v3[3];
  v38 = v12;
  v14 = v3[4];
  v15 = v3[6];
  v39 = v3[5];
  v40 = v15;
  v16 = *v3;
  v17 = v3[2];
  v35 = v3[1];
  v36 = v17;
  v18 = *v3;
  v31 = v10;
  v32 = v43;
  v33 = v3[10];
  v34 = v18;
  v27 = v14;
  v28 = v39;
  v29 = v9;
  v30 = v41;
  v23 = v16;
  v24 = v35;
  v25 = v13;
  v26 = v37;
  v22 = 0;
  outlined init with copy of PromptCompletionEnvelope(&v34, v21);
  lazy protocol witness table accessor for type PromptCompletionEnvelope and conformance PromptCompletionEnvelope();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  v21[8] = v31;
  v21[9] = v32;
  v21[10] = v33;
  v21[4] = v27;
  v21[5] = v28;
  v21[6] = v29;
  v21[7] = v30;
  v21[0] = v23;
  v21[1] = v24;
  v21[2] = v25;
  v21[3] = v26;
  outlined destroy of PromptCompletionEnvelope(v21);
  if (!v2)
  {
    type metadata accessor for CompletePromptResponse(0);
    v20[15] = 1;
    type metadata accessor for InferenceResponseEnvelope();
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type InferenceResponseEnvelope and conformance InferenceResponseEnvelope, MEMORY[0x1E69C6508], MEMORY[0x1E69C6510]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v45 + 8))(v7, v5);
}

uint64_t PromptCompletionStreamElementEnvelope.init(sealing:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  outlined init with copy of PromptCompletionEvent(a1, v5);
  PromptCompletionStreamElementEnvelope.Envelope.init(sealing:)(v5, a2);
  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t CompletePromptResponseElement.token.getter()
{
  PromptCompletionStreamElementEnvelope.Envelope.unseal()(v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptCompletionEvent_pMd, &_s15TokenGeneration21PromptCompletionEvent_pMR);
  if (swift_dynamicCast())
  {
    v9 = v3;
    v10 = v4;
    v0 = v6;
    v11 = v5;
    v14 = v7;
  }

  else
  {
    v0 = 0;
    v1 = 0;
    v9 = 0u;
    v10 = 0u;
    v14 = 0uLL;
    v11 = 0;
  }

  v12 = v0;
  v13 = v1;
  Token.init(text:)();
  return outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(&v9, &_s15TokenGeneration39PromptCompletionEventCandidateTextDeltaVSgMd, &_s15TokenGeneration39PromptCompletionEventCandidateTextDeltaVSgMR);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance CompletePromptResponseElement.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746E6576655FLL && a2 == 0xE600000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance CompletePromptResponseElement.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CompletePromptResponseElement.CodingKeys and conformance CompletePromptResponseElement.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance CompletePromptResponseElement.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type CompletePromptResponseElement.CodingKeys and conformance CompletePromptResponseElement.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CompletePromptResponseElement.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration29CompletePromptResponseElementV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration29CompletePromptResponseElementV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CompletePromptResponseElement.CodingKeys and conformance CompletePromptResponseElement.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for PromptCompletionStreamElementEnvelope(0);
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope and conformance PromptCompletionStreamElementEnvelope, type metadata accessor for PromptCompletionStreamElementEnvelope, &protocol conformance descriptor for PromptCompletionStreamElementEnvelope);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t CompletePromptResponseElement.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for PromptCompletionStreamElementEnvelope(0);
  MEMORY[0x1EEE9AC00](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration29CompletePromptResponseElementV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration29CompletePromptResponseElementV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for CompletePromptResponseElement(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CompletePromptResponseElement.CodingKeys and conformance CompletePromptResponseElement.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v12 = v15;
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope and conformance PromptCompletionStreamElementEnvelope, type metadata accessor for PromptCompletionStreamElementEnvelope, &protocol conformance descriptor for PromptCompletionStreamElementEnvelope);
    v13 = v17;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v16 + 8))(v8, v6);
    outlined init with take of DocumentRegistrationEnvelope(v13, v11, type metadata accessor for PromptCompletionStreamElementEnvelope);
    outlined init with take of DocumentRegistrationEnvelope(v11, v12, type metadata accessor for CompletePromptResponseElement);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance CompletePromptResponseElement(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration29CompletePromptResponseElementV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration29CompletePromptResponseElementV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type CompletePromptResponseElement.CodingKeys and conformance CompletePromptResponseElement.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for PromptCompletionStreamElementEnvelope(0);
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope and conformance PromptCompletionStreamElementEnvelope, type metadata accessor for PromptCompletionStreamElementEnvelope, &protocol conformance descriptor for PromptCompletionStreamElementEnvelope);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

double FetchModelMetadataRequest.metadata.getter@<D0>(void *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = v1[6];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v7;
  a1[5] = v6;
  a1[6] = v8;

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance FetchModelMetadataRequest.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x7461646174656D5FLL && a2 == 0xE900000000000061)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FetchTokenizerMetadataRequest.CodingKeys(uint64_t a1)
{
  TokenizerMetadata = lazy protocol witness table accessor for type FetchTokenizerMetadataRequest.CodingKeys and conformance FetchTokenizerMetadataRequest.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, TokenizerMetadata);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FetchTokenizerMetadataRequest.CodingKeys(uint64_t a1)
{
  TokenizerMetadata = lazy protocol witness table accessor for type FetchTokenizerMetadataRequest.CodingKeys and conformance FetchTokenizerMetadataRequest.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, TokenizerMetadata);
}

uint64_t FetchModelMetadataRequest.encode(to:)(void *a1, uint64_t *a2, uint64_t *a3, void (*a4)(void), uint64_t a5)
{
  v19 = a4;
  v20 = a5;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v29 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v8 = &v16 - v7;
  v9 = *v5;
  v10 = v5[1];
  v11 = v5[3];
  v17 = v5[2];
  v18 = v9;
  v12 = v5[5];
  v16 = v5[4];
  v13 = v5[6];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v19();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v22 = v18;
  v23 = v10;
  v24 = v17;
  v25 = v11;
  v26 = v16;
  v27 = v12;
  v28 = v13;
  lazy protocol witness table accessor for type RequestMetadataEnvelope and conformance RequestMetadataEnvelope();
  v14 = v21;
  KeyedEncodingContainer.encode<A>(_:forKey:)();

  return (*(v29 + 8))(v8, v14);
}

uint64_t FetchModelMetadataRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t (*a4)(void)@<X3>, uint64_t a6@<X8>)
{
  v18 = a6;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  v24 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v18 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  a4();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v6)
  {
    v12 = v18;
    lazy protocol witness table accessor for type RequestMetadataEnvelope and conformance RequestMetadataEnvelope();
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v24 + 8))(v11, v9);
    v13 = v20;
    v14 = v21;
    v15 = v23;
    v16 = v22;
    *v12 = v19;
    *(v12 + 16) = v13;
    *(v12 + 24) = v14;
    *(v12 + 32) = v16;
    *(v12 + 48) = v15;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

__n128 FetchTokenizerMetadataResponse.imageTokenizationRecommendations.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1[1].n128_u64[0];
  result = *v1;
  *a1 = *v1;
  a1[1].n128_u64[0] = v2;
  return result;
}

__n128 FetchTokenizerMetadataResponse.imageTokenizationRecommendations.setter(__n128 *a1)
{
  v2 = a1[1].n128_u64[0];
  result = *a1;
  *v1 = *a1;
  v1[1].n128_u64[0] = v2;
  return result;
}

__n128 FetchTokenizerMetadataResponse.init(imageTokenizationRecommendations:)@<Q0>(__n128 *a1@<X0>, __n128 *a2@<X8>)
{
  v2 = a1[1].n128_u64[0];
  result = *a1;
  *a2 = *a1;
  a2[1].n128_u64[0] = v2;
  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance FetchTokenizerMetadataResponse.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000020 && 0x80000001ABA41800 == a2)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FetchTokenizerMetadataResponse.CodingKeys(uint64_t a1)
{
  TokenizerMetadata = lazy protocol witness table accessor for type FetchTokenizerMetadataResponse.CodingKeys and conformance FetchTokenizerMetadataResponse.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, TokenizerMetadata);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FetchTokenizerMetadataResponse.CodingKeys(uint64_t a1)
{
  TokenizerMetadata = lazy protocol witness table accessor for type FetchTokenizerMetadataResponse.CodingKeys and conformance FetchTokenizerMetadataResponse.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, TokenizerMetadata);
}

uint64_t FetchTokenizerMetadataResponse.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration30FetchTokenizerMetadataResponseV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration30FetchTokenizerMetadataResponseV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v9 - v5;
  *v9 = *v1;
  v7 = *(v1 + 16);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type FetchTokenizerMetadataResponse.CodingKeys and conformance FetchTokenizerMetadataResponse.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  *&v9[3] = *v9;
  v9[5] = v7;
  lazy protocol witness table accessor for type ImageTokenizationRecommendations and conformance ImageTokenizationRecommendations();
  KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t FetchTokenizerMetadataResponse.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration30FetchTokenizerMetadataResponseV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration30FetchTokenizerMetadataResponseV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type FetchTokenizerMetadataResponse.CodingKeys and conformance FetchTokenizerMetadataResponse.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    lazy protocol witness table accessor for type ImageTokenizationRecommendations and conformance ImageTokenizationRecommendations();
    KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
    (*(v6 + 8))(v8, v5);
    v9 = v12;
    *a2 = v11;
    *(a2 + 16) = v9;
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance Constraints.CodingKeys()
{
  v1 = *v0;
  v2 = 0x616D65686373;
  v3 = 0x476C616974726170;
  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x72616D6D617267;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance Constraints.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized Constraints.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Constraints.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Constraints.CodingKeys and conformance Constraints.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Constraints.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Constraints.CodingKeys and conformance Constraints.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Constraints.GrammarCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Constraints.GrammarCodingKeys and conformance Constraints.GrammarCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Constraints.GrammarCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Constraints.GrammarCodingKeys and conformance Constraints.GrammarCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Constraints.GrammarIdentifierCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Constraints.GrammarIdentifierCodingKeys and conformance Constraints.GrammarIdentifierCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Constraints.GrammarIdentifierCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Constraints.GrammarIdentifierCodingKeys and conformance Constraints.GrammarIdentifierCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Constraints.PartialGrammarCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Constraints.PartialGrammarCodingKeys and conformance Constraints.PartialGrammarCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Constraints.PartialGrammarCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Constraints.PartialGrammarCodingKeys and conformance Constraints.PartialGrammarCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Constraints.SchemaCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Constraints.SchemaCodingKeys and conformance Constraints.SchemaCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Constraints.SchemaCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Constraints.SchemaCodingKeys and conformance Constraints.SchemaCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance Constraints.SchemaIdentifierCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Constraints.SchemaIdentifierCodingKeys and conformance Constraints.SchemaIdentifierCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance Constraints.SchemaIdentifierCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type Constraints.SchemaIdentifierCodingKeys and conformance Constraints.SchemaIdentifierCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Constraints.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration11ConstraintsO26SchemaIdentifierCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration11ConstraintsO26SchemaIdentifierCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v50 = *(v2 - 8);
  v51 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v49 = &v42 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration11ConstraintsO27GrammarIdentifierCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration11ConstraintsO27GrammarIdentifierCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v47 = *(v4 - 8);
  v48 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v46 = &v42 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration11ConstraintsO24PartialGrammarCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration11ConstraintsO24PartialGrammarCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v44 = *(v6 - 8);
  v45 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v43 = &v42 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration11ConstraintsO17GrammarCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration11ConstraintsO17GrammarCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v56 = *(v8 - 8);
  v57 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v55 = &v42 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration11ConstraintsO16SchemaCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration11ConstraintsO16SchemaCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v53 = *(v10 - 8);
  v54 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v42 - v11;
  v13 = type metadata accessor for GenerationSchema();
  v52 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v42 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for Constraints(0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v42 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration11ConstraintsO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration11ConstraintsO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v59 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v20 = &v42 - v19;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type Constraints.CodingKeys and conformance Constraints.CodingKeys();
  v60 = v20;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of DocumentResourceEnvelope(v58, v18, type metadata accessor for Constraints);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v26 = v15;
    v27 = v55;
    v28 = v56;
    v29 = v12;
    v31 = v52;
    v30 = v53;
    v32 = v57;
    v33 = v54;
    if (EnumCaseMultiPayload)
    {
      v63 = 1;
      lazy protocol witness table accessor for type Constraints.GrammarCodingKeys and conformance Constraints.GrammarCodingKeys();
      v41 = v27;
      v22 = v61;
      v24 = v60;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      KeyedEncodingContainer.encode(_:forKey:)();

      (*(v28 + 8))(v41, v32);
      return (*(v59 + 8))(v24, v22);
    }

    v34 = v26;
    (*(v52 + 32))(v26, v18, v13);
    v62 = 0;
    lazy protocol witness table accessor for type Constraints.SchemaCodingKeys and conformance Constraints.SchemaCodingKeys();
    v35 = v60;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type GenerationSchema and conformance GenerationSchema, MEMORY[0x1E69A0B98], MEMORY[0x1E69A0BA0]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v30 + 8))(v29, v33);
    (*(v31 + 8))(v34, v13);
    v22 = v61;
    return (*(v59 + 8))(v35, v22);
  }

  if (EnumCaseMultiPayload == 2)
  {
    v64 = 2;
    lazy protocol witness table accessor for type Constraints.PartialGrammarCodingKeys and conformance Constraints.PartialGrammarCodingKeys();
    v36 = v43;
    v22 = v61;
    v24 = v60;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v37 = v45;
    KeyedEncodingContainer.encode(_:forKey:)();

    (*(v44 + 8))(v36, v37);
    return (*(v59 + 8))(v24, v22);
  }

  v22 = v61;
  if (EnumCaseMultiPayload != 3)
  {
    v66 = 4;
    lazy protocol witness table accessor for type Constraints.SchemaIdentifierCodingKeys and conformance Constraints.SchemaIdentifierCodingKeys();
    v38 = v49;
    v35 = v60;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v39 = v51;
    KeyedEncodingContainer.encode(_:forKey:)();

    (*(v50 + 8))(v38, v39);
    return (*(v59 + 8))(v35, v22);
  }

  v65 = 3;
  lazy protocol witness table accessor for type Constraints.GrammarIdentifierCodingKeys and conformance Constraints.GrammarIdentifierCodingKeys();
  v23 = v46;
  v24 = v60;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v25 = v48;
  KeyedEncodingContainer.encode(_:forKey:)();

  (*(v47 + 8))(v23, v25);
  return (*(v59 + 8))(v24, v22);
}

uint64_t Constraints.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for GenerationSchema();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Constraints(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DocumentResourceEnvelope(v1, v8, type metadata accessor for Constraints);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (!EnumCaseMultiPayload)
    {
      (*(v3 + 32))(v5, v8, v2);
      MEMORY[0x1AC5A6570](0);
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type GenerationSchema and conformance GenerationSchema, MEMORY[0x1E69A0B98], MEMORY[0x1E69A0BA8]);
      dispatch thunk of Hashable.hash(into:)();
      return (*(v3 + 8))(v5, v2);
    }

    v10 = 1;
  }

  else if (EnumCaseMultiPayload == 2)
  {
    v10 = 2;
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v10 = 3;
  }

  else
  {
    v10 = 4;
  }

  MEMORY[0x1AC5A6570](v10);
  String.hash(into:)();
}

uint64_t Constraints.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v96 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration11ConstraintsO26SchemaIdentifierCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration11ConstraintsO26SchemaIdentifierCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v4 = *(v3 - 8);
  v92 = v3;
  v93 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v102 = &v78 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration11ConstraintsO27GrammarIdentifierCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration11ConstraintsO27GrammarIdentifierCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v90 = *(v6 - 8);
  v91 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v95 = &v78 - v7;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration11ConstraintsO24PartialGrammarCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration11ConstraintsO24PartialGrammarCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v89 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v85);
  v101 = &v78 - v8;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration11ConstraintsO17GrammarCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration11ConstraintsO17GrammarCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v100 = &v78 - v9;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration11ConstraintsO16SchemaCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration11ConstraintsO16SchemaCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v84 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v94 = &v78 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration11ConstraintsO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration11ConstraintsO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v98 = *(v11 - 8);
  v99 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v78 - v12;
  v97 = type metadata accessor for Constraints(0);
  MEMORY[0x1EEE9AC00](v97);
  v83 = (&v78 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v78 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v78 - v19);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v78 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v78 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v78 - v28;
  v30 = a1[3];
  v103 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v30);
  lazy protocol witness table accessor for type Constraints.CodingKeys and conformance Constraints.CodingKeys();
  v31 = v104;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v31)
  {
    return __swift_destroy_boxed_opaque_existential_0(v103);
  }

  v79 = v23;
  v80 = v20;
  v81 = v17;
  v104 = v26;
  v33 = v100;
  v32 = v101;
  v34 = v102;
  v82 = v29;
  v35 = v98;
  v36 = v99;
  v37 = KeyedDecodingContainer.allKeys.getter();
  v38 = (2 * *(v37 + 16)) | 1;
  v105 = v37;
  v106 = v37 + 32;
  v107 = 0;
  v108 = v38;
  v39 = specialized Collection<>.popFirst()();
  if (v39 == 5 || v107 != v108 >> 1)
  {
    v45 = type metadata accessor for DecodingError();
    swift_allocError();
    v47 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v47 = v97;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v45 - 8) + 104))(v47, *MEMORY[0x1E69E6AF8], v45);
    swift_willThrow();
    (*(v35 + 8))(v13, v36);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v103);
  }

  if (v39 > 1u)
  {
    v40 = v82;
    if (v39 != 2)
    {
      if (v39 == 3)
      {
        v109 = 3;
        lazy protocol witness table accessor for type Constraints.GrammarIdentifierCodingKeys and conformance Constraints.GrammarIdentifierCodingKeys();
        v41 = v95;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v42 = v40;
        v43 = v91;
        v44 = KeyedDecodingContainer.decode(_:forKey:)();
        v62 = v43;
        v63 = v44;
        v65 = v64;
        (*(v90 + 8))(v41, v62);
        (*(v35 + 8))(v13, v36);
        swift_unknownObjectRelease();
        v66 = v81;
        *v81 = v63;
        v66[1] = v65;
        swift_storeEnumTagMultiPayload();
        v67 = v66;
        v68 = v103;
        v69 = v96;
        v70 = v42;
      }

      else
      {
        v70 = v82;
        v109 = 4;
        lazy protocol witness table accessor for type Constraints.SchemaIdentifierCodingKeys and conformance Constraints.SchemaIdentifierCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v51 = v92;
        v71 = KeyedDecodingContainer.decode(_:forKey:)();
        v73 = v72;
        (*(v93 + 8))(v34, v51);
        (*(v35 + 8))(v13, v36);
        swift_unknownObjectRelease();
        v74 = v83;
        *v83 = v71;
        v74[1] = v73;
        swift_storeEnumTagMultiPayload();
        v67 = v74;
        v68 = v103;
        v69 = v96;
      }

      goto LABEL_16;
    }

    v109 = 2;
    lazy protocol witness table accessor for type Constraints.PartialGrammarCodingKeys and conformance Constraints.PartialGrammarCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v50 = v85;
    v58 = KeyedDecodingContainer.decode(_:forKey:)();
    v60 = v59;
    (*(v89 + 8))(v32, v50);
    (*(v35 + 8))(v13, v36);
    swift_unknownObjectRelease();
    v61 = v80;
    *v80 = v58;
    v61[1] = v60;
    swift_storeEnumTagMultiPayload();
    v67 = v61;
    v68 = v103;
    v69 = v96;
    goto LABEL_15;
  }

  v69 = v96;
  if (v39)
  {
    v109 = 1;
    lazy protocol witness table accessor for type Constraints.GrammarCodingKeys and conformance Constraints.GrammarCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v55 = v88;
    v56 = KeyedDecodingContainer.decode(_:forKey:)();
    v104 = v57;
    v75 = v56;
    (*(v87 + 8))(v33, v55);
    (*(v35 + 8))(v13, v36);
    swift_unknownObjectRelease();
    v76 = v79;
    v77 = v104;
    *v79 = v75;
    v76[1] = v77;
    swift_storeEnumTagMultiPayload();
    v67 = v76;
    v68 = v103;
LABEL_15:
    v70 = v82;
    goto LABEL_16;
  }

  v109 = 0;
  lazy protocol witness table accessor for type Constraints.SchemaCodingKeys and conformance Constraints.SchemaCodingKeys();
  v49 = v94;
  KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  type metadata accessor for GenerationSchema();
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type GenerationSchema and conformance GenerationSchema, MEMORY[0x1E69A0B98], MEMORY[0x1E69A0BB0]);
  v52 = v104;
  v53 = v49;
  v54 = v86;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v84 + 8))(v53, v54);
  (*(v35 + 8))(v13, v36);
  swift_unknownObjectRelease();
  swift_storeEnumTagMultiPayload();
  v68 = v103;
  v70 = v82;
  v67 = v52;
LABEL_16:
  outlined init with take of DocumentRegistrationEnvelope(v67, v70, type metadata accessor for Constraints);
  outlined init with take of DocumentRegistrationEnvelope(v70, v69, type metadata accessor for Constraints);
  return __swift_destroy_boxed_opaque_existential_0(v68);
}

uint64_t RequestMetadata.invocationIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t RequestMetadata.invocationIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t RequestMetadata.functionIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t RequestMetadata.functionIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return result;
}

uint64_t RequestMetadata.clientRequestIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t RequestMetadata.clientRequestIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t RequestMetadata.userInfo.setter(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

void RequestMetadata.hash(into:)(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  String.hash(into:)();
  String.hash(into:)();
  if (v3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  specialized Dictionary<>.hash(into:)(a1, v4);
}

Swift::Int RequestMetadata.hashValue.getter()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  if (v1)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  specialized Dictionary<>.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance RequestMetadata(uint64_t a1)
{
  v3 = *(v1 + 40);
  v4 = *(v1 + 48);
  String.hash(into:)();
  String.hash(into:)();
  if (v3)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  specialized Dictionary<>.hash(into:)(a1, v4);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance RequestMetadata(uint64_t a1)
{
  v2 = *(v1 + 40);
  v3 = *(v1 + 48);
  Hasher.init(_seed:)();
  String.hash(into:)();
  String.hash(into:)();
  if (v2)
  {
    Hasher._combine(_:)(1u);
    String.hash(into:)();
  }

  else
  {
    Hasher._combine(_:)(0);
  }

  specialized Dictionary<>.hash(into:)(v5, v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptCompletionEnvelope.CandidateEnvelope.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized PromptCompletionEnvelope.CandidateEnvelope.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionEnvelope.CandidateEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionEnvelope.CandidateEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CandidateEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionEnvelope.CandidateEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionEnvelope.CandidateEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CandidateEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PromptCompletionEnvelope.SegmentEnvelope.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration24PromptCompletionEnvelopeV07SegmentH033_FCE651B3B8F212418F5C81F0A4785E63LLO14FileCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration24PromptCompletionEnvelopeV07SegmentH033_FCE651B3B8F212418F5C81F0A4785E63LLO14FileCodingKeysOGMR);
  v49 = *(v2 - 8);
  v50 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v48 = &v39 - v3;
  v46 = type metadata accessor for FileContentEnvelope(0);
  MEMORY[0x1EEE9AC00](v46);
  v47 = &v39 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration24PromptCompletionEnvelopeV07SegmentH033_FCE651B3B8F212418F5C81F0A4785E63LLO15AudioCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration24PromptCompletionEnvelopeV07SegmentH033_FCE651B3B8F212418F5C81F0A4785E63LLO15AudioCodingKeysOGMR);
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v43 = &v39 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration24PromptCompletionEnvelopeV07SegmentH033_FCE651B3B8F212418F5C81F0A4785E63LLO15ImageCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration24PromptCompletionEnvelopeV07SegmentH033_FCE651B3B8F212418F5C81F0A4785E63LLO15ImageCodingKeysOGMR);
  v41 = *(v7 - 8);
  v42 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v39 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration24PromptCompletionEnvelopeV07SegmentH033_FCE651B3B8F212418F5C81F0A4785E63LLO14TextCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration24PromptCompletionEnvelopeV07SegmentH033_FCE651B3B8F212418F5C81F0A4785E63LLO14TextCodingKeysOGMR);
  v40 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v39 - v11;
  v13 = type metadata accessor for PromptCompletionEnvelope.SegmentEnvelope(0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = (&v39 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration24PromptCompletionEnvelopeV07SegmentH033_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration24PromptCompletionEnvelopeV07SegmentH033_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMR);
  v52 = *(v16 - 8);
  v53 = v16;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v39 - v17;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptCompletionEnvelope.SegmentEnvelope.CodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of DocumentResourceEnvelope(v51, v15, type metadata accessor for PromptCompletionEnvelope.SegmentEnvelope);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload == 2)
    {
      v26 = *v15;
      v27 = v15[1];
      LOBYTE(v54) = 2;
      lazy protocol witness table accessor for type PromptCompletionEnvelope.SegmentEnvelope.AudioCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.AudioCodingKeys();
      v28 = v43;
      v29 = v53;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v54 = v26;
      v55 = v27;
      lazy protocol witness table accessor for type AudioContentEnvelope and conformance AudioContentEnvelope();
      v30 = v45;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v44 + 8))(v28, v30);
      (*(v52 + 8))(v18, v29);
      return outlined consume of Data._Representation(v26, v27);
    }

    else
    {
      v35 = v47;
      outlined init with take of DocumentRegistrationEnvelope(v15, v47, type metadata accessor for FileContentEnvelope);
      LOBYTE(v54) = 3;
      lazy protocol witness table accessor for type PromptCompletionEnvelope.SegmentEnvelope.FileCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.FileCodingKeys();
      v36 = v48;
      v37 = v53;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type FileContentEnvelope and conformance FileContentEnvelope, type metadata accessor for FileContentEnvelope, &protocol conformance descriptor for FileContentEnvelope);
      v38 = v50;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v49 + 8))(v36, v38);
      outlined destroy of DocumentResourceEnvelope(v35, type metadata accessor for FileContentEnvelope);
      return (*(v52 + 8))(v18, v37);
    }
  }

  else if (EnumCaseMultiPayload)
  {
    v31 = *v15;
    v32 = v15[1];
    LOBYTE(v54) = 1;
    lazy protocol witness table accessor for type PromptCompletionEnvelope.SegmentEnvelope.ImageCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.ImageCodingKeys();
    v33 = v53;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v54 = v31;
    v55 = v32;
    lazy protocol witness table accessor for type ImageContentEnvelope and conformance ImageContentEnvelope();
    v34 = v42;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v41 + 8))(v9, v34);
    (*(v52 + 8))(v18, v33);
    return outlined consume of Data._Representation(v31, v32);
  }

  else
  {
    v20 = v15[1];
    v51 = *v15;
    v22 = v15[2];
    v21 = v15[3];
    v23 = v15[4];
    LOBYTE(v54) = 0;
    lazy protocol witness table accessor for type PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys();
    v24 = v53;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v54 = v51;
    v55 = v20;
    v56 = v22;
    v57 = v21;
    v58 = v23;
    lazy protocol witness table accessor for type TextContentEnvelope and conformance TextContentEnvelope();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v40 + 8))(v12, v10);
    (*(v52 + 8))(v18, v24);

    return outlined consume of Data?(v21, v23);
  }
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionEnvelope.SegmentEnvelope.AudioCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionEnvelope.SegmentEnvelope.AudioCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.AudioCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionEnvelope.SegmentEnvelope.AudioCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionEnvelope.SegmentEnvelope.AudioCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.AudioCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionEnvelope.SegmentEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionEnvelope.SegmentEnvelope.CodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionEnvelope.SegmentEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionEnvelope.SegmentEnvelope.CodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionEnvelope.SegmentEnvelope.FileCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionEnvelope.SegmentEnvelope.FileCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.FileCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionEnvelope.SegmentEnvelope.FileCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionEnvelope.SegmentEnvelope.FileCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.FileCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionEnvelope.SegmentEnvelope.ImageCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionEnvelope.SegmentEnvelope.ImageCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.ImageCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionEnvelope.SegmentEnvelope.ImageCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionEnvelope.SegmentEnvelope.ImageCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.ImageCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys and conformance PromptCompletionEnvelope.SegmentEnvelope.TextCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptCompletionEnvelope.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized PromptCompletionEnvelope.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PromptCompletionEnvelope.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration24PromptCompletionEnvelopeV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration24PromptCompletionEnvelopeV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v28 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - v4;
  v7 = *v1;
  v6 = v1[1];
  v8 = v1[2];
  v25 = v1[3];
  v26 = v6;
  v9 = v1[4];
  v23 = v1[5];
  v24 = v9;
  v10 = v1[6];
  v21 = *(v1 + 7);
  v22 = v10;
  v11 = *(v1 + 15);
  v12 = *(v1 + 19);
  v42 = *(v1 + 17);
  v43 = v12;
  v44 = v1[21];
  v13 = *(v1 + 11);
  v38 = *(v1 + 9);
  v39 = v13;
  v40 = *(v1 + 13);
  v41 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptCompletionEnvelope.CodingKeys and conformance PromptCompletionEnvelope.CodingKeys();

  dispatch thunk of Encoder.container<A>(keyedBy:)();
  *&v31 = v7;
  *(&v31 + 1) = v26;
  v14 = v5;
  *&v32 = v8;
  LOBYTE(v29[0]) = 0;
  lazy protocol witness table accessor for type ModelInformationEnvelope and conformance ModelInformationEnvelope();
  v15 = v27;
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (v15)
  {

    return (*(v28 + 8))(v5, v3);
  }

  else
  {
    v17 = v23;
    v18 = v24;
    v19 = v28;

    *&v31 = v25;
    LOBYTE(v29[0]) = 1;
    lazy protocol witness table accessor for type ModerationEnvelope and conformance ModerationEnvelope();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    *&v31 = v18;
    *(&v31 + 1) = v17;
    LOBYTE(v29[0]) = 2;
    lazy protocol witness table accessor for type UsageEnvelope and conformance UsageEnvelope();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v31 = v22;
    LOBYTE(v29[0]) = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15TokenGeneration24PromptCompletionEnvelopeV09CandidateE033_FCE651B3B8F212418F5C81F0A4785E63LLVGMd, &_sSay15TokenGeneration24PromptCompletionEnvelopeV09CandidateE033_FCE651B3B8F212418F5C81F0A4785E63LLVGMR);
    lazy protocol witness table accessor for type [PromptCompletionEnvelope.CandidateEnvelope] and conformance <A> [A]();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v31 = v21;
    LOBYTE(v29[0]) = 4;
    outlined copy of Data._Representation(v21, *(&v21 + 1));
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v31, *(&v31 + 1));
    v35 = v42;
    v36 = v43;
    v37 = v44;
    v31 = v38;
    v32 = v39;
    v33 = v40;
    v34 = v41;
    v45 = 5;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(&v38, v29, &_s15TokenGeneration23PromptRenderingEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVSgMd, &_s15TokenGeneration23PromptRenderingEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVSgMR);
    lazy protocol witness table accessor for type PromptRenderingEnvelope and conformance PromptRenderingEnvelope();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v29[4] = v35;
    v29[5] = v36;
    v30 = v37;
    v29[0] = v31;
    v29[1] = v32;
    v29[2] = v33;
    v29[3] = v34;
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v29, &_s15TokenGeneration23PromptRenderingEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVSgMd, &_s15TokenGeneration23PromptRenderingEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVSgMR);
    return (*(v19 + 8))(v14, v3);
  }
}

uint64_t TextContentEnvelope.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration19TextContentEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration19TextContentEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type TextContentEnvelope.CodingKeys and conformance TextContentEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    *&v12 = *(v3 + 16);
    v11[0] = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMd, &_sSay15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMR);
    lazy protocol witness table accessor for type [AnnotationEnvelope] and conformance <A> [A]();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = *(v3 + 24);
    v13 = v12;
    v11[23] = 2;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(&v13, v11, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v12, *(&v12 + 1));
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance TextContentEnvelope.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized TextContentEnvelope.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance TextContentEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TextContentEnvelope.CodingKeys and conformance TextContentEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance TextContentEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type TextContentEnvelope.CodingKeys and conformance TextContentEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AnnotationEnvelope.CitationTypeEnvelope.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV012CitationTypeG0O08DocumentQ10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV012CitationTypeG0O08DocumentQ10CodingKeysOGMR);
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v30 = &v24 - v3;
  v28 = type metadata accessor for AnnotationEnvelope.DocumentCitationEnvelope(0);
  MEMORY[0x1EEE9AC00](v28);
  v29 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV012CitationTypeG0O03UrlQ10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV012CitationTypeG0O03UrlQ10CodingKeysOGMR);
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  v25 = type metadata accessor for AnnotationEnvelope.URLCitationEnvelope(0);
  MEMORY[0x1EEE9AC00](v25);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for AnnotationEnvelope.CitationTypeEnvelope(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV012CitationTypeG0O10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV012CitationTypeG0O10CodingKeysOGMR);
  v13 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v15 = &v24 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AnnotationEnvelope.CitationTypeEnvelope.CodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of DocumentResourceEnvelope(v33, v12, type metadata accessor for AnnotationEnvelope.CitationTypeEnvelope);
  v16 = (v13 + 8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = v29;
    outlined init with take of DocumentRegistrationEnvelope(v12, v29, type metadata accessor for AnnotationEnvelope.DocumentCitationEnvelope);
    v36 = 1;
    lazy protocol witness table accessor for type AnnotationEnvelope.CitationTypeEnvelope.DocumentCitationCodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.DocumentCitationCodingKeys();
    v18 = v30;
    v19 = v34;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type AnnotationEnvelope.DocumentCitationEnvelope and conformance AnnotationEnvelope.DocumentCitationEnvelope, type metadata accessor for AnnotationEnvelope.DocumentCitationEnvelope, &protocol conformance descriptor for AnnotationEnvelope.DocumentCitationEnvelope);
    v20 = v32;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v31 + 8))(v18, v20);
    outlined destroy of DocumentResourceEnvelope(v17, type metadata accessor for AnnotationEnvelope.DocumentCitationEnvelope);
    return (*v16)(v15, v19);
  }

  else
  {
    outlined init with take of DocumentRegistrationEnvelope(v12, v9, type metadata accessor for AnnotationEnvelope.URLCitationEnvelope);
    v35 = 0;
    lazy protocol witness table accessor for type AnnotationEnvelope.CitationTypeEnvelope.UrlCitationCodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.UrlCitationCodingKeys();
    v22 = v34;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type AnnotationEnvelope.URLCitationEnvelope and conformance AnnotationEnvelope.URLCitationEnvelope, type metadata accessor for AnnotationEnvelope.URLCitationEnvelope, &protocol conformance descriptor for AnnotationEnvelope.URLCitationEnvelope);
    v23 = v27;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v26 + 8))(v7, v23);
    outlined destroy of DocumentResourceEnvelope(v9, type metadata accessor for AnnotationEnvelope.URLCitationEnvelope);
    return (*v16)(v15, v22);
  }
}

uint64_t AnnotationEnvelope.CitationTypeEnvelope.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV012CitationTypeG0O08DocumentQ10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV012CitationTypeG0O08DocumentQ10CodingKeysOGMR);
  v47 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v50 = &v39 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV012CitationTypeG0O03UrlQ10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV012CitationTypeG0O03UrlQ10CodingKeysOGMR);
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV012CitationTypeG0O10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV012CitationTypeG0O10CodingKeysOGMR);
  v48 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v39 - v7;
  v9 = type metadata accessor for AnnotationEnvelope.CitationTypeEnvelope(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v39 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v39 - v16;
  v18 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  lazy protocol witness table accessor for type AnnotationEnvelope.CitationTypeEnvelope.CodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.CodingKeys();
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
    lazy protocol witness table accessor for type AnnotationEnvelope.CitationTypeEnvelope.UrlCitationCodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.UrlCitationCodingKeys();
    v36 = v42;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    if (!v36)
    {
      type metadata accessor for AnnotationEnvelope.URLCitationEnvelope(0);
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type AnnotationEnvelope.URLCitationEnvelope and conformance AnnotationEnvelope.URLCitationEnvelope, type metadata accessor for AnnotationEnvelope.URLCitationEnvelope, &protocol conformance descriptor for AnnotationEnvelope.URLCitationEnvelope);
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
  lazy protocol witness table accessor for type AnnotationEnvelope.CitationTypeEnvelope.DocumentCitationCodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.DocumentCitationCodingKeys();
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

  type metadata accessor for AnnotationEnvelope.DocumentCitationEnvelope(0);
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type AnnotationEnvelope.DocumentCitationEnvelope and conformance AnnotationEnvelope.DocumentCitationEnvelope, type metadata accessor for AnnotationEnvelope.DocumentCitationEnvelope, &protocol conformance descriptor for AnnotationEnvelope.DocumentCitationEnvelope);
  v30 = v40;
  v31 = v44;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v47 + 8))(v28, v31);
  (*(v22 + 8))(v27, v26);
  swift_unknownObjectRelease();
LABEL_12:
  swift_storeEnumTagMultiPayload();
  v38 = v39;
  outlined init with take of DocumentRegistrationEnvelope(v30, v39, type metadata accessor for AnnotationEnvelope.CitationTypeEnvelope);
  outlined init with take of DocumentRegistrationEnvelope(v38, v43, type metadata accessor for AnnotationEnvelope.CitationTypeEnvelope);
  return __swift_destroy_boxed_opaque_existential_0(v52);
}

uint64_t AnnotationEnvelope.URLCitationEnvelope.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011URLCitationG0V10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011URLCitationG0V10CodingKeysOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AnnotationEnvelope.URLCitationEnvelope.CodingKeys and conformance AnnotationEnvelope.URLCitationEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for AnnotationEnvelope.URLCitationEnvelope(0);
    v8[14] = 1;
    type metadata accessor for URL();
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t AnnotationEnvelope.URLCitationEnvelope.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v20 = type metadata accessor for URL();
  v17 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011URLCitationG0V10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011URLCitationG0V10CodingKeysOGMR);
  v19 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v7 = v15 - v6;
  v8 = type metadata accessor for AnnotationEnvelope.URLCitationEnvelope(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AnnotationEnvelope.URLCitationEnvelope.CodingKeys and conformance AnnotationEnvelope.URLCitationEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v16 = v8;
  v12 = v19;
  v11 = v20;
  v23 = 0;
  *v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v10[1] = v13;
  v15[1] = v13;
  v22 = 1;
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v12 + 8))(v7, v21);
  (*(v17 + 32))(v10 + *(v16 + 20), v5, v11);
  outlined init with copy of DocumentResourceEnvelope(v10, v18, type metadata accessor for AnnotationEnvelope.URLCitationEnvelope);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return outlined destroy of DocumentResourceEnvelope(v10, type metadata accessor for AnnotationEnvelope.URLCitationEnvelope);
}

uint64_t AnnotationEnvelope.DocumentCitationEnvelope.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = type metadata accessor for DocumentResourceIdentifier();
  v16 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV016DocumentCitationG0V10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV016DocumentCitationG0V10CodingKeysOGMR);
  v17 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for AnnotationEnvelope.DocumentCitationEnvelope(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AnnotationEnvelope.DocumentCitationEnvelope.CodingKeys and conformance AnnotationEnvelope.DocumentCitationEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type DocumentResourceIdentifier and conformance DocumentResourceIdentifier, MEMORY[0x1E69C6178], MEMORY[0x1E69C6198]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    outlined init with take of DocumentRegistrationEnvelope(v11, v13, type metadata accessor for AnnotationEnvelope.DocumentCitationEnvelope);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t AnnotationEnvelope.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AnnotationEnvelope.CodingKeys and conformance AnnotationEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for AnnotationEnvelope(0);
    v8[14] = 1;
    type metadata accessor for AnnotationEnvelope.CitationTypeEnvelope(0);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type AnnotationEnvelope.CitationTypeEnvelope and conformance AnnotationEnvelope.CitationTypeEnvelope, type metadata accessor for AnnotationEnvelope.CitationTypeEnvelope, &protocol conformance descriptor for AnnotationEnvelope.CitationTypeEnvelope);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t AnnotationEnvelope.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v20 = type metadata accessor for AnnotationEnvelope.CitationTypeEnvelope(0);
  MEMORY[0x1EEE9AC00](v20);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v19 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v7 = &v16 - v6;
  v8 = type metadata accessor for AnnotationEnvelope(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (&v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AnnotationEnvelope.CodingKeys and conformance AnnotationEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v17 = v8;
    v11 = v19;
    v23 = 0;
    v12 = v21;
    v13 = KeyedDecodingContainer.decode(_:forKey:)();
    v16 = v10;
    *v10 = v13;
    v22 = 1;
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type AnnotationEnvelope.CitationTypeEnvelope and conformance AnnotationEnvelope.CitationTypeEnvelope, type metadata accessor for AnnotationEnvelope.CitationTypeEnvelope, &protocol conformance descriptor for AnnotationEnvelope.CitationTypeEnvelope);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v11 + 8))(v7, v12);
    v14 = v16;
    outlined init with take of DocumentRegistrationEnvelope(v5, v16 + *(v17 + 20), type metadata accessor for AnnotationEnvelope.CitationTypeEnvelope);
    outlined init with take of DocumentRegistrationEnvelope(v14, v18, type metadata accessor for AnnotationEnvelope);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t ImageContentEnvelope.encode(to:)(void *a1, uint64_t a2, unint64_t a3, uint64_t *a4, uint64_t *a5, void (*a6)(void), uint64_t a7)
{
  v16 = a6;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v15 - v12;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v17 = a2;
  v18 = a3;
  outlined copy of Data._Representation(a2, a3);
  lazy protocol witness table accessor for type Data and conformance Data();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  outlined consume of Data._Representation(v17, v18);
  return (*(v11 + 8))(v13, v10);
}

uint64_t FileContentEnvelope.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration19FileContentEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration19FileContentEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type FileContentEnvelope.CodingKeys and conformance FileContentEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for URL();
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for FileContentEnvelope(0);
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t FileContentEnvelope.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v4 = type metadata accessor for URL();
  v22 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v24 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration19FileContentEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration19FileContentEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v23 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v7 = &v20 - v6;
  v8 = type metadata accessor for FileContentEnvelope(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type FileContentEnvelope.CodingKeys and conformance FileContentEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v11 = v22;
  v29 = 0;
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v11 + 32))(v10, v24, v4);
  v28 = 1;
  v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v13 = &v10[v8[5]];
  *v13 = v12;
  v13[1] = v14;
  v27 = 2;
  v15 = KeyedDecodingContainer.decode(_:forKey:)();
  v16 = &v10[v8[6]];
  *v16 = v15;
  v16[1] = v17;
  v26 = 3;
  v18 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v23 + 8))(v7, v25);
  *&v10[v8[7]] = v18;
  outlined init with copy of DocumentResourceEnvelope(v10, v21, type metadata accessor for FileContentEnvelope);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return outlined destroy of DocumentResourceEnvelope(v10, type metadata accessor for FileContentEnvelope);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance AnnotationEnvelope.CitationTypeEnvelope.CodingKeys()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0x74617469436C7275;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AnnotationEnvelope.CitationTypeEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74617469436C7275 && a2 == 0xEB000000006E6F69;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001ABA41CE0 == a2)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnnotationEnvelope.CitationTypeEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnnotationEnvelope.CitationTypeEnvelope.CodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnnotationEnvelope.CitationTypeEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnnotationEnvelope.CitationTypeEnvelope.CodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnnotationEnvelope.CitationTypeEnvelope.DocumentCitationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnnotationEnvelope.CitationTypeEnvelope.DocumentCitationCodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.DocumentCitationCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnnotationEnvelope.CitationTypeEnvelope.DocumentCitationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnnotationEnvelope.CitationTypeEnvelope.DocumentCitationCodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.DocumentCitationCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnnotationEnvelope.CitationTypeEnvelope.UrlCitationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnnotationEnvelope.CitationTypeEnvelope.UrlCitationCodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.UrlCitationCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnnotationEnvelope.CitationTypeEnvelope.UrlCitationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnnotationEnvelope.CitationTypeEnvelope.UrlCitationCodingKeys and conformance AnnotationEnvelope.CitationTypeEnvelope.UrlCitationCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance AnnotationEnvelope.URLCitationEnvelope.CodingKeys()
{
  if (*v0)
  {
    return 7107189;
  }

  else
  {
    return 0x656C746974;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AnnotationEnvelope.URLCitationEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656C746974 && a2 == 0xE500000000000000;
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnnotationEnvelope.URLCitationEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnnotationEnvelope.URLCitationEnvelope.CodingKeys and conformance AnnotationEnvelope.URLCitationEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnnotationEnvelope.URLCitationEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnnotationEnvelope.URLCitationEnvelope.CodingKeys and conformance AnnotationEnvelope.URLCitationEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AnnotationEnvelope.DocumentCitationEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001ABA41D00 == a2)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnnotationEnvelope.DocumentCitationEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnnotationEnvelope.DocumentCitationEnvelope.CodingKeys and conformance AnnotationEnvelope.DocumentCitationEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnnotationEnvelope.DocumentCitationEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnnotationEnvelope.DocumentCitationEnvelope.CodingKeys and conformance AnnotationEnvelope.DocumentCitationEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance AnnotationEnvelope.DocumentCitationEnvelope(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV016DocumentCitationG0V10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration18AnnotationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV016DocumentCitationG0V10CodingKeysOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type AnnotationEnvelope.DocumentCitationEnvelope.CodingKeys and conformance AnnotationEnvelope.DocumentCitationEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for DocumentResourceIdentifier();
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type DocumentResourceIdentifier and conformance DocumentResourceIdentifier, MEMORY[0x1E69C6178], MEMORY[0x1E69C6180]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance AnnotationEnvelope.CodingKeys()
{
  if (*v0)
  {
    return 1701869940;
  }

  else
  {
    return 0x7865646E69;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance AnnotationEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7865646E69 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1701869940 && a2 == 0xE400000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AnnotationEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnnotationEnvelope.CodingKeys and conformance AnnotationEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AnnotationEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AnnotationEnvelope.CodingKeys and conformance AnnotationEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ImageContentEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageContentEnvelope.CodingKeys and conformance ImageContentEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ImageContentEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageContentEnvelope.CodingKeys and conformance ImageContentEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ImageContentEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1635017060 && a2 == 0xE400000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance AudioContentEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AudioContentEnvelope.CodingKeys and conformance AudioContentEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance AudioContentEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type AudioContentEnvelope.CodingKeys and conformance AudioContentEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *protocol witness for Decodable.init(from:) in conformance ImageContentEnvelope@<X0>(void *a1@<X0>, uint64_t *a2@<X3>, uint64_t *a3@<X4>, uint64_t (*a4)(void)@<X5>, uint64_t a5@<X6>, uint64_t *a6@<X8>)
{
  result = specialized ImageContentEnvelope.init(from:)(a1, a2, a3, a4, a5);
  if (!v6)
  {
    *a6 = result;
    a6[1] = v9;
  }

  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance FileContentEnvelope.CodingKeys()
{
  v1 = 7107189;
  v2 = 0x65707954656D696DLL;
  if (*v0 != 2)
  {
    v2 = 1702521203;
  }

  if (*v0)
  {
    v1 = 1701667182;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance FileContentEnvelope.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized FileContentEnvelope.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FileContentEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FileContentEnvelope.CodingKeys and conformance FileContentEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FileContentEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FileContentEnvelope.CodingKeys and conformance FileContentEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ModelInformationEnvelope.AssetEnvelope.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration24ModelInformationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV05AssetH0V10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration24ModelInformationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV05AssetH0V10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ModelInformationEnvelope.AssetEnvelope.CodingKeys and conformance ModelInformationEnvelope.AssetEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v12 = *(v3 + 32);
    v13 = v12;
    v11[23] = 2;
    outlined init with copy of Data(&v13, v11);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v12, *(&v12 + 1));
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t ModelInformationEnvelope.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration24ModelInformationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration24ModelInformationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ModelInformationEnvelope.CodingKeys and conformance ModelInformationEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v15 = a2;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15TokenGeneration24ModelInformationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV05AssetE0VGMd, &_sSay15TokenGeneration24ModelInformationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV05AssetE0VGMR);
  lazy protocol witness table accessor for type [ModelInformationEnvelope.AssetEnvelope] and conformance <A> [A]();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v13 = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ModelInformationEnvelope.AssetEnvelope.CodingKeys()
{
  v1 = 0x6E6F6973726576;
  if (*v0 != 1)
  {
    v1 = 0x617461646174656DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x696669746E656469;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ModelInformationEnvelope.AssetEnvelope.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized ModelInformationEnvelope.AssetEnvelope.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ModelInformationEnvelope.AssetEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModelInformationEnvelope.AssetEnvelope.CodingKeys and conformance ModelInformationEnvelope.AssetEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModelInformationEnvelope.AssetEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModelInformationEnvelope.AssetEnvelope.CodingKeys and conformance ModelInformationEnvelope.AssetEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double protocol witness for Decodable.init(from:) in conformance ModelInformationEnvelope.AssetEnvelope@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  specialized ModelInformationEnvelope.AssetEnvelope.init(from:)(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ModelInformationEnvelope.CodingKeys()
{
  if (*v0)
  {
    return 0x65566D6574737973;
  }

  else
  {
    return 0x737465737361;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ModelInformationEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x737465737361 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65566D6574737973 && a2 == 0xED00006E6F697372)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ModelInformationEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModelInformationEnvelope.CodingKeys and conformance ModelInformationEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModelInformationEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModelInformationEnvelope.CodingKeys and conformance ModelInformationEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance ModelInformationEnvelope@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = specialized ModelInformationEnvelope.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

uint64_t PromptCompletionStreamElementEnvelope.Envelope.init(sealing:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v125 = type metadata accessor for PromptCompletion.FileContent(0);
  MEMORY[0x1EEE9AC00](v125);
  v126 = &v122 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v128 = type metadata accessor for PromptCompletionEventCandidateFileGeneration(0);
  MEMORY[0x1EEE9AC00](v128);
  v124 = (&v122 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v6);
  v127 = &v122 - v7;
  v8 = type metadata accessor for PromptCompletion.DocumentCitation(0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v131 = &v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v129 = type metadata accessor for PromptCompletion.URLCitation(0);
  MEMORY[0x1EEE9AC00](v129);
  v130 = &v122 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v135 = type metadata accessor for PromptCompletion.Annotation.Type(0);
  MEMORY[0x1EEE9AC00](v135);
  v136 = &v122 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = type metadata accessor for PromptCompletion.Annotation(0);
  MEMORY[0x1EEE9AC00](v134);
  v133 = (&v122 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  v138 = type metadata accessor for PromptCompletionEventCandidateAnnotation(0);
  MEMORY[0x1EEE9AC00](v138);
  v132 = (&v122 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v14);
  v137 = &v122 - v15;
  v16 = type metadata accessor for Prompt.Rendering();
  v139 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v122 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for PromptCompletionEventRenderedPrompt(0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v122 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v122 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v122 - v26;
  outlined init with copy of PromptCompletionEvent(a1, v162);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s15TokenGeneration21PromptCompletionEvent_pMd, &_s15TokenGeneration21PromptCompletionEvent_pMR);
  if (swift_dynamicCast())
  {
    v28 = v140;
    v154 = v141;
    *&v155 = v142;

    v29 = specialized ModelInformationEnvelope.init(sealing:)(&v154);
    v31 = v30;
    v33 = v32;

    __swift_destroy_boxed_opaque_existential_0(a1);
    *a2 = v28;
    *(a2 + 16) = v29;
    *(a2 + 24) = v31;
    *(a2 + 32) = v33;
    type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope(0);
LABEL_20:
    swift_storeEnumTagMultiPayload();
    return __swift_destroy_boxed_opaque_existential_0(v162);
  }

  v123 = a1;
  if (swift_dynamicCast())
  {
    outlined init with take of DocumentRegistrationEnvelope(v27, v24, type metadata accessor for PromptCompletionEventRenderedPrompt);
    outlined init with copy of DocumentResourceEnvelope(v24, v21, type metadata accessor for PromptCompletionEventRenderedPrompt);
    v35 = *v21;
    v34 = *(v21 + 1);
    (*(v139 + 16))(v18, &v21[*(v19 + 20)], v16);

    specialized PromptRenderingEnvelope.init(sealing:)(v18, &v140);
    __swift_destroy_boxed_opaque_existential_0(v123);
    outlined destroy of DocumentResourceEnvelope(v21, type metadata accessor for PromptCompletionEventRenderedPrompt);
    outlined destroy of DocumentResourceEnvelope(v24, type metadata accessor for PromptCompletionEventRenderedPrompt);
    *a2 = v35;
    *(a2 + 8) = v34;
    v36 = v145;
    *(a2 + 80) = v144;
    *(a2 + 96) = v36;
    *(a2 + 112) = v146;
    v37 = v141;
    *(a2 + 16) = v140;
    *(a2 + 32) = v37;
    v38 = v143;
    *(a2 + 48) = v142;
    *(a2 + 64) = v38;
    type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope(0);
    goto LABEL_20;
  }

  if (swift_dynamicCast())
  {
    v39 = v140;
    v40 = v141;

    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDy15TokenGeneration16PromptCompletionV10ModerationV8CategoryVAJ11ProbabilityOG_SS_AF0H8Envelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0jK0Ots5NeverOTg504_s15d12Generation16fg3V10h2V8i5VAE11j19OSSAA0E8Envelope33_lmnopqrst39LLV0gH0OIgnnod_AG3key_AI5valuetSS_ANts5U131OIegnrzr_TR04_s15a12Generation18e11Envelope33_ijklmnopq16LLV7sealingAdA16cd18V0C0V_tcfcSS_AD011g7D0OtAI8F14V_AI0Q0OtXEfU_Tf3nnnpf_nTf1cn_n(v40);
    if (*(v41 + 16))
    {
      v42 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityF0OGMd, &_ss18_DictionaryStorageCySS15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityF0OGMR);
      v43 = static _DictionaryStorage.allocate(capacity:)();
      v41 = v42;
    }

    else
    {
      v43 = MEMORY[0x1E69E7CC8];
    }

    *&v154 = v43;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v41, 1, &v154);
    v57 = v123;

    __swift_destroy_boxed_opaque_existential_0(v57);
    v58 = v154;
    *a2 = v39;
    *(a2 + 16) = v58;
    type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope(0);
    goto LABEL_20;
  }

  if (swift_dynamicCast())
  {
    v44 = v140;
    v45 = v141;
    v46 = v142;

    _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDy15TokenGeneration16PromptCompletionV10ModerationV8CategoryVAJ11ProbabilityOG_SS_AF0H8Envelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0jK0Ots5NeverOTg504_s15d12Generation16fg3V10h2V8i5VAE11j19OSSAA0E8Envelope33_lmnopqrst39LLV0gH0OIgnnod_AG3key_AI5valuetSS_ANts5U131OIegnrzr_TR04_s15a12Generation18e11Envelope33_ijklmnopq16LLV7sealingAdA16cd18V0C0V_tcfcSS_AD011g7D0OtAI8F14V_AI0Q0OtXEfU_Tf3nnnpf_nTf1cn_n(v46);
    if (*(v47 + 16))
    {
      v48 = v47;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCySS15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityF0OGMd, &_ss18_DictionaryStorageCySS15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityF0OGMR);
      v49 = static _DictionaryStorage.allocate(capacity:)();
      v47 = v48;
    }

    else
    {
      v49 = MEMORY[0x1E69E7CC8];
    }

    *&v154 = v49;
    specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v47, 1, &v154);

    __swift_destroy_boxed_opaque_existential_0(v123);
    v72 = v154;
    *a2 = v44;
    *(a2 + 16) = v45;
    *(a2 + 32) = v72;
    type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope(0);
    goto LABEL_20;
  }

  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v123);
    v50 = v140;
    v51 = v141;
    v139 = *(&v142 + 1);
    v52 = v142;
    v53 = v143;
    v54 = v144;

    outlined copy of Data?(*(&v53 + 1), v54);
    outlined consume of Data?(0, 0xF000000000000000);

    outlined consume of Data?(*(&v53 + 1), v54);
    v148 = v50;
    v149 = v51;
    *&v150 = v52;
    *(&v150 + 1) = v139;
    v151 = v53;
    *&v152 = v54;
    v154 = v50;
    v155 = v51;
    v156 = v52;
    v157 = v139;
    v158 = v53;
    v159 = v54;
    outlined init with copy of PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope(&v148, v147);
    outlined destroy of PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope(&v154);
    v55 = v151;
    *(a2 + 32) = v150;
    *(a2 + 48) = v55;
    *(a2 + 64) = v152;
    v56 = v149;
    *a2 = v148;
    *(a2 + 16) = v56;
    type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope(0);
    goto LABEL_20;
  }

  v59 = v137;
  v60 = v138;
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v123);
    v61 = v132;
    outlined init with take of DocumentRegistrationEnvelope(v59, v132, type metadata accessor for PromptCompletionEventCandidateAnnotation);
    v62 = v61[1];
    *a2 = *v61;
    *(a2 + 8) = v62;
    v63 = v61[3];
    *(a2 + 16) = v61[2];
    *(a2 + 24) = v63;
    *(a2 + 32) = v61[4];
    v64 = v61 + *(v60 + 28);
    v65 = v133;
    outlined init with copy of DocumentResourceEnvelope(v64, v133, type metadata accessor for PromptCompletion.Annotation);

    outlined destroy of DocumentResourceEnvelope(v61, type metadata accessor for PromptCompletionEventCandidateAnnotation);
    v66 = (a2 + *(type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope(0) + 28));
    *v66 = *v65;
    v67 = v65 + *(v134 + 20);
    v68 = v136;
    outlined init with take of DocumentRegistrationEnvelope(v67, v136, type metadata accessor for PromptCompletion.Annotation.Type);
    LODWORD(v63) = swift_getEnumCaseMultiPayload();
    v69 = v66 + *(type metadata accessor for AnnotationEnvelope(0) + 20);
    if (v63 == 1)
    {
      v70 = v131;
      outlined init with take of DocumentRegistrationEnvelope(v68, v131, type metadata accessor for PromptCompletion.DocumentCitation);
      v71 = type metadata accessor for DocumentResourceIdentifier();
      (*(*(v71 - 8) + 32))(v69, v70, v71);
    }

    else
    {
      v83 = v130;
      outlined init with take of DocumentRegistrationEnvelope(v68, v130, type metadata accessor for PromptCompletion.URLCitation);
      v84 = *(v83 + 1);
      *v69 = *v83;
      *(v69 + 1) = v84;
      v85 = *(v129 + 20);
      v86 = *(type metadata accessor for AnnotationEnvelope.URLCitationEnvelope(0) + 20);
      v87 = type metadata accessor for URL();
      (*(*(v87 - 8) + 32))(&v69[v86], &v83[v85], v87);
    }

    type metadata accessor for AnnotationEnvelope.CitationTypeEnvelope(0);
    swift_storeEnumTagMultiPayload();
    type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope(0);
    goto LABEL_20;
  }

  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v123);
    v74 = v140;
    v75 = *(&v141 + 1);
    v76 = *(&v142 + 1);
    v138 = v142;
    v139 = v141;
    v77 = *(&v143 + 1);
    v78 = *(&v144 + 1);
    v136 = v144;
    v137 = v143;
    v79 = v145;

    outlined copy of Data?(v79, *(&v79 + 1));
    outlined consume of Data?(0, 0xF000000000000000);

    outlined consume of Data?(v79, *(&v79 + 1));
    v148 = v74;
    *&v149 = v139;
    *(&v149 + 1) = v75;
    *&v150 = v138;
    *(&v150 + 1) = v76;
    *&v151 = v137;
    *(&v151 + 1) = v77;
    *&v152 = v136;
    *(&v152 + 1) = v78;
    v153 = v79;
    v154 = v74;
    *&v155 = v139;
    *(&v155 + 1) = v75;
    v156 = v138;
    v157 = v76;
    *&v158 = v137;
    *(&v158 + 1) = v77;
    v159 = v136;
    v160 = v78;
    v161 = v79;
    outlined init with copy of PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope(&v148, v147);
    outlined destroy of PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope(&v154);
    v80 = v151;
    *(a2 + 32) = v150;
    *(a2 + 48) = v80;
    v81 = v153;
    *(a2 + 64) = v152;
    *(a2 + 80) = v81;
    v82 = v149;
    *a2 = v148;
    *(a2 + 16) = v82;
    type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope(0);
    goto LABEL_20;
  }

  if (swift_dynamicCast() || swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v123);
    v88 = v140;
    v89 = v141;
    v90 = v142;
    v91 = v143;

    outlined copy of Data._Representation(*(&v90 + 1), v91);

    outlined consume of Data._Representation(*(&v90 + 1), v91);
    *a2 = v88;
    *(a2 + 16) = v89;
    *(a2 + 32) = v90;
    *(a2 + 48) = v91;
    type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope(0);
    goto LABEL_20;
  }

  v92 = v127;
  v93 = v128;
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v123);
    v94 = v124;
    outlined init with take of DocumentRegistrationEnvelope(v92, v124, type metadata accessor for PromptCompletionEventCandidateFileGeneration);
    v95 = v94[1];
    *a2 = *v94;
    *(a2 + 8) = v95;
    v96 = v94[3];
    *(a2 + 16) = v94[2];
    *(a2 + 24) = v96;
    *(a2 + 32) = v94[4];
    v97 = v126;
    outlined init with copy of DocumentResourceEnvelope(v94 + *(v93 + 28), v126, type metadata accessor for PromptCompletion.FileContent);

    outlined destroy of DocumentResourceEnvelope(v94, type metadata accessor for PromptCompletionEventCandidateFileGeneration);
    v98 = a2 + *(type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope(0) + 28);
    v99 = type metadata accessor for URL();
    (*(*(v99 - 8) + 16))(v98, v97, v99);
    v100 = v125;
    v101 = (v97 + *(v125 + 20));
    v103 = *v101;
    v102 = v101[1];
    v104 = type metadata accessor for FileContentEnvelope(0);
    v105 = (v98 + v104[5]);
    *v105 = v103;
    v105[1] = v102;
    v106 = (v97 + *(v100 + 24));
    v107 = *v106;
    v108 = v106[1];
    v109 = (v98 + v104[6]);
    *v109 = v107;
    v109[1] = v108;
    v110 = *(v97 + *(v100 + 28));

    outlined destroy of DocumentResourceEnvelope(v97, type metadata accessor for PromptCompletion.FileContent);
    *(v98 + v104[7]) = v110;
    type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope(0);
    goto LABEL_20;
  }

  if (swift_dynamicCast())
  {
    v111 = *(&v140 + 1);
    v139 = v140;
    v112 = v141;
    v113 = v142;
    v114 = v143;
    if (*(&v142 + 1) >= 3uLL)
    {
      v115 = v142;
    }

    else
    {
      v115 = 0;
    }

    outlined copy of FinishReason(v113, *(&v113 + 1));
    outlined copy of Data._Representation(v114, *(&v114 + 1));

    outlined consume of FinishReason(v113, *(&v113 + 1));
    outlined consume of Data._Representation(v114, *(&v114 + 1));
    __swift_destroy_boxed_opaque_existential_0(v123);
    *a2 = v139;
    *(a2 + 8) = v111;
    *(a2 + 16) = v112;
    *(a2 + 32) = v115;
    *(a2 + 40) = *(&v113 + 1);
    *(a2 + 48) = v114;
    type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope(0);
    goto LABEL_20;
  }

  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_0(v123);
    v116 = *(&v140 + 1);
    *a2 = v140;
    *(a2 + 8) = v116;
    *(a2 + 16) = v141;
    type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope(0);
    goto LABEL_20;
  }

  v117 = swift_dynamicCast();
  v118 = v123;
  if (v117)
  {
    __swift_destroy_boxed_opaque_existential_0(v123);
    v119 = v140;
    v120 = v141;

    outlined copy of Data._Representation(v120, *(&v120 + 1));

    outlined consume of Data._Representation(v120, *(&v120 + 1));
    *a2 = v119;
    *(a2 + 16) = v120;
    type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope(0);
    goto LABEL_20;
  }

  *&v140 = 0;
  *(&v140 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(49);

  *&v140 = 0xD00000000000002FLL;
  *(&v140 + 1) = 0x80000001ABA41A10;
  __swift_project_boxed_opaque_existential_1(v118, v118[3]);
  swift_getDynamicType();
  v121 = _typeName(_:qualified:)();
  MEMORY[0x1AC5A5BC0](v121);

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t PromptCompletionStreamElementEnvelope.Envelope.unseal()@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = (v99 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = v99 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Prompt.Rendering.Source();
  MEMORY[0x1EEE9AC00](v10 - 8);
  v11 = type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v99 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DocumentResourceEnvelope(v2, v13, type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v72 = *(v13 + 5);
      v107 = *(v13 + 4);
      v108 = v72;
      v109 = *(v13 + 6);
      v110 = *(v13 + 14);
      v73 = *(v13 + 1);
      *v104 = *v13;
      *&v104[16] = v73;
      v74 = *(v13 + 3);
      v105 = *(v13 + 2);
      v106 = v74;
      a1[3] = type metadata accessor for PromptCompletionEventRenderedPrompt(0);
      a1[4] = &protocol witness table for PromptCompletionEventRenderedPrompt;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      v102 = *&v104[8];
      *&v103 = *v104;
      v101 = *(&v106 + 1);
      v99[1] = v106;
      v100 = *(&v107 + 1);
      v99[2] = v107;
      v99[3] = v108;
      v99[4] = *(&v109 + 1);

      Prompt.Rendering.Source.init(identifier:version:)();

      Prompt.Rendering.init(source:segments:renderedString:originalPrompt:tokenIDs:userInfo:detokenizedString:)();
      result = outlined destroy of PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope(v104);
      v76 = v102;
      *boxed_opaque_existential_1 = v103;
      boxed_opaque_existential_1[1] = v76;
      break;
    case 2u:
      v58 = *v13;
      v57 = *(v13 + 1);
      v59 = *(v13 + 2);
      a1[3] = &type metadata for PromptCompletionEventPromptModeration;
      a1[4] = &protocol witness table for PromptCompletionEventPromptModeration;

      _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySS15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityG0OG_AF16PromptCompletionV0F0V8CategoryV_AP0Q0Ots5NeverOTg506_sSS15d12Generation18f11Envelope33_hijklmnop6LLV011q7D0OAA16rs6V0C0V8t38VAJ0N0OIggyrr_SS3key_AF5valuetAL_ANts5u35OIegnrzr_TR04_s15a12Generation18c11Y79_efghijklm14LLV6unsealAA16op10V0C0VyFAI8q6V_AI11N18OtSS_AD0rD0OtXEfU_Tf3nnnpf_nTf1cn_n(v59);
      if (*(v60 + 16))
      {
        v61 = v60;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15TokenGeneration16PromptCompletionV10ModerationV8CategoryVAG11ProbabilityOGMd, &_ss18_DictionaryStorageCy15TokenGeneration16PromptCompletionV10ModerationV8CategoryVAG11ProbabilityOGMR);
        v62 = static _DictionaryStorage.allocate(capacity:)();
        v60 = v61;
      }

      else
      {
        v62 = MEMORY[0x1E69E7CC8];
      }

      *v104 = v62;
      specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v60, 1, v104);

      v98 = *v104;
      *a1 = v58;
      a1[1] = v57;
      a1[2] = v98;
      break;
    case 3u:
      v63 = *(v13 + 1);
      *v104 = *v13;
      *&v104[16] = v63;
      *&v105 = *(v13 + 4);
      a1[3] = &type metadata for PromptCompletionEventCandidateModeration;
      a1[4] = &protocol witness table for PromptCompletionEventCandidateModeration;
      v64 = swift_allocObject();
      *a1 = v64;
      PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.unseal()(v64 + 16);
      v111 = *v104;
      outlined destroy of String(&v111);
      v112 = *&v104[16];
      outlined destroy of String(&v112);
      v113 = v105;
      result = outlined destroy of ModerationEnvelope(&v113);
      break;
    case 4u:
      v25 = *v13;
      v24 = *(v13 + 1);
      v27 = *(v13 + 2);
      v26 = *(v13 + 3);
      v28 = *(v13 + 4);
      *&v103 = *(v13 + 5);
      v30 = *(v13 + 6);
      v29 = *(v13 + 7);
      v31 = *(v13 + 8);
      a1[3] = &type metadata for PromptCompletionEventCandidateTextDelta;
      a1[4] = &protocol witness table for PromptCompletionEventCandidateTextDelta;
      v32 = swift_allocObject();
      *a1 = v32;
      *(v32 + 72) = xmmword_1ABA1D8C0;
      *(v32 + 16) = v25;
      *(v32 + 24) = v24;
      *(v32 + 32) = v27;
      *(v32 + 40) = v26;
      v33 = v103;
      *(v32 + 48) = v28;
      *(v32 + 56) = v33;
      *(v32 + 64) = v30;

      outlined copy of Data?(v29, v31);
      outlined consume of Data?(0, 0xF000000000000000);

      result = outlined consume of Data?(v29, v31);
      *(v32 + 72) = v29;
      *(v32 + 80) = v31;
      break;
    case 5u:
      outlined init with take of DocumentRegistrationEnvelope(v13, v9, type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope);
      a1[3] = type metadata accessor for PromptCompletionEventCandidateAnnotation(0);
      a1[4] = &protocol witness table for PromptCompletionEventCandidateAnnotation;
      v77 = __swift_allocate_boxed_opaque_existential_1(a1);
      PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.unseal()(v77);
      result = outlined destroy of DocumentResourceEnvelope(v9, type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope);
      break;
    case 6u:
      v79 = *v13;
      v78 = *(v13 + 1);
      v80 = *(v13 + 3);
      *&v103 = *(v13 + 2);
      v81 = *(v13 + 5);
      v102 = *(v13 + 4);
      v82 = *(v13 + 7);
      v101 = *(v13 + 6);
      v83 = *(v13 + 9);
      v100 = *(v13 + 8);
      v84 = *(v13 + 10);
      v85 = *(v13 + 11);
      a1[3] = &type metadata for PromptCompletionEventCandidateToolCallDelta;
      a1[4] = &protocol witness table for PromptCompletionEventCandidateToolCallDelta;
      v86 = swift_allocObject();
      *a1 = v86;
      *(v86 + 96) = xmmword_1ABA1D8C0;
      *(v86 + 16) = v79;
      *(v86 + 24) = v78;
      *(v86 + 32) = v103;
      *(v86 + 40) = v80;
      *(v86 + 48) = v102;
      *(v86 + 56) = v81;
      *(v86 + 64) = v101;
      *(v86 + 72) = v82;
      *(v86 + 80) = v100;
      *(v86 + 88) = v83;

      outlined copy of Data?(v84, v85);
      outlined consume of Data?(0, 0xF000000000000000);

      result = outlined consume of Data?(v84, v85);
      *(v86 + 96) = v84;
      *(v86 + 104) = v85;
      break;
    case 7u:
      v66 = *v13;
      v65 = *(v13 + 1);
      v68 = *(v13 + 2);
      v67 = *(v13 + 3);
      v70 = *(v13 + 4);
      v69 = *(v13 + 5);
      v71 = *(v13 + 6);
      a1[3] = &type metadata for PromptCompletionEventCandidateImageGeneration;
      a1[4] = &protocol witness table for PromptCompletionEventCandidateImageGeneration;
      goto LABEL_19;
    case 8u:
      v66 = *v13;
      v65 = *(v13 + 1);
      v68 = *(v13 + 2);
      v67 = *(v13 + 3);
      v70 = *(v13 + 4);
      v69 = *(v13 + 5);
      v71 = *(v13 + 6);
      a1[3] = &type metadata for PromptCompletionEventCandidateAudioGeneration;
      a1[4] = &protocol witness table for PromptCompletionEventCandidateAudioGeneration;
LABEL_19:
      v97 = swift_allocObject();
      *a1 = v97;

      outlined copy of Data._Representation(v69, v71);

      result = outlined consume of Data._Representation(v69, v71);
      v97[2] = v66;
      v97[3] = v65;
      v97[4] = v68;
      v97[5] = v67;
      v97[6] = v70;
      v97[7] = v69;
      v97[8] = v71;
      break;
    case 9u:
      outlined init with take of DocumentRegistrationEnvelope(v13, v6, type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope);
      v39 = type metadata accessor for PromptCompletionEventCandidateFileGeneration(0);
      a1[3] = v39;
      a1[4] = &protocol witness table for PromptCompletionEventCandidateFileGeneration;
      v40 = __swift_allocate_boxed_opaque_existential_1(a1);
      v41 = v6[1];
      *&v103 = *v6;
      v42 = v6[3];
      v102 = v6[2];
      v101 = v6[4];
      v43 = v6 + *(v4 + 28);
      v44 = v40 + *(v39 + 28);
      v45 = type metadata accessor for URL();
      (*(*(v45 - 8) + 16))(v44, v43, v45);
      v46 = type metadata accessor for FileContentEnvelope(0);
      v47 = v46[6];
      v48 = &v43[v46[5]];
      v50 = *v48;
      v49 = *(v48 + 1);
      v52 = *&v43[v47];
      v51 = *&v43[v47 + 8];
      v53 = *&v43[v46[7]];
      v54 = type metadata accessor for PromptCompletion.FileContent(0);
      v55 = &v44[v54[5]];
      *v55 = v50;
      *(v55 + 1) = v49;
      v56 = &v44[v54[6]];
      *v56 = v52;
      *(v56 + 1) = v51;
      *&v44[v54[7]] = v53;
      *v40 = v103;
      v40[1] = v41;
      v40[2] = v102;
      v40[3] = v42;
      v40[4] = v101;

      result = outlined destroy of DocumentResourceEnvelope(v6, type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope);
      break;
    case 0xAu:
      v88 = *v13;
      v87 = *(v13 + 1);
      v90 = *(v13 + 2);
      v89 = *(v13 + 3);
      v92 = *(v13 + 4);
      v91 = *(v13 + 5);
      v94 = *(v13 + 6);
      v93 = *(v13 + 7);
      a1[3] = &type metadata for PromptCompletionEventCandidateFinished;
      a1[4] = &protocol witness table for PromptCompletionEventCandidateFinished;
      v95 = swift_allocObject();
      *a1 = v95;
      if (v91 >= 3)
      {
        v96 = v92;
      }

      else
      {
        v96 = 0;
      }

      outlined copy of FinishReason(v92, v91);
      outlined copy of Data._Representation(v94, v93);

      outlined consume of FinishReason(v92, v91);
      result = outlined consume of Data._Representation(v94, v93);
      v95[2] = v88;
      v95[3] = v87;
      v95[4] = v90;
      v95[5] = v89;
      v95[6] = v96;
      v95[7] = v91;
      v95[8] = v94;
      v95[9] = v93;
      break;
    case 0xBu:
      v103 = *v13;
      v22 = *(v13 + 2);
      v23 = *(v13 + 3);
      a1[3] = &type metadata for PromptCompletionEventUsage;
      a1[4] = &protocol witness table for PromptCompletionEventUsage;
      result = swift_allocObject();
      *a1 = result;
      *(result + 16) = v103;
      *(result + 32) = v22;
      *(result + 40) = v23;
      break;
    case 0xCu:
      v35 = *v13;
      v34 = *(v13 + 1);
      v36 = *(v13 + 2);
      v37 = *(v13 + 3);
      a1[3] = &type metadata for PromptCompletionEventResponseMetadata;
      a1[4] = &protocol witness table for PromptCompletionEventResponseMetadata;
      v38 = swift_allocObject();
      *a1 = v38;

      outlined copy of Data._Representation(v36, v37);

      result = outlined consume of Data._Representation(v36, v37);
      v38[2] = v35;
      v38[3] = v34;
      v38[4] = v36;
      v38[5] = v37;
      break;
    default:
      v15 = *v13;
      v14 = *(v13 + 1);
      v16 = *(v13 + 2);
      v17 = *(v13 + 3);
      v18 = *(v13 + 4);
      a1[3] = &type metadata for PromptCompletionEventModelInformation;
      a1[4] = &protocol witness table for PromptCompletionEventModelInformation;
      v19 = swift_allocObject();
      *a1 = v19;

      ModelInformationEnvelope.unseal()(v16, v17, v18, v104);

      v20 = *v104;
      *(v19 + 16) = v15;
      *(v19 + 24) = v14;
      *(v19 + 32) = v20;
      *(v19 + 40) = *&v104[8];

      break;
  }

  return result;
}