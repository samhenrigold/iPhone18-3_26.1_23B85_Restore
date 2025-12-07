double PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.unseal()@<D0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v12 = v1[1];
  v13 = v3;
  v4 = *(v1 + 4);
  outlined init with copy of String(&v13, v11);
  outlined init with copy of String(&v12, v11);
  _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSDySS15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityG0OG_AF16PromptCompletionV0F0V8CategoryV_AP0Q0Ots5NeverOTg506_sSS15d12Generation18f11Envelope33_hijklmnop6LLV011q7D0OAA16rs6V0C0V8t38VAJ0N0OIggyrr_SS3key_AF5valuetAL_ANts5u35OIegnrzr_TR04_s15a12Generation18c11Y79_efghijklm14LLV6unsealAA16op10V0C0VyFAI8q6V_AI11N18OtSS_AD0rD0OtXEfU_Tf3nnnpf_nTf1cn_n(v4);
  if (*(v5 + 16))
  {
    v6 = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss18_DictionaryStorageCy15TokenGeneration16PromptCompletionV10ModerationV8CategoryVAG11ProbabilityOGMd, &_ss18_DictionaryStorageCy15TokenGeneration16PromptCompletionV10ModerationV8CategoryVAG11ProbabilityOGMR);
    v7 = static _DictionaryStorage.allocate(capacity:)();
    v5 = v6;
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC8];
  }

  v11[0] = v7;
  specialized _NativeDictionary.merge<A>(_:isUnique:uniquingKeysWith:)(v5, 1, v11);
  v8 = v11[0];
  v10 = v12;
  result = *&v13;
  *a1 = v13;
  *(a1 + 16) = v10;
  *(a1 + 32) = v8;
  return result;
}

double PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.unseal()@<D0>(void *a1@<X8>)
{
  v3 = type metadata accessor for AnnotationEnvelope.DocumentCitationEnvelope(0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v32 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v33 = type metadata accessor for AnnotationEnvelope.URLCitationEnvelope(0);
  MEMORY[0x1EEE9AC00](v33);
  v7 = &v32 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for AnnotationEnvelope.CitationTypeEnvelope(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v32 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for PromptCompletion.Annotation.Type(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v32 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for PromptCompletion.Annotation(0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = (&v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  v17 = v1[1];
  v37 = *v1;
  v38 = v17;
  v18 = v1[2];
  v39 = v1[3];
  v35 = v1[4];
  v36 = v18;
  v19 = (v1 + *(type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope(0) + 28));
  v34 = *v19;
  v20 = type metadata accessor for AnnotationEnvelope(0);
  outlined init with copy of DocumentResourceEnvelope(v19 + *(v20 + 20), v10, type metadata accessor for AnnotationEnvelope.CitationTypeEnvelope);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of DocumentRegistrationEnvelope(v10, v5, type metadata accessor for AnnotationEnvelope.DocumentCitationEnvelope);
    v21 = type metadata accessor for DocumentResourceIdentifier();
    (*(*(v21 - 8) + 32))(v13, v5, v21);
  }

  else
  {
    outlined init with take of DocumentRegistrationEnvelope(v10, v7, type metadata accessor for AnnotationEnvelope.URLCitationEnvelope);
    v22 = *v7;
    v23 = *(v7 + 1);
    v24 = *(v33 + 20);
    v25 = *(type metadata accessor for PromptCompletion.URLCitation(0) + 20);
    v26 = type metadata accessor for URL();
    (*(*(v26 - 8) + 32))(&v13[v25], &v7[v24], v26);
    *v13 = v22;
    *(v13 + 1) = v23;
  }

  swift_storeEnumTagMultiPayload();
  *v16 = v34;
  outlined init with take of DocumentRegistrationEnvelope(v13, v16 + *(v14 + 20), type metadata accessor for PromptCompletion.Annotation.Type);
  v27 = v38;
  *a1 = v37;
  a1[1] = v27;
  v28 = v35;
  v29 = v39;
  a1[2] = v36;
  a1[3] = v29;
  a1[4] = v28;
  v30 = type metadata accessor for PromptCompletionEventCandidateAnnotation(0);
  outlined init with take of DocumentRegistrationEnvelope(v16, a1 + *(v30 + 28), type metadata accessor for PromptCompletion.Annotation);

  return result;
}

uint64_t PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO016ModelInformationiJ0V10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO016ModelInformationiJ0V10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v11) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v11 = *(v3 + 16);
    v12 = *(v3 + 32);
    v10[15] = 1;
    lazy protocol witness table accessor for type ModelInformationEnvelope and conformance ModelInformationEnvelope();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO0f8RenderediJ0V10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO0f8RenderediJ0V10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v17 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v19) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v10 = *(v3 + 64);
    v11 = *(v3 + 96);
    v29 = *(v3 + 80);
    v30 = v11;
    v12 = *(v3 + 32);
    v26[0] = *(v3 + 16);
    v26[1] = v12;
    v13 = *(v3 + 64);
    v15 = *(v3 + 16);
    v14 = *(v3 + 32);
    v27 = *(v3 + 48);
    v28 = v13;
    v16 = *(v3 + 96);
    v23 = v29;
    v24 = v16;
    v19 = v15;
    v20 = v14;
    v31 = *(v3 + 112);
    v25 = *(v3 + 112);
    v21 = v27;
    v22 = v10;
    v32 = 1;
    outlined init with copy of PromptRenderingEnvelope(v26, v17);
    lazy protocol witness table accessor for type PromptRenderingEnvelope and conformance PromptRenderingEnvelope();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17[4] = v23;
    v17[5] = v24;
    v18 = v25;
    v17[0] = v19;
    v17[1] = v20;
    v17[2] = v21;
    v17[3] = v22;
    outlined destroy of PromptRenderingEnvelope(v17);
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v11[0] = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO0f10ModerationiJ0V10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO0f10ModerationiJ0V10CodingKeysOGMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v11[1] = v11[0];
    v12 = 1;
    lazy protocol witness table accessor for type ModerationEnvelope and conformance ModerationEnvelope();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO019CandidateModerationiJ0V10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO019CandidateModerationiJ0V10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v12 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v11 = *(v3 + 32);
    v10[15] = 2;
    lazy protocol witness table accessor for type ModerationEnvelope and conformance ModerationEnvelope();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope.CodingKeys()
{
  if (*v0)
  {
    return 0xD000000000000010;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 0xD000000000000012 && 0x80000001ABA41C80 == a2;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001ABA41B80 == a2)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double protocol witness for Decodable.init(from:) in conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  specialized PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope.init(from:)(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope.CodingKeys()
{
  if (*v0)
  {
    return 0x6E697265646E6572;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001ABA41C80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6E697265646E6572 && a2 == 0xE900000000000067)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double protocol witness for Decodable.init(from:) in conformance PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  specialized PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope.init(from:)(a2, v8);
  if (!v2)
  {
    v5 = v12;
    *(a1 + 64) = v11;
    *(a1 + 80) = v5;
    *(a1 + 96) = v13;
    *(a1 + 112) = v14;
    v6 = v8[1];
    *a1 = v8[0];
    *(a1 + 16) = v6;
    result = *&v9;
    v7 = v10;
    *(a1 + 32) = v9;
    *(a1 + 48) = v7;
  }

  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope.CodingKeys()
{
  if (*v0)
  {
    return 0x6974617265646F6DLL;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001ABA41C80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6974617265646F6DLL && a2 == 0xEA00000000006E6FLL)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = specialized PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
  }

  return result;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.CodingKeys()
{
  v1 = 0x6974617265646F6DLL;
  if (*v0 == 1)
  {
    v1 = 0xD000000000000013;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double protocol witness for Decodable.init(from:) in conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  specialized PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope.init(from:)(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO09TextDeltaiJ0V10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO09TextDeltaiJ0V10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = *(v3 + 56);
    v13 = v12;
    v11[23] = 4;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(&v13, v11, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v12, *(&v12 + 1));
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO010AnnotationiJ0V10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO010AnnotationiJ0V10CodingKeysOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope(0);
    v8[12] = 3;
    type metadata accessor for AnnotationEnvelope(0);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type AnnotationEnvelope and conformance AnnotationEnvelope, type metadata accessor for AnnotationEnvelope, &protocol conformance descriptor for AnnotationEnvelope);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = type metadata accessor for AnnotationEnvelope(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO010AnnotationiJ0V10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO010AnnotationiJ0V10CodingKeysOGMR);
  v22 = *(v6 - 8);
  v23 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.CodingKeys();
  v24 = v8;
  v12 = v25;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v13 = a1;
  v14 = v5;
  v16 = v22;
  v15 = v23;
  v29 = 0;
  *v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v11[1] = v17;
  v25 = v17;
  v28 = 1;
  v11[2] = KeyedDecodingContainer.decode(_:forKey:)();
  v11[3] = v18;
  v27 = 2;
  v20 = 0;
  v11[4] = KeyedDecodingContainer.decode(_:forKey:)();
  v26 = 3;
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type AnnotationEnvelope and conformance AnnotationEnvelope, type metadata accessor for AnnotationEnvelope, &protocol conformance descriptor for AnnotationEnvelope);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v16 + 8))(v24, v15);
  outlined init with take of DocumentRegistrationEnvelope(v14, v11 + *(v9 + 28), type metadata accessor for AnnotationEnvelope);
  outlined init with copy of DocumentResourceEnvelope(v11, v21, type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope);
  __swift_destroy_boxed_opaque_existential_0(v13);
  return outlined destroy of DocumentResourceEnvelope(v11, type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope.CodingKeys()
{
  v1 = *v0;
  v2 = 0x49746E656D676573;
  v3 = 0x746C654474786574;
  if (v1 != 3)
  {
    v3 = 0x6F666E4972657375;
  }

  if (v1 != 2)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000012;
  if (*v0)
  {
    v4 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 protocol witness for Decodable.init(from:) in conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  specialized PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope.init(from:)(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v7;
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.CodingKeys()
{
  v1 = 0x49746E656D676573;
  if (*v0 != 2)
  {
    v1 = 0x697461746F6E6E61;
  }

  v2 = 0xD000000000000012;
  if (*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO013ToolCallDeltaiJ0V10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO013ToolCallDeltaiJ0V10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 4;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = *(v3 + 80);
    v13 = v12;
    v11[23] = 5;
    outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(&v13, v11, &_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    outlined consume of Data?(v12, *(&v12 + 1));
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO05ImageeiJ0V10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO05ImageeiJ0V10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = *(v3 + 40);
    v13 = v12;
    v11[23] = 3;
    outlined init with copy of ImageContentEnvelope(&v13, v11);
    lazy protocol witness table accessor for type ImageContentEnvelope and conformance ImageContentEnvelope();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v12, *(&v12 + 1));
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO05AudioeiJ0V10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO05AudioeiJ0V10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = *(v3 + 40);
    v13 = v12;
    v11[23] = 3;
    outlined init with copy of AudioContentEnvelope(&v13, v11);
    lazy protocol witness table accessor for type AudioContentEnvelope and conformance AudioContentEnvelope();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v12, *(&v12 + 1));
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO04FileeiJ0V10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO04FileeiJ0V10CodingKeysOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope(0);
    v8[12] = 3;
    type metadata accessor for FileContentEnvelope(0);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type FileContentEnvelope and conformance FileContentEnvelope, type metadata accessor for FileContentEnvelope, &protocol conformance descriptor for FileContentEnvelope);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v21 = a2;
  v3 = type metadata accessor for FileContentEnvelope(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO04FileeiJ0V10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO04FileeiJ0V10CodingKeysOGMR);
  v22 = *(v6 - 8);
  v23 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  v9 = type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope.CodingKeys();
  v24 = v8;
  v12 = v25;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v13 = a1;
  v14 = v5;
  v16 = v22;
  v15 = v23;
  v29 = 0;
  *v11 = KeyedDecodingContainer.decode(_:forKey:)();
  v11[1] = v17;
  v25 = v17;
  v28 = 1;
  v11[2] = KeyedDecodingContainer.decode(_:forKey:)();
  v11[3] = v18;
  v27 = 2;
  v20 = 0;
  v11[4] = KeyedDecodingContainer.decode(_:forKey:)();
  v26 = 3;
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type FileContentEnvelope and conformance FileContentEnvelope, type metadata accessor for FileContentEnvelope, &protocol conformance descriptor for FileContentEnvelope);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v16 + 8))(v24, v15);
  outlined init with take of DocumentRegistrationEnvelope(v14, v11 + *(v9 + 28), type metadata accessor for FileContentEnvelope);
  outlined init with copy of DocumentResourceEnvelope(v11, v21, type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope);
  __swift_destroy_boxed_opaque_existential_0(v13);
  return outlined destroy of DocumentResourceEnvelope(v11, type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope);
}

uint64_t PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO017CandidateFinishediJ0V10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO017CandidateFinishediJ0V10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    LOBYTE(v12) = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = *(v3 + 32);
    v11[0] = 2;
    lazy protocol witness table accessor for type FinishReasonEnvelope and conformance FinishReasonEnvelope();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v12 = *(v3 + 48);
    v13 = v12;
    v11[23] = 3;
    outlined init with copy of Data(&v13, v11);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v12, *(&v12 + 1));
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v12 = a4;
  v13 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO05UsageiJ0V10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO05UsageiJ0V10CodingKeysOGMR);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v14 = v12;
    v15 = v13;
    v16 = 1;
    lazy protocol witness table accessor for type UsageEnvelope and conformance UsageEnvelope();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5)
{
  v12 = a4;
  v13 = a5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO016ResponseMetadataiJ0V10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO016ResponseMetadataiJ0V10CodingKeysOGMR);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v14) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v14 = v12;
    v15 = v13;
    v16 = 1;
    outlined copy of Data._Representation(v12, v13);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v14, v15);
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t PromptCompletionStreamElementEnvelope.Envelope.CodingKeys.stringValue.getter(char a1)
{
  result = 0x64657265646E6572;
  switch(a1)
  {
    case 1:
      return result;
    case 2:
      result = 0xD000000000000010;
      break;
    case 3:
      result = 0xD000000000000013;
      break;
    case 4:
      result = 0x746C654474786574;
      break;
    case 5:
      result = 0x697461746F6E6E61;
      break;
    case 6:
      result = 0x6C6C61436C6F6F74;
      break;
    case 7:
      v3 = 0x476567616D69;
      goto LABEL_15;
    case 8:
      v3 = 0x476F69647561;
LABEL_15:
      result = v3 & 0xFFFFFFFFFFFFLL | 0x6E65000000000000;
      break;
    case 9:
      result = 0x656E6547656C6966;
      break;
    case 10:
      result = 0xD000000000000011;
      break;
    case 11:
      result = 0x6567617375;
      break;
    case 12:
      result = 0xD000000000000010;
      break;
    default:
      result = 0xD000000000000010;
      break;
  }

  return result;
}

uint64_t PromptCompletionStreamElementEnvelope.Envelope.encode(to:)(void *a1)
{
  v153 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO26ResponseMetadataCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO26ResponseMetadataCodingKeysOGMR);
  v123 = *(v153 - 8);
  MEMORY[0x1EEE9AC00](v153);
  v152 = &v112 - v2;
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO15UsageCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO15UsageCodingKeysOGMR);
  v122 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v149 = &v112 - v3;
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO27CandidateFinishedCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO27CandidateFinishedCodingKeysOGMR);
  v121 = *(v150 - 8);
  MEMORY[0x1EEE9AC00](v150);
  v148 = &v112 - v4;
  v147 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO04FileE10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO04FileE10CodingKeysOGMR);
  v120 = *(v147 - 8);
  MEMORY[0x1EEE9AC00](v147);
  v146 = &v112 - v5;
  v144 = type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope(0);
  MEMORY[0x1EEE9AC00](v144);
  v145 = &v112 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v143 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO05AudioE10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO05AudioE10CodingKeysOGMR);
  v119 = *(v143 - 8);
  MEMORY[0x1EEE9AC00](v143);
  v142 = &v112 - v7;
  v141 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO05ImageE10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO05ImageE10CodingKeysOGMR);
  v118 = *(v141 - 8);
  MEMORY[0x1EEE9AC00](v141);
  v139 = &v112 - v8;
  v140 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO23ToolCallDeltaCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO23ToolCallDeltaCodingKeysOGMR);
  v117 = *(v140 - 8);
  MEMORY[0x1EEE9AC00](v140);
  v138 = &v112 - v9;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO20AnnotationCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO20AnnotationCodingKeysOGMR);
  v116 = *(v137 - 8);
  MEMORY[0x1EEE9AC00](v137);
  v136 = &v112 - v10;
  v133 = type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope(0);
  MEMORY[0x1EEE9AC00](v133);
  v135 = &v112 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO19TextDeltaCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO19TextDeltaCodingKeysOGMR);
  v115 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v132 = &v112 - v12;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO29CandidateModerationCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO29CandidateModerationCodingKeysOGMR);
  v114 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v130 = &v112 - v13;
  v129 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO0F20ModerationCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO0F20ModerationCodingKeysOGMR);
  v113 = *(v129 - 8);
  MEMORY[0x1EEE9AC00](v129);
  v126 = &v112 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO08RenderedF10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO08RenderedF10CodingKeysOGMR);
  v127 = *(v15 - 8);
  v128 = v15;
  MEMORY[0x1EEE9AC00](v15);
  v125 = &v112 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO26ModelInformationCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO26ModelInformationCodingKeysOGMR);
  v124 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v112 - v18;
  v20 = type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v112 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMR);
  v154 = *(v173 - 8);
  MEMORY[0x1EEE9AC00](v173);
  v24 = &v112 - v23;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CodingKeys();
  v156 = v24;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of DocumentResourceEnvelope(v155, v22, type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope);
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v87 = *(v22 + 5);
      v169 = *(v22 + 4);
      v170 = v87;
      v171 = *(v22 + 6);
      v172 = *(v22 + 14);
      v88 = *(v22 + 1);
      v165 = *v22;
      v166 = v88;
      v89 = *(v22 + 3);
      v167 = *(v22 + 2);
      v168 = v89;
      LOBYTE(v157) = 1;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.RenderedPromptCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.RenderedPromptCodingKeys();
      v90 = v125;
      v91 = v173;
      v92 = v156;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v161 = v169;
      v162 = v170;
      v163 = v171;
      v164 = v172;
      v157 = v165;
      v158 = v166;
      v159 = v167;
      v160 = v168;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope();
      v93 = v128;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v127 + 8))(v90, v93);
      (*(v154 + 8))(v92, v91);
      return outlined destroy of PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope(&v165);
    case 2u:
      v62 = *v22;
      v63 = *(v22 + 1);
      v64 = *(v22 + 2);
      LOBYTE(v165) = 2;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.PromptModerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationCodingKeys();
      v65 = v126;
      v66 = v173;
      v67 = v156;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      *&v165 = v62;
      *(&v165 + 1) = v63;
      *&v166 = v64;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope();
      v68 = v129;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v113 + 8))(v65, v68);
      (*(v154 + 8))(v67, v66);

    case 3u:
      v70 = *v22;
      v69 = *(v22 + 1);
      v72 = *(v22 + 2);
      v71 = *(v22 + 3);
      v73 = *(v22 + 4);
      LOBYTE(v165) = 3;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationCodingKeys();
      v74 = v130;
      v75 = v156;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      *&v165 = v70;
      *(&v165 + 1) = v69;
      v155 = v69;
      *&v166 = v72;
      *(&v166 + 1) = v71;
      *&v167 = v73;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope();
      v76 = v131;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v114 + 8))(v74, v76);
      (*(v154 + 8))(v75, v173);

    case 4u:
      v40 = *(v22 + 3);
      v167 = *(v22 + 2);
      v168 = v40;
      *&v169 = *(v22 + 8);
      v41 = *(v22 + 1);
      v165 = *v22;
      v166 = v41;
      LOBYTE(v157) = 4;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.TextDeltaCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaCodingKeys();
      v42 = v132;
      v43 = v173;
      v44 = v156;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v159 = v167;
      v160 = v168;
      *&v161 = v169;
      v157 = v165;
      v158 = v166;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope();
      v45 = v134;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v115 + 8))(v42, v45);
      (*(v154 + 8))(v44, v43);
      return outlined destroy of PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope(&v165);
    case 5u:
      v56 = v135;
      outlined init with take of DocumentRegistrationEnvelope(v22, v135, type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope);
      LOBYTE(v165) = 5;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.AnnotationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationCodingKeys();
      v94 = v136;
      v58 = v173;
      v59 = v156;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope, type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope, &protocol conformance descriptor for PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope);
      v95 = v137;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v116 + 8))(v94, v95);
      v61 = type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope;
      goto LABEL_13;
    case 6u:
      v96 = *(v22 + 3);
      v167 = *(v22 + 2);
      v168 = v96;
      v97 = *(v22 + 5);
      v169 = *(v22 + 4);
      v170 = v97;
      v98 = *(v22 + 1);
      v165 = *v22;
      v166 = v98;
      LOBYTE(v157) = 6;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaCodingKeys();
      v99 = v138;
      v100 = v173;
      v101 = v156;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v159 = v167;
      v160 = v168;
      v161 = v169;
      v162 = v170;
      v157 = v165;
      v158 = v166;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope();
      v102 = v140;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v117 + 8))(v99, v102);
      (*(v154 + 8))(v101, v100);
      return outlined destroy of PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope(&v165);
    case 7u:
      v77 = *(v22 + 1);
      v155 = *v22;
      v78 = *(v22 + 2);
      v79 = *(v22 + 3);
      v80 = *(v22 + 5);
      v152 = *(v22 + 4);
      v153 = v78;
      v81 = *(v22 + 6);
      LOBYTE(v165) = 7;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationCodingKeys();
      v82 = v139;
      v83 = v173;
      v84 = v156;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      *&v165 = v155;
      *(&v165 + 1) = v77;
      v155 = v77;
      *&v166 = v153;
      *(&v166 + 1) = v79;
      *&v167 = v152;
      *(&v167 + 1) = v80;
      *&v168 = v81;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope();
      v85 = v141;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v86 = v118;
      goto LABEL_17;
    case 8u:
      v109 = *(v22 + 1);
      v155 = *v22;
      v110 = *(v22 + 2);
      v111 = *(v22 + 3);
      v80 = *(v22 + 5);
      v152 = *(v22 + 4);
      v153 = v110;
      v81 = *(v22 + 6);
      LOBYTE(v165) = 8;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationCodingKeys();
      v82 = v142;
      v83 = v173;
      v84 = v156;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      *&v165 = v155;
      *(&v165 + 1) = v109;
      v155 = v109;
      *&v166 = v153;
      *(&v166 + 1) = v111;
      *&v167 = v152;
      *(&v167 + 1) = v80;
      *&v168 = v81;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope();
      v85 = v143;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v86 = v119;
LABEL_17:
      (*(v86 + 8))(v82, v85);
      (*(v154 + 8))(v84, v83);

      v54 = v80;
      v55 = v81;
      goto LABEL_18;
    case 9u:
      v56 = v145;
      outlined init with take of DocumentRegistrationEnvelope(v22, v145, type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope);
      LOBYTE(v165) = 9;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.FileGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationCodingKeys();
      v57 = v146;
      v58 = v173;
      v59 = v156;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope, type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope, &protocol conformance descriptor for PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope);
      v60 = v147;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v120 + 8))(v57, v60);
      v61 = type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope;
LABEL_13:
      outlined destroy of DocumentResourceEnvelope(v56, v61);
      return (*(v154 + 8))(v59, v58);
    case 0xAu:
      v103 = *(v22 + 1);
      v165 = *v22;
      v166 = v103;
      v104 = *(v22 + 3);
      v167 = *(v22 + 2);
      v168 = v104;
      LOBYTE(v157) = 10;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedCodingKeys();
      v105 = v148;
      v106 = v173;
      v107 = v156;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v157 = v165;
      v158 = v166;
      v159 = v167;
      v160 = v168;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope();
      v108 = v150;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v121 + 8))(v105, v108);
      (*(v154 + 8))(v107, v106);
      return outlined destroy of PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope(&v165);
    case 0xBu:
      v32 = *v22;
      v31 = *(v22 + 1);
      v33 = *(v22 + 2);
      v34 = *(v22 + 3);
      LOBYTE(v165) = 11;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.UsageCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.UsageCodingKeys();
      v35 = v149;
      v36 = v173;
      v37 = v156;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      *&v165 = v32;
      *(&v165 + 1) = v31;
      *&v166 = v33;
      *(&v166 + 1) = v34;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope();
      v38 = v151;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v122 + 8))(v35, v38);
      (*(v154 + 8))(v37, v36);
      goto LABEL_4;
    case 0xCu:
      v47 = *v22;
      v46 = *(v22 + 1);
      v48 = *(v22 + 2);
      v49 = *(v22 + 3);
      LOBYTE(v165) = 12;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataCodingKeys();
      v50 = v152;
      v51 = v173;
      v52 = v156;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      *&v165 = v47;
      *(&v165 + 1) = v46;
      *&v166 = v48;
      *(&v166 + 1) = v49;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope();
      v53 = v153;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v123 + 8))(v50, v53);
      (*(v154 + 8))(v52, v51);

      v54 = v48;
      v55 = v49;
LABEL_18:
      result = outlined consume of Data._Representation(v54, v55);
      break;
    default:
      v25 = *v22;
      v155 = *(v22 + 1);
      v26 = v155;
      v27 = *(v22 + 2);
      v152 = *(v22 + 3);
      v153 = v25;
      v28 = *(v22 + 4);
      LOBYTE(v165) = 0;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ModelInformationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationCodingKeys();
      v29 = v173;
      v30 = v156;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      *&v165 = v153;
      *(&v165 + 1) = v26;
      *&v166 = v27;
      *(&v166 + 1) = v152;
      *&v167 = v28;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v124 + 8))(v19, v17);
      (*(v154 + 8))(v30, v29);

LABEL_4:

      break;
  }

  return result;
}

