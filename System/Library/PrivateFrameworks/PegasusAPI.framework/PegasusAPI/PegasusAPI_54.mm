uint64_t sub_1B9244A54(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9F38, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9244AD4(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAC9A58, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9244B44(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2D08(&qword_1EBAC9A58, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SiriPegasusRequest);

  return sub_1B964C5D0();
}

uint64_t sub_1B9244BD0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5A90);
  __swift_project_value_buffer(v0, qword_1EBAB5A90);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_1B966F8E0;
  v4 = v36 + v3 + v1[14];
  *(v36 + v3) = 1;
  *v4 = "search_status";
  *(v4 + 8) = 13;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v36 + v3 + v2 + v1[14];
  *(v36 + v3 + v2) = 2;
  *v8 = "query_id";
  *(v8 + 8) = 8;
  *(v8 + 16) = 2;
  v7();
  v9 = (v36 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "error";
  *(v10 + 1) = 5;
  v10[16] = 2;
  v7();
  v11 = (v36 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "query_confidence_score";
  *(v12 + 1) = 22;
  v12[16] = 2;
  v7();
  v13 = (v36 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 6;
  *v14 = "query_string";
  *(v14 + 1) = 12;
  v14[16] = 2;
  v7();
  v15 = (v36 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 10;
  *v16 = "siri_instruction";
  *(v16 + 1) = 16;
  v16[16] = 2;
  v7();
  v17 = (v36 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 12;
  *v18 = "alternate_siri_instructions";
  *(v18 + 1) = 27;
  v18[16] = 2;
  v7();
  v19 = (v36 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 20;
  *v20 = "response_metadata";
  *(v20 + 1) = 17;
  v20[16] = 2;
  v7();
  v21 = (v36 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 21;
  *v22 = "response_context";
  *(v22 + 1) = 16;
  v22[16] = 2;
  v7();
  v23 = (v36 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 24;
  *v24 = "conversation_context_bytes";
  *(v24 + 1) = 26;
  v24[16] = 2;
  v7();
  v25 = (v36 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 49;
  *v26 = "search_conversation_context";
  *(v26 + 1) = 27;
  v26[16] = 2;
  v7();
  v27 = (v36 + v3 + 11 * v2);
  v28 = v27 + v1[14];
  *v27 = 100;
  *v28 = "service_debug";
  *(v28 + 1) = 13;
  v28[16] = 2;
  v7();
  v29 = (v36 + v3 + 12 * v2);
  v30 = v29 + v1[14];
  *v29 = 1002;
  *v30 = "rewritten_utterance_idx";
  *(v30 + 1) = 23;
  v30[16] = 2;
  v7();
  v31 = (v36 + v3 + 13 * v2);
  v32 = v31 + v1[14];
  *v31 = 50;
  *v32 = "is_low_confidence_knowledge_result";
  *(v32 + 1) = 34;
  v32[16] = 2;
  v7();
  v33 = (v36 + v3 + 14 * v2);
  v34 = v33 + v1[14];
  *v33 = 51;
  *v34 = "is_query_direct_question";
  *(v34 + 1) = 24;
  v34[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B924511C()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 1;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__error;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__queryConfidenceScore) = 0;
  v3 = (v0 + OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__queryString);
  *v3 = 0;
  v3[1] = 0xE000000000000000;
  v4 = OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__siriInstruction;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction(0);
  __swift_storeEnumTagSinglePayload(v0 + v4, 1, 1, v5);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__alternateSiriInstructions) = MEMORY[0x1E69E7CC0];
  v6 = OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__responseMetadata;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata(0);
  __swift_storeEnumTagSinglePayload(v0 + v6, 1, 1, v7);
  v8 = OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__responseContext;
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseContext(0);
  __swift_storeEnumTagSinglePayload(v0 + v8, 1, 1, v9);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__conversationContextBytes) = xmmword_1B9652FE0;
  v10 = OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__searchConversationContext;
  v11 = type metadata accessor for Apple_Parsec_Search_SearchConversationContext(0);
  __swift_storeEnumTagSinglePayload(v0 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__serviceDebug;
  type metadata accessor for Debuglevelspb_AnyArray(0);
  *(v0 + v12) = sub_1B964C7B0();
  v13 = OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__rewrittenUtteranceIdx;
  v14 = sub_1B964C1A0();
  __swift_storeEnumTagSinglePayload(v0 + v13, 1, 1, v14);
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__isLowConfidenceKnowledgeResult) = 0;
  *(v0 + OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__isQueryDirectQuestion) = 0;
  return v0;
}

uint64_t sub_1B92452BC(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC9470, &qword_1B96AA730);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v70 = v55 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9448, &qword_1B96AA708);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v69 = v55 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC9468, &qword_1B96AA728);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v68 = v55 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9460, &qword_1B96AA720);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v64 = v55 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9458, &qword_1B96AA718);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v60 = v55 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9450, &qword_1B96AA710);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v55[1] = v55 - v14;
  *(v1 + 16) = 0;
  *(v1 + 24) = 1;
  *(v1 + 32) = 0;
  *(v1 + 40) = 0xE000000000000000;
  v15 = OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__error;
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error(0);
  __swift_storeEnumTagSinglePayload(v1 + v15, 1, 1, v16);
  v56 = OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__queryConfidenceScore;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__queryConfidenceScore) = 0;
  v17 = (v1 + OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__queryString);
  *v17 = 0;
  v17[1] = 0xE000000000000000;
  v18 = OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__siriInstruction;
  v57 = OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__siriInstruction;
  v19 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction(0);
  __swift_storeEnumTagSinglePayload(v1 + v18, 1, 1, v19);
  v58 = OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__alternateSiriInstructions;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__alternateSiriInstructions) = MEMORY[0x1E69E7CC0];
  v20 = OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__responseMetadata;
  v59 = OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__responseMetadata;
  v21 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata(0);
  __swift_storeEnumTagSinglePayload(v1 + v20, 1, 1, v21);
  v22 = OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__responseContext;
  v61 = OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__responseContext;
  v23 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseContext(0);
  __swift_storeEnumTagSinglePayload(v1 + v22, 1, 1, v23);
  v24 = (v1 + OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__conversationContextBytes);
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__conversationContextBytes) = xmmword_1B9652FE0;
  v25 = OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__searchConversationContext;
  v62 = OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__searchConversationContext;
  v26 = type metadata accessor for Apple_Parsec_Search_SearchConversationContext(0);
  __swift_storeEnumTagSinglePayload(v1 + v25, 1, 1, v26);
  v27 = OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__serviceDebug;
  v63 = OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__serviceDebug;
  type metadata accessor for Debuglevelspb_AnyArray(0);
  *(v1 + v27) = sub_1B964C7B0();
  v28 = OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__rewrittenUtteranceIdx;
  v65 = OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__rewrittenUtteranceIdx;
  v29 = sub_1B964C1A0();
  __swift_storeEnumTagSinglePayload(v1 + v28, 1, 1, v29);
  v66 = OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__isLowConfidenceKnowledgeResult;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__isLowConfidenceKnowledgeResult) = 0;
  v67 = OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__isQueryDirectQuestion;
  *(v1 + OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__isQueryDirectQuestion) = 0;
  swift_beginAccess();
  v30 = *(a1 + 16);
  LOBYTE(v27) = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v30;
  *(v1 + 24) = v27;
  swift_beginAccess();
  v32 = *(a1 + 32);
  v31 = *(a1 + 40);
  swift_beginAccess();
  *(v1 + 32) = v32;
  *(v1 + 40) = v31;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v33 = OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__queryConfidenceScore;
  swift_beginAccess();
  v34 = *(a1 + v33);
  v35 = v56;
  swift_beginAccess();
  *(v1 + v35) = v34;
  v36 = (a1 + OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__queryString);
  swift_beginAccess();
  v38 = *v36;
  v37 = v36[1];
  swift_beginAccess();
  *v17 = v38;
  v17[1] = v37;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v39 = OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__alternateSiriInstructions;
  swift_beginAccess();
  v40 = *(a1 + v39);
  v41 = v58;
  swift_beginAccess();
  *(v1 + v41) = v40;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v42 = (a1 + OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__conversationContextBytes);
  swift_beginAccess();
  v44 = *v42;
  v43 = v42[1];
  swift_beginAccess();
  v45 = *v24;
  v46 = v24[1];
  *v24 = v44;
  v24[1] = v43;
  sub_1B8D91FCC(v44, v43);
  sub_1B8D538A0(v45, v46);
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v47 = OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__serviceDebug;
  swift_beginAccess();
  v48 = *(a1 + v47);
  v49 = v63;
  swift_beginAccess();
  *(v1 + v49) = v48;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v50 = OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__isLowConfidenceKnowledgeResult;
  swift_beginAccess();
  LOBYTE(v50) = *(a1 + v50);
  v51 = v66;
  swift_beginAccess();
  *(v1 + v51) = v50;
  v52 = OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__isQueryDirectQuestion;
  swift_beginAccess();
  LOBYTE(v52) = *(a1 + v52);

  v53 = v67;
  swift_beginAccess();
  *(v1 + v53) = v52;
  return v1;
}

uint64_t sub_1B9245C34()
{

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__error, &qword_1EBAC9450, &qword_1B96AA710);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__siriInstruction, &qword_1EBAC9458, &qword_1B96AA718);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__responseMetadata, &qword_1EBAC9460, &qword_1B96AA720);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__responseContext, &unk_1EBAC9468, &qword_1B96AA728);
  sub_1B8D538A0(*(v0 + OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__conversationContextBytes), *(v0 + OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__conversationContextBytes + 8));
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__searchConversationContext, &qword_1EBAC9448, &qword_1B96AA708);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__rewrittenUtteranceIdx, &unk_1EBAC9470, &qword_1B96AA730);
  return v0;
}

uint64_t sub_1B9245DCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        sub_1B9246088(a2, a1, a3, a4);
        break;
      case 2:
        sub_1B9267F50();
        break;
      case 3:
        sub_1B924611C(a2, a1, a3, a4);
        break;
      case 4:
        sub_1B9250594(a2, a1, a3, a4, &OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__queryConfidenceScore, MEMORY[0x1E69AACD0]);
        break;
      case 5:
      case 7:
      case 8:
      case 9:
      case 11:
      case 13:
      case 14:
      case 15:
      case 16:
      case 17:
      case 18:
      case 19:
      case 22:
      case 23:
        continue;
      case 6:
        v11 = MEMORY[0x1E69AACE0];
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__queryString;
        goto LABEL_13;
      case 10:
        sub_1B92461F8(a2, a1, a3, a4);
        break;
      case 12:
        sub_1B92462D4(a2, a1, a3, a4);
        break;
      case 20:
        sub_1B92463B0(a2, a1, a3, a4);
        break;
      case 21:
        sub_1B924648C(a2, a1, a3, a4);
        break;
      case 24:
        v11 = MEMORY[0x1E69AAC78];
        v12 = a2;
        v13 = a1;
        v14 = a3;
        v15 = a4;
        v16 = &OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__conversationContextBytes;
LABEL_13:
        sub_1B9268110(v12, v13, v14, v15, v16, v11);
        break;
      default:
        switch(result)
        {
          case 49:
            sub_1B9246568(a2, a1, a3, a4);
            break;
          case 50:
          case 51:
            sub_1B92682B0();
            break;
          case 100:
            sub_1B9246644(a2, a1, a3, a4);
            break;
          case 1002:
            sub_1B924676C(a2, a1, a3, a4);
            break;
        }

        break;
    }
  }
}

uint64_t sub_1B9246088(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B915C74C();
  sub_1B964C420();
  return swift_endAccess();
}

uint64_t sub_1B924611C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error(0);
  sub_1B8CD2D08(&qword_1EBAB5A80, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B92461F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction(0);
  sub_1B8CD2D08(&qword_1EBAB5B00, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B92462D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction(0);
  sub_1B8CD2D08(&qword_1EBAB5B00, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B92463B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata(0);
  sub_1B8CD2D08(&qword_1EBAB5AC0, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B924648C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseContext(0);
  sub_1B8CD2D08(&qword_1EBAC95E0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseContext, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ResponseContext);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9246568(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Search_SearchConversationContext(0);
  sub_1B8CD2D08(&qword_1EBAB5D40, type metadata accessor for Apple_Parsec_Search_SearchConversationContext, protocol conformance descriptor for Apple_Parsec_Search_SearchConversationContext);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9246644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C280();
  type metadata accessor for Debuglevelspb_AnyArray(0);
  sub_1B8CD2D08(&qword_1EBABAE10, type metadata accessor for Debuglevelspb_AnyArray, protocol conformance descriptor for Debuglevelspb_AnyArray);
  sub_1B8CD2D08(&qword_1EBABAE08, type metadata accessor for Debuglevelspb_AnyArray, protocol conformance descriptor for Debuglevelspb_AnyArray);
  sub_1B964C3A0();
  return swift_endAccess();
}

uint64_t sub_1B924676C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  sub_1B964C1A0();
  sub_1B8CD2D08(&qword_1EBAB3B40, MEMORY[0x1E69AA9B8], MEMORY[0x1E69AA9B0]);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9246878(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC9470, &qword_1B96AA730);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v61 = &v60 - v7;
  v8 = sub_1B964C1A0();
  v63 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v62 = &v60 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9448, &qword_1B96AA708);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v65 = &v60 - v11;
  v66 = type metadata accessor for Apple_Parsec_Search_SearchConversationContext(0);
  MEMORY[0x1EEE9AC00](v66);
  v64 = &v60 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC9468, &qword_1B96AA728);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v69 = &v60 - v14;
  v70 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseContext(0);
  MEMORY[0x1EEE9AC00](v70);
  v67 = &v60 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9460, &qword_1B96AA720);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v77 = &v60 - v17;
  v71 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata(0);
  MEMORY[0x1EEE9AC00](v71);
  v68 = &v60 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9458, &qword_1B96AA718);
  MEMORY[0x1EEE9AC00](v19 - 8);
  v75 = &v60 - v20;
  v73 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction(0);
  MEMORY[0x1EEE9AC00](v73);
  v72 = &v60 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9450, &qword_1B96AA710);
  MEMORY[0x1EEE9AC00](v22 - 8);
  v24 = &v60 - v23;
  v25 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error(0);
  MEMORY[0x1EEE9AC00](v25);
  swift_beginAccess();
  if (*(a1 + 16))
  {
    v26 = *(a1 + 24);
    v78 = *(a1 + 16);
    v79 = v26;
    sub_1B915C74C();
    v27 = v80;
    result = sub_1B964C680();
    if (v27)
    {
      return result;
    }

    v60 = v8;
    v29 = 0;
  }

  else
  {
    v60 = v8;
    v29 = v80;
  }

  v76 = a4;
  swift_beginAccess();
  v30 = *(a1 + 32);
  v31 = *(a1 + 40);
  v74 = a1;
  v32 = HIBYTE(v31) & 0xF;
  if ((v31 & 0x2000000000000000) == 0)
  {
    v32 = v30 & 0xFFFFFFFFFFFFLL;
  }

  if (v32)
  {

    sub_1B964C700();
    if (v29)
    {
    }
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v24, 1, v25) == 1)
  {
    sub_1B8D9207C(v24, &qword_1EBAC9450, &qword_1B96AA710);
    v33 = v77;
    v34 = v29;
  }

  else
  {
    sub_1B9239DA8();
    sub_1B8CD2D08(&qword_1EBAB5A80, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error);
    sub_1B964C740();
    v34 = v29;
    v33 = v77;
    if (v29)
    {
      return sub_1B9239E50();
    }

    sub_1B9239E50();
  }

  v35 = OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__queryConfidenceScore;
  v36 = v74;
  swift_beginAccess();
  v37 = v75;
  if (*(v36 + v35) != 0.0)
  {
    result = sub_1B964C6F0();
    if (v34)
    {
      return result;
    }
  }

  v38 = (v36 + OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__queryString);
  swift_beginAccess();
  v39 = *v38;
  v40 = v38[1];
  v41 = HIBYTE(v40) & 0xF;
  if ((v40 & 0x2000000000000000) == 0)
  {
    v41 = v39 & 0xFFFFFFFFFFFFLL;
  }

  if (v41)
  {

    sub_1B964C700();
    if (v34)
    {
    }
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v37, 1, v73) != 1)
  {
    sub_1B9239DA8();
    sub_1B8CD2D08(&qword_1EBAB5B00, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction);
    sub_1B964C740();
    if (!v34)
    {
      sub_1B9239E50();
      goto LABEL_31;
    }

    return sub_1B9239E50();
  }

  sub_1B8D9207C(v37, &qword_1EBAC9458, &qword_1B96AA718);
