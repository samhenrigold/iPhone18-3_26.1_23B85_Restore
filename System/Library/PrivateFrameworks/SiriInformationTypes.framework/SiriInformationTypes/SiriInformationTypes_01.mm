uint64_t PommesResponse.__allocating_init(experiences:clientResults:conversationContext:metadataDomainName:renderedTexts:pegasusDomainFlowStepLog:pegasusDomainUserSensitiveTier1Log:listenAfterSpeaking:requestId:pommesCandidateId:isHandledByPreflight:preflightClientHandlerIdentifier:isPersonalDomainFallback:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, char a19)
{
  v20 = *(a15 + 32);
  v21 = *(a15 + 16);
  v27[0] = *a15;
  v27[1] = v21;
  v28 = v20;
  if (a19)
  {
    v22 = 3;
  }

  else
  {
    v22 = 0;
  }

  v26 = v22;
  return (*(v19 + 352))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, v27, a16, a17, a18, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], &v26, MEMORY[0x1E69E7CC0]);
}

uint64_t PommesResponse.__allocating_init(experiences:clientResults:conversationContext:metadataDomainName:renderedTexts:pegasusDomainFlowStepLog:pegasusDomainUserSensitiveTier1Log:listenAfterSpeaking:requestId:resultCandidateId:isHandledByPreflight:preflightClientHandlerIdentifier:searchReason:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, char a17, uint64_t a18, uint64_t a19, char *a20)
{
  v22 = *a20;
  if (a16)
  {
    v23 = 0;
  }

  else
  {
    a15 = 0;
    v23 = -1;
  }

  v26[0] = a15;
  v26[1] = a16;
  v26[2] = 0;
  v26[3] = 0;
  v27 = v23;
  v25 = v22;
  return (*(v20 + 352))(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, v26, a17, a18, a19, MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], MEMORY[0x1E69E7CC0], &v25, MEMORY[0x1E69E7CC0]);
}

id PommesResponse.__allocating_init(experiences:clientResults:conversationContext:metadataDomainName:renderedTexts:pegasusDomainFlowStepLog:pegasusDomainUserSensitiveTier1Log:listenAfterSpeaking:requestId:pommesCandidateId:isHandledByPreflight:preflightClientHandlerIdentifier:taskStepLogs:userSensitiveTier1Logs:componentsWarmedUp:searchReason:domainUseCases:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, unint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char *a22, uint64_t a23)
{
  v30 = objc_allocWithZone(v23);
  v55 = *(a15 + 32);
  v56 = *a22;
  v31 = &v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pegasusDomainFlowStepLog];
  *&v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pegasusDomainFlowStepLog] = xmmword_1DC64F240;
  v32 = &v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pegasusDomainUserSensitiveTier1Log];
  *&v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pegasusDomainUserSensitiveTier1Log] = xmmword_1DC64F240;
  v33 = &v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_requestCountryCode];
  *v33 = 0;
  v33[1] = 0;
  v34 = &v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse____lazy_storage____computedPrimaryQueryConfidence];
  *v34 = 0;
  v34[8] = 1;
  *&v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_experiences] = a1;
  *&v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_clientResults] = a2;
  v35 = &v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_conversationContext];
  *v35 = a3;
  v35[1] = a4;
  v36 = &v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_metadataDomainName];
  *v36 = a5;
  v36[1] = a6;
  v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_metadataFallbackTriggered] = 0;
  *&v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_renderedTexts] = a7;
  *&v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_redactedRenderedTexts] = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  v37 = *v31;
  v38 = v31[1];
  *v31 = a8;
  v31[1] = a9;
  outlined copy of Data?(a3, a4);
  outlined copy of Data?(a8, a9);
  outlined consume of Data._Representation?(v37, v38);
  swift_beginAccess();
  v39 = *v32;
  v40 = v32[1];
  *v32 = a10;
  v32[1] = a11;
  outlined copy of Data?(a10, a11);
  outlined consume of Data._Representation?(v39, v40);
  v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_listenAfterSpeaking] = a12;
  v41 = &v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_requestId];
  *v41 = a13;
  v41[1] = a14;
  v42 = &v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pommesCandidateId];
  v43 = *(a15 + 16);
  *v42 = *a15;
  *(v42 + 1) = v43;
  v42[32] = v55;
  v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_isHandledByPreflight] = a16;
  v44 = &v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_preflightClientHandlerIdentifier];
  *v44 = a17;
  v44[1] = a18;
  *&v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_requestLocation] = 0;
  *&v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_taskStepLogs] = a19;
  *&v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_userSensitiveTier1Logs] = a20;
  v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_searchReason] = v56;
  *&v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_componentsWarmedUp] = a21;
  v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_isCachedResponse] = 0;
  v45 = &v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_searchRequestUtterance];
  *v45 = 0;
  v45[1] = 0xE000000000000000;
  v46 = &v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_sharedUserId];
  *v46 = 0;
  v46[1] = 0;
  *&v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_encodedNLUserParses] = xmmword_1DC64F240;
  *&v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_encodedNLFallbackParse] = xmmword_1DC64F240;
  *&v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_asrRecognition] = 0;
  v47 = &v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_responseVariantResult];
  *v47 = 0;
  v47[1] = 0;
  v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_isLowConfidenceKnowledgeResult] = 0;
  v48 = &v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_albusMultiturnRewrite];
  *v48 = 0;
  v48[1] = 0;
  v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_isRelatedQuestion] = 0;
  v49 = OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_previousPommesContext;
  v50 = type metadata accessor for PommesContext(0);
  (*(*(v50 - 8) + 56))(&v30[v49], 1, 1, v50);
  *&v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_domainUseCases] = a23;
  v30[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_isQueryDirectQuestion] = 0;
  v58.receiver = v30;
  v58.super_class = v57;
  v51 = objc_msgSendSuper2(&v58, sel_init);
  outlined consume of Data._Representation?(a10, a11);
  outlined consume of Data._Representation?(a8, a9);
  outlined consume of Data._Representation?(a3, a4);
  return v51;
}

id PommesResponse.init(experiences:clientResults:conversationContext:metadataDomainName:renderedTexts:pegasusDomainFlowStepLog:pegasusDomainUserSensitiveTier1Log:listenAfterSpeaking:requestId:pommesCandidateId:isHandledByPreflight:preflightClientHandlerIdentifier:taskStepLogs:userSensitiveTier1Logs:componentsWarmedUp:searchReason:domainUseCases:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, unint64_t a9, uint64_t a10, unint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15, char a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char *a22, uint64_t a23)
{
  v49 = *(a15 + 32);
  v50 = *a22;
  v27 = &v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pegasusDomainFlowStepLog];
  *&v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pegasusDomainFlowStepLog] = xmmword_1DC64F240;
  v28 = &v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pegasusDomainUserSensitiveTier1Log];
  *&v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pegasusDomainUserSensitiveTier1Log] = xmmword_1DC64F240;
  v29 = &v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_requestCountryCode];
  *v29 = 0;
  v29[1] = 0;
  v30 = &v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse____lazy_storage____computedPrimaryQueryConfidence];
  *v30 = 0;
  v30[8] = 1;
  *&v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_experiences] = a1;
  *&v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_clientResults] = a2;
  v31 = &v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_conversationContext];
  *v31 = a3;
  v31[1] = a4;
  v32 = &v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_metadataDomainName];
  *v32 = a5;
  v32[1] = a6;
  v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_metadataFallbackTriggered] = 0;
  *&v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_renderedTexts] = a7;
  *&v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_redactedRenderedTexts] = MEMORY[0x1E69E7CC0];
  swift_beginAccess();
  v34 = *v27;
  v33 = v27[1];
  *v27 = a8;
  v27[1] = a9;
  outlined copy of Data?(a3, a4);
  outlined copy of Data?(a8, a9);
  outlined consume of Data._Representation?(v34, v33);
  swift_beginAccess();
  v35 = *v28;
  v36 = v28[1];
  *v28 = a10;
  v28[1] = a11;
  outlined copy of Data?(a10, a11);
  outlined consume of Data._Representation?(v35, v36);
  v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_listenAfterSpeaking] = a12;
  v37 = &v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_requestId];
  *v37 = a13;
  v37[1] = a14;
  v38 = &v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pommesCandidateId];
  v39 = *(a15 + 16);
  *v38 = *a15;
  *(v38 + 1) = v39;
  v38[32] = v49;
  v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_isHandledByPreflight] = a16;
  v40 = &v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_preflightClientHandlerIdentifier];
  *v40 = a17;
  v40[1] = a18;
  *&v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_requestLocation] = 0;
  *&v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_taskStepLogs] = a19;
  *&v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_userSensitiveTier1Logs] = a20;
  v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_searchReason] = v50;
  *&v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_componentsWarmedUp] = a21;
  v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_isCachedResponse] = 0;
  v41 = &v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_searchRequestUtterance];
  *v41 = 0;
  v41[1] = 0xE000000000000000;
  v42 = &v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_sharedUserId];
  *v42 = 0;
  v42[1] = 0;
  *&v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_encodedNLUserParses] = xmmword_1DC64F240;
  *&v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_encodedNLFallbackParse] = xmmword_1DC64F240;
  *&v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_asrRecognition] = 0;
  v43 = &v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_responseVariantResult];
  *v43 = 0;
  v43[1] = 0;
  v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_isLowConfidenceKnowledgeResult] = 0;
  v44 = &v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_albusMultiturnRewrite];
  *v44 = 0;
  v44[1] = 0;
  v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_isRelatedQuestion] = 0;
  v45 = OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_previousPommesContext;
  v46 = type metadata accessor for PommesContext(0);
  (*(*(v46 - 8) + 56))(&v23[v45], 1, 1, v46);
  *&v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_domainUseCases] = a23;
  v23[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_isQueryDirectQuestion] = 0;
  v52.receiver = v23;
  v52.super_class = type metadata accessor for PommesResponse(0);
  v47 = objc_msgSendSuper2(&v52, sel_init);
  outlined consume of Data._Representation?(a10, a11);
  outlined consume of Data._Representation?(a8, a9);
  outlined consume of Data._Representation?(a3, a4);
  return v47;
}

uint64_t PommesResponse.__allocating_init(_:)(void (*a1)(char *))
{
  v3 = type metadata accessor for PommesResponse.Builder(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v11 - v7;
  PommesResponse.Builder.init()(&v11 - v7);
  a1(v8);
  outlined init with copy of PommesResponse.Builder(v8, v6);
  v9 = (*(v1 + 360))(v6);
  outlined destroy of PommesResponse.Builder(v8, type metadata accessor for PommesResponse.Builder);
  return v9;
}

uint64_t PommesResponse.Builder.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0xF000000000000000;
  *(a1 + 32) = 0;
  *(a1 + 40) = 0;
  *(a1 + 48) = 0;
  *(a1 + 64) = 0;
  *(a1 + 72) = 0;
  *(a1 + 56) = 0;
  *(a1 + 80) = xmmword_1DC64F440;
  *(a1 + 96) = 0xF000000000000000;
  *(a1 + 104) = 0;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 160) = 255;
  *(a1 + 184) = 0u;
  *(a1 + 168) = 0u;
  v2 = MEMORY[0x1E69E7CC0];
  *(a1 + 200) = MEMORY[0x1E69E7CC0];
  *(a1 + 208) = 0;
  *(a1 + 216) = 0;
  *(a1 + 224) = 0;
  *(a1 + 232) = 0;
  *(a1 + 240) = 0u;
  *(a1 + 256) = 0u;
  *(a1 + 272) = 0;
  *(a1 + 280) = 0xF000000000000000;
  *(a1 + 288) = xmmword_1DC64F240;
  v3 = type metadata accessor for PommesResponse.Builder(0);
  *(a1 + 312) = 0;
  *(a1 + 320) = 0;
  *(a1 + 304) = 0;
  *(a1 + 328) = 0;
  *(a1 + 336) = 0;
  *(a1 + 344) = 0;
  *(a1 + 352) = 0;
  v4 = v3[34];
  v5 = type metadata accessor for PommesContext(0);
  result = (*(*(v5 - 8) + 56))(a1 + v4, 1, 1, v5);
  *(a1 + v3[35]) = v2;
  *(a1 + v3[36]) = 0;
  return result;
}

uint64_t *PommesResponse.init(builder:)(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v5 = &v2[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pegasusDomainFlowStepLog];
  *&v2[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pegasusDomainFlowStepLog] = xmmword_1DC64F240;
  v6 = &v2[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pegasusDomainUserSensitiveTier1Log];
  *&v2[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pegasusDomainUserSensitiveTier1Log] = xmmword_1DC64F240;
  v7 = &v2[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_requestCountryCode];
  *v7 = 0;
  v7[1] = 0;
  v8 = &v2[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse____lazy_storage____computedPrimaryQueryConfidence];
  *v8 = 0;
  v8[8] = 1;
  v9 = *a1;
  if (!v9)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v56 = type metadata accessor for Logger();
    __swift_project_value_buffer(v56, static Logger.pommes);
    v57 = Logger.logObject.getter();
    v58 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      *v59 = 0;
      _os_log_impl(&dword_1DC5C3000, v57, v58, "Attempting to create a PommesResponse without experiences", v59, 2u);
      MEMORY[0x1E1299E70](v59, -1, -1);
    }

    outlined destroy of PommesResponse.Builder(a1, type metadata accessor for PommesResponse.Builder);
    outlined consume of Data._Representation?(*v5, *(v5 + 1));
    outlined consume of Data._Representation?(*v6, *(v6 + 1));
    goto LABEL_45;
  }

  *&v2[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_experiences] = v9;
  v10 = a1[1];
  v102 = v10;
  if (!v10)
  {
    v60 = one-time initialization token for pommes;

    if (v60 != -1)
    {
      swift_once();
    }

    v61 = type metadata accessor for Logger();
    __swift_project_value_buffer(v61, static Logger.pommes);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(v62, v63))
    {
      goto LABEL_25;
    }

    v64 = swift_slowAlloc();
    *v64 = 0;
    v65 = "Attempting to create a PommesResponse without clientResults";
    goto LABEL_24;
  }

  *&v2[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_clientResults] = v10;
  v12 = a1[2];
  v11 = a1[3];
  v13 = &v3[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_conversationContext];
  *v13 = v12;
  v13[1] = v11;
  v14 = a1[5];
  if (!v14)
  {

    outlined copy of Data?(v12, v11);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v66 = type metadata accessor for Logger();
    __swift_project_value_buffer(v66, static Logger.pommes);
    v62 = Logger.logObject.getter();
    v63 = static os_log_type_t.fault.getter();
    if (!os_log_type_enabled(v62, v63))
    {
      goto LABEL_25;
    }

    v64 = swift_slowAlloc();
    *v64 = 0;
    v65 = "Attempting to create a PommesResponse without metadataDomainName";
LABEL_24:
    _os_log_impl(&dword_1DC5C3000, v62, v63, v65, v64, 2u);
    MEMORY[0x1E1299E70](v64, -1, -1);
LABEL_25:

    v67 = 0;
    v68 = 0;
    v69 = 0;
    v70 = 0;
    goto LABEL_26;
  }

  v15 = &v3[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_metadataDomainName];
  *v15 = a1[4];
  v15[1] = v14;
  v3[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_metadataFallbackTriggered] = *(a1 + 48);
  v16 = a1[7];
  if (v16)
  {
    v100 = v7;
    *&v3[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_renderedTexts] = v16;
    v17 = MEMORY[0x1E69E7CC0];
    v18 = a1[9];
    if (a1[8])
    {
      v17 = a1[8];
    }

    *&v3[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_redactedRenderedTexts] = v17;
    v19 = a1[10];
    swift_beginAccess();
    v96 = *(v5 + 1);
    v97 = *v5;
    *v5 = v18;
    *(v5 + 1) = v19;
    v95 = v5;

    outlined copy of Data?(v12, v11);

    outlined copy of Data?(v18, v19);

    outlined consume of Data._Representation?(v97, v96);
    v20 = a1[11];
    v21 = a1[12];
    swift_beginAccess();
    v22 = *v6;
    v23 = *(v6 + 1);
    *v6 = v20;
    *(v6 + 1) = v21;
    v98 = v6;
    outlined copy of Data?(v20, v21);
    outlined consume of Data._Representation?(v22, v23);
    v3[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_listenAfterSpeaking] = *(a1 + 104);
    v24 = a1[15];
    v25 = &v3[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_requestId];
    *v25 = a1[14];
    v25[1] = v24;
    v26 = a1[16];
    v27 = a1[17];
    v29 = a1[18];
    v28 = a1[19];
    v30 = *(a1 + 160);
    v31 = &v3[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pommesCandidateId];
    *v31 = v26;
    *(v31 + 1) = v27;
    *(v31 + 2) = v29;
    *(v31 + 3) = v28;
    v31[32] = v30;
    v3[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_isHandledByPreflight] = *(a1 + 161);
    v32 = a1[22];
    v33 = &v3[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_preflightClientHandlerIdentifier];
    *v33 = a1[21];
    v33[1] = v32;
    v34 = a1[23];
    if (v34)
    {
      *&v3[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_taskStepLogs] = v34;
      v35 = a1[24];
      if (v35)
      {
        *&v3[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_userSensitiveTier1Logs] = v35;
        v93 = a1[26];
        *&v3[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_componentsWarmedUp] = a1[25];
        v94 = v30;
        v36 = a1[27];
        swift_beginAccess();
        *v100 = v93;
        v100[1] = v36;

        outlined copy of PommesCandidateId?(v26, v27, v29, v28, v94);

        v37 = a1[28];
        *&v3[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_requestLocation] = v37;
        v3[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_searchReason] = *(a1 + 232);
        v3[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_isCachedResponse] = *(a1 + 233);
        v38 = a1[31];
        if (v38)
        {
          v39 = &v3[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_searchRequestUtterance];
          *v39 = a1[30];
          v39[1] = v38;
          v40 = a1[33];
          v41 = &v3[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_sharedUserId];
          *v41 = a1[32];
          v41[1] = v40;
          v99 = a1[35];
          v101 = a1[34];
          v42 = &v3[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_encodedNLUserParses];
          *v42 = v101;
          v42[1] = v99;
          v43 = a1[36];
          v44 = a1[37];
          v45 = &v3[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_encodedNLFallbackParse];
          *v45 = v43;
          v45[1] = v44;
          v46 = a1[39];
          v103 = a1[38];
          *&v3[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_asrRecognition] = v103;
          v47 = a1[40];
          v48 = &v3[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_responseVariantResult];
          *v48 = v46;
          v48[1] = v47;
          v3[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_isLowConfidenceKnowledgeResult] = *(a1 + 328);
          v49 = a1[43];
          v50 = &v3[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_albusMultiturnRewrite];
          *v50 = a1[42];
          v50[1] = v49;
          v3[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_isRelatedQuestion] = *(a1 + 352);
          v51 = type metadata accessor for PommesResponse.Builder(0);
          outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(a1 + v51[34], &v3[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_previousPommesContext], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
          *&v3[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_domainUseCases] = *(a1 + v51[35]);
          v3[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_isQueryDirectQuestion] = *(a1 + v51[36]);

          v52 = v37;

          outlined copy of Data?(v101, v99);
          outlined copy of Data?(v43, v44);
          v104.receiver = v3;
          v104.super_class = type metadata accessor for PommesResponse(0);
          v53 = v103;

          v54 = objc_msgSendSuper2(&v104, sel_init);
          outlined destroy of PommesResponse.Builder(a1, type metadata accessor for PommesResponse.Builder);
          return v54;
        }

        v87 = one-time initialization token for pommes;
        v88 = v37;
        if (v87 != -1)
        {
          swift_once();
        }

        v89 = type metadata accessor for Logger();
        __swift_project_value_buffer(v89, static Logger.pommes);
        v90 = Logger.logObject.getter();
        v91 = static os_log_type_t.fault.getter();
        v6 = v98;
        v5 = v95;
        if (os_log_type_enabled(v90, v91))
        {
          v92 = swift_slowAlloc();
          *v92 = 0;
          _os_log_impl(&dword_1DC5C3000, v90, v91, "Attempting to create a PommesResponse without searchRequestUtterance", v92, 2u);
          MEMORY[0x1E1299E70](v92, -1, -1);
        }

        v67 = 1;
        v68 = 1;
        v69 = 1;
        v70 = 1;
      }

      else
      {

        outlined copy of PommesCandidateId?(v26, v27, v29, v28, v30);
        v82 = one-time initialization token for pommes;

        if (v82 != -1)
        {
          swift_once();
        }

        v83 = type metadata accessor for Logger();
        __swift_project_value_buffer(v83, static Logger.pommes);
        v84 = Logger.logObject.getter();
        v85 = static os_log_type_t.fault.getter();
        v6 = v98;
        v5 = v95;
        if (os_log_type_enabled(v84, v85))
        {
          v86 = swift_slowAlloc();
          *v86 = 0;
          _os_log_impl(&dword_1DC5C3000, v84, v85, "Attempting to create a PommesResponse without userSensitiveTier1Logs", v86, 2u);
          MEMORY[0x1E1299E70](v86, -1, -1);
        }

        v70 = 0;
        v67 = 1;
        v68 = 1;
        v69 = 1;
      }
    }

    else
    {

      outlined copy of PommesCandidateId?(v26, v27, v29, v28, v30);
      v77 = one-time initialization token for pommes;

      if (v77 != -1)
      {
        swift_once();
      }

      v78 = type metadata accessor for Logger();
      __swift_project_value_buffer(v78, static Logger.pommes);
      v79 = Logger.logObject.getter();
      v80 = static os_log_type_t.fault.getter();
      v6 = v98;
      v5 = v95;
      if (os_log_type_enabled(v79, v80))
      {
        v81 = swift_slowAlloc();
        *v81 = 0;
        _os_log_impl(&dword_1DC5C3000, v79, v80, "Attempting to create a PommesResponse without taskStepLogs", v81, 2u);
        MEMORY[0x1E1299E70](v81, -1, -1);
      }

      v69 = 0;
      v70 = 0;
      v67 = 1;
      v68 = 1;
    }
  }

  else
  {

    outlined copy of Data?(v12, v11);
    v72 = one-time initialization token for pommes;

    if (v72 != -1)
    {
      swift_once();
    }

    v73 = type metadata accessor for Logger();
    __swift_project_value_buffer(v73, static Logger.pommes);
    v74 = Logger.logObject.getter();
    v75 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_1DC5C3000, v74, v75, "Attempting to create a PommesResponse without renderedTexts", v76, 2u);
      MEMORY[0x1E1299E70](v76, -1, -1);
    }

    v68 = 0;
    v69 = 0;
    v70 = 0;
    v67 = 1;
  }

LABEL_26:
  outlined destroy of PommesResponse.Builder(a1, type metadata accessor for PommesResponse.Builder);

  if (v102)
  {

    outlined consume of Data._Representation?(*&v3[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_conversationContext], *&v3[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_conversationContext + 8]);
  }

  if (v67)
  {
  }

  if (v68)
  {

    outlined consume of Data._Representation?(*v5, *(v5 + 1));
    if ((v69 & 1) == 0)
    {
      goto LABEL_32;
    }

LABEL_36:

    outlined consume of Data._Representation?(*v6, *(v6 + 1));
    if (v70)
    {
      goto LABEL_33;
    }

    goto LABEL_37;
  }

  outlined consume of Data._Representation?(*v5, *(v5 + 1));
  if (v69)
  {
    goto LABEL_36;
  }

LABEL_32:
  outlined consume of Data._Representation?(*v6, *(v6 + 1));
  if (v70)
  {
LABEL_33:

    if (v68)
    {
      v71 = 1;
      goto LABEL_39;
    }

    goto LABEL_45;
  }

LABEL_37:
  if (v68)
  {
    v71 = 0;
LABEL_39:

    if (v71)
    {
    }

    outlined consume of PommesCandidateId?(*&v3[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pommesCandidateId], *&v3[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pommesCandidateId + 8], *&v3[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pommesCandidateId + 16], *&v3[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pommesCandidateId + 24], v3[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pommesCandidateId + 32]);
    if (!v71)
    {
      goto LABEL_46;
    }
  }

LABEL_45:

LABEL_46:
  type metadata accessor for PommesResponse(0);
  swift_deallocPartialClassInstance();
  return 0;
}

uint64_t PommesResponse.Builder.experiences.setter(uint64_t a1)
{

  *v1 = a1;
  return result;
}

uint64_t PommesResponse.Builder.clientResults.setter(uint64_t a1)
{

  *(v1 + 8) = a1;
  return result;
}

uint64_t PommesResponse.Builder.conversationContext.getter()
{
  v1 = *(v0 + 16);
  outlined copy of Data?(v1, *(v0 + 24));
  return v1;
}

void PommesResponse.Builder.conversationContext.setter(uint64_t a1, uint64_t a2)
{
  outlined consume of Data._Representation?(*(v2 + 16), *(v2 + 24));
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t PommesResponse.Builder.metadataDomainName.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 32);

  return v3;
}

uint64_t PommesResponse.Builder.metadataDomainName.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 32) = a1;
  *(v2 + 40) = a2;
  return result;
}

uint64_t PommesResponse.Builder.renderedTexts.setter(uint64_t a1)
{

  *(v1 + 56) = a1;
  return result;
}

uint64_t PommesResponse.Builder.redactedRenderedTexts.setter(uint64_t a1)
{

  *(v1 + 64) = a1;
  return result;
}

uint64_t PommesResponse.Builder.pegasusDomainFlowStepLog.getter()
{
  v1 = *(v0 + 72);
  outlined copy of Data?(v1, *(v0 + 80));
  return v1;
}

void PommesResponse.Builder.pegasusDomainFlowStepLog.setter(uint64_t a1, uint64_t a2)
{
  outlined consume of Data._Representation?(*(v2 + 72), *(v2 + 80));
  *(v2 + 72) = a1;
  *(v2 + 80) = a2;
}

uint64_t PommesResponse.Builder.pegasusDomainUserSensitiveTier1Log.getter()
{
  v1 = *(v0 + 88);
  outlined copy of Data?(v1, *(v0 + 96));
  return v1;
}

void PommesResponse.Builder.pegasusDomainUserSensitiveTier1Log.setter(uint64_t a1, uint64_t a2)
{
  outlined consume of Data._Representation?(*(v2 + 88), *(v2 + 96));
  *(v2 + 88) = a1;
  *(v2 + 96) = a2;
}

uint64_t PommesResponse.Builder.requestId.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 112);

  return v3;
}

uint64_t PommesResponse.Builder.requestId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 112) = a1;
  *(v2 + 120) = a2;
  return result;
}

void PommesResponse.Builder.pommesCandidateId.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 128);
  v3 = *(v1 + 136);
  v4 = *(v1 + 144);
  v5 = *(v1 + 152);
  *a1 = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v5;
  v6 = *(v1 + 160);
  *(a1 + 32) = v6;
  outlined copy of PommesCandidateId?(v2, v3, v4, v5, v6);
}

__n128 PommesResponse.Builder.pommesCandidateId.setter(uint64_t a1)
{
  v3 = *(a1 + 32);
  outlined consume of PommesCandidateId?(*(v1 + 128), *(v1 + 136), *(v1 + 144), *(v1 + 152), *(v1 + 160));
  result = *a1;
  v5 = *(a1 + 16);
  *(v1 + 128) = *a1;
  *(v1 + 144) = v5;
  *(v1 + 160) = v3;
  return result;
}

uint64_t PommesResponse.Builder.preflightClientHandlerIdentifier.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 168);

  return v3;
}

uint64_t PommesResponse.Builder.preflightClientHandlerIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 168) = a1;
  *(v2 + 176) = a2;
  return result;
}

uint64_t PommesResponse.Builder.taskStepLogs.setter(uint64_t a1)
{

  *(v1 + 184) = a1;
  return result;
}

uint64_t PommesResponse.Builder.userSensitiveTier1Logs.setter(uint64_t a1)
{

  *(v1 + 192) = a1;
  return result;
}

uint64_t PommesResponse.Builder.componentsWarmedUp.setter(uint64_t a1)
{

  *(v1 + 200) = a1;
  return result;
}

uint64_t PommesResponse.Builder.requestCountryCode.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 208);

  return v3;
}

uint64_t PommesResponse.Builder.requestCountryCode.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 208) = a1;
  *(v2 + 216) = a2;
  return result;
}

void *PommesResponse.Builder.requestLocation.getter()
{
  v1 = *(v0 + 224);
  v2 = v1;
  return v1;
}

uint64_t PommesResponse.Builder.searchRequestUtterance.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 240);

  return v3;
}

uint64_t PommesResponse.Builder.searchRequestUtterance.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 240) = a1;
  *(v2 + 248) = a2;
  return result;
}

uint64_t PommesResponse.Builder.sharedUserId.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 256);

  return v3;
}

uint64_t PommesResponse.Builder.sharedUserId.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 256) = a1;
  *(v2 + 264) = a2;
  return result;
}

uint64_t PommesResponse.Builder.encodedNLUserParses.getter()
{
  v1 = *(v0 + 272);
  outlined copy of Data?(v1, *(v0 + 280));
  return v1;
}

void PommesResponse.Builder.encodedNLUserParses.setter(uint64_t a1, uint64_t a2)
{
  outlined consume of Data._Representation?(*(v2 + 272), *(v2 + 280));
  *(v2 + 272) = a1;
  *(v2 + 280) = a2;
}

uint64_t PommesResponse.Builder.encodedNLFallbackParse.getter()
{
  v1 = *(v0 + 288);
  outlined copy of Data?(v1, *(v0 + 296));
  return v1;
}

void PommesResponse.Builder.encodedNLFallbackParse.setter(uint64_t a1, uint64_t a2)
{
  outlined consume of Data._Representation?(*(v2 + 288), *(v2 + 296));
  *(v2 + 288) = a1;
  *(v2 + 296) = a2;
}

void *PommesResponse.Builder.asrRecognition.getter()
{
  v1 = *(v0 + 304);
  v2 = v1;
  return v1;
}

uint64_t PommesResponse.Builder.responseVariantResult.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 312);

  return v3;
}

uint64_t PommesResponse.Builder.responseVariantResult.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 312) = a1;
  *(v2 + 320) = a2;
  return result;
}