uint64_t PromptCompletionStreamElementEnvelope.Envelope.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v188 = a2;
  v169 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO26ResponseMetadataCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO26ResponseMetadataCodingKeysOGMR);
  v150 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v181 = &v130 - v3;
  v168 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO15UsageCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO15UsageCodingKeysOGMR);
  v149 = *(v168 - 8);
  MEMORY[0x1EEE9AC00](v168);
  v180 = &v130 - v4;
  v167 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO27CandidateFinishedCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO27CandidateFinishedCodingKeysOGMR);
  v165 = *(v167 - 8);
  MEMORY[0x1EEE9AC00](v167);
  v179 = &v130 - v5;
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO04FileE10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO04FileE10CodingKeysOGMR);
  v148 = *(v166 - 8);
  MEMORY[0x1EEE9AC00](v166);
  v178 = &v130 - v6;
  v164 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO05AudioE10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO05AudioE10CodingKeysOGMR);
  v147 = *(v164 - 8);
  MEMORY[0x1EEE9AC00](v164);
  v177 = &v130 - v7;
  v163 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO05ImageE10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO05ImageE10CodingKeysOGMR);
  v146 = *(v163 - 8);
  MEMORY[0x1EEE9AC00](v163);
  v176 = &v130 - v8;
  v162 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO23ToolCallDeltaCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO23ToolCallDeltaCodingKeysOGMR);
  v160 = *(v162 - 8);
  MEMORY[0x1EEE9AC00](v162);
  v175 = &v130 - v9;
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO20AnnotationCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO20AnnotationCodingKeysOGMR);
  v145 = *(v161 - 8);
  MEMORY[0x1EEE9AC00](v161);
  v174 = &v130 - v10;
  v159 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO19TextDeltaCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO19TextDeltaCodingKeysOGMR);
  v158 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v185 = &v130 - v11;
  v157 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO29CandidateModerationCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO29CandidateModerationCodingKeysOGMR);
  v144 = *(v157 - 8);
  MEMORY[0x1EEE9AC00](v157);
  v173 = &v130 - v12;
  v156 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO0F20ModerationCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO0F20ModerationCodingKeysOGMR);
  v143 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v172 = &v130 - v13;
  v184 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO08RenderedF10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO08RenderedF10CodingKeysOGMR);
  v155 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v171 = &v130 - v14;
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO26ModelInformationCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO26ModelInformationCodingKeysOGMR);
  v153 = *(v154 - 8);
  MEMORY[0x1EEE9AC00](v154);
  v170 = &v130 - v15;
  v183 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV0J033_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMR);
  v186 = *(v183 - 8);
  MEMORY[0x1EEE9AC00](v183);
  v17 = &v130 - v16;
  v187 = type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope(0);
  MEMORY[0x1EEE9AC00](v187);
  v142 = (&v130 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v19);
  v141 = (&v130 - v20);
  MEMORY[0x1EEE9AC00](v21);
  v140 = (&v130 - v22);
  MEMORY[0x1EEE9AC00](v23);
  v152 = &v130 - v24;
  MEMORY[0x1EEE9AC00](v25);
  v139 = (&v130 - v26);
  MEMORY[0x1EEE9AC00](v27);
  v138 = (&v130 - v28);
  MEMORY[0x1EEE9AC00](v29);
  v137 = &v130 - v30;
  MEMORY[0x1EEE9AC00](v31);
  v151 = &v130 - v32;
  MEMORY[0x1EEE9AC00](v33);
  v136 = &v130 - v34;
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v130 - v36;
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v130 - v39;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v130 - v42;
  MEMORY[0x1EEE9AC00](v44);
  v46 = &v130 - v45;
  MEMORY[0x1EEE9AC00](v47);
  v49 = &v130 - v48;
  v50 = a1[3];
  v189 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v50);
  lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CodingKeys();
  v182 = v17;
  v51 = v200;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v51)
  {
LABEL_9:
    v72 = v189;
    return __swift_destroy_boxed_opaque_existential_0(v72);
  }

  v131 = v46;
  v132 = v40;
  v133 = v37;
  v134 = v43;
  v52 = v184;
  v53 = v185;
  v200 = 0;
  v54 = v187;
  v135 = v49;
  v55 = v188;
  v56 = v183;
  v57 = v182;
  v58 = KeyedDecodingContainer.allKeys.getter();
  v59 = (2 * *(v58 + 16)) | 1;
  v196 = v58;
  v197 = v58 + 32;
  v198 = 0;
  v199 = v59;
  v60 = specialized Collection<>.popFirst()();
  if (v198 != v199 >> 1)
  {
LABEL_6:
    v66 = type metadata accessor for DecodingError();
    swift_allocError();
    v68 = v67;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v68 = v54;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v66 - 8) + 104))(v68, *MEMORY[0x1E69E6AF8], v66);
    swift_willThrow();
    v69 = *(v186 + 8);
    v70 = v57;
    v71 = v56;
LABEL_7:
    v69(v70, v71);
LABEL_8:
    swift_unknownObjectRelease();
    goto LABEL_9;
  }

  v61 = v56;
  v56 = v54;
  v62 = v200;
  switch(v60)
  {
    case 0:
      v190[0] = 0;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ModelInformationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationCodingKeys();
      v63 = v170;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v62)
      {
        lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationElementEnvelope();
        v64 = v154;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v153 + 8))(v63, v64);
        (*(v186 + 8))(v57, v61);
        swift_unknownObjectRelease();
        v65 = v131;
        *v131 = *v190;
        *(v65 + 8) = *&v190[8];
        *(v65 + 24) = *&v190[24];
        goto LABEL_41;
      }

      (*(v186 + 8))(v57, v61);
      goto LABEL_8;
    case 1:
      v190[0] = 1;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.RenderedPromptCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.RenderedPromptCodingKeys();
      v101 = v171;
      v75 = v61;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v62)
      {
        v69 = *(v186 + 8);
        v70 = v57;
        goto LABEL_36;
      }

      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptRenderedElementEnvelope();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v114 = (v186 + 8);
      (*(v155 + 8))(v101, v52);
      (*v114)(v57, v61);
      swift_unknownObjectRelease();
      v120 = v193;
      v119 = v134;
      *(v134 + 4) = v192;
      *(v119 + 80) = v120;
      *(v119 + 96) = v194;
      *(v119 + 112) = v195;
      v121 = *&v190[16];
      *v119 = *v190;
      *(v119 + 16) = v121;
      v122 = v191;
      *(v119 + 32) = *&v190[32];
      *(v119 + 48) = v122;
LABEL_39:
      swift_storeEnumTagMultiPayload();
      v123 = v135;
      outlined init with take of DocumentRegistrationEnvelope(v119, v135, type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope);
      v55 = v188;
      v124 = v189;
      goto LABEL_43;
    case 2:
      v190[0] = 2;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.PromptModerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationCodingKeys();
      v89 = v172;
      v75 = v61;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v62)
      {
        goto LABEL_35;
      }

      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationElementEnvelope();
      v90 = v156;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v91 = v186;
      (*(v143 + 8))(v89, v90);
      (*(v91 + 8))(v57, v61);
      swift_unknownObjectRelease();
      v119 = v132;
      *v132 = *v190;
      *(v119 + 8) = *&v190[8];
      goto LABEL_39;
    case 3:
      v190[0] = 3;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationCodingKeys();
      v92 = v173;
      v75 = v61;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v62)
      {
        goto LABEL_35;
      }

      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationElementEnvelope();
      v93 = v157;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v94 = v186;
      (*(v144 + 8))(v92, v93);
      (*(v94 + 8))(v57, v61);
      swift_unknownObjectRelease();
      v95 = *&v190[16];
      v65 = v133;
      *v133 = *v190;
      *(v65 + 2) = v95;
      *(v65 + 24) = *&v190[24];
      goto LABEL_41;
    case 4:
      v190[0] = 4;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.TextDeltaCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaCodingKeys();
      v79 = v53;
      v75 = v61;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v62)
      {
        goto LABEL_35;
      }

      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaElementEnvelope();
      v80 = v159;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v81 = (v186 + 8);
      (*(v158 + 8))(v79, v80);
      (*v81)(v57, v61);
      swift_unknownObjectRelease();
      v117 = v191;
      v65 = v136;
      *(v136 + 2) = *&v190[32];
      v65[3] = v117;
      *(v65 + 8) = v192;
      v118 = *&v190[16];
      *v65 = *v190;
      v65[1] = v118;
      goto LABEL_41;
    case 5:
      v190[0] = 5;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.AnnotationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationCodingKeys();
      v102 = v174;
      v75 = v61;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v62)
      {
        goto LABEL_35;
      }

      type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope(0);
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope, type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope, &protocol conformance descriptor for PromptCompletionStreamElementEnvelope.Envelope.AnnotationElementEnvelope);
      v87 = v151;
      v103 = v161;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v145 + 8))(v102, v103);
      (*(v186 + 8))(v57, v61);
      swift_unknownObjectRelease();
      goto LABEL_40;
    case 6:
      v190[0] = 6;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaCodingKeys();
      v104 = v175;
      v75 = v61;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v62)
      {
        goto LABEL_35;
      }

      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope();
      v105 = v162;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v106 = (v186 + 8);
      (*(v160 + 8))(v104, v105);
      (*v106)(v57, v61);
      swift_unknownObjectRelease();
      v107 = v191;
      v65 = v137;
      *(v137 + 2) = *&v190[32];
      v65[3] = v107;
      v108 = v193;
      v65[4] = v192;
      v65[5] = v108;
      v109 = *&v190[16];
      *v65 = *v190;
      v65[1] = v109;
      goto LABEL_41;
    case 7:
      v190[0] = 7;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationCodingKeys();
      v96 = v176;
      v75 = v61;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v62)
      {
        goto LABEL_35;
      }

      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope();
      v97 = v163;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v98 = v186;
      (*(v146 + 8))(v96, v97);
      (*(v98 + 8))(v57, v61);
      swift_unknownObjectRelease();
      v99 = *&v190[16];
      v100 = v191;
      v65 = v138;
      *v138 = *v190;
      v65[1] = v99;
      v65[2] = *&v190[32];
      *(v65 + 6) = v100;
      goto LABEL_41;
    case 8:
      v190[0] = 8;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationCodingKeys();
      v113 = v177;
      v75 = v61;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v62)
      {
        goto LABEL_35;
      }

      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope();
      v115 = v164;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v116 = v186;
      (*(v147 + 8))(v113, v115);
      (*(v116 + 8))(v57, v61);
      swift_unknownObjectRelease();
      v128 = *&v190[16];
      v129 = v191;
      v65 = v139;
      *v139 = *v190;
      v65[1] = v128;
      v65[2] = *&v190[32];
      *(v65 + 6) = v129;
      goto LABEL_41;
    case 9:
      v190[0] = 9;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.FileGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationCodingKeys();
      v86 = v178;
      v75 = v61;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v62)
      {
        goto LABEL_35;
      }

      type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope(0);
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope, type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope, &protocol conformance descriptor for PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope);
      v87 = v152;
      v88 = v166;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v148 + 8))(v86, v88);
      (*(v186 + 8))(v57, v61);
      swift_unknownObjectRelease();
LABEL_40:
      swift_storeEnumTagMultiPayload();
      v125 = v87;
      goto LABEL_42;
    case 10:
      v190[0] = 10;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedCodingKeys();
      v110 = v179;
      v75 = v61;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v62)
      {
        goto LABEL_35;
      }

      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope();
      v111 = v167;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v112 = (v186 + 8);
      (*(v165 + 8))(v110, v111);
      (*v112)(v57, v61);
      swift_unknownObjectRelease();
      v126 = *&v190[16];
      v65 = v140;
      *v140 = *v190;
      v65[1] = v126;
      v127 = v191;
      v65[2] = *&v190[32];
      v65[3] = v127;
      goto LABEL_41;
    case 11:
      v190[0] = 11;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.UsageCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.UsageCodingKeys();
      v74 = v180;
      v75 = v61;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v62)
      {
        goto LABEL_35;
      }

      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope();
      v76 = v168;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v77 = v186;
      (*(v149 + 8))(v74, v76);
      (*(v77 + 8))(v57, v61);
      swift_unknownObjectRelease();
      v78 = *&v190[8];
      v65 = v141;
      *v141 = *v190;
      *(v65 + 1) = v78;
      v65[1] = *&v190[16];
      goto LABEL_41;
    case 12:
      v190[0] = 12;
      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataCodingKeys();
      v82 = v181;
      v75 = v61;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v62)
      {
LABEL_35:
        v69 = *(v186 + 8);
        v70 = v57;
LABEL_36:
        v71 = v75;
        goto LABEL_7;
      }

      lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope and conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope();
      v83 = v169;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      v84 = v186;
      (*(v150 + 8))(v82, v83);
      (*(v84 + 8))(v57, v61);
      swift_unknownObjectRelease();
      v85 = *&v190[8];
      v65 = v142;
      *v142 = *v190;
      *(v65 + 1) = v85;
      v65[1] = *&v190[16];
LABEL_41:
      swift_storeEnumTagMultiPayload();
      v125 = v65;
LABEL_42:
      v123 = v135;
      outlined init with take of DocumentRegistrationEnvelope(v125, v135, type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope);
      v124 = v189;
LABEL_43:
      outlined init with take of DocumentRegistrationEnvelope(v123, v55, type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope);
      v72 = v124;
      break;
    default:
      goto LABEL_6;
  }

  return __swift_destroy_boxed_opaque_existential_0(v72);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope.CodingKeys()
{
  v1 = *v0;
  v2 = 0x6E6F6974636E7566;
  v3 = 0x746E656D75677261;
  if (v1 != 4)
  {
    v3 = 0x6F666E4972657375;
  }

  if (v1 != 3)
  {
    v2 = v3;
  }

  v4 = 0xD000000000000012;
  v5 = 0xD000000000000013;
  if (v1 != 1)
  {
    v5 = 0xD000000000000012;
  }

  if (*v0)
  {
    v4 = v5;
  }

  if (*v0 <= 2u)
  {
    return v4;
  }

  else
  {
    return v2;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double protocol witness for Decodable.init(from:) in conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  specialized PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaElementEnvelope.init(from:)(a2, v8);
  if (!v2)
  {
    v5 = v8[3];
    a1[2] = v8[2];
    a1[3] = v5;
    v6 = v8[5];
    a1[4] = v8[4];
    a1[5] = v6;
    result = *v8;
    v7 = v8[1];
    *a1 = v8[0];
    a1[1] = v7;
  }

  return result;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope.CodingKeys()
{
  v1 = 0x49746E656D676573;
  if (*v0 != 2)
  {
    v1 = 0x6567616D69;
  }

  v2 = 0xD000000000000012;
  if (*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope.CodingKeys()
{
  v1 = 0x49746E656D676573;
  if (*v0 != 2)
  {
    v1 = 0x6F69647561;
  }

  v2 = 0xD000000000000012;
  if (*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationElementEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double protocol witness for Decodable.init(from:) in conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationElementEnvelope@<D0>(void (*a1)(_OWORD *__return_ptr)@<X3>, uint64_t a2@<X8>)
{
  a1(v6);
  if (!v2)
  {
    v5 = v6[1];
    *a2 = v6[0];
    *(a2 + 16) = v5;
    result = *&v7;
    *(a2 + 32) = v7;
    *(a2 + 48) = v8;
  }

  return result;
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope.CodingKeys()
{
  v1 = 0x49746E656D676573;
  if (*v0 != 2)
  {
    v1 = 1701603686;
  }

  v2 = 0xD000000000000012;
  if (*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationElementEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope.CodingKeys()
{
  v1 = 0x65526873696E6966;
  if (*v0 != 2)
  {
    v1 = 0x617461646174656DLL;
  }

  v2 = 0xD000000000000012;
  if (*v0)
  {
    v2 = 0xD000000000000013;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double protocol witness for Decodable.init(from:) in conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  specialized PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedElementEnvelope.init(from:)(a2, v7);
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

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope.CodingKeys()
{
  if (*v0)
  {
    return 0x6567617375;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001ABA41C80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6567617375 && a2 == 0xE500000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = specialized PromptCompletionStreamElementEnvelope.Envelope.UsageElementEnvelope.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope.CodingKeys()
{
  if (*v0)
  {
    return 0x617461646174656DLL;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001ABA41C80 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x617461646174656DLL && a2 == 0xEC00000061746144)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = specialized PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataElementEnvelope.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.AnnotationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.AnnotationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AnnotationCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.AudioGenerationCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateFinishedCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CandidateModerationCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptCompletionStreamElementEnvelope.Envelope.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized PromptCompletionStreamElementEnvelope.Envelope.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.FileGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.FileGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.FileGenerationCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ImageGenerationCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ModelInformationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ModelInformationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ModelInformationCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.PromptModerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.PromptModerationCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.PromptModerationCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.RenderedPromptCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.RenderedPromptCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.RenderedPromptCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.RenderedPromptCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.RenderedPromptCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.RenderedPromptCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ResponseMetadataCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.TextDeltaCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.TextDeltaCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.TextDeltaCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.ToolCallDeltaCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.UsageCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.UsageCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.UsageCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionStreamElementEnvelope.Envelope.UsageCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.Envelope.UsageCodingKeys and conformance PromptCompletionStreamElementEnvelope.Envelope.UsageCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptCompletionStreamElementEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x65706F6C65766E65 && a2 == 0xE800000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptCompletionStreamElementEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptCompletionStreamElementEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PromptCompletionStreamElementEnvelope.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope(0);
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope and conformance PromptCompletionStreamElementEnvelope.Envelope, type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope, &protocol conformance descriptor for PromptCompletionStreamElementEnvelope.Envelope);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t PromptCompletionStreamElementEnvelope.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope(0);
  MEMORY[0x1EEE9AC00](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for PromptCompletionStreamElementEnvelope(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v12 = v15;
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope and conformance PromptCompletionStreamElementEnvelope.Envelope, type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope, &protocol conformance descriptor for PromptCompletionStreamElementEnvelope.Envelope);
    v13 = v17;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v16 + 8))(v8, v6);
    outlined init with take of DocumentRegistrationEnvelope(v13, v11, type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope);
    outlined init with take of DocumentRegistrationEnvelope(v11, v12, type metadata accessor for PromptCompletionStreamElementEnvelope);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance PromptCompletionStreamElementEnvelope(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration37PromptCompletionStreamElementEnvelopeV10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptCompletionStreamElementEnvelope.CodingKeys and conformance PromptCompletionStreamElementEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope(0);
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptCompletionStreamElementEnvelope.Envelope and conformance PromptCompletionStreamElementEnvelope.Envelope, type metadata accessor for PromptCompletionStreamElementEnvelope.Envelope, &protocol conformance descriptor for PromptCompletionStreamElementEnvelope.Envelope);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ToolChoiceEnvelope.AutomaticCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolChoiceEnvelope.AutomaticCodingKeys and conformance ToolChoiceEnvelope.AutomaticCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ToolChoiceEnvelope.AutomaticCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolChoiceEnvelope.AutomaticCodingKeys and conformance ToolChoiceEnvelope.AutomaticCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ToolChoiceEnvelope.CodingKeys()
{
  v1 = 1701736302;
  v2 = 0x6465726975716572;
  if (*v0 != 2)
  {
    v2 = 0x6E6F6974636E7566;
  }

  if (*v0)
  {
    v1 = 0x6974616D6F747561;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ToolChoiceEnvelope.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized ToolChoiceEnvelope.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ToolChoiceEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolChoiceEnvelope.CodingKeys and conformance ToolChoiceEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ToolChoiceEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolChoiceEnvelope.CodingKeys and conformance ToolChoiceEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ToolChoiceEnvelope.FunctionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolChoiceEnvelope.FunctionCodingKeys and conformance ToolChoiceEnvelope.FunctionCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ToolChoiceEnvelope.FunctionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolChoiceEnvelope.FunctionCodingKeys and conformance ToolChoiceEnvelope.FunctionCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ToolChoiceEnvelope.NoneCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolChoiceEnvelope.NoneCodingKeys and conformance ToolChoiceEnvelope.NoneCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ToolChoiceEnvelope.NoneCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolChoiceEnvelope.NoneCodingKeys and conformance ToolChoiceEnvelope.NoneCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ToolChoiceEnvelope.RequiredCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolChoiceEnvelope.RequiredCodingKeys and conformance ToolChoiceEnvelope.RequiredCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ToolChoiceEnvelope.RequiredCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolChoiceEnvelope.RequiredCodingKeys and conformance ToolChoiceEnvelope.RequiredCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ToolChoiceEnvelope.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration18ToolChoiceEnvelopeO18FunctionCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration18ToolChoiceEnvelopeO18FunctionCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v31 = *(v3 - 8);
  v32 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v30 = v23 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration18ToolChoiceEnvelopeO18RequiredCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration18ToolChoiceEnvelopeO18RequiredCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v27 = v23 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration18ToolChoiceEnvelopeO19AutomaticCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration18ToolChoiceEnvelopeO19AutomaticCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v23 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration18ToolChoiceEnvelopeO14NoneCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration18ToolChoiceEnvelopeO14NoneCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v24 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v23 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration18ToolChoiceEnvelopeO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration18ToolChoiceEnvelopeO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v33 = *(v13 - 8);
  v34 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v15 = v23 - v14;
  v16 = v1[1];
  v23[1] = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ToolChoiceEnvelope.CodingKeys and conformance ToolChoiceEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  switch(v16)
  {
    case 0:
      v35 = 0;
      lazy protocol witness table accessor for type ToolChoiceEnvelope.NoneCodingKeys and conformance ToolChoiceEnvelope.NoneCodingKeys();
      v18 = v34;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v24 + 8))(v12, v10);
      return (*(v33 + 8))(v15, v18);
    case 1:
      v36 = 1;
      lazy protocol witness table accessor for type ToolChoiceEnvelope.AutomaticCodingKeys and conformance ToolChoiceEnvelope.AutomaticCodingKeys();
      v18 = v34;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v25 + 8))(v9, v26);
      return (*(v33 + 8))(v15, v18);
    case 2:
      v37 = 2;
      lazy protocol witness table accessor for type ToolChoiceEnvelope.RequiredCodingKeys and conformance ToolChoiceEnvelope.RequiredCodingKeys();
      v17 = v27;
      v18 = v34;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v28 + 8))(v17, v29);
      return (*(v33 + 8))(v15, v18);
  }

  v38 = 3;
  lazy protocol witness table accessor for type ToolChoiceEnvelope.FunctionCodingKeys and conformance ToolChoiceEnvelope.FunctionCodingKeys();
  v20 = v30;
  v21 = v34;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  v22 = v32;
  KeyedEncodingContainer.encode(_:forKey:)();
  (*(v31 + 8))(v20, v22);
  return (*(v33 + 8))(v15, v21);
}

uint64_t ToolChoiceEnvelope.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v47 = a2;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration18ToolChoiceEnvelopeO18FunctionCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration18ToolChoiceEnvelopeO18FunctionCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v44 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v46 = &v37 - v3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration18ToolChoiceEnvelopeO18RequiredCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration18ToolChoiceEnvelopeO18RequiredCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v39 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v37 - v4;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration18ToolChoiceEnvelopeO19AutomaticCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration18ToolChoiceEnvelopeO19AutomaticCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v41 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v6 = &v37 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration18ToolChoiceEnvelopeO14NoneCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration18ToolChoiceEnvelopeO14NoneCodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v40 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v37 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration18ToolChoiceEnvelopeO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration18ToolChoiceEnvelopeO10CodingKeys33_FCE651B3B8F212418F5C81F0A4785E63LLOGMR);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v37 - v12;
  v14 = a1[3];
  v50 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  lazy protocol witness table accessor for type ToolChoiceEnvelope.CodingKeys and conformance ToolChoiceEnvelope.CodingKeys();
  v15 = v49;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v15)
  {
    v16 = v9;
    v37 = v7;
    v38 = 0;
    v17 = v6;
    v18 = v45;
    v19 = v46;
    v49 = v11;
    v20 = v47;
    v21 = KeyedDecodingContainer.allKeys.getter();
    v22 = (2 * *(v21 + 16)) | 1;
    v51 = v21;
    v52 = v21 + 32;
    v53 = 0;
    v54 = v22;
    v23 = specialized Collection<>.popFirst()();
    if (v23 == 4 || v53 != v54 >> 1)
    {
      v28 = type metadata accessor for DecodingError();
      swift_allocError();
      v30 = v29;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
      *v30 = &type metadata for ToolChoiceEnvelope;
      KeyedDecodingContainer.codingPath.getter();
      DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
      (*(*(v28 - 8) + 104))(v30, *MEMORY[0x1E69E6AF8], v28);
      swift_willThrow();
LABEL_9:
      (*(v49 + 8))(v13, v10);
LABEL_10:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_0(v50);
    }

    if (v23 <= 1u)
    {
      if (v23)
      {
        v55 = 1;
        lazy protocol witness table accessor for type ToolChoiceEnvelope.AutomaticCodingKeys and conformance ToolChoiceEnvelope.AutomaticCodingKeys();
        v34 = v38;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v34)
        {
          (*(v41 + 8))(v17, v43);
          (*(v49 + 8))(v13, v10);
          swift_unknownObjectRelease();
          v25 = 0;
          v26 = 1;
          v27 = v20;
          goto LABEL_21;
        }
      }

      else
      {
        v55 = 0;
        lazy protocol witness table accessor for type ToolChoiceEnvelope.NoneCodingKeys and conformance ToolChoiceEnvelope.NoneCodingKeys();
        v24 = v38;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v24)
        {
          (*(v40 + 8))(v16, v37);
          (*(v49 + 8))(v13, v10);
          swift_unknownObjectRelease();
          v25 = 0;
          v26 = 0;
          v27 = v20;
LABEL_21:
          *v27 = v25;
          v27[1] = v26;
          return __swift_destroy_boxed_opaque_existential_0(v50);
        }
      }

      goto LABEL_9;
    }

    v27 = v20;
    v32 = v49;
    if (v23 == 2)
    {
      v55 = 2;
      lazy protocol witness table accessor for type ToolChoiceEnvelope.RequiredCodingKeys and conformance ToolChoiceEnvelope.RequiredCodingKeys();
      v33 = v38;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v33)
      {
        (*(v39 + 8))(v18, v42);
        v27 = v20;
        (*(v32 + 8))(v13, v10);
        swift_unknownObjectRelease();
        v25 = 0;
        v26 = 2;
        goto LABEL_21;
      }

      (*(v32 + 8))(v13, v10);
      goto LABEL_10;
    }

    v55 = 3;
    lazy protocol witness table accessor for type ToolChoiceEnvelope.FunctionCodingKeys and conformance ToolChoiceEnvelope.FunctionCodingKeys();
    v35 = v38;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    if (!v35)
    {
      v25 = KeyedDecodingContainer.decode(_:forKey:)();
      v26 = v36;
      (*(v44 + 8))(v19, v48);
      (*(v32 + 8))(v13, v10);
      swift_unknownObjectRelease();
      goto LABEL_21;
    }

    (*(v32 + 8))(v13, v10);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_0(v50);
}

uint64_t UsageEnvelope.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration13UsageEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration13UsageEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type UsageEnvelope.CodingKeys and conformance UsageEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v12 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v3)
  {
    v11 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance UsageEnvelope.CodingKeys()
{
  if (*v0)
  {
    return 0xD000000000000014;
  }

  else
  {
    return 0xD000000000000010;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance UsageEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000010 && 0x80000001ABA41BC0 == a2 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000014 && 0x80000001ABA41BE0 == a2)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance UsageEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UsageEnvelope.CodingKeys and conformance UsageEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance UsageEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type UsageEnvelope.CodingKeys and conformance UsageEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance UsageEnvelope@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = specialized UsageEnvelope.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t ModerationEnvelope.ProbabilityEnvelope.encode(to:)(void *a1, int a2)
{
  v29 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityG0O14HighCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityG0O14HighCodingKeysOGMR);
  v27 = *(v3 - 8);
  v28 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v26 = &v20 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityG0O16MediumCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityG0O16MediumCodingKeysOGMR);
  v24 = *(v5 - 8);
  v25 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v23 = &v20 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityG0O13LowCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityG0O13LowCodingKeysOGMR);
  v21 = *(v7 - 8);
  v22 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityG0O20NegligibleCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityG0O20NegligibleCodingKeysOGMR);
  v20 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v20 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityG0O10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityG0O10CodingKeysOGMR);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v20 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ModerationEnvelope.ProbabilityEnvelope.CodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v29 > 1u)
  {
    if (v29 == 2)
    {
      v32 = 2;
      lazy protocol witness table accessor for type ModerationEnvelope.ProbabilityEnvelope.MediumCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.MediumCodingKeys();
      v9 = v23;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v18 = v24;
      v17 = v25;
    }

    else
    {
      v33 = 3;
      lazy protocol witness table accessor for type ModerationEnvelope.ProbabilityEnvelope.HighCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.HighCodingKeys();
      v9 = v26;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v18 = v27;
      v17 = v28;
    }

    goto LABEL_8;
  }

  if (v29)
  {
    v31 = 1;
    lazy protocol witness table accessor for type ModerationEnvelope.ProbabilityEnvelope.LowCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.LowCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v18 = v21;
    v17 = v22;
LABEL_8:
    (*(v18 + 8))(v9, v17);
    return (*(v14 + 8))(v16, v13);
  }

  v30 = 0;
  lazy protocol witness table accessor for type ModerationEnvelope.ProbabilityEnvelope.NegligibleCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.NegligibleCodingKeys();
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  (*(v20 + 8))(v12, v10);
  return (*(v14 + 8))(v16, v13);
}