LABEL_31:
  v42 = OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__alternateSiriInstructions;
  swift_beginAccess();
  if (!*(*(v36 + v42) + 16) || (sub_1B8CD2D08(&qword_1EBAB5B00, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction), , sub_1B964C730(), result = , !v34))
  {
    swift_beginAccess();
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v33, 1, v71) == 1)
    {
      sub_1B8D9207C(v33, &qword_1EBAC9460, &qword_1B96AA720);
    }

    else
    {
      sub_1B9239DA8();
      sub_1B8CD2D08(&qword_1EBAB5AC0, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata);
      sub_1B964C740();
      result = sub_1B9239E50();
      if (v34)
      {
        return result;
      }
    }

    swift_beginAccess();
    v43 = v69;
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v43, 1, v70) == 1)
    {
      v44 = v34;
      sub_1B8D9207C(v43, &unk_1EBAC9468, &qword_1B96AA728);
    }

    else
    {
      sub_1B9239DA8();
      sub_1B8CD2D08(&qword_1EBAC95E0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseContext, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ResponseContext);
      sub_1B964C740();
      result = sub_1B9239E50();
      if (v34)
      {
        return result;
      }

      v44 = 0;
    }

    v45 = v36 + OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__conversationContextBytes;
    swift_beginAccess();
    if (sub_1B8D99EA8(*v45, *(v45 + 8)))
    {
      v46 = v44;
    }

    else
    {
      v48 = *v45;
      v47 = *(v45 + 8);
      sub_1B8D91FCC(v48, v47);
      sub_1B964C6A0();
      v49 = v48;
      v46 = v44;
      result = sub_1B8D538A0(v49, v47);
      if (v44)
      {
        return result;
      }
    }

    swift_beginAccess();
    v50 = v65;
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v50, 1, v66) == 1)
    {
      sub_1B8D9207C(v50, &qword_1EBAC9448, &qword_1B96AA708);
    }

    else
    {
      sub_1B9239DA8();
      sub_1B8CD2D08(&qword_1EBAB5D40, type metadata accessor for Apple_Parsec_Search_SearchConversationContext, protocol conformance descriptor for Apple_Parsec_Search_SearchConversationContext);
      sub_1B964C740();
      result = sub_1B9239E50();
      if (v46)
      {
        return result;
      }
    }

    v51 = OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__isLowConfidenceKnowledgeResult;
    swift_beginAccess();
    if (*(v36 + v51) != 1 || (result = sub_1B964C670(), !v46))
    {
      v52 = OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__isQueryDirectQuestion;
      swift_beginAccess();
      if (*(v36 + v52) != 1 || (result = sub_1B964C670(), !v46))
      {
        v80 = v46;
        v53 = OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__serviceDebug;
        swift_beginAccess();
        if (!*(*(v36 + v53) + 16) || (sub_1B964C280(), type metadata accessor for Debuglevelspb_AnyArray(0), sub_1B8CD2D08(&qword_1EBABAE10, type metadata accessor for Debuglevelspb_AnyArray, protocol conformance descriptor for Debuglevelspb_AnyArray), sub_1B8CD2D08(&qword_1EBABAE08, type metadata accessor for Debuglevelspb_AnyArray, protocol conformance descriptor for Debuglevelspb_AnyArray), , v54 = v80, sub_1B964C5E0(), result = , (v80 = v54) == 0))
        {
          swift_beginAccess();
          v55 = v61;
          sub_1B8D92024();
          v56 = v60;
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v55, 1, v60);
          v59 = v62;
          v58 = v63;
          if (EnumTagSinglePayload == 1)
          {
            return sub_1B8D9207C(v55, &unk_1EBAC9470, &qword_1B96AA730);
          }

          else
          {
            (*(v63 + 32))(v62, v55, v56);
            sub_1B8CD2D08(&qword_1EBAB3B40, MEMORY[0x1E69AA9B8], MEMORY[0x1E69AA9B0]);
            sub_1B964C740();
            return (*(v58 + 8))(v59, v56);
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B92477EC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B964C1A0();
  v149 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v148 = &v143 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v151 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA0E8, &qword_1B96B2408);
  MEMORY[0x1EEE9AC00](v151);
  v7 = &v143 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC9470, &qword_1B96AA730);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v150 = &v143 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v153 = &v143 - v11;
  v156 = type metadata accessor for Apple_Parsec_Search_SearchConversationContext(0);
  MEMORY[0x1EEE9AC00](v156);
  v152 = &v143 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v155 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA0F0, &qword_1B96B2410);
  MEMORY[0x1EEE9AC00](v155);
  v157 = &v143 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9448, &qword_1B96AA708);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v154 = &v143 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v164 = &v143 - v17;
  v162 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseContext(0);
  MEMORY[0x1EEE9AC00](v162);
  v158 = &v143 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v161 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA0F8, &qword_1B96B2418);
  MEMORY[0x1EEE9AC00](v161);
  v163 = &v143 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC9468, &qword_1B96AA728);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v160 = &v143 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v171 = &v143 - v23;
  v167 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata(0);
  MEMORY[0x1EEE9AC00](v167);
  v159 = &v143 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v166 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA100, &qword_1B96B2420);
  MEMORY[0x1EEE9AC00](v166);
  v168 = &v143 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9460, &qword_1B96AA720);
  v27 = MEMORY[0x1EEE9AC00](v26 - 8);
  v165 = &v143 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v27);
  v177 = &v143 - v29;
  v174 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction(0);
  MEMORY[0x1EEE9AC00](v174);
  v169 = &v143 - ((v30 + 15) & 0xFFFFFFFFFFFFFFF0);
  v173 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA108, &qword_1B96B2428);
  MEMORY[0x1EEE9AC00](v173);
  v176 = &v143 - v31;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9458, &qword_1B96AA718);
  v33 = MEMORY[0x1EEE9AC00](v32 - 8);
  v172 = &v143 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v33);
  v175 = &v143 - v35;
  v36 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error(0);
  MEMORY[0x1EEE9AC00](v36);
  v178 = &v143 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA110, &qword_1B96B2430);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v143 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9450, &qword_1B96AA710);
  v42 = MEMORY[0x1EEE9AC00](v41 - 8);
  v179 = &v143 - ((v43 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v45 = &v143 - v44;
  swift_beginAccess();
  v46 = *(a1 + 16);
  swift_beginAccess();
  v47 = *(a2 + 16);
  if (*(a2 + 24) != 1)
  {
    if (v46 != v47)
    {
      goto LABEL_24;
    }

    goto LABEL_11;
  }

  if (v47)
  {
    if (v47 == 1)
    {
      if (v46 != 1)
      {
        goto LABEL_24;
      }

LABEL_11:
      swift_beginAccess();
      v48 = a1;
      v49 = *(a1 + 32);
      v170 = v48;
      v50 = *(v48 + 40);
      swift_beginAccess();
      v51 = v49 == *(a2 + 32) && v50 == *(a2 + 40);
      if (!v51 && (sub_1B964C9F0() & 1) == 0)
      {
        goto LABEL_24;
      }

      v145 = v7;
      v146 = v4;
      v147 = a2;
      v52 = v170;
      swift_beginAccess();
      sub_1B8D92024();
      v53 = v147;
      swift_beginAccess();
      v54 = *(v38 + 48);
      sub_1B8D92024();
      sub_1B8D92024();
      if (__swift_getEnumTagSinglePayload(v40, 1, v36) == 1)
      {

        sub_1B8D9207C(v45, &qword_1EBAC9450, &qword_1B96AA710);
        if (__swift_getEnumTagSinglePayload(&v40[v54], 1, v36) == 1)
        {
          sub_1B8D9207C(v40, &qword_1EBAC9450, &qword_1B96AA710);
          goto LABEL_27;
        }
      }

      else
      {
        sub_1B8D92024();
        if (__swift_getEnumTagSinglePayload(&v40[v54], 1, v36) != 1)
        {
          sub_1B9239DA8();
          v52 = v170;

          HIDWORD(v144) = static Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error.== infix(_:_:)();
          sub_1B9239E50();
          sub_1B8D9207C(v45, &qword_1EBAC9450, &qword_1B96AA710);
          sub_1B9239E50();
          sub_1B8D9207C(v40, &qword_1EBAC9450, &qword_1B96AA710);
          if ((v144 & 0x100000000) == 0)
          {
            goto LABEL_23;
          }

LABEL_27:
          v60 = OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__queryConfidenceScore;
          swift_beginAccess();
          v61 = *(v52 + v60);
          v62 = OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__queryConfidenceScore;
          swift_beginAccess();
          if (v61 != *(v53 + v62))
          {
            goto LABEL_23;
          }

          v63 = (v52 + OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__queryString);
          swift_beginAccess();
          v64 = *v63;
          v65 = v63[1];
          v66 = (v53 + OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__queryString);
          swift_beginAccess();
          v67 = v64 == *v66 && v65 == v66[1];
          if (!v67 && (sub_1B964C9F0() & 1) == 0)
          {
            goto LABEL_23;
          }

          swift_beginAccess();
          v68 = v175;
          sub_1B8D92024();
          swift_beginAccess();
          v69 = *(v173 + 48);
          v70 = v176;
          sub_1B8D92024();
          v71 = v70;
          sub_1B8D92024();
          v72 = v174;
          if (__swift_getEnumTagSinglePayload(v70, 1, v174) == 1)
          {
            sub_1B8D9207C(v68, &qword_1EBAC9458, &qword_1B96AA718);
            EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v70 + v69, 1, v72);
            v74 = v171;
            v75 = v177;
            if (EnumTagSinglePayload == 1)
            {
              sub_1B8D9207C(v71, &qword_1EBAC9458, &qword_1B96AA718);
LABEL_43:
              v81 = OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__alternateSiriInstructions;
              swift_beginAccess();
              v82 = *(v52 + v81);
              v83 = OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__alternateSiriInstructions;
              swift_beginAccess();
              v84 = *(v53 + v83);

              sub_1B8D8E9FC(v82, v84);
              v86 = v85;

              if ((v86 & 1) == 0)
              {
                goto LABEL_23;
              }

              swift_beginAccess();
              sub_1B8D92024();
              swift_beginAccess();
              v87 = *(v166 + 48);
              v88 = v75;
              v89 = v168;
              sub_1B8D92024();
              v71 = v89;
              sub_1B8D92024();
              v90 = v167;
              if (__swift_getEnumTagSinglePayload(v89, 1, v167) == 1)
              {
                sub_1B8D9207C(v88, &qword_1EBAC9460, &qword_1B96AA720);
                if (__swift_getEnumTagSinglePayload(v89 + v87, 1, v90) == 1)
                {
                  sub_1B8D9207C(v89, &qword_1EBAC9460, &qword_1B96AA720);
LABEL_55:
                  swift_beginAccess();
                  sub_1B8D92024();
                  swift_beginAccess();
                  v100 = *(v161 + 48);
                  v101 = v163;
                  sub_1B8D92024();
                  v71 = v101;
                  sub_1B8D92024();
                  v102 = v162;
                  if (__swift_getEnumTagSinglePayload(v101, 1, v162) == 1)
                  {
                    sub_1B8D9207C(v74, &unk_1EBAC9468, &qword_1B96AA728);
                    v103 = __swift_getEnumTagSinglePayload(v101 + v100, 1, v102);
                    v104 = v164;
                    if (v103 == 1)
                    {
                      sub_1B8D9207C(v101, &unk_1EBAC9468, &qword_1B96AA728);
LABEL_64:
                      v110 = (v52 + OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__conversationContextBytes);
                      swift_beginAccess();
                      v112 = *v110;
                      v111 = v110[1];
                      v113 = (v53 + OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__conversationContextBytes);
                      swift_beginAccess();
                      v115 = *v113;
                      v114 = v113[1];
                      sub_1B8D91FCC(v112, v111);
                      sub_1B8D91FCC(v115, v114);
                      v116 = MEMORY[0x1BFADC060](v112, v111, v115, v114);
                      sub_1B8D538A0(v115, v114);
                      sub_1B8D538A0(v112, v111);
                      if ((v116 & 1) == 0)
                      {
                        goto LABEL_23;
                      }

                      swift_beginAccess();
                      sub_1B8D92024();
                      swift_beginAccess();
                      v117 = *(v155 + 48);
                      v118 = v157;
                      sub_1B8D92024();
                      sub_1B8D92024();
                      v119 = v156;
                      if (__swift_getEnumTagSinglePayload(v118, 1, v156) == 1)
                      {
                        sub_1B8D9207C(v104, &qword_1EBAC9448, &qword_1B96AA708);
                        if (__swift_getEnumTagSinglePayload(v118 + v117, 1, v119) == 1)
                        {
                          sub_1B8D9207C(v118, &qword_1EBAC9448, &qword_1B96AA708);
LABEL_74:
                          swift_beginAccess();
                          swift_beginAccess();

                          sub_1B8DAFA20();
                          v124 = v123;

                          if (v124)
                          {
                            swift_beginAccess();
                            sub_1B8D92024();
                            swift_beginAccess();
                            v125 = *(v151 + 48);
                            v126 = v145;
                            sub_1B8D92024();
                            sub_1B8D92024();
                            v127 = v146;
                            if (__swift_getEnumTagSinglePayload(v126, 1, v146) == 1)
                            {
                              sub_1B8D9207C(v153, &unk_1EBAC9470, &qword_1B96AA730);
                              if (__swift_getEnumTagSinglePayload(v126 + v125, 1, v127) == 1)
                              {
                                sub_1B8D9207C(v126, &unk_1EBAC9470, &qword_1B96AA730);
                                goto LABEL_82;
                              }

                              goto LABEL_80;
                            }

                            sub_1B8D92024();
                            if (__swift_getEnumTagSinglePayload(v126 + v125, 1, v127) == 1)
                            {
                              sub_1B8D9207C(v153, &unk_1EBAC9470, &qword_1B96AA730);
                              (*(v149 + 8))(v150, v146);
                              v126 = v145;
LABEL_80:
                              sub_1B8D9207C(v126, &qword_1EBACA0E8, &qword_1B96B2408);
                              goto LABEL_23;
                            }

                            v128 = v148;
                            v129 = v149;
                            v131 = v145;
                            v130 = v146;
                            (*(v149 + 32))(v148, &v145[v125], v146);
                            sub_1B8CD2D08(&qword_1EBACA118, MEMORY[0x1E69AA9B8], MEMORY[0x1E69AA9C0]);
                            v132 = v150;
                            v133 = sub_1B964C850();
                            v134 = *(v129 + 8);
                            v134(v128, v130);
                            sub_1B8D9207C(v153, &unk_1EBAC9470, &qword_1B96AA730);
                            v134(v132, v130);
                            sub_1B8D9207C(v131, &unk_1EBAC9470, &qword_1B96AA730);
                            if (v133)
                            {
LABEL_82:
                              v135 = OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__isLowConfidenceKnowledgeResult;
                              v136 = v170;
                              swift_beginAccess();
                              LODWORD(v135) = *(v136 + v135);
                              v137 = OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__isLowConfidenceKnowledgeResult;
                              v138 = v147;
                              swift_beginAccess();
                              if (v135 == *(v138 + v137))
                              {
                                v139 = OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__isQueryDirectQuestion;
                                v140 = v170;
                                swift_beginAccess();
                                LOBYTE(v139) = *(v140 + v139);

                                v141 = OBJC_IVAR____TtCV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponseP33_E86396049AA3E19DB448939A42AE999613_StorageClass__isQueryDirectQuestion;
                                v142 = v147;
                                swift_beginAccess();
                                LOBYTE(v141) = *(v142 + v141);

                                v58 = v139 ^ v141 ^ 1;
                                return v58 & 1;
                              }
                            }
                          }

LABEL_23:

                          goto LABEL_24;
                        }
                      }

                      else
                      {
                        v120 = v154;
                        sub_1B8D92024();
                        if (__swift_getEnumTagSinglePayload(v118 + v117, 1, v119) != 1)
                        {
                          v121 = v152;
                          sub_1B9239DA8();
                          v122 = static Apple_Parsec_Search_SearchConversationContext.== infix(_:_:)(v120, v121);
                          sub_1B9239E50();
                          sub_1B8D9207C(v104, &qword_1EBAC9448, &qword_1B96AA708);
                          sub_1B9239E50();
                          sub_1B8D9207C(v118, &qword_1EBAC9448, &qword_1B96AA708);
                          if ((v122 & 1) == 0)
                          {
                            goto LABEL_23;
                          }

                          goto LABEL_74;
                        }

                        sub_1B8D9207C(v104, &qword_1EBAC9448, &qword_1B96AA708);
                        sub_1B9239E50();
                      }

                      v55 = &qword_1EBACA0F0;
                      v56 = &qword_1B96B2410;
                      v57 = v118;
LABEL_22:
                      sub_1B8D9207C(v57, v55, v56);
                      goto LABEL_23;
                    }

                    goto LABEL_60;
                  }

                  v105 = v160;
                  sub_1B8D92024();
                  v106 = __swift_getEnumTagSinglePayload(v101 + v100, 1, v102);
                  v104 = v164;
                  if (v106 == 1)
                  {
                    sub_1B8D9207C(v74, &unk_1EBAC9468, &qword_1B96AA728);
                    sub_1B9239E50();
LABEL_60:
                    v55 = &qword_1EBACA0F8;
                    v56 = &qword_1B96B2418;
                    goto LABEL_39;
                  }

                  v107 = v158;
                  sub_1B9239DA8();
                  if (*&v105[*(v102 + 20)] == *&v107[*(v102 + 20)] || (, , sub_1B92538F4(), v109 = v108, , , (v109 & 1) != 0))
                  {
                    sub_1B964C2B0();
                    sub_1B8CD2D08(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
                    LODWORD(v179) = sub_1B964C850();
                    sub_1B9239E50();
                    sub_1B8D9207C(v74, &unk_1EBAC9468, &qword_1B96AA728);
                    sub_1B9239E50();
                    sub_1B8D9207C(v71, &unk_1EBAC9468, &qword_1B96AA728);
                    if ((v179 & 1) == 0)
                    {
                      goto LABEL_23;
                    }

                    goto LABEL_64;
                  }

                  sub_1B9239E50();
                  v92 = &unk_1EBAC9468;
                  v93 = &qword_1B96AA728;
                  sub_1B8D9207C(v74, &unk_1EBAC9468, &qword_1B96AA728);
LABEL_51:
                  sub_1B9239E50();
                  v57 = v71;
                  v55 = v92;
                  v56 = v93;
                  goto LABEL_22;
                }
              }

              else
              {
                v91 = v165;
                sub_1B8D92024();
                if (__swift_getEnumTagSinglePayload(v89 + v87, 1, v90) != 1)
                {
                  v94 = v159;
                  sub_1B9239DA8();
                  v95 = *(v90 + 20);
                  v96 = *&v91[v95];
                  v97 = *&v94[v95];
                  if (v96 != v97)
                  {

                    v98 = sub_1B9250FF8(v96, v97);

                    if ((v98 & 1) == 0)
                    {
                      sub_1B9239E50();
                      v92 = &qword_1EBAC9460;
                      v93 = &qword_1B96AA720;
                      sub_1B8D9207C(v177, &qword_1EBAC9460, &qword_1B96AA720);
                      goto LABEL_51;
                    }
                  }

                  sub_1B964C2B0();
                  sub_1B8CD2D08(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
                  v99 = sub_1B964C850();
                  sub_1B9239E50();
                  sub_1B8D9207C(v177, &qword_1EBAC9460, &qword_1B96AA720);
                  sub_1B9239E50();
                  sub_1B8D9207C(v71, &qword_1EBAC9460, &qword_1B96AA720);
                  if ((v99 & 1) == 0)
                  {
                    goto LABEL_23;
                  }

                  goto LABEL_55;
                }

                sub_1B8D9207C(v177, &qword_1EBAC9460, &qword_1B96AA720);
                sub_1B9239E50();
              }

              v55 = &qword_1EBACA100;
              v56 = &qword_1B96B2420;
LABEL_39:
              v57 = v71;
              goto LABEL_22;
            }
          }

          else
          {
            v76 = v172;
            sub_1B8D92024();
            v77 = __swift_getEnumTagSinglePayload(v70 + v69, 1, v72);
            v75 = v177;
            if (v77 != 1)
            {
              v78 = v169;
              sub_1B9239DA8();
              if (*&v76[*(v72 + 20)] != *&v78[*(v72 + 20)])
              {

                sub_1B924DAD0();
                v80 = v79;

                if ((v80 & 1) == 0)
                {
                  sub_1B9239E50();
                  v92 = &qword_1EBAC9458;
                  v93 = &qword_1B96AA718;
                  sub_1B8D9207C(v68, &qword_1EBAC9458, &qword_1B96AA718);
                  goto LABEL_51;
                }
              }

              sub_1B964C2B0();
              sub_1B8CD2D08(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
              LODWORD(v179) = sub_1B964C850();
              sub_1B9239E50();
              sub_1B8D9207C(v68, &qword_1EBAC9458, &qword_1B96AA718);
              sub_1B9239E50();
              sub_1B8D9207C(v71, &qword_1EBAC9458, &qword_1B96AA718);
              v74 = v171;
              if ((v179 & 1) == 0)
              {
                goto LABEL_23;
              }

              goto LABEL_43;
            }

            sub_1B8D9207C(v68, &qword_1EBAC9458, &qword_1B96AA718);
            sub_1B9239E50();
          }

          v55 = &qword_1EBACA108;
          v56 = &qword_1B96B2428;
          goto LABEL_39;
        }

        sub_1B8D9207C(v45, &qword_1EBAC9450, &qword_1B96AA710);
        sub_1B9239E50();
      }

      v55 = &qword_1EBACA110;
      v56 = &qword_1B96B2430;
      v57 = v40;
      goto LABEL_22;
    }

    if (v46 == 2)
    {
      goto LABEL_11;
    }
  }

  else if (!v46)
  {
    goto LABEL_11;
  }

LABEL_24:
  v58 = 0;
  return v58 & 1;
}

uint64_t sub_1B9249330(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9F30, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B92493B0(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAB5A70, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9249420(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2D08(&qword_1EBAB5A70, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse);

  return sub_1B964C5D0();
}

uint64_t sub_1B92494A0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC9080);
  __swift_project_value_buffer(v0, qword_1EBAC9080);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 0;
  *v6 = "INSTRUCTION_INTENT_UNSPECIFIED";
  *(v6 + 8) = 30;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "INSTRUCTION_INTENT_CONFIRMATION";
  *(v10 + 8) = 31;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "INSTRUCTION_INTENT_DISAMBIGUATION";
  *(v12 + 1) = 33;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 3;
  *v14 = "INSTRUCTION_INTENT_PROMPT_FOR_VALUE";
  *(v14 + 1) = 35;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9249708()
{
  result = MEMORY[0x1BFADC850](0x726F7272452ELL, 0xE600000000000000);
  qword_1EBAC9098 = 0xD00000000000002DLL;
  unk_1EBAC90A0 = 0x80000001B9711AF0;
  return result;
}

uint64_t sub_1B9249790()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC90A8);
  __swift_project_value_buffer(v0, qword_1EBAC90A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "message";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "encrypted_message";
  *(v10 + 1) = 17;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B92499C4()
{
  OUTLINED_FUNCTION_697_0();
  while (1)
  {
    OUTLINED_FUNCTION_259();
    result = sub_1B964C3C0();
    if (v1 || (v4 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_696();
      OUTLINED_FUNCTION_171_0();
      v0();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_696();
      OUTLINED_FUNCTION_171_0();
      v2();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_243_3();
  OUTLINED_FUNCTION_65_6();
  if (v1 || ((v2 = OUTLINED_FUNCTION_7_6(), (v6 & 1) == 0) ? (result = sub_1B8DC2578(v2, v3, v4, v5)) : (result = sub_1B9035C80(v2, v3, v4, v5)), !v0))
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error(0);
    OUTLINED_FUNCTION_479_0();
    OUTLINED_FUNCTION_214_4();
    return sub_1B964C290();
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error.== infix(_:_:)()
{
  OUTLINED_FUNCTION_468();
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  v5 = *v3;
  v4 = v3[1];
  v6 = *(v3 + 16);
  if (v2 != 255)
  {
    v55[0] = *v0;
    v55[1] = v1;
    v56 = v2;
    if (v6 != 255)
    {
      v53[0] = v5;
      v53[1] = v4;
      v7 = v6 & 1;
      v54 = v6 & 1;
      v8 = OUTLINED_FUNCTION_42_0();
      sub_1B90387E4(v8, v9, v10);
      v11 = OUTLINED_FUNCTION_259();
      sub_1B90387E4(v11, v12, v6);
      v13 = OUTLINED_FUNCTION_42_0();
      sub_1B90387E4(v13, v14, v15);
      v16 = static Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error.OneOf_Error.== infix(_:_:)(v55, v53);
      v17 = OUTLINED_FUNCTION_259();
      sub_1B9038824(v17, v18, v7);
      v19 = OUTLINED_FUNCTION_461();
      sub_1B9038824(v19, v20, v21);
      v22 = OUTLINED_FUNCTION_42_0();
      sub_1B903880C(v22, v23, v24);
      if (v16)
      {
        goto LABEL_11;
      }

      return 0;
    }

    v29 = OUTLINED_FUNCTION_42_0();
    sub_1B90387E4(v29, v30, v31);
    v32 = OUTLINED_FUNCTION_259();
    sub_1B90387E4(v32, v33, 255);
    v34 = OUTLINED_FUNCTION_42_0();
    sub_1B90387E4(v34, v35, v36);
    v37 = OUTLINED_FUNCTION_461();
    sub_1B9038824(v37, v38, v39);
LABEL_8:
    v40 = OUTLINED_FUNCTION_42_0();
    sub_1B903880C(v40, v41, v42);
    v43 = OUTLINED_FUNCTION_259();
    sub_1B903880C(v43, v44, v6);
    return 0;
  }

  v25 = OUTLINED_FUNCTION_461();
  sub_1B90387E4(v25, v26, 255);
  if (v6 != 255)
  {
    v27 = OUTLINED_FUNCTION_259();
    sub_1B90387E4(v27, v28, v6);
    goto LABEL_8;
  }

  v46 = OUTLINED_FUNCTION_259();
  sub_1B90387E4(v46, v47, 255);
  v48 = OUTLINED_FUNCTION_461();
  sub_1B903880C(v48, v49, 255);
LABEL_11:
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error(0);
  OUTLINED_FUNCTION_871();
  OUTLINED_FUNCTION_0_75();
  v52 = sub_1B8CD2D08(v50, v51, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v52) & 1;
}

uint64_t sub_1B9249CC8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9F28, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9249D48(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAB5A80, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9249DB8(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2D08(&qword_1EBAB5A80, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.Error);

  return sub_1B964C5D0();
}

uint64_t sub_1B9249E38()
{
  result = MEMORY[0x1BFADC850](0xD000000000000010, 0x80000001B9713D80);
  qword_1EBAC90C0 = 0xD00000000000002DLL;
  *algn_1EBAC90C8 = 0x80000001B9711AF0;
  return result;
}

uint64_t sub_1B9249ECC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5B10);
  __swift_project_value_buffer(v0, qword_1EBAB5B10);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v28 = swift_allocObject();
  *(v28 + 16) = xmmword_1B96511C0;
  v4 = v28 + v3 + v1[14];
  *(v28 + v3) = 2;
  *v4 = "server_driven_experience";
  *(v4 + 8) = 24;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v28 + v3 + v2 + v1[14];
  *(v28 + v3 + v2) = 3;
  *v8 = "client_driven_experience";
  *(v8 + 8) = 24;
  *(v8 + 16) = 2;
  v7();
  v9 = (v28 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 4;
  *v10 = "result_entities";
  *(v10 + 1) = 15;
  v10[16] = 2;
  v7();
  v11 = (v28 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 5;
  *v12 = "resolution_request";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v7();
  v13 = (v28 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 7;
  *v14 = "server_understanding";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v7();
  v15 = (v28 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 8;
  *v16 = "server_suggestion";
  *(v16 + 1) = 17;
  v16[16] = 2;
  v7();
  v17 = (v28 + v3 + 6 * v2);
  v18 = v17 + v1[14];
  *v17 = 9;
  *v18 = "response_cache_control";
  *(v18 + 1) = 22;
  v18[16] = 2;
  v7();
  v19 = (v28 + v3 + 7 * v2);
  v20 = v19 + v1[14];
  *v19 = 10;
  *v20 = "instruction_intent";
  *(v20 + 1) = 18;
  v20[16] = 2;
  v7();
  v21 = (v28 + v3 + 8 * v2);
  v22 = v21 + v1[14];
  *v21 = 11;
  *v22 = "user_prompt_signals";
  *(v22 + 1) = 19;
  v22[16] = 2;
  v7();
  v23 = (v28 + v3 + 9 * v2);
  v24 = v23 + v1[14];
  *v23 = 12;
  *v24 = "app_intent";
  *(v24 + 1) = 10;
  v24[16] = 2;
  v7();
  v25 = (v28 + v3 + 10 * v2);
  v26 = v25 + v1[14];
  *v25 = 1000;
  *v26 = "sage_experience";
  *(v26 + 1) = 15;
  v26[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t sub_1B924A334()
{
  v1 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__experience;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.OneOf_Experience(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  *(v0 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__resultEntities) = MEMORY[0x1E69E7CC0];
  v3 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__resolveProfileInformation;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.OneOf_ResolveProfileInformation(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__serverUnderstanding;
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerUnderstanding(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__serverSuggestion;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion(0);
  __swift_storeEnumTagSinglePayload(v0 + v7, 1, 1, v8);
  v9 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__responseCacheControl;
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseCacheControl(0);
  __swift_storeEnumTagSinglePayload(v0 + v9, 1, 1, v10);
  v11 = v0 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__instructionIntent;
  *v11 = 0;
  *(v11 + 8) = 1;
  v12 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__userPromptSignals;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_UserPromptSignals(0);
  __swift_storeEnumTagSinglePayload(v0 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__appIntent;
  v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData(0);
  __swift_storeEnumTagSinglePayload(v0 + v14, 1, 1, v15);
  v16 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__sageExperience;
  v17 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SageExperience(0);
  __swift_storeEnumTagSinglePayload(v0 + v16, 1, 1, v17);
  return v0;
}

uint64_t sub_1B924A4A8(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94B0, &qword_1B96AA770);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v41[13] = v41 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94A8, &qword_1B96AA768);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v41[12] = v41 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94A0, &qword_1B96AA760);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v41[11] = v41 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9498, &qword_1B96AA758);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v41[10] = v41 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9490, &qword_1B96AA750);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v41[9] = v41 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9488, &qword_1B96AA748);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v41[5] = v41 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9480, &qword_1B96AA740);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v41[3] = v41 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC9478, &qword_1B96AA738);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v18 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__experience;
  v19 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.OneOf_Experience(0);
  __swift_storeEnumTagSinglePayload(v1 + v18, 1, 1, v19);
  v20 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__resultEntities;
  *(v1 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__resultEntities) = MEMORY[0x1E69E7CC0];
  v21 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__resolveProfileInformation;
  v22 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.OneOf_ResolveProfileInformation(0);
  __swift_storeEnumTagSinglePayload(v1 + v21, 1, 1, v22);
  v23 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__serverUnderstanding;
  v41[1] = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__serverUnderstanding;
  v24 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerUnderstanding(0);
  __swift_storeEnumTagSinglePayload(v1 + v23, 1, 1, v24);
  v25 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__serverSuggestion;
  v41[2] = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__serverSuggestion;
  v26 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion(0);
  __swift_storeEnumTagSinglePayload(v1 + v25, 1, 1, v26);
  v27 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__responseCacheControl;
  v41[4] = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__responseCacheControl;
  v28 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseCacheControl(0);
  __swift_storeEnumTagSinglePayload(v1 + v27, 1, 1, v28);
  v29 = v1 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__instructionIntent;
  *v29 = 0;
  *(v29 + 8) = 1;
  v30 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__userPromptSignals;
  v41[6] = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__userPromptSignals;
  v31 = type metadata accessor for Apple_Parsec_Siri_V2alpha_UserPromptSignals(0);
  __swift_storeEnumTagSinglePayload(v1 + v30, 1, 1, v31);
  v32 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__appIntent;
  v41[7] = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__appIntent;
  v33 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData(0);
  __swift_storeEnumTagSinglePayload(v1 + v32, 1, 1, v33);
  v34 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__sageExperience;
  v41[8] = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__sageExperience;
  v35 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SageExperience(0);
  __swift_storeEnumTagSinglePayload(v1 + v34, 1, 1, v35);
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v36 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__resultEntities;
  swift_beginAccess();
  v37 = *(a1 + v36);
  swift_beginAccess();
  *(v1 + v20) = v37;

  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v38 = (a1 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__instructionIntent);
  swift_beginAccess();
  v39 = *v38;
  LOBYTE(v38) = *(v38 + 8);
  swift_beginAccess();
  *v29 = v39;
  *(v29 + 8) = v38;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();

  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  return v1;
}

uint64_t sub_1B924AD20()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__experience, &unk_1EBAC9478, &qword_1B96AA738);

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__resolveProfileInformation, &qword_1EBAC9480, &qword_1B96AA740);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__serverUnderstanding, &qword_1EBAC9488, &qword_1B96AA748);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__serverSuggestion, &qword_1EBAC9490, &qword_1B96AA750);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__responseCacheControl, &qword_1EBAC9498, &qword_1B96AA758);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__userPromptSignals, &qword_1EBAC94A0, &qword_1B96AA760);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__appIntent, &qword_1EBAC94A8, &qword_1B96AA768);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__sageExperience, &qword_1EBAC94B0, &qword_1B96AA770);
  return v0;
}

uint64_t sub_1B924AEB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 2:
        sub_1B924B098(a1, a2, a3, a4);
        break;
      case 3:
        sub_1B924B608(a1, a2, a3, a4);
        break;
      case 4:
        sub_1B924BB78(a2, a1, a3, a4);
        break;
      case 5:
        sub_1B924BC54(a1, a2, a3, a4);
        break;
      case 6:
        continue;
      case 7:
        sub_1B924C174(a2, a1, a3, a4);
        break;
      case 8:
        sub_1B924C250(a2, a1, a3, a4);
        break;
      case 9:
        sub_1B924C32C(a2, a1, a3, a4);
        break;
      case 10:
        sub_1B9268194(a2, a1, a3, a4, &OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__instructionIntent, sub_1B92842CC, &type metadata for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent);
        break;
      case 11:
        sub_1B924C408(a2, a1, a3, a4);
        break;
      case 12:
        sub_1B924C4E4(a2, a1, a3, a4);
        break;
      default:
        if (result == 1000)
        {
          sub_1B924C5C0(a2, a1, a3, a4);
        }

        break;
    }
  }
}