uint64_t PommesResponse.Builder.albusMultiturnRewrite.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + 336);

  return v3;
}

uint64_t PommesResponse.Builder.albusMultiturnRewrite.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 336) = a1;
  *(v2 + 344) = a2;
  return result;
}

uint64_t PommesResponse.Builder.previousPommesContext.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PommesResponse.Builder(0) + 136);

  return outlined assign with take of PommesContext?(a1, v3);
}

uint64_t PommesResponse.Builder.domainUseCases.getter()
{
  type metadata accessor for PommesResponse.Builder(0);
}

uint64_t PommesResponse.Builder.domainUseCases.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PommesResponse.Builder(0) + 140);

  *(v1 + v3) = a1;
  return result;
}

uint64_t PommesResponse.Builder.isQueryDirectQuestion.setter(char a1)
{
  result = type metadata accessor for PommesResponse.Builder(0);
  *(v1 + *(result + 144)) = a1;
  return result;
}

uint64_t key path setter for PommesResponse.experiences : PommesResponse(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_experiences;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

uint64_t PommesResponse.conversationContext.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_conversationContext);
  outlined copy of Data?(v1, *(v0 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_conversationContext + 8));
  return v1;
}

uint64_t PommesResponse.metadataDomainName.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_metadataDomainName);

  return v3;
}

uint64_t PommesResponse.pegasusDomainFlowStepLog.getter(void *a1)
{
  v2 = v1 + *a1;
  swift_beginAccess();
  v3 = *v2;
  outlined copy of Data?(*v2, *(v2 + 8));
  return v3;
}

void PommesResponse.pegasusDomainFlowStepLog.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  v7 = *v6;
  v8 = v6[1];
  *v6 = a1;
  v6[1] = a2;
  outlined consume of Data._Representation?(v7, v8);
}

uint64_t PommesResponse.clientResults.setter(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  swift_beginAccess();
  *(v2 + v4) = a1;
}

uint64_t PommesResponse.listenAfterSpeaking.getter()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_listenAfterSpeaking;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t PommesResponse.listenAfterSpeaking.setter(char a1)
{
  v3 = OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_listenAfterSpeaking;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t PommesResponse.requestId.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_requestId);

  return v3;
}

uint64_t PommesResponse.resultCandidateId.getter()
{
  v1 = 0;
  v2 = (v0 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pommesCandidateId);
  v3 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pommesCandidateId + 32);
  if (v3 <= 1)
  {
    if (*(v0 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pommesCandidateId + 32))
    {
      return v1;
    }

    goto LABEL_5;
  }

  if (v3 == 2)
  {
LABEL_5:
    v1 = *v2;
    outlined copy of PommesCandidateId(*v2, v2[1], v2[2], v2[3], v3);
  }

  return v1;
}

uint64_t PommesResponse.preflightClientHandlerIdentifier.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_preflightClientHandlerIdentifier);

  return v3;
}

uint64_t PommesResponse.isPersonalDomainFallback.getter()
{
  (*((*MEMORY[0x1E69E7D40] & *v0) + 0x270))(&v3);
  if (v3 == 3)
  {
    v1 = 1;
  }

  else
  {
    v1 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v1 & 1;
}

uint64_t PommesResponse.requestCountryCode.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_requestCountryCode);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t PommesResponse.requestCountryCode.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_requestCountryCode);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void *PommesResponse.requestLocation.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_requestLocation);
  v2 = v1;
  return v1;
}

uint64_t PommesResponse.searchReason.getter@<X0>(_BYTE *a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_searchReason;
  result = swift_beginAccess();
  *a1 = *(v1 + v3);
  return result;
}

void PommesResponse.pommesCandidateId.getter(uint64_t a1@<X8>)
{
  v2 = v1 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pommesCandidateId;
  v3 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pommesCandidateId);
  v4 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pommesCandidateId + 8);
  v5 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pommesCandidateId + 16);
  v6 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pommesCandidateId + 24);
  *a1 = v3;
  *(a1 + 8) = v4;
  *(a1 + 16) = v5;
  *(a1 + 24) = v6;
  v7 = *(v2 + 32);
  *(a1 + 32) = v7;
  outlined copy of PommesCandidateId?(v3, v4, v5, v6, v7);
}

uint64_t PommesResponse.searchRequestUtterance.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_searchRequestUtterance);

  return v3;
}

uint64_t PommesResponse.sharedUserId.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_sharedUserId);

  return v3;
}

uint64_t PommesResponse.encodedNLUserParses.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_encodedNLUserParses);
  outlined copy of Data?(v1, *(v0 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_encodedNLUserParses + 8));
  return v1;
}

uint64_t PommesResponse.encodedNLFallbackParse.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_encodedNLFallbackParse);
  outlined copy of Data?(v1, *(v0 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_encodedNLFallbackParse + 8));
  return v1;
}

void *PommesResponse.asrRecognition.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_asrRecognition);
  v2 = v1;
  return v1;
}

uint64_t PommesResponse.responseVariantResult.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_responseVariantResult);

  return v3;
}

uint64_t PommesResponse.albusMultiturnRewrite.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_albusMultiturnRewrite);

  return v3;
}

Swift::Void __swiftcall PommesResponse.setSearchReason(_:)(SiriInformationTypes::PommesSearchReason a1)
{
  v2 = *a1;
  v3 = OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_searchReason;
  swift_beginAccess();
  *(v1 + v3) = v2;
}

uint64_t PommesResponse.__allocating_init(coder:)(void *a1)
{
  v3 = type metadata accessor for PommesResponse.Builder(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v12 - v7;
  objc_allocWithZone(v1);
  ObjectType = swift_getObjectType();
  PommesResponse.Builder.init()(v8);
  closure #1 in PommesResponse.init(coder:)(v8, a1);
  outlined init with copy of PommesResponse.Builder(v8, v6);
  v10 = (*(ObjectType + 360))(v6);

  outlined destroy of PommesResponse.Builder(v8, type metadata accessor for PommesResponse.Builder);
  swift_deallocPartialClassInstance();
  return v10;
}

uint64_t PommesResponse.init(coder:)(void *a1)
{
  v2 = type metadata accessor for PommesResponse.Builder(0);
  v3 = MEMORY[0x1EEE9AC00](v2 - 8);
  v5 = &v11 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - v6;
  ObjectType = swift_getObjectType();
  PommesResponse.Builder.init()(v7);
  closure #1 in PommesResponse.init(coder:)(v7, a1);
  outlined init with copy of PommesResponse.Builder(v7, v5);
  v9 = (*(ObjectType + 360))(v5);

  outlined destroy of PommesResponse.Builder(v7, type metadata accessor for PommesResponse.Builder);
  swift_deallocPartialClassInstance();
  return v9;
}

void closure #1 in PommesResponse.init(coder:)(char *a1, void *a2)
{
  v4 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v168 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadataVSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadataVSgMR);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v173 = v168 - v8;
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata();
  v172 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v175 = v168 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v168 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
  v15 = swift_allocObject();
  v177 = xmmword_1DC64ED70;
  *(v15 + 16) = xmmword_1DC64ED70;
  v176 = type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
  *(v15 + 32) = v176;
  *(v15 + 40) = type metadata accessor for Experience(0);
  NSCoder.decodeObject(of:forKey:)();

  if (*(&v181 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SiriInformationSearch10ExperienceCGMd, &_sSay21SiriInformationSearch10ExperienceCGMR);
    if (swift_dynamicCast())
    {
      v16 = v183;
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    outlined destroy of ClientExperienceSignals?(&v180, &_sypSgMd, &_sypSgMR);
    v16 = 0;
  }

  *a1 = v16;
  v17 = swift_allocObject();
  *(v17 + 16) = v177;
  *(v17 + 32) = v176;
  *(v17 + 40) = type metadata accessor for PommesResult();
  NSCoder.decodeObject(of:forKey:)();

  v179 = v9;
  v170 = v13;
  if (*(&v181 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SiriInformationSearch12PommesResultCGMd, &_sSay21SiriInformationSearch12PommesResultCGMR);
    if (swift_dynamicCast())
    {
      v18 = v183;
    }

    else
    {
      v18 = 0;
    }
  }

  else
  {
    outlined destroy of ClientExperienceSignals?(&v180, &_sypSgMd, &_sypSgMR);
    v18 = 0;
  }

  *(a1 + 1) = v18;
  v174 = type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSData, 0x1E695DEF0);
  v19 = NSCoder.decodeObject<A>(of:forKey:)();
  v178 = v6;
  if (v19)
  {
    v20 = v19;
    v21 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v23 = v22;
  }

  else
  {
    v21 = 0;
    v23 = 0xF000000000000000;
  }

  outlined consume of Data._Representation?(*(a1 + 2), *(a1 + 3));
  *(a1 + 2) = v21;
  *(a1 + 3) = v23;
  v24 = type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  v25 = NSCoder.decodeObject<A>(of:forKey:)();
  v171 = v24;
  if (v25)
  {
    v26 = v25;
    v27 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v29 = v28;

    v24 = v171;
  }

  else
  {
    v29 = 0xE400000000000000;
    v27 = 1701736302;
  }

  *(a1 + 4) = v27;
  *(a1 + 5) = v29;
  v30 = MEMORY[0x1E1299430](0xD000000000000019, 0x80000001DC651A80);
  v31 = [a2 decodeBoolForKey_];

  a1[48] = v31;
  v32 = swift_allocObject();
  *(v32 + 16) = v177;
  *(v32 + 32) = v176;
  *(v32 + 40) = v24;
  NSCoder.decodeObject(of:forKey:)();

  if (*(&v181 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    if (swift_dynamicCast())
    {
      v33 = v183;
      goto LABEL_22;
    }
  }

  else
  {
    outlined destroy of ClientExperienceSignals?(&v180, &_sypSgMd, &_sypSgMR);
  }

  v33 = MEMORY[0x1E69E7CC0];
LABEL_22:

  *(a1 + 7) = v33;
  v34 = swift_allocObject();
  *(v34 + 16) = v177;
  *(v34 + 32) = v176;
  *(v34 + 40) = v24;
  NSCoder.decodeObject(of:forKey:)();

  if (*(&v181 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    if (swift_dynamicCast())
    {
      v35 = v183;
      goto LABEL_27;
    }
  }

  else
  {
    outlined destroy of ClientExperienceSignals?(&v180, &_sypSgMd, &_sypSgMR);
  }

  v35 = MEMORY[0x1E69E7CC0];
LABEL_27:

  *(a1 + 8) = v35;
  v36 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v36)
  {
    v37 = v36;
    v38 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v40 = v39;
  }

  else
  {
    v38 = 0;
    v40 = 0xF000000000000000;
  }

  outlined consume of Data._Representation?(*(a1 + 9), *(a1 + 10));
  *(a1 + 9) = v38;
  *(a1 + 10) = v40;
  v41 = swift_allocObject();
  *(v41 + 16) = v177;
  v42 = v174;
  *(v41 + 32) = v176;
  *(v41 + 40) = v42;
  NSCoder.decodeObject(of:forKey:)();

  if (*(&v181 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
    if (swift_dynamicCast())
    {
      v43 = v183;
      goto LABEL_35;
    }
  }

  else
  {
    outlined destroy of ClientExperienceSignals?(&v180, &_sypSgMd, &_sypSgMR);
  }

  v43 = MEMORY[0x1E69E7CC0];
LABEL_35:
  v44 = specialized _arrayForceCast<A, B>(_:)(v43);

  *(a1 + 23) = v44;
  v45 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v45)
  {
    v46 = v45;
    v47 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v49 = v48;
  }

  else
  {
    v47 = 0;
    v49 = 0xF000000000000000;
  }

  outlined consume of Data._Representation?(*(a1 + 11), *(a1 + 12));
  *(a1 + 11) = v47;
  *(a1 + 12) = v49;
  v50 = swift_allocObject();
  *(v50 + 16) = v177;
  v51 = v174;
  *(v50 + 32) = v176;
  *(v50 + 40) = v51;
  NSCoder.decodeObject(of:forKey:)();

  if (*(&v181 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
    if (swift_dynamicCast())
    {
      v52 = v183;
      goto LABEL_43;
    }
  }

  else
  {
    outlined destroy of ClientExperienceSignals?(&v180, &_sypSgMd, &_sypSgMR);
  }

  v52 = MEMORY[0x1E69E7CC0];
LABEL_43:
  v53 = specialized _arrayForceCast<A, B>(_:)(v52);

  *(a1 + 24) = v53;
  v54 = MEMORY[0x1E1299430](0xD000000000000013, 0x80000001DC651AE0);
  LOBYTE(v53) = [a2 decodeBoolForKey_];

  a1[104] = v53;
  v55 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v55)
  {
    v56 = v55;
    v57 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v59 = v58;
  }

  else
  {
    v57 = 0;
    v59 = 0;
  }

  *(a1 + 14) = v57;
  *(a1 + 15) = v59;
  v60 = MEMORY[0x1E1299430](0xD000000000000014, 0x80000001DC651B00);
  v61 = [a2 decodeBoolForKey_];

  a1[161] = v61;
  v62 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v62)
  {
    v63 = v62;
    v64 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v66 = v65;
  }

  else
  {
    v64 = 0;
    v66 = 0;
  }

  *(a1 + 21) = v64;
  *(a1 + 22) = v66;
  v67 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v67)
  {
    v68 = v67;
    v69 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v71 = v70;
  }

  else
  {
    v69 = 0;
    v71 = 0;
  }

  *(a1 + 26) = v69;
  *(a1 + 27) = v71;
  type metadata accessor for NSArray(0, &lazy cache variable for type metadata for CLLocation, 0x1E6985C40);
  v72 = NSCoder.decodeObject<A>(of:forKey:)();

  *(a1 + 28) = v72;
  v73 = MEMORY[0x1E1299430](0xD000000000000010, 0x80000001DC651B40);
  v74 = [a2 decodeBoolForKey_];

  a1[233] = v74;
  v75 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v75)
  {
    v76 = v75;
    v77 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v79 = v78;
  }

  else
  {
    v77 = 0;
    v79 = 0xE000000000000000;
  }

  *(a1 + 30) = v77;
  *(a1 + 31) = v79;
  v80 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v80)
  {
    v81 = v80;
    v82 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v84 = v83;
  }

  else
  {
    v82 = 0;
    v84 = 0;
  }

  *(a1 + 32) = v82;
  *(a1 + 33) = v84;
  v85 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v85)
  {
    v86 = v85;
    v87 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v89 = v88;
  }

  else
  {
    v87 = 0;
    v89 = 0xF000000000000000;
  }

  v90 = v170;
  outlined consume of Data._Representation?(*(a1 + 34), *(a1 + 35));
  *(a1 + 34) = v87;
  *(a1 + 35) = v89;
  v91 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v91)
  {
    v92 = v91;
    v93 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v95 = v94;
  }

  else
  {
    v93 = 0;
    v95 = 0xF000000000000000;
  }

  outlined consume of Data._Representation?(*(a1 + 36), *(a1 + 37));
  *(a1 + 36) = v93;
  *(a1 + 37) = v95;
  type metadata accessor for NSArray(0, &lazy cache variable for type metadata for SASRecognition, 0x1E69C79F0);
  v96 = NSCoder.decodeObject<A>(of:forKey:)();

  *(a1 + 38) = v96;
  v97 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v97)
  {
    v98 = v97;
    v99 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v101 = v100;
  }

  else
  {
    v99 = 0;
    v101 = 0;
  }

  *(a1 + 39) = v99;
  *(a1 + 40) = v101;
  v102 = MEMORY[0x1E1299430](0xD00000000000001ELL, 0x80000001DC651B80);
  v103 = [a2 decodeBoolForKey_];

  a1[328] = v103;
  v104 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v104)
  {
    v105 = v104;
    v106 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v108 = v107;
  }

  else
  {
    v106 = 0;
    v108 = 0;
  }

  *(a1 + 42) = v106;
  *(a1 + 43) = v108;
  v109 = MEMORY[0x1E1299430](0xD000000000000011, 0x80000001DC651BC0);
  v110 = [a2 decodeBoolForKey_];

  a1[352] = v110;
  closure #1 in closure #1 in PommesResponse.init(coder:)(v90);
  v168[0] = type metadata accessor for PommesResponse.Builder(0);
  outlined assign with take of PommesContext?(v90, &a1[*(v168[0] + 136)]);
  v111 = swift_allocObject();
  *(v111 + 16) = v177;
  *(v111 + 32) = v176;
  *(v111 + 40) = type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  NSCoder.decodeObject(of:forKey:)();

  if (!*(&v181 + 1))
  {
    outlined destroy of ClientExperienceSignals?(&v180, &_sypSgMd, &_sypSgMR);
    goto LABEL_74;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, &_sSaySo8NSNumberCGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_74:
    v112 = MEMORY[0x1E69E7CC0];
    goto LABEL_75;
  }

  v112 = v183;
LABEL_75:
  v168[1] = v14;
  v169 = a2;
  v170 = a1;
  v113 = v112 & 0xFFFFFFFFFFFFFF8;
  if (v112 >> 62)
  {
LABEL_141:
    if (v112 < 0)
    {
      v167 = v112;
    }

    else
    {
      v167 = v113;
    }

    v114 = MEMORY[0x1E1299770](v167);
  }

  else
  {
    v114 = *((v112 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v115 = 0;
  v116 = MEMORY[0x1E69E7CC0];
  while (v114 != v115)
  {
    if ((v112 & 0xC000000000000001) != 0)
    {
      v117 = MEMORY[0x1E12996A0](v115, v112);
    }

    else
    {
      if (v115 >= *(v113 + 16))
      {
        goto LABEL_138;
      }

      v117 = *(v112 + 8 * v115 + 32);
    }

    v118 = v117;
    v119 = v115 + 1;
    if (__OFADD__(v115, 1))
    {
      __break(1u);
LABEL_138:
      __break(1u);
LABEL_139:
      __break(1u);
LABEL_140:
      __break(1u);
      goto LABEL_141;
    }

    v120 = [v117 integerValue];

    if (v120)
    {
      ++v115;
      if (v120 == 1)
      {
        v121 = 1;
        goto LABEL_87;
      }
    }

    else
    {
      v121 = 0;
LABEL_87:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v116 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v116 + 2) + 1, 1, v116);
      }

      v123 = *(v116 + 2);
      v122 = *(v116 + 3);
      if (v123 >= v122 >> 1)
      {
        v116 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v122 > 1), v123 + 1, 1, v116);
      }

      *(v116 + 2) = v123 + 1;
      v116[v123 + 32] = v121;
      v115 = v119;
    }
  }

  v124 = v170;

  *(v124 + 25) = v116;
  v125 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v125 || (v126 = v125, v127._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)(), PommesSearchReason.init(rawValue:)(v127), v126, v128 = v180, v180 == 5))
  {
    v128 = 0;
  }

  v124[232] = v128;
  v129 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v129)
  {
    goto LABEL_112;
  }

  v130 = v129;
  v131 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v131 || (v180 = 0uLL, v132 = v131, static String._conditionallyBridgeFromObjectiveC(_:result:)(), v132, (v133 = *(&v180 + 1)) == 0))
  {

    goto LABEL_112;
  }

  v134 = v180;
  v135 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v137 = v136;
  v138._countAndFlagsBits = v135;
  v138._object = v137;
  v139 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PommesCandidateId.CandidateIdType.init(rawValue:), v138);

  switch(v139)
  {
    case 0:

      outlined consume of PommesCandidateId?(*(v124 + 16), *(v124 + 17), *(v124 + 18), *(v124 + 19), v124[160]);
      *(v124 + 16) = v134;
      *(v124 + 17) = v133;
      *(v124 + 18) = 0;
      *(v124 + 19) = 0;
      v124[160] = 0;
      goto LABEL_112;
    case 1:
      v141 = NSCoder.decodeObject<A>(of:forKey:)();
      if (v141)
      {
        v180 = 0uLL;
        v142 = v141;
        static String._conditionallyBridgeFromObjectiveC(_:result:)();

        v143 = *(&v180 + 1);
        if (*(&v180 + 1))
        {
          v144 = v180;
          outlined consume of PommesCandidateId?(*(v124 + 16), *(v124 + 17), *(v124 + 18), *(v124 + 19), v124[160]);
          *(v124 + 16) = v134;
          *(v124 + 17) = v133;
          *(v124 + 18) = v144;
          *(v124 + 19) = v143;
          v140 = 1;
LABEL_111:
          v124[160] = v140;
          goto LABEL_112;
        }
      }

      else
      {
      }

      outlined consume of PommesCandidateId?(*(v124 + 16), *(v124 + 17), *(v124 + 18), *(v124 + 19), v124[160]);
      *(v124 + 8) = 0u;
      *(v124 + 9) = 0u;
      v140 = -1;
      goto LABEL_111;
    case 2:

      outlined consume of PommesCandidateId?(*(v124 + 16), *(v124 + 17), *(v124 + 18), *(v124 + 19), v124[160]);
      *(v124 + 16) = v134;
      *(v124 + 17) = v133;
      *(v124 + 18) = 0;
      *(v124 + 19) = 0;
      v140 = 2;
      goto LABEL_111;
  }

LABEL_112:
  v145 = swift_allocObject();
  *(v145 + 16) = v177;
  v146 = v174;
  *(v145 + 32) = v176;
  *(v145 + 40) = v146;
  NSCoder.decodeObject(of:forKey:)();

  if (!*(&v181 + 1))
  {
    outlined destroy of ClientExperienceSignals?(&v180, &_sypSgMd, &_sypSgMR);
    v149 = MEMORY[0x1E69E7CC0];
    v148 = v173;
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_117;
    }

    goto LABEL_131;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo6NSDataCGMd, &_sSaySo6NSDataCGMR);
  v147 = swift_dynamicCast();
  v148 = v173;
  if ((v147 & 1) == 0)
  {
    v149 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_117;
    }

LABEL_131:
    if (v149 < 0)
    {
      v161 = v149;
    }

    else
    {
      v161 = v149 & 0xFFFFFFFFFFFFFF8;
    }

    v112 = MEMORY[0x1E1299770](v161);
    if (v112)
    {
      goto LABEL_118;
    }

    goto LABEL_135;
  }

  v149 = v183;
  if (v183 >> 62)
  {
    goto LABEL_131;
  }

LABEL_117:
  v112 = *((v149 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v112)
  {
LABEL_118:
    v150 = 0;
    v176 = v149 & 0xFFFFFFFFFFFFFF8;
    *&v177 = v149 & 0xC000000000000001;
    v151 = (v172 + 56);
    v152 = MEMORY[0x1E69E7CC0];
    v174 = (v172 + 32);
    v171 = v149;
    while (1)
    {
      if (v177)
      {
        v153 = MEMORY[0x1E12996A0](v150, v149);
      }

      else
      {
        if (v150 >= *(v176 + 16))
        {
          goto LABEL_140;
        }

        v153 = *(v149 + 8 * v150 + 32);
      }

      v154 = v153;
      v155 = v150 + 1;
      if (__OFADD__(v150, 1))
      {
        goto LABEL_139;
      }

      v156 = v112;
      v183 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v184 = v157;
      v182 = 0;
      v180 = 0u;
      v181 = 0u;
      BinaryDecodingOptions.init()();
      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata and conformance Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata and conformance Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata, MEMORY[0x1E69BD5C0], MEMORY[0x1E69BD5B8]);
      v158 = v179;
      Message.init<A>(serializedBytes:extensions:partial:options:)();

      (*v151)(v148, 0, 1, v158);
      v159 = *v174;
      (*v174)(v175, v148, v158);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v152 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v152 + 2) + 1, 1, v152);
      }

      v112 = v156;
      v113 = *(v152 + 2);
      v160 = *(v152 + 3);
      if (v113 >= v160 >> 1)
      {
        v152 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v160 > 1), v113 + 1, 1, v152);
      }

      *(v152 + 2) = v113 + 1;
      v159(&v152[((*(v172 + 80) + 32) & ~*(v172 + 80)) + *(v172 + 72) * v113], v175, v179);
      v148 = v173;
      v149 = v171;
      ++v150;
      if (v155 == v112)
      {
        goto LABEL_136;
      }
    }
  }

LABEL_135:
  v152 = MEMORY[0x1E69E7CC0];
LABEL_136:

  v162 = v168[0];
  v163 = *(v168[0] + 140);
  v164 = v170;

  *&v164[v163] = v152;
  v165 = MEMORY[0x1E1299430](0xD000000000000015, 0x80000001DC651BE0);
  v166 = [v169 decodeBoolForKey_];

  v164[*(v162 + 144)] = v166;
}

