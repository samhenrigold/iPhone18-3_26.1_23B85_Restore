uint64_t Siri_Nlu_Internal_Embedding_EmbeddingRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v15 - v7;
  v9 = type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  v12 = v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingRequest(0);
  if (!*(v3 + *(v13 + 20) + 8) || (result = sub_1C8BD4DDC(), !v4))
  {
    sub_1C87F2D10(v3 + *(v13 + 24), v8);
    if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
    {
      sub_1C8778ED8(v8, &qword_1EC2B6048, &unk_1C8BE6F80);
    }

    else
    {
      sub_1C87F2D80(v8, v12);
      sub_1C87F41A4(&qword_1EC2B4B38, type metadata accessor for Siri_Nlu_Internal_TokenChain, &protocol conformance descriptor for Siri_Nlu_Internal_TokenChain);
      sub_1C8BD4E2C();
      result = sub_1C87F31A0(v12);
      if (v4)
      {
        return result;
      }
    }

    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_Embedding_EmbeddingRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_80(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6050, &qword_1C8BE6D00);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v29 - v14;
  v16 = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingRequest(0);
  v17 = *(v16 + 20);
  v18 = (a1 + v17);
  v19 = *(a1 + v17 + 8);
  v20 = (a2 + v17);
  v21 = v20[1];
  if (v19)
  {
    if (!v21)
    {
      goto LABEL_19;
    }

    v22 = *v18 == *v20 && v19 == v21;
    if (!v22 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_19;
    }
  }

  else if (v21)
  {
    goto LABEL_19;
  }

  v23 = *(v16 + 24);
  v24 = *(v12 + 48);
  sub_1C87F2D10(a1 + v23, v15);
  sub_1C87F2D10(a2 + v23, &v15[v24]);
  OUTLINED_FUNCTION_76(v15, 1, v4);
  if (v22)
  {
    OUTLINED_FUNCTION_76(&v15[v24], 1, v4);
    if (v22)
    {
      sub_1C8778ED8(v15, &qword_1EC2B6048, &unk_1C8BE6F80);
LABEL_22:
      sub_1C8BD49FC();
      sub_1C87F41A4(&qword_1EC2B2F70, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      OUTLINED_FUNCTION_5_0();
      v26 = sub_1C8BD517C();
      return v26 & 1;
    }

    goto LABEL_18;
  }

  sub_1C87F2D10(v15, v11);
  OUTLINED_FUNCTION_76(&v15[v24], 1, v4);
  if (v25)
  {
    sub_1C87F31A0(v11);
LABEL_18:
    sub_1C8778ED8(v15, &qword_1EC2B6050, &qword_1C8BE6D00);
    goto LABEL_19;
  }

  sub_1C87F2D80(&v15[v24], v7);
  v28 = static Siri_Nlu_Internal_TokenChain.== infix(_:_:)(v11, v7);
  sub_1C87F31A0(v7);
  sub_1C87F31A0(v11);
  sub_1C8778ED8(v15, &qword_1EC2B6048, &unk_1C8BE6F80);
  if (v28)
  {
    goto LABEL_22;
  }

LABEL_19:
  v26 = 0;
  return v26 & 1;
}

uint64_t Siri_Nlu_Internal_Embedding_EmbeddingRequest.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingRequest(0);
  sub_1C87F41A4(&qword_1EC2B6500, type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingRequest, &protocol conformance descriptor for Siri_Nlu_Internal_Embedding_EmbeddingRequest);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C87F3DF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87F41A4(&qword_1EC2B6530, type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingRequest, &protocol conformance descriptor for Siri_Nlu_Internal_Embedding_EmbeddingRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C87F3E78(uint64_t a1)
{
  v2 = sub_1C87F41A4(&qword_1EC2B6510, type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingRequest, &protocol conformance descriptor for Siri_Nlu_Internal_Embedding_EmbeddingRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C87F3EE8(uint64_t a1, uint64_t a2)
{
  sub_1C87F41A4(&qword_1EC2B6510, type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingRequest, &protocol conformance descriptor for Siri_Nlu_Internal_Embedding_EmbeddingRequest);

  return sub_1C8BD4CFC();
}

void sub_1C87F40B0(uint64_t a1)
{
  sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    sub_1C87E8A54();
    if (v2 <= 0x3F)
    {
      sub_1C87F414C(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C87F414C(uint64_t a1)
{
  if (!qword_1EC2B4B18)
  {
    type metadata accessor for Siri_Nlu_Internal_TokenChain(255);
    v1 = sub_1C8BD522C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC2B4B18);
    }
  }
}

uint64_t sub_1C87F41A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_7_4()
{

  return type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingRequest(0);
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserRequest.requestID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v9 - v4;
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_22_1();
  v6 = type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_1_0();
  if (v7)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_15_2(v6[5]);
    OUTLINED_FUNCTION_15_2(v6[6]);
    *(a1 + v6[7]) = 6;
    result = OUTLINED_FUNCTION_1_0();
    if (!v7)
    {
      return sub_1C8778ED8(v5, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_6();
    return OUTLINED_FUNCTION_44_2();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserRequest.requestID.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_11_3();
  if ((OUTLINED_FUNCTION_41_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_12_3();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C87F6444(v3);
    OUTLINED_FUNCTION_40(v4);
  }

  OUTLINED_FUNCTION_9_6();
  OUTLINED_FUNCTION_39_1();
  v5 = type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_33_1(v5);
  v6 = OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_37_1(v6, v7, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  return swift_endAccess();
}

void Siri_Nlu_Internal_Itfm_ITFMParserRequest.requestID.modify()
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
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_3();
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
    OUTLINED_FUNCTION_9_6();
    OUTLINED_FUNCTION_38_3();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserRequest.tokenisedUtterance.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v16 - v5;
  OUTLINED_FUNCTION_2_6();
  v7 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__tokenisedUtterance;
  OUTLINED_FUNCTION_16_0();
  sub_1C87867A0(v1 + v7, v6, &qword_1EC2B6538, &qword_1C8C12C80);
  v8 = type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v9 = (a1 + v8[5]);
    *v9 = 0;
    v9[1] = 0;
    v10 = (a1 + v8[6]);
    *v10 = 0;
    v10[1] = 0;
    v11 = v8[7];
    v12 = type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
    OUTLINED_FUNCTION_43(a1 + v11, v13, v14, v12);
    result = __swift_getEnumTagSinglePayload(v6, 1, v8);
    if (result != 1)
    {
      return sub_1C8778ED8(v6, &qword_1EC2B6538, &qword_1C8C12C80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_3();
    return sub_1C87F97EC();
  }

  return result;
}

uint64_t sub_1C87F4708(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_80(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  sub_1C87F9840();
  return a7(v11);
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserRequest.tokenisedUtterance.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6538, &qword_1C8C12C80);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_11_3();
  if ((OUTLINED_FUNCTION_41_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_12_3();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C87F6444(v3);
    OUTLINED_FUNCTION_40(v4);
  }

  OUTLINED_FUNCTION_5_3();
  OUTLINED_FUNCTION_39_1();
  v5 = type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(0);
  OUTLINED_FUNCTION_33_1(v5);
  v6 = OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_37_1(v6, v7, &qword_1EC2B6538, &qword_1C8C12C80);
  return swift_endAccess();
}

void Siri_Nlu_Internal_Itfm_ITFMParserRequest.tokenisedUtterance.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_13_2(v6);
  v8 = type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(v7);
  OUTLINED_FUNCTION_21();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_38_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_0_0();
  if (v13)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_26(v8[5]);
    OUTLINED_FUNCTION_26(v8[6]);
    v14 = v8[7];
    v15 = type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
    OUTLINED_FUNCTION_43(v12 + v14, v16, v17, v15);
    OUTLINED_FUNCTION_0_0();
    if (!v13)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6538, &qword_1C8C12C80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_5_3();
    OUTLINED_FUNCTION_38_3();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

BOOL sub_1C87F4A00(uint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t (*a4)(void))
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_80(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v17 - v11;
  OUTLINED_FUNCTION_2_6();
  v13 = *a3;
  swift_beginAccess();
  sub_1C87867A0(v4 + v13, v12, a1, a2);
  v14 = a4(0);
  v15 = __swift_getEnumTagSinglePayload(v12, 1, v14) != 1;
  sub_1C8778ED8(v12, a1, a2);
  return v15;
}

uint64_t sub_1C87F4B10(uint64_t *a1, uint64_t *a2, uint64_t (*a3)(void), uint64_t *a4)
{
  v9 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_80(v10);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v23 - v12;
  v14 = *(type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v16 = *(v4 + v14);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_12_3();
    v17 = OUTLINED_FUNCTION_2();
    v16 = sub_1C87F6444(v17);
    *(v9 + v14) = v16;
  }

  v18 = a3(0);
  OUTLINED_FUNCTION_43(v13, v19, v20, v18);
  v21 = *a4;
  swift_beginAccess();
  sub_1C878656C(v13, v16 + v21, a1, a2);
  return swift_endAccess();
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserRequest.embeddings.getter@<X0>(void *a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v9 - v4;
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_22_1();
  v6 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  OUTLINED_FUNCTION_1_0();
  if (v7)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_15_2(v6[6]);
    OUTLINED_FUNCTION_15_2(v6[7]);
    OUTLINED_FUNCTION_15_2(v6[8]);
    OUTLINED_FUNCTION_18_2(v6[9]);
    result = OUTLINED_FUNCTION_1_0();
    if (!v7)
    {
      return sub_1C8778ED8(v5, &qword_1EC2B64A8, &unk_1C8BE7670);
    }
  }

  else
  {
    OUTLINED_FUNCTION_6_5();
    return OUTLINED_FUNCTION_44_2();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserRequest.embeddings.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64A8, &unk_1C8BE7670);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_11_3();
  if ((OUTLINED_FUNCTION_41_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_12_3();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C87F6444(v3);
    OUTLINED_FUNCTION_40(v4);
  }

  OUTLINED_FUNCTION_6_5();
  OUTLINED_FUNCTION_39_1();
  v5 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  OUTLINED_FUNCTION_33_1(v5);
  v6 = OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_37_1(v6, v7, &qword_1EC2B64A8, &unk_1C8BE7670);
  return swift_endAccess();
}

void Siri_Nlu_Internal_Itfm_ITFMParserRequest.embeddings.modify()
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
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_3();
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
    OUTLINED_FUNCTION_6_5();
    OUTLINED_FUNCTION_38_3();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserRequest.matchingSpans.getter()
{
  type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserRequest(0);
  swift_beginAccess();
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserRequest.matchingSpans.setter()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_241();
  v4 = *(type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserRequest(v3) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v6 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_12_3();
    v7 = OUTLINED_FUNCTION_2();
    v6 = sub_1C87F6444(v7);
    *(v2 + v4) = v6;
  }

  v8 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__matchingSpans;
  swift_beginAccess();
  *(v6 + v8) = v0;
}

void (*Siri_Nlu_Internal_Itfm_ITFMParserRequest.matchingSpans.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x48uLL);
  *a1 = v3;
  v3[7] = v1;
  v4 = *(type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserRequest(0) + 20);
  *(v3 + 16) = v4;
  v5 = *(v1 + v4);
  v6 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__matchingSpans;
  swift_beginAccess();
  v3[6] = *(v5 + v6);

  return sub_1C87F515C;
}

void sub_1C87F515C(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 48);
  if (a2)
  {

    Siri_Nlu_Internal_Itfm_ITFMParserRequest.matchingSpans.setter();
  }

  else
  {
    v4 = *(v2 + 64);
    v5 = *(v2 + 56);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v7 = *(v5 + v4);
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v8 = *(v2 + 64);
      v9 = *(v2 + 56);
      OUTLINED_FUNCTION_12_3();
      v10 = OUTLINED_FUNCTION_2();
      v7 = sub_1C87F6444(v10);
      *(v9 + v8) = v7;
    }

    v11 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__matchingSpans;
    swift_beginAccess();
    *(v7 + v11) = v3;
  }

  free(v2);
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserRequest.turnInput.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v11 - v4;
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_22_1();
  v6 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  OUTLINED_FUNCTION_1_0();
  if (v7)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v8 = *(v6 + 20);
    if (qword_1EDACCB60 != -1)
    {
      OUTLINED_FUNCTION_25(&qword_1EDACCB60);
    }

    *(a1 + v8) = qword_1EDACCB68;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v5, 1, v6);

    if (EnumTagSinglePayload != 1)
    {
      return sub_1C8778ED8(v5, &qword_1EC2B6038, &unk_1C8BE8850);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_4();
    return OUTLINED_FUNCTION_44_2();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserRequest.turnInput.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_11_3();
  if ((OUTLINED_FUNCTION_41_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_12_3();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C87F6444(v3);
    OUTLINED_FUNCTION_40(v4);
  }

  OUTLINED_FUNCTION_4_4();
  OUTLINED_FUNCTION_39_1();
  v5 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  OUTLINED_FUNCTION_33_1(v5);
  v6 = OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_37_1(v6, v7, &qword_1EC2B6038, &unk_1C8BE8850);
  return swift_endAccess();
}

void Siri_Nlu_Internal_Itfm_ITFMParserRequest.turnInput.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_13_2(v6);
  v8 = type metadata accessor for Siri_Nlu_External_TurnInput(v7);
  OUTLINED_FUNCTION_21();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_38_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_0_0();
  if (v13)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v14 = *(v8 + 20);
    if (qword_1EDACCB60 != -1)
    {
      OUTLINED_FUNCTION_25(&qword_1EDACCB60);
    }

    *&v12[v14] = qword_1EDACCB68;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v0, 1, v8);

    if (EnumTagSinglePayload != 1)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6038, &unk_1C8BE8850);
    }
  }

  else
  {
    OUTLINED_FUNCTION_4_4();
    OUTLINED_FUNCTION_38_3();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserRequest.parser.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v9 - v4;
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_22_1();
  v6 = type metadata accessor for Siri_Nlu_External_Parser(0);
  OUTLINED_FUNCTION_1_0();
  if (v7)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    *(a1 + *(v6 + 20)) = 3;
    *(a1 + *(v6 + 24)) = 10;
    result = OUTLINED_FUNCTION_1_0();
    if (!v7)
    {
      return sub_1C8778ED8(v5, &qword_1EC2B6540, &unk_1C8BE7A40);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_4();
    return OUTLINED_FUNCTION_44_2();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserRequest.parser.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6540, &unk_1C8BE7A40);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_11_3();
  if ((OUTLINED_FUNCTION_41_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_12_3();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C87F6444(v3);
    OUTLINED_FUNCTION_40(v4);
  }

  OUTLINED_FUNCTION_8_4();
  OUTLINED_FUNCTION_39_1();
  v5 = type metadata accessor for Siri_Nlu_External_Parser(0);
  OUTLINED_FUNCTION_33_1(v5);
  v6 = OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_37_1(v6, v7, &qword_1EC2B6540, &unk_1C8BE7A40);
  return swift_endAccess();
}

void Siri_Nlu_Internal_Itfm_ITFMParserRequest.parser.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_48();
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v7 = OUTLINED_FUNCTION_13_2(v6);
  v8 = type metadata accessor for Siri_Nlu_External_Parser(v7);
  OUTLINED_FUNCTION_21();
  v10 = __swift_coroFrameAllocStub(*(v9 + 64));
  v11 = OUTLINED_FUNCTION_38_0(v10);
  v12 = __swift_coroFrameAllocStub(v11);
  *(v1 + 48) = v12;
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_0_0();
  if (v13)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v12[*(v8 + 20)] = 3;
    v12[*(v8 + 24)] = 10;
    OUTLINED_FUNCTION_0_0();
    if (!v13)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6540, &unk_1C8BE7A40);
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_4();
    OUTLINED_FUNCTION_38_3();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserRequest.nluRequestID.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = OUTLINED_FUNCTION_40_0();
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v13 - v4;
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_16_0();
  OUTLINED_FUNCTION_22_1();
  v6 = type metadata accessor for Siri_Nlu_External_RequestID(0);
  OUTLINED_FUNCTION_1_0();
  if (v7)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_18_2(v6[5]);
    v8 = v6[6];
    v9 = type metadata accessor for Siri_Nlu_External_UUID(0);
    OUTLINED_FUNCTION_43(a1 + v8, v10, v11, v9);
    OUTLINED_FUNCTION_18_2(v6[7]);
    OUTLINED_FUNCTION_18_2(v6[8]);
    OUTLINED_FUNCTION_18_2(v6[9]);
    OUTLINED_FUNCTION_18_2(v6[10]);
    *(a1 + v6[11]) = 6;
    result = OUTLINED_FUNCTION_1_0();
    if (!v7)
    {
      return sub_1C8778ED8(v5, &qword_1EC2B64B0, &unk_1C8BF3F40);
    }
  }

  else
  {
    OUTLINED_FUNCTION_7_5();
    return OUTLINED_FUNCTION_44_2();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserRequest.nluRequestID.setter()
{
  OUTLINED_FUNCTION_31_0();
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_11_3();
  if ((OUTLINED_FUNCTION_41_1(v2) & 1) == 0)
  {
    OUTLINED_FUNCTION_12_3();
    v3 = OUTLINED_FUNCTION_2();
    v4 = sub_1C87F6444(v3);
    OUTLINED_FUNCTION_40(v4);
  }

  OUTLINED_FUNCTION_7_5();
  OUTLINED_FUNCTION_39_1();
  v5 = type metadata accessor for Siri_Nlu_External_RequestID(0);
  OUTLINED_FUNCTION_33_1(v5);
  v6 = OUTLINED_FUNCTION_15_3();
  OUTLINED_FUNCTION_37_1(v6, v7, &qword_1EC2B64B0, &unk_1C8BF3F40);
  return swift_endAccess();
}

void Siri_Nlu_Internal_Itfm_ITFMParserRequest.nluRequestID.modify()
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
  OUTLINED_FUNCTION_2_6();
  OUTLINED_FUNCTION_17_1();
  OUTLINED_FUNCTION_18_3();
  OUTLINED_FUNCTION_0_0();
  if (v13)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_26(v8[5]);
    v14 = v8[6];
    v15 = type metadata accessor for Siri_Nlu_External_UUID(0);
    OUTLINED_FUNCTION_43(&v12[v14], v16, v17, v15);
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
    OUTLINED_FUNCTION_7_5();
    OUTLINED_FUNCTION_38_3();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

void sub_1C87F5CD4(uint64_t a1, char a2, void (*a3)(void *), uint64_t a4)
{
  v5 = *a1;
  v6 = *(*a1 + 40);
  v7 = *(*a1 + 48);
  v8 = *(*a1 + 32);
  if (a2)
  {
    sub_1C87F9840();
    a3(v6);
    sub_1C87F9894();
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

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserRequest.unknownFields.getter()
{
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v0 = OUTLINED_FUNCTION_218();

  return v1(v0);
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserRequest.unknownFields.setter()
{
  OUTLINED_FUNCTION_241();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserRequest.init()@<X0>(uint64_t a2@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserRequest(0) + 20);
  if (qword_1EC2B46D0 != -1)
  {
    swift_once();
  }

  *(a2 + v3) = qword_1EC2B46D8;
}

uint64_t sub_1C87F5F54()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B4698);
  __swift_project_value_buffer(v0, qword_1EC2B4698);
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
  *v16 = "parser";
  *(v16 + 1) = 6;
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

uint64_t static Siri_Nlu_Internal_Itfm_ITFMParserRequest._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B4690 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2B4698);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t sub_1C87F62F8()
{
  type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserRequest._StorageClass(0);
  swift_allocObject();
  result = sub_1C87F6338();
  qword_1EC2B46D8 = result;
  return result;
}

uint64_t sub_1C87F6338()
{
  v1 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__requestID;
  v2 = type metadata accessor for Siri_Nlu_External_UUID(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__tokenisedUtterance;
  v4 = type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__embeddings;
  v6 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  *(v0 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__matchingSpans) = MEMORY[0x1E69E7CC0];
  v7 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__turnInput;
  v8 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__parser;
  v10 = type metadata accessor for Siri_Nlu_External_Parser(0);
  __swift_storeEnumTagSinglePayload(v0 + v9, 1, 1, v10);
  v11 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__nluRequestID;
  v12 = type metadata accessor for Siri_Nlu_External_RequestID(0);
  __swift_storeEnumTagSinglePayload(v0 + v11, 1, 1, v12);
  return v0;
}

uint64_t sub_1C87F6444(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B64B0, &unk_1C8BF3F40);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v53 = &v46 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6540, &unk_1C8BE7A40);
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
  v17 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__requestID;
  v18 = type metadata accessor for Siri_Nlu_External_UUID(0);
  __swift_storeEnumTagSinglePayload(v1 + v17, 1, 1, v18);
  v19 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__tokenisedUtterance;
  v20 = type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(0);
  __swift_storeEnumTagSinglePayload(v1 + v19, 1, 1, v20);
  v21 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__embeddings;
  v22 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  __swift_storeEnumTagSinglePayload(v1 + v21, 1, 1, v22);
  v23 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__matchingSpans;
  *(v1 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__matchingSpans) = MEMORY[0x1E69E7CC0];
  v24 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__turnInput;
  v47 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__turnInput;
  v25 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  __swift_storeEnumTagSinglePayload(v1 + v24, 1, 1, v25);
  v26 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__parser;
  v48 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__parser;
  v27 = type metadata accessor for Siri_Nlu_External_Parser(0);
  __swift_storeEnumTagSinglePayload(v1 + v26, 1, 1, v27);
  v28 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__nluRequestID;
  v50 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__nluRequestID;
  v29 = type metadata accessor for Siri_Nlu_External_RequestID(0);
  __swift_storeEnumTagSinglePayload(v1 + v28, 1, 1, v29);
  v30 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__requestID;
  swift_beginAccess();
  sub_1C87867A0(a1 + v30, v16, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  swift_beginAccess();
  sub_1C878656C(v16, v1 + v17, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  swift_endAccess();
  v31 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__tokenisedUtterance;
  swift_beginAccess();
  sub_1C87867A0(a1 + v31, v13, &qword_1EC2B6538, &qword_1C8C12C80);
  swift_beginAccess();
  sub_1C878656C(v13, v1 + v19, &qword_1EC2B6538, &qword_1C8C12C80);
  swift_endAccess();
  v32 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__embeddings;
  swift_beginAccess();
  v33 = v49;
  sub_1C87867A0(a1 + v32, v49, &qword_1EC2B64A8, &unk_1C8BE7670);
  swift_beginAccess();
  sub_1C878656C(v33, v1 + v21, &qword_1EC2B64A8, &unk_1C8BE7670);
  swift_endAccess();
  v34 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__matchingSpans;
  swift_beginAccess();
  v35 = *(a1 + v34);
  swift_beginAccess();
  *(v1 + v23) = v35;

  v36 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__turnInput;
  swift_beginAccess();
  v37 = v51;
  sub_1C87867A0(a1 + v36, v51, &qword_1EC2B6038, &unk_1C8BE8850);
  v38 = v47;
  swift_beginAccess();
  sub_1C878656C(v37, v1 + v38, &qword_1EC2B6038, &unk_1C8BE8850);
  swift_endAccess();
  v39 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__parser;
  swift_beginAccess();
  v40 = v52;
  sub_1C87867A0(a1 + v39, v52, &qword_1EC2B6540, &unk_1C8BE7A40);
  v41 = v48;
  swift_beginAccess();
  sub_1C878656C(v40, v1 + v41, &qword_1EC2B6540, &unk_1C8BE7A40);
  swift_endAccess();
  v42 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__nluRequestID;
  swift_beginAccess();
  v43 = v53;
  sub_1C87867A0(a1 + v42, v53, &qword_1EC2B64B0, &unk_1C8BF3F40);

  v44 = v50;
  swift_beginAccess();
  sub_1C878656C(v43, v1 + v44, &qword_1EC2B64B0, &unk_1C8BF3F40);
  swift_endAccess();
  return v1;
}

uint64_t sub_1C87F6AA8()
{
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__requestID, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__tokenisedUtterance, &qword_1EC2B6538, &qword_1C8C12C80);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__embeddings, &qword_1EC2B64A8, &unk_1C8BE7670);

  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__turnInput, &qword_1EC2B6038, &unk_1C8BE8850);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__parser, &qword_1EC2B6540, &unk_1C8BE7A40);
  sub_1C8778ED8(v0 + OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__nluRequestID, &qword_1EC2B64B0, &unk_1C8BF3F40);
  return v0;
}

uint64_t sub_1C87F6B90()
{
  v0 = sub_1C87F6AA8();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v8 = *(type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserRequest(0) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(v3 + v8);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserRequest._StorageClass(0);
    swift_allocObject();
    v11 = OUTLINED_FUNCTION_2();
    v10 = sub_1C87F6444(v11);
    *(v4 + v8) = v10;
  }

  return sub_1C87F6C84(v10, a1, a2, a3);
}

uint64_t sub_1C87F6C84(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
        sub_1C87F6DB8(a2, a1, a3, a4);
        break;
      case 2:
        sub_1C87F6E94(a2, a1, a3, a4);
        break;
      case 3:
        sub_1C87F6F70(a2, a1, a3, a4);
        break;
      case 4:
        sub_1C87F704C(a2, a1, a3, a4);
        break;
      case 5:
        sub_1C87F7128(a2, a1, a3, a4);
        break;
      case 6:
        sub_1C87F7204(a2, a1, a3, a4);
        break;
      case 7:
        sub_1C87F72E0(a2, a1, a3, a4);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C87F6DB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_UUID(0);
  sub_1C8776398(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID, &protocol conformance descriptor for Siri_Nlu_External_UUID);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C87F6E94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation(0);
  sub_1C8776398(&qword_1EC2B45E8, type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation, &protocol conformance descriptor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C87F6F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
  sub_1C8776398(&qword_1EC2B47B8, type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor, &protocol conformance descriptor for Siri_Nlu_Internal_NLv4EmbeddingTensor);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C87F704C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0);
  sub_1C8776398(&qword_1EC2B4A28, type metadata accessor for Siri_Nlu_Internal_MatchingSpan, &protocol conformance descriptor for Siri_Nlu_Internal_MatchingSpan);
  sub_1C8BD4C6C();
  return swift_endAccess();
}

uint64_t sub_1C87F7128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_TurnInput(0);
  sub_1C8776398(&qword_1EDACC908, type metadata accessor for Siri_Nlu_External_TurnInput, &protocol conformance descriptor for Siri_Nlu_External_TurnInput);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C87F7204(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_Parser(0);
  sub_1C8776398(&qword_1EDACCDA0, type metadata accessor for Siri_Nlu_External_Parser, &protocol conformance descriptor for Siri_Nlu_External_Parser);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t sub_1C87F72E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Siri_Nlu_External_RequestID(0);
  sub_1C8776398(&qword_1EDACCBA8, type metadata accessor for Siri_Nlu_External_RequestID, &protocol conformance descriptor for Siri_Nlu_External_RequestID);
  sub_1C8BD4C7C();
  return swift_endAccess();
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserRequest(0);
  result = sub_1C87F7428(*(v3 + *(v8 + 20)), a1, a2, a3);
  if (!v4)
  {
    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t sub_1C87F7428(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
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
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6540, &unk_1C8BE7A40);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v55 = v43 - v9;
  v47 = type metadata accessor for Siri_Nlu_External_Parser(0);
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
  v25 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__requestID;
  swift_beginAccess();
  sub_1C87867A0(a1 + v25, v23, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if (__swift_getEnumTagSinglePayload(v23, 1, v24) == 1)
  {
    sub_1C8778ED8(v23, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    v26 = v56;
  }

  else
  {
    sub_1C87F97EC();
    sub_1C8776398(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID, &protocol conformance descriptor for Siri_Nlu_External_UUID);
    v27 = v56;
    sub_1C8BD4E2C();
    v26 = v27;
    result = sub_1C87F9894();
    if (v27)
    {
      return result;
    }
  }

  v29 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__tokenisedUtterance;
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
    sub_1C87F97EC();
    sub_1C8776398(&qword_1EC2B45E8, type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation, &protocol conformance descriptor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation);
    sub_1C8BD4E2C();
    result = sub_1C87F9894();
    v32 = v54;
    if (v26)
    {
      return result;
    }
  }

  v33 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__embeddings;
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
    sub_1C87F97EC();
    sub_1C8776398(&qword_1EC2B47B8, type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor, &protocol conformance descriptor for Siri_Nlu_Internal_NLv4EmbeddingTensor);
    sub_1C8BD4E2C();
    result = sub_1C87F9894();
    if (v26)
    {
      return result;
    }

    v31 = v55;
  }

  v38 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__matchingSpans;
  swift_beginAccess();
  if (!*(*(a1 + v38) + 16) || (type metadata accessor for Siri_Nlu_Internal_MatchingSpan(0), sub_1C8776398(&qword_1EC2B4A28, type metadata accessor for Siri_Nlu_Internal_MatchingSpan, &protocol conformance descriptor for Siri_Nlu_Internal_MatchingSpan), , sub_1C8BD4E0C(), result = , !v26))
  {
    v39 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__turnInput;
    swift_beginAccess();
    sub_1C87867A0(a1 + v39, v37, &qword_1EC2B6038, &unk_1C8BE8850);
    if (__swift_getEnumTagSinglePayload(v37, 1, v48) == 1)
    {
      sub_1C8778ED8(v37, &qword_1EC2B6038, &unk_1C8BE8850);
    }

    else
    {
      sub_1C87F97EC();
      sub_1C8776398(&qword_1EDACC908, type metadata accessor for Siri_Nlu_External_TurnInput, &protocol conformance descriptor for Siri_Nlu_External_TurnInput);
      sub_1C8BD4E2C();
      result = sub_1C87F9894();
      if (v26)
      {
        return result;
      }
    }

    v40 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__parser;
    swift_beginAccess();
    sub_1C87867A0(a1 + v40, v31, &qword_1EC2B6540, &unk_1C8BE7A40);
    if (__swift_getEnumTagSinglePayload(v31, 1, v47) == 1)
    {
      sub_1C8778ED8(v31, &qword_1EC2B6540, &unk_1C8BE7A40);
    }

    else
    {
      sub_1C87F97EC();
      sub_1C8776398(&qword_1EDACCDA0, type metadata accessor for Siri_Nlu_External_Parser, &protocol conformance descriptor for Siri_Nlu_External_Parser);
      sub_1C8BD4E2C();
      result = sub_1C87F9894();
      if (v26)
      {
        return result;
      }
    }

    v41 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__nluRequestID;
    swift_beginAccess();
    v42 = v44;
    sub_1C87867A0(a1 + v41, v44, &qword_1EC2B64B0, &unk_1C8BF3F40);
    if (__swift_getEnumTagSinglePayload(v42, 1, v45) == 1)
    {
      return sub_1C8778ED8(v42, &qword_1EC2B64B0, &unk_1C8BF3F40);
    }

    else
    {
      sub_1C87F97EC();
      sub_1C8776398(&qword_1EDACCBA8, type metadata accessor for Siri_Nlu_External_RequestID, &protocol conformance descriptor for Siri_Nlu_External_RequestID);
      sub_1C8BD4E2C();
      return sub_1C87F9894();
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_Itfm_ITFMParserRequest.== infix(_:_:)()
{
  v2 = OUTLINED_FUNCTION_84();
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserRequest(v2) + 20);
  v4 = *(v1 + v3);
  v5 = *(v0 + v3);
  if (v4 != v5)
  {

    v6 = sub_1C87F8088(v4, v5);

    if (!v6)
    {
      return 0;
    }
  }

  sub_1C8BD49FC();
  sub_1C8776398(&qword_1EC2B2F70, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  return sub_1C8BD517C() & 1;
}

BOOL sub_1C87F8088(uint64_t a1, uint64_t a2)
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
  v132 = type metadata accessor for Siri_Nlu_External_Parser(0);
  MEMORY[0x1EEE9AC00](v132);
  v125 = &v123 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6568, &unk_1C8BE7C10);
  MEMORY[0x1EEE9AC00](v131);
  v133 = &v123 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6540, &unk_1C8BE7A40);
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
  v44 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__requestID;
  swift_beginAccess();
  sub_1C87867A0(a1 + v44, v43, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v45 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__requestID;
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
    sub_1C87F9894();
    goto LABEL_6;
  }

  v54 = v149;
  sub_1C87F97EC();
  v55 = a1;

  v56 = static Siri_Nlu_External_UUID.== infix(_:_:)(v50, v54);
  sub_1C87F9894();
  sub_1C8778ED8(v43, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  sub_1C87F9894();
  v49 = v55;
  sub_1C8778ED8(v38, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if ((v56 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_8:
  v57 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__tokenisedUtterance;
  swift_beginAccess();
  v58 = v151;
  sub_1C87867A0(v49 + v57, v151, &qword_1EC2B6538, &qword_1C8C12C80);
  v59 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__tokenisedUtterance;
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
    sub_1C87F9894();
LABEL_13:
    v51 = &qword_1EC2B6570;
    v52 = &unk_1C8C13000;
    v53 = v61;
    goto LABEL_21;
  }

  v64 = v143;
  sub_1C87F97EC();
  static Siri_Nlu_Internal_Nlv4Parser_Tokenisation.== infix(_:_:)(v63, v64, v65, v66, v67, v68, v69, v70, v123, v124, v125, v126, v127, v128, v129, v130, v131, v132, v133, v134);
  v72 = v71;
  sub_1C87F9894();
  sub_1C8778ED8(v58, &qword_1EC2B6538, &qword_1C8C12C80);
  sub_1C87F9894();
  sub_1C8778ED8(v61, &qword_1EC2B6538, &qword_1C8C12C80);
  if ((v72 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_15:
  v73 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__embeddings;
  swift_beginAccess();
  v74 = v148;
  sub_1C87867A0(v49 + v73, v148, &qword_1EC2B64A8, &unk_1C8BE7670);
  v75 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__embeddings;
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
    sub_1C87F9894();
LABEL_20:
    v51 = &qword_1EC2B64E0;
    v52 = &unk_1C8BE7880;
    v53 = v77;
    goto LABEL_21;
  }

  v81 = v140;
  sub_1C87F97EC();
  v82 = v77;
  v83 = static Siri_Nlu_Internal_NLv4EmbeddingTensor.== infix(_:_:)(v79, v81);
  sub_1C87F9894();
  sub_1C8778ED8(v148, &qword_1EC2B64A8, &unk_1C8BE7670);
  sub_1C87F9894();
  sub_1C8778ED8(v82, &qword_1EC2B64A8, &unk_1C8BE7670);
  if ((v83 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_26:
  v84 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__matchingSpans;
  swift_beginAccess();
  v85 = *(v49 + v84);
  v86 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__matchingSpans;
  swift_beginAccess();
  v87 = *(v46 + v86);

  sub_1C87D27C0(v85, v87);
  v89 = v88;

  if ((v89 & 1) == 0)
  {
    goto LABEL_22;
  }

  v90 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__turnInput;
  swift_beginAccess();
  v91 = v141;
  sub_1C87867A0(v49 + v90, v141, &qword_1EC2B6038, &unk_1C8BE8850);
  v92 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__turnInput;
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
    sub_1C87F9894();
LABEL_32:
    v51 = &qword_1EC2B6040;
    v52 = &unk_1C8BE6CF0;
    v53 = v94;
    goto LABEL_21;
  }

  v102 = v130;
  sub_1C87F97EC();
  if (*(v100 + *(v97 + 20)) != *(v102 + *(v97 + 20)))
  {

    sub_1C88AD618();
    v104 = v103;

    if ((v104 & 1) == 0)
    {
      sub_1C87F9894();
      sub_1C8778ED8(v141, &qword_1EC2B6038, &unk_1C8BE8850);
      sub_1C87F9894();
      v53 = v96;
      v51 = &qword_1EC2B6038;
      v52 = &unk_1C8BE8850;
      goto LABEL_21;
    }
  }

  sub_1C8BD49FC();
  sub_1C8776398(&qword_1EC2B2F70, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
  v105 = sub_1C8BD517C();
  sub_1C87F9894();
  sub_1C8778ED8(v141, &qword_1EC2B6038, &unk_1C8BE8850);
  sub_1C87F9894();
  sub_1C8778ED8(v96, &qword_1EC2B6038, &unk_1C8BE8850);
  if ((v105 & 1) == 0)
  {
    goto LABEL_22;
  }

LABEL_36:
  v106 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__parser;
  swift_beginAccess();
  sub_1C87867A0(v49 + v106, v99, &qword_1EC2B6540, &unk_1C8BE7A40);
  v107 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__parser;
  swift_beginAccess();
  v108 = *(v131 + 48);
  v109 = v133;
  sub_1C87867A0(v99, v133, &qword_1EC2B6540, &unk_1C8BE7A40);
  sub_1C87867A0(v46 + v107, v109 + v108, &qword_1EC2B6540, &unk_1C8BE7A40);
  v110 = v132;
  if (__swift_getEnumTagSinglePayload(v109, 1, v132) != 1)
  {
    sub_1C87867A0(v109, v129, &qword_1EC2B6540, &unk_1C8BE7A40);
    v113 = __swift_getEnumTagSinglePayload(v109 + v108, 1, v110);
    v112 = v134;
    if (v113 == 1)
    {
      sub_1C8778ED8(v99, &qword_1EC2B6540, &unk_1C8BE7A40);
      sub_1C87F9894();
      goto LABEL_41;
    }

    sub_1C87F97EC();
    v114 = static Siri_Nlu_External_Parser.== infix(_:_:)();
    sub_1C87F9894();
    sub_1C8778ED8(v99, &qword_1EC2B6540, &unk_1C8BE7A40);
    sub_1C87F9894();
    sub_1C8778ED8(v109, &qword_1EC2B6540, &unk_1C8BE7A40);
    if (v114)
    {
      goto LABEL_43;
    }

LABEL_22:

    return 0;
  }

  sub_1C8778ED8(v99, &qword_1EC2B6540, &unk_1C8BE7A40);
  v111 = __swift_getEnumTagSinglePayload(v109 + v108, 1, v110);
  v112 = v134;
  if (v111 != 1)
  {
LABEL_41:
    v51 = &qword_1EC2B6568;
    v52 = &unk_1C8BE7C10;
    v53 = v109;
    goto LABEL_21;
  }

  sub_1C8778ED8(v109, &qword_1EC2B6540, &unk_1C8BE7A40);
LABEL_43:
  v115 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__nluRequestID;
  swift_beginAccess();
  sub_1C87867A0(v49 + v115, v112, &qword_1EC2B64B0, &unk_1C8BF3F40);
  v116 = OBJC_IVAR____TtCV12SiriNLUTypes40Siri_Nlu_Internal_Itfm_ITFMParserRequestP33_28158083020141ED3166DB03F209DF7613_StorageClass__nluRequestID;
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
    sub_1C87F9894();
LABEL_49:
    sub_1C8778ED8(v118, &qword_1EC2B64D8, &unk_1C8BEAC20);
    return 0;
  }

  v121 = v123;
  sub_1C87F97EC();
  v122 = static Siri_Nlu_External_RequestID.== infix(_:_:)(v120, v121);

  sub_1C87F9894();
  sub_1C8778ED8(v112, &qword_1EC2B64B0, &unk_1C8BF3F40);
  sub_1C87F9894();
  sub_1C8778ED8(v118, &qword_1EC2B64B0, &unk_1C8BF3F40);
  return (v122 & 1) != 0;
}

uint64_t Siri_Nlu_Internal_Itfm_ITFMParserRequest.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserRequest(0);
  sub_1C8776398(&qword_1EC2B6548, type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserRequest, &protocol conformance descriptor for Siri_Nlu_Internal_Itfm_ITFMParserRequest);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C87F967C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8776398(&qword_1EC2B6560, type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserRequest, &protocol conformance descriptor for Siri_Nlu_Internal_Itfm_ITFMParserRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C87F96FC(uint64_t a1)
{
  v2 = sub_1C8776398(&qword_1EC2B6550, type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserRequest, &protocol conformance descriptor for Siri_Nlu_Internal_Itfm_ITFMParserRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C87F976C(uint64_t a1, uint64_t a2)
{
  sub_1C8776398(&qword_1EC2B6550, type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserRequest, &protocol conformance descriptor for Siri_Nlu_Internal_Itfm_ITFMParserRequest);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C87F97EC()
{
  v1 = OUTLINED_FUNCTION_84();
  v2(v1);
  OUTLINED_FUNCTION_21();
  v3 = OUTLINED_FUNCTION_218();
  v4(v3);
  return v0;
}

uint64_t sub_1C87F9840()
{
  v1 = OUTLINED_FUNCTION_84();
  v2(v1);
  OUTLINED_FUNCTION_21();
  v3 = OUTLINED_FUNCTION_218();
  v4(v3);
  return v0;
}

uint64_t sub_1C87F9894()
{
  v1 = OUTLINED_FUNCTION_241();
  v2(v1);
  OUTLINED_FUNCTION_21();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1C87F9A30(uint64_t a1)
{
  result = sub_1C8BD49FC();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Siri_Nlu_Internal_Itfm_ITFMParserRequest._StorageClass(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

void sub_1C87F9ABC(uint64_t a1)
{
  sub_1C87F9D28(319, qword_1EDACE198, type metadata accessor for Siri_Nlu_External_UUID);
  if (v1 <= 0x3F)
  {
    sub_1C87F9D28(319, &qword_1EC2B45C8, type metadata accessor for Siri_Nlu_Internal_Nlv4Parser_Tokenisation);
    if (v2 <= 0x3F)
    {
      sub_1C87F9D28(319, &qword_1EC2B4798, type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor);
      if (v3 <= 0x3F)
      {
        sub_1C87F9D28(319, qword_1EDACC8C0, type metadata accessor for Siri_Nlu_External_TurnInput);
        if (v4 <= 0x3F)
        {
          sub_1C87F9D28(319, qword_1EDACE0E8, type metadata accessor for Siri_Nlu_External_Parser);
          if (v5 <= 0x3F)
          {
            sub_1C87F9D28(319, qword_1EDACDC48, type metadata accessor for Siri_Nlu_External_RequestID);
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

void sub_1C87F9D28(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t Siri_Nlu_Internal_Spanmatch_SpanMatchRequest.tokenChain.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  matched = type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest(v5);
  v7 = OUTLINED_FUNCTION_13(*(matched + 20));
  sub_1C8786744(v7, v8, &qword_1EC2B6048, &unk_1C8BE6F80);
  v9 = type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  OUTLINED_FUNCTION_65(v1);
  if (v10)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v11 = (a1 + *(v9 + 24));
    *v11 = 0;
    v11[1] = 0;
    v12 = (a1 + *(v9 + 28));
    *v12 = 0;
    v12[1] = 0;
    result = OUTLINED_FUNCTION_65(v1);
    if (!v10)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B6048, &unk_1C8BE6F80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_4();
    return sub_1C8797750(v1, a1);
  }

  return result;
}

uint64_t type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest(uint64_t a1)
{
  result = qword_1EC2B65B0;
  if (!qword_1EC2B65B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Spanmatch_SpanMatchRequest.tokenChain.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest(v2) + 20);
  sub_1C8778ED8(v1 + v3, &qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_1_4();
  sub_1C8797750(v0, v1 + v3);
  type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  v4 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void (*Siri_Nlu_Internal_Spanmatch_SpanMatchRequest.tokenChain.modify())(uint64_t **a1, uint64_t a2)
{
  v1 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_18_1(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_80(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  *(v0 + 8) = v4;
  v5 = type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  *(v0 + 16) = v5;
  OUTLINED_FUNCTION_21();
  v7 = *(v6 + 64);
  *(v0 + 24) = __swift_coroFrameAllocStub(v7);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = *(OUTLINED_FUNCTION_22_2(v8) + 20);
  *(v0 + 40) = v9;
  v10 = OUTLINED_FUNCTION_13(v9);
  sub_1C8786744(v10, v11, &qword_1EC2B6048, &unk_1C8BE6F80);
  v12 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v12, v13, v5);
  if (v14)
  {
    *v7 = MEMORY[0x1E69E7CC0];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v15 = (v7 + *(v5 + 24));
    *v15 = 0;
    v15[1] = 0;
    v16 = (v7 + *(v5 + 28));
    *v16 = 0;
    v16[1] = 0;
    v17 = OUTLINED_FUNCTION_120();
    OUTLINED_FUNCTION_76(v17, v18, v5);
    if (!v14)
    {
      sub_1C8778ED8(v4, &qword_1EC2B6048, &unk_1C8BE6F80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_4();
    sub_1C8797750(v4, v7);
  }

  return sub_1C87FA0D8;
}

uint64_t Siri_Nlu_Internal_Spanmatch_SpanMatchRequest.hasTokenChain.getter()
{
  v1 = OUTLINED_FUNCTION_12();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  matched = type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest(v5);
  v7 = OUTLINED_FUNCTION_13(*(matched + 20));
  sub_1C8786744(v7, v8, &qword_1EC2B6048, &unk_1C8BE6F80);
  v9 = type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  OUTLINED_FUNCTION_10(v9);
  return v0;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Spanmatch_SpanMatchRequest.clearTokenChain()()
{
  matched = type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest(0);
  sub_1C8778ED8(v0 + *(matched + 20), &qword_1EC2B6048, &unk_1C8BE6F80);
  type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_Spanmatch_SpanMatchRequest.nlContext.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6000, &qword_1C8BF5050);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v15 - v5;
  matched = type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest(0);
  sub_1C8786744(v1 + *(matched + 24), v6, &qword_1EC2B6000, &qword_1C8BF5050);
  type metadata accessor for Siri_Nlu_External_NLContext(0);
  OUTLINED_FUNCTION_65(v6);
  if (v8)
  {
    v9 = MEMORY[0x1E69E7CC0];
    *a1 = MEMORY[0x1E69E7CC0];
    a1[1] = v9;
    a1[2] = v9;
    a1[3] = v9;
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v10, v11, v12, v13);
    result = OUTLINED_FUNCTION_65(v6);
    if (!v8)
    {
      return sub_1C8778ED8(v6, &qword_1EC2B6000, &qword_1C8BF5050);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_7();
    return sub_1C8797750(v6, a1);
  }

  return result;
}

uint64_t sub_1C87FA314(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v9 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_80(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v14 - v11;
  sub_1C87FACAC(a1, &v14 - v11);
  return a7(v12);
}

uint64_t Siri_Nlu_Internal_Spanmatch_SpanMatchRequest.nlContext.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest(v2) + 24);
  sub_1C8778ED8(v1 + v3, &qword_1EC2B6000, &qword_1C8BF5050);
  OUTLINED_FUNCTION_2_7();
  sub_1C8797750(v0, v1 + v3);
  type metadata accessor for Siri_Nlu_External_NLContext(0);
  v4 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void (*Siri_Nlu_Internal_Spanmatch_SpanMatchRequest.nlContext.modify())(uint64_t **a1, uint64_t a2)
{
  v2 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6000, &qword_1C8BF5050);
  OUTLINED_FUNCTION_80(v3);
  v5 = __swift_coroFrameAllocStub(*(v4 + 64));
  *(v1 + 8) = v5;
  v6 = type metadata accessor for Siri_Nlu_External_NLContext(0);
  *(v1 + 16) = v6;
  OUTLINED_FUNCTION_21();
  v8 = *(v7 + 64);
  *(v1 + 24) = __swift_coroFrameAllocStub(v8);
  v9 = __swift_coroFrameAllocStub(v8);
  v10 = *(OUTLINED_FUNCTION_22_2(v9) + 24);
  *(v1 + 40) = v10;
  sub_1C8786744(v0 + v10, v5, &qword_1EC2B6000, &qword_1C8BF5050);
  OUTLINED_FUNCTION_76(v5, 1, v6);
  if (v11)
  {
    v12 = MEMORY[0x1E69E7CC0];
    *v8 = MEMORY[0x1E69E7CC0];
    v8[1] = v12;
    v8[2] = v12;
    v8[3] = v12;
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    type metadata accessor for Siri_Nlu_External_SystemDialogActGroup(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
    OUTLINED_FUNCTION_76(v5, 1, v6);
    if (!v11)
    {
      sub_1C8778ED8(v5, &qword_1EC2B6000, &qword_1C8BF5050);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_7();
    sub_1C8797750(v5, v8);
  }

  return sub_1C87FA5AC;
}

void sub_1C87FA5D4(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v7 = *a1;
  v8 = *(*a1 + 10);
  v9 = (*a1)[3];
  v10 = (*a1)[4];
  v11 = (*a1)[1];
  v12 = **a1;
  if (a2)
  {
    sub_1C87FACAC((*a1)[4], v9);
    sub_1C8778ED8(v12 + v8, a3, a4);
    sub_1C8797750(v9, v12 + v8);
    OUTLINED_FUNCTION_26_1();
    sub_1C87FAD04();
  }

  else
  {
    sub_1C8778ED8(v12 + v8, a3, a4);
    sub_1C8797750(v10, v12 + v8);
    OUTLINED_FUNCTION_26_1();
  }

  free(v10);
  free(v9);
  free(v11);

  free(v7);
}

uint64_t Siri_Nlu_Internal_Spanmatch_SpanMatchRequest.hasNlContext.getter()
{
  v1 = OUTLINED_FUNCTION_12();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  matched = type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest(v5);
  v7 = OUTLINED_FUNCTION_13(*(matched + 24));
  sub_1C8786744(v7, v8, &qword_1EC2B6000, &qword_1C8BF5050);
  v9 = type metadata accessor for Siri_Nlu_External_NLContext(0);
  OUTLINED_FUNCTION_10(v9);
  return v0;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Spanmatch_SpanMatchRequest.clearNlContext()()
{
  matched = type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest(0);
  sub_1C8778ED8(v0 + *(matched + 24), &qword_1EC2B6000, &qword_1C8BF5050);
  type metadata accessor for Siri_Nlu_External_NLContext(0);
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_Spanmatch_SpanMatchRequest.utterance.getter()
{
  type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest(0);

  return OUTLINED_FUNCTION_218();
}

uint64_t sub_1C87FA804(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_Spanmatch_SpanMatchRequest.utterance.setter(v1, v2);
}

uint64_t Siri_Nlu_Internal_Spanmatch_SpanMatchRequest.utterance.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t Siri_Nlu_Internal_Spanmatch_SpanMatchRequest.utterance.modify(void *a1)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[2] = v1;
  v4 = *(type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest(0) + 28);
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

  return OUTLINED_FUNCTION_12();
}

Swift::Void __swiftcall Siri_Nlu_Internal_Spanmatch_SpanMatchRequest.clearUtterance()()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest(0) + 28));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Siri_Nlu_Internal_Spanmatch_SpanMatchRequest.asrID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  matched = type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest(v5);
  v7 = OUTLINED_FUNCTION_13(*(matched + 32));
  sub_1C8786744(v7, v8, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v9 = type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_65(v1);
  if (v10)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_313(a1 + v9[5]);
    OUTLINED_FUNCTION_313(a1 + v9[6]);
    *(a1 + v9[7]) = 6;
    result = OUTLINED_FUNCTION_65(v1);
    if (!v10)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_2();
    return sub_1C8797750(v1, a1);
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Spanmatch_SpanMatchRequest.asrID.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest(v2) + 32);
  sub_1C8778ED8(v1 + v3, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_3_2();
  sub_1C8797750(v0, v1 + v3);
  type metadata accessor for Siri_Nlu_External_UUID(0);
  v4 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void (*Siri_Nlu_Internal_Spanmatch_SpanMatchRequest.asrID.modify())(uint64_t **a1, char a2)
{
  v1 = __swift_coroFrameAllocStub(0x30uLL);
  OUTLINED_FUNCTION_18_1(v1);
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v2);
  v4 = __swift_coroFrameAllocStub(*(v3 + 64));
  *(v0 + 8) = v4;
  v5 = type metadata accessor for Siri_Nlu_External_UUID(0);
  *(v0 + 16) = v5;
  OUTLINED_FUNCTION_21();
  v7 = *(v6 + 64);
  *(v0 + 24) = __swift_coroFrameAllocStub(v7);
  v8 = __swift_coroFrameAllocStub(v7);
  v9 = *(OUTLINED_FUNCTION_22_2(v8) + 32);
  *(v0 + 40) = v9;
  v10 = OUTLINED_FUNCTION_13(v9);
  sub_1C8786744(v10, v11, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v12 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v12, v13, v5);
  if (v14)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_313(v7 + v5[5]);
    OUTLINED_FUNCTION_313(v7 + v5[6]);
    *(v7 + v5[7]) = 6;
    v15 = OUTLINED_FUNCTION_120();
    OUTLINED_FUNCTION_76(v15, v16, v5);
    if (!v14)
    {
      sub_1C8778ED8(v4, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_3_2();
    sub_1C8797750(v4, v7);
  }

  return sub_1C87FAC84;
}

uint64_t sub_1C87FACAC(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_17();
  v4(v3);
  OUTLINED_FUNCTION_21();
  v5 = OUTLINED_FUNCTION_218();
  v6(v5);
  return a2;
}

uint64_t sub_1C87FAD04()
{
  v1 = OUTLINED_FUNCTION_241();
  v2(v1);
  OUTLINED_FUNCTION_21();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t Siri_Nlu_Internal_Spanmatch_SpanMatchRequest.hasAsrID.getter()
{
  v1 = OUTLINED_FUNCTION_12();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  matched = type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest(v5);
  v7 = OUTLINED_FUNCTION_13(*(matched + 32));
  sub_1C8786744(v7, v8, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v9 = type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_10(v9);
  return v0;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Spanmatch_SpanMatchRequest.clearAsrID()()
{
  matched = type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest(0);
  sub_1C8778ED8(v0 + *(matched + 32), &qword_1EC2B5EC8, &unk_1C8BE68C0);
  type metadata accessor for Siri_Nlu_External_UUID(0);
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_Internal_Spanmatch_SpanMatchRequest.unknownFields.getter()
{
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v0 = OUTLINED_FUNCTION_218();

  return v1(v0);
}

uint64_t Siri_Nlu_Internal_Spanmatch_SpanMatchRequest.unknownFields.setter()
{
  OUTLINED_FUNCTION_241();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t Siri_Nlu_Internal_Spanmatch_SpanMatchRequest.init()@<X0>(uint64_t a2@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  matched = type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest(0);
  type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
  type metadata accessor for Siri_Nlu_External_NLContext(0);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
  v12 = (a2 + *(matched + 28));
  *v12 = 0;
  v12[1] = 0;
  type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_5();

  return __swift_storeEnumTagSinglePayload(v13, v14, v15, v16);
}

uint64_t sub_1C87FAFDC()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B6578);
  __swift_project_value_buffer(v0, qword_1EC2B6578);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "token_chain";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "nl_context";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "utterance";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "asrId";
  *(v14 + 1) = 5;
  v14[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_Internal_Spanmatch_SpanMatchRequest._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B4CC8 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2B6578);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Siri_Nlu_Internal_Spanmatch_SpanMatchRequest.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
        sub_1C87FB384(v6, v7, v8, v9);
        break;
      case 2:
        v18 = OUTLINED_FUNCTION_8();
        sub_1C87FB438(v18, v19, v20, v21);
        break;
      case 3:
        v10 = OUTLINED_FUNCTION_8();
        sub_1C87FB4EC(v10, v11, v12, v13);
        break;
      case 4:
        v14 = OUTLINED_FUNCTION_8();
        sub_1C87FB550(v14, v15, v16, v17);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1C87FB384(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest(0);
  type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  sub_1C87A4AE0(&qword_1EC2B4B38, type metadata accessor for Siri_Nlu_Internal_TokenChain, &protocol conformance descriptor for Siri_Nlu_Internal_TokenChain);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C87FB438(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest(0);
  type metadata accessor for Siri_Nlu_External_NLContext(0);
  sub_1C87A4AE0(&qword_1EDACCC80, type metadata accessor for Siri_Nlu_External_NLContext, &protocol conformance descriptor for Siri_Nlu_External_NLContext);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C87FB550(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest(0);
  type metadata accessor for Siri_Nlu_External_UUID(0);
  sub_1C87A4AE0(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID, &protocol conformance descriptor for Siri_Nlu_External_UUID);
  return sub_1C8BD4C7C();
}

uint64_t Siri_Nlu_Internal_Spanmatch_SpanMatchRequest.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v41 = a2;
  v42 = a3;
  v43 = a1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_81();
  v36 = v7;
  v37 = type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_33();
  v35 = v10 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6000, &qword_1C8BF5050);
  OUTLINED_FUNCTION_80(v11);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v35 - v13;
  v39 = type metadata accessor for Siri_Nlu_External_NLContext(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_33();
  v38 = v17 - v16;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_80(v18);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v19);
  v20 = OUTLINED_FUNCTION_74();
  v21 = type metadata accessor for Siri_Nlu_Internal_TokenChain(v20);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_33();
  v25 = v24 - v23;
  matched = type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest(0);
  v27 = OUTLINED_FUNCTION_13(matched[5]);
  sub_1C8786744(v27, v28, &qword_1EC2B6048, &unk_1C8BE6F80);
  v29 = OUTLINED_FUNCTION_120();
  if (__swift_getEnumTagSinglePayload(v29, v30, v21) == 1)
  {
    sub_1C8778ED8(v4, &qword_1EC2B6048, &unk_1C8BE6F80);
    v31 = v40;
  }

  else
  {
    sub_1C8797750(v4, v25);
    sub_1C87A4AE0(&qword_1EC2B4B38, type metadata accessor for Siri_Nlu_Internal_TokenChain, &protocol conformance descriptor for Siri_Nlu_Internal_TokenChain);
    v32 = v40;
    sub_1C8BD4E2C();
    v31 = v32;
    result = sub_1C87FAD04();
    if (v32)
    {
      return result;
    }
  }

  sub_1C8786744(v3 + matched[6], v14, &qword_1EC2B6000, &qword_1C8BF5050);
  if (__swift_getEnumTagSinglePayload(v14, 1, v39) == 1)
  {
    sub_1C8778ED8(v14, &qword_1EC2B6000, &qword_1C8BF5050);
  }

  else
  {
    sub_1C8797750(v14, v38);
    sub_1C87A4AE0(&qword_1EDACCC80, type metadata accessor for Siri_Nlu_External_NLContext, &protocol conformance descriptor for Siri_Nlu_External_NLContext);
    sub_1C8BD4E2C();
    result = sub_1C87FAD04();
    if (v31)
    {
      return result;
    }
  }

  if (!*(v3 + matched[7] + 8) || (result = sub_1C8BD4DDC(), !v31))
  {
    v34 = v36;
    sub_1C8786744(v3 + matched[8], v36, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    if (__swift_getEnumTagSinglePayload(v34, 1, v37) == 1)
    {
      sub_1C8778ED8(v34, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }

    else
    {
      sub_1C8797750(v34, v35);
      sub_1C87A4AE0(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID, &protocol conformance descriptor for Siri_Nlu_External_UUID);
      sub_1C8BD4E2C();
      result = sub_1C87FAD04();
      if (v31)
      {
        return result;
      }
    }

    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_Spanmatch_SpanMatchRequest.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v81 = a2;
  v73 = type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_33();
  v70 = v5 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_81();
  v71 = v8;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_81();
  v74 = v10;
  v79 = type metadata accessor for Siri_Nlu_External_NLContext(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_33();
  v75 = v13 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6000, &qword_1C8BF5050);
  OUTLINED_FUNCTION_80(v14);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_81();
  v76 = v16;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6008, &unk_1C8BE6CC0);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v70 - v18;
  v20 = type metadata accessor for Siri_Nlu_Internal_TokenChain(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_33();
  v24 = v23 - v22;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_80(v25);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v70 - v27;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6050, &qword_1C8BE6D00) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v70 - v31;
  matched = type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest(0);
  v33 = *(matched + 20);
  v34 = *(v29 + 56);
  v80 = a1;
  sub_1C8786744(a1 + v33, v32, &qword_1EC2B6048, &unk_1C8BE6F80);
  v35 = v81 + v33;
  v36 = v81;
  sub_1C8786744(v35, &v32[v34], &qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_76(v32, 1, v20);
  if (v37)
  {
    OUTLINED_FUNCTION_76(&v32[v34], 1, v20);
    if (v37)
    {
      sub_1C8778ED8(v32, &qword_1EC2B6048, &unk_1C8BE6F80);
      goto LABEL_11;
    }

LABEL_9:
    v38 = &qword_1EC2B6050;
    v39 = &qword_1C8BE6D00;
    v40 = v32;
LABEL_20:
    sub_1C8778ED8(v40, v38, v39);
    goto LABEL_21;
  }

  sub_1C8786744(v32, v28, &qword_1EC2B6048, &unk_1C8BE6F80);
  OUTLINED_FUNCTION_76(&v32[v34], 1, v20);
  if (v37)
  {
    sub_1C87FAD04();
    goto LABEL_9;
  }

  sub_1C8797750(&v32[v34], v24);
  v41 = static Siri_Nlu_Internal_TokenChain.== infix(_:_:)(v28, v24);
  OUTLINED_FUNCTION_12();
  sub_1C87FAD04();
  sub_1C87FAD04();
  sub_1C8778ED8(v32, &qword_1EC2B6048, &unk_1C8BE6F80);
  if ((v41 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v42 = matched;
  v43 = *(matched + 24);
  v44 = *(v77 + 48);
  v45 = v80;
  OUTLINED_FUNCTION_27(v80 + v43, v19);
  OUTLINED_FUNCTION_27(v36 + v43, &v19[v44]);
  v46 = v79;
  OUTLINED_FUNCTION_76(v19, 1, v79);
  if (v37)
  {
    OUTLINED_FUNCTION_76(&v19[v44], 1, v46);
    if (v37)
    {
      sub_1C8778ED8(v19, &qword_1EC2B6000, &qword_1C8BF5050);
      goto LABEL_24;
    }

    goto LABEL_19;
  }

  sub_1C8786744(v19, v76, &qword_1EC2B6000, &qword_1C8BF5050);
  OUTLINED_FUNCTION_76(&v19[v44], 1, v46);
  if (v47)
  {
    sub_1C87FAD04();
LABEL_19:
    v38 = &qword_1EC2B6008;
    v39 = &unk_1C8BE6CC0;
    v40 = v19;
    goto LABEL_20;
  }

  sub_1C8797750(&v19[v44], v75);
  static Siri_Nlu_External_NLContext.== infix(_:_:)();
  v51 = v50;
  sub_1C87FAD04();
  sub_1C87FAD04();
  sub_1C8778ED8(v19, &qword_1EC2B6000, &qword_1C8BF5050);
  if ((v51 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_24:
  v52 = *(v42 + 28);
  v53 = (v45 + v52);
  v54 = *(v45 + v52 + 8);
  v55 = (v36 + v52);
  v56 = v55[1];
  if (v54)
  {
    if (!v56)
    {
      goto LABEL_21;
    }

    v57 = *v53 == *v55 && v54 == v56;
    if (!v57 && (sub_1C8BD529C() & 1) == 0)
    {
      goto LABEL_21;
    }
  }

  else if (v56)
  {
    goto LABEL_21;
  }

  v58 = *(v42 + 32);
  v59 = *(v72 + 48);
  v60 = v74;
  OUTLINED_FUNCTION_27(v45 + v58, v74);
  v61 = v36 + v58;
  v62 = v60;
  OUTLINED_FUNCTION_27(v61, v60 + v59);
  v63 = v73;
  OUTLINED_FUNCTION_76(v60, 1, v73);
  if (v37)
  {
    OUTLINED_FUNCTION_76(v60 + v59, 1, v63);
    if (v37)
    {
      sub_1C8778ED8(v60, &qword_1EC2B5EC8, &unk_1C8BE68C0);
LABEL_43:
      sub_1C8BD49FC();
      sub_1C87A4AE0(&qword_1EC2B2F70, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v48 = sub_1C8BD517C();
      return v48 & 1;
    }

    goto LABEL_41;
  }

  v64 = v60;
  v65 = v71;
  sub_1C8786744(v64, v71, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_76(v62 + v59, 1, v63);
  if (v66)
  {
    sub_1C87FAD04();
LABEL_41:
    v38 = &qword_1EC2B5EE8;
    v39 = &unk_1C8BE6F90;
    v40 = v62;
    goto LABEL_20;
  }

  v67 = v62 + v59;
  v68 = v70;
  sub_1C8797750(v67, v70);
  v69 = static Siri_Nlu_External_UUID.== infix(_:_:)(v65, v68);
  sub_1C87FAD04();
  sub_1C87FAD04();
  sub_1C8778ED8(v62, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if (v69)
  {
    goto LABEL_43;
  }

LABEL_21:
  v48 = 0;
  return v48 & 1;
}

uint64_t Siri_Nlu_Internal_Spanmatch_SpanMatchRequest.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest(0);
  sub_1C87A4AE0(&qword_1EC2B6590, type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest, &protocol conformance descriptor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C87FC348(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87A4AE0(&qword_1EC2B65C0, type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest, &protocol conformance descriptor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C87FC3C8(uint64_t a1)
{
  v2 = sub_1C87A4AE0(&qword_1EC2B65A0, type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest, &protocol conformance descriptor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C87FC438(uint64_t a1, uint64_t a2)
{
  sub_1C87A4AE0(&qword_1EC2B65A0, type metadata accessor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest, &protocol conformance descriptor for Siri_Nlu_Internal_Spanmatch_SpanMatchRequest);

  return sub_1C8BD4CFC();
}

void sub_1C87FC600(uint64_t a1)
{
  sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    sub_1C87FC720(319, &qword_1EC2B4B18, type metadata accessor for Siri_Nlu_Internal_TokenChain);
    if (v2 <= 0x3F)
    {
      sub_1C87FC720(319, qword_1EDACCC28, type metadata accessor for Siri_Nlu_External_NLContext);
      if (v3 <= 0x3F)
      {
        sub_1C87E8A54();
        if (v4 <= 0x3F)
        {
          sub_1C87FC720(319, qword_1EDACE198, type metadata accessor for Siri_Nlu_External_UUID);
          if (v5 <= 0x3F)
          {
            swift_cvw_initStructMetadataWithLayoutString();
          }
        }
      }
    }
  }
}

void sub_1C87FC720(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse.subwordTokenChain.getter@<X0>(void *a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B65E0, &qword_1C8BE7DD0);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_7_6();
  v6 = OUTLINED_FUNCTION_13(*(v5 + 20));
  sub_1C8786744(v6, v7, &qword_1EC2B65E0, &qword_1C8BE7DD0);
  v8 = type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain(0);
  OUTLINED_FUNCTION_1_0();
  if (v9)
  {
    *a1 = MEMORY[0x1E69E7CC0];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v10 = (a1 + *(v8 + 24));
    *v10 = 0;
    v10[1] = 0;
    result = OUTLINED_FUNCTION_1_0();
    if (!v9)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B65E0, &qword_1C8BE7DD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
    v11 = OUTLINED_FUNCTION_121();
    return sub_1C87FCE30(v11, v12);
  }

  return result;
}

uint64_t type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse(uint64_t a1)
{
  result = qword_1EC2B6628;
  if (!qword_1EC2B6628)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse.subwordTokenChain.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  v3 = *(type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse(v2) + 20);
  sub_1C8778ED8(v1 + v3, &qword_1EC2B65E0, &qword_1C8BE7DD0);
  OUTLINED_FUNCTION_1_5();
  sub_1C87FCE30(v0, v1 + v3);
  type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain(0);
  OUTLINED_FUNCTION_19_1();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

void (*Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse.subwordTokenChain.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B65E0, &qword_1C8BE7DD0);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_21();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse(0) + 20);
  *(v3 + 10) = v11;
  v12 = OUTLINED_FUNCTION_13(v11);
  sub_1C8786744(v12, v13, &qword_1EC2B65E0, &qword_1C8BE7DD0);
  v14 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v14, v15, v7);
  if (v16)
  {
    *v10 = MEMORY[0x1E69E7CC0];
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v17 = (v10 + *(v7 + 24));
    *v17 = 0;
    v17[1] = 0;
    v18 = OUTLINED_FUNCTION_120();
    OUTLINED_FUNCTION_76(v18, v19, v7);
    if (!v16)
    {
      sub_1C8778ED8(v6, &qword_1EC2B65E0, &qword_1C8BE7DD0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_1_5();
    sub_1C87FCE30(v6, v10);
  }

  return sub_1C87FCAAC;
}

uint64_t Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse.hasSubwordTokenChain.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B65E0, &qword_1C8BE7DD0);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_7_6();
  v3 = OUTLINED_FUNCTION_13(*(v2 + 20));
  sub_1C8786744(v3, v4, &qword_1EC2B65E0, &qword_1C8BE7DD0);
  type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain(0);
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

  v10 = OUTLINED_FUNCTION_121();
  sub_1C8778ED8(v10, v11, &qword_1C8BE7DD0);
  return v9;
}

Swift::Void __swiftcall Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse.clearSubwordTokenChain()()
{
  v1 = type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse(0);
  sub_1C8778ED8(v0 + *(v1 + 20), &qword_1EC2B65E0, &qword_1C8BE7DD0);
  type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain(0);
  OUTLINED_FUNCTION_5();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse.subwordTokenEmbedding.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B65E8, &qword_1C8BE7DD8);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_7_6();
  v6 = OUTLINED_FUNCTION_13(*(v5 + 24));
  sub_1C8786744(v6, v7, &qword_1EC2B65E8, &qword_1C8BE7DD8);
  v8 = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(0);
  OUTLINED_FUNCTION_1_0();
  if (v9)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v10 = (a1 + v8[5]);
    *v10 = 0;
    v10[1] = 0;
    v11 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v11);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v11);
    v18 = a1 + v8[8];
    *v18 = 0;
    *(v18 + 8) = 1;
    *(a1 + v8[9]) = 2;
    result = OUTLINED_FUNCTION_1_0();
    if (!v9)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B65E8, &qword_1C8BE7DD8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_8();
    v19 = OUTLINED_FUNCTION_121();
    return sub_1C87FCE30(v19, v20);
  }

  return result;
}

uint64_t sub_1C87FCD18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v9 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_80(v9);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v14 - v11;
  sub_1C87FD188(a1, &v14 - v11);
  return a7(v12);
}

uint64_t Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse.subwordTokenEmbedding.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  v3 = *(type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse(v2) + 24);
  sub_1C8778ED8(v1 + v3, &qword_1EC2B65E8, &qword_1C8BE7DD8);
  OUTLINED_FUNCTION_2_8();
  sub_1C87FCE30(v0, v1 + v3);
  type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(0);
  OUTLINED_FUNCTION_19_1();

  return __swift_storeEnumTagSinglePayload(v4, v5, v6, v7);
}

uint64_t sub_1C87FCE30(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_17();
  v4(v3);
  OUTLINED_FUNCTION_21();
  v5 = OUTLINED_FUNCTION_218();
  v6(v5);
  return a2;
}

void (*Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse.subwordTokenEmbedding.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B65E8, &qword_1C8BE7DD8);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_21();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse(0) + 24);
  *(v3 + 10) = v11;
  sub_1C8786744(v1 + v11, v6, &qword_1EC2B65E8, &qword_1C8BE7DD8);
  OUTLINED_FUNCTION_76(v6, 1, v7);
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v13 = &v10[v7[5]];
    *v13 = 0;
    v13[1] = 0;
    v14 = type metadata accessor for Siri_Nlu_Internal_NLv4EmbeddingTensor(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v14);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v14);
    v21 = &v10[v7[8]];
    *v21 = 0;
    v21[8] = 1;
    v10[v7[9]] = 2;
    OUTLINED_FUNCTION_76(v6, 1, v7);
    if (!v12)
    {
      sub_1C8778ED8(v6, &qword_1EC2B65E8, &qword_1C8BE7DD8);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_8();
    sub_1C87FCE30(v6, v10);
  }

  return sub_1C87FD054;
}

void sub_1C87FD07C(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v7 = *a1;
  v8 = *(*a1 + 10);
  v9 = (*a1)[3];
  v10 = (*a1)[4];
  v11 = (*a1)[1];
  v12 = (*a1)[2];
  v13 = **a1;
  if (a2)
  {
    sub_1C87FD188((*a1)[4], v9);
    sub_1C8778ED8(v13 + v8, a3, a4);
    sub_1C87FCE30(v9, v13 + v8);
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v12);
    sub_1C87FD1E0();
  }

  else
  {
    sub_1C8778ED8(v13 + v8, a3, a4);
    sub_1C87FCE30(v10, v13 + v8);
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v12);
  }

  free(v10);
  free(v9);
  free(v11);

  free(v7);
}

uint64_t sub_1C87FD188(uint64_t a1, uint64_t a2)
{
  v3 = OUTLINED_FUNCTION_17();
  v4(v3);
  OUTLINED_FUNCTION_21();
  v5 = OUTLINED_FUNCTION_218();
  v6(v5);
  return a2;
}

uint64_t sub_1C87FD1E0()
{
  v1 = OUTLINED_FUNCTION_241();
  v2(v1);
  OUTLINED_FUNCTION_21();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse.hasSubwordTokenEmbedding.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B65E8, &qword_1C8BE7DD8);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_7_6();
  v3 = OUTLINED_FUNCTION_13(*(v2 + 24));
  sub_1C8786744(v3, v4, &qword_1EC2B65E8, &qword_1C8BE7DD8);
  type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(0);
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

  v10 = OUTLINED_FUNCTION_121();
  sub_1C8778ED8(v10, v11, &qword_1C8BE7DD8);
  return v9;
}

Swift::Void __swiftcall Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse.clearSubwordTokenEmbedding()()
{
  v1 = type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse(0);
  sub_1C8778ED8(v0 + *(v1 + 24), &qword_1EC2B65E8, &qword_1C8BE7DD8);
  type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(0);
  OUTLINED_FUNCTION_5();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse.unknownFields.getter()
{
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v0 = OUTLINED_FUNCTION_218();

  return v1(v0);
}

uint64_t Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse.unknownFields.setter()
{
  OUTLINED_FUNCTION_241();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v0 = OUTLINED_FUNCTION_5_0();

  return v1(v0);
}

uint64_t Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse.init()(uint64_t a1)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse(0);
  type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain(0);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
  type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(0);
  OUTLINED_FUNCTION_5();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

uint64_t sub_1C87FD4AC()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B65C8);
  __swift_project_value_buffer(v0, qword_1EC2B65C8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "subword_token_chain";
  *(v6 + 8) = 19;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "subword_token_embedding";
  *(v10 + 1) = 23;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t static Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse._protobuf_nameMap.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1EC2B4CD0 != -1)
  {
    swift_once();
  }

  v2 = sub_1C8BD512C();
  v3 = __swift_project_value_buffer(v2, qword_1EC2B65C8);
  v4 = *(*(v2 - 8) + 16);

  return v4(a1, v3, v2);
}

uint64_t Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse.decodeMessage<A>(decoder:)(uint64_t a1, uint64_t a2, uint64_t a3)
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
      sub_1C87FD854(v10, v11, a2, a3);
    }

    else if (result == 1)
    {
      v8 = OUTLINED_FUNCTION_5_0();
      sub_1C87FD7A0(v8, v9, a2, a3);
    }
  }

  return result;
}

uint64_t sub_1C87FD7A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse(0);
  type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain(0);
  sub_1C87FE5FC(&qword_1EC2B6478, type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain, &protocol conformance descriptor for Siri_Nlu_Internal_SubwordTokenChain);
  return sub_1C8BD4C7C();
}

uint64_t sub_1C87FD854(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse(0);
  type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(0);
  sub_1C87FE5FC(&qword_1EC2B65F0, type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput, &protocol conformance descriptor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput);
  return sub_1C8BD4C7C();
}

uint64_t Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = v3;
  v31 = a3;
  v29 = a1;
  v30 = a2;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B65E8, &qword_1C8BE7DD8);
  OUTLINED_FUNCTION_80(v7);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v8);
  v9 = OUTLINED_FUNCTION_17_4();
  v27 = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(v9);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_33();
  v26 = v12 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B65E0, &qword_1C8BE7DD0);
  OUTLINED_FUNCTION_80(v13);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v25 - v15;
  v17 = type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_33();
  v21 = v20 - v19;
  v22 = type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse(0);
  v23 = *(v22 + 20);
  v28 = v6;
  sub_1C8786744(v6 + v23, v16, &qword_1EC2B65E0, &qword_1C8BE7DD0);
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_1C8778ED8(v16, &qword_1EC2B65E0, &qword_1C8BE7DD0);
  }

  else
  {
    sub_1C87FCE30(v16, v21);
    sub_1C87FE5FC(&qword_1EC2B6478, type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain, &protocol conformance descriptor for Siri_Nlu_Internal_SubwordTokenChain);
    sub_1C8BD4E2C();
    result = sub_1C87FD1E0();
    if (v4)
    {
      return result;
    }
  }

  sub_1C8786744(v28 + *(v22 + 24), v5, &qword_1EC2B65E8, &qword_1C8BE7DD8);
  if (__swift_getEnumTagSinglePayload(v5, 1, v27) == 1)
  {
    sub_1C8778ED8(v5, &qword_1EC2B65E8, &qword_1C8BE7DD8);
  }

  else
  {
    sub_1C87FCE30(v5, v26);
    sub_1C87FE5FC(&qword_1EC2B65F0, type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput, &protocol conformance descriptor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput);
    sub_1C8BD4E2C();
    result = sub_1C87FD1E0();
    if (v4)
    {
      return result;
    }
  }

  return sub_1C8BD49DC();
}

uint64_t static Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v44 = type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_33();
  v40 = v7 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B65E8, &qword_1C8BE7DD8);
  OUTLINED_FUNCTION_80(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v41 = &v39 - v10;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B65F8, &qword_1C8BE7DE0);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  v45 = &v39 - v12;
  type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_33();
  v16 = v15 - v14;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B65E0, &qword_1C8BE7DD0);
  OUTLINED_FUNCTION_80(v17);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v39 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6600, &qword_1C8BE7DE8) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v22);
  v23 = OUTLINED_FUNCTION_17_4();
  v42 = type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse(v23);
  v24 = *(v42 + 20);
  v25 = *(v21 + 56);
  v46 = a1;
  sub_1C8786744(a1 + v24, v2, &qword_1EC2B65E0, &qword_1C8BE7DD0);
  sub_1C8786744(a2 + v24, v2 + v25, &qword_1EC2B65E0, &qword_1C8BE7DD0);
  OUTLINED_FUNCTION_24(v2);
  if (v26)
  {
    OUTLINED_FUNCTION_24(v2 + v25);
    if (v26)
    {
      sub_1C8778ED8(v2, &qword_1EC2B65E0, &qword_1C8BE7DD0);
      goto LABEL_11;
    }

LABEL_9:
    v27 = &qword_1EC2B6600;
    v28 = &qword_1C8BE7DE8;
    v29 = v2;
LABEL_20:
    sub_1C8778ED8(v29, v27, v28);
    goto LABEL_21;
  }

  sub_1C8786744(v2, v20, &qword_1EC2B65E0, &qword_1C8BE7DD0);
  OUTLINED_FUNCTION_24(v2 + v25);
  if (v26)
  {
    sub_1C87FD1E0();
    goto LABEL_9;
  }

  sub_1C87FCE30(v2 + v25, v16);
  v30 = static Siri_Nlu_Internal_SubwordTokenChain.== infix(_:_:)(v20, v16);
  sub_1C87FD1E0();
  OUTLINED_FUNCTION_5_0();
  sub_1C87FD1E0();
  sub_1C8778ED8(v2, &qword_1EC2B65E0, &qword_1C8BE7DD0);
  if ((v30 & 1) == 0)
  {
    goto LABEL_21;
  }

LABEL_11:
  v31 = *(v42 + 24);
  v32 = *(v43 + 48);
  v33 = v45;
  sub_1C8786744(v46 + v31, v45, &qword_1EC2B65E8, &qword_1C8BE7DD8);
  sub_1C8786744(a2 + v31, v33 + v32, &qword_1EC2B65E8, &qword_1C8BE7DD8);
  OUTLINED_FUNCTION_76(v33, 1, v44);
  if (v26)
  {
    OUTLINED_FUNCTION_24(v33 + v32);
    if (v26)
    {
      sub_1C8778ED8(v33, &qword_1EC2B65E8, &qword_1C8BE7DD8);
LABEL_24:
      sub_1C8BD49FC();
      sub_1C87FE5FC(&qword_1EC2B2F70, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
      v35 = sub_1C8BD517C();
      return v35 & 1;
    }

    goto LABEL_19;
  }

  sub_1C8786744(v33, v41, &qword_1EC2B65E8, &qword_1C8BE7DD8);
  OUTLINED_FUNCTION_24(v33 + v32);
  if (v34)
  {
    sub_1C87FD1E0();
LABEL_19:
    v27 = &qword_1EC2B65F8;
    v28 = &qword_1C8BE7DE0;
    v29 = v33;
    goto LABEL_20;
  }

  sub_1C87FCE30(v33 + v32, v40);
  static Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput.== infix(_:_:)();
  v38 = v37;
  sub_1C87FD1E0();
  sub_1C87FD1E0();
  sub_1C8778ED8(v33, &qword_1EC2B65E8, &qword_1C8BE7DD8);
  if (v38)
  {
    goto LABEL_24;
  }

LABEL_21:
  v35 = 0;
  return v35 & 1;
}

uint64_t Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse.hashValue.getter()
{
  sub_1C8BD530C();
  type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse(0);
  sub_1C87FE5FC(&qword_1EC2B6608, type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse, &protocol conformance descriptor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C87FE21C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87FE5FC(&qword_1EC2B6648, type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse, &protocol conformance descriptor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C87FE29C(uint64_t a1)
{
  v2 = sub_1C87FE5FC(&qword_1EC2B6618, type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse, &protocol conformance descriptor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C87FE30C(uint64_t a1, uint64_t a2)
{
  sub_1C87FE5FC(&qword_1EC2B6618, type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse, &protocol conformance descriptor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse);

  return sub_1C8BD4CFC();
}

void sub_1C87FE4D4(uint64_t a1)
{
  sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    sub_1C87FE5A8(319, &qword_1EC2B6638, type metadata accessor for Siri_Nlu_Internal_SubwordTokenChain);
    if (v2 <= 0x3F)
    {
      sub_1C87FE5A8(319, &qword_1EC2B6640, type metadata accessor for Siri_Nlu_Internal_Embedding_EmbeddingTensorOutput);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C87FE5A8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

uint64_t sub_1C87FE5FC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t OUTLINED_FUNCTION_7_6()
{

  return type metadata accessor for Siri_Nlu_External_SubwordEmbedding_SubwordEmbeddingResponse(0);
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion.osRelease.getter()
{
  OUTLINED_FUNCTION_19_3();
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

uint64_t Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion.osRelease.setter(int a1)
{
  result = OUTLINED_FUNCTION_19_3();
  v5 = v1 + v4;
  *v5 = a1;
  *(v5 + 4) = 0;
  return result;
}

uint64_t (*Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion.osRelease.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  OUTLINED_FUNCTION_19_3();
  *(a1 + 12) = v3;
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_26_2();
  return sub_1C8801920;
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion.ncvNumber.getter()
{
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion(0);
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

void Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion.ncvNumber.setter(int a1)
{
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion(0);
  OUTLINED_FUNCTION_25_0();
  *v2 = a1;
  *(v2 + 4) = 0;
}

uint64_t (*Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion.ncvNumber.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  *(a1 + 12) = *(type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion(0) + 24);
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_26_2();
  return sub_1C8801920;
}

Swift::Void __swiftcall Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion.clearNcvNumber()()
{
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion(0);
  OUTLINED_FUNCTION_25_0();
  OUTLINED_FUNCTION_16_3(v0);
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion.patchNumber.getter()
{
  OUTLINED_FUNCTION_28_3();
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

uint64_t Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion.patchNumber.setter(int a1)
{
  result = OUTLINED_FUNCTION_28_3();
  v5 = v1 + v4;
  *v5 = a1;
  *(v5 + 4) = 0;
  return result;
}

uint64_t (*Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion.patchNumber.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  OUTLINED_FUNCTION_28_3();
  *(a1 + 12) = v3;
  OUTLINED_FUNCTION_4();
  OUTLINED_FUNCTION_26_2();
  return sub_1C87FE8F0;
}

uint64_t sub_1C87FE8F0(uint64_t result)
{
  v1 = *result + *(result + 12);
  *v1 = *(result + 8);
  *(v1 + 4) = 0;
  return result;
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion.boltTaskID.getter()
{
  OUTLINED_FUNCTION_29_0();
  v2 = (v0 + v1);
  if (v2[1])
  {
    v3 = *v2;
  }

  else
  {
    v3 = 0;
  }

  return v3;
}

uint64_t sub_1C87FE994(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion.boltTaskID.setter(v1, v2);
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion.boltTaskID.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_29_0();
  v6 = (v2 + v5);

  *v6 = a1;
  v6[1] = a2;
  return result;
}

void (*Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion.boltTaskID.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[2] = v1;
  OUTLINED_FUNCTION_29_0();
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

  return sub_1C87EB660;
}

Swift::Void __swiftcall Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion.clearBoltTaskID()()
{
  OUTLINED_FUNCTION_29_0();
  v2 = (v0 + v1);

  *v2 = 0;
  v2[1] = 0;
}

void Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion.init()(uint64_t a2@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_19_3();
  OUTLINED_FUNCTION_16_3(a2 + v3);
  OUTLINED_FUNCTION_24_2(*(v4 + 24));
  *(v5 + 4) = v6;
  OUTLINED_FUNCTION_24_2(*(v7 + 28));
  *(v8 + 4) = v9;
  v11 = (a2 + *(v10 + 32));
  *v11 = 0;
  v11[1] = 0;
}

uint64_t sub_1C87FEBAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6698, &qword_1C8BE7FB0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C87FEC1C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t (*Siri_Nlu_Internal_SnlpIntermediate_ITFMAssetVersion.version.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6698, &qword_1C8BE7FB0);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_21();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMAssetVersion(0);
  OUTLINED_FUNCTION_34_1(v11);
  OUTLINED_FUNCTION_72(v6);
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_7_0(v7[5]);
    OUTLINED_FUNCTION_7_0(v7[6]);
    OUTLINED_FUNCTION_7_0(v7[7]);
    v13 = &v10[v7[8]];
    *v13 = 0;
    *(v13 + 1) = 0;
    OUTLINED_FUNCTION_72(v6);
    if (!v12)
    {
      sub_1C8778ED8(v6, &qword_1EC2B6698, &qword_1C8BE7FB0);
    }
  }

  else
  {
    sub_1C87FEC1C(v6, v10);
  }

  return sub_1C87FEDF0;
}

uint64_t sub_1C87FEDF4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C87FEE58(uint64_t a1)
{
  v2 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_ITFMAssetVersion.modelType.getter()
{
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMAssetVersion(0);
  OUTLINED_FUNCTION_25_0();
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

uint64_t sub_1C87FEF34(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_SnlpIntermediate_ITFMAssetVersion.modelType.setter(v1, v2);
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_ITFMAssetVersion.modelType.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMAssetVersion(0) + 24));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void (*Siri_Nlu_Internal_SnlpIntermediate_ITFMAssetVersion.modelType.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[2] = v1;
  v4 = *(type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMAssetVersion(0) + 24);
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

  return sub_1C87E9980;
}

BOOL Siri_Nlu_Internal_SnlpIntermediate_ITFMAssetVersion.hasModelType.getter()
{
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMAssetVersion(0);
  OUTLINED_FUNCTION_25_0();
  return *(v0 + 8) != 0;
}

Swift::Void __swiftcall Siri_Nlu_Internal_SnlpIntermediate_ITFMAssetVersion.clearModelType()()
{
  v1 = (v0 + *(type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMAssetVersion(0) + 24));

  *v1 = 0;
  v1[1] = 0;
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_ITFMAssetVersion.init()@<X0>(uint64_t a2@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v3 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMAssetVersion(0);
  v4 = *(v3 + 20);
  OUTLINED_FUNCTION_35_0();
  result = __swift_storeEnumTagSinglePayload(a2 + v4, 1, 1, v5);
  v7 = (a2 + *(v3 + 24));
  *v7 = 0;
  v7[1] = 0;
  return result;
}

uint64_t sub_1C87FF158@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6698, &qword_1C8BE7FB0);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - v7;
  v9 = a1(0);
  sub_1C87FEBAC(v2 + *(v9 + 20), v8);
  v10 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion(0);
  if (__swift_getEnumTagSinglePayload(v8, 1, v10) != 1)
  {
    return sub_1C87FEC1C(v8, a2);
  }

  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_24_2(v10[5]);
  *(v11 + 4) = 1;
  OUTLINED_FUNCTION_24_2(v10[6]);
  *(v12 + 4) = 1;
  OUTLINED_FUNCTION_24_2(v10[7]);
  *(v13 + 4) = 1;
  v14 = (a2 + v10[8]);
  *v14 = 0;
  v14[1] = 0;
  result = __swift_getEnumTagSinglePayload(v8, 1, v10);
  if (result != 1)
  {
    return sub_1C8778ED8(v8, &qword_1EC2B6698, &qword_1C8BE7FB0);
  }

  return result;
}

uint64_t sub_1C87FF2A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(uint64_t))
{
  v7 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion(0);
  v8 = OUTLINED_FUNCTION_80(v7);
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_33();
  v11 = v10 - v9;
  sub_1C87FEDF4(a1, v10 - v9);
  return a5(v11);
}

uint64_t sub_1C87FF344(uint64_t a1, uint64_t (*a2)(void))
{
  v4 = *(a2(0) + 20);
  sub_1C8778ED8(v2 + v4, &qword_1EC2B6698, &qword_1C8BE7FB0);
  sub_1C87FEC1C(a1, v2 + v4);
  OUTLINED_FUNCTION_35_0();

  return __swift_storeEnumTagSinglePayload(v2 + v4, 0, 1, v5);
}

uint64_t (*Siri_Nlu_Internal_SnlpIntermediate_NLv4AssetVersion.version.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6698, &qword_1C8BE7FB0);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_21();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4AssetVersion(0);
  OUTLINED_FUNCTION_34_1(v11);
  OUTLINED_FUNCTION_72(v6);
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_7_0(v7[5]);
    OUTLINED_FUNCTION_7_0(v7[6]);
    OUTLINED_FUNCTION_7_0(v7[7]);
    v13 = &v10[v7[8]];
    *v13 = 0;
    *(v13 + 1) = 0;
    OUTLINED_FUNCTION_72(v6);
    if (!v12)
    {
      sub_1C8778ED8(v6, &qword_1EC2B6698, &qword_1C8BE7FB0);
    }
  }

  else
  {
    sub_1C87FEC1C(v6, v10);
  }

  return sub_1C8801934;
}

void sub_1C87FF518(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 10);
  v4 = (*a1)[3];
  v5 = (*a1)[4];
  v6 = (*a1)[1];
  v7 = **a1;
  if (a2)
  {
    sub_1C87FEDF4((*a1)[4], v4);
    sub_1C8778ED8(v7 + v3, &qword_1EC2B6698, &qword_1C8BE7FB0);
    sub_1C87FEC1C(v4, v7 + v3);
    OUTLINED_FUNCTION_321();
    sub_1C87FEE58(v5);
  }

  else
  {
    sub_1C8778ED8(v7 + v3, &qword_1EC2B6698, &qword_1C8BE7FB0);
    sub_1C87FEC1C(v5, v7 + v3);
    OUTLINED_FUNCTION_321();
  }

  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

BOOL sub_1C87FF610(uint64_t (*a1)(uint64_t))
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6698, &qword_1C8BE7FB0);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_45();
  v7 = a1(v6);
  sub_1C87FEBAC(v1 + *(v7 + 20), v2);
  v8 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion(0);
  v9 = __swift_getEnumTagSinglePayload(v2, 1, v8) != 1;
  sub_1C8778ED8(v2, &qword_1EC2B6698, &qword_1C8BE7FB0);
  return v9;
}

uint64_t sub_1C87FF6EC(uint64_t (*a1)(void))
{
  v2 = *(a1(0) + 20);
  sub_1C8778ED8(v1 + v2, &qword_1EC2B6698, &qword_1C8BE7FB0);
  OUTLINED_FUNCTION_35_0();

  return __swift_storeEnumTagSinglePayload(v1 + v2, 1, 1, v3);
}

uint64_t _s12SiriNLUTypes0A47_Nlu_Internal_SnlpIntermediate_ITFMAssetVersionV13unknownFields0D13SwiftProtobuf14UnknownStorageVvg_0@<X0>(uint64_t a1@<X8>)
{
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t _s12SiriNLUTypes0A47_Nlu_Internal_SnlpIntermediate_ITFMAssetVersionV13unknownFields0D13SwiftProtobuf14UnknownStorageVvs_0()
{
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v0 = OUTLINED_FUNCTION_5_0();

  return v1(v0);
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_NLv4AssetVersion.init()@<X0>(uint64_t a2@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v3 = *(type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4AssetVersion(0) + 20);
  OUTLINED_FUNCTION_35_0();

  return __swift_storeEnumTagSinglePayload(a2 + v3, 1, 1, v4);
}

uint64_t sub_1C87FF88C()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B6650);
  __swift_project_value_buffer(v0, qword_1EC2B6650);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "os_release";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ncv_number";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "patch_number";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "bolt_task_id";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion.decodeMessage<A>(decoder:)()
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
        sub_1C87FFB94(v3, v4, v5, v6);
        break;
      case 2:
        v15 = OUTLINED_FUNCTION_8();
        sub_1C87FFBF8(v15, v16, v17, v18);
        break;
      case 3:
        v7 = OUTLINED_FUNCTION_8();
        sub_1C87FFC5C(v7, v8, v9, v10);
        break;
      case 4:
        v11 = OUTLINED_FUNCTION_8();
        sub_1C87FFCC0(v11, v12, v13, v14);
        break;
      default:
        continue;
    }
  }
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_9_3();
  v3 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion(0);
  v4 = (v2 + v3[5]);
  if ((v4[1] & 1) != 0 || (result = OUTLINED_FUNCTION_30(*v4, 1), (v0 = v1) == 0))
  {
    v6 = (v2 + v3[6]);
    if ((v6[1] & 1) != 0 || (result = OUTLINED_FUNCTION_30(*v6, 2), (v0 = v1) == 0))
    {
      v7 = (v2 + v3[7]);
      if ((v7[1] & 1) != 0 || (result = OUTLINED_FUNCTION_30(*v7, 3), (v0 = v1) == 0))
      {
        if (!*(v2 + v3[8] + 8))
        {
          return OUTLINED_FUNCTION_15();
        }

        result = sub_1C8BD4DDC();
        if (!v0)
        {
          return OUTLINED_FUNCTION_15();
        }
      }
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion.== infix(_:_:)()
{
  v0 = OUTLINED_FUNCTION_17();
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion(v0);
  OUTLINED_FUNCTION_11();
  if (v2)
  {
    if (!v1)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_1();
    if (v3)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_11();
  if (v5)
  {
    if (!v4)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_1();
    if (v6)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_11();
  if (v8)
  {
    if (!v7)
    {
      return 0;
    }
  }

  else
  {
    OUTLINED_FUNCTION_8_1();
    if (v9)
    {
      return 0;
    }
  }

  OUTLINED_FUNCTION_1();
  if (v10)
  {
    if (!v11)
    {
      return 0;
    }

    v14 = *v12 == *v13 && v10 == v11;
    if (!v14 && (sub_1C8BD529C() & 1) == 0)
    {
      return 0;
    }

LABEL_20:
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_2_9();
    sub_1C87763E0(v15, v16, MEMORY[0x1E69AAC10]);
    OUTLINED_FUNCTION_5_0();
    return sub_1C8BD517C() & 1;
  }

  if (!v11)
  {
    goto LABEL_20;
  }

  return 0;
}

uint64_t sub_1C87FFFAC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87763E0(&qword_1EC2B6750, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion, &protocol conformance descriptor for Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C880002C(uint64_t a1)
{
  v2 = sub_1C87763E0(&qword_1EC2B66A8, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion, &protocol conformance descriptor for Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C880009C(uint64_t a1, uint64_t a2)
{
  sub_1C87763E0(&qword_1EC2B66A8, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion, &protocol conformance descriptor for Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8800128()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B6668);
  __swift_project_value_buffer(v0, qword_1EC2B6668);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "version";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "model_type";
  *(v10 + 1) = 10;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_ITFMAssetVersion.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v8 = OUTLINED_FUNCTION_8();
      sub_1C8800398(v8, v9, v10, v11);
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_8();
      sub_1C8800C24(v3, v4, v5, v6, v7);
    }
  }

  return result;
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_ITFMAssetVersion.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_9_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6698, &qword_1C8BE7FB0);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v6 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_33();
  v10 = v9 - v8;
  v11 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMAssetVersion(0);
  sub_1C87FEBAC(v1 + *(v11 + 20), v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_1C8778ED8(v5, &qword_1EC2B6698, &qword_1C8BE7FB0);
  }

  else
  {
    sub_1C87FEC1C(v5, v10);
    OUTLINED_FUNCTION_3_3();
    sub_1C87763E0(v12, v13, &protocol conformance descriptor for Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion);
    sub_1C8BD4E2C();
    result = sub_1C87FEE58(v10);
    if (v0)
    {
      return result;
    }
  }

  if (!*(v1 + *(v11 + 24) + 8))
  {
    return OUTLINED_FUNCTION_15();
  }

  result = sub_1C8BD4DDC();
  if (!v0)
  {
    return OUTLINED_FUNCTION_15();
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_SnlpIntermediate_ITFMAssetVersion.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_17();
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_33();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6698, &qword_1C8BE7FB0);
  OUTLINED_FUNCTION_80(v10);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v30 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B66B0, &qword_1C8BE7FB8) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  v16 = OUTLINED_FUNCTION_45();
  v17 = *(type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMAssetVersion(v16) + 20);
  v18 = *(v14 + 56);
  sub_1C87FEBAC(v2 + v17, v3);
  sub_1C87FEBAC(a2 + v17, v3 + v18);
  OUTLINED_FUNCTION_72(v3);
  if (!v19)
  {
    sub_1C87FEBAC(v3, v13);
    OUTLINED_FUNCTION_72(v3 + v18);
    if (!v19)
    {
      sub_1C87FEC1C(v3 + v18, v9);
      v22 = static Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion.== infix(_:_:)();
      sub_1C87FEE58(v9);
      sub_1C87FEE58(v13);
      sub_1C8778ED8(v3, &qword_1EC2B6698, &qword_1C8BE7FB0);
      if ((v22 & 1) == 0)
      {
        goto LABEL_10;
      }

      goto LABEL_13;
    }

    sub_1C87FEE58(v13);
LABEL_9:
    sub_1C8778ED8(v3, &qword_1EC2B66B0, &qword_1C8BE7FB8);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_72(v3 + v18);
  if (!v19)
  {
    goto LABEL_9;
  }

  sub_1C8778ED8(v3, &qword_1EC2B6698, &qword_1C8BE7FB0);
LABEL_13:
  OUTLINED_FUNCTION_1();
  if (v23)
  {
    if (v24)
    {
      v27 = *v25 == *v26 && v23 == v24;
      if (v27 || (sub_1C8BD529C() & 1) != 0)
      {
        goto LABEL_22;
      }
    }
  }

  else if (!v24)
  {
LABEL_22:
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_2_9();
    sub_1C87763E0(v28, v29, MEMORY[0x1E69AAC10]);
    OUTLINED_FUNCTION_5_0();
    v20 = sub_1C8BD517C();
    return v20 & 1;
  }

LABEL_10:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1C88008B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87763E0(&qword_1EC2B6748, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMAssetVersion, &protocol conformance descriptor for Siri_Nlu_Internal_SnlpIntermediate_ITFMAssetVersion);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8800934(uint64_t a1)
{
  v2 = sub_1C87763E0(&qword_1EC2B66E0, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMAssetVersion, &protocol conformance descriptor for Siri_Nlu_Internal_SnlpIntermediate_ITFMAssetVersion);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C88009A4(uint64_t a1, uint64_t a2)
{
  sub_1C87763E0(&qword_1EC2B66E0, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_ITFMAssetVersion, &protocol conformance descriptor for Siri_Nlu_Internal_SnlpIntermediate_ITFMAssetVersion);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8800A30()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B6680);
  __swift_project_value_buffer(v0, qword_1EC2B6680);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1C8BE6F30;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "version";
  *(v4 + 8) = 7;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1C8BD50FC();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_NLv4AssetVersion.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_8();
      sub_1C8800C24(v3, v4, v5, v6, v7);
    }
  }

  return result;
}

uint64_t sub_1C8800C24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void))
{
  a5(0);
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion(0);
  OUTLINED_FUNCTION_3_3();
  sub_1C87763E0(v5, v6, &protocol conformance descriptor for Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion);
  return sub_1C8BD4C7C();
}

uint64_t Siri_Nlu_Internal_SnlpIntermediate_NLv4AssetVersion.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_9_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6698, &qword_1C8BE7FB0);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - v4;
  v6 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_33();
  v10 = v9 - v8;
  v11 = type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4AssetVersion(0);
  sub_1C87FEBAC(v1 + *(v11 + 20), v5);
  if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
  {
    sub_1C8778ED8(v5, &qword_1EC2B6698, &qword_1C8BE7FB0);
  }

  else
  {
    sub_1C87FEC1C(v5, v10);
    OUTLINED_FUNCTION_3_3();
    sub_1C87763E0(v12, v13, &protocol conformance descriptor for Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion);
    sub_1C8BD4E2C();
    result = sub_1C87FEE58(v10);
    if (v0)
    {
      return result;
    }
  }

  return OUTLINED_FUNCTION_15();
}

uint64_t static Siri_Nlu_Internal_SnlpIntermediate_NLv4AssetVersion.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v5 = OUTLINED_FUNCTION_17();
  type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion(v5);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_33();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6698, &qword_1C8BE7FB0);
  OUTLINED_FUNCTION_80(v10);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v25 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B66B0, &qword_1C8BE7FB8) - 8;
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  v16 = OUTLINED_FUNCTION_45();
  v17 = *(type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4AssetVersion(v16) + 20);
  v18 = *(v14 + 56);
  sub_1C87FEBAC(v2 + v17, v3);
  sub_1C87FEBAC(a2 + v17, v3 + v18);
  OUTLINED_FUNCTION_72(v3);
  if (v19)
  {
    OUTLINED_FUNCTION_72(v3 + v18);
    if (v19)
    {
      sub_1C8778ED8(v3, &qword_1EC2B6698, &qword_1C8BE7FB0);
LABEL_12:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_2_9();
      sub_1C87763E0(v22, v23, MEMORY[0x1E69AAC10]);
      OUTLINED_FUNCTION_5_0();
      v20 = sub_1C8BD517C();
      return v20 & 1;
    }

    goto LABEL_9;
  }

  sub_1C87FEBAC(v3, v13);
  OUTLINED_FUNCTION_72(v3 + v18);
  if (v19)
  {
    sub_1C87FEE58(v13);
LABEL_9:
    sub_1C8778ED8(v3, &qword_1EC2B66B0, &qword_1C8BE7FB8);
    goto LABEL_10;
  }

  sub_1C87FEC1C(v3 + v18, v9);
  v21 = static Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion.== infix(_:_:)();
  sub_1C87FEE58(v9);
  sub_1C87FEE58(v13);
  sub_1C8778ED8(v3, &qword_1EC2B6698, &qword_1C8BE7FB0);
  if (v21)
  {
    goto LABEL_12;
  }

LABEL_10:
  v20 = 0;
  return v20 & 1;
}

uint64_t sub_1C88010B0(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_1C8BD530C();
  a1(0);
  sub_1C87763E0(a2, a3, a4);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C880118C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C87763E0(&qword_1EC2B6740, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4AssetVersion, &protocol conformance descriptor for Siri_Nlu_Internal_SnlpIntermediate_NLv4AssetVersion);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C880120C(uint64_t a1)
{
  v2 = sub_1C87763E0(&qword_1EC2B66F8, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4AssetVersion, &protocol conformance descriptor for Siri_Nlu_Internal_SnlpIntermediate_NLv4AssetVersion);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C880127C(uint64_t a1, uint64_t a2)
{
  sub_1C87763E0(&qword_1EC2B66F8, type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_NLv4AssetVersion, &protocol conformance descriptor for Siri_Nlu_Internal_SnlpIntermediate_NLv4AssetVersion);

  return sub_1C8BD4CFC();
}

void sub_1C8801684(uint64_t a1)
{
  sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    sub_1C87EB4B0(319, &qword_1EDACD380, MEMORY[0x1E69E7668]);
    if (v2 <= 0x3F)
    {
      sub_1C87EB4B0(319, &qword_1EDACD3E8, MEMORY[0x1E69E6158]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C8801770(uint64_t a1)
{
  sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    sub_1C880181C(319);
    if (v2 <= 0x3F)
    {
      sub_1C87EB4B0(319, &qword_1EDACD3E8, MEMORY[0x1E69E6158]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C880181C(uint64_t a1)
{
  if (!qword_1EC2B6728)
  {
    type metadata accessor for Siri_Nlu_Internal_SnlpIntermediate_SNLPAssetVersion(255);
    v1 = sub_1C8BD522C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC2B6728);
    }
  }
}

void sub_1C880189C(uint64_t a1)
{
  sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    sub_1C880181C(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t Siri_Nlu_Internal_PlanGeneration_PlanGenerationResponse.plans.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_PlanGeneration_PlanGenerationResponse.mappings.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_PlanGeneration_PlanGenerationResponse.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for Siri_Nlu_Internal_PlanGeneration_PlanGenerationResponse(0) + 24);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v6 = *(v5 + 16);

  return v6(a1, v1 + v3, v4);
}

uint64_t Siri_Nlu_Internal_PlanGeneration_PlanGenerationResponse.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  v3 = *(type metadata accessor for Siri_Nlu_Internal_PlanGeneration_PlanGenerationResponse(v2) + 24);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

void (*Siri_Nlu_Internal_PlanGeneration_PlanGenerationResponse.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_Internal_PlanGeneration_PlanGenerationResponse(v0);
  return nullsub_1;
}

uint64_t Siri_Nlu_Internal_PlanGeneration_PlanGenerationResponse.init()@<X0>(void *a1@<X8>)
{
  v2 = MEMORY[0x1E69E7CC0];
  *a1 = MEMORY[0x1E69E7CC0];
  a1[1] = v2;
  type metadata accessor for Siri_Nlu_Internal_PlanGeneration_PlanGenerationResponse(0);
  return _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
}

uint64_t Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair.variable.getter()
{
  OUTLINED_FUNCTION_3_4();
  if (OUTLINED_FUNCTION_8_0(v0))
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1C8801BE0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair.variable.setter(v1, v2);
}

uint64_t Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair.variable.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_4();
  v6 = (v2 + v5);

  *v6 = a1;
  v6[1] = a2;
  return result;
}

void (*Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair.variable.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[2] = v1;
  OUTLINED_FUNCTION_3_4();
  *(v3 + 8) = v4;
  v5 = OUTLINED_FUNCTION_8_0(v4);
  if (v5)
  {
    v7 = *v6;
    v8 = v5;
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  v3[3] = v5;
  *v3 = v7;
  v3[1] = v8;

  return sub_1C87EB660;
}

Swift::Void __swiftcall Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair.clearVariable()()
{
  OUTLINED_FUNCTION_3_4();
  v2 = (v0 + v1);

  *v2 = 0;
  v2[1] = 0;
}

uint64_t Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair.eventID.getter()
{
  OUTLINED_FUNCTION_4_5();
  if (OUTLINED_FUNCTION_8_0(v0))
  {
    v2 = *v1;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

uint64_t sub_1C8801D84(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair.eventID.setter(v1, v2);
}

uint64_t Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair.eventID.setter(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_4_5();
  v6 = (v2 + v5);

  *v6 = a1;
  v6[1] = a2;
  return result;
}

void (*Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair.eventID.modify(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[2] = v1;
  OUTLINED_FUNCTION_4_5();
  *(v3 + 8) = v4;
  v5 = OUTLINED_FUNCTION_8_0(v4);
  if (v5)
  {
    v7 = *v6;
    v8 = v5;
  }

  else
  {
    v7 = 0;
    v8 = 0xE000000000000000;
  }

  v3[3] = v5;
  *v3 = v7;
  v3[1] = v8;

  return sub_1C87E9980;
}

Swift::Void __swiftcall Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair.clearEventID()()
{
  OUTLINED_FUNCTION_4_5();
  v2 = (v0 + v1);

  *v2 = 0;
  v2[1] = 0;
}

uint64_t Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair.unknownFields.getter@<X0>(uint64_t a1@<X8>)
{
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v5 = *(v4 + 16);

  return v5(a1, v1, v3);
}

uint64_t Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair.unknownFields.setter()
{
  OUTLINED_FUNCTION_241();
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v4 = *(v3 + 40);

  return v4(v1, v0, v2);
}

uint64_t Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair.init()@<X0>(uint64_t a2@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  result = OUTLINED_FUNCTION_3_4();
  v5 = (a2 + v4);
  *v5 = 0;
  v5[1] = 0;
  v6 = (a2 + *(result + 24));
  *v6 = 0;
  v6[1] = 0;
  return result;
}

uint64_t sub_1C8802014()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B6758);
  __swift_project_value_buffer(v0, qword_1EC2B6758);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "plans";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "mappings";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_Internal_PlanGeneration_PlanGenerationResponse.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v3 = OUTLINED_FUNCTION_8();
      sub_1C8802270(v3, v4, v5, v6);
    }

    else if (result == 1)
    {
      sub_1C8BD4BDC();
    }
  }

  return result;
}

uint64_t sub_1C8802270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair(0);
  sub_1C8802E80(&qword_1EC2B6788, type metadata accessor for Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair, &protocol conformance descriptor for Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair);
  return sub_1C8BD4C6C();
}

uint64_t Siri_Nlu_Internal_PlanGeneration_PlanGenerationResponse.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(*v3 + 16) || (result = sub_1C8BD4DAC(), !v4))
  {
    if (!*(v3[1] + 16) || (type metadata accessor for Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair(0), sub_1C8802E80(&qword_1EC2B6788, type metadata accessor for Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair, &protocol conformance descriptor for Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair), result = sub_1C8BD4E0C(), !v4))
    {
      type metadata accessor for Siri_Nlu_Internal_PlanGeneration_PlanGenerationResponse(0);
      return sub_1C8BD49DC();
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_PlanGeneration_PlanGenerationResponse.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  if ((sub_1C87D2814(*a1, *a2) & 1) == 0)
  {
    return 0;
  }

  sub_1C87D28A0();
  if ((v2 & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Siri_Nlu_Internal_PlanGeneration_PlanGenerationResponse(0);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_0_3();
  sub_1C8802E80(v3, v4, MEMORY[0x1E69AAC10]);
  return sub_1C8BD517C() & 1;
}

uint64_t sub_1C8802578(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8802E80(&qword_1EC2B67F8, type metadata accessor for Siri_Nlu_Internal_PlanGeneration_PlanGenerationResponse, &protocol conformance descriptor for Siri_Nlu_Internal_PlanGeneration_PlanGenerationResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C88025F8(uint64_t a1)
{
  v2 = sub_1C8802E80(&qword_1EC2B67A8, type metadata accessor for Siri_Nlu_Internal_PlanGeneration_PlanGenerationResponse, &protocol conformance descriptor for Siri_Nlu_Internal_PlanGeneration_PlanGenerationResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8802668(uint64_t a1, uint64_t a2)
{
  sub_1C8802E80(&qword_1EC2B67A8, type metadata accessor for Siri_Nlu_Internal_PlanGeneration_PlanGenerationResponse, &protocol conformance descriptor for Siri_Nlu_Internal_PlanGeneration_PlanGenerationResponse);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8802704()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B6770);
  __swift_project_value_buffer(v0, qword_1EC2B6770);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "variable";
  *(v6 + 8) = 8;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "eventId";
  *(v10 + 1) = 7;
  v10[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v7 = OUTLINED_FUNCTION_8();
      sub_1C88029BC(v7, v8, v9, v10);
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_8();
      sub_1C8802958(v3, v4, v5, v6);
    }
  }

  return result;
}

uint64_t Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = type metadata accessor for Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair(0);
  if (!*(v3 + *(v5 + 20) + 8) || (result = sub_1C8BD4DDC(), !v4))
  {
    if (!*(v3 + *(v5 + 24) + 8))
    {
      return sub_1C8BD49DC();
    }

    result = sub_1C8BD4DDC();
    if (!v4)
    {
      return sub_1C8BD49DC();
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair(0);
  OUTLINED_FUNCTION_1();
  if (v2)
  {
    if (!v3)
    {
      return 0;
    }

    v6 = *v4 == *v5 && v2 == v3;
    if (!v6 && (sub_1C8BD529C() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v3)
  {
    return 0;
  }

  OUTLINED_FUNCTION_1();
  if (v7)
  {
    if (v8)
    {
      v11 = *v9 == *v10 && v7 == v8;
      if (v11 || (sub_1C8BD529C() & 1) != 0)
      {
        goto LABEL_17;
      }
    }
  }

  else if (!v8)
  {
LABEL_17:
    sub_1C8BD49FC();
    OUTLINED_FUNCTION_0_3();
    sub_1C8802E80(v12, v13, MEMORY[0x1E69AAC10]);
    return sub_1C8BD517C() & 1;
  }

  return 0;
}

uint64_t sub_1C8802C2C(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_1C8BD530C();
  a1(0);
  sub_1C8802E80(a2, a3, a4);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C8802D10(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8802E80(&qword_1EC2B67F0, type metadata accessor for Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair, &protocol conformance descriptor for Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8802D90(uint64_t a1)
{
  v2 = sub_1C8802E80(&qword_1EC2B6788, type metadata accessor for Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair, &protocol conformance descriptor for Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8802E00(uint64_t a1, uint64_t a2)
{
  sub_1C8802E80(&qword_1EC2B6788, type metadata accessor for Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair, &protocol conformance descriptor for Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8802E80(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1C8803130(uint64_t a1)
{
  sub_1C8803308(319, &qword_1EDACD398, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C88031E8(319);
    if (v2 <= 0x3F)
    {
      sub_1C8BD49FC();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1C88031E8(uint64_t a1)
{
  if (!qword_1EC2B67D8)
  {
    type metadata accessor for Siri_Nlu_Internal_PlanGeneration_VariableEventIdPair(255);
    v1 = sub_1C8BD521C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC2B67D8);
    }
  }
}

void sub_1C8803268(uint64_t a1)
{
  sub_1C8BD49FC();
  if (v1 <= 0x3F)
  {
    sub_1C8803308(319, &qword_1EDACD3E8, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1C8803308(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void, void))
{
  if (!*a2)
  {
    v4 = a3(0, MEMORY[0x1E69E6158]);
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

void Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle.type.getter(_BYTE *a1@<X8>)
{
  type metadata accessor for Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle(0);
  OUTLINED_FUNCTION_18_6();
  if (v3)
  {
    v2 = 0;
  }

  *a1 = v2;
}

uint64_t Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle.type.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

uint64_t (*Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle.type.modify(uint64_t a1))(uint64_t result)
{
  *a1 = v1;
  v3 = *(type metadata accessor for Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle(0) + 24);
  *(a1 + 8) = v3;
  v4 = *(v1 + v3);
  if (v4 == 4)
  {
    LOBYTE(v4) = 0;
  }

  *(a1 + 12) = v4;
  return OUTLINED_FUNCTION_158;
}

BOOL Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle.hasType.getter()
{
  type metadata accessor for Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle(0);
  OUTLINED_FUNCTION_18_6();
  return !v0;
}

uint64_t Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle.currentTurn.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  v6 = type metadata accessor for Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle(v5);
  v7 = OUTLINED_FUNCTION_13(*(v6 + 28));
  sub_1C87AB9AC(v7, v8, &qword_1EC2B6038, &unk_1C8BE8850);
  v9 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  v10 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v10, v11, v9);
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v13 = *(v9 + 20);
    if (qword_1EDACCB60 != -1)
    {
      OUTLINED_FUNCTION_25(&qword_1EDACCB60);
    }

    *(a1 + v13) = qword_1EDACCB68;
    v14 = OUTLINED_FUNCTION_120();
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v14, v15, v9);

    if (EnumTagSinglePayload != 1)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B6038, &unk_1C8BE8850);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_4();
    OUTLINED_FUNCTION_121();
    return sub_1C8805E34();
  }

  return result;
}

uint64_t Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle.currentTurn.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle(v1);
  sub_1C8778ED8(v0 + *(v2 + 28), &qword_1EC2B6038, &unk_1C8BE8850);
  OUTLINED_FUNCTION_0_4();
  sub_1C8805E34();
  type metadata accessor for Siri_Nlu_External_TurnInput(0);
  OUTLINED_FUNCTION_19_1();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle.currentTurn.modify(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  *v3 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
  OUTLINED_FUNCTION_80(v4);
  v6 = __swift_coroFrameAllocStub(*(v5 + 64));
  v3[1] = v6;
  v7 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  v3[2] = v7;
  OUTLINED_FUNCTION_21();
  v9 = *(v8 + 64);
  v3[3] = __swift_coroFrameAllocStub(v9);
  v10 = __swift_coroFrameAllocStub(v9);
  v3[4] = v10;
  v11 = *(type metadata accessor for Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle(0) + 28);
  *(v3 + 10) = v11;
  sub_1C87AB9AC(v1 + v11, v6, &qword_1EC2B6038, &unk_1C8BE8850);
  OUTLINED_FUNCTION_76(v6, 1, v7);
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v13 = *(v7 + 20);
    if (qword_1EDACCB60 != -1)
    {
      OUTLINED_FUNCTION_25(&qword_1EDACCB60);
    }

    *&v10[v13] = qword_1EDACCB68;
    EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v6, 1, v7);

    if (EnumTagSinglePayload != 1)
    {
      sub_1C8778ED8(v6, &qword_1EC2B6038, &unk_1C8BE8850);
    }
  }

  else
  {
    OUTLINED_FUNCTION_0_4();
    sub_1C8805E34();
  }

  return sub_1C8803854;
}

uint64_t Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle.hasCurrentTurn.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_74();
  v3 = type metadata accessor for Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle(v2);
  v4 = OUTLINED_FUNCTION_13(*(v3 + 28));
  sub_1C87AB9AC(v4, v5, &qword_1EC2B6038, &unk_1C8BE8850);
  type metadata accessor for Siri_Nlu_External_TurnInput(0);
  v6 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v6, v7, v8);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = OUTLINED_FUNCTION_121();
  sub_1C8778ED8(v11, v12, &unk_1C8BE8850);
  return v10;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle.clearCurrentTurn()()
{
  v1 = type metadata accessor for Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle(0);
  sub_1C8778ED8(v0 + *(v1 + 28), &qword_1EC2B6038, &unk_1C8BE8850);
  type metadata accessor for Siri_Nlu_External_TurnInput(0);
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

void (*Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle(v0);
  return nullsub_1;
}

SiriNLUTypes::Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle::ReformType_optional __swiftcall Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle.ReformType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 4;
  if (rawValue < 4)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1C8803A44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8805F38();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C8803AAC@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle.ReformType.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  v2 = type metadata accessor for Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle(0);
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  *(a1 + *(v2 + 24)) = 4;
  type metadata accessor for Siri_Nlu_External_TurnInput(0);
  v3 = OUTLINED_FUNCTION_27_1();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

uint64_t Siri_Nlu_Internal_Contextupdate_ContextUpdateResponse.reformedTurnInputBundles.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_Internal_Contextupdate_ContextUpdateResponse.requestID.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  updated = type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateResponse(v5);
  v7 = OUTLINED_FUNCTION_13(*(updated + 24));
  sub_1C87AB9AC(v7, v8, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v9 = type metadata accessor for Siri_Nlu_External_UUID(0);
  v10 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v10, v11, v9);
  if (v12)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_313(a1 + v9[5]);
    OUTLINED_FUNCTION_313(a1 + v9[6]);
    *(a1 + v9[7]) = 6;
    v13 = OUTLINED_FUNCTION_120();
    result = OUTLINED_FUNCTION_76(v13, v14, v9);
    if (!v12)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_2();
    OUTLINED_FUNCTION_121();
    return sub_1C8805E34();
  }

  return result;
}

uint64_t sub_1C8803CC8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), uint64_t a6, uint64_t (*a7)(char *))
{
  v8 = (a5)(0, a2, a3, a4);
  OUTLINED_FUNCTION_80(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v13 - v10;
  sub_1C8805E8C();
  return a7(v11);
}

uint64_t Siri_Nlu_Internal_Contextupdate_ContextUpdateResponse.requestID.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  updated = type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateResponse(v1);
  sub_1C8778ED8(v0 + *(updated + 24), &qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_2_2();
  sub_1C8805E34();
  type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_19_1();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void (*Siri_Nlu_Internal_Contextupdate_ContextUpdateResponse.requestID.modify(void *a1))()
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
  v11 = *(type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateResponse(0) + 24);
  *(v3 + 10) = v11;
  v12 = OUTLINED_FUNCTION_13(v11);
  sub_1C87AB9AC(v12, v13, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v14 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v14, v15, v7);
  if (v16)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_313(&v10[v7[5]]);
    OUTLINED_FUNCTION_313(&v10[v7[6]]);
    v10[v7[7]] = 6;
    v17 = OUTLINED_FUNCTION_120();
    OUTLINED_FUNCTION_76(v17, v18, v7);
    if (!v16)
    {
      sub_1C8778ED8(v6, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_2_2();
    sub_1C8805E34();
  }

  return sub_1C8803F68;
}

void sub_1C8803F90(uint64_t **a1, char a2, uint64_t *a3, uint64_t *a4, uint64_t a5)
{
  v7 = *a1;
  v8 = *(*a1 + 10);
  v9 = (*a1)[3];
  v10 = (*a1)[4];
  v11 = (*a1)[1];
  v12 = (*a1)[2];
  v13 = **a1;
  if (a2)
  {
    sub_1C8805E8C();
    sub_1C8778ED8(v13 + v8, a3, a4);
    sub_1C8805E34();
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v12);
    sub_1C8805EE4();
  }

  else
  {
    sub_1C8778ED8(v13 + v8, a3, a4);
    sub_1C8805E34();
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v17, v18, v19, v12);
  }

  free(v10);
  free(v9);
  free(v11);

  free(v7);
}

uint64_t Siri_Nlu_Internal_Contextupdate_ContextUpdateResponse.hasRequestID.getter()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v0);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v1);
  v2 = OUTLINED_FUNCTION_74();
  updated = type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateResponse(v2);
  v4 = OUTLINED_FUNCTION_13(*(updated + 24));
  sub_1C87AB9AC(v4, v5, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  type metadata accessor for Siri_Nlu_External_UUID(0);
  v6 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v6, v7, v8);
  if (v9)
  {
    v10 = 0;
  }

  else
  {
    v10 = 1;
  }

  v11 = OUTLINED_FUNCTION_121();
  sub_1C8778ED8(v11, v12, &unk_1C8BE68C0);
  return v10;
}

Swift::Void __swiftcall Siri_Nlu_Internal_Contextupdate_ContextUpdateResponse.clearRequestID()()
{
  updated = type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateResponse(0);
  sub_1C8778ED8(v0 + *(updated + 24), &qword_1EC2B5EC8, &unk_1C8BE68C0);
  type metadata accessor for Siri_Nlu_External_UUID(0);
  v2 = OUTLINED_FUNCTION_14_3();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t sub_1C88041BC@<X0>(uint64_t (*a1)(void)@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1(0) + 20);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v7 = *(v6 + 16);

  return v7(a2, v2 + v4, v5);
}

uint64_t sub_1C8804250()
{
  v2 = OUTLINED_FUNCTION_241();
  v4 = *(v3(v2) + 20);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v6 = *(v5 + 40);

  return v6(v1 + v4, v0);
}

void (*Siri_Nlu_Internal_Contextupdate_ContextUpdateResponse.unknownFields.modify())()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateResponse(v0);
  return nullsub_1;
}

uint64_t Siri_Nlu_Internal_Contextupdate_ContextUpdateResponse.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateResponse(0);
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  type metadata accessor for Siri_Nlu_External_UUID(0);
  v1 = OUTLINED_FUNCTION_27_1();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_1C8804388()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B6800);
  __swift_project_value_buffer(v0, qword_1EC2B6800);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE6F70;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "type";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "current_turn";
  *(v10 + 1) = 12;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "previous_turns";
  *(v12 + 1) = 14;
  v12[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle.decodeMessage<A>(decoder:)()
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
        sub_1C8805518(v11, v12, v13, v14, v15, &qword_1EDACC908, v16, v17);
        break;
      case 2:
        v7 = OUTLINED_FUNCTION_8();
        sub_1C8804704(v7, v8, v9, v10);
        break;
      case 1:
        v3 = OUTLINED_FUNCTION_8();
        sub_1C8804690(v3, v4, v5, v6);
        break;
    }
  }

  return result;
}

uint64_t sub_1C8804690(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle(0);
  sub_1C8805F38();
  return sub_1C8BD4B4C();
}

uint64_t sub_1C8804704(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle(0);
  type metadata accessor for Siri_Nlu_External_TurnInput(0);
  sub_1C8805F8C(&qword_1EDACC908, type metadata accessor for Siri_Nlu_External_TurnInput, &protocol conformance descriptor for Siri_Nlu_External_TurnInput);
  return sub_1C8BD4C7C();
}

uint64_t Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_24_3();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_74();
  v7 = type metadata accessor for Siri_Nlu_External_TurnInput(v6);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_33();
  v9 = type metadata accessor for Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle(0);
  OUTLINED_FUNCTION_18_6();
  if (v10 || (sub_1C8805F38(), OUTLINED_FUNCTION_19_4(), result = sub_1C8BD4D4C(), (v0 = v2) == 0))
  {
    v12 = OUTLINED_FUNCTION_13(*(v9 + 28));
    sub_1C87AB9AC(v12, v13, v14, v15);
    v16 = OUTLINED_FUNCTION_120();
    if (__swift_getEnumTagSinglePayload(v16, v17, v7) == 1)
    {
      sub_1C8778ED8(v3, &qword_1EC2B6038, &unk_1C8BE8850);
    }

    else
    {
      sub_1C8805E34();
      OUTLINED_FUNCTION_8_5();
      sub_1C8805F8C(v18, v19, &protocol conformance descriptor for Siri_Nlu_External_TurnInput);
      sub_1C8BD4E2C();
      result = sub_1C8805EE4();
      if (v0)
      {
        return result;
      }
    }

    if (!*(*v1 + 16))
    {
      return sub_1C8BD49DC();
    }

    OUTLINED_FUNCTION_8_5();
    sub_1C8805F8C(v20, v21, &protocol conformance descriptor for Siri_Nlu_External_TurnInput);
    result = sub_1C8BD4E0C();
    if (!v0)
    {
      return sub_1C8BD49DC();
    }
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v5 = type metadata accessor for Siri_Nlu_External_TurnInput(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_33();
  v9 = v8 - v7;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6038, &unk_1C8BE8850);
  OUTLINED_FUNCTION_80(v10);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v42 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6040, &unk_1C8BE6CF0);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v15);
  v16 = OUTLINED_FUNCTION_74();
  v17 = type metadata accessor for Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle(v16);
  v18 = *(v17 + 24);
  v19 = *(a1 + v18);
  v20 = *(a2 + v18);
  if (v19 == 4)
  {
    if (v20 != 4)
    {
      goto LABEL_20;
    }
  }

  else if (v19 != v20)
  {
LABEL_20:
    v40 = 0;
    return v40 & 1;
  }

  v21 = *(v17 + 28);
  v22 = *(v14 + 48);
  v43 = a1;
  OUTLINED_FUNCTION_32_4(a1 + v21, v2);
  OUTLINED_FUNCTION_32_4(a2 + v21, v2 + v22);
  v23 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v23, v24, v5);
  if (v29)
  {
    v25 = OUTLINED_FUNCTION_31_2();
    OUTLINED_FUNCTION_76(v25, v26, v5);
    if (v29)
    {
      sub_1C8778ED8(v2, &qword_1EC2B6038, &unk_1C8BE8850);
      goto LABEL_18;
    }

    goto LABEL_13;
  }

  sub_1C87AB9AC(v2, v13, &qword_1EC2B6038, &unk_1C8BE8850);
  v27 = OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_76(v27, v28, v5);
  if (v29)
  {
    sub_1C8805EE4();
LABEL_13:
    v30 = &qword_1EC2B6040;
    v31 = &unk_1C8BE6CF0;
LABEL_14:
    sub_1C8778ED8(v2, v30, v31);
    goto LABEL_20;
  }

  OUTLINED_FUNCTION_0_4();
  sub_1C8805E34();
  if (*&v13[*(v5 + 20)] != *(v9 + *(v5 + 20)))
  {

    sub_1C88AD618();
    v33 = v32;

    if ((v33 & 1) == 0)
    {
      sub_1C8805EE4();
      sub_1C8805EE4();
      v30 = &qword_1EC2B6038;
      v31 = &unk_1C8BE8850;
      goto LABEL_14;
    }
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_3_5();
  sub_1C8805F8C(v34, v35, MEMORY[0x1E69AAC10]);
  v36 = sub_1C8BD517C();
  sub_1C8805EE4();
  sub_1C8805EE4();
  sub_1C8778ED8(v2, &qword_1EC2B6038, &unk_1C8BE8850);
  if ((v36 & 1) == 0)
  {
    goto LABEL_20;
  }

LABEL_18:
  sub_1C87D2CAC(*v43, *a2);
  if ((v37 & 1) == 0)
  {
    goto LABEL_20;
  }

  sub_1C8BD49FC();
  OUTLINED_FUNCTION_3_5();
  sub_1C8805F8C(v38, v39, MEMORY[0x1E69AAC10]);
  v40 = sub_1C8BD517C();
  return v40 & 1;
}

uint64_t sub_1C8804E80(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8805F8C(&qword_1EC2B68F0, type metadata accessor for Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle, &protocol conformance descriptor for Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8804F00(uint64_t a1)
{
  v2 = sub_1C8805F8C(&qword_1EC2B6858, type metadata accessor for Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle, &protocol conformance descriptor for Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8804F70(uint64_t a1, uint64_t a2)
{
  sub_1C8805F8C(&qword_1EC2B6858, type metadata accessor for Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle, &protocol conformance descriptor for Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8804FF0()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B6818);
  __swift_project_value_buffer(v0, qword_1EC2B6818);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE68B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "REFORM_TYPE_NONE";
  *(v6 + 8) = 16;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1C8BD50FC();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "CORRECTION_BY_REPETITION";
  *(v10 + 8) = 24;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "REFERENCE_RESOLUTION";
  *(v12 + 1) = 20;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "TAP_TO_EDIT";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return sub_1C8BD510C();
}

uint64_t sub_1C8805274()
{
  v0 = sub_1C8BD512C();
  __swift_allocate_value_buffer(v0, qword_1EC2B6830);
  __swift_project_value_buffer(v0, qword_1EC2B6830);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C0, &unk_1C8BE6E50);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B61C8, &unk_1C8BE7490) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C8BE74A0;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "reformed_turn_input_bundles";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
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

uint64_t Siri_Nlu_Internal_Contextupdate_ContextUpdateResponse.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_17_2();
  while (1)
  {
    result = sub_1C8BD4AFC();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v10 = OUTLINED_FUNCTION_8();
      sub_1C88055B4(v10, v11, v12, v13);
    }

    else if (result == 1)
    {
      v3 = OUTLINED_FUNCTION_8();
      sub_1C8805518(v3, v4, v5, v6, v7, &qword_1EC2B6858, v8, v9);
    }
  }

  return result;
}

uint64_t sub_1C8805518(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t (*a5)(void), unint64_t *a6, uint64_t (*a7)(uint64_t), uint64_t a8)
{
  a5(0);
  sub_1C8805F8C(a6, a7, a8);
  return sub_1C8BD4C6C();
}

uint64_t sub_1C88055B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateResponse(0);
  type metadata accessor for Siri_Nlu_External_UUID(0);
  sub_1C8805F8C(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID, &protocol conformance descriptor for Siri_Nlu_External_UUID);
  return sub_1C8BD4C7C();
}

uint64_t Siri_Nlu_Internal_Contextupdate_ContextUpdateResponse.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_24_3();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v10 - v4;
  v6 = type metadata accessor for Siri_Nlu_External_UUID(0);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_33();
  v11 = v0;
  if (!*(*v0 + 16) || (type metadata accessor for Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle(0), sub_1C8805F8C(&qword_1EC2B6858, type metadata accessor for Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle, &protocol conformance descriptor for Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle), OUTLINED_FUNCTION_19_4(), result = sub_1C8BD4E0C(), !v1))
  {
    updated = type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateResponse(0);
    sub_1C87AB9AC(v11 + *(updated + 24), v5, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    if (__swift_getEnumTagSinglePayload(v5, 1, v6) == 1)
    {
      sub_1C8778ED8(v5, &qword_1EC2B5EC8, &unk_1C8BE68C0);
    }

    else
    {
      sub_1C8805E34();
      sub_1C8805F8C(&qword_1EDACCE50, type metadata accessor for Siri_Nlu_External_UUID, &protocol conformance descriptor for Siri_Nlu_External_UUID);
      OUTLINED_FUNCTION_19_4();
      sub_1C8BD4E2C();
      result = sub_1C8805EE4();
      if (v1)
      {
        return result;
      }
    }

    return sub_1C8BD49DC();
  }

  return result;
}

uint64_t static Siri_Nlu_Internal_Contextupdate_ContextUpdateResponse.== infix(_:_:)()
{
  v2 = OUTLINED_FUNCTION_84();
  v3 = type metadata accessor for Siri_Nlu_External_UUID(v2);
  OUTLINED_FUNCTION_21();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_33();
  v7 = v6 - v5;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EC8, &unk_1C8BE68C0);
  OUTLINED_FUNCTION_80(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v31 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B5EE8, &unk_1C8BE6F90);
  OUTLINED_FUNCTION_21();
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v31 - v14;
  sub_1C87D7480();
  if ((v16 & 1) == 0)
  {
    goto LABEL_11;
  }

  updated = type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateResponse(0);
  v17 = *(updated + 24);
  v18 = *(v12 + 48);
  OUTLINED_FUNCTION_32_4(v1 + v17, v15);
  OUTLINED_FUNCTION_32_4(v0 + v17, &v15[v18]);
  v19 = OUTLINED_FUNCTION_120();
  OUTLINED_FUNCTION_76(v19, v20, v3);
  if (v25)
  {
    v21 = OUTLINED_FUNCTION_31_2();
    OUTLINED_FUNCTION_76(v21, v22, v3);
    if (v25)
    {
      sub_1C8778ED8(v15, &qword_1EC2B5EC8, &unk_1C8BE68C0);
LABEL_14:
      sub_1C8BD49FC();
      OUTLINED_FUNCTION_3_5();
      sub_1C8805F8C(v29, v30, MEMORY[0x1E69AAC10]);
      v26 = sub_1C8BD517C();
      return v26 & 1;
    }

    goto LABEL_10;
  }

  sub_1C87AB9AC(v15, v11, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  v23 = OUTLINED_FUNCTION_31_2();
  OUTLINED_FUNCTION_76(v23, v24, v3);
  if (v25)
  {
    sub_1C8805EE4();
LABEL_10:
    sub_1C8778ED8(v15, &qword_1EC2B5EE8, &unk_1C8BE6F90);
    goto LABEL_11;
  }

  sub_1C8805E34();
  v28 = static Siri_Nlu_External_UUID.== infix(_:_:)(v11, v7);
  sub_1C8805EE4();
  sub_1C8805EE4();
  sub_1C8778ED8(v15, &qword_1EC2B5EC8, &unk_1C8BE68C0);
  if (v28)
  {
    goto LABEL_14;
  }

LABEL_11:
  v26 = 0;
  return v26 & 1;
}

uint64_t sub_1C8805BC0(uint64_t (*a1)(void), unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  sub_1C8BD530C();
  a1(0);
  sub_1C8805F8C(a2, a3, a4);
  sub_1C8BD515C();
  return sub_1C8BD531C();
}

uint64_t sub_1C8805CA4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C8805F8C(&qword_1EC2B68E8, type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateResponse, &protocol conformance descriptor for Siri_Nlu_Internal_Contextupdate_ContextUpdateResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1C8805D24(uint64_t a1)
{
  v2 = sub_1C8805F8C(&qword_1EC2B68A8, type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateResponse, &protocol conformance descriptor for Siri_Nlu_Internal_Contextupdate_ContextUpdateResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1C8805D94(uint64_t a1, uint64_t a2)
{
  sub_1C8805F8C(&qword_1EC2B68A8, type metadata accessor for Siri_Nlu_Internal_Contextupdate_ContextUpdateResponse, &protocol conformance descriptor for Siri_Nlu_Internal_Contextupdate_ContextUpdateResponse);

  return sub_1C8BD4CFC();
}

uint64_t sub_1C8805E34()
{
  v2 = OUTLINED_FUNCTION_84();
  v3(v2);
  OUTLINED_FUNCTION_21();
  (*(v4 + 32))(v0, v1);
  return v0;
}

uint64_t sub_1C8805E8C()
{
  v2 = OUTLINED_FUNCTION_84();
  v3(v2);
  OUTLINED_FUNCTION_21();
  (*(v4 + 16))(v0, v1);
  return v0;
}

uint64_t sub_1C8805EE4()
{
  v1 = OUTLINED_FUNCTION_241();
  v2(v1);
  OUTLINED_FUNCTION_21();
  (*(v3 + 8))(v0);
  return v0;
}

unint64_t sub_1C8805F38()
{
  result = qword_1EC2B6848;
  if (!qword_1EC2B6848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B6848);
  }

  return result;
}

uint64_t sub_1C8805F8C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1C8805FD8()
{
  result = qword_1EC2B6868;
  if (!qword_1EC2B6868)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B6868);
  }

  return result;
}

unint64_t sub_1C8806030()
{
  result = qword_1EC2B6870;
  if (!qword_1EC2B6870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B6870);
  }

  return result;
}

unint64_t sub_1C8806088()
{
  result = qword_1EC2B6878;
  if (!qword_1EC2B6878)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B6878);
  }

  return result;
}

unint64_t sub_1C88060E0()
{
  result = qword_1EC2B6880;
  if (!qword_1EC2B6880)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC2B6888, &qword_1C8BE8948);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC2B6880);
  }

  return result;
}

void sub_1C88063AC(uint64_t a1)
{
  sub_1C8806510(319, &qword_1EDACA2F8, type metadata accessor for Siri_Nlu_External_TurnInput, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v2 <= 0x3F)
    {
      sub_1C88064C0();
      if (v3 <= 0x3F)
      {
        sub_1C8806510(319, qword_1EDACC8C0, type metadata accessor for Siri_Nlu_External_TurnInput, MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C88064C0()
{
  if (!qword_1EC2B68C8)
  {
    v0 = sub_1C8BD522C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC2B68C8);
    }
  }
}

void sub_1C8806510(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

_BYTE *storeEnumTagSinglePayload for Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle.ReformType(_BYTE *result, unsigned int a2, unsigned int a3)
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

void sub_1C8806678(uint64_t a1)
{
  sub_1C8806510(319, &qword_1EC2B68E0, type metadata accessor for Siri_Nlu_Internal_Contextupdate_ReformedTurnInputBundle, MEMORY[0x1E69E62F8]);
  if (v1 <= 0x3F)
  {
    sub_1C8BD49FC();
    if (v2 <= 0x3F)
    {
      sub_1C8806510(319, qword_1EDACE198, type metadata accessor for Siri_Nlu_External_UUID, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t Siri_Nlu_External_UsoGraph.version.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_UsoGraph(v5);
  OUTLINED_FUNCTION_57_0();
  v6 = type metadata accessor for Siri_Nlu_External_SemVer(0);
  OUTLINED_FUNCTION_1_0();
  if (v7)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_96_0(v6[5]);
    OUTLINED_FUNCTION_96_0(v6[6]);
    OUTLINED_FUNCTION_96_0(v6[7]);
    result = OUTLINED_FUNCTION_1_0();
    if (!v7)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B6138, &unk_1C8BE8D80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_7();
    OUTLINED_FUNCTION_121();
    return sub_1C87A386C();
  }

  return result;
}

uint64_t Siri_Nlu_External_UsoGraph.version.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_UsoGraph(v1);
  sub_1C8778ED8(v0 + *(v2 + 40), &qword_1EC2B6138, &unk_1C8BE8D80);
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_200();
  sub_1C87A386C();
  type metadata accessor for Siri_Nlu_External_SemVer(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_UsoGraph.version.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_107(v7);
  v9 = type metadata accessor for Siri_Nlu_External_SemVer(v8);
  *(v0 + 16) = v9;
  OUTLINED_FUNCTION_21();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = *(type metadata accessor for Siri_Nlu_External_UsoGraph(v14) + 40);
  *(v0 + 40) = v15;
  OUTLINED_FUNCTION_13(v15);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_73(v7);
  if (v16)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_7_0(v9[5]);
    OUTLINED_FUNCTION_7_0(v9[6]);
    OUTLINED_FUNCTION_7_0(v9[7]);
    OUTLINED_FUNCTION_73(v7);
    if (!v16)
    {
      sub_1C8778ED8(v7, &qword_1EC2B6138, &unk_1C8BE8D80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_7();
    OUTLINED_FUNCTION_184();
    sub_1C87A386C();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_UsoGraph.edges.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t Siri_Nlu_External_UsoGraph.identifiers.setter(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t Siri_Nlu_External_UsoGraph.alignments.setter(uint64_t a1)
{

  *(v1 + 24) = a1;
  return result;
}

uint64_t Siri_Nlu_External_UsoGraph.spans.setter(uint64_t a1)
{

  *(v1 + 32) = a1;
  return result;
}

uint64_t Siri_Nlu_External_UsoGraph.unknownFields.getter()
{
  v0 = OUTLINED_FUNCTION_207();
  type metadata accessor for Siri_Nlu_External_UsoGraph(v0);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v1 = OUTLINED_FUNCTION_196();

  return v2(v1);
}

uint64_t Siri_Nlu_External_UsoGraph.unknownFields.setter()
{
  v2 = OUTLINED_FUNCTION_241();
  v3 = *(type metadata accessor for Siri_Nlu_External_UsoGraph(v2) + 36);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v5 = *(v4 + 40);

  return v5(v1 + v3, v0);
}

uint64_t Siri_Nlu_External_UsoGraph.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_UsoGraph(v0);
  return OUTLINED_FUNCTION_242();
}

void Siri_Nlu_External_UsoNode.usoElementID.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = type metadata accessor for Siri_Nlu_External_UsoNode(v0);
  OUTLINED_FUNCTION_59_0(*(v1 + 24));
}

uint64_t (*Siri_Nlu_External_UsoNode.usoElementID.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_UsoNode(v1);
  OUTLINED_FUNCTION_6_0(*(v2 + 24));
  return sub_1C8801920;
}

uint64_t Siri_Nlu_External_UsoNode.stringPayload.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_UsoNode(v5);
  OUTLINED_FUNCTION_57_0();
  sub_1C8BD493C();
  OUTLINED_FUNCTION_1_0();
  if (v6)
  {
    sub_1C8BD492C();
    result = OUTLINED_FUNCTION_1_0();
    if (!v6)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B6110, &qword_1C8BF5070);
    }
  }

  else
  {
    OUTLINED_FUNCTION_35_1();
    v7 = OUTLINED_FUNCTION_37_4();
    return v8(v7);
  }

  return result;
}

void Siri_Nlu_External_UsoNode.stringPayload.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD493C();
  OUTLINED_FUNCTION_4_6(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_38_4(v14);
  v16 = type metadata accessor for Siri_Nlu_External_UsoNode(v15);
  OUTLINED_FUNCTION_32_5(*(v16 + 28));
  OUTLINED_FUNCTION_7();
  if (v17)
  {
    sub_1C8BD492C();
    OUTLINED_FUNCTION_7();
    if (!v17)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6110, &qword_1C8BF5070);
    }
  }

  else
  {
    v18 = OUTLINED_FUNCTION_15_4();
    v19(v18);
  }

  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_UsoNode.integerPayload.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_UsoNode(v5);
  OUTLINED_FUNCTION_57_0();
  sub_1C8BD48BC();
  v6 = OUTLINED_FUNCTION_1_0();
  if (v7)
  {
    MEMORY[0x1CCA7D9A0](v6);
    result = OUTLINED_FUNCTION_1_0();
    if (!v7)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B6940, &unk_1C8BE8D90);
    }
  }

  else
  {
    OUTLINED_FUNCTION_35_1();
    v8 = OUTLINED_FUNCTION_37_4();
    return v9(v8);
  }

  return result;
}

void Siri_Nlu_External_UsoNode.integerPayload.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD48BC();
  OUTLINED_FUNCTION_4_6(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_38_4(v14);
  v16 = type metadata accessor for Siri_Nlu_External_UsoNode(v15);
  OUTLINED_FUNCTION_32_5(*(v16 + 32));
  v17 = OUTLINED_FUNCTION_7();
  if (v18)
  {
    MEMORY[0x1CCA7D9A0](v17);
    OUTLINED_FUNCTION_7();
    if (!v18)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6940, &unk_1C8BE8D90);
    }
  }

  else
  {
    v19 = OUTLINED_FUNCTION_15_4();
    v20(v19);
  }

  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_125();
}

void sub_1C8807354()
{
  OUTLINED_FUNCTION_124();
  v3 = v2;
  v4 = v1;
  v5 = *(*v0 + 12);
  v6 = (*v0)[4];
  v7 = (*v0)[5];
  v8 = (*v0)[2];
  v9 = (*v0)[3];
  v11 = **v0;
  v10 = (*v0)[1];
  if (v12)
  {
    (*(v9 + 16))((*v0)[4], v7, v8);
    sub_1C8778ED8(v11 + v5, v4, v3);
    (*(v9 + 32))(v11 + v5, v6, v8);
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v13, v14, v15, v8);
    v16 = OUTLINED_FUNCTION_220();
    v17(v16);
  }

  else
  {
    sub_1C8778ED8(v11 + v5, v1, v2);
    (*(v9 + 32))(v11 + v5, v7, v8);
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v18, v19, v20, v8);
  }

  free(v7);
  free(v6);
  free(v10);
  OUTLINED_FUNCTION_125();

  free(v21);
}

void Siri_Nlu_External_UsoNode.usoVerbElementID.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD499C();
  OUTLINED_FUNCTION_4_6(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_38_4(v14);
  v16 = type metadata accessor for Siri_Nlu_External_UsoNode(v15);
  OUTLINED_FUNCTION_32_5(*(v16 + 36));
  OUTLINED_FUNCTION_7();
  if (v17)
  {
    sub_1C8BD486C();
    OUTLINED_FUNCTION_7();
    if (!v17)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6948, &unk_1C8BF9F90);
    }
  }

  else
  {
    v18 = OUTLINED_FUNCTION_15_4();
    v19(v18);
  }

  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_UsoNode.entityLabel.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_UsoNode(0);
  if (OUTLINED_FUNCTION_8_0(*(v0 + 40)))
  {
    OUTLINED_FUNCTION_20();
  }

  else
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t Siri_Nlu_External_UsoNode.entityLabel.setter()
{
  v3 = OUTLINED_FUNCTION_68();
  type metadata accessor for Siri_Nlu_External_UsoNode(v3);
  result = OUTLINED_FUNCTION_24_0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Siri_Nlu_External_UsoNode.entityLabel.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_UsoNode(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 40)))
  {
    OUTLINED_FUNCTION_15_1();
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  OUTLINED_FUNCTION_13_4(v4, v5);

  return OUTLINED_FUNCTION_12();
}

Swift::Void __swiftcall Siri_Nlu_External_UsoNode.clearEntityLabel()()
{
  type metadata accessor for Siri_Nlu_External_UsoNode(0);
  OUTLINED_FUNCTION_25_2();
  *v0 = 0;
  v0[1] = 0;
}

uint64_t Siri_Nlu_External_UsoNode.verbLabel.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_UsoNode(0);
  if (OUTLINED_FUNCTION_8_0(*(v0 + 44)))
  {
    OUTLINED_FUNCTION_20();
  }

  else
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t Siri_Nlu_External_UsoNode.verbLabel.setter()
{
  v3 = OUTLINED_FUNCTION_68();
  type metadata accessor for Siri_Nlu_External_UsoNode(v3);
  result = OUTLINED_FUNCTION_24_0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Siri_Nlu_External_UsoNode.verbLabel.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_UsoNode(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 44)))
  {
    OUTLINED_FUNCTION_15_1();
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  OUTLINED_FUNCTION_13_4(v4, v5);

  return OUTLINED_FUNCTION_12();
}

Swift::Void __swiftcall Siri_Nlu_External_UsoNode.clearVerbLabel()()
{
  type metadata accessor for Siri_Nlu_External_UsoNode(0);
  OUTLINED_FUNCTION_25_2();
  *v0 = 0;
  v0[1] = 0;
}

uint64_t Siri_Nlu_External_UsoNode.normalizedStringPayloads.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t Siri_Nlu_External_UsoNode.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_UsoNode(v0);
  return OUTLINED_FUNCTION_242();
}

void Siri_Nlu_External_UsoEdge.fromIndex.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = type metadata accessor for Siri_Nlu_External_UsoEdge(v0);
  OUTLINED_FUNCTION_59_0(*(v1 + 20));
}

uint64_t (*Siri_Nlu_External_UsoEdge.fromIndex.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_UsoEdge(v1);
  OUTLINED_FUNCTION_6_0(*(v2 + 20));
  return sub_1C8801920;
}

uint64_t sub_1C8807BA8()
{
  v0 = OUTLINED_FUNCTION_167();
  v1(v0);
  OUTLINED_FUNCTION_4();
  if (v3)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

void Siri_Nlu_External_UsoEdge.toIndex.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = type metadata accessor for Siri_Nlu_External_UsoEdge(v0);
  OUTLINED_FUNCTION_59_0(*(v1 + 24));
}

uint64_t (*Siri_Nlu_External_UsoEdge.toIndex.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_UsoEdge(v1);
  OUTLINED_FUNCTION_6_0(*(v2 + 24));
  return sub_1C87FE8F0;
}

uint64_t Siri_Nlu_External_UsoEdge.label.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OUTLINED_FUNCTION_220();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_170();
  type metadata accessor for Siri_Nlu_External_UsoEdge(v7);
  sub_1C8778810();
  v8 = type metadata accessor for Siri_Nlu_External_UsoEdgeLabel(0);
  v9 = OUTLINED_FUNCTION_199();
  OUTLINED_FUNCTION_76(v9, v10, v8);
  if (v11)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v12 = a1 + *(v8 + 20);
    *v12 = 0;
    *(v12 + 4) = 1;
    v13 = a1 + *(v8 + 24);
    *v13 = 0;
    *(v13 + 4) = 1;
    type metadata accessor for Siri_Nlu_External_UsoLabel(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v14, v15, v16, v17);
    v18 = OUTLINED_FUNCTION_199();
    result = OUTLINED_FUNCTION_76(v18, v19, v8);
    if (!v11)
    {
      return sub_1C8778ED8(v1, &qword_1EC2B61B0, &qword_1C8BE6E40);
    }
  }

  else
  {
    OUTLINED_FUNCTION_52_1();
    return sub_1C87A386C();
  }

  return result;
}

uint64_t Siri_Nlu_External_UsoEdge.label.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_UsoEdge(v1);
  sub_1C8778ED8(v0 + *(v2 + 28), &qword_1EC2B61B0, &qword_1C8BE6E40);
  OUTLINED_FUNCTION_52_1();
  OUTLINED_FUNCTION_200();
  sub_1C87A386C();
  type metadata accessor for Siri_Nlu_External_UsoEdgeLabel(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_UsoEdge.label.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_107(v7);
  v9 = type metadata accessor for Siri_Nlu_External_UsoEdgeLabel(v8);
  *(v0 + 16) = v9;
  OUTLINED_FUNCTION_21();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  *(v0 + 40) = *(type metadata accessor for Siri_Nlu_External_UsoEdge(v14) + 28);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_0_0();
  if (v15)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_7_0(*(v9 + 20));
    OUTLINED_FUNCTION_7_0(*(v9 + 24));
    type metadata accessor for Siri_Nlu_External_UsoLabel(0);
    OUTLINED_FUNCTION_5();
    __swift_storeEnumTagSinglePayload(v16, v17, v18, v19);
    OUTLINED_FUNCTION_0_0();
    if (!v15)
    {
      sub_1C8778ED8(v7, &qword_1EC2B61B0, &qword_1C8BE6E40);
    }
  }

  else
  {
    OUTLINED_FUNCTION_52_1();
    sub_1C87A386C();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

uint64_t sub_1C8807FA4()
{
  v1 = OUTLINED_FUNCTION_84();
  v2(v1);
  OUTLINED_FUNCTION_21();
  v3 = OUTLINED_FUNCTION_218();
  v4(v3);
  return v0;
}

uint64_t sub_1C8808034()
{
  OUTLINED_FUNCTION_50();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_27_0();
  v7 = v1(v6);
  OUTLINED_FUNCTION_202_0(*(v7 + 28));
  OUTLINED_FUNCTION_85_1();
  sub_1C8778810();
  v8 = v0(0);
  OUTLINED_FUNCTION_48_2(v8);
  return OUTLINED_FUNCTION_216_0();
}

uint64_t sub_1C88080FC()
{
  v1 = OUTLINED_FUNCTION_46_1();
  v2(v1);
  OUTLINED_FUNCTION_84_1();
  sub_1C8778ED8(v3, v4, v5);
  v0(0);
  v6 = OUTLINED_FUNCTION_73_0();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t sub_1C88081A4()
{
  v0 = OUTLINED_FUNCTION_167();
  v1(v0);
  OUTLINED_FUNCTION_4();
  if (v3)
  {
    return v2;
  }

  else
  {
    return 0;
  }
}

void Siri_Nlu_External_UsoEdgeLabel.usoElementID.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = type metadata accessor for Siri_Nlu_External_UsoEdgeLabel(v0);
  OUTLINED_FUNCTION_59_0(*(v1 + 20));
}

uint64_t (*Siri_Nlu_External_UsoEdgeLabel.usoElementID.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_UsoEdgeLabel(v1);
  OUTLINED_FUNCTION_6_0(*(v2 + 20));
  return sub_1C8801920;
}

void Siri_Nlu_External_UsoEdgeLabel.enumeration.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = type metadata accessor for Siri_Nlu_External_UsoEdgeLabel(v0);
  OUTLINED_FUNCTION_59_0(*(v1 + 24));
}

uint64_t (*Siri_Nlu_External_UsoEdgeLabel.enumeration.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_UsoEdgeLabel(v1);
  OUTLINED_FUNCTION_6_0(*(v2 + 24));
  return sub_1C8801920;
}

uint64_t Siri_Nlu_External_UsoEdgeLabel.baseEdgeLabel.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_UsoEdgeLabel(v5);
  OUTLINED_FUNCTION_57_0();
  v6 = type metadata accessor for Siri_Nlu_External_UsoLabel(0);
  OUTLINED_FUNCTION_1_0();
  if (v7)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_18_2(*(v6 + 20));
    result = OUTLINED_FUNCTION_1_0();
    if (!v7)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B6950, &unk_1C8BF4880);
    }
  }

  else
  {
    OUTLINED_FUNCTION_23_3();
    OUTLINED_FUNCTION_121();
    return sub_1C87A386C();
  }

  return result;
}

uint64_t Siri_Nlu_External_UsoEdgeLabel.baseEdgeLabel.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_UsoEdgeLabel(v1);
  sub_1C8778ED8(v0 + *(v2 + 28), &qword_1EC2B6950, &unk_1C8BF4880);
  OUTLINED_FUNCTION_23_3();
  OUTLINED_FUNCTION_200();
  sub_1C87A386C();
  type metadata accessor for Siri_Nlu_External_UsoLabel(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_UsoLabel.init()(uint64_t a1)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  v1 = type metadata accessor for Siri_Nlu_External_UsoLabel(0);
  OUTLINED_FUNCTION_18_2(*(v1 + 20));
}

void Siri_Nlu_External_UsoEdgeLabel.baseEdgeLabel.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_107(v7);
  v9 = type metadata accessor for Siri_Nlu_External_UsoLabel(v8);
  *(v0 + 16) = v9;
  OUTLINED_FUNCTION_21();
  v11 = *(v10 + 64);
  v12 = __swift_coroFrameAllocStub(v11);
  v13 = OUTLINED_FUNCTION_243(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_168(v14);
  v16 = *(type metadata accessor for Siri_Nlu_External_UsoEdgeLabel(v15) + 28);
  *(v0 + 40) = v16;
  OUTLINED_FUNCTION_13(v16);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_73(v7);
  if (v17)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    v18 = (v11 + *(v9 + 20));
    *v18 = 0;
    v18[1] = 0;
    OUTLINED_FUNCTION_73(v7);
    if (!v17)
    {
      sub_1C8778ED8(v7, &qword_1EC2B6950, &unk_1C8BF4880);
    }
  }

  else
  {
    OUTLINED_FUNCTION_23_3();
    OUTLINED_FUNCTION_184();
    sub_1C87A386C();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

void Siri_Nlu_External_UsoEntityIdentifier.nodeIndex.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier(v0);
  OUTLINED_FUNCTION_59_0(*(v1 + 20));
}

uint64_t (*Siri_Nlu_External_UsoEntityIdentifier.nodeIndex.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier(v1);
  OUTLINED_FUNCTION_6_0(*(v2 + 20));
  return sub_1C8801920;
}

uint64_t Siri_Nlu_External_UsoEntityIdentifier.backingAppBundleID.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier(0);
  if (OUTLINED_FUNCTION_8_0(*(v0 + 24)))
  {
    OUTLINED_FUNCTION_20();
  }

  else
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t Siri_Nlu_External_UsoEntityIdentifier.backingAppBundleID.setter()
{
  v3 = OUTLINED_FUNCTION_68();
  type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier(v3);
  result = OUTLINED_FUNCTION_24_0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Siri_Nlu_External_UsoEntityIdentifier.backingAppBundleID.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 24)))
  {
    OUTLINED_FUNCTION_15_1();
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  OUTLINED_FUNCTION_13_4(v4, v5);

  return OUTLINED_FUNCTION_12();
}