uint64_t sub_1B924B098(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC9478, &qword_1B96AA738);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.OneOf_Experience(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA0D0, &qword_1B96B23F0);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__experience;
  swift_beginAccess();
  v28[1] = v22;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v13, &unk_1EBAC9478, &qword_1B96AA738);
  }

  else
  {
    v28[0] = a1;
    sub_1B9239DA8();
    sub_1B9239DA8();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B9239E50();
    }

    else
    {
      sub_1B8D9207C(v21, &qword_1EBACA0D0, &qword_1B96B23F0);
      sub_1B9239DA8();
      sub_1B9239DA8();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }
  }

  sub_1B8CD2D08(&qword_1EBAB3EF0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience);
  v23 = v34;
  sub_1B964C580();
  if (v23)
  {
    v24 = v21;
    return sub_1B8D9207C(v24, &qword_1EBACA0D0, &qword_1B96B23F0);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_1B8D9207C(v21, &qword_1EBACA0D0, &qword_1B96B23F0);
    v24 = v19;
    return sub_1B8D9207C(v24, &qword_1EBACA0D0, &qword_1B96B23F0);
  }

  sub_1B9239DA8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v21, &qword_1EBACA0D0, &qword_1B96B23F0);
  v27 = v29;
  sub_1B9239DA8();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B924B608(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = a4;
  v37 = a3;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientDrivenExperience(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v32 = v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v33 = v28 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC9478, &qword_1B96AA738);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v29 = v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v28 - v12;
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.OneOf_Experience(0);
  v15 = MEMORY[0x1EEE9AC00](v14);
  MEMORY[0x1EEE9AC00](v15);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA0D8, &qword_1B96B23F8);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = v28 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = v28 - v20;
  __swift_storeEnumTagSinglePayload(v28 - v20, 1, 1, v5);
  v22 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__experience;
  swift_beginAccess();
  v28[1] = v22;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v13, 1, v14);
  v31 = v14;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v13, &unk_1EBAC9478, &qword_1B96AA738);
  }

  else
  {
    v28[0] = a1;
    sub_1B9239DA8();
    sub_1B9239DA8();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v21, &qword_1EBACA0D8, &qword_1B96B23F8);
      sub_1B9239DA8();
      sub_1B9239DA8();
      __swift_storeEnumTagSinglePayload(v21, 0, 1, v5);
    }

    else
    {
      sub_1B9239E50();
    }
  }

  sub_1B8CD2D08(&qword_1EBAB3FC0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientDrivenExperience, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ClientDrivenExperience);
  v23 = v34;
  sub_1B964C580();
  if (v23)
  {
    v24 = v21;
    return sub_1B8D9207C(v24, &qword_1EBACA0D8, &qword_1B96B23F8);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v19, 1, v5) == 1)
  {
    sub_1B8D9207C(v21, &qword_1EBACA0D8, &qword_1B96B23F8);
    v24 = v19;
    return sub_1B8D9207C(v24, &qword_1EBACA0D8, &qword_1B96B23F8);
  }

  sub_1B9239DA8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v26 = v31;
  sub_1B8D9207C(v21, &qword_1EBACA0D8, &qword_1B96B23F8);
  v27 = v29;
  sub_1B9239DA8();
  swift_storeEnumTagMultiPayload();
  __swift_storeEnumTagSinglePayload(v27, 0, 1, v26);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B924BB78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity(0);
  sub_1B8CD2D08(&qword_1EBAB47F0, type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity, protocol conformance descriptor for Apple_Parsec_Siri_Context_ResultEntity);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B924BC54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v34 = a3;
  v35 = a4;
  v36 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileResolutionRequest(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v31 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9480, &qword_1B96AA740);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v29 = v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v12 = v27 - v11;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.OneOf_ResolveProfileInformation(0);
  v14 = MEMORY[0x1EEE9AC00](v13);
  MEMORY[0x1EEE9AC00](v14);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA0E0, &qword_1B96B2400);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v32 = v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v27 - v18;
  __swift_storeEnumTagSinglePayload(v27 - v18, 1, 1, v5);
  v20 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__resolveProfileInformation;
  swift_beginAccess();
  v30 = a1;
  v27[1] = v20;
  sub_1B8D92024();
  v28 = v13;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v12, 1, v13);
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v12, &qword_1EBAC9480, &qword_1B96AA740);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B9239DA8();
    sub_1B8D9207C(v19, &qword_1EBACA0E0, &qword_1B96B2400);
    sub_1B9239DA8();
    sub_1B9239DA8();
    __swift_storeEnumTagSinglePayload(v19, 0, 1, v5);
  }

  sub_1B8CD2D08(&qword_1EBAC9AD8, type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileResolutionRequest, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ProfileResolutionRequest);
  v22 = v33;
  sub_1B964C580();
  if (v22)
  {
    v23 = v19;
    return sub_1B8D9207C(v23, &qword_1EBACA0E0, &qword_1B96B2400);
  }

  v24 = v32;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v24, 1, v5) == 1)
  {
    sub_1B8D9207C(v19, &qword_1EBACA0E0, &qword_1B96B2400);
    v23 = v24;
    return sub_1B8D9207C(v23, &qword_1EBACA0E0, &qword_1B96B2400);
  }

  sub_1B9239DA8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  sub_1B8D9207C(v19, &qword_1EBACA0E0, &qword_1B96B2400);
  v26 = v29;
  sub_1B9239DA8();
  __swift_storeEnumTagSinglePayload(v26, 0, 1, v28);
  swift_beginAccess();
  sub_1B8DAA170();
  return swift_endAccess();
}

uint64_t sub_1B924C174(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerUnderstanding(0);
  sub_1B8CD2D08(&qword_1EBAC9B00, type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerUnderstanding, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ServerUnderstanding);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B924C250(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion(0);
  sub_1B8CD2D08(&qword_1EBAB4530, type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ServerSuggestion);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B924C32C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseCacheControl(0);
  sub_1B8CD2D08(&qword_1EBAC9B18, type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseCacheControl, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ResponseCacheControl);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B924C408(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_UserPromptSignals(0);
  sub_1B8CD2D08(&qword_1EBAB43B8, type metadata accessor for Apple_Parsec_Siri_V2alpha_UserPromptSignals, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_UserPromptSignals);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B924C4E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData(0);
  sub_1B8CD2D08(&qword_1EBAC6418, type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B924C5C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SageExperience(0);
  sub_1B8CD2D08(&qword_1EBAB4640, type metadata accessor for Apple_Parsec_Siri_V2alpha_SageExperience, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SageExperience);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B924C6CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v61 = a4;
  v66 = a3;
  v63 = a2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94B0, &qword_1B96AA770);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v46 = v45 - v6;
  v47 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SageExperience(0);
  MEMORY[0x1EEE9AC00](v47);
  v45[1] = v45 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94A8, &qword_1B96AA768);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v49 = v45 - v9;
  v50 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData(0);
  MEMORY[0x1EEE9AC00](v50);
  v45[2] = v45 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94A0, &qword_1B96AA760);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v60 = v45 - v12;
  v51 = type metadata accessor for Apple_Parsec_Siri_V2alpha_UserPromptSignals(0);
  MEMORY[0x1EEE9AC00](v51);
  v48 = v45 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9498, &qword_1B96AA758);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v59 = v45 - v15;
  v54 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseCacheControl(0);
  MEMORY[0x1EEE9AC00](v54);
  v52 = v45 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9490, &qword_1B96AA750);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v56 = v45 - v18;
  v57 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion(0);
  MEMORY[0x1EEE9AC00](v57);
  v53 = v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9488, &qword_1B96AA748);
  MEMORY[0x1EEE9AC00](v20 - 8);
  v22 = v45 - v21;
  v58 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerUnderstanding(0);
  MEMORY[0x1EEE9AC00](v58);
  v55 = v45 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9480, &qword_1B96AA740);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = v45 - v25;
  v27 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileResolutionRequest(0);
  MEMORY[0x1EEE9AC00](v27);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC9478, &qword_1B96AA738);
  MEMORY[0x1EEE9AC00](v28 - 8);
  v30 = v45 - v29;
  swift_beginAccess();
  sub_1B8D92024();
  v31 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.OneOf_Experience(0);
  if (__swift_getEnumTagSinglePayload(v30, 1, v31) == 1)
  {
    v32 = v62;
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      v33 = v62;
      sub_1B924D870(a1, v63, v66, v61);
    }

    else
    {
      v33 = v62;
      sub_1B924D63C(a1, v63, v66, v61);
    }

    v32 = v33;
    if (v33)
    {
      return sub_1B9239E50();
    }

    sub_1B9239E50();
  }

  v34 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__resultEntities;
  swift_beginAccess();
  if (*(*(a1 + v34) + 16))
  {
    type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity(0);
    sub_1B8CD2D08(&qword_1EBAB47F0, type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity, protocol conformance descriptor for Apple_Parsec_Siri_Context_ResultEntity);

    sub_1B964C730();
    if (v32)
    {
    }
  }

  swift_beginAccess();
  sub_1B8D92024();
  v36 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.OneOf_ResolveProfileInformation(0);
  if (__swift_getEnumTagSinglePayload(v26, 1, v36) == 1)
  {
    sub_1B8D9207C(v26, &qword_1EBAC9480, &qword_1B96AA740);
    goto LABEL_18;
  }

  sub_1B9239DA8();
  sub_1B8CD2D08(&qword_1EBAC9AD8, type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileResolutionRequest, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ProfileResolutionRequest);
  sub_1B964C740();
  if (v32)
  {
    return sub_1B9239E50();
  }

  sub_1B9239E50();
LABEL_18:
  swift_beginAccess();
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v22, 1, v58);
  v38 = v60;
  v39 = v59;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v22, &qword_1EBAC9488, &qword_1B96AA748);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B8CD2D08(&qword_1EBAC9B00, type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerUnderstanding, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ServerUnderstanding);
    sub_1B964C740();
    result = sub_1B9239E50();
    if (v32)
    {
      return result;
    }
  }

  swift_beginAccess();
  v40 = v56;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v40, 1, v57) == 1)
  {
    sub_1B8D9207C(v40, &qword_1EBAC9490, &qword_1B96AA750);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B8CD2D08(&qword_1EBAB4530, type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ServerSuggestion);
    sub_1B964C740();
    result = sub_1B9239E50();
    if (v32)
    {
      return result;
    }
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v39, 1, v54) == 1)
  {
    sub_1B8D9207C(v39, &qword_1EBAC9498, &qword_1B96AA758);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B8CD2D08(&qword_1EBAC9B18, type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseCacheControl, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ResponseCacheControl);
    sub_1B964C740();
    result = sub_1B9239E50();
    if (v32)
    {
      return result;
    }
  }

  v41 = (a1 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__instructionIntent);
  swift_beginAccess();
  if (!*v41 || (v42 = *(v41 + 8), v64 = *v41, v65 = v42, sub_1B92842CC(), result = sub_1B964C680(), !v32))
  {
    swift_beginAccess();
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v38, 1, v51) == 1)
    {
      sub_1B8D9207C(v38, &qword_1EBAC94A0, &qword_1B96AA760);
    }

    else
    {
      sub_1B9239DA8();
      sub_1B8CD2D08(&qword_1EBAB43B8, type metadata accessor for Apple_Parsec_Siri_V2alpha_UserPromptSignals, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_UserPromptSignals);
      sub_1B964C740();
      result = sub_1B9239E50();
      if (v32)
      {
        return result;
      }
    }

    swift_beginAccess();
    v43 = v49;
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v43, 1, v50) == 1)
    {
      sub_1B8D9207C(v43, &qword_1EBAC94A8, &qword_1B96AA768);
LABEL_35:
      swift_beginAccess();
      v44 = v46;
      sub_1B8D92024();
      if (__swift_getEnumTagSinglePayload(v44, 1, v47) == 1)
      {
        return sub_1B8D9207C(v44, &qword_1EBAC94B0, &qword_1B96AA770);
      }

      sub_1B9239DA8();
      sub_1B8CD2D08(&qword_1EBAB4640, type metadata accessor for Apple_Parsec_Siri_V2alpha_SageExperience, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SageExperience);
      sub_1B964C740();
      return sub_1B9239E50();
    }

    sub_1B9239DA8();
    sub_1B8CD2D08(&qword_1EBAC6418, type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData);
    sub_1B964C740();
    result = sub_1B9239E50();
    if (!v32)
    {
      goto LABEL_35;
    }
  }

  return result;
}

uint64_t sub_1B924D63C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC9478, &qword_1B96AA738);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience(0);
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  sub_1B8D92024();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.OneOf_Experience(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &unk_1EBAC9478, &qword_1B96AA738);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      sub_1B9239DA8();
      sub_1B8CD2D08(&qword_1EBAB3EF0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience);
      sub_1B964C740();
      return sub_1B9239E50();
    }

    result = sub_1B9239E50();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B924D870(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[5] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAC9478, &qword_1B96AA738);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientDrivenExperience(0);
  MEMORY[0x1EEE9AC00](v7);
  swift_beginAccess();
  sub_1B8D92024();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.OneOf_Experience(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &unk_1EBAC9478, &qword_1B96AA738);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B9239DA8();
      sub_1B8CD2D08(&qword_1EBAB3FC0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientDrivenExperience, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ClientDrivenExperience);
      sub_1B964C740();
      return sub_1B9239E50();
    }

    result = sub_1B9239E50();
  }

  __break(1u);
  return result;
}

void sub_1B924DAD0()
{
  OUTLINED_FUNCTION_284();
  v214 = v2;
  v4 = v3;
  v181 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SageExperience(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_21();
  v177 = v6;
  v180 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA090, L"z\n\v");
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_185();
  v185 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94B0, &qword_1B96AA770);
  v10 = OUTLINED_FUNCTION_183(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44_0();
  v178 = v11;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_266_0();
  v183 = v13;
  v14 = OUTLINED_FUNCTION_201();
  v189 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusAppIntentData(v14);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_21();
  v179 = v16;
  v188 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA098, L"~\n\v");
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_185();
  v190 = v18;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94A8, &qword_1B96AA768);
  v20 = OUTLINED_FUNCTION_183(v19);
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_44_0();
  v182 = v21;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v22);
  OUTLINED_FUNCTION_266_0();
  v195 = v23;
  v24 = OUTLINED_FUNCTION_201();
  v193 = type metadata accessor for Apple_Parsec_Siri_V2alpha_UserPromptSignals(v24);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_21();
  v187 = v26;
  v192 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA0A0, &qword_1B96B23C0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v27);
  OUTLINED_FUNCTION_185();
  v194 = v28;
  v29 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94A0, &qword_1B96AA760);
  v30 = OUTLINED_FUNCTION_183(v29);
  MEMORY[0x1EEE9AC00](v30);
  OUTLINED_FUNCTION_44_0();
  v191 = v31;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v32);
  OUTLINED_FUNCTION_266_0();
  v196 = v33;
  v34 = OUTLINED_FUNCTION_201();
  v200 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseCacheControl(v34);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_21();
  v197 = v36;
  v199 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA0A8, &qword_1B96B23C8);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v37);
  OUTLINED_FUNCTION_185();
  v201 = v38;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9498, &qword_1B96AA758);
  v40 = OUTLINED_FUNCTION_183(v39);
  MEMORY[0x1EEE9AC00](v40);
  OUTLINED_FUNCTION_44_0();
  v198 = v41;
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v42);
  OUTLINED_FUNCTION_266_0();
  v202 = v43;
  v44 = OUTLINED_FUNCTION_201();
  v204 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion(v44);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v45);
  OUTLINED_FUNCTION_21();
  v203 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA0B0, &qword_1B96B23D0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v46);
  OUTLINED_FUNCTION_185();
  v205 = v47;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9490, &qword_1B96AA750);
  v49 = OUTLINED_FUNCTION_183(v48);
  MEMORY[0x1EEE9AC00](v49);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v50);
  OUTLINED_FUNCTION_266_0();
  v206 = v51;
  v52 = OUTLINED_FUNCTION_201();
  v208 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerUnderstanding(v52);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v53);
  OUTLINED_FUNCTION_21();
  v207 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA0B8, &qword_1B96B23D8);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v54);
  OUTLINED_FUNCTION_185();
  v209 = v55;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9488, &qword_1B96AA748);
  v57 = OUTLINED_FUNCTION_183(v56);
  MEMORY[0x1EEE9AC00](v57);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v58);
  OUTLINED_FUNCTION_266_0();
  v210 = v59;
  v60 = OUTLINED_FUNCTION_201();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.OneOf_ResolveProfileInformation(v60);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v61);
  OUTLINED_FUNCTION_21();
  v211 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA0C0, &qword_1B96B23E0);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v62);
  OUTLINED_FUNCTION_185();
  v212 = v63;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9480, &qword_1B96AA740);
  v65 = OUTLINED_FUNCTION_183(v64);
  MEMORY[0x1EEE9AC00](v65);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v66);
  OUTLINED_FUNCTION_266_0();
  v213 = v67;
  v68 = OUTLINED_FUNCTION_201();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.OneOf_Experience(v68);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v69);
  OUTLINED_FUNCTION_21();
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA0C8, &qword_1B96B23E8) - 8;
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v71);
  OUTLINED_FUNCTION_458();
  v72 = OUTLINED_FUNCTION_439_0();
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(v72, v73);
  v75 = OUTLINED_FUNCTION_183(v74);
  MEMORY[0x1EEE9AC00](v75);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v76);
  OUTLINED_FUNCTION_447_0();
  OUTLINED_FUNCTION_521(v4 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__experience, &v234);
  sub_1B8D92024();
  OUTLINED_FUNCTION_521(v214 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__experience, &v233);
  v77 = *(v70 + 56);
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v1);
  if (v78)
  {

    sub_1B8D9207C(v0, &unk_1EBAC9478, &qword_1B96AA738);
    OUTLINED_FUNCTION_37_0(v1 + v77);
    if (v78)
    {
      sub_1B8D9207C(v1, &unk_1EBAC9478, &qword_1B96AA738);
      goto LABEL_13;
    }

LABEL_9:
    v79 = &qword_1EBACA0C8;
    v80 = &qword_1B96B23E8;
LABEL_10:
    v81 = v1;
LABEL_11:
    sub_1B8D9207C(v81, v79, v80);
LABEL_90:

    goto LABEL_91;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v1 + v77);
  if (v78)
  {

    sub_1B8D9207C(v0, &unk_1EBAC9478, &qword_1B96AA738);
    OUTLINED_FUNCTION_12_28();
    sub_1B9239E50();
    goto LABEL_9;
  }

  sub_1B9239DA8();

  OUTLINED_FUNCTION_196();
  static Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.OneOf_Experience.== infix(_:_:)();
  v83 = v82;
  sub_1B9239E50();
  v84 = OUTLINED_FUNCTION_690();
  sub_1B8D9207C(v84, v85, &qword_1B96AA738);
  OUTLINED_FUNCTION_303();
  sub_1B9239E50();
  v86 = OUTLINED_FUNCTION_205();
  sub_1B8D9207C(v86, v87, &qword_1B96AA738);
  if ((v83 & 1) == 0)
  {
    goto LABEL_90;
  }

LABEL_13:
  OUTLINED_FUNCTION_521(v4 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__resultEntities, &v232);
  OUTLINED_FUNCTION_521(v214 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__resultEntities, &v231);

  v88 = OUTLINED_FUNCTION_543();
  sub_1B8D7FB90(v88, v89);
  v91 = v90;

  if ((v91 & 1) == 0)
  {
    goto LABEL_90;
  }

  OUTLINED_FUNCTION_521(v4 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__resolveProfileInformation, &v230);
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_521(v214 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__resolveProfileInformation, &v229);
  v92 = *(v211 + 48);
  v93 = v212;
  OUTLINED_FUNCTION_396_0();
  sub_1B8D92024();
  OUTLINED_FUNCTION_473_0();
  v94 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_81(v94, v95);
  if (v78)
  {
    sub_1B8D9207C(v213, &qword_1EBAC9480, &qword_1B96AA740);
    OUTLINED_FUNCTION_37_0(v212 + v92);
    if (v78)
    {
      sub_1B8D9207C(v212, &qword_1EBAC9480, &qword_1B96AA740);
      goto LABEL_25;
    }

LABEL_22:
    v79 = &qword_1EBACA0C0;
    v80 = &qword_1B96B23E0;
LABEL_23:
    v81 = v93;
    goto LABEL_11;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v212 + v92);
  if (v96)
  {
    sub_1B8D9207C(v213, &qword_1EBAC9480, &qword_1B96AA740);
    OUTLINED_FUNCTION_344_1();
    sub_1B9239E50();
    goto LABEL_22;
  }

  sub_1B9239DA8();
  v97 = OUTLINED_FUNCTION_275();
  v98 = static Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.OneOf_ResolveProfileInformation.== infix(_:_:)(v97);
  sub_1B9239E50();
  OUTLINED_FUNCTION_180_2(v213);
  OUTLINED_FUNCTION_245();
  sub_1B9239E50();
  v99 = OUTLINED_FUNCTION_541_0();
  sub_1B8D9207C(v99, v100, &qword_1B96AA740);
  if ((v98 & 1) == 0)
  {
    goto LABEL_90;
  }