uint64_t specialized _arrayForceCast<A, B>(_:)(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v10 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v1, 0);
    v2 = v10;
    v4 = a1 + 32;
    do
    {
      outlined copy of Data._Representation(*v4, *(v4 + 8));
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
      swift_dynamicCast();
      v5 = v9;
      v7 = *(v10 + 16);
      v6 = *(v10 + 24);
      if (v7 >= v6 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v6 > 1), v7 + 1, 1);
        v5 = v9;
      }

      *(v10 + 16) = v7 + 1;
      *(v10 + 16 * v7 + 32) = v5;
      v4 += 16;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t PommesResponse.__allocating_init(cachingCoder:requestId:pommesCandidateId:componentsWarmedUp:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = type metadata accessor for PommesResponse.Builder(0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v16 = v20 - v15;
  v17 = *(a4 + 16);
  v20[0] = *a4;
  v20[1] = v17;
  v21 = *(a4 + 32);
  PommesResponse.Builder.init()(v20 - v15);
  closure #1 in PommesResponse.init(cachingCoder:requestId:pommesCandidateId:componentsWarmedUp:)(v16, a1, a2, a3, v20, a5);

  outlined destroy of ClientExperienceSignals?(v20, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);

  outlined init with copy of PommesResponse.Builder(v16, v14);
  v18 = (*(v5 + 360))(v14);

  outlined destroy of PommesResponse.Builder(v16, type metadata accessor for PommesResponse.Builder);
  return v18;
}

void closure #1 in PommesResponse.init(cachingCoder:requestId:pommesCandidateId:componentsWarmedUp:)(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, _OWORD *a5, uint64_t a6)
{
  v177 = a5;
  v178 = a6;
  v175 = a4;
  v174 = a3;
  v8 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x1EEE9AC00](v8 - 8);
  v186 = &v170 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadataVSgMd, &_s10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadataVSgMR);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v180 = &v170 - v11;
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata();
  v179 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v182 = &v170 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v173 = &v170 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
  v17 = swift_allocObject();
  v184 = xmmword_1DC64ED70;
  *(v17 + 16) = xmmword_1DC64ED70;
  v18 = type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
  *(v17 + 32) = v18;
  *(v17 + 40) = type metadata accessor for Experience(0);
  NSCoder.decodeObject(of:forKey:)();

  if (*(&v188 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SiriInformationSearch10ExperienceCGMd, &_sSay21SiriInformationSearch10ExperienceCGMR);
    if (swift_dynamicCast())
    {
      v19 = v190[0];
    }

    else
    {
      v19 = 0;
    }
  }

  else
  {
    outlined destroy of ClientExperienceSignals?(&v187, &_sypSgMd, &_sypSgMR);
    v19 = 0;
  }

  *a1 = v19;
  v20 = swift_allocObject();
  *(v20 + 16) = v184;
  *(v20 + 32) = v18;
  *(v20 + 40) = type metadata accessor for PommesResult();
  NSCoder.decodeObject(of:forKey:)();

  if (*(&v188 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SiriInformationSearch12PommesResultCGMd, &_sSay21SiriInformationSearch12PommesResultCGMR);
    if (swift_dynamicCast())
    {
      v21 = v190[0];
    }

    else
    {
      v21 = 0;
    }
  }

  else
  {
    outlined destroy of ClientExperienceSignals?(&v187, &_sypSgMd, &_sypSgMR);
    v21 = 0;
  }

  *(a1 + 8) = v21;
  v22 = type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSData, 0x1E695DEF0);
  v183 = 0xD000000000000013;
  v185 = v22;
  v23 = NSCoder.decodeObject<A>(of:forKey:)();
  v176 = v12;
  if (v23)
  {
    v24 = v23;
    v25 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v27 = v26;
  }

  else
  {
    v25 = 0;
    v27 = 0xF000000000000000;
  }

  outlined consume of Data._Representation?(*(a1 + 16), *(a1 + 24));
  *(a1 + 16) = v25;
  *(a1 + 24) = v27;
  v28 = type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  v172 = 0xD000000000000012;
  v29 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v29)
  {
    v30 = v29;
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v33 = v32;
  }

  else
  {
    v33 = 0xE400000000000000;
    v31 = 1701736302;
  }

  *(a1 + 32) = v31;
  *(a1 + 40) = v33;
  v34 = MEMORY[0x1E1299430](0xD000000000000019, 0x80000001DC651A80);
  v35 = [a2 decodeBoolForKey_];

  *(a1 + 48) = v35;
  v36 = swift_allocObject();
  *(v36 + 16) = v184;
  *(v36 + 32) = v18;
  *(v36 + 40) = v28;
  NSCoder.decodeObject(of:forKey:)();

  if (*(&v188 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    if (swift_dynamicCast())
    {
      v37 = v190[0];
      goto LABEL_22;
    }
  }

  else
  {
    outlined destroy of ClientExperienceSignals?(&v187, &_sypSgMd, &_sypSgMR);
  }

  v37 = MEMORY[0x1E69E7CC0];
LABEL_22:

  *(a1 + 56) = v37;
  v38 = swift_allocObject();
  *(v38 + 16) = v184;
  *(v38 + 32) = v18;
  *(v38 + 40) = v28;
  NSCoder.decodeObject(of:forKey:)();

  if (*(&v188 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
    if (swift_dynamicCast())
    {
      v39 = v190[0];
      goto LABEL_27;
    }
  }

  else
  {
    outlined destroy of ClientExperienceSignals?(&v187, &_sypSgMd, &_sypSgMR);
  }

  v39 = MEMORY[0x1E69E7CC0];
LABEL_27:

  *(a1 + 64) = v39;
  v40 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v40)
  {
    v41 = v40;
    v42 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v44 = v43;
  }

  else
  {
    v42 = 0;
    v44 = 0xF000000000000000;
  }

  outlined consume of Data._Representation?(*(a1 + 72), *(a1 + 80));
  *(a1 + 72) = v42;
  *(a1 + 80) = v44;
  v45 = swift_allocObject();
  *(v45 + 16) = v184;
  v46 = v185;
  *(v45 + 32) = v18;
  *(v45 + 40) = v46;
  NSCoder.decodeObject(of:forKey:)();

  if (*(&v188 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
    if (swift_dynamicCast())
    {
      v47 = v190[0];
      goto LABEL_35;
    }
  }

  else
  {
    outlined destroy of ClientExperienceSignals?(&v187, &_sypSgMd, &_sypSgMR);
  }

  v47 = MEMORY[0x1E69E7CC0];
LABEL_35:
  v48 = specialized _arrayForceCast<A, B>(_:)(v47);

  *(a1 + 184) = v48;
  v49 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v49)
  {
    v50 = v49;
    v51 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v53 = v52;
  }

  else
  {
    v51 = 0;
    v53 = 0xF000000000000000;
  }

  outlined consume of Data._Representation?(*(a1 + 88), *(a1 + 96));
  *(a1 + 88) = v51;
  *(a1 + 96) = v53;
  v54 = swift_allocObject();
  *(v54 + 16) = v184;
  v55 = v185;
  *(v54 + 32) = v18;
  *(v54 + 40) = v55;
  NSCoder.decodeObject(of:forKey:)();

  if (*(&v188 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay10Foundation4DataVGMd, &_sSay10Foundation4DataVGMR);
    v56 = swift_dynamicCast();
    v57 = v183;
    if (v56)
    {
      v58 = v190[0];
      v59 = &off_1E8636000;
      goto LABEL_43;
    }
  }

  else
  {
    outlined destroy of ClientExperienceSignals?(&v187, &_sypSgMd, &_sypSgMR);
    v57 = v183;
  }

  v59 = &off_1E8636000;
  v58 = MEMORY[0x1E69E7CC0];
LABEL_43:
  v60 = specialized _arrayForceCast<A, B>(_:)(v58);

  *(a1 + 192) = v60;
  v61 = MEMORY[0x1E1299430](v57, 0x80000001DC651AE0);
  LOBYTE(v60) = [a2 v59[238]];

  *(a1 + 104) = v60;
  v62 = MEMORY[0x1E1299430](0xD000000000000014, 0x80000001DC651B00);
  LOBYTE(v60) = [a2 v59[238]];

  *(a1 + 161) = v60;
  v63 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v63)
  {
    v64 = v63;
    v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v67 = v66;
  }

  else
  {
    v65 = 0;
    v67 = 0;
  }

  *(a1 + 168) = v65;
  *(a1 + 176) = v67;
  v68 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v68)
  {
    v69 = v68;
    v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v72 = v71;
  }

  else
  {
    v70 = 0;
    v72 = 0;
  }

  *(a1 + 208) = v70;
  *(a1 + 216) = v72;
  type metadata accessor for NSArray(0, &lazy cache variable for type metadata for CLLocation, 0x1E6985C40);
  v73 = NSCoder.decodeObject<A>(of:forKey:)();

  *(a1 + 224) = v73;
  v74 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v74)
  {
    v75 = v74;
    v76 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v78 = v77;
  }

  else
  {
    v76 = 0;
    v78 = 0xE000000000000000;
  }

  *(a1 + 240) = v76;
  *(a1 + 248) = v78;
  v79 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v79)
  {
    v80 = v79;
    v81 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v83 = v82;
  }

  else
  {
    v81 = 0;
    v83 = 0;
  }

  *(a1 + 256) = v81;
  *(a1 + 264) = v83;
  v84 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v84)
  {
    v85 = v84;
    v86 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v88 = v87;
  }

  else
  {
    v86 = 0;
    v88 = 0xF000000000000000;
  }

  outlined consume of Data._Representation?(*(a1 + 272), *(a1 + 280));
  *(a1 + 272) = v86;
  *(a1 + 280) = v88;
  v89 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v89)
  {
    v90 = v89;
    v91 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v93 = v92;
  }

  else
  {
    v91 = 0;
    v93 = 0xF000000000000000;
  }

  outlined consume of Data._Representation?(*(a1 + 288), *(a1 + 296));
  *(a1 + 288) = v91;
  *(a1 + 296) = v93;
  type metadata accessor for NSArray(0, &lazy cache variable for type metadata for SASRecognition, 0x1E69C79F0);
  v94 = NSCoder.decodeObject<A>(of:forKey:)();

  *(a1 + 304) = v94;
  v95 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v95)
  {
    v96 = v95;
    v97 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v99 = v98;
  }

  else
  {
    v97 = 0;
    v99 = 0;
  }

  *(a1 + 312) = v97;
  *(a1 + 320) = v99;
  v100 = MEMORY[0x1E1299430](0xD00000000000001ELL, 0x80000001DC651B80);
  v101 = [a2 v59[238]];

  *(a1 + 328) = v101;
  v102 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v102)
  {
    v103 = v102;
    v104 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v106 = v105;
  }

  else
  {
    v104 = 0;
    v106 = 0;
  }

  v183 = v16;

  *(a1 + 336) = v104;
  *(a1 + 344) = v106;
  v107 = MEMORY[0x1E1299430](0xD000000000000011, 0x80000001DC651BC0);
  v108 = [a2 v59[238]];

  *(a1 + 352) = v108;
  v109 = v173;
  closure #1 in closure #1 in PommesResponse.init(coder:)(v173);
  v172 = type metadata accessor for PommesResponse.Builder(0);
  outlined assign with take of PommesContext?(v109, a1 + *(v172 + 136));
  v110 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v110 || (v111 = v110, v112._countAndFlagsBits = static String._unconditionallyBridgeFromObjectiveC(_:)(), PommesSearchReason.init(rawValue:)(v112), v111, v113 = v187, v187 == 5))
  {
    v113 = 0;
  }

  *(a1 + 232) = v113;
  v114 = v175;

  *(a1 + 112) = v174;
  *(a1 + 120) = v114;
  v115 = *(a1 + 128);
  v116 = *(a1 + 136);
  v117 = *(a1 + 144);
  v118 = *(a1 + 152);
  v119 = *(a1 + 160);
  v120 = v177;
  outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(v177, &v187, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  outlined consume of PommesCandidateId?(v115, v116, v117, v118, v119);
  v121 = v120[1];
  *(a1 + 128) = *v120;
  *(a1 + 144) = v121;
  *(a1 + 160) = *(v120 + 32);
  v122 = v178;

  *(a1 + 200) = v122;
  *(a1 + 233) = 1;
  v123 = NSCoder.decodeObject<A>(of:forKey:)();
  v171 = a1;
  v181 = v18;
  if (v123)
  {
    v124 = v123;
    v125 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v127 = v126;
  }

  else
  {
    v125 = 0;
    v127 = 0;
  }

  v177 = a2;
  closure #2 in closure #1 in PommesResponse.init(cachingCoder:requestId:pommesCandidateId:componentsWarmedUp:)(&v187);
  v128 = *(&v187 + 1);
  v129 = v187;
  v130 = *(&v188 + 1);
  v131 = v188;
  LOBYTE(v132) = v189;
  if (one-time initialization token for pommes != -1)
  {
    goto LABEL_102;
  }

  while (1)
  {
    v133 = type metadata accessor for Logger();
    v134 = __swift_project_value_buffer(v133, static Logger.pommes);

    outlined copy of PommesCandidateId?(v129, v128, v131, v130, v132);
    v178 = v134;
    v135 = Logger.logObject.getter();
    v136 = static os_log_type_t.debug.getter();

    outlined consume of PommesCandidateId?(v129, v128, v131, v130, v132);
    if (os_log_type_enabled(v135, v136))
    {
      v137 = v125;
      v138 = swift_slowAlloc();
      v175 = swift_slowAlloc();
      v190[0] = v175;
      *v138 = 136315394;
      *&v187 = v137;
      *(&v187 + 1) = v127;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
      v139 = String.init<A>(describing:)();
      v141 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v139, v140, v190);

      *(v138 + 4) = v141;
      *(v138 + 12) = 2080;
      *&v187 = v129;
      *(&v187 + 1) = v128;
      *&v188 = v131;
      *(&v188 + 1) = v130;
      LOBYTE(v189) = v132;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
      v142 = String.init<A>(describing:)();
      v144 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v142, v143, v190);

      *(v138 + 14) = v144;
      _os_log_impl(&dword_1DC5C3000, v135, v136, "PommesResponse : Cached response constructed from:\n  requestId = %s\n  pommesCandidateId = %s", v138, 0x16u);
      v145 = v175;
      swift_arrayDestroy();
      MEMORY[0x1E1299E70](v145, -1, -1);
      MEMORY[0x1E1299E70](v138, -1, -1);
    }

    else
    {

      outlined consume of PommesCandidateId?(v129, v128, v131, v130, v132);
    }

    v146 = MEMORY[0x1E1299430](0xD000000000000010, 0x80000001DC651B40);
    v147 = [v177 decodeBoolForKey_];

    v132 = v176;
    v148 = v181;
    if (v147)
    {
      v149 = Logger.logObject.getter();
      v150 = static os_log_type_t.fault.getter();
      if (os_log_type_enabled(v149, v150))
      {
        v151 = swift_slowAlloc();
        *v151 = 0;
        _os_log_impl(&dword_1DC5C3000, v149, v150, "PommesResponse : A cached response should not be cached", v151, 2u);
        MEMORY[0x1E1299E70](v151, -1, -1);
      }
    }

    v152 = swift_allocObject();
    *(v152 + 16) = v184;
    v153 = v185;
    *(v152 + 32) = v148;
    *(v152 + 40) = v153;
    NSCoder.decodeObject(of:forKey:)();

    if (*(&v188 + 1))
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo6NSDataCGMd, &_sSaySo6NSDataCGMR);
      v154 = swift_dynamicCast();
      v127 = v180;
      if (v154)
      {
        v155 = v190[0];
        goto LABEL_86;
      }
    }

    else
    {
      outlined destroy of ClientExperienceSignals?(&v187, &_sypSgMd, &_sypSgMR);
      v127 = v180;
    }

    v155 = MEMORY[0x1E69E7CC0];
LABEL_86:
    if (v155 >> 62)
    {
      break;
    }

    v156 = *((v155 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v156)
    {
      goto LABEL_107;
    }

LABEL_88:
    v128 = 0;
    v125 = 0;
    v185 = v155 & 0xC000000000000001;
    *&v184 = v155 & 0xFFFFFFFFFFFFFF8;
    v131 = (v179 + 56);
    v183 = MEMORY[0x1E69E7CC0];
    v181 = (v179 + 32);
    v178 = v155;
    while (1)
    {
      if (v185)
      {
        v157 = MEMORY[0x1E12996A0](v128, v155);
      }

      else
      {
        if (v128 >= *(v184 + 16))
        {
          goto LABEL_101;
        }

        v157 = *(v155 + 8 * v128 + 32);
      }

      v158 = v157;
      v129 = v128 + 1;
      if (__OFADD__(v128, 1))
      {
        break;
      }

      v190[0] = static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v190[1] = v159;
      v189 = 0;
      v187 = 0u;
      v188 = 0u;
      BinaryDecodingOptions.init()();
      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata and conformance Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata and conformance Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata, MEMORY[0x1E69BD5C0], MEMORY[0x1E69BD5B8]);
      Message.init<A>(serializedBytes:extensions:partial:options:)();

      (*v131)(v127, 0, 1, v132);
      v160 = *v181;
      (*v181)(v182, v127, v132);
      v161 = v183;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v161 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v161 + 2) + 1, 1, v161);
      }

      v130 = *(v161 + 2);
      v162 = *(v161 + 3);
      if (v130 >= v162 >> 1)
      {
        v161 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v162 > 1), v130 + 1, 1, v161);
      }

      *(v161 + 2) = v130 + 1;
      v163 = (*(v179 + 80) + 32) & ~*(v179 + 80);
      v183 = v161;
      v160(&v161[v163 + *(v179 + 72) * v130], v182, v132);
      v127 = v180;
      v155 = v178;
      ++v128;
      if (v129 == v156)
      {
        goto LABEL_108;
      }
    }

    __break(1u);
LABEL_101:
    __break(1u);
LABEL_102:
    swift_once();
  }

  if (v155 < 0)
  {
    v164 = v155;
  }

  else
  {
    v164 = v155 & 0xFFFFFFFFFFFFFF8;
  }

  v156 = MEMORY[0x1E1299770](v164);
  if (v156)
  {
    goto LABEL_88;
  }

LABEL_107:
  v183 = MEMORY[0x1E69E7CC0];
LABEL_108:

  v165 = v172;
  v166 = *(v172 + 140);
  v167 = v171;

  *(v167 + v166) = v183;
  v168 = MEMORY[0x1E1299430](0xD000000000000015, 0x80000001DC651BE0);
  v169 = [v177 decodeBoolForKey_];

  *(v167 + *(v165 + 144)) = v169;
}

uint64_t closure #1 in closure #1 in PommesResponse.init(coder:)@<X0>(uint64_t a1@<X8>)
{
  type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSData, 0x1E695DEF0);
  v2 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v2)
  {
    v3 = v2;
    v4 = static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v6 = v5;

    type metadata accessor for JSONDecoder();
    swift_allocObject();
    JSONDecoder.init()();
    v7 = type metadata accessor for PommesContext(0);
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata and conformance Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata(&lazy protocol witness table cache variable for type PommesContext and conformance PommesContext, type metadata accessor for PommesContext, &protocol conformance descriptor for PommesContext);
    dispatch thunk of JSONDecoder.decode<A>(_:from:)();

    outlined consume of Data._Representation(v4, v6);
    v9 = *(*(v7 - 8) + 56);
    v10 = a1;
    v11 = 0;
    v12 = v7;
  }

  else
  {
    v8 = type metadata accessor for PommesContext(0);
    v9 = *(*(v8 - 8) + 56);
    v12 = v8;
    v10 = a1;
    v11 = 1;
  }

  return v9(v10, v11, 1, v12);
}

void closure #2 in closure #1 in PommesResponse.init(cachingCoder:requestId:pommesCandidateId:componentsWarmedUp:)(uint64_t a1@<X8>)
{
  type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  v2 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v2)
  {
    v3 = v2;
    v4 = NSCoder.decodeObject<A>(of:forKey:)();
    if (v4)
    {
      v5 = v4;
      static String._conditionallyBridgeFromObjectiveC(_:result:)();
    }
  }

  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = -1;
}

Swift::Void __swiftcall PommesResponse.encode(with:)(NSCoder with)
{
  v2 = v1;
  v151 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata();
  v153 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v152 = &v146 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v154 = &v146 - v6;
  v155 = type metadata accessor for PommesContext(0);
  v150 = *(v155 - 1);
  v7 = MEMORY[0x1EEE9AC00](v155);
  v147 = &v146 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x170))(v7);
  type metadata accessor for Experience(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v11 = MEMORY[0x1E1299430](0x6E65697265707865, 0xEB00000000736563);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v11];

  (*((*v9 & *v2) + 0x188))();
  type metadata accessor for PommesResult();
  v12 = Array._bridgeToObjectiveC()().super.isa;

  v13 = MEMORY[0x1E1299430](0x6552746E65696C63, 0xED000073746C7573);
  [(objc_class *)with.super.isa encodeObject:v12 forKey:v13];

  v14 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_conversationContext + 8);
  if (v14 >> 60 != 15)
  {
    v15 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_conversationContext);
    v16 = objc_allocWithZone(MEMORY[0x1E695DEF0]);
    outlined copy of Data?(v15, v14);
    outlined copy of Data._Representation(v15, v14);
    v17 = Data._bridgeToObjectiveC()().super.isa;
    v18 = [v16 initWithData_];

    outlined consume of Data._Representation?(v15, v14);
    v19 = MEMORY[0x1E1299430](0xD000000000000013, 0x80000001DC651D20);
    [(objc_class *)with.super.isa encodeObject:v18 forKey:v19];

    outlined consume of Data._Representation?(v15, v14);
  }

  v20 = MEMORY[0x1E1299430](*(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_metadataDomainName), *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_metadataDomainName + 8));
  v149 = 0xD000000000000012;
  v21 = MEMORY[0x1E1299430]();
  [(objc_class *)with.super.isa encodeObject:v20 forKey:v21];

  v22 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_metadataFallbackTriggered);
  v23 = MEMORY[0x1E1299430](0xD000000000000019, 0x80000001DC651A80);
  [(objc_class *)with.super.isa encodeBool:v22 forKey:v23];

  (*((*v9 & *v2) + 0x1A0))();
  v24 = Array._bridgeToObjectiveC()().super.isa;

  v25 = MEMORY[0x1E1299430](0x64657265646E6572, 0xED00007374786554);
  [(objc_class *)with.super.isa encodeObject:v24 forKey:v25];

  (*((*v9 & *v2) + 0x1B8))();
  v26 = Array._bridgeToObjectiveC()().super.isa;

  v27 = MEMORY[0x1E1299430](0xD000000000000015, 0x80000001DC651AA0);
  [(objc_class *)with.super.isa encodeObject:v26 forKey:v27];

  v28 = (*((*v9 & *v2) + 0x1D0))();
  if (v29 >> 60 != 15)
  {
    v30 = v28;
    v31 = v29;
    v32 = objc_allocWithZone(MEMORY[0x1E695DEF0]);
    outlined copy of Data._Representation(v30, v31);
    v33 = Data._bridgeToObjectiveC()().super.isa;
    v34 = [v32 initWithData_];

    outlined consume of Data._Representation?(v30, v31);
    v35 = MEMORY[0x1E1299430](0xD000000000000018, 0x80000001DC651D00);
    [(objc_class *)with.super.isa encodeObject:v34 forKey:v35];

    outlined consume of Data._Representation?(v30, v31);
  }

  (*((*v9 & *v2) + 0x1E8))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  v36 = Array._bridgeToObjectiveC()().super.isa;

  v37 = MEMORY[0x1E1299430](0x706574536B736174, 0xEC00000073676F4CLL);
  [(objc_class *)with.super.isa encodeObject:v36 forKey:v37];

  v38 = (*((*v9 & *v2) + 0x200))();
  if (v39 >> 60 != 15)
  {
    v40 = v38;
    v41 = v39;
    v42 = objc_allocWithZone(MEMORY[0x1E695DEF0]);
    outlined copy of Data._Representation(v40, v41);
    v43 = Data._bridgeToObjectiveC()().super.isa;
    v44 = [v42 initWithData_];

    outlined consume of Data._Representation?(v40, v41);
    v45 = MEMORY[0x1E1299430](0xD000000000000022, 0x80000001DC651CD0);
    [(objc_class *)with.super.isa encodeObject:v44 forKey:v45];

    outlined consume of Data._Representation?(v40, v41);
  }

  (*((*v9 & *v2) + 0x218))();
  v46 = Array._bridgeToObjectiveC()().super.isa;

  v47 = MEMORY[0x1E1299430](0xD000000000000016, 0x80000001DC651AC0);
  [(objc_class *)with.super.isa encodeObject:v46 forKey:v47];

  LOBYTE(v47) = (*((*v9 & *v2) + 0x230))();
  v148 = 0xD000000000000013;
  v48 = MEMORY[0x1E1299430]();
  [(objc_class *)with.super.isa encodeBool:v47 & 1 forKey:v48];

  if (*(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_requestId + 8))
  {
    v49 = MEMORY[0x1E1299430](*(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_requestId));
    v50 = MEMORY[0x1E1299430](0x4974736575716572, 0xE900000000000064);
    [(objc_class *)with.super.isa encodeObject:v49 forKey:v50];
  }

  v51 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_isHandledByPreflight);
  v52 = MEMORY[0x1E1299430](0xD000000000000014, 0x80000001DC651B00);
  [(objc_class *)with.super.isa encodeBool:v51 forKey:v52];

  if (*(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_preflightClientHandlerIdentifier + 8))
  {
    v53 = MEMORY[0x1E1299430](*(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_preflightClientHandlerIdentifier));
    v54 = MEMORY[0x1E1299430](0xD000000000000020, 0x80000001DC651CA0);
    [(objc_class *)with.super.isa encodeObject:v53 forKey:v54];
  }

  v55 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_componentsWarmedUp);
  v56 = *(v55 + 16);
  if (v56)
  {
    v156 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v57 = (v55 + 32);
    do
    {
      v58 = *v57++;
      [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v56;
    }

    while (v56);
  }

  type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  v59 = Array._bridgeToObjectiveC()().super.isa;

  v60 = v149;
  v61 = MEMORY[0x1E1299430](v149, 0x80000001DC651B20);
  [(objc_class *)with.super.isa encodeObject:v59 forKey:v61];

  v62 = (*((*v9 & *v2) + 0x258))();
  if (v63)
  {
    v64 = MEMORY[0x1E1299430](v62);

    v65 = MEMORY[0x1E1299430](v60, 0x80000001DC651C80);
    [(objc_class *)with.super.isa encodeObject:v64 forKey:v65];
  }

  v66 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_requestLocation);
  if (v66)
  {
    v67 = v66;
    v68 = MEMORY[0x1E1299430](0x4C74736575716572, 0xEF6E6F697461636FLL);
    [(objc_class *)with.super.isa encodeObject:v67 forKey:v68];
  }

  (*((*v9 & *v2) + 0x270))(&v156, v62);
  v69 = 0xE700000000000000;
  v70 = 0x6E776F6E6B6E75;
  v71 = 0xEF6B6361626C6C61;
  v72 = 0x4665737261506F6ELL;
  v73 = 0x80000001DC6511D0;
  if (v156 == 3)
  {
    v74 = 0xD000000000000016;
  }

  else
  {
    v74 = 0xD000000000000010;
  }

  if (v156 != 3)
  {
    v73 = 0x80000001DC6511F0;
  }

  if (v156 != 2)
  {
    v72 = v74;
    v71 = v73;
  }

  if (v156)
  {
    v70 = 0x616D6F446F666E69;
    v69 = 0xEF65737261506E69;
  }

  if (v156 <= 1u)
  {
    v75 = v70;
  }

  else
  {
    v75 = v72;
  }

  if (v156 <= 1u)
  {
    v76 = v69;
  }

  else
  {
    v76 = v71;
  }

  v77 = MEMORY[0x1E1299430](v75, v76);

  v78 = MEMORY[0x1E1299430](0x6552686372616573, 0xEC0000006E6F7361);
  [(objc_class *)with.super.isa encodeObject:v77 forKey:v78];

  v80 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pommesCandidateId);
  v79 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pommesCandidateId + 8);
  v81 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pommesCandidateId + 16);
  v82 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pommesCandidateId + 32);
  if (v82 > 1)
  {
    if (v82 != 2)
    {
      goto LABEL_43;
    }

    v149 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pommesCandidateId + 24);
    v83 = 0xE900000000000073;
    v84 = 0x656D6D6F506E7572;
  }

  else
  {
    v149 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_pommesCandidateId + 24);
    if (v82)
    {
      v83 = 0xE500000000000000;
      v84 = 0x636F64656DLL;
    }

    else
    {
      v83 = 0xE200000000000000;
      v84 = 25458;
    }
  }

  v85 = MEMORY[0x1E1299430](v84, v83);

  v86 = MEMORY[0x1E1299430](0x74616469646E6163, 0xEF65707954644965);
  [(objc_class *)with.super.isa encodeObject:v85 forKey:v86];

  if (v82 == 1)
  {
    v87 = MEMORY[0x1E1299430](v80, v79);
    v88 = MEMORY[0x1E1299430](0x74616469646E6163, 0xEB00000000644965);
    [(objc_class *)with.super.isa encodeObject:v87 forKey:v88];

    v89 = MEMORY[0x1E1299430](v81, v149);
    v90 = MEMORY[0x1E1299430](0x6449756374, 0xE500000000000000);
  }

  else
  {
    v89 = MEMORY[0x1E1299430](v80, v79);
    v90 = MEMORY[0x1E1299430](0x74616469646E6163, 0xEB00000000644965);
  }

  [(objc_class *)with.super.isa encodeObject:v89 forKey:v90];

LABEL_43:
  v91 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_isCachedResponse);
  v92 = MEMORY[0x1E1299430](0xD000000000000010, 0x80000001DC651B40);
  [(objc_class *)with.super.isa encodeBool:v91 forKey:v92];

  v93 = MEMORY[0x1E1299430](*(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_searchRequestUtterance), *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_searchRequestUtterance + 8));
  v94 = MEMORY[0x1E1299430](0xD000000000000016, 0x80000001DC651B60);
  [(objc_class *)with.super.isa encodeObject:v93 forKey:v94];

  if (*(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_sharedUserId + 8))
  {
    v95 = MEMORY[0x1E1299430](*(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_sharedUserId));
    v96 = MEMORY[0x1E1299430](0x7355646572616873, 0xEC00000064497265);
    [(objc_class *)with.super.isa encodeObject:v95 forKey:v96];
  }

  v97 = (v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_encodedNLUserParses);
  v98 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_encodedNLUserParses + 8);
  if (v98 >> 60 != 15)
  {
    v99 = *v97;
    outlined copy of Data._Representation(*v97, *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_encodedNLUserParses + 8));
    v100 = Data._bridgeToObjectiveC()().super.isa;
    v101 = MEMORY[0x1E1299430](v148, 0x80000001DC651C60);
    [(objc_class *)with.super.isa encodeObject:v100 forKey:v101];

    outlined consume of Data._Representation?(v99, v98);
  }

  v102 = (v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_encodedNLFallbackParse);
  v103 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_encodedNLFallbackParse + 8);
  if (v103 >> 60 != 15)
  {
    v104 = *v102;
    outlined copy of Data._Representation(*v102, *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_encodedNLFallbackParse + 8));
    v105 = Data._bridgeToObjectiveC()().super.isa;
    v106 = MEMORY[0x1E1299430](0xD000000000000016, 0x80000001DC651C40);
    [(objc_class *)with.super.isa encodeObject:v105 forKey:v106];

    outlined consume of Data._Representation?(v104, v103);
  }

  v107 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_asrRecognition);
  if (v107)
  {
    v108 = v107;
    v109 = MEMORY[0x1E1299430](0x676F636552727361, 0xEE006E6F6974696ELL);
    [(objc_class *)with.super.isa encodeObject:v108 forKey:v109];
  }

  if (*(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_responseVariantResult + 8))
  {
    v110 = MEMORY[0x1E1299430](*(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_responseVariantResult));
    v111 = MEMORY[0x1E1299430](0xD000000000000015, 0x80000001DC651C20);
    [(objc_class *)with.super.isa encodeObject:v110 forKey:v111];
  }

  v112 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_isLowConfidenceKnowledgeResult);
  v113 = MEMORY[0x1E1299430](0xD00000000000001ELL, 0x80000001DC651B80);
  [(objc_class *)with.super.isa encodeBool:v112 forKey:v113];

  if (*(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_albusMultiturnRewrite + 8))
  {
    v114 = MEMORY[0x1E1299430](*(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_albusMultiturnRewrite));
  }

  else
  {
    v114 = 0;
  }

  v115 = MEMORY[0x1E1299430](0xD000000000000015, 0x80000001DC651BA0);
  [(objc_class *)with.super.isa encodeObject:v114 forKey:v115];
  swift_unknownObjectRelease();

  v116 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_isRelatedQuestion);
  v117 = MEMORY[0x1E1299430](0xD000000000000011, 0x80000001DC651BC0);
  [(objc_class *)with.super.isa encodeBool:v116 forKey:v117];

  type metadata accessor for JSONEncoder();
  swift_allocObject();
  v118 = JSONEncoder.init()();
  v119 = v154;
  outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_previousPommesContext, v154, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v120 = (*(v150 + 6))(v119, 1, v155);
  v148 = v118;
  if (v120 == 1)
  {
    outlined destroy of ClientExperienceSignals?(v119, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  }

  else
  {
    v121 = v147;
    outlined init with take of PommesContext(v119, v147);
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata and conformance Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata(&lazy protocol witness table cache variable for type PommesContext and conformance PommesContext, type metadata accessor for PommesContext, &protocol conformance descriptor for PommesContext);
    v122 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v124 = v123;
    v125 = Data._bridgeToObjectiveC()().super.isa;
    v126 = MEMORY[0x1E1299430](0xD000000000000015, 0x80000001DC651C00);
    [(objc_class *)with.super.isa encodeObject:v125 forKey:v126];
    outlined consume of Data._Representation(v122, v124);

    outlined destroy of PommesResponse.Builder(v121, type metadata accessor for PommesContext);
  }

  v149 = v2;
  v150 = with.super.isa;
  v127 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_domainUseCases);
  v128 = *(v127 + 16);
  v129 = v152;
  if (v128)
  {
    v130 = *(v153 + 16);
    v131 = v127 + ((*(v153 + 80) + 32) & ~*(v153 + 80));
    v154 = *(v153 + 72);
    v155 = v130;
    v132 = (v153 + 8);
    v133 = MEMORY[0x1E69E7CC0];
    v134 = v151;
    v153 += 16;
    v130(v152, v131, v151);
    while (1)
    {
      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata and conformance Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata and conformance Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata, MEMORY[0x1E69BD5C0], MEMORY[0x1E69BD5B8]);
      v135 = Message.serializedData(partial:)();
      v137 = v136;
      (*v132)(v129, v134);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v133 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v133 + 2) + 1, 1, v133);
      }

      v139 = *(v133 + 2);
      v138 = *(v133 + 3);
      if (v139 >= v138 >> 1)
      {
        v133 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v138 > 1), v139 + 1, 1, v133);
      }

      *(v133 + 2) = v139 + 1;
      v140 = &v133[16 * v139];
      *(v140 + 4) = v135;
      *(v140 + 5) = v137;
      v134 = v151;
      v129 = v152;
      v131 += v154;
      if (!--v128)
      {
        break;
      }

      v155(v152, v131, v151);
    }
  }

  v141 = Array._bridgeToObjectiveC()().super.isa;

  v142 = MEMORY[0x1E1299430](0x73556E69616D6F64, 0xEE00736573614365);
  v143 = v150;
  [(objc_class *)v150 encodeObject:v141 forKey:v142];

  v144 = *(v149 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_isQueryDirectQuestion);
  v145 = MEMORY[0x1E1299430](0xD000000000000015, 0x80000001DC651BE0);
  [(objc_class *)v143 encodeBool:v144 forKey:v145];
}