uint64_t ModerationEnvelope.encode(to:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ModerationEnvelope.CodingKeys and conformance ModerationEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityD0OGMd, &_sSDySS15TokenGeneration18ModerationEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV011ProbabilityD0OGMR);
  lazy protocol witness table accessor for type [String : ModerationEnvelope.ProbabilityEnvelope] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : ModerationEnvelope.ProbabilityEnvelope] and conformance <> [A : B], lazy protocol witness table accessor for type ModerationEnvelope.ProbabilityEnvelope and conformance ModerationEnvelope.ProbabilityEnvelope, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t FinishReasonEnvelope.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v33 = a3;
  v32 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration20FinishReasonEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO21InvokedToolCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration20FinishReasonEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO21InvokedToolCodingKeysOGMR);
  v30 = *(v4 - 8);
  v31 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v29 = &v23 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration20FinishReasonEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO38ExceededMaximumAllowedTokensCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration20FinishReasonEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO38ExceededMaximumAllowedTokensCodingKeysOGMR);
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v24 = &v23 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration20FinishReasonEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO33EncounteredStopSequenceCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration20FinishReasonEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO33EncounteredStopSequenceCodingKeysOGMR);
  v25 = *(v8 - 8);
  v26 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v23 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration20FinishReasonEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO012ProducedStopD10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration20FinishReasonEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO012ProducedStopD10CodingKeysOGMR);
  v23 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration20FinishReasonEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration20FinishReasonEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMR);
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v23 - v16;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type FinishReasonEnvelope.CodingKeys and conformance FinishReasonEnvelope.CodingKeys();
  v18 = v33;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  if (v18)
  {
    if (v18 == 1)
    {
      v36 = 2;
      lazy protocol witness table accessor for type FinishReasonEnvelope.ExceededMaximumAllowedTokensCodingKeys and conformance FinishReasonEnvelope.ExceededMaximumAllowedTokensCodingKeys();
      v20 = v24;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v27 + 8))(v20, v28);
    }

    else if (v18 == 2)
    {
      v37 = 3;
      lazy protocol witness table accessor for type FinishReasonEnvelope.InvokedToolCodingKeys and conformance FinishReasonEnvelope.InvokedToolCodingKeys();
      v19 = v29;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      (*(v30 + 8))(v19, v31);
    }

    else
    {
      v35 = 1;
      lazy protocol witness table accessor for type FinishReasonEnvelope.EncounteredStopSequenceCodingKeys and conformance FinishReasonEnvelope.EncounteredStopSequenceCodingKeys();
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v21 = v26;
      KeyedEncodingContainer.encode(_:forKey:)();
      (*(v25 + 8))(v10, v21);
    }
  }

  else
  {
    v34 = 0;
    lazy protocol witness table accessor for type FinishReasonEnvelope.ProducedStopTokenCodingKeys and conformance FinishReasonEnvelope.ProducedStopTokenCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v23 + 8))(v13, v11);
  }

  return (*(v15 + 8))(v17, v14);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ModerationEnvelope.ProbabilityEnvelope.CodingKeys()
{
  v1 = 0x626967696C67656ELL;
  v2 = 0x6D756964656DLL;
  if (*v0 != 2)
  {
    v2 = 1751607656;
  }

  if (*v0)
  {
    v1 = 7827308;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ModerationEnvelope.ProbabilityEnvelope.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized ModerationEnvelope.ProbabilityEnvelope.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ModerationEnvelope.ProbabilityEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModerationEnvelope.ProbabilityEnvelope.CodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModerationEnvelope.ProbabilityEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModerationEnvelope.ProbabilityEnvelope.CodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ModerationEnvelope.ProbabilityEnvelope.HighCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModerationEnvelope.ProbabilityEnvelope.HighCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.HighCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModerationEnvelope.ProbabilityEnvelope.HighCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModerationEnvelope.ProbabilityEnvelope.HighCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.HighCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ModerationEnvelope.ProbabilityEnvelope.LowCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModerationEnvelope.ProbabilityEnvelope.LowCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.LowCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModerationEnvelope.ProbabilityEnvelope.LowCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModerationEnvelope.ProbabilityEnvelope.LowCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.LowCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ModerationEnvelope.ProbabilityEnvelope.MediumCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModerationEnvelope.ProbabilityEnvelope.MediumCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.MediumCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModerationEnvelope.ProbabilityEnvelope.MediumCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModerationEnvelope.ProbabilityEnvelope.MediumCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.MediumCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ModerationEnvelope.ProbabilityEnvelope.NegligibleCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModerationEnvelope.ProbabilityEnvelope.NegligibleCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.NegligibleCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModerationEnvelope.ProbabilityEnvelope.NegligibleCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModerationEnvelope.ProbabilityEnvelope.NegligibleCodingKeys and conformance ModerationEnvelope.ProbabilityEnvelope.NegligibleCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *protocol witness for Decodable.init(from:) in conformance ModerationEnvelope.ProbabilityEnvelope@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = specialized ModerationEnvelope.ProbabilityEnvelope.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ModerationEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x73676E69746172 && a2 == 0xE700000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ModerationEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModerationEnvelope.CodingKeys and conformance ModerationEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ModerationEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ModerationEnvelope.CodingKeys and conformance ModerationEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *protocol witness for Decodable.init(from:) in conformance ModerationEnvelope@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = specialized ModerationEnvelope.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FinishReasonEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FinishReasonEnvelope.CodingKeys and conformance FinishReasonEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FinishReasonEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FinishReasonEnvelope.CodingKeys and conformance FinishReasonEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FinishReasonEnvelope.EncounteredStopSequenceCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FinishReasonEnvelope.EncounteredStopSequenceCodingKeys and conformance FinishReasonEnvelope.EncounteredStopSequenceCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FinishReasonEnvelope.EncounteredStopSequenceCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FinishReasonEnvelope.EncounteredStopSequenceCodingKeys and conformance FinishReasonEnvelope.EncounteredStopSequenceCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FinishReasonEnvelope.ExceededMaximumAllowedTokensCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FinishReasonEnvelope.ExceededMaximumAllowedTokensCodingKeys and conformance FinishReasonEnvelope.ExceededMaximumAllowedTokensCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FinishReasonEnvelope.ExceededMaximumAllowedTokensCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FinishReasonEnvelope.ExceededMaximumAllowedTokensCodingKeys and conformance FinishReasonEnvelope.ExceededMaximumAllowedTokensCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FinishReasonEnvelope.InvokedToolCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FinishReasonEnvelope.InvokedToolCodingKeys and conformance FinishReasonEnvelope.InvokedToolCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FinishReasonEnvelope.InvokedToolCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FinishReasonEnvelope.InvokedToolCodingKeys and conformance FinishReasonEnvelope.InvokedToolCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance FinishReasonEnvelope.ProducedStopTokenCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FinishReasonEnvelope.ProducedStopTokenCodingKeys and conformance FinishReasonEnvelope.ProducedStopTokenCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance FinishReasonEnvelope.ProducedStopTokenCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type FinishReasonEnvelope.ProducedStopTokenCodingKeys and conformance FinishReasonEnvelope.ProducedStopTokenCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t RequestMetadataEnvelope.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration23RequestMetadataEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration23RequestMetadataEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type RequestMetadataEnvelope.CodingKeys and conformance RequestMetadataEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v2)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = 2;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v11 = *(v3 + 48);
    v10[15] = 3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B], MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance RequestMetadataEnvelope.CodingKeys()
{
  v1 = 0x6F666E4972657375;
  if (*v0 == 2)
  {
    v1 = 0xD000000000000017;
  }

  v2 = 0xD000000000000014;
  if (*v0)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0 <= 1u)
  {
    return v2;
  }

  else
  {
    return v1;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance RequestMetadataEnvelope.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized RequestMetadataEnvelope.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance RequestMetadataEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RequestMetadataEnvelope.CodingKeys and conformance RequestMetadataEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance RequestMetadataEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type RequestMetadataEnvelope.CodingKeys and conformance RequestMetadataEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double protocol witness for Decodable.init(from:) in conformance RequestMetadataEnvelope@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  specialized RequestMetadataEnvelope.init(from:)(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    result = *&v7;
    *(a1 + 32) = v7;
    *(a1 + 48) = v8;
  }

  return result;
}

uint64_t closure #2 in PromptEnvelope.unseal(_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for Prompt.AttachmentContent();
  MEMORY[0x1EEE9AC00](v3 - 8);
  PromptEnvelope.AttachmentContentEnvelope.unseal(_:)(a2, (&v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0)));
  type metadata accessor for PromptEnvelope.AttachmentEnvelope(0);
  return Prompt.Attachment.init(content:position:priority:)();
}

uint64_t PromptEnvelope.DelimiterEnvelope.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV09DelimiterG0V10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV09DelimiterG0V10CodingKeysOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptEnvelope.DelimiterEnvelope.CodingKeys and conformance PromptEnvelope.DelimiterEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v8[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[12] = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    type metadata accessor for PromptEnvelope.DelimiterEnvelope(0);
    v8[11] = 4;
    type metadata accessor for Locale();
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770], MEMORY[0x1E6969778]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
    v8[10] = 5;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t PromptEnvelope.DelimiterEnvelope.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v18 - v5;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV09DelimiterG0V10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV09DelimiterG0V10CodingKeysOGMR);
  v7 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v9 = &v18 - v8;
  v10 = type metadata accessor for PromptEnvelope.DelimiterEnvelope(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1[3];
  v21 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  lazy protocol witness table accessor for type PromptEnvelope.DelimiterEnvelope.CodingKeys and conformance PromptEnvelope.DelimiterEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(v21);
  }

  v27 = 0;
  *v12 = KeyedDecodingContainer.decode(_:forKey:)();
  v12[1] = v14;
  v26 = 1;
  v12[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v12[3] = v15;
  v25 = 2;
  v12[4] = KeyedDecodingContainer.decode(_:forKey:)();
  v24 = 3;
  v12[5] = KeyedDecodingContainer.decode(_:forKey:)();
  type metadata accessor for Locale();
  v23 = 4;
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770], MEMORY[0x1E6969790]);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v6, v12 + *(v10 + 32), &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v22 = 5;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v7 + 8))(v9, v20);
  *(v12 + *(v10 + 36)) = v16 & 1;
  outlined init with copy of DocumentResourceEnvelope(v12, v19, type metadata accessor for PromptEnvelope.DelimiterEnvelope);
  __swift_destroy_boxed_opaque_existential_0(v21);
  return outlined destroy of DocumentResourceEnvelope(v12, type metadata accessor for PromptEnvelope.DelimiterEnvelope);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PromptEnvelope.DelimiterEnvelope.CodingKeys()
{
  v1 = *v0;
  v2 = 0x696669746E656469;
  v3 = 0x797469726F697270;
  v4 = 0x656C61636F6CLL;
  if (v1 != 4)
  {
    v4 = 0x697461746F6E6E61;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x65636E6174736E69;
  if (v1 != 1)
  {
    v5 = 0x6E6F697469736F70;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptEnvelope.DelimiterEnvelope.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized PromptEnvelope.DelimiterEnvelope.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptEnvelope.DelimiterEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptEnvelope.DelimiterEnvelope.CodingKeys and conformance PromptEnvelope.DelimiterEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptEnvelope.DelimiterEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptEnvelope.DelimiterEnvelope.CodingKeys and conformance PromptEnvelope.DelimiterEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PromptEnvelope.AttachmentContentEnvelope.init(sealing:xpcData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v173 = a2;
  v188 = a3;
  v184 = type metadata accessor for Prompt.ToolCall.Function();
  v151 = *(v184 - 8);
  MEMORY[0x1EEE9AC00](v184);
  v183 = &v145 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v182 = &v145 - v7;
  v186 = type metadata accessor for Prompt.ToolCall.Kind();
  v150 = *(v186 - 8);
  MEMORY[0x1EEE9AC00](v186);
  v181 = &v145 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v185 = &v145 - v10;
  v180 = type metadata accessor for Prompt.ToolCall();
  v149 = *(v180 - 8);
  MEMORY[0x1EEE9AC00](v180);
  v179 = &v145 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v178 = &v145 - v13;
  v187 = type metadata accessor for PromptEnvelope.AttachmentContentEnvelope(0);
  MEMORY[0x1EEE9AC00](v187);
  v152 = (&v145 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v156 = type metadata accessor for Prompt.ToolDefinitions();
  v155 = *(v156 - 8);
  MEMORY[0x1EEE9AC00](v156);
  v153 = &v145 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v154 = &v145 - v17;
  v18 = type metadata accessor for Prompt.ResponseFormat.Kind();
  MEMORY[0x1EEE9AC00](v18 - 8);
  v159 = &v145 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = type metadata accessor for Prompt.ResponseFormat();
  v160 = *(v161 - 1);
  MEMORY[0x1EEE9AC00](v161);
  v158 = (&v145 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v21);
  v157 = &v145 - v22;
  v165 = type metadata accessor for Prompt.PreprocessedImageAttachment();
  v164 = *(v165 - 8);
  MEMORY[0x1EEE9AC00](v165);
  v163 = &v145 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v24);
  v162 = &v145 - v25;
  v26 = type metadata accessor for Prompt.ImageEmbeddingAttachment.Encoding();
  MEMORY[0x1EEE9AC00](v26 - 8);
  v174 = &v145 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v177 = type metadata accessor for Prompt.ImageEmbeddingAttachment();
  v176 = *(v177 - 8);
  MEMORY[0x1EEE9AC00](v177);
  v29 = &v145 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v175 = &v145 - v31;
  v169 = type metadata accessor for UUID();
  v167 = *(v169 - 8);
  MEMORY[0x1EEE9AC00](v169);
  v166 = (&v145 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0));
  v172 = type metadata accessor for Prompt.ImageSurfaceAttachment();
  v171 = *(v172 - 8);
  MEMORY[0x1EEE9AC00](v172);
  v170 = &v145 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v34);
  v168 = &v145 - v35;
  v36 = type metadata accessor for Prompt.ImageAttachment.Format();
  MEMORY[0x1EEE9AC00](v36 - 8);
  v38 = &v145 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = type metadata accessor for Prompt.ImageAttachment();
  v40 = *(v39 - 8);
  MEMORY[0x1EEE9AC00](v39);
  v42 = &v145 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v145 - v44;
  v46 = type metadata accessor for Prompt.AttachmentContent();
  v47 = *(v46 - 8);
  v48 = MEMORY[0x1EEE9AC00](v46);
  v50 = &v145 - ((v49 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v47 + 16))(v50, a1, v46, v48);
  v51 = (*(v47 + 88))(v50, v46);
  if (v51 == *MEMORY[0x1E69DA770])
  {
    (*(v47 + 96))(v50, v46);
    (*(v40 + 32))(v45, v50, v39);
    (*(v40 + 16))(v42, v45, v39);
    Prompt.ImageAttachment.format.getter();
    LOBYTE(v194[0]) = specialized ImageFormatEnvelope.init(sealing:)(v38, v52) & 1;
    v53 = Prompt.ImageAttachment.data.getter();
    v55 = v54;
    (*(v47 + 8))(a1, v46);
    v56 = *(v40 + 8);
    v56(v42, v39);
    v56(v45, v39);
    v57 = v188;
    *v188 = v194[0];
    v57[1] = v53;
    v57[2] = v55;
    return swift_storeEnumTagMultiPayload();
  }

  v146 = v47;
  v147 = v46;
  v148 = a1;
  if (v51 == *MEMORY[0x1E69DA750])
  {
    v58 = v146;
    v59 = v147;
    (*(v146 + 96))(v50, v147);
    v60 = v176;
    v61 = v175;
    v62 = v177;
    (*(v176 + 32))(v175, v50, v177);
    (*(v60 + 16))(v29, v61, v62);
    v63 = v174;
    Prompt.ImageEmbeddingAttachment.encoding.getter();
    LOBYTE(v194[0]) = specialized ImageEmbeddingEncodingEnvelope.init(sealing:)(v63, v64) & 1;
    v186 = Prompt.ImageEmbeddingAttachment.data.getter();
    v185 = v65;
    v66 = Prompt.ImageEmbeddingAttachment.tokenCount.getter();
    v67 = Prompt.ResponseFormat.GrammarDetails.grammar.getter();
    v69 = v68;
    (*(v58 + 8))(v148, v59);
    v70 = *(v60 + 8);
    v70(v29, v62);
    v70(v61, v62);
    v71 = v188;
    *v188 = v194[0];
    v72 = v185;
    v71[1] = v186;
    v71[2] = v72;
    v71[3] = v66;
    v71[4] = v67;
    v71[5] = v69;
    return swift_storeEnumTagMultiPayload();
  }

  v73 = v146;
  if (v51 == *MEMORY[0x1E69DA748])
  {
    v74 = v147;
    (*(v146 + 96))(v50, v147);
    v75 = v171;
    v76 = v168;
    v77 = v172;
    (*(v171 + 32))(v168, v50, v172);
    v78 = v170;
    (*(v75 + 16))(v170, v76, v77);
    v79 = Prompt.ImageSurfaceAttachment.surface.getter();
    v80 = v166;
    UUID.init()();
    v81 = v73;
    v82 = UUID.uuidString.getter();
    v84 = v83;
    (*(v167 + 8))(v80, v169);
    v85 = v79;
    IOSurfaceCreateXPCObject(v85);

    XPCDictionary.subscript.setter();

    (*(v81 + 8))(v148, v74);
    v86 = *(v75 + 8);
    v86(v78, v77);
    v86(v76, v77);
    v87 = v188;
    *v188 = v82;
    v87[1] = v84;
    return swift_storeEnumTagMultiPayload();
  }

  v88 = v147;
  if (v51 == *MEMORY[0x1E69DA768])
  {
    (*(v146 + 96))(v50, v147);
    v89 = v164;
    v90 = v162;
    v91 = v165;
    (*(v164 + 32))(v162, v50, v165);
    v92 = v163;
    (*(v89 + 16))(v163, v90, v91);
    v93 = Prompt.PreprocessedImageAttachment.data.getter();
    v94 = Prompt.PreprocessedImageAttachment.shape.getter();
    (*(v73 + 8))(v148, v88);
    v95 = *(v89 + 8);
    v95(v92, v91);
    v95(v90, v91);
    v96 = v188;
    *v188 = v93;
    v96[1] = v94;
    return swift_storeEnumTagMultiPayload();
  }

  v97 = v148;
  if (v51 == *MEMORY[0x1E69DA758])
  {
    (*(v146 + 96))(v50, v147);
    v98 = v160;
    v99 = v157;
    v100 = v161;
    (*(v160 + 32))(v157, v50, v161);
    v101 = v158;
    (*(v98 + 16))(v158, v99, v100);
    v102 = v159;
    Prompt.ResponseFormat.kind.getter();
    ResponseFormatEnvelope.KindEnvelope.init(sealing:)(v102, v188);
    (*(v73 + 8))(v97, v88);
    v103 = *(v98 + 8);
    v103(v101, v100);
    v103(v99, v100);
    return swift_storeEnumTagMultiPayload();
  }

  if (v51 == *MEMORY[0x1E69DA760])
  {
    (*(v146 + 96))(v50, v147);
    v104 = v155;
    v105 = v154;
    v106 = v156;
    (*(v155 + 32))(v154, v50, v156);
    v107 = v153;
    (*(v104 + 16))(v153, v105, v106);
    v108 = specialized ToolDefinitionsEnvelope.init(sealing:)(v107);
    (*(v73 + 8))(v97, v88);
    (*(v104 + 8))(v105, v106);
    *v188 = v108;
    return swift_storeEnumTagMultiPayload();
  }

  v110 = v188;
  if (v51 != *MEMORY[0x1E69DA778])
  {
    goto LABEL_29;
  }

  (*(v146 + 96))(v50, v147);
  v111 = *v50;
  v112 = v73;
  v113 = *(*v50 + 16);
  v114 = v185;
  if (v113)
  {
    v195 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v113, 0);
    v115 = v186;
    if (*(v111 + 16))
    {
      v116 = 0;
      v117 = (v111 + ((*(v149 + 80) + 32) & ~*(v149 + 80)));
      v168 = (v149 + 16);
      v167 = v150 + 16;
      v166 = (v150 + 88);
      LODWORD(v165) = *MEMORY[0x1E69DA808];
      v164 = v150 + 96;
      v163 = (v151 + 32);
      v162 = (v151 + 16);
      v161 = (v151 + 8);
      v160 = v150 + 8;
      v159 = (v149 + 8);
      v118 = v195;
      v156 = *(v149 + 72);
      v158 = *(v149 + 16);
      v157 = (v113 - 1);
      v169 = v111;
      while (1)
      {
        v176 = v118;
        v177 = v116;
        v119 = v178;
        v170 = v117;
        v120 = v180;
        v121 = v158;
        v158(v178);
        v122 = v179;
        v121(v179, v119, v120);
        v175 = Prompt.ToolCall.id.getter();
        v174 = v123;
        Prompt.ToolCall.kind.getter();
        v124 = v181;
        (*v167)(v181, v114, v115);
        v125 = (*v166)(v124, v115);
        if (v125 != v165)
        {
          break;
        }

        (*v164)(v124, v115);
        v126 = v182;
        v127 = v184;
        (*v163)(v182, v124, v184);
        v128 = v183;
        (*v162)(v183, v126, v127);
        v173 = Prompt.ToolCall.Function.name.getter();
        v172 = v129;
        v171 = Prompt.ToolCall.Function.arguments.getter();
        v131 = v130;
        v132 = *v161;
        (*v161)(v128, v127);
        v133 = v126;
        v115 = v186;
        v132(v133, v127);
        (*v160)(v114, v115);
        v134 = Prompt.ToolCall._userInfo.getter();
        v136 = v135;
        v137 = *v159;
        (*v159)(v122, v120);
        v137(v119, v120);
        outlined consume of Data?(0, 0xF000000000000000);
        *&v190 = v175;
        *(&v190 + 1) = v174;
        *&v191 = v173;
        *(&v191 + 1) = v172;
        *&v192 = v171;
        *(&v192 + 1) = v131;
        *&v193 = v134;
        *(&v193 + 1) = v136;
        v194[0] = v175;
        v194[1] = v174;
        v194[2] = v173;
        v194[3] = v172;
        v194[4] = v171;
        v194[5] = v131;
        v194[6] = v134;
        v194[7] = v136;
        outlined init with copy of ToolCallEnvelope(&v190, v189);
        outlined destroy of ToolCallEnvelope(v194);
        v118 = v176;
        v195 = v176;
        v139 = *(v176 + 16);
        v138 = *(v176 + 24);
        if (v139 >= v138 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v138 > 1), v139 + 1, 1);
          v118 = v195;
        }

        *(v118 + 16) = v139 + 1;
        v140 = (v118 + (v139 << 6));
        v141 = v190;
        v142 = v191;
        v143 = v193;
        v140[4] = v192;
        v140[5] = v143;
        v140[2] = v141;
        v140[3] = v142;
        if (v157 == v177)
        {
          (*(v146 + 8))(v148, v147);

          v110 = v188;
          goto LABEL_26;
        }

        v116 = v177 + 1;
        v117 = &v170[v156];
        v114 = v185;
        if ((v177 + 1) >= *(v169 + 16))
        {
          goto LABEL_27;
        }
      }
    }

    else
    {
LABEL_27:
      __break(1u);
    }

    _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
LABEL_29:
    result = _diagnoseUnexpectedEnumCase<A>(type:)();
    __break(1u);
    return result;
  }

  (*(v112 + 8))(v97, v88);
  v118 = MEMORY[0x1E69E7CC0];
LABEL_26:
  v144 = v152;
  *v152 = v118;
  swift_storeEnumTagMultiPayload();
  return outlined init with take of DocumentRegistrationEnvelope(v144, v110, type metadata accessor for PromptEnvelope.AttachmentContentEnvelope);
}

uint64_t PromptEnvelope.AttachmentContentEnvelope.unseal(_:)@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v54 = a1;
  v51 = type metadata accessor for Prompt.ToolCall.Kind();
  v47 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v50 = &v43 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for Prompt.ToolCall();
  v52 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v45 = &v43 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Prompt.ResponseFormat.Kind();
  MEMORY[0x1EEE9AC00](v5 - 8);
  v53 = &v43 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for ResponseFormatEnvelope(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Prompt.ImageEmbeddingAttachment.Encoding();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Prompt.ImageAttachment.Format();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for PromptEnvelope.AttachmentContentEnvelope(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = (&v43 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of DocumentResourceEnvelope(v55, v20, type metadata accessor for PromptEnvelope.AttachmentContentEnvelope);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload > 4)
    {
      if (EnumCaseMultiPayload == 5)
      {
        ToolDefinitionsEnvelope.unseal()(*v20, a2);

        v22 = MEMORY[0x1E69DA760];
      }

      else
      {
        v30 = *v20;
        v31 = *(*v20 + 16);
        if (v31)
        {
          v44 = a2;
          v56 = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v31, 0);
          v32 = v56;
          v48 = *MEMORY[0x1E69DA808];
          v46 = v52 + 32;
          v47 += 13;
          v43 = v30;
          v33 = (v30 + 48);
          v34 = v45;
          do
          {
            v35 = *(v33 - 1);
            v54 = *(v33 - 2);
            v55 = v31;
            v53 = v33[2];
            v36 = v33[4];
            v37 = v33[5];

            outlined copy of Data?(v36, v37);

            v38 = v50;
            Prompt.ToolCall.Function.init(name:arguments:)();
            (*v47)(v38, v48, v51);
            MEMORY[0x1AC5A36E0](v54, v35, v38);
            outlined copy of Data?(v36, v37);
            Prompt.ToolCall._userInfo.setter();

            outlined consume of Data?(v36, v37);
            v56 = v32;
            v40 = *(v32 + 16);
            v39 = *(v32 + 24);
            if (v40 >= v39 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v39 > 1), v40 + 1, 1);
              v32 = v56;
            }

            *(v32 + 16) = v40 + 1;
            (*(v52 + 32))(v32 + ((*(v52 + 80) + 32) & ~*(v52 + 80)) + *(v52 + 72) * v40, v34, v49);
            v33 += 8;
            v31 = v55 - 1;
          }

          while (v55 != 1);

          a2 = v44;
        }

        else
        {

          v32 = MEMORY[0x1E69E7CC0];
        }

        *a2 = v32;
        v22 = MEMORY[0x1E69DA778];
      }
    }

    else if (EnumCaseMultiPayload == 3)
    {
      Prompt.PreprocessedImageAttachment.init(data:shape:)();
      v22 = MEMORY[0x1E69DA768];
    }

    else
    {
      outlined init with take of DocumentRegistrationEnvelope(v20, v9, type metadata accessor for ResponseFormatEnvelope);
      ResponseFormatEnvelope.KindEnvelope.unseal()(v53);
      Prompt.ResponseFormat.init(kind:)();
      outlined destroy of DocumentResourceEnvelope(v9, type metadata accessor for ResponseFormatEnvelope);
      v22 = MEMORY[0x1E69DA758];
    }

    goto LABEL_27;
  }

  if (!EnumCaseMultiPayload)
  {
    if (*v20)
    {
      v23 = MEMORY[0x1E69DA728];
    }

    else
    {
      v23 = MEMORY[0x1E69DA730];
    }

    (*(v15 + 104))(v17, *v23, v14);
    Prompt.ImageAttachment.init(format:data:)();
    v22 = MEMORY[0x1E69DA770];
    goto LABEL_27;
  }

  if (EnumCaseMultiPayload == 1)
  {
    ImageSurfaceEnvelope.unsealSurface(_:)(v54, *v20, v20[1]);

    Prompt.ImageSurfaceAttachment.init(surface:)();
    v22 = MEMORY[0x1E69DA748];
LABEL_27:
    v41 = *v22;
    v42 = type metadata accessor for Prompt.AttachmentContent();
    return (*(*(v42 - 8) + 104))(a2, v41, v42);
  }

  v24 = v20[1];
  v25 = v20[2];
  if (*v20)
  {
    v26 = MEMORY[0x1E69DA788];
  }

  else
  {
    v26 = MEMORY[0x1E69DA780];
  }

  (*(v11 + 104))(v13, *v26, v10);
  outlined copy of Data._Representation(v24, v25);

  Prompt.ImageEmbeddingAttachment.init(encoding:data:tokenCount:signature:)();
  outlined consume of Data._Representation(v24, v25);

  v27 = *MEMORY[0x1E69DA750];
  v28 = type metadata accessor for Prompt.AttachmentContent();
  return (*(*(v28 - 8) + 104))(a2, v27, v28);
}