LABEL_25:
  OUTLINED_FUNCTION_521(v4 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__serverUnderstanding, &v228);
  sub_1B8D92024();
  OUTLINED_FUNCTION_521(v214 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__serverUnderstanding, &v227);
  v101 = *(v207 + 48);
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v209, 1, v208);
  if (v78)
  {
    sub_1B8D9207C(v210, &qword_1EBAC9488, &qword_1B96AA748);
    OUTLINED_FUNCTION_57(v209 + v101);
    if (v78)
    {
      sub_1B8D9207C(v209, &qword_1EBAC9488, &qword_1B96AA748);
      goto LABEL_35;
    }

LABEL_33:
    v79 = &qword_1EBACA0B8;
    v80 = &qword_1B96B23D8;
    v81 = v209;
    goto LABEL_11;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_57(v209 + v101);
  if (v102)
  {
    sub_1B8D9207C(v210, &qword_1EBAC9488, &qword_1B96AA748);
    OUTLINED_FUNCTION_171_2();
    sub_1B9239E50();
    goto LABEL_33;
  }

  OUTLINED_FUNCTION_118_6();
  sub_1B9239DA8();
  v103 = OUTLINED_FUNCTION_186();
  v104 = static Apple_Parsec_Siri_V2alpha_ServerUnderstanding.== infix(_:_:)(v103);
  sub_1B9239E50();
  sub_1B8D9207C(v210, &qword_1EBAC9488, &qword_1B96AA748);
  OUTLINED_FUNCTION_246();
  sub_1B9239E50();
  v105 = OUTLINED_FUNCTION_541_0();
  sub_1B8D9207C(v105, v106, &qword_1B96AA748);
  if ((v104 & 1) == 0)
  {
    goto LABEL_90;
  }

LABEL_35:
  OUTLINED_FUNCTION_521(v4 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__serverSuggestion, &v226);
  OUTLINED_FUNCTION_396_0();
  sub_1B8D92024();
  OUTLINED_FUNCTION_521(v214 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__serverSuggestion, &v225);
  v107 = *(v203 + 48);
  v1 = v205;
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_84_0();
  v108 = OUTLINED_FUNCTION_454();
  OUTLINED_FUNCTION_178(v108, v109, v204);
  if (v78)
  {
    sub_1B8D9207C(v206, &qword_1EBAC9490, &qword_1B96AA750);
    OUTLINED_FUNCTION_57(v205 + v107);
    if (v78)
    {
      sub_1B8D9207C(v205, &qword_1EBAC9490, &qword_1B96AA750);
      goto LABEL_45;
    }

    goto LABEL_43;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_57(v205 + v107);
  if (v110)
  {
    sub_1B8D9207C(v206, &qword_1EBAC9490, &qword_1B96AA750);
    OUTLINED_FUNCTION_171_2();
    sub_1B9239E50();
LABEL_43:
    v79 = &qword_1EBACA0B0;
    v80 = &qword_1B96B23D0;
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_117_4();
  sub_1B9239DA8();
  OUTLINED_FUNCTION_186();
  static Apple_Parsec_Siri_V2alpha_ServerSuggestion.== infix(_:_:)();
  v112 = v111;
  sub_1B9239E50();
  OUTLINED_FUNCTION_106_6();
  sub_1B8D9207C(v113, v114, v115);
  OUTLINED_FUNCTION_246();
  sub_1B9239E50();
  OUTLINED_FUNCTION_106_6();
  sub_1B8D9207C(v116, v117, v118);
  if ((v112 & 1) == 0)
  {
    goto LABEL_90;
  }

LABEL_45:
  OUTLINED_FUNCTION_521(v4 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__responseCacheControl, &v224);
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_521(v214 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__responseCacheControl, &v223);
  v119 = *(v199 + 48);
  OUTLINED_FUNCTION_396_0();
  sub_1B8D92024();
  v120 = v201;
  OUTLINED_FUNCTION_473_0();
  v121 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_81(v121, v122);
  if (v78)
  {
    sub_1B8D9207C(v202, &qword_1EBAC9498, &qword_1B96AA758);
    OUTLINED_FUNCTION_37_0(v201 + v119);
    if (v78)
    {
      sub_1B8D9207C(v201, &qword_1EBAC9498, &qword_1B96AA758);
      goto LABEL_50;
    }

LABEL_64:
    v79 = &qword_1EBACA0A8;
    v80 = &qword_1B96B23C8;
LABEL_65:
    v81 = v120;
    goto LABEL_11;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v201 + v119);
  if (v136)
  {
    sub_1B8D9207C(v202, &qword_1EBAC9498, &qword_1B96AA758);
    OUTLINED_FUNCTION_464();
    sub_1B9239E50();
    goto LABEL_64;
  }

  OUTLINED_FUNCTION_116_4();
  sub_1B9239DA8();
  if (*v198 != *v197 || *(v198 + 1) != *(v197 + 1))
  {
    sub_1B9239E50();
    v143 = &qword_1B96AA758;
    OUTLINED_FUNCTION_176_2();
    sub_1B8D9207C(v144, v145, v146);
LABEL_71:
    sub_1B9239E50();
    v81 = OUTLINED_FUNCTION_246();
    v80 = v143;
    goto LABEL_11;
  }

  v137 = *(v200 + 24);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_75();
  sub_1B8CD2D08(v138, v139, MEMORY[0x1E69AAC10]);
  v140 = OUTLINED_FUNCTION_731(&v198[v137]);
  sub_1B9239E50();
  sub_1B8D9207C(v202, &qword_1EBAC9498, &qword_1B96AA758);
  OUTLINED_FUNCTION_196();
  sub_1B9239E50();
  v141 = OUTLINED_FUNCTION_186();
  sub_1B8D9207C(v141, v142, &qword_1B96AA758);
  if ((v140 & 1) == 0)
  {
    goto LABEL_90;
  }

LABEL_50:
  v123 = v4 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__instructionIntent;
  OUTLINED_FUNCTION_521(v4 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__instructionIntent, &v222);
  v124 = *v123;
  v125 = *(v123 + 8);
  v126 = (v214 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__instructionIntent);
  OUTLINED_FUNCTION_521(v214 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__instructionIntent, &v221);
  if (!sub_1B8D92198(v124, v125, *v126))
  {
    goto LABEL_90;
  }

  OUTLINED_FUNCTION_521(v4 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__userPromptSignals, &v220);
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_521(v214 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__userPromptSignals, &v219);
  v127 = *(v192 + 48);
  OUTLINED_FUNCTION_396_0();
  sub_1B8D92024();
  v120 = v194;
  OUTLINED_FUNCTION_473_0();
  v128 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_81(v128, v129);
  if (v78)
  {
    sub_1B8D9207C(v196, &qword_1EBAC94A0, &qword_1B96AA760);
    OUTLINED_FUNCTION_37_0(v194 + v127);
    v130 = v195;
    if (v78)
    {
      sub_1B8D9207C(v194, &qword_1EBAC94A0, &qword_1B96AA760);
      goto LABEL_56;
    }

    goto LABEL_75;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v194 + v127);
  v130 = v195;
  if (v147)
  {
    sub_1B8D9207C(v196, &qword_1EBAC94A0, &qword_1B96AA760);
    OUTLINED_FUNCTION_344_1();
    sub_1B9239E50();
LABEL_75:
    v79 = &qword_1EBACA0A0;
    v80 = &qword_1B96B23C0;
    goto LABEL_65;
  }

  OUTLINED_FUNCTION_115_9();
  sub_1B9239DA8();
  v148 = sub_1B8D691E8(*v191, *v187);
  if ((v148 & 1) == 0)
  {
    sub_1B9239E50();
    v143 = &qword_1B96AA760;
    OUTLINED_FUNCTION_176_2();
    sub_1B8D9207C(v156, v157, v158);
    goto LABEL_71;
  }

  v149 = *(v193 + 20);
  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_75();
  sub_1B8CD2D08(v150, v151, MEMORY[0x1E69AAC10]);
  v152 = OUTLINED_FUNCTION_731(v191 + v149);
  sub_1B9239E50();
  OUTLINED_FUNCTION_180_2(v196);
  OUTLINED_FUNCTION_245();
  sub_1B9239E50();
  v153 = OUTLINED_FUNCTION_541_0();
  sub_1B8D9207C(v153, v154, &qword_1B96AA760);
  if ((v152 & 1) == 0)
  {
    goto LABEL_90;
  }

LABEL_56:
  OUTLINED_FUNCTION_521(v4 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__appIntent, &v218);
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_521(v214 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__appIntent, &v217);
  v131 = *(v188 + 48);
  v93 = v190;
  OUTLINED_FUNCTION_396_0();
  sub_1B8D92024();
  OUTLINED_FUNCTION_473_0();
  v132 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_178(v132, v133, v189);
  if (v78)
  {
    sub_1B8D9207C(v130, &qword_1EBAC94A8, &qword_1B96AA768);
    OUTLINED_FUNCTION_57(v190 + v131);
    if (v78)
    {
      sub_1B8D9207C(v190, &qword_1EBAC94A8, &qword_1B96AA768);
      v135 = v183;
      v134 = v185;
      goto LABEL_85;
    }

    goto LABEL_82;
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_57(v190 + v131);
  if (v155)
  {
    sub_1B8D9207C(v130, &qword_1EBAC94A8, &qword_1B96AA768);
    OUTLINED_FUNCTION_344_1();
    sub_1B9239E50();
LABEL_82:
    v79 = &qword_1EBACA098;
    v80 = L"~\n\v";
    goto LABEL_23;
  }

  OUTLINED_FUNCTION_114_8();
  sub_1B9239DA8();
  v159 = OUTLINED_FUNCTION_275();
  static Apple_Parsec_Siri_V2alpha_PegasusAppIntentData.== infix(_:_:)(v159, v160, v161, v162, v163, v164, v165, v166, v177, v178, v179, v180, v181, v182, v183, v185, v187, v188, v189, v190);
  v168 = v167;
  sub_1B9239E50();
  OUTLINED_FUNCTION_180_2(v130);
  OUTLINED_FUNCTION_245();
  sub_1B9239E50();
  v169 = OUTLINED_FUNCTION_541_0();
  sub_1B8D9207C(v169, v170, &qword_1B96AA768);
  v135 = v184;
  v134 = v186;
  if ((v168 & 1) == 0)
  {
    goto LABEL_90;
  }

LABEL_85:
  OUTLINED_FUNCTION_521(v4 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__sageExperience, &v216);
  OUTLINED_FUNCTION_84_0();
  OUTLINED_FUNCTION_521(v214 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse15SiriInstructionP33_E86396049AA3E19DB448939A42AE999613_StorageClass__sageExperience, &v215);
  v171 = *(v180 + 48);
  OUTLINED_FUNCTION_396_0();
  sub_1B8D92024();
  OUTLINED_FUNCTION_473_0();
  v172 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_81(v172, v173);
  if (!v78)
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_37_0(v134 + v171);
    if (!v174)
    {
      OUTLINED_FUNCTION_113_9();
      sub_1B9239DA8();
      OUTLINED_FUNCTION_275();
      static Apple_Parsec_Siri_V2alpha_SageExperience.== infix(_:_:)();

      sub_1B9239E50();
      OUTLINED_FUNCTION_180_2(v135);
      OUTLINED_FUNCTION_245();
      sub_1B9239E50();
      v175 = OUTLINED_FUNCTION_541_0();
      sub_1B8D9207C(v175, v176, &qword_1B96AA770);
      goto LABEL_91;
    }

    sub_1B8D9207C(v135, &qword_1EBAC94B0, &qword_1B96AA770);
    OUTLINED_FUNCTION_344_1();
    sub_1B9239E50();
LABEL_95:
    sub_1B8D9207C(v134, &qword_1EBACA090, L"z\n\v");
    goto LABEL_91;
  }

  sub_1B8D9207C(v135, &qword_1EBAC94B0, &qword_1B96AA770);
  OUTLINED_FUNCTION_37_0(v134 + v171);
  if (!v78)
  {
    goto LABEL_95;
  }

  sub_1B8D9207C(v134, &qword_1EBAC94B0, &qword_1B96AA770);
LABEL_91:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B924F230(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9F20, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B924F2B0(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAB5B00, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B924F320(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2D08(&qword_1EBAB5B00, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction);

  return sub_1B964C5D0();
}

uint64_t sub_1B924F3A0()
{
  result = MEMORY[0x1BFADC850](0xD000000000000011, 0x80000001B9713C50);
  qword_1EBAC90D0 = 0xD00000000000002DLL;
  *algn_1EBAC90D8 = 0x80000001B9711AF0;
  return result;
}

uint64_t sub_1B924F434()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5AD0);
  __swift_project_value_buffer(v0, qword_1EBAB5AD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B9656CE0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "domain_name";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 4;
  *v10 = "pegasus_perf_metrics";
  *(v10 + 8) = 20;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 9;
  *v12 = "latency_info";
  *(v12 + 1) = 12;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 14;
  *v14 = "pegasus_client_event_log";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 23;
  *v16 = "pegasus_client_event_logs";
  *(v16 + 1) = 25;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 24;
  *v18 = "pegasus_self_opaque_payloads";
  *(v18 + 1) = 28;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 28;
  *v20 = "is_fallback_triggered";
  *(v20 + 1) = 21;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 29;
  *v22 = "math_operation_contains_random";
  *(v22 + 1) = 30;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 53;
  *v24 = "albus_multiturn_rewrite";
  *(v24 + 1) = 23;
  v24[16] = 2;
  v9();
  v25 = (v5 + 9 * v2);
  v26 = v25 + v1[14];
  *v25 = 54;
  *v26 = "domain_use_case_metadata";
  *(v26 + 1) = 24;
  v26[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B924F870()
{
  *(v0 + 16) = 0;
  *(v0 + 24) = 0xE000000000000000;
  v1 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__pegasusPerfMetrics;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusPerfMetrics(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__latencyInfo;
  v4 = type metadata accessor for Latencyinfopb_KfedLatencyInfo(0);
  __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  v5 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__pegasusClientEventLog;
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusClientEventLog(0);
  __swift_storeEnumTagSinglePayload(v0 + v5, 1, 1, v6);
  v7 = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__pegasusClientEventLogs) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__pegasusSelfOpaquePayloads) = v7;
  *(v0 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__isFallbackTriggered) = 0;
  *(v0 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__mathOperationContainsRandom) = 0;
  v8 = (v0 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__albusMultiturnRewrite[0]);
  *v8 = 0;
  v8[1] = 0xE000000000000000;
  *(v0 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__domainUseCaseMetadata) = v7;
  return v0;
}

uint64_t sub_1B924F960(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94E8, &qword_1B96AA7A8);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v38 = v35 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94E0, &qword_1B96AA7A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v35[2] = v35 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94D8, &qword_1B96AA798);
  MEMORY[0x1EEE9AC00](v7 - 8);
  *(v1 + 16) = 0;
  *(v1 + 24) = 0xE000000000000000;
  v8 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__pegasusPerfMetrics;
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusPerfMetrics(0);
  __swift_storeEnumTagSinglePayload(v1 + v8, 1, 1, v9);
  v10 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__latencyInfo;
  v35[0] = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__latencyInfo;
  v11 = type metadata accessor for Latencyinfopb_KfedLatencyInfo(0);
  __swift_storeEnumTagSinglePayload(v1 + v10, 1, 1, v11);
  v12 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__pegasusClientEventLog;
  v35[1] = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__pegasusClientEventLog;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusClientEventLog(0);
  __swift_storeEnumTagSinglePayload(v1 + v12, 1, 1, v13);
  v14 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__pegasusClientEventLogs;
  v15 = MEMORY[0x1E69E7CC0];
  *(v1 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__pegasusClientEventLogs) = MEMORY[0x1E69E7CC0];
  v36 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__pegasusSelfOpaquePayloads;
  *(v1 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__pegasusSelfOpaquePayloads) = v15;
  v37 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__isFallbackTriggered;
  *(v1 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__isFallbackTriggered) = 0;
  v39 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__mathOperationContainsRandom;
  *(v1 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__mathOperationContainsRandom) = 0;
  v16 = (v1 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__albusMultiturnRewrite[0]);
  *v16 = 0;
  v16[1] = 0xE000000000000000;
  v40 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__domainUseCaseMetadata;
  *(v1 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__domainUseCaseMetadata) = v15;
  swift_beginAccess();
  v18 = *(a1 + 16);
  v17 = *(a1 + 24);
  swift_beginAccess();
  *(v1 + 16) = v18;
  *(v1 + 24) = v17;
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();

  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  v19 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__pegasusClientEventLogs;
  swift_beginAccess();
  v20 = *(a1 + v19);
  swift_beginAccess();
  *(v1 + v14) = v20;

  v21 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__pegasusSelfOpaquePayloads;
  swift_beginAccess();
  v22 = *(a1 + v21);
  v23 = v36;
  swift_beginAccess();
  *(v1 + v23) = v22;

  v24 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__isFallbackTriggered;
  swift_beginAccess();
  LOBYTE(v24) = *(a1 + v24);
  v25 = v37;
  swift_beginAccess();
  *(v1 + v25) = v24;
  v26 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__mathOperationContainsRandom;
  swift_beginAccess();
  LOBYTE(v26) = *(a1 + v26);
  v27 = v39;
  swift_beginAccess();
  *(v1 + v27) = v26;
  v28 = (a1 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__albusMultiturnRewrite[0]);
  swift_beginAccess();
  v30 = *v28;
  v29 = v28[1];
  swift_beginAccess();
  *v16 = v30;
  v16[1] = v29;

  v31 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__domainUseCaseMetadata;
  swift_beginAccess();
  v32 = *(a1 + v31);

  v33 = v40;
  swift_beginAccess();
  *(v1 + v33) = v32;

  return v1;
}

uint64_t sub_1B924FED8()
{

  sub_1B8D9207C(v0 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__pegasusPerfMetrics, &qword_1EBAC94D8, &qword_1B96AA798);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__latencyInfo, &qword_1EBAC94E0, &qword_1B96AA7A0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__pegasusClientEventLog, &qword_1EBAC94E8, &qword_1B96AA7A8);

  return v0;
}

uint64_t sub_1B925000C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v12 & 1) != 0)
    {
      return result;
    }

    if (!v10 & v9)
    {
      switch(result)
      {
        case 54:
          sub_1B9250618(a2, a1, a3, a4);
          break;
        case 4:
          sub_1B9250224(a2, a1, a3, a4);
          break;
        case 9:
          sub_1B9250300(a2, a1, a3, a4);
          break;
        case 14:
          sub_1B92503DC(a2, a1, a3, a4);
          break;
        case 53:
          sub_1B9268110(a2, a1, a3, a4, OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__albusMultiturnRewrite, MEMORY[0x1E69AACE0]);
          break;
        case 1:
          sub_1B9267EF0();
          break;
      }
    }

    else
    {
      switch(result)
      {
        case 23:
          sub_1B92504B8(a2, a1, a3, a4);
          break;
        case 24:
          sub_1B9250594(a2, a1, a3, a4, &OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__pegasusSelfOpaquePayloads, MEMORY[0x1E69AAC50]);
          break;
        case 25:
        case 26:
        case 27:
          continue;
        case 28:
        case 29:
          sub_1B92682B0();
          break;
        default:
          JUMPOUT(0);
      }
    }
  }
}

uint64_t sub_1B9250224(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusPerfMetrics(0);
  sub_1B8CD2D08(&qword_1EBAC9A98, type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusPerfMetrics, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_PegasusPerfMetrics);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9250300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Latencyinfopb_KfedLatencyInfo(0);
  sub_1B8CD2D08(&qword_1EBAB52C8, type metadata accessor for Latencyinfopb_KfedLatencyInfo, protocol conformance descriptor for Latencyinfopb_KfedLatencyInfo);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B92503DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusClientEventLog(0);
  sub_1B8CD2D08(&qword_1EBAB5C78, type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusClientEventLog, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_PegasusClientEventLog);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B92504B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusClientEventLog(0);
  sub_1B8CD2D08(&qword_1EBAB5C78, type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusClientEventLog, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_PegasusClientEventLog);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B9250594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(void))
{
  OUTLINED_FUNCTION_134_2();
  OUTLINED_FUNCTION_131();
  swift_beginAccess();
  OUTLINED_FUNCTION_318_1();
  v7 = a6();
  return OUTLINED_FUNCTION_199_1(v7);
}

uint64_t sub_1B9250618(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata(0);
  sub_1B8CD2D08(&qword_1EBAB3FE8, type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata);
  sub_1B964C570();
  return swift_endAccess();
}

uint64_t sub_1B9250724(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94E8, &qword_1B96AA7A8);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v39 = v37 - v9;
  v42 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusClientEventLog(0);
  MEMORY[0x1EEE9AC00](v42);
  v37[1] = v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94E0, &qword_1B96AA7A0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v40 = v37 - v12;
  v41 = type metadata accessor for Latencyinfopb_KfedLatencyInfo(0);
  MEMORY[0x1EEE9AC00](v41);
  v37[2] = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94D8, &qword_1B96AA798);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = v37 - v15;
  v17 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusPerfMetrics(0);
  MEMORY[0x1EEE9AC00](v17);
  swift_beginAccess();
  v18 = a1;
  v20 = *(a1 + 16);
  v19 = *(a1 + 24);
  v21 = HIBYTE(v19) & 0xF;
  if ((v19 & 0x2000000000000000) == 0)
  {
    v21 = v20 & 0xFFFFFFFFFFFFLL;
  }

  if (v21)
  {

    sub_1B964C700();
    if (v5)
    {
    }

    v38 = a4;
  }

  else
  {
    v38 = a4;
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v16, 1, v17) == 1)
  {
    sub_1B8D9207C(v16, &qword_1EBAC94D8, &qword_1B96AA798);
    v23 = v5;
  }

  else
  {
    sub_1B9239DA8();
    sub_1B8CD2D08(&qword_1EBAC9A98, type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusPerfMetrics, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_PegasusPerfMetrics);
    sub_1B964C740();
    v23 = v5;
    result = sub_1B9239E50();
    if (v5)
    {
      return result;
    }
  }

  swift_beginAccess();
  v24 = v40;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v24, 1, v41);
  v26 = v42;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v24, &qword_1EBAC94E0, &qword_1B96AA7A0);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B8CD2D08(&qword_1EBAB52C8, type metadata accessor for Latencyinfopb_KfedLatencyInfo, protocol conformance descriptor for Latencyinfopb_KfedLatencyInfo);
    sub_1B964C740();
    result = sub_1B9239E50();
    if (v23)
    {
      return result;
    }
  }

  swift_beginAccess();
  v27 = v39;
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v27, 1, v26) == 1)
  {
    sub_1B8D9207C(v27, &qword_1EBAC94E8, &qword_1B96AA7A8);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B8CD2D08(&qword_1EBAB5C78, type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusClientEventLog, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_PegasusClientEventLog);
    sub_1B964C740();
    result = sub_1B9239E50();
    if (v23)
    {
      return result;
    }
  }

  v28 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__pegasusClientEventLogs;
  swift_beginAccess();
  if (!*(*(v18 + v28) + 16) || (sub_1B8CD2D08(&qword_1EBAB5C78, type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusClientEventLog, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_PegasusClientEventLog), , sub_1B964C730(), result = , !v23))
  {
    v29 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__pegasusSelfOpaquePayloads;
    swift_beginAccess();
    if (!*(*(v18 + v29) + 16) || (, sub_1B964C690(), result = , !v23))
    {
      v30 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__isFallbackTriggered;
      swift_beginAccess();
      if (*(v18 + v30) != 1 || (result = sub_1B964C670(), !v23))
      {
        v31 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__mathOperationContainsRandom;
        swift_beginAccess();
        if (*(v18 + v31) != 1 || (result = sub_1B964C670(), !v23))
        {
          v32 = (v18 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__albusMultiturnRewrite[0]);
          swift_beginAccess();
          v34 = *v32;
          v33 = v32[1];
          v35 = HIBYTE(v33) & 0xF;
          if ((v33 & 0x2000000000000000) == 0)
          {
            v35 = v34 & 0xFFFFFFFFFFFFLL;
          }

          if (!v35 || (, sub_1B964C700(), result = , !v23))
          {
            v36 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__domainUseCaseMetadata;
            result = swift_beginAccess();
            if (*(*(v18 + v36) + 16))
            {
              type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata(0);
              sub_1B8CD2D08(&qword_1EBAB3FE8, type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata);

              sub_1B964C730();
            }
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_1B9250FF8(uint64_t a1, uint64_t a2)
{
  v84 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusClientEventLog(0);
  MEMORY[0x1EEE9AC00](v84);
  v5 = &v79 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA078, L"n\n\v");
  MEMORY[0x1EEE9AC00](v83);
  v85 = &v79 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94E8, &qword_1B96AA7A8);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v81 = &v79 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v92 = &v79 - v10;
  v90 = type metadata accessor for Latencyinfopb_KfedLatencyInfo(0);
  MEMORY[0x1EEE9AC00](v90);
  v82 = &v79 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA080, L"r\n\v");
  MEMORY[0x1EEE9AC00](v88);
  v91 = &v79 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94E0, &qword_1B96AA7A0);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v86 = &v79 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v89 = &v79 - v16;
  v17 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusPerfMetrics(0);
  MEMORY[0x1EEE9AC00](v17);
  v87 = &v79 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA088, L"v\n\v");
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v79 - v20;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94D8, &qword_1B96AA798);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v93 = &v79 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v23);
  v26 = &v79 - v25;
  swift_beginAccess();
  v27 = *(a1 + 16);
  v28 = *(a1 + 24);
  v95 = a1;
  swift_beginAccess();
  v29 = v27 == *(a2 + 16) && v28 == *(a2 + 24);
  if (v29 || (v30 = 0, (sub_1B964C9F0() & 1) != 0))
  {
    v80 = v5;
    v94 = a2;
    v31 = v95;
    swift_beginAccess();
    v32 = v94;
    sub_1B8D92024();
    swift_beginAccess();
    v33 = *(v19 + 48);
    sub_1B8D92024();
    sub_1B8D92024();
    if (__swift_getEnumTagSinglePayload(v21, 1, v17) == 1)
    {

      sub_1B8D9207C(v26, &qword_1EBAC94D8, &qword_1B96AA798);
      if (__swift_getEnumTagSinglePayload(&v21[v33], 1, v17) == 1)
      {
        sub_1B8D9207C(v21, &qword_1EBAC94D8, &qword_1B96AA798);
LABEL_9:
        swift_beginAccess();
        v34 = v89;
        sub_1B8D92024();
        swift_beginAccess();
        v35 = *(v88 + 48);
        v21 = v91;
        sub_1B8D92024();
        sub_1B8D92024();
        v36 = v90;
        if (__swift_getEnumTagSinglePayload(v21, 1, v90) == 1)
        {
          sub_1B8D9207C(v34, &qword_1EBAC94E0, &qword_1B96AA7A0);
          EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v21[v35], 1, v36);
          v38 = v92;
          if (EnumTagSinglePayload == 1)
          {
            sub_1B8D9207C(v21, &qword_1EBAC94E0, &qword_1B96AA7A0);
LABEL_28:
            swift_beginAccess();
            sub_1B8D92024();
            swift_beginAccess();
            v48 = *(v83 + 48);
            v49 = v85;
            sub_1B8D92024();
            sub_1B8D92024();
            v50 = v84;
            if (__swift_getEnumTagSinglePayload(v49, 1, v84) == 1)
            {
              sub_1B8D9207C(v38, &qword_1EBAC94E8, &qword_1B96AA7A8);
              if (__swift_getEnumTagSinglePayload(v49 + v48, 1, v50) == 1)
              {
                sub_1B8D9207C(v49, &qword_1EBAC94E8, &qword_1B96AA7A8);
                goto LABEL_31;
              }

              goto LABEL_43;
            }

            v76 = v81;
            sub_1B8D92024();
            if (__swift_getEnumTagSinglePayload(v49 + v48, 1, v50) == 1)
            {
              sub_1B8D9207C(v38, &qword_1EBAC94E8, &qword_1B96AA7A8);
              sub_1B9239E50();
LABEL_43:
              v40 = &qword_1EBACA078;
              v41 = L"n\n\v";
              v44 = v49;
              goto LABEL_24;
            }

            v77 = v80;
            sub_1B9239DA8();
            if (MEMORY[0x1BFADC060](*v76, v76[1], *v77, v77[1]) & 1) != 0 && (MEMORY[0x1BFADC060](v76[2], v76[3], v77[2], v77[3]))
            {
              sub_1B964C2B0();
              sub_1B8CD2D08(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
              v78 = sub_1B964C850();
              sub_1B9239E50();
              sub_1B8D9207C(v38, &qword_1EBAC94E8, &qword_1B96AA7A8);
              sub_1B9239E50();
              sub_1B8D9207C(v49, &qword_1EBAC94E8, &qword_1B96AA7A8);
              if (v78)
              {
LABEL_31:
                v51 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__pegasusClientEventLogs;
                swift_beginAccess();
                v52 = *(v31 + v51);
                v53 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__pegasusClientEventLogs;
                swift_beginAccess();
                v54 = *(v32 + v53);

                sub_1B8D8EA50(v52, v54);
                v56 = v55;

                if (v56)
                {
                  v57 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__pegasusSelfOpaquePayloads;
                  swift_beginAccess();
                  v58 = *(v31 + v57);
                  v59 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__pegasusSelfOpaquePayloads;
                  swift_beginAccess();
                  v60 = *(v32 + v59);

                  v61 = sub_1B8D8F484(v58, v60);

                  if (v61)
                  {
                    v62 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__isFallbackTriggered;
                    swift_beginAccess();
                    LODWORD(v62) = *(v31 + v62);
                    v63 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__isFallbackTriggered;
                    swift_beginAccess();
                    if (v62 == *(v32 + v63))
                    {
                      v64 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__mathOperationContainsRandom;
                      swift_beginAccess();
                      LODWORD(v64) = *(v31 + v64);
                      v65 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__mathOperationContainsRandom;
                      swift_beginAccess();
                      if (v64 == *(v32 + v65))
                      {
                        v66 = (v31 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__albusMultiturnRewrite[0]);
                        swift_beginAccess();
                        v67 = *v66;
                        v68 = v66[1];
                        v69 = (v32 + OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__albusMultiturnRewrite[0]);
                        swift_beginAccess();
                        v70 = v67 == *v69 && v68 == v69[1];
                        if (v70 || (sub_1B964C9F0() & 1) != 0)
                        {
                          v71 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__domainUseCaseMetadata;
                          swift_beginAccess();
                          v72 = *(v31 + v71);
                          v73 = OBJC_IVAR____TtCVV10PegasusAPI45Apple_Parsec_Siri_V2alpha_SiriPegasusResponse16ResponseMetadataP33_E86396049AA3E19DB448939A42AE999613_StorageClass__domainUseCaseMetadata;
                          swift_beginAccess();
                          v74 = *(v32 + v73);

                          sub_1B8D8FAA8(v72, v74);
                          v30 = v75;

                          return v30 & 1;
                        }
                      }
                    }
                  }
                }
              }

LABEL_25:

              v30 = 0;
              return v30 & 1;
            }

            sub_1B9239E50();
            sub_1B8D9207C(v38, &qword_1EBAC94E8, &qword_1B96AA7A8);
            sub_1B9239E50();
            v44 = v49;
            v40 = &qword_1EBAC94E8;
            v41 = &qword_1B96AA7A8;
LABEL_24:
            sub_1B8D9207C(v44, v40, v41);
            goto LABEL_25;
          }
        }

        else
        {
          sub_1B8D92024();
          v45 = __swift_getEnumTagSinglePayload(&v21[v35], 1, v36);
          v46 = v92;
          if (v45 != 1)
          {
            sub_1B9239DA8();
            LODWORD(v95) = static Latencyinfopb_KfedLatencyInfo.== infix(_:_:)();
            sub_1B9239E50();
            sub_1B8D9207C(v34, &qword_1EBAC94E0, &qword_1B96AA7A0);
            v38 = v46;
            sub_1B9239E50();
            sub_1B8D9207C(v21, &qword_1EBAC94E0, &qword_1B96AA7A0);
            if ((v95 & 1) == 0)
            {
              goto LABEL_25;
            }

            goto LABEL_28;
          }

          sub_1B8D9207C(v34, &qword_1EBAC94E0, &qword_1B96AA7A0);
          sub_1B9239E50();
        }

        v40 = &qword_1EBACA080;
        v41 = L"r\n\v";
LABEL_23:
        v44 = v21;
        goto LABEL_24;
      }
    }

    else
    {
      v39 = v93;
      sub_1B8D92024();
      if (__swift_getEnumTagSinglePayload(&v21[v33], 1, v17) != 1)
      {
        v42 = v87;
        sub_1B9239DA8();
        if (*v39 != *v42 || v39[1] != v42[1])
        {

          sub_1B9239E50();
          sub_1B8D9207C(v26, &qword_1EBAC94D8, &qword_1B96AA798);
          sub_1B9239E50();
          v44 = v21;
          v40 = &qword_1EBAC94D8;
          v41 = &qword_1B96AA798;
          goto LABEL_24;
        }

        sub_1B964C2B0();
        sub_1B8CD2D08(&qword_1EBAB3B38, MEMORY[0x1E69AAC08], MEMORY[0x1E69AAC10]);
        v31 = v95;

        v43 = sub_1B964C850();
        sub_1B9239E50();
        sub_1B8D9207C(v26, &qword_1EBAC94D8, &qword_1B96AA798);
        sub_1B9239E50();
        v32 = v94;
        sub_1B8D9207C(v21, &qword_1EBAC94D8, &qword_1B96AA798);
        if ((v43 & 1) == 0)
        {
          goto LABEL_25;
        }

        goto LABEL_9;
      }

      sub_1B8D9207C(v26, &qword_1EBAC94D8, &qword_1B96AA798);
      sub_1B9239E50();
    }

    v40 = &qword_1EBACA088;
    v41 = L"v\n\v";
    goto LABEL_23;
  }

  return v30 & 1;
}