Swift::Void __swiftcall PommesResponse.encode(cachingCoder:)(NSCoder cachingCoder)
{
  v2 = v1;
  v116 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata();
  v118 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v117 = v113 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v119 = v113 - v6;
  v120 = type metadata accessor for PommesContext(0);
  v114 = *(v120 - 1);
  v7 = MEMORY[0x1EEE9AC00](v120);
  v113[0] = v113 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v1) + 0x170))(v7);
  type metadata accessor for Experience(0);
  isa = Array._bridgeToObjectiveC()().super.isa;

  v11 = MEMORY[0x1E1299430](0x6E65697265707865, 0xEB00000000736563);
  [(objc_class *)cachingCoder.super.isa encodeObject:isa forKey:v11];

  (*((*v9 & *v2) + 0x188))();
  type metadata accessor for PommesResult();
  v12 = Array._bridgeToObjectiveC()().super.isa;

  v13 = MEMORY[0x1E1299430](0x6552746E65696C63, 0xED000073746C7573);
  [(objc_class *)cachingCoder.super.isa encodeObject:v12 forKey:v13];

  v14 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_conversationContext + 8);
  if (v14 >> 60 != 15)
  {
    v15 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_conversationContext);
    v16 = objc_allocWithZone(MEMORY[0x1E695DEF0]);
    outlined copy of Data?(v15, v14);
    outlined copy of Data._Representation(v15, v14);
    v17 = Data._bridgeToObjectiveC()().super.isa;
    v18 = [v16 initWithData_];

    outlined consume of Data._Representation?(v15, v14);
    v19 = MEMORY[0x1E1299430](0xD000000000000013, 0x80000001DC651D20);
    [(objc_class *)cachingCoder.super.isa encodeObject:v18 forKey:v19];

    outlined consume of Data._Representation?(v15, v14);
  }

  v20 = MEMORY[0x1E1299430](*(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_metadataDomainName), *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_metadataDomainName + 8));
  v21 = MEMORY[0x1E1299430](0xD000000000000012, 0x80000001DC651A60);
  [(objc_class *)cachingCoder.super.isa encodeObject:v20 forKey:v21];

  v22 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_metadataFallbackTriggered);
  v23 = MEMORY[0x1E1299430](0xD000000000000019, 0x80000001DC651A80);
  [(objc_class *)cachingCoder.super.isa encodeBool:v22 forKey:v23];

  (*((*v9 & *v2) + 0x1A0))();
  v24 = Array._bridgeToObjectiveC()().super.isa;

  v25 = MEMORY[0x1E1299430](0x64657265646E6572, 0xED00007374786554);
  [(objc_class *)cachingCoder.super.isa encodeObject:v24 forKey:v25];

  (*((*v9 & *v2) + 0x1B8))();
  v26 = Array._bridgeToObjectiveC()().super.isa;

  v27 = MEMORY[0x1E1299430](0xD000000000000015, 0x80000001DC651AA0);
  [(objc_class *)cachingCoder.super.isa encodeObject:v26 forKey:v27];

  v28 = (*((*v9 & *v2) + 0x1D0))();
  if (v29 >> 60 != 15)
  {
    v30 = v28;
    v31 = v29;
    v32 = objc_allocWithZone(MEMORY[0x1E695DEF0]);
    outlined copy of Data._Representation(v30, v31);
    v33 = Data._bridgeToObjectiveC()().super.isa;
    v34 = [v32 initWithData_];

    outlined consume of Data._Representation?(v30, v31);
    v35 = MEMORY[0x1E1299430](0xD000000000000018, 0x80000001DC651D00);
    [(objc_class *)cachingCoder.super.isa encodeObject:v34 forKey:v35];

    outlined consume of Data._Representation?(v30, v31);
  }

  (*((*v9 & *v2) + 0x1E8))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
  v36 = Array._bridgeToObjectiveC()().super.isa;

  v37 = MEMORY[0x1E1299430](0x706574536B736174, 0xEC00000073676F4CLL);
  [(objc_class *)cachingCoder.super.isa encodeObject:v36 forKey:v37];

  v38 = (*((*v9 & *v2) + 0x200))();
  if (v39 >> 60 != 15)
  {
    v40 = v38;
    v41 = v39;
    v42 = objc_allocWithZone(MEMORY[0x1E695DEF0]);
    outlined copy of Data._Representation(v40, v41);
    v43 = Data._bridgeToObjectiveC()().super.isa;
    v44 = [v42 initWithData_];

    outlined consume of Data._Representation?(v40, v41);
    v45 = MEMORY[0x1E1299430](0xD000000000000022, 0x80000001DC651CD0);
    [(objc_class *)cachingCoder.super.isa encodeObject:v44 forKey:v45];

    outlined consume of Data._Representation?(v40, v41);
  }

  (*((*v9 & *v2) + 0x218))();
  v46 = Array._bridgeToObjectiveC()().super.isa;

  v47 = MEMORY[0x1E1299430](0xD000000000000016, 0x80000001DC651AC0);
  [(objc_class *)cachingCoder.super.isa encodeObject:v46 forKey:v47];

  LOBYTE(v47) = (*((*v9 & *v2) + 0x230))();
  v48 = MEMORY[0x1E1299430](0xD000000000000013, 0x80000001DC651AE0);
  [(objc_class *)cachingCoder.super.isa encodeBool:v47 & 1 forKey:v48];

  v49 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_isHandledByPreflight);
  v50 = MEMORY[0x1E1299430](0xD000000000000014, 0x80000001DC651B00);
  [(objc_class *)cachingCoder.super.isa encodeBool:v49 forKey:v50];

  if (*(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_preflightClientHandlerIdentifier + 8))
  {
    v51 = MEMORY[0x1E1299430](*(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_preflightClientHandlerIdentifier));
    v52 = MEMORY[0x1E1299430](0xD000000000000020, 0x80000001DC651CA0);
    [(objc_class *)cachingCoder.super.isa encodeObject:v51 forKey:v52];
  }

  v53 = (*((*v9 & *v2) + 0x258))();
  if (v54)
  {
    v55 = MEMORY[0x1E1299430](v53);

    v56 = MEMORY[0x1E1299430](0xD000000000000012, 0x80000001DC651C80);
    [(objc_class *)cachingCoder.super.isa encodeObject:v55 forKey:v56];
  }

  v57 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_requestLocation);
  if (v57)
  {
    v58 = v57;
    v59 = MEMORY[0x1E1299430](0x4C74736575716572, 0xEF6E6F697461636FLL);
    [(objc_class *)cachingCoder.super.isa encodeObject:v58 forKey:v59];
  }

  v60 = MEMORY[0x1E1299430](*(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_searchRequestUtterance), *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_searchRequestUtterance + 8));
  v61 = MEMORY[0x1E1299430](0xD000000000000016, 0x80000001DC651B60);
  [(objc_class *)cachingCoder.super.isa encodeObject:v60 forKey:v61];

  if (*(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_sharedUserId + 8))
  {
    v62 = MEMORY[0x1E1299430](*(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_sharedUserId));
    v63 = MEMORY[0x1E1299430](0x7355646572616873, 0xEC00000064497265);
    [(objc_class *)cachingCoder.super.isa encodeObject:v62 forKey:v63];
  }

  v64 = (v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_encodedNLUserParses);
  v65 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_encodedNLUserParses + 8);
  if (v65 >> 60 != 15)
  {
    v66 = *v64;
    outlined copy of Data._Representation(*v64, *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_encodedNLUserParses + 8));
    v67 = Data._bridgeToObjectiveC()().super.isa;
    v68 = MEMORY[0x1E1299430](0xD000000000000013, 0x80000001DC651C60);
    [(objc_class *)cachingCoder.super.isa encodeObject:v67 forKey:v68];

    outlined consume of Data._Representation?(v66, v65);
  }

  v69 = (v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_encodedNLFallbackParse);
  v70 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_encodedNLFallbackParse + 8);
  if (v70 >> 60 != 15)
  {
    v71 = *v69;
    outlined copy of Data._Representation(*v69, *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_encodedNLFallbackParse + 8));
    v72 = Data._bridgeToObjectiveC()().super.isa;
    v73 = MEMORY[0x1E1299430](0xD000000000000016, 0x80000001DC651C40);
    [(objc_class *)cachingCoder.super.isa encodeObject:v72 forKey:v73];

    outlined consume of Data._Representation?(v71, v70);
  }

  v74 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_asrRecognition);
  if (v74)
  {
    v75 = v74;
    v76 = MEMORY[0x1E1299430](0x676F636552727361, 0xEE006E6F6974696ELL);
    [(objc_class *)cachingCoder.super.isa encodeObject:v75 forKey:v76];
  }

  if (*(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_responseVariantResult + 8))
  {
    v77 = MEMORY[0x1E1299430](*(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_responseVariantResult));
    v78 = MEMORY[0x1E1299430](0xD000000000000015, 0x80000001DC651C20);
    [(objc_class *)cachingCoder.super.isa encodeObject:v77 forKey:v78];
  }

  v79 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_isLowConfidenceKnowledgeResult);
  v80 = MEMORY[0x1E1299430](0xD00000000000001ELL, 0x80000001DC651B80);
  [(objc_class *)cachingCoder.super.isa encodeBool:v79 forKey:v80];

  if (*(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_albusMultiturnRewrite + 8))
  {
    v81 = MEMORY[0x1E1299430](*(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_albusMultiturnRewrite));
  }

  else
  {
    v81 = 0;
  }

  v82 = MEMORY[0x1E1299430](0xD000000000000015, 0x80000001DC651BA0);
  [(objc_class *)cachingCoder.super.isa encodeObject:v81 forKey:v82];
  swift_unknownObjectRelease();

  v83 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_isRelatedQuestion);
  v84 = MEMORY[0x1E1299430](0xD000000000000011, 0x80000001DC651BC0);
  [(objc_class *)cachingCoder.super.isa encodeBool:v83 forKey:v84];

  type metadata accessor for JSONEncoder();
  swift_allocObject();
  v85 = JSONEncoder.init()();
  v86 = v119;
  outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_previousPommesContext, v119, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v87 = (v114[6])(v86, 1, v120);
  v115 = cachingCoder.super.isa;
  v113[1] = v85;
  if (v87 == 1)
  {
    outlined destroy of ClientExperienceSignals?(v86, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  }

  else
  {
    v88 = v113[0];
    outlined init with take of PommesContext(v86, v113[0]);
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata and conformance Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata(&lazy protocol witness table cache variable for type PommesContext and conformance PommesContext, type metadata accessor for PommesContext, &protocol conformance descriptor for PommesContext);
    v89 = dispatch thunk of JSONEncoder.encode<A>(_:)();
    v91 = v90;
    v92 = Data._bridgeToObjectiveC()().super.isa;
    v93 = MEMORY[0x1E1299430](0xD000000000000015, 0x80000001DC651C00);
    [(objc_class *)cachingCoder.super.isa encodeObject:v92 forKey:v93];
    outlined consume of Data._Representation(v89, v91);

    outlined destroy of PommesResponse.Builder(v88, type metadata accessor for PommesContext);
  }

  v114 = v2;
  v94 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_domainUseCases);
  v95 = *(v94 + 16);
  v96 = v117;
  if (v95)
  {
    v97 = *(v118 + 16);
    v98 = v94 + ((*(v118 + 80) + 32) & ~*(v118 + 80));
    v119 = *(v118 + 72);
    v120 = v97;
    v99 = (v118 + 8);
    v100 = MEMORY[0x1E69E7CC0];
    v101 = v116;
    v118 += 16;
    v97(v117, v98, v116);
    while (1)
    {
      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata and conformance Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata and conformance Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata, MEMORY[0x1E69BD5C0], MEMORY[0x1E69BD5B8]);
      v102 = Message.serializedData(partial:)();
      v104 = v103;
      (*v99)(v96, v101);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v100 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v100 + 2) + 1, 1, v100);
      }

      v106 = *(v100 + 2);
      v105 = *(v100 + 3);
      if (v106 >= v105 >> 1)
      {
        v100 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v105 > 1), v106 + 1, 1, v100);
      }

      *(v100 + 2) = v106 + 1;
      v107 = &v100[16 * v106];
      *(v107 + 4) = v102;
      *(v107 + 5) = v104;
      v101 = v116;
      v96 = v117;
      v98 += v119;
      if (!--v95)
      {
        break;
      }

      v120(v117, v98, v116);
    }
  }

  v108 = Array._bridgeToObjectiveC()().super.isa;

  v109 = MEMORY[0x1E1299430](0x73556E69616D6F64, 0xEE00736573614365);
  v110 = v115;
  [(objc_class *)v115 encodeObject:v108 forKey:v109];

  v111 = *(v114 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_isQueryDirectQuestion);
  v112 = MEMORY[0x1E1299430](0xD000000000000015, 0x80000001DC651BE0);
  [(objc_class *)v110 encodeBool:v111 forKey:v112];
}

Swift::String_optional __swiftcall PommesResponse.primaryPluginIdentifier()()
{
  v1 = MEMORY[0x1E69E7D40];
  v2 = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x170))();
  if (v2 >> 62)
  {
    v10 = v2 & 0xFFFFFFFFFFFFFF8;
    if (v2 < 0)
    {
      v10 = v2;
    }

    v11 = v2;
    v12 = MEMORY[0x1E1299770](v10);
    v2 = v11;
    if (v12)
    {
      goto LABEL_3;
    }

LABEL_10:

    v7 = 0;
    v9 = 0;
    goto LABEL_11;
  }

  if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((v2 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1E12996A0](0);
  }

  else
  {
    if (!*((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_14;
    }

    v4 = *(v2 + 32);
  }

  v5 = v4;

  v7 = (*((*v1 & *v5) + 0x88))(v6);
  v9 = v8;

LABEL_11:
  v2 = v7;
  v3 = v9;
LABEL_14:
  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

double PommesResponse._computedPrimaryQueryConfidence.getter()
{
  v1 = &v0[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse____lazy_storage____computedPrimaryQueryConfidence];
  if ((v0[OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse____lazy_storage____computedPrimaryQueryConfidence + 8] & 1) == 0)
  {
    return *v1;
  }

  result = specialized closure #1 in PommesResponse._computedPrimaryQueryConfidence.getter(v0);
  *v1 = result;
  v1[8] = 0;
  return result;
}

unint64_t PommesResponse.primaryCatIds()()
{
  v1 = MEMORY[0x1E69E7D40];
  result = (*((*MEMORY[0x1E69E7D40] & *v0) + 0x170))();
  if (result >> 62)
  {
    v7 = result & 0xFFFFFFFFFFFFFF8;
    if ((result & 0x8000000000000000) != 0)
    {
      v7 = result;
    }

    v8 = result;
    v9 = MEMORY[0x1E1299770](v7);
    result = v8;
    if (v9)
    {
      goto LABEL_3;
    }

LABEL_10:

    return MEMORY[0x1E69E7CC0];
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x1E12996A0](0);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(result + 32);
LABEL_6:
    v4 = v3;

    v6 = (*((*v1 & *v4) + 0xD0))(v5);

    return v6;
  }

  __break(1u);
  return result;
}

unint64_t PommesResponse.primaryInstructionIntent()@<X0>(uint64_t a1@<X8>)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV17InstructionIntentOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV17InstructionIntentOSgMR);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v19 - v5;
  result = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x170))(v4);
  if (result >> 62)
  {
    v12 = result & 0xFFFFFFFFFFFFFF8;
    if ((result & 0x8000000000000000) != 0)
    {
      v12 = result;
    }

    v13 = result;
    v14 = MEMORY[0x1E1299770](v12);
    result = v13;
    if (v14)
    {
      goto LABEL_3;
    }

LABEL_10:

    v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
    v16 = *(v15 - 8);
    (*(v16 + 56))(v6, 1, 1, v15);
    return (*(v16 + 104))(a1, *MEMORY[0x1E69BCBD8], v15);
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_10;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v17 = MEMORY[0x1E12996A0](0, result);

    v18 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent;
    v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
    v11 = *(v10 - 8);
    (*(v11 + 16))(v6, v17 + v18, v10);
    swift_unknownObjectRelease();
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v8 = *(result + 32);

    v9 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent;
    v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
    v11 = *(v10 - 8);
    (*(v11 + 16))(v6, &v8[v9], v10);

LABEL_6:
    (*(v11 + 56))(v6, 0, 1, v10);
    return (*(v11 + 32))(a1, v6, v10);
  }

  __break(1u);
  return result;
}

uint64_t PommesResponse.description.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_1DC64F450;
  swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch14PommesResponseCmMd, &_s21SiriInformationSearch14PommesResponseCmMR);
  v2 = String.init<A>(describing:)();
  v4 = v3;
  v5 = MEMORY[0x1E69E6158];
  *(v1 + 56) = MEMORY[0x1E69E6158];
  v6 = lazy protocol witness table accessor for type String and conformance String();
  *(v1 + 64) = v6;
  *(v1 + 32) = v2;
  *(v1 + 40) = v4;
  *(v1 + 96) = type metadata accessor for PommesResponse(0);
  *(v1 + 104) = lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata and conformance Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata(&lazy protocol witness table cache variable for type PommesResponse and conformance NSObject, type metadata accessor for PommesResponse, MEMORY[0x1E69E81C8]);
  *(v1 + 72) = v0;
  v7 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x2B8);
  v8 = v0;
  v9 = v7();
  v10 = MEMORY[0x1E69E6438];
  *(v1 + 136) = MEMORY[0x1E69E63B0];
  *(v1 + 144) = v10;
  *(v1 + 112) = v9;
  v12 = *(v8 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_metadataDomainName);
  v11 = *(v8 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_metadataDomainName + 8);
  *(v1 + 176) = v5;
  *(v1 + 184) = v6;
  *(v1 + 152) = v12;
  *(v1 + 160) = v11;

  return String.init(format:_:)();
}

uint64_t PommesResponse.setPegasusDomainLogs(flowStep:userSensitiveTier1:)(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v9 = MEMORY[0x1E69E7D40];
  v10 = *((*MEMORY[0x1E69E7D40] & *v4) + 0x1D8);
  outlined copy of Data?(a1, a2);
  v10(a1, a2);
  v12 = *((*v9 & *v4) + 0x208);
  outlined copy of Data?(a3, a4);

  return v12(a3, a4);
}

Swift::Void __swiftcall PommesResponse.setPegasusDomainLogs(flowStep:userSensitiveTier1:)(Swift::OpaquePointer flowStep, Swift::OpaquePointer userSensitiveTier1)
{
  v5 = MEMORY[0x1E69E7D40];
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x1F0);

  v6(v7);
  v8 = *((*v5 & *v2) + 0x220);

  v8(v9);
  v10 = 0;
  v11 = *(flowStep._rawValue + 2);
  v12 = flowStep._rawValue + 40;
  v13 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v14 = &v12[16 * v10];
  while (v11 != v10)
  {
    if (v10 >= v11)
    {
      __break(1u);
LABEL_33:
      __break(1u);
LABEL_34:
      __break(1u);
LABEL_35:
      __break(1u);
      return;
    }

    v15 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      goto LABEL_33;
    }

    v17 = *v14;
    v14 += 2;
    v16 = v17;
    ++v10;
    if (v17 >> 60 != 15)
    {
      v18 = *(v14 - 3);
      outlined copy of Data._Representation(v18, v16);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v13 + 2) + 1, 1, v13);
      }

      v20 = *(v13 + 2);
      v19 = *(v13 + 3);
      if (v20 >= v19 >> 1)
      {
        v13 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v13);
      }

      *(v13 + 2) = v20 + 1;
      v21 = &v13[16 * v20];
      *(v21 + 4) = v18;
      *(v21 + 5) = v16;
      v10 = v15;
      goto LABEL_2;
    }
  }

  v22 = MEMORY[0x1E69E7D40];
  if (*(v13 + 2))
  {
    v23 = *(v13 + 4);
    v24 = *(v13 + 5);
    outlined copy of Data._Representation(v23, v24);
  }

  else
  {
    v23 = 0;
    v24 = 0xF000000000000000;
  }

  (*((*v22 & *v2) + 0x1D8))(v23, v24);
  v25 = 0;
  v26 = *(userSensitiveTier1._rawValue + 2);
  v27 = userSensitiveTier1._rawValue + 40;
  v28 = MEMORY[0x1E69E7CC0];
LABEL_16:
  v29 = &v27[16 * v25];
  while (v26 != v25)
  {
    if (v25 >= v26)
    {
      goto LABEL_34;
    }

    v30 = v25 + 1;
    if (__OFADD__(v25, 1))
    {
      goto LABEL_35;
    }

    v32 = *v29;
    v29 += 2;
    v31 = v32;
    ++v25;
    if (v32 >> 60 != 15)
    {
      v33 = *(v29 - 3);
      outlined copy of Data._Representation(v33, v31);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v28 + 2) + 1, 1, v28);
      }

      v35 = *(v28 + 2);
      v34 = *(v28 + 3);
      if (v35 >= v34 >> 1)
      {
        v28 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v28);
      }

      *(v28 + 2) = v35 + 1;
      v36 = &v28[16 * v35];
      *(v36 + 4) = v33;
      *(v36 + 5) = v31;
      v25 = v30;
      goto LABEL_16;
    }
  }

  if (*(v28 + 2))
  {
    v37 = *(v28 + 4);
    v38 = *(v28 + 5);
    outlined copy of Data._Representation(v37, v38);
  }

  else
  {
    v37 = 0;
    v38 = 0xF000000000000000;
  }

  v39 = *((*v22 & *v2) + 0x208);

  v39(v37, v38);
}

id PommesResult.__deallocating_deinit(uint64_t a1, uint64_t (*a2)(uint64_t))
{
  v4.receiver = v2;
  v4.super_class = a2(a1);
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t specialized static PommesCandidateId.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v5 = a1[2];
  v4 = a1[3];
  v6 = *(a1 + 32);
  v8 = *a2;
  v7 = a2[1];
  v10 = a2[2];
  v9 = a2[3];
  v11 = *(a2 + 32);
  if (!*(a1 + 32))
  {
    if (*(a2 + 32))
    {
      goto LABEL_24;
    }

    v18 = *a1;
    if (v3 == v8 && v2 == v7)
    {
      outlined copy of PommesCandidateId(v18, v2, v10, v9, 0);
      outlined copy of PommesCandidateId(v3, v2, v5, v4, 0);
      outlined consume of PommesCandidateId(v3, v2, v5, v4, 0);
      v13 = v3;
      v14 = v2;
      v15 = v10;
      v16 = v9;
      v17 = 0;
      goto LABEL_30;
    }

    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined copy of PommesCandidateId(v8, v7, v10, v9, 0);
    outlined copy of PommesCandidateId(v3, v2, v5, v4, 0);
    outlined consume of PommesCandidateId(v3, v2, v5, v4, 0);
    v21 = v8;
    v22 = v7;
    v23 = v10;
    v24 = v9;
    v25 = 0;
LABEL_28:
    outlined consume of PommesCandidateId(v21, v22, v23, v24, v25);
    return v20 & 1;
  }

  if (v6 != 1)
  {
    if (v11 != 2)
    {
      goto LABEL_24;
    }

    v26 = *a1;
    if (v3 == v8 && v2 == v7)
    {
      outlined copy of PommesCandidateId(v26, v2, v10, v9, 2);
      outlined copy of PommesCandidateId(v3, v2, v5, v4, 2);
      outlined consume of PommesCandidateId(v3, v2, v5, v4, 2);
      v13 = v3;
      v14 = v2;
      v15 = v10;
      v16 = v9;
      v17 = 2;
      goto LABEL_30;
    }

    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined copy of PommesCandidateId(v8, v7, v10, v9, 2);
    outlined copy of PommesCandidateId(v3, v2, v5, v4, 2);
    outlined consume of PommesCandidateId(v3, v2, v5, v4, 2);
    v21 = v8;
    v22 = v7;
    v23 = v10;
    v24 = v9;
    v25 = 2;
    goto LABEL_28;
  }

  if (v11 != 1)
  {
LABEL_24:
    outlined copy of PommesCandidateId(*a2, a2[1], v10, v9, v11);
    outlined copy of PommesCandidateId(v3, v2, v5, v4, v6);
    outlined consume of PommesCandidateId(v3, v2, v5, v4, v6);
    v28 = v8;
    v29 = v7;
    v30 = v10;
    v31 = v9;
    v32 = v11;
LABEL_25:
    outlined consume of PommesCandidateId(v28, v29, v30, v31, v32);
    return 0;
  }

  v12 = v3 == v8 && v2 == v7;
  if (!v12 && (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) == 0)
  {
    outlined copy of PommesCandidateId(v8, v7, v10, v9, 1);
    outlined copy of PommesCandidateId(v3, v2, v5, v4, 1);
    outlined consume of PommesCandidateId(v3, v2, v5, v4, 1);
    v28 = v8;
    v29 = v7;
    v30 = v10;
    v31 = v9;
    v32 = 1;
    goto LABEL_25;
  }

  if (v5 != v10 || v4 != v9)
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();
    outlined copy of PommesCandidateId(v8, v7, v10, v9, 1);
    outlined copy of PommesCandidateId(v3, v2, v5, v4, 1);
    outlined consume of PommesCandidateId(v3, v2, v5, v4, 1);
    v21 = v8;
    v22 = v7;
    v23 = v10;
    v24 = v9;
    v25 = 1;
    goto LABEL_28;
  }

  outlined copy of PommesCandidateId(v8, v7, v5, v4, 1);
  outlined copy of PommesCandidateId(v3, v2, v5, v4, 1);
  outlined consume of PommesCandidateId(v3, v2, v5, v4, 1);
  v13 = v8;
  v14 = v7;
  v15 = v5;
  v16 = v4;
  v17 = 1;
LABEL_30:
  outlined consume of PommesCandidateId(v13, v14, v15, v16, v17);
  return 1;
}