uint64_t PromptEnvelope.AttachmentEnvelope.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV010AttachmentG0V10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV010AttachmentG0V10CodingKeysOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptEnvelope.AttachmentEnvelope.CodingKeys and conformance PromptEnvelope.AttachmentEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  type metadata accessor for PromptEnvelope.AttachmentContentEnvelope(0);
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptEnvelope.AttachmentContentEnvelope and conformance PromptEnvelope.AttachmentContentEnvelope, type metadata accessor for PromptEnvelope.AttachmentContentEnvelope, &protocol conformance descriptor for PromptEnvelope.AttachmentContentEnvelope);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v1)
  {
    type metadata accessor for PromptEnvelope.AttachmentEnvelope(0);
    v8[14] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v8[13] = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t PromptEnvelope.AttachmentEnvelope.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v5 = type metadata accessor for PromptEnvelope.AttachmentContentEnvelope(0);
  MEMORY[0x1EEE9AC00](v5);
  v21 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV010AttachmentG0V10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV010AttachmentG0V10CodingKeysOGMR);
  v19 = *(v7 - 8);
  v20 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v18 - v8;
  v10 = type metadata accessor for PromptEnvelope.AttachmentEnvelope(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptEnvelope.AttachmentEnvelope.CodingKeys and conformance PromptEnvelope.AttachmentEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v3)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v13 = v19;
  v14 = v12;
  v24 = 0;
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptEnvelope.AttachmentContentEnvelope and conformance PromptEnvelope.AttachmentContentEnvelope, type metadata accessor for PromptEnvelope.AttachmentContentEnvelope, &protocol conformance descriptor for PromptEnvelope.AttachmentContentEnvelope);
  v15 = v20;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  outlined init with take of DocumentRegistrationEnvelope(v21, v14, type metadata accessor for PromptEnvelope.AttachmentContentEnvelope);
  v23 = 1;
  *(v14 + *(v10 + 20)) = KeyedDecodingContainer.decode(_:forKey:)();
  v22 = 2;
  v16 = KeyedDecodingContainer.decode(_:forKey:)();
  (*(v13 + 8))(v9, v15);
  *(v14 + *(v10 + 24)) = v16;
  outlined init with copy of DocumentResourceEnvelope(v14, v18, type metadata accessor for PromptEnvelope.AttachmentEnvelope);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return outlined destroy of DocumentResourceEnvelope(v14, type metadata accessor for PromptEnvelope.AttachmentEnvelope);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PromptEnvelope.AttachmentEnvelope.CodingKeys()
{
  v1 = 0x6E6F697469736F70;
  if (*v0 != 1)
  {
    v1 = 0x797469726F697270;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x746E65746E6F63;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptEnvelope.AttachmentEnvelope.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized PromptEnvelope.AttachmentEnvelope.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptEnvelope.AttachmentEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptEnvelope.AttachmentEnvelope.CodingKeys and conformance PromptEnvelope.AttachmentEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptEnvelope.AttachmentEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptEnvelope.AttachmentEnvelope.CodingKeys and conformance PromptEnvelope.AttachmentEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ToolDefinitionsEnvelope.unseal()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for GenerationSchema();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v55 = v39 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for Schema();
  v62 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v53 = v39 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = type metadata accessor for Tool.Function();
  v7 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v52 = v39 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = type metadata accessor for FileGenerationParameters();
  v56 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51);
  v50 = v39 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v49 = type metadata accessor for ImageGenerationParameters();
  v59 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v48 = v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = type metadata accessor for ToolDefinitionsEnvelope.ToolEnvelope(0);
  v11 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v13 = v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v63 = v39 - v15;
  v61 = type metadata accessor for Tool();
  v16 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v18 = v39 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = v39 - v20;
  v22 = *(a1 + 16);
  if (v22)
  {
    v39[0] = a2;
    v64 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v22, 0);
    v23 = v64;
    v24 = a1 + ((*(v11 + 80) + 32) & ~*(v11 + 80));
    v44 = (v62 + 8);
    v45 = (v7 + 32);
    v43 = (v7 + 8);
    v58 = *(v11 + 72);
    v42 = (v56 + 32);
    v41 = v56 + 8;
    v40 = (v59 + 32);
    v39[1] = v59 + 8;
    v25 = (v16 + 32);
    v59 = v16;
    v62 = v18;
    v46 = v21;
    v47 = v13;
    do
    {
      v26 = v63;
      outlined init with copy of DocumentResourceEnvelope(v24, v63, type metadata accessor for ToolDefinitionsEnvelope.ToolEnvelope);
      outlined init with copy of DocumentResourceEnvelope(v26, v13, type metadata accessor for ToolDefinitionsEnvelope.ToolEnvelope);
      EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
      if (EnumCaseMultiPayload <= 1)
      {
        if (EnumCaseMultiPayload)
        {
          v29 = v50;
          v28 = v51;
          (*v42)(v50, v13, v51);
          static Tool.fileGenerationTool(parameters:)();
          v30 = &v66;
        }

        else
        {
          v29 = v48;
          v28 = v49;
          (*v40)(v48, v13, v49);
          static Tool.imageGenerationTool(parameters:)();
          v30 = &v65;
        }

        (**(v30 - 32))(v29, v28);
      }

      else if (EnumCaseMultiPayload == 2)
      {
        v31 = v52;
        (*v45)(v52, v13, v57);
        v56 = Tool.Function.name.getter();
        Tool.Function.description.getter();
        Tool.Function.parameters.getter();
        v32 = v53;
        v18 = v62;
        Schema.init(type:)();
        static Tool.function(name:description:parameters:)();
        v13 = v47;

        v21 = v46;

        (*v44)(v32, v54);
        (*v43)(v31, v57);
      }

      else if (EnumCaseMultiPayload == 3)
      {
        static Tool.browser.getter();
      }

      else
      {
        static Tool.imageGenerator.getter();
      }

      v33 = v61;
      outlined destroy of DocumentResourceEnvelope(v63, type metadata accessor for ToolDefinitionsEnvelope.ToolEnvelope);
      v34 = *v25;
      (*v25)(v21, v18, v33);
      v64 = v23;
      v35 = v21;
      v37 = *(v23 + 16);
      v36 = *(v23 + 24);
      if (v37 >= v36 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v36 > 1), v37 + 1, 1);
        v33 = v61;
        v23 = v64;
      }

      *(v23 + 16) = v37 + 1;
      v34((v23 + ((*(v59 + 80) + 32) & ~*(v59 + 80)) + *(v59 + 72) * v37), v35, v33);
      v24 += v58;
      --v22;
      v18 = v62;
      v21 = v35;
    }

    while (v22);
  }

  return Prompt.ToolDefinitions.init(tools:)();
}

uint64_t PromptEnvelope.AttachmentContentEnvelope.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O19ToolCallsCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O19ToolCallsCodingKeysOGMR);
  v72 = *(v2 - 8);
  v73 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v71 = &v59 - v3;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O25ToolDefinitionsCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O25ToolDefinitionsCodingKeysOGMR);
  v69 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v66 = &v59 - v4;
  v68 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O24ResponseFormatCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O24ResponseFormatCodingKeysOGMR);
  v67 = *(v68 - 8);
  MEMORY[0x1EEE9AC00](v68);
  v65 = &v59 - v5;
  v63 = type metadata accessor for ResponseFormatEnvelope(0);
  MEMORY[0x1EEE9AC00](v63);
  v64 = &v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O27PreprocessedImageCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O27PreprocessedImageCodingKeysOGMR);
  v61 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v60 = &v59 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O24ImageEmbeddingCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O24ImageEmbeddingCodingKeysOGMR);
  v77 = *(v8 - 8);
  v78 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v76 = &v59 - v9;
  *&v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O22ImageSurfaceCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O22ImageSurfaceCodingKeysOGMR);
  v59 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v11 = &v59 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O15ImageCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O15ImageCodingKeysOGMR);
  v74 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v59 - v13;
  v15 = type metadata accessor for PromptEnvelope.AttachmentContentEnvelope(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v59 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O10CodingKeysOGMR);
  v19 = *(v18 - 8);
  v81 = v18;
  v82 = v19;
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v59 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.CodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.CodingKeys();
  v79 = v21;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of DocumentResourceEnvelope(v80, v17, type metadata accessor for PromptEnvelope.AttachmentContentEnvelope);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 2)
  {
    v29 = v11;
    v31 = v74;
    v30 = v75;
    v33 = v76;
    v32 = v77;
    v34 = v78;
    if (!EnumCaseMultiPayload)
    {
      v45 = *v17;
      v47 = *(v17 + 1);
      v46 = *(v17 + 2);
      *&v80 = v46;
      LOBYTE(v83) = 0;
      lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.ImageCodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.ImageCodingKeys();
      v48 = v14;
      v49 = v81;
      v50 = v79;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      LOBYTE(v83) = v45;
      *&v84 = v47;
      *(&v84 + 1) = v46;
      lazy protocol witness table accessor for type ImageDataEnvelope and conformance ImageDataEnvelope();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v31 + 8))(v48, v12);
      (*(v82 + 8))(v50, v49);
      return outlined consume of Data._Representation(v47, v80);
    }

    if (EnumCaseMultiPayload == 1)
    {
      v35 = *v17;
      v36 = *(v17 + 1);
      LOBYTE(v83) = 1;
      lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.ImageSurfaceCodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.ImageSurfaceCodingKeys();
      v37 = v81;
      v38 = v79;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v83 = v35;
      *&v84 = v36;
      lazy protocol witness table accessor for type ImageSurfaceEnvelope and conformance ImageSurfaceEnvelope();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v59 + 8))(v29, v30);
      (*(v82 + 8))(v38, v37);
    }

    else
    {
      v52 = *v17;
      v53 = *(v17 + 5);
      LOBYTE(v83) = 2;
      lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.ImageEmbeddingCodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.ImageEmbeddingCodingKeys();
      v80 = *(v17 + 8);
      v75 = *(v17 + 24);
      v54 = v81;
      v55 = v79;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      LOBYTE(v83) = v52;
      v84 = v80;
      v85 = v75;
      *&v75 = v53;
      v86 = v53;
      lazy protocol witness table accessor for type ImageEmbeddingEnvelope and conformance ImageEmbeddingEnvelope();
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v32 + 8))(v33, v34);
      (*(v82 + 8))(v55, v54);
      outlined consume of Data._Representation(v80, *(&v80 + 1));
    }
  }

  else if (EnumCaseMultiPayload > 4)
  {
    v39 = v81;
    v40 = v79;
    v41 = *v17;
    if (EnumCaseMultiPayload == 5)
    {
      LOBYTE(v83) = 5;
      lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.ToolDefinitionsCodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.ToolDefinitionsCodingKeys();
      v42 = v66;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v83 = v41;
      lazy protocol witness table accessor for type ToolDefinitionsEnvelope and conformance ToolDefinitionsEnvelope();
      v43 = v70;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v44 = v69;
    }

    else
    {
      LOBYTE(v83) = 6;
      lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.ToolCallsCodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.ToolCallsCodingKeys();
      v42 = v71;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v83 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15TokenGeneration16ToolCallEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMd, &_sSay15TokenGeneration16ToolCallEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMR);
      lazy protocol witness table accessor for type [ToolCallEnvelope] and conformance <A> [A]();
      v43 = v73;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      v44 = v72;
    }

    (*(v44 + 8))(v42, v43);
    (*(v82 + 8))(v40, v39);
  }

  else
  {
    v23 = v81;
    v24 = v79;
    if (EnumCaseMultiPayload != 3)
    {
      v56 = v64;
      outlined init with take of DocumentRegistrationEnvelope(v17, v64, type metadata accessor for ResponseFormatEnvelope);
      LOBYTE(v83) = 4;
      lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.ResponseFormatCodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.ResponseFormatCodingKeys();
      v57 = v65;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type ResponseFormatEnvelope and conformance ResponseFormatEnvelope, type metadata accessor for ResponseFormatEnvelope, &protocol conformance descriptor for ResponseFormatEnvelope);
      v58 = v68;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      (*(v67 + 8))(v57, v58);
      outlined destroy of DocumentResourceEnvelope(v56, type metadata accessor for ResponseFormatEnvelope);
      return (*(v82 + 8))(v24, v23);
    }

    v25 = *v17;
    v26 = *(v17 + 1);
    LOBYTE(v83) = 3;
    lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.PreprocessedImageCodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.PreprocessedImageCodingKeys();
    v27 = v60;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v83 = v25;
    *&v84 = v26;
    lazy protocol witness table accessor for type PreprocessedImageDataEnvelope and conformance PreprocessedImageDataEnvelope();
    v28 = v62;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v61 + 8))(v27, v28);
    (*(v82 + 8))(v24, v23);
  }
}

uint64_t PromptEnvelope.AttachmentContentEnvelope.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v100 = a2;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O19ToolCallsCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O19ToolCallsCodingKeysOGMR);
  v99 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v111 = &v77 - v3;
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O25ToolDefinitionsCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O25ToolDefinitionsCodingKeysOGMR);
  v96 = *(v97 - 8);
  MEMORY[0x1EEE9AC00](v97);
  v110 = &v77 - v4;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O24ResponseFormatCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O24ResponseFormatCodingKeysOGMR);
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v103 = &v77 - v5;
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O27PreprocessedImageCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O27PreprocessedImageCodingKeysOGMR);
  v92 = *(v93 - 8);
  MEMORY[0x1EEE9AC00](v93);
  v109 = &v77 - v6;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O24ImageEmbeddingCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O24ImageEmbeddingCodingKeysOGMR);
  v91 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v101 = &v77 - v7;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O22ImageSurfaceCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O22ImageSurfaceCodingKeysOGMR);
  v88 = *(v89 - 8);
  MEMORY[0x1EEE9AC00](v89);
  v102 = &v77 - v8;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O15ImageCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O15ImageCodingKeysOGMR);
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v106 = &v77 - v9;
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV017AttachmentContentG0O10CodingKeysOGMR);
  v105 = *(v108 - 8);
  MEMORY[0x1EEE9AC00](v108);
  v11 = &v77 - v10;
  v104 = type metadata accessor for PromptEnvelope.AttachmentContentEnvelope(0);
  MEMORY[0x1EEE9AC00](v104);
  v84 = (&v77 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v13);
  v83 = (&v77 - v14);
  MEMORY[0x1EEE9AC00](v15);
  v85 = &v77 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v77 - v18;
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v77 - v21;
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v77 - v24;
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v77 - v27;
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v77 - v30;
  v32 = a1[3];
  v112 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v32);
  lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.CodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.CodingKeys();
  v107 = v11;
  v33 = v120;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v33)
  {
    goto LABEL_12;
  }

  v78 = v28;
  v79 = v25;
  v80 = v22;
  v81 = v19;
  v34 = v106;
  v120 = 0;
  v35 = v109;
  v36 = v110;
  v37 = v111;
  v82 = v31;
  v39 = v107;
  v38 = v108;
  v40 = KeyedDecodingContainer.allKeys.getter();
  v41 = (2 * *(v40 + 16)) | 1;
  v116 = v40;
  v117 = v40 + 32;
  v118 = 0;
  v119 = v41;
  v42 = specialized Collection<>.popFirst()();
  if (v42 == 7 || v118 != v119 >> 1)
  {
    v46 = type metadata accessor for DecodingError();
    swift_allocError();
    v48 = v47;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v48 = v104;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v46 - 8) + 104))(v48, *MEMORY[0x1E69E6AF8], v46);
    swift_willThrow();
  }

  else
  {
    if (v42 > 2u)
    {
      if (v42 > 4u)
      {
        v55 = v105;
        if (v42 == 5)
        {
          v113[0] = 5;
          lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.ToolDefinitionsCodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.ToolDefinitionsCodingKeys();
          v56 = v38;
          v57 = v120;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v57)
          {
            lazy protocol witness table accessor for type ToolDefinitionsEnvelope and conformance ToolDefinitionsEnvelope();
            v58 = v97;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            (*(v96 + 8))(v36, v58);
            (*(v55 + 8))(v39, v38);
            swift_unknownObjectRelease();
            v73 = v83;
            *v83 = *v113;
            goto LABEL_32;
          }
        }

        else
        {
          v113[0] = 6;
          lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.ToolCallsCodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.ToolCallsCodingKeys();
          v67 = v37;
          v56 = v38;
          v68 = v120;
          KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
          if (!v68)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15TokenGeneration16ToolCallEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMd, &_sSay15TokenGeneration16ToolCallEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLVGMR);
            lazy protocol witness table accessor for type [ToolCallEnvelope] and conformance <A> [A]();
            v69 = v98;
            KeyedDecodingContainer.decode<A>(_:forKey:)();
            (*(v99 + 8))(v67, v69);
            (*(v55 + 8))(v39, v38);
            swift_unknownObjectRelease();
            v73 = v84;
            *v84 = *v113;
            goto LABEL_32;
          }
        }

        (*(v55 + 8))(v39, v56);
        goto LABEL_11;
      }

      v43 = v105;
      if (v42 == 3)
      {
        v113[0] = 3;
        lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.PreprocessedImageCodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.PreprocessedImageCodingKeys();
        v44 = v120;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v44)
        {
          lazy protocol witness table accessor for type PreprocessedImageDataEnvelope and conformance PreprocessedImageDataEnvelope();
          v45 = v93;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v92 + 8))(v35, v45);
          (*(v43 + 8))(v39, v38);
          swift_unknownObjectRelease();
          v73 = v81;
          *v81 = *v113;
LABEL_32:
          swift_storeEnumTagMultiPayload();
          v74 = v73;
          goto LABEL_33;
        }

        goto LABEL_27;
      }

      v113[0] = 4;
      lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.ResponseFormatCodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.ResponseFormatCodingKeys();
      v63 = v103;
      v64 = v120;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (v64)
      {
LABEL_27:
        (*(v43 + 8))(v39, v38);
        goto LABEL_11;
      }

      type metadata accessor for ResponseFormatEnvelope(0);
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type ResponseFormatEnvelope and conformance ResponseFormatEnvelope, type metadata accessor for ResponseFormatEnvelope, &protocol conformance descriptor for ResponseFormatEnvelope);
      v65 = v85;
      v66 = v95;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v94 + 8))(v63, v66);
      (*(v43 + 8))(v39, v38);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v74 = v65;
LABEL_33:
      v75 = v82;
      outlined init with take of DocumentRegistrationEnvelope(v74, v82, type metadata accessor for PromptEnvelope.AttachmentContentEnvelope);
      v76 = v112;
      outlined init with take of DocumentRegistrationEnvelope(v75, v100, type metadata accessor for PromptEnvelope.AttachmentContentEnvelope);
      v49 = v76;
      return __swift_destroy_boxed_opaque_existential_0(v49);
    }

    if (v42)
    {
      v51 = v120;
      if (v42 == 1)
      {
        v113[0] = 1;
        lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.ImageSurfaceCodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.ImageSurfaceCodingKeys();
        v52 = v102;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v51)
        {
          lazy protocol witness table accessor for type ImageSurfaceEnvelope and conformance ImageSurfaceEnvelope();
          v53 = v89;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          v54 = v105;
          (*(v88 + 8))(v52, v53);
          (*(v54 + 8))(v39, v38);
          swift_unknownObjectRelease();
          v70 = *&v113[8];
          v71 = v79;
          *v79 = *v113;
          *(v71 + 1) = v70;
LABEL_31:
          swift_storeEnumTagMultiPayload();
          v74 = v71;
          goto LABEL_33;
        }
      }

      else
      {
        v113[0] = 2;
        lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.ImageEmbeddingCodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.ImageEmbeddingCodingKeys();
        v61 = v101;
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        if (!v51)
        {
          lazy protocol witness table accessor for type ImageEmbeddingEnvelope and conformance ImageEmbeddingEnvelope();
          v62 = v90;
          KeyedDecodingContainer.decode<A>(_:forKey:)();
          (*(v91 + 8))(v61, v62);
          (*(v105 + 8))(v39, v38);
          swift_unknownObjectRelease();
          v72 = v115;
          v71 = v80;
          *v80 = v113[0];
          *(v71 + 8) = *&v113[8];
          *(v71 + 24) = v114;
          *(v71 + 5) = v72;
          goto LABEL_31;
        }
      }
    }

    else
    {
      v113[0] = 0;
      lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.ImageCodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.ImageCodingKeys();
      v59 = v120;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      if (!v59)
      {
        lazy protocol witness table accessor for type ImageDataEnvelope and conformance ImageDataEnvelope();
        v60 = v87;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v86 + 8))(v34, v60);
        (*(v105 + 8))(v39, v38);
        swift_unknownObjectRelease();
        v73 = v78;
        *v78 = v113[0];
        *(v73 + 1) = *&v113[8];
        goto LABEL_32;
      }
    }
  }

  (*(v105 + 8))(v39, v38);
LABEL_11:
  swift_unknownObjectRelease();
LABEL_12:
  v49 = v112;
  return __swift_destroy_boxed_opaque_existential_0(v49);
}