uint64_t sub_1B9251EF8(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9F18, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9251F78(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAB5AC0, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9251FE8(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2D08(&qword_1EBAB5AC0, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata);

  return sub_1B964C5D0();
}

uint64_t sub_1B9252074()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB5C88);
  __swift_project_value_buffer(v0, qword_1EBAB5C88);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "pegasus_domain_flow_step_log";
  *(v6 + 8) = 28;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "pegasus_domain_user_sensitive_tier1_log";
  *(v10 + 1) = 39;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_PegasusClientEventLog.traverse<A>(visitor:)()
{
  v2 = *v0;
  v3 = v0[1];
  switch(v3 >> 62)
  {
    case 1uLL:
      v4 = v2;
      v5 = v2 >> 32;
      goto LABEL_6;
    case 2uLL:
      v4 = *(v2 + 16);
      v5 = *(v2 + 24);
LABEL_6:
      if (v4 != v5)
      {
        goto LABEL_7;
      }

      goto LABEL_8;
    case 3uLL:
      goto LABEL_8;
    default:
      if ((v3 & 0xFF000000000000) == 0)
      {
        goto LABEL_8;
      }

LABEL_7:
      OUTLINED_FUNCTION_11_5();
      result = sub_1B964C6A0();
      if (!v1)
      {
LABEL_8:
        v7 = v0[2];
        v8 = v0[3];
        switch(v8 >> 62)
        {
          case 1uLL:
            v9 = v7;
            v10 = v7 >> 32;
            goto LABEL_13;
          case 2uLL:
            v9 = *(v7 + 16);
            v10 = *(v7 + 24);
LABEL_13:
            if (v9 != v10)
            {
              goto LABEL_14;
            }

            goto LABEL_15;
          case 3uLL:
            goto LABEL_15;
          default:
            if ((v8 & 0xFF000000000000) == 0)
            {
              goto LABEL_15;
            }

LABEL_14:
            OUTLINED_FUNCTION_11_5();
            result = sub_1B964C6A0();
            if (!v1)
            {
LABEL_15:
              type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusClientEventLog(0);
              result = OUTLINED_FUNCTION_8_1();
            }

            break;
        }
      }

      return result;
  }
}

uint64_t static Apple_Parsec_Siri_V2alpha_PegasusClientEventLog.== infix(_:_:)(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_78_6(a1);
  if ((MEMORY[0x1BFADC060](v3) & 1) == 0 || (MEMORY[0x1BFADC060](*(v2 + 16), *(v2 + 24), *(v1 + 16), *(v1 + 24)) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusClientEventLog(0);
  OUTLINED_FUNCTION_188_1();
  OUTLINED_FUNCTION_0_75();
  v6 = sub_1B8CD2D08(v4, v5, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v6) & 1;
}

uint64_t sub_1B92524CC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9F10, type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusClientEventLog, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_PegasusClientEventLog);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B925254C(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAB5C78, type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusClientEventLog, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_PegasusClientEventLog);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B92525BC(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2D08(&qword_1EBAB5C78, type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusClientEventLog, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_PegasusClientEventLog);

  return sub_1B964C5D0();
}

uint64_t sub_1B9252648()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC90E0);
  __swift_project_value_buffer(v0, qword_1EBAC90E0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "start_timestamp";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "end_timestamp";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_PegasusPerfMetrics.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2 || result == 1)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C560();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_PegasusPerfMetrics.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (!*v0 || (OUTLINED_FUNCTION_29(), result = sub_1B964C720(), !v1))
  {
    if (!*(v2 + 8) || (OUTLINED_FUNCTION_29(), result = sub_1B964C720(), !v1))
    {
      type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusPerfMetrics(0);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_PegasusPerfMetrics.== infix(_:_:)(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  if (*(v2 + 8) != *(v3 + 8))
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusPerfMetrics(0);
  OUTLINED_FUNCTION_188_1();
  OUTLINED_FUNCTION_0_75();
  v6 = sub_1B8CD2D08(v4, v5, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v6) & 1;
}

uint64_t sub_1B9252A44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9F08, type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusPerfMetrics, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_PegasusPerfMetrics);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9252AC4(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAC9A98, type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusPerfMetrics, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_PegasusPerfMetrics);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9252B34(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2D08(&qword_1EBAC9A98, type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusPerfMetrics, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_PegasusPerfMetrics);

  return sub_1B964C5D0();
}

uint64_t sub_1B9252BCC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC90F8);
  __swift_project_value_buffer(v0, qword_1EBAC90F8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 2;
  *v6 = "multi_user_response_context";
  *(v6 + 8) = 27;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 3;
  *v10 = "audio_response_context";
  *(v10 + 1) = 22;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9252DB8()
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseContext._StorageClass(0);
  v0 = swift_allocObject();
  v1 = OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextP33_E86396049AA3E19DB448939A42AE999613_StorageClass__multiUserResponseContext;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserResponseContext(0);
  __swift_storeEnumTagSinglePayload(v0 + v1, 1, 1, v2);
  v3 = OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextP33_E86396049AA3E19DB448939A42AE999613_StorageClass__audioResponseContext;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioResponseContext(0);
  result = __swift_storeEnumTagSinglePayload(v0 + v3, 1, 1, v4);
  qword_1EBAC9110 = v0;
  return result;
}

uint64_t sub_1B9252FBC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94F8, &qword_1B96AA7B8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94F0, &qword_1B96AA7B0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextP33_E86396049AA3E19DB448939A42AE999613_StorageClass__multiUserResponseContext;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserResponseContext(0);
  __swift_storeEnumTagSinglePayload(v1 + v4, 1, 1, v5);
  v6 = OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextP33_E86396049AA3E19DB448939A42AE999613_StorageClass__audioResponseContext;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioResponseContext(0);
  __swift_storeEnumTagSinglePayload(v1 + v6, 1, 1, v7);
  swift_beginAccess();
  sub_1B8D92024();
  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  swift_beginAccess();
  sub_1B8D92024();

  swift_beginAccess();
  sub_1B8DAA170();
  swift_endAccess();
  return v1;
}

uint64_t sub_1B92531C0()
{
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextP33_E86396049AA3E19DB448939A42AE999613_StorageClass__multiUserResponseContext, &qword_1EBAC94F0, &qword_1B96AA7B0);
  sub_1B8D9207C(v0 + OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextP33_E86396049AA3E19DB448939A42AE999613_StorageClass__audioResponseContext, &qword_1EBAC94F8, &qword_1B96AA7B8);
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1B92532AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  while (1)
  {
    result = sub_1B964C3C0();
    if (v4 || (v10 & 1) != 0)
    {
      break;
    }

    if (result == 3)
    {
      sub_1B9253414(a2, a1, a3, a4);
    }

    else if (result == 2)
    {
      sub_1B9253338(a2, a1, a3, a4);
    }
  }

  return result;
}

uint64_t sub_1B9253338(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserResponseContext(0);
  sub_1B8CD2D08(&qword_1EBAC8B58, type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserResponseContext, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_MultiUserResponseContext);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9253414(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  swift_beginAccess();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioResponseContext(0);
  sub_1B8CD2D08(&qword_1EBAC9AC0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioResponseContext, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioResponseContext);
  sub_1B964C580();
  return swift_endAccess();
}

uint64_t sub_1B9253520(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v18 = a4;
  v16 = a2;
  v17 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94F8, &qword_1B96AA7B8);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v14 - v6;
  v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioResponseContext(0);
  MEMORY[0x1EEE9AC00](v15);
  v14 = &v14 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94F0, &qword_1B96AA7B0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v14 - v10;
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserResponseContext(0);
  MEMORY[0x1EEE9AC00](v12);
  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v11, 1, v12) == 1)
  {
    sub_1B8D9207C(v11, &qword_1EBAC94F0, &qword_1B96AA7B0);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B8CD2D08(&qword_1EBAC8B58, type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserResponseContext, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_MultiUserResponseContext);
    sub_1B964C740();
    result = sub_1B9239E50();
    if (v4)
    {
      return result;
    }
  }

  swift_beginAccess();
  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v7, 1, v15) == 1)
  {
    return sub_1B8D9207C(v7, &qword_1EBAC94F8, &qword_1B96AA7B8);
  }

  sub_1B9239DA8();
  sub_1B8CD2D08(&qword_1EBAC9AC0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioResponseContext, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioResponseContext);
  sub_1B964C740();
  return sub_1B9239E50();
}

void sub_1B92538F4()
{
  OUTLINED_FUNCTION_284();
  v41 = v3;
  v5 = v4;
  v39 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioResponseContext(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_21();
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA068, L"f\n\v");
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_185();
  v40 = v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94F8, &qword_1B96AA7B8);
  v10 = OUTLINED_FUNCTION_183(v9);
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_44_0();
  OUTLINED_FUNCTION_230();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_266_0();
  v38 = v12;
  v13 = OUTLINED_FUNCTION_201();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_MultiUserResponseContext(v13);
  OUTLINED_FUNCTION_135_0();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_21();
  v36 = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA070, L"j\n\v") - 8;
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_458();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94F0, &qword_1B96AA7B0);
  v19 = OUTLINED_FUNCTION_183(v18);
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_66();
  OUTLINED_FUNCTION_442();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_447_0();
  OUTLINED_FUNCTION_521(v5 + OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextP33_E86396049AA3E19DB448939A42AE999613_StorageClass__multiUserResponseContext, &v45);
  sub_1B8D92024();
  OUTLINED_FUNCTION_521(v41 + OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextP33_E86396049AA3E19DB448939A42AE999613_StorageClass__multiUserResponseContext, &v44);
  v21 = *(v16 + 56);
  sub_1B8D92024();
  sub_1B8D92024();
  OUTLINED_FUNCTION_117(v2);
  if (!v22)
  {
    OUTLINED_FUNCTION_205();
    sub_1B8D92024();
    OUTLINED_FUNCTION_117(v2 + v21);
    if (!v22)
    {
      OUTLINED_FUNCTION_108_7();
      sub_1B9239DA8();

      v23 = static Apple_Parsec_Siri_V2alpha_MultiUserResponseContext.== infix(_:_:)(v1, v36);
      sub_1B9239E50();
      v24 = OUTLINED_FUNCTION_467();
      sub_1B8D9207C(v24, v25, &qword_1B96AA7B0);
      OUTLINED_FUNCTION_541_0();
      sub_1B9239E50();
      sub_1B8D9207C(v2, &qword_1EBAC94F0, &qword_1B96AA7B0);
      if (v23)
      {
        goto LABEL_12;
      }

LABEL_10:

      goto LABEL_21;
    }

    sub_1B8D9207C(v0, &qword_1EBAC94F0, &qword_1B96AA7B0);
    OUTLINED_FUNCTION_464();
    sub_1B9239E50();
LABEL_9:
    sub_1B8D9207C(v2, &qword_1EBACA070, L"j\n\v");
    goto LABEL_10;
  }

  sub_1B8D9207C(v0, &qword_1EBAC94F0, &qword_1B96AA7B0);
  OUTLINED_FUNCTION_117(v2 + v21);
  if (!v22)
  {
    goto LABEL_9;
  }

  sub_1B8D9207C(v2, &qword_1EBAC94F0, &qword_1B96AA7B0);
LABEL_12:
  OUTLINED_FUNCTION_521(v5 + OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextP33_E86396049AA3E19DB448939A42AE999613_StorageClass__audioResponseContext, &v43);
  sub_1B8D92024();
  OUTLINED_FUNCTION_521(v41 + OBJC_IVAR____TtCV10PegasusAPI41Apple_Parsec_Siri_V2alpha_ResponseContextP33_E86396049AA3E19DB448939A42AE999613_StorageClass__audioResponseContext, &v42);
  v26 = *(v37 + 48);
  OUTLINED_FUNCTION_396_0();
  sub_1B8D92024();
  sub_1B8D92024();
  v27 = OUTLINED_FUNCTION_602();
  OUTLINED_FUNCTION_178(v27, v28, v39);
  if (!v22)
  {
    sub_1B8D92024();
    OUTLINED_FUNCTION_48(v40 + v26);
    if (!v29)
    {
      OUTLINED_FUNCTION_107_4();
      sub_1B9239DA8();
      OUTLINED_FUNCTION_275();
      static Apple_Parsec_Siri_V2alpha_AudioResponseContext.== infix(_:_:)();

      sub_1B9239E50();
      OUTLINED_FUNCTION_176_2();
      sub_1B8D9207C(v30, v31, v32);
      sub_1B9239E50();
      OUTLINED_FUNCTION_176_2();
      sub_1B8D9207C(v33, v34, v35);
      goto LABEL_21;
    }

    sub_1B8D9207C(v38, &qword_1EBAC94F8, &qword_1B96AA7B8);
    OUTLINED_FUNCTION_344_1();
    sub_1B9239E50();
LABEL_20:
    sub_1B8D9207C(v40, &qword_1EBACA068, L"f\n\v");
    goto LABEL_21;
  }

  sub_1B8D9207C(v38, &qword_1EBAC94F8, &qword_1B96AA7B8);
  OUTLINED_FUNCTION_48(v40 + v26);
  if (!v22)
  {
    goto LABEL_20;
  }

  sub_1B8D9207C(v40, &qword_1EBAC94F8, &qword_1B96AA7B8);
LABEL_21:
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9253F5C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9F00, type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseContext, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ResponseContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9253FDC(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAC95E0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseContext, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ResponseContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B925404C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2D08(&qword_1EBAC95E0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseContext, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ResponseContext);

  return sub_1B964C5D0();
}

uint64_t sub_1B92540E4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC9118);
  __swift_project_value_buffer(v0, qword_1EBAC9118);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B964D050;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "queue_state_info";
  *(v4 + 8) = 16;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1B964C760();
}

uint64_t sub_1B92542A0()
{
  OUTLINED_FUNCTION_515_0();
  while (1)
  {
    OUTLINED_FUNCTION_257();
    result = sub_1B964C3C0();
    if (v1 || (v3 & 1) != 0)
    {
      break;
    }

    if (result == 1)
    {
      OUTLINED_FUNCTION_445_0();
      v0();
    }
  }

  return result;
}

uint64_t sub_1B9254300(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioResponseContext(0);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo(0);
  sub_1B8CD2D08(&qword_1EBAB4298, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo);
  return sub_1B964C580();
}

void Apple_Parsec_Siri_V2alpha_AudioResponseContext.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_587_0(v2, v3, v4);
  v6 = v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9500, &unk_1B96AA7C0);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_458();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_62();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioResponseContext(0);
  OUTLINED_FUNCTION_517_1();
  OUTLINED_FUNCTION_90(v1);
  if (v10)
  {
    sub_1B8D9207C(v1, &qword_1EBAC9500, &unk_1B96AA7C0);
LABEL_5:
    OUTLINED_FUNCTION_541_0();
    sub_1B964C290();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_23_15();
  sub_1B9239DA8();
  sub_1B8CD2D08(&qword_1EBAB4298, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo);
  OUTLINED_FUNCTION_153_1();
  OUTLINED_FUNCTION_609_1(v11, v12, v13, v14, v6);
  OUTLINED_FUNCTION_206_3();
  sub_1B9239E50();
  if (!v0)
  {
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Siri_V2alpha_AudioResponseContext.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_280();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo(v1);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_31_8();
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_79();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9680, &unk_1B96AA8E0);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  v8 = OUTLINED_FUNCTION_22_3();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioResponseContext(v8);
  OUTLINED_FUNCTION_106_6();
  sub_1B8D92024();
  OUTLINED_FUNCTION_603_1();
  OUTLINED_FUNCTION_50(v0);
  if (v9)
  {
    OUTLINED_FUNCTION_70_9();
    if (v9)
    {
      sub_1B8D9207C(v0, &qword_1EBAC9500, &unk_1B96AA7C0);
LABEL_12:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_75();
      sub_1B8CD2D08(v12, v13, MEMORY[0x1E69AAC10]);
      v14 = OUTLINED_FUNCTION_288();
      v10 = OUTLINED_FUNCTION_656_0(v14, v15);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_177_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_70_9();
  if (v9)
  {
    OUTLINED_FUNCTION_206_3();
    sub_1B9239E50();
LABEL_9:
    sub_1B8D9207C(v0, &qword_1EBAC9680, &unk_1B96AA8E0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_23_15();
  sub_1B9239DA8();
  OUTLINED_FUNCTION_246();
  v11 = static Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo.== infix(_:_:)();
  sub_1B9239E50();
  OUTLINED_FUNCTION_467();
  sub_1B9239E50();
  sub_1B8D9207C(v0, &qword_1EBAC9500, &unk_1B96AA7C0);
  if (v11)
  {
    goto LABEL_12;
  }

LABEL_10:
  v10 = 0;
LABEL_13:
  OUTLINED_FUNCTION_264(v10);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B92547F4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9EF8, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioResponseContext, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioResponseContext);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9254874(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAC9AC0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioResponseContext, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioResponseContext);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B92548E4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2D08(&qword_1EBAC9AC0, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioResponseContext, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioResponseContext);

  return sub_1B964C5D0();
}

uint64_t sub_1B9254970()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC9130);
  __swift_project_value_buffer(v0, qword_1EBAC9130);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B964D050;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "requests";
  *(v4 + 8) = 8;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1B964C760();
}

void sub_1B9254B5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_605_1();
  while (1)
  {
    OUTLINED_FUNCTION_233();
    v7 = sub_1B964C3C0();
    if (v6 || (v8 & 1) != 0)
    {
      break;
    }

    if (v7 == 1)
    {
      sub_1B9271380();
    }
  }

  OUTLINED_FUNCTION_606_1();
}

void Apple_Parsec_Siri_V2alpha_ProfileResolutionRequest.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_822();
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_835();
  if (!v1 || (type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest(0), sub_1B8CD2D08(&qword_1EBAC9690, type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest), OUTLINED_FUNCTION_234_4(), OUTLINED_FUNCTION_687(), sub_1B964C730(), !v0))
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileResolutionRequest(0);
    OUTLINED_FUNCTION_8_1();
  }

  OUTLINED_FUNCTION_823();
}