Swift::Void __swiftcall Siri_Nlu_External_UsoEntityIdentifier.clearBackingAppBundleID()()
{
  type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier(0);
  OUTLINED_FUNCTION_25_2();
  *v0 = 0;
  v0[1] = 0;
}

uint64_t Siri_Nlu_External_UsoEntityIdentifier.value.getter()
{
  v0 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier(0);
  if (OUTLINED_FUNCTION_8_0(*(v0 + 28)))
  {
    OUTLINED_FUNCTION_20();
  }

  else
  {
    OUTLINED_FUNCTION_19_0();
  }

  return OUTLINED_FUNCTION_218();
}

uint64_t Siri_Nlu_External_UsoEntityIdentifier.value.setter()
{
  v3 = OUTLINED_FUNCTION_68();
  type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier(v3);
  result = OUTLINED_FUNCTION_24_0();
  *v1 = v2;
  v1[1] = v0;
  return result;
}

uint64_t Siri_Nlu_External_UsoEntityIdentifier.value.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 28)))
  {
    OUTLINED_FUNCTION_15_1();
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  OUTLINED_FUNCTION_13_4(v4, v5);

  return OUTLINED_FUNCTION_12();
}

Swift::Void __swiftcall Siri_Nlu_External_UsoEntityIdentifier.clearValue()()
{
  type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier(0);
  OUTLINED_FUNCTION_25_2();
  *v0 = 0;
  v0[1] = 0;
}