uint64_t PromptEnvelope.encode(to:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14 = a5;
  v15 = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v13 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptEnvelope.CodingKeys and conformance PromptEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v17) = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v5)
  {
    v11 = v14;
    v17 = v15;
    v16 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV09DelimiterD0VGMd, &_sSay15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV09DelimiterD0VGMR);
    lazy protocol witness table accessor for type [PromptEnvelope.DelimiterEnvelope] and conformance <A> [A]();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    v17 = v11;
    v16 = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV010AttachmentD0VGMd, &_sSay15TokenGeneration14PromptEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV010AttachmentD0VGMR);
    lazy protocol witness table accessor for type [PromptEnvelope.AttachmentEnvelope] and conformance <A> [A]();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PromptEnvelope.AttachmentContentEnvelope.CodingKeys()
{
  v1 = *v0;
  v2 = 0x6567616D69;
  v3 = 0x696665446C6F6F74;
  if (v1 != 5)
  {
    v3 = 0x6C6C61436C6F6F74;
  }

  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0x65736E6F70736572;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x7275536567616D69;
  if (v1 != 1)
  {
    v5 = 0x626D456567616D69;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptEnvelope.AttachmentContentEnvelope.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized PromptEnvelope.AttachmentContentEnvelope.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptEnvelope.AttachmentContentEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.CodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptEnvelope.AttachmentContentEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.CodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptEnvelope.AttachmentContentEnvelope.ImageCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.ImageCodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.ImageCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptEnvelope.AttachmentContentEnvelope.ImageCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.ImageCodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.ImageCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptEnvelope.AttachmentContentEnvelope.ImageEmbeddingCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.ImageEmbeddingCodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.ImageEmbeddingCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptEnvelope.AttachmentContentEnvelope.ImageEmbeddingCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.ImageEmbeddingCodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.ImageEmbeddingCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptEnvelope.AttachmentContentEnvelope.ImageSurfaceCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.ImageSurfaceCodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.ImageSurfaceCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptEnvelope.AttachmentContentEnvelope.ImageSurfaceCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.ImageSurfaceCodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.ImageSurfaceCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptEnvelope.AttachmentContentEnvelope.PreprocessedImageCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.PreprocessedImageCodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.PreprocessedImageCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptEnvelope.AttachmentContentEnvelope.PreprocessedImageCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.PreprocessedImageCodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.PreprocessedImageCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptEnvelope.AttachmentContentEnvelope.ResponseFormatCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.ResponseFormatCodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.ResponseFormatCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptEnvelope.AttachmentContentEnvelope.ResponseFormatCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.ResponseFormatCodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.ResponseFormatCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptEnvelope.AttachmentContentEnvelope.ToolCallsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.ToolCallsCodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.ToolCallsCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptEnvelope.AttachmentContentEnvelope.ToolCallsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.ToolCallsCodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.ToolCallsCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptEnvelope.AttachmentContentEnvelope.ToolDefinitionsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.ToolDefinitionsCodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.ToolDefinitionsCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptEnvelope.AttachmentContentEnvelope.ToolDefinitionsCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptEnvelope.AttachmentContentEnvelope.ToolDefinitionsCodingKeys and conformance PromptEnvelope.AttachmentContentEnvelope.ToolDefinitionsCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PromptEnvelope.CodingKeys()
{
  v1 = 0x6574696D696C6564;
  if (*v0 != 1)
  {
    v1 = 0x656D686361747461;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E69727473;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptEnvelope.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized PromptEnvelope.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptEnvelope.CodingKeys and conformance PromptEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptEnvelope.CodingKeys and conformance PromptEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance PromptEnvelope@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = specialized PromptEnvelope.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

void *Prompt.seal(xpcData:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v141 = a1;
  v103 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A0V9ComponentV7PrivacyOSgMd, &_s9PromptKit0A0V9ComponentV7PrivacyOSgMR);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v96 = &v83[-v4];
  v95 = type metadata accessor for UUID();
  v5 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v94 = &v83[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v98 = type metadata accessor for Prompt.ImageSurface();
  v7 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v93 = &v83[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = type metadata accessor for Prompt();
  v109 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v137 = &v83[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v11);
  v107 = &v83[-v12];
  MEMORY[0x1EEE9AC00](v13);
  v128 = &v83[-v14];
  v134 = type metadata accessor for Prompt.Component.Value();
  v15 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v110 = &v83[-((v16 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v17);
  v112 = &v83[-v18];
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v83[-v20];
  v22 = type metadata accessor for Prompt.Component();
  v129 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v117 = &v83[-((v23 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v24);
  v127 = &v83[-v25];
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v83[-v27];
  v144 = MEMORY[0x1E69E7CC0];
  v102 = v2;
  result = Prompt.components.getter();
  v126 = result[2];
  if (!v126)
  {
LABEL_51:

    (*(v109 + 16))(v103, v102, v9);
    return Prompt.components.setter();
  }

  v30 = 0;
  v133 = v129 + 16;
  v131 = *MEMORY[0x1E69C6318];
  v124 = (v15 + 88);
  v114 = *MEMORY[0x1E69C6328];
  v108 = *MEMORY[0x1E69C6320];
  v105 = *MEMORY[0x1E69C62F8];
  v104 = *MEMORY[0x1E69C6310];
  v101 = *MEMORY[0x1E69C6300];
  v100 = *MEMORY[0x1E69C62E0];
  v99 = *MEMORY[0x1E69C62D8];
  v97 = *MEMORY[0x1E69C6338];
  v92 = *MEMORY[0x1E69C62D0];
  v106 = (v15 + 8);
  v121 = (v129 + 8);
  v116 = (v15 + 96);
  v90 = *MEMORY[0x1E69C62E8];
  v89 = (v7 + 32);
  v88 = (v5 + 8);
  v115 = (v15 + 104);
  v86 = *MEMORY[0x1E69C62F0];
  v87 = (v7 + 8);
  v136 = v109 + 16;
  v91 = *MEMORY[0x1E69C6308];
  v139 = (v109 + 8);
  v85 = *MEMORY[0x1E69C62C8];
  v140 = (v109 + 32);
  v123 = xmmword_1ABA1D930;
  v84 = *MEMORY[0x1E69C6340];
  v113 = v21;
  v125 = v28;
  v122 = result;
  v120 = v22;
  while (v30 < result[2])
  {
    v40 = *(v129 + 80);
    v41 = (v40 + 32) & ~v40;
    v135 = *(v129 + 72);
    v42 = *(v129 + 16);
    v42(v28, result + v41 + v135 * v30, v22);
    Prompt.Component.value.getter();
    v43 = (*v124)(v21, v134);
    v132 = v30;
    if (v43 == v131)
    {
      v44 = v134;
      (*v116)(v21, v134);
      (*v140)(v128, v21, v9);
      v45 = v28;
      v46 = v127;
      v42(v127, v45, v22);
      v47 = v112;
      Prompt.seal(xpcData:)(v141, v112);
      (*v115)(v47, v131, v44);
      Prompt.Component.value.setter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMR);
      v48 = swift_allocObject();
      *(v48 + 16) = v123;
      v42((v48 + v41), v46, v22);
      v49 = v144;
      v50 = v144[2];
      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v51 = v49[3] >> 1, v51 <= v50))
      {
        result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v50 + 1, 1, v49);
        v49 = result;
        v51 = result[3] >> 1;
      }

      v28 = v125;
      if (v51 <= v49[2])
      {
        goto LABEL_53;
      }

      swift_arrayInitWithCopy();

      ++v49[2];
      v144 = v49;
      v52 = *v121;
      (*v121)(v127, v22);
      (*v139)(v128, v9);
      v52(v28, v22);
      v21 = v113;
    }

    else
    {
      v130 = v42;
      v118 = v40;
      v119 = (v40 + 32) & ~v40;
      if (v43 == v114)
      {
        (*v116)(v21, v134);
        v53 = *v21;
        v54 = v130;
        (v130)(v117, v28, v120);
        v55 = *(v53 + 16);
        if (v55)
        {
          v142 = MEMORY[0x1E69E7CC0];
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v55, 0);
          v56 = v142;
          v57 = (*(v109 + 80) + 32) & ~*(v109 + 80);
          v111 = v53;
          v138 = v57;
          v58 = v53 + v57;
          v59 = *(v109 + 72);
          v60 = *(v109 + 16);
          v61 = v107;
          do
          {
            v62 = v137;
            v60(v137, v58, v9);
            Prompt.seal(xpcData:)(v141, v61);
            (*v139)(v62, v9);
            v142 = v56;
            v64 = *(v56 + 16);
            v63 = *(v56 + 24);
            if (v64 >= v63 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v63 > 1), v64 + 1, 1);
              v56 = v142;
            }

            *(v56 + 16) = v64 + 1;
            (*v140)(v56 + v138 + v64 * v59, v61, v9);
            v58 += v59;
            --v55;
          }

          while (v55);

          v21 = v113;
          v54 = v130;
        }

        else
        {

          v56 = MEMORY[0x1E69E7CC0];
        }

        v74 = v110;
        *v110 = v56;
        (*v115)(v74, v114, v134);
        v75 = v117;
        Prompt.Component.value.setter();
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMR);
        v76 = v119;
        v77 = swift_allocObject();
        *(v77 + 16) = v123;
        v78 = v120;
        v54(v77 + v76, v75);
        v79 = v144;
        v80 = v144[2];
        result = swift_isUniquelyReferenced_nonNull_native();
        if (!result || (v81 = v79[3] >> 1, v81 <= v80))
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v80 + 1, 1, v79);
          v79 = result;
          v81 = result[3] >> 1;
        }

        v28 = v125;
        if (v81 <= v79[2])
        {
          goto LABEL_54;
        }

        v22 = v78;
        swift_arrayInitWithCopy();

        ++v79[2];
        v144 = v79;
        v82 = *v121;
        (*v121)(v117, v78);
        v82(v28, v78);
      }

      else
      {
        v65 = v119;
        if (v43 == v108)
        {
          goto LABEL_21;
        }

        if (v43 == v105 || v43 == v104)
        {
          goto LABEL_22;
        }

        if (v43 == v101 || v43 == v100 || v43 == v99 || v43 == v97)
        {
          goto LABEL_21;
        }

        if (v43 == v92)
        {
          (*v116)(v21, v134);
          v31 = v93;
          (*v89)(v93, v21, v98);
          v32 = Prompt.ImageSurface.surface.getter();
          v33 = v94;
          UUID.init()();
          v34 = UUID.uuidString.getter();
          v138 = v9;
          v35 = v34;
          v37 = v36;
          (*v88)(v33, v95);
          v38 = v32;
          IOSurfaceCreateXPCObject(v38);

          XPCDictionary.subscript.setter();

          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMR);
          v39 = swift_allocObject();
          *(v39 + 16) = v123;
          v142 = v35;
          v143 = v37;
          lazy protocol witness table accessor for type ImageSurfaceEnvelope and conformance ImageSurfaceEnvelope();
          Prompt.Component.Value.CustomData.init<A>(value:)();
          (*v115)(v112, v91, v134);
          Prompt.Component.priority.getter();
          Prompt.Component.privacy.getter();
          v22 = v120;
          v9 = v138;
          v21 = v113;
          v28 = v125;
          Prompt.Component.init(value:priority:privacy:)();
          specialized Array.append<A>(contentsOf:)(v39, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), MEMORY[0x1E69C6360]);
          (*v87)(v31, v98);
          goto LABEL_4;
        }

        if (v43 == v90)
        {
          goto LABEL_21;
        }

        if (v43 != v86)
        {
          if (v43 != v91 && v43 != v85 && v43 != v84)
          {
            _diagnoseUnexpectedEnumCase<A>(type:)();
            __break(1u);
            goto LABEL_51;
          }

LABEL_21:
          (*v106)(v21, v134);
LABEL_22:
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMR);
          v66 = swift_allocObject();
          *(v66 + 16) = v123;
          (v130)(v66 + v65, v28, v120);
          v67 = v144;
          v68 = v144[2];
          result = swift_isUniquelyReferenced_nonNull_native();
          if (!result || (v69 = v67[3] >> 1, v69 <= v68))
          {
            result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v68 + 1, 1, v67);
            v67 = result;
            v69 = result[3] >> 1;
          }

          v28 = v125;
          if (v69 <= v67[2])
          {
            goto LABEL_55;
          }

          v22 = v120;
          swift_arrayInitWithCopy();

          ++v67[2];
          v144 = v67;
LABEL_4:
          (*v121)(v28, v22);
          goto LABEL_5;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMR);
        v70 = swift_allocObject();
        *(v70 + 16) = v123;
        (v130)(v70 + v65, v28, v120);
        v71 = v144;
        v72 = v144[2];
        result = swift_isUniquelyReferenced_nonNull_native();
        if (!result || (v73 = v71[3] >> 1, v73 <= v72))
        {
          result = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(result, v72 + 1, 1, v71);
          v71 = result;
          v73 = result[3] >> 1;
        }

        v28 = v125;
        if (v73 <= v71[2])
        {
          goto LABEL_56;
        }

        v22 = v120;
        swift_arrayInitWithCopy();

        ++v71[2];
        v144 = v71;
        (*v121)(v28, v22);
        (*v106)(v21, v134);
      }
    }

LABEL_5:
    v30 = v132 + 1;
    result = v122;
    if (v132 + 1 == v126)
    {
      goto LABEL_51;
    }
  }

  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
LABEL_55:
  __break(1u);
LABEL_56:
  __break(1u);
  return result;
}

uint64_t Prompt.unseal(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v165 = a1;
  v125 = a2;
  v121 = type metadata accessor for Prompt.Component.Value.CustomData();
  v4 = *(v121 - 8);
  MEMORY[0x1EEE9AC00](v121);
  v120 = &v107 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Prompt();
  v131 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v161 = &v107 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v107 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v149 = &v107 - v12;
  v159 = type metadata accessor for Prompt.Component.Value();
  v13 = *(v159 - 8);
  MEMORY[0x1EEE9AC00](v159);
  v132 = (&v107 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v15);
  v135 = &v107 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v153 = &v107 - v18;
  v19 = type metadata accessor for Prompt.Component();
  v150 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v107 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v22);
  v139 = &v107 - v23;
  MEMORY[0x1EEE9AC00](v24);
  v148 = &v107 - v25;
  MEMORY[0x1EEE9AC00](v26);
  v158 = (&v107 - v27);
  v168 = MEMORY[0x1E69E7CC0];
  v124 = v2;
  v28 = Prompt.components.getter();
  v147 = *(v28 + 16);
  if (!v147)
  {
LABEL_57:

    (*(v131 + 16))(v125, v124, v6);
    return Prompt.components.setter();
  }

  v29 = 0;
  v113 = 0;
  v155 = *MEMORY[0x1E69C6318];
  v156 = v150 + 16;
  v146 = (v13 + 88);
  v136 = *MEMORY[0x1E69C6328];
  v129 = *MEMORY[0x1E69C6320];
  v127 = *MEMORY[0x1E69C62F8];
  v126 = *MEMORY[0x1E69C6310];
  v123 = *MEMORY[0x1E69C6300];
  v122 = *MEMORY[0x1E69C62E0];
  v119 = *MEMORY[0x1E69C62D8];
  v128 = (v13 + 8);
  v118 = *MEMORY[0x1E69C6338];
  v138 = (v13 + 96);
  v111 = (v4 + 16);
  v117 = *MEMORY[0x1E69C62D0];
  v112 = 0x80000001ABA330B0;
  v116 = *MEMORY[0x1E69C62E8];
  v110 = (v4 + 8);
  v137 = (v13 + 104);
  v142 = (v150 + 8);
  v115 = *MEMORY[0x1E69C62F0];
  v160 = v131 + 16;
  v163 = (v131 + 8);
  v114 = *MEMORY[0x1E69C6308];
  v164 = (v131 + 32);
  v109 = *MEMORY[0x1E69C62C8];
  v145 = xmmword_1ABA1D930;
  v108 = *MEMORY[0x1E69C6340];
  v144 = v21;
  v130 = v19;
  v143 = v28;
  v134 = v10;
  v154 = v6;
  while (v29 < *(v28 + 16))
  {
    v33 = *(v150 + 80);
    v34 = (v33 + 32) & ~v33;
    v35 = *(v150 + 72);
    v157 = v29;
    v36 = *(v150 + 16);
    v37 = v158;
    v36(v158, v28 + v34 + v35 * v29, v19);
    v38 = v153;
    Prompt.Component.value.getter();
    v39 = (*v146)(v38, v159);
    if (v39 == v155)
    {
      v40 = v159;
      (*v138)(v38, v159);
      (*v164)(v149, v38, v154);
      v41 = v148;
      v36(v148, v37, v19);
      v42 = v135;
      Prompt.unseal(_:)(v165, v135);
      (*v137)(v42, v155, v40);
      Prompt.Component.value.setter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMR);
      v21 = v35;
      v43 = swift_allocObject();
      *(v43 + 16) = v145;
      v3 = ((v33 + 32) & ~v33);
      v36((v43 + v34), v41, v19);
      v44 = v168;
      v45 = v168[2];
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v47 = v44[3] >> 1, v47 <= v45))
      {
        v44 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v45 + 1, 1, v44);
        v47 = v44[3] >> 1;
      }

      v48 = v158;
      v10 = v134;
      v6 = v154;
      if (v47 <= v44[2])
      {
        goto LABEL_59;
      }

      swift_arrayInitWithCopy();

      ++v44[2];
      v168 = v44;
      v49 = *v142;
      (*v142)(v148, v19);
      (*v163)(v149, v6);
      v49(v48, v19);
    }

    else
    {
      v141 = v33;
      v151 = v36;
      v140 = v35;
      v152 = (v33 + 32) & ~v33;
      if (v39 != v136)
      {
        v61 = v151;
        v3 = v37;
        if (v39 == v129)
        {
          goto LABEL_22;
        }

        if (v39 != v127 && v39 != v126)
        {
          if (v39 != v123 && v39 != v122 && v39 != v119 && v39 != v118 && v39 != v117 && v39 != v116)
          {
            if (v39 == v115)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMR);
              v67 = v152;
              v68 = swift_allocObject();
              *(v68 + 16) = v145;
              v61((v68 + v67), v3, v19);
              v69 = v168;
              v70 = v168[2];
              v71 = swift_isUniquelyReferenced_nonNull_native();
              if (!v71 || (v72 = v69[3] >> 1, v72 <= v70))
              {
                v69 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v71, v70 + 1, 1, v69);
                v72 = v69[3] >> 1;
              }

              v6 = v154;
              v73 = v158;
              if (v72 <= v69[2])
              {
                goto LABEL_62;
              }

              swift_arrayInitWithCopy();

              ++v69[2];
              v168 = v69;
              (*v142)(v73, v19);
              (*v128)(v153, v159);
              goto LABEL_6;
            }

            if (v39 == v114)
            {
              v85 = v153;
              (*v138)(v153, v159);
              v86 = v120;
              (*v111)(v120, v85, v121);
              if (Prompt.Component.Value.CustomData.name.getter() == 0xD000000000000014 && v112 == v87)
              {

                v88 = v152;
LABEL_54:
                v3 = v19;
                v61(v21, v158, v19);
                lazy protocol witness table accessor for type ImageSurfaceEnvelope and conformance ImageSurfaceEnvelope();
                v90 = v113;
                Prompt.Component.Value.CustomData.value<A>(type:)();
                v113 = v90;
                if (v90)
                {
                  goto LABEL_64;
                }

                ImageSurfaceEnvelope.unsealSurface(_:)(v165, v166, v167);

                v91 = v135;
                Prompt.ImageSurface.init(surface:)();
                (*v137)(v91, v117, v159);
                Prompt.Component.value.setter();
                __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMR);
                v92 = swift_allocObject();
                *(v92 + 16) = v145;
                v61((v92 + v88), v21, v19);
                specialized Array.append<A>(contentsOf:)(v92, specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:), MEMORY[0x1E69C6360]);
                v93 = *v142;
                (*v142)(v21, v19);
                v94 = *v110;
                v95 = v121;
                (*v110)(v120, v121);
                v93(v158, v19);
                v94(v153, v95);
                v6 = v154;
                goto LABEL_6;
              }

              v89 = _stringCompareWithSmolCheck(_:_:expecting:)();
              v21 = v144;

              v88 = v152;
              if (v89)
              {
                goto LABEL_54;
              }

              v96 = *v110;
              v97 = v86;
              v98 = v121;
              (*v110)(v97, v121);
              v96(v153, v98);
              v3 = v158;
              goto LABEL_23;
            }

            if (v39 != v109 && v39 != v108)
            {
              goto LABEL_63;
            }
          }

LABEL_22:
          (*v128)(v153, v159);
        }

LABEL_23:
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMR);
        v62 = v152;
        v63 = swift_allocObject();
        *(v63 + 16) = v145;
        v61((v63 + v62), v3, v19);
        v30 = v168;
        v64 = v168[2];
        v65 = swift_isUniquelyReferenced_nonNull_native();
        if (!v65 || (v31 = v30[3] >> 1, v31 <= v64))
        {
          v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v65, v64 + 1, 1, v30);
          v31 = v30[3] >> 1;
        }

        v6 = v154;
        v32 = v158;
        if (v31 <= v30[2])
        {
          goto LABEL_61;
        }

        swift_arrayInitWithCopy();

        ++v30[2];
        v168 = v30;
        (*v142)(v32, v19);
        goto LABEL_6;
      }

      v50 = v153;
      (*v138)(v153, v159);
      v51 = *v50;
      v3 = v151;
      v151(v139, v37, v19);
      v52 = *(v51 + 16);
      if (v52)
      {
        v166 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v52, 0);
        v53 = v166;
        v54 = (*(v131 + 80) + 32) & ~*(v131 + 80);
        v133 = v51;
        v162 = v54;
        v55 = v51 + v54;
        v56 = *(v131 + 72);
        v57 = *(v131 + 16);
        v6 = v154;
        do
        {
          v58 = v161;
          v57(v161, v55, v6);
          Prompt.unseal(_:)(v165, v10);
          (*v163)(v58, v6);
          v166 = v53;
          v60 = *(v53 + 16);
          v59 = *(v53 + 24);
          if (v60 >= v59 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v59 > 1), v60 + 1, 1);
            v53 = v166;
          }

          *(v53 + 16) = v60 + 1;
          (*v164)((v53 + v162 + v60 * v56), v10, v6);
          v55 += v56;
          --v52;
        }

        while (v52);
        v66 = v10;

        v3 = v151;
      }

      else
      {
        v66 = v10;

        v53 = MEMORY[0x1E69E7CC0];
        v6 = v154;
      }

      v74 = v132;
      *v132 = v53;
      (*v137)(v74, v136, v159);
      v75 = v139;
      Prompt.Component.value.setter();
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMd, &_ss23_ContiguousArrayStorageCy9PromptKit0D0V9ComponentVGMR);
      v76 = v152;
      v21 = v140;
      v77 = swift_allocObject();
      *(v77 + 16) = v145;
      v78 = v130;
      v3(v77 + v76, v75);
      v79 = v168;
      v80 = v168[2];
      v81 = swift_isUniquelyReferenced_nonNull_native();
      if (!v81 || (v82 = v79[3] >> 1, v82 <= v80))
      {
        v79 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v81, v80 + 1, 1, v79);
        v82 = v79[3] >> 1;
      }

      v83 = v158;
      if (v82 <= v79[2])
      {
        goto LABEL_60;
      }

      v19 = v78;
      swift_arrayInitWithCopy();

      ++v79[2];
      v168 = v79;
      v84 = *v142;
      (*v142)(v139, v78);
      v84(v83, v78);
      v10 = v66;
    }

LABEL_6:
    v29 = v157 + 1;
    v21 = v144;
    v28 = v143;
    if (v157 + 1 == v147)
    {
      goto LABEL_57;
    }
  }

  __break(1u);
LABEL_59:
  __break(1u);
LABEL_60:
  __break(1u);
LABEL_61:
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
LABEL_64:
  (*v142)(v21, v3);
  if (one-time initialization token for inference != -1)
  {
    swift_once();
  }

  v100 = type metadata accessor for Logger();
  __swift_project_value_buffer(v100, static Log.inference);
  v101 = v113;
  MEMORY[0x1AC5A6AE0](v113);
  v102 = Logger.logObject.getter();
  v103 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v102, v103))
  {
    v104 = swift_slowAlloc();
    v105 = swift_slowAlloc();
    *v104 = 138412290;
    MEMORY[0x1AC5A6AE0](v113);
    v106 = _swift_stdlib_bridgeErrorToNSError();
    *(v104 + 4) = v106;
    *v105 = v106;
    _os_log_impl(&dword_1AB828000, v102, v103, "Unable to decode ImageSurfaceEnvelope: %@", v104, 0xCu);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v105, &_sSo8NSObjectCSgMd, &_sSo8NSObjectCSgMR);
    MEMORY[0x1AC5A6CD0](v105, -1, -1);
    MEMORY[0x1AC5A6CD0](v104, -1, -1);
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

__IOSurface *ImageSurfaceEnvelope.unsealSurface(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v17 - v7;
  v9 = type metadata accessor for XPCDictionary();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(a1, v8, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s3XPC13XPCDictionaryVSgMd, &_s3XPC13XPCDictionaryVSgMR);
    v17 = 0;
    v18 = 0xE000000000000000;
    _StringGuts.grow(_:)(31);

    v17 = 0xD00000000000001DLL;
    v18 = 0x80000001ABA41930;
    MEMORY[0x1AC5A5BC0](a2, a3);
  }

  else
  {
    (*(v10 + 32))(v12, v8, v9);
    v13 = XPCDictionary.subscript.getter();
    if (v13)
    {
      v14 = IOSurfaceLookupFromXPCObject(v13);
      if (v14)
      {
        v15 = v14;
        swift_unknownObjectRelease();

        (*(v10 + 8))(v12, v9);
        return v15;
      }

      v17 = 0;
      v18 = 0xE000000000000000;
      _StringGuts.grow(_:)(35);

      v17 = 0xD000000000000021;
      v18 = 0x80000001ABA41970;
      MEMORY[0x1AC5A5BC0](a2, a3);
    }

    else
    {
      v17 = 0;
      v18 = 0xE000000000000000;
      _StringGuts.grow(_:)(28);

      v17 = 0xD00000000000001ALL;
      v18 = 0x80000001ABA41950;
      MEMORY[0x1AC5A5BC0](a2, a3);
    }
  }

  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

unint64_t closure #1 in PromptVariantEnvelope.OverridableConfigurationStorageEnvelope.unseal(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s9PromptKit0A0VSgMd, &_s9PromptKit0A0VSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = v23 - v7;
  v9 = type metadata accessor for Prompt();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of Decodable & Encodable(a1, v24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSe_SEpMd, &_sSe_SEpMR);
  v13 = swift_dynamicCast();
  v14 = *(v10 + 56);
  if (v13)
  {
    v14(v8, 0, 1, v9);
    (*(v10 + 32))(v12, v8, v9);
    a3[3] = v9;
    v15 = MEMORY[0x1E69C63A0];
    a3[4] = lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Prompt and conformance Prompt, MEMORY[0x1E69C63A0], MEMORY[0x1E69C63B0]);
    a3[5] = lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Prompt and conformance Prompt, v15, MEMORY[0x1E69C63A8]);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
    Prompt.unseal(_:)(a2, boxed_opaque_existential_1);
    return (*(v10 + 8))(v12, v9);
  }

  else
  {
    v14(v8, 1, 1, v9);
    outlined destroy of Promptkit_Wireformat_PromptRequestVersionEnum?(v8, &_s9PromptKit0A0VSgMd, &_s9PromptKit0A0VSgMR);
    outlined init with copy of Decodable & Encodable(a1, v24);
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay9PromptKit011ChatMessageA0VGMd, &_sSay9PromptKit011ChatMessageA0VGMR);
    v19 = swift_dynamicCast();
    if (v19)
    {
      v20 = v23[1];
      v21 = MEMORY[0x1EEE9AC00](v19);
      v23[-2] = a2;
      v22 = _sSlsE3mapySayqd__Gqd__7ElementQzqd_0_YKXEqd_0_YKs5ErrorRd_0_r0_lFSay9PromptKit011ChatMessageD0VG_AHs5NeverOTg5(partial apply for closure #1 in closure #1 in PromptVariantEnvelope.OverridableConfigurationStorageEnvelope.unseal(_:), &v23[-4], v20, v21);

      a3[3] = v18;
      a3[4] = lazy protocol witness table accessor for type [ChatMessagePrompt] and conformance <A> [A]();
      result = lazy protocol witness table accessor for type [ChatMessagePrompt] and conformance <A> [A]();
      a3[5] = result;
      *a3 = v22;
    }

    else
    {
      return outlined init with copy of Decodable & Encodable(a1, a3);
    }
  }

  return result;
}

uint64_t closure #1 in closure #1 in PromptVariantEnvelope.OverridableConfigurationStorageEnvelope.unseal(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = type metadata accessor for Prompt();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v15 - v11;
  v13 = type metadata accessor for ChatMessagePrompt();
  (*(*(v13 - 8) + 16))(a3, a1, v13);
  ChatMessagePrompt.prompt.getter();
  Prompt.unseal(_:)(a2, v12);
  (*(v7 + 8))(v9, v6);
  return ChatMessagePrompt.prompt.setter();
}