uint64_t sub_1B9254D34(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9EF0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileResolutionRequest, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ProfileResolutionRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9254DB4(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAC9AD8, type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileResolutionRequest, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ProfileResolutionRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9254E24(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2D08(&qword_1EBAC9AD8, type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileResolutionRequest, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ProfileResolutionRequest);

  return sub_1B964C5D0();
}

uint64_t sub_1B9254EBC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC9148);
  __swift_project_value_buffer(v0, qword_1EBAC9148);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "slice_label";
  *(v6 + 8) = 11;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "reference_type";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "reference";
  *(v12 + 1) = 9;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "value_label";
  *(v14 + 1) = 11;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B92551D0(v3, v4, v5, v6);
        break;
      case 2:
        v11 = OUTLINED_FUNCTION_9();
        sub_1B9255238(v11, v12, v13, v14);
        break;
      case 3:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 4:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B92552A0(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (sub_1B8D92198(*v0, *(v2 + 8), 0) || (sub_1B918D16C(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
  {
    if (!*(v2 + 16) || (OUTLINED_FUNCTION_94_4(), sub_1B927AD6C(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
    {
      OUTLINED_FUNCTION_1();
      if (!v4 || (OUTLINED_FUNCTION_11_5(), result = sub_1B964C700(), !v1))
      {
        if (!*(v2 + 48) || (OUTLINED_FUNCTION_94_4(), sub_1B918D1C0(), OUTLINED_FUNCTION_687(), result = sub_1B964C680(), !v1))
        {
          type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest(0);
          return OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest.== infix(_:_:)(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_51_2(a1);
  if (!sub_1B8D92198(v3, *(v2 + 8), *v1))
  {
    return 0;
  }

  v4 = *(v2 + 16);
  v5 = *(v1 + 16);
  if (*(v1 + 24) == 1)
  {
    if (v5)
    {
      if (v5 == 1)
      {
        if (v4 != 1)
        {
          return 0;
        }
      }

      else if (v4 != 2)
      {
        return 0;
      }
    }

    else if (v4)
    {
      return 0;
    }
  }

  else if (v4 != v5)
  {
    return 0;
  }

  OUTLINED_FUNCTION_40_5();
  v8 = v8 && v6 == v7;
  if (v8 || (sub_1B964C9F0()) && sub_1B8D92198(*(v2 + 48), *(v2 + 56), *(v1 + 48)))
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest(0);
    OUTLINED_FUNCTION_764();
    OUTLINED_FUNCTION_0_75();
    v11 = sub_1B8CD2D08(v9, v10, MEMORY[0x1E69AAC10]);
    return OUTLINED_FUNCTION_634(v11) & 1;
  }

  return 0;
}

uint64_t sub_1B92555DC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9EE8, type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B925565C(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAC9690, type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B92556CC(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2D08(&qword_1EBAC9690, type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest);

  return sub_1B964C5D0();
}

uint64_t sub_1B925574C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC9160);
  __swift_project_value_buffer(v0, qword_1EBAC9160);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE60;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 0;
  *v6 = "UNKNOWN";
  *(v6 + 8) = 7;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 1;
  *v10 = "ID";
  *(v10 + 1) = 2;
  v10[16] = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 2;
  *v12 = "MENTION";
  *(v12 + 1) = 7;
  v12[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t sub_1B9255980()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC9178);
  __swift_project_value_buffer(v0, qword_1EBAC9178);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "uso_graph";
  *(v6 + 8) = 9;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "uso_override";
  *(v10 + 8) = 12;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "user_dialog_act";
  *(v12 + 1) = 15;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "user_dialog_act_override";
  *(v14 + 1) = 24;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Siri_V2alpha_ServerUnderstanding.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_822();
  OUTLINED_FUNCTION_614();
  v1 = OUTLINED_FUNCTION_616();
  if (sub_1B8D99EA8(v1, v2) || (OUTLINED_FUNCTION_616(), OUTLINED_FUNCTION_11_5(), sub_1B964C6A0(), !v0))
  {
    v3 = OUTLINED_FUNCTION_616();
    if (sub_1B8D99EA8(v3, v4) || (OUTLINED_FUNCTION_616(), OUTLINED_FUNCTION_11_5(), sub_1B964C6A0(), !v0))
    {
      v5 = OUTLINED_FUNCTION_616();
      if (sub_1B8D99EA8(v5, v6) || (OUTLINED_FUNCTION_616(), OUTLINED_FUNCTION_11_5(), sub_1B964C6A0(), !v0))
      {
        v7 = OUTLINED_FUNCTION_616();
        if (sub_1B8D99EA8(v7, v8) || (OUTLINED_FUNCTION_616(), OUTLINED_FUNCTION_11_5(), sub_1B964C6A0(), !v0))
        {
          type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerUnderstanding(0);
          OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

  OUTLINED_FUNCTION_823();
}

uint64_t static Apple_Parsec_Siri_V2alpha_ServerUnderstanding.== infix(_:_:)(uint64_t a1)
{
  v3 = OUTLINED_FUNCTION_78_6(a1);
  if ((MEMORY[0x1BFADC060](v3) & 1) == 0 || (MEMORY[0x1BFADC060](v2[2], v2[3], v1[2], v1[3]) & 1) == 0 || (MEMORY[0x1BFADC060](v2[4], v2[5], v1[4], v1[5]) & 1) == 0 || (MEMORY[0x1BFADC060](v2[6], v2[7], v1[6], v1[7]) & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerUnderstanding(0);
  OUTLINED_FUNCTION_764();
  OUTLINED_FUNCTION_0_75();
  v6 = sub_1B8CD2D08(v4, v5, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v6) & 1;
}

uint64_t sub_1B9255E48(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9EE0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerUnderstanding, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ServerUnderstanding);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9255EC8(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAC9B00, type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerUnderstanding, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ServerUnderstanding);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9255F38(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2D08(&qword_1EBAC9B00, type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerUnderstanding, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ServerUnderstanding);

  return sub_1B964C5D0();
}

uint64_t sub_1B9255FD0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC9190);
  __swift_project_value_buffer(v0, qword_1EBAC9190);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "can_cache_domain_response";
  *(v6 + 8) = 25;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "ttl";
  *(v10 + 1) = 3;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_ResponseCacheControl.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      OUTLINED_FUNCTION_12();
      sub_1B964C4A0();
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_41_7();
      sub_1B964C400();
    }
  }

  return result;
}

uint64_t Apple_Parsec_Siri_V2alpha_ResponseCacheControl.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_614();
  if (*v0 != 1 || (OUTLINED_FUNCTION_29(), result = sub_1B964C670(), !v1))
  {
    if (!*(v2 + 4) || (OUTLINED_FUNCTION_29(), result = sub_1B964C6C0(), !v1))
    {
      type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseCacheControl(0);
      return OUTLINED_FUNCTION_8_1();
    }
  }

  return result;
}

uint64_t static Apple_Parsec_Siri_V2alpha_ResponseCacheControl.== infix(_:_:)(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  OUTLINED_FUNCTION_468();
  if (*(v2 + 4) != *(v3 + 4))
  {
    return 0;
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseCacheControl(0);
  OUTLINED_FUNCTION_188_1();
  OUTLINED_FUNCTION_0_75();
  v6 = sub_1B8CD2D08(v4, v5, MEMORY[0x1E69AAC10]);
  return OUTLINED_FUNCTION_634(v6) & 1;
}

uint64_t sub_1B92563E4(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9ED8, type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseCacheControl, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ResponseCacheControl);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9256464(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAC9B18, type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseCacheControl, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ResponseCacheControl);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B92564D4(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2D08(&qword_1EBAC9B18, type metadata accessor for Apple_Parsec_Siri_V2alpha_ResponseCacheControl, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ResponseCacheControl);

  return sub_1B964C5D0();
}

uint64_t sub_1B9256560()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB3F00);
  __swift_project_value_buffer(v0, qword_1EBAB3F00);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "components";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "primary_experience";
  *(v10 + 8) = 18;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "alternate_experiences";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "is_immersive_experience";
  *(v14 + 1) = 23;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "preserve_result_space_if_possible";
  *(v16 + 1) = 33;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_413_0();
        OUTLINED_FUNCTION_9();
        sub_1B9271380();
        break;
      case 2:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B9256948(v3, v4, v5, v6);
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B926DAE4();
        break;
      case 4:
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9256948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience(0);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SingleExperience(0);
  sub_1B8CD2D08(&qword_1EBAC96C0, type metadata accessor for Apple_Parsec_Siri_V2alpha_SingleExperience, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SingleExperience);
  return sub_1B964C580();
}

void Apple_Parsec_Siri_V2alpha_ServerDrivenExperience.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_614();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC94C0, &qword_1B96AA780);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_192_4();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SingleExperience(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_835();
  if (!v7 || (type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent(0), OUTLINED_FUNCTION_600_0(), OUTLINED_FUNCTION_411_0(), sub_1B8CD2D08(v8, v9, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ExperienceComponent), OUTLINED_FUNCTION_234_4(), OUTLINED_FUNCTION_153_1(), sub_1B964C730(), !v0))
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience(0);
    sub_1B8D92024();
    OUTLINED_FUNCTION_178(v2, 1, v5);
    if (v10)
    {
      sub_1B8D9207C(v2, &qword_1EBAC94C0, &qword_1B96AA780);
    }

    else
    {
      OUTLINED_FUNCTION_24_21();
      sub_1B9239DA8();
      OUTLINED_FUNCTION_409_0();
      sub_1B8CD2D08(v11, v12, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SingleExperience);
      OUTLINED_FUNCTION_687();
      sub_1B964C740();
      OUTLINED_FUNCTION_218_2();
      sub_1B9239E50();
      if (v0)
      {
        goto LABEL_14;
      }
    }

    if (!*(*(v1 + 8) + 16) || (OUTLINED_FUNCTION_409_0(), sub_1B8CD2D08(v13, v14, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SingleExperience), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), sub_1B964C730(), !v0))
    {
      if (*(v1 + 16) != 1 || (OUTLINED_FUNCTION_29(), sub_1B964C670(), !v0))
      {
        if (*(v1 + 17) != 1 || (OUTLINED_FUNCTION_29(), sub_1B964C670(), !v0))
        {
          OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B9256D1C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9ED0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9256D9C(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAB3EF0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9256E0C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2D08(&qword_1EBAB3EF0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience);

  return sub_1B964C5D0();
}

uint64_t sub_1B9256EA4()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC91A8);
  __swift_project_value_buffer(v0, qword_1EBAC91A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "components";
  *(v6 + 8) = 10;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "result_entity";
  *(v10 + 1) = 13;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Siri_V2alpha_SingleExperience.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (v1 == 2)
    {
      v3 = OUTLINED_FUNCTION_9();
      sub_1B925713C(v3, v4, v5, v6);
    }

    else if (v1 == 1)
    {
      OUTLINED_FUNCTION_413_0();
      OUTLINED_FUNCTION_9();
      sub_1B9271380();
    }
  }
}

uint64_t sub_1B925713C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SingleExperience(0);
  type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity(0);
  sub_1B8CD2D08(&qword_1EBAB47F0, type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity, protocol conformance descriptor for Apple_Parsec_Siri_Context_ResultEntity);
  return sub_1B964C580();
}

void Apple_Parsec_Siri_V2alpha_SingleExperience.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_588_0();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FC0, &unk_1B964D7B0);
  OUTLINED_FUNCTION_183(v2);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v3);
  v4 = OUTLINED_FUNCTION_151();
  v5 = type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity(v4);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_192_4();
  OUTLINED_FUNCTION_835();
  if (!v7 || (type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent(0), OUTLINED_FUNCTION_411_0(), sub_1B8CD2D08(v8, v9, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ExperienceComponent), OUTLINED_FUNCTION_234_4(), OUTLINED_FUNCTION_352_0(), sub_1B964C730(), !v0))
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_SingleExperience(0);
    sub_1B8D92024();
    OUTLINED_FUNCTION_178(v1, 1, v5);
    if (v10)
    {
      sub_1B8D9207C(v1, &qword_1EBAB8FC0, &unk_1B964D7B0);
LABEL_7:
      OUTLINED_FUNCTION_213_3();
      sub_1B964C290();
      goto LABEL_8;
    }

    OUTLINED_FUNCTION_22_19();
    sub_1B9239DA8();
    sub_1B8CD2D08(&qword_1EBAB47F0, type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity, protocol conformance descriptor for Apple_Parsec_Siri_Context_ResultEntity);
    OUTLINED_FUNCTION_352_0();
    sub_1B964C740();
    OUTLINED_FUNCTION_200_5();
    sub_1B9239E50();
    if (!v0)
    {
      goto LABEL_7;
    }
  }

LABEL_8:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Siri_V2alpha_SingleExperience.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v3 = OUTLINED_FUNCTION_112();
  type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity(v3);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_62();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FC0, &unk_1B964D7B0);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_137();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FC8, &unk_1B968A590);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_88();
  sub_1B8D842B4(*v1, *v0);
  if ((v9 & 1) == 0)
  {
    goto LABEL_12;
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_SingleExperience(0);
  v10 = *(v7 + 48);
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v2);
  if (v11)
  {
    OUTLINED_FUNCTION_37_0(v2 + v10);
    if (v11)
    {
      sub_1B8D9207C(v2, &qword_1EBAB8FC0, &unk_1B964D7B0);
LABEL_17:
      sub_1B964C2B0();
      OUTLINED_FUNCTION_0_75();
      v23 = sub_1B8CD2D08(v21, v22, MEMORY[0x1E69AAC10]);
      v14 = OUTLINED_FUNCTION_199_0(v23);
      goto LABEL_13;
    }

    goto LABEL_10;
  }

  OUTLINED_FUNCTION_1_0();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v2 + v10);
  if (v11)
  {
    OUTLINED_FUNCTION_200_5();
    sub_1B9239E50();
LABEL_10:
    v12 = &qword_1EBAB8FC8;
    v13 = &unk_1B968A590;
LABEL_11:
    sub_1B8D9207C(v2, v12, v13);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_22_19();
  sub_1B9239DA8();
  OUTLINED_FUNCTION_494_0();
  if (!v15)
  {

    OUTLINED_FUNCTION_616();
    sub_1B910EBB4();
    v17 = v16;

    if ((v17 & 1) == 0)
    {
      sub_1B9239E50();
      sub_1B9239E50();
      v12 = &qword_1EBAB8FC0;
      v13 = &unk_1B964D7B0;
      goto LABEL_11;
    }
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_75();
  sub_1B8CD2D08(v18, v19, MEMORY[0x1E69AAC10]);
  OUTLINED_FUNCTION_257();
  v20 = sub_1B964C850();
  sub_1B9239E50();
  OUTLINED_FUNCTION_531_0();
  sub_1B9239E50();
  sub_1B8D9207C(v2, &qword_1EBAB8FC0, &unk_1B964D7B0);
  if (v20)
  {
    goto LABEL_17;
  }

LABEL_12:
  v14 = 0;
LABEL_13:
  OUTLINED_FUNCTION_264(v14);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9257790(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9EC8, type metadata accessor for Apple_Parsec_Siri_V2alpha_SingleExperience, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SingleExperience);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9257810(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAC96C0, type metadata accessor for Apple_Parsec_Siri_V2alpha_SingleExperience, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SingleExperience);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9257880(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2D08(&qword_1EBAC96C0, type metadata accessor for Apple_Parsec_Siri_V2alpha_SingleExperience, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SingleExperience);

  return sub_1B964C5D0();
}

uint64_t sub_1B925790C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB3FD0);
  __swift_project_value_buffer(v0, qword_1EBAB3FD0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B964D050;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "components";
  *(v4 + 8) = 10;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1B964C760();
}

void Apple_Parsec_Siri_V2alpha_ClientDrivenExperience.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_822();
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_835();
  if (!v1 || (type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientComponent(0), sub_1B8CD2D08(&qword_1EBAB45A0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ClientComponent), OUTLINED_FUNCTION_234_4(), OUTLINED_FUNCTION_687(), sub_1B964C730(), !v0))
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientDrivenExperience(0);
    OUTLINED_FUNCTION_8_1();
  }

  OUTLINED_FUNCTION_823();
}

uint64_t sub_1B9257C44(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9EC0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientDrivenExperience, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ClientDrivenExperience);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9257CC4(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAB3FC0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientDrivenExperience, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ClientDrivenExperience);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9257D34(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2D08(&qword_1EBAB3FC0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientDrivenExperience, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ClientDrivenExperience);

  return sub_1B964C5D0();
}

uint64_t sub_1B9257DCC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB45B0);
  __swift_project_value_buffer(v0, qword_1EBAB45B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B964D050;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "domain_component";
  *(v4 + 8) = 16;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1B964C760();
}

uint64_t sub_1B9257F88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a3;
  v29 = a4;
  v30 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v26 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FF8, &unk_1B96AA7D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientComponent.OneOf_Component(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA060, L"f\n\a");
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8D92024();
  v24 = v11;
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB8FF8, &unk_1B96AA7D0);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B9239DA8();
    sub_1B8D9207C(v18, &qword_1EBACA060, L"f\n\a");
    sub_1B9239DA8();
    sub_1B9239DA8();
    __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
  }

  sub_1B8CD2D08(&qword_1EBAB4018, type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_DomainClientComponent);
  v20 = v27;
  sub_1B964C580();
  if (v20)
  {
    v21 = v18;
    return sub_1B8D9207C(v21, &qword_1EBACA060, L"f\n\a");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBACA060, L"f\n\a");
    v21 = v16;
    return sub_1B8D9207C(v21, &qword_1EBACA060, L"f\n\a");
  }

  sub_1B9239DA8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  sub_1B8D9207C(v18, &qword_1EBACA060, L"f\n\a");
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB8FF8, &unk_1B96AA7D0);
  sub_1B9239DA8();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v24);
}

void Apple_Parsec_Siri_V2alpha_ClientComponent.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_587_0(v2, v3, v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FF8, &unk_1B96AA7D0);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_458();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_192_4();
  OUTLINED_FUNCTION_565_0();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientComponent.OneOf_Component(0);
  v8 = OUTLINED_FUNCTION_454();
  OUTLINED_FUNCTION_178(v8, v9, v10);
  if (v11)
  {
    sub_1B8D9207C(v1, &qword_1EBAB8FF8, &unk_1B96AA7D0);
LABEL_5:
    type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientComponent(0);
    OUTLINED_FUNCTION_213_3();
    sub_1B964C290();
    goto LABEL_6;
  }

  OUTLINED_FUNCTION_77_9();
  OUTLINED_FUNCTION_233();
  sub_1B9239DA8();
  sub_1B8CD2D08(&qword_1EBAB4018, type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_DomainClientComponent);
  OUTLINED_FUNCTION_352_0();
  OUTLINED_FUNCTION_609_1(v12, v13, v14, v15, v16);
  sub_1B9239E50();
  if (!v0)
  {
    goto LABEL_5;
  }

LABEL_6:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Siri_V2alpha_ClientComponent.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_280();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientComponent.OneOf_Component(v1);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_31_8();
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_79();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB9000, &unk_1B964D7F0);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_239_3();
  OUTLINED_FUNCTION_313_1();
  OUTLINED_FUNCTION_50(v0);
  if (v9)
  {
    OUTLINED_FUNCTION_70_9();
    if (v9)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8FF8, &unk_1B96AA7D0);
LABEL_12:
      type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientComponent(0);
      OUTLINED_FUNCTION_871();
      OUTLINED_FUNCTION_0_75();
      v14 = sub_1B8CD2D08(v12, v13, MEMORY[0x1E69AAC10]);
      v10 = OUTLINED_FUNCTION_634(v14);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_177_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_70_9();
  if (v9)
  {
    OUTLINED_FUNCTION_171_2();
    sub_1B9239E50();
LABEL_9:
    sub_1B8D9207C(v0, &qword_1EBAB9000, &unk_1B964D7F0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_361_1();
  OUTLINED_FUNCTION_246();
  v11 = static Apple_Parsec_Siri_V2alpha_ClientComponent.OneOf_Component.== infix(_:_:)();
  sub_1B9239E50();
  OUTLINED_FUNCTION_467();
  sub_1B9239E50();
  sub_1B8D9207C(v0, &qword_1EBAB8FF8, &unk_1B96AA7D0);
  if (v11)
  {
    goto LABEL_12;
  }

LABEL_10:
  v10 = 0;
LABEL_13:
  OUTLINED_FUNCTION_264(v10);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9258874(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9EB8, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ClientComponent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B92588F4(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAB45A0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ClientComponent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9258964(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2D08(&qword_1EBAB45A0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ClientComponent);

  return sub_1B964C5D0();
}

uint64_t sub_1B92589F0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4028);
  __swift_project_value_buffer(v0, qword_1EBAB4028);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v18 = swift_allocObject();
  *(v18 + 16) = xmmword_1B964E4A0;
  v4 = v18 + v3 + v1[14];
  *(v18 + v3) = 1;
  *v4 = "audio_client_component";
  *(v4 + 8) = 22;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  v7 = *(*(v6 - 8) + 104);
  (v7)(v4, v5, v6);
  v8 = v18 + v3 + v2 + v1[14];
  *(v18 + v3 + v2) = 2;
  *v8 = "video_client_component";
  *(v8 + 8) = 22;
  *(v8 + 16) = 2;
  v7();
  v9 = (v18 + v3 + 2 * v2);
  v10 = v9 + v1[14];
  *v9 = 3;
  *v10 = "geo_client_component";
  *(v10 + 1) = 20;
  v10[16] = 2;
  v7();
  v11 = (v18 + v3 + 3 * v2);
  v12 = v11 + v1[14];
  *v11 = 4;
  *v12 = "apps_client_component";
  *(v12 + 1) = 21;
  v12[16] = 2;
  v7();
  v13 = (v18 + v3 + 4 * v2);
  v14 = v13 + v1[14];
  *v13 = 5;
  *v14 = "device_expert_client_component";
  *(v14 + 1) = 30;
  v14[16] = 2;
  v7();
  v15 = (v18 + v3 + 5 * v2);
  v16 = v15 + v1[14];
  *v15 = 100;
  *v16 = "identifier";
  *(v16 + 1) = 10;
  v16[16] = 2;
  v7();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_DomainClientComponent.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_17_3();
        sub_1B9258DA0(v3, v4, v5, v6);
        break;
      case 2:
        v21 = OUTLINED_FUNCTION_17_3();
        sub_1B9259298(v21, v22, v23, v24);
        break;
      case 3:
        v13 = OUTLINED_FUNCTION_17_3();
        sub_1B9259790(v13, v14, v15, v16);
        break;
      case 4:
        v17 = OUTLINED_FUNCTION_17_3();
        sub_1B9259C88(v17, v18, v19, v20);
        break;
      case 5:
        v9 = OUTLINED_FUNCTION_17_3();
        sub_1B925A180(v9, v10, v11, v12);
        break;
      default:
        if (result == 100)
        {
          v7 = OUTLINED_FUNCTION_9();
          sub_1B925A678(v7, v8);
        }

        break;
    }
  }

  return result;
}

uint64_t sub_1B9258DA0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FE0, &qword_1B964D7D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA038, L"f\n\a");
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB8FE0, &qword_1B964D7D0);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B9239DA8();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B9239E50();
    }

    else
    {
      sub_1B8D9207C(v18, &qword_1EBACA038, L"f\n\a");
      sub_1B9239DA8();
      sub_1B9239DA8();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }
  }

  sub_1B8CD2D08(&qword_1EBAC7620, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioClientComponent);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBACA038, L"f\n\a");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBACA038, L"f\n\a");
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBACA038, L"f\n\a");
  }

  sub_1B9239DA8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBACA038, L"f\n\a");
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB8FE0, &qword_1B964D7D0);
  sub_1B9239DA8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B9259298(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FE0, &qword_1B964D7D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA040, L"f\n\a");
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB8FE0, &qword_1B964D7D0);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B9239DA8();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v18, &qword_1EBACA040, L"f\n\a");
      sub_1B9239DA8();
      sub_1B9239DA8();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B9239E50();
    }
  }

  sub_1B8CD2D08(&qword_1EBAC7F68, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoClientComponent);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBACA040, L"f\n\a");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBACA040, L"f\n\a");
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBACA040, L"f\n\a");
  }

  sub_1B9239DA8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBACA040, L"f\n\a");
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB8FE0, &qword_1B964D7D0);
  sub_1B9239DA8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B9259790(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FE0, &qword_1B964D7D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA048, L"f\n\a");
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB8FE0, &qword_1B964D7D0);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B9239DA8();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B8D9207C(v18, &qword_1EBACA048, L"f\n\a");
      sub_1B9239DA8();
      sub_1B9239DA8();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B9239E50();
    }
  }

  sub_1B8CD2D08(&qword_1EBAC7B38, type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_GeoClientComponent);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBACA048, L"f\n\a");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBACA048, L"f\n\a");
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBACA048, L"f\n\a");
  }

  sub_1B9239DA8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBACA048, L"f\n\a");
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB8FE0, &qword_1B964D7D0);
  sub_1B9239DA8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B9259C88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppsClientComponent(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FE0, &qword_1B964D7D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA050, L"f\n\a");
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB8FE0, &qword_1B964D7D0);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B9239DA8();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B8D9207C(v18, &qword_1EBACA050, L"f\n\a");
      sub_1B9239DA8();
      sub_1B9239DA8();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B9239E50();
    }
  }

  sub_1B8CD2D08(&qword_1EBAC6D50, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppsClientComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AppsClientComponent);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBACA050, L"f\n\a");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBACA050, L"f\n\a");
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBACA050, L"f\n\a");
  }

  sub_1B9239DA8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBACA050, L"f\n\a");
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB8FE0, &qword_1B964D7D0);
  sub_1B9239DA8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B925A180(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FE0, &qword_1B964D7D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA058, L"f\n\a");
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB8FE0, &qword_1B964D7D0);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B9239DA8();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B8D9207C(v18, &qword_1EBACA058, L"f\n\a");
      sub_1B9239DA8();
      sub_1B9239DA8();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B9239E50();
    }
  }

  sub_1B8CD2D08(&qword_1EBAB3C60, type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBACA058, L"f\n\a");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBACA058, L"f\n\a");
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBACA058, L"f\n\a");
  }

  sub_1B9239DA8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBACA058, L"f\n\a");
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB8FE0, &qword_1B964D7D0);
  sub_1B9239DA8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

void Apple_Parsec_Siri_V2alpha_DomainClientComponent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_605_1();
  OUTLINED_FUNCTION_614();
  v8 = OUTLINED_FUNCTION_190_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_183(v10);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_211_2();
  OUTLINED_FUNCTION_200();
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent(0);
  OUTLINED_FUNCTION_90(v6);
  if (v12)
  {
    goto LABEL_9;
  }

  OUTLINED_FUNCTION_616();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v29 = OUTLINED_FUNCTION_100_5();
      sub_1B925AA3C(v29, v30, v31, v32);
      break;
    case 2u:
      v21 = OUTLINED_FUNCTION_100_5();
      sub_1B925AC50(v21, v22, v23, v24);
      break;
    case 3u:
      v25 = OUTLINED_FUNCTION_100_5();
      sub_1B925AE64(v25, v26, v27, v28);
      break;
    case 4u:
      v17 = OUTLINED_FUNCTION_100_5();
      sub_1B925B078(v17, v18, v19, v20);
      break;
    default:
      v13 = OUTLINED_FUNCTION_100_5();
      sub_1B925A82C(v13, v14, v15, v16);
      break;
  }

  OUTLINED_FUNCTION_76_5();
  sub_1B9239E50();
  if (!v7)
  {
LABEL_9:
    type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent(0);
    OUTLINED_FUNCTION_1();
    if (!v33 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v7))
    {
      OUTLINED_FUNCTION_8_1();
    }
  }

  OUTLINED_FUNCTION_492_1();
  OUTLINED_FUNCTION_606_1();
}