unint64_t lazy protocol witness table accessor for type PommesCandidateId.CodingKeys and conformance PommesCandidateId.CodingKeys()
{
  result = lazy protocol witness table cache variable for type PommesCandidateId.CodingKeys and conformance PommesCandidateId.CodingKeys;
  if (!lazy protocol witness table cache variable for type PommesCandidateId.CodingKeys and conformance PommesCandidateId.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesCandidateId.CodingKeys and conformance PommesCandidateId.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesCandidateId.CodingKeys and conformance PommesCandidateId.CodingKeys;
  if (!lazy protocol witness table cache variable for type PommesCandidateId.CodingKeys and conformance PommesCandidateId.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesCandidateId.CodingKeys and conformance PommesCandidateId.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesCandidateId.CodingKeys and conformance PommesCandidateId.CodingKeys;
  if (!lazy protocol witness table cache variable for type PommesCandidateId.CodingKeys and conformance PommesCandidateId.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesCandidateId.CodingKeys and conformance PommesCandidateId.CodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesCandidateId.CodingKeys and conformance PommesCandidateId.CodingKeys;
  if (!lazy protocol witness table cache variable for type PommesCandidateId.CodingKeys and conformance PommesCandidateId.CodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesCandidateId.CodingKeys and conformance PommesCandidateId.CodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PommesCandidateId.RunPommesCodingKeys and conformance PommesCandidateId.RunPommesCodingKeys()
{
  result = lazy protocol witness table cache variable for type PommesCandidateId.RunPommesCodingKeys and conformance PommesCandidateId.RunPommesCodingKeys;
  if (!lazy protocol witness table cache variable for type PommesCandidateId.RunPommesCodingKeys and conformance PommesCandidateId.RunPommesCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesCandidateId.RunPommesCodingKeys and conformance PommesCandidateId.RunPommesCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesCandidateId.RunPommesCodingKeys and conformance PommesCandidateId.RunPommesCodingKeys;
  if (!lazy protocol witness table cache variable for type PommesCandidateId.RunPommesCodingKeys and conformance PommesCandidateId.RunPommesCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesCandidateId.RunPommesCodingKeys and conformance PommesCandidateId.RunPommesCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesCandidateId.RunPommesCodingKeys and conformance PommesCandidateId.RunPommesCodingKeys;
  if (!lazy protocol witness table cache variable for type PommesCandidateId.RunPommesCodingKeys and conformance PommesCandidateId.RunPommesCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesCandidateId.RunPommesCodingKeys and conformance PommesCandidateId.RunPommesCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesCandidateId.RunPommesCodingKeys and conformance PommesCandidateId.RunPommesCodingKeys;
  if (!lazy protocol witness table cache variable for type PommesCandidateId.RunPommesCodingKeys and conformance PommesCandidateId.RunPommesCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesCandidateId.RunPommesCodingKeys and conformance PommesCandidateId.RunPommesCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PommesCandidateId.MedocCodingKeys and conformance PommesCandidateId.MedocCodingKeys()
{
  result = lazy protocol witness table cache variable for type PommesCandidateId.MedocCodingKeys and conformance PommesCandidateId.MedocCodingKeys;
  if (!lazy protocol witness table cache variable for type PommesCandidateId.MedocCodingKeys and conformance PommesCandidateId.MedocCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesCandidateId.MedocCodingKeys and conformance PommesCandidateId.MedocCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesCandidateId.MedocCodingKeys and conformance PommesCandidateId.MedocCodingKeys;
  if (!lazy protocol witness table cache variable for type PommesCandidateId.MedocCodingKeys and conformance PommesCandidateId.MedocCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesCandidateId.MedocCodingKeys and conformance PommesCandidateId.MedocCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesCandidateId.MedocCodingKeys and conformance PommesCandidateId.MedocCodingKeys;
  if (!lazy protocol witness table cache variable for type PommesCandidateId.MedocCodingKeys and conformance PommesCandidateId.MedocCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesCandidateId.MedocCodingKeys and conformance PommesCandidateId.MedocCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesCandidateId.MedocCodingKeys and conformance PommesCandidateId.MedocCodingKeys;
  if (!lazy protocol witness table cache variable for type PommesCandidateId.MedocCodingKeys and conformance PommesCandidateId.MedocCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesCandidateId.MedocCodingKeys and conformance PommesCandidateId.MedocCodingKeys);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PommesCandidateId.RcCodingKeys and conformance PommesCandidateId.RcCodingKeys()
{
  result = lazy protocol witness table cache variable for type PommesCandidateId.RcCodingKeys and conformance PommesCandidateId.RcCodingKeys;
  if (!lazy protocol witness table cache variable for type PommesCandidateId.RcCodingKeys and conformance PommesCandidateId.RcCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesCandidateId.RcCodingKeys and conformance PommesCandidateId.RcCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesCandidateId.RcCodingKeys and conformance PommesCandidateId.RcCodingKeys;
  if (!lazy protocol witness table cache variable for type PommesCandidateId.RcCodingKeys and conformance PommesCandidateId.RcCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesCandidateId.RcCodingKeys and conformance PommesCandidateId.RcCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesCandidateId.RcCodingKeys and conformance PommesCandidateId.RcCodingKeys;
  if (!lazy protocol witness table cache variable for type PommesCandidateId.RcCodingKeys and conformance PommesCandidateId.RcCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesCandidateId.RcCodingKeys and conformance PommesCandidateId.RcCodingKeys);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type PommesCandidateId.RcCodingKeys and conformance PommesCandidateId.RcCodingKeys;
  if (!lazy protocol witness table cache variable for type PommesCandidateId.RcCodingKeys and conformance PommesCandidateId.RcCodingKeys)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesCandidateId.RcCodingKeys and conformance PommesCandidateId.RcCodingKeys);
  }

  return result;
}

uint64_t outlined init with copy of PommesResponse.Builder(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PommesResponse.Builder(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

void outlined copy of PommesCandidateId?(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (a5 != -1)
  {
    outlined copy of PommesCandidateId(result, a2, a3, a4, a5);
  }
}

void outlined copy of PommesCandidateId(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  if (!a5 || a5 == 2)
  {
  }

  else
  {
    if (a5 != 1)
    {
      return;
    }
  }
}

uint64_t outlined assign with take of PommesContext?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of PommesContext(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PommesContext(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata and conformance Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t outlined destroy of PommesResponse.Builder(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type String and conformance String()
{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

{
  result = lazy protocol witness table cache variable for type String and conformance String;
  if (!lazy protocol witness table cache variable for type String and conformance String)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type String and conformance String);
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type PommesCandidateId and conformance PommesCandidateId()
{
  result = lazy protocol witness table cache variable for type PommesCandidateId and conformance PommesCandidateId;
  if (!lazy protocol witness table cache variable for type PommesCandidateId and conformance PommesCandidateId)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesCandidateId and conformance PommesCandidateId);
  }

  return result;
}

__n128 __swift_memcpy33_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t getEnumTagSinglePayload for PommesCandidateId(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 33))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 32);
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

uint64_t storeEnumTagSinglePayload for PommesCandidateId(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 33) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 33) = 0;
    }

    if (a2)
    {
      *(result + 32) = -a2;
    }
  }

  return result;
}

void type metadata completion function for PommesResponse(uint64_t a1)
{
  type metadata accessor for PommesContext?(319, &lazy cache variable for type metadata for PommesContext?, type metadata accessor for PommesContext, MEMORY[0x1E69E6720]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

uint64_t dispatch thunk of PommesResponse.setPegasusDomainLogs(flowStep:userSensitiveTier1:)()
{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2F0))();
}

{
  return (*((*MEMORY[0x1E69E7D40] & *v0) + 0x2F8))();
}

void type metadata completion function for PommesResponse.Builder(uint64_t a1)
{
  type metadata accessor for [Apple_Parsec_Siri_V2alpha_AudioItem]?(319, &lazy cache variable for type metadata for [Experience]?, &_sSay21SiriInformationSearch10ExperienceCGMd, &_sSay21SiriInformationSearch10ExperienceCGMR);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [Apple_Parsec_Siri_V2alpha_AudioItem]?(319, &lazy cache variable for type metadata for [PommesResult]?, &_sSay21SiriInformationSearch12PommesResultCGMd, &_sSay21SiriInformationSearch12PommesResultCGMR);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Data?(319, &lazy cache variable for type metadata for Data?, MEMORY[0x1E6969080], MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Data?(319, &lazy cache variable for type metadata for String?, MEMORY[0x1E69E6158], MEMORY[0x1E69E6720]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for [Apple_Parsec_Siri_V2alpha_AudioItem]?(319, &lazy cache variable for type metadata for [String]?, &_sSaySSGMd, &_sSaySSGMR);
          if (v5 <= 0x3F)
          {
            type metadata accessor for Data?(319, &lazy cache variable for type metadata for PommesCandidateId?, &type metadata for PommesCandidateId, MEMORY[0x1E69E6720]);
            if (v6 <= 0x3F)
            {
              type metadata accessor for [Apple_Parsec_Siri_V2alpha_AudioItem]?(319, &lazy cache variable for type metadata for [Data?]?, &_sSay10Foundation4DataVSgGMd, &_sSay10Foundation4DataVSgGMR);
              if (v7 <= 0x3F)
              {
                type metadata accessor for Data?(319, &lazy cache variable for type metadata for [WarmupComponent], &type metadata for WarmupComponent, MEMORY[0x1E69E62F8]);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for SASRecognition?(319, &lazy cache variable for type metadata for CLLocation?, &lazy cache variable for type metadata for CLLocation, 0x1E6985C40);
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for SASRecognition?(319, &lazy cache variable for type metadata for SASRecognition?, &lazy cache variable for type metadata for SASRecognition, 0x1E69C79F0);
                    if (v10 <= 0x3F)
                    {
                      type metadata accessor for PommesContext?(319, &lazy cache variable for type metadata for PommesContext?, type metadata accessor for PommesContext, MEMORY[0x1E69E6720]);
                      if (v11 <= 0x3F)
                      {
                        type metadata accessor for PommesContext?(319, &lazy cache variable for type metadata for [Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadata], MEMORY[0x1E69BD5C0], MEMORY[0x1E69E62F8]);
                        if (v12 <= 0x3F)
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
      }
    }
  }
}

void type metadata accessor for Data?(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for SASRecognition?(uint64_t a1, unint64_t *a2, unint64_t *a3, void *a4)
{
  if (!*a2)
  {
    type metadata accessor for NSArray(255, a3, a4);
    v5 = type metadata accessor for Optional();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

void type metadata accessor for PommesContext?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t getEnumTagSinglePayload for PommesCandidateId.CodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
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
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
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

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for PommesCandidateId.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PommesCandidateId.RcCodingKeys(unsigned int *a1, int a2)
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

_WORD *storeEnumTagSinglePayload for PommesCandidateId.RcCodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t specialized PommesCandidateId.CodingKeys.init(stringValue:)(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25458 && a2 == 0xE200000000000000;
  if (v3 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x636F64656DLL && a2 == 0xE500000000000000 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656D6D6F506E7572 && a2 == 0xE900000000000073)
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

double specialized closure #1 in PommesResponse._computedPrimaryQueryConfidence.getter(void *a1)
{
  v3 = [objc_opt_self() sharedPreferences];
  v4 = [v3 languageCode];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v8 = v7;

    *&v112 = v6;
    *(&v112 + 1) = v8;
    lazy protocol witness table accessor for type String and conformance String();
    v9 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();
    v11 = v10;
  }

  else
  {

    v9 = 0;
    v11 = 0xE000000000000000;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.pommes);

  v13 = a1;
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *&v112 = v17;
    *v16 = 136315394;
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, &v112);
    *(v16 + 12) = 2080;
    *(v16 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v13 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_metadataDomainName), *(v13 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_metadataDomainName + 8), &v112);
    _os_log_impl(&dword_1DC5C3000, v14, v15, "locale: %s, metadataDomainName: %s", v16, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E1299E70](v17, -1, -1);
    MEMORY[0x1E1299E70](v16, -1, -1);
  }

  v18 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v19 = MEMORY[0x1E1299430](0xD000000000000011, 0x80000001DC6519B0);
  v20 = [v18 initWithSuiteName_];

  if (!v20)
  {
LABEL_13:
    v20 = *(v13 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_metadataDomainName);
    v12 = *(v13 + OBJC_IVAR____TtC21SiriInformationSearch14PommesResponse_metadataDomainName + 8);
    v25 = HIBYTE(v12) & 0xF;
    if ((v12 & 0x2000000000000000) == 0)
    {
      v25 = v20 & 0xFFFFFFFFFFFFLL;
    }

    if (!v25)
    {

      v41 = Logger.logObject.getter();
      v42 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v41, v42))
      {
        v43 = swift_slowAlloc();
        *v43 = 0;
        v44 = "Domain name is empty. Query confidence: 0";
LABEL_66:
        _os_log_impl(&dword_1DC5C3000, v41, v42, v44, v43, 2u);
        goto LABEL_67;
      }

LABEL_69:

      return 0.0;
    }

    specialized FeatureFlag.domainLocaleFeature(_:_:)(v20, v12, v9, v11);
    v26 = StaticString.description.getter();
    v28 = v27;

    if ((v28 & 0x2000000000000000) != 0)
    {
      v37 = HIBYTE(v28) & 0xF;
    }

    else
    {
      v37 = v26 & 0xFFFFFFFFFFFFLL;
    }

    v38 = MEMORY[0x1E69E7D40];
    if (v20 == 7300455 && v12 == 0xE300000000000000 || (v29 = _stringCompareWithSmolCheck(_:_:expecting:)(), (v29 & 1) != 0) || v20 == 1936744813 && v12 == 0xE400000000000000 || (v29 = _stringCompareWithSmolCheck(_:_:expecting:)(), (v29 & 1) != 0))
    {
      v39 = (*((*v38 & *v13) + 0x258))(v29, v30, v31, v32, v33, v34, v35, v36);
      if (v40)
      {
        if (v39 == 20035 && v40 == 0xE200000000000000)
        {

LABEL_37:

          v49 = Logger.logObject.getter();
          v50 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            *v51 = 0;
            _os_log_impl(&dword_1DC5C3000, v49, v50, "CN-specific override for Geo traffic. Falling through without FF check", v51, 2u);
            MEMORY[0x1E1299E70](v51, -1, -1);
          }

          goto LABEL_47;
        }

        v48 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v48)
        {

          goto LABEL_37;
        }
      }
    }

    if (v37)
    {
      *(&v113 + 1) = &type metadata for FeatureFlag;
      v114 = lazy protocol witness table accessor for type FeatureFlag and conformance FeatureFlag();
      v60 = swift_allocObject();
      *&v112 = v60;
      *(v60 + 16) = v20;
      *(v60 + 24) = v12;
      *(v60 + 32) = v9;
      *(v60 + 40) = v11;
      *(v60 + 48) = 1;

      v61 = isFeatureEnabled(_:)();
      __swift_destroy_boxed_opaque_existential_0(&v112);
      if (v61)
      {

        goto LABEL_47;
      }

      v41 = Logger.logObject.getter();
      v90 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v41, v90))
      {
        v43 = swift_slowAlloc();
        v91 = swift_slowAlloc();
        *&v112 = v91;
        *v43 = 136315394;
        v92 = StaticString.description.getter();
        v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v92, v93, &v112);

        *(v43 + 4) = v94;
        *(v43 + 12) = 2080;
        specialized FeatureFlag.domainLocaleFeature(_:_:)(v20, v12, v9, v11);

        v95 = StaticString.description.getter();
        v97 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v95, v96, &v112);

        *(v43 + 14) = v97;
        _os_log_impl(&dword_1DC5C3000, v41, v90, "%s\\%s featureflag is disabled. Query confidence: 0", v43, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E1299E70](v91, -1, -1);
LABEL_67:
        v107 = v43;
        goto LABEL_68;
      }
    }

    else
    {

      specialized FeatureFlag.domainFeature(for:)(v20, v12);
      v62 = StaticString.description.getter();
      v64 = v63;

      v65 = HIBYTE(v64) & 0xF;
      if ((v64 & 0x2000000000000000) == 0)
      {
        v65 = v62 & 0xFFFFFFFFFFFFLL;
      }

      if (!v65 || (*(&v113 + 1) = &type metadata for FeatureFlag, v114 = lazy protocol witness table accessor for type FeatureFlag and conformance FeatureFlag(), v66 = swift_allocObject(), *&v112 = v66, *(v66 + 16) = v20, *(v66 + 24) = v12, *(v66 + 32) = 0, *(v66 + 40) = 0, *(v66 + 48) = 0, , v67 = isFeatureEnabled(_:)(), v52 = __swift_destroy_boxed_opaque_existential_0(&v112), (v67 & 1) != 0))
      {
LABEL_47:
        v68 = (*((*v38 & *v13) + 0x170))(v52, v53, v54, v55, v56, v57, v58, v59);
        if (v68 >> 62)
        {
          v108 = v68 & 0xFFFFFFFFFFFFFF8;
          if (v68 < 0)
          {
            v108 = v68;
          }

          v109 = v68;
          v110 = MEMORY[0x1E1299770](v108);
          v68 = v109;
          if (v110)
          {
            goto LABEL_49;
          }
        }

        else if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_49:
          if ((v68 & 0xC000000000000001) != 0)
          {
            v69 = MEMORY[0x1E12996A0](0);
            goto LABEL_52;
          }

          if (*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v69 = *(v68 + 32);
LABEL_52:
            v70 = v69;

            v71 = v70;
            v72 = Logger.logObject.getter();
            v73 = static os_log_type_t.debug.getter();

            if (os_log_type_enabled(v72, v73))
            {
              v74 = swift_slowAlloc();
              *v74 = 134217984;
              *(v74 + 4) = (*((*v38 & *v71) + 0xA0))(v74, v75, v76, v77, v78, v79, v80, v81);
              _os_log_impl(&dword_1DC5C3000, v72, v73, "Pommes result primary experience query confidence: %f", v74, 0xCu);
              MEMORY[0x1E1299E70](v74, -1, -1);
            }

            v1 = (*((*v38 & *v71) + 0xA0))(v82, v83, v84, v85, v86, v87, v88, v89);
            return v1;
          }

          __break(1u);
          goto LABEL_73;
        }

        v41 = Logger.logObject.getter();
        v42 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v41, v42))
        {
          v43 = swift_slowAlloc();
          *v43 = 0;
          v44 = "Pommes result has no experiences. Query confidence: 0";
          goto LABEL_66;
        }

        goto LABEL_69;
      }

      v41 = Logger.logObject.getter();
      v98 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v41, v98))
      {
        v99 = swift_slowAlloc();
        v100 = swift_slowAlloc();
        *&v112 = v100;
        *v99 = 136315394;
        v101 = StaticString.description.getter();
        v103 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v101, v102, &v112);

        *(v99 + 4) = v103;
        *(v99 + 12) = 2080;
        specialized FeatureFlag.domainFeature(for:)(v20, v12);

        v104 = StaticString.description.getter();
        v106 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v105, &v112);

        *(v99 + 14) = v106;
        _os_log_impl(&dword_1DC5C3000, v41, v98, "%s\\%s featureflag is disabled. Query confidence: 0", v99, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x1E1299E70](v100, -1, -1);
        v107 = v99;
LABEL_68:
        MEMORY[0x1E1299E70](v107, -1, -1);
        goto LABEL_69;
      }
    }

    goto LABEL_69;
  }

  v21 = MEMORY[0x1E1299430](0xD000000000000024, 0x80000001DC6519D0);
  v22 = [v20 objectForKey_];

  if (!v22)
  {

    v112 = 0u;
    v113 = 0u;
    outlined destroy of ClientExperienceSignals?(&v112, &_sypSgMd, &_sypSgMR);
    goto LABEL_13;
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined destroy of ClientExperienceSignals?(&v112, &_sypSgMd, &_sypSgMR);
  v23 = MEMORY[0x1E1299430](0xD000000000000024, 0x80000001DC6519D0);
  [v20 doubleForKey_];
  v1 = v24;

  if (v1 < 0.0)
  {

    goto LABEL_13;
  }

  if (one-time initialization token for overrides != -1)
  {
LABEL_73:
    swift_once();
  }

  __swift_project_value_buffer(v12, static Logger.overrides);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v47 = swift_slowAlloc();
    *v47 = 134217984;
    *(v47 + 4) = v1;
    _os_log_impl(&dword_1DC5C3000, v45, v46, "Developer override for Pommes query confidence: %f", v47, 0xCu);
    MEMORY[0x1E1299E70](v47, -1, -1);
  }

  return v1;
}

unint64_t lazy protocol witness table accessor for type FeatureFlag and conformance FeatureFlag()
{
  result = lazy protocol witness table cache variable for type FeatureFlag and conformance FeatureFlag;
  if (!lazy protocol witness table cache variable for type FeatureFlag and conformance FeatureFlag)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type FeatureFlag and conformance FeatureFlag);
  }

  return result;
}

uint64_t outlined consume of FeatureFlag(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{

  if (a5)
  {
  }

  return result;
}

id Experience.init(pluginId:queryConfidence:)(uint64_t a1, uint64_t a2, double a3)
{
  v7 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v3[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v11 = &v3[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  *v11 = a1;
  *(v11 + 1) = a2;
  *&v3[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a3;
  Siri_Nlu_External_UserDialogAct.init()();
  (*(v8 + 32))(&v3[OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct], v10, v7);
  *&v3[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = [objc_allocWithZone(type metadata accessor for PommesRenderOptions(0)) init];
  v12 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent;
  v13 = *MEMORY[0x1E69BCBD8];
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  (*(*(v14 - 8) + 104))(&v3[v12], v13, v14);
  v15 = type metadata accessor for Experience(0);
  v17.receiver = v3;
  v17.super_class = v15;
  return objc_msgSendSuper2(&v17, sel_init);
}

Swift::Void __swiftcall Experience.encode(with:)(NSCoder with)
{
  v3 = type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1E69E7D40];
  v9 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x88))(v5);
  v10 = MEMORY[0x1E1299430](v9);

  v11 = MEMORY[0x1E1299430](0xD000000000000010, 0x80000001DC651F20);
  [(objc_class *)with.super.isa encodeObject:v10 forKey:v11];

  v12 = (*((*v8 & *v1) + 0xA0))();
  v13 = MEMORY[0x1E1299430](0x6E6F437972657571, 0xEF65636E65646966);
  [(objc_class *)with.super.isa encodeDouble:v13 forKey:v12];

  v14 = (*((*v8 & *v1) + 0xB8))();
  v15 = MEMORY[0x1E1299430](0x704F7265646E6572, 0xED0000736E6F6974);
  isa = with.super.isa;
  [(objc_class *)with.super.isa encodeObject:v14 forKey:v15];

  v16 = *((*v8 & *v1) + 0xF8);
  v47 = v1;
  v17 = v16();
  v19 = v17;
  v20 = *(v17 + 16);
  if (v20)
  {
    v21 = 0;
    v54 = (v4 + 8);
    v55 = v4 + 16;
    v49 = MEMORY[0x1E69E7CC0];
    v46 = v20 - 1;
    *&v18 = 136315138;
    v50 = v18;
    v52 = v7;
    v53 = v17;
    v51 = v4;
    while (1)
    {
      v22 = v21;
      if (v21 >= *(v19 + 16))
      {
        break;
      }

      (*(v4 + 16))(v7, v19 + ((*(v4 + 80) + 32) & ~*(v4 + 80)) + *(v4 + 72) * v21++, v3);
      lazy protocol witness table accessor for type Apple_Parsec_Siri_Context_ResultEntity and conformance Apple_Parsec_Siri_Context_ResultEntity(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_Context_ResultEntity and conformance Apple_Parsec_Siri_Context_ResultEntity, MEMORY[0x1E69BD1D8], MEMORY[0x1E69BD1D0]);
      v23 = Message.serializedData(partial:)();
      v45 = v20;
      v25 = v24;
      v26 = v23;
      (*v54)(v7, v3);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v49 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v49 + 2) + 1, 1, v49);
      }

      v28 = *(v49 + 2);
      v27 = *(v49 + 3);
      if (v28 >= v27 >> 1)
      {
        v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1, v49);
        v30 = v25;
        v49 = v33;
        v29 = v26;
      }

      else
      {
        v29 = v26;
        v30 = v25;
      }

      v31 = v49;
      *(v49 + 2) = v28 + 1;
      v32 = &v31[16 * v28];
      *(v32 + 4) = v29;
      *(v32 + 5) = v30;
      v20 = v45;
      v19 = v53;
      if (v46 == v22)
      {
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
    v49 = MEMORY[0x1E69E7CC0];
LABEL_12:

    v34 = Array._bridgeToObjectiveC()().super.isa;

    v35 = MEMORY[0x1E1299430](0xD000000000000012, 0x80000001DC651F40);
    v36 = isa;
    [(objc_class *)isa encodeObject:v34 forKey:v35];

    type metadata accessor for Siri_Nlu_External_UserDialogAct();
    lazy protocol witness table accessor for type Apple_Parsec_Siri_Context_ResultEntity and conformance Apple_Parsec_Siri_Context_ResultEntity(&lazy protocol witness table cache variable for type Siri_Nlu_External_UserDialogAct and conformance Siri_Nlu_External_UserDialogAct, MEMORY[0x1E69D0A68], MEMORY[0x1E69D0A58]);
    v37 = Message.serializedData(partial:)();
    v39 = v38;
    v40 = Data._bridgeToObjectiveC()().super.isa;
    v41 = MEMORY[0x1E1299430](0x6C61694472657375, 0xED0000746341676FLL);
    [(objc_class *)v36 encodeObject:v40 forKey:v41];

    outlined consume of Data._Representation(v37, v39);
    v42 = MEMORY[0x1E1298CB0]();
    v43 = MEMORY[0x1E1299430](0x746E65746E69, 0xE600000000000000);
    [(objc_class *)v36 encodeInteger:v42 forKey:v43];
  }
}

NSObject *Experience.init(coder:)(NSObject *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV17InstructionIntentOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV17InstructionIntentOSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v102 = &v93 - v5;
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v101 = &v93 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMd, &_s12SiriNLUTypes0A27_Nlu_External_UserDialogActVSgMR);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v117 = &v93 - v10;
  v106 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v103 = &v93 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for BinaryDecodingOptions();
  v13 = MEMORY[0x1EEE9AC00](v12 - 8);
  v104 = &v93 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v121 = &v93 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMR);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v120 = &v93 - v17;
  v123 = type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity();
  v109 = *(v123 - 8);
  v18 = MEMORY[0x1EEE9AC00](v123);
  v119 = &v93 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v22 = &v93 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v108 = &v93 - v23;
  v107 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities;
  *&v1[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  v24 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v24 || (v126 = 0uLL, v25 = v24, static String._conditionallyBridgeFromObjectiveC(_:result:)(), v25, (v26 = *(&v126 + 1)) == 0))
  {
    if (one-time initialization token for pommes == -1)
    {
LABEL_23:
      v50 = type metadata accessor for Logger();
      __swift_project_value_buffer(v50, static Logger.pommes);
      v51 = Logger.logObject.getter();
      v52 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        *v53 = 0;
        _os_log_impl(&dword_1DC5C3000, v51, v52, "Experience missing pluginID in coder", v53, 2u);
        MEMORY[0x1E1299E70](v53, -1, -1);
      }

      goto LABEL_41;
    }

LABEL_60:
    swift_once();
    goto LABEL_23;
  }

  v27 = &v1[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  *v27 = v126;
  *(v27 + 1) = v26;
  v97 = v27;
  v28 = MEMORY[0x1E1299430](0x6E6F437972657571, 0xEF65636E65646966);
  [a1 decodeDoubleForKey:v28];
  v30 = v29;

  *&v1[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = v30;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
  v31 = swift_allocObject();
  *(v31 + 16) = xmmword_1DC64ED70;
  *(v31 + 32) = type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
  v98 = type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSData, 0x1E695DEF0);
  *(v31 + 40) = v98;
  NSCoder.decodeObject(of:forKey:)();

  v96 = v6;
  v95 = v7;
  if (!*(&v127 + 1))
  {
    outlined destroy of ClientExperienceSignals?(&v126, &_sypSgMd, &_sypSgMR);
    v34 = v117;
    goto LABEL_27;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo6NSDataCGMd, &_sSaySo6NSDataCGMR);
  v32 = swift_dynamicCast();
  v34 = v117;
  if ((v32 & 1) == 0)
  {
LABEL_27:
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v54 = type metadata accessor for Logger();
    __swift_project_value_buffer(v54, static Logger.pommes);
    v55 = Logger.logObject.getter();
    v56 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v55, v56))
    {
      v57 = swift_slowAlloc();
      *v57 = 0;
      _os_log_impl(&dword_1DC5C3000, v55, v56, "Experience missing entities in coder", v57, 2u);
      MEMORY[0x1E1299E70](v57, -1, -1);
    }

    goto LABEL_34;
  }

  v35 = v124;
  if (v124 >> 62)
  {
    if (v124 < 0)
    {
      v92 = v124;
    }

    else
    {
      v92 = v124 & 0xFFFFFFFFFFFFFF8;
    }

    v36 = MEMORY[0x1E1299770](v92);
  }

  else
  {
    v36 = *((v124 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v94 = v2;
  if (v36)
  {
    v37 = 0;
    v116 = v35 & 0xC000000000000001;
    v115 = v35 & 0xFFFFFFFFFFFFFF8;
    v111 = (v109 + 56);
    v118 = (v109 + 32);
    v110 = (v109 + 48);
    v122 = MEMORY[0x1E69E7CC0];
    *&v33 = 136315138;
    v99 = v33;
    v114 = v22;
    v100 = a1;
    v113 = v35;
    v112 = v36;
    while (1)
    {
      if (v116)
      {
        v38 = MEMORY[0x1E12996A0](v37, v35);
      }

      else
      {
        if (v37 >= *(v115 + 16))
        {
          goto LABEL_59;
        }

        v38 = *(v35 + 8 * v37 + 32);
      }

      v39 = v38;
      v40 = v37 + 1;
      if (__OFADD__(v37, 1))
      {
        break;
      }

      static Data._unconditionallyBridgeFromObjectiveC(_:)();
      v128 = 0;
      v126 = 0u;
      v127 = 0u;
      BinaryDecodingOptions.init()();
      lazy protocol witness table accessor for type Apple_Parsec_Siri_Context_ResultEntity and conformance Apple_Parsec_Siri_Context_ResultEntity(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_Context_ResultEntity and conformance Apple_Parsec_Siri_Context_ResultEntity, MEMORY[0x1E69BD1D8], MEMORY[0x1E69BD1D0]);
      v41 = v114;
      v42 = v123;
      Message.init(serializedData:extensions:partial:options:)();
      v43 = v120;
      (*v118)(v120, v41, v42);
      (*v111)(v43, 0, 1, v42);

      if ((*v110)(v43, 1, v42) == 1)
      {
        outlined destroy of ClientExperienceSignals?(v43, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMd, &_s10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVSgMR);
      }

      else
      {
        v44 = *v118;
        v45 = v108;
        (*v118)(v108, v43, v42);
        v44(v119, v45, v42);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v122 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v122 + 2) + 1, 1, v122, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVGMR, MEMORY[0x1E69BD1D8]);
        }

        v47 = *(v122 + 2);
        v46 = *(v122 + 3);
        if (v47 >= v46 >> 1)
        {
          v122 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v46 > 1), v47 + 1, 1, v122, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVGMR, MEMORY[0x1E69BD1D8]);
        }

        v49 = v122;
        v48 = v123;
        *(v122 + 2) = v47 + 1;
        v44(&v49[((*(v109 + 80) + 32) & ~*(v109 + 80)) + *(v109 + 72) * v47], v119, v48);
      }

      ++v37;
      v35 = v113;
      if (v40 == v112)
      {
        goto LABEL_33;
      }
    }

    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v122 = MEMORY[0x1E69E7CC0];
LABEL_33:

  v2 = v94;
  v58 = v107;
  swift_beginAccess();
  *&v2[v58] = v122;

LABEL_34:
  v59 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v59)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v62 = type metadata accessor for Logger();
    __swift_project_value_buffer(v62, static Logger.pommes);
    v63 = Logger.logObject.getter();
    v64 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      *v65 = 0;
      _os_log_impl(&dword_1DC5C3000, v63, v64, "Unable to decode userDialogActData", v65, 2u);
      MEMORY[0x1E1299E70](v65, -1, -1);
    }

LABEL_41:

LABEL_42:
    type metadata accessor for Experience(0);
    swift_deallocPartialClassInstance();
    return 0;
  }

  v60 = v59;
  static Data._unconditionallyBridgeFromObjectiveC(_:)();
  v128 = 0;
  v126 = 0u;
  v127 = 0u;
  BinaryDecodingOptions.init()();
  lazy protocol witness table accessor for type Apple_Parsec_Siri_Context_ResultEntity and conformance Apple_Parsec_Siri_Context_ResultEntity(&lazy protocol witness table cache variable for type Siri_Nlu_External_UserDialogAct and conformance Siri_Nlu_External_UserDialogAct, MEMORY[0x1E69D0A68], MEMORY[0x1E69D0A58]);
  v61 = v106;
  Message.init(serializedData:extensions:partial:options:)();
  v67 = v105;
  (*(v105 + 56))(v34, 0, 1, v61);
  v68 = v103;
  (*(v67 + 32))(v103, v34, v61);
  (*(v67 + 16))(&v2[OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct], v68, v61);
  type metadata accessor for PommesRenderOptions(0);
  v69 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v69)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v82 = type metadata accessor for Logger();
    __swift_project_value_buffer(v82, static Logger.pommes);
    v83 = Logger.logObject.getter();
    v84 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v83, v84))
    {
      v85 = swift_slowAlloc();
      *v85 = 0;
      _os_log_impl(&dword_1DC5C3000, v83, v84, "Experience failed to extract renderOptions", v85, 2u);
      MEMORY[0x1E1299E70](v85, -1, -1);
    }

    v86 = *(v105 + 8);
    v87 = v106;
    v86(v103, v106);

    goto LABEL_57;
  }

  *&v2[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = v69;
  v70 = v69;
  v71 = MEMORY[0x1E1299430](0x746E65746E69, 0xE600000000000000);
  [a1 decodeIntegerForKey:v71];

  v72 = v102;
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent.init(rawValue:)();
  v73 = v95;
  v74 = v96;
  if ((*(v95 + 48))(v72, 1, v96) == 1)
  {
    outlined destroy of ClientExperienceSignals?(v72, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV17InstructionIntentOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV17InstructionIntentOSgMR);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v75 = type metadata accessor for Logger();
    __swift_project_value_buffer(v75, static Logger.pommes);
    v76 = Logger.logObject.getter();
    v77 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v76, v77))
    {
      v78 = v2;
      v79 = swift_slowAlloc();
      *v79 = 0;
      _os_log_impl(&dword_1DC5C3000, v76, v77, "Unable to decode intent", v79, 2u);
      v80 = v79;
      v2 = v78;
      MEMORY[0x1E1299E70](v80, -1, -1);
      v81 = v70;
    }

    else
    {
      v81 = v76;
      v76 = a1;
      a1 = v70;
    }

    v86 = *(v105 + 8);
    v87 = v106;
    v86(v103, v106);