uint64_t Siri_Nlu_External_UsoEntityIdentifier.namespace.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier(v5);
  OUTLINED_FUNCTION_57_0();
  sub_1C8BD493C();
  OUTLINED_FUNCTION_1_0();
  if (v6)
  {
    sub_1C8BD492C();
    result = OUTLINED_FUNCTION_1_0();
    if (!v6)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B6110, &qword_1C8BF5070);
    }
  }

  else
  {
    OUTLINED_FUNCTION_35_1();
    v7 = OUTLINED_FUNCTION_37_4();
    return v8(v7);
  }

  return result;
}

uint64_t sub_1C8808BB4()
{
  v1 = OUTLINED_FUNCTION_65_2();
  v2(v1);
  OUTLINED_FUNCTION_84_1();
  sub_1C8778ED8(v3, v4, v5);
  v0(0);
  OUTLINED_FUNCTION_21();
  v6 = OUTLINED_FUNCTION_159_1();
  v7(v6);
  v8 = OUTLINED_FUNCTION_99_0();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

void Siri_Nlu_External_UsoEntityIdentifier.namespace.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD493C();
  OUTLINED_FUNCTION_4_6(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_38_4(v14);
  v16 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier(v15);
  OUTLINED_FUNCTION_32_5(*(v16 + 32));
  OUTLINED_FUNCTION_7();
  if (v17)
  {
    sub_1C8BD492C();
    OUTLINED_FUNCTION_7();
    if (!v17)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6110, &qword_1C8BF5070);
    }
  }

  else
  {
    v18 = OUTLINED_FUNCTION_15_4();
    v19(v18);
  }

  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8808DB4()
{
  OUTLINED_FUNCTION_50();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_27_0();
  v7 = v1(v6);
  OUTLINED_FUNCTION_202_0(*(v7 + 32));
  OUTLINED_FUNCTION_85_1();
  sub_1C8778810();
  v8 = v0(0);
  OUTLINED_FUNCTION_48_2(v8);
  return OUTLINED_FUNCTION_216_0();
}