uint64_t sub_1B925A82C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FE0, &qword_1B964D7D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8D92024();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB8FE0, &qword_1B964D7D0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B9239DA8();
      sub_1B8CD2D08(&qword_1EBAC7620, type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioClientComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AudioClientComponent);
      sub_1B964C740();
      return sub_1B9239E50();
    }

    result = sub_1B9239E50();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B925AA3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FE0, &qword_1B964D7D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8D92024();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB8FE0, &qword_1B964D7D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B9239DA8();
      sub_1B8CD2D08(&qword_1EBAC7F68, type metadata accessor for Apple_Parsec_Siri_V2alpha_VideoClientComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_VideoClientComponent);
      sub_1B964C740();
      return sub_1B9239E50();
    }

    result = sub_1B9239E50();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B925AC50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FE0, &qword_1B964D7D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8D92024();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB8FE0, &qword_1B964D7D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B9239DA8();
      sub_1B8CD2D08(&qword_1EBAC7B38, type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_GeoClientComponent);
      sub_1B964C740();
      return sub_1B9239E50();
    }

    result = sub_1B9239E50();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B925AE64(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FE0, &qword_1B964D7D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AppsClientComponent(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8D92024();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB8FE0, &qword_1B964D7D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B9239DA8();
      sub_1B8CD2D08(&qword_1EBAC6D50, type metadata accessor for Apple_Parsec_Siri_V2alpha_AppsClientComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_AppsClientComponent);
      sub_1B964C740();
      return sub_1B9239E50();
    }

    result = sub_1B9239E50();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B925B078(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FE0, &qword_1B964D7D0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8D92024();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent.OneOf_DomainComponent(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB8FE0, &qword_1B964D7D0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B9239DA8();
      sub_1B8CD2D08(&qword_1EBAB3C60, type metadata accessor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_DeviceExpertClientComponent);
      sub_1B964C740();
      return sub_1B9239E50();
    }

    result = sub_1B9239E50();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B925B330(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9EB0, type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_DomainClientComponent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B925B3B0(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAB4018, type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_DomainClientComponent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B925B420(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2D08(&qword_1EBAB4018, type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainClientComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_DomainClientComponent);

  return sub_1B964C5D0();
}

uint64_t sub_1B925B4AC()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB4248);
  __swift_project_value_buffer(v0, qword_1EBAB4248);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE80;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "rendered_dialog";
  *(v6 + 8) = 15;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "cat_dialog";
  *(v10 + 8) = 10;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "layout_experience";
  *(v12 + 1) = 17;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "domain_object_component";
  *(v14 + 1) = 23;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "direct_execution_component";
  *(v16 + 1) = 26;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "delayed_action_component";
  *(v18 + 1) = 24;
  v18[16] = 2;
  v9();
  v19 = (v5 + 6 * v2);
  v20 = v19 + v1[14];
  *v19 = 7;
  *v20 = "say_it_component";
  *(v20 + 1) = 16;
  v20[16] = 2;
  v9();
  v21 = (v5 + 7 * v2);
  v22 = v21 + v1[14];
  *v21 = 8;
  *v22 = "button_view_component";
  *(v22 + 1) = 21;
  v22[16] = 2;
  v9();
  v23 = (v5 + 8 * v2);
  v24 = v23 + v1[14];
  *v23 = 9;
  *v24 = "disambiguation_list_component";
  *(v24 + 1) = 29;
  v24[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_ExperienceComponent.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_17_3();
        sub_1B925B940(v3, v4, v5, v6);
        break;
      case 2:
        v23 = OUTLINED_FUNCTION_17_3();
        sub_1B925BE38(v23, v24, v25, v26);
        break;
      case 3:
        v11 = OUTLINED_FUNCTION_17_3();
        sub_1B925C330(v11, v12, v13, v14);
        break;
      case 4:
        v15 = OUTLINED_FUNCTION_17_3();
        sub_1B925C828(v15, v16, v17, v18);
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_17_3();
        sub_1B925CD20(v7, v8, v9, v10);
        break;
      case 6:
        v27 = OUTLINED_FUNCTION_17_3();
        sub_1B925D218(v27, v28, v29, v30);
        break;
      case 7:
        v31 = OUTLINED_FUNCTION_17_3();
        sub_1B925D710(v31, v32, v33, v34);
        break;
      case 8:
        v19 = OUTLINED_FUNCTION_17_3();
        sub_1B925DC08(v19, v20, v21, v22);
        break;
      case 9:
        v35 = OUTLINED_FUNCTION_17_3();
        sub_1B925E100(v35, v36, v37, v38);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B925B940(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAB8FD0, &qword_1B964D7C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9548, &qword_1B96AA828);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &unk_1EBAB8FD0, &qword_1B964D7C0);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B9239DA8();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B9239E50();
    }

    else
    {
      sub_1B8D9207C(v18, &qword_1EBAC9548, &qword_1B96AA828);
      sub_1B9239DA8();
      sub_1B9239DA8();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }
  }

  sub_1B8CD2D08(qword_1ED9C9570, type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC9548, &qword_1B96AA828);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC9548, &qword_1B96AA828);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC9548, &qword_1B96AA828);
  }

  sub_1B9239DA8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC9548, &qword_1B96AA828);
  v23 = v25;
  sub_1B8D9207C(v25, &unk_1EBAB8FD0, &qword_1B964D7C0);
  sub_1B9239DA8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B925BE38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CatDialogComponent(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAB8FD0, &qword_1B964D7C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9FF8, L"f\n\a");
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &unk_1EBAB8FD0, &qword_1B964D7C0);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B9239DA8();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v18, &qword_1EBAC9FF8, L"f\n\a");
      sub_1B9239DA8();
      sub_1B9239DA8();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B9239E50();
    }
  }

  sub_1B8CD2D08(&qword_1EBAC9C18, type metadata accessor for Apple_Parsec_Siri_V2alpha_CatDialogComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_CatDialogComponent);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC9FF8, L"f\n\a");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC9FF8, L"f\n\a");
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC9FF8, L"f\n\a");
  }

  sub_1B9239DA8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC9FF8, L"f\n\a");
  v23 = v25;
  sub_1B8D9207C(v25, &unk_1EBAB8FD0, &qword_1B964D7C0);
  sub_1B9239DA8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B925C330(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAB8FD0, &qword_1B964D7C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA000, L"f\n\a");
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &unk_1EBAB8FD0, &qword_1B964D7C0);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B9239DA8();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B8D9207C(v18, &qword_1EBACA000, L"f\n\a");
      sub_1B9239DA8();
      sub_1B9239DA8();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B9239E50();
    }
  }

  sub_1B8CD2D08(qword_1ED9C9868, type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBACA000, L"f\n\a");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBACA000, L"f\n\a");
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBACA000, L"f\n\a");
  }

  sub_1B9239DA8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBACA000, L"f\n\a");
  v23 = v25;
  sub_1B8D9207C(v25, &unk_1EBAB8FD0, &qword_1B964D7C0);
  sub_1B9239DA8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B925C828(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainObjectComponent(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAB8FD0, &qword_1B964D7C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA008, L"f\n\a");
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &unk_1EBAB8FD0, &qword_1B964D7C0);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B9239DA8();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B8D9207C(v18, &qword_1EBACA008, L"f\n\a");
      sub_1B9239DA8();
      sub_1B9239DA8();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B9239E50();
    }
  }

  sub_1B8CD2D08(&qword_1EBAC9C38, type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainObjectComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_DomainObjectComponent);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBACA008, L"f\n\a");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBACA008, L"f\n\a");
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBACA008, L"f\n\a");
  }

  sub_1B9239DA8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBACA008, L"f\n\a");
  v23 = v25;
  sub_1B8D9207C(v25, &unk_1EBAB8FD0, &qword_1B964D7C0);
  sub_1B9239DA8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B925CD20(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DirectExecutionComponent(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAB8FD0, &qword_1B964D7C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA010, L"f\n\a");
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &unk_1EBAB8FD0, &qword_1B964D7C0);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B9239DA8();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B8D9207C(v18, &qword_1EBACA010, L"f\n\a");
      sub_1B9239DA8();
      sub_1B9239DA8();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B9239E50();
    }
  }

  sub_1B8CD2D08(&qword_1EBAC9B68, type metadata accessor for Apple_Parsec_Siri_V2alpha_DirectExecutionComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_DirectExecutionComponent);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBACA010, L"f\n\a");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBACA010, L"f\n\a");
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBACA010, L"f\n\a");
  }

  sub_1B9239DA8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBACA010, L"f\n\a");
  v23 = v25;
  sub_1B8D9207C(v25, &unk_1EBAB8FD0, &qword_1B964D7C0);
  sub_1B9239DA8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B925D218(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAB8FD0, &qword_1B964D7C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA018, L"f\n\a");
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &unk_1EBAB8FD0, &qword_1B964D7C0);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B9239DA8();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1B8D9207C(v18, &qword_1EBACA018, L"f\n\a");
      sub_1B9239DA8();
      sub_1B9239DA8();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B9239E50();
    }
  }

  sub_1B8CD2D08(&qword_1EBAC9B80, type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBACA018, L"f\n\a");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBACA018, L"f\n\a");
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBACA018, L"f\n\a");
  }

  sub_1B9239DA8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBACA018, L"f\n\a");
  v23 = v25;
  sub_1B8D9207C(v25, &unk_1EBAB8FD0, &qword_1B964D7C0);
  sub_1B9239DA8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B925D710(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SayItComponent(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAB8FD0, &qword_1B964D7C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA020, L"f\n\a");
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &unk_1EBAB8FD0, &qword_1B964D7C0);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B9239DA8();
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1B8D9207C(v18, &qword_1EBACA020, L"f\n\a");
      sub_1B9239DA8();
      sub_1B9239DA8();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B9239E50();
    }
  }

  sub_1B8CD2D08(&qword_1EBAC9BF0, type metadata accessor for Apple_Parsec_Siri_V2alpha_SayItComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SayItComponent);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBACA020, L"f\n\a");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBACA020, L"f\n\a");
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBACA020, L"f\n\a");
  }

  sub_1B9239DA8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBACA020, L"f\n\a");
  v23 = v25;
  sub_1B8D9207C(v25, &unk_1EBAB8FD0, &qword_1B964D7C0);
  sub_1B9239DA8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B925DC08(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ButtonViewComponent(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAB8FD0, &qword_1B964D7C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA028, L"f\n\a");
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &unk_1EBAB8FD0, &qword_1B964D7C0);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B9239DA8();
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1B8D9207C(v18, &qword_1EBACA028, L"f\n\a");
      sub_1B9239DA8();
      sub_1B9239DA8();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B9239E50();
    }
  }

  sub_1B8CD2D08(&qword_1EBAC9BA0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ButtonViewComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ButtonViewComponent);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBACA028, L"f\n\a");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBACA028, L"f\n\a");
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBACA028, L"f\n\a");
  }

  sub_1B9239DA8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBACA028, L"f\n\a");
  v23 = v25;
  sub_1B8D9207C(v25, &unk_1EBAB8FD0, &qword_1B964D7C0);
  sub_1B9239DA8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B925E100(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DisambiguationListComponent(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAB8FD0, &qword_1B964D7C0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBACA030, L"f\n\a");
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &unk_1EBAB8FD0, &qword_1B964D7C0);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B9239DA8();
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1B8D9207C(v18, &qword_1EBACA030, L"f\n\a");
      sub_1B9239DA8();
      sub_1B9239DA8();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B9239E50();
    }
  }

  sub_1B8CD2D08(&qword_1EBAC9BB8, type metadata accessor for Apple_Parsec_Siri_V2alpha_DisambiguationListComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_DisambiguationListComponent);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBACA030, L"f\n\a");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBACA030, L"f\n\a");
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBACA030, L"f\n\a");
  }

  sub_1B9239DA8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBACA030, L"f\n\a");
  v23 = v25;
  sub_1B8D9207C(v25, &unk_1EBAB8FD0, &qword_1B964D7C0);
  sub_1B9239DA8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

void Apple_Parsec_Siri_V2alpha_ExperienceComponent.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_605_1();
  OUTLINED_FUNCTION_243_3();
  v8 = OUTLINED_FUNCTION_190_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_183(v10);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_257_2();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  OUTLINED_FUNCTION_90(v7);
  if (!v12)
  {
    OUTLINED_FUNCTION_686();
    switch(swift_getEnumCaseMultiPayload())
    {
      case 1u:
        v33 = OUTLINED_FUNCTION_7_6();
        sub_1B925E97C(v33, v34, v35, v36);
        goto LABEL_11;
      case 2u:
        v21 = OUTLINED_FUNCTION_7_6();
        sub_1B925EB90(v21, v22, v23, v24);
        goto LABEL_11;
      case 3u:
        v25 = OUTLINED_FUNCTION_7_6();
        sub_1B925EDA4(v25, v26, v27, v28);
        goto LABEL_11;
      case 4u:
        v17 = OUTLINED_FUNCTION_7_6();
        sub_1B925EFB8(v17, v18, v19, v20);
        goto LABEL_11;
      case 5u:
        v37 = OUTLINED_FUNCTION_7_6();
        sub_1B925F1CC(v37, v38, v39, v40);
        goto LABEL_11;
      case 6u:
        v41 = OUTLINED_FUNCTION_7_6();
        sub_1B925F3E0(v41, v42, v43, v44);
        goto LABEL_11;
      case 7u:
        v29 = OUTLINED_FUNCTION_7_6();
        sub_1B925F5F4(v29, v30, v31, v32);
        goto LABEL_11;
      case 8u:
        v45 = OUTLINED_FUNCTION_7_6();
        sub_1B925F808(v45, v46, v47, v48);
        if (v6)
        {
          OUTLINED_FUNCTION_19_19();
          sub_1B9239E50();
          goto LABEL_13;
        }

        OUTLINED_FUNCTION_19_19();
        sub_1B9239E50();
        break;
      default:
        v13 = OUTLINED_FUNCTION_7_6();
        sub_1B925E76C(v13, v14, v15, v16);
LABEL_11:
        OUTLINED_FUNCTION_19_19();
        sub_1B9239E50();
        if (!v6)
        {
          break;
        }

        goto LABEL_13;
    }
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent(0);
  OUTLINED_FUNCTION_479_0();
  OUTLINED_FUNCTION_214_4();
  sub_1B964C290();
LABEL_13:
  OUTLINED_FUNCTION_492_1();
  OUTLINED_FUNCTION_606_1();
}

uint64_t sub_1B925E76C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAB8FD0, &qword_1B964D7C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8D92024();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &unk_1EBAB8FD0, &qword_1B964D7C0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B9239DA8();
      sub_1B8CD2D08(qword_1ED9C9570, type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent);
      sub_1B964C740();
      return sub_1B9239E50();
    }

    result = sub_1B9239E50();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B925E97C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAB8FD0, &qword_1B964D7C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CatDialogComponent(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8D92024();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &unk_1EBAB8FD0, &qword_1B964D7C0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B9239DA8();
      sub_1B8CD2D08(&qword_1EBAC9C18, type metadata accessor for Apple_Parsec_Siri_V2alpha_CatDialogComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_CatDialogComponent);
      sub_1B964C740();
      return sub_1B9239E50();
    }

    result = sub_1B9239E50();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B925EB90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAB8FD0, &qword_1B964D7C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8D92024();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &unk_1EBAB8FD0, &qword_1B964D7C0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B9239DA8();
      sub_1B8CD2D08(qword_1ED9C9868, type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent);
      sub_1B964C740();
      return sub_1B9239E50();
    }

    result = sub_1B9239E50();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B925EDA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAB8FD0, &qword_1B964D7C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainObjectComponent(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8D92024();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &unk_1EBAB8FD0, &qword_1B964D7C0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B9239DA8();
      sub_1B8CD2D08(&qword_1EBAC9C38, type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainObjectComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_DomainObjectComponent);
      sub_1B964C740();
      return sub_1B9239E50();
    }

    result = sub_1B9239E50();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B925EFB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAB8FD0, &qword_1B964D7C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DirectExecutionComponent(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8D92024();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &unk_1EBAB8FD0, &qword_1B964D7C0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B9239DA8();
      sub_1B8CD2D08(&qword_1EBAC9B68, type metadata accessor for Apple_Parsec_Siri_V2alpha_DirectExecutionComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_DirectExecutionComponent);
      sub_1B964C740();
      return sub_1B9239E50();
    }

    result = sub_1B9239E50();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B925F1CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAB8FD0, &qword_1B964D7C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8D92024();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &unk_1EBAB8FD0, &qword_1B964D7C0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1B9239DA8();
      sub_1B8CD2D08(&qword_1EBAC9B80, type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent);
      sub_1B964C740();
      return sub_1B9239E50();
    }

    result = sub_1B9239E50();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B925F3E0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAB8FD0, &qword_1B964D7C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SayItComponent(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8D92024();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &unk_1EBAB8FD0, &qword_1B964D7C0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 6)
    {
      sub_1B9239DA8();
      sub_1B8CD2D08(&qword_1EBAC9BF0, type metadata accessor for Apple_Parsec_Siri_V2alpha_SayItComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SayItComponent);
      sub_1B964C740();
      return sub_1B9239E50();
    }

    result = sub_1B9239E50();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B925F5F4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAB8FD0, &qword_1B964D7C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ButtonViewComponent(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8D92024();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &unk_1EBAB8FD0, &qword_1B964D7C0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 7)
    {
      sub_1B9239DA8();
      sub_1B8CD2D08(&qword_1EBAC9BA0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ButtonViewComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ButtonViewComponent);
      sub_1B964C740();
      return sub_1B9239E50();
    }

    result = sub_1B9239E50();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B925F808(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EBAB8FD0, &qword_1B964D7C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DisambiguationListComponent(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8D92024();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &unk_1EBAB8FD0, &qword_1B964D7C0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 8)
    {
      sub_1B9239DA8();
      sub_1B8CD2D08(&qword_1EBAC9BB8, type metadata accessor for Apple_Parsec_Siri_V2alpha_DisambiguationListComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_DisambiguationListComponent);
      sub_1B964C740();
      return sub_1B9239E50();
    }

    result = sub_1B9239E50();
  }

  __break(1u);
  return result;
}

void static Apple_Parsec_Siri_V2alpha_ExperienceComponent.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_280();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component(v1);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_31_8();
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_79();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FD8, &qword_1B964D7C8);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_239_3();
  OUTLINED_FUNCTION_313_1();
  OUTLINED_FUNCTION_50(v0);
  if (v9)
  {
    OUTLINED_FUNCTION_70_9();
    if (v9)
    {
      sub_1B8D9207C(v0, &unk_1EBAB8FD0, &qword_1B964D7C0);
LABEL_12:
      type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent(0);
      OUTLINED_FUNCTION_871();
      OUTLINED_FUNCTION_0_75();
      v15 = sub_1B8CD2D08(v13, v14, MEMORY[0x1E69AAC10]);
      v10 = OUTLINED_FUNCTION_634(v15);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_177_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_70_9();
  if (v9)
  {
    OUTLINED_FUNCTION_19_19();
    sub_1B9239E50();
LABEL_9:
    sub_1B8D9207C(v0, &qword_1EBAB8FD8, &qword_1B964D7C8);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_361_1();
  OUTLINED_FUNCTION_246();
  static Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component.== infix(_:_:)();
  v12 = v11;
  sub_1B9239E50();
  OUTLINED_FUNCTION_467();
  sub_1B9239E50();
  sub_1B8D9207C(v0, &unk_1EBAB8FD0, &qword_1B964D7C0);
  if (v12)
  {
    goto LABEL_12;
  }

LABEL_10:
  v10 = 0;
LABEL_13:
  OUTLINED_FUNCTION_264(v10);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B925FCC0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9EA8, type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ExperienceComponent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B925FD40(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAB4238, type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ExperienceComponent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B925FDB0(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2D08(&qword_1EBAB4238, type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ExperienceComponent);

  return sub_1B964C5D0();
}

uint64_t sub_1B925FE3C()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC91C0);
  __swift_project_value_buffer(v0, qword_1EBAC91C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B964D050;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "siri_command_builder";
  *(v4 + 8) = 20;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADE8];
  v6 = sub_1B964C750();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1B964C760();
}

void Apple_Parsec_Siri_V2alpha_DirectExecutionComponent.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_822();
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_835();
  if (!v1 || (type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder(0), OUTLINED_FUNCTION_79_9(), sub_1B8CD2D08(v2, v3, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder), OUTLINED_FUNCTION_234_4(), OUTLINED_FUNCTION_687(), sub_1B964C730(), !v0))
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_DirectExecutionComponent(0);
    OUTLINED_FUNCTION_8_1();
  }

  OUTLINED_FUNCTION_823();
}

uint64_t sub_1B9260164(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9EA0, type metadata accessor for Apple_Parsec_Siri_V2alpha_DirectExecutionComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_DirectExecutionComponent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B92601E4(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAC9B68, type metadata accessor for Apple_Parsec_Siri_V2alpha_DirectExecutionComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_DirectExecutionComponent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9260254(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2D08(&qword_1EBAC9B68, type metadata accessor for Apple_Parsec_Siri_V2alpha_DirectExecutionComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_DirectExecutionComponent);

  return sub_1B964C5D0();
}

uint64_t sub_1B92602E0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC91D8);
  __swift_project_value_buffer(v0, qword_1EBAC91D8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964EE70;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "siri_command_builder";
  *(v6 + 8) = 20;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "rendered_dialog";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "layout_experiences";
  *(v12 + 1) = 18;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "delay_milliseconds";
  *(v14 + 1) = 18;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "preserve_result_space_if_possible";
  *(v16 + 1) = 33;
  v16[16] = 2;
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Siri_V2alpha_DelayedActionComponent.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        OUTLINED_FUNCTION_9();
        sub_1B9271380();
        break;
      case 2:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B92606D4(v3, v4, v5, v6);
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B926DAE4();
        break;
      case 4:
        OUTLINED_FUNCTION_12();
        sub_1B964C540();
        break;
      case 5:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B92606D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent(0);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent(0);
  sub_1B8CD2D08(qword_1ED9C9570, type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent);
  return sub_1B964C580();
}

void Apple_Parsec_Siri_V2alpha_DelayedActionComponent.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_614();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9548, &qword_1B96AA828);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_192_4();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_231_1();
  OUTLINED_FUNCTION_835();
  if (!v7 || (type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder(0), OUTLINED_FUNCTION_600_0(), OUTLINED_FUNCTION_79_9(), sub_1B8CD2D08(v8, v9, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder), OUTLINED_FUNCTION_234_4(), OUTLINED_FUNCTION_153_1(), sub_1B964C730(), !v0))
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent(0);
    sub_1B8D92024();
    OUTLINED_FUNCTION_178(v2, 1, v5);
    if (v10)
    {
      sub_1B8D9207C(v2, &qword_1EBAC9548, &qword_1B96AA828);
    }

    else
    {
      OUTLINED_FUNCTION_1_63();
      OUTLINED_FUNCTION_190_0();
      sub_1B9239DA8();
      sub_1B8CD2D08(qword_1ED9C9570, type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent);
      OUTLINED_FUNCTION_683_0();
      OUTLINED_FUNCTION_687();
      sub_1B964C740();
      OUTLINED_FUNCTION_21_17();
      sub_1B9239E50();
      if (v0)
      {
        goto LABEL_14;
      }
    }

    if (!*(*(v1 + 8) + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent(0), sub_1B8CD2D08(qword_1ED9C9868, type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_79_0(), sub_1B964C730(), !v0))
    {
      if (!*(v1 + 16) || (OUTLINED_FUNCTION_29(), sub_1B964C710(), !v0))
      {
        if (*(v1 + 20) != 1 || (OUTLINED_FUNCTION_29(), sub_1B964C670(), !v0))
        {
          OUTLINED_FUNCTION_8_1();
        }
      }
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B9260ADC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9E98, type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9260B5C(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAC9B80, type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9260BCC(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2D08(&qword_1EBAC9B80, type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent);

  return sub_1B964C5D0();
}

uint64_t sub_1B9260C58()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB3F80);
  __swift_project_value_buffer(v0, qword_1EBAB3F80);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "sash";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "compact_snippet";
  *(v10 + 8) = 15;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "per_result_layout_details";
  *(v12 + 1) = 25;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "siri_command_builder";
  *(v14 + 1) = 20;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "ui_item_type";
  *(v16 + 1) = 12;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "is_transient";
  *(v18 + 1) = 12;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

void Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    v1 = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    switch(v1)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B92610A4(v3, v4, v5, v6);
        break;
      case 2:
        v11 = OUTLINED_FUNCTION_9();
        sub_1B9261158(v11, v12, v13, v14);
        break;
      case 3:
        OUTLINED_FUNCTION_9();
        sub_1B9271380();
        break;
      case 4:
        OUTLINED_FUNCTION_9();
        sub_1B926DAE4();
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B926120C(v7, v8, v9, v10);
        break;
      case 6:
        OUTLINED_FUNCTION_12();
        sub_1B964C400();
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B92610A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent(0);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_Sash(0);
  sub_1B8CD2D08(&qword_1ED9CC368, type metadata accessor for Apple_Parsec_Siri_V2alpha_Sash, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_Sash);
  return sub_1B964C580();
}

uint64_t sub_1B9261158(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent(0);
  type metadata accessor for Apple_Parsec_Siri_V2alpha_CasinoSnippet(0);
  sub_1B8CD2D08(&qword_1ED9CA310, type metadata accessor for Apple_Parsec_Siri_V2alpha_CasinoSnippet, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_CasinoSnippet);
  return sub_1B964C580();
}

void Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  v4 = v0;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9518, &qword_1B96AA7F8);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  v7 = OUTLINED_FUNCTION_22_3();
  v20 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CasinoSnippet(v7);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_21();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9528, &qword_1B96AA808);
  OUTLINED_FUNCTION_183(v9);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_173();
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_Sash(0);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_62();
  v13 = OUTLINED_FUNCTION_324_1();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent(v13);
  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v3, 1, v11);
  if (v14)
  {
    v15 = v1;
    sub_1B8D9207C(v3, &qword_1EBAC9528, &qword_1B96AA808);
  }

  else
  {
    OUTLINED_FUNCTION_18_20();
    sub_1B9239DA8();
    sub_1B8CD2D08(&qword_1ED9CC368, type metadata accessor for Apple_Parsec_Siri_V2alpha_Sash, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_Sash);
    OUTLINED_FUNCTION_257_0();
    sub_1B964C740();
    OUTLINED_FUNCTION_190_3();
    sub_1B9239E50();
    v15 = v1;
    if (v1)
    {
      goto LABEL_18;
    }
  }

  sub_1B8D92024();
  OUTLINED_FUNCTION_178(v2, 1, v20);
  if (v14)
  {
    sub_1B8D9207C(v2, &qword_1EBAC9518, &qword_1B96AA7F8);
  }

  else
  {
    OUTLINED_FUNCTION_2_46();
    sub_1B9239DA8();
    OUTLINED_FUNCTION_403_0();
    sub_1B8CD2D08(v16, v17, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_CasinoSnippet);
    OUTLINED_FUNCTION_332_1();
    sub_1B964C740();
    v15 = v1;
    OUTLINED_FUNCTION_17_21();
    sub_1B9239E50();
    if (v1)
    {
      goto LABEL_18;
    }
  }

  if (!*(*v4 + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails(0), sub_1B8CD2D08(&qword_1ED9C9858, type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_332_1(), sub_1B964C730(), (v15 = v1) == 0))
  {
    if (!*(*(v4 + 8) + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder(0), OUTLINED_FUNCTION_79_9(), sub_1B8CD2D08(v18, v19, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_332_1(), sub_1B964C730(), (v15 = v1) == 0))
    {
      if (!*(v4 + 16) || (sub_1B927ADC0(), OUTLINED_FUNCTION_332_1(), sub_1B964C680(), (v15 = v1) == 0))
      {
        if (*(v4 + 25) != 1 || (OUTLINED_FUNCTION_445_0(), sub_1B964C670(), !v15))
        {
          OUTLINED_FUNCTION_318_1();
          sub_1B964C290();
        }
      }
    }
  }

LABEL_18:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

uint64_t sub_1B9261734(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9E90, type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B92617B4(uint64_t a1)
{
  v2 = sub_1B8CD2D08(qword_1ED9C9868, type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9261824(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2D08(qword_1ED9C9868, type metadata accessor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_LayoutSnippetComponent);

  return sub_1B964C5D0();
}

uint64_t sub_1B92618B0()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC91F0);
  __swift_project_value_buffer(v0, qword_1EBAC91F0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964D060;
  v5 = (v4 + v3);
  v6 = v4 + v3 + v1[14];
  *v5 = 1;
  *v6 = "text";
  *(v6 + 8) = 4;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "commands";
  *(v10 + 1) = 8;
  v10[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_ButtonViewComponent.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      break;
    }

    if (result == 2)
    {
      v3 = OUTLINED_FUNCTION_9();
      sub_1B9261B00(v3, v4, v5, v6);
    }

    else if (result == 1)
    {
      OUTLINED_FUNCTION_41_7();
      sub_1B964C530();
    }
  }

  return result;
}

uint64_t sub_1B9261B00(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder(0);
  sub_1B8CD2D08(&qword_1ED9CF318, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder);
  return sub_1B964C570();
}

void Apple_Parsec_Siri_V2alpha_ButtonViewComponent.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_822();
  OUTLINED_FUNCTION_1_15();
  if (!v2 || (OUTLINED_FUNCTION_11_5(), sub_1B964C700(), !v0))
  {
    if (!*(*(v1 + 16) + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder(0), OUTLINED_FUNCTION_79_9(), sub_1B8CD2D08(v3, v4, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_687(), sub_1B964C730(), !v0))
    {
      type metadata accessor for Apple_Parsec_Siri_V2alpha_ButtonViewComponent(0);
      OUTLINED_FUNCTION_8_1();
    }
  }

  OUTLINED_FUNCTION_823();
}

uint64_t sub_1B9261CFC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9E88, type metadata accessor for Apple_Parsec_Siri_V2alpha_ButtonViewComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ButtonViewComponent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9261D7C(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAC9BA0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ButtonViewComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ButtonViewComponent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9261DEC(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2D08(&qword_1EBAC9BA0, type metadata accessor for Apple_Parsec_Siri_V2alpha_ButtonViewComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ButtonViewComponent);

  return sub_1B964C5D0();
}

uint64_t sub_1B9261E84()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC9208);
  __swift_project_value_buffer(v0, qword_1EBAC9208);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1B964D050;
  v4 = v3 + v2 + v1[14];
  *(v3 + v2) = 1;
  *v4 = "items";
  *(v4 + 8) = 5;
  *(v4 + 16) = 2;
  v5 = *MEMORY[0x1E69AADC8];
  v6 = sub_1B964C750();
  (*(*(v6 - 8) + 104))(v4, v5, v6);
  return sub_1B964C760();
}

void Apple_Parsec_Siri_V2alpha_DisambiguationListComponent.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_822();
  OUTLINED_FUNCTION_614();
  OUTLINED_FUNCTION_835();
  if (!v1 || (type metadata accessor for Apple_Parsec_Siri_V2alpha_DisambiguationListItem(0), sub_1B8CD2D08(&qword_1EBAC9720, type metadata accessor for Apple_Parsec_Siri_V2alpha_DisambiguationListItem, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_DisambiguationListItem), OUTLINED_FUNCTION_234_4(), OUTLINED_FUNCTION_687(), sub_1B964C730(), !v0))
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_DisambiguationListComponent(0);
    OUTLINED_FUNCTION_8_1();
  }

  OUTLINED_FUNCTION_823();
}