LABEL_57:

    v86(&v2[OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct], v87);
    goto LABEL_42;
  }

  (*(v105 + 8))(v103, v106);

  v88 = *(v73 + 32);
  v89 = v101;
  v88(v101, v72, v74);
  v88(&v2[OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent], v89, v74);
  v90 = type metadata accessor for Experience(0);
  v125.receiver = v2;
  v125.super_class = v90;
  v91 = [&v125 init];

  return v91;
}

uint64_t Experience.pluginIdentifier.getter()
{
  v1 = (v0 + OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

id Experience.renderOptions.getter()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions;
  swift_beginAccess();
  v2 = *(v0 + v1);

  return v2;
}

uint64_t Experience.associatedEntities.setter(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

id Experience.init(pluginId:queryConfidence:userDialogAct:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  *&v4[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v6 = &v4[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  *v6 = a1;
  *(v6 + 1) = a2;
  *&v4[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a4;
  v7 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct;
  v8 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v9 = *(v8 - 8);
  (*(v9 + 16))(&v4[v7], a3, v8);
  *&v4[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = [objc_allocWithZone(type metadata accessor for PommesRenderOptions(0)) init];
  v10 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent;
  v11 = *MEMORY[0x1E69BCBD8];
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  (*(*(v12 - 8) + 104))(&v4[v10], v11, v12);
  v15.receiver = v4;
  v15.super_class = type metadata accessor for Experience(0);
  v13 = objc_msgSendSuper2(&v15, sel_init);
  (*(v9 + 8))(a3, v8);
  return v13;
}

id Experience.init(pluginId:queryConfidence:userDialogAct:renderOptions:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *&v6[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v10 = &v6[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  *v10 = a1;
  *(v10 + 1) = a2;
  *&v6[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a6;
  v11 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct;
  v12 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v13 = *(v12 - 8);
  (*(v13 + 16))(&v6[v11], a3, v12);
  *&v6[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = a4;
  v14 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent;
  v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v6[v14], a5, v15);
  v19.receiver = v6;
  v19.super_class = type metadata accessor for Experience(0);
  v17 = objc_msgSendSuper2(&v19, sel_init);
  (*(v16 + 8))(a5, v15);
  (*(v13 + 8))(a3, v12);
  return v17;
}

double Experience.queryConfidence.getter()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t key path setter for Experience.pluginIdentifier : Experience(uint64_t *a1, void *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = (*a2 + OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier);
  swift_beginAccess();
  *v4 = v3;
  v4[1] = v2;
}

void key path setter for Experience.renderOptions : Experience(void **a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions;
  swift_beginAccess();
  v5 = *(v3 + v4);
  *(v3 + v4) = v2;
  v6 = v2;
}

uint64_t Experience.userDialogAct.getter@<X0>(uint64_t *a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = a2(0);
  v7 = *(*(v6 - 8) + 16);

  return v7(a3, v3 + v5, v6);
}

id Experience.__allocating_init(pluginId:queryConfidence:)(uint64_t a1, uint64_t a2, double a3)
{
  v7 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v17 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = objc_allocWithZone(v3);
  *&v11[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v12 = &v11[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  *v12 = a1;
  *(v12 + 1) = a2;
  *&v11[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a3;
  Siri_Nlu_External_UserDialogAct.init()();
  (*(v8 + 32))(&v11[OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct], v10, v7);
  *&v11[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = [objc_allocWithZone(type metadata accessor for PommesRenderOptions(0)) init];
  v13 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent;
  v14 = *MEMORY[0x1E69BCBD8];
  v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  (*(*(v15 - 8) + 104))(&v11[v13], v14, v15);
  v17.receiver = v11;
  v17.super_class = v3;
  return objc_msgSendSuper2(&v17, sel_init);
}

id Experience.__allocating_init(pluginId:queryConfidence:userDialogAct:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = objc_allocWithZone(v4);
  *&v9[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v10 = &v9[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  *v10 = a1;
  *(v10 + 1) = a2;
  *&v9[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a4;
  v11 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct;
  v12 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v13 = *(v12 - 8);
  (*(v13 + 16))(&v9[v11], a3, v12);
  *&v9[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = [objc_allocWithZone(type metadata accessor for PommesRenderOptions(0)) init];
  v14 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent;
  v15 = *MEMORY[0x1E69BCBD8];
  v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  (*(*(v16 - 8) + 104))(&v9[v14], v15, v16);
  v19.receiver = v9;
  v19.super_class = v4;
  v17 = objc_msgSendSuper2(&v19, sel_init);
  (*(v13 + 8))(a3, v12);
  return v17;
}

id Experience.__allocating_init(pluginId:queryConfidence:userDialogAct:renderOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v11 = objc_allocWithZone(v5);
  *&v11[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v12 = &v11[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  *v12 = a1;
  *(v12 + 1) = a2;
  *&v11[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a5;
  v13 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct;
  v14 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v15 = *(v14 - 8);
  (*(v15 + 16))(&v11[v13], a3, v14);
  *&v11[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = a4;
  v16 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent;
  v17 = *MEMORY[0x1E69BCBD8];
  v18 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  (*(*(v18 - 8) + 104))(&v11[v16], v17, v18);
  v21.receiver = v11;
  v21.super_class = v5;
  v19 = objc_msgSendSuper2(&v21, sel_init);
  (*(v15 + 8))(a3, v14);
  return v19;
}

id Experience.init(pluginId:queryConfidence:userDialogAct:renderOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *&v5[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v8 = &v5[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v5[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a5;
  v9 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct;
  v10 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v11 = *(v10 - 8);
  (*(v11 + 16))(&v5[v9], a3, v10);
  *&v5[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = a4;
  v12 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent;
  v13 = *MEMORY[0x1E69BCBD8];
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  (*(*(v14 - 8) + 104))(&v5[v12], v13, v14);
  v17.receiver = v5;
  v17.super_class = type metadata accessor for Experience(0);
  v15 = objc_msgSendSuper2(&v17, sel_init);
  (*(v11 + 8))(a3, v10);
  return v15;
}

id Experience.__allocating_init(pluginId:queryConfidence:userDialogAct:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  v12 = objc_allocWithZone(v6);
  *&v12[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v13 = &v12[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  *v13 = a1;
  *(v13 + 1) = a2;
  *&v12[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a5;
  v14 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct;
  v15 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v16 = *(v15 - 8);
  (*(v16 + 16))(&v12[v14], a3, v15);
  *&v12[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = [objc_allocWithZone(type metadata accessor for PommesRenderOptions(0)) init];
  v17 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent;
  v18 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v19 = *(v18 - 8);
  (*(v19 + 16))(&v12[v17], a4, v18);
  v22.receiver = v12;
  v22.super_class = v6;
  v20 = objc_msgSendSuper2(&v22, sel_init);
  (*(v19 + 8))(a4, v18);
  (*(v16 + 8))(a3, v15);
  return v20;
}

id Experience.init(pluginId:queryConfidence:userDialogAct:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  *&v5[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v8 = &v5[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v5[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a5;
  v9 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct;
  v10 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v11 = *(v10 - 8);
  (*(v11 + 16))(&v5[v9], a3, v10);
  *&v5[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = [objc_allocWithZone(type metadata accessor for PommesRenderOptions(0)) init];
  v12 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent;
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v14 = *(v13 - 8);
  (*(v14 + 16))(&v5[v12], a4, v13);
  v17.receiver = v5;
  v17.super_class = type metadata accessor for Experience(0);
  v15 = objc_msgSendSuper2(&v17, sel_init);
  (*(v14 + 8))(a4, v13);
  (*(v11 + 8))(a3, v10);
  return v15;
}

id Experience.__allocating_init(pluginId:queryConfidence:userDialogAct:renderOptions:intent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v7 = v6;
  v14 = objc_allocWithZone(v7);
  *&v14[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v15 = &v14[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  *v15 = a1;
  *(v15 + 1) = a2;
  *&v14[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a6;
  v16 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct;
  v17 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v14[v16], a3, v17);
  *&v14[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = a4;
  v19 = OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent;
  v20 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v21 = *(v20 - 8);
  (*(v21 + 16))(&v14[v19], a5, v20);
  v24.receiver = v14;
  v24.super_class = v7;
  v22 = objc_msgSendSuper2(&v24, sel_init);
  (*(v21 + 8))(a5, v20);
  (*(v18 + 8))(a3, v17);
  return v22;
}

id Experience.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

SiriInformationSearch::PommesRenderOptions::PromptType_optional __swiftcall PommesRenderOptions.PromptType.init(rawValue:)(Swift::String rawValue)
{
  object = rawValue._object;
  v3._countAndFlagsBits = rawValue._countAndFlagsBits;
  v4 = v1;
  v3._object = object;
  v5 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PommesRenderOptions.PromptType.init(rawValue:), v3);

  v7 = 3;
  if (v5 < 3)
  {
    v7 = v5;
  }

  *v4 = v7;
  return result;
}

unint64_t PommesRenderOptions.PromptType.rawValue.getter()
{
  v1 = 0xD000000000000013;
  if (*v0 != 1)
  {
    v1 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x656E696665646E75;
  }
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PommesRenderOptions.PromptType(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xD000000000000013;
  v3 = *a1;
  v4 = 0x80000001DC651370;
  if (v3 == 1)
  {
    v5 = 0xD000000000000013;
  }

  else
  {
    v5 = 0xD00000000000001ALL;
  }

  if (v3 == 1)
  {
    v6 = 0x80000001DC651370;
  }

  else
  {
    v6 = 0x80000001DC651390;
  }

  if (*a1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656E696665646E75;
  }

  if (v3)
  {
    v8 = v6;
  }

  else
  {
    v8 = 0xE900000000000064;
  }

  if (*a2 != 1)
  {
    v2 = 0xD00000000000001ALL;
    v4 = 0x80000001DC651390;
  }

  if (*a2)
  {
    v9 = v2;
  }

  else
  {
    v9 = 0x656E696665646E75;
  }

  if (*a2)
  {
    v10 = v4;
  }

  else
  {
    v10 = 0xE900000000000064;
  }

  if (v7 == v9 && v8 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v11 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PommesRenderOptions.PromptType()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance PommesRenderOptions.PromptType(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PommesRenderOptions.PromptType(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

void protocol witness for RawRepresentable.rawValue.getter in conformance PommesRenderOptions.PromptType(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE900000000000064;
  v4 = 0xD000000000000013;
  v5 = 0x80000001DC651370;
  if (v2 != 1)
  {
    v4 = 0xD00000000000001ALL;
    v5 = 0x80000001DC651390;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v4;
  }

  else
  {
    v7 = 0x656E696665646E75;
  }

  if (!v6)
  {
    v3 = v5;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t PommesRenderOptions.Builder.switchProfile.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for PommesRenderOptions.Builder(0) + 28);

  return outlined init with copy of Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams?(v3, a1);
}

uint64_t PommesRenderOptions.Builder.switchProfile.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for PommesRenderOptions.Builder(0) + 28);

  return outlined assign with take of Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams?(a1, v3);
}

uint64_t PommesRenderOptions.Builder.preserveResultSpaceIfPossible.setter(char a1)
{
  result = type metadata accessor for PommesRenderOptions.Builder(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

uint64_t PommesRenderOptions.Builder.promptTypes.getter()
{
  type metadata accessor for PommesRenderOptions.Builder(0);
}

uint64_t PommesRenderOptions.Builder.promptTypes.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PommesRenderOptions.Builder(0) + 36);

  *(v1 + v3) = a1;
  return result;
}

uint64_t PommesRenderOptions.Builder.init()@<X0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 2) = 0;
  v2 = type metadata accessor for PommesRenderOptions.Builder(0);
  v3 = v2[7];
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams();
  result = (*(*(v4 - 8) + 56))(a1 + v3, 1, 1, v4);
  *(a1 + v2[8]) = 0;
  *(a1 + v2[9]) = MEMORY[0x1E69E7CC0];
  return result;
}

uint64_t PommesRenderOptions.Builder.init(isImmersiveExperience:isSquawkResponse:isPhoneCallActive:switchProfile:preserveResultSpaceIfPossible:promptTypes:)@<X0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, _BYTE *a7@<X8>)
{
  *a7 = a1;
  a7[1] = a2;
  a7[2] = a3;
  v11 = type metadata accessor for PommesRenderOptions.Builder(0);
  result = outlined init with take of Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams?(a4, &a7[v11[7]]);
  a7[v11[8]] = a5;
  *&a7[v11[9]] = a6;
  return result;
}

uint64_t PommesRenderOptions.__allocating_init(isImmersiveExperience:isSquawkResponse:)(char a1, char a2)
{
  v4[16] = a1;
  v4[17] = a2;
  return (*(v2 + 128))(partial apply for closure #1 in PommesRenderOptions.init(isImmersiveExperience:isSquawkResponse:), v4);
}

uint64_t PommesRenderOptions.init()()
{
  ObjectType = swift_getObjectType();
  v1 = (*(ObjectType + 128))(destructiveProjectEnumData for UserPromptExperience.PromptType, 0);
  swift_deallocPartialClassInstance();
  return v1;
}

id PommesRenderOptions.init(_:)(void (*a1)(char *))
{
  v2 = v1;
  v4 = type metadata accessor for PommesRenderOptions.Builder(0);
  v5 = (v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *v7 = 0;
  v7[2] = 0;
  v8 = v5[9];
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams();
  (*(*(v9 - 8) + 56))(&v7[v8], 1, 1, v9);
  v10 = v5[10];
  v7[v10] = 0;
  v11 = v5[11];
  *&v7[v11] = MEMORY[0x1E69E7CC0];
  a1(v7);
  v1[OBJC_IVAR____TtC21SiriInformationSearch19PommesRenderOptions_isImmersiveExperience] = *v7;
  v1[OBJC_IVAR____TtC21SiriInformationSearch19PommesRenderOptions_isSquawkResponse] = v7[1];
  v1[OBJC_IVAR____TtC21SiriInformationSearch19PommesRenderOptions_isPhoneCallActive] = v7[2];
  outlined init with copy of Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams?(&v7[v8], &v1[OBJC_IVAR____TtC21SiriInformationSearch19PommesRenderOptions_switchProfile]);
  v1[OBJC_IVAR____TtC21SiriInformationSearch19PommesRenderOptions_preserveResultSpaceIfPossible] = v7[v10];
  v12 = *&v7[v11];

  outlined destroy of PommesRenderOptions.Builder(v7);
  *&v2[OBJC_IVAR____TtC21SiriInformationSearch19PommesRenderOptions_promptTypes] = v12;
  v13 = type metadata accessor for PommesRenderOptions(0);
  v15.receiver = v2;
  v15.super_class = v13;
  return objc_msgSendSuper2(&v15, sel_init);
}

id PommesRenderOptions.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  v4 = specialized PommesRenderOptions.init(coder:)(a1);

  return v4;
}

id PommesRenderOptions.init(coder:)(void *a1)
{
  v2 = specialized PommesRenderOptions.init(coder:)(a1);

  return v2;
}

Swift::Void __swiftcall PommesRenderOptions.encode(with:)(NSCoder with)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMd, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v34 - v5;
  v7 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch19PommesRenderOptions_isImmersiveExperience);
  v8 = MEMORY[0x1E1299430](0x76697372656D6D69, 0xE900000000000065);
  [(objc_class *)with.super.isa encodeBool:v7 forKey:v8];

  v9 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch19PommesRenderOptions_isSquawkResponse);
  v10 = MEMORY[0x1E1299430](0x6B7761757173, 0xE600000000000000);
  [(objc_class *)with.super.isa encodeBool:v9 forKey:v10];

  v11 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch19PommesRenderOptions_isPhoneCallActive);
  v12 = MEMORY[0x1E1299430](0x6C6143656E6F6870, 0xEF6576697463416CLL);
  [(objc_class *)with.super.isa encodeBool:v11 forKey:v12];

  outlined init with copy of Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams?(v2 + OBJC_IVAR____TtC21SiriInformationSearch19PommesRenderOptions_switchProfile, v6);
  v13 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams();
  v14 = *(v13 - 8);
  if ((*(v14 + 48))(v6, 1, v13) == 1)
  {
    outlined destroy of ClientExperienceSignals?(v6, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMd, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMR);
  }

  else
  {
    lazy protocol witness table accessor for type Apple_Parsec_Siri_Context_ResultEntity and conformance Apple_Parsec_Siri_Context_ResultEntity(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams and conformance Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams, MEMORY[0x1E69BDA10], MEMORY[0x1E69BDA08]);
    v15 = Message.serializedData(partial:)();
    v16 = v6;
    v18 = v17;
    (*(v14 + 8))(v16, v13);
    isa = Data._bridgeToObjectiveC()().super.isa;
    v20 = MEMORY[0x1E1299430](0x7250686374697773, 0xED0000656C69666FLL);
    [(objc_class *)with.super.isa encodeObject:isa forKey:v20];

    outlined consume of Data._Representation(v15, v18);
  }

  v21 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch19PommesRenderOptions_preserveResultSpaceIfPossible);
  v22 = MEMORY[0x1E1299430](0xD00000000000001DLL, 0x80000001DC651F90);
  [(objc_class *)with.super.isa encodeBool:v21 forKey:v22];

  v23 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch19PommesRenderOptions_promptTypes);
  v24 = *(v23 + 16);
  if (v24)
  {
    v35 = with.super.isa;
    v36 = MEMORY[0x1E69E7CC0];
    specialized ContiguousArray.reserveCapacity(_:)();
    v25 = (v23 + 32);
    do
    {
      v27 = *v25++;
      v26 = v27;
      v28 = 0xD00000000000001ALL;
      if (v27 == 1)
      {
        v28 = 0xD000000000000013;
        v29 = 0x80000001DC651370;
      }

      else
      {
        v29 = 0x80000001DC651390;
      }

      if (v26)
      {
        v30 = v28;
      }

      else
      {
        v30 = 0x656E696665646E75;
      }

      if (v26)
      {
        v31 = v29;
      }

      else
      {
        v31 = 0xE900000000000064;
      }

      MEMORY[0x1E1299430](v30, v31);

      specialized ContiguousArray._makeUniqueAndReserveCapacityIfNotUnique()();
      specialized ContiguousArray._reserveCapacityAssumingUniqueBuffer(oldCount:)();
      specialized ContiguousArray._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      specialized ContiguousArray._endMutation()();
      --v24;
    }

    while (v24);
    with.super.isa = v35;
  }

  type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  v32 = Array._bridgeToObjectiveC()().super.isa;

  v33 = MEMORY[0x1E1299430](0x795474706D6F7270, 0xEB00000000736570);
  [(objc_class *)with.super.isa encodeObject:v32 forKey:v33];
}

id Experience.__deallocating_deinit(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1(0);
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t serialize(_:at:)(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v13 = v10 + 32;
  v14 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v13 >= &v14[16 * v8])
    {
      memmove(v13, v14, 16 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy20SiriInformationTypes15WarmupComponentOGMd, &_ss23_ContiguousArrayStorageCy20SiriInformationTypes15WarmupComponentOGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriInformationSearch19PommesRenderOptionsC10PromptTypeOGMd, &_ss23_ContiguousArrayStorageCy21SiriInformationSearch19PommesRenderOptionsC10PromptTypeOGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, _ss23_ContiguousArrayStorageCys5UInt8VGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemVGMR, MEMORY[0x1E69BD108]);
}

{
  return specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, a4, &_ss23_ContiguousArrayStorageCy10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadataVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI47Apple_Parsec_Siri_V2alpha_DomainUseCaseMetadataVGMR, MEMORY[0x1E69BD5C0]);
}

void *specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t closure #1 in OSLogArguments.append(_:)(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = specialized _StringGuts._deconstructUTF8<A>(scratch:)(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x1E69E6A18];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    outlined init with copy of Any(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_0(v11);
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
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = _StringGuts._allocateForDeconstruct()(a5, a6);
    *a1 = v8;
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
    v11 = a6;
    result = _StringObject.sharedUTF8.getter();
    a6 = v11;
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

void *_StringGuts._allocateForDeconstruct()(uint64_t a1, unint64_t a2)
{
  v3 = specialized _copyCollectionToContiguousArray<A>(_:)(a1, a2);
  specialized Array.append<A>(contentsOf:)(&outlined read-only object #0 of _StringGuts._allocateForDeconstruct());
  return v3;
}

void *specialized _copyCollectionToContiguousArray<A>(_:)(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v6 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = _StringObject.sharedUTF8.getter();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = String.UTF8View._foreignCount()();
        if (!v10)
        {
          return MEMORY[0x1E69E7CC0];
        }

        v11 = v10;
        v7 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfCs5UInt8V_Tt1gq5(v10, 0);
        result = _StringGuts._foreignCopyUTF8(into:)();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
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
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys5UInt8VGMd, _ss23_ContiguousArrayStorageCys5UInt8VGMR);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

_BYTE **closure #1 in OSLogArguments.append(_:)(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t outlined init with copy of Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMd, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined assign with take of Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMd, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t outlined init with take of Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMd, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

_BYTE *partial apply for closure #1 in PommesRenderOptions.init(isImmersiveExperience:isSquawkResponse:)(_BYTE *result)
{
  v2 = *(v1 + 17);
  *result = *(v1 + 16);
  result[1] = v2;
  return result;
}

uint64_t outlined destroy of PommesRenderOptions.Builder(uint64_t a1)
{
  v2 = type metadata accessor for PommesRenderOptions.Builder(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id specialized PommesRenderOptions.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMd, &_s10PegasusAPI52Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParamsVSgMR);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v41 - v6;
  v8 = MEMORY[0x1E1299430](0x76697372656D6D69, 0xE900000000000065);
  v9 = [a1 decodeBoolForKey_];

  v1[OBJC_IVAR____TtC21SiriInformationSearch19PommesRenderOptions_isImmersiveExperience] = v9;
  v10 = MEMORY[0x1E1299430](0x6B7761757173, 0xE600000000000000);
  v11 = [a1 decodeBoolForKey_];

  v1[OBJC_IVAR____TtC21SiriInformationSearch19PommesRenderOptions_isSquawkResponse] = v11;
  v12 = MEMORY[0x1E1299430](0x6C6143656E6F6870, 0xEF6576697463416CLL);
  v13 = [a1 decodeBoolForKey_];

  v1[OBJC_IVAR____TtC21SiriInformationSearch19PommesRenderOptions_isPhoneCallActive] = v13;
  v14 = MEMORY[0x1E1299430](0x7250686374697773, 0xED0000656C69666FLL);
  v15 = [a1 decodeObjectForKey_];

  if (v15)
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v48 = 0u;
    v49 = 0u;
  }

  v44 = v48;
  v45 = v49;
  if (*(&v49 + 1))
  {
    if (swift_dynamicCast())
    {
      v16 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams();
      v46 = 0;
      v44 = 0u;
      v45 = 0u;
      BinaryDecodingOptions.init()();
      lazy protocol witness table accessor for type Apple_Parsec_Siri_Context_ResultEntity and conformance Apple_Parsec_Siri_Context_ResultEntity(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams and conformance Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams, MEMORY[0x1E69BDA10], MEMORY[0x1E69BDA08]);
      Message.init(serializedData:extensions:partial:options:)();
      (*(*(v16 - 8) + 56))(v7, 0, 1, v16);
      outlined init with take of Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams?(v7, &v1[OBJC_IVAR____TtC21SiriInformationSearch19PommesRenderOptions_switchProfile]);
      goto LABEL_9;
    }
  }

  else
  {
    outlined destroy of ClientExperienceSignals?(&v44, &_sypSgMd, &_sypSgMR);
  }

  v17 = OBJC_IVAR____TtC21SiriInformationSearch19PommesRenderOptions_switchProfile;
  v18 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams();
  (*(*(v18 - 8) + 56))(&v1[v17], 1, 1, v18);
LABEL_9:
  v19 = MEMORY[0x1E1299430](0xD00000000000001DLL, 0x80000001DC651F90);
  v20 = [a1 decodeBoolForKey_];

  v2[OBJC_IVAR____TtC21SiriInformationSearch19PommesRenderOptions_preserveResultSpaceIfPossible] = v20;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1DC64ED70;
  *(v21 + 32) = type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
  *(v21 + 40) = type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  NSCoder.decodeObject(of:forKey:)();

  if (!*(&v45 + 1))
  {
    outlined destroy of ClientExperienceSignals?(&v44, &_sypSgMd, &_sypSgMR);
    goto LABEL_27;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSStringCGMd, &_sSaySo8NSStringCGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_27:
    v37 = MEMORY[0x1E69E7CC0];
    goto LABEL_29;
  }

  v41 = 0;
  v42 = v2;
  v22 = v48;
  if (v48 >> 62)
  {
LABEL_32:
    if (v22 < 0)
    {
      v40 = v22;
    }

    else
    {
      v40 = v22 & 0xFFFFFFFFFFFFFF8;
    }

    v23 = MEMORY[0x1E1299770](v40);
  }

  else
  {
    v23 = *((v48 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v24 = 0;
  v43 = MEMORY[0x1E69E7CC0];
  while (v23 != v24)
  {
    if ((v22 & 0xC000000000000001) != 0)
    {
      v25 = MEMORY[0x1E12996A0](v24, v22);
    }

    else
    {
      if (v24 >= *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_31;
      }

      v25 = *(v22 + 8 * v24 + 32);
    }

    v26 = v25;
    v27 = v24 + 1;
    if (__OFADD__(v24, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
      goto LABEL_32;
    }

    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;
    v31._countAndFlagsBits = v28;
    v31._object = v30;
    v32 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of PommesRenderOptions.init(coder:), v31);

    ++v24;
    if (v32 < 3)
    {
      v33 = v43;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v33 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v33 + 2) + 1, 1, v33);
      }

      v35 = *(v33 + 2);
      v34 = *(v33 + 3);
      v43 = v33;
      if (v35 >= v34 >> 1)
      {
        v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v34 > 1), v35 + 1, 1, v43);
      }

      v36 = v43;
      *(v43 + 2) = v35 + 1;
      v36[v35 + 32] = v32;
      v24 = v27;
    }
  }

  v2 = v42;
  v37 = v43;
LABEL_29:
  *&v2[OBJC_IVAR____TtC21SiriInformationSearch19PommesRenderOptions_promptTypes] = v37;
  v38 = type metadata accessor for PommesRenderOptions(0);
  v47.receiver = v2;
  v47.super_class = v38;
  return objc_msgSendSuper2(&v47, sel_init);
}

uint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_Context_ResultEntity and conformance Apple_Parsec_Siri_Context_ResultEntity(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t lazy protocol witness table accessor for type PommesRenderOptions.PromptType and conformance PommesRenderOptions.PromptType()
{
  result = lazy protocol witness table cache variable for type PommesRenderOptions.PromptType and conformance PommesRenderOptions.PromptType;
  if (!lazy protocol witness table cache variable for type PommesRenderOptions.PromptType and conformance PommesRenderOptions.PromptType)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesRenderOptions.PromptType and conformance PommesRenderOptions.PromptType);
  }

  return result;
}

uint64_t type metadata completion function for Experience(uint64_t a1)
{
  result = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

void type metadata completion function for PommesRenderOptions(uint64_t a1)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams?)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams?);
    }
  }
}

void type metadata completion function for PommesRenderOptions.Builder(uint64_t a1)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_SwitchProfileBuilderParams?(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for [PommesRenderOptions.PromptType]();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void type metadata accessor for [PommesRenderOptions.PromptType]()
{
  if (!lazy cache variable for type metadata for [PommesRenderOptions.PromptType])
  {
    v0 = type metadata accessor for Array();
    if (!v1)
    {
      atomic_store(v0, &lazy cache variable for type metadata for [PommesRenderOptions.PromptType]);
    }
  }
}

uint64_t outlined init with copy of Any(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t GeoExperience.geoClientComponent.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21SiriInformationSearch13GeoExperience_geoClientComponent;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t GeoExperience.__allocating_init(pluginId:geoClientComponent:queryConfidenceScore:userDialogAct:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v22 = a2;
  v10 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v17, a3, v14);
  (*(v11 + 16))(v13, a4, v10);
  v18 = [objc_allocWithZone(type metadata accessor for PommesRenderOptions(0)) init];
  v19 = (*(v5 + 336))(a1, v22, v17, v13, v18, a5);
  (*(v11 + 8))(a4, v10);
  (*(v15 + 8))(a3, v14);
  return v19;
}

id GeoExperience.__allocating_init(pluginId:geoClientComponent:queryConfidenceScore:userDialogAct:renderOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v7 = v6;
  v32 = a5;
  v33 = a4;
  v29 = a3;
  v30 = a1;
  v31 = a2;
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v17 = &v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = objc_allocWithZone(v7);
  v19 = OBJC_IVAR____TtC21SiriInformationSearch13GeoExperience_geoClientComponent;
  v28 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent();
  v20 = *(v28 - 8);
  (*(v20 + 16))(&v18[v19], a3, v28);
  v21 = *(v15 + 16);
  v21(v17, v33, v14);
  (*(v11 + 104))(v13, *MEMORY[0x1E69BCBD8], v10);
  *&v18[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v22 = &v18[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  v23 = v31;
  *v22 = v30;
  v22[1] = v23;
  *&v18[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a6;
  v21(&v18[OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct], v17, v14);
  *&v18[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = v32;
  (*(v11 + 16))(&v18[OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent], v13, v10);
  v24 = type metadata accessor for Experience(0);
  v34.receiver = v18;
  v34.super_class = v24;
  v25 = objc_msgSendSuper2(&v34, sel_init);
  v26 = *(v15 + 8);
  v26(v33, v14);
  (*(v20 + 8))(v29, v28);
  (*(v11 + 8))(v13, v10);
  v26(v17, v14);
  return v25;
}

id GeoExperience.init(pluginId:geoClientComponent:queryConfidenceScore:userDialogAct:renderOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  v32 = a5;
  v33 = a4;
  v29 = a3;
  v30 = a1;
  v31 = a2;
  v27 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v9 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC21SiriInformationSearch13GeoExperience_geoClientComponent;
  v28 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent();
  v17 = *(v28 - 8);
  (*(v17 + 16))(&v6[v16], a3, v28);
  v18 = *(v13 + 16);
  v18(v15, v33, v12);
  v19 = v27;
  (*(v9 + 104))(v11, *MEMORY[0x1E69BCBD8], v27);
  *&v6[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v20 = &v6[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  v21 = v31;
  *v20 = v30;
  v20[1] = v21;
  *&v6[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a6;
  v18(&v6[OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct], v15, v12);
  *&v6[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = v32;
  (*(v9 + 16))(&v6[OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent], v11, v19);
  v22 = type metadata accessor for Experience(0);
  v34.receiver = v6;
  v34.super_class = v22;
  v23 = objc_msgSendSuper2(&v34, sel_init);
  v24 = *(v13 + 8);
  v24(v33, v12);
  (*(v17 + 8))(v29, v28);
  (*(v9 + 8))(v11, v19);
  v24(v15, v12);
  return v23;
}

NSObject *GeoExperience.init(coder:)(NSObject *a1)
{
  v3 = type metadata accessor for BinaryDecodingOptions();
  MEMORY[0x1EEE9AC00](v3 - 8);
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  type metadata accessor for NSData();
  v8 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v8)
  {
    v9 = v8;
    static Data._unconditionallyBridgeFromObjectiveC(_:)();
    v18 = 0;
    memset(&v17[48], 0, 32);
    BinaryDecodingOptions.init()();
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_GeoClientComponent and conformance Apple_Parsec_Siri_V2alpha_GeoClientComponent();
    Message.init(serializedData:extensions:partial:options:)();
    (*(v5 + 32))(v1 + OBJC_IVAR____TtC21SiriInformationSearch13GeoExperience_geoClientComponent, v7, v4);
    v14 = Experience.init(coder:)(a1);
    v15 = v14;

    if (v14)
    {

      return v14;
    }
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.pommes);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_1DC5C3000, v11, v12, "GeoExperience cannot be decoded", v13, 2u);
      MEMORY[0x1E1299E70](v13, -1, -1);
    }

    type metadata accessor for GeoExperience(0);
    swift_deallocPartialClassInstance();
  }

  return 0;
}

Swift::Void __swiftcall GeoExperience.encode(with:)(NSCoder with)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent();
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_GeoClientComponent and conformance Apple_Parsec_Siri_V2alpha_GeoClientComponent();
  v2 = Message.serializedData(partial:)();
  v4 = v3;
  isa = Data._bridgeToObjectiveC()().super.isa;
  outlined consume of Data._Representation(v2, v4);
  v6 = MEMORY[0x1E1299430](0xD000000000000012, 0x80000001DC6520D0);
  [(objc_class *)with.super.isa encodeObject:isa forKey:v6];

  Experience.encode(with:)(with);
}

uint64_t GeoExperience.__ivar_destroyer()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch13GeoExperience_geoClientComponent;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent();
  v3 = *(*(v2 - 8) + 8);

  return v3(v0 + v1, v2);
}

id GeoExperience.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GeoExperience(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for GeoExperience(uint64_t a1)
{
  result = type metadata singleton initialization cache for GeoExperience;
  if (!type metadata singleton initialization cache for GeoExperience)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_GeoClientComponent and conformance Apple_Parsec_Siri_V2alpha_GeoClientComponent()
{
  result = lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_GeoClientComponent and conformance Apple_Parsec_Siri_V2alpha_GeoClientComponent;
  if (!lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_GeoClientComponent and conformance Apple_Parsec_Siri_V2alpha_GeoClientComponent)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_GeoClientComponent and conformance Apple_Parsec_Siri_V2alpha_GeoClientComponent);
  }

  return result;
}

uint64_t type metadata completion function for GeoExperience(uint64_t a1)
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_GeoClientComponent();
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

uint64_t key path setter for GenericExperience.serverSuggestions : GenericExperience(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(a1, &v8 - v5, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMR);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x168))(v6);
}

uint64_t key path setter for GenericExperience.sageExperience : GenericExperience(uint64_t a1, void **a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI40Apple_Parsec_Siri_V2alpha_SageExperienceVSgMd, &_s10PegasusAPI40Apple_Parsec_Siri_V2alpha_SageExperienceVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v8 - v5;
  outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(a1, &v8 - v5, &_s10PegasusAPI40Apple_Parsec_Siri_V2alpha_SageExperienceVSgMd, &_s10PegasusAPI40Apple_Parsec_Siri_V2alpha_SageExperienceVSgMR);
  return (*((*MEMORY[0x1E69E7D40] & **a2) + 0x180))(v6);
}

uint64_t GenericExperience.serverSuggestions.getter@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(v4 + v8, a4, a2, a3);
}

uint64_t GenericExperience.serverSuggestions.setter(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  outlined assign with take of Apple_Parsec_Siri_V2alpha_AudioUnderstanding?(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t GenericExperience.__allocating_init(components:queryConfidenceScore:)(uint64_t a1, double a2)
{
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v14 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  Siri_Nlu_External_UserDialogAct.init()();
  (*(v6 + 104))(v8, *MEMORY[0x1E69BCBD8], v5);
  v12 = [objc_allocWithZone(type metadata accessor for PommesRenderOptions(0)) init];
  return (*(v2 + 408))(a1, v11, v8, v12, a2);
}

uint64_t GenericExperience.__allocating_init(components:queryConfidenceScore:userDialogAct:)(uint64_t a1, uint64_t a2, double a3)
{
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 16))(v14, a2, v11);
  (*(v8 + 104))(v10, *MEMORY[0x1E69BCBD8], v7);
  v15 = [objc_allocWithZone(type metadata accessor for PommesRenderOptions(0)) init];
  v16 = (*(v3 + 408))(a1, v14, v10, v15, a3);
  (*(v12 + 8))(a2, v11);
  return v16;
}

id GenericExperience.__allocating_init(components:queryConfidenceScore:userDialogAct:renderOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v5 = v4;
  v29 = a3;
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v28 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = objc_allocWithZone(v5);
  v18 = OBJC_IVAR____TtC21SiriInformationSearch17GenericExperience_serverSuggestions;
  v19 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion();
  (*(*(v19 - 8) + 56))(&v17[v18], 1, 1, v19);
  v20 = OBJC_IVAR____TtC21SiriInformationSearch17GenericExperience_sageExperience;
  v21 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SageExperience();
  (*(*(v21 - 8) + 56))(&v17[v20], 1, 1, v21);
  *&v17[OBJC_IVAR____TtC21SiriInformationSearch17GenericExperience_components] = a1;
  v22 = *(v14 + 16);
  v22(v16, a2, v13);
  (*(v10 + 104))(v12, *MEMORY[0x1E69BCBD8], v9);
  *&v17[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v23 = &v17[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  *v23 = 0x73757361676570;
  *(v23 + 1) = 0xE700000000000000;
  *&v17[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a4;
  v22(&v17[OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct], v16, v13);
  *&v17[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = v29;
  (*(v10 + 16))(&v17[OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent], v12, v9);
  v24 = type metadata accessor for Experience(0);
  v30.receiver = v17;
  v30.super_class = v24;
  v25 = objc_msgSendSuper2(&v30, sel_init);
  v26 = *(v14 + 8);
  v26(a2, v13);
  (*(v10 + 8))(v12, v9);
  v26(v16, v13);
  return v25;
}

id GenericExperience.init(components:queryConfidenceScore:userDialogAct:renderOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v27 = a3;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC21SiriInformationSearch17GenericExperience_serverSuggestions;
  v17 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion();
  (*(*(v17 - 8) + 56))(&v4[v16], 1, 1, v17);
  v18 = OBJC_IVAR____TtC21SiriInformationSearch17GenericExperience_sageExperience;
  v19 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SageExperience();
  (*(*(v19 - 8) + 56))(&v4[v18], 1, 1, v19);
  *&v4[OBJC_IVAR____TtC21SiriInformationSearch17GenericExperience_components] = a1;
  v20 = *(v13 + 16);
  v20(v15, a2, v12);
  (*(v9 + 104))(v11, *MEMORY[0x1E69BCBD8], v8);
  *&v4[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v21 = &v4[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  *v21 = 0x73757361676570;
  *(v21 + 1) = 0xE700000000000000;
  *&v4[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a4;
  v20(&v4[OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct], v15, v12);
  *&v4[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = v27;
  (*(v9 + 16))(&v4[OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent], v11, v8);
  v22 = type metadata accessor for Experience(0);
  v28.receiver = v4;
  v28.super_class = v22;
  v23 = objc_msgSendSuper2(&v28, sel_init);
  v24 = *(v13 + 8);
  v24(a2, v12);
  (*(v9 + 8))(v11, v8);
  v24(v15, v12);
  return v23;
}

id GenericExperience.__allocating_init(components:queryConfidenceScore:userDialogAct:intent:renderOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v6 = v5;
  v38 = a3;
  v39 = a4;
  v35 = a2;
  v37 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v34 = *(v37 - 8);
  v10 = v34;
  MEMORY[0x1EEE9AC00](v37);
  v12 = &v32 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v36 = *(v13 - 8);
  v14 = v36;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v32 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = objc_allocWithZone(v6);
  v18 = OBJC_IVAR____TtC21SiriInformationSearch17GenericExperience_serverSuggestions;
  v19 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion();
  (*(*(v19 - 8) + 56))(&v17[v18], 1, 1, v19);
  v20 = OBJC_IVAR____TtC21SiriInformationSearch17GenericExperience_sageExperience;
  v21 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SageExperience();
  (*(*(v21 - 8) + 56))(&v17[v20], 1, 1, v21);
  *&v17[OBJC_IVAR____TtC21SiriInformationSearch17GenericExperience_components] = a1;
  v22 = *(v14 + 16);
  v33 = v16;
  v22(v16, a2, v13);
  v23 = *(v10 + 16);
  v24 = v37;
  v25 = v38;
  v23(v12, v38, v37);
  *&v17[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v26 = &v17[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  *v26 = 0x73757361676570;
  *(v26 + 1) = 0xE700000000000000;
  *&v17[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a5;
  v22(&v17[OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct], v16, v13);
  *&v17[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = v39;
  v23(&v17[OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent], v12, v24);
  v27 = type metadata accessor for Experience(0);
  v40.receiver = v17;
  v40.super_class = v27;
  v28 = objc_msgSendSuper2(&v40, sel_init);
  v29 = *(v34 + 8);
  v29(v25, v24);
  v30 = *(v36 + 8);
  v30(v35, v13);
  v29(v12, v24);
  v30(v33, v13);
  return v28;
}

id GenericExperience.init(components:queryConfidenceScore:userDialogAct:intent:renderOptions:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, double a5)
{
  v36 = a3;
  v37 = a4;
  v33 = a2;
  v35 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.InstructionIntent();
  v32 = *(v35 - 8);
  v9 = v32;
  MEMORY[0x1EEE9AC00](v35);
  v11 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v34 = *(v12 - 8);
  v13 = v34;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = OBJC_IVAR____TtC21SiriInformationSearch17GenericExperience_serverSuggestions;
  v17 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion();
  (*(*(v17 - 8) + 56))(&v5[v16], 1, 1, v17);
  v18 = OBJC_IVAR____TtC21SiriInformationSearch17GenericExperience_sageExperience;
  v19 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SageExperience();
  (*(*(v19 - 8) + 56))(&v5[v18], 1, 1, v19);
  *&v5[OBJC_IVAR____TtC21SiriInformationSearch17GenericExperience_components] = a1;
  v20 = *(v13 + 16);
  v31 = v15;
  v20(v15, a2, v12);
  v21 = *(v9 + 16);
  v23 = v35;
  v22 = v36;
  v21(v11, v36, v35);
  *&v5[OBJC_IVAR____TtC21SiriInformationSearch10Experience_associatedEntities] = MEMORY[0x1E69E7CC0];
  v24 = &v5[OBJC_IVAR____TtC21SiriInformationSearch10Experience_pluginIdentifier];
  *v24 = 0x73757361676570;
  *(v24 + 1) = 0xE700000000000000;
  *&v5[OBJC_IVAR____TtC21SiriInformationSearch10Experience_queryConfidence] = a5;
  v20(&v5[OBJC_IVAR____TtC21SiriInformationSearch10Experience_userDialogAct], v15, v12);
  *&v5[OBJC_IVAR____TtC21SiriInformationSearch10Experience_renderOptions] = v37;
  v21(&v5[OBJC_IVAR____TtC21SiriInformationSearch10Experience_intent], v11, v23);
  v25 = type metadata accessor for Experience(0);
  v38.receiver = v5;
  v38.super_class = v25;
  v26 = objc_msgSendSuper2(&v38, sel_init);
  v27 = *(v32 + 8);
  v27(v22, v23);
  v28 = *(v34 + 8);
  v28(v33, v12);
  v27(v11, v23);
  v28(v31, v12);
  return v26;
}

char *GenericExperience.catIds.getter()
{
  v1 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v18 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch17GenericExperience_components);
  v6 = *(v5 + 16);
  if (!v6)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v7 = 0;
  v8 = (v2 + 8);
  v21 = v6 - 1;
  v22 = MEMORY[0x1E69E7CC0];
  do
  {
    v9 = v7;
    while (1)
    {
      if (v9 >= *(v5 + 16))
      {
        __break(1u);

        (*v8)(v4, v1);

        __break(1u);
        return result;
      }

      (*(v2 + 16))(v4, v5 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v9, v1);
      closure #1 in GenericExperience.catIds.getter(&v23);
      (*v8)(v4, v1);
      v10 = v24;
      if (v24)
      {
        break;
      }

      if (v6 == ++v9)
      {
        return v22;
      }
    }

    v20 = v23;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v22 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v22 + 2) + 1, 1, v22);
    }

    v12 = *(v22 + 2);
    v11 = *(v22 + 3);
    v13 = v12 + 1;
    if (v12 >= v11 >> 1)
    {
      v18 = *(v22 + 2);
      v19 = v12 + 1;
      v16 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v11 > 1), v12 + 1, 1, v22);
      v12 = v18;
      v13 = v19;
      v22 = v16;
    }

    v7 = v9 + 1;
    v14 = v22;
    *(v22 + 2) = v13;
    v15 = &v14[16 * v12];
    *(v15 + 4) = v20;
    *(v15 + 5) = v10;
  }

  while (v21 != v9);
  return v22;
}

uint64_t closure #1 in GenericExperience.catIds.getter@<X0>(void *a1@<X8>)
{
  v99 = a1;
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v84 - v2;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SayItBuilderParams();
  v86 = *(v4 - 8);
  v87 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v85 = &v84 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder();
  v7 = *(v6 - 8);
  v97 = v6;
  v98 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v84 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent();
  v92 = *(v10 - 8);
  v93 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v91 = &v84 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SayItComponent();
  v89 = *(v12 - 8);
  v90 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v88 = &v84 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_CatDialogComponent();
  v94 = *(v14 - 8);
  v95 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v84 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent();
  v96 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v84 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
  v21 = MEMORY[0x1EEE9AC00](v20 - 8);
  v23 = &v84 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v21);
  v25 = &v84 - v24;
  Apple_Parsec_Siri_V2alpha_ExperienceComponent.component.getter();
  v26 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component();
  v27 = *(v26 - 8);
  v28 = (*(v27 + 48))(v25, 1, v26);
  v29 = v99;
  if (v28 == 1)
  {
    goto LABEL_2;
  }

  v84 = v25;
  outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(v25, v23, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
  v31 = (*(v27 + 88))(v23, v26);
  if (v31 == *MEMORY[0x1E69BD570])
  {
    (*(v27 + 96))(v23, v26);
    v32 = v96;
    (*(v96 + 32))(v19, v23, v17);
    v33 = Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.catID.getter();
    v35 = v34;

    v36 = HIBYTE(v35) & 0xF;
    if ((v35 & 0x2000000000000000) == 0)
    {
      v36 = v33 & 0xFFFFFFFFFFFFLL;
    }

    if (v36)
    {
      v37 = Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.catID.getter();
      v39 = v38;
    }

    else
    {
      v37 = 0;
      v39 = 0;
    }

    v60 = v99;
    (*(v32 + 8))(v19, v17);
    *v60 = v37;
    v60[1] = v39;
LABEL_24:
    v30 = v84;
    return outlined destroy of ClientExperienceSignals?(v30, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
  }

  if (v31 == *MEMORY[0x1E69BD578])
  {
    (*(v27 + 96))(v23, v26);
    v41 = v94;
    v40 = v95;
    v42 = (*(v94 + 32))(v16, v23, v95);
    v43 = MEMORY[0x1E1298DE0](v42);
    v45 = v44;

    v47 = HIBYTE(v45) & 0xF;
    if ((v45 & 0x2000000000000000) == 0)
    {
      v47 = v43 & 0xFFFFFFFFFFFFLL;
    }

    if (v47)
    {
      v48 = MEMORY[0x1E1298DE0](v46);
      v50 = v49;
    }

    else
    {
      v48 = 0;
      v50 = 0;
    }

    v72 = v99;
    v73 = v84;
    (*(v41 + 8))(v16, v40);
    goto LABEL_33;
  }

  if (v31 == *MEMORY[0x1E69BD560])
  {
    (*(v27 + 96))(v23, v26);
    v51 = (*(v92 + 32))(v91, v23, v93);
    result = MEMORY[0x1E1298F90](v51);
    v53 = result;
    v96 = *(result + 16);
    if (v96)
    {
      v54 = 0;
      v95 = result + ((*(v98 + 80) + 32) & ~*(v98 + 80));
      LODWORD(v94) = *MEMORY[0x1E69BCBC0];
      v55 = v98;
      do
      {
        if (v54 >= *(v53 + 16))
        {
          __break(1u);
          return result;
        }

        v56 = v97;
        (*(v55 + 16))(v9, v95 + *(v55 + 72) * v54, v97);
        Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.siriCommandBuilderParams.getter();
        (*(v55 + 8))(v9, v56);
        v57 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.OneOf_SiriCommandBuilderParams();
        v58 = *(v57 - 8);
        if ((*(v58 + 48))(v3, 1, v57) == 1)
        {
          result = outlined destroy of ClientExperienceSignals?(v3, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_E14CommandBuilderV06OneOf_egH6ParamsOSgMR);
        }

        else
        {
          v59 = (*(v58 + 88))(v3, v57);
          if (v59 == v94)
          {

            (*(v58 + 96))(v3, v57);
            v75 = v85;
            v74 = v86;
            v76 = v87;
            v77 = (*(v86 + 32))(v85, v3, v87);
            v78 = MEMORY[0x1E1298E10](v77);
            v80 = v79;

            v82 = HIBYTE(v80) & 0xF;
            if ((v80 & 0x2000000000000000) == 0)
            {
              v82 = v78 & 0xFFFFFFFFFFFFLL;
            }

            if (v82)
            {
              v48 = MEMORY[0x1E1298E10](v81);
              v50 = v83;
            }

            else
            {
              v48 = 0;
              v50 = 0;
            }

            v72 = v99;
            v73 = v84;
            (*(v74 + 8))(v75, v76);
            (*(v92 + 8))(v91, v93);
            goto LABEL_33;
          }

          result = (*(v58 + 8))(v3, v57);
        }

        ++v54;
      }

      while (v96 != v54);
    }

    (*(v92 + 8))(v91, v93);
    v71 = v99;
    *v99 = 0;
    v71[1] = 0;
    goto LABEL_24;
  }

  if (v31 != *MEMORY[0x1E69BD568])
  {
    (*(v27 + 8))(v23, v26);
    v29 = v99;
    v25 = v84;
LABEL_2:
    *v29 = 0;
    v29[1] = 0;
    v30 = v25;
    return outlined destroy of ClientExperienceSignals?(v30, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
  }

  (*(v27 + 96))(v23, v26);
  v62 = v88;
  v61 = v89;
  v63 = v90;
  v64 = (*(v89 + 32))(v88, v23, v90);
  v65 = MEMORY[0x1E1298D40](v64);
  v67 = v66;

  v69 = HIBYTE(v67) & 0xF;
  if ((v67 & 0x2000000000000000) == 0)
  {
    v69 = v65 & 0xFFFFFFFFFFFFLL;
  }

  if (v69)
  {
    v48 = MEMORY[0x1E1298D40](v68);
    v50 = v70;
  }

  else
  {
    v48 = 0;
    v50 = 0;
  }

  v72 = v99;
  v73 = v84;
  (*(v61 + 8))(v62, v63);
LABEL_33:
  *v72 = v48;
  v72[1] = v50;
  v30 = v73;
  return outlined destroy of ClientExperienceSignals?(v30, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
}

char *GenericExperience.catCategories.getter()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v35 - v2;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch17GenericExperience_components);
  v13 = *(v12 + 16);
  if (!v13)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v39 = v7;
  v16 = *(v9 + 16);
  v14 = v9 + 16;
  v15 = v16;
  v17 = v12 + ((*(v14 + 64) + 32) & ~*(v14 + 64));
  v44 = *(v14 + 56);
  v42 = *MEMORY[0x1E69BD570];
  v40 = v4;
  v18 = (v14 - 8);
  v35 = (v5 + 8);
  v36 = (v5 + 32);
  v43 = MEMORY[0x1E69E7CC0];
  v37 = v14;
  v38 = v16;
  v16(v11, v17, v8);
  while (1)
  {
    Apple_Parsec_Siri_V2alpha_ExperienceComponent.component.getter();
    v19 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component();
    v20 = *(v19 - 8);
    if ((*(v20 + 48))(v3, 1, v19) == 1)
    {
      (*v18)(v11, v8);
      outlined destroy of ClientExperienceSignals?(v3, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
    }

    else
    {
      v21 = (*(v20 + 88))(v3, v19);
      if (v21 == v42)
      {
        (*(v20 + 96))(v3, v19);
        v22 = v39;
        v23 = v40;
        (*v36)(v39, v3, v40);
        v24 = Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.catCategory.getter();
        v26 = v25;

        v27 = HIBYTE(v26) & 0xF;
        if ((v26 & 0x2000000000000000) == 0)
        {
          v27 = v24 & 0xFFFFFFFFFFFFLL;
        }

        if (v27)
        {
          v41 = Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.catCategory.getter();
          v29 = v28;
          (*v35)(v22, v23);
          (*v18)(v11, v8);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v43 + 2) + 1, 1, v43);
          }

          v31 = *(v43 + 2);
          v30 = *(v43 + 3);
          if (v31 >= v30 >> 1)
          {
            v43 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v30 > 1), v31 + 1, 1, v43);
          }

          v32 = v43;
          *(v43 + 2) = v31 + 1;
          v33 = &v32[16 * v31];
          *(v33 + 4) = v41;
          *(v33 + 5) = v29;
          v15 = v38;
        }

        else
        {
          (*v35)(v22, v23);
          (*v18)(v11, v8);
          v15 = v38;
        }
      }

      else
      {
        (*v18)(v11, v8);
        (*(v20 + 8))(v3, v19);
      }
    }

    v17 += v44;
    if (!--v13)
    {
      break;
    }

    v15(v11, v17, v8);
  }

  return v43;
}

char *GenericExperience.renderedTexts.getter(uint64_t (*a1)(uint64_t), uint64_t (*a2)(uint64_t))
{
  v40 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v40 - v5;
  v49 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent();
  v7 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v46 = &v40 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch17GenericExperience_components);
  v14 = *(v13 + 16);
  if (!v14)
  {
    return MEMORY[0x1E69E7CC0];
  }

  v16 = *(v10 + 16);
  v15 = v10 + 16;
  v51 = v16;
  v17 = v13 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
  v18 = *(v15 + 56);
  v48 = *MEMORY[0x1E69BD570];
  v45 = a1;
  v19 = (v15 - 8);
  v41 = (v7 + 8);
  v42 = (v7 + 32);
  v50 = MEMORY[0x1E69E7CC0];
  v43 = v18;
  v44 = v15;
  v16(v12, v17, v9);
  while (1)
  {
    Apple_Parsec_Siri_V2alpha_ExperienceComponent.component.getter();
    v20 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v6, 1, v20) == 1)
    {
      (*v19)(v12, v9);
      outlined destroy of ClientExperienceSignals?(v6, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
    }

    else
    {
      v22 = (*(v21 + 88))(v6, v20);
      if (v22 == v48)
      {
        (*(v21 + 96))(v6, v20);
        v23 = v46;
        v24 = (*v42)(v46, v6, v49);
        v25 = v45;
        v26 = v45(v24);
        v28 = v27;

        v30 = HIBYTE(v28) & 0xF;
        if ((v28 & 0x2000000000000000) == 0)
        {
          v30 = v26 & 0xFFFFFFFFFFFFLL;
        }

        if (v30)
        {
          v31 = v25(v29);
        }

        else
        {
          v31 = v40(v29);
        }

        v47 = v31;
        v33 = v32;
        (*v41)(v23, v49);
        (*v19)(v12, v9);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v18 = v43;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v50 + 2) + 1, 1, v50);
        }

        v36 = *(v50 + 2);
        v35 = *(v50 + 3);
        if (v36 >= v35 >> 1)
        {
          v50 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v35 > 1), v36 + 1, 1, v50);
        }

        v37 = v50;
        *(v50 + 2) = v36 + 1;
        v38 = &v37[16 * v36];
        *(v38 + 4) = v47;
        *(v38 + 5) = v33;
      }

      else
      {
        (*v19)(v12, v9);
        (*(v21 + 8))(v6, v20);
      }
    }

    v17 += v18;
    if (!--v14)
    {
      break;
    }

    v51(v12, v17, v9);
  }

  return v50;
}

uint64_t GenericExperience.listenAfterSpeaking.getter()
{
  v1 = v0;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SayItBuilderParams();
  v3 = *(v2 - 8);
  v85 = v2;
  v86 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v83 = &v54 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder();
  v5 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v82 = &v54 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v67 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent();
  v7 = *(v67 - 8);
  MEMORY[0x1EEE9AC00](v67);
  v9 = &v54 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v58 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SayItComponent();
  v10 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v54 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RenderedDialogComponent();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v54 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v54 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v54 - v20;
  v70 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent();
  result = MEMORY[0x1EEE9AC00](v70);
  v25 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch17GenericExperience_components);
  v77 = *(v25 + 16);
  if (v77)
  {
    v64 = v9;
    v78 = &v54 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
    v71 = v19;
    v26 = v7;
    v27 = 0;
    v76 = v25 + ((*(v24 + 80) + 32) & ~*(v24 + 80));
    v75 = v24 + 16;
    v69 = *MEMORY[0x1E69BD570];
    v66 = *MEMORY[0x1E69BD560];
    v74 = (v24 + 8);
    v56 = (v10 + 32);
    v55 = (v10 + 8);
    v62 = (v26 + 32);
    v68 = (v13 + 8);
    v81 = v5 + 16;
    v61 = *MEMORY[0x1E69BD568];
    v79 = v5 + 8;
    v80 = (v86 + 8);
    v60 = (v26 + 8);
    v65 = (v13 + 32);
    v63 = v15;
    v28 = v70;
    v59 = v12;
    v72 = v25;
    v73 = v24;
    while (1)
    {
      if (v27 >= *(v25 + 16))
      {
LABEL_31:
        __break(1u);
        return result;
      }

      v29 = v78;
      (*(v24 + 16))(v78, v76 + *(v24 + 72) * v27, v28);
      Apple_Parsec_Siri_V2alpha_ExperienceComponent.component.getter();
      v30 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent.OneOf_Component();
      v31 = *(v30 - 8);
      if ((*(v31 + 48))(v21, 1, v30) == 1)
      {
        break;
      }

      v32 = v71;
      outlined init with copy of Apple_Parsec_Siri_V2alpha_MultiUserContext?(v21, v71, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
      v33 = (*(v31 + 88))(v32, v30);
      if (v33 == v69)
      {
        (*(v31 + 96))(v32, v30);
        (*v65)(v15, v32, v12);
        v34 = Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.listenAfterSpeaking.getter();
        (*v68)(v15, v12);
        v28 = v70;
        (*v74)(v78, v70);
        v35 = v21;
      }

      else
      {
        if (v33 == v66)
        {
          v36 = v71;
          (*(v31 + 96))(v71, v30);
          v37 = v64;
          v38 = v67;
          (*v62)(v64, v36, v67);
          if (Apple_Parsec_Siri_V2alpha_DelayedActionComponent.hasRenderedDialog.getter() & 1) != 0 && (Apple_Parsec_Siri_V2alpha_DelayedActionComponent.renderedDialog.getter(), v39 = Apple_Parsec_Siri_V2alpha_RenderedDialogComponent.listenAfterSpeaking.getter(), (*v68)(v15, v12), (v39))
          {
            (*v60)(v37, v38);
            (*v74)(v78, v70);
            outlined destroy of ClientExperienceSignals?(v21, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
          }

          else
          {
            result = MEMORY[0x1E1298F90]();
            v40 = result;
            v41 = 0;
            v86 = *(result + 16);
            do
            {
              if (v86 == v41)
              {

                (*v60)(v64, v67);
                v28 = v70;
                (*v74)(v78, v70);
                v12 = v59;
                v15 = v63;
                goto LABEL_4;
              }

              v42 = v41;
              if (v41 >= *(v40 + 16))
              {
                __break(1u);
                goto LABEL_31;
              }

              v43 = v82;
              v44 = v84;
              (*(v5 + 16))(v82, v40 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v41++, v84);
              v45 = v5;
              v46 = v21;
              v47 = v83;
              Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.sayIt.getter();
              v48 = Apple_Parsec_Siri_V2alpha_SayItBuilderParams.hasListenAfterSpeaking_p.getter();
              v49 = v47;
              v21 = v46;
              v5 = v45;
              (*v80)(v49, v85);
              result = (*(v45 + 8))(v43, v44);
            }

            while ((v48 & 1) == 0);

            (*v60)(v64, v67);
            v28 = v70;
            (*v74)(v78, v70);
            result = outlined destroy of ClientExperienceSignals?(v21, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
            v12 = v59;
            v15 = v63;
            if (v86 == v42)
            {
              goto LABEL_5;
            }
          }

          return 1;
        }

        if (v33 != v61)
        {
          v28 = v70;
          (*v74)(v78, v70);
          (*(v31 + 8))(v71, v30);
LABEL_4:
          result = outlined destroy of ClientExperienceSignals?(v21, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
          goto LABEL_5;
        }

        v50 = v71;
        (*(v31 + 96))(v71, v30);
        v51 = v57;
        v52 = v58;
        (*v56)(v57, v50, v58);
        v34 = Apple_Parsec_Siri_V2alpha_SayItComponent.hasListenAfterSpeaking_p.getter();
        v53 = v51;
        v15 = v63;
        (*v55)(v53, v52);
        v28 = v70;
        (*v74)(v78, v70);
        v35 = v21;
      }

      result = outlined destroy of ClientExperienceSignals?(v35, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_ExperienceComponentV06OneOf_H0OSgMR);
      if (v34)
      {
        return 1;
      }

LABEL_5:
      ++v27;
      v25 = v72;
      v24 = v73;
      if (v27 == v77)
      {
        return 0;
      }
    }

    (*v74)(v29, v28);
    goto LABEL_4;
  }

  return 0;
}

NSObject *GenericExperience.init(coder:)(NSObject *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMR);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v41 - v5;
  v7 = type metadata accessor for BinaryDecodingOptions();
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v49 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v56 = &v41 - v10;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v57 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = OBJC_IVAR____TtC21SiriInformationSearch17GenericExperience_serverSuggestions;
  v15 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion();
  v16 = *(v15 - 8);
  v17 = *(v16 + 56);
  v48 = v15;
  v47 = v17;
  v46 = v16 + 56;
  (v17)(v1 + v14, 1, 1);
  v18 = OBJC_IVAR____TtC21SiriInformationSearch17GenericExperience_sageExperience;
  v19 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SageExperience();
  (*(*(v19 - 8) + 56))(v1 + v18, 1, 1, v19);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_1DC64ED70;
  *(v20 + 32) = type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
  v50 = type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSData, 0x1E695DEF0);
  *(v20 + 40) = v50;
  NSCoder.decodeObject(of:forKey:)();

  if (*(&v59 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo6NSDataCGMd, &_sSaySo6NSDataCGMR);
    if (swift_dynamicCast())
    {
      v21 = v61;
      if (v61 >> 62)
      {
        if (v61 < 0)
        {
          v40 = v61;
        }

        else
        {
          v40 = v61 & 0xFFFFFFFFFFFFFF8;
        }

        v18 = MEMORY[0x1E1299770](v40);
      }

      else
      {
        v18 = *((v61 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v45 = v14;
      v44 = v6;
      if (v18)
      {
        v42 = a1;
        v43 = v1;
        v61 = MEMORY[0x1E69E7CC0];
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v18 & ~(v18 >> 63), 0);
        if ((v18 & 0x8000000000000000) == 0)
        {
          v22 = 0;
          v14 = v61;
          v54 = v21;
          v55 = v21 & 0xC000000000000001;
          v51 = v21 & 0xFFFFFFFFFFFFFF8;
          v52 = v12 + 32;
          v53 = v18;
          while (1)
          {
            a1 = (v22 + 1);
            if (__OFADD__(v22, 1))
            {
              break;
            }

            if (v55)
            {
              v23 = MEMORY[0x1E12996A0](v22, v21);
            }

            else
            {
              if (v22 >= *(v51 + 16))
              {
                goto LABEL_30;
              }

              v23 = *(v21 + 8 * v22 + 32);
            }

            v24 = v23;
            static Data._unconditionallyBridgeFromObjectiveC(_:)();
            v60 = 0;
            v58 = 0u;
            v59 = 0u;
            BinaryDecodingOptions.init()();
            lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ExperienceComponent and conformance Apple_Parsec_Siri_V2alpha_ExperienceComponent(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ExperienceComponent and conformance Apple_Parsec_Siri_V2alpha_ExperienceComponent, MEMORY[0x1E69BD588], MEMORY[0x1E69BD580]);
            Message.init(serializedData:extensions:partial:options:)();

            v61 = v14;
            v18 = *(v14 + 16);
            v25 = *(v14 + 24);
            v2 = v18 + 1;
            v21 = v54;
            if (v18 >= v25 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v25 > 1), v18 + 1, 1);
              v14 = v61;
            }

            *(v14 + 16) = v2;
            (*(v12 + 32))(v14 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v18, v57, v11);
            ++v22;
            if (a1 == v53)
            {

              v2 = v43;
              a1 = v42;
              goto LABEL_23;
            }
          }

          __break(1u);
LABEL_30:
          __break(1u);
          goto LABEL_31;
        }

        __break(1u);
        swift_once();
        v36 = type metadata accessor for Logger();
        __swift_project_value_buffer(v36, static Logger.pommes);
        v37 = Logger.logObject.getter();
        v38 = static os_log_type_t.error.getter();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          *v39 = 0;
          _os_log_impl(&dword_1DC5C3000, v37, v38, "GenericExperience failed to extract server suggestions", v39, 2u);
          MEMORY[0x1E1299E70](v39, -1, -1);
        }
      }

      else
      {

        v14 = MEMORY[0x1E69E7CC0];
LABEL_23:
        *(v2 + OBJC_IVAR____TtC21SiriInformationSearch17GenericExperience_components) = v14;
        v31 = v45;
        v32 = NSCoder.decodeObject<A>(of:forKey:)();
        if (v32)
        {
          v33 = v32;
          static Data._unconditionallyBridgeFromObjectiveC(_:)();
          v60 = 0;
          v58 = 0u;
          v59 = 0u;
          BinaryDecodingOptions.init()();
          lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ExperienceComponent and conformance Apple_Parsec_Siri_V2alpha_ExperienceComponent(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ServerSuggestion and conformance Apple_Parsec_Siri_V2alpha_ServerSuggestion, MEMORY[0x1E69BD410], MEMORY[0x1E69BD408]);
          v34 = v44;
          v35 = v48;
          Message.init(serializedData:extensions:partial:options:)();

          v47(v34, 0, 1, v35);
          swift_beginAccess();
          outlined assign with take of Apple_Parsec_Siri_V2alpha_AudioUnderstanding?(v34, v2 + v31, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMR);
          swift_endAccess();
        }
      }

      return Experience.init(coder:)(a1);
    }
  }

  else
  {
    outlined destroy of ClientExperienceSignals?(&v58, &_sypSgMd, &_sypSgMR);
  }

  if (one-time initialization token for pommes != -1)
  {
LABEL_31:
    swift_once();
  }

  v26 = type metadata accessor for Logger();
  __swift_project_value_buffer(v26, static Logger.pommes);
  v27 = Logger.logObject.getter();
  v28 = static os_log_type_t.error.getter();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = swift_slowAlloc();
    *v29 = 0;
    _os_log_impl(&dword_1DC5C3000, v27, v28, "GenericExperience failed to extract componentsArray", v29, 2u);
    MEMORY[0x1E1299E70](v29, -1, -1);
  }

  outlined destroy of ClientExperienceSignals?(v2 + v14, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMR);
  outlined destroy of ClientExperienceSignals?(v2 + v18, &_s10PegasusAPI40Apple_Parsec_Siri_V2alpha_SageExperienceVSgMd, &_s10PegasusAPI40Apple_Parsec_Siri_V2alpha_SageExperienceVSgMR);
  type metadata accessor for GenericExperience(0);
  swift_deallocPartialClassInstance();
  return 0;
}

Swift::Void __swiftcall GenericExperience.encode(with:)(NSCoder with)
{
  isa = with.super.isa;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMR);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v51 = &v49 - v3;
  v52 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion();
  v55 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v5 = &v49 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent();
  v7 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = v1;
  v11 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch17GenericExperience_components);
  v12 = *(v11 + 16);
  if (v12)
  {
    v13 = 0;
    v60 = (v7 + 8);
    v61 = v7 + 16;
    v56 = MEMORY[0x1E69E7CC0];
    v59 = v12;
    v50 = (v12 - 1);
    *&v8 = 136315138;
    v57 = v8;
    v58 = v11;
    while (v13 < *(v11 + 16))
    {
      (*(v7 + 16))(v10, v11 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v13, v6);
      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ExperienceComponent and conformance Apple_Parsec_Siri_V2alpha_ExperienceComponent(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ExperienceComponent and conformance Apple_Parsec_Siri_V2alpha_ExperienceComponent, MEMORY[0x1E69BD588], MEMORY[0x1E69BD580]);
      v14 = Message.serializedData(partial:)();
      v62 = v13 + 1;
      v16 = v15;
      v17 = v14;
      (*v60)(v10, v6);
      v18 = v5;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v56 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v56 + 2) + 1, 1, v56);
      }

      v20 = *(v56 + 2);
      v19 = *(v56 + 3);
      if (v20 >= v19 >> 1)
      {
        v26 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v19 > 1), v20 + 1, 1, v56);
        v22 = v16;
        v56 = v26;
        v21 = v17;
      }

      else
      {
        v21 = v17;
        v22 = v16;
      }

      v11 = v58;
      v23 = v56;
      *(v56 + 2) = v20 + 1;
      v24 = &v23[16 * v20];
      *(v24 + 4) = v21;
      *(v24 + 5) = v22;
      v25 = v50 == v13;
      v5 = v18;
      v13 = v62;
      if (v25)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
    swift_once();
    v32 = type metadata accessor for Logger();
    __swift_project_value_buffer(v32, static Logger.pommes);
    v33 = 0;
    v34 = Logger.logObject.getter();
    v35 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v62 = v5;
      v38 = v37;
      v63[0] = v37;
      *v36 = 136315138;
      swift_getErrorValue();
      v39 = Error.localizedDescription.getter();
      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, v63);

      *(v36 + 4) = v41;
      _os_log_impl(&dword_1DC5C3000, v34, v35, "Failed to serialize server suggestions %s", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x1E1299E70](v38, -1, -1);
      MEMORY[0x1E1299E70](v36, -1, -1);

      (*(v55 + 8))(v62, v7);
    }

    else
    {

      (*(v55 + 8))(v5, v7);
    }
  }

  else
  {
    v56 = MEMORY[0x1E69E7CC0];
LABEL_13:
    v27 = Array._bridgeToObjectiveC()().super.isa;

    v28 = MEMORY[0x1E1299430](0x6E656E6F706D6F63, 0xEA00000000007374);
    v6 = isa;
    [(objc_class *)isa encodeObject:v27 forKey:v28];

    v29 = v51;
    (*((*MEMORY[0x1E69E7D40] & *v54) + 0x160))();
    v30 = v55;
    v31 = v52;
    if ((*(v55 + 48))(v29, 1, v52) == 1)
    {
      outlined destroy of ClientExperienceSignals?(v29, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMR);
    }

    else
    {
      (*(v30 + 32))(v5, v29, v31);
      lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ExperienceComponent and conformance Apple_Parsec_Siri_V2alpha_ExperienceComponent(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ServerSuggestion and conformance Apple_Parsec_Siri_V2alpha_ServerSuggestion, MEMORY[0x1E69BD410], MEMORY[0x1E69BD408]);
      v42 = Message.serializedData(partial:)();
      v44 = v43;
      v45 = Data._bridgeToObjectiveC()().super.isa;
      v46 = v5;
      v47 = v30;
      v48 = MEMORY[0x1E1299430](0xD000000000000011, 0x80000001DC652150);
      [v6 encodeObject:v45 forKey:v48];
      outlined consume of Data._Representation(v42, v44);

      (*(v47 + 8))(v46, v31);
    }
  }

  Experience.encode(with:)(v6);
}

uint64_t GenericExperience.__ivar_destroyer()
{

  outlined destroy of ClientExperienceSignals?(v0 + OBJC_IVAR____TtC21SiriInformationSearch17GenericExperience_serverSuggestions, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMd, &_s10PegasusAPI42Apple_Parsec_Siri_V2alpha_ServerSuggestionVSgMR);
  return outlined destroy of ClientExperienceSignals?(v0 + OBJC_IVAR____TtC21SiriInformationSearch17GenericExperience_sageExperience, &_s10PegasusAPI40Apple_Parsec_Siri_V2alpha_SageExperienceVSgMd, &_s10PegasusAPI40Apple_Parsec_Siri_V2alpha_SageExperienceVSgMR);
}

id GenericExperience.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for GenericExperience(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t type metadata accessor for GenericExperience(uint64_t a1)
{
  result = type metadata singleton initialization cache for GenericExperience;
  if (!type metadata singleton initialization cache for GenericExperience)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_ExperienceComponent and conformance Apple_Parsec_Siri_V2alpha_ExperienceComponent(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void type metadata completion function for GenericExperience(uint64_t a1)
{
  type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion?(319, &lazy cache variable for type metadata for Apple_Parsec_Siri_V2alpha_ServerSuggestion?, MEMORY[0x1E69BD410]);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion?(319, &lazy cache variable for type metadata for Apple_Parsec_Siri_V2alpha_SageExperience?, MEMORY[0x1E69BD310]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerSuggestion?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = type metadata accessor for Optional();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t UInt16.audioType.getter@<X0>(unsigned __int16 a1@<W0>, uint64_t a2@<X8>)
{
  v3 = MEMORY[0x1E69BD250];
  if (a1 <= 0x4880u)
  {
    if (a1 <= 0x487Bu)
    {
      if (a1 > 0x36CDu)
      {
        if (a1 == 14030)
        {
          goto LABEL_39;
        }

        if (a1 == 18555)
        {
          v3 = MEMORY[0x1E69BD238];
          goto LABEL_39;
        }

        goto LABEL_32;
      }

      if (a1 == 3620)
      {
        goto LABEL_39;
      }

      if (a1 != 8199)
      {
LABEL_32:
        v3 = MEMORY[0x1E69BD260];
        goto LABEL_39;
      }
    }

    else
    {
      if (a1 > 0x487Du)
      {
        switch(a1)
        {
          case 0x487Eu:
            goto LABEL_39;
          case 0x487Fu:
            v3 = MEMORY[0x1E69BD240];
            goto LABEL_39;
          case 0x4880u:
            v3 = MEMORY[0x1E69BD248];
            goto LABEL_39;
        }

        goto LABEL_32;
      }

      if (a1 == 18556)
      {
        goto LABEL_39;
      }
    }

    v3 = MEMORY[0x1E69BD270];
    goto LABEL_39;
  }

  if (a1 > 0x4885u)
  {
    if (a1 <= 0xA4CBu)
    {
      if (a1 == 18566)
      {
        v3 = MEMORY[0x1E69BD258];
        goto LABEL_39;
      }

      if (a1 == 34312)
      {
LABEL_29:
        v3 = MEMORY[0x1E69BD268];
        goto LABEL_39;
      }
    }

    else
    {
      switch(a1)
      {
        case 0xA4CCu:
          v3 = MEMORY[0x1E69BD228];
          goto LABEL_39;
        case 0xA4CDu:
          v3 = MEMORY[0x1E69BD208];
          goto LABEL_39;
        case 0xA4CEu:
          goto LABEL_39;
      }
    }

    goto LABEL_32;
  }

  if (a1 <= 0x4882u)
  {
    if (a1 == 18561)
    {
      v3 = MEMORY[0x1E69BD200];
      goto LABEL_39;
    }

    if (a1 == 18562)
    {
      goto LABEL_29;
    }

    goto LABEL_32;
  }

  if (a1 == 18563)
  {
    v3 = MEMORY[0x1E69BD230];
  }

  else if (a1 != 18564)
  {
    v3 = MEMORY[0x1E69BD210];
  }

LABEL_39:
  v4 = *v3;
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v6 = *(*(v5 - 8) + 104);

  return v6(a2, v4, v5);
}

uint64_t VocabularyField.value.getter(uint64_t a1, uint64_t a2)
{
  v3 = *(v2 + OBJC_IVAR____TtC21SiriInformationSearch15VocabularyField_value);

  return v3;
}

id VocabularyField.__allocating_init(value:fieldType:)(uint64_t a1, uint64_t a2, __int16 a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = &v7[OBJC_IVAR____TtC21SiriInformationSearch15VocabularyField_value];
  *v8 = a1;
  *(v8 + 1) = a2;
  *&v7[OBJC_IVAR____TtC21SiriInformationSearch15VocabularyField_fieldType] = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id VocabularyField.init(value:fieldType:)(uint64_t a1, uint64_t a2, __int16 a3)
{
  v4 = &v3[OBJC_IVAR____TtC21SiriInformationSearch15VocabularyField_value];
  *v4 = a1;
  *(v4 + 1) = a2;
  *&v3[OBJC_IVAR____TtC21SiriInformationSearch15VocabularyField_fieldType] = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for VocabularyField();
  return objc_msgSendSuper2(&v6, sel_init);
}

uint64_t VocabularyField.__allocating_init(coder:)(void *a1)
{
  v3 = objc_allocWithZone(v1);
  specialized VocabularyField.init(coder:)(a1);
  v5 = v4;

  return v5;
}

uint64_t VocabularyField.init(coder:)(void *a1)
{
  specialized VocabularyField.init(coder:)(a1);
  v3 = v2;

  return v3;
}

Swift::Void __swiftcall VocabularyField.encode(with:)(NSCoder with)
{
  if (*(v1 + OBJC_IVAR____TtC21SiriInformationSearch15VocabularyField_value + 8))
  {
    v3 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch15VocabularyField_value);
    v4 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch15VocabularyField_value + 8);
  }

  else
  {
    v3 = 0;
    v4 = 0xE000000000000000;
  }

  v5 = MEMORY[0x1E1299430](v3, v4);

  v6 = MEMORY[0x1E1299430](0x65756C6176, 0xE500000000000000);
  [(objc_class *)with.super.isa encodeObject:v5 forKey:v6];

  v7 = *(v1 + OBJC_IVAR____TtC21SiriInformationSearch15VocabularyField_fieldType);
  v8 = MEMORY[0x1E1299430](0x707954646C656966, 0xE900000000000065);
  [(objc_class *)with.super.isa encodeInteger:v7 forKey:v8];
}

unint64_t VocabularyField.description.getter()
{
  _StringGuts.grow(_:)(45);

  if (*(v0 + OBJC_IVAR____TtC21SiriInformationSearch15VocabularyField_value + 8))
  {
    v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch15VocabularyField_value);
    v2 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch15VocabularyField_value + 8);
  }

  else
  {
    v2 = 0xE300000000000000;
    v1 = 7104878;
  }

  MEMORY[0x1E1299490](v1, v2);

  MEMORY[0x1E1299490](0x54646C656966202CLL, 0xEC0000003D657079);
  v3 = UInt16.cascadeDescription.getter(*(v0 + OBJC_IVAR____TtC21SiriInformationSearch15VocabularyField_fieldType));
  MEMORY[0x1E1299490](v3);

  MEMORY[0x1E1299490](32032, 0xE200000000000000);
  return 0xD00000000000001BLL;
}

uint64_t UInt16.cascadeDescription.getter(unsigned __int16 a1)
{
  type metadata accessor for NSArray(0, &lazy cache variable for type metadata for CCTypeIdentifierRegistry, 0x1E69AA778);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  if (([ObjCClassFromMetadata isValidItemType_] & 1) != 0 || objc_msgSend(ObjCClassFromMetadata, sel_isValidFieldType_, a1))
  {
    v3 = [ObjCClassFromMetadata descriptionForTypeIdentifier_];
    if (v3)
    {
      v4 = v3;
      v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v5;
    }

    else
    {
      return 0x6E776F6E6B6E75;
    }
  }

  else
  {
    lazy protocol witness table accessor for type UInt16 and conformance UInt16();
    return BinaryInteger.description.getter();
  }
}

id VocabularyField.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t VocabularyResult.appId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_appId);

  return v1;
}

uint64_t VocabularyResult.itemId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_itemId);

  return v1;
}

uint64_t VocabularyResult.semanticValue.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_semanticValue);

  return v1;
}

uint64_t VocabularyResult.userId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_userId);

  return v1;
}

uint64_t VocabularyResult.personaId.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_personaId);

  return v1;
}

uint64_t VocabularyResult.siriSharedUserIdentifier.getter(void *a1)
{
  v2 = (v1 + *a1);
  swift_beginAccess();
  v3 = *v2;

  return v3;
}

uint64_t VocabularyResult.siriSharedUserIdentifier.setter(uint64_t a1, uint64_t a2, void *a3)
{
  v6 = (v3 + *a3);
  swift_beginAccess();
  *v6 = a1;
  v6[1] = a2;
}

uint64_t VocabularyResult.fieldType.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_fieldTypes);
  if (*(v1 + 16))
  {
    return *(v1 + 32);
  }

  else
  {
    return 0;
  }
}