uint64_t sub_1C8808E7C()
{
  v1 = OUTLINED_FUNCTION_46_1();
  v2(v1);
  OUTLINED_FUNCTION_84_1();
  sub_1C8778ED8(v3, v4, v5);
  v0(0);
  v6 = OUTLINED_FUNCTION_73_0();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Siri_Nlu_External_UsoEntityIdentifier.probability.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier(v5);
  OUTLINED_FUNCTION_57_0();
  sub_1C8BD48FC();
  v6 = OUTLINED_FUNCTION_1_0();
  if (v7)
  {
    MEMORY[0x1CCA7D9E0](v6);
    result = OUTLINED_FUNCTION_1_0();
    if (!v7)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B5FC8, &unk_1C8BE8DA0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_35_1();
    v8 = OUTLINED_FUNCTION_37_4();
    return v9(v8);
  }

  return result;
}

uint64_t sub_1C8809004()
{
  v1 = OUTLINED_FUNCTION_65_2();
  v2(v1);
  OUTLINED_FUNCTION_84_1();
  sub_1C8778ED8(v3, v4, v5);
  v0(0);
  OUTLINED_FUNCTION_21();
  v6 = OUTLINED_FUNCTION_159_1();
  v7(v6);
  v8 = OUTLINED_FUNCTION_99_0();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

void Siri_Nlu_External_UsoEntityIdentifier.probability.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD48FC();
  OUTLINED_FUNCTION_4_6(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_38_4(v14);
  v16 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier(v15);
  OUTLINED_FUNCTION_32_5(*(v16 + 36));
  v17 = OUTLINED_FUNCTION_7();
  if (v18)
  {
    MEMORY[0x1CCA7D9E0](v17);
    OUTLINED_FUNCTION_7();
    if (!v18)
    {
      sub_1C8778ED8(v0, &qword_1EC2B5FC8, &unk_1C8BE8DA0);
    }
  }

  else
  {
    v19 = OUTLINED_FUNCTION_15_4();
    v20(v19);
  }

  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C8809218()
{
  OUTLINED_FUNCTION_50();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_27_0();
  v7 = v1(v6);
  OUTLINED_FUNCTION_202_0(*(v7 + 36));
  OUTLINED_FUNCTION_85_1();
  sub_1C8778810();
  v8 = v0(0);
  OUTLINED_FUNCTION_48_2(v8);
  return OUTLINED_FUNCTION_216_0();
}

uint64_t sub_1C88092E0()
{
  v1 = OUTLINED_FUNCTION_46_1();
  v2(v1);
  OUTLINED_FUNCTION_84_1();
  sub_1C8778ED8(v3, v4, v5);
  v0(0);
  v6 = OUTLINED_FUNCTION_73_0();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

void Siri_Nlu_External_UsoEntityIdentifier.sourceComponent.getter()
{
  v1 = OUTLINED_FUNCTION_207();
  type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier(v1);
  OUTLINED_FUNCTION_236_0();
  *v0 = v2;
}

uint64_t Siri_Nlu_External_UsoEntityIdentifier.sourceComponent.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier(0);
  *(v1 + *(result + 40)) = v2;
  return result;
}

uint64_t (*Siri_Nlu_External_UsoEntityIdentifier.sourceComponent.modify(void *a1))(uint64_t result)
{
  v2 = OUTLINED_FUNCTION_55_0(a1);
  *(v1 + 8) = *(type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier(v2) + 40);
  OUTLINED_FUNCTION_236_0();
  *(v1 + 12) = v3;
  return j__OUTLINED_FUNCTION_158;
}

uint64_t Siri_Nlu_External_UsoEntityIdentifier.groupIndex.getter()
{
  type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier(0);
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

void Siri_Nlu_External_UsoEntityIdentifier.groupIndex.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier(v0);
  OUTLINED_FUNCTION_59_0(*(v1 + 44));
}

uint64_t (*Siri_Nlu_External_UsoEntityIdentifier.groupIndex.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier(v1);
  OUTLINED_FUNCTION_6_0(*(v2 + 44));
  return sub_1C8801920;
}

uint64_t Siri_Nlu_External_UsoEntityIdentifier.interpretationGroup.getter()
{
  type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier(0);
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

void Siri_Nlu_External_UsoEntityIdentifier.interpretationGroup.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  v1 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier(v0);
  OUTLINED_FUNCTION_59_0(*(v1 + 48));
}

uint64_t (*Siri_Nlu_External_UsoEntityIdentifier.interpretationGroup.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  v2 = type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier(v1);
  OUTLINED_FUNCTION_6_0(*(v2 + 48));
  return sub_1C8801920;
}

uint64_t sub_1C88096B4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C881D1D0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t Siri_Nlu_External_UsoEntityIdentifier.init()@<X0>(uint64_t a2@<X8>)
{
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  type metadata accessor for Siri_Nlu_External_UsoEntityIdentifier(0);
  OUTLINED_FUNCTION_122_0();
  *v4 = 0;
  *(v4 + 4) = 1;
  OUTLINED_FUNCTION_18_2(*(v5 + 24));
  OUTLINED_FUNCTION_18_2(*(v6 + 28));
  sub_1C8BD493C();
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v7, v8, v9, v10);
  sub_1C8BD48FC();
  OUTLINED_FUNCTION_5();
  result = __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  *(a2 + v2[10]) = 7;
  v16 = a2 + v2[11];
  *v16 = 0;
  *(v16 + 4) = 1;
  v17 = a2 + v2[12];
  *v17 = 0;
  *(v17 + 4) = 1;
  return result;
}

uint64_t Siri_Nlu_External_UsoOntologyVocabulary.usoVersion.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_UsoOntologyVocabulary(v5);
  OUTLINED_FUNCTION_57_0();
  v6 = type metadata accessor for Siri_Nlu_External_SemVer(0);
  OUTLINED_FUNCTION_1_0();
  if (v7)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_96_0(v6[5]);
    OUTLINED_FUNCTION_96_0(v6[6]);
    OUTLINED_FUNCTION_96_0(v6[7]);
    result = OUTLINED_FUNCTION_1_0();
    if (!v7)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B6138, &unk_1C8BE8D80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_7();
    OUTLINED_FUNCTION_121();
    return sub_1C87A386C();
  }

  return result;
}

