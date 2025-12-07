void sub_1C88798EC(uint64_t a1, char a2, void (*a3)(void *), uint64_t a4)
{
  v5 = *a1;
  v6 = *(*a1 + 40);
  v7 = *(*a1 + 48);
  v8 = *(*a1 + 32);
  if (a2)
  {
    sub_1C887D450();
    a3(v6);
    sub_1C887D4A4();
  }

  else
  {
    a3(*(*a1 + 48));
  }

  free(v7);
  free(v6);
  free(v8);

  free(v5);
}

uint64_t Siri_Nlu_Internal_Psc_PSCServiceRequest.unknownFields.getter()
{
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v0 = OUTLINED_FUNCTION_218();

  return v1(v0);
}

uint64_t Siri_Nlu_Internal_Psc_PSCServiceRequest.unknownFields.setter()
{
  OUTLINED_FUNCTION_241();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t Siri_Nlu_Internal_Psc_PSCServiceRequest.init()@<X0>(uint64_t a2@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceRequest(0) + 20);
  if (qword_1EC2B5120 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_1EC2B8530;
}

uint64_t sub_1C8879B6C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B8518);
  __swift_project_value_buffer(v0, qword_1EC2B8518);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1C8BE7150;
  v4 = v20 + v3 + v1[14];
  *(v20 + v3) = 1;
  *v4 = "request_id";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1C8BD50FC();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v20 + v3 + v2 + v1[14];
  *(v20 + v3 + v2) = 2;
  *v8 = "tokenised_utterance";
  *(v8 + 8) = 19;
  *(v8 + 16) = 2;
  v7();
  v9 = (v20 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "embeddings";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v7();
  v11 = (v20 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "matching_spans";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v7();
  v13 = (v20 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "turn_input";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v7();
  v15 = (v20 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 6;
  *v16 = "legacy_context";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v7();
  v17 = (v20 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 7;
  *v18 = "nlu_request_id";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v7();
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_Internal_Psc_PSCServiceRequest._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B5118 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2B8518);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C8879F08()
{
  type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceRequest._StorageClass(0);
  swift_allocObject();
  result = sub_1C8879F48();
  qword_1EC2B8530 = result;
  return result;
}

uint64_t sub_1C8879F48()
{
  v1 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__requestID;
  v2 = type metadata accessor for Siri_Nlu_External_UUID(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__tokenisedUtterance;
  v4 = type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__embeddings;
  v6 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__matchingSpans) = MEMORY[0x1E69E7CC0];
  v7 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__turnInput;
  v8 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__legacyContext;
  v10 = type metadata accessor for Siri_Nlu_External_LegacyNLContext(0);
  __swift_storeEnumTagSinglePayload(v0 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__nluRequestID;
  v12 = type metadata accessor for Siri_Nlu_External_RequestID(0);
  __swift_storeEnumTagSinglePayload(v0 + v11, 1, 1, v12);
  return v0;
}

uint64_t sub_1C887A054(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v53 = &v46 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FB8, &unk_1C8BF3D70);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v52 = &v46 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v51 = &v46 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v49 = &v46 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6538, &qword_1C8C12C80);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v46 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v46 - v15;
  v17 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__requestID;
  v18 = type metadata accessor for Siri_Nlu_External_UUID(0);
  __swift_storeEnumTagSinglePayload(v1 + v17, 1, 1, v18);
  v19 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__tokenisedUtterance;
  v20 = type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(0);
  __swift_storeEnumTagSinglePayload(v1 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__embeddings;
  v22 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  __swift_storeEnumTagSinglePayload(v1 + v21, 1, 1, v22);
  v23 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__matchingSpans;
  *(v1 + OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__matchingSpans) = MEMORY[0x1E69E7CC0];
  v24 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__turnInput;
  v47 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__turnInput;
  v25 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  __swift_storeEnumTagSinglePayload(v1 + v24, 1, 1, v25);
  v26 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__legacyContext;
  v48 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__legacyContext;
  v27 = type metadata accessor for Siri_Nlu_External_LegacyNLContext(0);
  __swift_storeEnumTagSinglePayload(v1 + v26, 1, 1, v27);
  v28 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__nluRequestID;
  v50 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__nluRequestID;
  v29 = type metadata accessor for Siri_Nlu_External_RequestID(0);
  __swift_storeEnumTagSinglePayload(v1 + v28, 1, 1, v29);
  v30 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__requestID;
  swift_beginAccess();
  sub_1C87867A0(a1 + v30, v16, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  swift_beginAccess();
  sub_1C878656C(v16, v1 + v17, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  swift_endAccess();
  v31 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__tokenisedUtterance;
  swift_beginAccess();
  sub_1C87867A0(a1 + v31, v13, &qword_1EC2B6538, &qword_1C8C12C80);
  swift_beginAccess();
  sub_1C878656C(v13, v1 + v19, &qword_1EC2B6538, &qword_1C8C12C80);
  swift_endAccess();
  v32 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__embeddings;
  swift_beginAccess();
  v33 = v49;
  sub_1C87867A0(a1 + v32, v49, &qword_1EC2B64A8, &unk_1C8BE7670);
  swift_beginAccess();
  sub_1C878656C(v33, v1 + v21, &qword_1EC2B64A8, &unk_1C8BE7670);
  swift_endAccess();
  v34 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__matchingSpans;
  swift_beginAccess();
  v35 = *(a1 + v34);
  swift_beginAccess();
  *(v1 + v23) = v35;

  v36 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__turnInput;
  swift_beginAccess();
  v37 = v51;
  sub_1C87867A0(a1 + v36, v51, &qword_1EC2B6038, &unk_1C8BE8850);
  v38 = v47;
  swift_beginAccess();
  sub_1C878656C(v37, v1 + v38, &qword_1EC2B6038, &unk_1C8BE8850);
  swift_endAccess();
  v39 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__legacyContext;
  swift_beginAccess();
  v40 = v52;
  sub_1C87867A0(a1 + v39, v52, &qword_1EC2B5FB8, &unk_1C8BF3D70);
  v41 = v48;
  swift_beginAccess();
  sub_1C878656C(v40, v1 + v41, &qword_1EC2B5FB8, &unk_1C8BF3D70);
  swift_endAccess();
  v42 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__nluRequestID;
  swift_beginAccess();
  v43 = v53;
  sub_1C87867A0(a1 + v42, v53, &qword_1EC2B64B0, &unk_1C8BF3F40);

  v44 = v50;
  swift_beginAccess();
  sub_1C878656C(v43, v1 + v44, &qword_1EC2B64B0, &unk_1C8BF3F40);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C887A6B8()
{
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__requestID, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__tokenisedUtterance, &qword_1EC2B6538, &qword_1C8C12C80);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__embeddings, &qword_1EC2B64A8, &unk_1C8BE7670);

  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__turnInput, &qword_1EC2B6038, &unk_1C8BE8850);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__legacyContext, &qword_1EC2B5FB8, &unk_1C8BF3D70);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__nluRequestID, &qword_1EC2B64B0, &unk_1C8BF3F40);
  return v0;
}

uint64_t sub_1C887A7A0()
{
  v0 = sub_1C887A6B8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Siri_Nlu_Internal_Psc_PSCServiceRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceRequest._StorageClass(0);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_2();
    v10 = sub_1C887A054(v11);
    *(v4 + v8) = v10;
  }

  return sub_1C887A894(v10, a1, a2, a3);
}

uint64_t sub_1C887A894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1C887A9C8(a2, a1, a3, a4);
        break;
      case 2:
        sub_1C887AAA4(a2, a1, a3, a4);
        break;
      case 3:
        sub_1C887AB80(a2, a1, a3, a4);
        break;
      case 4:
        sub_1C887AC5C(a2, a1, a3, a4);
        break;
      case 5:
        sub_1C887AD38(a2, a1, a3, a4);
        break;
      case 6:
        sub_1C887AE14(a2, a1, a3, a4);
        break;
      case 7:
        sub_1C887AEF0(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C887A9C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_UUID(0);
  sub_1C8776668(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID, &protocol conformance descriptor for Siri_Nlu_External_UUID);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C887AAA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(0);
  sub_1C8776668(&qword_1EC2B45E8, type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation, &protocol conformance descriptor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C887AB80(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  sub_1C8776668(&qword_1EC2B47B8, type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor, &protocol conformance descriptor for Siri_Nlu_Internal_NLv4EmbeddingTensor);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C887AC5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0);
  sub_1C8776668(&qword_1EC2B4A28, type metadata accessor for Siri_Nlu_Internal_MatchingSpan, &protocol conformance descriptor for Siri_Nlu_Internal_MatchingSpan);
  sub_1C8BD4C6C();
  return swift_endAccess();
}

uint64_t sub_1C887AD38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_TurnInput(0);
  sub_1C8776668(&qword_1EDACC908, type metadata accessor for Siri_Nlu_External_TurnInput, &protocol conformance descriptor for Siri_Nlu_External_TurnInput);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C887AE14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_LegacyNLContext(0);
  sub_1C8776668(&qword_1EDACB6D0, type metadata accessor for Siri_Nlu_External_LegacyNLContext, &protocol conformance descriptor for Siri_Nlu_External_LegacyNLContext);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C887AEF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_RequestID(0);
  sub_1C8776668(&qword_1EDACCBA8, type metadata accessor for Siri_Nlu_External_RequestID, &protocol conformance descriptor for Siri_Nlu_External_RequestID);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t Siri_Nlu_Internal_Psc_PSCServiceRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceRequest(0);
  result = sub_1C887B038(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t sub_1C887B038(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v59 = a4;
  v58 = a3;
  v57 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v44 = v43 - v6;
  v45 = type metadata accessor for Siri_Nlu_External_RequestID(0);
  MEMORY[0x1EEE9AC00](v45);
  v43[1] = v43 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FB8, &unk_1C8BF3D70);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v55 = v43 - v9;
  v47 = type metadata accessor for Siri_Nlu_External_LegacyNLContext(0);
  MEMORY[0x1EEE9AC00](v47);
  v43[2] = v43 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v52 = v43 - v12;
  v48 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  MEMORY[0x1EEE9AC00](v48);
  v46 = v43 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v51 = v43 - v15;
  v54 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  MEMORY[0x1EEE9AC00](v54);
  v49 = v43 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6538, &qword_1C8C12C80);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v19 = v43 - v18;
  v53 = type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(0);
  MEMORY[0x1EEE9AC00](v53);
  v50 = v43 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = v43 - v22;
  v24 = type metadata accessor for Siri_Nlu_External_UUID(0);
  MEMORY[0x1EEE9AC00](v24);
  v25 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__requestID;
  swift_beginAccess();
  sub_1C87867A0(a1 + v25, v23, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if (__swift_getEnumTagSinglePayload(v23, 1, v24) == 1)
  {
    sub_1C8778ED8(v23, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    v26 = v56;
  }

  else
  {
    sub_1C887D3FC();
    sub_1C8776668(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID, &protocol conformance descriptor for Siri_Nlu_External_UUID);
    v27 = v56;
    sub_1C8BD4E2C();
    v26 = v27;
    result = sub_1C887D4A4();
    if (v27)
    {
      return result;
    }
  }

  v29 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__tokenisedUtterance;
  swift_beginAccess();
  sub_1C87867A0(a1 + v29, v19, &qword_1EC2B6538, &qword_1C8C12C80);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v19, 1, v53);
  v31 = v55;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8778ED8(v19, &qword_1EC2B6538, &qword_1C8C12C80);
    v32 = v54;
  }

  else
  {
    sub_1C887D3FC();
    sub_1C8776668(&qword_1EC2B45E8, type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation, &protocol conformance descriptor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation);
    sub_1C8BD4E2C();
    result = sub_1C887D4A4();
    v32 = v54;
    if (v26)
    {
      return result;
    }
  }

  v33 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__embeddings;
  swift_beginAccess();
  v34 = a1 + v33;
  v35 = v51;
  sub_1C87867A0(v34, v51, &qword_1EC2B64A8, &unk_1C8BE7670);
  v36 = __swift_getEnumTagSinglePayload(v35, 1, v32);
  v37 = v52;
  if (v36 == 1)
  {
    sub_1C8778ED8(v35, &qword_1EC2B64A8, &unk_1C8BE7670);
  }

  else
  {
    sub_1C887D3FC();
    sub_1C8776668(&qword_1EC2B47B8, type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor, &protocol conformance descriptor for Siri_Nlu_Internal_NLv4EmbeddingTensor);
    sub_1C8BD4E2C();
    result = sub_1C887D4A4();
    if (v26)
    {
      return result;
    }

    v31 = v55;
  }

  v38 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__matchingSpans;
  swift_beginAccess();
  if (!*(*(a1 + v38) + 16) || (type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0), sub_1C8776668(&qword_1EC2B4A28, type metadata accessor for Siri_Nlu_Internal_MatchingSpan, &protocol conformance descriptor for Siri_Nlu_Internal_MatchingSpan), , sub_1C8BD4E0C(), result = , !v26))
  {
    v39 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__turnInput;
    swift_beginAccess();
    sub_1C87867A0(a1 + v39, v37, &qword_1EC2B6038, &unk_1C8BE8850);
    if (__swift_getEnumTagSinglePayload(v37, 1, v48) == 1)
    {
      sub_1C8778ED8(v37, &qword_1EC2B6038, &unk_1C8BE8850);
    }

    else
    {
      sub_1C887D3FC();
      sub_1C8776668(&qword_1EDACC908, type metadata accessor for Siri_Nlu_External_TurnInput, &protocol conformance descriptor for Siri_Nlu_External_TurnInput);
      sub_1C8BD4E2C();
      result = sub_1C887D4A4();
      if (v26)
      {
        return result;
      }
    }

    v40 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__legacyContext;
    swift_beginAccess();
    sub_1C87867A0(a1 + v40, v31, &qword_1EC2B5FB8, &unk_1C8BF3D70);
    if (__swift_getEnumTagSinglePayload(v31, 1, v47) == 1)
    {
      sub_1C8778ED8(v31, &qword_1EC2B5FB8, &unk_1C8BF3D70);
    }

    else
    {
      sub_1C887D3FC();
      sub_1C8776668(&qword_1EDACB6D0, type metadata accessor for Siri_Nlu_External_LegacyNLContext, &protocol conformance descriptor for Siri_Nlu_External_LegacyNLContext);
      sub_1C8BD4E2C();
      result = sub_1C887D4A4();
      if (v26)
      {
        return result;
      }
    }

    v41 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__nluRequestID;
    swift_beginAccess();
    v42 = v44;
    sub_1C87867A0(a1 + v41, v44, &qword_1EC2B64B0, &unk_1C8BF3F40);
    if (__swift_getEnumTagSinglePayload(v42, 1, v45) == 1)
    {
      return sub_1C8778ED8(v42, &qword_1EC2B64B0, &unk_1C8BF3F40);
    }

    else
    {
      sub_1C887D3FC();
      sub_1C8776668(&qword_1EDACCBA8, type metadata accessor for Siri_Nlu_External_RequestID, &protocol conformance descriptor for Siri_Nlu_External_RequestID);
      sub_1C8BD4E2C();
      return sub_1C887D4A4();
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_Psc_PSCServiceRequest.== infix(_:_:)()
{
  v2 = OUTLINED_FUNCTION_84();
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceRequest(v2) + 20);
  v4 = *(v1 + v3);
  v5 = *(v0 + v3);
  if (v4 != v5)
  {

    v6 = sub_1C887BC98(v4, v5);

    if (!v6)
    {
      return 0;
    }
  }

  sub_1C8BD49FC();
  sub_1C8776668(&qword_1EC2B2F70, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C8BD517C() & 1;
}

BOOL sub_1C887BC98(uint64_t a1, uint64_t a2)
{
  v155 = a2;
  v127 = type metadata accessor for Siri_Nlu_External_RequestID(0);
  MEMORY[0x1EEE9AC00](v127);
  v123 = &v123 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64D8, &unk_1C8BEAC20);
  MEMORY[0x1EEE9AC00](v126);
  v128 = &v123 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v124 = &v123 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v134 = &v123 - v8;
  v132 = type metadata accessor for Siri_Nlu_External_LegacyNLContext(0);
  MEMORY[0x1EEE9AC00](v132);
  v125 = &v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FC0, &unk_1C8BE6C70);
  MEMORY[0x1EEE9AC00](v131);
  v133 = &v123 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5FB8, &unk_1C8BF3D70);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v129 = &v123 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v139 = &v123 - v14;
  v137 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  MEMORY[0x1EEE9AC00](v137);
  v130 = &v123 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6040, &unk_1C8BE6CF0);
  MEMORY[0x1EEE9AC00](v136);
  v138 = &v123 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
  v18 = MEMORY[0x1EEE9AC00](v17 - 8);
  v135 = &v123 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v141 = &v123 - v20;
  v145 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  MEMORY[0x1EEE9AC00](v145);
  v140 = (&v123 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0));
  v144 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64E0, &unk_1C8BE7880);
  MEMORY[0x1EEE9AC00](v144);
  v146 = &v123 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v142 = (&v123 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v24);
  v148 = &v123 - v26;
  v152 = type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(0);
  MEMORY[0x1EEE9AC00](v152);
  v143 = &v123 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6570, &unk_1C8C13000);
  MEMORY[0x1EEE9AC00](v150);
  v153 = &v123 - v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6538, &qword_1C8C12C80);
  v30 = MEMORY[0x1EEE9AC00](v29 - 8);
  v147 = &v123 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v151 = &v123 - v32;
  v33 = type metadata accessor for Siri_Nlu_External_UUID(0);
  MEMORY[0x1EEE9AC00](v33);
  v149 = &v123 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90);
  v36 = v35 - 8;
  MEMORY[0x1EEE9AC00](v35);
  v38 = &v123 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  v40 = MEMORY[0x1EEE9AC00](v39 - 8);
  v154 = &v123 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v40);
  v43 = &v123 - v42;
  v44 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__requestID;
  swift_beginAccess();
  sub_1C87867A0(a1 + v44, v43, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v45 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__requestID;
  v46 = v155;
  swift_beginAccess();
  v47 = *(v36 + 56);
  sub_1C87867A0(v43, v38, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C87867A0(v46 + v45, &v38[v47], &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if (__swift_getEnumTagSinglePayload(v38, 1, v33) == 1)
  {

    sub_1C8778ED8(v43, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v38[v47], 1, v33);
    v49 = a1;
    if (EnumTagSinglePayload == 1)
    {
      sub_1C8778ED8(v38, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      goto LABEL_8;
    }

LABEL_6:
    v51 = &qword_1EC2B5EE8;
    v52 = &unk_1C8BE6F90;
    v53 = v38;
LABEL_21:
    sub_1C8778ED8(v53, v51, v52);
    goto LABEL_22;
  }

  v50 = v154;
  sub_1C87867A0(v38, v154, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if (__swift_getEnumTagSinglePayload(&v38[v47], 1, v33) == 1)
  {

    sub_1C8778ED8(v43, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    sub_1C887D4A4();
    goto LABEL_6;
  }

  v54 = v149;
  sub_1C887D3FC();
  v55 = a1;

  v56 = static Siri_Nlu_External_UUID.== infix(_:_:)(v50, v54);
  sub_1C887D4A4();
  sub_1C8778ED8(v43, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C887D4A4();
  v49 = v55;
  sub_1C8778ED8(v38, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if ((v56 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  v57 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__tokenisedUtterance;
  swift_beginAccess();
  v58 = v151;
  sub_1C87867A0(v49 + v57, v151, &qword_1EC2B6538, &qword_1C8C12C80);
  v59 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__tokenisedUtterance;
  swift_beginAccess();
  v60 = *(v150 + 48);
  v61 = v153;
  sub_1C87867A0(v58, v153, &qword_1EC2B6538, &qword_1C8C12C80);
  sub_1C87867A0(v46 + v59, v61 + v60, &qword_1EC2B6538, &qword_1C8C12C80);
  v62 = v152;
  if (__swift_getEnumTagSinglePayload(v61, 1, v152) == 1)
  {
    sub_1C8778ED8(v58, &qword_1EC2B6538, &qword_1C8C12C80);
    if (__swift_getEnumTagSinglePayload(v61 + v60, 1, v62) == 1)
    {
      sub_1C8778ED8(v61, &qword_1EC2B6538, &qword_1C8C12C80);
      goto LABEL_15;
    }

    goto LABEL_13;
  }

  v63 = v147;
  sub_1C87867A0(v61, v147, &qword_1EC2B6538, &qword_1C8C12C80);
  if (__swift_getEnumTagSinglePayload(v61 + v60, 1, v62) == 1)
  {
    sub_1C8778ED8(v58, &qword_1EC2B6538, &qword_1C8C12C80);
    sub_1C887D4A4();
LABEL_13:
    v51 = &qword_1EC2B6570;
    v52 = &unk_1C8C13000;
    v53 = v61;
    goto LABEL_21;
  }

  v64 = v143;
  sub_1C887D3FC();
  static Siri_Nlu_Internal_Nlv4Parser_Tokenisation.== infix(_:_:)(v63, v64, v65, v66, v67, v68, v69, v70, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134);
  v72 = v71;
  sub_1C887D4A4();
  sub_1C8778ED8(v58, &qword_1EC2B6538, &qword_1C8C12C80);
  sub_1C887D4A4();
  sub_1C8778ED8(v61, &qword_1EC2B6538, &qword_1C8C12C80);
  if ((v72 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_15:
  v73 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__embeddings;
  swift_beginAccess();
  v74 = v148;
  sub_1C87867A0(v49 + v73, v148, &qword_1EC2B64A8, &unk_1C8BE7670);
  v75 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__embeddings;
  swift_beginAccess();
  v76 = *(v144 + 48);
  v77 = v146;
  sub_1C87867A0(v74, v146, &qword_1EC2B64A8, &unk_1C8BE7670);
  sub_1C87867A0(v46 + v75, v77 + v76, &qword_1EC2B64A8, &unk_1C8BE7670);
  v78 = v145;
  if (__swift_getEnumTagSinglePayload(v77, 1, v145) == 1)
  {
    sub_1C8778ED8(v74, &qword_1EC2B64A8, &unk_1C8BE7670);
    if (__swift_getEnumTagSinglePayload(v77 + v76, 1, v78) == 1)
    {
      sub_1C8778ED8(v77, &qword_1EC2B64A8, &unk_1C8BE7670);
      goto LABEL_26;
    }

    goto LABEL_20;
  }

  v79 = v142;
  sub_1C87867A0(v77, v142, &qword_1EC2B64A8, &unk_1C8BE7670);
  if (__swift_getEnumTagSinglePayload(v77 + v76, 1, v78) == 1)
  {
    sub_1C8778ED8(v148, &qword_1EC2B64A8, &unk_1C8BE7670);
    sub_1C887D4A4();
LABEL_20:
    v51 = &qword_1EC2B64E0;
    v52 = &unk_1C8BE7880;
    v53 = v77;
    goto LABEL_21;
  }

  v81 = v140;
  sub_1C887D3FC();
  v82 = v77;
  v83 = static Siri_Nlu_Internal_NLv4EmbeddingTensor.== infix(_:_:)(v79, v81);
  sub_1C887D4A4();
  sub_1C8778ED8(v148, &qword_1EC2B64A8, &unk_1C8BE7670);
  sub_1C887D4A4();
  sub_1C8778ED8(v82, &qword_1EC2B64A8, &unk_1C8BE7670);
  if ((v83 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_26:
  v84 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__matchingSpans;
  swift_beginAccess();
  v85 = *(v49 + v84);
  v86 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__matchingSpans;
  swift_beginAccess();
  v87 = *(v46 + v86);

  sub_1C87D27C0(v85, v87);
  v89 = v88;

  if ((v89 & 1) == 0)
  {
    goto LABEL_22;
  }

  v90 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__turnInput;
  swift_beginAccess();
  v91 = v141;
  sub_1C87867A0(v49 + v90, v141, &qword_1EC2B6038, &unk_1C8BE8850);
  v92 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__turnInput;
  swift_beginAccess();
  v93 = *(v136 + 48);
  v94 = v138;
  sub_1C87867A0(v91, v138, &qword_1EC2B6038, &unk_1C8BE8850);
  v95 = v46 + v92;
  v96 = v94;
  sub_1C87867A0(v95, v94 + v93, &qword_1EC2B6038, &unk_1C8BE8850);
  v97 = v137;
  if (__swift_getEnumTagSinglePayload(v94, 1, v137) == 1)
  {
    sub_1C8778ED8(v91, &qword_1EC2B6038, &unk_1C8BE8850);
    v98 = __swift_getEnumTagSinglePayload(v94 + v93, 1, v97);
    v99 = v139;
    if (v98 == 1)
    {
      sub_1C8778ED8(v94, &qword_1EC2B6038, &unk_1C8BE8850);
      goto LABEL_36;
    }

    goto LABEL_32;
  }

  v100 = v135;
  sub_1C87867A0(v94, v135, &qword_1EC2B6038, &unk_1C8BE8850);
  v101 = __swift_getEnumTagSinglePayload(v94 + v93, 1, v97);
  v99 = v139;
  if (v101 == 1)
  {
    sub_1C8778ED8(v141, &qword_1EC2B6038, &unk_1C8BE8850);
    sub_1C887D4A4();
LABEL_32:
    v51 = &qword_1EC2B6040;
    v52 = &unk_1C8BE6CF0;
    v53 = v94;
    goto LABEL_21;
  }

  v102 = v130;
  sub_1C887D3FC();
  if (*(v100 + *(v97 + 20)) != *(v102 + *(v97 + 20)))
  {

    sub_1C88AD618();
    v104 = v103;

    if ((v104 & 1) == 0)
    {
      sub_1C887D4A4();
      sub_1C8778ED8(v141, &qword_1EC2B6038, &unk_1C8BE8850);
      sub_1C887D4A4();
      v53 = v96;
      v51 = &qword_1EC2B6038;
      v52 = &unk_1C8BE8850;
      goto LABEL_21;
    }
  }

  sub_1C8BD49FC();
  sub_1C8776668(&qword_1EC2B2F70, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v105 = sub_1C8BD517C();
  sub_1C887D4A4();
  sub_1C8778ED8(v141, &qword_1EC2B6038, &unk_1C8BE8850);
  sub_1C887D4A4();
  sub_1C8778ED8(v96, &qword_1EC2B6038, &unk_1C8BE8850);
  if ((v105 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_36:
  v106 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__legacyContext;
  swift_beginAccess();
  sub_1C87867A0(v49 + v106, v99, &qword_1EC2B5FB8, &unk_1C8BF3D70);
  v107 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__legacyContext;
  swift_beginAccess();
  v108 = *(v131 + 48);
  v109 = v133;
  sub_1C87867A0(v99, v133, &qword_1EC2B5FB8, &unk_1C8BF3D70);
  sub_1C87867A0(v46 + v107, v109 + v108, &qword_1EC2B5FB8, &unk_1C8BF3D70);
  v110 = v132;
  if (__swift_getEnumTagSinglePayload(v109, 1, v132) != 1)
  {
    sub_1C87867A0(v109, v129, &qword_1EC2B5FB8, &unk_1C8BF3D70);
    v113 = __swift_getEnumTagSinglePayload(v109 + v108, 1, v110);
    v112 = v134;
    if (v113 == 1)
    {
      sub_1C8778ED8(v99, &qword_1EC2B5FB8, &unk_1C8BF3D70);
      sub_1C887D4A4();
      goto LABEL_41;
    }

    sub_1C887D3FC();
    v114 = static Siri_Nlu_External_LegacyNLContext.== infix(_:_:)();
    sub_1C887D4A4();
    sub_1C8778ED8(v99, &qword_1EC2B5FB8, &unk_1C8BF3D70);
    sub_1C887D4A4();
    sub_1C8778ED8(v109, &qword_1EC2B5FB8, &unk_1C8BF3D70);
    if (v114)
    {
      goto LABEL_43;
    }

LABEL_22:

    return 0;
  }

  sub_1C8778ED8(v99, &qword_1EC2B5FB8, &unk_1C8BF3D70);
  v111 = __swift_getEnumTagSinglePayload(v109 + v108, 1, v110);
  v112 = v134;
  if (v111 != 1)
  {
LABEL_41:
    v51 = &qword_1EC2B5FC0;
    v52 = &unk_1C8BE6C70;
    v53 = v109;
    goto LABEL_21;
  }

  sub_1C8778ED8(v109, &qword_1EC2B5FB8, &unk_1C8BF3D70);
LABEL_43:
  v115 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__nluRequestID;
  swift_beginAccess();
  sub_1C87867A0(v49 + v115, v112, &qword_1EC2B64B0, &unk_1C8BF3F40);
  v116 = OBJC_IVAR____TtCV12SiriNLUTypes39Siri_Nlu_Internal_Psc_PSCServiceRequestP33_284733F6A309D403ED33D37D2CDF37F613_StorageClass__nluRequestID;
  swift_beginAccess();
  v117 = *(v126 + 48);
  v118 = v128;
  sub_1C87867A0(v112, v128, &qword_1EC2B64B0, &unk_1C8BF3F40);
  sub_1C87867A0(v46 + v116, v118 + v117, &qword_1EC2B64B0, &unk_1C8BF3F40);
  v119 = v127;
  if (__swift_getEnumTagSinglePayload(v118, 1, v127) == 1)
  {

    sub_1C8778ED8(v112, &qword_1EC2B64B0, &unk_1C8BF3F40);
    if (__swift_getEnumTagSinglePayload(v118 + v117, 1, v119) == 1)
    {
      sub_1C8778ED8(v118, &qword_1EC2B64B0, &unk_1C8BF3F40);
      return 1;
    }

    goto LABEL_49;
  }

  v120 = v124;
  sub_1C87867A0(v118, v124, &qword_1EC2B64B0, &unk_1C8BF3F40);
  if (__swift_getEnumTagSinglePayload(v118 + v117, 1, v119) == 1)
  {

    sub_1C8778ED8(v112, &qword_1EC2B64B0, &unk_1C8BF3F40);
    sub_1C887D4A4();
LABEL_49:
    sub_1C8778ED8(v118, &qword_1EC2B64D8, &unk_1C8BEAC20);
    return 0;
  }

  v121 = v123;
  sub_1C887D3FC();
  v122 = static Siri_Nlu_External_RequestID.== infix(_:_:)(v120, v121);

  sub_1C887D4A4();
  sub_1C8778ED8(v112, &qword_1EC2B64B0, &unk_1C8BF3F40);
  sub_1C887D4A4();
  sub_1C8778ED8(v118, &qword_1EC2B64B0, &unk_1C8BF3F40);
  return (v122 & 1) != 0;
}

uint64_t Siri_Nlu_Internal_Psc_PSCServiceRequest.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceRequest(0);
  sub_1C8776668(&qword_1EC2B8570, type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceRequest, &protocol conformance descriptor for Siri_Nlu_Internal_Psc_PSCServiceRequest);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C887D28C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776668(&qword_1EC2B85B0, type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceRequest, &protocol conformance descriptor for Siri_Nlu_Internal_Psc_PSCServiceRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C887D30C(uint64_t a1)
{
  v2 = sub_1C8776668(&qword_1EC2B8580, type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceRequest, &protocol conformance descriptor for Siri_Nlu_Internal_Psc_PSCServiceRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C887D37C(uint64_t a1, uint64_t a2)
{
  sub_1C8776668(&qword_1EC2B8580, type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceRequest, &protocol conformance descriptor for Siri_Nlu_Internal_Psc_PSCServiceRequest);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C887D3FC()
{
  v1 = OUTLINED_FUNCTION_84();
  v2(v1);
  OUTLINED_FUNCTION_21();
  v3 = OUTLINED_FUNCTION_218();
  v4(v3);
  return v0;
}

uint64_t sub_1C887D450()
{
  v1 = OUTLINED_FUNCTION_84();
  v2(v1);
  OUTLINED_FUNCTION_21();
  v3 = OUTLINED_FUNCTION_218();
  v4(v3);
  return v0;
}

uint64_t sub_1C887D4A4()
{
  v1 = OUTLINED_FUNCTION_241();
  v2(v1);
  OUTLINED_FUNCTION_21();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1C887D640(uint64_t a1)
{
  result = sub_1C8BD49FC();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceRequest._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1C887D6CC(uint64_t a1)
{
  sub_1C887D938(319, qword_1EDACE198, type metadata accessor for Siri_Nlu_External_UUID);
  if (v1 <= 0x3F)
  {
    sub_1C887D938(319, &qword_1EC2B45C8, type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation);
    if (v2 <= 0x3F)
    {
      sub_1C887D938(319, &qword_1EC2B4798, type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor);
      if (v3 <= 0x3F)
      {
        sub_1C887D938(319, qword_1EDACC8C0, type metadata accessor for Siri_Nlu_External_TurnInput);
        if (v4 <= 0x3F)
        {
          sub_1C887D938(319, qword_1EDACB670, type metadata accessor for Siri_Nlu_External_LegacyNLContext);
          if (v5 <= 0x3F)
          {
            sub_1C887D938(319, qword_1EDACDC48, type metadata accessor for Siri_Nlu_External_RequestID);
            if (v6 <= 0x3F)
            {
              swift_updateClassMetadata2();
            }
          }
        }
      }
    }
  }
}

void sub_1C887D938(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C8BD522C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest.text.getter()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest(0) + 20));
  if (v1[1])
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest(uint64_t a1)
{
  result = qword_1EC2B85F0;
  if (!qword_1EC2B85F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C887DA44(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest.text.setter(v1, v2);
}

uint64_t Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest.text.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest.text.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[2] = v1;
  v4 = *(type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest(0) + 20);
  *(v3 + 8) = v4;
  v5 = (v1 + v4);
  v6 = v5[1];
  if (v6)
  {
    v7 = *v5;
    v8 = v6;
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  v3[3] = v6;
  *v3 = v7;
  v3[1] = v8;

  return sub_1C87E6EC8;
}

Swift::Void __swiftcall Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest.clearText()()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest(0) + 20));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest.requestID.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_8_12();
  sub_1C887DCFC(v1 + *(v6 + 24), v2);
  v7 = type metadata accessor for Siri_Nlu_External_RequestID(0);
  if (__swift_getEnumTagSinglePayload(v2, 1, v7) != 1)
  {
    return sub_1C887DD6C(v2, a1);
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_18_2(v7[5]);
  type metadata accessor for Siri_Nlu_External_UUID(0);
  v8 = OUTLINED_FUNCTION_27_1();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  OUTLINED_FUNCTION_18_2(v7[7]);
  OUTLINED_FUNCTION_18_2(v7[8]);
  OUTLINED_FUNCTION_18_2(v7[9]);
  OUTLINED_FUNCTION_18_2(v7[10]);
  *(a1 + v7[11]) = 6;
  result = __swift_getEnumTagSinglePayload(v2, 1, v7);
  if (result != 1)
  {
    return sub_1C8778ED8(v2, &qword_1EC2B64B0, &unk_1C8BF3F40);
  }

  return result;
}

uint64_t sub_1C887DCFC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C887DD6C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_External_RequestID(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C887DDD0(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_External_RequestID(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C887E14C(a1, v4);
  return Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest.requestID.setter(v4);
}

uint64_t Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest.requestID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest(0) + 24);
  sub_1C8778ED8(v1 + v3, &qword_1EC2B64B0, &unk_1C8BF3F40);
  sub_1C887DD6C(a1, v1 + v3);
  v4 = type metadata accessor for Siri_Nlu_External_RequestID(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest.requestID.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Siri_Nlu_External_RequestID(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_21();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest(0) + 24);
  *(v3 + 10) = v11;
  sub_1C887DCFC(v1 + v11, v6);
  OUTLINED_FUNCTION_72(v6);
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_26(v7[5]);
    v13 = v7[6];
    v14 = type metadata accessor for Siri_Nlu_External_UUID(0);
    __swift_storeEnumTagSinglePayload(&v10[v13], 1, 1, v14);
    OUTLINED_FUNCTION_26(v7[7]);
    OUTLINED_FUNCTION_26(v7[8]);
    OUTLINED_FUNCTION_26(v7[9]);
    OUTLINED_FUNCTION_26(v7[10]);
    v10[v7[11]] = 6;
    OUTLINED_FUNCTION_72(v6);
    if (!v12)
    {
      sub_1C8778ED8(v6, &qword_1EC2B64B0, &unk_1C8BF3F40);
    }
  }

  else
  {
    sub_1C887DD6C(v6, v10);
  }

  return sub_1C887E06C;
}

void sub_1C887E06C(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = (*a1)[1];
  v7 = **a1;
  if (a2)
  {
    sub_1C887E14C((*a1)[4], v4);
    sub_1C8778ED8(v7 + v3, &qword_1EC2B64B0, &unk_1C8BF3F40);
    sub_1C887DD6C(v4, v7 + v3);
    OUTLINED_FUNCTION_321();
    sub_1C887E1B0(v5);
  }

  else
  {
    sub_1C8778ED8(v7 + v3, &qword_1EC2B64B0, &unk_1C8BF3F40);
    sub_1C887DD6C(v5, v7 + v3);
    OUTLINED_FUNCTION_321();
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

uint64_t sub_1C887E14C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_External_RequestID(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C887E1B0(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_External_RequestID(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest.hasRequestID.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_8_12();
  sub_1C887DCFC(v0 + *(v4 + 24), v1);
  v5 = type metadata accessor for Siri_Nlu_External_RequestID(0);
  v6 = __swift_getEnumTagSinglePayload(v1, 1, v5) != 1;
  sub_1C8778ED8(v1, &qword_1EC2B64B0, &unk_1C8BF3F40);
  return v6;
}

Swift::Void __swiftcall Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest.clearRequestID()()
{
  v1 = *(type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest(0) + 24);
  sub_1C8778ED8(v0 + v1, &qword_1EC2B64B0, &unk_1C8BF3F40);
  v2 = type metadata accessor for Siri_Nlu_External_RequestID(0);

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest.unknownFields.setter()
{
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v0 = OUTLINED_FUNCTION_5_0();

  return v1(v0);
}

uint64_t Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest.init()(uint64_t a1)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v1 = type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest(0);
  OUTLINED_FUNCTION_18_2(*(v1 + 20));
  type metadata accessor for Siri_Nlu_External_RequestID(0);
  v2 = OUTLINED_FUNCTION_27_1();

  return __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1C887E470()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B85B8);
  __swift_project_value_buffer(v0, qword_1EC2B85B8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "request_id";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B5128 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2B85B8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v3 || (v7 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v10 = OUTLINED_FUNCTION_5_0();
      sub_1C887E7D0(v10, v11, a2, a3);
    }

    else if (result == 1)
    {
      v8 = OUTLINED_FUNCTION_5_0();
      sub_1C887E76C(v8, v9, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C887E7D0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest(0);
  type metadata accessor for Siri_Nlu_External_RequestID(0);
  sub_1C887F194(&qword_1EDACCBA8, type metadata accessor for Siri_Nlu_External_RequestID, &protocol conformance descriptor for Siri_Nlu_External_RequestID);
  return sub_1C8BD4C7C();
}

uint64_t Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Siri_Nlu_External_RequestID(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest(0);
  if (!*(v3 + *(v13 + 20) + 8) || (result = sub_1C8BD4DDC(), !v4))
  {
    sub_1C887DCFC(v3 + *(v13 + 24), v8);
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      sub_1C8778ED8(v8, &qword_1EC2B64B0, &unk_1C8BF3F40);
    }

    else
    {
      sub_1C887DD6C(v8, v12);
      sub_1C887F194(&qword_1EDACCBA8, type metadata accessor for Siri_Nlu_External_RequestID, &protocol conformance descriptor for Siri_Nlu_External_RequestID);
      sub_1C8BD4E2C();
      result = sub_1C887E1B0(v12);
      if (v4)
      {
        return result;
      }
    }

    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t static Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Siri_Nlu_External_RequestID(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  OUTLINED_FUNCTION_80(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v28 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64D8, &unk_1C8BEAC20);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  v15 = type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest(0);
  v16 = *(v15 + 20);
  v17 = (a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  v20 = v19[1];
  if (v18)
  {
    if (!v20)
    {
      goto LABEL_19;
    }

    v21 = *v17 == *v19 && v18 == v20;
    if (!v21 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v20)
  {
    goto LABEL_19;
  }

  v22 = *(v15 + 24);
  v23 = *(v11 + 48);
  sub_1C887DCFC(a1 + v22, v14);
  sub_1C887DCFC(a2 + v22, &v14[v23]);
  OUTLINED_FUNCTION_72(v14);
  if (v21)
  {
    OUTLINED_FUNCTION_72(&v14[v23]);
    if (v21)
    {
      sub_1C8778ED8(v14, &qword_1EC2B64B0, &unk_1C8BF3F40);
LABEL_22:
      sub_1C8BD49FC();
      sub_1C887F194(&qword_1EC2B2F70, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      OUTLINED_FUNCTION_5_0();
      v25 = sub_1C8BD517C();
      return v25 & 1;
    }

    goto LABEL_18;
  }

  sub_1C887DCFC(v14, v10);
  OUTLINED_FUNCTION_72(&v14[v23]);
  if (v24)
  {
    sub_1C887E1B0(v10);
LABEL_18:
    sub_1C8778ED8(v14, &qword_1EC2B64D8, &unk_1C8BEAC20);
    goto LABEL_19;
  }

  sub_1C887DD6C(&v14[v23], v6);
  v27 = static Siri_Nlu_External_RequestID.== infix(_:_:)(v10, v6);
  sub_1C887E1B0(v6);
  sub_1C887E1B0(v10);
  sub_1C8778ED8(v14, &qword_1EC2B64B0, &unk_1C8BF3F40);
  if (v27)
  {
    goto LABEL_22;
  }

LABEL_19:
  v25 = 0;
  return v25 & 1;
}

uint64_t Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest(0);
  sub_1C887F194(&qword_1EC2B85D0, type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest, &protocol conformance descriptor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C887EDE8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C887F194(&qword_1EC2B8600, type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest, &protocol conformance descriptor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C887EE68(uint64_t a1)
{
  v2 = sub_1C887F194(&qword_1EC2B85E0, type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest, &protocol conformance descriptor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C887EED8(uint64_t a1, uint64_t a2)
{
  sub_1C887F194(&qword_1EC2B85E0, type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest, &protocol conformance descriptor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingRequest);

  return sub_1C8BD4CFC();
}

void sub_1C887F0A0(uint64_t a1)
{
  sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    sub_1C87E8A54();
    if (v2 <= 0x3F)
    {
      sub_1C887F13C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C887F13C(uint64_t a1)
{
  if (!qword_1EDACDC48[0])
  {
    type metadata accessor for Siri_Nlu_External_RequestID(255);
    v1 = sub_1C8BD522C();
    if (!v2)
    {
      atomic_store(v1, qword_1EDACDC48);
    }
  }
}

uint64_t sub_1C887F194(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Siri_Nlu_Internal_Spanmatch_SpanMatchResponse.matchingSpans.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_Spanmatch_SpanMatchResponse.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse(0) + 20);
  v4 = sub_1C8BD49FC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse(uint64_t a1)
{
  result = qword_1EC2B4588;
  if (!qword_1EC2B4588)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Spanmatch_SpanMatchResponse.unknownFields.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse(0) + 20);
  v4 = sub_1C8BD49FC();
  v5 = *(*(v4 - 8) + 40);

  return v5(v1 + v3, a1, v4);
}

uint64_t Siri_Nlu_Internal_Spanmatch_SpanMatchResponse.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse(0);
  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t sub_1C887F418()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B45B0);
  __swift_project_value_buffer(v0, qword_1EC2B45B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C8BE6F30;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "matching_spans";
  *(v4 + 8) = 14;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1C8BD50FC();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_Internal_Spanmatch_SpanMatchResponse._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B45A8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2B45B0);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Siri_Nlu_Internal_Spanmatch_SpanMatchResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C887F694(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C887F694(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0);
  sub_1C887FC68(&qword_1EC2B4A28, type metadata accessor for Siri_Nlu_Internal_MatchingSpan, &protocol conformance descriptor for Siri_Nlu_Internal_MatchingSpan);
  return sub_1C8BD4C6C();
}

uint64_t Siri_Nlu_Internal_Spanmatch_SpanMatchResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0), sub_1C887FC68(&qword_1EC2B4A28, type metadata accessor for Siri_Nlu_Internal_MatchingSpan, &protocol conformance descriptor for Siri_Nlu_Internal_MatchingSpan), result = sub_1C8BD4E0C(), !v4))
  {
    type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse(0);
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_Spanmatch_SpanMatchResponse.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  sub_1C87D27C0(*a1, *a2);
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse(0);
  sub_1C8BD49FC();
  sub_1C887FC68(&qword_1EC2B2F70, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C8BD517C() & 1;
}

uint64_t Siri_Nlu_Internal_Spanmatch_SpanMatchResponse.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse(0);
  sub_1C887FC68(&qword_1EC2B8608, type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse, &protocol conformance descriptor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C887F9B0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C887FC68(&qword_1EC2B8618, type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse, &protocol conformance descriptor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C887FA30(uint64_t a1)
{
  v2 = sub_1C887FC68(&qword_1EC2B45A0, type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse, &protocol conformance descriptor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C887FAA0(uint64_t a1, uint64_t a2)
{
  sub_1C887FC68(&qword_1EC2B45A0, type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse, &protocol conformance descriptor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C887FC68(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t Siri_Nlu_Internal_Tokenizer_TokenizerRequest.text.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerRequest(0);
  if (OUTLINED_FUNCTION_8_0(*(v0 + 20)))
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerRequest(uint64_t a1)
{
  result = qword_1EC2B8658;
  if (!qword_1EC2B8658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C887FD4C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_Tokenizer_TokenizerRequest.text.setter(v1, v2);
}

uint64_t Siri_Nlu_Internal_Tokenizer_TokenizerRequest.text.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerRequest(0) + 20));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*Siri_Nlu_Internal_Tokenizer_TokenizerRequest.text.modify())(uint64_t **a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *(OUTLINED_FUNCTION_12_11(v1) + 20);
  *(v0 + 32) = v2;
  v3 = OUTLINED_FUNCTION_8_0(v2);
  if (v3)
  {
    v5 = *v4;
    v6 = v3;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *(v0 + 24) = v3;
  *v0 = v5;
  *(v0 + 8) = v6;

  return sub_1C87E9980;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Tokenizer_TokenizerRequest.clearText()()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerRequest(0) + 20));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Siri_Nlu_Internal_Tokenizer_TokenizerRequest.locale.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerRequest(0);
  if (OUTLINED_FUNCTION_8_0(*(v0 + 24)))
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1C887FF08(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_Tokenizer_TokenizerRequest.locale.setter(v1, v2);
}

uint64_t Siri_Nlu_Internal_Tokenizer_TokenizerRequest.locale.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerRequest(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*Siri_Nlu_Internal_Tokenizer_TokenizerRequest.locale.modify())(uint64_t **a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  v2 = *(OUTLINED_FUNCTION_12_11(v1) + 24);
  *(v0 + 32) = v2;
  v3 = OUTLINED_FUNCTION_8_0(v2);
  if (v3)
  {
    v5 = *v4;
    v6 = v3;
  }

  else
  {
    v5 = 0;
    v6 = 0xE000000000000000;
  }

  *(v0 + 24) = v3;
  *v0 = v5;
  *(v0 + 8) = v6;

  return sub_1C87EB660;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Tokenizer_TokenizerRequest.clearLocale()()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerRequest(0) + 24));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Siri_Nlu_Internal_Tokenizer_TokenizerRequest.asrID.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_11_9();
  sub_1C87E8DEC(v1 + *(v6 + 28), v2);
  v7 = type metadata accessor for Siri_Nlu_External_UUID(0);
  v8 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v8, v9, v7);
  if (!v10)
  {
    return sub_1C87E8E5C(v2, a1);
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_313(a1 + v7[5]);
  OUTLINED_FUNCTION_313(a1 + v7[6]);
  *(a1 + v7[7]) = 6;
  v11 = OUTLINED_FUNCTION_120();
  result = OUTLINED_FUNCTION_76(v11, v12, v7);
  if (!v10)
  {
    return sub_1C8778ED8(v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  }

  return result;
}

uint64_t sub_1C8880170(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_External_UUID(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C87E9210(a1, v4);
  return Siri_Nlu_Internal_Tokenizer_TokenizerRequest.asrID.setter(v4);
}

uint64_t Siri_Nlu_Internal_Tokenizer_TokenizerRequest.asrID.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerRequest(0) + 28);
  sub_1C8778ED8(v1 + v3, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C87E8E5C(a1, v1 + v3);
  v4 = type metadata accessor for Siri_Nlu_External_UUID(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*Siri_Nlu_Internal_Tokenizer_TokenizerRequest.asrID.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Siri_Nlu_External_UUID(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_21();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerRequest(0) + 28);
  *(v3 + 10) = v11;
  sub_1C87E8DEC(v1 + v11, v6);
  v12 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v12, v13, v7);
  if (v14)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_313(&v10[v7[5]]);
    OUTLINED_FUNCTION_313(&v10[v7[6]]);
    v10[v7[7]] = 6;
    v15 = OUTLINED_FUNCTION_120();
    OUTLINED_FUNCTION_76(v15, v16, v7);
    if (!v14)
    {
      sub_1C8778ED8(v6, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    sub_1C87E8E5C(v6, v10);
  }

  return sub_1C87E9130;
}

uint64_t Siri_Nlu_Internal_Tokenizer_TokenizerRequest.hasAsrID.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_11_9();
  sub_1C87E8DEC(v0 + *(v4 + 28), v1);
  type metadata accessor for Siri_Nlu_External_UUID(0);
  v5 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v5, v6, v7);
  if (v8)
  {
    v9 = 0;
  }

  else
  {
    v9 = 1;
  }

  sub_1C8778ED8(v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  return v9;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Tokenizer_TokenizerRequest.clearAsrID()()
{
  v1 = *(type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerRequest(0) + 28);
  sub_1C8778ED8(v0 + v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v2 = type metadata accessor for Siri_Nlu_External_UUID(0);

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Siri_Nlu_Internal_Tokenizer_TokenizerRequest.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t Siri_Nlu_Internal_Tokenizer_TokenizerRequest.unknownFields.setter(uint64_t a1)
{
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v5 = *(v4 + 40);

  return v5(v1, a1, v3);
}

uint64_t Siri_Nlu_Internal_Tokenizer_TokenizerRequest.init()@<X0>(uint64_t a2@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v3 = type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerRequest(0);
  v4 = (a2 + v3[5]);
  *v4 = 0;
  v4[1] = 0;
  v5 = (a2 + v3[6]);
  *v5 = 0;
  v5[1] = 0;
  v6 = v3[7];
  v7 = type metadata accessor for Siri_Nlu_External_UUID(0);

  return __swift_storeEnumTagSinglePayload(a2 + v6, 1, 1, v7);
}

uint64_t sub_1C8880664()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B8620);
  __swift_project_value_buffer(v0, qword_1EC2B8620);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "locale";
  *(v10 + 1) = 6;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "asrId";
  *(v12 + 1) = 5;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_Internal_Tokenizer_TokenizerRequest._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B5130 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2B8620);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Siri_Nlu_Internal_Tokenizer_TokenizerRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v3 || (v5 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v14 = OUTLINED_FUNCTION_8();
        sub_1C8880A68(v14, v15, v16, v17);
        break;
      case 2:
        v10 = OUTLINED_FUNCTION_8();
        sub_1C8880A04(v10, v11, v12, v13);
        break;
      case 1:
        v6 = OUTLINED_FUNCTION_8();
        sub_1C88809A0(v6, v7, v8, v9);
        break;
    }
  }

  return result;
}

uint64_t sub_1C8880A68(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerRequest(0);
  type metadata accessor for Siri_Nlu_External_UUID(0);
  sub_1C87A4B28(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID, &protocol conformance descriptor for Siri_Nlu_External_UUID);
  return sub_1C8BD4C7C();
}

uint64_t Siri_Nlu_Internal_Tokenizer_TokenizerRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerRequest(0);
  if (!*(v3 + v13[5] + 8) || (result = sub_1C8BD4DDC(), !v4))
  {
    if (!*(v3 + v13[6] + 8) || (result = sub_1C8BD4DDC(), !v4))
    {
      sub_1C87E8DEC(v3 + v13[7], v8);
      if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
      {
        sub_1C8778ED8(v8, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      }

      else
      {
        sub_1C87E8E5C(v8, v12);
        sub_1C87A4B28(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID, &protocol conformance descriptor for Siri_Nlu_External_UUID);
        sub_1C8BD4E2C();
        result = sub_1C87E9274(v12);
        if (v4)
        {
          return result;
        }
      }

      return sub_1C8BD49DC();
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_Tokenizer_TokenizerRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v33 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v33 - v14;
  v16 = type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerRequest(0);
  OUTLINED_FUNCTION_1();
  if (v17)
  {
    if (!v18)
    {
      goto LABEL_28;
    }

    v21 = *v19 == *v20 && v17 == v18;
    if (!v21 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v18)
  {
    goto LABEL_28;
  }

  OUTLINED_FUNCTION_1();
  if (v22)
  {
    if (!v23)
    {
      goto LABEL_28;
    }

    v26 = *v24 == *v25 && v22 == v23;
    if (!v26 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_28;
    }
  }

  else if (v23)
  {
    goto LABEL_28;
  }

  v27 = *(v16 + 28);
  v28 = *(v12 + 48);
  sub_1C87E8DEC(a1 + v27, v15);
  sub_1C87E8DEC(a2 + v27, &v15[v28]);
  OUTLINED_FUNCTION_76(v15, 1, v4);
  if (v21)
  {
    OUTLINED_FUNCTION_76(&v15[v28], 1, v4);
    if (v21)
    {
      sub_1C8778ED8(v15, &qword_1EC2B5EC8, &unk_1C8BE68C0);
LABEL_31:
      sub_1C8BD49FC();
      sub_1C87A4B28(&qword_1EC2B2F70, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v30 = sub_1C8BD517C();
      return v30 & 1;
    }

    goto LABEL_27;
  }

  sub_1C87E8DEC(v15, v11);
  OUTLINED_FUNCTION_76(&v15[v28], 1, v4);
  if (v29)
  {
    sub_1C87E9274(v11);
LABEL_27:
    sub_1C8778ED8(v15, &qword_1EC2B5EE8, &unk_1C8BE6F90);
    goto LABEL_28;
  }

  sub_1C87E8E5C(&v15[v28], v7);
  v32 = static Siri_Nlu_External_UUID.== infix(_:_:)(v11, v7);
  sub_1C87E9274(v7);
  sub_1C87E9274(v11);
  sub_1C8778ED8(v15, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if (v32)
  {
    goto LABEL_31;
  }

LABEL_28:
  v30 = 0;
  return v30 & 1;
}

uint64_t Siri_Nlu_Internal_Tokenizer_TokenizerRequest.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerRequest(0);
  sub_1C87A4B28(&qword_1EC2B8638, type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerRequest, &protocol conformance descriptor for Siri_Nlu_Internal_Tokenizer_TokenizerRequest);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C88810F8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87A4B28(&qword_1EC2B8668, type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerRequest, &protocol conformance descriptor for Siri_Nlu_Internal_Tokenizer_TokenizerRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8881178(uint64_t a1)
{
  v2 = sub_1C87A4B28(&qword_1EC2B8648, type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerRequest, &protocol conformance descriptor for Siri_Nlu_Internal_Tokenizer_TokenizerRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88811E8(uint64_t a1, uint64_t a2)
{
  sub_1C87A4B28(&qword_1EC2B8648, type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerRequest, &protocol conformance descriptor for Siri_Nlu_Internal_Tokenizer_TokenizerRequest);

  return sub_1C8BD4CFC();
}

void sub_1C88813B0(uint64_t a1)
{
  sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    sub_1C87E8A54();
    if (v2 <= 0x3F)
    {
      sub_1C87EB458(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserRequest.requestID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_60_1();
  v7 = type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest(0);
  v8 = OUTLINED_FUNCTION_13(*(v7 + 24));
  OUTLINED_FUNCTION_73_2(v8, v9);
  v10 = type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_1_0();
  if (v11)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_15_2(v10[5]);
    OUTLINED_FUNCTION_15_2(v10[6]);
    *(a1 + v10[7]) = 6;
    result = OUTLINED_FUNCTION_1_0();
    if (!v11)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_16();
    v12 = OUTLINED_FUNCTION_121();
    return sub_1C8884444(v12, v13, v14);
  }

  return result;
}

uint64_t type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest(uint64_t a1)
{
  result = qword_1EC2B86A8;
  if (!qword_1EC2B86A8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserRequest.requestID.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_2_16();
  OUTLINED_FUNCTION_44_5(v3, v4, v5);
  type metadata accessor for Siri_Nlu_External_UUID(0);
  v6 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

void (*Siri_Nlu_Internal_UaapParser_UaaPParserRequest.requestID.modify())(uint64_t **a1, uint64_t a2)
{
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_107(v5);
  v7 = type metadata accessor for Siri_Nlu_External_UUID(v6);
  *(v0 + 16) = v7;
  OUTLINED_FUNCTION_21();
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_243(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = *(OUTLINED_FUNCTION_29_4(v12) + 24);
  *(v0 + 40) = v13;
  v14 = OUTLINED_FUNCTION_13(v13);
  sub_1C8786744(v14, v15, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_73(v5);
  if (v16)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_11_0(v7[5]);
    OUTLINED_FUNCTION_11_0(v7[6]);
    *(v9 + v7[7]) = 6;
    OUTLINED_FUNCTION_73(v5);
    if (!v16)
    {
      sub_1C8778ED8(v5, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_16();
    sub_1C8884444(v5, v9, v17);
  }

  return sub_1C8881748;
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserRequest.hasRequestID.getter()
{
  v0 = OUTLINED_FUNCTION_43_5();
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_60_1();
  v2 = type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest(0);
  v3 = OUTLINED_FUNCTION_13(*(v2 + 24));
  OUTLINED_FUNCTION_94_0(v3, v4);
  v5 = type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_10(v5);
  return OUTLINED_FUNCTION_235();
}

Swift::Void __swiftcall Siri_Nlu_Internal_UaapParser_UaaPParserRequest.clearRequestID()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest(0);
  sub_1C8778ED8(v0 + *(v1 + 24), &qword_1EC2B5EC8, &unk_1C8BE68C0);
  type metadata accessor for Siri_Nlu_External_UUID(0);
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserRequest.tokenChain.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_60_1();
  v7 = type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest(0);
  v8 = OUTLINED_FUNCTION_13(*(v7 + 28));
  OUTLINED_FUNCTION_73_2(v8, v9);
  v10 = type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  OUTLINED_FUNCTION_1_0();
  if (v11)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v12 = (a1 + *(v10 + 24));
    *v12 = 0;
    v12[1] = 0;
    v13 = (a1 + *(v10 + 28));
    *v13 = 0;
    v13[1] = 0;
    result = OUTLINED_FUNCTION_1_0();
    if (!v11)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B6048, &unk_1C8BE6F80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_10();
    v14 = OUTLINED_FUNCTION_121();
    return sub_1C8884444(v14, v15, v16);
  }

  return result;
}

uint64_t sub_1C888194C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), void (*a6)(void), uint64_t (*a7)(char *))
{
  v10 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_80(v10);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v15 - v12;
  sub_1C88844A0(a1, &v15 - v12, a6);
  return a7(v13);
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserRequest.tokenChain.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest(v1);
  sub_1C8778ED8(v0 + *(v2 + 28), &qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_3_10();
  OUTLINED_FUNCTION_44_5(v3, v4, v5);
  type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  v6 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

void (*Siri_Nlu_Internal_UaapParser_UaaPParserRequest.tokenChain.modify())(uint64_t **a1, uint64_t a2)
{
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_107(v5);
  v7 = type metadata accessor for Siri_Nlu_Internal_TokenChain(v6);
  *(v0 + 16) = v7;
  OUTLINED_FUNCTION_21();
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_243(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = *(OUTLINED_FUNCTION_29_4(v12) + 28);
  *(v0 + 40) = v13;
  v14 = OUTLINED_FUNCTION_13(v13);
  sub_1C8786744(v14, v15, &qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_73(v5);
  if (v16)
  {
    *v9 = MEMORY[0x1E69E7CC0];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v17 = (v9 + *(v7 + 24));
    *v17 = 0;
    v17[1] = 0;
    v18 = (v9 + *(v7 + 28));
    *v18 = 0;
    v18[1] = 0;
    OUTLINED_FUNCTION_73(v5);
    if (!v16)
    {
      sub_1C8778ED8(v5, &qword_1EC2B6048, &unk_1C8BE6F80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_10();
    sub_1C8884444(v5, v9, v19);
  }

  return sub_1C8881BAC;
}

void sub_1C8881BD4(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, void (*a5)(void))
{
  v8 = *a1;
  v9 = *(*a1 + 10);
  v10 = (*a1)[3];
  v11 = (*a1)[4];
  v12 = (*a1)[1];
  v13 = **a1;
  if (a2)
  {
    sub_1C88844A0((*a1)[4], v10, a5);
    sub_1C8778ED8(v13 + v9, a3, a4);
    sub_1C8884444(v10, v13 + v9, a5);
    OUTLINED_FUNCTION_26_1();
    sub_1C88844FC();
  }

  else
  {
    sub_1C8778ED8(v13 + v9, a3, a4);
    sub_1C8884444(v11, v13 + v9, a5);
    OUTLINED_FUNCTION_26_1();
  }

  free(v11);
  free(v10);
  free(v12);

  free(v8);
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserRequest.hasTokenChain.getter()
{
  v0 = OUTLINED_FUNCTION_43_5();
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_60_1();
  v2 = type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest(0);
  v3 = OUTLINED_FUNCTION_13(*(v2 + 28));
  OUTLINED_FUNCTION_94_0(v3, v4);
  v5 = type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  OUTLINED_FUNCTION_10(v5);
  return OUTLINED_FUNCTION_235();
}

Swift::Void __swiftcall Siri_Nlu_Internal_UaapParser_UaaPParserRequest.clearTokenChain()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest(0);
  sub_1C8778ED8(v0 + *(v1 + 28), &qword_1EC2B6048, &unk_1C8BE6F80);
  type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserRequest.embeddings.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_60_1();
  v7 = type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest(0);
  v8 = OUTLINED_FUNCTION_13(*(v7 + 32));
  OUTLINED_FUNCTION_73_2(v8, v9);
  v10 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  OUTLINED_FUNCTION_1_0();
  if (v11)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_15_2(v10[6]);
    OUTLINED_FUNCTION_15_2(v10[7]);
    OUTLINED_FUNCTION_15_2(v10[8]);
    v12 = (a1 + v10[9]);
    *v12 = 0;
    v12[1] = 0;
    result = OUTLINED_FUNCTION_1_0();
    if (!v11)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B64A8, &unk_1C8BE7670);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_11();
    v13 = OUTLINED_FUNCTION_121();
    return sub_1C8884444(v13, v14, v15);
  }

  return result;
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserRequest.embeddings.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest(v1);
  sub_1C8778ED8(v0 + *(v2 + 32), &qword_1EC2B64A8, &unk_1C8BE7670);
  OUTLINED_FUNCTION_4_11();
  OUTLINED_FUNCTION_44_5(v3, v4, v5);
  type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  v6 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

void (*Siri_Nlu_Internal_UaapParser_UaaPParserRequest.embeddings.modify())(uint64_t **a1, char a2)
{
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_107(v5);
  v7 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(v6);
  *(v0 + 16) = v7;
  OUTLINED_FUNCTION_21();
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_243(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_29_4(v12);
  OUTLINED_FUNCTION_32_0(*(v13 + 32));
  v14 = OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_76(v14, v15, v7);
  if (v16)
  {
    *v9 = MEMORY[0x1E69E7CC0];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_11_0(v7[6]);
    OUTLINED_FUNCTION_11_0(v7[7]);
    OUTLINED_FUNCTION_11_0(v7[8]);
    v17 = (v9 + v7[9]);
    *v17 = 0;
    v17[1] = 0;
    v18 = OUTLINED_FUNCTION_109();
    OUTLINED_FUNCTION_76(v18, v19, v7);
    if (!v16)
    {
      sub_1C8778ED8(v5, &qword_1EC2B64A8, &unk_1C8BE7670);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_11();
    sub_1C8884444(v5, v9, v20);
  }

  return sub_1C8882080;
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserRequest.hasEmbeddings.getter()
{
  v0 = OUTLINED_FUNCTION_43_5();
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_60_1();
  v2 = type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest(0);
  v3 = OUTLINED_FUNCTION_13(*(v2 + 32));
  OUTLINED_FUNCTION_94_0(v3, v4);
  v5 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  OUTLINED_FUNCTION_10(v5);
  return OUTLINED_FUNCTION_235();
}

Swift::Void __swiftcall Siri_Nlu_Internal_UaapParser_UaaPParserRequest.clearEmbeddings()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest(0);
  sub_1C8778ED8(v0 + *(v1 + 32), &qword_1EC2B64A8, &unk_1C8BE7670);
  type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserRequest.matchingSpans.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserRequest.turnInput.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_60_1();
  v7 = type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest(0);
  v8 = OUTLINED_FUNCTION_13(*(v7 + 36));
  OUTLINED_FUNCTION_73_2(v8, v9);
  v10 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  OUTLINED_FUNCTION_1_0();
  if (v11)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v12 = *(v10 + 20);
    if (qword_1EDACCB60 != -1)
    {
      OUTLINED_FUNCTION_25(&qword_1EDACCB60);
    }

    *(a1 + v12) = qword_1EDACCB68;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v1, 1, v10);

    if (EnumTagSinglePayload != 1)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B6038, &unk_1C8BE8850);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_11();
    v14 = OUTLINED_FUNCTION_121();
    return sub_1C8884444(v14, v15, v16);
  }

  return result;
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserRequest.turnInput.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest(v1);
  sub_1C8778ED8(v0 + *(v2 + 36), &qword_1EC2B6038, &unk_1C8BE8850);
  OUTLINED_FUNCTION_0_11();
  OUTLINED_FUNCTION_44_5(v3, v4, v5);
  type metadata accessor for Siri_Nlu_External_TurnInput(0);
  v6 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

void (*Siri_Nlu_Internal_UaapParser_UaaPParserRequest.turnInput.modify())(uint64_t **a1, char a2)
{
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  v6 = OUTLINED_FUNCTION_107(v5);
  v7 = type metadata accessor for Siri_Nlu_External_TurnInput(v6);
  *(v0 + 16) = v7;
  OUTLINED_FUNCTION_21();
  v9 = *(v8 + 64);
  v10 = __swift_coroFrameAllocStub(v9);
  v11 = OUTLINED_FUNCTION_243(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_29_4(v12);
  OUTLINED_FUNCTION_32_0(*(v13 + 36));
  v14 = OUTLINED_FUNCTION_109();
  OUTLINED_FUNCTION_76(v14, v15, v7);
  if (v16)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v17 = *(v7 + 20);
    if (qword_1EDACCB60 != -1)
    {
      OUTLINED_FUNCTION_25(&qword_1EDACCB60);
    }

    *(v9 + v17) = qword_1EDACCB68;
    v18 = OUTLINED_FUNCTION_109();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v18, v19, v7);

    if (EnumTagSinglePayload != 1)
    {
      sub_1C8778ED8(v5, &qword_1EC2B6038, &unk_1C8BE8850);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_11();
    sub_1C8884444(v5, v9, v21);
  }

  return sub_1C88824D0;
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserRequest.hasTurnInput.getter()
{
  v0 = OUTLINED_FUNCTION_43_5();
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_60_1();
  v2 = type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest(0);
  v3 = OUTLINED_FUNCTION_13(*(v2 + 36));
  OUTLINED_FUNCTION_94_0(v3, v4);
  v5 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  OUTLINED_FUNCTION_10(v5);
  return OUTLINED_FUNCTION_235();
}

Swift::Void __swiftcall Siri_Nlu_Internal_UaapParser_UaaPParserRequest.clearTurnInput()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest(0);
  sub_1C8778ED8(v0 + *(v1 + 36), &qword_1EC2B6038, &unk_1C8BE8850);
  type metadata accessor for Siri_Nlu_External_TurnInput(0);
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserRequest.maxNumParses.getter()
{
  type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest(0);
  OUTLINED_FUNCTION_0();
  if (v1)
  {
    return v0;
  }

  else
  {
    return 0;
  }
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserRequest.maxNumParses.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  result = type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest(v2);
  v4 = v1 + *(result + 40);
  *v4 = v0;
  *(v4 + 8) = 0;
  return result;
}

uint64_t (*Siri_Nlu_Internal_UaapParser_UaaPParserRequest.maxNumParses.modify(uint64_t a1))(uint64_t result)
{
  *(a1 + 8) = v1;
  *(a1 + 16) = *(type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest(0) + 40);
  OUTLINED_FUNCTION_0();
  if (v4)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  *a1 = v5;
  return sub_1C8820288;
}

Swift::Void __swiftcall Siri_Nlu_Internal_UaapParser_UaaPParserRequest.clearMaxNumParses()()
{
  v1 = v0 + *(type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest(0) + 40);
  *v1 = 0;
  *(v1 + 8) = 1;
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserRequest.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest(0) + 20);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserRequest.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  v3 = *(type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest(v2) + 20);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Siri_Nlu_Internal_UaapParser_UaaPParserRequest.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest(v0);
  return nullsub_1;
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserRequest.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest(0);
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  type metadata accessor for Siri_Nlu_External_TurnInput(0);
  OUTLINED_FUNCTION_5();
  result = __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  v20 = a1 + *(v2 + 40);
  *v20 = 0;
  v20[8] = 1;
  return result;
}

uint64_t sub_1C8882904()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B8670);
  __swift_project_value_buffer(v0, qword_1EC2B8670);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE7160;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "request_id";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "token_chain";
  *(v10 + 8) = 11;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "embeddings";
  *(v12 + 1) = 10;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "matching_spans";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "turn_input";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "max_num_parses";
  *(v18 + 1) = 14;
  v18[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_Internal_UaapParser_UaaPParserRequest._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B5138 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2B8670);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v6 = OUTLINED_FUNCTION_8();
        sub_1C8882D44(v6, v7, v8, v9);
        break;
      case 2:
        v22 = OUTLINED_FUNCTION_8();
        sub_1C8882DF8(v22, v23, v24, v25);
        break;
      case 3:
        v14 = OUTLINED_FUNCTION_8();
        sub_1C8882EAC(v14, v15, v16, v17);
        break;
      case 4:
        v18 = OUTLINED_FUNCTION_8();
        sub_1C8882F60(v18, v19, v20, v21);
        break;
      case 5:
        v10 = OUTLINED_FUNCTION_8();
        sub_1C8883000(v10, v11, v12, v13);
        break;
      case 6:
        v26 = OUTLINED_FUNCTION_8();
        sub_1C88830B4(v26, v27, v28, v29);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8882D44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest(0);
  type metadata accessor for Siri_Nlu_External_UUID(0);
  sub_1C8884938(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID, &protocol conformance descriptor for Siri_Nlu_External_UUID);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C8882DF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest(0);
  type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  sub_1C8884938(&qword_1EC2B4B38, type metadata accessor for Siri_Nlu_Internal_TokenChain, &protocol conformance descriptor for Siri_Nlu_Internal_TokenChain);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C8882EAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest(0);
  type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  sub_1C8884938(&qword_1EC2B47B8, type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor, &protocol conformance descriptor for Siri_Nlu_Internal_NLv4EmbeddingTensor);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C8882F60(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0);
  sub_1C8884938(&qword_1EC2B4A28, type metadata accessor for Siri_Nlu_Internal_MatchingSpan, &protocol conformance descriptor for Siri_Nlu_Internal_MatchingSpan);
  return sub_1C8BD4C6C();
}

uint64_t sub_1C8883000(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest(0);
  type metadata accessor for Siri_Nlu_External_TurnInput(0);
  sub_1C8884938(&qword_1EDACC908, type metadata accessor for Siri_Nlu_External_TurnInput, &protocol conformance descriptor for Siri_Nlu_External_TurnInput);
  return sub_1C8BD4C7C();
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v52 = a2;
  v53 = a3;
  v54 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_81();
  v49 = v7;
  v8 = OUTLINED_FUNCTION_86();
  v45 = type metadata accessor for Siri_Nlu_External_TurnInput(v8);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_33();
  v44 = v11 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  OUTLINED_FUNCTION_80(v12);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_81();
  v47 = v14;
  v15 = OUTLINED_FUNCTION_86();
  v48 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(v15);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_33();
  v46 = v18 - v17;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_80(v19);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v43 - v21;
  v50 = type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_33();
  v26 = v25 - v24;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v27);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v43 - v29;
  type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_33();
  v34 = v33 - v32;
  v55 = type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest(0);
  sub_1C8786744(v3 + v55[6], v30, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_30_5();
  if (__swift_getEnumTagSinglePayload(v35, v36, v37) == 1)
  {
    sub_1C8778ED8(v30, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    v38 = v51;
  }

  else
  {
    sub_1C8884444(v30, v34, type metadata accessor for Siri_Nlu_External_UUID);
    sub_1C8884938(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID, &protocol conformance descriptor for Siri_Nlu_External_UUID);
    v4 = v51;
    sub_1C8BD4E2C();
    v38 = v4;
    result = sub_1C88844FC();
    if (v4)
    {
      return result;
    }
  }

  sub_1C8786744(v3 + v55[7], v22, &qword_1EC2B6048, &unk_1C8BE6F80);
  if (__swift_getEnumTagSinglePayload(v22, 1, v50) == 1)
  {
    sub_1C8778ED8(v22, &qword_1EC2B6048, &unk_1C8BE6F80);
  }

  else
  {
    sub_1C8884444(v22, v26, type metadata accessor for Siri_Nlu_Internal_TokenChain);
    sub_1C8884938(&qword_1EC2B4B38, type metadata accessor for Siri_Nlu_Internal_TokenChain, &protocol conformance descriptor for Siri_Nlu_Internal_TokenChain);
    v4 = v38;
    sub_1C8BD4E2C();
    result = sub_1C88844FC();
    if (v38)
    {
      return result;
    }
  }

  v40 = v47;
  sub_1C8786744(v3 + v55[8], v47, &qword_1EC2B64A8, &unk_1C8BE7670);
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v40, 1, v48);
  v42 = v49;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8778ED8(v40, &qword_1EC2B64A8, &unk_1C8BE7670);
  }

  else
  {
    sub_1C8884444(v40, v46, type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor);
    sub_1C8884938(&qword_1EC2B47B8, type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor, &protocol conformance descriptor for Siri_Nlu_Internal_NLv4EmbeddingTensor);
    OUTLINED_FUNCTION_23_8();
    sub_1C8BD4E2C();
    v38 = v4;
    result = sub_1C88844FC();
    if (v4)
    {
      return result;
    }
  }

  if (!*(*v3 + 16) || (type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0), sub_1C8884938(&qword_1EC2B4A28, type metadata accessor for Siri_Nlu_Internal_MatchingSpan, &protocol conformance descriptor for Siri_Nlu_Internal_MatchingSpan), OUTLINED_FUNCTION_23_8(), result = sub_1C8BD4E0C(), (v38 = v4) == 0))
  {
    sub_1C8786744(v3 + v55[9], v42, &qword_1EC2B6038, &unk_1C8BE8850);
    if (__swift_getEnumTagSinglePayload(v42, 1, v45) == 1)
    {
      sub_1C8778ED8(v42, &qword_1EC2B6038, &unk_1C8BE8850);
    }

    else
    {
      sub_1C8884444(v42, v44, type metadata accessor for Siri_Nlu_External_TurnInput);
      sub_1C8884938(&qword_1EDACC908, type metadata accessor for Siri_Nlu_External_TurnInput, &protocol conformance descriptor for Siri_Nlu_External_TurnInput);
      OUTLINED_FUNCTION_23_8();
      sub_1C8BD4E2C();
      v38 = v4;
      result = sub_1C88844FC();
      if (v4)
      {
        return result;
      }
    }

    if (*(v3 + v55[10] + 8))
    {
      return sub_1C8BD49DC();
    }

    result = sub_1C8BD4DFC();
    if (!v38)
    {
      return sub_1C8BD49DC();
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_UaapParser_UaaPParserRequest.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v122 = a1;
  v123 = a2;
  v111 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_33();
  v108 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_81();
  v109 = v8;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6040, &unk_1C8BE6CF0);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_81();
  v112 = v10;
  v11 = OUTLINED_FUNCTION_86();
  v117 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(v11);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_33();
  v113 = (v14 - v13);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  OUTLINED_FUNCTION_80(v15);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_81();
  v114 = v17;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64E0, &unk_1C8BE7880);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_81();
  v118 = v19;
  v20 = OUTLINED_FUNCTION_86();
  v120 = type metadata accessor for Siri_Nlu_Internal_TokenChain(v20);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_33();
  v115 = v23 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_80(v24);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_81();
  v119 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6050, &qword_1C8BE6D00);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v108 - v29;
  type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_33();
  v34 = v33 - v32;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v35);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_60_1();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v108 - v39;
  v121 = type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest(0);
  v41 = *(v121 + 24);
  v42 = *(v37 + 56);
  sub_1C8786744(v122 + v41, v40, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C8786744(v123 + v41, &v40[v42], &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_73(v40);
  if (v43)
  {
    OUTLINED_FUNCTION_73(&v40[v42]);
    if (v43)
    {
      sub_1C8778ED8(v40, &qword_1EC2B5EC8, &unk_1C8BE68C0);
      goto LABEL_11;
    }

LABEL_9:
    v44 = &qword_1EC2B5EE8;
    v45 = &unk_1C8BE6F90;
    v46 = v40;
LABEL_30:
    sub_1C8778ED8(v46, v44, v45);
    goto LABEL_31;
  }

  sub_1C8786744(v40, v2, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_73(&v40[v42]);
  if (v43)
  {
    sub_1C88844FC();
    goto LABEL_9;
  }

  sub_1C8884444(&v40[v42], v34, type metadata accessor for Siri_Nlu_External_UUID);
  v47 = static Siri_Nlu_External_UUID.== infix(_:_:)(v2, v34);
  sub_1C88844FC();
  sub_1C88844FC();
  sub_1C8778ED8(v40, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if ((v47 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_11:
  v49 = v121;
  v48 = v122;
  v50 = *(v121 + 28);
  v51 = *(v27 + 48);
  sub_1C8786744(v122 + v50, v30, &qword_1EC2B6048, &unk_1C8BE6F80);
  v52 = v123;
  sub_1C8786744(v123 + v50, &v30[v51], &qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_76(v30, 1, v120);
  if (v43)
  {
    OUTLINED_FUNCTION_30_5();
    OUTLINED_FUNCTION_76(v53, v54, v55);
    if (v43)
    {
      sub_1C8778ED8(v30, &qword_1EC2B6048, &unk_1C8BE6F80);
      goto LABEL_21;
    }

    goto LABEL_19;
  }

  v56 = v119;
  sub_1C8786744(v30, v119, &qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_30_5();
  OUTLINED_FUNCTION_76(v57, v58, v59);
  if (v60)
  {
    sub_1C88844FC();
LABEL_19:
    v44 = &qword_1EC2B6050;
    v45 = &qword_1C8BE6D00;
    v46 = v30;
    goto LABEL_30;
  }

  v61 = v115;
  sub_1C8884444(&v30[v51], v115, type metadata accessor for Siri_Nlu_Internal_TokenChain);
  v62 = static Siri_Nlu_Internal_TokenChain.== infix(_:_:)(v56, v61);
  sub_1C88844FC();
  sub_1C88844FC();
  sub_1C8778ED8(v30, &qword_1EC2B6048, &unk_1C8BE6F80);
  if ((v62 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_21:
  v63 = v49[8];
  v64 = *(v116 + 48);
  v65 = v118;
  OUTLINED_FUNCTION_27(v48 + v63, v118);
  OUTLINED_FUNCTION_27(v52 + v63, v65 + v64);
  v66 = OUTLINED_FUNCTION_109();
  v67 = v117;
  OUTLINED_FUNCTION_76(v66, v68, v117);
  if (v43)
  {
    OUTLINED_FUNCTION_76(v65 + v64, 1, v67);
    if (v43)
    {
      sub_1C8778ED8(v65, &qword_1EC2B64A8, &unk_1C8BE7670);
      goto LABEL_34;
    }

    goto LABEL_29;
  }

  v69 = v114;
  sub_1C8786744(v65, v114, &qword_1EC2B64A8, &unk_1C8BE7670);
  OUTLINED_FUNCTION_76(v65 + v64, 1, v67);
  if (v70)
  {
    sub_1C88844FC();
LABEL_29:
    v44 = &qword_1EC2B64E0;
    v45 = &unk_1C8BE7880;
    v46 = v65;
    goto LABEL_30;
  }

  v73 = v65 + v64;
  v74 = v113;
  sub_1C8884444(v73, v113, type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor);
  v75 = static Siri_Nlu_Internal_NLv4EmbeddingTensor.== infix(_:_:)(v69, v74);
  sub_1C88844FC();
  OUTLINED_FUNCTION_121();
  sub_1C88844FC();
  sub_1C8778ED8(v65, &qword_1EC2B64A8, &unk_1C8BE7670);
  if ((v75 & 1) == 0)
  {
    goto LABEL_31;
  }

LABEL_34:
  sub_1C87D27C0(*v48, *v52);
  if ((v76 & 1) == 0)
  {
    goto LABEL_31;
  }

  v77 = v49[9];
  v78 = *(v110 + 48);
  v79 = v112;
  OUTLINED_FUNCTION_27(v48 + v77, v112);
  v80 = v52 + v77;
  v81 = v79;
  OUTLINED_FUNCTION_27(v80, v79 + v78);
  v82 = OUTLINED_FUNCTION_109();
  v83 = v111;
  OUTLINED_FUNCTION_76(v82, v84, v111);
  if (!v43)
  {
    v88 = v109;
    sub_1C8786744(v79, v109, &qword_1EC2B6038, &unk_1C8BE8850);
    OUTLINED_FUNCTION_30_5();
    OUTLINED_FUNCTION_76(v89, v90, v91);
    if (!v92)
    {
      OUTLINED_FUNCTION_0_11();
      v93 = v79 + v78;
      v94 = v108;
      sub_1C8884444(v93, v108, v95);
      if (*(v88 + *(v83 + 20)) == *(v94 + *(v83 + 20)) || (, , OUTLINED_FUNCTION_218(), sub_1C88AD618(), v97 = v96, , , (v97 & 1) != 0))
      {
        sub_1C8BD49FC();
        OUTLINED_FUNCTION_18_10();
        sub_1C8884938(v98, v99, MEMORY[0x1E69AAC10]);
        OUTLINED_FUNCTION_220();
        v100 = sub_1C8BD517C();
        sub_1C88844FC();
        sub_1C88844FC();
        sub_1C8778ED8(v81, &qword_1EC2B6038, &unk_1C8BE8850);
        if ((v100 & 1) == 0)
        {
          goto LABEL_31;
        }

        goto LABEL_48;
      }

      sub_1C88844FC();
      sub_1C88844FC();
      v44 = &qword_1EC2B6038;
      v45 = &unk_1C8BE8850;
      goto LABEL_44;
    }

    sub_1C88844FC();
LABEL_43:
    v44 = &qword_1EC2B6040;
    v45 = &unk_1C8BE6CF0;
LABEL_44:
    v46 = v81;
    goto LABEL_30;
  }

  OUTLINED_FUNCTION_30_5();
  OUTLINED_FUNCTION_76(v85, v86, v87);
  if (!v43)
  {
    goto LABEL_43;
  }

  sub_1C8778ED8(v79, &qword_1EC2B6038, &unk_1C8BE8850);
LABEL_48:
  v101 = v49[10];
  v102 = (v48 + v101);
  v103 = *(v48 + v101 + 8);
  v104 = (v52 + v101);
  v105 = *(v52 + v101 + 8);
  if (v103)
  {
    if (v105)
    {
LABEL_54:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_18_10();
      sub_1C8884938(v106, v107, MEMORY[0x1E69AAC10]);
      v71 = sub_1C8BD517C();
      return v71 & 1;
    }
  }

  else
  {
    if (*v102 != *v104)
    {
      LOBYTE(v105) = 1;
    }

    if ((v105 & 1) == 0)
    {
      goto LABEL_54;
    }
  }

LABEL_31:
  v71 = 0;
  return v71 & 1;
}

uint64_t Siri_Nlu_Internal_UaapParser_UaaPParserRequest.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest(0);
  sub_1C8884938(&qword_1EC2B8688, type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest, &protocol conformance descriptor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C88842D4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8884938(&qword_1EC2B86B8, type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest, &protocol conformance descriptor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8884354(uint64_t a1)
{
  v2 = sub_1C8884938(&qword_1EC2B8698, type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest, &protocol conformance descriptor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88843C4(uint64_t a1, uint64_t a2)
{
  sub_1C8884938(&qword_1EC2B8698, type metadata accessor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest, &protocol conformance descriptor for Siri_Nlu_Internal_UaapParser_UaaPParserRequest);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8884444(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_21();
  v4 = OUTLINED_FUNCTION_218();
  v5(v4);
  return a2;
}

uint64_t sub_1C88844A0(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_21();
  v4 = OUTLINED_FUNCTION_218();
  v5(v4);
  return a2;
}

uint64_t sub_1C88844FC()
{
  v1 = OUTLINED_FUNCTION_241();
  v2(v1);
  OUTLINED_FUNCTION_21();
  (*(v3 + 8))(v0);
  return v0;
}

void sub_1C8884698(uint64_t a1)
{
  sub_1C8884884(319, &qword_1EC2B2F60, type metadata accessor for Siri_Nlu_Internal_MatchingSpan, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v2 <= 0x3F)
    {
      sub_1C8884884(319, qword_1EDACE198, type metadata accessor for Siri_Nlu_External_UUID, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1C8884884(319, &qword_1EC2B4B18, type metadata accessor for Siri_Nlu_Internal_TokenChain, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          sub_1C8884884(319, &qword_1EC2B4798, type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            sub_1C8884884(319, qword_1EDACC8C0, type metadata accessor for Siri_Nlu_External_TurnInput, MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              sub_1C88848E8();
              if (v7 <= 0x3F)
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

void sub_1C8884884(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1C88848E8()
{
  if (!qword_1EDACD378)
  {
    v0 = sub_1C8BD522C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDACD378);
    }
  }
}

uint64_t sub_1C8884938(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

Swift::String_optional __swiftcall Siri_Nlu_External_UserDialogAct.typeAsString()()
{
  v1 = 0xEC00000064657463;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86C0, &unk_1C8BF5020);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_87(v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B61D8, &unk_1C8BF4FD0);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_87(v7);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86C8, &unk_1C8C10570);
  OUTLINED_FUNCTION_80(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_87(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E18, &qword_1C8BEBC48);
  OUTLINED_FUNCTION_80(v11);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_87(v13);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86D0, &unk_1C8BF5010);
  OUTLINED_FUNCTION_80(v14);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_81();
  OUTLINED_FUNCTION_87(v16);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86D8, &qword_1C8BF4620);
  OUTLINED_FUNCTION_80(v17);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v77[-v19];
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E10, &unk_1C8BF5000);
  OUTLINED_FUNCTION_80(v21);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v77[-v23];
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E20, &unk_1C8BF4FF0);
  OUTLINED_FUNCTION_80(v25);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v77[-v27];
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E28, &unk_1C8C10580);
  OUTLINED_FUNCTION_80(v29);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v77[-v31];
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B6330, &unk_1C8BF4FE0);
  OUTLINED_FUNCTION_80(v33);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v34);
  v36 = &v77[-v35];
  v37 = *(v0 + *(type metadata accessor for Siri_Nlu_External_UserDialogAct(0) + 20));
  v38 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__accepted;
  OUTLINED_FUNCTION_277(v37 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__accepted, v87);
  sub_1C87AB9AC(v37 + v38, v36, &unk_1EC2B6330, &unk_1C8BF4FE0);
  v39 = type metadata accessor for Siri_Nlu_External_UserAccepted(0);
  LODWORD(v38) = __swift_getEnumTagSinglePayload(v36, 1, v39);
  sub_1C8778ED8(v36, &unk_1EC2B6330, &unk_1C8BF4FE0);
  if (v38 == 1)
  {
    OUTLINED_FUNCTION_277(v37 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__rejected, v86);
    OUTLINED_FUNCTION_25_1();
    sub_1C87AB9AC(v40, v41, v42, &unk_1C8C10580);
    v43 = type metadata accessor for Siri_Nlu_External_UserRejected(0);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v32, 1, v43);
    sub_1C8778ED8(v32, &qword_1EC2B6E28, &unk_1C8C10580);
    if (EnumTagSinglePayload == 1)
    {
      v45 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__cancelled;
      OUTLINED_FUNCTION_277(v37 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__cancelled, v85);
      sub_1C87AB9AC(v37 + v45, v28, &qword_1EC2B6E20, &unk_1C8BF4FF0);
      v46 = type metadata accessor for Siri_Nlu_External_UserCancelled(0);
      LODWORD(v45) = __swift_getEnumTagSinglePayload(v28, 1, v46);
      OUTLINED_FUNCTION_25_1();
      sub_1C8778ED8(v47, v48, v49);
      if (v45 == 1)
      {
        v50 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToRepeat;
        OUTLINED_FUNCTION_277(v37 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToRepeat, v84);
        sub_1C87AB9AC(v37 + v50, v24, &qword_1EC2B6E10, &unk_1C8BF5000);
        v51 = type metadata accessor for Siri_Nlu_External_UserWantedToRepeat(0);
        LODWORD(v50) = __swift_getEnumTagSinglePayload(v24, 1, v51);
        OUTLINED_FUNCTION_25_1();
        sub_1C8778ED8(v52, v53, v54);
        if (v50 == 1)
        {
          v55 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__acknowledged;
          OUTLINED_FUNCTION_277(v37 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__acknowledged, v83);
          sub_1C87AB9AC(v37 + v55, v20, &qword_1EC2B86D8, &qword_1C8BF4620);
          v56 = type metadata accessor for Siri_Nlu_External_UserAcknowledged(0);
          LODWORD(v55) = __swift_getEnumTagSinglePayload(v20, 1, v56);
          OUTLINED_FUNCTION_25_1();
          sub_1C8778ED8(v57, v58, v59);
          if (v55 == 1)
          {
            v60 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToProceed;
            OUTLINED_FUNCTION_277(v37 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToProceed, v82);
            OUTLINED_FUNCTION_19_7(v37 + v60, &v91);
            v61 = type metadata accessor for Siri_Nlu_External_UserWantedToProceed(0);
            OUTLINED_FUNCTION_12_12(v61);
            if (v60 == 1)
            {
              v62 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToPause;
              OUTLINED_FUNCTION_277(v37 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToPause, v81);
              OUTLINED_FUNCTION_19_7(v37 + v62, v90);
              v63 = type metadata accessor for Siri_Nlu_External_UserWantedToPause(0);
              OUTLINED_FUNCTION_12_12(v63);
              if (v62 == 1)
              {
                v64 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__delegated;
                OUTLINED_FUNCTION_277(v37 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__delegated, v80);
                OUTLINED_FUNCTION_19_7(v37 + v64, v89);
                v65 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct(0);
                OUTLINED_FUNCTION_12_12(v65);
                if (v64 == 1)
                {
                  v66 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__userStatedTask;
                  OUTLINED_FUNCTION_277(v37 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__userStatedTask, v79);
                  OUTLINED_FUNCTION_19_7(v37 + v66, v88);
                  v67 = type metadata accessor for Siri_Nlu_External_UserStatedTask(0);
                  OUTLINED_FUNCTION_12_12(v67);
                  if (v66 == 1)
                  {
                    v68 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToUndo;
                    OUTLINED_FUNCTION_277(v37 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToUndo, v78);
                    OUTLINED_FUNCTION_19_7(v37 + v68, v87);
                    v69 = type metadata accessor for Siri_Nlu_External_UserWantedToUndo(0);
                    OUTLINED_FUNCTION_12_12(v69);
                    if (v68 == 1)
                    {
                      v70 = 0;
                    }

                    else
                    {
                      v70 = 0xD000000000000010;
                    }

                    if (v68 == 1)
                    {
                      v1 = 0;
                    }

                    else
                    {
                      v1 = 0x80000001C8C210E0;
                    }
                  }

                  else
                  {
                    v1 = 0xEE006B7361546465;
                    v70 = OUTLINED_FUNCTION_33_6() | 0x7461745300000000;
                  }
                }

                else
                {
                  OUTLINED_FUNCTION_17_8();
                  v70 = v74 | 6;
                }
              }

              else
              {
                OUTLINED_FUNCTION_17_8();
                v70 = v73 | 1;
              }
            }

            else
            {
              OUTLINED_FUNCTION_17_8();
              v70 = v72 | 3;
            }
          }

          else
          {
            v70 = 0xD000000000000010;
            v1 = 0x80000001C8C21160;
          }
        }

        else
        {
          OUTLINED_FUNCTION_17_8();
          v70 = v71 | 2;
        }
      }

      else
      {
        v1 = 0xED000064656C6C65;
        v70 = OUTLINED_FUNCTION_33_6() | 0x636E614300000000;
      }
    }

    else
    {
      v70 = OUTLINED_FUNCTION_33_6() | 0x656A655200000000;
    }
  }

  else
  {
    v1 = 0xEC00000064657470;
    v70 = OUTLINED_FUNCTION_33_6() | 0x6563634100000000;
  }

  v75 = v1;
  result.value._object = v75;
  result.value._countAndFlagsBits = v70;
  return result;
}

uint64_t Siri_Nlu_External_UserDialogAct.getTasks()()
{
  v186[10] = type metadata accessor for Siri_Nlu_External_UserWantedToUndo(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_9_0();
  v186[4] = v2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86C0, &unk_1C8BF5020);
  v4 = OUTLINED_FUNCTION_80(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_10_0();
  v186[3] = v5;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_96();
  v186[8] = v7;
  v8 = OUTLINED_FUNCTION_86();
  v186[16] = type metadata accessor for Siri_Nlu_External_UserStatedTask(v8);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9_0();
  v186[9] = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B61D8, &unk_1C8BF4FD0);
  v12 = OUTLINED_FUNCTION_80(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_10_0();
  v186[7] = v13;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_96();
  v186[14] = v15;
  v16 = OUTLINED_FUNCTION_86();
  v186[22] = type metadata accessor for Siri_Nlu_External_UserWantedToPause(v16);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_9_0();
  v186[15] = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E18, &qword_1C8BEBC48);
  v20 = OUTLINED_FUNCTION_80(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_10_0();
  v186[13] = v21;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_96();
  v186[20] = v23;
  v24 = OUTLINED_FUNCTION_86();
  v186[28] = type metadata accessor for Siri_Nlu_External_UserWantedToProceed(v24);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_9_0();
  v186[21] = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86D0, &unk_1C8BF5010);
  v28 = OUTLINED_FUNCTION_80(v27);
  MEMORY[0x1EEE9AC00](v28);
  OUTLINED_FUNCTION_10_0();
  v186[19] = v29;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_96();
  v186[26] = v31;
  v32 = OUTLINED_FUNCTION_86();
  v186[34] = type metadata accessor for Siri_Nlu_External_UserAcknowledged(v32);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_9_0();
  v186[27] = v34;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B86D8, &qword_1C8BF4620);
  v36 = OUTLINED_FUNCTION_80(v35);
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_10_0();
  v186[25] = v37;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v38);
  OUTLINED_FUNCTION_96();
  v186[32] = v39;
  v40 = OUTLINED_FUNCTION_86();
  v192 = type metadata accessor for Siri_Nlu_External_UserWantedToRepeat(v40);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_9_0();
  v186[33] = v42;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E10, &unk_1C8BF5000);
  v44 = OUTLINED_FUNCTION_80(v43);
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_10_0();
  v186[31] = v45;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_96();
  v190 = v47;
  v48 = OUTLINED_FUNCTION_86();
  v198 = type metadata accessor for Siri_Nlu_External_UserCancelled(v48);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_9_0();
  v191 = v50;
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E20, &unk_1C8BF4FF0);
  v52 = OUTLINED_FUNCTION_80(v51);
  MEMORY[0x1EEE9AC00](v52);
  OUTLINED_FUNCTION_10_0();
  v189 = v53;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_96();
  v195 = v55;
  v56 = OUTLINED_FUNCTION_86();
  v202 = type metadata accessor for Siri_Nlu_External_UserRejected(v56);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_9_0();
  v197 = v58;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6E28, &unk_1C8C10580);
  v60 = OUTLINED_FUNCTION_80(v59);
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_10_0();
  v194 = v61;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_96();
  v200 = v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  v65 = OUTLINED_FUNCTION_80(v64);
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_10_0();
  v186[2] = v66;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_123();
  v186[6] = v68;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_123();
  v186[12] = v70;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_123();
  v186[18] = v72;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_123();
  v186[24] = v74;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_123();
  v186[30] = v76;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v77);
  OUTLINED_FUNCTION_123();
  v188 = v78;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_123();
  v196 = v80;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_96();
  v201 = v82;
  v83 = OUTLINED_FUNCTION_86();
  v203 = type metadata accessor for Siri_Nlu_External_UsoGraph(v83);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v84);
  OUTLINED_FUNCTION_10_0();
  v186[1] = v85;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v86);
  OUTLINED_FUNCTION_123();
  v186[5] = v87;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v88);
  OUTLINED_FUNCTION_123();
  v186[11] = v89;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v90);
  OUTLINED_FUNCTION_123();
  v186[17] = v91;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_123();
  v186[23] = v93;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v94);
  OUTLINED_FUNCTION_123();
  v186[29] = v95;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v96);
  OUTLINED_FUNCTION_123();
  v187 = v97;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_123();
  v193 = v99;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v100);
  v102 = (v186 - v101);
  v103 = type metadata accessor for Siri_Nlu_External_UserAccepted(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v104);
  OUTLINED_FUNCTION_9_0();
  v199 = v105;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC2B6330, &unk_1C8BF4FE0);
  v107 = OUTLINED_FUNCTION_80(v106);
  v108 = MEMORY[0x1EEE9AC00](v107);
  v110 = v186 - ((v109 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v108);
  v112 = v186 - v111;
  v113 = *(v0 + *(type metadata accessor for Siri_Nlu_External_UserDialogAct(0) + 20));
  v114 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__accepted;
  OUTLINED_FUNCTION_277(v113 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__accepted, v212);
  v115 = v113;
  sub_1C87AB9AC(v113 + v114, v112, &unk_1EC2B6330, &unk_1C8BF4FE0);
  LODWORD(v113) = __swift_getEnumTagSinglePayload(v112, 1, v103);
  sub_1C8778ED8(v112, &unk_1EC2B6330, &unk_1C8BF4FE0);
  if (v113 != 1)
  {
    sub_1C87AB9AC(v115 + v114, v110, &unk_1EC2B6330, &unk_1C8BF4FE0);
    OUTLINED_FUNCTION_17_6(v110);
    if (v143)
    {
      v157 = v199;
      _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
      OUTLINED_FUNCTION_32_8();
      OUTLINED_FUNCTION_5();
      __swift_storeEnumTagSinglePayload(v144, v145, v146, v147);
      OUTLINED_FUNCTION_5();
      __swift_storeEnumTagSinglePayload(v148, v149, v150, v203);
      OUTLINED_FUNCTION_17_6(v110);
      if (!v143)
      {
        sub_1C8778ED8(v110, &unk_1EC2B6330, &unk_1C8BF4FE0);
      }
    }

    else
    {
      v157 = v199;
      sub_1C8886A8C(v110, v199, type metadata accessor for Siri_Nlu_External_UserAccepted);
    }

    v158 = v201;
    sub_1C87AB9AC(v157 + *(v103 + 24), v201, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    OUTLINED_FUNCTION_65(v158);
    if (v143)
    {
      v159 = MEMORY[0x1E69E7CC0];
      *v102 = MEMORY[0x1E69E7CC0];
      v102[1] = v159;
      v102[2] = v159;
      v102[3] = v159;
      v102[4] = v159;
      _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
      OUTLINED_FUNCTION_28_8();
      OUTLINED_FUNCTION_5();
      __swift_storeEnumTagSinglePayload(v160, v161, v162, v163);
      OUTLINED_FUNCTION_65(v158);
      if (!v143)
      {
        sub_1C8778ED8(v158, &qword_1EC2B61D0, &qword_1C8C0C1E0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_12();
      sub_1C8886A8C(v158, v102, v164);
    }

    sub_1C8886A34(v157, type metadata accessor for Siri_Nlu_External_UserAccepted);
    type metadata accessor for UsoGraphProtoReader.UnitIndexHelper();
    swift_initStackObject();
    sub_1C87A5614(v102);
    v166 = v165;
    OUTLINED_FUNCTION_7_14();
    v168 = v102;
    goto LABEL_33;
  }

  v116 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__rejected;
  OUTLINED_FUNCTION_277(v115 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__rejected, v211);
  v117 = v200;
  sub_1C87AB9AC(v115 + v116, v200, &qword_1EC2B6E28, &unk_1C8C10580);
  v118 = v202;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v117, 1, v202);
  sub_1C8778ED8(v117, &qword_1EC2B6E28, &unk_1C8C10580);
  if (EnumTagSinglePayload != 1)
  {
    v151 = v115 + v116;
    v152 = v194;
    sub_1C87AB9AC(v151, v194, &qword_1EC2B6E28, &unk_1C8C10580);
    OUTLINED_FUNCTION_65(v152);
    if (v143)
    {
      v173 = v197;
      _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
      type metadata accessor for Siri_Nlu_External_UUID(0);
      OUTLINED_FUNCTION_5();
      __swift_storeEnumTagSinglePayload(v153, v154, v155, v156);
      OUTLINED_FUNCTION_11_10(*(v118 + 24));
      if (__swift_getEnumTagSinglePayload(v152, 1, v118) != 1)
      {
        sub_1C8778ED8(v152, &qword_1EC2B6E28, &unk_1C8C10580);
      }
    }

    else
    {
      v173 = v197;
      sub_1C8886A8C(v152, v197, type metadata accessor for Siri_Nlu_External_UserRejected);
    }

    v174 = v196;
    sub_1C87AB9AC(v173 + *(v118 + 24), v196, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    OUTLINED_FUNCTION_3_11();
    if (v143)
    {
      v178 = v193;
      OUTLINED_FUNCTION_14_7(MEMORY[0x1E69E7CC0]);
      v175 = OUTLINED_FUNCTION_28_8();
      OUTLINED_FUNCTION_1_10(v175);
      if (!v143)
      {
        sub_1C8778ED8(v174, &qword_1EC2B61D0, &qword_1C8C0C1E0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_12();
      v178 = v193;
      sub_1C8886A8C(v174, v193, v176);
    }

    sub_1C8886A34(v173, type metadata accessor for Siri_Nlu_External_UserRejected);
    type metadata accessor for UsoGraphProtoReader.UnitIndexHelper();
    goto LABEL_32;
  }

  v120 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__cancelled;
  OUTLINED_FUNCTION_277(v115 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__cancelled, v210);
  OUTLINED_FUNCTION_22_8(v115 + v120);
  v121 = OUTLINED_FUNCTION_195_0();
  v122 = v198;
  OUTLINED_FUNCTION_13_13(v121, v123);
  if (&unk_1C8C10580 != 1)
  {
    v169 = v189;
    sub_1C87AB9AC(v115 + v120, v189, &qword_1EC2B6E20, &unk_1C8BF4FF0);
    OUTLINED_FUNCTION_4_12();
    if (v143)
    {
      v177 = v191;
      _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
      v170 = OUTLINED_FUNCTION_32_8();
      OUTLINED_FUNCTION_2_17(&qword_1EC2B6E20 + v177, v171, v172, v170);
      v178 = v187;
      if (!v143)
      {
        sub_1C8778ED8(v169, &qword_1EC2B6E20, &unk_1C8BF4FF0);
      }
    }

    else
    {
      v177 = v191;
      sub_1C8886A8C(v169, v191, type metadata accessor for Siri_Nlu_External_UserCancelled);
      v178 = v187;
    }

    v179 = v188;
    sub_1C87AB9AC(v177 + *(v122 + 24), v188, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    OUTLINED_FUNCTION_3_11();
    if (v143)
    {
      OUTLINED_FUNCTION_14_7(MEMORY[0x1E69E7CC0]);
      v180 = OUTLINED_FUNCTION_28_8();
      OUTLINED_FUNCTION_1_10(v180);
      if (!v143)
      {
        sub_1C8778ED8(v179, &qword_1EC2B61D0, &qword_1C8C0C1E0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_0_12();
      OUTLINED_FUNCTION_31_5(v181, v182, v183);
    }

    sub_1C8886A34(v177, type metadata accessor for Siri_Nlu_External_UserCancelled);
    type metadata accessor for UsoGraphProtoReader.UnitIndexHelper();
LABEL_32:
    swift_initStackObject();
    sub_1C87A5614(v178);
    v166 = v184;
    OUTLINED_FUNCTION_7_14();
    v168 = v178;
LABEL_33:
    sub_1C8886A34(v168, v167);
    v142 = MEMORY[0x1CCA7D450](v166);

    return v142;
  }

  v124 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToRepeat;
  OUTLINED_FUNCTION_277(v115 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToRepeat, v209);
  OUTLINED_FUNCTION_22_8(v115 + v124);
  v125 = OUTLINED_FUNCTION_195_0();
  OUTLINED_FUNCTION_13_13(v125, v126);
  v127 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__acknowledged;
  OUTLINED_FUNCTION_277(v115 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__acknowledged, v208);
  OUTLINED_FUNCTION_22_8(v115 + v127);
  v128 = OUTLINED_FUNCTION_195_0();
  OUTLINED_FUNCTION_13_13(v128, v129);
  v130 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToProceed;
  OUTLINED_FUNCTION_277(v115 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToProceed, v207);
  OUTLINED_FUNCTION_22_8(v115 + v130);
  v131 = OUTLINED_FUNCTION_195_0();
  OUTLINED_FUNCTION_13_13(v131, v132);
  v133 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToPause;
  OUTLINED_FUNCTION_277(v115 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToPause, v206);
  OUTLINED_FUNCTION_22_8(v115 + v133);
  v134 = OUTLINED_FUNCTION_195_0();
  OUTLINED_FUNCTION_13_13(v134, v135);
  v136 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__userStatedTask;
  OUTLINED_FUNCTION_277(v115 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__userStatedTask, &v205);
  OUTLINED_FUNCTION_22_8(v115 + v136);
  v137 = OUTLINED_FUNCTION_195_0();
  OUTLINED_FUNCTION_13_13(v137, v138);
  v139 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToUndo;
  OUTLINED_FUNCTION_277(v115 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UserDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__wantedToUndo, &v204);
  OUTLINED_FUNCTION_22_8(v115 + v139);
  v140 = OUTLINED_FUNCTION_195_0();
  OUTLINED_FUNCTION_13_13(v140, v141);
  return MEMORY[0x1E69E7CC0];
}

uint64_t Siri_Nlu_External_UserDialogAct.getTasksAs<A>(_:)(uint64_t a1, uint64_t a2)
{
  v29 = sub_1C8BD522C();
  v3 = *(v29 - 8);
  OUTLINED_FUNCTION_77();
  v5 = MEMORY[0x1EEE9AC00](v4);
  v7 = &v21 - v6;
  v8 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_10_0();
  v28 = v9;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_96();
  v27 = v11;
  OUTLINED_FUNCTION_86();
  v12 = sub_1C8BD51FC();
  v30 = v12;
  v13 = Siri_Nlu_External_UserDialogAct.getTasks()();
  result = sub_1C8886AEC(v13);
  if (!result)
  {

    return v12;
  }

  v15 = result;
  if (result >= 1)
  {
    v16 = 0;
    v25 = (v8 + 32);
    v26 = (v3 + 8);
    v23 = (v8 + 8);
    v24 = (v8 + 16);
    v22 = v7;
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1CCA7E340](v16, v13);
      }

      else
      {
      }

      sub_1C8BD443C();
      __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC2B86E0, &qword_1C8BF4628);
      if (swift_dynamicCast())
      {
        __swift_storeEnumTagSinglePayload(v7, 0, 1, a2);
        v17 = v27;
        (*v25)(v27, v7, a2);
        (*v24)(v28, v17, a2);
        sub_1C8BD521C();
        v7 = v22;
        sub_1C8BD520C();

        (*v23)(v17, a2);
      }

      else
      {

        OUTLINED_FUNCTION_5();
        __swift_storeEnumTagSinglePayload(v18, v19, v20, a2);
        (*v26)(v7, v29);
      }

      ++v16;
    }

    while (v15 != v16);

    return v30;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C8886A34(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_21();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1C8886A8C(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_21();
  (*(v5 + 32))(a2, a1);
  return a2;
}

uint64_t sub_1C8886AEC(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if ((a1 & 0x8000000000000000) == 0)
  {
    a1 &= 0xFFFFFFFFFFFFFF8uLL;
  }

  return MEMORY[0x1EEE6AA70](a1);
}

BOOL sub_1C8886B78()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v15[-v2];
  v4 = type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = type metadata accessor for Siri_Nlu_External_SystemPrompted(0);
  sub_1C8786744(v0 + *(v7 + 24), v3, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  if (__swift_getEnumTagSinglePayload(v3, 1, v4) == 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
    *v6 = MEMORY[0x1E69E7CC0];
    v6[1] = v8;
    v6[2] = v8;
    v6[3] = v8;
    v6[4] = v8;
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v9 = *(v4 + 40);
    v10 = type metadata accessor for Siri_Nlu_External_SemVer(0);
    __swift_storeEnumTagSinglePayload(v6 + v9, 1, 1, v10);
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v3, 1, v4);
    if (EnumTagSinglePayload != 1)
    {
      EnumTagSinglePayload = sub_1C8778ED8(v3, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    }
  }

  else
  {
    EnumTagSinglePayload = sub_1C87AA5FC(v3, v6, type metadata accessor for Siri_Nlu_External_UsoGraph);
  }

  MEMORY[0x1EEE9AC00](EnumTagSinglePayload);
  *&v15[-16] = &unk_1F4871EC0;
  *&v15[-8] = v6;
  v13 = sub_1C87AA658(sub_1C87AAA6C, &v15[-32], v12, type metadata accessor for Siri_Nlu_External_UsoEdge);
  sub_1C87AAA8C(v6, type metadata accessor for Siri_Nlu_External_UsoGraph);
  return v13;
}

Swift::String_optional __swiftcall Siri_Nlu_External_SystemDialogAct.extractMultilingualMessageLanguage()()
{
  v1 = v0;
  sub_1C8BD493C();
  OUTLINED_FUNCTION_13_1();
  v85 = v3;
  v86 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_9_0();
  v84 = v4;
  v5 = OUTLINED_FUNCTION_86();
  type metadata accessor for Siri_Nlu_External_SpanProperty(v5);
  OUTLINED_FUNCTION_13_1();
  v95 = v6;
  v96 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v83 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Siri_Nlu_External_UsoEntitySpan(0);
  OUTLINED_FUNCTION_13_1();
  v93 = v10;
  v94 = v11;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_9_0();
  v92 = v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61D0, &qword_1C8C0C1E0);
  v14 = OUTLINED_FUNCTION_80(v13);
  MEMORY[0x1EEE9AC00](v14);
  v89 = &v83 - v15;
  v16 = OUTLINED_FUNCTION_86();
  v91 = type metadata accessor for Siri_Nlu_External_UsoGraph(v16);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_9_0();
  v90 = v18;
  v19 = OUTLINED_FUNCTION_86();
  v20 = type metadata accessor for Siri_Nlu_External_SystemPrompted(v19);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_10_0();
  v88 = v22;
  OUTLINED_FUNCTION_83_0();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v83 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&dword_1EC2B86E8, &unk_1C8BF4630);
  v27 = OUTLINED_FUNCTION_80(v26);
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_10_0();
  v87 = v28;
  OUTLINED_FUNCTION_83_0();
  v30 = MEMORY[0x1EEE9AC00](v29);
  v32 = &v83 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v34 = &v83 - v33;
  v35 = *(v1 + *(type metadata accessor for Siri_Nlu_External_SystemDialogAct(0) + 20));
  v36 = OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__prompted;
  OUTLINED_FUNCTION_277(v35 + OBJC_IVAR____TtCV12SiriNLUTypes33Siri_Nlu_External_SystemDialogActP33_4C867BFD71A203F9BD023E35289B5A6D13_StorageClass__prompted, v99);
  sub_1C8786744(v35 + v36, v34, &dword_1EC2B86E8, &unk_1C8BF4630);
  LODWORD(v1) = __swift_getEnumTagSinglePayload(v34, 1, v20);
  sub_1C8778ED8(v34, &dword_1EC2B86E8, &unk_1C8BF4630);
  if (v1 == 1)
  {
    goto LABEL_33;
  }

  sub_1C8786744(v35 + v36, v32, &dword_1EC2B86E8, &unk_1C8BF4630);
  OUTLINED_FUNCTION_9_11();
  if (v78)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    type metadata accessor for Siri_Nlu_External_UUID(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v37, v38, v39, v40);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v41, v42, v43, v91);
    OUTLINED_FUNCTION_9_11();
    v44 = v92;
    if (!v78)
    {
      sub_1C8778ED8(v32, &dword_1EC2B86E8, &unk_1C8BF4630);
    }
  }

  else
  {
    sub_1C87AA5FC(v32, v25, type metadata accessor for Siri_Nlu_External_SystemPrompted);
    v44 = v92;
  }

  v45 = sub_1C8886B78();
  OUTLINED_FUNCTION_0_13();
  sub_1C87AAA8C(v25, v46);
  if (!v45)
  {
    goto LABEL_33;
  }

  v47 = v87;
  sub_1C8786744(v35 + v36, v87, &dword_1EC2B86E8, &unk_1C8BF4630);
  OUTLINED_FUNCTION_9_11();
  if (v78)
  {
    v55 = v88;
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    type metadata accessor for Siri_Nlu_External_UUID(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v48, v49, v50, v51);
    OUTLINED_FUNCTION_5();
    v58 = v91;
    __swift_storeEnumTagSinglePayload(v52, v53, v54, v91);
    OUTLINED_FUNCTION_9_11();
    v57 = v89;
    v56 = v90;
    if (!v78)
    {
      sub_1C8778ED8(v47, &dword_1EC2B86E8, &unk_1C8BF4630);
    }
  }

  else
  {
    v55 = v88;
    sub_1C87AA5FC(v47, v88, type metadata accessor for Siri_Nlu_External_SystemPrompted);
    v57 = v89;
    v56 = v90;
    v58 = v91;
  }

  sub_1C8786744(v55 + *(v20 + 24), v57, &qword_1EC2B61D0, &qword_1C8C0C1E0);
  if (__swift_getEnumTagSinglePayload(v57, 1, v58) == 1)
  {
    v59 = MEMORY[0x1E69E7CC0];
    *v56 = MEMORY[0x1E69E7CC0];
    v56[1] = v59;
    v56[2] = v59;
    v56[3] = v59;
    v56[4] = v59;
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    type metadata accessor for Siri_Nlu_External_SemVer(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v60, v61, v62, v63);
    if (__swift_getEnumTagSinglePayload(v57, 1, v58) != 1)
    {
      sub_1C8778ED8(v57, &qword_1EC2B61D0, &qword_1C8C0C1E0);
    }
  }

  else
  {
    sub_1C87AA5FC(v57, v56, type metadata accessor for Siri_Nlu_External_UsoGraph);
  }

  sub_1C87AAA8C(v55, type metadata accessor for Siri_Nlu_External_SystemPrompted);
  v64 = v56[4];

  OUTLINED_FUNCTION_7_15();
  v66 = sub_1C87AAA8C(v56, v65);
  v68 = *(v64 + 16);
  if (!v68)
  {
LABEL_32:

LABEL_33:
    v66 = OUTLINED_FUNCTION_218();
    goto LABEL_37;
  }

  v69 = 0;
  v91 = v64 + ((*(v94 + 80) + 32) & ~*(v94 + 80));
  while (v69 < *(v64 + 16))
  {
    sub_1C88878A8(v91 + *(v94 + 72) * v69, v44, type metadata accessor for Siri_Nlu_External_UsoEntitySpan);
    v70 = *(v44 + *(v93 + 20));
    OUTLINED_FUNCTION_277(v70 + 16, v98);
    if ((*(v70 + 20) & 1) == 0 && !*(v70 + 16))
    {
      v71 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UsoEntitySpanP33_1AEE57490E029E64C145495E95471CEB13_StorageClass__properties;
      OUTLINED_FUNCTION_277(v70 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UsoEntitySpanP33_1AEE57490E029E64C145495E95471CEB13_StorageClass__properties, v97);
      v72 = *(v70 + v71);
      v73 = *(v72 + 16);
      if (v73)
      {
        v74 = v72 + ((*(v96 + 80) + 32) & ~*(v96 + 80));

        v75 = 0;
        while (v75 < *(v72 + 16))
        {
          sub_1C88878A8(v74 + *(v96 + 72) * v75, v9, type metadata accessor for Siri_Nlu_External_SpanProperty);
          v76 = &v9[*(v95 + 20)];
          v77 = *(v76 + 1);
          if (v77)
          {
            v78 = *v76 == 0x75676E616C736D73 && v77 == 0xEB00000000656761;
            if (v78 || (sub_1C8BD529C() & 1) != 0)
            {

              v80 = v84;
              Siri_Nlu_External_SpanProperty.valueString.getter();
              sub_1C8BD490C();
              (*(v85 + 8))(v80, v86);
              OUTLINED_FUNCTION_10_8();
              OUTLINED_FUNCTION_6_11();
              sub_1C87AAA8C(v92, v81);
              goto LABEL_33;
            }
          }

          ++v75;
          v66 = OUTLINED_FUNCTION_10_8();
          if (v73 == v75)
          {

            v44 = v92;
            goto LABEL_31;
          }
        }

        __break(1u);
        break;
      }
    }

LABEL_31:
    ++v69;
    OUTLINED_FUNCTION_6_11();
    v66 = sub_1C87AAA8C(v44, v79);
    if (v69 == v68)
    {
      goto LABEL_32;
    }
  }

  __break(1u);
LABEL_37:
  result.value._object = v67;
  result.value._countAndFlagsBits = v66;
  return result;
}

uint64_t sub_1C8887564(uint64_t a1, uint64_t *a2)
{
  v28 = a2;
  v3 = type metadata accessor for Siri_Nlu_External_UsoNode(0);
  v27 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61B0, &qword_1C8BE6E40);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v27 - v7;
  v9 = type metadata accessor for Siri_Nlu_External_UsoEdgeLabel(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Siri_Nlu_External_UsoEdge(0);
  sub_1C8786744(a1 + *(v12 + 28), v8, &qword_1EC2B61B0, &qword_1C8BE6E40);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v13 = &v11[v9[5]];
    *v13 = 0;
    v13[4] = 1;
    v14 = &v11[v9[6]];
    *v14 = 0;
    v14[4] = 1;
    v15 = v9[7];
    v16 = type metadata accessor for Siri_Nlu_External_UsoLabel(0);
    __swift_storeEnumTagSinglePayload(&v11[v15], 1, 1, v16);
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) != 1)
    {
      sub_1C8778ED8(v8, &qword_1EC2B61B0, &qword_1C8BE6E40);
    }
  }

  else
  {
    sub_1C87AA5FC(v8, v11, type metadata accessor for Siri_Nlu_External_UsoEdgeLabel);
  }

  v17 = &v11[v9[5]];
  v18 = *v17;
  v19 = v17[4];
  sub_1C87AAA8C(v11, type metadata accessor for Siri_Nlu_External_UsoEdgeLabel);
  result = 0;
  if ((v19 & 1) == 0 && v18 == 710)
  {
    v21 = *v28;
    v22 = (a1 + *(v12 + 20));
    if (*(v22 + 4))
    {
      v23 = 0;
    }

    else
    {
      v23 = *v22;
    }

    if (v23 >= *(v21 + 16))
    {
      __break(1u);
    }

    else
    {
      sub_1C88878A8(v21 + ((*(v27 + 80) + 32) & ~*(v27 + 80)) + *(v27 + 72) * v23, v5, type metadata accessor for Siri_Nlu_External_UsoNode);
      v24 = &v5[*(v3 + 24)];
      v25 = *v24;
      v26 = v24[4];
      sub_1C87AAA8C(v5, type metadata accessor for Siri_Nlu_External_UsoNode);
      return (v25 == 1299) & ~v26;
    }
  }

  return result;
}

uint64_t sub_1C88878A8(uint64_t a1, uint64_t a2, void (*a3)(void))
{
  a3(0);
  OUTLINED_FUNCTION_21();
  v4 = OUTLINED_FUNCTION_218();
  v5(v4);
  return a2;
}

uint64_t Siri_Nlu_Internal_PreprocessingWrapper.tokenizerResponse.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_170();
  v7 = type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper(v6);
  OUTLINED_FUNCTION_73_2(v2 + *(v7 + 20), v1);
  v8 = type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerResponse(0);
  OUTLINED_FUNCTION_65(v1);
  if (v9)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
    v14 = (a1 + *(v8 + 24));
    *v14 = 0;
    v14[1] = 0;
    type metadata accessor for Siri_Nlu_External_UUID(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
    result = OUTLINED_FUNCTION_65(v1);
    if (!v9)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B8710, &unk_1C8BF4640);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_11();
    return sub_1C888A4E0(v1, a1);
  }

  return result;
}

uint64_t type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper(uint64_t a1)
{
  result = qword_1EC2B8778;
  if (!qword_1EC2B8778)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_PreprocessingWrapper.tokenizerResponse.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper(v1);
  sub_1C8778ED8(v0 + *(v2 + 20), &qword_1EC2B8710, &unk_1C8BF4640);
  OUTLINED_FUNCTION_5_11();
  OUTLINED_FUNCTION_44_6();
  type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerResponse(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*Siri_Nlu_Internal_PreprocessingWrapper.tokenizerResponse.modify())(uint64_t **a1, uint64_t a2)
{
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_30_6(v6);
  v8 = type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerResponse(v7);
  *(v1 + 16) = v8;
  OUTLINED_FUNCTION_21();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_28_9(v13);
  OUTLINED_FUNCTION_32_0(*(v14 + 20));
  OUTLINED_FUNCTION_0_0();
  if (v15)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    v20 = (v10 + *(v8 + 24));
    *v20 = 0;
    v20[1] = 0;
    type metadata accessor for Siri_Nlu_External_UUID(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v21, v22, v23, v24);
    OUTLINED_FUNCTION_0_0();
    if (!v15)
    {
      sub_1C8778ED8(v0, &qword_1EC2B8710, &unk_1C8BF4640);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_11();
    v25 = OUTLINED_FUNCTION_168_0();
    sub_1C888A4E0(v25, v26);
  }

  return sub_1C8887C64;
}

uint64_t Siri_Nlu_Internal_PreprocessingWrapper.hasTokenizerResponse.getter()
{
  v0 = OUTLINED_FUNCTION_43_5();
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_74();
  v3 = type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper(v2);
  OUTLINED_FUNCTION_20_6(*(v3 + 20));
  v4 = type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerResponse(0);
  OUTLINED_FUNCTION_10(v4);
  return OUTLINED_FUNCTION_235();
}

Swift::Void __swiftcall Siri_Nlu_Internal_PreprocessingWrapper.clearTokenizerResponse()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper(0);
  sub_1C8778ED8(v0 + *(v1 + 20), &qword_1EC2B8710, &unk_1C8BF4640);
  type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerResponse(0);
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_PreprocessingWrapper.spanMatchResponse.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  v6 = type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper(v5);
  v7 = OUTLINED_FUNCTION_13(*(v6 + 24));
  OUTLINED_FUNCTION_73_2(v7, v8);
  type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse(0);
  OUTLINED_FUNCTION_65(v1);
  if (v9)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    result = OUTLINED_FUNCTION_65(v1);
    if (!v9)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B8718, &qword_1C8C102A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_14();
    v10 = OUTLINED_FUNCTION_121();
    return sub_1C888A4E0(v10, v11);
  }

  return result;
}

uint64_t sub_1C8887E48(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v9 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_80(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v14 - v11;
  sub_1C888A538(a1, &v14 - v11);
  return a7(v12);
}

uint64_t Siri_Nlu_Internal_PreprocessingWrapper.spanMatchResponse.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2B8718, &qword_1C8C102A0);
  OUTLINED_FUNCTION_0_14();
  OUTLINED_FUNCTION_44_6();
  type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*Siri_Nlu_Internal_PreprocessingWrapper.spanMatchResponse.modify())(uint64_t **a1, uint64_t a2)
{
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  *(v0 + 8) = v5;
  matched = type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse(0);
  *(v0 + 16) = matched;
  OUTLINED_FUNCTION_21();
  v8 = *(v7 + 64);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = OUTLINED_FUNCTION_243(v9);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = *(OUTLINED_FUNCTION_28_9(v11) + 24);
  *(v0 + 40) = v12;
  v13 = OUTLINED_FUNCTION_13(v12);
  sub_1C8786744(v13, v14, &qword_1EC2B8718, &qword_1C8C102A0);
  v15 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v15, v16, matched);
  if (v17)
  {
    *v8 = MEMORY[0x1E69E7CC0];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v18 = OUTLINED_FUNCTION_120();
    OUTLINED_FUNCTION_76(v18, v19, matched);
    if (!v17)
    {
      sub_1C8778ED8(v5, &qword_1EC2B8718, &qword_1C8C102A0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_14();
    sub_1C888A4E0(v5, v8);
  }

  return sub_1C888809C;
}

void sub_1C88880C4(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v7 = *a1;
  v8 = *(*a1 + 10);
  v9 = (*a1)[3];
  v10 = (*a1)[4];
  v11 = (*a1)[1];
  v12 = **a1;
  if (a2)
  {
    sub_1C888A538((*a1)[4], v9);
    sub_1C8778ED8(v12 + v8, a3, a4);
    sub_1C888A4E0(v9, v12 + v8);
    OUTLINED_FUNCTION_26_1();
    sub_1C888A590();
  }

  else
  {
    sub_1C8778ED8(v12 + v8, a3, a4);
    sub_1C888A4E0(v10, v12 + v8);
    OUTLINED_FUNCTION_26_1();
  }

  free(v10);
  free(v9);
  free(v11);

  free(v7);
}

uint64_t Siri_Nlu_Internal_PreprocessingWrapper.hasSpanMatchResponse.getter()
{
  v0 = OUTLINED_FUNCTION_43_5();
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_74();
  v3 = type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper(v2);
  OUTLINED_FUNCTION_20_6(*(v3 + 24));
  matched = type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse(0);
  OUTLINED_FUNCTION_10(matched);
  return OUTLINED_FUNCTION_235();
}

Swift::Void __swiftcall Siri_Nlu_Internal_PreprocessingWrapper.clearSpanMatchResponse()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper(0);
  sub_1C8778ED8(v0 + *(v1 + 24), &qword_1EC2B8718, &qword_1C8C102A0);
  type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse(0);
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_PreprocessingWrapper.embeddingResponse.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  v6 = type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper(v5);
  v7 = OUTLINED_FUNCTION_13(*(v6 + 28));
  OUTLINED_FUNCTION_73_2(v7, v8);
  v9 = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingResponse(0);
  OUTLINED_FUNCTION_65(v1);
  if (v10)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v11 = *(v9 + 20);
    if (qword_1EC2B5C38 != -1)
    {
      OUTLINED_FUNCTION_23_9(&qword_1EC2B5C38);
    }

    *(a1 + v11) = qword_1EC2BE0D0;
    v12 = OUTLINED_FUNCTION_120();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, v13, v9);

    if (EnumTagSinglePayload != 1)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B8720, &qword_1C8BF4650);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_11();
    v15 = OUTLINED_FUNCTION_121();
    return sub_1C888A4E0(v15, v16);
  }

  return result;
}

uint64_t Siri_Nlu_Internal_PreprocessingWrapper.embeddingResponse.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper(v1);
  sub_1C8778ED8(v0 + *(v2 + 28), &qword_1EC2B8720, &qword_1C8BF4650);
  OUTLINED_FUNCTION_1_11();
  OUTLINED_FUNCTION_44_6();
  type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingResponse(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*Siri_Nlu_Internal_PreprocessingWrapper.embeddingResponse.modify())(uint64_t **a1, char a2)
{
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_30_6(v6);
  v8 = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingResponse(v7);
  *(v1 + 16) = v8;
  OUTLINED_FUNCTION_21();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_28_9(v13);
  OUTLINED_FUNCTION_32_0(*(v14 + 28));
  OUTLINED_FUNCTION_0_0();
  if (v15)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v16 = *(v8 + 20);
    if (qword_1EC2B5C38 != -1)
    {
      OUTLINED_FUNCTION_23_9(&qword_1EC2B5C38);
    }

    *(v10 + v16) = qword_1EC2BE0D0;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v8);

    if (EnumTagSinglePayload != 1)
    {
      sub_1C8778ED8(v0, &qword_1EC2B8720, &qword_1C8BF4650);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_11();
    v18 = OUTLINED_FUNCTION_168_0();
    sub_1C888A4E0(v18, v19);
  }

  return sub_1C8888570;
}

uint64_t Siri_Nlu_Internal_PreprocessingWrapper.hasEmbeddingResponse.getter()
{
  v0 = OUTLINED_FUNCTION_43_5();
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_74();
  v3 = type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper(v2);
  OUTLINED_FUNCTION_20_6(*(v3 + 28));
  v4 = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingResponse(0);
  OUTLINED_FUNCTION_10(v4);
  return OUTLINED_FUNCTION_235();
}

Swift::Void __swiftcall Siri_Nlu_Internal_PreprocessingWrapper.clearEmbeddingResponse()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper(0);
  sub_1C8778ED8(v0 + *(v1 + 28), &qword_1EC2B8720, &qword_1C8BF4650);
  type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingResponse(0);
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_PreprocessingWrapper.mentionResolverResponse.getter@<X0>(void *a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  v6 = type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper(v5);
  v7 = OUTLINED_FUNCTION_13(*(v6 + 32));
  OUTLINED_FUNCTION_73_2(v7, v8);
  v9 = type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse(0);
  OUTLINED_FUNCTION_65(v1);
  if (v10)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    type metadata accessor for Siri_Nlu_External_UUID(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
    v15 = (a1 + *(v9 + 28));
    *v15 = 0;
    v15[1] = 0;
    result = OUTLINED_FUNCTION_65(v1);
    if (!v10)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B8728, &qword_1C8BF4658);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_12();
    v16 = OUTLINED_FUNCTION_121();
    return sub_1C888A4E0(v16, v17);
  }

  return result;
}

uint64_t Siri_Nlu_Internal_PreprocessingWrapper.mentionResolverResponse.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper(v1);
  sub_1C8778ED8(v0 + *(v2 + 32), &qword_1EC2B8728, &qword_1C8BF4658);
  OUTLINED_FUNCTION_6_12();
  OUTLINED_FUNCTION_44_6();
  type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*Siri_Nlu_Internal_PreprocessingWrapper.mentionResolverResponse.modify())(uint64_t **a1, char a2)
{
  v2 = OUTLINED_FUNCTION_251();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_30_6(v6);
  v8 = type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse(v7);
  *(v1 + 16) = v8;
  OUTLINED_FUNCTION_21();
  v10 = *(v9 + 64);
  v11 = __swift_coroFrameAllocStub(v10);
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_28_9(v13);
  OUTLINED_FUNCTION_32_0(*(v14 + 32));
  OUTLINED_FUNCTION_0_0();
  if (v15)
  {
    *v10 = MEMORY[0x1E69E7CC0];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    type metadata accessor for Siri_Nlu_External_UUID(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    v20 = (v10 + *(v8 + 28));
    *v20 = 0;
    v20[1] = 0;
    OUTLINED_FUNCTION_0_0();
    if (!v15)
    {
      sub_1C8778ED8(v0, &qword_1EC2B8728, &qword_1C8BF4658);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_12();
    v21 = OUTLINED_FUNCTION_168_0();
    sub_1C888A4E0(v21, v22);
  }

  return sub_1C8888930;
}

uint64_t Siri_Nlu_Internal_PreprocessingWrapper.hasMentionResolverResponse.getter()
{
  v0 = OUTLINED_FUNCTION_43_5();
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_74();
  v3 = type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper(v2);
  OUTLINED_FUNCTION_20_6(*(v3 + 32));
  v4 = type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse(0);
  OUTLINED_FUNCTION_10(v4);
  return OUTLINED_FUNCTION_235();
}

Swift::Void __swiftcall Siri_Nlu_Internal_PreprocessingWrapper.clearMentionResolverResponse()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper(0);
  sub_1C8778ED8(v0 + *(v1 + 32), &qword_1EC2B8728, &qword_1C8BF4658);
  type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse(0);
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_PreprocessingWrapper.unknownFields.getter()
{
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v0 = OUTLINED_FUNCTION_218();

  return v1(v0);
}

uint64_t Siri_Nlu_Internal_PreprocessingWrapper.unknownFields.setter()
{
  OUTLINED_FUNCTION_241();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t Siri_Nlu_Internal_PreprocessingWrapper.init()(uint64_t a1)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper(0);
  type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerResponse(0);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse(0);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
  type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingResponse(0);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v9, v10, v11, v12);
  type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse(0);
  OUTLINED_FUNCTION_5();

  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

uint64_t sub_1C8888BD8()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B86F8);
  __swift_project_value_buffer(v0, qword_1EC2B86F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "tokenizer_response";
  *(v6 + 8) = 18;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "span_match_response";
  *(v10 + 8) = 19;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "embedding_response";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "mention_resolver_response";
  *(v14 + 1) = 25;
  v14[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_Internal_PreprocessingWrapper._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B5140 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2B86F8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Siri_Nlu_Internal_PreprocessingWrapper.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v3 || (v5 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v6 = OUTLINED_FUNCTION_8();
        sub_1C8888F74(v6, v7, v8, v9);
        break;
      case 2:
        v18 = OUTLINED_FUNCTION_8();
        sub_1C8889028(v18, v19, v20, v21);
        break;
      case 3:
        v10 = OUTLINED_FUNCTION_8();
        sub_1C88890DC(v10, v11, v12, v13);
        break;
      case 4:
        v14 = OUTLINED_FUNCTION_8();
        sub_1C8889190(v14, v15, v16, v17);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C8888F74(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper(0);
  type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerResponse(0);
  sub_1C888A8BC(&qword_1EC2B6408, type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerResponse, &protocol conformance descriptor for Siri_Nlu_Internal_Tokenizer_TokenizerResponse);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C8889028(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper(0);
  type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse(0);
  sub_1C888A8BC(&qword_1EC2B45A0, type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse, &protocol conformance descriptor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C88890DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper(0);
  type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingResponse(0);
  sub_1C888A8BC(&qword_1EC2B8730, type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingResponse, &protocol conformance descriptor for Siri_Nlu_Internal_Embedding_EmbeddingResponse);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C8889190(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper(0);
  type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse(0);
  sub_1C888A8BC(&qword_1EC2B6DE0, type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse, &protocol conformance descriptor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse);
  return sub_1C8BD4C7C();
}

uint64_t Siri_Nlu_Internal_PreprocessingWrapper.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v63 = a2;
  v64 = a3;
  v65 = a1;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8728, &qword_1C8BF4658);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_81();
  v59 = v8;
  v9 = OUTLINED_FUNCTION_86();
  v60 = type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse(v9);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_33();
  v55 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8720, &qword_1C8BF4650);
  OUTLINED_FUNCTION_80(v13);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_81();
  v57 = v15;
  v16 = OUTLINED_FUNCTION_86();
  v58 = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingResponse(v16);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_33();
  v56 = v19 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8718, &qword_1C8C102A0);
  OUTLINED_FUNCTION_80(v20);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v21);
  v22 = OUTLINED_FUNCTION_74();
  matched = type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse(v22);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_33();
  v26 = v25 - v24;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8710, &unk_1C8BF4640);
  OUTLINED_FUNCTION_80(v27);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v54 - v29;
  v31 = type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerResponse(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_33();
  v35 = v34 - v33;
  v66 = type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper(0);
  sub_1C8786744(v3 + v66[5], v30, &qword_1EC2B8710, &unk_1C8BF4640);
  if (__swift_getEnumTagSinglePayload(v30, 1, v31) == 1)
  {
    sub_1C8778ED8(v30, &qword_1EC2B8710, &unk_1C8BF4640);
  }

  else
  {
    sub_1C888A4E0(v30, v35);
    sub_1C888A8BC(&qword_1EC2B6408, type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerResponse, &protocol conformance descriptor for Siri_Nlu_Internal_Tokenizer_TokenizerResponse);
    v4 = v62;
    sub_1C8BD4E2C();
    result = sub_1C888A590();
    if (v4)
    {
      return result;
    }
  }

  sub_1C8786744(v3 + v66[6], v5, &qword_1EC2B8718, &qword_1C8C102A0);
  v37 = OUTLINED_FUNCTION_120();
  v38 = matched;
  if (__swift_getEnumTagSinglePayload(v37, v39, matched) == 1)
  {
    sub_1C8778ED8(v5, &qword_1EC2B8718, &qword_1C8C102A0);
  }

  else
  {
    sub_1C888A4E0(v5, v26);
    v40 = sub_1C888A8BC(&qword_1EC2B45A0, type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse, &protocol conformance descriptor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse);
    OUTLINED_FUNCTION_33_7(v26, 2, v38, v40);
    result = sub_1C888A590();
    if (v4)
    {
      return result;
    }
  }

  v41 = v57;
  sub_1C8786744(v3 + v66[7], v57, &qword_1EC2B8720, &qword_1C8BF4650);
  v42 = OUTLINED_FUNCTION_120();
  v43 = v58;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v42, v44, v58);
  v47 = v59;
  v46 = v60;
  if (EnumTagSinglePayload == 1)
  {
    sub_1C8778ED8(v41, &qword_1EC2B8720, &qword_1C8BF4650);
  }

  else
  {
    OUTLINED_FUNCTION_19_8();
    v48 = v41;
    v49 = v56;
    sub_1C888A4E0(v48, v56);
    v50 = sub_1C888A8BC(&qword_1EC2B8730, type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingResponse, &protocol conformance descriptor for Siri_Nlu_Internal_Embedding_EmbeddingResponse);
    OUTLINED_FUNCTION_33_7(v49, 3, v43, v50);
    OUTLINED_FUNCTION_121();
    result = sub_1C888A590();
    if (v4)
    {
      return result;
    }

    v46 = v60;
  }

  sub_1C8786744(v3 + v66[8], v47, &qword_1EC2B8728, &qword_1C8BF4658);
  if (__swift_getEnumTagSinglePayload(v47, 1, v46) == 1)
  {
    sub_1C8778ED8(v47, &qword_1EC2B8728, &qword_1C8BF4658);
  }

  else
  {
    v51 = v47;
    v52 = v55;
    sub_1C888A4E0(v51, v55);
    v53 = sub_1C888A8BC(&qword_1EC2B6DE0, type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse, &protocol conformance descriptor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse);
    OUTLINED_FUNCTION_33_7(v52, 4, v46, v53);
    result = sub_1C888A590();
    if (v4)
    {
      return result;
    }
  }

  return sub_1C8BD49DC();
}

uint64_t static Siri_Nlu_Internal_PreprocessingWrapper.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v101 = a1;
  v102 = a2;
  v91 = type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_33();
  v87 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8728, &qword_1C8BF4658);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_81();
  v88 = v8;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8738, &qword_1C8BF4660);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_81();
  v92 = v10;
  v11 = OUTLINED_FUNCTION_86();
  v96 = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingResponse(v11);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_33();
  v89 = v14 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8720, &qword_1C8BF4650);
  OUTLINED_FUNCTION_80(v15);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_81();
  v93 = v17;
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8740, &qword_1C8BF4668);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_81();
  v97 = v19;
  v20 = OUTLINED_FUNCTION_86();
  matched = type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse(v20);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_33();
  v94 = (v23 - v22);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8718, &qword_1C8C102A0);
  OUTLINED_FUNCTION_80(v24);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_81();
  v98 = v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8748, &qword_1C8BF4670);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v28);
  v29 = OUTLINED_FUNCTION_170();
  v30 = type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerResponse(v29);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_33();
  v34 = v33 - v32;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8710, &unk_1C8BF4640);
  OUTLINED_FUNCTION_80(v35);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v36);
  v38 = &v87 - v37;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B8750, &qword_1C8BF4678) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v40);
  v42 = &v87 - v41;
  v100 = type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper(0);
  v43 = *(v100 + 20);
  v44 = *(v39 + 56);
  sub_1C8786744(v101 + v43, v42, &qword_1EC2B8710, &unk_1C8BF4640);
  sub_1C8786744(v102 + v43, &v42[v44], &qword_1EC2B8710, &unk_1C8BF4640);
  OUTLINED_FUNCTION_76(v42, 1, v30);
  if (v45)
  {
    OUTLINED_FUNCTION_76(&v42[v44], 1, v30);
    if (v45)
    {
      sub_1C8778ED8(v42, &qword_1EC2B8710, &unk_1C8BF4640);
      goto LABEL_11;
    }

LABEL_9:
    v46 = &qword_1EC2B8750;
    v47 = &qword_1C8BF4678;
    v48 = v42;
LABEL_47:
    sub_1C8778ED8(v48, v46, v47);
    goto LABEL_48;
  }

  sub_1C8786744(v42, v38, &qword_1EC2B8710, &unk_1C8BF4640);
  OUTLINED_FUNCTION_76(&v42[v44], 1, v30);
  if (v45)
  {
    sub_1C888A590();
    goto LABEL_9;
  }

  sub_1C888A4E0(&v42[v44], v34);
  v49 = static Siri_Nlu_Internal_Tokenizer_TokenizerResponse.== infix(_:_:)(v38, v34);
  sub_1C888A590();
  OUTLINED_FUNCTION_168_0();
  sub_1C888A590();
  sub_1C8778ED8(v42, &qword_1EC2B8710, &unk_1C8BF4640);
  if ((v49 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_11:
  v51 = v100;
  v50 = v101;
  v52 = *(v100 + 24);
  v53 = *(v27 + 48);
  sub_1C8786744(v101 + v52, v2, &qword_1EC2B8718, &qword_1C8C102A0);
  v54 = v102;
  sub_1C8786744(v102 + v52, v2 + v53, &qword_1EC2B8718, &qword_1C8C102A0);
  v55 = matched;
  OUTLINED_FUNCTION_76(v2, 1, matched);
  if (v45)
  {
    OUTLINED_FUNCTION_76(v2 + v53, 1, v55);
    if (v45)
    {
      sub_1C8778ED8(v2, &qword_1EC2B8718, &qword_1C8C102A0);
      goto LABEL_16;
    }

    goto LABEL_24;
  }

  v60 = v98;
  sub_1C8786744(v2, v98, &qword_1EC2B8718, &qword_1C8C102A0);
  OUTLINED_FUNCTION_76(v2 + v53, 1, v55);
  if (v61)
  {
    sub_1C888A590();
LABEL_24:
    v46 = &qword_1EC2B8748;
    v47 = &qword_1C8BF4670;
LABEL_25:
    v48 = v2;
    goto LABEL_47;
  }

  OUTLINED_FUNCTION_0_14();
  v62 = v94;
  sub_1C888A4E0(v2 + v53, v94);
  sub_1C87D27C0(*v60, *v62);
  if ((v63 & 1) == 0)
  {
    sub_1C888A590();
    sub_1C888A590();
    v46 = &qword_1EC2B8718;
    v47 = &qword_1C8C102A0;
    goto LABEL_25;
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_4_13();
  sub_1C888A8BC(v64, v65, MEMORY[0x1E69AAC10]);
  v66 = sub_1C8BD517C();
  sub_1C888A590();
  sub_1C888A590();
  sub_1C8778ED8(v2, &qword_1EC2B8718, &qword_1C8C102A0);
  if ((v66 & 1) == 0)
  {
    goto LABEL_48;
  }

LABEL_16:
  v56 = *(v51 + 28);
  v57 = *(v95 + 48);
  v58 = v97;
  OUTLINED_FUNCTION_27(v50 + v56, v97);
  OUTLINED_FUNCTION_27(v54 + v56, v58 + v57);
  v59 = v96;
  OUTLINED_FUNCTION_76(v58, 1, v96);
  if (v45)
  {
    OUTLINED_FUNCTION_76(v58 + v57, 1, v59);
    if (v45)
    {
      sub_1C8778ED8(v58, &qword_1EC2B8720, &qword_1C8BF4650);
LABEL_38:
      v75 = *(v51 + 32);
      v76 = *(v90 + 48);
      v77 = v92;
      OUTLINED_FUNCTION_27(v50 + v75, v92);
      OUTLINED_FUNCTION_27(v54 + v75, v77 + v76);
      v78 = v91;
      OUTLINED_FUNCTION_76(v77, 1, v91);
      if (v45)
      {
        OUTLINED_FUNCTION_76(v77 + v76, 1, v78);
        if (v45)
        {
          sub_1C8778ED8(v77, &qword_1EC2B8728, &qword_1C8BF4658);
          goto LABEL_51;
        }
      }

      else
      {
        sub_1C8786744(v77, v88, &qword_1EC2B8728, &qword_1C8BF4658);
        OUTLINED_FUNCTION_76(v77 + v76, 1, v78);
        if (!v79)
        {
          sub_1C888A4E0(v77 + v76, v87);
          v82 = OUTLINED_FUNCTION_168_0();
          v84 = static Siri_Nlu_Internal_MentionResolver_MentionResolverResponse.== infix(_:_:)(v82, v83);
          sub_1C888A590();
          sub_1C888A590();
          sub_1C8778ED8(v77, &qword_1EC2B8728, &qword_1C8BF4658);
          if ((v84 & 1) == 0)
          {
            goto LABEL_48;
          }

LABEL_51:
          sub_1C8BD49FC();
          OUTLINED_FUNCTION_4_13();
          sub_1C888A8BC(v85, v86, MEMORY[0x1E69AAC10]);
          v80 = sub_1C8BD517C();
          return v80 & 1;
        }

        sub_1C888A590();
      }

      v46 = &qword_1EC2B8738;
      v47 = &qword_1C8BF4660;
      v48 = v77;
      goto LABEL_47;
    }

    goto LABEL_32;
  }

  v67 = v93;
  sub_1C8786744(v58, v93, &qword_1EC2B8720, &qword_1C8BF4650);
  OUTLINED_FUNCTION_76(v58 + v57, 1, v59);
  if (v68)
  {
    sub_1C888A590();
LABEL_32:
    v46 = &qword_1EC2B8740;
    v47 = &qword_1C8BF4668;
LABEL_33:
    v48 = v58;
    goto LABEL_47;
  }

  OUTLINED_FUNCTION_1_11();
  v69 = v89;
  sub_1C888A4E0(v58 + v57, v89);
  if (*(v67 + *(v59 + 20)) != *(v69 + *(v59 + 20)))
  {

    OUTLINED_FUNCTION_218();
    sub_1C8A0FA28();
    v71 = v70;

    if ((v71 & 1) == 0)
    {
      OUTLINED_FUNCTION_19_8();
      sub_1C888A590();
      sub_1C888A590();
      v46 = &qword_1EC2B8720;
      v47 = &qword_1C8BF4650;
      goto LABEL_33;
    }
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_4_13();
  sub_1C888A8BC(v72, v73, MEMORY[0x1E69AAC10]);
  v74 = sub_1C8BD517C();
  sub_1C888A590();
  sub_1C888A590();
  sub_1C8778ED8(v58, &qword_1EC2B8720, &qword_1C8BF4650);
  if (v74)
  {
    goto LABEL_38;
  }

LABEL_48:
  v80 = 0;
  return v80 & 1;
}

uint64_t Siri_Nlu_Internal_PreprocessingWrapper.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper(0);
  sub_1C888A8BC(&qword_1EC2B8758, type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper, &protocol conformance descriptor for Siri_Nlu_Internal_PreprocessingWrapper);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C888A370(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C888A8BC(&qword_1EC2B87A8, type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper, &protocol conformance descriptor for Siri_Nlu_Internal_PreprocessingWrapper);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C888A3F0(uint64_t a1)
{
  v2 = sub_1C888A8BC(&qword_1EC2B8768, type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper, &protocol conformance descriptor for Siri_Nlu_Internal_PreprocessingWrapper);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C888A460(uint64_t a1, uint64_t a2)
{
  sub_1C888A8BC(&qword_1EC2B8768, type metadata accessor for Siri_Nlu_Internal_PreprocessingWrapper, &protocol conformance descriptor for Siri_Nlu_Internal_PreprocessingWrapper);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C888A4E0(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_17();
  v4(v3);
  OUTLINED_FUNCTION_21();
  v5 = OUTLINED_FUNCTION_218();
  v6(v5);
  return a2;
}

uint64_t sub_1C888A538(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_17();
  v4(v3);
  OUTLINED_FUNCTION_21();
  v5 = OUTLINED_FUNCTION_218();
  v6(v5);
  return a2;
}

uint64_t sub_1C888A590()
{
  v1 = OUTLINED_FUNCTION_241();
  v2(v1);
  OUTLINED_FUNCTION_21();
  (*(v3 + 8))(v0);
  return v0;
}

void sub_1C888A72C(uint64_t a1)
{
  sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    sub_1C888A868(319, &qword_1EC2B8788, type metadata accessor for Siri_Nlu_Internal_Tokenizer_TokenizerResponse);
    if (v2 <= 0x3F)
    {
      sub_1C888A868(319, &qword_1EC2B8790, type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchResponse);
      if (v3 <= 0x3F)
      {
        sub_1C888A868(319, &qword_1EC2B8798, type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingResponse);
        if (v4 <= 0x3F)
        {
          sub_1C888A868(319, &qword_1EC2B87A0, type metadata accessor for Siri_Nlu_Internal_MentionResolver_MentionResolverResponse);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C888A868(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C8BD522C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C888A8BC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t static UsoGraphProtoReader.fromSwiftProtobuf(protobufGraph:vocabManager:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for UsoGraphProtoReader.UnitIndexHelper();
  *(swift_allocObject() + 16) = a2;

  sub_1C87A5614(a1);
  v5 = v4;

  return v5;
}

uint64_t sub_1C888A994()
{

  return MEMORY[0x1EEE6BDC0](v0, 24, 7);
}

uint64_t sub_1C888A9CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v156 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B87E0, &unk_1C8BF48C0);
  v4 = OUTLINED_FUNCTION_80(v3);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v138 - v5;
  v7 = sub_1C8BD47AC();
  OUTLINED_FUNCTION_13_1();
  v160 = v8;
  v10 = MEMORY[0x1EEE9AC00](v9);
  v12 = &v138 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_96();
  v161 = v13;
  OUTLINED_FUNCTION_86();
  sub_1C8BD499C();
  OUTLINED_FUNCTION_13_1();
  v157 = v14;
  v158 = v15;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_9_0();
  v151 = v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6948, &unk_1C8BF9F90);
  v18 = OUTLINED_FUNCTION_80(v17);
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_10_0();
  v148 = v19;
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_123();
  v146 = v21;
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_123();
  v147 = v26;
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_96();
  v150 = v28;
  OUTLINED_FUNCTION_86();
  v29 = sub_1C8BD483C();
  OUTLINED_FUNCTION_13_1();
  v152 = v30;
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_33();
  v34 = v33 - v32;
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6198, &unk_1C8BE6E30);
  v36 = OUTLINED_FUNCTION_80(v35);
  MEMORY[0x1EEE9AC00](v36);
  matched = type metadata accessor for Siri_Nlu_External_MatchInfo(0);
  v38 = *(matched + 24);
  v159 = matched;
  v39 = (a1 + v38);
  v40 = *v39;
  v154 = *(v39 + 4);
  v155 = v40;
  OUTLINED_FUNCTION_50_5();
  sub_1C8778810();
  v41 = OUTLINED_FUNCTION_155_0();
  v149 = v29;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v41, v42, v29);
  v44 = OUTLINED_FUNCTION_251_0();
  sub_1C8778ED8(v44, v45, &unk_1C8BE6E30);
  v46 = 0;
  v153 = EnumTagSinglePayload;
  if (EnumTagSinglePayload != 1)
  {
    Siri_Nlu_External_MatchInfo.matchScore.getter();
    sub_1C8BD480C();
    v48 = v47;
    (*(v152 + 8))(v34, v149);
    v46 = v48;
  }

  v49 = v150;
  OUTLINED_FUNCTION_25_1();
  sub_1C8778810();
  v50 = OUTLINED_FUNCTION_199();
  v51 = v157;
  v53 = __swift_getEnumTagSinglePayload(v50, v52, v157);
  v54 = OUTLINED_FUNCTION_218();
  sub_1C8778ED8(v54, v55, &unk_1C8BF9F90);
  LODWORD(v150) = v53;
  v152 = v46;
  if (v53 == 1)
  {
    v149 = 0;
    v56 = v151;
  }

  else
  {
    v56 = v151;
    Siri_Nlu_External_MatchInfo.maxTokenCount.getter();
    sub_1C8BD484C();
    v57 = OUTLINED_FUNCTION_9_12();
    v58(v57);
    v149 = v49;
  }

  OUTLINED_FUNCTION_34_4();
  sub_1C8778810();
  OUTLINED_FUNCTION_219();
  v62 = a1;
  v63 = __swift_getEnumTagSinglePayload(v59, v60, v61);
  OUTLINED_FUNCTION_25_1();
  sub_1C8778ED8(v64, v65, v66);
  LODWORD(v151) = v63;
  if (v63 == 1)
  {
    v147 = 0;
  }

  else
  {
    Siri_Nlu_External_MatchInfo.matchedTokenCount.getter();
    sub_1C8BD484C();
    v67 = OUTLINED_FUNCTION_9_12();
    v68(v67);
    v147 = &qword_1EC2B6948;
  }

  v69 = v62;
  OUTLINED_FUNCTION_34_4();
  sub_1C8778810();
  OUTLINED_FUNCTION_219();
  v73 = __swift_getEnumTagSinglePayload(v70, v71, v72);
  OUTLINED_FUNCTION_25_1();
  sub_1C8778ED8(v74, v75, v76);
  v145 = v73;
  if (v73 == 1)
  {
    v144 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_60_2();
    Siri_Nlu_External_MatchInfo.maxStopWordCount.getter();
    sub_1C8BD484C();
    v77 = OUTLINED_FUNCTION_9_12();
    v78(v77);
    v144 = &qword_1EC2B6948;
  }

  OUTLINED_FUNCTION_34_4();
  sub_1C8778810();
  OUTLINED_FUNCTION_219();
  v82 = __swift_getEnumTagSinglePayload(v79, v80, v81);
  OUTLINED_FUNCTION_25_1();
  sub_1C8778ED8(v83, v84, v85);
  v141 = v82;
  if (v82 == 1)
  {
    v142 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_60_2();
    Siri_Nlu_External_MatchInfo.matchedStopWordCount.getter();
    sub_1C8BD484C();
    v86 = OUTLINED_FUNCTION_9_12();
    v87(v86);
    v142 = &qword_1EC2B6948;
  }

  OUTLINED_FUNCTION_52_2();
  OUTLINED_FUNCTION_34_4();
  sub_1C8778810();
  OUTLINED_FUNCTION_219();
  v91 = __swift_getEnumTagSinglePayload(v88, v89, v90);
  OUTLINED_FUNCTION_25_1();
  sub_1C8778ED8(v92, v93, v94);
  v140 = v91;
  if (v91 == 1)
  {
    v143 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_60_2();
    Siri_Nlu_External_MatchInfo.editDistance.getter();
    sub_1C8BD484C();
    v95 = OUTLINED_FUNCTION_9_12();
    v96(v95);
    v143 = &qword_1EC2B6948;
  }

  OUTLINED_FUNCTION_34_4();
  sub_1C8778810();
  OUTLINED_FUNCTION_219();
  v100 = v69;
  v101 = __swift_getEnumTagSinglePayload(v97, v98, v99);
  OUTLINED_FUNCTION_25_1();
  sub_1C8778ED8(v102, v103, v104);
  v139 = v101;
  if (v101 == 1)
  {
    v146 = 0;
  }

  else
  {
    Siri_Nlu_External_MatchInfo.maxAliasCount.getter();
    sub_1C8BD484C();
    v105 = OUTLINED_FUNCTION_9_12();
    v106(v105);
    v146 = &qword_1EC2B6948;
  }

  v107 = v100;
  OUTLINED_FUNCTION_34_4();
  sub_1C8778810();
  OUTLINED_FUNCTION_219();
  v111 = __swift_getEnumTagSinglePayload(v108, v109, v110);
  OUTLINED_FUNCTION_25_1();
  sub_1C8778ED8(v112, v113, v114);
  v138 = v111;
  if (v111 == 1)
  {
    v148 = 0;
  }

  else
  {
    OUTLINED_FUNCTION_60_2();
    Siri_Nlu_External_MatchInfo.matchedAliasCount.getter();
    v115 = sub_1C8BD484C();
    (*(v158 + 1))(v56, v51);
    v148 = v115;
  }

  v116 = *(*v107 + 16);
  if (v116)
  {
    v117 = *v107 + 32;
    v118 = (v160 + 32);
    v119 = (v160 + 16);
    v157 = v160 + 8;
    v120 = MEMORY[0x1E69E7CC0];
    v158 = v12;
    v159 = v6;
    do
    {
      ++v117;
      sub_1C8BD478C();
      v121 = OUTLINED_FUNCTION_195_0();
      OUTLINED_FUNCTION_76(v121, v122, v7);
      if (v123)
      {
        sub_1C8778ED8(v6, &qword_1EC2B87E0, &unk_1C8BF48C0);
      }

      else
      {
        v124 = *v118;
        v125 = v161;
        (*v118)(v161, v6, v7);
        (*v119)(v12, v125, v7);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v132 = OUTLINED_FUNCTION_13_0();
          v120 = sub_1C88DB154(v132, v133, v134, v120);
        }

        v128 = v120[2];
        v127 = v120[3];
        if (v128 >= v127 >> 1)
        {
          v135 = OUTLINED_FUNCTION_38_7(v127);
          v120 = sub_1C88DB154(v135, v128 + 1, 1, v120);
        }

        v129 = v160;
        (*(v160 + 8))(v161, v7);
        v120[2] = v128 + 1;
        OUTLINED_FUNCTION_32();
        v131 = v120 + v130 + *(v129 + 72) * v128;
        v12 = v158;
        v124(v131, v158, v7);
        v6 = v159;
      }

      --v116;
    }

    while (v116);
  }

  OUTLINED_FUNCTION_77_1();
  if (v123)
  {
    v136 = 1;
  }

  else
  {
    v136 = 0;
  }

  v169 = v153 == 1;
  v168 = v150 == 1;
  v167 = v151 == 1;
  v166 = v145 == 1;
  v165 = v141 == 1;
  v164 = v140 == 1;
  v163 = v139 == 1;
  v162 = v136;
  return sub_1C8BD472C();
}

uint64_t sub_1C888B410@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v375 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B87C0, &qword_1C8BF48A0);
  v4 = OUTLINED_FUNCTION_80(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_96();
  v8 = OUTLINED_FUNCTION_63_0(v7);
  v373 = type metadata accessor for Siri_Nlu_External_PayloadAttachmentInfo(v8);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_87(v10);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6960, &qword_1C8BE8DB8);
  v12 = OUTLINED_FUNCTION_80(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_63_0(v14);
  v15 = sub_1C8BD432C();
  v16 = OUTLINED_FUNCTION_0_15(v15, v417);
  v400 = v17;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_9_0();
  v19 = OUTLINED_FUNCTION_63_0(v18);
  v20 = type metadata accessor for Siri_Nlu_External_AsrAlternative(v19);
  v21 = OUTLINED_FUNCTION_0_15(v20, v419);
  v362 = v22;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_63_0(v23);
  v24 = sub_1C8BD483C();
  v25 = OUTLINED_FUNCTION_0_15(v24, v421);
  v376 = v26;
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_87(v28);
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6198, &unk_1C8BE6E30);
  v30 = OUTLINED_FUNCTION_80(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v31);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_63_0(v34);
  v35 = sub_1C8BD487C();
  v36 = OUTLINED_FUNCTION_0_15(v35, v418);
  v391 = v37;
  MEMORY[0x1EEE9AC00](v36);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_87(v38);
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6968, &unk_1C8BE8DC0);
  v40 = OUTLINED_FUNCTION_80(v39);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v41);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_63_0(v42);
  v43 = sub_1C8BD40AC();
  v44 = OUTLINED_FUNCTION_0_15(v43, v416);
  v398 = v45;
  MEMORY[0x1EEE9AC00](v44);
  OUTLINED_FUNCTION_9_0();
  v47 = OUTLINED_FUNCTION_63_0(v46);
  v48 = type metadata accessor for Siri_Nlu_External_SpanProperty(v47);
  v49 = OUTLINED_FUNCTION_0_15(v48, v415);
  v390 = v50;
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_9_0();
  v52 = OUTLINED_FUNCTION_63_0(v51);
  matched = type metadata accessor for Siri_Nlu_External_MatchInfo(v52);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_9_0();
  OUTLINED_FUNCTION_87(v54);
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6958, &qword_1C8BE8DB0);
  v56 = OUTLINED_FUNCTION_80(v55);
  MEMORY[0x1EEE9AC00](v56);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_63_0(v58);
  v59 = sub_1C8BD499C();
  v60 = OUTLINED_FUNCTION_0_15(v59, v420);
  v405 = v61;
  MEMORY[0x1EEE9AC00](v60);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_87(v63);
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6948, &unk_1C8BF9F90);
  v65 = OUTLINED_FUNCTION_80(v64);
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v67);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v68);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_63_0(v69);
  v70 = sub_1C8BD493C();
  OUTLINED_FUNCTION_13_1();
  v406 = v71;
  MEMORY[0x1EEE9AC00](v72);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v73);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v74);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_96();
  OUTLINED_FUNCTION_87(v76);
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6110, &qword_1C8BF5070);
  v78 = OUTLINED_FUNCTION_80(v77);
  MEMORY[0x1EEE9AC00](v78);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v79);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v80);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v81);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v82);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  v84 = MEMORY[0x1EEE9AC00](v83);
  v85 = MEMORY[0x1EEE9AC00](v84);
  v87 = v360 - v86;
  MEMORY[0x1EEE9AC00](v85);
  v89 = v360 - v88;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B87C8, &qword_1C8BF48A8);
  v91 = OUTLINED_FUNCTION_80(v90);
  MEMORY[0x1EEE9AC00](v91);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v92);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v93);
  v95 = v360 - v94;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B87D0, &unk_1C8BF48B0);
  v97 = OUTLINED_FUNCTION_80(v96);
  MEMORY[0x1EEE9AC00](v97);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v98);
  OUTLINED_FUNCTION_123();
  OUTLINED_FUNCTION_43_2();
  MEMORY[0x1EEE9AC00](v99);
  v101 = v360 - v100;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B87D8, &qword_1C8BF9FE0);
  v103 = OUTLINED_FUNCTION_80(v102);
  MEMORY[0x1EEE9AC00](v103);
  OUTLINED_FUNCTION_10_0();
  OUTLINED_FUNCTION_43_2();
  v105 = MEMORY[0x1EEE9AC00](v104);
  MEMORY[0x1EEE9AC00](v105);
  v107 = v360 - v106;
  sub_1C8BD40EC();
  v378 = v107;
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v108, v109, v110, v111);
  sub_1C8BD47BC();
  v379 = v101;
  OUTLINED_FUNCTION_5();
  v383 = v112;
  __swift_storeEnumTagSinglePayload(v113, v114, v115, v112);
  sub_1C8BD442C();
  v372 = v95;
  OUTLINED_FUNCTION_5();
  v361 = v116;
  __swift_storeEnumTagSinglePayload(v117, v118, v119, v116);
  v120 = *(a1 + *(type metadata accessor for Siri_Nlu_External_UsoEntitySpan(0) + 20));
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  v121 = &qword_1C8BF5070;
  sub_1C8778810();
  v122 = OUTLINED_FUNCTION_155_0();
  v402 = v70;
  LODWORD(v101) = __swift_getEnumTagSinglePayload(v122, v123, v70);
  sub_1C8778ED8(v89, &qword_1EC2B6110, &qword_1C8BF5070);
  v124 = 0;
  v125 = 0;
  v380 = v120;
  if (v101 != 1)
  {
    sub_1C8778810();
    v126 = OUTLINED_FUNCTION_199();
    v127 = v402;
    OUTLINED_FUNCTION_76(v126, v128, v402);
    if (v129)
    {
      OUTLINED_FUNCTION_49_4();
      sub_1C8BD492C();
      v130 = OUTLINED_FUNCTION_199();
      OUTLINED_FUNCTION_76(v130, v131, v127);
      v132 = v406;
      if (!v129)
      {
        sub_1C8778ED8(v87, &qword_1EC2B6110, &qword_1C8BF5070);
      }
    }

    else
    {
      v132 = v406;
      v121 = v371;
      (*(v406 + 32))(v371, v87, v127);
    }

    v124 = sub_1C8BD490C();
    v125 = v133;
    (*(v132 + 8))(v121, v127);
    v120 = v380;
  }

  v371 = v124;
  v134 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UsoEntitySpanP33_1AEE57490E029E64C145495E95471CEB13_StorageClass__sourceComponent;
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  if (*(v120 + v134) != 7)
  {
    sub_1C8BD40CC();
    OUTLINED_FUNCTION_50_5();
    sub_1C8778ED8(v135, v136, v137);
    sub_1C87791EC();
  }

  v138 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UsoEntitySpanP33_1AEE57490E029E64C145495E95471CEB13_StorageClass__label;
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  sub_1C8778810();
  v139 = OUTLINED_FUNCTION_195_0();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v139, v140, v402);
  OUTLINED_FUNCTION_50_5();
  sub_1C8778ED8(v142, v143, v144);
  v145 = 0;
  v146 = 0;
  v129 = EnumTagSinglePayload == 1;
  v147 = matched;
  v148 = v406;
  if (!v129)
  {
    OUTLINED_FUNCTION_238();
    sub_1C8778810();
    v149 = OUTLINED_FUNCTION_155_0();
    v150 = v402;
    OUTLINED_FUNCTION_76(v149, v151, v402);
    if (v129)
    {
      OUTLINED_FUNCTION_55_4();
      sub_1C8BD492C();
      v152 = OUTLINED_FUNCTION_155_0();
      OUTLINED_FUNCTION_76(v152, v153, v150);
      if (!v129)
      {
        sub_1C8778ED8(0, &qword_1EC2B6110, &qword_1C8BF5070);
      }
    }

    else
    {
      v138 = v370;
      OUTLINED_FUNCTION_62_3();
      v154();
    }

    v145 = sub_1C8BD490C();
    v146 = v155;
    (*(v148 + 8))(v138, v150);
  }

  v370 = v125;
  v368 = v146;
  v369 = v145;
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  v156 = v393;
  OUTLINED_FUNCTION_34_4();
  sub_1C8778810();
  v157 = v409;
  v158 = __swift_getEnumTagSinglePayload(v156, 1, v409);
  OUTLINED_FUNCTION_25_1();
  sub_1C8778ED8(v159, v160, v161);
  v162 = 0;
  v367 = v158;
  v129 = v158 == 1;
  v163 = v157;
  v164 = v410;
  if (!v129)
  {
    OUTLINED_FUNCTION_192();
    sub_1C8778810();
    v165 = OUTLINED_FUNCTION_199();
    OUTLINED_FUNCTION_76(v165, v166, v163);
    if (v129)
    {
      OUTLINED_FUNCTION_35_4();
      sub_1C8BD486C();
      v167 = OUTLINED_FUNCTION_199();
      OUTLINED_FUNCTION_76(v167, v168, v163);
      if (!v129)
      {
        sub_1C8778ED8(&qword_1EC2B6948, &qword_1EC2B6948, &unk_1C8BF9F90);
      }
    }

    else
    {
      v169 = OUTLINED_FUNCTION_44_7();
      v170(v169);
    }

    v171 = sub_1C8BD484C();
    (*(v405 + 8))(&unk_1C8BF9F90, v163);
    v162 = v171;
  }

  v366 = v162;
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_34_4();
  sub_1C8778810();
  v172 = OUTLINED_FUNCTION_213();
  v174 = __swift_getEnumTagSinglePayload(v172, v173, v163);
  OUTLINED_FUNCTION_25_1();
  sub_1C8778ED8(v175, v176, v177);
  v178 = 0;
  v365 = v174;
  if (v174 != 1)
  {
    OUTLINED_FUNCTION_192();
    sub_1C8778810();
    v179 = OUTLINED_FUNCTION_199();
    v180 = v409;
    OUTLINED_FUNCTION_76(v179, v181, v409);
    if (v129)
    {
      OUTLINED_FUNCTION_35_4();
      sub_1C8BD486C();
      v182 = OUTLINED_FUNCTION_199();
      OUTLINED_FUNCTION_76(v182, v183, v180);
      if (!v129)
      {
        sub_1C8778ED8(&qword_1EC2B6948, &qword_1EC2B6948, &unk_1C8BF9F90);
      }
    }

    else
    {
      v184 = OUTLINED_FUNCTION_44_7();
      v185(v184);
    }

    v186 = sub_1C8BD484C();
    (*(v405 + 8))(&unk_1C8BF9F90, v180);
    v178 = v186;
  }

  v364 = v178;
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  v187 = v395;
  OUTLINED_FUNCTION_34_4();
  sub_1C8778810();
  v188 = __swift_getEnumTagSinglePayload(v187, 1, v402);
  OUTLINED_FUNCTION_25_1();
  sub_1C8778ED8(v189, v190, v191);
  v192 = 0;
  v377 = 0;
  if (v188 != 1)
  {
    OUTLINED_FUNCTION_238();
    sub_1C8778810();
    v193 = OUTLINED_FUNCTION_155_0();
    v194 = v402;
    OUTLINED_FUNCTION_76(v193, v195, v402);
    if (v129)
    {
      sub_1C8BD492C();
      v196 = OUTLINED_FUNCTION_155_0();
      OUTLINED_FUNCTION_76(v196, v197, v194);
      if (!v129)
      {
        sub_1C8778ED8(0, &qword_1EC2B6110, &qword_1C8BF5070);
      }
    }

    else
    {
      (*(v148 + 32))(v382, 0, v194);
    }

    v192 = sub_1C8BD490C();
    v377 = v198;
    v199 = OUTLINED_FUNCTION_196_0();
    v200(v199);
  }

  v363 = v192;
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  v201 = &qword_1C8BE8DB0;
  v202 = v403;
  OUTLINED_FUNCTION_34_4();
  sub_1C8778810();
  v203 = __swift_getEnumTagSinglePayload(v202, 1, v147);
  OUTLINED_FUNCTION_25_1();
  sub_1C8778ED8(v204, v205, v206);
  if (v203 != 1)
  {
    v207 = v385;
    sub_1C8778810();
    v208 = OUTLINED_FUNCTION_195_0();
    OUTLINED_FUNCTION_76(v208, v209, v147);
    if (v129)
    {
      v201 = v386;
      *v386 = MEMORY[0x1E69E7CC0];
      _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
      v210 = v201 + v147[6];
      *v210 = 0;
      v210[4] = 1;
      v211 = OUTLINED_FUNCTION_14_8(v147[7]);
      __swift_storeEnumTagSinglePayload(v211, v212, v213, v164);
      v214 = OUTLINED_FUNCTION_14_8(v147[8]);
      v215 = v409;
      __swift_storeEnumTagSinglePayload(v214, v216, v217, v409);
      v218 = OUTLINED_FUNCTION_14_8(v147[9]);
      __swift_storeEnumTagSinglePayload(v218, v219, v220, v215);
      v221 = OUTLINED_FUNCTION_14_8(v147[10]);
      __swift_storeEnumTagSinglePayload(v221, v222, v223, v215);
      v224 = OUTLINED_FUNCTION_14_8(v147[11]);
      __swift_storeEnumTagSinglePayload(v224, v225, v226, v215);
      v227 = OUTLINED_FUNCTION_14_8(v147[12]);
      __swift_storeEnumTagSinglePayload(v227, v228, v229, v215);
      v230 = OUTLINED_FUNCTION_14_8(v147[13]);
      __swift_storeEnumTagSinglePayload(v230, v231, v232, v215);
      v233 = OUTLINED_FUNCTION_14_8(v147[14]);
      __swift_storeEnumTagSinglePayload(v233, v234, v235, v215);
      v236 = OUTLINED_FUNCTION_195_0();
      OUTLINED_FUNCTION_76(v236, v237, v147);
      v238 = v384;
      v239 = v383;
      if (!v129)
      {
        sub_1C8778ED8(v207, &qword_1EC2B6958, &qword_1C8BE8DB0);
      }
    }

    else
    {
      OUTLINED_FUNCTION_238();
      sub_1C87A8E58();
      v238 = v384;
      v239 = v383;
    }

    sub_1C888A9CC(v201, v238);
    sub_1C87A8B2C(v201, type metadata accessor for Siri_Nlu_External_MatchInfo);
    v203 = v379;
    OUTLINED_FUNCTION_25_1();
    sub_1C8778ED8(v240, v241, v242);
    __swift_storeEnumTagSinglePayload(v238, 0, 1, v239);
    OUTLINED_FUNCTION_34_4();
    sub_1C87791EC();
  }

  v243 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UsoEntitySpanP33_1AEE57490E029E64C145495E95471CEB13_StorageClass__properties;
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  v244 = *(*(v120 + v243) + 16);
  if (v244)
  {
    v245 = v164;
    OUTLINED_FUNCTION_17_3();
    v248 = v246 + v247;
    OUTLINED_FUNCTION_69_2();
    v250 = v249[7];
    v251 = v249[8];
    v252 = v249[6];
    v392 = v411 + v249[5];
    v383 = v391 + 32;
    OUTLINED_FUNCTION_68_2(v391 + 8);
    v382 = v253;
    v391 = *(v254 + 72);
    v385 = v255 + 8;
    v381 = v148 + 32;
    v384 = v148 + 8;
    v390 = v398 + 32;
    v360[1] = v256;

    v257 = v248;
    v258 = MEMORY[0x1E69E7CC0];
    v203 = v399;
    v395 = v250;
    v394 = v251;
    v393 = v252;
    do
    {
      v406 = v244;
      v403 = v257;
      sub_1C87A88B8();
      OUTLINED_FUNCTION_192();
      sub_1C8778810();
      v259 = OUTLINED_FUNCTION_199();
      v261 = __swift_getEnumTagSinglePayload(v259, v260, v203);
      sub_1C8778ED8(v244, &qword_1EC2B6968, &unk_1C8BE8DC0);
      LODWORD(v405) = v261;
      v409 = v258;
      if (v261 == 1)
      {
        matched = 0;
        OUTLINED_FUNCTION_72_3();
      }

      else
      {
        OUTLINED_FUNCTION_192();
        sub_1C8778810();
        v262 = OUTLINED_FUNCTION_199();
        OUTLINED_FUNCTION_76(v262, v263, v203);
        if (v129)
        {
          OUTLINED_FUNCTION_35_4();
          sub_1C8BD486C();
          v264 = OUTLINED_FUNCTION_199();
          OUTLINED_FUNCTION_76(v264, v265, v203);
          if (!v129)
          {
            sub_1C8778ED8(v244, &qword_1EC2B6968, &unk_1C8BE8DC0);
          }
        }

        else
        {
          OUTLINED_FUNCTION_22_9();
          v266 = OUTLINED_FUNCTION_44_7();
          v267(v266);
        }

        v244 = sub_1C8BD484C();
        v268 = OUTLINED_FUNCTION_18_11();
        v269(v268, v203);
        matched = v244;
        OUTLINED_FUNCTION_72_3();
      }

      OUTLINED_FUNCTION_231();
      sub_1C8778810();
      v270 = OUTLINED_FUNCTION_109();
      v272 = __swift_getEnumTagSinglePayload(v270, v271, v245);
      sub_1C8778ED8(v261, &qword_1EC2B6198, &unk_1C8BE6E30);
      if (v272 != 1)
      {
        sub_1C8778810();
        v273 = OUTLINED_FUNCTION_199();
        OUTLINED_FUNCTION_76(v273, v274, v245);
        if (v129)
        {
          sub_1C8BD482C();
          v275 = OUTLINED_FUNCTION_199();
          OUTLINED_FUNCTION_76(v275, v276, v245);
          if (!v129)
          {
            sub_1C8778ED8(v244, &qword_1EC2B6198, &unk_1C8BE6E30);
          }
        }

        else
        {
          v277 = OUTLINED_FUNCTION_18_11();
          v278(v277, v244, v245);
        }

        sub_1C8BD480C();
        v279 = OUTLINED_FUNCTION_18_11();
        v280(v279, v245);
      }

      OUTLINED_FUNCTION_231();
      sub_1C8778810();
      v281 = OUTLINED_FUNCTION_109();
      v282 = v402;
      __swift_getEnumTagSinglePayload(v281, v283, v402);
      v284 = OUTLINED_FUNCTION_67_3();
      sub_1C8778ED8(v284, &qword_1EC2B6110, &qword_1C8BF5070);
      if (v244 != 1)
      {
        OUTLINED_FUNCTION_192();
        sub_1C8778810();
        v285 = OUTLINED_FUNCTION_199();
        OUTLINED_FUNCTION_76(v285, v286, v282);
        if (v129)
        {
          v289 = v387;
          sub_1C8BD492C();
          v287 = OUTLINED_FUNCTION_199();
          OUTLINED_FUNCTION_76(v287, v288, v282);
          v291 = v282;
          if (!v129)
          {
            sub_1C8778ED8(v244, &qword_1EC2B6110, &qword_1C8BF5070);
          }
        }

        else
        {
          OUTLINED_FUNCTION_22_9();
          v289 = v387;
          OUTLINED_FUNCTION_25_1();
          v290();
          v291 = v282;
        }

        sub_1C8BD490C();
        OUTLINED_FUNCTION_22_9();
        v292(v289, v291);
      }

      OUTLINED_FUNCTION_69_2();
      OUTLINED_FUNCTION_77_1();

      v414 = v272 == 1;
      sub_1C8BD407C();
      sub_1C87A8B2C(v411, type metadata accessor for Siri_Nlu_External_SpanProperty);
      v258 = v409;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v297 = OUTLINED_FUNCTION_13_0();
        v258 = sub_1C88DB1CC(v297, v298, v299, v258);
      }

      v245 = v410;
      v203 = v399;
      v202 = v394;
      v294 = v258[2];
      v293 = v258[3];
      if (v294 >= v293 >> 1)
      {
        v300 = OUTLINED_FUNCTION_38_7(v293);
        v258 = sub_1C88DB1CC(v300, v294 + 1, 1, v258);
      }

      v258[2] = v294 + 1;
      OUTLINED_FUNCTION_17_3();
      (*(v296 + 32))(v258 + v295 + *(v296 + 72) * v294, v407, v396);
      v257 = v403 + v391;
      v244 = v406 - 1;
    }

    while (v406 != 1);

    v164 = v245;
  }

  else
  {
    v258 = MEMORY[0x1E69E7CC0];
  }

  v409 = v258;
  v301 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UsoEntitySpanP33_1AEE57490E029E64C145495E95471CEB13_StorageClass__alternatives;
  v302 = v380;
  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  v303 = *(*(v302 + v301) + 16);
  if (v303)
  {
    OUTLINED_FUNCTION_17_3();
    v306 = v304 + v305;
    OUTLINED_FUNCTION_68_2(*(v307 + 72));
    v405 = v308;
    v406 = v309 + 8;
    v407 = v400 + 32;
    matched = v310;

    v311 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1C87A88B8();
      OUTLINED_FUNCTION_82_4();
      v312 = OUTLINED_FUNCTION_195_0();
      v314 = __swift_getEnumTagSinglePayload(v312, v313, v164);
      sub_1C8778ED8(v203, &qword_1EC2B6198, &unk_1C8BE6E30);
      if (v314 != 1)
      {
        OUTLINED_FUNCTION_82_4();
        v315 = OUTLINED_FUNCTION_195_0();
        OUTLINED_FUNCTION_76(v315, v316, v164);
        if (v129)
        {
          OUTLINED_FUNCTION_35_4();
          sub_1C8BD482C();
          v317 = OUTLINED_FUNCTION_195_0();
          OUTLINED_FUNCTION_76(v317, v318, v164);
          if (!v129)
          {
            sub_1C8778ED8(v389, &qword_1EC2B6198, &unk_1C8BE6E30);
          }
        }

        else
        {
          OUTLINED_FUNCTION_22_9();
          v319(v388, v203, v164);
        }

        sub_1C8BD480C();
        v320 = OUTLINED_FUNCTION_18_11();
        v321(v320, v164);
      }

      v413 = v314 == 1;
      sub_1C8BD430C();
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v326 = OUTLINED_FUNCTION_13_0();
        v311 = sub_1C88DB190(v326, v327, v328, v311);
      }

      v322 = v401;
      v164 = v410;
      v202 = *(v311 + 2);
      v323 = *(v311 + 3);
      if (v202 >= v323 >> 1)
      {
        v329 = OUTLINED_FUNCTION_38_7(v323);
        v311 = sub_1C88DB190(v329, v202 + 1, 1, v311);
      }

      sub_1C87A8B2C(v322, type metadata accessor for Siri_Nlu_External_AsrAlternative);
      *(v311 + 2) = v202 + 1;
      OUTLINED_FUNCTION_17_3();
      (*(v325 + 32))(&v311[v324 + *(v325 + 72) * v202], v408, v397);
      v306 += v411;
      --v303;
    }

    while (v303);
  }

  OUTLINED_FUNCTION_36_3();
  swift_beginAccess();
  OUTLINED_FUNCTION_257();
  OUTLINED_FUNCTION_78_1();
  sub_1C8778810();
  OUTLINED_FUNCTION_213();
  OUTLINED_FUNCTION_79_0();
  v333 = __swift_getEnumTagSinglePayload(v330, v331, v332);
  OUTLINED_FUNCTION_62_3();
  sub_1C8778ED8(v334, v335, v336);
  v337 = v374;
  v338 = v372;
  if (v333 != 1)
  {
    OUTLINED_FUNCTION_238();
    sub_1C8778810();
    v339 = OUTLINED_FUNCTION_155_0();
    OUTLINED_FUNCTION_76(v339, v340, v202);
    if (v129)
    {
      _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
      *(v337 + *(v202 + 20)) = 2;
      v341 = OUTLINED_FUNCTION_155_0();
      OUTLINED_FUNCTION_76(v341, v342, v202);
      if (!v129)
      {
        sub_1C8778ED8(&qword_1EC2B6960, &qword_1EC2B6960, &qword_1C8BE8DB8);
      }
    }

    else
    {
      sub_1C87A8E58();
    }

    sub_1C8BD43FC();
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v343, v344, v345, v346);
    if (*(v337 + *(v202 + 20)) != 2)
    {
      OUTLINED_FUNCTION_56_2();
      sub_1C8BD43DC();
      OUTLINED_FUNCTION_62_3();
      sub_1C8778ED8(v347, v348, v349);
      OUTLINED_FUNCTION_78_1();
      sub_1C87791EC();
    }

    OUTLINED_FUNCTION_78_1();
    sub_1C8778810();
    OUTLINED_FUNCTION_56_2();
    sub_1C8BD440C();
    OUTLINED_FUNCTION_62_3();
    sub_1C8778ED8(v350, v351, v352);
    sub_1C87A8B2C(v337, type metadata accessor for Siri_Nlu_External_PayloadAttachmentInfo);
    OUTLINED_FUNCTION_62_3();
    sub_1C8778ED8(v353, v354, v355);
    __swift_storeEnumTagSinglePayload(v202, 0, 1, v361);
    OUTLINED_FUNCTION_78_1();
    sub_1C87791EC();
  }

  OUTLINED_FUNCTION_77_1();
  v356 = v129;
  OUTLINED_FUNCTION_77_1();
  v357 = v378;
  OUTLINED_FUNCTION_231();
  sub_1C8778810();
  v358 = v379;
  OUTLINED_FUNCTION_238();
  sub_1C8778810();
  sub_1C8778810();
  v412 = v356;
  sub_1C8BD411C();
  sub_1C8778ED8(v338, &qword_1EC2B87C8, &qword_1C8BF48A8);
  sub_1C8778ED8(v358, &qword_1EC2B87D0, &unk_1C8BF48B0);
  return sub_1C8778ED8(v357, &qword_1EC2B87D8, &qword_1C8BF9FE0);
}

uint64_t static UsoGraphProtoReader.fromObjCProtobuf(protobufGraph:vocabManager:)(void *a1, uint64_t a2)
{
  v5 = sub_1C8BD4AAC();
  v6 = OUTLINED_FUNCTION_80(v5);
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_33();
  type metadata accessor for Siri_Nlu_External_UsoGraph(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_33();
  v10 = v9 - v8;
  result = sub_1C888D594(a1);
  if (v12 >> 60 == 15)
  {
    __break(1u);
  }

  else
  {
    sub_1C8BD4A9C();
    sub_1C888D5F4();
    sub_1C8BD4CBC();
    if (!v2)
    {
      a2 = static UsoGraphProtoReader.fromSwiftProtobuf(protobufGraph:vocabManager:)(v10, a2);
      sub_1C87A8B2C(v10, type metadata accessor for Siri_Nlu_External_UsoGraph);
    }

    return a2;
  }

  return result;
}

uint64_t sub_1C888D594(void *a1)
{
  v1 = [a1 data];
  if (v1)
  {
    v2 = v1;
    sub_1C8BD400C();
  }

  return OUTLINED_FUNCTION_218();
}

unint64_t sub_1C888D5F4()
{
  result = qword_1EDACCCE0;
  if (!qword_1EDACCCE0)
  {
    type metadata accessor for Siri_Nlu_External_UsoGraph(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDACCCE0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for UsoGraphProtoReader(_BYTE *result, int a2, int a3)
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

unint64_t sub_1C888D6F8()
{
  result = qword_1EC2B2F88;
  if (!qword_1EC2B2F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B2F88);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_66_4(uint64_t a1, uint64_t a2)
{

  return swift_allocError();
}

uint64_t OUTLINED_FUNCTION_82_4()
{

  return sub_1C8778810();
}

uint64_t OUTLINED_FUNCTION_84_2(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 - 472);

  return __swift_storeEnumTagSinglePayload(a1, a2, a3, v5);
}

float Siri_Nlu_Internal_Psc_PSCServiceResponse.pommesProbability.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceResponse(0);
  result = OUTLINED_FUNCTION_0_6(*(v0 + 20));
  if (!v3)
  {
    return v2;
  }

  return result;
}

uint64_t type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceResponse(uint64_t a1)
{
  result = qword_1EC2B8820;
  if (!qword_1EC2B8820)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Psc_PSCServiceResponse.pommesProbability.setter(float a1)
{
  result = type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceResponse(0);
  v4 = v1 + *(result + 20);
  *v4 = a1;
  *(v4 + 4) = 0;
  return result;
}

uint64_t (*Siri_Nlu_Internal_Psc_PSCServiceResponse.pommesProbability.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceResponse(0) + 20);
  *(a1 + 12) = v3;
  v4 = OUTLINED_FUNCTION_0_6(v3);
  if (!v6)
  {
    v4 = v5;
  }

  *(a1 + 8) = v4;
  return sub_1C87FE8F0;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Psc_PSCServiceResponse.clearPommesProbability()()
{
  v1 = v0 + *(type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceResponse(0) + 20);
  *v1 = 0;
  *(v1 + 4) = 1;
}

uint64_t Siri_Nlu_Internal_Psc_PSCServiceResponse.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1C8BD49FC();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t Siri_Nlu_Internal_Psc_PSCServiceResponse.unknownFields.setter(uint64_t a1)
{
  v3 = sub_1C8BD49FC();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

uint64_t Siri_Nlu_Internal_Psc_PSCServiceResponse.init()@<X0>(uint64_t a2@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  result = type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceResponse(0);
  v4 = a2 + *(result + 20);
  *v4 = 0;
  *(v4 + 4) = 1;
  return result;
}

uint64_t sub_1C888DAB8()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B87E8);
  __swift_project_value_buffer(v0, qword_1EC2B87E8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C8BE6F30;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "pommes_probability";
  *(v4 + 8) = 18;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1C8BD50FC();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_Internal_Psc_PSCServiceResponse._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B5148 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2B87E8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Siri_Nlu_Internal_Psc_PSCServiceResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      sub_1C888DD34(a1, v5, a2, a3);
    }
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Psc_PSCServiceResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = OUTLINED_FUNCTION_17();
  if (*(v3 + *(type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceResponse(v5) + 20) + 4))
  {
    return sub_1C8BD49DC();
  }

  result = sub_1C8BD4D7C();
  if (!v4)
  {
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_Psc_PSCServiceResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = OUTLINED_FUNCTION_17();
  v5 = *(type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceResponse(v4) + 20);
  v6 = (v2 + v5);
  v7 = *(v2 + v5 + 4);
  v8 = (a2 + v5);
  v9 = *(a2 + v5 + 4);
  if (v7)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    if (*v6 != *v8)
    {
      LOBYTE(v9) = 1;
    }

    if (v9)
    {
      return 0;
    }
  }

  sub_1C8BD49FC();
  sub_1C87766B0(&qword_1EC2B2F70, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C8BD517C() & 1;
}

uint64_t Siri_Nlu_Internal_Psc_PSCServiceResponse.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceResponse(0);
  sub_1C87766B0(&qword_1EC2B8800, type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceResponse, &protocol conformance descriptor for Siri_Nlu_Internal_Psc_PSCServiceResponse);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C888DFD4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87766B0(&qword_1EC2B8830, type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceResponse, &protocol conformance descriptor for Siri_Nlu_Internal_Psc_PSCServiceResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C888E054(uint64_t a1)
{
  v2 = sub_1C87766B0(&qword_1EC2B8810, type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceResponse, &protocol conformance descriptor for Siri_Nlu_Internal_Psc_PSCServiceResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C888E0C4(uint64_t a1, uint64_t a2)
{
  sub_1C87766B0(&qword_1EC2B8810, type metadata accessor for Siri_Nlu_Internal_Psc_PSCServiceResponse, &protocol conformance descriptor for Siri_Nlu_Internal_Psc_PSCServiceResponse);

  return sub_1C8BD4CFC();
}

void sub_1C888E28C(uint64_t a1)
{
  sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    sub_1C888E310();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C888E310()
{
  if (!qword_1EC2B4230)
  {
    v0 = sub_1C8BD522C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC2B4230);
    }
  }
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMHypothesis.label.getter()
{
  OUTLINED_FUNCTION_10_9();
  OUTLINED_FUNCTION_4();
  if (v1)
  {
    return v0;
  }

  else
  {
    return 0;
  }
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMHypothesis.label.setter(int a1)
{
  result = OUTLINED_FUNCTION_10_9();
  v5 = v1 + v4;
  *v5 = a1;
  *(v5 + 4) = 0;
  return result;
}

uint64_t (*Siri_Nlu_Internal_Itfm_ITFMHypothesis.label.modify(void *a1))(uint64_t result)
{
  v2 = OUTLINED_FUNCTION_55_0(a1);
  *(v1 + 12) = *(type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMHypothesis(v2) + 20);
  OUTLINED_FUNCTION_4();
  if (v4)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0;
  }

  *(v1 + 8) = v5;
  return sub_1C8801920;
}

float Siri_Nlu_Internal_Itfm_ITFMHypothesis.probability.getter()
{
  OUTLINED_FUNCTION_16_7();
  result = OUTLINED_FUNCTION_0_6(v0);
  if (!v3)
  {
    return v2;
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMHypothesis.probability.setter(float a1)
{
  result = OUTLINED_FUNCTION_16_7();
  v5 = v1 + v4;
  *v5 = a1;
  *(v5 + 4) = 0;
  return result;
}

uint64_t (*Siri_Nlu_Internal_Itfm_ITFMHypothesis.probability.modify(void *a1))(uint64_t result)
{
  v2 = OUTLINED_FUNCTION_55_0(a1);
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMHypothesis(v2) + 24);
  *(v1 + 12) = v3;
  v4 = OUTLINED_FUNCTION_0_6(v3);
  if (!v6)
  {
    v4 = v5;
  }

  *(v1 + 8) = v4;
  return sub_1C87FE8F0;
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMHypothesis.stringLabel.getter()
{
  type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMHypothesis(0);
  OUTLINED_FUNCTION_26_3();
  if (v0[1])
  {
    v1 = *v0;
  }

  else
  {
    v1 = 0;
  }

  return v1;
}

uint64_t sub_1C888E590(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_Itfm_ITFMHypothesis.stringLabel.setter(v1, v2);
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMHypothesis.stringLabel.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMHypothesis(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*Siri_Nlu_Internal_Itfm_ITFMHypothesis.stringLabel.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[2] = v1;
  v4 = *(type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMHypothesis(0) + 28);
  *(v3 + 8) = v4;
  v5 = (v1 + v4);
  v6 = v5[1];
  if (v6)
  {
    v7 = *v5;
    v8 = v6;
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  v3[3] = v6;
  *v3 = v7;
  v3[1] = v8;

  return sub_1C87E6EC8;
}

BOOL Siri_Nlu_Internal_Itfm_ITFMHypothesis.hasStringLabel.getter()
{
  type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMHypothesis(0);
  OUTLINED_FUNCTION_26_3();
  return *(v0 + 8) != 0;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Itfm_ITFMHypothesis.clearStringLabel()()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMHypothesis(0) + 28));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMHypothesis.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMHypothesis.unknownFields.setter()
{
  OUTLINED_FUNCTION_241();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

void Siri_Nlu_Internal_Itfm_ITFMHypothesis.init()(uint64_t a2@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_10_9();
  OUTLINED_FUNCTION_16_3(a2 + v3);
  v5 = a2 + *(v4 + 24);
  *v5 = 0;
  *(v5 + 4) = v6;
  v7 = (a2 + *(v4 + 28));
  *v7 = 0;
  v7[1] = 0;
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserResponse.classificationLabel.setter(char a1)
{
  result = OUTLINED_FUNCTION_17_9();
  *(v1 + v4) = a1;
  return result;
}

uint64_t (*Siri_Nlu_Internal_Itfm_ITFMParserResponse.classificationLabel.modify(void *a1))(uint64_t result)
{
  v3 = OUTLINED_FUNCTION_55_0(a1);
  v4 = *(type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserResponse(v3) + 24);
  *(v1 + 8) = v4;
  *(v1 + 12) = *(v2 + v4) & 1;
  return OUTLINED_FUNCTION_158;
}

float Siri_Nlu_Internal_Itfm_ITFMParserResponse.classificationProbability.getter()
{
  v0 = type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserResponse(0);
  result = OUTLINED_FUNCTION_0_6(*(v0 + 28));
  if (!v3)
  {
    return v2;
  }

  return result;
}

void Siri_Nlu_Internal_Itfm_ITFMParserResponse.classificationProbability.setter(float a1)
{
  type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserResponse(0);
  OUTLINED_FUNCTION_26_3();
  *v2 = a1;
  *(v2 + 4) = 0;
}

uint64_t (*Siri_Nlu_Internal_Itfm_ITFMParserResponse.classificationProbability.modify(void *a1))(uint64_t result)
{
  v2 = OUTLINED_FUNCTION_55_0(a1);
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserResponse(v2) + 28);
  *(v1 + 12) = v3;
  v4 = OUTLINED_FUNCTION_0_6(v3);
  if (!v6)
  {
    v4 = v5;
  }

  *(v1 + 8) = v4;
  return sub_1C8801920;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Itfm_ITFMParserResponse.clearClassificationProbability()()
{
  type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserResponse(0);
  OUTLINED_FUNCTION_26_3();
  OUTLINED_FUNCTION_16_3(v0);
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserResponse.parser.getter@<X0>(uint64_t a1@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6540, &unk_1C8BE7A40);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  v7 = type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserResponse(v6);
  sub_1C888EB30(v1 + *(v7 + 32), v2);
  v8 = type metadata accessor for Siri_Nlu_External_Parser(0);
  v9 = OUTLINED_FUNCTION_120();
  if (__swift_getEnumTagSinglePayload(v9, v10, v8) != 1)
  {
    return sub_1C888EBA0(v2, a1);
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  *(a1 + *(v8 + 20)) = 3;
  *(a1 + *(v8 + 24)) = 10;
  v11 = OUTLINED_FUNCTION_120();
  result = __swift_getEnumTagSinglePayload(v11, v12, v8);
  if (result != 1)
  {
    return sub_1C8778ED8(v2, &qword_1EC2B6540, &unk_1C8BE7A40);
  }

  return result;
}

uint64_t sub_1C888EB30(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6540, &unk_1C8BE7A40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C888EBA0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_External_Parser(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C888EC04(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_External_Parser(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  sub_1C888EF40(a1, &v5 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  return Siri_Nlu_Internal_Itfm_ITFMParserResponse.parser.setter();
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserResponse.parser.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserResponse(v2) + 32);
  sub_1C8778ED8(v1 + v3, &qword_1EC2B6540, &unk_1C8BE7A40);
  sub_1C888EBA0(v0, v1 + v3);
  v4 = type metadata accessor for Siri_Nlu_External_Parser(0);

  return __swift_storeEnumTagSinglePayload(v1 + v3, 0, 1, v4);
}

void (*Siri_Nlu_Internal_Itfm_ITFMParserResponse.parser.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6540, &unk_1C8BE7A40);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Siri_Nlu_External_Parser(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_21();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserResponse(0) + 32);
  *(v3 + 10) = v11;
  sub_1C888EB30(v1 + v11, v6);
  OUTLINED_FUNCTION_73(v6);
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v10[*(v7 + 20)] = 3;
    v10[*(v7 + 24)] = 10;
    OUTLINED_FUNCTION_73(v6);
    if (!v12)
    {
      sub_1C8778ED8(v6, &qword_1EC2B6540, &unk_1C8BE7A40);
    }
  }

  else
  {
    sub_1C888EBA0(v6, v10);
  }

  return sub_1C888EE60;
}

void sub_1C888EE60(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = (*a1)[1];
  v7 = **a1;
  if (a2)
  {
    sub_1C888EF40((*a1)[4], v4);
    sub_1C8778ED8(v7 + v3, &qword_1EC2B6540, &unk_1C8BE7A40);
    sub_1C888EBA0(v4, v7 + v3);
    OUTLINED_FUNCTION_321();
    sub_1C888EFA4(v5);
  }

  else
  {
    sub_1C8778ED8(v7 + v3, &qword_1EC2B6540, &unk_1C8BE7A40);
    sub_1C888EBA0(v5, v7 + v3);
    OUTLINED_FUNCTION_321();
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

uint64_t sub_1C888EF40(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_External_Parser(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C888EFA4(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_External_Parser(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

BOOL Siri_Nlu_Internal_Itfm_ITFMParserResponse.hasParser.getter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6540, &unk_1C8BE7A40);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  v5 = type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserResponse(v4);
  sub_1C888EB30(v0 + *(v5 + 32), v1);
  type metadata accessor for Siri_Nlu_External_Parser(0);
  v6 = OUTLINED_FUNCTION_120();
  v9 = __swift_getEnumTagSinglePayload(v6, v7, v8) != 1;
  sub_1C8778ED8(v1, &qword_1EC2B6540, &unk_1C8BE7A40);
  return v9;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Itfm_ITFMParserResponse.clearParser()()
{
  v1 = *(type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserResponse(0) + 32);
  sub_1C8778ED8(v0 + v1, &qword_1EC2B6540, &unk_1C8BE7A40);
  v2 = type metadata accessor for Siri_Nlu_External_Parser(0);

  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserResponse.hypotheses.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserResponse.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserResponse(0) + 20);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserResponse.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserResponse(v2) + 20);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Siri_Nlu_Internal_Itfm_ITFMParserResponse.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserResponse(v0);
  return nullsub_1;
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserResponse.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserResponse(0);
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  *(a1 + v2[6]) = 2;
  OUTLINED_FUNCTION_16_3(a1 + v2[7]);
  v3 = v2[8];
  v4 = type metadata accessor for Siri_Nlu_External_Parser(0);

  return __swift_storeEnumTagSinglePayload(a1 + v3, 1, 1, v4);
}

uint64_t sub_1C888F338()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B3FF0);
  __swift_project_value_buffer(v0, qword_1EC2B3FF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "label";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "probability";
  *(v10 + 1) = 11;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "string_label";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMHypothesis.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 3:
        v11 = OUTLINED_FUNCTION_8();
        sub_1C888F6B4(v11, v12, v13, v14);
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_8();
        sub_1C888F650(v7, v8, v9, v10);
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_8();
        sub_1C888F5EC(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMHypothesis.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMHypothesis(0);
  if ((*(v3 + v5[5] + 4) & 1) != 0 || (result = sub_1C8BD4D8C(), !v4))
  {
    if ((*(v3 + v5[6] + 4) & 1) != 0 || (result = sub_1C8BD4D7C(), !v4))
    {
      if (!*(v3 + v5[7] + 8))
      {
        return sub_1C8BD49DC();
      }

      result = sub_1C8BD4DDC();
      if (!v4)
      {
        return sub_1C8BD49DC();
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_Itfm_ITFMHypothesis.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_10_9();
  OUTLINED_FUNCTION_11();
  if (v7)
  {
    if (!v4)
    {
      return 0;
    }
  }

  else
  {
    if (*v5 != *v6)
    {
      LOBYTE(v4) = 1;
    }

    if (v4)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_11();
  if (v10)
  {
    if (!v9)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_21_4();
    if (v11)
    {
      return 0;
    }
  }

  v12 = *(v8 + 28);
  v13 = (a1 + v12);
  v14 = *(a1 + v12 + 8);
  v15 = (a2 + v12);
  v16 = v15[1];
  if (v14)
  {
    if (!v16)
    {
      return 0;
    }

    v17 = *v13 == *v15 && v14 == v16;
    if (!v17 && (sub_1C8BD529C() & 1) == 0)
    {
      return 0;
    }

LABEL_18:
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_4_15();
    sub_1C87766F8(v18, v19, MEMORY[0x1E69AAC10]);
    return sub_1C8BD517C() & 1;
  }

  if (!v16)
  {
    goto LABEL_18;
  }

  return 0;
}

uint64_t sub_1C888F9BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87766F8(&qword_1EC2B8868, type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMHypothesis, &protocol conformance descriptor for Siri_Nlu_Internal_Itfm_ITFMHypothesis);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C888FA3C(uint64_t a1)
{
  v2 = sub_1C87766F8(&qword_1EC2B3FE0, type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMHypothesis, &protocol conformance descriptor for Siri_Nlu_Internal_Itfm_ITFMHypothesis);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C888FAAC(uint64_t a1, uint64_t a2)
{
  sub_1C87766F8(&qword_1EC2B3FE0, type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMHypothesis, &protocol conformance descriptor for Siri_Nlu_Internal_Itfm_ITFMHypothesis);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C888FB48()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B4660);
  __swift_project_value_buffer(v0, qword_1EC2B4660);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "classification_label";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "classification_probability";
  *(v10 + 8) = 26;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "parser";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "hypotheses";
  *(v14 + 1) = 10;
  v14[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserResponse.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_8();
        sub_1C888FE60(v3, v4);
        break;
      case 2:
        v13 = OUTLINED_FUNCTION_8();
        sub_1C888FEC4(v13, v14, v15, v16);
        break;
      case 3:
        v5 = OUTLINED_FUNCTION_8();
        sub_1C888FF28(v5, v6, v7, v8);
        break;
      case 4:
        v9 = OUTLINED_FUNCTION_8();
        sub_1C888FFDC(v9, v10, v11, v12);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C888FF28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserResponse(0);
  type metadata accessor for Siri_Nlu_External_Parser(0);
  sub_1C87766F8(&qword_1EDACCDA0, type metadata accessor for Siri_Nlu_External_Parser, &protocol conformance descriptor for Siri_Nlu_External_Parser);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C888FFDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMHypothesis(0);
  sub_1C87766F8(&qword_1EC2B3FE0, type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMHypothesis, &protocol conformance descriptor for Siri_Nlu_Internal_Itfm_ITFMHypothesis);
  return sub_1C8BD4C6C();
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6540, &unk_1C8BE7A40);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_74();
  v9 = type metadata accessor for Siri_Nlu_External_Parser(v8);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserResponse(0);
  if (*(v3 + v13[6]) == 2 || (result = sub_1C8BD4D3C(), !v4))
  {
    if ((*(v3 + v13[7] + 4) & 1) != 0 || (result = sub_1C8BD4D7C(), !v4))
    {
      sub_1C888EB30(v3 + v13[8], v5);
      v15 = OUTLINED_FUNCTION_120();
      if (__swift_getEnumTagSinglePayload(v15, v16, v9) == 1)
      {
        sub_1C8778ED8(v5, &qword_1EC2B6540, &unk_1C8BE7A40);
      }

      else
      {
        sub_1C888EBA0(v5, v12);
        sub_1C87766F8(&qword_1EDACCDA0, type metadata accessor for Siri_Nlu_External_Parser, &protocol conformance descriptor for Siri_Nlu_External_Parser);
        sub_1C8BD4E2C();
        result = sub_1C888EFA4(v12);
        if (v4)
        {
          return result;
        }
      }

      if (!*(*v3 + 16))
      {
        return sub_1C8BD49DC();
      }

      type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMHypothesis(0);
      sub_1C87766F8(&qword_1EC2B3FE0, type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMHypothesis, &protocol conformance descriptor for Siri_Nlu_Internal_Itfm_ITFMHypothesis);
      result = sub_1C8BD4E0C();
      if (!v4)
      {
        return sub_1C8BD49DC();
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_Itfm_ITFMParserResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Siri_Nlu_External_Parser(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v31 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6540, &unk_1C8BE7A40);
  OUTLINED_FUNCTION_80(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6568, &unk_1C8BE7C10);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v31 - v13;
  v15 = type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserResponse(0);
  v16 = *(v15 + 24);
  v17 = *(a1 + v16);
  v18 = *(a2 + v16);
  if (v17 == 2)
  {
    if (v18 != 2)
    {
      goto LABEL_22;
    }
  }

  else if (v18 == 2 || ((v17 ^ v18) & 1) != 0)
  {
    goto LABEL_22;
  }

  OUTLINED_FUNCTION_11();
  if (v20)
  {
    if (!v19)
    {
      goto LABEL_22;
    }
  }

  else
  {
    OUTLINED_FUNCTION_21_4();
    if (v21)
    {
LABEL_22:
      v29 = 0;
      return v29 & 1;
    }
  }

  v22 = *(v15 + 32);
  v23 = *(v11 + 48);
  sub_1C888EB30(a1 + v22, v14);
  sub_1C888EB30(a2 + v22, &v14[v23]);
  OUTLINED_FUNCTION_73(v14);
  if (v24)
  {
    OUTLINED_FUNCTION_73(&v14[v23]);
    if (v24)
    {
      sub_1C8778ED8(v14, &qword_1EC2B6540, &unk_1C8BE7A40);
      goto LABEL_20;
    }

    goto LABEL_18;
  }

  sub_1C888EB30(v14, v10);
  OUTLINED_FUNCTION_73(&v14[v23]);
  if (v24)
  {
    sub_1C888EFA4(v10);
LABEL_18:
    sub_1C8778ED8(v14, &qword_1EC2B6568, &unk_1C8BE7C10);
    goto LABEL_22;
  }

  sub_1C888EBA0(&v14[v23], v6);
  v25 = static Siri_Nlu_External_Parser.== infix(_:_:)();
  sub_1C888EFA4(v6);
  sub_1C888EFA4(v10);
  sub_1C8778ED8(v14, &qword_1EC2B6540, &unk_1C8BE7A40);
  if ((v25 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_20:
  sub_1C87DCC18();
  if ((v26 & 1) == 0)
  {
    goto LABEL_22;
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_4_15();
  sub_1C87766F8(v27, v28, MEMORY[0x1E69AAC10]);
  v29 = sub_1C8BD517C();
  return v29 & 1;
}

uint64_t sub_1C889060C(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_1C8BD530C();
  a1(0);
  sub_1C87766F8(a2, a3, a4);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C88906F0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87766F8(&qword_1EC2B8860, type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserResponse, &protocol conformance descriptor for Siri_Nlu_Internal_Itfm_ITFMParserResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8890770(uint64_t a1)
{
  v2 = sub_1C87766F8(&qword_1EC2B8850, type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserResponse, &protocol conformance descriptor for Siri_Nlu_Internal_Itfm_ITFMParserResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88907E0(uint64_t a1, uint64_t a2)
{
  sub_1C87766F8(&qword_1EC2B8850, type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserResponse, &protocol conformance descriptor for Siri_Nlu_Internal_Itfm_ITFMParserResponse);

  return sub_1C8BD4CFC();
}

void sub_1C8890AC8(uint64_t a1)
{
  sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    sub_1C87EB4B0(319, &qword_1EDACD388, MEMORY[0x1E69E72F0]);
    if (v2 <= 0x3F)
    {
      sub_1C87EB4B0(319, &qword_1EC2B4230, MEMORY[0x1E69E6448]);
      if (v3 <= 0x3F)
      {
        sub_1C87EB4B0(319, &qword_1EDACD3E8, MEMORY[0x1E69E6158]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C8890BD4(uint64_t a1)
{
  sub_1C8890D20(319, &qword_1EC2B2F38, type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMHypothesis, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v2 <= 0x3F)
    {
      sub_1C87EB4B0(319, &qword_1EDACA2B8, MEMORY[0x1E69E6370]);
      if (v3 <= 0x3F)
      {
        sub_1C87EB4B0(319, &qword_1EC2B4230, MEMORY[0x1E69E6448]);
        if (v4 <= 0x3F)
        {
          sub_1C8890D20(319, qword_1EDACE0E8, type metadata accessor for Siri_Nlu_External_Parser, MEMORY[0x1E69E6720]);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C8890D20(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest.requestID.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_13_2(v6);
  v8 = type metadata accessor for Siri_Nlu_External_UUID(v7);
  OUTLINED_FUNCTION_21();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_38_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v13)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_11_0(v8[5]);
    OUTLINED_FUNCTION_11_0(v8[6]);
    v12[v8[7]] = 6;
    OUTLINED_FUNCTION_0_0();
    if (!v13)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_20_2();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8890F9C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12 - v7;
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_28(v2 + *a1);
  sub_1C8778810();
  v9 = type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_1_0();
  if (!v10)
  {
    return OUTLINED_FUNCTION_54();
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_15_2(v9[5]);
  OUTLINED_FUNCTION_15_2(v9[6]);
  *(a2 + v9[7]) = 6;
  result = OUTLINED_FUNCTION_1_0();
  if (!v10)
  {
    return sub_1C8778ED8(v8, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  }

  return result;
}

uint64_t sub_1C88910CC()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v1);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v9 - v3;
  v5 = *(type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_10_10();
    v6 = OUTLINED_FUNCTION_2();
    *(v0 + v5) = sub_1C88930EC(v6);
  }

  sub_1C87EF7B0();
  v7 = type metadata accessor for Siri_Nlu_External_UUID(0);
  __swift_storeEnumTagSinglePayload(v4, 0, 1, v7);
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  sub_1C8786514();
  return swift_endAccess();
}

void Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest.nluRequestID.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_13_2(v6);
  v8 = type metadata accessor for Siri_Nlu_External_UUID(v7);
  OUTLINED_FUNCTION_21();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_38_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v13)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_11_0(v8[5]);
    OUTLINED_FUNCTION_11_0(v8[6]);
    v12[v8[7]] = 6;
    OUTLINED_FUNCTION_0_0();
    if (!v13)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_20_2();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

BOOL sub_1C8891378(uint64_t *a1, uint64_t *a2, void *a3, uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_80(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v16 - v11;
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_28(v4 + *a3);
  sub_1C8778810();
  v13 = a4(0);
  v14 = __swift_getEnumTagSinglePayload(v12, 1, v13) != 1;
  sub_1C8778ED8(v12, a1, a2);
  return v14;
}

uint64_t sub_1C889147C(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void))
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v13 - v7;
  v9 = *(type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest(0) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_10_10();
    v10 = OUTLINED_FUNCTION_2();
    *(v3 + v9) = sub_1C88930EC(v10);
  }

  v11 = a3(0);
  __swift_storeEnumTagSinglePayload(v8, 1, 1, v11);
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  sub_1C8786514();
  return swift_endAccess();
}

uint64_t sub_1C889158C(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest.resultCandidateID.setter(v1, v2);
}

void (*Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest.resultCandidateID.modify(void *a1))(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v4;
  v4[8] = v1;
  OUTLINED_FUNCTION_8_14();
  *(v4 + 18) = v5;
  OUTLINED_FUNCTION_37_5();
  if (v2[1])
  {
    v6 = *v2;
    v7 = v2[1];
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v4[6] = v6;
  v4[7] = v7;

  return sub_1C8891674;
}

uint64_t sub_1C88916B8(uint64_t a1)
{
  v1 = OUTLINED_FUNCTION_8_14();
  OUTLINED_FUNCTION_11_12(v1);

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C8891714(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest.utterance.setter(v1, v2);
}

uint64_t sub_1C8891760(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = v3;
  v8 = *(type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_10_10();
    v11 = OUTLINED_FUNCTION_2();
    isUniquelyReferenced_nonNull_native = sub_1C88930EC(v11);
    v10 = isUniquelyReferenced_nonNull_native;
    *(v5 + v8) = isUniquelyReferenced_nonNull_native;
  }

  v12 = (v10 + *a3);
  OUTLINED_FUNCTION_36_0(isUniquelyReferenced_nonNull_native, v14);
  *v12 = a1;
  v12[1] = a2;
}

void (*Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest.utterance.modify(void *a1))(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_coroFrameAllocStub(0x50uLL);
  *a1 = v4;
  v4[8] = v1;
  OUTLINED_FUNCTION_8_14();
  *(v4 + 18) = v5;
  OUTLINED_FUNCTION_37_5();
  if (v2[1])
  {
    v6 = *v2;
    v7 = v2[1];
  }

  else
  {
    v6 = 0;
    v7 = 0xE000000000000000;
  }

  v4[6] = v6;
  v4[7] = v7;

  return sub_1C889188C;
}

void sub_1C88918AC(uint64_t *a1, char a2, void *a3, void (*a4)(uint64_t, uint64_t))
{
  v4 = *a1;
  v5 = *(*a1 + 48);
  v6 = *(*a1 + 56);
  if (a2)
  {

    a4(v5, v6);
  }

  else
  {
    v9 = *(v4 + 72);
    v10 = *(v4 + 64);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *(v10 + v9);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v13 = *(v4 + 72);
      v14 = *(v4 + 64);
      OUTLINED_FUNCTION_10_10();
      v15 = OUTLINED_FUNCTION_2();
      isUniquelyReferenced_nonNull_native = sub_1C88930EC(v15);
      v12 = isUniquelyReferenced_nonNull_native;
      *(v14 + v13) = isUniquelyReferenced_nonNull_native;
    }

    v16 = (v12 + *a3);
    OUTLINED_FUNCTION_36_0(isUniquelyReferenced_nonNull_native, v4 + 24);
    *v16 = v5;
    v16[1] = v6;
  }

  free(v4);
}

BOOL sub_1C8891990(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_8_14();
  OUTLINED_FUNCTION_11_12(v2);
  return *(a1 + 8) != 0;
}

uint64_t sub_1C88919E0(void *a1)
{
  v3 = v1;
  v4 = *(type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_10_10();
    v7 = OUTLINED_FUNCTION_2();
    isUniquelyReferenced_nonNull_native = sub_1C88930EC(v7);
    v6 = isUniquelyReferenced_nonNull_native;
    *(v3 + v4) = isUniquelyReferenced_nonNull_native;
  }

  v8 = (v6 + *a1);
  OUTLINED_FUNCTION_42_3(isUniquelyReferenced_nonNull_native);
  *v8 = 0;
  v8[1] = 0;
}

uint64_t Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest.tokenChain.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_28(v1 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__tokenChain);
  OUTLINED_FUNCTION_32_3();
  v7 = type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  OUTLINED_FUNCTION_1_0();
  if (v8)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_18_2(*(v7 + 24));
    OUTLINED_FUNCTION_18_2(*(v7 + 28));
    result = OUTLINED_FUNCTION_1_0();
    if (!v8)
    {
      return sub_1C8778ED8(v6, &qword_1EC2B6048, &unk_1C8BE6F80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_2();
    return OUTLINED_FUNCTION_54();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest.tokenChain.setter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  if ((OUTLINED_FUNCTION_40_4() & 1) == 0)
  {
    OUTLINED_FUNCTION_10_10();
    v4 = OUTLINED_FUNCTION_2();
    *(v0 + v1) = sub_1C88930EC(v4);
  }

  OUTLINED_FUNCTION_5_2();
  sub_1C87EF7B0();
  v5 = type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  OUTLINED_FUNCTION_33_1(v5);
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  sub_1C8786514();
  return swift_endAccess();
}

void Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest.tokenChain.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_13_2(v6);
  v8 = type metadata accessor for Siri_Nlu_Internal_TokenChain(v7);
  OUTLINED_FUNCTION_21();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_38_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v13)
  {
    *v12 = MEMORY[0x1E69E7CC0];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_26(*(v8 + 24));
    OUTLINED_FUNCTION_26(*(v8 + 28));
    OUTLINED_FUNCTION_0_0();
    if (!v13)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6048, &unk_1C8BE6F80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_2();
    sub_1C87EF7B0();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest.embeddingTensor.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v10 - v5;
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_28(v1 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__embeddingTensor);
  OUTLINED_FUNCTION_32_3();
  v7 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  OUTLINED_FUNCTION_1_0();
  if (v8)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_15_2(v7[6]);
    OUTLINED_FUNCTION_15_2(v7[7]);
    OUTLINED_FUNCTION_15_2(v7[8]);
    OUTLINED_FUNCTION_18_2(v7[9]);
    result = OUTLINED_FUNCTION_1_0();
    if (!v8)
    {
      return sub_1C8778ED8(v6, &qword_1EC2B64A8, &unk_1C8BE7670);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_1();
    return OUTLINED_FUNCTION_54();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest.embeddingTensor.setter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  if ((OUTLINED_FUNCTION_40_4() & 1) == 0)
  {
    OUTLINED_FUNCTION_10_10();
    v4 = OUTLINED_FUNCTION_2();
    *(v0 + v1) = sub_1C88930EC(v4);
  }

  OUTLINED_FUNCTION_7_1();
  sub_1C87EF7B0();
  v5 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  OUTLINED_FUNCTION_33_1(v5);
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  sub_1C8786514();
  return swift_endAccess();
}

void Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest.embeddingTensor.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_13_2(v6);
  v8 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(v7);
  OUTLINED_FUNCTION_21();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_38_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v13)
  {
    *v12 = MEMORY[0x1E69E7CC0];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_11_0(v8[6]);
    OUTLINED_FUNCTION_11_0(v8[7]);
    OUTLINED_FUNCTION_11_0(v8[8]);
    OUTLINED_FUNCTION_26(v8[9]);
    OUTLINED_FUNCTION_0_0();
    if (!v13)
    {
      sub_1C8778ED8(v0, &qword_1EC2B64A8, &unk_1C8BE7670);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_1();
    sub_1C87EF7B0();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest.maxCandidates.getter()
{
  v1 = OUTLINED_FUNCTION_8_14();
  OUTLINED_FUNCTION_11_12(v1);
  if (v0[8])
  {
    return 0;
  }

  else
  {
    return *v0;
  }
}

uint64_t Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest.maxCandidates.setter()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_241();
  v4 = *(type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest(v3) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_10_10();
    v7 = OUTLINED_FUNCTION_2();
    isUniquelyReferenced_nonNull_native = sub_1C88930EC(v7);
    v6 = isUniquelyReferenced_nonNull_native;
    *(v2 + v4) = isUniquelyReferenced_nonNull_native;
  }

  v8 = v6 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__maxCandidates;
  result = OUTLINED_FUNCTION_36_0(isUniquelyReferenced_nonNull_native, v10);
  *v8 = v0;
  *(v8 + 8) = 0;
  return result;
}

uint64_t Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest.maxCandidates.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  v3[10] = v1;
  OUTLINED_FUNCTION_8_14();
  *(v3 + 22) = v4;
  v5 = *(v1 + v4) + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__maxCandidates;
  swift_beginAccess();
  v6 = *v5;
  if (*(v5 + 8))
  {
    v6 = 0;
  }

  v3[9] = v6;
  return OUTLINED_FUNCTION_31();
}

void sub_1C8892358(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 72);
  v5 = *(*a1 + 88);
  v6 = *(*a1 + 80);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v3 + 88);
    v10 = *(v3 + 80);
    OUTLINED_FUNCTION_10_10();
    v11 = OUTLINED_FUNCTION_2();
    isUniquelyReferenced_nonNull_native = sub_1C88930EC(v11);
    v8 = isUniquelyReferenced_nonNull_native;
    *(v10 + v9) = isUniquelyReferenced_nonNull_native;
  }

  v12 = 48;
  if (a2)
  {
    v12 = 24;
  }

  v13 = v8 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__maxCandidates;
  OUTLINED_FUNCTION_36_0(isUniquelyReferenced_nonNull_native, v3 + v12);
  *v13 = v4;
  *(v13 + 8) = 0;

  free(v3);
}

BOOL Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest.hasMaxCandidates.getter()
{
  v1 = OUTLINED_FUNCTION_8_14();
  OUTLINED_FUNCTION_11_12(v1);
  return (*(v0 + 8) & 1) == 0;
}

Swift::Void __swiftcall Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest.clearMaxCandidates()()
{
  v1 = v0;
  v2 = *(type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v4 = *(v0 + v2);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_10_10();
    v5 = OUTLINED_FUNCTION_2();
    isUniquelyReferenced_nonNull_native = sub_1C88930EC(v5);
    v4 = isUniquelyReferenced_nonNull_native;
    *(v1 + v2) = isUniquelyReferenced_nonNull_native;
  }

  v6 = v4 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__maxCandidates;
  OUTLINED_FUNCTION_42_3(isUniquelyReferenced_nonNull_native);
  *v6 = 0;
  *(v6 + 8) = 1;
}

uint64_t Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest.cdmRequestID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v12 - v5;
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_28(v1 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__cdmRequestID);
  OUTLINED_FUNCTION_32_3();
  v7 = type metadata accessor for Siri_Nlu_External_RequestID(0);
  OUTLINED_FUNCTION_1_0();
  if (v8)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_18_2(v7[5]);
    v9 = v7[6];
    v10 = type metadata accessor for Siri_Nlu_External_UUID(0);
    __swift_storeEnumTagSinglePayload(a1 + v9, 1, 1, v10);
    OUTLINED_FUNCTION_18_2(v7[7]);
    OUTLINED_FUNCTION_18_2(v7[8]);
    OUTLINED_FUNCTION_18_2(v7[9]);
    OUTLINED_FUNCTION_18_2(v7[10]);
    *(a1 + v7[11]) = 6;
    result = OUTLINED_FUNCTION_1_0();
    if (!v8)
    {
      return sub_1C8778ED8(v6, &qword_1EC2B64B0, &unk_1C8BF3F40);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_4();
    return OUTLINED_FUNCTION_54();
  }

  return result;
}

uint64_t sub_1C8892600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_80(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  sub_1C87EF808();
  return a7(v11);
}

uint64_t Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest.cdmRequestID.setter()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  if ((OUTLINED_FUNCTION_40_4() & 1) == 0)
  {
    OUTLINED_FUNCTION_10_10();
    v4 = OUTLINED_FUNCTION_2();
    *(v0 + v1) = sub_1C88930EC(v4);
  }

  OUTLINED_FUNCTION_6_4();
  sub_1C87EF7B0();
  v5 = type metadata accessor for Siri_Nlu_External_RequestID(0);
  OUTLINED_FUNCTION_33_1(v5);
  OUTLINED_FUNCTION_23();
  swift_beginAccess();
  sub_1C8786514();
  return swift_endAccess();
}

void Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest.cdmRequestID.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_13_2(v6);
  v8 = type metadata accessor for Siri_Nlu_External_RequestID(v7);
  OUTLINED_FUNCTION_21();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_38_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_4_16();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_16();
  OUTLINED_FUNCTION_0_0();
  if (v13)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_26(v8[5]);
    v14 = v8[6];
    v15 = type metadata accessor for Siri_Nlu_External_UUID(0);
    __swift_storeEnumTagSinglePayload(&v12[v14], 1, 1, v15);
    OUTLINED_FUNCTION_26(v8[7]);
    OUTLINED_FUNCTION_26(v8[8]);
    OUTLINED_FUNCTION_26(v8[9]);
    OUTLINED_FUNCTION_26(v8[10]);
    v12[v8[11]] = 6;
    OUTLINED_FUNCTION_0_0();
    if (!v13)
    {
      sub_1C8778ED8(v0, &qword_1EC2B64B0, &unk_1C8BF3F40);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_4();
    sub_1C87EF7B0();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

void sub_1C8892928(uint64_t a1, char a2, void (*a3)(void *))
{
  v4 = *a1;
  v5 = *(*a1 + 40);
  v6 = *(*a1 + 48);
  v7 = *(*a1 + 32);
  if (a2)
  {
    sub_1C87EF808();
    a3(v5);
    sub_1C87EF860();
  }

  else
  {
    a3(*(*a1 + 48));
  }

  free(v6);
  free(v5);
  free(v7);

  free(v4);
}

uint64_t Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest.unknownFields.getter()
{
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v0 = OUTLINED_FUNCTION_218();

  return v1(v0);
}

uint64_t Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest.unknownFields.setter()
{
  OUTLINED_FUNCTION_241();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest.init()@<X0>(uint64_t a2@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v3 = *(type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest(0) + 20);
  if (qword_1EC2B43A0 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_1EC2B43A8;
}

uint64_t sub_1C8892BA8()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B4368);
  __swift_project_value_buffer(v0, qword_1EC2B4368);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE8D40;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "request_id";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "nlu_request_id";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "result_candidate_id";
  *(v12 + 1) = 19;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "utterance";
  *(v14 + 1) = 9;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "token_chain";
  *(v16 + 1) = 11;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "embedding_tensor";
  *(v18 + 1) = 16;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "max_candidates";
  *(v20 + 1) = 14;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "cdm_request_id";
  *(v22 + 1) = 14;
  v22[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B4360 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2B4368);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C8892F9C()
{
  type metadata accessor for Siri_Nlu_Internal_MentionDetector_MentionDetectorRequest._StorageClass(0);
  swift_allocObject();
  result = sub_1C8892FDC();
  qword_1EC2B43A8 = result;
  return result;
}

uint64_t sub_1C8892FDC()
{
  v1 = OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__requestID;
  v2 = type metadata accessor for Siri_Nlu_External_UUID(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  __swift_storeEnumTagSinglePayload(v0 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__nluRequestID, 1, 1, v2);
  v3 = (v0 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__resultCandidateID);
  *v3 = 0;
  v3[1] = 0;
  v4 = (v0 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__utterance);
  *v4 = 0;
  v4[1] = 0;
  v5 = OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__tokenChain;
  v6 = type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__embeddingTensor;
  v8 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  v9 = v0 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__maxCandidates;
  *v9 = 0;
  *(v9 + 8) = 1;
  v10 = OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__cdmRequestID;
  v11 = type metadata accessor for Siri_Nlu_External_RequestID(0);
  __swift_storeEnumTagSinglePayload(v0 + v10, 1, 1, v11);
  return v0;
}

uint64_t sub_1C88930EC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v31[6] = v31 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v31[5] = v31 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v31[3] = v31 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v10 = OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__requestID;
  v11 = type metadata accessor for Siri_Nlu_External_UUID(0);
  __swift_storeEnumTagSinglePayload(v1 + v10, 1, 1, v11);
  __swift_storeEnumTagSinglePayload(v1 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__nluRequestID, 1, 1, v11);
  v12 = (v1 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__resultCandidateID);
  *v12 = 0;
  v12[1] = 0;
  v13 = (v1 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__utterance);
  *v13 = 0;
  v13[1] = 0;
  v14 = OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__tokenChain;
  v31[1] = OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__tokenChain;
  v15 = type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  __swift_storeEnumTagSinglePayload(v1 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__embeddingTensor;
  v31[2] = OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__embeddingTensor;
  v17 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  __swift_storeEnumTagSinglePayload(v1 + v16, 1, 1, v17);
  v18 = v1 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__maxCandidates;
  v31[0] = v1 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__maxCandidates;
  *v18 = 0;
  *(v18 + 8) = 1;
  v19 = OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__cdmRequestID;
  v31[4] = OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__cdmRequestID;
  v20 = type metadata accessor for Siri_Nlu_External_RequestID(0);
  __swift_storeEnumTagSinglePayload(v1 + v19, 1, 1, v20);
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  v21 = (a1 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__resultCandidateID);
  swift_beginAccess();
  v23 = *v21;
  v22 = v21[1];
  swift_beginAccess();
  *v12 = v23;
  v12[1] = v22;

  v24 = (a1 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__utterance);
  swift_beginAccess();
  v26 = *v24;
  v25 = v24[1];
  swift_beginAccess();
  *v13 = v26;
  v13[1] = v25;

  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  swift_beginAccess();
  sub_1C8778810();
  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  v27 = (a1 + OBJC_IVAR____TtCV12SiriNLUTypes56Siri_Nlu_Internal_MentionDetector_MentionDetectorRequestP33_41344074AD08C18C79FCC0F50ED446A613_StorageClass__maxCandidates);
  swift_beginAccess();
  v28 = *v27;
  LOBYTE(v27) = *(v27 + 8);
  v29 = v31[0];
  swift_beginAccess();
  *v29 = v28;
  *(v29 + 8) = v27;
  swift_beginAccess();
  sub_1C8778810();

  swift_beginAccess();
  sub_1C8786514();
  swift_endAccess();
  return v1;
}