id VocabularyResult.__allocating_init(appId:itemId:itemType:fieldTypes:score:spanBegin:spanEnd:semanticValue:fields:userId:personaId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v24 = objc_allocWithZone(v16);
  v25 = &v24[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_siriSharedUserIdentifier];
  *v25 = 0;
  *(v25 + 1) = 0;
  v26 = &v24[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_iTunesAltDSID];
  *v26 = 0;
  *(v26 + 1) = 0;
  v27 = &v24[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_appId];
  *v27 = a1;
  *(v27 + 1) = a2;
  v28 = &v24[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_itemId];
  *v28 = a3;
  *(v28 + 1) = a4;
  *&v24[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_itemType] = a5;
  *&v24[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_fieldTypes] = a6;
  *&v24[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_score] = a9;
  *&v24[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_spanBegin] = a7;
  *&v24[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_spanEnd] = a8;
  v29 = &v24[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_semanticValue];
  *v29 = a10;
  *(v29 + 1) = a11;
  *&v24[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_fields] = a12;
  v30 = &v24[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_userId];
  *v30 = a13;
  *(v30 + 1) = a14;
  v31 = &v24[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_personaId];
  *v31 = a15;
  *(v31 + 1) = a16;
  v35.receiver = v24;
  v35.super_class = v16;
  return objc_msgSendSuper2(&v35, sel_init);
}