uint64_t PromptVariantEnvelope.OverridableConfigurationStorageEnvelope.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v18 = a2;
  v4 = type metadata accessor for OverridableConfigurationStorage();
  v16 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v19 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO031OverridableConfigurationStorageH0V10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO031OverridableConfigurationStorageH0V10CodingKeysOGMR);
  v17 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for PromptVariantEnvelope.OverridableConfigurationStorageEnvelope(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptVariantEnvelope.OverridableConfigurationStorageEnvelope.CodingKeys and conformance PromptVariantEnvelope.OverridableConfigurationStorageEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v12 = v16;
    v13 = v18;
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type OverridableConfigurationStorage and conformance OverridableConfigurationStorage, MEMORY[0x1E69C6520], MEMORY[0x1E69C6530]);
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v17 + 8))(v8, v6);
    (*(v12 + 32))(v11, v19, v4);
    outlined init with take of DocumentRegistrationEnvelope(v11, v13, type metadata accessor for PromptVariantEnvelope.OverridableConfigurationStorageEnvelope);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptVariantEnvelope.OverridableConfigurationStorageEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x656761726F7473 && a2 == 0xE700000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptVariantEnvelope.OverridableConfigurationStorageEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptVariantEnvelope.OverridableConfigurationStorageEnvelope.CodingKeys and conformance PromptVariantEnvelope.OverridableConfigurationStorageEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptVariantEnvelope.OverridableConfigurationStorageEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptVariantEnvelope.OverridableConfigurationStorageEnvelope.CodingKeys and conformance PromptVariantEnvelope.OverridableConfigurationStorageEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance PromptVariantEnvelope.OverridableConfigurationStorageEnvelope(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO031OverridableConfigurationStorageH0V10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO031OverridableConfigurationStorageH0V10CodingKeysOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptVariantEnvelope.OverridableConfigurationStorageEnvelope.CodingKeys and conformance PromptVariantEnvelope.OverridableConfigurationStorageEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for OverridableConfigurationStorage();
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type OverridableConfigurationStorage and conformance OverridableConfigurationStorage, MEMORY[0x1E69C6520], MEMORY[0x1E69C6528]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t PromptVariantEnvelope.ChatMessagesPromptEnvelope.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v5 = type metadata accessor for PromptVariantEnvelope.OverridableConfigurationStorageEnvelope(0);
  MEMORY[0x1EEE9AC00](v5);
  v18 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO012ChatMessagesfH0V10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO012ChatMessagesfH0V10CodingKeysOGMR);
  v17 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  v10 = type metadata accessor for PromptVariantEnvelope.ChatMessagesPromptEnvelope(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptVariantEnvelope.ChatMessagesPromptEnvelope.CodingKeys and conformance PromptVariantEnvelope.ChatMessagesPromptEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v3)
  {
    v13 = v16;
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptVariantEnvelope.OverridableConfigurationStorageEnvelope and conformance PromptVariantEnvelope.OverridableConfigurationStorageEnvelope, type metadata accessor for PromptVariantEnvelope.OverridableConfigurationStorageEnvelope, &protocol conformance descriptor for PromptVariantEnvelope.OverridableConfigurationStorageEnvelope);
    v14 = v18;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v17 + 8))(v9, v7);
    outlined init with take of DocumentRegistrationEnvelope(v14, v12, type metadata accessor for PromptVariantEnvelope.OverridableConfigurationStorageEnvelope);
    outlined init with take of DocumentRegistrationEnvelope(v12, v13, type metadata accessor for PromptVariantEnvelope.ChatMessagesPromptEnvelope);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptVariantEnvelope.ChatMessagesPromptEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptVariantEnvelope.ChatMessagesPromptEnvelope.CodingKeys and conformance PromptVariantEnvelope.ChatMessagesPromptEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptVariantEnvelope.ChatMessagesPromptEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptVariantEnvelope.ChatMessagesPromptEnvelope.CodingKeys and conformance PromptVariantEnvelope.ChatMessagesPromptEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance PromptVariantEnvelope.ChatMessagesPromptEnvelope(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO012ChatMessagesfH0V10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO012ChatMessagesfH0V10CodingKeysOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptVariantEnvelope.ChatMessagesPromptEnvelope.CodingKeys and conformance PromptVariantEnvelope.ChatMessagesPromptEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for PromptVariantEnvelope.OverridableConfigurationStorageEnvelope(0);
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptVariantEnvelope.OverridableConfigurationStorageEnvelope and conformance PromptVariantEnvelope.OverridableConfigurationStorageEnvelope, type metadata accessor for PromptVariantEnvelope.OverridableConfigurationStorageEnvelope, &protocol conformance descriptor for PromptVariantEnvelope.OverridableConfigurationStorageEnvelope);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t PromptVariantEnvelope.CompletionPromptEnvelope.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v5 = type metadata accessor for PromptVariantEnvelope.OverridableConfigurationStorageEnvelope(0);
  MEMORY[0x1EEE9AC00](v5);
  v18 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO010CompletionfH0V10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO010CompletionfH0V10CodingKeysOGMR);
  v17 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  v10 = type metadata accessor for PromptVariantEnvelope.CompletionPromptEnvelope(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptVariantEnvelope.CompletionPromptEnvelope.CodingKeys and conformance PromptVariantEnvelope.CompletionPromptEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v3)
  {
    v13 = v16;
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptVariantEnvelope.OverridableConfigurationStorageEnvelope and conformance PromptVariantEnvelope.OverridableConfigurationStorageEnvelope, type metadata accessor for PromptVariantEnvelope.OverridableConfigurationStorageEnvelope, &protocol conformance descriptor for PromptVariantEnvelope.OverridableConfigurationStorageEnvelope);
    v14 = v18;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v17 + 8))(v9, v7);
    outlined init with take of DocumentRegistrationEnvelope(v14, v12, type metadata accessor for PromptVariantEnvelope.OverridableConfigurationStorageEnvelope);
    outlined init with take of DocumentRegistrationEnvelope(v12, v13, type metadata accessor for PromptVariantEnvelope.CompletionPromptEnvelope);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t PromptVariantEnvelope.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO20CompletionCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO20CompletionCodingKeysOGMR);
  v31 = *(v2 - 8);
  v32 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v30 = &v24 - v3;
  v28 = type metadata accessor for PromptVariantEnvelope.CompletionPromptEnvelope(0);
  MEMORY[0x1EEE9AC00](v28);
  v29 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO14ChatCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO14ChatCodingKeysOGMR);
  v26 = *(v5 - 8);
  v27 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v24 - v6;
  v25 = type metadata accessor for PromptVariantEnvelope.ChatMessagesPromptEnvelope(0);
  MEMORY[0x1EEE9AC00](v25);
  v9 = &v24 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PromptVariantEnvelope(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMR);
  v13 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v15 = &v24 - v14;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptVariantEnvelope.CodingKeys and conformance PromptVariantEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of DocumentResourceEnvelope(v33, v12, type metadata accessor for PromptVariantEnvelope);
  v16 = (v13 + 8);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v17 = v29;
    outlined init with take of DocumentRegistrationEnvelope(v12, v29, type metadata accessor for PromptVariantEnvelope.CompletionPromptEnvelope);
    v36 = 1;
    lazy protocol witness table accessor for type PromptVariantEnvelope.CompletionCodingKeys and conformance PromptVariantEnvelope.CompletionCodingKeys();
    v18 = v30;
    v19 = v34;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptVariantEnvelope.CompletionPromptEnvelope and conformance PromptVariantEnvelope.CompletionPromptEnvelope, type metadata accessor for PromptVariantEnvelope.CompletionPromptEnvelope, &protocol conformance descriptor for PromptVariantEnvelope.CompletionPromptEnvelope);
    v20 = v32;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v31 + 8))(v18, v20);
    outlined destroy of DocumentResourceEnvelope(v17, type metadata accessor for PromptVariantEnvelope.CompletionPromptEnvelope);
    return (*v16)(v15, v19);
  }

  else
  {
    outlined init with take of DocumentRegistrationEnvelope(v12, v9, type metadata accessor for PromptVariantEnvelope.ChatMessagesPromptEnvelope);
    v35 = 0;
    lazy protocol witness table accessor for type PromptVariantEnvelope.ChatCodingKeys and conformance PromptVariantEnvelope.ChatCodingKeys();
    v22 = v34;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptVariantEnvelope.ChatMessagesPromptEnvelope and conformance PromptVariantEnvelope.ChatMessagesPromptEnvelope, type metadata accessor for PromptVariantEnvelope.ChatMessagesPromptEnvelope, &protocol conformance descriptor for PromptVariantEnvelope.ChatMessagesPromptEnvelope);
    v23 = v27;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v26 + 8))(v7, v23);
    outlined destroy of DocumentResourceEnvelope(v9, type metadata accessor for PromptVariantEnvelope.ChatMessagesPromptEnvelope);
    return (*v16)(v15, v22);
  }
}

uint64_t PromptVariantEnvelope.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v43 = a2;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO20CompletionCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO20CompletionCodingKeysOGMR);
  v47 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v50 = &v39 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO14ChatCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO14ChatCodingKeysOGMR);
  v45 = *(v4 - 8);
  v46 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v49 = &v39 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMR);
  v48 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v39 - v7;
  v9 = type metadata accessor for PromptVariantEnvelope(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v39 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v39 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v39 - v16;
  v18 = a1[3];
  v52 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  lazy protocol witness table accessor for type PromptVariantEnvelope.CodingKeys and conformance PromptVariantEnvelope.CodingKeys();
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
    lazy protocol witness table accessor for type PromptVariantEnvelope.ChatCodingKeys and conformance PromptVariantEnvelope.ChatCodingKeys();
    v36 = v42;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    if (!v36)
    {
      type metadata accessor for PromptVariantEnvelope.ChatMessagesPromptEnvelope(0);
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptVariantEnvelope.ChatMessagesPromptEnvelope and conformance PromptVariantEnvelope.ChatMessagesPromptEnvelope, type metadata accessor for PromptVariantEnvelope.ChatMessagesPromptEnvelope, &protocol conformance descriptor for PromptVariantEnvelope.ChatMessagesPromptEnvelope);
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
  lazy protocol witness table accessor for type PromptVariantEnvelope.CompletionCodingKeys and conformance PromptVariantEnvelope.CompletionCodingKeys();
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

  type metadata accessor for PromptVariantEnvelope.CompletionPromptEnvelope(0);
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptVariantEnvelope.CompletionPromptEnvelope and conformance PromptVariantEnvelope.CompletionPromptEnvelope, type metadata accessor for PromptVariantEnvelope.CompletionPromptEnvelope, &protocol conformance descriptor for PromptVariantEnvelope.CompletionPromptEnvelope);
  v30 = v40;
  v31 = v44;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v47 + 8))(v28, v31);
  (*(v22 + 8))(v27, v26);
  swift_unknownObjectRelease();
LABEL_12:
  swift_storeEnumTagMultiPayload();
  v38 = v39;
  outlined init with take of DocumentRegistrationEnvelope(v30, v39, type metadata accessor for PromptVariantEnvelope);
  outlined init with take of DocumentRegistrationEnvelope(v38, v43, type metadata accessor for PromptVariantEnvelope);
  return __swift_destroy_boxed_opaque_existential_0(v52);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptVariantEnvelope.ChatMessagesPromptEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000020 && 0x80000001ABA41D20 == a2)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptVariantEnvelope.CompletionPromptEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptVariantEnvelope.CompletionPromptEnvelope.CodingKeys and conformance PromptVariantEnvelope.CompletionPromptEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptVariantEnvelope.CompletionPromptEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptVariantEnvelope.CompletionPromptEnvelope.CodingKeys and conformance PromptVariantEnvelope.CompletionPromptEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance PromptVariantEnvelope.CompletionPromptEnvelope(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO010CompletionfH0V10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration21PromptVariantEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO010CompletionfH0V10CodingKeysOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptVariantEnvelope.CompletionPromptEnvelope.CodingKeys and conformance PromptVariantEnvelope.CompletionPromptEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for PromptVariantEnvelope.OverridableConfigurationStorageEnvelope(0);
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptVariantEnvelope.OverridableConfigurationStorageEnvelope and conformance PromptVariantEnvelope.OverridableConfigurationStorageEnvelope, type metadata accessor for PromptVariantEnvelope.OverridableConfigurationStorageEnvelope, &protocol conformance descriptor for PromptVariantEnvelope.OverridableConfigurationStorageEnvelope);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptVariantEnvelope.ChatCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptVariantEnvelope.ChatCodingKeys and conformance PromptVariantEnvelope.ChatCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptVariantEnvelope.ChatCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptVariantEnvelope.ChatCodingKeys and conformance PromptVariantEnvelope.ChatCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PromptVariantEnvelope.CodingKeys()
{
  if (*v0)
  {
    return 0x6974656C706D6F63;
  }

  else
  {
    return 1952540771;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptVariantEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1952540771 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6974656C706D6F63 && a2 == 0xEA00000000006E6FLL)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptVariantEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptVariantEnvelope.CodingKeys and conformance PromptVariantEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptVariantEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptVariantEnvelope.CodingKeys and conformance PromptVariantEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptVariantEnvelope.CompletionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptVariantEnvelope.CompletionCodingKeys and conformance PromptVariantEnvelope.CompletionCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptVariantEnvelope.CompletionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptVariantEnvelope.CompletionCodingKeys and conformance PromptVariantEnvelope.CompletionCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PromptRenderingEnvelope.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration23PromptRenderingEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration23PromptRenderingEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptRenderingEnvelope.CodingKeys and conformance PromptRenderingEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9 = v3[1];
  v13 = *v3;
  v14 = v9;
  v12 = 0;
  lazy protocol witness table accessor for type PromptRenderingEnvelope.SourceEnvelope and conformance PromptRenderingEnvelope.SourceEnvelope();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    *&v13 = *(v3 + 4);
    v12 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    lazy protocol witness table accessor for type [String] and conformance <A> [A]();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v13) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v13) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
    *&v13 = *(v3 + 9);
    v12 = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
    lazy protocol witness table accessor for type [Int] and conformance <A> [A]();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    *&v13 = *(v3 + 10);
    v12 = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B], MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    LOBYTE(v13) = 6;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptRenderingEnvelope.SourceEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x696669746E656469 && a2 == 0xEA00000000007265;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6E6F6973726576 && a2 == 0xE700000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptRenderingEnvelope.SourceEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptRenderingEnvelope.SourceEnvelope.CodingKeys and conformance PromptRenderingEnvelope.SourceEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptRenderingEnvelope.SourceEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptRenderingEnvelope.SourceEnvelope.CodingKeys and conformance PromptRenderingEnvelope.SourceEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptRenderingEnvelope.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized PromptRenderingEnvelope.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptRenderingEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptRenderingEnvelope.CodingKeys and conformance PromptRenderingEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptRenderingEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptRenderingEnvelope.CodingKeys and conformance PromptRenderingEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ImageDataEnvelope.encode(to:)(void *a1, char a2, uint64_t a3, unint64_t a4)
{
  v14 = a4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration17ImageDataEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration17ImageDataEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v13 - v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ImageDataEnvelope.CodingKeys and conformance ImageDataEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v15) = a2 & 1;
  v17 = 0;
  lazy protocol witness table accessor for type ImageFormatEnvelope and conformance ImageFormatEnvelope();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v4)
  {
    v15 = a3;
    v16 = v14;
    v17 = 1;
    outlined copy of Data._Representation(a3, v14);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v15, v16);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ImageDataEnvelope.CodingKeys()
{
  if (*v0)
  {
    return 1635017060;
  }

  else
  {
    return 0x74616D726F66;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ImageDataEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x74616D726F66 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1635017060 && a2 == 0xE400000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ImageDataEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageDataEnvelope.CodingKeys and conformance ImageDataEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ImageDataEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageDataEnvelope.CodingKeys and conformance ImageDataEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance ImageDataEnvelope@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = specialized ImageDataEnvelope.init(from:)(a2);
  if (!v2)
  {
    *a1 = result & 1;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6;
  }

  return result;
}

uint64_t PreprocessedImageDataEnvelope.encode(to:)(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration29PreprocessedImageDataEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration29PreprocessedImageDataEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v12 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PreprocessedImageDataEnvelope.CodingKeys and conformance PreprocessedImageDataEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = a2;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSays7Float16VGMd, &_sSays7Float16VGMR);
  lazy protocol witness table accessor for type [Float16] and conformance <A> [A]();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v3)
  {
    v14 = a3;
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySiGMd, &_sSaySiGMR);
    lazy protocol witness table accessor for type [Int] and conformance <A> [A]();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v8 + 8))(v10, v7);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PreprocessedImageDataEnvelope.CodingKeys()
{
  if (*v0)
  {
    return 0x6570616873;
  }

  else
  {
    return 1635017060;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PreprocessedImageDataEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6570616873 && a2 == 0xE500000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PreprocessedImageDataEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PreprocessedImageDataEnvelope.CodingKeys and conformance PreprocessedImageDataEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PreprocessedImageDataEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PreprocessedImageDataEnvelope.CodingKeys and conformance PreprocessedImageDataEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance PreprocessedImageDataEnvelope@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = specialized PreprocessedImageDataEnvelope.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ImageSurfaceEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0xD000000000000011 && 0x80000001ABA41DF0 == a2)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ImageSurfaceEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageSurfaceEnvelope.CodingKeys and conformance ImageSurfaceEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ImageSurfaceEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageSurfaceEnvelope.CodingKeys and conformance ImageSurfaceEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance ImageSurfaceEnvelope@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration20ImageSurfaceEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration20ImageSurfaceEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ImageSurfaceEnvelope.CodingKeys and conformance ImageSurfaceEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v9 = KeyedDecodingContainer.decode(_:forKey:)();
  v11 = v10;
  (*(v6 + 8))(v8, v5);
  result = __swift_destroy_boxed_opaque_existential_0(a1);
  *a2 = v9;
  a2[1] = v11;
  return result;
}

uint64_t protocol witness for Encodable.encode(to:) in conformance ImageSurfaceEnvelope(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration20ImageSurfaceEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration20ImageSurfaceEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ImageSurfaceEnvelope.CodingKeys and conformance ImageSurfaceEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t protocol witness for PromptComponentValueConvertible.toValue() in conformance ImageSurfaceEnvelope(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageSurfaceEnvelope and conformance ImageSurfaceEnvelope();

  return MEMORY[0x1EEE30290](a1, v2);
}

uint64_t ResponseFormatEnvelope.KindEnvelope.init(sealing:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = type metadata accessor for Prompt.ResponseFormat.GrammarDetails();
  v46 = *(v4 - 8);
  v47 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v41 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v44 = &v41 - v8;
  v45 = type metadata accessor for Schema();
  v43 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v42 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Prompt.ResponseFormat.SchemaDetails();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v41 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v41 - v15;
  v17 = type metadata accessor for Prompt.ResponseFormat.Kind();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v41 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = *(v18 + 16);
  v48 = a1;
  v22(v21, a1, v17, v19);
  v23 = (*(v18 + 88))(v21, v17);
  if (v23 == *MEMORY[0x1E69DA710])
  {
    (*(v18 + 96))(v21, v17);
    (*(v11 + 32))(v16, v21, v10);
    (*(v11 + 16))(v13, v16, v10);
    *a2 = Prompt.SpecialToken.identifier.getter();
    a2[1] = v24;
    a2[2] = Prompt.ResponseFormat.SchemaDetails.description.getter();
    a2[3] = v25;
    v26 = v42;
    Prompt.ResponseFormat.SchemaDetails.schema.getter();
    type metadata accessor for ResponseFormatEnvelope.SchemaDetailsEnvelope(0);
    Schema.type.getter();
    (*(v18 + 8))(v48, v17);
    (*(v43 + 8))(v26, v45);
    v27 = *(v11 + 8);
    v27(v13, v10);
    v27(v16, v10);
LABEL_5:
    type metadata accessor for ResponseFormatEnvelope.KindEnvelope(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (v23 == *MEMORY[0x1E69DA718])
  {
    (*(v18 + 96))(v21, v17);
    v29 = v46;
    v28 = v47;
    v30 = v44;
    (*(v46 + 32))(v44, v21, v47);
    (*(v29 + 16))(v6, v30, v28);
    v45 = Prompt.ResponseFormat.GrammarDetails.name.getter();
    v43 = v31;
    v32 = Prompt.ResponseFormat.GrammarDetails.description.getter();
    v42 = v33;
    v34 = Prompt.ResponseFormat.GrammarDetails.grammar.getter();
    v36 = v35;
    (*(v18 + 8))(v48, v17);
    v37 = *(v29 + 8);
    v37(v6, v28);
    v37(v30, v28);
    v38 = v42;
    v39 = v43;
    *a2 = v45;
    a2[1] = v39;
    a2[2] = v32;
    a2[3] = v38;
    a2[4] = v34;
    a2[5] = v36;
    goto LABEL_5;
  }

  result = _diagnoseUnexpectedEnumCase<A>(type:)();
  __break(1u);
  return result;
}

uint64_t ResponseFormatEnvelope.KindEnvelope.unseal()@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v20 = a1;
  v3 = type metadata accessor for GenerationSchema();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Schema();
  MEMORY[0x1EEE9AC00](v7 - 8);
  v8 = type metadata accessor for ResponseFormatEnvelope.SchemaDetailsEnvelope(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v19 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for ResponseFormatEnvelope.KindEnvelope(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v19 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DocumentResourceEnvelope(v2, v13, type metadata accessor for ResponseFormatEnvelope.KindEnvelope);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of DocumentRegistrationEnvelope(v13, v10, type metadata accessor for ResponseFormatEnvelope.SchemaDetailsEnvelope);
    (*(v4 + 16))(v6, &v10[*(v8 + 24)], v3);

    Schema.init(type:)();
    v14 = v20;
    Prompt.ResponseFormat.SchemaDetails.init(name:description:schema:)();
    outlined destroy of DocumentResourceEnvelope(v10, type metadata accessor for ResponseFormatEnvelope.SchemaDetailsEnvelope);
    v15 = MEMORY[0x1E69DA710];
  }

  else
  {
    v14 = v20;
    Prompt.ResponseFormat.GrammarDetails.init(name:description:grammar:)();
    v15 = MEMORY[0x1E69DA718];
  }

  v16 = *v15;
  v17 = type metadata accessor for Prompt.ResponseFormat.Kind();
  return (*(*(v17 - 8) + 104))(v14, v16, v17);
}

uint64_t ResponseFormatEnvelope.KindEnvelope.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration22ResponseFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV04KindH0O16SchemaCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration22ResponseFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV04KindH0O16SchemaCodingKeysOGMR);
  v30 = *(v2 - 8);
  v31 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v29 = &v26 - v3;
  v28 = type metadata accessor for ResponseFormatEnvelope.SchemaDetailsEnvelope(0);
  MEMORY[0x1EEE9AC00](v28);
  v5 = &v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration22ResponseFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV04KindH0O17GrammarCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration22ResponseFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV04KindH0O17GrammarCodingKeysOGMR);
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v26 - v7;
  v9 = type metadata accessor for ResponseFormatEnvelope.KindEnvelope(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = (&v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration22ResponseFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV04KindH0O10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration22ResponseFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV04KindH0O10CodingKeysOGMR);
  v12 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v14 = &v26 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ResponseFormatEnvelope.KindEnvelope.CodingKeys and conformance ResponseFormatEnvelope.KindEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of DocumentResourceEnvelope(v32, v11, type metadata accessor for ResponseFormatEnvelope.KindEnvelope);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    outlined init with take of DocumentRegistrationEnvelope(v11, v5, type metadata accessor for ResponseFormatEnvelope.SchemaDetailsEnvelope);
    LOBYTE(v34) = 1;
    lazy protocol witness table accessor for type ResponseFormatEnvelope.KindEnvelope.SchemaCodingKeys and conformance ResponseFormatEnvelope.KindEnvelope.SchemaCodingKeys();
    v15 = v29;
    v16 = v33;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type ResponseFormatEnvelope.SchemaDetailsEnvelope and conformance ResponseFormatEnvelope.SchemaDetailsEnvelope, type metadata accessor for ResponseFormatEnvelope.SchemaDetailsEnvelope, &protocol conformance descriptor for ResponseFormatEnvelope.SchemaDetailsEnvelope);
    v17 = v31;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v30 + 8))(v15, v17);
    outlined destroy of DocumentResourceEnvelope(v5, type metadata accessor for ResponseFormatEnvelope.SchemaDetailsEnvelope);
    return (*(v12 + 8))(v14, v16);
  }

  else
  {
    v19 = *v11;
    v20 = v11[1];
    v21 = v11[2];
    v22 = v11[3];
    v23 = v11[5];
    v31 = v11[4];
    v32 = v19;
    LOBYTE(v34) = 0;
    lazy protocol witness table accessor for type ResponseFormatEnvelope.KindEnvelope.GrammarCodingKeys and conformance ResponseFormatEnvelope.KindEnvelope.GrammarCodingKeys();
    v24 = v33;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v34 = v32;
    v35 = v20;
    v36 = v21;
    v37 = v22;
    v38 = v31;
    v39 = v23;
    lazy protocol witness table accessor for type ResponseFormatEnvelope.GrammarDetailsEnvelope and conformance ResponseFormatEnvelope.GrammarDetailsEnvelope();
    v25 = v27;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v26 + 8))(v8, v25);
    (*(v12 + 8))(v14, v24);
  }
}

uint64_t ResponseFormatEnvelope.KindEnvelope.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration22ResponseFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV04KindH0O16SchemaCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration22ResponseFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV04KindH0O16SchemaCodingKeysOGMR);
  v4 = *(v3 - 8);
  v48 = v3;
  v49 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v52 = &v43 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration22ResponseFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV04KindH0O17GrammarCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration22ResponseFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV04KindH0O17GrammarCodingKeysOGMR);
  v46 = *(v6 - 8);
  v47 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v43 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration22ResponseFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV04KindH0O10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration22ResponseFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV04KindH0O10CodingKeysOGMR);
  v50 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v43 - v9;
  v11 = type metadata accessor for ResponseFormatEnvelope.KindEnvelope(0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v43 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v43 - v18;
  v20 = a1[3];
  v63 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v20);
  lazy protocol witness table accessor for type ResponseFormatEnvelope.KindEnvelope.CodingKeys and conformance ResponseFormatEnvelope.KindEnvelope.CodingKeys();
  v21 = v53;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v21)
  {
    return __swift_destroy_boxed_opaque_existential_0(v63);
  }

  v43 = v16;
  v44 = v19;
  v53 = v13;
  v23 = v51;
  v22 = v52;
  v24 = v50;
  v25 = KeyedDecodingContainer.allKeys.getter();
  v26 = (2 * *(v25 + 16)) | 1;
  v59 = v25;
  v60 = v25 + 32;
  v61 = 0;
  v62 = v26;
  v27 = specialized Collection<>.popFirst()();
  v28 = v10;
  if (v27 == 2 || v61 != v62 >> 1)
  {
    v30 = type metadata accessor for DecodingError();
    swift_allocError();
    v32 = v31;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v32 = v11;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v30 - 8) + 104))(v32, *MEMORY[0x1E69E6AF8], v30);
    swift_willThrow();
    (*(v24 + 8))(v10, v8);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_0(v63);
  }

  if (v27)
  {
    LOBYTE(v54) = 1;
    lazy protocol witness table accessor for type ResponseFormatEnvelope.KindEnvelope.SchemaCodingKeys and conformance ResponseFormatEnvelope.KindEnvelope.SchemaCodingKeys();
    v29 = v22;
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    type metadata accessor for ResponseFormatEnvelope.SchemaDetailsEnvelope(0);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type ResponseFormatEnvelope.SchemaDetailsEnvelope and conformance ResponseFormatEnvelope.SchemaDetailsEnvelope, type metadata accessor for ResponseFormatEnvelope.SchemaDetailsEnvelope, &protocol conformance descriptor for ResponseFormatEnvelope.SchemaDetailsEnvelope);
    v35 = v53;
    v36 = v48;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v49 + 8))(v29, v36);
    (*(v24 + 8))(v28, v8);
    swift_unknownObjectRelease();
    swift_storeEnumTagMultiPayload();
    v41 = v35;
  }

  else
  {
    LOBYTE(v54) = 0;
    lazy protocol witness table accessor for type ResponseFormatEnvelope.KindEnvelope.GrammarCodingKeys and conformance ResponseFormatEnvelope.KindEnvelope.GrammarCodingKeys();
    KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type ResponseFormatEnvelope.GrammarDetailsEnvelope and conformance ResponseFormatEnvelope.GrammarDetailsEnvelope();
    v34 = v47;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v46 + 8))(v23, v34);
    (*(v24 + 8))(v10, v8);
    swift_unknownObjectRelease();
    v37 = v55;
    v38 = v57;
    v39 = v58;
    v40 = v43;
    *v43 = v54;
    v40[1] = v37;
    *(v40 + 1) = v56;
    v40[4] = v38;
    v40[5] = v39;
    swift_storeEnumTagMultiPayload();
    v41 = v40;
  }

  v42 = v44;
  outlined init with take of DocumentRegistrationEnvelope(v41, v44, type metadata accessor for ResponseFormatEnvelope.KindEnvelope);
  outlined init with take of DocumentRegistrationEnvelope(v42, v45, type metadata accessor for ResponseFormatEnvelope.KindEnvelope);
  return __swift_destroy_boxed_opaque_existential_0(v63);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ResponseFormatEnvelope.KindEnvelope.CodingKeys()
{
  if (*v0)
  {
    return 0x616D65686373;
  }

  else
  {
    return 0x72616D6D617267;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ResponseFormatEnvelope.KindEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x72616D6D617267 && a2 == 0xE700000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x616D65686373 && a2 == 0xE600000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ResponseFormatEnvelope.KindEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ResponseFormatEnvelope.KindEnvelope.CodingKeys and conformance ResponseFormatEnvelope.KindEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ResponseFormatEnvelope.KindEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ResponseFormatEnvelope.KindEnvelope.CodingKeys and conformance ResponseFormatEnvelope.KindEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ResponseFormatEnvelope.KindEnvelope.GrammarCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ResponseFormatEnvelope.KindEnvelope.GrammarCodingKeys and conformance ResponseFormatEnvelope.KindEnvelope.GrammarCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ResponseFormatEnvelope.KindEnvelope.GrammarCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ResponseFormatEnvelope.KindEnvelope.GrammarCodingKeys and conformance ResponseFormatEnvelope.KindEnvelope.GrammarCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ResponseFormatEnvelope.KindEnvelope.SchemaCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ResponseFormatEnvelope.KindEnvelope.SchemaCodingKeys and conformance ResponseFormatEnvelope.KindEnvelope.SchemaCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ResponseFormatEnvelope.KindEnvelope.SchemaCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ResponseFormatEnvelope.KindEnvelope.SchemaCodingKeys and conformance ResponseFormatEnvelope.KindEnvelope.SchemaCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ResponseFormatEnvelope.GrammarDetailsEnvelope.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration22ResponseFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV014GrammarDetailsH0V10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration22ResponseFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV014GrammarDetailsH0V10CodingKeysOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ResponseFormatEnvelope.GrammarDetailsEnvelope.CodingKeys and conformance ResponseFormatEnvelope.GrammarDetailsEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
  v8[13] = 2;
  KeyedEncodingContainer.encode(_:forKey:)();
  return (*(v4 + 8))(v6, v3);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ResponseFormatEnvelope.GrammarDetailsEnvelope.CodingKeys()
{
  v1 = 0x7470697263736564;
  if (*v0 != 1)
  {
    v1 = 0x72616D6D617267;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ResponseFormatEnvelope.GrammarDetailsEnvelope.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized ResponseFormatEnvelope.GrammarDetailsEnvelope.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ResponseFormatEnvelope.GrammarDetailsEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ResponseFormatEnvelope.GrammarDetailsEnvelope.CodingKeys and conformance ResponseFormatEnvelope.GrammarDetailsEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ResponseFormatEnvelope.GrammarDetailsEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ResponseFormatEnvelope.GrammarDetailsEnvelope.CodingKeys and conformance ResponseFormatEnvelope.GrammarDetailsEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double protocol witness for Decodable.init(from:) in conformance ResponseFormatEnvelope.GrammarDetailsEnvelope@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  specialized ResponseFormatEnvelope.GrammarDetailsEnvelope.init(from:)(a2, v6);
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

uint64_t ResponseFormatEnvelope.SchemaDetailsEnvelope.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration22ResponseFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV013SchemaDetailsH0V10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration22ResponseFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV013SchemaDetailsH0V10CodingKeysOGMR);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ResponseFormatEnvelope.SchemaDetailsEnvelope.CodingKeys and conformance ResponseFormatEnvelope.SchemaDetailsEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v8[15] = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v1)
  {
    v8[14] = 1;
    KeyedEncodingContainer.encodeIfPresent(_:forKey:)();
    type metadata accessor for ResponseFormatEnvelope.SchemaDetailsEnvelope(0);
    v8[13] = 2;
    type metadata accessor for GenerationSchema();
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type GenerationSchema and conformance GenerationSchema, MEMORY[0x1E69A0B98], MEMORY[0x1E69A0BA0]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ResponseFormatEnvelope.SchemaDetailsEnvelope.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v21 = type metadata accessor for GenerationSchema();
  v18 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v5 = v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration22ResponseFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV013SchemaDetailsH0V10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration22ResponseFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV013SchemaDetailsH0V10CodingKeysOGMR);
  v20 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v7 = v16 - v6;
  v8 = type metadata accessor for ResponseFormatEnvelope.SchemaDetailsEnvelope(0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ResponseFormatEnvelope.SchemaDetailsEnvelope.CodingKeys and conformance ResponseFormatEnvelope.SchemaDetailsEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v17 = a1;
  v12 = v20;
  v11 = v21;
  v25 = 0;
  *v10 = KeyedDecodingContainer.decode(_:forKey:)();
  v10[1] = v13;
  v16[1] = v13;
  v24 = 1;
  v10[2] = KeyedDecodingContainer.decodeIfPresent(_:forKey:)();
  v10[3] = v14;
  v23 = 2;
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type GenerationSchema and conformance GenerationSchema, MEMORY[0x1E69A0B98], MEMORY[0x1E69A0BB0]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v12 + 8))(v7, v22);
  (*(v18 + 32))(v10 + *(v8 + 24), v5, v11);
  outlined init with copy of DocumentResourceEnvelope(v10, v19, type metadata accessor for ResponseFormatEnvelope.SchemaDetailsEnvelope);
  __swift_destroy_boxed_opaque_existential_0(v17);
  return outlined destroy of DocumentResourceEnvelope(v10, type metadata accessor for ResponseFormatEnvelope.SchemaDetailsEnvelope);
}