uint64_t Siri_Nlu_External_UsoOntologyVocabulary.usoVersion.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  v2 = type metadata accessor for Siri_Nlu_External_UsoOntologyVocabulary(v1);
  sub_1C8778ED8(v0 + *(v2 + 24), &qword_1EC2B6138, &unk_1C8BE8D80);
  OUTLINED_FUNCTION_9_7();
  OUTLINED_FUNCTION_200();
  sub_1C87A386C();
  type metadata accessor for Siri_Nlu_External_SemVer(0);
  v3 = OUTLINED_FUNCTION_13_3();

  return __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
}

void Siri_Nlu_External_UsoOntologyVocabulary.usoVersion.modify()
{
  OUTLINED_FUNCTION_261();
  v1 = OUTLINED_FUNCTION_251();
  v2 = __swift_coroFrameAllocStub(v1);
  OUTLINED_FUNCTION_18_1(v2);
  v3 = OUTLINED_FUNCTION_104_0();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_80(v5);
  v7 = __swift_coroFrameAllocStub(*(v6 + 64));
  v8 = OUTLINED_FUNCTION_107(v7);
  v9 = type metadata accessor for Siri_Nlu_External_SemVer(v8);
  *(v0 + 16) = v9;
  OUTLINED_FUNCTION_21();
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_243(v11);
  v13 = __swift_coroFrameAllocStub(v12);
  v14 = OUTLINED_FUNCTION_168(v13);
  v15 = *(type metadata accessor for Siri_Nlu_External_UsoOntologyVocabulary(v14) + 24);
  *(v0 + 40) = v15;
  OUTLINED_FUNCTION_13(v15);
  OUTLINED_FUNCTION_179();
  OUTLINED_FUNCTION_73(v7);
  if (v16)
  {
    _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
    OUTLINED_FUNCTION_7_0(v9[5]);
    OUTLINED_FUNCTION_7_0(v9[6]);
    OUTLINED_FUNCTION_7_0(v9[7]);
    OUTLINED_FUNCTION_73(v7);
    if (!v16)
    {
      sub_1C8778ED8(v7, &qword_1EC2B6138, &unk_1C8BE8D80);
    }
  }

  else
  {
    OUTLINED_FUNCTION_9_7();
    OUTLINED_FUNCTION_184();
    sub_1C87A386C();
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_260();
}

void sub_1C8809A90()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v3 = v0;
  v5 = *(*v4 + 10);
  v6 = (*v4)[3];
  v7 = (*v4)[4];
  v8 = (*v4)[1];
  v9 = (*v4)[2];
  v10 = **v4;
  if (v11)
  {
    OUTLINED_FUNCTION_254_0();
    sub_1C8807FA4();
    sub_1C8778ED8(v10 + v5, v3, v2);
    sub_1C87A386C();
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v12, v13, v14, v9);
    OUTLINED_FUNCTION_253();
    sub_1C87A3B74();
  }

  else
  {
    sub_1C8778ED8(v10 + v5, v0, v1);
    sub_1C87A386C();
    OUTLINED_FUNCTION_19_1();
    __swift_storeEnumTagSinglePayload(v15, v16, v17, v9);
  }

  free(v7);
  free(v6);
  free(v8);
  OUTLINED_FUNCTION_125();

  free(v18);
}