id VocabularyResult.init(appId:itemId:itemType:fieldTypes:score:spanBegin:spanEnd:semanticValue:fields:userId:personaId:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5, uint64_t a6, uint64_t a7, uint64_t a8, float a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = &v16[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_siriSharedUserIdentifier];
  *v17 = 0;
  *(v17 + 1) = 0;
  v18 = &v16[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_iTunesAltDSID];
  *v18 = 0;
  *(v18 + 1) = 0;
  v19 = &v16[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_appId];
  *v19 = a1;
  *(v19 + 1) = a2;
  v20 = &v16[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_itemId];
  *v20 = a3;
  *(v20 + 1) = a4;
  *&v16[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_itemType] = a5;
  *&v16[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_fieldTypes] = a6;
  *&v16[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_score] = a9;
  *&v16[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_spanBegin] = a7;
  *&v16[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_spanEnd] = a8;
  v21 = &v16[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_semanticValue];
  *v21 = a10;
  *(v21 + 1) = a11;
  *&v16[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_fields] = a12;
  v22 = &v16[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_userId];
  *v22 = a13;
  *(v22 + 1) = a14;
  v23 = &v16[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_personaId];
  *v23 = a15;
  *(v23 + 1) = a16;
  v25.receiver = v16;
  v25.super_class = type metadata accessor for VocabularyResult();
  return objc_msgSendSuper2(&v25, sel_init);
}

char *VocabularyResult.init(coder:)(void *a1)
{
  v2 = v1;
  v4 = &v2[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_siriSharedUserIdentifier];
  *v4 = 0;
  v4[1] = 0;
  v5 = &v2[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_iTunesAltDSID];
  type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSString, 0x1E696AEC0);
  *v5 = 0;
  v5[1] = 0;
  v6 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v6)
  {
    goto LABEL_20;
  }

  v7 = v6;
  v8 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v8)
  {

LABEL_20:
LABEL_24:

    type metadata accessor for VocabularyResult();
    swift_deallocPartialClassInstance();
    return 0;
  }

  v9 = v8;
  v10 = type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSNumber, 0x1E696AD98);
  v11 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v11)
  {

    goto LABEL_20;
  }

  v80 = v7;
  v81 = v9;
  v78 = v4;
  v79 = v11;
  v77 = v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCyyXlXpGMd, &_ss23_ContiguousArrayStorageCyyXlXpGMR);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_1DC64ED70;
  v13 = type metadata accessor for NSArray(0, &lazy cache variable for type metadata for NSArray, 0x1E695DEC8);
  *(v12 + 32) = v13;
  *(v12 + 40) = v10;
  NSCoder.decodeObject(of:forKey:)();

  if (!v86)
  {

    outlined destroy of Any?(v85);
    goto LABEL_24;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo8NSNumberCGMd, &_sSaySo8NSNumberCGMR);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_24;
  }

  v14 = v84[0];
  v15 = NSCoder.decodeObject<A>(of:forKey:)();
  if (!v15)
  {

    goto LABEL_24;
  }

  v16 = v15;
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_1DC64ED70;
  *(v17 + 32) = v13;
  *(v17 + 40) = type metadata accessor for VocabularyField();
  NSCoder.decodeObject(of:forKey:)();

  v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v19 = &v2[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_appId];
  *v19 = v18;
  v19[1] = v20;
  v21 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v22 = &v2[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_itemId];
  *v22 = v21;
  v22[1] = v23;
  v24 = v79;
  v25 = [v79 unsignedShortValue];
  *&v2[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_itemType] = v25;
  v26 = v14;
  if (v14 >> 62)
  {
    if (v14 >= 0)
    {
      v26 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v27 = MEMORY[0x1E1299770](v26);
    v74 = v16;
    v75 = v2;
    if (v27)
    {
      goto LABEL_9;
    }

LABEL_28:

    v30 = MEMORY[0x1E69E7CC0];
    goto LABEL_29;
  }

  v27 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v74 = v16;
  v75 = v2;
  if (!v27)
  {
    goto LABEL_28;
  }

LABEL_9:
  v76 = a1;
  v84[0] = MEMORY[0x1E69E7CC0];
  result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v27 & ~(v27 >> 63), 0);
  if (v27 < 0)
  {
    __break(1u);
    return result;
  }

  v29 = 0;
  v30 = v84[0];
  v31 = v14;
  v32 = v14 & 0xC000000000000001;
  v33 = v14;
  do
  {
    if (v32)
    {
      v34 = MEMORY[0x1E12996A0](v29, v31);
    }

    else
    {
      v34 = *(v31 + 8 * v29 + 32);
    }

    v35 = v34;
    v36 = [v34 unsignedShortValue];

    v84[0] = v30;
    v38 = *(v30 + 16);
    v37 = *(v30 + 24);
    if (v38 >= v37 >> 1)
    {
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v37 > 1), v38 + 1, 1);
      v30 = v84[0];
    }

    ++v29;
    *(v30 + 16) = v38 + 1;
    *(v30 + 2 * v38 + 32) = v36;
    v31 = v33;
  }

  while (v27 != v29);

  v24 = v79;
  a1 = v76;
LABEL_29:
  *&v75[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_fieldTypes] = v30;
  v39 = MEMORY[0x1E1299430](0x65726F6373, 0xE500000000000000);
  [a1 decodeFloatForKey_];
  v41 = v40;

  *&v75[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_score] = v41;
  v42 = MEMORY[0x1E1299430](0x696765426E617073, 0xE90000000000006ELL);
  v43 = [a1 decodeIntegerForKey_];

  *&v75[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_spanBegin] = v43;
  v44 = MEMORY[0x1E1299430](0x646E456E617073, 0xE700000000000000);
  v45 = [a1 decodeIntegerForKey_];

  *&v75[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_spanEnd] = v45;
  v46 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v47 = &v75[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_semanticValue];
  *v47 = v46;
  v47[1] = v48;
  outlined init with copy of Any?(v85, v84);
  if (v84[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SiriInformationSearch15VocabularyFieldCGMd, &_sSay21SiriInformationSearch15VocabularyFieldCGMR);
    v49 = swift_dynamicCast();
    v50 = v83;
    if (!v49)
    {
      v50 = 0;
    }
  }

  else
  {
    outlined destroy of Any?(v84);
    v50 = 0;
  }

  *&v75[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_fields] = v50;
  v51 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v51)
  {
    v52 = v51;
    v53 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v55 = v54;
  }

  else
  {
    v53 = 0;
    v55 = 0;
  }

  v56 = &v75[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_userId];
  *v56 = v53;
  v56[1] = v55;
  v57 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v57)
  {
    v58 = v57;
    v59 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v61 = v60;
  }

  else
  {
    v59 = 0;
    v61 = 0;
  }

  v62 = &v75[OBJC_IVAR____TtC21SiriInformationSearch16VocabularyResult_personaId];
  *v62 = v59;
  v62[1] = v61;
  v63 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v63)
  {
    v64 = v63;
    v65 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v67 = v66;
  }

  else
  {
    v65 = 0;
    v67 = 0;
  }

  swift_beginAccess();
  *v77 = v65;
  v77[1] = v67;

  v68 = NSCoder.decodeObject<A>(of:forKey:)();
  if (v68)
  {
    v69 = v68;
    v70 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v72 = v71;

    outlined destroy of Any?(v85);
  }

  else
  {
    outlined destroy of Any?(v85);

    v70 = 0;
    v72 = 0;
  }

  swift_beginAccess();
  *v78 = v70;
  v78[1] = v72;

  v82.receiver = v75;
  v82.super_class = type metadata accessor for VocabularyResult();
  v73 = objc_msgSendSuper2(&v82, sel_init);

  return v73;
}