uint64_t ResponseFormatEnvelope.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v15 = a2;
  v4 = type metadata accessor for ResponseFormatEnvelope.KindEnvelope(0);
  MEMORY[0x1EEE9AC00](v4);
  v17 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration22ResponseFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration22ResponseFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v16 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v15 - v7;
  v9 = type metadata accessor for ResponseFormatEnvelope(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ResponseFormatEnvelope.CodingKeys and conformance ResponseFormatEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v2)
  {
    v12 = v15;
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type ResponseFormatEnvelope.KindEnvelope and conformance ResponseFormatEnvelope.KindEnvelope, type metadata accessor for ResponseFormatEnvelope.KindEnvelope, &protocol conformance descriptor for ResponseFormatEnvelope.KindEnvelope);
    v13 = v17;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v16 + 8))(v8, v6);
    outlined init with take of DocumentRegistrationEnvelope(v13, v11, type metadata accessor for ResponseFormatEnvelope.KindEnvelope);
    outlined init with take of DocumentRegistrationEnvelope(v11, v12, type metadata accessor for ResponseFormatEnvelope);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ResponseFormatEnvelope.SchemaDetailsEnvelope.CodingKeys()
{
  v1 = 0x7470697263736564;
  if (*v0 != 1)
  {
    v1 = 0x616D65686373;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ResponseFormatEnvelope.SchemaDetailsEnvelope.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized ResponseFormatEnvelope.SchemaDetailsEnvelope.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ResponseFormatEnvelope.SchemaDetailsEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ResponseFormatEnvelope.SchemaDetailsEnvelope.CodingKeys and conformance ResponseFormatEnvelope.SchemaDetailsEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ResponseFormatEnvelope.SchemaDetailsEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ResponseFormatEnvelope.SchemaDetailsEnvelope.CodingKeys and conformance ResponseFormatEnvelope.SchemaDetailsEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ResponseFormatEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 1684957547 && a2 == 0xE400000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ResponseFormatEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ResponseFormatEnvelope.CodingKeys and conformance ResponseFormatEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ResponseFormatEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ResponseFormatEnvelope.CodingKeys and conformance ResponseFormatEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance ResponseFormatEnvelope(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration22ResponseFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration22ResponseFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ResponseFormatEnvelope.CodingKeys and conformance ResponseFormatEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for ResponseFormatEnvelope.KindEnvelope(0);
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type ResponseFormatEnvelope.KindEnvelope and conformance ResponseFormatEnvelope.KindEnvelope, type metadata accessor for ResponseFormatEnvelope.KindEnvelope, &protocol conformance descriptor for ResponseFormatEnvelope.KindEnvelope);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t ToolDefinitionsEnvelope.ToolEnvelope.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0fH0O18FunctionCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0fH0O18FunctionCodingKeysOGMR);
  v57 = *(v2 - 8);
  v58 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v54 = &v46 - v3;
  v4 = type metadata accessor for Tool.Function();
  v55 = *(v4 - 8);
  v56 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v53 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0fH0O04FileeF10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0fH0O04FileeF10CodingKeysOGMR);
  v52 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v66 = &v46 - v6;
  v7 = type metadata accessor for FileGenerationParameters();
  v64 = *(v7 - 8);
  v65 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v63 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0fH0O05ImageeF10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0fH0O05ImageeF10CodingKeysOGMR);
  v51 = *(v62 - 8);
  MEMORY[0x1EEE9AC00](v62);
  v61 = &v46 - v9;
  v10 = type metadata accessor for ImageGenerationParameters();
  v59 = *(v10 - 8);
  v60 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v46 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0fH0O24ImageGeneratorCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0fH0O24ImageGeneratorCodingKeysOGMR);
  v49 = *(v50 - 8);
  MEMORY[0x1EEE9AC00](v50);
  v14 = &v46 - v13;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0fH0O17BrowserCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0fH0O17BrowserCodingKeysOGMR);
  v47 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v16 = &v46 - v15;
  v17 = type metadata accessor for ToolDefinitionsEnvelope.ToolEnvelope(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v46 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0fH0O10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0fH0O10CodingKeysOGMR);
  v70 = *(v72 - 8);
  MEMORY[0x1EEE9AC00](v72);
  v21 = &v46 - v20;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ToolDefinitionsEnvelope.ToolEnvelope.CodingKeys and conformance ToolDefinitionsEnvelope.ToolEnvelope.CodingKeys();
  v69 = v21;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of DocumentResourceEnvelope(v68, v19, type metadata accessor for ToolDefinitionsEnvelope.ToolEnvelope);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    v25 = v12;
    v26 = v61;
    v28 = v62;
    v27 = v63;
    v30 = v65;
    v29 = v66;
    v31 = v64;
    v32 = v67;
    if (EnumCaseMultiPayload)
    {
      (*(v64 + 32))(v63, v19, v65);
      v76 = 3;
      lazy protocol witness table accessor for type ToolDefinitionsEnvelope.ToolEnvelope.FileGenerationToolCodingKeys and conformance ToolDefinitionsEnvelope.ToolEnvelope.FileGenerationToolCodingKeys();
      v36 = v69;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type FileGenerationParameters and conformance FileGenerationParameters, MEMORY[0x1E69A0CF8], MEMORY[0x1E69A0D00]);
      v45 = v71;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v45)
      {
        (*(v52 + 8))(v29, v32);
        (*(v31 + 8))(v27, v30);
        goto LABEL_13;
      }

      (*(v52 + 8))(v29, v32);
      (*(v31 + 8))(v27, v30);
    }

    else
    {
      v33 = v59;
      v34 = v25;
      v35 = v60;
      (*(v59 + 32))(v25, v19, v60);
      v75 = 2;
      lazy protocol witness table accessor for type ToolDefinitionsEnvelope.ToolEnvelope.ImageGenerationToolCodingKeys and conformance ToolDefinitionsEnvelope.ToolEnvelope.ImageGenerationToolCodingKeys();
      v36 = v69;
      KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type ImageGenerationParameters and conformance ImageGenerationParameters, MEMORY[0x1E69A0D90], MEMORY[0x1E69A0D98]);
      v37 = v71;
      KeyedEncodingContainer.encode<A>(_:forKey:)();
      if (v37)
      {
        (*(v51 + 8))(v26, v28);
        (*(v33 + 8))(v34, v35);
LABEL_13:
        v42 = v72;
        return (*(v70 + 8))(v36, v42);
      }

      (*(v51 + 8))(v26, v28);
      (*(v33 + 8))(v34, v35);
    }

    return (*(v70 + 8))(v36, v72);
  }

  if (EnumCaseMultiPayload == 2)
  {
    v39 = v55;
    v38 = v56;
    v40 = v53;
    (*(v55 + 32))();
    v77 = 4;
    lazy protocol witness table accessor for type ToolDefinitionsEnvelope.ToolEnvelope.FunctionCodingKeys and conformance ToolDefinitionsEnvelope.ToolEnvelope.FunctionCodingKeys();
    v41 = v54;
    v42 = v72;
    v36 = v69;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Tool.Function and conformance Tool.Function, MEMORY[0x1E69A0DD8], MEMORY[0x1E69A0DE0]);
    v43 = v58;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v57 + 8))(v41, v43);
    (*(v39 + 8))(v40, v38);
    return (*(v70 + 8))(v36, v42);
  }

  if (EnumCaseMultiPayload == 3)
  {
    v73 = 0;
    lazy protocol witness table accessor for type ToolDefinitionsEnvelope.ToolEnvelope.BrowserCodingKeys and conformance ToolDefinitionsEnvelope.ToolEnvelope.BrowserCodingKeys();
    v23 = v72;
    v24 = v69;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v47 + 8))(v16, v48);
  }

  else
  {
    v74 = 1;
    lazy protocol witness table accessor for type ToolDefinitionsEnvelope.ToolEnvelope.ImageGeneratorCodingKeys and conformance ToolDefinitionsEnvelope.ToolEnvelope.ImageGeneratorCodingKeys();
    v23 = v72;
    v24 = v69;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v49 + 8))(v14, v50);
  }

  return (*(v70 + 8))(v24, v23);
}

uint64_t ToolDefinitionsEnvelope.ToolEnvelope.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v66 = a2;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0fH0O18FunctionCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0fH0O18FunctionCodingKeysOGMR);
  v64 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v72 = &v50 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0fH0O04FileeF10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0fH0O04FileeF10CodingKeysOGMR);
  v62 = *(v4 - 8);
  v63 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v65 = &v50 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0fH0O05ImageeF10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0fH0O05ImageeF10CodingKeysOGMR);
  v59 = *(v6 - 8);
  v60 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v71 = &v50 - v7;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0fH0O24ImageGeneratorCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0fH0O24ImageGeneratorCodingKeysOGMR);
  v58 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v70 = &v50 - v8;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0fH0O17BrowserCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0fH0O17BrowserCodingKeysOGMR);
  v55 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v68 = &v50 - v9;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0fH0O10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0fH0O10CodingKeysOGMR);
  v67 = *(v69 - 8);
  MEMORY[0x1EEE9AC00](v69);
  v11 = &v50 - v10;
  v12 = type metadata accessor for ToolDefinitionsEnvelope.ToolEnvelope(0);
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
  lazy protocol witness table accessor for type ToolDefinitionsEnvelope.ToolEnvelope.CodingKeys and conformance ToolDefinitionsEnvelope.ToolEnvelope.CodingKeys();
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
      lazy protocol witness table accessor for type ToolDefinitionsEnvelope.ToolEnvelope.ImageGeneratorCodingKeys and conformance ToolDefinitionsEnvelope.ToolEnvelope.ImageGeneratorCodingKeys();
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v43 = v66;
      v42 = v67;
      (*(v58 + 8))(v28, v57);
    }

    else
    {
      v79 = 0;
      lazy protocol witness table accessor for type ToolDefinitionsEnvelope.ToolEnvelope.BrowserCodingKeys and conformance ToolDefinitionsEnvelope.ToolEnvelope.BrowserCodingKeys();
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
      lazy protocol witness table accessor for type ToolDefinitionsEnvelope.ToolEnvelope.ImageGenerationToolCodingKeys and conformance ToolDefinitionsEnvelope.ToolEnvelope.ImageGenerationToolCodingKeys();
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
        lazy protocol witness table accessor for type ToolDefinitionsEnvelope.ToolEnvelope.FileGenerationToolCodingKeys and conformance ToolDefinitionsEnvelope.ToolEnvelope.FileGenerationToolCodingKeys();
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
        lazy protocol witness table accessor for type ToolDefinitionsEnvelope.ToolEnvelope.FunctionCodingKeys and conformance ToolDefinitionsEnvelope.ToolEnvelope.FunctionCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        type metadata accessor for Tool.Function();
        lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Tool.Function and conformance Tool.Function, MEMORY[0x1E69A0DD8], MEMORY[0x1E69A0DE8]);
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
    outlined init with take of DocumentRegistrationEnvelope(v35, v74, type metadata accessor for ToolDefinitionsEnvelope.ToolEnvelope);
    v49 = v73;
    v43 = v66;
  }

  outlined init with take of DocumentRegistrationEnvelope(v44, v43, type metadata accessor for ToolDefinitionsEnvelope.ToolEnvelope);
  v40 = v49;
  return __swift_destroy_boxed_opaque_existential_0(v40);
}

uint64_t ToolDefinitionsEnvelope.encode(to:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ToolDefinitionsEnvelope.CodingKeys and conformance ToolDefinitionsEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0cE0OGMd, &_sSay15TokenGeneration23ToolDefinitionsEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV0cE0OGMR);
  lazy protocol witness table accessor for type [ToolDefinitionsEnvelope.ToolEnvelope] and conformance <A> [A]();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ToolDefinitionsEnvelope.ToolEnvelope.BrowserCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDefinitionsEnvelope.ToolEnvelope.BrowserCodingKeys and conformance ToolDefinitionsEnvelope.ToolEnvelope.BrowserCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ToolDefinitionsEnvelope.ToolEnvelope.BrowserCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDefinitionsEnvelope.ToolEnvelope.BrowserCodingKeys and conformance ToolDefinitionsEnvelope.ToolEnvelope.BrowserCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

unint64_t protocol witness for CodingKey.stringValue.getter in conformance ToolDefinitionsEnvelope.ToolEnvelope.CodingKeys()
{
  v1 = *v0;
  v2 = 0x726573776F7262;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ToolDefinitionsEnvelope.ToolEnvelope.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized ToolDefinitionsEnvelope.ToolEnvelope.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ToolDefinitionsEnvelope.ToolEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDefinitionsEnvelope.ToolEnvelope.CodingKeys and conformance ToolDefinitionsEnvelope.ToolEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ToolDefinitionsEnvelope.ToolEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDefinitionsEnvelope.ToolEnvelope.CodingKeys and conformance ToolDefinitionsEnvelope.ToolEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ToolDefinitionsEnvelope.ToolEnvelope.FileGenerationToolCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDefinitionsEnvelope.ToolEnvelope.FileGenerationToolCodingKeys and conformance ToolDefinitionsEnvelope.ToolEnvelope.FileGenerationToolCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ToolDefinitionsEnvelope.ToolEnvelope.FileGenerationToolCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDefinitionsEnvelope.ToolEnvelope.FileGenerationToolCodingKeys and conformance ToolDefinitionsEnvelope.ToolEnvelope.FileGenerationToolCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ToolDefinitionsEnvelope.ToolEnvelope.FunctionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDefinitionsEnvelope.ToolEnvelope.FunctionCodingKeys and conformance ToolDefinitionsEnvelope.ToolEnvelope.FunctionCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ToolDefinitionsEnvelope.ToolEnvelope.FunctionCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDefinitionsEnvelope.ToolEnvelope.FunctionCodingKeys and conformance ToolDefinitionsEnvelope.ToolEnvelope.FunctionCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ToolDefinitionsEnvelope.ToolEnvelope.ImageGenerationToolCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDefinitionsEnvelope.ToolEnvelope.ImageGenerationToolCodingKeys and conformance ToolDefinitionsEnvelope.ToolEnvelope.ImageGenerationToolCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ToolDefinitionsEnvelope.ToolEnvelope.ImageGenerationToolCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDefinitionsEnvelope.ToolEnvelope.ImageGenerationToolCodingKeys and conformance ToolDefinitionsEnvelope.ToolEnvelope.ImageGenerationToolCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ToolDefinitionsEnvelope.ToolEnvelope.ImageGeneratorCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDefinitionsEnvelope.ToolEnvelope.ImageGeneratorCodingKeys and conformance ToolDefinitionsEnvelope.ToolEnvelope.ImageGeneratorCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ToolDefinitionsEnvelope.ToolEnvelope.ImageGeneratorCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDefinitionsEnvelope.ToolEnvelope.ImageGeneratorCodingKeys and conformance ToolDefinitionsEnvelope.ToolEnvelope.ImageGeneratorCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ToolDefinitionsEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736C6F6F74 && a2 == 0xE500000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ToolDefinitionsEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDefinitionsEnvelope.CodingKeys and conformance ToolDefinitionsEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ToolDefinitionsEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ToolDefinitionsEnvelope.CodingKeys and conformance ToolDefinitionsEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *protocol witness for Decodable.init(from:) in conformance ToolDefinitionsEnvelope@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = specialized ToolDefinitionsEnvelope.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t ImageFormatEnvelope.encode(to:)(void *a1, int a2)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration19ImageFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO13JpgCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration19ImageFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO13JpgCodingKeysOGMR);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration19ImageFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO13PngCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration19ImageFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO13PngCodingKeysOGMR);
  v6 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration19ImageFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration19ImageFormatEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMR);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ImageFormatEnvelope.CodingKeys and conformance ImageFormatEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    lazy protocol witness table accessor for type ImageFormatEnvelope.JpgCodingKeys and conformance ImageFormatEnvelope.JpgCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    lazy protocol witness table accessor for type ImageFormatEnvelope.PngCodingKeys and conformance ImageFormatEnvelope.PngCodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ImageFormatEnvelope.CodingKeys()
{
  if (*v0)
  {
    return 6778986;
  }

  else
  {
    return 6778480;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ImageFormatEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 6778480 && a2 == 0xE300000000000000;
  if (v5 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 6778986 && a2 == 0xE300000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ImageFormatEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageFormatEnvelope.CodingKeys and conformance ImageFormatEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ImageFormatEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageFormatEnvelope.CodingKeys and conformance ImageFormatEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ImageFormatEnvelope.JpgCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageFormatEnvelope.JpgCodingKeys and conformance ImageFormatEnvelope.JpgCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ImageFormatEnvelope.JpgCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageFormatEnvelope.JpgCodingKeys and conformance ImageFormatEnvelope.JpgCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ImageFormatEnvelope.PngCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageFormatEnvelope.PngCodingKeys and conformance ImageFormatEnvelope.PngCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ImageFormatEnvelope.PngCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageFormatEnvelope.PngCodingKeys and conformance ImageFormatEnvelope.PngCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance ImageFormatEnvelope@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = specialized ImageFormatEnvelope.init(from:)(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t ImageEmbeddingEncodingEnvelope.encode(to:)(void *a1, int a2)
{
  v18 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration014ImageEmbeddingB8Envelope33_FCE651B3B8F212418F5C81F0A4785E63LLO17Float16CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration014ImageEmbeddingB8Envelope33_FCE651B3B8F212418F5C81F0A4785E63LLO17Float16CodingKeysOGMR);
  v16 = *(v3 - 8);
  v17 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration014ImageEmbeddingB8Envelope33_FCE651B3B8F212418F5C81F0A4785E63LLO15Uint8CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration014ImageEmbeddingB8Envelope33_FCE651B3B8F212418F5C81F0A4785E63LLO15Uint8CodingKeysOGMR);
  v6 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v8 = &v15 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration014ImageEmbeddingB8Envelope33_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration014ImageEmbeddingB8Envelope33_FCE651B3B8F212418F5C81F0A4785E63LLO10CodingKeysOGMR);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v15 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ImageEmbeddingEncodingEnvelope.CodingKeys and conformance ImageEmbeddingEncodingEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v13 = (v10 + 8);
  if (v18)
  {
    v20 = 1;
    lazy protocol witness table accessor for type ImageEmbeddingEncodingEnvelope.Float16CodingKeys and conformance ImageEmbeddingEncodingEnvelope.Float16CodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v16 + 8))(v5, v17);
  }

  else
  {
    v19 = 0;
    lazy protocol witness table accessor for type ImageEmbeddingEncodingEnvelope.Uint8CodingKeys and conformance ImageEmbeddingEncodingEnvelope.Uint8CodingKeys();
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    (*(v6 + 8))(v8, v15);
  }

  return (*v13)(v12, v9);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ImageEmbeddingEncodingEnvelope.CodingKeys()
{
  if (*v0)
  {
    return 0x363174616F6C66;
  }

  else
  {
    return 0x38746E6975;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ImageEmbeddingEncodingEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x38746E6975 && a2 == 0xE500000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x363174616F6C66 && a2 == 0xE700000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ImageEmbeddingEncodingEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageEmbeddingEncodingEnvelope.CodingKeys and conformance ImageEmbeddingEncodingEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ImageEmbeddingEncodingEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageEmbeddingEncodingEnvelope.CodingKeys and conformance ImageEmbeddingEncodingEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ImageEmbeddingEncodingEnvelope.Float16CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageEmbeddingEncodingEnvelope.Float16CodingKeys and conformance ImageEmbeddingEncodingEnvelope.Float16CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ImageEmbeddingEncodingEnvelope.Float16CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageEmbeddingEncodingEnvelope.Float16CodingKeys and conformance ImageEmbeddingEncodingEnvelope.Float16CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ImageEmbeddingEncodingEnvelope.Uint8CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageEmbeddingEncodingEnvelope.Uint8CodingKeys and conformance ImageEmbeddingEncodingEnvelope.Uint8CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ImageEmbeddingEncodingEnvelope.Uint8CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageEmbeddingEncodingEnvelope.Uint8CodingKeys and conformance ImageEmbeddingEncodingEnvelope.Uint8CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Decodable.init(from:) in conformance ImageEmbeddingEncodingEnvelope@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = specialized ImageEmbeddingEncodingEnvelope.init(from:)(a2);
  if (!v2)
  {
    *a1 = result & 1;
  }

  return result;
}

uint64_t ImageEmbeddingEnvelope.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration22ImageEmbeddingEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration22ImageEmbeddingEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7 - 8];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type ImageEmbeddingEnvelope.CodingKeys and conformance ImageEmbeddingEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  LOBYTE(v12) = *v3;
  v11[0] = 0;
  lazy protocol witness table accessor for type ImageEmbeddingEncodingEnvelope and conformance ImageEmbeddingEncodingEnvelope();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v12 = *(v3 + 8);
    v13 = v12;
    v11[23] = 1;
    outlined init with copy of Data(&v13, v11);
    lazy protocol witness table accessor for type Data and conformance Data();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    outlined consume of Data._Representation(v12, *(&v12 + 1));
    LOBYTE(v12) = 2;
    KeyedEncodingContainer.encode(_:forKey:)();
    LOBYTE(v12) = 3;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance ImageEmbeddingEnvelope.CodingKeys()
{
  v1 = 0x676E69646F636E65;
  v2 = 0x756F436E656B6F74;
  if (*v0 != 2)
  {
    v2 = 0x727574616E676973;
  }

  if (*v0)
  {
    v1 = 1635017060;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance ImageEmbeddingEnvelope.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized ImageEmbeddingEnvelope.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance ImageEmbeddingEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageEmbeddingEnvelope.CodingKeys and conformance ImageEmbeddingEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance ImageEmbeddingEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type ImageEmbeddingEnvelope.CodingKeys and conformance ImageEmbeddingEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double protocol witness for Decodable.init(from:) in conformance ImageEmbeddingEnvelope@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  specialized ImageEmbeddingEnvelope.init(from:)(a2, v6);
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

uint64_t PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextEnvelope.encode(to:)(void *a1, uint64_t a2, uint64_t a3, int a4)
{
  v12 = a4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V07ContentI0O04TextI0V10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V07ContentI0O04TextI0V10CodingKeysOGMR);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  KeyedEncodingContainer.encode(_:forKey:)();
  if (!v4)
  {
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V07ContentI0O31PreprocessedImageDataCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V07ContentI0O31PreprocessedImageDataCodingKeysOGMR);
  v66 = *(v2 - 8);
  v67 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v63 = &v51 - v3;
  v4 = type metadata accessor for Prompt.PreprocessedImageData();
  v64 = *(v4 - 8);
  v65 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v62 = &v51 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V07ContentI0O28ImageEmbeddingDataCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V07ContentI0O28ImageEmbeddingDataCodingKeysOGMR);
  v60 = *(v6 - 8);
  v61 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v57 = &v51 - v7;
  v59 = type metadata accessor for Prompt.ImageEmbeddingData();
  v58 = *(v59 - 8);
  MEMORY[0x1EEE9AC00](v59);
  v56 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V07ContentI0O22ImageSurfaceCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V07ContentI0O22ImageSurfaceCodingKeysOGMR);
  v54 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v53 = &v51 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V07ContentI0O19ImageDataCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V07ContentI0O19ImageDataCodingKeysOGMR);
  v71 = *(v10 - 8);
  v72 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v70 = &v51 - v11;
  v12 = type metadata accessor for Prompt.ImageData();
  v68 = *(v12 - 8);
  v69 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v51 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V07ContentI0O14TextCodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V07ContentI0O14TextCodingKeysOGMR);
  v52 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v51 - v16;
  v18 = type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope(0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V07ContentI0O10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V07ContentI0O10CodingKeysOGMR);
  v74 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v22 = &v51 - v21;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.CodingKeys();
  v75 = v22;
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  outlined init with copy of DocumentResourceEnvelope(v73, v20, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 1)
  {
    if (EnumCaseMultiPayload != 2)
    {
      if (EnumCaseMultiPayload == 3)
      {
        v24 = v58;
        v25 = v56;
        v26 = v59;
        (*(v58 + 32))(v56, v20, v59);
        LOBYTE(v76) = 3;
        lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageEmbeddingDataCodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageEmbeddingDataCodingKeys();
        v27 = v57;
        v28 = v79;
        v29 = v75;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Prompt.ImageEmbeddingData and conformance Prompt.ImageEmbeddingData, MEMORY[0x1E69C6268], MEMORY[0x1E69C6270]);
        v30 = v61;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v31 = v60;
      }

      else
      {
        v24 = v64;
        v26 = v65;
        v25 = v62;
        (*(v64 + 32))(v62, v20, v65);
        LOBYTE(v76) = 4;
        lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.PreprocessedImageDataCodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.PreprocessedImageDataCodingKeys();
        v27 = v63;
        v28 = v79;
        v29 = v75;
        KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Prompt.PreprocessedImageData and conformance Prompt.PreprocessedImageData, MEMORY[0x1E69C6288], MEMORY[0x1E69C6290]);
        v30 = v67;
        KeyedEncodingContainer.encode<A>(_:forKey:)();
        v31 = v66;
      }

      (*(v31 + 8))(v27, v30);
      (*(v24 + 8))(v25, v26);
      return (*(v74 + 8))(v29, v28);
    }

    v44 = *v20;
    v43 = *(v20 + 1);
    LOBYTE(v76) = 2;
    lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageSurfaceCodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageSurfaceCodingKeys();
    v45 = v53;
    v46 = v79;
    v47 = v75;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v76 = v44;
    v77 = v43;
    lazy protocol witness table accessor for type ImageSurfaceEnvelope and conformance ImageSurfaceEnvelope();
    v48 = v55;
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v54 + 8))(v45, v48);
    (*(v74 + 8))(v47, v46);
  }

  v32 = v15;
  v33 = v14;
  v35 = v69;
  v34 = v70;
  v37 = v71;
  v36 = v72;
  if (!EnumCaseMultiPayload)
  {
    v39 = *v20;
    v38 = *(v20 + 1);
    v40 = v20[16];
    LOBYTE(v76) = 0;
    lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextCodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextCodingKeys();
    v41 = v79;
    v42 = v75;
    KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
    v76 = v39;
    v77 = v38;
    v78 = v40;
    lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextEnvelope and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextEnvelope();
    KeyedEncodingContainer.encode<A>(_:forKey:)();
    (*(v52 + 8))(v17, v32);
    (*(v74 + 8))(v42, v41);
  }

  v50 = v68;
  (*(v68 + 32))(v33, v20, v69);
  LOBYTE(v76) = 1;
  lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageDataCodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageDataCodingKeys();
  v29 = v75;
  KeyedEncodingContainer.nestedContainer<A>(keyedBy:forKey:)();
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Prompt.ImageData and conformance Prompt.ImageData, MEMORY[0x1E69C6368], MEMORY[0x1E69C6370]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  (*(v37 + 8))(v34, v36);
  (*(v50 + 8))(v33, v35);
  v28 = v79;
  return (*(v74 + 8))(v29, v28);
}