uint64_t sub_1C8809C34()
{
  v0 = OUTLINED_FUNCTION_207();
  v1(v0);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v2 = OUTLINED_FUNCTION_196();

  return v3(v2);
}

uint64_t sub_1C8809CC0()
{
  v2 = OUTLINED_FUNCTION_241();
  v4 = *(v3(v2) + 20);
  sub_1C8BD49FC();
  OUTLINED_FUNCTION_21();
  v6 = *(v5 + 40);

  return v6(v1 + v4, v0);
}

uint64_t Siri_Nlu_External_UsoOntologyVocabulary.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_UsoOntologyVocabulary(v0);
  return OUTLINED_FUNCTION_242();
}

uint64_t Siri_Nlu_External_UsoOntologyVocabulary.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Siri_Nlu_External_UsoOntologyVocabulary(0);
  OUTLINED_FUNCTION_122_0();
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  type metadata accessor for Siri_Nlu_External_SemVer(0);
  OUTLINED_FUNCTION_5();

  return __swift_storeEnumTagSinglePayload(v1, v2, v3, v4);
}

uint64_t sub_1C8809DF0(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return Siri_Nlu_External_UsoLabel.value.setter(v1, v2);
}

uint64_t Siri_Nlu_External_UsoLabel.value.modify()
{
  v0 = OUTLINED_FUNCTION_17_0();
  v1 = __swift_coroFrameAllocStub(v0);
  v2 = OUTLINED_FUNCTION_41(v1);
  v3 = type metadata accessor for Siri_Nlu_External_UsoLabel(v2);
  if (OUTLINED_FUNCTION_4_1(*(v3 + 20)))
  {
    OUTLINED_FUNCTION_15_1();
  }

  else
  {
    OUTLINED_FUNCTION_14_1();
  }

  OUTLINED_FUNCTION_13_4(v4, v5);

  return OUTLINED_FUNCTION_12();
}