uint64_t sub_1B92621BC(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9E80, type metadata accessor for Apple_Parsec_Siri_V2alpha_DisambiguationListComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_DisambiguationListComponent);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B926223C(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAC9BB8, type metadata accessor for Apple_Parsec_Siri_V2alpha_DisambiguationListComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_DisambiguationListComponent);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B92622AC(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2D08(&qword_1EBAC9BB8, type metadata accessor for Apple_Parsec_Siri_V2alpha_DisambiguationListComponent, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_DisambiguationListComponent);

  return sub_1B964C5D0();
}

uint64_t sub_1B9262338()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAC9220);
  __swift_project_value_buffer(v0, qword_1EBAC9220);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4B0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "title";
  *(v6 + 8) = 5;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADC8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "selection_text";
  *(v10 + 8) = 14;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "object";
  *(v12 + 1) = 6;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "commands";
  *(v14 + 1) = 8;
  v14[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_DisambiguationListItem.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
      case 2:
        OUTLINED_FUNCTION_12();
        sub_1B964C530();
        break;
      case 3:
        v3 = OUTLINED_FUNCTION_9();
        sub_1B9262644(v3, v4, v5, v6);
        break;
      case 4:
        v7 = OUTLINED_FUNCTION_9();
        sub_1B92626F8(v7, v8, v9, v10);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B9262644(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_DisambiguationListItem(0);
  sub_1B964C1C0();
  sub_1B8CD2D08(&qword_1ED9CF6F8, MEMORY[0x1E69AAB10], MEMORY[0x1E69AAB08]);
  return sub_1B964C580();
}

uint64_t sub_1B92626F8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder(0);
  sub_1B8CD2D08(&qword_1ED9CF318, type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder);
  return sub_1B964C570();
}

void Apple_Parsec_Siri_V2alpha_DisambiguationListItem.traverse<A>(visitor:)()
{
  OUTLINED_FUNCTION_273_0();
  OUTLINED_FUNCTION_26_14();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  OUTLINED_FUNCTION_183(v3);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_151();
  sub_1B964C1C0();
  OUTLINED_FUNCTION_30_1();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_231_1();
  OUTLINED_FUNCTION_1();
  if (!v8 || (OUTLINED_FUNCTION_156_0(v6, v7, 1), !v0))
  {
    OUTLINED_FUNCTION_1();
    if (!v11 || (OUTLINED_FUNCTION_156_0(v9, v10, 2), !v0))
    {
      type metadata accessor for Apple_Parsec_Siri_V2alpha_DisambiguationListItem(0);
      sub_1B8D92024();
      OUTLINED_FUNCTION_90(v2);
      if (v12)
      {
        sub_1B8D9207C(v2, &qword_1EBAB8F20, &qword_1B964D720);
      }

      else
      {
        v13 = OUTLINED_FUNCTION_525_0();
        v14(v13);
        OUTLINED_FUNCTION_13_26();
        sub_1B8CD2D08(v15, v16, MEMORY[0x1E69AAB08]);
        OUTLINED_FUNCTION_683_0();
        OUTLINED_FUNCTION_17_15();
        sub_1B964C740();
        if (v0)
        {
          v17 = OUTLINED_FUNCTION_233();
          v18(v17);
          goto LABEL_14;
        }

        v19 = OUTLINED_FUNCTION_233();
        v20(v19);
      }

      if (!*(*(v1 + 32) + 16) || (type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder(0), OUTLINED_FUNCTION_79_9(), sub_1B8CD2D08(v21, v22, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder), OUTLINED_FUNCTION_231(), OUTLINED_FUNCTION_17_15(), sub_1B964C730(), !v0))
      {
        sub_1B964C290();
      }
    }
  }

LABEL_14:
  OUTLINED_FUNCTION_268_0();
  OUTLINED_FUNCTION_272_0();
}

void static Apple_Parsec_Siri_V2alpha_DisambiguationListItem.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  OUTLINED_FUNCTION_112();
  sub_1B964C1C0();
  OUTLINED_FUNCTION_30_1();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_62();
  OUTLINED_FUNCTION_212_0();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F20, &qword_1B964D720);
  OUTLINED_FUNCTION_183(v4);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_137();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8F28, &unk_1B9683B20);
  OUTLINED_FUNCTION_59_1();
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_79();
  v8 = *v1 == *v0 && v1[1] == v0[1];
  if (!v8 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_23;
  }

  v9 = v1[2] == v0[2] && v1[3] == v0[3];
  if (!v9 && (sub_1B964C9F0() & 1) == 0)
  {
    goto LABEL_23;
  }

  type metadata accessor for Apple_Parsec_Siri_V2alpha_DisambiguationListItem(0);
  v10 = *(v6 + 48);
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_85_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v2);
  if (v8)
  {
    OUTLINED_FUNCTION_37_0(v2 + v10);
    if (v8)
    {
      sub_1B8D9207C(v2, &qword_1EBAB8F20, &qword_1B964D720);
      goto LABEL_21;
    }

LABEL_19:
    sub_1B8D9207C(v2, &qword_1EBAB8F28, &unk_1B9683B20);
LABEL_23:
    v25 = 0;
    goto LABEL_24;
  }

  OUTLINED_FUNCTION_690();
  sub_1B8D92024();
  OUTLINED_FUNCTION_37_0(v2 + v10);
  if (v11)
  {
    v12 = OUTLINED_FUNCTION_200();
    v13(v12);
    goto LABEL_19;
  }

  v14 = OUTLINED_FUNCTION_497_0();
  v15(v14);
  OUTLINED_FUNCTION_13_26();
  sub_1B8CD2D08(v16, v17, MEMORY[0x1E69AAB20]);
  OUTLINED_FUNCTION_541_0();
  v18 = sub_1B964C850();
  v19 = OUTLINED_FUNCTION_128();
  MEMORY[0](v19);
  v20 = OUTLINED_FUNCTION_200();
  MEMORY[0](v20);
  sub_1B8D9207C(v2, &qword_1EBAB8F20, &qword_1B964D720);
  if ((v18 & 1) == 0)
  {
    goto LABEL_23;
  }

LABEL_21:
  sub_1B8D5A714(v1[4], v0[4]);
  if ((v21 & 1) == 0)
  {
    goto LABEL_23;
  }

  sub_1B964C2B0();
  OUTLINED_FUNCTION_0_75();
  v24 = sub_1B8CD2D08(v22, v23, MEMORY[0x1E69AAC10]);
  v25 = OUTLINED_FUNCTION_199_0(v24);
LABEL_24:
  OUTLINED_FUNCTION_264(v25);
  OUTLINED_FUNCTION_283();
}

uint64_t sub_1B9262D9C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1B8CD2D08(&qword_1EBAC9E78, type metadata accessor for Apple_Parsec_Siri_V2alpha_DisambiguationListItem, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_DisambiguationListItem);

  return MEMORY[0x1EEE15708](a1, a2, v4);
}

uint64_t sub_1B9262E1C(uint64_t a1)
{
  v2 = sub_1B8CD2D08(&qword_1EBAC9720, type metadata accessor for Apple_Parsec_Siri_V2alpha_DisambiguationListItem, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_DisambiguationListItem);

  return MEMORY[0x1EEE15928](a1, v2);
}

uint64_t sub_1B9262E8C(uint64_t a1, uint64_t a2)
{
  sub_1B8CD2D08(&qword_1EBAC9720, type metadata accessor for Apple_Parsec_Siri_V2alpha_DisambiguationListItem, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_DisambiguationListItem);

  return sub_1B964C5D0();
}

uint64_t sub_1B9262F18()
{
  v0 = sub_1B964C780();
  __swift_allocate_value_buffer(v0, qword_1EBAB3F60);
  __swift_project_value_buffer(v0, qword_1EBAB3F60);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F0, &unk_1B964DAD0);
  v1 = (__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB92F8, &unk_1B964EE40) - 8);
  v2 = *(*v1 + 72);
  v3 = (*(*v1 + 80) + 32) & ~*(*v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1B964E4A0;
  v5 = v4 + v3;
  v6 = v4 + v3 + v1[14];
  *(v4 + v3) = 1;
  *v6 = "casino_snippet";
  *(v6 + 8) = 14;
  *(v6 + 16) = 2;
  v7 = *MEMORY[0x1E69AADE8];
  v8 = sub_1B964C750();
  v9 = *(*(v8 - 8) + 104);
  (v9)(v6, v7, v8);
  v10 = v5 + v2 + v1[14];
  *(v5 + v2) = 2;
  *v10 = "watch_snippet";
  *(v10 + 8) = 13;
  *(v10 + 16) = 2;
  v9();
  v11 = (v5 + 2 * v2);
  v12 = v11 + v1[14];
  *v11 = 3;
  *v12 = "map_item_snippet";
  *(v12 + 1) = 16;
  v12[16] = 2;
  v9();
  v13 = (v5 + 3 * v2);
  v14 = v13 + v1[14];
  *v13 = 4;
  *v14 = "legacy_snippet";
  *(v14 + 1) = 14;
  v14[16] = 2;
  v9();
  v15 = (v5 + 4 * v2);
  v16 = v15 + v1[14];
  *v15 = 5;
  *v16 = "person_snippet";
  *(v16 + 1) = 14;
  v16[16] = 2;
  v9();
  v17 = (v5 + 5 * v2);
  v18 = v17 + v1[14];
  *v17 = 6;
  *v18 = "clock_snippet";
  *(v18 + 1) = 13;
  v18[16] = 2;
  v9();
  return sub_1B964C760();
}

uint64_t Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.decodeMessage<A>(decoder:)()
{
  OUTLINED_FUNCTION_692();
  while (1)
  {
    OUTLINED_FUNCTION_186();
    result = sub_1B964C3C0();
    if (v0 || (v2 & 1) != 0)
    {
      return result;
    }

    switch(result)
    {
      case 1:
        v3 = OUTLINED_FUNCTION_17_3();
        sub_1B92632BC(v3, v4, v5, v6);
        break;
      case 2:
        v19 = OUTLINED_FUNCTION_17_3();
        sub_1B92637B4(v19, v20, v21, v22);
        break;
      case 3:
        v11 = OUTLINED_FUNCTION_17_3();
        sub_1B9263CAC(v11, v12, v13, v14);
        break;
      case 4:
        v15 = OUTLINED_FUNCTION_17_3();
        sub_1B92641A4(v15, v16, v17, v18);
        break;
      case 5:
        v7 = OUTLINED_FUNCTION_17_3();
        sub_1B926469C(v7, v8, v9, v10);
        break;
      case 6:
        v23 = OUTLINED_FUNCTION_17_3();
        sub_1B9264B94(v23, v24, v25, v26);
        break;
      default:
        continue;
    }
  }
}

uint64_t sub_1B92632BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CasinoSnippet(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FB0, &unk_1B964D7A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9518, &qword_1B96AA7F8);
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB8FB0, &unk_1B964D7A0);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B9239DA8();
    if (swift_getEnumCaseMultiPayload())
    {
      sub_1B9239E50();
    }

    else
    {
      sub_1B8D9207C(v18, &qword_1EBAC9518, &qword_1B96AA7F8);
      sub_1B9239DA8();
      sub_1B9239DA8();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }
  }

  sub_1B8CD2D08(&qword_1ED9CA310, type metadata accessor for Apple_Parsec_Siri_V2alpha_CasinoSnippet, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_CasinoSnippet);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC9518, &qword_1B96AA7F8);
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC9518, &qword_1B96AA7F8);
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC9518, &qword_1B96AA7F8);
  }

  sub_1B9239DA8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC9518, &qword_1B96AA7F8);
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB8FB0, &unk_1B964D7A0);
  sub_1B9239DA8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B92637B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SiriWatchOSSnippet(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FB0, &unk_1B964D7A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9FD0, L"f\n\a");
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB8FB0, &unk_1B964D7A0);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B9239DA8();
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B8D9207C(v18, &qword_1EBAC9FD0, L"f\n\a");
      sub_1B9239DA8();
      sub_1B9239DA8();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B9239E50();
    }
  }

  sub_1B8CD2D08(&qword_1EBAC5DF8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SiriWatchOSSnippet, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_SiriWatchOSSnippet);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC9FD0, L"f\n\a");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC9FD0, L"f\n\a");
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC9FD0, L"f\n\a");
  }

  sub_1B9239DA8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC9FD0, L"f\n\a");
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB8FB0, &unk_1B964D7A0);
  sub_1B9239DA8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B9263CAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemSnippet(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FB0, &unk_1B964D7A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9FD8, L"f\n\a");
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB8FB0, &unk_1B964D7A0);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B9239DA8();
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B8D9207C(v18, &qword_1EBAC9FD8, L"f\n\a");
      sub_1B9239DA8();
      sub_1B9239DA8();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B9239E50();
    }
  }

  sub_1B8CD2D08(&qword_1EBAC8908, type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemSnippet, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_MapItemSnippet);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC9FD8, L"f\n\a");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC9FD8, L"f\n\a");
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC9FD8, L"f\n\a");
  }

  sub_1B9239DA8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC9FD8, L"f\n\a");
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB8FB0, &unk_1B964D7A0);
  sub_1B9239DA8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B92641A4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FB0, &unk_1B964D7A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9FE0, L"f\n\a");
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB8FB0, &unk_1B964D7A0);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B9239DA8();
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B8D9207C(v18, &qword_1EBAC9FE0, L"f\n\a");
      sub_1B9239DA8();
      sub_1B9239DA8();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B9239E50();
    }
  }

  sub_1B8CD2D08(&qword_1EBAC5520, type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_LegacySnippet);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC9FE0, L"f\n\a");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC9FE0, L"f\n\a");
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC9FE0, L"f\n\a");
  }

  sub_1B9239DA8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC9FE0, L"f\n\a");
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB8FB0, &unk_1B964D7A0);
  sub_1B9239DA8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B926469C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonSnippet(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FB0, &unk_1B964D7A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9FE8, L"f\n\a");
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB8FB0, &unk_1B964D7A0);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B9239DA8();
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B8D9207C(v18, &qword_1EBAC9FE8, L"f\n\a");
      sub_1B9239DA8();
      sub_1B9239DA8();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B9239E50();
    }
  }

  sub_1B8CD2D08(&qword_1EBAC9C70, type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonSnippet, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_PersonSnippet);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC9FE8, L"f\n\a");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC9FE8, L"f\n\a");
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC9FE8, L"f\n\a");
  }

  sub_1B9239DA8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC9FE8, L"f\n\a");
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB8FB0, &unk_1B964D7A0);
  sub_1B9239DA8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

uint64_t sub_1B9264B94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a3;
  v31 = a4;
  v32 = a2;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockSnippet(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v28 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FB0, &unk_1B964D7A0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v24 - v9;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet(0);
  v12 = MEMORY[0x1EEE9AC00](v11);
  MEMORY[0x1EEE9AC00](v12);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAC9FF0, L"f\n\a");
  v14 = MEMORY[0x1EEE9AC00](v13 - 8);
  v16 = &v24 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v18 = &v24 - v17;
  __swift_storeEnumTagSinglePayload(&v24 - v17, 1, 1, v5);
  v25 = a1;
  sub_1B8D92024();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(v10, 1, v11);
  v27 = v11;
  if (EnumTagSinglePayload == 1)
  {
    sub_1B8D9207C(v10, &qword_1EBAB8FB0, &unk_1B964D7A0);
  }

  else
  {
    sub_1B9239DA8();
    sub_1B9239DA8();
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1B8D9207C(v18, &qword_1EBAC9FF0, L"f\n\a");
      sub_1B9239DA8();
      sub_1B9239DA8();
      __swift_storeEnumTagSinglePayload(v18, 0, 1, v5);
    }

    else
    {
      sub_1B9239E50();
    }
  }

  sub_1B8CD2D08(&qword_1EBAC9C88, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockSnippet, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ClockSnippet);
  v19 = v29;
  sub_1B964C580();
  if (v19)
  {
    v20 = v18;
    return sub_1B8D9207C(v20, &qword_1EBAC9FF0, L"f\n\a");
  }

  sub_1B8D92024();
  if (__swift_getEnumTagSinglePayload(v16, 1, v5) == 1)
  {
    sub_1B8D9207C(v18, &qword_1EBAC9FF0, L"f\n\a");
    v20 = v16;
    return sub_1B8D9207C(v20, &qword_1EBAC9FF0, L"f\n\a");
  }

  sub_1B9239DA8();
  if (EnumTagSinglePayload != 1)
  {
    sub_1B964C3D0();
  }

  v22 = v27;
  sub_1B8D9207C(v18, &qword_1EBAC9FF0, L"f\n\a");
  v23 = v25;
  sub_1B8D9207C(v25, &qword_1EBAB8FB0, &unk_1B964D7A0);
  sub_1B9239DA8();
  swift_storeEnumTagMultiPayload();
  return __swift_storeEnumTagSinglePayload(v23, 0, 1, v22);
}

void Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.traverse<A>(visitor:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  OUTLINED_FUNCTION_605_1();
  OUTLINED_FUNCTION_243_3();
  v8 = OUTLINED_FUNCTION_190_0();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(v8, v9);
  OUTLINED_FUNCTION_183(v10);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_257_2();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet(0);
  OUTLINED_FUNCTION_90(v7);
  if (v12)
  {
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_686();
  switch(swift_getEnumCaseMultiPayload())
  {
    case 1u:
      v29 = OUTLINED_FUNCTION_7_6();
      sub_1B92653C8(v29, v30, v31, v32);
      break;
    case 2u:
      v21 = OUTLINED_FUNCTION_7_6();
      sub_1B92655DC(v21, v22, v23, v24);
      break;
    case 3u:
      v25 = OUTLINED_FUNCTION_7_6();
      sub_1B92657F0(v25, v26, v27, v28);
      break;
    case 4u:
      v17 = OUTLINED_FUNCTION_7_6();
      sub_1B9265A04(v17, v18, v19, v20);
      break;
    case 5u:
      v33 = OUTLINED_FUNCTION_7_6();
      sub_1B9265C18(v33, v34, v35, v36);
      break;
    default:
      v13 = OUTLINED_FUNCTION_7_6();
      sub_1B92651B8(v13, v14, v15, v16);
      break;
  }

  OUTLINED_FUNCTION_75_8();
  sub_1B9239E50();
  if (!v6)
  {
LABEL_10:
    type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails(0);
    OUTLINED_FUNCTION_479_0();
    OUTLINED_FUNCTION_214_4();
    sub_1B964C290();
  }

  OUTLINED_FUNCTION_492_1();
  OUTLINED_FUNCTION_606_1();
}

uint64_t sub_1B92651B8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FB0, &unk_1B964D7A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CasinoSnippet(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8D92024();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB8FB0, &unk_1B964D7A0);
  }

  else
  {
    if (!swift_getEnumCaseMultiPayload())
    {
      sub_1B9239DA8();
      sub_1B8CD2D08(&qword_1ED9CA310, type metadata accessor for Apple_Parsec_Siri_V2alpha_CasinoSnippet, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_CasinoSnippet);
      sub_1B964C740();
      return sub_1B9239E50();
    }

    result = sub_1B9239E50();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B92653C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FB0, &unk_1B964D7A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SiriWatchOSSnippet(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8D92024();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB8FB0, &unk_1B964D7A0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      sub_1B9239DA8();
      sub_1B8CD2D08(&qword_1EBAC5DF8, type metadata accessor for Apple_Parsec_Siri_Platform_Watchos_SiriWatchOSSnippet, protocol conformance descriptor for Apple_Parsec_Siri_Platform_Watchos_SiriWatchOSSnippet);
      sub_1B964C740();
      return sub_1B9239E50();
    }

    result = sub_1B9239E50();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B92655DC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FB0, &unk_1B964D7A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemSnippet(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8D92024();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB8FB0, &unk_1B964D7A0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 2)
    {
      sub_1B9239DA8();
      sub_1B8CD2D08(&qword_1EBAC8908, type metadata accessor for Apple_Parsec_Siri_V2alpha_MapItemSnippet, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_MapItemSnippet);
      sub_1B964C740();
      return sub_1B9239E50();
    }

    result = sub_1B9239E50();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B92657F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FB0, &unk_1B964D7A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8D92024();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB8FB0, &unk_1B964D7A0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 3)
    {
      sub_1B9239DA8();
      sub_1B8CD2D08(&qword_1EBAC5520, type metadata accessor for Apple_Parsec_Siri_Legacy_LegacySnippet, protocol conformance descriptor for Apple_Parsec_Siri_Legacy_LegacySnippet);
      sub_1B964C740();
      return sub_1B9239E50();
    }

    result = sub_1B9239E50();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9265A04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FB0, &unk_1B964D7A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonSnippet(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8D92024();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB8FB0, &unk_1B964D7A0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 4)
    {
      sub_1B9239DA8();
      sub_1B8CD2D08(&qword_1EBAC9C70, type metadata accessor for Apple_Parsec_Siri_V2alpha_PersonSnippet, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_PersonSnippet);
      sub_1B964C740();
      return sub_1B9239E50();
    }

    result = sub_1B9239E50();
  }

  __break(1u);
  return result;
}

uint64_t sub_1B9265C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10[1] = a4;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FB0, &unk_1B964D7A0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v10 - v5;
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockSnippet(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1B8D92024();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet(0);
  if (__swift_getEnumTagSinglePayload(v6, 1, v8) == 1)
  {
    result = sub_1B8D9207C(v6, &qword_1EBAB8FB0, &unk_1B964D7A0);
  }

  else
  {
    if (swift_getEnumCaseMultiPayload() == 5)
    {
      sub_1B9239DA8();
      sub_1B8CD2D08(&qword_1EBAC9C88, type metadata accessor for Apple_Parsec_Siri_V2alpha_ClockSnippet, protocol conformance descriptor for Apple_Parsec_Siri_V2alpha_ClockSnippet);
      sub_1B964C740();
      return sub_1B9239E50();
    }

    result = sub_1B9239E50();
  }

  __break(1u);
  return result;
}

void static Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.== infix(_:_:)()
{
  OUTLINED_FUNCTION_284();
  v1 = OUTLINED_FUNCTION_280();
  type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet(v1);
  OUTLINED_FUNCTION_59_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_31_8();
  v3 = OUTLINED_FUNCTION_686();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(v3, v4);
  OUTLINED_FUNCTION_183(v5);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_79();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EBAB8FB8, &qword_1B96AA8F0);
  OUTLINED_FUNCTION_183(v7);
  OUTLINED_FUNCTION_176();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_88();
  OUTLINED_FUNCTION_239_3();
  OUTLINED_FUNCTION_313_1();
  OUTLINED_FUNCTION_50(v0);
  if (v9)
  {
    OUTLINED_FUNCTION_70_9();
    if (v9)
    {
      sub_1B8D9207C(v0, &qword_1EBAB8FB0, &unk_1B964D7A0);
LABEL_12:
      type metadata accessor for Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails(0);
      OUTLINED_FUNCTION_871();
      OUTLINED_FUNCTION_0_75();
      v15 = sub_1B8CD2D08(v13, v14, MEMORY[0x1E69AAC10]);
      v10 = OUTLINED_FUNCTION_634(v15);
      goto LABEL_13;
    }

    goto LABEL_9;
  }

  OUTLINED_FUNCTION_177_1();
  sub_1B8D92024();
  OUTLINED_FUNCTION_70_9();
  if (v9)
  {
    OUTLINED_FUNCTION_75_8();
    sub_1B9239E50();
LABEL_9:
    sub_1B8D9207C(v0, &qword_1EBAB8FB8, &qword_1B96AA8F0);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_361_1();
  OUTLINED_FUNCTION_246();
  static Apple_Parsec_Siri_V2alpha_PerResultLayoutDetails.OneOf_Snippet.== infix(_:_:)();
  v12 = v11;
  sub_1B9239E50();
  OUTLINED_FUNCTION_467();
  sub_1B9239E50();
  sub_1B8D9207C(v0, &qword_1EBAB8FB0, &unk_1B964D7A0);
  if (v12)
  {
    goto LABEL_12;
  }

LABEL_10:
  v10 = 0;
LABEL_13:
  OUTLINED_FUNCTION_264(v10);
  OUTLINED_FUNCTION_283();
}