uint64_t PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.hash(into:)(uint64_t a1)
{
  v2 = type metadata accessor for Prompt.PreprocessedImageData();
  v23 = *(v2 - 8);
  v24 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v21 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for Prompt.ImageEmbeddingData();
  v22 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Prompt.ImageData();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of DocumentResourceEnvelope(v1, v14, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      (*(v9 + 32))(v11, v14, v8);
      MEMORY[0x1AC5A6570](1);
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Prompt.ImageData and conformance Prompt.ImageData, MEMORY[0x1E69C6368], MEMORY[0x1E69C6378]);
      dispatch thunk of Hashable.hash(into:)();
      return (*(v9 + 8))(v11, v8);
    }

    v18 = v14[16];
    MEMORY[0x1AC5A6570](0);
    String.hash(into:)();
    Hasher._combine(_:)(v18);
  }

  if (EnumCaseMultiPayload == 2)
  {
    MEMORY[0x1AC5A6570](2);
    String.hash(into:)();
  }

  if (EnumCaseMultiPayload == 3)
  {
    v16 = v22;
    (*(v22 + 32))(v7, v14, v5);
    MEMORY[0x1AC5A6570](3);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Prompt.ImageEmbeddingData and conformance Prompt.ImageEmbeddingData, MEMORY[0x1E69C6268], MEMORY[0x1E69C6278]);
    dispatch thunk of Hashable.hash(into:)();
    return (*(v16 + 8))(v7, v5);
  }

  else
  {
    v20 = v23;
    v19 = v24;
    (*(v23 + 32))(v4, v14, v24);
    MEMORY[0x1AC5A6570](4);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Prompt.PreprocessedImageData and conformance Prompt.PreprocessedImageData, MEMORY[0x1E69C6288], MEMORY[0x1E69C6298]);
    dispatch thunk of Hashable.hash(into:)();
    return (*(v20 + 8))(v4, v19);
  }
}

uint64_t PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v91 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V07ContentI0O31PreprocessedImageDataCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V07ContentI0O31PreprocessedImageDataCodingKeysOGMR);
  v4 = *(v3 - 8);
  v80 = v3;
  v81 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v83 = &v67 - v5;
  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V07ContentI0O28ImageEmbeddingDataCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V07ContentI0O28ImageEmbeddingDataCodingKeysOGMR);
  v79 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v84 = &v67 - v6;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V07ContentI0O22ImageSurfaceCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V07ContentI0O22ImageSurfaceCodingKeysOGMR);
  v77 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v90 = &v67 - v7;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V07ContentI0O19ImageDataCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V07ContentI0O19ImageDataCodingKeysOGMR);
  v76 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v89 = &v67 - v8;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V07ContentI0O14TextCodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V07ContentI0O14TextCodingKeysOGMR);
  v73 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v82 = &v67 - v9;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V07ContentI0O10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V07ContentI0O10CodingKeysOGMR);
  v86 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v11 = &v67 - v10;
  v85 = type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope(0);
  MEMORY[0x1EEE9AC00](v85);
  v72 = &v67 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v67 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v67 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v67 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v67 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v67 - v26;
  v28 = a1[3];
  v92 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v28);
  lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.CodingKeys();
  v29 = v100;
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v29)
  {
    goto LABEL_9;
  }

  v68 = v24;
  v69 = v18;
  v70 = v21;
  v71 = v15;
  v30 = v87;
  v31 = v88;
  v33 = v89;
  v32 = v90;
  v100 = v27;
  v34 = v91;
  v35 = KeyedDecodingContainer.allKeys.getter();
  v36 = (2 * *(v35 + 16)) | 1;
  v96 = v35;
  v97 = v35 + 32;
  v98 = 0;
  v99 = v36;
  v37 = specialized Collection<>.popFirst()();
  if (v37 == 5 || v98 != v99 >> 1)
  {
    v42 = type metadata accessor for DecodingError();
    swift_allocError();
    v44 = v43;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sypXmT_s13DecodingErrorO7ContextVtMd, &_sypXmT_s13DecodingErrorO7ContextVtMR);
    *v44 = v85;
    KeyedDecodingContainer.codingPath.getter();
    DecodingError.Context.init(codingPath:debugDescription:underlyingError:)();
    (*(*(v42 - 8) + 104))(v44, *MEMORY[0x1E69E6AF8], v42);
    swift_willThrow();
    (*(v86 + 8))(v11, v31);
    swift_unknownObjectRelease();
LABEL_9:
    v45 = v92;
    return __swift_destroy_boxed_opaque_existential_0(v45);
  }

  if (v37 <= 1u)
  {
    v47 = v34;
    if (v37)
    {
      LOBYTE(v93) = 1;
      lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageDataCodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageDataCodingKeys();
      v54 = v33;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v55 = v86;
      type metadata accessor for Prompt.ImageData();
      lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Prompt.ImageData and conformance Prompt.ImageData, MEMORY[0x1E69C6368], MEMORY[0x1E69C6380]);
      v56 = v70;
      v57 = v75;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v76 + 8))(v54, v57);
      (*(v55 + 8))(v11, v31);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v61 = v56;
    }

    else
    {
      LOBYTE(v93) = 0;
      lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextCodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextCodingKeys();
      v48 = v82;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      v49 = v86;
      lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextEnvelope and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextEnvelope();
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v73 + 8))(v48, v30);
      (*(v49 + 8))(v11, v31);
      swift_unknownObjectRelease();
      v58 = v94;
      v59 = v95;
      v60 = v68;
      *v68 = v93;
      v60[1] = v58;
      *(v60 + 16) = v59;
      swift_storeEnumTagMultiPayload();
      v61 = v60;
    }

    v65 = v100;
    outlined init with take of DocumentRegistrationEnvelope(v61, v100, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope);
    v66 = v92;
  }

  else
  {
    if (v37 == 2)
    {
      LOBYTE(v93) = 2;
      lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageSurfaceCodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageSurfaceCodingKeys();
      v50 = v32;
      KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
      lazy protocol witness table accessor for type ImageSurfaceEnvelope and conformance ImageSurfaceEnvelope();
      v51 = v74;
      KeyedDecodingContainer.decode<A>(_:forKey:)();
      (*(v77 + 8))(v50, v51);
      (*(v86 + 8))(v11, v31);
      swift_unknownObjectRelease();
      v62 = v94;
      v63 = v69;
      *v69 = v93;
      v63[1] = v62;
      swift_storeEnumTagMultiPayload();
      v64 = v63;
    }

    else
    {
      if (v37 == 3)
      {
        LOBYTE(v93) = 3;
        lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageEmbeddingDataCodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageEmbeddingDataCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v38 = v86;
        type metadata accessor for Prompt.ImageEmbeddingData();
        lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Prompt.ImageEmbeddingData and conformance Prompt.ImageEmbeddingData, MEMORY[0x1E69C6268], MEMORY[0x1E69C6280]);
        v39 = v71;
        v40 = v78;
        v41 = v84;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v79 + 8))(v41, v40);
      }

      else
      {
        LOBYTE(v93) = 4;
        lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.PreprocessedImageDataCodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.PreprocessedImageDataCodingKeys();
        KeyedDecodingContainer.nestedContainer<A>(keyedBy:forKey:)();
        v38 = v86;
        type metadata accessor for Prompt.PreprocessedImageData();
        lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Prompt.PreprocessedImageData and conformance Prompt.PreprocessedImageData, MEMORY[0x1E69C6288], MEMORY[0x1E69C62A0]);
        v39 = v72;
        v52 = v80;
        v53 = v83;
        KeyedDecodingContainer.decode<A>(_:forKey:)();
        (*(v81 + 8))(v53, v52);
      }

      (*(v38 + 8))(v11, v31);
      swift_unknownObjectRelease();
      swift_storeEnumTagMultiPayload();
      v64 = v39;
    }

    v65 = v100;
    outlined init with take of DocumentRegistrationEnvelope(v64, v100, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope);
    v66 = v92;
    v47 = v34;
  }

  outlined init with take of DocumentRegistrationEnvelope(v65, v47, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope);
  v45 = v66;
  return __swift_destroy_boxed_opaque_existential_0(v45);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextEnvelope.CodingKeys()
{
  if (*v0)
  {
    return 0x7441666C65537369;
  }

  else
  {
    return 0x676E69727473;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x676E69727473 && a2 == 0xE600000000000000;
  if (v6 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x7441666C65537369 && a2 == 0xEF6E6F69746E6574)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextEnvelope()
{
  v1 = *(v0 + 16);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v1);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextEnvelope(uint64_t a1)
{
  v2 = *(v1 + 16);
  String.hash(into:)();
  Hasher._combine(_:)(v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextEnvelope(uint64_t a1)
{
  v2 = *(v1 + 16);
  Hasher.init(_seed:)();
  String.hash(into:)();
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

uint64_t protocol witness for Decodable.init(from:) in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextEnvelope@<X0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  result = specialized PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextEnvelope.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
    *(a1 + 8) = v5;
    *(a1 + 16) = v6 & 1;
  }

  return result;
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextEnvelope(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = _stringCompareWithSmolCheck(_:_:expecting:)();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.CodingKeys()
{
  v1 = *v0;
  v2 = 1954047348;
  v3 = 0x7275536567616D69;
  v4 = 0xD000000000000012;
  if (v1 != 3)
  {
    v4 = 0xD000000000000015;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x7461446567616D69;
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

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageDataCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageDataCodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageDataCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageDataCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageDataCodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageDataCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageEmbeddingDataCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageEmbeddingDataCodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageEmbeddingDataCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageEmbeddingDataCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageEmbeddingDataCodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageEmbeddingDataCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageSurfaceCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageSurfaceCodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageSurfaceCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageSurfaceCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageSurfaceCodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.ImageSurfaceCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.PreprocessedImageDataCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.PreprocessedImageDataCodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.PreprocessedImageDataCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.PreprocessedImageDataCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.PreprocessedImageDataCodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.PreprocessedImageDataCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextCodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextCodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextCodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextCodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope.TextCodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.unseal(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = v3;
  v7 = type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  outlined init with copy of DocumentResourceEnvelope(v4, v9, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      v14 = type metadata accessor for Prompt.ImageData();
      (*(*(v14 - 8) + 32))(a2, v9, v14);
      v12 = MEMORY[0x1E69DA8B0];
    }

    else
    {
      PromptTemplateInfo.RichVariableBinding.Component.Content.Text.init(string:isSelfAttention:)();
      v12 = MEMORY[0x1E69DA8A8];
    }
  }

  else if (EnumCaseMultiPayload == 2)
  {
    ImageSurfaceEnvelope.unsealSurface(_:)(a1, *v9, v9[1]);

    PromptTemplateInfo.RichVariableBinding.Component.Content.ImageSurface.init(surface:)();
    v12 = MEMORY[0x1E69DA890];
  }

  else if (EnumCaseMultiPayload == 3)
  {
    v11 = type metadata accessor for Prompt.ImageEmbeddingData();
    (*(*(v11 - 8) + 32))(a2, v9, v11);
    v12 = MEMORY[0x1E69DA898];
  }

  else
  {
    v13 = type metadata accessor for Prompt.PreprocessedImageData();
    (*(*(v13 - 8) + 32))(a2, v9, v13);
    v12 = MEMORY[0x1E69DA8A0];
  }

  v15 = *v12;
  v16 = type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content();
  return (*(*(v16 - 8) + 104))(a2, v15, v16);
}

uint64_t PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v5 = type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope(0);
  MEMORY[0x1EEE9AC00](v5);
  v18 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V10CodingKeysOGMR);
  v17 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v16 - v8;
  v10 = type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v16 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (!v3)
  {
    v13 = v16;
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope, &protocol conformance descriptor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope);
    v14 = v18;
    KeyedDecodingContainer.decode<A>(_:forKey:)();
    (*(v17 + 8))(v9, v7);
    outlined init with take of DocumentRegistrationEnvelope(v14, v12, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope);
    outlined init with take of DocumentRegistrationEnvelope(v12, v13, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope);
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x746E65746E6F63 && a2 == 0xE700000000000000)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t protocol witness for Encodable.encode(to:) in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V09ComponentI0V10CodingKeysOGMR);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope(0);
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope, type metadata accessor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope, &protocol conformance descriptor for PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.ContentEnvelope);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v3 + 8))(v5, v2);
}

uint64_t closure #1 in PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.unseal(_:)(uint64_t a1, uint64_t a2)
{
  v3 = type metadata accessor for PromptTemplateInfo.RichVariableBinding.Component.Content();
  MEMORY[0x1EEE9AC00](v3 - 8);
  PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope.unseal(_:)(a2, &v6 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  return PromptTemplateInfo.RichVariableBinding.Component.init(content:)();
}

uint64_t PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.encode(to:)(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingI0V10CodingKeysOGMR);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v9 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v9[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingF0V09ComponentF0VGMd, &_sSay15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingF0V09ComponentF0VGMR);
  lazy protocol witness table accessor for type [PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.ComponentEnvelope] and conformance <A> [A]();
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  return (*(v5 + 8))(v7, v4);
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.CodingKeys@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6E656E6F706D6F63 && a2 == 0xEA00000000007374)
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

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v3, v1);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope(uint64_t a1)
{
  v2 = *v1;
  Hasher.init(_seed:)();
  specialized Array<A>.hash(into:)(v4, v2);
  return Hasher._finalize()();
}

void *protocol witness for Decodable.init(from:) in conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = specialized PromptTemplateInfoEnvelope.RichVariableBindingEnvelope.init(from:)(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t PromptTemplateInfoEnvelope.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v11 = *v3;
  v10[7] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingF0VGMd, &_sSDySS15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingF0VGMR);
  lazy protocol witness table accessor for type [String : PromptTemplateInfoEnvelope.RichVariableBindingEnvelope] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : PromptTemplateInfoEnvelope.RichVariableBindingEnvelope] and conformance <> [A : B], lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v10[6] = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    type metadata accessor for PromptTemplateInfoEnvelope(0);
    v10[5] = 2;
    type metadata accessor for Locale();
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770], MEMORY[0x1E6969778]);
    KeyedEncodingContainer.encodeIfPresent<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

void PromptTemplateInfoEnvelope.hash(into:)(uint64_t a1, __n128 a2)
{
  v4 = type metadata accessor for Locale();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v12 - v9;
  specialized Dictionary<>.hash(into:)(a1, *v2);
  String.hash(into:)();
  v11 = type metadata accessor for PromptTemplateInfoEnvelope(0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v2 + *(v11 + 24), v10, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v5 + 8))(v7, v4);
  }
}

Swift::Int PromptTemplateInfoEnvelope.hashValue.getter(__n128 a1)
{
  v2 = type metadata accessor for Locale();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12[-1] - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12[-1] - v7;
  Hasher.init(_seed:)();
  specialized Dictionary<>.hash(into:)(v12, *v1);
  String.hash(into:)();
  v9 = type metadata accessor for PromptTemplateInfoEnvelope(0);
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v1 + *(v9 + 24), v8, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  if ((*(v3 + 48))(v8, 1, v2) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v3 + 32))(v5, v8, v2);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v3 + 8))(v5, v2);
  }

  return Hasher._finalize()();
}

uint64_t PromptTemplateInfoEnvelope.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v19 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v20 = *(v7 - 8);
  v21 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v17 - v8;
  v10 = type metadata accessor for PromptTemplateInfoEnvelope(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = (&v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v18 = v10;
  v13 = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySS15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingF0VGMd, &_sSDySS15TokenGeneration26PromptTemplateInfoEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV019RichVariableBindingF0VGMR);
  v24 = 0;
  lazy protocol witness table accessor for type [String : PromptTemplateInfoEnvelope.RichVariableBindingEnvelope] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : PromptTemplateInfoEnvelope.RichVariableBindingEnvelope] and conformance <> [A : B], lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.RichVariableBindingEnvelope and conformance PromptTemplateInfoEnvelope.RichVariableBindingEnvelope, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
  v14 = v21;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  v17 = v25;
  *v12 = v25;
  v23 = 1;
  v12[1] = KeyedDecodingContainer.decode(_:forKey:)();
  v12[2] = v15;
  type metadata accessor for Locale();
  v22 = 2;
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770], MEMORY[0x1E6969790]);
  KeyedDecodingContainer.decodeIfPresent<A>(_:forKey:)();
  (*(v13 + 8))(v9, v14);
  outlined init with take of (result: (tokenStream: TokenStream<String>, stringResponseStream: StringResponseSanitizerWithConfiguration?, instrumenter: GenerativeFunctionInstrumenter), duration: Double)(v6, v12 + *(v18 + 24), &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  outlined init with copy of DocumentResourceEnvelope(v12, v19, type metadata accessor for PromptTemplateInfoEnvelope);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return outlined destroy of DocumentResourceEnvelope(v12, type metadata accessor for PromptTemplateInfoEnvelope);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance PromptTemplateInfoEnvelope.CodingKeys()
{
  v1 = 0x6574616C706D6574;
  if (*v0 != 1)
  {
    v1 = 0x656C61636F6CLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000014;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance PromptTemplateInfoEnvelope.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized PromptTemplateInfoEnvelope.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PromptTemplateInfoEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance PromptTemplateInfoEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type PromptTemplateInfoEnvelope.CodingKeys and conformance PromptTemplateInfoEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PromptTemplateInfoEnvelope(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for Locale();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14[-1] - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v14[-1] - v10;
  Hasher.init(_seed:)();
  specialized Dictionary<>.hash(into:)(v14, *v3);
  String.hash(into:)();
  outlined init with copy of Promptkit_Wireformat_PromptRequestVersionEnum?(v3 + *(a2 + 24), v11, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  if ((*(v6 + 48))(v11, 1, v5) == 1)
  {
    Hasher._combine(_:)(0);
  }

  else
  {
    (*(v6 + 32))(v8, v11, v5);
    Hasher._combine(_:)(1u);
    lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type Locale and conformance Locale, MEMORY[0x1E6969770], MEMORY[0x1E6969780]);
    dispatch thunk of Hashable.hash(into:)();
    (*(v6 + 8))(v8, v5);
  }

  return Hasher._finalize()();
}

uint64_t DocumentResourceEnvelope.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedEncodingContainerVy15TokenGeneration24DocumentResourceEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedEncodingContainerVy15TokenGeneration24DocumentResourceEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DocumentResourceEnvelope.CodingKeys and conformance DocumentResourceEnvelope.CodingKeys();
  dispatch thunk of Encoder.container<A>(keyedBy:)();
  v14 = 0;
  type metadata accessor for URL();
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
  KeyedEncodingContainer.encode<A>(_:forKey:)();
  if (!v2)
  {
    v9 = type metadata accessor for DocumentResourceEnvelope(0);
    v13 = 1;
    KeyedEncodingContainer.encode(_:forKey:)();
    v12 = *(v3 + *(v9 + 24));
    v11[15] = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
    lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B], MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    KeyedEncodingContainer.encode<A>(_:forKey:)();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t DocumentResourceEnvelope.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v16 = a2;
  v4 = type metadata accessor for URL();
  v17 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v20 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss22KeyedDecodingContainerVy15TokenGeneration24DocumentResourceEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMd, &_ss22KeyedDecodingContainerVy15TokenGeneration24DocumentResourceEnvelope33_FCE651B3B8F212418F5C81F0A4785E63LLV10CodingKeysOGMR);
  v18 = *(v6 - 8);
  v19 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = type metadata accessor for DocumentResourceEnvelope(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v16 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  lazy protocol witness table accessor for type DocumentResourceEnvelope.CodingKeys and conformance DocumentResourceEnvelope.CodingKeys();
  dispatch thunk of Decoder.container<A>(keyedBy:)();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_0(a1);
  }

  v12 = v11;
  v13 = v17;
  v24 = 0;
  lazy protocol witness table accessor for type DocumentResourceEnvelope and conformance DocumentResourceEnvelope(&lazy protocol witness table cache variable for type URL and conformance URL, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
  v14 = v19;
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v13 + 32))(v12, v20, v4);
  v23 = 1;
  *(v12 + *(v9 + 20)) = KeyedDecodingContainer.decode(_:forKey:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDyS2SGMd, &_sSDyS2SGMR);
  v22 = 2;
  lazy protocol witness table accessor for type [String : String] and conformance <> [A : B](&lazy protocol witness table cache variable for type [String : String] and conformance <> [A : B], MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
  KeyedDecodingContainer.decode<A>(_:forKey:)();
  (*(v18 + 8))(v8, v14);
  *(v12 + *(v9 + 24)) = v21;
  outlined init with copy of DocumentResourceEnvelope(v12, v16, type metadata accessor for DocumentResourceEnvelope);
  __swift_destroy_boxed_opaque_existential_0(a1);
  return outlined destroy of DocumentResourceEnvelope(v12, type metadata accessor for DocumentResourceEnvelope);
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance DocumentResourceEnvelope.CodingKeys()
{
  v1 = 0x63736544656C6966;
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
    return 7107189;
  }
}

uint64_t protocol witness for CodingKey.init(stringValue:) in conformance DocumentResourceEnvelope.CodingKeys@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = specialized DocumentResourceEnvelope.CodingKeys.init(stringValue:)(a2, a3);
  *a1 = result;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance DocumentResourceEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DocumentResourceEnvelope.CodingKeys and conformance DocumentResourceEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t protocol witness for CustomDebugStringConvertible.debugDescription.getter in conformance DocumentResourceEnvelope.CodingKeys(uint64_t a1)
{
  v2 = lazy protocol witness table accessor for type DocumentResourceEnvelope.CodingKeys and conformance DocumentResourceEnvelope.CodingKeys();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t DocumentRegistrationStatusEnvelope.init(sealing:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = type metadata accessor for DocumentRegistration.Progress();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v26 - v10;
  v12 = type metadata accessor for DocumentRegistration.InternalStatus();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = (v26 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v13 + 16))(v16, a1, v12, v14);
  v17 = (*(v13 + 88))(v16, v12);
  if (v17 == *MEMORY[0x1E69A1508])
  {
    (*(v13 + 96))(v16, v12);
    (*(v6 + 32))(v11, v16, v5);
    (*(v6 + 16))(v8, v11, v5);
    DocumentRegistration.Progress.progress.getter();
    v19 = v18;
    v20 = DocumentRegistration.Progress.bytes.getter();
    v21 = DocumentRegistration.Progress.totalBytes.getter();
    (*(v13 + 8))(a1, v12);
    v22 = *(v6 + 8);
    v22(v8, v5);
    v22(v11, v5);
    *a2 = v19;
    *(a2 + 8) = v20;
    *(a2 + 16) = v21;
    type metadata accessor for DocumentRegistrationStatusEnvelope(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (v17 == *MEMORY[0x1E69A1518])
  {
    (*(v13 + 8))(a1, v12);
    (*(v13 + 96))(v16, v12);
    v23 = type metadata accessor for DocumentResourceIdentifier();
    (*(*(v23 - 8) + 32))(a2, v16, v23);
    type metadata accessor for DocumentRegistrationStatusEnvelope(0);
    return swift_storeEnumTagMultiPayload();
  }

  if (v17 == *MEMORY[0x1E69A1510])
  {
    (*(v13 + 8))(a1, v12);
    (*(v13 + 96))(v16, v12);
    v24 = v16[1];
    *a2 = *v16;
    *(a2 + 8) = v24;
    type metadata accessor for DocumentRegistrationStatusEnvelope(0);
    return swift_storeEnumTagMultiPayload();
  }

  v26[0] = 0;
  v26[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(40);
  MEMORY[0x1AC5A5BC0](0xD000000000000026, 0x80000001ABA419E0);
  _print_unlocked<A, B>(_:_:)();
  result = _assertionFailure(_:_:file:line:flags:)();
  __break(1u);
  return result;
}

uint64_t protocol witness for CodingKey.stringValue.getter in conformance DocumentRegistrationEnvelope.CodingKeys()
{
  if (*v0)
  {
    return 7107189;
  }

  else
  {
    return 0x737574617473;
  }
}