void Siri_Nlu_External_MatchInfo.matchSignalBitset.setter()
{
  v0 = OUTLINED_FUNCTION_241();
  matched = type metadata accessor for Siri_Nlu_External_MatchInfo(v0);
  OUTLINED_FUNCTION_59_0(*(matched + 24));
}

uint64_t (*Siri_Nlu_External_MatchInfo.matchSignalBitset.modify(void *a1))(uint64_t result)
{
  v1 = OUTLINED_FUNCTION_55_0(a1);
  matched = type metadata accessor for Siri_Nlu_External_MatchInfo(v1);
  OUTLINED_FUNCTION_6_0(*(matched + 24));
  return sub_1C8801920;
}

uint64_t Siri_Nlu_External_MatchInfo.matchScore.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_MatchInfo(v5);
  OUTLINED_FUNCTION_57_0();
  sub_1C8BD483C();
  OUTLINED_FUNCTION_1_0();
  if (v6)
  {
    sub_1C8BD482C();
    result = OUTLINED_FUNCTION_1_0();
    if (!v6)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B6198, &unk_1C8BE6E30);
    }
  }

  else
  {
    OUTLINED_FUNCTION_35_1();
    v7 = OUTLINED_FUNCTION_37_4();
    return v8(v7);
  }

  return result;
}

uint64_t sub_1C880A128()
{
  v1 = OUTLINED_FUNCTION_65_2();
  v2(v1);
  OUTLINED_FUNCTION_84_1();
  sub_1C8778ED8(v3, v4, v5);
  v0(0);
  OUTLINED_FUNCTION_21();
  v6 = OUTLINED_FUNCTION_159_1();
  v7(v6);
  v8 = OUTLINED_FUNCTION_99_0();

  return __swift_storeEnumTagSinglePayload(v8, v9, v10, v11);
}

void Siri_Nlu_External_MatchInfo.matchScore.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD483C();
  OUTLINED_FUNCTION_4_6(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_38_4(v14);
  matched = type metadata accessor for Siri_Nlu_External_MatchInfo(v15);
  OUTLINED_FUNCTION_32_5(*(matched + 28));
  OUTLINED_FUNCTION_7();
  if (v17)
  {
    sub_1C8BD482C();
    OUTLINED_FUNCTION_7();
    if (!v17)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6198, &unk_1C8BE6E30);
    }
  }

  else
  {
    v18 = OUTLINED_FUNCTION_15_4();
    v19(v18);
  }

  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_MatchInfo.maxTokenCount.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_MatchInfo(v5);
  OUTLINED_FUNCTION_57_0();
  sub_1C8BD499C();
  OUTLINED_FUNCTION_1_0();
  if (v6)
  {
    sub_1C8BD486C();
    result = OUTLINED_FUNCTION_1_0();
    if (!v6)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B6948, &unk_1C8BF9F90);
    }
  }

  else
  {
    OUTLINED_FUNCTION_35_1();
    v7 = OUTLINED_FUNCTION_37_4();
    return v8(v7);
  }

  return result;
}

void Siri_Nlu_External_MatchInfo.maxTokenCount.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD499C();
  OUTLINED_FUNCTION_4_6(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_38_4(v14);
  matched = type metadata accessor for Siri_Nlu_External_MatchInfo(v15);
  OUTLINED_FUNCTION_32_5(*(matched + 32));
  OUTLINED_FUNCTION_7();
  if (v17)
  {
    sub_1C8BD486C();
    OUTLINED_FUNCTION_7();
    if (!v17)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6948, &unk_1C8BF9F90);
    }
  }

  else
  {
    v18 = OUTLINED_FUNCTION_15_4();
    v19(v18);
  }

  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_MatchInfo.matchedTokenCount.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD499C();
  OUTLINED_FUNCTION_4_6(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_38_4(v14);
  matched = type metadata accessor for Siri_Nlu_External_MatchInfo(v15);
  OUTLINED_FUNCTION_32_5(*(matched + 36));
  OUTLINED_FUNCTION_7();
  if (v17)
  {
    sub_1C8BD486C();
    OUTLINED_FUNCTION_7();
    if (!v17)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6948, &unk_1C8BF9F90);
    }
  }

  else
  {
    v18 = OUTLINED_FUNCTION_15_4();
    v19(v18);
  }

  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_MatchInfo.maxStopWordCount.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_MatchInfo(v5);
  OUTLINED_FUNCTION_57_0();
  sub_1C8BD499C();
  OUTLINED_FUNCTION_1_0();
  if (v6)
  {
    sub_1C8BD486C();
    result = OUTLINED_FUNCTION_1_0();
    if (!v6)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B6948, &unk_1C8BF9F90);
    }
  }

  else
  {
    OUTLINED_FUNCTION_35_1();
    v7 = OUTLINED_FUNCTION_37_4();
    return v8(v7);
  }

  return result;
}

uint64_t Siri_Nlu_External_MatchInfo.maxStopWordCount.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  matched = type metadata accessor for Siri_Nlu_External_MatchInfo(v1);
  sub_1C8778ED8(v0 + *(matched + 40), &qword_1EC2B6948, &unk_1C8BF9F90);
  sub_1C8BD499C();
  OUTLINED_FUNCTION_21();
  v3 = OUTLINED_FUNCTION_120_0();
  v4(v3);
  v5 = OUTLINED_FUNCTION_63_1();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void Siri_Nlu_External_MatchInfo.maxStopWordCount.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD499C();
  OUTLINED_FUNCTION_4_6(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_38_4(v14);
  matched = type metadata accessor for Siri_Nlu_External_MatchInfo(v15);
  OUTLINED_FUNCTION_32_5(*(matched + 40));
  OUTLINED_FUNCTION_7();
  if (v17)
  {
    sub_1C8BD486C();
    OUTLINED_FUNCTION_7();
    if (!v17)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6948, &unk_1C8BF9F90);
    }
  }

  else
  {
    v18 = OUTLINED_FUNCTION_15_4();
    v19(v18);
  }

  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C880AB24()
{
  OUTLINED_FUNCTION_50();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(v2, v3);
  OUTLINED_FUNCTION_80(v4);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v5);
  v6 = OUTLINED_FUNCTION_27_0();
  v7 = v1(v6);
  OUTLINED_FUNCTION_202_0(*(v7 + 40));
  OUTLINED_FUNCTION_85_1();
  sub_1C8778810();
  v8 = v0(0);
  OUTLINED_FUNCTION_48_2(v8);
  return OUTLINED_FUNCTION_216_0();
}

uint64_t sub_1C880ABEC()
{
  v1 = OUTLINED_FUNCTION_46_1();
  v2(v1);
  OUTLINED_FUNCTION_84_1();
  sub_1C8778ED8(v3, v4, v5);
  v0(0);
  v6 = OUTLINED_FUNCTION_73_0();

  return __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
}

uint64_t Siri_Nlu_External_MatchInfo.matchedStopWordCount.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_MatchInfo(v5);
  OUTLINED_FUNCTION_57_0();
  sub_1C8BD499C();
  OUTLINED_FUNCTION_1_0();
  if (v6)
  {
    sub_1C8BD486C();
    result = OUTLINED_FUNCTION_1_0();
    if (!v6)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B6948, &unk_1C8BF9F90);
    }
  }

  else
  {
    OUTLINED_FUNCTION_35_1();
    v7 = OUTLINED_FUNCTION_37_4();
    return v8(v7);
  }

  return result;
}

uint64_t Siri_Nlu_External_MatchInfo.matchedStopWordCount.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  matched = type metadata accessor for Siri_Nlu_External_MatchInfo(v1);
  sub_1C8778ED8(v0 + *(matched + 44), &qword_1EC2B6948, &unk_1C8BF9F90);
  sub_1C8BD499C();
  OUTLINED_FUNCTION_21();
  v3 = OUTLINED_FUNCTION_120_0();
  v4(v3);
  v5 = OUTLINED_FUNCTION_63_1();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void Siri_Nlu_External_MatchInfo.matchedStopWordCount.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD499C();
  OUTLINED_FUNCTION_4_6(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_38_4(v14);
  matched = type metadata accessor for Siri_Nlu_External_MatchInfo(v15);
  OUTLINED_FUNCTION_32_5(*(matched + 44));
  OUTLINED_FUNCTION_7();
  if (v17)
  {
    sub_1C8BD486C();
    OUTLINED_FUNCTION_7();
    if (!v17)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6948, &unk_1C8BF9F90);
    }
  }

  else
  {
    v18 = OUTLINED_FUNCTION_15_4();
    v19(v18);
  }

  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_MatchInfo.hasMatchedStopWordCount.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  matched = type metadata accessor for Siri_Nlu_External_MatchInfo(v4);
  OUTLINED_FUNCTION_13(*(matched + 44));
  OUTLINED_FUNCTION_262();
  v6 = sub_1C8BD499C();
  OUTLINED_FUNCTION_10(v6);
  return OUTLINED_FUNCTION_235();
}

Swift::Void __swiftcall Siri_Nlu_External_MatchInfo.clearMatchedStopWordCount()()
{
  matched = type metadata accessor for Siri_Nlu_External_MatchInfo(0);
  sub_1C8778ED8(v0 + *(matched + 44), &qword_1EC2B6948, &unk_1C8BF9F90);
  sub_1C8BD499C();
  OUTLINED_FUNCTION_5();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_External_MatchInfo.editDistance.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_MatchInfo(v5);
  OUTLINED_FUNCTION_57_0();
  sub_1C8BD499C();
  OUTLINED_FUNCTION_1_0();
  if (v6)
  {
    sub_1C8BD486C();
    result = OUTLINED_FUNCTION_1_0();
    if (!v6)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B6948, &unk_1C8BF9F90);
    }
  }

  else
  {
    OUTLINED_FUNCTION_35_1();
    v7 = OUTLINED_FUNCTION_37_4();
    return v8(v7);
  }

  return result;
}

uint64_t Siri_Nlu_External_MatchInfo.editDistance.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  matched = type metadata accessor for Siri_Nlu_External_MatchInfo(v1);
  sub_1C8778ED8(v0 + *(matched + 48), &qword_1EC2B6948, &unk_1C8BF9F90);
  sub_1C8BD499C();
  OUTLINED_FUNCTION_21();
  v3 = OUTLINED_FUNCTION_120_0();
  v4(v3);
  v5 = OUTLINED_FUNCTION_63_1();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void Siri_Nlu_External_MatchInfo.editDistance.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD499C();
  OUTLINED_FUNCTION_4_6(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_38_4(v14);
  matched = type metadata accessor for Siri_Nlu_External_MatchInfo(v15);
  OUTLINED_FUNCTION_32_5(*(matched + 48));
  OUTLINED_FUNCTION_7();
  if (v17)
  {
    sub_1C8BD486C();
    OUTLINED_FUNCTION_7();
    if (!v17)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6948, &unk_1C8BF9F90);
    }
  }

  else
  {
    v18 = OUTLINED_FUNCTION_15_4();
    v19(v18);
  }

  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_MatchInfo.hasEditDistance.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  matched = type metadata accessor for Siri_Nlu_External_MatchInfo(v4);
  OUTLINED_FUNCTION_13(*(matched + 48));
  OUTLINED_FUNCTION_262();
  v6 = sub_1C8BD499C();
  OUTLINED_FUNCTION_10(v6);
  return OUTLINED_FUNCTION_235();
}

Swift::Void __swiftcall Siri_Nlu_External_MatchInfo.clearEditDistance()()
{
  matched = type metadata accessor for Siri_Nlu_External_MatchInfo(0);
  sub_1C8778ED8(v0 + *(matched + 48), &qword_1EC2B6948, &unk_1C8BF9F90);
  sub_1C8BD499C();
  OUTLINED_FUNCTION_5();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_External_MatchInfo.maxAliasCount.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_MatchInfo(v5);
  OUTLINED_FUNCTION_57_0();
  sub_1C8BD499C();
  OUTLINED_FUNCTION_1_0();
  if (v6)
  {
    sub_1C8BD486C();
    result = OUTLINED_FUNCTION_1_0();
    if (!v6)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B6948, &unk_1C8BF9F90);
    }
  }

  else
  {
    OUTLINED_FUNCTION_35_1();
    v7 = OUTLINED_FUNCTION_37_4();
    return v8(v7);
  }

  return result;
}

uint64_t Siri_Nlu_External_MatchInfo.maxAliasCount.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  matched = type metadata accessor for Siri_Nlu_External_MatchInfo(v1);
  sub_1C8778ED8(v0 + *(matched + 52), &qword_1EC2B6948, &unk_1C8BF9F90);
  sub_1C8BD499C();
  OUTLINED_FUNCTION_21();
  v3 = OUTLINED_FUNCTION_120_0();
  v4(v3);
  v5 = OUTLINED_FUNCTION_63_1();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void Siri_Nlu_External_MatchInfo.maxAliasCount.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD499C();
  OUTLINED_FUNCTION_4_6(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_38_4(v14);
  matched = type metadata accessor for Siri_Nlu_External_MatchInfo(v15);
  OUTLINED_FUNCTION_32_5(*(matched + 52));
  OUTLINED_FUNCTION_7();
  if (v17)
  {
    sub_1C8BD486C();
    OUTLINED_FUNCTION_7();
    if (!v17)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6948, &unk_1C8BF9F90);
    }
  }

  else
  {
    v18 = OUTLINED_FUNCTION_15_4();
    v19(v18);
  }

  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_MatchInfo.hasMaxAliasCount.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  matched = type metadata accessor for Siri_Nlu_External_MatchInfo(v4);
  OUTLINED_FUNCTION_13(*(matched + 52));
  OUTLINED_FUNCTION_262();
  v6 = sub_1C8BD499C();
  OUTLINED_FUNCTION_10(v6);
  return OUTLINED_FUNCTION_235();
}

Swift::Void __swiftcall Siri_Nlu_External_MatchInfo.clearMaxAliasCount()()
{
  matched = type metadata accessor for Siri_Nlu_External_MatchInfo(0);
  sub_1C8778ED8(v0 + *(matched + 52), &qword_1EC2B6948, &unk_1C8BF9F90);
  sub_1C8BD499C();
  OUTLINED_FUNCTION_5();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_External_MatchInfo.matchedAliasCount.getter()
{
  v1 = OUTLINED_FUNCTION_220();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  type metadata accessor for Siri_Nlu_External_MatchInfo(v5);
  OUTLINED_FUNCTION_57_0();
  sub_1C8BD499C();
  OUTLINED_FUNCTION_1_0();
  if (v6)
  {
    sub_1C8BD486C();
    result = OUTLINED_FUNCTION_1_0();
    if (!v6)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B6948, &unk_1C8BF9F90);
    }
  }

  else
  {
    OUTLINED_FUNCTION_35_1();
    v7 = OUTLINED_FUNCTION_37_4();
    return v8(v7);
  }

  return result;
}

uint64_t Siri_Nlu_External_MatchInfo.matchedAliasCount.setter()
{
  v1 = OUTLINED_FUNCTION_241();
  matched = type metadata accessor for Siri_Nlu_External_MatchInfo(v1);
  sub_1C8778ED8(v0 + *(matched + 56), &qword_1EC2B6948, &unk_1C8BF9F90);
  sub_1C8BD499C();
  OUTLINED_FUNCTION_21();
  v3 = OUTLINED_FUNCTION_120_0();
  v4(v3);
  v5 = OUTLINED_FUNCTION_63_1();

  return __swift_storeEnumTagSinglePayload(v5, v6, v7, v8);
}

void Siri_Nlu_External_MatchInfo.matchedAliasCount.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_41_0();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_18_1(v3);
  v4 = OUTLINED_FUNCTION_104_0();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_39_2(v8);
  v9 = sub_1C8BD499C();
  OUTLINED_FUNCTION_4_6(v9);
  *(v1 + 24) = v10;
  v12 = __swift_coroFrameAllocStub(*(v11 + 64));
  v13 = OUTLINED_FUNCTION_116_0(v12);
  v14 = __swift_coroFrameAllocStub(v13);
  v15 = OUTLINED_FUNCTION_38_4(v14);
  matched = type metadata accessor for Siri_Nlu_External_MatchInfo(v15);
  OUTLINED_FUNCTION_32_5(*(matched + 56));
  OUTLINED_FUNCTION_7();
  if (v17)
  {
    sub_1C8BD486C();
    OUTLINED_FUNCTION_7();
    if (!v17)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6948, &unk_1C8BF9F90);
    }
  }

  else
  {
    v18 = OUTLINED_FUNCTION_15_4();
    v19(v18);
  }

  OUTLINED_FUNCTION_115_1();
  OUTLINED_FUNCTION_125();
}

uint64_t Siri_Nlu_External_MatchInfo.hasMatchedAliasCount.getter()
{
  v0 = OUTLINED_FUNCTION_12();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  OUTLINED_FUNCTION_80(v2);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_74();
  matched = type metadata accessor for Siri_Nlu_External_MatchInfo(v4);
  OUTLINED_FUNCTION_13(*(matched + 56));
  OUTLINED_FUNCTION_262();
  v6 = sub_1C8BD499C();
  OUTLINED_FUNCTION_10(v6);
  return OUTLINED_FUNCTION_235();
}

Swift::Void __swiftcall Siri_Nlu_External_MatchInfo.clearMatchedAliasCount()()
{
  matched = type metadata accessor for Siri_Nlu_External_MatchInfo(0);
  sub_1C8778ED8(v0 + *(matched + 56), &qword_1EC2B6948, &unk_1C8BF9F90);
  sub_1C8BD499C();
  OUTLINED_FUNCTION_5();

  __swift_storeEnumTagSinglePayload(v2, v3, v4, v5);
}

uint64_t Siri_Nlu_External_MatchInfo.unknownFields.modify()
{
  v0 = OUTLINED_FUNCTION_241();
  type metadata accessor for Siri_Nlu_External_MatchInfo(v0);
  return OUTLINED_FUNCTION_242();
}

SiriNLUTypes::Siri_Nlu_External_MatchInfo::AliasType_optional __swiftcall Siri_Nlu_External_MatchInfo.AliasType.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 12;
  if (rawValue < 0xC)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1C880BB38(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C881D224();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

SiriNLUTypes::Siri_Nlu_External_MatchInfo::MatchSignalBitFlags_optional __swiftcall Siri_Nlu_External_MatchInfo.MatchSignalBitFlags.init(rawValue:)(Swift::Int rawValue)
{
  if ((rawValue - 1) >= 8)
  {
    v2 = 4;
  }

  else
  {
    v2 = 0x304040402040100uLL >> (8 * (rawValue - 1));
  }

  *v1 = v2;
  return rawValue;
}

uint64_t sub_1C880BBF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C881FCB0();

  return MEMORY[0x1EEE15710](a1, a2, v4);
}

uint64_t sub_1C880BC5C@<X0>(uint64_t *a1@<X8>)
{
  result = Siri_Nlu_External_MatchInfo.MatchSignalBitFlags.rawValue.getter();
  *a1 = result;
  return result;
}

uint64_t Siri_Nlu_External_MatchInfo.init()@<X0>(void *a1@<X8>)
{
  *a1 = MEMORY[0x1E69E7CC0];
  type metadata accessor for Siri_Nlu_External_MatchInfo(0);
  OUTLINED_FUNCTION_122_0();
  _s12SiriNLUTypes0a14_Nlu_Internal_A22MessageTypes_AjaxQueryV17CorrectionOutcomeV4UndoVAGycfC_0();
  OUTLINED_FUNCTION_16_3(a1 + v1[6]);
  sub_1C8BD483C();
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v3, v4, v5, v6);
  v7 = sub_1C8BD499C();
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v8, v9, v10, v7);
  v11 = OUTLINED_FUNCTION_58_0(v1[9]);
  __swift_storeEnumTagSinglePayload(v11, v12, v13, v14);
  v15 = OUTLINED_FUNCTION_58_0(v1[10]);
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  v19 = OUTLINED_FUNCTION_58_0(v1[11]);
  __swift_storeEnumTagSinglePayload(v19, v20, v21, v22);
  v23 = OUTLINED_FUNCTION_58_0(v1[12]);
  __swift_storeEnumTagSinglePayload(v23, v24, v25, v26);
  v27 = OUTLINED_FUNCTION_58_0(v1[13]);
  __swift_storeEnumTagSinglePayload(v27, v28, v29, v30);
  v31 = OUTLINED_FUNCTION_58_0(v1[14]);

  return __swift_storeEnumTagSinglePayload(v31, v32, v33, v34);
}

uint64_t Siri_Nlu_External_UsoEntitySpan.nodeIndex.getter()
{
  OUTLINED_FUNCTION_45_1();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_277(v2 + 16, v4);
  if (*(v2 + 20))
  {
    return 0;
  }

  else
  {
    return *(v2 + 16);
  }
}

uint64_t Siri_Nlu_External_UsoEntitySpan.nodeIndex.setter()
{
  v2 = v1;
  v3 = OUTLINED_FUNCTION_241();
  v4 = *(type metadata accessor for Siri_Nlu_External_UsoEntitySpan(v3) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7 = *(v1 + v4);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_77_0();
    OUTLINED_FUNCTION_2();
    sub_1C8817220();
    v7 = v8;
    *(v2 + v4) = v8;
  }

  result = OUTLINED_FUNCTION_178_0(v7 + 16, v6);
  *(v7 + 16) = v0;
  *(v7 + 20) = 0;
  return result;
}

uint64_t Siri_Nlu_External_UsoEntitySpan.nodeIndex.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_34_0(v2) + 72) = v0;
  OUTLINED_FUNCTION_45_1();
  *(v1 + 84) = v3;
  v4 = *(v0 + v3);
  OUTLINED_FUNCTION_277(v4 + 16, v1);
  v5 = *(v4 + 16);
  if (*(v4 + 20))
  {
    v5 = 0;
  }

  *(v1 + 80) = v5;
  return OUTLINED_FUNCTION_31();
}

void sub_1C880BEF4(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 80);
  v5 = *(*a1 + 84);
  v6 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v3 + 84);
    v10 = *(v3 + 72);
    OUTLINED_FUNCTION_77_0();
    OUTLINED_FUNCTION_2();
    sub_1C8817220();
    v8 = v11;
    *(v10 + v9) = v11;
  }

  v12 = 48;
  if (a2)
  {
    v12 = 24;
  }

  OUTLINED_FUNCTION_37_0(v8 + 16, v3 + v12);
  *(v8 + 16) = v4;
  *(v8 + 20) = 0;

  free(v3);
}

BOOL Siri_Nlu_External_UsoEntitySpan.hasNodeIndex.getter()
{
  OUTLINED_FUNCTION_45_1();
  v2 = *(v0 + v1);
  OUTLINED_FUNCTION_277(v2 + 16, v4);
  return (*(v2 + 20) & 1) == 0;
}

Swift::Void __swiftcall Siri_Nlu_External_UsoEntitySpan.clearNodeIndex()()
{
  v2 = OUTLINED_FUNCTION_203_0();
  v4 = *(v0 + v1);
  if ((v2 & 1) == 0)
  {
    OUTLINED_FUNCTION_77_0();
    sub_1C8817220();
    v4 = v5;
    *(v0 + v1) = v5;
  }

  OUTLINED_FUNCTION_178_0(v4 + 16, v3);
  *(v4 + 16) = 0;
  *(v4 + 20) = 1;
}

void Siri_Nlu_External_UsoEntitySpan.originAppID.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_51();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_13_2(v8);
  v1[5] = sub_1C8BD493C();
  OUTLINED_FUNCTION_13_1();
  v1[6] = v9;
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_222_0(v11);
  v1[8] = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_124_0();
  OUTLINED_FUNCTION_123_1();
  OUTLINED_FUNCTION_0_0();
  if (v13)
  {
    sub_1C8BD492C();
    OUTLINED_FUNCTION_0_0();
    if (!v13)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6110, &qword_1C8BF5070);
    }
  }

  else
  {
    v14 = OUTLINED_FUNCTION_69_1();
    v15(v14);
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_UsoEntitySpan.sourceComponent.getter(_BYTE *a1@<X8>)
{
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_277(v1 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UsoEntitySpanP33_1AEE57490E029E64C145495E95471CEB13_StorageClass__sourceComponent, v4);
  OUTLINED_FUNCTION_236_0();
  *a1 = v3;
}

uint64_t Siri_Nlu_External_UsoEntitySpan.sourceComponent.setter(char *a1)
{
  v3 = v1;
  v4 = *a1;
  v5 = OUTLINED_FUNCTION_203_0();
  v7 = *(v1 + v2);
  if ((v5 & 1) == 0)
  {
    OUTLINED_FUNCTION_77_0();
    OUTLINED_FUNCTION_2();
    sub_1C8817220();
    v7 = v8;
    *(v3 + v2) = v8;
  }

  v9 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UsoEntitySpanP33_1AEE57490E029E64C145495E95471CEB13_StorageClass__sourceComponent;
  result = OUTLINED_FUNCTION_178_0(v7 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UsoEntitySpanP33_1AEE57490E029E64C145495E95471CEB13_StorageClass__sourceComponent, v6);
  *(v7 + v9) = v4;
  return result;
}

uint64_t Siri_Nlu_External_UsoEntitySpan.sourceComponent.modify()
{
  v2 = __swift_coroFrameAllocStub(0x58uLL);
  *(OUTLINED_FUNCTION_34_0(v2) + 72) = v0;
  OUTLINED_FUNCTION_45_1();
  *(v1 + 80) = v3;
  OUTLINED_FUNCTION_277(*(v0 + v3) + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UsoEntitySpanP33_1AEE57490E029E64C145495E95471CEB13_StorageClass__sourceComponent, v1);
  OUTLINED_FUNCTION_236_0();
  *(v1 + 84) = v4;
  return OUTLINED_FUNCTION_31();
}

void sub_1C880C3F4(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = *(*a1 + 84);
  v5 = *(*a1 + 80);
  v6 = *(*a1 + 72);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = *(v6 + v5);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v9 = *(v3 + 80);
    v10 = *(v3 + 72);
    OUTLINED_FUNCTION_77_0();
    OUTLINED_FUNCTION_2();
    sub_1C8817220();
    v8 = v11;
    *(v10 + v9) = v11;
  }

  v12 = 48;
  if (a2)
  {
    v12 = 24;
  }

  v13 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UsoEntitySpanP33_1AEE57490E029E64C145495E95471CEB13_StorageClass__sourceComponent;
  OUTLINED_FUNCTION_37_0(v8 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UsoEntitySpanP33_1AEE57490E029E64C145495E95471CEB13_StorageClass__sourceComponent, v3 + v12);
  *(v8 + v13) = v4;

  free(v3);
}

BOOL Siri_Nlu_External_UsoEntitySpan.hasSourceComponent.getter()
{
  OUTLINED_FUNCTION_45_1();
  v2 = *(v0 + v1);
  v3 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UsoEntitySpanP33_1AEE57490E029E64C145495E95471CEB13_StorageClass__sourceComponent;
  OUTLINED_FUNCTION_277(v2 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UsoEntitySpanP33_1AEE57490E029E64C145495E95471CEB13_StorageClass__sourceComponent, v5);
  return *(v2 + v3) != 7;
}

Swift::Void __swiftcall Siri_Nlu_External_UsoEntitySpan.clearSourceComponent()()
{
  v2 = OUTLINED_FUNCTION_203_0();
  v4 = *(v0 + v1);
  if ((v2 & 1) == 0)
  {
    OUTLINED_FUNCTION_77_0();
    sub_1C8817220();
    v4 = v5;
    *(v0 + v1) = v5;
  }

  v6 = OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UsoEntitySpanP33_1AEE57490E029E64C145495E95471CEB13_StorageClass__sourceComponent;
  OUTLINED_FUNCTION_178_0(v4 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UsoEntitySpanP33_1AEE57490E029E64C145495E95471CEB13_StorageClass__sourceComponent, v3);
  *(v4 + v6) = 7;
}

uint64_t sub_1C880C564()
{
  v1 = OUTLINED_FUNCTION_299_0();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80(v3);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v4);
  v5 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_75_0(v5);
  v6 = OUTLINED_FUNCTION_250_0();
  OUTLINED_FUNCTION_277(v6, v7);
  OUTLINED_FUNCTION_258_0();
  sub_1C8BD493C();
  OUTLINED_FUNCTION_1_0();
  if (v8)
  {
    sub_1C8BD492C();
    result = OUTLINED_FUNCTION_1_0();
    if (!v8)
    {
      return sub_1C8778ED8(v0, &qword_1EC2B6110, &qword_1C8BF5070);
    }
  }

  else
  {
    OUTLINED_FUNCTION_35_1();
    v9 = OUTLINED_FUNCTION_37_4();
    return v10(v9);
  }

  return result;
}

void sub_1C880C688()
{
  OUTLINED_FUNCTION_124();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_80(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_45();
  v11 = *(type metadata accessor for Siri_Nlu_External_UsoEntitySpan(v10) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v0 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_77_0();
    OUTLINED_FUNCTION_2();
    sub_1C8817220();
    v13 = v14;
    *(v5 + v11) = v14;
  }

  v15 = v4(0);
  OUTLINED_FUNCTION_21();
  v16 = OUTLINED_FUNCTION_299_0();
  v17(v16);
  OUTLINED_FUNCTION_19_1();
  __swift_storeEnumTagSinglePayload(v18, v19, v20, v15);
  OUTLINED_FUNCTION_208_0(v13 + *v2, &v21);
  OUTLINED_FUNCTION_256_0();
  swift_endAccess();
  OUTLINED_FUNCTION_125();
}

void Siri_Nlu_External_UsoEntitySpan.label.modify()
{
  OUTLINED_FUNCTION_124();
  v2 = OUTLINED_FUNCTION_51();
  v3 = __swift_coroFrameAllocStub(v2);
  OUTLINED_FUNCTION_14_2(v3);
  v4 = OUTLINED_FUNCTION_230();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  v8 = __swift_coroFrameAllocStub(*(v7 + 64));
  OUTLINED_FUNCTION_13_2(v8);
  v1[5] = sub_1C8BD493C();
  OUTLINED_FUNCTION_13_1();
  v1[6] = v9;
  v11 = __swift_coroFrameAllocStub(*(v10 + 64));
  v12 = OUTLINED_FUNCTION_222_0(v11);
  v1[8] = __swift_coroFrameAllocStub(v12);
  OUTLINED_FUNCTION_33_2();
  OUTLINED_FUNCTION_124_0();
  OUTLINED_FUNCTION_123_1();
  OUTLINED_FUNCTION_0_0();
  if (v13)
  {
    sub_1C8BD492C();
    OUTLINED_FUNCTION_0_0();
    if (!v13)
    {
      sub_1C8778ED8(v0, &qword_1EC2B6110, &qword_1C8BF5070);
    }
  }

  else
  {
    v14 = OUTLINED_FUNCTION_69_1();
    v15(v14);
  }

  OUTLINED_FUNCTION_31();
  OUTLINED_FUNCTION_125();
}

uint64_t sub_1C880C928(uint64_t *a1, uint64_t *a2, void *a3, uint64_t (*a4)(void))
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  OUTLINED_FUNCTION_80(v10);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v11);
  v12 = OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_75_0(v12);
  OUTLINED_FUNCTION_277(v4 + *a3, v17);
  sub_1C8778810();
  v13 = a4(0);
  OUTLINED_FUNCTION_76(v5, 1, v13);
  if (v14)
  {
    v15 = 0;
  }

  else
  {
    v15 = 1;
  }

  sub_1C8778ED8(v5, a1, a2);
  return v15;
}

void sub_1C880CA24()
{
  OUTLINED_FUNCTION_261();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(v6, v7);
  OUTLINED_FUNCTION_80(v8);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v9);
  v10 = OUTLINED_FUNCTION_45();
  v11 = *(type metadata accessor for Siri_Nlu_External_UsoEntitySpan(v10) + 20);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *(v0 + v11);
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    OUTLINED_FUNCTION_77_0();
    OUTLINED_FUNCTION_2();
    sub_1C8817220();
    v13 = v14;
    *(v5 + v11) = v14;
  }

  v4(0);
  OUTLINED_FUNCTION_5();
  __swift_storeEnumTagSinglePayload(v15, v16, v17, v18);
  OUTLINED_FUNCTION_208_0(v13 + *v2, &v19);
  OUTLINED_FUNCTION_256_0();
  swift_endAccess();
  OUTLINED_FUNCTION_260();
}

uint64_t Siri_Nlu_External_UsoEntitySpan.matchInfo.getter@<X0>(void *a1@<X8>)
{
  v4 = OUTLINED_FUNCTION_220();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(v4, v5);
  OUTLINED_FUNCTION_80(v6);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_74();
  OUTLINED_FUNCTION_75_0(v8);
  OUTLINED_FUNCTION_277(v1 + OBJC_IVAR____TtCV12SiriNLUTypes31Siri_Nlu_External_UsoEntitySpanP33_1AEE57490E029E64C145495E95471CEB13_StorageClass__matchInfo, v11);
  OUTLINED_FUNCTION_84_1();
  sub_1C8778810();
  type metadata accessor for Siri_Nlu_External_MatchInfo(0);
  OUTLINED_FUNCTION_1_0();
  if (v9)
  {
    Siri_Nlu_External_MatchInfo.init()(a1);
    result = OUTLINED_FUNCTION_1_0();
    if (!v9)
    {
      return sub_1C8778ED8(v2, &qword_1EC2B6958, &qword_1C8BE8DB0);
    }
  }

  else
  {
    OUTLINED_FUNCTION_54_1();
    OUTLINED_FUNCTION_121();
    return sub_1C87A386C();
  }

  return result;
}

uint64_t Siri_Nlu_External_UsoEntitySpan.matchInfo.setter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC2B6958, &qword_1C8BE8DB0);
  OUTLINED_FUNCTION_80(v1);
  OUTLINED_FUNCTION_77();
  MEMORY[0x1EEE9AC00](v2);
  v3 = OUTLINED_FUNCTION_170();
  v4 = *(type metadata accessor for Siri_Nlu_External_UsoEntitySpan(v3) + 20);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    OUTLINED_FUNCTION_77_0();
    OUTLINED_FUNCTION_2();
    sub_1C8817220();
    *(v0 + v4) = v5;
  }

  OUTLINED_FUNCTION_54_1();
  sub_1C87A386C();
  type metadata accessor for Siri_Nlu_External_MatchInfo(0);
  OUTLINED_FUNCTION_224_0();
  OUTLINED_FUNCTION_19_1();
  __swift_storeEnumTagSinglePayload(v6, v7, v8, v9);
  v10 = OUTLINED_FUNCTION_250_0();
  OUTLINED_FUNCTION_208_0(v10, v11);
  OUTLINED_FUNCTION_200();
  sub_1C8786514();
  return swift_endAccess();
}