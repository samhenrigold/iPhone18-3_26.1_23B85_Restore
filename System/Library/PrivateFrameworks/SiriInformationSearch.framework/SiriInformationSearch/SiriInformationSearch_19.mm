uint64_t PommesSearchRequest.utterance.getter()
{
  v1 = *(v0 + *(type metadata accessor for PommesSearchRequest(0) + 20));

  return v1;
}

uint64_t PommesSearchRequest.requestId.getter()
{
  v1 = *(v0 + *(type metadata accessor for PommesSearchRequest(0) + 32));

  return v1;
}

uint64_t PommesSearchRequest.rootRequestId.getter()
{
  v1 = *(v0 + *(type metadata accessor for PommesSearchRequest(0) + 36));

  return v1;
}

uint64_t PommesSearchRequest.requestContext.getter()
{
  type metadata accessor for PommesSearchRequest(0);
}

void *PommesSearchRequest.asrSpeechPackage.getter()
{
  v1 = *(v0 + *(type metadata accessor for PommesSearchRequest(0) + 72));
  v2 = v1;
  return v1;
}

double PommesSearchRequest.salientNLv4Parses.getter()
{
  type metadata accessor for PommesSearchRequest(0);

  return result;
}

uint64_t PommesSearchRequest.sharedUserId.getter()
{
  v1 = *(v0 + *(type metadata accessor for PommesSearchRequest(0) + 84));

  return v1;
}

double PommesSearchRequest.profileResolutionRequests.getter()
{
  type metadata accessor for PommesSearchRequest(0);

  return result;
}

uint64_t PommesSearchRequest.profileResolutionRequests.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PommesSearchRequest(0) + 92);

  *(v1 + v3) = a1;
  return result;
}

uint64_t PommesSearchRequest.init(utterance:requestId:resultCandidateId:interactionType:pommesContext:userParses:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10)
{
  v55 = a7;
  v56 = a8;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v52 = &v51 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v53 = &v51 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v22 = MEMORY[0x28223BE20](v21 - 8);
  v54 = &v51 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v51 - v24;
  v26 = type metadata accessor for PommesSearchRequest(0);
  *&a9[v26[23]] = MEMORY[0x277D84F90];
  v27 = &a9[v26[5]];
  *v27 = a1;
  *(v27 + 1) = a2;
  v28 = v26[6];
  v29 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance();
  (*(*(v29 - 8) + 56))(&a9[v28], 1, 1, v29);
  v30 = &a9[v26[8]];
  *v30 = a3;
  *(v30 + 1) = a4;
  v31 = &a9[v26[9]];
  *v31 = 0;
  *(v31 + 1) = 0;
  v32 = &a9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMR) + 48)];
  *a9 = a5;
  *(a9 + 1) = a6;
  v33 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v51 = *(v33 - 8);
  v34 = *(v51 + 56);
  v34(v25, 1, 1, v33);
  v35 = type metadata accessor for NLXResultCandidate(0);
  v36 = *(v35 + 20);
  v34(&v32[v36], 1, 1, v33);
  v37 = &v32[*(v35 + 24)];
  *v32 = a10;

  outlined assign with take of MediaUserStateCenter?(v25, &v32[v36], &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  type metadata accessor for PommesSearchRequest.ParseState(0);
  *v37 = 0;
  *(v37 + 1) = 0;
  v38 = v52;
  swift_storeEnumTagMultiPayload();
  outlined init with copy of MediaUserStateCenter?(v56, &a9[v26[10]], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v34(v25, 1, 1, v33);
  v39 = v53;
  static PommesSearchRequest.extractPommesDelegatedUDA(from:fallbackParse:)(a10, v25, v53);
  v40 = v25;
  v41 = v39;
  outlined destroy of MediaUserStateCenter?(v40, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  outlined init with copy of MediaUserStateCenter?(v39, v38, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
  if ((*(*(v42 - 8) + 48))(v38, 1, v42) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v38, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
    v43 = 1;
    v44 = v54;
  }

  else
  {
    v44 = v54;
    (*(v51 + 32))(v54, v38, v33);
    v43 = 0;
  }

  v34(v44, v43, 1, v33);
  outlined init with take of PommesSearchReason?(v44, &a9[v26[11]], &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  *&a9[v26[12]] = specialized static PommesSearchRequest.resolvedScore(_:isFallback:)(v41, 0);
  v45 = &a9[v26[7]];
  *v45 = 0;
  *(v45 + 1) = 0;
  *&a9[v26[13]] = 0;
  v46 = v26[14];
  v47 = type metadata accessor for InputOrigin();
  (*(*(v47 - 8) + 56))(&a9[v46], 1, 1, v47);
  a9[v26[15]] = 0;
  *&a9[v26[18]] = 0;
  v48 = specialized LazySequenceProtocol<>.keepSalientNLv4Parses()(a10);

  outlined destroy of MediaUserStateCenter?(v56, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  outlined destroy of MediaUserStateCenter?(v55, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7ContextV0E15InteractionTypeOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7ContextV0E15InteractionTypeOSgMR);
  result = outlined destroy of MediaUserStateCenter?(v41, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  *&a9[v26[19]] = v48;
  a9[v26[20]] = 0;
  v50 = &a9[v26[21]];
  *v50 = 0;
  *(v50 + 1) = 0;
  *&a9[v26[22]] = 0;
  a9[v26[16]] = 0;
  a9[v26[17]] = 0;
  return result;
}

uint64_t PommesSearchRequest.init(utterance:requestId:resultCandidateId:interactionType:pommesContext:userParses:assistantId:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v62 = a7;
  v63 = a8;
  v60 = a11;
  v61 = a12;
  v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  v20 = MEMORY[0x28223BE20](v19 - 8);
  v56 = &v54 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v20);
  v57 = &v54 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v59 = &v54 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v27 = &v54 - v26;
  v28 = type metadata accessor for PommesSearchRequest(0);
  *&a9[v28[23]] = MEMORY[0x277D84F90];
  v29 = &a9[v28[5]];
  *v29 = a1;
  *(v29 + 1) = a2;
  v30 = v28[6];
  v31 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance();
  (*(*(v31 - 8) + 56))(&a9[v30], 1, 1, v31);
  v32 = &a9[v28[8]];
  *v32 = a3;
  *(v32 + 1) = a4;
  v33 = &a9[v28[9]];
  *v33 = 0;
  *(v33 + 1) = 0;
  v34 = &a9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMR) + 48)];
  *a9 = a5;
  *(a9 + 1) = a6;
  v35 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v55 = *(v35 - 8);
  v36 = *(v55 + 56);
  v36(v27, 1, 1, v35);
  v37 = type metadata accessor for NLXResultCandidate(0);
  v38 = *(v37 + 20);
  v36(&v34[v38], 1, 1, v35);
  v39 = &v34[*(v37 + 24)];
  *v34 = a10;

  outlined assign with take of MediaUserStateCenter?(v27, &v34[v38], &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  type metadata accessor for PommesSearchRequest.ParseState(0);
  *v39 = 0;
  *(v39 + 1) = 0;
  v40 = v56;
  swift_storeEnumTagMultiPayload();
  outlined init with copy of MediaUserStateCenter?(v63, &a9[v28[10]], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v36(v27, 1, 1, v35);
  v41 = v57;
  v58 = a10;
  static PommesSearchRequest.extractPommesDelegatedUDA(from:fallbackParse:)(a10, v27, v57);
  v42 = v27;
  v43 = v41;
  outlined destroy of MediaUserStateCenter?(v42, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  outlined init with copy of MediaUserStateCenter?(v41, v40, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
  if ((*(*(v44 - 8) + 48))(v40, 1, v44) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v40, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
    v45 = 1;
    v46 = v59;
  }

  else
  {
    v46 = v59;
    (*(v55 + 32))(v59, v40, v35);
    v45 = 0;
  }

  v36(v46, v45, 1, v35);
  outlined init with take of PommesSearchReason?(v46, &a9[v28[11]], &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  *&a9[v28[12]] = specialized static PommesSearchRequest.resolvedScore(_:isFallback:)(v43, 0);
  v47 = &a9[v28[7]];
  v48 = v61;
  *v47 = v60;
  *(v47 + 1) = v48;
  *&a9[v28[13]] = 0;
  v49 = v28[14];
  v50 = type metadata accessor for InputOrigin();
  (*(*(v50 - 8) + 56))(&a9[v49], 1, 1, v50);
  a9[v28[15]] = 0;
  *&a9[v28[18]] = 0;
  v51 = specialized LazySequenceProtocol<>.keepSalientNLv4Parses()(v58);

  outlined destroy of MediaUserStateCenter?(v63, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  outlined destroy of MediaUserStateCenter?(v62, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7ContextV0E15InteractionTypeOSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA7ContextV0E15InteractionTypeOSgMR);
  result = outlined destroy of MediaUserStateCenter?(v43, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  *&a9[v28[19]] = v51;
  a9[v28[20]] = 0;
  v53 = &a9[v28[21]];
  *v53 = 0;
  *(v53 + 1) = 0;
  *&a9[v28[22]] = 0;
  a9[v28[16]] = 0;
  a9[v28[17]] = 0;
  return result;
}

uint64_t PommesSearchRequest.init(utterance:trpCandidateId:isMultiUser:requestContext:pommesContext:inputOrigin:parseResponse:asrSpeechPackage:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v73 = a8;
  v74 = a4;
  v71 = a5;
  v72 = a3;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v68 = &v65 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v66 = &v65 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  v21 = MEMORY[0x28223BE20](v20 - 8);
  v67 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v69 = &v65 - v23;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v25 = MEMORY[0x28223BE20](v24 - 8);
  v27 = &v65 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v29 = &v65 - v28;
  v30 = type metadata accessor for PommesSearchRequest(0);
  *&a9[v30[23]] = MEMORY[0x277D84F90];
  v31 = &a9[v30[5]];
  *v31 = a1;
  *(v31 + 1) = a2;
  v32 = v30[6];
  v33 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance();
  (*(*(v33 - 8) + 56))(&a9[v32], 1, 1, v33);
  v70 = a6;
  v34 = *(a6 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId + 8);
  v35 = &a9[v30[8]];
  *v35 = *(a6 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId);
  *(v35 + 1) = v34;
  v36 = &a9[v30[9]];
  *v36 = 0;
  *(v36 + 1) = 0;
  v37 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMR) + 64);
  v38 = v74;
  *a9 = v72;
  *(a9 + 1) = v38;
  *(a9 + 2) = 0;
  *(a9 + 3) = 0xE000000000000000;
  outlined init with copy of MediaUserStateCenter?(a10, &a9[v37], &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  type metadata accessor for PommesSearchRequest.ParseState(0);
  swift_storeEnumTagMultiPayload();
  v39 = &a9[v30[10]];
  v74 = a7;
  outlined init with copy of MediaUserStateCenter?(a7, v39, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v72 = a10;
  outlined init with copy of MediaUserStateCenter?(a10, v29, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v40 = type metadata accessor for TCUMappedNLResponse();
  v41 = *(v40 - 8);
  v42 = *(v41 + 48);
  v43 = v42(v29, 1, v40);

  if (v43 == 1)
  {
    outlined destroy of MediaUserStateCenter?(v29, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    v44 = MEMORY[0x277D84F90];
  }

  else
  {
    v45 = TCUMappedNLResponse.nlResponse.getter();
    (*(v41 + 8))(v29, v40);
    v44 = NLParseResponse.userParses.getter();
  }

  v46 = v72;
  outlined init with copy of MediaUserStateCenter?(v72, v27, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  if (v42(v27, 1, v40) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v27, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    v47 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
    v48 = v66;
    (*(*(v47 - 8) + 56))(v66, 1, 1, v47);
  }

  else
  {
    v49 = TCUMappedNLResponse.nlResponse.getter();
    (*(v41 + 8))(v27, v40);
    v48 = v66;
    NLParseResponse.fallbackParse.getter();
  }

  v50 = v69;
  static PommesSearchRequest.extractPommesDelegatedUDA(from:fallbackParse:)(v44, v48, v69);
  outlined destroy of MediaUserStateCenter?(v48, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v51 = v67;
  outlined init with copy of MediaUserStateCenter?(v50, v67, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
  v53 = (*(*(v52 - 8) + 48))(v51, 1, v52);
  v54 = v68;
  if (v53 == 1)
  {
    outlined destroy of MediaUserStateCenter?(v51, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
    v55 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
    (*(*(v55 - 8) + 56))(v54, 1, 1, v55);
  }

  else
  {
    v56 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
    v57 = *(v56 - 8);
    (*(v57 + 32))(v54, v51, v56);
    (*(v57 + 56))(v54, 0, 1, v56);
  }

  outlined init with take of PommesSearchReason?(v54, &a9[v30[11]], &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  *&a9[v30[12]] = specialized static PommesSearchRequest.resolvedScore(_:isFallback:)(v50, 0);
  v58 = v70;
  v59 = *(v70 + 24);
  v60 = &a9[v30[7]];
  *v60 = *(v70 + 16);
  *(v60 + 1) = v59;
  *&a9[v30[13]] = v58;
  v61 = v73;
  outlined init with copy of MediaUserStateCenter?(v73, &a9[v30[14]], &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  a9[v30[15]] = v71 & 1;
  *&a9[v30[18]] = a11;

  v62 = specialized LazySequenceProtocol<>.keepSalientNLv4Parses()(v44);

  outlined destroy of MediaUserStateCenter?(v46, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  outlined destroy of MediaUserStateCenter?(v61, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  outlined destroy of MediaUserStateCenter?(v74, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  result = outlined destroy of MediaUserStateCenter?(v50, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  *&a9[v30[19]] = v62;
  a9[v30[20]] = 0;
  v64 = &a9[v30[21]];
  *v64 = 0;
  *(v64 + 1) = 0;
  *&a9[v30[22]] = 0;
  a9[v30[16]] = 0;
  a9[v30[17]] = 0;
  return result;
}

uint64_t PommesSearchRequest.init(utterance:resultCandidateId:isMultiUser:requestContext:pommesContext:inputOrigin:userParses:asrSpeechPackage:isFallback:sharedUserId:userIdentityClassification:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v74 = a8;
  v73 = a5;
  v77 = a14;
  v78 = a15;
  v76 = a13;
  v70 = a12;
  v72 = a11;
  v67 = a10;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v68 = &v64 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v66 = &v64 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v69 = &v64 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v64 - v29;
  v31 = type metadata accessor for PommesSearchRequest(0);
  *&a9[v31[23]] = MEMORY[0x277D84F90];
  v32 = &a9[v31[5]];
  *v32 = a1;
  *(v32 + 1) = a2;
  v33 = v31[6];
  v34 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance();
  (*(*(v34 - 8) + 56))(&a9[v33], 1, 1, v34);
  v71 = a6;
  v35 = *(a6 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId + 8);
  v36 = &a9[v31[8]];
  *v36 = *(a6 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId);
  *(v36 + 1) = v35;
  v37 = &a9[v31[9]];
  *v37 = 0;
  *(v37 + 1) = 0;
  v38 = &a9[v31[10]];
  v75 = a7;
  outlined init with copy of MediaUserStateCenter?(a7, v38, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v39 = &a9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMR) + 48)];
  *a9 = a3;
  *(a9 + 1) = a4;
  v40 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v64 = *(v40 - 8);
  v41 = *(v64 + 56);
  v42 = v30;
  v41(v30, 1, 1, v40);
  v65 = v41;
  v43 = type metadata accessor for NLXResultCandidate(0);
  v44 = *(v43 + 20);
  v41(&v39[v44], 1, 1, v40);
  v45 = &v39[*(v43 + 24)];
  v46 = v67;
  *v39 = v67;

  v47 = &v39[v44];
  v48 = v66;
  outlined assign with take of MediaUserStateCenter?(v42, v47, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  type metadata accessor for PommesSearchRequest.ParseState(0);
  *v45 = 0;
  *(v45 + 1) = 0;
  v49 = v65;
  swift_storeEnumTagMultiPayload();
  v49(v42, 1, 1, v40);
  static PommesSearchRequest.extractPommesDelegatedUDA(from:fallbackParse:)(v46, v42, v48);
  v50 = v42;
  v51 = v68;
  outlined destroy of MediaUserStateCenter?(v50, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  outlined init with copy of MediaUserStateCenter?(v48, v51, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
  if ((*(*(v52 - 8) + 48))(v51, 1, v52) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v51, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
    v53 = 1;
    v54 = v69;
  }

  else
  {
    v54 = v69;
    (*(v64 + 32))(v69, v51, v40);
    v53 = 0;
  }

  v49(v54, v53, 1, v40);
  outlined init with take of PommesSearchReason?(v54, &a9[v31[11]], &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v55 = v70 & 1;
  *&a9[v31[12]] = specialized static PommesSearchRequest.resolvedScore(_:isFallback:)(v48, v70 & 1);
  v56 = v71;
  v57 = *(v71 + 24);
  v58 = &a9[v31[7]];
  *v58 = *(v71 + 16);
  *(v58 + 1) = v57;
  *&a9[v31[13]] = v56;
  v59 = v74;
  outlined init with copy of MediaUserStateCenter?(v74, &a9[v31[14]], &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  a9[v31[15]] = v73 & 1;
  *&a9[v31[18]] = v72;

  v60 = specialized LazySequenceProtocol<>.keepSalientNLv4Parses()(v46);

  outlined destroy of MediaUserStateCenter?(v59, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  outlined destroy of MediaUserStateCenter?(v75, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  result = outlined destroy of MediaUserStateCenter?(v48, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  *&a9[v31[19]] = v60;
  a9[v31[20]] = v55;
  v62 = &a9[v31[21]];
  v63 = v77;
  *v62 = v76;
  *(v62 + 1) = v63;
  *&a9[v31[22]] = v78;
  a9[v31[16]] = 0;
  a9[v31[17]] = 0;
  return result;
}

uint64_t PommesSearchRequest.init(utterance:trpCandidateId:tcuId:isMultiUser:requestContext:pommesContext:inputOrigin:parseResponse:asrSpeechPackage:isFallback:sharedUserId:userIdentityClassification:isOnlyUserInHome:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char a14, char *a15, char *a16, char *a17, unsigned __int8 a18)
{
  v79 = a7;
  v80 = a5;
  v81 = a6;
  v71 = a3;
  v72 = a4;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v76 = &v71 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v74 = &v71 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v75 = &v71 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v77 = &v71 - v29;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v31 = MEMORY[0x28223BE20](v30 - 8);
  v73 = &v71 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v31);
  v34 = &v71 - v33;
  v35 = type metadata accessor for PommesSearchRequest(0);
  *&a9[v35[23]] = MEMORY[0x277D84F90];
  v36 = &a9[v35[5]];
  *v36 = a1;
  *(v36 + 1) = a2;
  v37 = v35[6];
  v38 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance();
  (*(*(v38 - 8) + 56))(&a9[v37], 1, 1, v38);
  v78 = a8;
  v39 = *(a8 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId + 8);
  v40 = &a9[v35[8]];
  *v40 = *(a8 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId);
  *(v40 + 1) = v39;
  v41 = &a9[v35[9]];
  *v41 = 0;
  *(v41 + 1) = 0;
  v42 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMR) + 64);
  v43 = v72;
  *a9 = v71;
  *(a9 + 1) = v43;
  v44 = v81;
  *(a9 + 2) = v80;
  *(a9 + 3) = v44;
  outlined init with copy of MediaUserStateCenter?(a12, &a9[v42], &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  type metadata accessor for PommesSearchRequest.ParseState(0);
  swift_storeEnumTagMultiPayload();
  v45 = &a9[v35[10]];
  v80 = a10;
  outlined init with copy of MediaUserStateCenter?(a10, v45, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v81 = a12;
  outlined init with copy of MediaUserStateCenter?(a12, v34, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v46 = type metadata accessor for TCUMappedNLResponse();
  v47 = *(v46 - 8);
  v48 = *(v47 + 48);
  LODWORD(a8) = v48(v34, 1, v46);

  if (a8 == 1)
  {
    outlined destroy of MediaUserStateCenter?(v34, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    v49 = MEMORY[0x277D84F90];
  }

  else
  {
    v50 = TCUMappedNLResponse.nlResponse.getter();
    (*(v47 + 8))(v34, v46);
    v49 = NLParseResponse.userParses.getter();
  }

  v51 = v73;
  outlined init with copy of MediaUserStateCenter?(v81, v73, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  if (v48(v51, 1, v46) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v51, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    v52 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
    v53 = v74;
    (*(*(v52 - 8) + 56))(v74, 1, 1, v52);
  }

  else
  {
    v54 = TCUMappedNLResponse.nlResponse.getter();
    (*(v47 + 8))(v51, v46);
    v53 = v74;
    NLParseResponse.fallbackParse.getter();
  }

  v55 = v76;
  v56 = v77;
  v57 = v75;
  LODWORD(v77) = a18;
  v75 = a16;
  v76 = a17;
  v74 = a15;
  static PommesSearchRequest.extractPommesDelegatedUDA(from:fallbackParse:)(v49, v53, v56);
  outlined destroy of MediaUserStateCenter?(v53, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  outlined init with copy of MediaUserStateCenter?(v56, v57, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
  if ((*(*(v58 - 8) + 48))(v57, 1, v58) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v57, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
    v59 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
    (*(*(v59 - 8) + 56))(v55, 1, 1, v59);
  }

  else
  {
    v60 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
    v61 = v57;
    v62 = v60;
    v63 = *(v60 - 8);
    (*(v63 + 32))(v55, v61, v60);
    (*(v63 + 56))(v55, 0, 1, v62);
  }

  outlined init with take of PommesSearchReason?(v55, &a9[v35[11]], &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  *&a9[v35[12]] = specialized static PommesSearchRequest.resolvedScore(_:isFallback:)(v56, 0);
  v64 = v78;
  v65 = *(v78 + 24);
  v66 = &a9[v35[7]];
  *v66 = *(v78 + 16);
  *(v66 + 1) = v65;
  *&a9[v35[13]] = v64;
  outlined init with copy of MediaUserStateCenter?(a11, &a9[v35[14]], &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  a9[v35[15]] = v79 & 1;
  *&a9[v35[18]] = a13;

  v67 = specialized LazySequenceProtocol<>.keepSalientNLv4Parses()(v49);

  outlined destroy of MediaUserStateCenter?(v81, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  outlined destroy of MediaUserStateCenter?(a11, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  outlined destroy of MediaUserStateCenter?(v80, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  result = outlined destroy of MediaUserStateCenter?(v56, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  *&a9[v35[19]] = v67;
  a9[v35[20]] = a14 & 1;
  v69 = &a9[v35[21]];
  v70 = v75;
  *v69 = v74;
  *(v69 + 1) = v70;
  *&a9[v35[22]] = v76;
  a9[v35[16]] = v77 & 1;
  a9[v35[17]] = 0;
  return result;
}

uint64_t PommesSearchRequest.init(utterance:resultCandidateId:isMultiUser:requestContext:pommesContext:inputOrigin:userParses:asrSpeechPackage:isFallback:sharedUserId:userIdentityClassification:isOnlyUserInHome:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 a16)
{
  v76 = a8;
  v75 = a5;
  v81 = a16;
  v79 = a14;
  v80 = a15;
  v78 = a13;
  v72 = a12;
  v74 = a11;
  v69 = a10;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  v24 = MEMORY[0x28223BE20](v23 - 8);
  v70 = &v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v68 = &v65 - v26;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v28 = MEMORY[0x28223BE20](v27 - 8);
  v71 = &v65 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v28);
  v31 = &v65 - v30;
  v32 = type metadata accessor for PommesSearchRequest(0);
  *&a9[v32[23]] = MEMORY[0x277D84F90];
  v33 = &a9[v32[5]];
  *v33 = a1;
  *(v33 + 1) = a2;
  v34 = v32[6];
  v35 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance();
  (*(*(v35 - 8) + 56))(&a9[v34], 1, 1, v35);
  v73 = a6;
  v36 = *(a6 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId + 8);
  v37 = &a9[v32[8]];
  *v37 = *(a6 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId);
  *(v37 + 1) = v36;
  v38 = &a9[v32[9]];
  *v38 = 0;
  *(v38 + 1) = 0;
  v39 = &a9[v32[10]];
  v77 = a7;
  outlined init with copy of MediaUserStateCenter?(a7, v39, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v40 = &a9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMR) + 48)];
  *a9 = a3;
  *(a9 + 1) = a4;
  v41 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v66 = *(v41 - 8);
  v42 = *(v66 + 56);
  v43 = v31;
  v42(v31, 1, 1, v41);
  v67 = v42;
  v44 = type metadata accessor for NLXResultCandidate(0);
  v45 = *(v44 + 20);
  v42(&v40[v45], 1, 1, v41);
  v46 = &v40[*(v44 + 24)];
  v47 = v69;
  *v40 = v69;

  v48 = &v40[v45];
  v49 = v68;
  outlined assign with take of MediaUserStateCenter?(v43, v48, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  type metadata accessor for PommesSearchRequest.ParseState(0);
  *v46 = 0;
  *(v46 + 1) = 0;
  v50 = v67;
  swift_storeEnumTagMultiPayload();
  v50(v43, 1, 1, v41);
  static PommesSearchRequest.extractPommesDelegatedUDA(from:fallbackParse:)(v47, v43, v49);
  v51 = v43;
  v52 = v70;
  outlined destroy of MediaUserStateCenter?(v51, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  outlined init with copy of MediaUserStateCenter?(v49, v52, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
  if ((*(*(v53 - 8) + 48))(v52, 1, v53) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v52, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
    v54 = 1;
    v55 = v71;
  }

  else
  {
    v55 = v71;
    (*(v66 + 32))(v71, v52, v41);
    v54 = 0;
  }

  v50(v55, v54, 1, v41);
  outlined init with take of PommesSearchReason?(v55, &a9[v32[11]], &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v56 = v72 & 1;
  *&a9[v32[12]] = specialized static PommesSearchRequest.resolvedScore(_:isFallback:)(v49, v72 & 1);
  v57 = v73;
  v58 = *(v73 + 24);
  v59 = &a9[v32[7]];
  *v59 = *(v73 + 16);
  *(v59 + 1) = v58;
  *&a9[v32[13]] = v57;
  v60 = v76;
  outlined init with copy of MediaUserStateCenter?(v76, &a9[v32[14]], &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  a9[v32[15]] = v75 & 1;
  *&a9[v32[18]] = v74;

  v61 = specialized LazySequenceProtocol<>.keepSalientNLv4Parses()(v47);

  outlined destroy of MediaUserStateCenter?(v60, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  outlined destroy of MediaUserStateCenter?(v77, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  result = outlined destroy of MediaUserStateCenter?(v49, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  *&a9[v32[19]] = v61;
  a9[v32[20]] = v56;
  v63 = &a9[v32[21]];
  v64 = v79;
  *v63 = v78;
  *(v63 + 1) = v64;
  *&a9[v32[22]] = v80;
  a9[v32[16]] = v81 & 1;
  a9[v32[17]] = 0;
  return result;
}

uint64_t PommesSearchRequest.init(utterance:resultCandidateId:isMultiUser:requestContext:pommesContext:inputOrigin:userParses:asrSpeechPackage:isFallback:sharedUserId:userIdentityClassification:isOnlyUserInHome:fallbackParse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void (*a4)(void, void, void, void)@<X3>, int a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, char *a9@<X8>, uint64_t a10, uint64_t a11, unsigned __int8 a12, uint64_t a13, uint64_t a14, uint64_t a15, unsigned __int8 a16, uint64_t a17)
{
  v75 = a8;
  v74 = a5;
  v66 = a3;
  v67 = a4;
  v81 = a17;
  v80 = a16;
  v78 = a14;
  v79 = a15;
  v77 = a13;
  v71 = a12;
  v73 = a11;
  v65 = a10;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  v23 = MEMORY[0x28223BE20](v22 - 8);
  v69 = &v63 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v68 = &v63 - v25;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v27 = MEMORY[0x28223BE20](v26 - 8);
  v70 = &v63 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v27);
  v30 = &v63 - v29;
  v64 = &v63 - v29;
  v31 = type metadata accessor for PommesSearchRequest(0);
  *&a9[v31[23]] = MEMORY[0x277D84F90];
  v32 = &a9[v31[5]];
  *v32 = a1;
  *(v32 + 1) = a2;
  v33 = v31[6];
  v34 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance();
  (*(*(v34 - 8) + 56))(&a9[v33], 1, 1, v34);
  v72 = a6;
  v35 = *(a6 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId + 8);
  v36 = &a9[v31[8]];
  *v36 = *(a6 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId);
  *(v36 + 1) = v35;
  v37 = &a9[v31[9]];
  *v37 = 0;
  *(v37 + 1) = 0;
  v38 = &a9[v31[10]];
  v76 = a7;
  outlined init with copy of MediaUserStateCenter?(a7, v38, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v39 = &a9[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMR) + 48)];
  v40 = v67;
  *a9 = v66;
  *(a9 + 1) = v40;
  outlined init with copy of MediaUserStateCenter?(a17, v30, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v41 = type metadata accessor for NLXResultCandidate(0);
  v42 = *(v41 + 20);
  v43 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v44 = *(v43 - 8);
  v67 = *(v44 + 56);
  v67(&v39[v42], 1, 1, v43);
  v45 = &v39[*(v41 + 24)];
  v46 = v65;
  *v39 = v65;

  outlined assign with take of MediaUserStateCenter?(v64, &v39[v42], &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  type metadata accessor for PommesSearchRequest.ParseState(0);
  *v45 = 0;
  *(v45 + 1) = 0;
  swift_storeEnumTagMultiPayload();
  v48 = v68;
  v47 = v69;
  v49 = v46;
  static PommesSearchRequest.extractPommesDelegatedUDA(from:fallbackParse:)(v46, v81, v68);
  v50 = v48;
  outlined init with copy of MediaUserStateCenter?(v48, v47, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
  if ((*(*(v51 - 8) + 48))(v47, 1, v51) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v47, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
    v52 = 1;
    v53 = v70;
  }

  else
  {
    v53 = v70;
    (*(v44 + 32))(v70, v47, v43);
    v52 = 0;
  }

  v67(v53, v52, 1, v43);
  outlined init with take of PommesSearchReason?(v53, &a9[v31[11]], &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v54 = v71 & 1;
  *&a9[v31[12]] = specialized static PommesSearchRequest.resolvedScore(_:isFallback:)(v50, v71 & 1);
  v55 = v72;
  v56 = *(v72 + 24);
  v57 = &a9[v31[7]];
  *v57 = *(v72 + 16);
  *(v57 + 1) = v56;
  *&a9[v31[13]] = v55;
  v58 = v75;
  outlined init with copy of MediaUserStateCenter?(v75, &a9[v31[14]], &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  a9[v31[15]] = v74 & 1;
  *&a9[v31[18]] = v73;

  v59 = specialized LazySequenceProtocol<>.keepSalientNLv4Parses()(v49);

  outlined destroy of MediaUserStateCenter?(v81, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  outlined destroy of MediaUserStateCenter?(v58, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  outlined destroy of MediaUserStateCenter?(v76, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  result = outlined destroy of MediaUserStateCenter?(v50, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  *&a9[v31[19]] = v59;
  a9[v31[20]] = v54;
  v61 = &a9[v31[21]];
  v62 = v78;
  *v61 = v77;
  *(v61 + 1) = v62;
  *&a9[v31[22]] = v79;
  a9[v31[16]] = v80 & 1;
  a9[v31[17]] = 0;
  return result;
}

uint64_t PommesSearchRequest.Builder.init()@<X0>(char *a1@<X8>)
{
  v2 = type metadata accessor for PommesSearchRequest.Builder(0);
  *a1 = 0;
  *(a1 + 1) = 0;
  v3 = v2[5];
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance();
  (*(*(v4 - 8) + 56))(&a1[v3], 1, 1, v4);
  v5 = v2[6];
  v6 = type metadata accessor for PommesCandidateId();
  (*(*(v6 - 8) + 56))(&a1[v5], 1, 1, v6);
  v7 = &a1[v2[7]];
  *v7 = 0;
  *(v7 + 1) = 0;
  *&a1[v2[8]] = 0;
  a1[v2[9]] = 0;
  a1[v2[10]] = 0;
  v8 = v2[11];
  v9 = type metadata accessor for PommesContext();
  (*(*(v9 - 8) + 56))(&a1[v8], 1, 1, v9);
  v10 = v2[12];
  v11 = type metadata accessor for InputOrigin();
  (*(*(v11 - 8) + 56))(&a1[v10], 1, 1, v11);
  v12 = v2[13];
  v13 = type metadata accessor for TCUMappedNLResponse();
  (*(*(v13 - 8) + 56))(&a1[v12], 1, 1, v13);
  *&a1[v2[14]] = MEMORY[0x277D84F90];
  v14 = v2[15];
  v15 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  result = (*(*(v15 - 8) + 56))(&a1[v14], 1, 1, v15);
  v17 = &a1[v2[16]];
  *v17 = 0;
  *(v17 + 1) = 0;
  *&a1[v2[17]] = 0;
  a1[v2[18]] = 0;
  v18 = &a1[v2[19]];
  *v18 = 0;
  *(v18 + 1) = 0;
  *&a1[v2[20]] = 0;
  a1[v2[21]] = 0;
  return result;
}

uint64_t PommesSearchRequest.init(builder:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v170 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v160 = (v156 - v4);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  v6 = MEMORY[0x28223BE20](v5 - 8);
  v158 = v156 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v6);
  v159 = v156 - v9;
  v10 = MEMORY[0x28223BE20](v8);
  v162 = v156 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v163 = v156 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v16 = v156 - v15;
  MEMORY[0x28223BE20](v14);
  *&v165 = v156 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v19 = MEMORY[0x28223BE20](v18 - 8);
  v157 = v156 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v161 = v156 - v22;
  v23 = MEMORY[0x28223BE20](v21);
  v25 = v156 - v24;
  MEMORY[0x28223BE20](v23);
  v27 = v156 - v26;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  MEMORY[0x28223BE20](v28 - 8);
  v30 = v156 - v29;
  v31 = type metadata accessor for PommesCandidateId();
  v32 = *(v31 - 8);
  v33 = MEMORY[0x28223BE20](v31);
  v35 = (v156 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v33);
  v168 = v156 - v36;
  v37 = type metadata accessor for PommesSearchRequest(0);
  v169 = *(v37 - 1);
  v38 = MEMORY[0x28223BE20](v37);
  v40 = v156 - ((v39 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v40[*(v38 + 92)] = MEMORY[0x277D84F90];
  v41 = a1[1];
  if (!v41)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v49 = type metadata accessor for Logger();
    __swift_project_value_buffer(v49, static Logger.pommes);
    v50 = Logger.logObject.getter();
    v51 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_2232BB000, v50, v51, "Attempting to create a PommesSearchRequest without an utterance", v52, 2u);
      MEMORY[0x223DE0F80](v52, -1, -1);
    }

    _s21SiriInformationSearch18NLXResultCandidateVWOhTm_0(a1, type metadata accessor for PommesSearchRequest.Builder);
    return (*(v169 + 56))(v170, 1, 1, v37);
  }

  v42 = *a1;
  v166 = v37;
  v167 = v40;
  v43 = &v40[v37[5]];
  *v43 = v42;
  *(v43 + 1) = v41;
  v164 = type metadata accessor for PommesSearchRequest.Builder(0);
  v44 = a1;
  outlined init with copy of MediaUserStateCenter?(a1 + v164[6], v30, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  if ((*(v32 + 48))(v30, 1, v31) == 1)
  {

    outlined destroy of MediaUserStateCenter?(v30, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v45 = type metadata accessor for Logger();
    __swift_project_value_buffer(v45, static Logger.pommes);
    v46 = Logger.logObject.getter();
    v47 = static os_log_type_t.fault.getter();
    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      *v48 = 0;
      _os_log_impl(&dword_2232BB000, v46, v47, "Attempting to create a PommesSearchRequest without a candidateId", v48, 2u);
      MEMORY[0x223DE0F80](v48, -1, -1);
    }

    _s21SiriInformationSearch18NLXResultCandidateVWOhTm_0(a1, type metadata accessor for PommesSearchRequest.Builder);

    v37 = v166;
    return (*(v169 + 56))(v170, 1, 1, v37);
  }

  v53 = v32;
  v156[1] = v41;
  v54 = *(v32 + 32);
  v55 = v168;
  v54(v168, v30, v31);
  (*(v53 + 16))(v35, v55, v31);
  v56 = (*(v53 + 88))(v35, v31);
  if (v56 == *MEMORY[0x277D56618])
  {
    v156[0] = v53;
    v57 = *(v53 + 96);
    v163 = v31;
    v57(v35, v31);
    v58 = *v35;
    v59 = v35[1];
    v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMR);
    v61 = v167;
    v62 = (v167 + *(v60 + 48));
    *v167 = v58;
    v61[1] = v59;
    v63 = v164;
    v64 = v164[14];
    v159 = v164[15];
    v65 = v44;
    v66 = *(v44 + v64);
    outlined init with copy of MediaUserStateCenter?(v65 + v159, v27, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    v67 = (v65 + v63[16]);
    v68 = v67[1];
    v158 = *v67;
    v69 = type metadata accessor for NLXResultCandidate(0);
    v70 = *(v69 + 20);
    v71 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
    v157 = *(v71 - 8);
    v72 = *(v157 + 7);
    v161 = v157 + 56;
    v162 = v71;
    v160 = v72;
    (v72)(v62 + v70, 1, 1);
    v73 = (v62 + *(v69 + 24));
    *v62 = v66;

    v74 = v62 + v70;
    v75 = v66;
    outlined assign with take of MediaUserStateCenter?(v27, v74, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    *v73 = v158;
    v73[1] = v68;
    v76 = v65;
    type metadata accessor for PommesSearchRequest.ParseState(0);
    swift_storeEnumTagMultiPayload();
    v77 = v165;
    static PommesSearchRequest.extractPommesDelegatedUDA(from:fallbackParse:)(v66, v65 + v159, v165);
    outlined init with copy of MediaUserStateCenter?(v77, v16, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
    v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
    if ((*(*(v78 - 8) + 48))(v16, 1, v78) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v16, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
      v79 = 1;
      v37 = v166;
      v80 = v162;
    }

    else
    {
      v91 = v16;
      v92 = v162;
      (*(v157 + 4))(v25, v91, v162);
      v79 = 0;
      v37 = v166;
      v80 = v92;
    }

    v160(v25, v79, 1, v80);
    v93 = v167;
    outlined init with take of PommesSearchReason?(v25, v167 + v37[11], &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    v85 = v164;
    v94 = *(v76 + v164[18]);
    *(v93 + v37[12]) = specialized static PommesSearchRequest.resolvedScore(_:isFallback:)(v77, v94);
    v95 = specialized LazySequenceProtocol<>.keepSalientNLv4Parses()(v75);
    v31 = v163;
    goto LABEL_37;
  }

  if (v56 == *MEMORY[0x277D56620])
  {
    v156[0] = v53;
    (*(v53 + 96))(v35, v31);
    v165 = *v35;
    v81 = v35[2];
    v82 = v35[3];
    v83 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMR) + 64);
    v84 = v167;
    *v167 = v165;
    v84[2] = v81;
    v84[3] = v82;
    v85 = v164;
    v86 = v164[13];
    v76 = v44;
    outlined init with copy of MediaUserStateCenter?(v44 + v86, v84 + v83, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    type metadata accessor for PommesSearchRequest.ParseState(0);
    swift_storeEnumTagMultiPayload();
    v87 = v160;
    outlined init with copy of MediaUserStateCenter?(v44 + v86, v160, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    v88 = type metadata accessor for TCUMappedNLResponse();
    v89 = *(v88 - 8);
    LODWORD(v82) = (*(v89 + 48))(v87, 1, v88);

    if (v82 == 1)
    {
      outlined destroy of MediaUserStateCenter?(v87, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      v90 = MEMORY[0x277D84F90];
    }

    else
    {
      v112 = TCUMappedNLResponse.nlResponse.getter();
      (*(v89 + 8))(v87, v88);
      v90 = NLParseResponse.userParses.getter();
    }

    v37 = v166;
    v113 = v162;
    v77 = v163;
    v114 = v161;
    static PommesSearchRequest.extractPommesDelegatedUDA(from:fallbackParse:)(v90, v76 + v85[15], v163);
    outlined init with copy of MediaUserStateCenter?(v77, v113, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
    v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
    if ((*(*(v115 - 8) + 48))(v113, 1, v115) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v113, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
      v116 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
      (*(*(v116 - 8) + 56))(v114, 1, 1, v116);
    }

    else
    {
      v123 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
      v124 = *(v123 - 8);
      (*(v124 + 32))(v114, v113, v123);
      (*(v124 + 56))(v114, 0, 1, v123);
    }

    v93 = v167;
    outlined init with take of PommesSearchReason?(v114, v167 + v37[11], &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    v94 = *(v76 + v85[18]);
    *(v93 + v37[12]) = specialized static PommesSearchRequest.resolvedScore(_:isFallback:)(v77, v94);
    v125 = v90;
LABEL_36:
    v95 = specialized LazySequenceProtocol<>.keepSalientNLv4Parses()(v125);

LABEL_37:
    outlined destroy of MediaUserStateCenter?(v77, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
    *(v93 + v37[19]) = v95;
    v128 = *(v76 + v85[8]);
    if (v128)
    {
      v129 = *(v156[0] + 8);

      v129(v168, v31);
      *(v93 + v37[13]) = v128;
      v130 = *(v128 + 24);
      v131 = (v93 + v37[7]);
      *v131 = *(v128 + 16);
      v131[1] = v130;
      v132 = *(v128 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId);
      v133 = *(v128 + OBJC_IVAR____TtC21SiriInformationSearch20PommesRequestContext_requestId + 8);
      v134 = (v93 + v37[8]);
      *v134 = v132;
      v134[1] = v133;
      v135 = (v76 + v85[7]);
      v136 = *v135;
      v137 = v135[1];
      v138 = (v93 + v37[9]);
      *v138 = v136;
      v138[1] = v137;
      outlined init with copy of MediaUserStateCenter?(v76 + v85[11], v93 + v37[10], &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
      outlined init with copy of MediaUserStateCenter?(v76 + v85[12], v93 + v37[14], &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
      v139 = v76;
      v140 = *(v76 + v85[17]);
      *(v93 + v37[18]) = v140;
      *(v93 + v37[20]) = v94;
      *(v93 + v37[15]) = *(v139 + v85[9]);
      *(v93 + v37[16]) = *(v139 + v85[10]);
      v141 = (v139 + v85[19]);
      v142 = *v141;
      v143 = v141[1];
      v144 = (v93 + v37[21]);
      *v144 = v142;
      v144[1] = v143;
      *(v93 + v37[22]) = *(v139 + v85[20]);
      outlined init with copy of MediaUserStateCenter?(v139 + v85[5], v93 + v37[6], &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVSgMd, &_s10PegasusAPI44Apple_Parsec_Siri_V2alpha_RewrittenUtteranceVSgMR);
      v145 = *(v139 + v85[21]);

      v146 = v140;
      _s21SiriInformationSearch18NLXResultCandidateVWOhTm_0(v139, type metadata accessor for PommesSearchRequest.Builder);
      *(v93 + v37[17]) = v145;
      v147 = v170;
      _s21SiriInformationSearch06PommesC7RequestV10ParseStateOWOcTm_1(v93, v170, type metadata accessor for PommesSearchRequest);
      (*(v169 + 56))(v147, 0, 1, v37);
      return _s21SiriInformationSearch18NLXResultCandidateVWOhTm_0(v93, type metadata accessor for PommesSearchRequest);
    }

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v149 = type metadata accessor for Logger();
    __swift_project_value_buffer(v149, static Logger.pommes);
    v150 = Logger.logObject.getter();
    v151 = static os_log_type_t.fault.getter();
    v152 = os_log_type_enabled(v150, v151);
    v153 = v156[0];
    if (v152)
    {
      v154 = swift_slowAlloc();
      *v154 = 0;
      _os_log_impl(&dword_2232BB000, v150, v151, "Attempting to create a PommesSearchRequest without a requestContext", v154, 2u);
      MEMORY[0x223DE0F80](v154, -1, -1);
    }

    (*(v153 + 8))(v168, v31);
    _s21SiriInformationSearch18NLXResultCandidateVWOhTm_0(v76, type metadata accessor for PommesSearchRequest.Builder);
    v155 = v167;
    _s21SiriInformationSearch18NLXResultCandidateVWOhTm_0(v167, type metadata accessor for PommesSearchRequest.ParseState);

    outlined destroy of MediaUserStateCenter?(v155 + v37[11], &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    goto LABEL_44;
  }

  v76 = v44;
  v85 = v164;
  if (v56 == *MEMORY[0x277D56610])
  {
    v156[0] = v53;
    (*(v53 + 96))(v35, v31);
    v96 = *v35;
    v97 = v35[1];
    v98 = *(v44 + v85[14]);
    v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMd, &_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMR);
    v100 = *(v99 + 64);
    v101 = v167;
    v102 = (v167 + *(v99 + 80));
    *v167 = v96;
    v101[1] = v97;
    v101[2] = v98;
    v103 = v85[15];
    outlined init with copy of MediaUserStateCenter?(v44 + v103, v101 + v100, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    v104 = (v44 + v85[16]);
    v105 = v104[1];
    *v102 = *v104;
    v102[1] = v105;
    type metadata accessor for PommesSearchRequest.ParseState(0);
    swift_storeEnumTagMultiPayload();

    v77 = v159;
    static PommesSearchRequest.extractPommesDelegatedUDA(from:fallbackParse:)(v106, v44 + v103, v159);
    v107 = v158;
    outlined init with copy of MediaUserStateCenter?(v77, v158, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
    v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
    v109 = (*(*(v108 - 8) + 48))(v107, 1, v108);
    v37 = v166;
    if (v109 == 1)
    {
      outlined destroy of MediaUserStateCenter?(v107, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
      v110 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
      v111 = v157;
      (*(*(v110 - 8) + 56))(v157, 1, 1, v110);
    }

    else
    {
      v126 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
      v127 = *(v126 - 8);
      v111 = v157;
      (*(v127 + 32))(v157, v107, v126);
      (*(v127 + 56))(v111, 0, 1, v126);
    }

    v93 = v167;
    outlined init with take of PommesSearchReason?(v111, v167 + v37[11], &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    v94 = *(v76 + v85[18]);
    *(v93 + v37[12]) = specialized static PommesSearchRequest.resolvedScore(_:isFallback:)(v77, v94);

    goto LABEL_36;
  }

  v117 = one-time initialization token for pommes;

  v37 = v166;
  if (v117 != -1)
  {
    swift_once();
  }

  v118 = type metadata accessor for Logger();
  __swift_project_value_buffer(v118, static Logger.pommes);
  v119 = Logger.logObject.getter();
  v120 = static os_log_type_t.fault.getter();
  if (os_log_type_enabled(v119, v120))
  {
    v121 = swift_slowAlloc();
    *v121 = 0;
    _os_log_impl(&dword_2232BB000, v119, v120, "A new PommesCandidateId case was added and used to construct a PommesSearchRequest without updating the initializer", v121, 2u);
    MEMORY[0x223DE0F80](v121, -1, -1);
  }

  v122 = *(v53 + 8);
  v122(v168, v31);
  _s21SiriInformationSearch18NLXResultCandidateVWOhTm_0(v76, type metadata accessor for PommesSearchRequest.Builder);
  v122(v35, v31);
LABEL_44:

  return (*(v169 + 56))(v170, 1, 1, v37);
}

uint64_t PommesSearchRequest.Builder.utterance.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t PommesSearchRequest.Builder.utterance.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t PommesSearchRequest.assistantId.getter(uint64_t (*a1)(void))
{
  v2 = *(v1 + *(a1(0) + 28));

  return v2;
}

uint64_t PommesSearchRequest.Builder.rootRequestId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PommesSearchRequest.Builder(0) + 28));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PommesSearchRequest.Builder.requestContext.getter()
{
  type metadata accessor for PommesSearchRequest.Builder(0);
}

uint64_t PommesSearchRequest.Builder.requestContext.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PommesSearchRequest.Builder(0) + 32);

  *(v1 + v3) = a1;
  return result;
}

uint64_t PommesSearchRequest.Builder.isMultiUser.setter(char a1)
{
  result = type metadata accessor for PommesSearchRequest.Builder(0);
  *(v1 + *(result + 36)) = a1;
  return result;
}

uint64_t PommesSearchRequest.Builder.isOnlyUserInHome.setter(char a1)
{
  result = type metadata accessor for PommesSearchRequest.Builder(0);
  *(v1 + *(result + 40)) = a1;
  return result;
}

double PommesSearchRequest.Builder.userParses.getter()
{
  type metadata accessor for PommesSearchRequest.Builder(0);

  return result;
}

uint64_t PommesSearchRequest.Builder.userParses.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PommesSearchRequest.Builder(0) + 56);

  *(v1 + v3) = a1;
  return result;
}

uint64_t PommesSearchRequest.Builder.responseVariantResult.getter()
{
  v1 = *(v0 + *(type metadata accessor for PommesSearchRequest.Builder(0) + 64));

  return v1;
}

uint64_t PommesSearchRequest.Builder.responseVariantResult.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PommesSearchRequest.Builder(0) + 64));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

void *PommesSearchRequest.Builder.asrSpeechPackage.getter()
{
  v1 = *(v0 + *(type metadata accessor for PommesSearchRequest.Builder(0) + 68));
  v2 = v1;
  return v1;
}

void PommesSearchRequest.Builder.asrSpeechPackage.setter(uint64_t a1)
{
  v3 = *(type metadata accessor for PommesSearchRequest.Builder(0) + 68);

  *(v1 + v3) = a1;
}

uint64_t PommesSearchRequest.Builder.isFallback.setter(char a1)
{
  result = type metadata accessor for PommesSearchRequest.Builder(0);
  *(v1 + *(result + 72)) = a1;
  return result;
}

uint64_t PommesSearchRequest.Builder.sharedUserId.getter()
{
  v1 = *(v0 + *(type metadata accessor for PommesSearchRequest.Builder(0) + 76));

  return v1;
}

uint64_t PommesSearchRequest.Builder.sharedUserId.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(type metadata accessor for PommesSearchRequest.Builder(0) + 76));

  *v5 = a1;
  v5[1] = a2;
  return result;
}

uint64_t PommesSearchRequest.Builder.userIdentityClassification.setter(uint64_t a1)
{
  result = type metadata accessor for PommesSearchRequest.Builder(0);
  *(v1 + *(result + 80)) = a1;
  return result;
}

uint64_t PommesSearchRequest.Builder.isGestureBased.setter(char a1)
{
  result = type metadata accessor for PommesSearchRequest.Builder(0);
  *(v1 + *(result + 84)) = a1;
  return result;
}

uint64_t PommesSearchRequest.description.getter()
{
  v1 = v0;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  MEMORY[0x28223BE20](v77);
  v76 = &v72 - v2;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  MEMORY[0x28223BE20](v75);
  v74 = &v72 - v3;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  MEMORY[0x28223BE20](v73);
  v5 = &v72 - v4;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v7 = MEMORY[0x28223BE20](v6 - 8);
  v9 = &v72 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v11 = &v72 - v10;
  v12 = type metadata accessor for NLXResultCandidate(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for PommesSearchRequest.ParseState(0);
  MEMORY[0x28223BE20](v15);
  v17 = (&v72 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  _s21SiriInformationSearch06PommesC7RequestV10ParseStateOWOcTm_1(v0, v17, type metadata accessor for PommesSearchRequest.ParseState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v20 = *v17;
  v19 = v17[1];
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {

      v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responsetMR);
      outlined init with take of PommesSearchReason?(v17 + *(v21 + 64), v11, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      v80[0] = 0;
      v80[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(18);

      v80[0] = 0xD000000000000010;
      v80[1] = 0x80000002234E1D20;
      MEMORY[0x223DDF6D0](v20, v19);

      v22 = v80[1];
      v72 = v80[0];
      v80[0] = 0;
      v80[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(27);

      v80[0] = 0xD000000000000010;
      v80[1] = 0x80000002234E1D40;
      outlined init with copy of MediaUserStateCenter?(v11, v9, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      v23 = type metadata accessor for TCUMappedNLResponse();
      v24 = *(v23 - 8);
      if ((*(v24 + 48))(v9, 1, v23) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v9, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
        v25 = MEMORY[0x277D84F90];
      }

      else
      {
        v37 = TCUMappedNLResponse.nlResponse.getter();
        (*(v24 + 8))(v9, v23);
        v38 = NLParseResponse.userParses.getter();

        v25 = v38;
      }

      v39 = *(v25 + 16);

      v78 = v39;
      v40 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x223DDF6D0](v40);

      MEMORY[0x223DDF6D0](0x2973286D65746920, 0xE900000000000029);
      v30 = v80[0];
      v29 = v80[1];
      outlined destroy of MediaUserStateCenter?(v11, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      v27 = v72;
    }

    else
    {
      v31 = v17[2];
      v32 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMd, &_sSS5refId_Say12SiriNLUTypes0C23_Nlu_External_UserParseVG10userParsesAB0c1_e1_f10_DelegatedG9DialogActVSg08fallbackH0SSSg21responseVariantResulttMR) + 64);

      strcpy(v80, "refId: ");
      v80[1] = 0xE700000000000000;
      MEMORY[0x223DDF6D0](v20, v19);

      v33 = v80[0];
      v22 = v80[1];
      v80[0] = 0;
      v80[1] = 0xE000000000000000;
      _StringGuts.grow(_:)(25);

      strcpy(v80, "userParses: (");
      HIWORD(v80[1]) = -4864;
      v34 = *(v31 + 16);

      v78 = v34;
      v35 = dispatch thunk of CustomStringConvertible.description.getter();
      MEMORY[0x223DDF6D0](v35);

      MEMORY[0x223DDF6D0](0x7328736D65746920, 0xEA00000000002929);
      v30 = v80[0];
      v29 = v80[1];
      v36 = v17 + v32;
      v27 = v33;
      outlined destroy of MediaUserStateCenter?(v36, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    }
  }

  else
  {
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMR);
    _s21SiriInformationSearch18NLXResultCandidateVWObTm_0(v17 + *(v26 + 48), v14, type metadata accessor for NLXResultCandidate);
    v80[0] = 0;
    v80[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(21);

    v80[0] = 0xD000000000000013;
    v80[1] = 0x80000002234E1D60;
    MEMORY[0x223DDF6D0](v20, v19);

    v27 = v80[0];
    v22 = v80[1];
    v80[0] = 0;
    v80[1] = 0xE000000000000000;
    _StringGuts.grow(_:)(16);

    strcpy(v80, "userParses: (");
    HIWORD(v80[1]) = -4864;
    v28 = NLXResultCandidate.description.getter();
    MEMORY[0x223DDF6D0](v28);

    MEMORY[0x223DDF6D0](41, 0xE100000000000000);
    v30 = v80[0];
    v29 = v80[1];
    _s21SiriInformationSearch18NLXResultCandidateVWOhTm_0(v14, type metadata accessor for NLXResultCandidate);
  }

  v80[0] = 0;
  v80[1] = 0xE000000000000000;
  _StringGuts.grow(_:)(252);
  MEMORY[0x223DDF6D0](0x636E617265747475, 0xEC00000022203A65);
  v41 = type metadata accessor for PommesSearchRequest(0);
  MEMORY[0x223DDF6D0](*(v1 + v41[5]), *(v1 + v41[5] + 8));
  MEMORY[0x223DDF6D0](0x6575716572202C22, 0xEE00203A64497473);
  v42 = v1 + v41[8];
  v43 = *(v42 + 8);
  v78 = *v42;
  v79 = v43;

  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v44 = String.init<A>(describing:)();
  MEMORY[0x223DDF6D0](v44);

  MEMORY[0x223DDF6D0](8236, 0xE200000000000000);
  MEMORY[0x223DDF6D0](v27, v22);

  MEMORY[0x223DDF6D0](0xD000000000000011, 0x80000002234E1C20);
  outlined init with copy of MediaUserStateCenter?(v1 + v41[10], v5, &_s21SiriInformationSearch13PommesContextVSgMd, &_s21SiriInformationSearch13PommesContextVSgMR);
  v45 = String.init<A>(describing:)();
  MEMORY[0x223DDF6D0](v45);

  MEMORY[0x223DDF6D0](0xD000000000000011, 0x80000002234E1C40);
  outlined init with copy of MediaUserStateCenter?(v1 + v41[11], v74, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  v46 = String.init<A>(describing:)();
  MEMORY[0x223DDF6D0](v46);

  MEMORY[0x223DDF6D0](2108450, 0xE300000000000000);
  MEMORY[0x223DDF6D0](v30, v29);

  MEMORY[0x223DDF6D0](0x6F6353637370202CLL, 0xED000022203A6572);
  v47 = Double.description.getter();
  MEMORY[0x223DDF6D0](v47);

  MEMORY[0x223DDF6D0](0xD000000000000010, 0x80000002234E1C60);
  v48 = v1 + v41[7];
  v49 = *(v48 + 8);
  v78 = *v48;
  v79 = v49;

  v50 = String.init<A>(describing:)();
  MEMORY[0x223DDF6D0](v50);

  MEMORY[0x223DDF6D0](0x4F7475706E69202CLL, 0xEF203A6E69676972);
  outlined init with copy of MediaUserStateCenter?(v1 + v41[14], v76, &_s13SiriUtilities11InputOriginOSgMd, &_s13SiriUtilities11InputOriginOSgMR);
  v51 = String.init<A>(describing:)();
  MEMORY[0x223DDF6D0](v51);

  MEMORY[0x223DDF6D0](0x746C754D7369202CLL, 0xEF203A7265735569);
  if (*(v1 + v41[15]))
  {
    v52 = 1702195828;
  }

  else
  {
    v52 = 0x65736C6166;
  }

  if (*(v1 + v41[15]))
  {
    v53 = 0xE400000000000000;
  }

  else
  {
    v53 = 0xE500000000000000;
  }

  MEMORY[0x223DDF6D0](v52, v53);

  v54 = MEMORY[0x223DDF6D0](0xD000000000000012, 0x80000002234E1C80);
  v55 = *(v1 + v41[13]);
  if (v55)
  {
    v56 = (*(*v55 + 256))(v54);
  }

  else
  {
    v56 = 0;
    v57 = 0;
  }

  v78 = v56;
  v79 = v57;
  v58 = String.init<A>(describing:)();
  MEMORY[0x223DDF6D0](v58);

  MEMORY[0x223DDF6D0](0xD000000000000014, 0x80000002234E1CA0);
  v78 = *(v1 + v41[18]);
  v59 = v78;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSo15AFSpeechPackageCSgMd, &_sSo15AFSpeechPackageCSgMR);
  v60 = String.init<A>(describing:)();
  MEMORY[0x223DDF6D0](v60);

  MEMORY[0x223DDF6D0](0x6C6C61467369202CLL, 0xEE00203A6B636162);
  if (*(v1 + v41[20]))
  {
    v61 = 1702195828;
  }

  else
  {
    v61 = 0x65736C6166;
  }

  if (*(v1 + v41[20]))
  {
    v62 = 0xE400000000000000;
  }

  else
  {
    v62 = 0xE500000000000000;
  }

  MEMORY[0x223DDF6D0](v61, v62);

  MEMORY[0x223DDF6D0](0xD000000000000010, 0x80000002234E1CC0);
  if (*(v1 + v41[21] + 8))
  {
    v63 = 0xD000000000000011;
  }

  else
  {
    v63 = 7104878;
  }

  if (*(v1 + v41[21] + 8))
  {
    v64 = 0x80000002234E1D00;
  }

  else
  {
    v64 = 0xE300000000000000;
  }

  MEMORY[0x223DDF6D0](v63, v64);

  MEMORY[0x223DDF6D0](0xD00000000000001ELL, 0x80000002234E1CE0);
  v65 = AFUserIdentityClassficationGetName();
  if (v65)
  {
    v66 = v65;
    v67 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v69 = v68;
  }

  else
  {
    v67 = 0;
    v69 = 0;
  }

  v78 = v67;
  v79 = v69;
  v70 = String.init<A>(describing:)();
  MEMORY[0x223DDF6D0](v70);

  return v80[0];
}

uint64_t PommesSearchRequest.resultCandidateId.getter()
{
  v1 = type metadata accessor for PommesSearchRequest.ParseState(0);
  MEMORY[0x28223BE20](v1);
  v3 = (&v11 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0));
  _s21SiriInformationSearch06PommesC7RequestV10ParseStateOWOcTm_1(v0, v3, type metadata accessor for PommesSearchRequest.ParseState);
  if (swift_getEnumCaseMultiPayload())
  {
    _s21SiriInformationSearch18NLXResultCandidateVWOhTm_0(v3, type metadata accessor for PommesSearchRequest.ParseState);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v4 = type metadata accessor for Logger();
    __swift_project_value_buffer(v4, static Logger.pommes);
    v5 = Logger.logObject.getter();
    v6 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      *v7 = 0;
      _os_log_impl(&dword_2232BB000, v5, v6, "Caller needs migrated to use TRP IDs", v7, 2u);
      MEMORY[0x223DE0F80](v7, -1, -1);
    }

    return 0;
  }

  else
  {
    v8 = *v3;
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0tMR);
    _s21SiriInformationSearch18NLXResultCandidateVWOhTm_0(v3 + *(v9 + 48), type metadata accessor for NLXResultCandidate);
  }

  return v8;
}

void *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(void *a1, int64_t a2, char a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D23_Nlu_External_UserParseVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D23_Nlu_External_UserParseVGMR, MEMORY[0x277D5DB08]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy12SiriOntology12SpanPropertyVGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology12SpanPropertyVGMR, MEMORY[0x277D5E460]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy12SiriOntology13UsoEntitySpanVGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology13UsoEntitySpanVGMR, MEMORY[0x277D5E4A0]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel8RREntityVGMd, &_ss23_ContiguousArrayStorageCy32SiriReferenceResolutionDataModel8RREntityVGMR, MEMORY[0x277D5FEB0]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D18_Nlu_External_SpanVGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D18_Nlu_External_SpanVGMR, MEMORY[0x277D5DA48]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10PegasusAPI40Apple_Parsec_Siri_V2alpha_AudioAttributeOGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI40Apple_Parsec_Siri_V2alpha_AudioAttributeOGMR, MEMORY[0x277D395D0]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ResultEntityVGMR, MEMORY[0x277D39440]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10PegasusAPI026Apple_Parsec_Siri_Context_D11DisplayHintVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI026Apple_Parsec_Siri_Context_D11DisplayHintVGMR, MEMORY[0x277D38C88]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10PegasusAPI026Apple_Parsec_Siri_Context_D13SemanticValueVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI026Apple_Parsec_Siri_Context_D13SemanticValueVGMR, MEMORY[0x277D38C98]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceValueVGMR, MEMORY[0x277D39768]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI35Apple_Parsec_Siri_V2alpha_AudioItemVGMR, MEMORY[0x277D39100]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_V2alpha_ProfileSliceVGMR, MEMORY[0x277D39460]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10PegasusAPI026Apple_Parsec_Siri_V2alpha_D11SearchQueryVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI026Apple_Parsec_Siri_V2alpha_D11SearchQueryVGMR, MEMORY[0x277D38CA8]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ClientEntityVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Siri_Context_ClientEntityVGMR, MEMORY[0x277D39438]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceLabelOGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ProfileSliceLabelOGMR, MEMORY[0x277D39740]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10PegasusAPI46Apple_Parsec_Siri_V2alpha_AppVocabularyConceptVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI46Apple_Parsec_Siri_V2alpha_AppVocabularyConceptVGMR, MEMORY[0x277D39968]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Search_V2_MarketplaceInfoV0J0VGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI38Apple_Parsec_Search_V2_MarketplaceInfoV0J0VGMR, MEMORY[0x277D393E0]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy12SiriOntology13UsoIdentifierVGMd, &_ss23_ContiguousArrayStorageCy12SiriOntology13UsoIdentifierVGMR, MEMORY[0x277D5E4F0]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy21SiriInformationSearch32PommesBridgeResultCandidateStateVGMd, &_ss23_ContiguousArrayStorageCy21SiriInformationSearch32PommesBridgeResultCandidateStateVGMR, type metadata accessor for PommesBridgeResultCandidateState);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI49Apple_Parsec_Siri_V2alpha_RenderedDialogComponentVGMR, MEMORY[0x277D39B70]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy13SiriInference27SportsPersonalizationEntityVGMd, &_ss23_ContiguousArrayStorageCy13SiriInference27SportsPersonalizationEntityVGMR, MEMORY[0x277D56160]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10PegasusAPI40Apple_Parsec_Siri_V2alpha_ContactAddressVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI40Apple_Parsec_Siri_V2alpha_ContactAddressVGMR, MEMORY[0x277D39648]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10PegasusAPI51Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadataV09PlayVideokM0V0O8CategoryOGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI51Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadataV09PlayVideokM0V0O8CategoryOGMR, MEMORY[0x277D39C08]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10PegasusAPI51Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadataV06ShowInj19StringSearchResultskM0V0pQ5ScopeOGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI51Apple_Parsec_Siri_V2alpha_AppIntentProtocolMetadataV06ShowInj19StringSearchResultskM0V0pQ5ScopeOGMR, MEMORY[0x277D39BD8]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ASRInterpretationVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_ASRInterpretationVGMR, MEMORY[0x277D396C0]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10PegasusAPI45Apple_Parsec_Siri_V2alpha_InterpretationTokenVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI45Apple_Parsec_Siri_V2alpha_InterpretationTokenVGMR, MEMORY[0x277D39918]);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3, &_ss23_ContiguousArrayStorageCy10PegasusAPI47Apple_Parsec_Siri_Context_ClientEntityAlignmentVGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI47Apple_Parsec_Siri_Context_ClientEntityAlignmentVGMR, MEMORY[0x277D399F8]);
  *v3 = result;
  return result;
}

char *specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(char *a1, uint64_t a2, uint64_t a3)
{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

{
  result = specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4)
{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10Foundation4DataVSgGMd, &_ss23_ContiguousArrayStorageCy10Foundation4DataVSgGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 17;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 4);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[2 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 16 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation4DataVSgMd, &_s10Foundation4DataVSgMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

{
  v5 = result;
  if (a3)
  {
    v6 = a4[3];
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

  v8 = a4[2];
  if (v7 <= v8)
  {
    v9 = a4[2];
  }

  else
  {
    v9 = v7;
  }

  if (v9)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy21SiriInformationSearch14MediaUserState_pGMd, &_ss23_ContiguousArrayStorageCy21SiriInformationSearch14MediaUserState_pGMR);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch14MediaUserState_pMd, &_s21SiriInformationSearch14MediaUserState_pMR);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *specialized _ContiguousArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (v15)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
    v16 = swift_allocObject();
    v17 = _swift_stdlib_malloc_size(v16);
    v18 = v17 - 32;
    if (v17 < 32)
    {
      v18 = v17 - 25;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 3);
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 8 * v14);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a7, a8);
    swift_arrayInitWithCopy();
  }

  return v16;
}

{
  v11 = result;
  if (a3)
  {
    v12 = a4[3];
    v13 = v12 >> 1;
    if ((v12 >> 1) < a2)
    {
      if (v13 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v13 = v12 & 0xFFFFFFFFFFFFFFFELL;
      if ((v12 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v13 = a2;
      }
    }
  }

  else
  {
    v13 = a2;
  }

  v14 = a4[2];
  if (v13 <= v14)
  {
    v15 = a4[2];
  }

  else
  {
    v15 = v13;
  }

  if (!v15)
  {
    v19 = MEMORY[0x277D84F90];
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a5, a6);
  v16 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  v17 = *(v16 + 72);
  v18 = (*(v16 + 80) + 32) & ~*(v16 + 80);
  v19 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v19);
  if (!v17)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v18) == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_29;
  }

  v19[2] = v14;
  v19[3] = 2 * ((result - v18) / v17);
LABEL_19:
  v21 = *(__swift_instantiateConcreteTypeFromMangledNameV2(a7, a8) - 8);
  if (v11)
  {
    if (v19 < a4 || (v22 = (*(v21 + 80) + 32) & ~*(v21 + 80), v19 + v22 >= a4 + v22 + *(v21 + 72) * v14))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v19 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v19;
}

uint64_t _s21SiriInformationSearch06PommesC7RequestV10ParseStateOWOcTm_1(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t _s21SiriInformationSearch18NLXResultCandidateVWOhTm_0(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t _s21SiriInformationSearch18NLXResultCandidateVWObTm_0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

void type metadata completion function for PommesSearchRequest(uint64_t a1)
{
  type metadata accessor for PommesSearchRequest.ParseState(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance?(319, &lazy cache variable for type metadata for Apple_Parsec_Siri_V2alpha_RewrittenUtterance?, MEMORY[0x277D398D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for String?();
      if (v3 <= 0x3F)
      {
        type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance?(319, &lazy cache variable for type metadata for PommesContext?, MEMORY[0x277D56698], MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance?(319, &lazy cache variable for type metadata for Siri_Nlu_External_DelegatedUserDialogAct?, MEMORY[0x277D5DD80], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance?(319, &lazy cache variable for type metadata for PommesRequestContext?, type metadata accessor for PommesRequestContext, MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance?(319, &lazy cache variable for type metadata for InputOrigin?, MEMORY[0x277D61CA8], MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance?(319, &lazy cache variable for type metadata for AFSpeechPackage?, type metadata accessor for AFSpeechPackage, MEMORY[0x277D83D88]);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance?(319, &lazy cache variable for type metadata for [Siri_Nlu_External_UserParse], MEMORY[0x277D5DB08], MEMORY[0x277D83940]);
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for AFUserIdentityClassfication(319);
                    if (v10 <= 0x3F)
                    {
                      type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance?(319, &lazy cache variable for type metadata for [Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest], MEMORY[0x277D39D28], MEMORY[0x277D83940]);
                      if (v11 <= 0x3F)
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

unint64_t type metadata accessor for AFSpeechPackage()
{
  result = lazy cache variable for type metadata for AFSpeechPackage;
  if (!lazy cache variable for type metadata for AFSpeechPackage)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for AFSpeechPackage);
  }

  return result;
}

void type metadata completion function for PommesSearchRequest.ParseState(uint64_t a1)
{
  type metadata accessor for (id: String, nlxResultCandidate: NLXResultCandidate)(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for (id: String, tcuId: String, response: TCUMappedNLResponse?)(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for (refId: String, userParses: [Siri_Nlu_External_UserParse], fallbackParse: Siri_Nlu_External_DelegatedUserDialogAct?, responseVariantResult: String?)(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void type metadata accessor for (id: String, nlxResultCandidate: NLXResultCandidate)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (id: String, nlxResultCandidate: NLXResultCandidate))
  {
    type metadata accessor for NLXResultCandidate(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (id: String, nlxResultCandidate: NLXResultCandidate));
    }
  }
}

void type metadata accessor for (id: String, tcuId: String, response: TCUMappedNLResponse?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (id: String, tcuId: String, response: TCUMappedNLResponse?))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (id: String, tcuId: String, response: TCUMappedNLResponse?));
    }
  }
}

void type metadata accessor for (refId: String, userParses: [Siri_Nlu_External_UserParse], fallbackParse: Siri_Nlu_External_DelegatedUserDialogAct?, responseVariantResult: String?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (refId: String, userParses: [Siri_Nlu_External_UserParse], fallbackParse: Siri_Nlu_External_DelegatedUserDialogAct?, responseVariantResult: String?))
  {
    MEMORY[0x28223BE20](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay12SiriNLUTypes0A23_Nlu_External_UserParseVGMd, &_sSay12SiriNLUTypes0A23_Nlu_External_UserParseVGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSSSgMd, &_sSSSgMR);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &lazy cache variable for type metadata for (refId: String, userParses: [Siri_Nlu_External_UserParse], fallbackParse: Siri_Nlu_External_DelegatedUserDialogAct?, responseVariantResult: String?));
    }
  }
}

void type metadata completion function for PommesSearchRequest.Builder(uint64_t a1)
{
  type metadata accessor for String?();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance?(319, &lazy cache variable for type metadata for Apple_Parsec_Siri_V2alpha_RewrittenUtterance?, MEMORY[0x277D398D0], MEMORY[0x277D83D88]);
    if (v2 <= 0x3F)
    {
      type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance?(319, &lazy cache variable for type metadata for PommesCandidateId?, MEMORY[0x277D56628], MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance?(319, &lazy cache variable for type metadata for PommesRequestContext?, type metadata accessor for PommesRequestContext, MEMORY[0x277D83D88]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance?(319, &lazy cache variable for type metadata for PommesContext?, MEMORY[0x277D56698], MEMORY[0x277D83D88]);
          if (v5 <= 0x3F)
          {
            type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance?(319, &lazy cache variable for type metadata for InputOrigin?, MEMORY[0x277D61CA8], MEMORY[0x277D83D88]);
            if (v6 <= 0x3F)
            {
              type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance?(319, &lazy cache variable for type metadata for TCUMappedNLResponse?, MEMORY[0x277D5D140], MEMORY[0x277D83D88]);
              if (v7 <= 0x3F)
              {
                type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance?(319, &lazy cache variable for type metadata for [Siri_Nlu_External_UserParse], MEMORY[0x277D5DB08], MEMORY[0x277D83940]);
                if (v8 <= 0x3F)
                {
                  type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance?(319, &lazy cache variable for type metadata for Siri_Nlu_External_DelegatedUserDialogAct?, MEMORY[0x277D5DD80], MEMORY[0x277D83D88]);
                  if (v9 <= 0x3F)
                  {
                    type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance?(319, &lazy cache variable for type metadata for AFSpeechPackage?, type metadata accessor for AFSpeechPackage, MEMORY[0x277D83D88]);
                    if (v10 <= 0x3F)
                    {
                      type metadata accessor for AFUserIdentityClassfication(319);
                      if (v11 <= 0x3F)
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

void type metadata accessor for Apple_Parsec_Siri_V2alpha_RewrittenUtterance?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

uint64_t PommesLocationInfo.init(location:accuracyAuthorization:locationNeedsUpdateForAccuracy:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  return result;
}

uint64_t LocationStatus.description.getter()
{
  v1 = type metadata accessor for LocationStatus(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v8 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of LocationStatus(v0, v3);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      return 0xD000000000000015;
    }

    else if (EnumCaseMultiPayload == 4)
    {
      return 0x6C696176616E752ELL;
    }

    else
    {
      return 0x6E776F6E6B6E752ELL;
    }
  }

  else if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23CLAccuracyAuthorizationVSg_10Foundation4DateVtMd, &_sSo23CLAccuracyAuthorizationVSg_10Foundation4DateVtMR) + 48);
      v6 = type metadata accessor for Date();
      (*(*(v6 - 8) + 8))(&v3[v5], v6);
      return 0x676E69646E65702ELL;
    }

    else
    {
      return 0xD000000000000011;
    }
  }

  else
  {
    outlined destroy of LocationStatus(v3);
    return 0xD00000000000001ELL;
  }
}

uint64_t static PommesLocationInfo.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *(a1 + 16);
  v4 = a2[1];
  v5 = *(a2 + 16);
  type metadata accessor for NSObject();
  return static NSObject.== infix(_:_:)() & (v2 == v4) & (v3 ^ v5 ^ 1);
}

void PommesLocationInfo.hash(into:)()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  NSObject.hash(into:)();
  MEMORY[0x223DE0370](v1);
  Hasher._combine(_:)(v2);
}

Swift::Int PommesLocationInfo.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  MEMORY[0x223DE0370](v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance PommesLocationInfo()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 16);
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  MEMORY[0x223DE0370](v1);
  Hasher._combine(_:)(v2);
  return Hasher._finalize()();
}

void protocol witness for Hashable.hash(into:) in conformance PommesLocationInfo(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  NSObject.hash(into:)();
  MEMORY[0x223DE0370](v2);
  Hasher._combine(_:)(v3);
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance PommesLocationInfo(uint64_t a1)
{
  v2 = *(v1 + 8);
  v3 = *(v1 + 16);
  Hasher.init(_seed:)();
  NSObject.hash(into:)();
  MEMORY[0x223DE0370](v2);
  Hasher._combine(_:)(v3);
  return Hasher._finalize()();
}

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance PommesLocationInfo(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = *(a1 + 16);
  v4 = a2[1];
  v5 = *(a2 + 16);
  type metadata accessor for NSObject();
  return static NSObject.== infix(_:_:)() & (v2 == v4) & (v3 ^ v5 ^ 1);
}

Swift::Int LocationError.hashValue.getter()
{
  v1 = *v0;
  Hasher.init(_seed:)();
  MEMORY[0x223DE0370](v1);
  return Hasher._finalize()();
}

uint64_t specialized static LocationStatus.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Date();
  v40 = *(v4 - 8);
  v5 = MEMORY[0x28223BE20](v4);
  v7 = &v37 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v37 - v8;
  v10 = type metadata accessor for LocationStatus(0);
  v11 = MEMORY[0x28223BE20](v10);
  v13 = &v37 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch14LocationStatusO_ACtMd, &_s21SiriInformationSearch14LocationStatusO_ACtMR);
  v17 = MEMORY[0x28223BE20](v16 - 8);
  v19 = &v37 - v18;
  v20 = &v37 + *(v17 + 56) - v18;
  outlined init with copy of LocationStatus(a1, &v37 - v18);
  outlined init with copy of LocationStatus(a2, v20);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload > 2)
  {
    if (EnumCaseMultiPayload == 3)
    {
      if (swift_getEnumCaseMultiPayload() != 3)
      {
        goto LABEL_21;
      }
    }

    else if (EnumCaseMultiPayload == 4)
    {
      if (swift_getEnumCaseMultiPayload() != 4)
      {
        goto LABEL_21;
      }
    }

    else if (swift_getEnumCaseMultiPayload() != 5)
    {
      goto LABEL_21;
    }
  }

  else
  {
    if (!EnumCaseMultiPayload)
    {
      outlined init with copy of LocationStatus(v19, v15);
      v27 = *v15;
      if (!swift_getEnumCaseMultiPayload())
      {
        v28 = v15[16];
        v29 = *(v15 + 1);
        v30 = *v20;
        v31 = *(v20 + 1);
        v32 = v20[16];
        type metadata accessor for NSObject();
        v33 = static NSObject.== infix(_:_:)();

        v26 = v33 & (v29 == v31) & (v28 ^ v32 ^ 1);
LABEL_29:
        outlined destroy of LocationStatus(v19);
        return v26 & 1;
      }

      goto LABEL_21;
    }

    if (EnumCaseMultiPayload == 1)
    {
      outlined init with copy of LocationStatus(v19, v13);
      v22 = *v13;
      v23 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo23CLAccuracyAuthorizationVSg_10Foundation4DateVtMd, &_sSo23CLAccuracyAuthorizationVSg_10Foundation4DateVtMR) + 48);
      if (swift_getEnumCaseMultiPayload() == 1)
      {
        v24 = v13[8];
        v37 = *v20;
        v38 = v22;
        v39 = v20[8];
        v25 = *(v40 + 32);
        v25(v9, &v13[v23], v4);
        v25(v7, &v20[v23], v4);
        if (v24)
        {
          if (!v39)
          {
LABEL_7:
            v26 = 0;
LABEL_28:
            v35 = *(v40 + 8);
            v35(v7, v4);
            v35(v9, v4);
            goto LABEL_29;
          }
        }

        else
        {
          if (v38 == v37)
          {
            v34 = v39;
          }

          else
          {
            v34 = 1;
          }

          if (v34)
          {
            goto LABEL_7;
          }
        }

        v26 = static Date.== infix(_:_:)();
        goto LABEL_28;
      }

      (*(v40 + 8))(&v13[v23], v4);
      goto LABEL_21;
    }

    if (swift_getEnumCaseMultiPayload() != 2)
    {
LABEL_21:
      outlined destroy of (LocationStatus, LocationStatus)(v19);
      v26 = 0;
      return v26 & 1;
    }
  }

  outlined destroy of LocationStatus(v19);
  v26 = 1;
  return v26 & 1;
}

unint64_t lazy protocol witness table accessor for type PommesLocationInfo and conformance PommesLocationInfo()
{
  result = lazy protocol witness table cache variable for type PommesLocationInfo and conformance PommesLocationInfo;
  if (!lazy protocol witness table cache variable for type PommesLocationInfo and conformance PommesLocationInfo)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type PommesLocationInfo and conformance PommesLocationInfo);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PommesLocationInfo(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t storeEnumTagSinglePayload for PommesLocationInfo(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PommesLocationInfo.Options(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t storeEnumTagSinglePayload for PommesLocationInfo.Options(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void type metadata completion function for LocationStatus(uint64_t a1)
{
  type metadata accessor for (CLAccuracyAuthorization?, Date)(319);
  if (v1 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
  }
}

void type metadata accessor for (CLAccuracyAuthorization?, Date)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (CLAccuracyAuthorization?, Date))
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSo23CLAccuracyAuthorizationVSgMd, &_sSo23CLAccuracyAuthorizationVSgMR);
    type metadata accessor for Date();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &lazy cache variable for type metadata for (CLAccuracyAuthorization?, Date));
    }
  }
}

uint64_t outlined destroy of (LocationStatus, LocationStatus)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch14LocationStatusO_ACtMd, &_s21SiriInformationSearch14LocationStatusO_ACtMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t NonSiriKitMediaAppLaunchPreflightClient.__allocating_init(appDataProvider:)(__int128 *a1)
{
  v2 = swift_allocObject();
  v3 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #0 of NonSiriKitMediaAppLaunchPreflightClient.init(appDataProvider:));
  swift_arrayDestroy();
  *(v2 + 56) = v3;
  outlined init with take of PommesAppChecking(a1, v2 + 16);
  return v2;
}

uint64_t NonSiriKitMediaAppLaunchPreflightClient.init(appDataProvider:)(__int128 *a1)
{
  v3 = _sShyShyxGqd__nc7ElementQyd__RszSTRd__lufCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #0 of NonSiriKitMediaAppLaunchPreflightClient.init(appDataProvider:));
  swift_arrayDestroy();
  *(v1 + 56) = v3;
  outlined init with take of PommesAppChecking(a1, v1 + 16);
  return v1;
}

uint64_t NonSiriKitMediaAppLaunchPreflightClient.handle(pommesSearchRequest:)(uint64_t a1)
{
  v89 = *v1;
  v90 = type metadata accessor for PommesSearchReason();
  v87 = *(v90 - 8);
  MEMORY[0x28223BE20](v90);
  v86 = &v83 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v85 = (&v83 - v6);
  v7 = type metadata accessor for Siri_Nlu_External_UserParse();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = type metadata accessor for PommesSearchRequest(0);
  v11 = *(v84 + 76);
  v88 = a1;
  v12 = *(a1 + v11);
  v107 = MEMORY[0x277D84F90];
  v98 = *(v12 + 16);
  if (v98)
  {
    v13 = 0;
    v2 = 0;
    v97 = v8 + 16;
    v96 = (v8 + 8);
    v91 = MEMORY[0x277D84F90];
    v14 = MEMORY[0x277D84F70];
    v93 = v10;
    v95 = v7;
    v94 = v8;
    v92 = v12;
    while (1)
    {
      if (v13 >= *(v12 + 16))
      {
        __break(1u);
        goto LABEL_79;
      }

      v16 = v12 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
      v17 = *(v8 + 72);
      v100 = v13;
      (*(v8 + 16))(v10, v16 + v17 * v13, v7);
      v18 = Siri_Nlu_External_Span.matcherNames.getter();
      v19 = specialized Sequence.flatMap<A>(_:)(v18);
      if (v2)
      {
        (*v96)(v10, v7);

        if (one-time initialization token for pommes != -1)
        {
          goto LABEL_88;
        }

        goto LABEL_54;
      }

      v20 = v19;

      v99 = 0;
      if (v20 >> 62)
      {
        v21 = __CocoaSet.count.getter();
      }

      else
      {
        v21 = *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      ++v100;
      if (!v21)
      {
LABEL_3:

        v10 = v93;
        v7 = v95;
        (*v96)(v93, v95);
        v2 = v99;
        v13 = v100;
        v15 = v100 == v98;
        v8 = v94;
        goto LABEL_4;
      }

      v22 = 0;
      v23 = (v20 & 0xC000000000000001);
      v24 = v20 & 0xFFFFFFFFFFFFFF8;
      v101 = v20 & 0xFFFFFFFFFFFFFF8;
      v102 = v20 & 0xC000000000000001;
      while (1)
      {
        if (v23)
        {
          MEMORY[0x223DDFF80](v22, v20);
          v25 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
            goto LABEL_69;
          }
        }

        else
        {
          if (v22 >= *(v24 + 16))
          {
            goto LABEL_70;
          }

          v25 = v22 + 1;
          if (__OFADD__(v22, 1))
          {
LABEL_69:
            __break(1u);
LABEL_70:
            __break(1u);
            goto LABEL_71;
          }
        }

        static UsoTask_CodegenConverter.convert(task:)();
        outlined init with copy of MediaUserStateCenter?(v106, v105, &_sypSgMd, &_sypSgMR);
        if (!v105[3])
        {
          outlined destroy of MediaUserStateCenter?(v106, &_sypSgMd, &_sypSgMR);
LABEL_29:
          outlined destroy of MediaUserStateCenter?(v105, &_sypSgMd, &_sypSgMR);
          goto LABEL_13;
        }

        outlined init with copy of MediaUserStateCenter?(v105, v104, &_sypSgMd, &_sypSgMR);
        type metadata accessor for UsoTask_open_common_App();
        if (swift_dynamicCast())
        {
          outlined destroy of MediaUserStateCenter?(v106, &_sypSgMd, &_sypSgMR);

          __swift_destroy_boxed_opaque_existential_1(v104);
          outlined destroy of MediaUserStateCenter?(v105, &_sypSgMd, &_sypSgMR);
          goto LABEL_35;
        }

        type metadata accessor for UsoTask_start_uso_NoEntity();
        if (swift_dynamicCast())
        {

          dispatch thunk of Uso_VerbTemplate_ReferenceControl.reference.getter();

          if (v103)
          {
            v26 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();

            outlined destroy of MediaUserStateCenter?(v106, &_sypSgMd, &_sypSgMR);
            if (v26)
            {
              goto LABEL_34;
            }

            goto LABEL_12;
          }

          goto LABEL_11;
        }

        type metadata accessor for UsoTask_play_uso_NoEntity();
        if ((swift_dynamicCast() & 1) == 0)
        {
          outlined destroy of MediaUserStateCenter?(v106, &_sypSgMd, &_sypSgMR);
          __swift_destroy_boxed_opaque_existential_1(v104);
          goto LABEL_29;
        }

        dispatch thunk of Uso_VerbTemplate_ReferenceControl.reference.getter();

        if (v103)
        {
          break;
        }

LABEL_11:
        outlined destroy of MediaUserStateCenter?(v106, &_sypSgMd, &_sypSgMR);

LABEL_12:
        __swift_destroy_boxed_opaque_existential_1(v104);
        outlined destroy of MediaUserStateCenter?(v105, &_sypSgMd, &_sypSgMR);
        v14 = MEMORY[0x277D84F70];
        v24 = v101;
        v23 = v102;
LABEL_13:

        ++v22;
        if (v25 == v21)
        {
          goto LABEL_3;
        }
      }

      v27 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();

      outlined destroy of MediaUserStateCenter?(v106, &_sypSgMd, &_sypSgMR);
      if (!v27)
      {
        goto LABEL_12;
      }

LABEL_34:

      __swift_destroy_boxed_opaque_existential_1(v104);
      outlined destroy of MediaUserStateCenter?(v105, &_sypSgMd, &_sypSgMR);
      v14 = MEMORY[0x277D84F70];
LABEL_35:
      v10 = v93;
      v7 = v95;
      (*v96)(v93, v95);

      MEMORY[0x223DDF820](v28);
      v2 = v99;
      v8 = v94;
      if (*((v107 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v107 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        v14 = MEMORY[0x277D84F70];
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v91 = v107;
      v13 = v100;
      v15 = v100 == v98;
LABEL_4:
      v12 = v92;
      if (v15)
      {
        goto LABEL_40;
      }
    }
  }

  v91 = MEMORY[0x277D84F90];
LABEL_40:
  v14 = v91;
  if (!(v91 >> 62))
  {
    if (*((v91 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_42;
    }

LABEL_80:

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v80 = type metadata accessor for Logger();
    __swift_project_value_buffer(v80, static Logger.pommes);
    v39 = Logger.logObject.getter();
    v81 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v39, v81))
    {
      v82 = swift_slowAlloc();
      *v82 = 0;
      _os_log_impl(&dword_2232BB000, v39, v81, "NonSiriKitMediaAppLaunchPreflightClient#ignore no valid appLaunch task from NLv4 parse", v82, 2u);
      MEMORY[0x223DE0F80](v82, -1, -1);
    }

    goto LABEL_84;
  }

LABEL_79:
  if (!__CocoaSet.count.getter())
  {
    goto LABEL_80;
  }

LABEL_42:
  if ((v14 & 0xC000000000000001) != 0)
  {
    v29 = MEMORY[0x223DDFF80](0, v14);
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
LABEL_88:
      swift_once();
LABEL_54:
      v42 = type metadata accessor for Logger();
      __swift_project_value_buffer(v42, static Logger.pommes);
      v43 = v2;
      v39 = Logger.logObject.getter();
      v44 = static os_log_type_t.error.getter();

      if (os_log_type_enabled(v39, v44))
      {
        v45 = swift_slowAlloc();
        v46 = swift_slowAlloc();
        v106[0] = v46;
        *v45 = 136315138;
        v105[0] = v2;
        v47 = v2;
        __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
        v48 = String.init<A>(describing:)();
        v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v49, v106);

        *(v45 + 4) = v50;
        _os_log_impl(&dword_2232BB000, v39, v44, "ConversionUtils.convertUserDialogActToTasks error: %s", v45, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v46);
        MEMORY[0x223DE0F80](v46, -1, -1);
        MEMORY[0x223DE0F80](v45, -1, -1);

LABEL_84:
        return 1;
      }

      return 1;
    }

    v29 = *(v14 + 32);
  }

  v30 = specialized NonSiriKitMediaAppLaunchPreflightClient.extractBundleId(task:)(v29);
  if (!v31)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v51 = type metadata accessor for Logger();
    __swift_project_value_buffer(v51, static Logger.pommes);

    v39 = Logger.logObject.getter();
    v52 = static os_log_type_t.default.getter();

    if (!os_log_type_enabled(v39, v52))
    {
      goto LABEL_61;
    }

    v41 = swift_slowAlloc();
    v53 = swift_slowAlloc();
    v106[0] = v53;
    *v41 = 136315138;
    v105[0] = v29;
    type metadata accessor for UsoTask();

    v54 = String.init<A>(describing:)();
    v56 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v54, v55, v106);

    *(v41 + 4) = v56;
    _os_log_impl(&dword_2232BB000, v39, v52, "NonSiriKitMediaAppLaunchPreflightClient#ignore Received a nil bundle ID from UsoTask %s", v41, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v53);
    MEMORY[0x223DE0F80](v53, -1, -1);
    goto LABEL_60;
  }

  v32 = v30;
  v14 = v31;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v33 = type metadata accessor for Logger();
  __swift_project_value_buffer(v33, static Logger.pommes);

  v34 = Logger.logObject.getter();
  v35 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v106[0] = v37;
    *v36 = 136315138;
    *(v36 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v14, v106);
    _os_log_impl(&dword_2232BB000, v34, v35, "Extracted bundle ID: %s", v36, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v37);
    MEMORY[0x223DE0F80](v37, -1, -1);
    MEMORY[0x223DE0F80](v36, -1, -1);
  }

  v38 = NonSiriKitMediaAppLaunchPreflightClient.isMediaIntent(bundleId:)(v32, v14);
  if (v38 == 2)
  {

    v39 = Logger.logObject.getter();
    v40 = static os_log_type_t.default.getter();
    if (!os_log_type_enabled(v39, v40))
    {
LABEL_61:

      goto LABEL_84;
    }

    v41 = swift_slowAlloc();
    *v41 = 0;
    _os_log_impl(&dword_2232BB000, v39, v40, "NonSiriKitMediaAppLaunchPreflightClient#ignore cannot look up app info, passing to Pegasus", v41, 2u);
LABEL_60:
    MEMORY[0x223DE0F80](v41, -1, -1);
    goto LABEL_61;
  }

  if (v38)
  {

    v23 = Logger.logObject.getter();
    v57 = static os_log_type_t.default.getter();

    if (os_log_type_enabled(v23, v57))
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v106[0] = v59;
      *v58 = 136315138;
      v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v32, v14, v106);

      *(v58 + 4) = v60;
      v61 = "NonSiriKitMediaAppLaunchPreflightClient#ignore found media app %s, passing to Pegasus";
LABEL_73:
      _os_log_impl(&dword_2232BB000, v23, v57, v61, v58, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v59);
      MEMORY[0x223DE0F80](v59, -1, -1);
      MEMORY[0x223DE0F80](v58, -1, -1);
LABEL_75:

      return 1;
    }

    goto LABEL_74;
  }

  v102 = v32;
  v62 = v88;
  v63 = (v88 + *(v84 + 32));
  v64 = *v63;
  v101 = v63[1];
  v65 = v85;
  PommesSearchRequest.pommesCandidateId.getter(v85);
  v66 = type metadata accessor for PommesCandidateId();
  (*(*(v66 - 8) + 56))(v65, 0, 1, v66);
  v67 = v86;
  default argument 5 of static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)(v86);
  v68 = static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)(v62, MEMORY[0x277D84F90], MEMORY[0x277D84F90], v64, v101, v65, v67, 0x6867696C66657270, 0xE900000000000074, 0xD000000000000027, 0x80000002234D8590);
  (*(v87 + 8))(v67, v90);
  outlined destroy of MediaUserStateCenter?(v65, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);

  v23 = Logger.logObject.getter();
  if (!v68)
  {
LABEL_71:
    v57 = static os_log_type_t.error.getter();

    v76 = os_log_type_enabled(v23, v57);
    v77 = v102;
    if (v76)
    {
      v58 = swift_slowAlloc();
      v59 = swift_slowAlloc();
      v106[0] = v59;
      *v58 = 136315138;
      v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v77, v14, v106);

      *(v58 + 4) = v78;
      v61 = "NonSiriKitMediaAppLaunchPreflightClient#ignore could not build PommesResponse with given parameters: %s";
      goto LABEL_73;
    }

LABEL_74:

    goto LABEL_75;
  }

  v69 = v68;
  v70 = static os_log_type_t.default.getter();

  v71 = os_log_type_enabled(v23, v70);
  v72 = v102;
  if (v71)
  {
    v73 = swift_slowAlloc();
    v74 = swift_slowAlloc();
    v106[0] = v74;
    *v73 = 136315138;
    v75 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v72, v14, v106);

    *(v73 + 4) = v75;
    _os_log_impl(&dword_2232BB000, v23, v70, "NonSiriKitMediaAppLaunchPreflightClient#handle Non-ambiguous non-media app launch task: %s", v73, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v74);
    MEMORY[0x223DE0F80](v74, -1, -1);
    MEMORY[0x223DE0F80](v73, -1, -1);
  }

  else
  {
  }

  return v69;
}

uint64_t NonSiriKitMediaAppLaunchPreflightClient.isMediaIntent(bundleId:)(uint64_t a1, unint64_t a2)
{
  v5 = v2[5];
  v6 = v2[6];
  __swift_project_boxed_opaque_existential_1(v2 + 2, v5);
  (*(v6 + 16))(v52, a1, a2, 0, v5, v6);
  if (v53)
  {
    v49 = v53;
    v7 = v52[1];
    v48 = v52[0];
    v8 = v54;
    v9 = v55;
    if (one-time initialization token for pommes != -1)
    {
LABEL_41:
      swift_once();
    }

    v10 = type metadata accessor for Logger();
    __swift_project_value_buffer(v10, static Logger.pommes);
    v56 = v8;
    v57[0] = v9;

    v8 = v49;

    outlined init with copy of MediaUserStateCenter?(&v56, v51, &_sShySSGMd, &_sShySSGMR);
    outlined init with copy of MediaUserStateCenter?(v57, v51, &_sSaySo16LNActionMetadataCGMd, &_sSaySo16LNActionMetadataCGMR);
    v11 = Logger.logObject.getter();
    v12 = static os_log_type_t.default.getter();

    outlined destroy of MediaUserStateCenter?(&v56, &_sShySSGMd, &_sShySSGMR);
    outlined destroy of MediaUserStateCenter?(v57, &_sSaySo16LNActionMetadataCGMd, &_sSaySo16LNActionMetadataCGMR);
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v51[0] = v14;
      *v13 = 136315138;
      if (v7)
      {
        v15 = v48;
      }

      else
      {
        v15 = 7104878;
      }

      if (v7)
      {
        v16 = v7;
      }

      else
      {
        v16 = 0xE300000000000000;
      }

      v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v15, v16, v51);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_2232BB000, v11, v12, "App ID: %s", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v14);
      MEMORY[0x223DE0F80](v14, -1, -1);
      MEMORY[0x223DE0F80](v13, -1, -1);
    }

    outlined init with copy of MediaUserStateCenter?(&v56, v51, &_sShySSGMd, &_sShySSGMR);
    outlined init with copy of MediaUserStateCenter?(v57, v51, &_sSaySo16LNActionMetadataCGMd, &_sSaySo16LNActionMetadataCGMR);
    v18 = Logger.logObject.getter();
    v19 = static os_log_type_t.default.getter();

    outlined destroy of MediaUserStateCenter?(&v56, &_sShySSGMd, &_sShySSGMR);
    outlined destroy of MediaUserStateCenter?(v57, &_sSaySo16LNActionMetadataCGMd, &_sSaySo16LNActionMetadataCGMR);
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v51[0] = v21;
      *v20 = 136315138;

      v22 = Set.description.getter();
      v24 = v23;

      v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v24, v51);

      *(v20 + 4) = v25;
      _os_log_impl(&dword_2232BB000, v18, v19, "Supported intents: %s", v20, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v21);
      MEMORY[0x223DE0F80](v21, -1, -1);
      MEMORY[0x223DE0F80](v20, -1, -1);
    }

    v26 = 1 << *(v49 + 32);
    v9 = -1;
    if (v26 < 64)
    {
      v27 = ~(-1 << v26);
    }

    else
    {
      v27 = -1;
    }

    v28 = v27 & *(v49 + 56);
    v29 = (v26 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v30 = 0;
    while (1)
    {
      do
      {
        if (!v28)
        {
          while (1)
          {
            v32 = v30 + 1;
            if (__OFADD__(v30, 1))
            {
              break;
            }

            if (v32 >= v29)
            {

              outlined destroy of MediaUserStateCenter?(&v56, &_sShySSGMd, &_sShySSGMR);
              outlined destroy of MediaUserStateCenter?(v57, &_sSaySo16LNActionMetadataCGMd, &_sSaySo16LNActionMetadataCGMR);

              return 0;
            }

            v31 = *(v49 + 56 + 8 * v32);
            ++v30;
            if (v31)
            {
              v30 = v32;
              goto LABEL_23;
            }
          }

          __break(1u);
          goto LABEL_41;
        }

        v31 = v28;
LABEL_23:
        v28 = (v31 - 1) & v31;
        v7 = *(v50 + 56);
      }

      while (!*(v7 + 16));
      v33 = (*(v8 + 48) + ((v30 << 10) | (16 * __clz(__rbit64(v31)))));
      v35 = *v33;
      v34 = v33[1];
      Hasher.init(_seed:)();

      String.hash(into:)();
      v36 = Hasher._finalize()();
      v37 = -1 << *(v7 + 32);
      v38 = v36 & ~v37;
      if ((*(v7 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38))
      {
        break;
      }

LABEL_32:

      v8 = v49;
      v9 = -1;
    }

    v39 = ~v37;
    while (1)
    {
      v40 = (*(v7 + 48) + 16 * v38);
      v41 = *v40 == v35 && v40[1] == v34;
      if (v41 || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
      {
        break;
      }

      v38 = (v38 + 1) & v39;
      if (((*(v7 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) == 0)
      {
        goto LABEL_32;
      }
    }

    outlined destroy of MediaUserStateCenter?(&v56, &_sShySSGMd, &_sShySSGMR);
    outlined destroy of MediaUserStateCenter?(v57, &_sSaySo16LNActionMetadataCGMd, &_sSaySo16LNActionMetadataCGMR);

    return 1;
  }

  else
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v42 = type metadata accessor for Logger();
    __swift_project_value_buffer(v42, static Logger.pommes);

    v43 = Logger.logObject.getter();
    v44 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      v46 = swift_slowAlloc();
      v51[0] = v46;
      *v45 = 136315138;
      *(v45 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v51);
      _os_log_impl(&dword_2232BB000, v43, v44, "Cannot look up the app %s on device, passing to Pegasus", v45, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v46);
      MEMORY[0x223DE0F80](v46, -1, -1);
      MEMORY[0x223DE0F80](v45, -1, -1);
    }

    return 2;
  }
}

uint64_t NonSiriKitMediaAppLaunchPreflightClient.deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return v0;
}

uint64_t NonSiriKitMediaAppLaunchPreflightClient.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1((v0 + 16));

  return swift_deallocClassInstance();
}

uint64_t specialized NonSiriKitMediaAppLaunchPreflightClient.extractBundleId(entity:)(uint64_t a1)
{
  v2 = type metadata accessor for UsoIdentifier();
  v81 = *(v2 - 8);
  v82 = v2;
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v69 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v3);
  v8 = &v69 - v7;
  MEMORY[0x28223BE20](v6);
  v10 = &v69 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology4KindVSgMd, &_s12SiriOntology4KindVSgMR);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v69 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v69 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology4EdgeV4edge_AA4NodeV4nodetMd, &_s12SiriOntology4EdgeV4edge_AA4NodeV4nodetMR);
  v75 = *(v17 - 8);
  v76 = v17;
  MEMORY[0x28223BE20](v17);
  v19 = &v69 - v18;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriOntology4EdgeV_AA4NodeVtMd, &_s12SiriOntology4EdgeV_AA4NodeVtMR);
  MEMORY[0x28223BE20](v77);
  v21 = &v69 - v20;
  v22 = type metadata accessor for Node();
  v80 = *(v22 - 8);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v69 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v79 = &v69 - v26;
  if (!a1)
  {
    if (one-time initialization token for pommes == -1)
    {
LABEL_14:
      v55 = type metadata accessor for Logger();
      __swift_project_value_buffer(v55, static Logger.pommes);
      v56 = Logger.logObject.getter();
      v57 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v56, v57))
      {
        v58 = swift_slowAlloc();
        *v58 = 0;
        _os_log_impl(&dword_2232BB000, v56, v57, "Received a nil UsoEntity when extracting bundle ID", v58, 2u);
        MEMORY[0x223DE0F80](v58, -1, -1);
      }

      return 0;
    }

LABEL_30:
    swift_once();
    goto LABEL_14;
  }

  v74 = v19;
  v69 = v8;
  v70 = v10;

  CodeGenBase.entity.getter();
  UsoEntity.usoValue.getter();
  v78 = v22;

  UsoValue.graphNode.getter();

  v27 = type metadata accessor for Kind();
  v28 = *(*(v27 - 8) + 56);
  v28(v16, 1, 1, v27);
  v28(v14, 1, 1, v27);
  v29 = Node.connectedNodes(nodeKind:edgeKind:)();
  outlined destroy of MediaUserStateCenter?(v14, &_s12SiriOntology4KindVSgMd, &_s12SiriOntology4KindVSgMR);
  v30 = v78;
  outlined destroy of MediaUserStateCenter?(v16, &_s12SiriOntology4KindVSgMd, &_s12SiriOntology4KindVSgMR);
  v31 = v80 + 8;
  v32 = *(v80 + 8);
  v32(v25, v30);
  if (!*(v29 + 16))
  {

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v65 = type metadata accessor for Logger();
    __swift_project_value_buffer(v65, static Logger.pommes);
    v66 = Logger.logObject.getter();
    v67 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = swift_slowAlloc();
      *v68 = 0;
      _os_log_impl(&dword_2232BB000, v66, v67, "Failed to retrieve the connected node, cannot lookup bundle ID", v68, 2u);
      MEMORY[0x223DE0F80](v68, -1, -1);
    }

    return 0;
  }

  v71 = v32;
  v72 = v31;
  v73 = a1;
  v33 = v74;
  outlined init with copy of MediaUserStateCenter?(v29 + ((*(v75 + 80) + 32) & ~*(v75 + 80)), v74, &_s12SiriOntology4EdgeV4edge_AA4NodeV4nodetMd, &_s12SiriOntology4EdgeV4edge_AA4NodeV4nodetMR);

  v34 = v77;
  v76 = *(v76 + 48);
  v35 = *(v77 + 48);
  v36 = type metadata accessor for Edge();
  v37 = *(v36 - 8);
  (*(v37 + 32))(v21, v33, v36);
  v38 = *(v80 + 32);
  v38(&v21[v35], v33 + v76, v30);
  v38(v79, &v21[*(v34 + 48)], v30);
  (*(v37 + 8))(v21, v36);
  v39 = Node.identifiers.getter();
  v40 = v39;
  v41 = *(v39 + 16);
  if (v41)
  {
    v42 = 0;
    v43 = v39 + ((*(v81 + 80) + 32) & ~*(v81 + 80));
    v44 = (v81 + 8);
    while (v42 < *(v40 + 16))
    {
      (*(v81 + 16))(v5, v43 + *(v81 + 72) * v42, v82);
      v46 = UsoIdentifier.namespace.getter();
      if (v47)
      {
        if (v46 == 0x64695F6D657469 && v47 == 0xE700000000000000)
        {

LABEL_12:

          v48 = v82;
          v50 = v81 + 32;
          v49 = *(v81 + 32);
          v51 = v69;
          v49(v69, v5, v82);
          v52 = v70;
          v49(v70, v51, v48);
          v53 = UsoIdentifier.value.getter();

          (*(v50 - 24))(v52, v48);
          v71(v79, v78);
          return v53;
        }

        v45 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if (v45)
        {
          goto LABEL_12;
        }
      }

      ++v42;
      (*v44)(v5, v82);
      if (v41 == v42)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
    goto LABEL_30;
  }

LABEL_17:

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v59 = type metadata accessor for Logger();
  __swift_project_value_buffer(v59, static Logger.pommes);
  v60 = Logger.logObject.getter();
  v61 = static os_log_type_t.debug.getter();
  v62 = os_log_type_enabled(v60, v61);
  v63 = v78;
  if (v62)
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&dword_2232BB000, v60, v61, "Cannot find a node that contains the app bundle ID", v64, 2u);
    MEMORY[0x223DE0F80](v64, -1, -1);
  }

  else
  {
  }

  v71(v79, v63);
  return 0;
}

uint64_t specialized NonSiriKitMediaAppLaunchPreflightClient.extractBundleId(task:)(uint64_t a1)
{
  static UsoTask_CodegenConverter.convert(task:)();
  outlined init with copy of MediaUserStateCenter?(v23, v21, &_sypSgMd, &_sypSgMR);
  if (v22)
  {
    outlined init with copy of MediaUserStateCenter?(v21, v20, &_sypSgMd, &_sypSgMR);
    type metadata accessor for UsoTask_open_common_App();
    if (swift_dynamicCast())
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v1 = type metadata accessor for Logger();
      __swift_project_value_buffer(v1, static Logger.pommes);
      v2 = Logger.logObject.getter();
      v3 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v2, v3))
      {
        v4 = swift_slowAlloc();
        *v4 = 0;
        _os_log_impl(&dword_2232BB000, v2, v3, "Converting UsoTask_open_common_App to UsoEntity_common_App", v4, 2u);
        MEMORY[0x223DE0F80](v4, -1, -1);
      }

      dispatch thunk of Uso_VerbTemplate_Reference.reference.getter();

      v5 = v19;
      goto LABEL_22;
    }

    type metadata accessor for UsoTask_start_uso_NoEntity();
    if (swift_dynamicCast())
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v6 = type metadata accessor for Logger();
      __swift_project_value_buffer(v6, static Logger.pommes);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v7, v8))
      {
        goto LABEL_19;
      }

      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "Converting UsoTask_start_uso_NoEntity to UsoEntity_common_App";
LABEL_18:
      _os_log_impl(&dword_2232BB000, v7, v8, v10, v9, 2u);
      MEMORY[0x223DE0F80](v9, -1, -1);
LABEL_19:

      dispatch thunk of Uso_VerbTemplate_ReferenceControl.reference.getter();

      if (v19)
      {
        v5 = dispatch thunk of CodeGenGlobalArgs.usoAssociatedApp.getter();
      }

      else
      {
        v5 = 0;
      }

LABEL_22:
      v12 = specialized NonSiriKitMediaAppLaunchPreflightClient.extractBundleId(entity:)(v5);

      outlined destroy of MediaUserStateCenter?(v23, &_sypSgMd, &_sypSgMR);
      __swift_destroy_boxed_opaque_existential_1(v20);
      goto LABEL_29;
    }

    type metadata accessor for UsoTask_play_uso_NoEntity();
    if (swift_dynamicCast())
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v11 = type metadata accessor for Logger();
      __swift_project_value_buffer(v11, static Logger.pommes);
      v7 = Logger.logObject.getter();
      v8 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v7, v8))
      {
        goto LABEL_19;
      }

      v9 = swift_slowAlloc();
      *v9 = 0;
      v10 = "Converting UsoTask_play_uso_NoEntity to UsoEntity_common_App";
      goto LABEL_18;
    }

    __swift_destroy_boxed_opaque_existential_1(v20);
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v13 = type metadata accessor for Logger();
  __swift_project_value_buffer(v13, static Logger.pommes);
  v14 = Logger.logObject.getter();
  v15 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v20[0] = v17;
    *v16 = 136315138;
    *(v16 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0x6C616E6F6974704FLL, 0xED00003E796E413CLL, v20);
    _os_log_impl(&dword_2232BB000, v14, v15, "Received an unsupported type of UsoTask %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x223DE0F80](v17, -1, -1);
    MEMORY[0x223DE0F80](v16, -1, -1);
  }

  outlined destroy of MediaUserStateCenter?(v23, &_sypSgMd, &_sypSgMR);
  v12 = 0;
LABEL_29:
  outlined destroy of MediaUserStateCenter?(v21, &_sypSgMd, &_sypSgMR);
  return v12;
}

uint64_t SourceMatchFeaturiser.__allocating_init(query:)(uint64_t a1)
{
  swift_allocObject();
  v2 = specialized SourceMatchFeaturiser.init(query:)(a1);

  return v2;
}

uint64_t SourceMatchFeaturiser.name.getter()
{
  type metadata accessor for SourceMatchFeaturiser(0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch21SourceMatchFeaturiserCmMd, &_s21SiriInformationSearch21SourceMatchFeaturiserCmMR);
  return String.init<A>(describing:)();
}

uint64_t SourceMatchFeaturiser.init(query:)(uint64_t a1)
{
  v1 = specialized SourceMatchFeaturiser.init(query:)(a1);

  return v1;
}

id SourceMatchFeaturiser.currentUser.getter()
{
  result = [objc_opt_self() currentPersona];
  if (result)
  {
    v1 = result;
    v2 = [result userPersonaUniqueString];

    if (v2)
    {
      v3 = static String._unconditionallyBridgeFromObjectiveC(_:)();

      return v3;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id SourceMatchFeaturiser.isPrimaryUser.getter()
{
  v0 = [objc_opt_self() currentPersona];
  if (!v0)
  {
    return 0;
  }

  v1 = v0;
  v2 = [v0 isDefaultPersona];

  return v2;
}

void SourceMatchFeaturiser.featurise(candidate:rankedSlotIndex:)(void *a1)
{
  v2 = v1;
  v4 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioNoun();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = OBJC_IVAR____TtC21SiriInformationSearch21SourceMatchFeaturiser_noun;
  v9 = *MEMORY[0x277D39108];
  v10 = *(v5 + 104);
  v10(v7, v9, v4);
  lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioNoun and conformance Apple_Parsec_Siri_V2alpha_AudioNoun(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioNoun and conformance Apple_Parsec_Siri_V2alpha_AudioNoun, MEMORY[0x277D39128]);
  v27[1] = v8;
  dispatch thunk of RawRepresentable.rawValue.getter();
  dispatch thunk of RawRepresentable.rawValue.getter();
  v11 = *(v5 + 8);
  v11(v7, v4);
  if (v31 == v30)
  {
    if (*(*a1 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_source))
    {
      v29 = 1;
    }

    else
    {
      v29 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v29 = 0;
  }

  v12 = *a1;
  v28 = OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_source;
  if (*(v12 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_source))
  {
    v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v13 & 1) == 0)
    {
      goto LABEL_13;
    }
  }

  else
  {
  }

  if (*(v2 + OBJC_IVAR____TtC21SiriInformationSearch21SourceMatchFeaturiser_isRequestingAppleMusic) == 1)
  {
    v10(v7, v9, v4);
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioNoun and conformance Apple_Parsec_Siri_V2alpha_AudioNoun(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioNoun and conformance Apple_Parsec_Siri_V2alpha_AudioNoun, MEMORY[0x277D39120]);
    v15 = dispatch thunk of static Equatable.== infix(_:_:)();
    v14 = (v11)(v7, v4);
    v16 = v15 ^ 1;
    goto LABEL_14;
  }

LABEL_13:
  v16 = 0;
LABEL_14:
  v17 = MEMORY[0x277D85000];
  v18 = (*((*MEMORY[0x277D85000] & *v12) + 0xD0))(v14);
  if (!v19)
  {
    if ((v29 | v16))
    {
      goto LABEL_31;
    }

    goto LABEL_25;
  }

  v20 = v19;
  if ((v29 & 1) == 0)
  {

    if ((v16 & 1) == 0)
    {
      goto LABEL_25;
    }

LABEL_31:
    v24 = 1065520988;
    goto LABEL_32;
  }

  if (v18 == (*(*v2 + 112))() && v20 == v21)
  {

    goto LABEL_31;
  }

  v23 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v23 | v16))
  {
    goto LABEL_31;
  }

LABEL_25:
  if (*(v12 + v28))
  {
    v24 = 1065437102;
LABEL_32:
    v25 = *&v24;
    goto LABEL_33;
  }

  if (_stringCompareWithSmolCheck(_:_:expecting:)())
  {
    v25 = 1.01;
  }

  else
  {
    v25 = 1.0;
  }

LABEL_33:
  v26 = (*((*v17 & *v12) + 0xB8))();
  (*((*v17 & *v26) + 0xA0))(v25);
}

uint64_t SourceMatchFeaturiser.deinit()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch21SourceMatchFeaturiser_noun;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioNoun();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t SourceMatchFeaturiser.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC21SiriInformationSearch21SourceMatchFeaturiser_noun;
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioNoun();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

uint64_t specialized SourceMatchFeaturiser.init(query:)(uint64_t a1)
{
  v2 = v1;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v4 = type metadata accessor for Logger();
  __swift_project_value_buffer(v4, static Logger.pommes);

  v5 = Logger.logObject.getter();
  v6 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v5, v6))
  {
    v7 = swift_slowAlloc();
    *v7 = 134218240;
    *(v7 + 4) = Apple_Parsec_Siri_V2alpha_AudioNoun.rawValue.getter();
    *(v7 + 12) = 1024;
    *(v7 + 14) = (*(*a1 + 168))() & 1;

    _os_log_impl(&dword_2232BB000, v5, v6, "SourceMatchFeaturiser : noun=%ld, isRequestingAppleMusic=%{BOOL}d", v7, 0x12u);
    MEMORY[0x223DE0F80](v7, -1, -1);
  }

  else
  {
  }

  v8 = OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_noun;
  v9 = OBJC_IVAR____TtC21SiriInformationSearch21SourceMatchFeaturiser_noun;
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioNoun();
  v11 = (*(*(v10 - 8) + 16))(v2 + v9, a1 + v8, v10);
  *(v2 + OBJC_IVAR____TtC21SiriInformationSearch21SourceMatchFeaturiser_isRequestingAppleMusic) = (*(*a1 + 168))(v11) & 1;
  return v2;
}

uint64_t type metadata accessor for SourceMatchFeaturiser(uint64_t a1)
{
  result = type metadata singleton initialization cache for SourceMatchFeaturiser;
  if (!type metadata singleton initialization cache for SourceMatchFeaturiser)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioNoun and conformance Apple_Parsec_Siri_V2alpha_AudioNoun(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioNoun();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t type metadata completion function for SourceMatchFeaturiser(uint64_t a1)
{
  result = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioNoun();
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

uint64_t AFPreferences.siriLanguageCode.getter()
{
  v1 = [v0 languageCode];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  static String._unconditionallyBridgeFromObjectiveC(_:)();

  lazy protocol witness table accessor for type String and conformance String();
  v3 = StringProtocol.replacingOccurrences<A, B>(of:with:options:range:)();

  return v3;
}

void *SageSearchRequestProcessor.__allocating_init(remoteClient:pommesSearchRequest:clientEntities:localDomainClients:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v24 = a3;
  v25 = a4;
  v23 = a2;
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v27 = *(v6 - 8);
  v28 = v6;
  MEMORY[0x28223BE20](v6);
  v26 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v8);
  v9 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v9 - 8);
  v10 = type metadata accessor for UUID();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = swift_allocObject();
  type metadata accessor for AnalyticsComponentIdGenerator();
  v15 = swift_allocObject();
  type metadata accessor for OnDeviceSearchInstrumentationUtil();
  v16 = swift_allocObject();
  *(v16 + 16) = 0;
  *(v16 + 24) = v15;
  v14[4] = v16;
  *(v14 + OBJC_IVAR____TtC21SiriInformationSearch26SageSearchRequestProcessor_attemptedProfileSliceLabels) = MEMORY[0x277D84FA0];
  v22[1] = a1;
  v14[2] = a1;
  outlined init with copy of PommesSearchRequest(a2, v14 + OBJC_IVAR____TtC21SiriInformationSearch26SageSearchRequestProcessor_pommesSearchRequest);
  *(v14 + OBJC_IVAR____TtC21SiriInformationSearch26SageSearchRequestProcessor_clientEntities) = v24;
  v14[3] = v25;
  v25 = type metadata accessor for OS_dispatch_queue();
  v29 = 0;
  v30 = 0xE000000000000000;

  _StringGuts.grow(_:)(40);

  v29 = 0xD000000000000026;
  v30 = 0x80000002234DEEB0;
  UUID.init()();
  v17 = UUID.uuidString.getter();
  v19 = v18;
  (*(v11 + 8))(v13, v10);
  MEMORY[0x223DDF6D0](v17, v19);

  static DispatchQoS.userInitiated.getter();
  v29 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_2(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v27 + 104))(v26, *MEMORY[0x277D85260], v28);
  v20 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();

  _s21SiriInformationSearch06PommesC7RequestVWOhTm_1(v23, type metadata accessor for PommesSearchRequest);
  *(v14 + OBJC_IVAR____TtC21SiriInformationSearch26SageSearchRequestProcessor_requestQueue) = v20;
  return v14;
}

uint64_t key path setter for SageSearchRequestProcessor.pommesSearchRequest : SageSearchRequestProcessor(uint64_t a1, uint64_t *a2)
{
  v4 = type metadata accessor for PommesSearchRequest(0);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  outlined init with copy of PommesSearchRequest(a1, v6);
  v7 = *a2;
  v8 = OBJC_IVAR____TtC21SiriInformationSearch26SageSearchRequestProcessor_pommesSearchRequest;
  swift_beginAccess();
  outlined assign with take of PommesSearchRequest(v6, v7 + v8);
  return swift_endAccess();
}

uint64_t SageSearchRequestProcessor.pommesSearchRequest.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC21SiriInformationSearch26SageSearchRequestProcessor_pommesSearchRequest;
  swift_beginAccess();
  return outlined init with copy of PommesSearchRequest(v1 + v3, a1);
}

uint64_t key path setter for SageSearchRequestProcessor.clientEntities : SageSearchRequestProcessor(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC21SiriInformationSearch26SageSearchRequestProcessor_clientEntities;
  swift_beginAccess();
  *(v3 + v4) = v2;
}

double SageSearchRequestProcessor.clientEntities.getter()
{
  swift_beginAccess();

  return result;
}

void *SageSearchRequestProcessor.init(remoteClient:pommesSearchRequest:clientEntities:localDomainClients:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v5 = v4;
  v24 = a3;
  v25 = a4;
  v26 = a2;
  v8 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v28 = *(v8 - 8);
  v29 = v8;
  MEMORY[0x28223BE20](v8);
  v27 = v23 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v10);
  v11 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v11 - 8);
  v12 = type metadata accessor for UUID();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v23 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for AnalyticsComponentIdGenerator();
  v16 = swift_allocObject();
  type metadata accessor for OnDeviceSearchInstrumentationUtil();
  v17 = swift_allocObject();
  *(v17 + 16) = 0;
  *(v17 + 24) = v16;
  v5[4] = v17;
  *(v5 + OBJC_IVAR____TtC21SiriInformationSearch26SageSearchRequestProcessor_attemptedProfileSliceLabels) = MEMORY[0x277D84FA0];
  v23[1] = a1;
  v5[2] = a1;
  outlined init with copy of PommesSearchRequest(a2, v5 + OBJC_IVAR____TtC21SiriInformationSearch26SageSearchRequestProcessor_pommesSearchRequest);
  *(v5 + OBJC_IVAR____TtC21SiriInformationSearch26SageSearchRequestProcessor_clientEntities) = v24;
  v5[3] = v25;
  v25 = type metadata accessor for OS_dispatch_queue();
  v30 = 0;
  v31 = 0xE000000000000000;

  _StringGuts.grow(_:)(40);

  v30 = 0xD000000000000026;
  v31 = 0x80000002234DEEB0;
  UUID.init()();
  v18 = UUID.uuidString.getter();
  v20 = v19;
  (*(v13 + 8))(v15, v12);
  MEMORY[0x223DDF6D0](v18, v20);

  static DispatchQoS.userInitiated.getter();
  v30 = MEMORY[0x277D84F90];
  _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_2(&lazy protocol witness table cache variable for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v28 + 104))(v27, *MEMORY[0x277D85260], v29);
  v21 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();

  _s21SiriInformationSearch06PommesC7RequestVWOhTm_1(v26, type metadata accessor for PommesSearchRequest);
  *(v5 + OBJC_IVAR____TtC21SiriInformationSearch26SageSearchRequestProcessor_requestQueue) = v21;
  return v5;
}

uint64_t SageSearchRequestProcessor.search()()
{
  v1[2] = v0;
  type metadata accessor for PommesSearchRequest(0);
  v1[3] = swift_task_alloc();
  type metadata accessor for PegasusSearchResponse(0);
  v1[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](SageSearchRequestProcessor.search(), 0, 0);
}

{
  v1 = v0[2];
  v2 = v1[2];
  v3 = (*(*v1 + 136))();
  v4 = (*(*v1 + 160))(v3);
  v0[5] = v4;
  v9 = (*(*v2 + 360) + **(*v2 + 360));
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = SageSearchRequestProcessor.search();
  v7 = v0[3];
  v6 = v0[4];

  return v9(v6, v7, v4);
}

{
  v2 = *v1;
  v2[7] = v0;

  if (v0)
  {
    _s21SiriInformationSearch06PommesC7RequestVWOhTm_1(v2[3], type metadata accessor for PommesSearchRequest);

    return MEMORY[0x2822009F8](SageSearchRequestProcessor.search(), 0, 0);
  }

  else
  {
    _s21SiriInformationSearch06PommesC7RequestVWOhTm_1(v2[3], type metadata accessor for PommesSearchRequest);

    v3 = swift_task_alloc();
    v2[8] = v3;
    *v3 = v2;
    v3[1] = SageSearchRequestProcessor.search();
    v4 = v2[4];

    return SageSearchRequestProcessor.handlePegasusResponse(_:)(v4);
  }
}

{
  _s21SiriInformationSearch06PommesC7RequestVWOhTm_1(v0[4], type metadata accessor for PegasusSearchResponse);

  v1 = v0[1];
  v2 = v0[10];

  return v1(v2);
}

{

  v1 = *(v0 + 8);

  return v1();
}

{
  _s21SiriInformationSearch06PommesC7RequestVWOhTm_1(*(v0 + 32), type metadata accessor for PegasusSearchResponse);

  v1 = *(v0 + 8);

  return v1();
}

uint64_t SageSearchRequestProcessor.search()(uint64_t a1)
{
  v4 = *v2;
  *(*v2 + 72) = v1;

  if (v1)
  {
    v5 = SageSearchRequestProcessor.search();
  }

  else
  {
    *(v4 + 80) = a1;
    v5 = SageSearchRequestProcessor.search();
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t SageSearchRequestProcessor.handlePegasusResponse(_:)(uint64_t a1)
{
  v2[22] = a1;
  v2[23] = v1;
  v3 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata();
  v2[24] = v3;
  v2[25] = *(v3 - 8);
  v2[26] = swift_task_alloc();
  v4 = type metadata accessor for Date();
  v2[27] = v4;
  v2[28] = *(v4 - 8);
  v2[29] = swift_task_alloc();
  v5 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceResolutionRequest();
  v2[30] = v5;
  v2[31] = *(v5 - 8);
  v2[32] = swift_task_alloc();
  v2[33] = swift_task_alloc();
  v6 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileSliceLabel();
  v2[34] = v6;
  v2[35] = *(v6 - 8);
  v2[36] = swift_task_alloc();
  v2[37] = swift_task_alloc();
  v2[38] = swift_task_alloc();
  v2[39] = swift_task_alloc();
  v2[40] = swift_task_alloc();
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ProfileResolutionRequest();
  v2[41] = v7;
  v2[42] = *(v7 - 8);
  v2[43] = swift_task_alloc();
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v2[44] = v8;
  v2[45] = *(v8 - 8);
  v2[46] = swift_task_alloc();
  v9 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse();
  v2[47] = v9;
  v2[48] = *(v9 - 8);
  v2[49] = swift_task_alloc();
  v2[50] = swift_task_alloc();
  v2[51] = swift_task_alloc();

  return MEMORY[0x2822009F8](SageSearchRequestProcessor.handlePegasusResponse(_:), 0, 0);
}

{
  v4 = *v2;
  *(*v2 + 432) = v1;

  if (v1)
  {
    v5 = SageSearchRequestProcessor.handlePegasusResponse(_:);
  }

  else
  {
    *(v4 + 440) = a1;
    v5 = SageSearchRequestProcessor.handlePegasusResponse(_:);
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

void SageSearchRequestProcessor.handlePegasusResponse(_:)()
{
  v194 = v0;
  v1 = *(v0 + 408);
  v2 = *(v0 + 376);
  v3 = *(v0 + 384);
  v4 = *(v0 + 176);
  v5 = type metadata accessor for PegasusSearchResponse(0);
  v6 = *(v3 + 16);
  v6(v1, v4 + *(v5 + 20), v2);
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0u;
  *(v0 + 64) = 0u;
  *(v0 + 80) = 0u;
  v180 = v0 + 16;
  outlined assign with take of SportsPersonalizationExperiencesResolver?(v0 + 56, v0 + 16);
  if (one-time initialization token for sage != -1)
  {
LABEL_49:
    swift_once();
  }

  v7 = *(v0 + 400);
  v8 = *(v0 + 408);
  v9 = *(v0 + 376);
  v179 = type metadata accessor for Logger();
  __swift_project_value_buffer(v179, static Logger.sage);
  v6(v7, v8, v9);
  v10 = Logger.logObject.getter();
  v11 = static os_log_type_t.debug.getter();
  v12 = os_log_type_enabled(v10, v11);
  v13 = *(v0 + 400);
  v14 = *(v0 + 376);
  v15 = *(v0 + 384);
  v190 = v0;
  v187 = v6;
  if (v12)
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v193[0] = v17;
    *v16 = 136315138;
    _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_2(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_SiriPegasusResponse and conformance Apple_Parsec_Siri_V2alpha_SiriPegasusResponse, MEMORY[0x277D38DA0], MEMORY[0x277D38D98]);
    v18 = Message.textFormatString()();
    v19 = *(v15 + 8);
    v19(v13, v14);
    v20 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v18._countAndFlagsBits, v18._object, v193);

    *(v16 + 4) = v20;
    _os_log_impl(&dword_2232BB000, v10, v11, "PireneResponse: %s", v16, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v17);
    MEMORY[0x223DE0F80](v17, -1, -1);
    MEMORY[0x223DE0F80](v16, -1, -1);
  }

  else
  {

    v19 = *(v15 + 8);
    v19(v13, v14);
  }

  v186 = v19;
  v190[26].i64[0] = v19;
  v22 = v190[22].i64[1];
  v21 = v190[23].i64[0];
  v24 = v190[21].i64[1];
  v23 = v190[22].i64[0];
  v25 = v190[20].i64[1];
  v26 = v190[21].i64[0];
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resolutionRequest.getter();
  v27 = (*(v22 + 8))(v21, v23);
  v28 = MEMORY[0x223DDBA80](v27);
  (*(v26 + 8))(v24, v25);
  if (Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.hasSiriInstruction.getter())
  {
    v29 = *(v28 + 16);
    if (v29)
    {
      v30 = v190;
      v0 = v190[17].i64[1];
      v31 = v190[15].i64[1];
      v193[0] = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v29, 0);
      v32 = v193[0];
      v34 = *(v31 + 16);
      v31 += 16;
      v33 = v34;
      v173 = v28;
      v35 = v28 + ((*(v31 + 64) + 32) & ~*(v31 + 64));
      v184 = (v31 - 8);
      v171 = v35;
      v172 = v29;
      v6 = v29;
      v185 = *(v31 + 56);
      do
      {
        v36 = v190[16].i64[1];
        v37 = v32;
        v38 = v190[15].i64[0];
        v39 = v33(v36, v35, v38);
        MEMORY[0x223DDBB90](v39);
        v40 = *v184;
        v41 = v38;
        v32 = v37;
        (*v184)(v36, v41);
        v193[0] = v37;
        v43 = *(v37 + 16);
        v42 = *(v37 + 24);
        v44 = v43 + 1;
        if (v43 >= v42 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v42 > 1), v43 + 1, 1);
          v32 = v193[0];
        }

        v45 = v190[19].i64[1];
        v46 = v190[17].i64[0];
        *(v32 + 16) = v44;
        v47 = *(v0 + 72);
        v48 = v32 + ((*(v0 + 80) + 32) & ~*(v0 + 80)) + v47 * v43;
        v49 = v32 + ((*(v0 + 80) + 32) & ~*(v0 + 80));
        (*(v0 + 32))(v48, v45, v46);
        v35 += v185;
        v6 = (v6 - 1);
      }

      while (v6);
      v176 = v44;
      v177 = v40;
      v67 = v190[17].i64[1];
      v174 = OBJC_IVAR____TtC21SiriInformationSearch26SageSearchRequestProcessor_attemptedProfileSliceLabels;
      v175 = v190[11].i64[1];
      swift_beginAccess();
      v68 = 0;
      v189 = (v67 + 16);
      v69 = (v67 + 8);
      v178 = v33;
      v70 = v47;
      while (v68 != v176)
      {
        if (v68 >= *(v32 + 16))
        {
          __break(1u);
          goto LABEL_49;
        }

        v183 = v32;
        v182 = v49;
        v188 = v70;
        v181 = v68;
        v6 = *v189;
        (*v189)(v30[40], v49 + v68 * v70, v30[34]);
        v74 = *(v175 + v174);
        if (*(v74 + 16))
        {
          _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_2(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceLabel and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceLabel, MEMORY[0x277D39740], MEMORY[0x277D39748]);

          v75 = dispatch thunk of Hashable._rawHashValue(seed:)();
          v76 = -1 << *(v74 + 32);
          v77 = v75 & ~v76;
          if ((*(v74 + 56 + ((v77 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v77))
          {
            v78 = ~v76;
            do
            {
              v79 = v190[18].i64[1];
              v80 = v190[17].i64[0];
              v6(v79, *(v74 + 48) + v77 * v188, v80);
              _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_2(&lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_ProfileSliceLabel and conformance Apple_Parsec_Siri_V2alpha_ProfileSliceLabel, MEMORY[0x277D39740], MEMORY[0x277D39750]);
              v81 = dispatch thunk of static Equatable.== infix(_:_:)();
              (*v69)(v79, v80);
              if (v81)
              {
                break;
              }

              v77 = (v77 + 1) & v78;
            }

            while (((*(v74 + 56 + ((v77 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v77) & 1) != 0);
          }

          else
          {
            v81 = 0;
          }

          v30 = v190;
        }

        else
        {
          v81 = 0;
        }

        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v82 = v30[40];
        v83 = v30[38];
        v84 = v30[34];
        __swift_project_value_buffer(v179, static Logger.pommes);
        v6(v83, v82, v84);
        v85 = Logger.logObject.getter();
        v86 = static os_log_type_t.debug.getter();
        v87 = os_log_type_enabled(v85, v86);
        v88 = v30[38];
        v89 = v30[34];
        v0 = v69 & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        if (v87)
        {
          v6 = swift_slowAlloc();
          *v6 = 134218240;
          v90 = Apple_Parsec_Siri_V2alpha_SiriKitAppInfo.AppContext.rawValue.getter();
          v71 = *v69;
          (*v69)(v88, v89);
          *(v6 + 4) = v90;
          v30 = v190;
          *(v6 + 6) = 1024;
          *(v6 + 14) = v81 & 1;
          _os_log_impl(&dword_2232BB000, v85, v86, "ProfileSliceLabel %ld previously attempted? %{BOOL}d", v6, 0x12u);
          MEMORY[0x223DE0F80](v6, -1, -1);
        }

        else
        {
          v71 = *v69;
          (*v69)(v30[38], v30[34]);
        }

        v68 = v181 + 1;
        v72 = v30[40];
        v73 = v30[34];

        v71(v72, v73);
        v32 = v183;
        v49 = v182;
        v70 = v188;
        if (v81)
        {

          v110 = Logger.logObject.getter();
          v111 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v110, v111))
          {
            v112 = swift_slowAlloc();
            *v112 = 0;
            _os_log_impl(&dword_2232BB000, v110, v111, "Already attempted profile slice resolution; yielding error response", v112, 2u);
            MEMORY[0x223DE0F80](v112, -1, -1);
          }

          lazy protocol witness table accessor for type PegasusError and conformance PegasusError();
          swift_allocError();
          *v113 = 6;
          goto LABEL_71;
        }
      }

      v91 = v171;
      v92 = v172;
      do
      {
        v94 = v30[36];
        v93 = v30[37];
        v191 = v30[34];
        v95 = v30[32];
        v96 = v30[30];
        v97 = v178(v95, v91, v96);
        MEMORY[0x223DDBB90](v97);
        swift_beginAccess();
        specialized Set._Variant.insert(_:)(v93, v94);
        (*v69)(v93, v191);
        swift_endAccess();
        v177(v95, v96);
        v91 += v185;
        --v92;
      }

      while (v92);
      v98 = v173;

      v99 = Logger.logObject.getter();
      v100 = static os_log_type_t.debug.getter();

      if (os_log_type_enabled(v99, v100))
      {
        v101 = v30[30];
        v102 = swift_slowAlloc();
        v103 = swift_slowAlloc();
        v193[0] = v103;
        *v102 = 136315138;
        v104 = MEMORY[0x223DDF850](v173, v101);
        v106 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v104, v105, v193);
        v98 = v173;

        *(v102 + 4) = v106;
        _os_log_impl(&dword_2232BB000, v99, v100, "Adding profile slice resolution requests: %s", v102, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v103);
        MEMORY[0x223DE0F80](v103, -1, -1);
        MEMORY[0x223DE0F80](v102, -1, -1);
      }

      v107 = v30[23];
      v108 = v107 + OBJC_IVAR____TtC21SiriInformationSearch26SageSearchRequestProcessor_pommesSearchRequest;
      swift_beginAccess();
      *(v108 + *(type metadata accessor for PommesSearchRequest(0) + 92)) = v98;

      v192 = (*(*v107 + 216) + **(*v107 + 216));
      v109 = swift_task_alloc();
      v30[53] = v109;
      *v109 = v30;
      v109[1] = SageSearchRequestProcessor.handlePegasusResponse(_:);

      v192();
      return;
    }
  }

  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v50 = v190[25].i64[1];
  v51 = v190[14].i64[0];
  v52 = v190[14].i64[1];
  v53 = v190[13].i64[1];
  v54 = static PerformanceUtil.shared;
  v55 = swift_task_alloc();
  *(v55 + 16) = v180;
  *(v55 + 24) = v50;
  Date.init()();
  v56 = *(*v54 + 200);
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay21SiriInformationSearch10ExperienceCGMd, &_sSay21SiriInformationSearch10ExperienceCGMR);
  v56(0xD00000000000002ALL, 0x80000002234DBF50, 0, v52, "SiriInformationSearch/SageSearchRequestProcessor.swift", 54, 2, 73, "handlePegasusResponse(_:)", 25, 2, partial apply for closure #4 in SageSearchRequestProcessor.handlePegasusResponse(_:), v55, v57);
  (*(v51 + 8))(v52, v53);

  v58 = v190[10].u64[1];
  if (v58 >> 62)
  {
    if (__CocoaSet.count.getter())
    {
LABEL_16:
      if ((v58 & 0xC000000000000001) == 0)
      {
        if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v59 = *(v58 + 32);
          v60 = dispatch thunk of Experience.pluginIdentifier.getter();
          v62 = v61;

          if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            v63 = *(v58 + 32);
LABEL_20:
            v64 = v63;
            dispatch thunk of Experience.queryConfidence.getter();
            v66 = v65;

            goto LABEL_52;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        return;
      }

      v169 = MEMORY[0x223DDFF80](0, v58);
      v60 = dispatch thunk of Experience.pluginIdentifier.getter();
      v62 = v170;

      v63 = MEMORY[0x223DDFF80](0, v58);
      goto LABEL_20;
    }
  }

  else if (*((v58 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_16;
  }

  v62 = 0xE700000000000000;
  v60 = 0x6E776F6E6B6E55;
  v66 = 0;
LABEL_52:

  v114 = Logger.logObject.getter();
  v115 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v114, v115))
  {
    v116 = swift_slowAlloc();
    v117 = swift_slowAlloc();
    v193[0] = v117;
    *v116 = 136315394;
    v118 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v60, v62, v193);

    *(v116 + 4) = v118;
    *(v116 + 12) = 2048;
    *(v116 + 14) = v66;
    _os_log_impl(&dword_2232BB000, v114, v115, "PommesResponse primaryPluginIdentifier %s     PommesResponse primaryQueryConfidence %f", v116, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v117);
    MEMORY[0x223DE0F80](v117, -1, -1);
    MEMORY[0x223DE0F80](v116, -1, -1);
  }

  else
  {
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v119 = v190;
  v120 = v190[25].i64[1];
  v121 = v190[24].i64[1];
  v122 = v190[23].i64[1];
  __swift_project_value_buffer(v179, static Logger.pommes);
  v187(v121, v120, v122);
  v123 = Logger.logObject.getter();
  v124 = static os_log_type_t.info.getter();
  v125 = os_log_type_enabled(v123, v124);
  v126 = v190[24].i64[1];
  v127 = v190[23].i64[1];
  if (v125)
  {
    v128 = swift_slowAlloc();
    *v128 = 67109120;
    v129 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.isLowConfidenceKnowledgeResult.getter() & 1;
    v186(v126, v127);
    *(v128 + 4) = v129;
    v119 = v190;
    _os_log_impl(&dword_2232BB000, v123, v124, "Low confidence knowledge fallback is supported, Pegasus returned value is: %{BOOL}d", v128, 8u);
    MEMORY[0x223DE0F80](v128, -1, -1);
  }

  else
  {
    v186(v190[24].i64[1], v190[23].i64[1]);
  }

  v130 = v119[25].i64[1];
  v131 = v119[12].i64[1];
  v132 = v119[13].i64[0];
  v133 = v119[12].i64[0];

  v119[28].i8[0] = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.isLowConfidenceKnowledgeResult.getter() & 1;
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.albusMultiturnRewrite.getter();

  (*(v131 + 8))(v132, v133);
  v134 = SageSearchRequestProcessor.clientSearch(pegasusResponse:)(v130);
  v135 = Logger.logObject.getter();
  v136 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v135, v136))
  {
    v137 = swift_slowAlloc();
    v138 = swift_slowAlloc();
    v193[0] = v138;
    *v137 = 136315138;
    v139 = type metadata accessor for PommesResult();
    v140 = MEMORY[0x223DDF870](v134, v139);
    v142 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v140, v141, v193);

    *(v137 + 4) = v142;
    _os_log_impl(&dword_2232BB000, v135, v136, "PommesSearchRequestProcessor#handleSuccess clientResults: %s", v137, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v138);
    MEMORY[0x223DE0F80](v138, -1, -1);
    MEMORY[0x223DE0F80](v137, -1, -1);
  }

  v30 = v190;
  v143 = v190[25].i64[1];
  type metadata accessor for PommesResponse();
  v144 = swift_task_alloc();
  v145 = v190[11];
  *(v144 + 16) = v58;
  *(v144 + 24) = v134;
  *(v144 + 32) = v143;
  *(v144 + 40) = vextq_s8(v145, v145, 8uLL);
  *(v144 + 56) = v180 + 432;
  v146 = PommesResponse.__allocating_init(_:)();

  if (v146)
  {
    v147 = v146;
    v148 = Logger.logObject.getter();
    v149 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v148, v149))
    {
      v150 = swift_slowAlloc();
      v151 = swift_slowAlloc();
      v193[0] = v151;
      *v150 = 136315138;
      v152 = [v147 debugDescription];
      v153 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v155 = v154;

      v156 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v153, v155, v193);

      *(v150 + 4) = v156;
      _os_log_impl(&dword_2232BB000, v148, v149, "PommesSearchRequestProcessor#handleSuccess response: %s", v150, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v151);
      MEMORY[0x223DE0F80](v151, -1, -1);
      MEMORY[0x223DE0F80](v150, -1, -1);
    }

    v157 = v190[25].i64[1];
    v158 = v190[26].i64[0];
    v159 = v190[23].i64[1];
    outlined destroy of DefaultExperiencesResolver(v180);
    v158(v157, v159);

    v160 = v190->i64[1];

    v160(v147);
  }

  else
  {
    v161 = Logger.logObject.getter();
    v162 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v161, v162))
    {
      v163 = swift_slowAlloc();
      *v163 = 0;
      _os_log_impl(&dword_2232BB000, v161, v162, "PommesSearchRequestProcessor failed to build PommesResponse with given parameters", v163, 2u);
      MEMORY[0x223DE0F80](v163, -1, -1);
    }

    lazy protocol witness table accessor for type SearchToolSearchRequestProcessorError and conformance SearchToolSearchRequestProcessorError();
    swift_allocError();
    *v164 = 0;
    *(v164 + 8) = 0xD000000000000051;
    *(v164 + 16) = 0x80000002234E1FA0;
LABEL_71:
    swift_willThrow();
    v165 = v30[51];
    v166 = v30[52];
    v167 = v30[47];
    outlined destroy of DefaultExperiencesResolver(v180);
    v166(v165, v167);

    v168 = v30[1];

    v168();
  }
}

uint64_t SageSearchRequestProcessor.handlePegasusResponse(_:)()
{
  v6 = v0[55];
  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[47];
  outlined destroy of DefaultExperiencesResolver((v0 + 2));
  v1(v2, v3);

  v4 = v0[1];

  return v4(v6);
}

{
  v2 = v0[51];
  v1 = v0[52];
  v3 = v0[47];
  outlined destroy of DefaultExperiencesResolver((v0 + 2));
  v1(v2, v3);

  v4 = v0[1];

  return v4();
}

uint64_t closure #4 in SageSearchRequestProcessor.handlePegasusResponse(_:)@<X0>(int *a1@<X1>, unint64_t *a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v10 - v5);
  v7 = type metadata accessor for ClientExperienceSignals();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  v8 = DefaultExperiencesResolver.buildExperiences(from:with:)(a1, v6);
  result = outlined destroy of MediaUserStateCenter?(v6, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMd, &_s21SiriInformationSearch23ClientExperienceSignalsVSgMR);
  *a2 = v8;
  return result;
}

uint64_t closure #5 in SageSearchRequestProcessor.handlePegasusResponse(_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, unsigned __int8 *a7)
{
  v106 = a6;
  v107 = a7;
  v115 = a5;
  v116 = a4;
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext();
  v104 = *(Context - 8);
  MEMORY[0x28223BE20](Context);
  v103 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v102 = type metadata accessor for PommesSearchReason();
  v101 = *(v102 - 8);
  MEMORY[0x28223BE20](v102);
  v100 = &v98 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  MEMORY[0x28223BE20](v11 - 8);
  v110 = (&v98 - v12);
  v112 = type metadata accessor for PommesSearchRequest(0);
  MEMORY[0x28223BE20](v112);
  v111 = &v98 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PegasusClientEventLog();
  v15 = *(v14 - 8);
  v124 = v14;
  v125 = v15;
  MEMORY[0x28223BE20](v14);
  v123 = &v98 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x28223BE20](v17);
  v108 = &v98 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = MEMORY[0x28223BE20](v19);
  v109 = &v98 - v22;
  MEMORY[0x28223BE20](v21);
  v24 = &v98 - v23;

  PommesResponse.Builder.experiences.setter();

  PommesResponse.Builder.clientResults.setter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.conversationContextBytes.getter();
  PommesResponse.Builder.conversationContext.setter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.domainName.getter();
  v25 = *(v18 + 8);
  v113 = v24;
  v118 = v18 + 8;
  v119 = v17;
  v117 = v25;
  v25(v24, v17);
  PommesResponse.Builder.metadataDomainName.setter();
  if (a2 >> 62)
  {
    goto LABEL_79;
  }

  for (i = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = __CocoaSet.count.getter())
  {
    v114 = a1;
    v122 = a2;
    if (i)
    {
      v27 = 0;
      v28 = a2 & 0xC000000000000001;
      v29 = a2 & 0xFFFFFFFFFFFFFF8;
      v30 = MEMORY[0x277D84F90];
      do
      {
        if (v28)
        {
          v31 = MEMORY[0x223DDFF80](v27, a2);
        }

        else
        {
          if (v27 >= *(v29 + 16))
          {
            goto LABEL_66;
          }

          v31 = *(a2 + 8 * v27 + 32);
        }

        v32 = v31;
        v33 = v27 + 1;
        if (__OFADD__(v27, 1))
        {
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          __break(1u);
LABEL_68:
          __break(1u);
          goto LABEL_69;
        }

        v34 = dispatch thunk of Experience.renderedTexts.getter();

        v35 = *(v34 + 16);
        a2 = *(v30 + 2);
        a1 = a2 + v35;
        if (__OFADD__(a2, v35))
        {
          goto LABEL_67;
        }

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        if (!isUniquelyReferenced_nonNull_native || a1 > *(v30 + 3) >> 1)
        {
          if (a2 <= a1)
          {
            v37 = a2 + v35;
          }

          else
          {
            v37 = a2;
          }

          v30 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v37, 1, v30);
        }

        a2 = v122;
        if (*(v34 + 16))
        {
          if ((*(v30 + 3) >> 1) - *(v30 + 2) < v35)
          {
            goto LABEL_75;
          }

          swift_arrayInitWithCopy();

          if (v35)
          {
            v38 = *(v30 + 2);
            v39 = __OFADD__(v38, v35);
            v40 = v38 + v35;
            if (v39)
            {
              goto LABEL_77;
            }

            *(v30 + 2) = v40;
          }
        }

        else
        {

          if (v35)
          {
            goto LABEL_68;
          }
        }

        ++v27;
      }

      while (v33 != i);
      PommesResponse.Builder.renderedTexts.setter();
      v41 = 0;
      v42 = MEMORY[0x277D84F90];
      while (1)
      {
        if (v28)
        {
          v43 = MEMORY[0x223DDFF80](v41, a2);
        }

        else
        {
          if (v41 >= *(v29 + 16))
          {
            goto LABEL_72;
          }

          v43 = *(a2 + 8 * v41 + 32);
        }

        v44 = v43;
        v45 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          goto LABEL_71;
        }

        v46 = dispatch thunk of Experience.redactedRenderedTexts.getter();

        v47 = *(v46 + 16);
        a2 = *(v42 + 2);
        a1 = a2 + v47;
        if (__OFADD__(a2, v47))
        {
          goto LABEL_73;
        }

        v48 = swift_isUniquelyReferenced_nonNull_native();
        if (!v48 || a1 > *(v42 + 3) >> 1)
        {
          if (a2 <= a1)
          {
            v49 = a2 + v47;
          }

          else
          {
            v49 = a2;
          }

          v42 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(v48, v49, 1, v42);
        }

        a2 = v122;
        if (*(v46 + 16))
        {
          if ((*(v42 + 3) >> 1) - *(v42 + 2) < v47)
          {
            goto LABEL_76;
          }

          swift_arrayInitWithCopy();

          if (v47)
          {
            v50 = *(v42 + 2);
            v39 = __OFADD__(v50, v47);
            v51 = v50 + v47;
            if (v39)
            {
              goto LABEL_78;
            }

            *(v42 + 2) = v51;
          }
        }

        else
        {

          if (v47)
          {
            goto LABEL_74;
          }
        }

        ++v41;
        if (v45 == i)
        {
          goto LABEL_45;
        }
      }
    }

    PommesResponse.Builder.renderedTexts.setter();
LABEL_45:
    PommesResponse.Builder.redactedRenderedTexts.setter();
    v52 = v113;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
    v53 = v123;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.pegasusClientEventLog.getter();
    v117(v52, v119);
    Apple_Parsec_Siri_V2alpha_PegasusClientEventLog.pegasusDomainFlowStepLog.getter();
    v54 = v124;
    v56 = v125 + 8;
    v55 = *(v125 + 8);
    v55(v53, v124);
    PommesResponse.Builder.pegasusDomainFlowStepLog.setter();
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.pegasusClientEventLog.getter();
    v117(v52, v119);
    Apple_Parsec_Siri_V2alpha_PegasusClientEventLog.pegasusDomainUserSensitiveTier1Log.getter();
    v120 = v55;
    v121 = v56;
    v55(v53, v54);
    result = PommesResponse.Builder.pegasusDomainUserSensitiveTier1Log.setter();
    if (i)
    {
      break;
    }

LABEL_50:
    v60 = MEMORY[0x277D84F90];
    v61 = PommesResponse.Builder.listenAfterSpeaking.setter();
    v62 = *(*v115 + 136);
    v63 = *v115 + 136;
    v64 = v111;
    v62(v61);

    _s21SiriInformationSearch06PommesC7RequestVWOhTm_1(v64, type metadata accessor for PommesSearchRequest);
    v65 = PommesResponse.Builder.requestId.setter();
    v99 = v62;
    v98 = v63;
    v62(v65);
    v66 = v110;
    PommesSearchRequest.pommesCandidateId.getter(v110);
    _s21SiriInformationSearch06PommesC7RequestVWOhTm_1(v64, type metadata accessor for PommesSearchRequest);
    v67 = type metadata accessor for PommesCandidateId();
    (*(*(v67 - 8) + 56))(v66, 0, 1, v67);
    PommesResponse.Builder.pommesCandidateId.setter();
    PommesResponse.Builder.isHandledByPreflight.setter();
    PommesResponse.Builder.preflightClientHandlerIdentifier.setter();
    v68 = v109;
    a1 = v116;
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
    v69 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.pegasusClientEventLogs.getter();
    v117(v68, v119);
    v70 = *(v69 + 16);
    if (v70)
    {
      v126 = v60;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v70, 0);
      v71 = 0;
      v72 = v126;
      v122 = v69 + ((*(v125 + 80) + 32) & ~*(v125 + 80));
      a2 = v125 + 16;
      while (v71 < *(v69 + 16))
      {
        v73 = v124;
        v74 = v123;
        (*(v125 + 16))(v123, v122 + *(v125 + 72) * v71, v124);
        v75 = Apple_Parsec_Siri_V2alpha_PegasusClientEventLog.pegasusDomainFlowStepLog.getter();
        v77 = v76;
        v120(v74, v73);
        v126 = v72;
        a1 = *(v72 + 16);
        v78 = *(v72 + 24);
        if (a1 >= v78 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v78 > 1), a1 + 1, 1);
          v72 = v126;
        }

        ++v71;
        *(v72 + 16) = a1 + 1;
        v79 = v72 + 16 * a1;
        *(v79 + 32) = v75;
        *(v79 + 40) = v77;
        if (v70 == v71)
        {

          a1 = v116;
          v60 = MEMORY[0x277D84F90];
          goto LABEL_58;
        }
      }

LABEL_69:
      __break(1u);
    }

    else
    {

LABEL_58:
      PommesResponse.Builder.taskStepLogs.setter();
      v80 = v108;
      Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
      v81 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.pegasusClientEventLogs.getter();
      v117(v80, v119);
      v82 = *(v81 + 16);
      if (!v82)
      {
LABEL_64:

        PommesResponse.Builder.userSensitiveTier1Logs.setter();
        PommesResponse.Builder.componentsWarmedUp.setter();
        (*(v101 + 104))(v100, *MEMORY[0x277D56670], v102);
        v92 = PommesResponse.Builder.searchReason.setter();
        v93 = v111;
        v94 = v99;
        v99(v92);

        _s21SiriInformationSearch06PommesC7RequestVWOhTm_1(v93, type metadata accessor for PommesSearchRequest);
        PommesResponse.Builder.searchRequestUtterance.setter();
        v95 = v103;
        Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queryContext.getter();
        Apple_Parsec_Search_PegasusQueryContext.countryCode.getter();
        (*(v104 + 8))(v95, Context);
        PommesResponse.Builder.requestCountryCode.setter();
        closure #3 in closure #5 in SageSearchRequestProcessor.handlePegasusResponse(_:)();
        PommesResponse.Builder.requestLocation.setter();
        v96 = PommesResponse.Builder.isCachedResponse.setter();
        v94(v96);

        _s21SiriInformationSearch06PommesC7RequestVWOhTm_1(v93, type metadata accessor for PommesSearchRequest);
        PommesResponse.Builder.sharedUserId.setter();
        PommesResponse.Builder.isLowConfidenceKnowledgeResult.setter();
        v97 = v113;
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
        Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.albusMultiturnRewrite.getter();
        v117(v97, v119);
        return PommesResponse.Builder.albusMultiturnRewrite.setter();
      }

      v126 = v60;
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v82, 0);
      v83 = 0;
      v84 = v126;
      v122 = v81 + ((*(v125 + 80) + 32) & ~*(v125 + 80));
      a2 = v125 + 16;
      while (v83 < *(v81 + 16))
      {
        v85 = v124;
        v86 = v123;
        (*(v125 + 16))(v123, v122 + *(v125 + 72) * v83, v124);
        v87 = Apple_Parsec_Siri_V2alpha_PegasusClientEventLog.pegasusDomainUserSensitiveTier1Log.getter();
        v89 = v88;
        v120(v86, v85);
        v126 = v84;
        a1 = *(v84 + 16);
        v90 = *(v84 + 24);
        if (a1 >= v90 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v90 > 1), a1 + 1, 1);
          v84 = v126;
        }

        ++v83;
        *(v84 + 16) = a1 + 1;
        v91 = v84 + 16 * a1;
        *(v91 + 32) = v87;
        *(v91 + 40) = v89;
        if (v82 == v83)
        {
          goto LABEL_64;
        }
      }
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
LABEL_73:
    __break(1u);
LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    __break(1u);
LABEL_79:
    ;
  }

  if ((v122 & 0xC000000000000001) != 0)
  {
    v58 = MEMORY[0x223DDFF80](0);
    goto LABEL_49;
  }

  if (*((v122 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v58 = *(v122 + 32);
LABEL_49:
    v59 = v58;
    dispatch thunk of Experience.listenAfterSpeaking.getter();

    goto LABEL_50;
  }

  __break(1u);
  return result;
}

id closure #3 in closure #5 in SageSearchRequestProcessor.handlePegasusResponse(_:)()
{
  v0 = type metadata accessor for Apple_Parsec_Search_V2_Location();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v15 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  Context = type metadata accessor for Apple_Parsec_Search_PegasusQueryContext();
  v5 = *(Context - 8);
  MEMORY[0x28223BE20](Context);
  v7 = &v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queryContext.getter();
  v8 = Apple_Parsec_Search_PegasusQueryContext.hasLocation.getter();
  v9 = *(v5 + 8);
  v9(v7, Context);
  result = 0;
  if (v8)
  {
    Apple_Parsec_Siri_V2alpha_SiriPegasusRequest.queryContext.getter();
    Apple_Parsec_Search_PegasusQueryContext.location.getter();
    v11 = (v9)(v7, Context);
    v12 = MEMORY[0x223DDA150](v11);
    Apple_Parsec_Search_V2_Location.longitude.getter();
    v14 = [objc_allocWithZone(MEMORY[0x277CE41F8]) initWithLatitude:v12 longitude:v13];
    (*(v1 + 8))(v3, v0);
    return v14;
  }

  return result;
}

uint64_t SageSearchRequestProcessor.clientSearch(pegasusResponse:)(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v50 = (&v47 - v3);
  v48 = type metadata accessor for PommesSearchRequest(0);
  v4 = MEMORY[0x28223BE20](v48);
  v49 = &v47 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v7 = &v47 - v6;
  v8 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v47 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SignpostToken(0);
  MEMORY[0x28223BE20](v12 - 8);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v15 = type metadata accessor for OSSignposter();
  __swift_project_value_buffer(v15, static Signposter.pommes);
  OSSignposter.begin(name:context:)("search.client", 13, 2u, 0, v14);
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.responseMetadata.getter();
  v16 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.ResponseMetadata.domainName.getter();
  v18 = v17;
  (*(v9 + 8))(v11, v8);
  if (v16 == 0x616964656DLL && v18 == 0xE500000000000000)
  {
  }

  else
  {
    v20 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v20 & 1) == 0)
    {
LABEL_22:
      v37 = MEMORY[0x277D84F90];
      goto LABEL_25;
    }
  }

  v21 = v51[3];
  if (!*(v21 + 16))
  {
    goto LABEL_22;
  }

  v22 = specialized __RawDictionaryStorage.find<A>(_:)(1);
  if ((v23 & 1) == 0)
  {
    goto LABEL_22;
  }

  outlined init with copy of AppDataProviding(*(v21 + 56) + 40 * v22, &v53);
  outlined init with take of DomainWarmupHandling(&v53, v56);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v24 = type metadata accessor for Logger();
  __swift_project_value_buffer(v24, static Logger.pommes);
  outlined init with copy of AppDataProviding(v56, &v53);
  v25 = Logger.logObject.getter();
  v26 = static os_log_type_t.debug.getter();
  v27 = os_log_type_enabled(v25, v26);
  v47 = a1;
  if (v27)
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v52 = v29;
    *v28 = 136315138;
    v30 = v54;
    v31 = v55;
    __swift_project_boxed_opaque_existential_1(&v53, v54);
    v32 = (*(v31 + 8))(v30, v31);
    if (v32)
    {
      v33 = 0x636973756DLL;
    }

    else
    {
      v33 = 1701736302;
    }

    if (v32)
    {
      v34 = 0xE500000000000000;
    }

    else
    {
      v34 = 0xE400000000000000;
    }

    __swift_destroy_boxed_opaque_existential_1(&v53);
    v35 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v33, v34, &v52);

    *(v28 + 4) = v35;
    _os_log_impl(&dword_2232BB000, v25, v26, "SageSearchRequestProcessor#clientSearch searching local %s domain", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v29);
    MEMORY[0x223DE0F80](v29, -1, -1);
    MEMORY[0x223DE0F80](v28, -1, -1);
  }

  else
  {

    v36 = __swift_destroy_boxed_opaque_existential_1(&v53);
  }

  v38 = v51[4];
  v39 = *(*v51 + 136);
  v39(v36);
  v40 = &v7[*(v48 + 32)];
  v41 = v40[1];
  v48 = *v40;

  v42 = _s21SiriInformationSearch06PommesC7RequestVWOhTm_1(v7, type metadata accessor for PommesSearchRequest);
  v43 = v49;
  v39(v42);
  v44 = v50;
  PommesSearchRequest.pommesCandidateId.getter(v50);
  _s21SiriInformationSearch06PommesC7RequestVWOhTm_1(v43, type metadata accessor for PommesSearchRequest);
  v45 = type metadata accessor for PommesCandidateId();
  (*(*(v45 - 8) + 56))(v44, 0, 1, v45);
  (*(*v38 + 128))(v48, v41, v44, 1);

  outlined destroy of MediaUserStateCenter?(v44, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  v37 = SageSearchRequestProcessor.clientSearchForMusic(_:musicDomainClient:)(v47, v56);
  __swift_destroy_boxed_opaque_existential_1(v56);
LABEL_25:
  OSSignposter.end(token:message:)(v14, 0, 0xE000000000000000);
  _s21SiriInformationSearch06PommesC7RequestVWOhTm_1(v14, type metadata accessor for SignpostToken);
  return v37;
}

uint64_t SageSearchRequestProcessor.clientSearchForMusic(_:musicDomainClient:)(uint64_t a1, void *a2)
{
  v63 = a2;
  v67 = a1;
  v3 = type metadata accessor for PerformanceUtil.Ticket(0);
  v4 = (v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for PommesCandidateId();
  v69 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v64 = v9;
  v65 = v59 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = (v59 - v10);
  v12 = type metadata accessor for PommesSearchRequest(0);
  v13 = v12 - 8;
  MEMORY[0x28223BE20](v12);
  v15 = v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = swift_allocObject();
  v68 = v16;
  *(v16 + 16) = MEMORY[0x277D84F90];
  v66 = v16 + 16;
  v17 = *(*v2 + 136);
  v18 = *v2 + 136;
  v17();
  v19 = &v15[*(v13 + 40)];
  v20 = *v19;
  v61 = *(v19 + 1);
  v62 = v20;

  v21 = _s21SiriInformationSearch06PommesC7RequestVWOhTm_1(v15, type metadata accessor for PommesSearchRequest);
  v59[1] = v18;
  v60 = v17;
  (v17)(v21);
  PommesSearchRequest.pommesCandidateId.getter(v11);
  _s21SiriInformationSearch06PommesC7RequestVWOhTm_1(v15, type metadata accessor for PommesSearchRequest);
  v71 = 0;
  v72 = 0xE000000000000000;
  _StringGuts.grow(_:)(23);
  v71 = v2;
  type metadata accessor for SageSearchRequestProcessor(0);

  v22 = String.init<A>(describing:)();
  v24 = v23;

  v71 = v22;
  v72 = v24;
  MEMORY[0x223DDF6D0](0xD000000000000015, 0x80000002234DBF00);
  v25 = v71;
  v26 = v72;
  Date.init()();
  v27 = &v6[v4[7]];
  *v27 = "SiriInformationSearch/SageSearchRequestProcessor.swift";
  *(v27 + 1) = 54;
  v27[16] = 2;
  *&v6[v4[8]] = 174;
  v28 = &v6[v4[9]];
  *v28 = "clientSearchForMusic(_:musicDomainClient:)";
  *(v28 + 1) = 42;
  v28[16] = 2;
  v29 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(v25, v26);
  v31 = v30;

  v32 = v4[10];
  v70 = v6;
  v33 = &v6[v32];
  *v33 = v29;
  v33[1] = v31;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v34 = type metadata accessor for Logger();
  __swift_project_value_buffer(v34, static Logger.pommes);
  v35 = Logger.logObject.getter();
  v36 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v35, v36))
  {
    v37 = swift_slowAlloc();
    v38 = swift_slowAlloc();
    v71 = v38;
    *v37 = 136315138;
    v39 = MEMORY[0x223DDF850](MEMORY[0x277D84F90], MEMORY[0x277D837D0]);
    v41 = v11;
    v42 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v39, v40, &v71);

    *(v37 + 4) = v42;
    v11 = v41;
    _os_log_impl(&dword_2232BB000, v35, v36, "PommesSearchRequestProcessor#clientSearchForMusic calling musicDomainClient.search sharedUserIds: %s", v37, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v38);
    MEMORY[0x223DE0F80](v38, -1, -1);
    MEMORY[0x223DE0F80](v37, -1, -1);
  }

  v59[0] = v11;
  v43 = v63[3];
  v44 = v63[4];
  v63 = __swift_project_boxed_opaque_existential_1(v63, v43);
  v60();
  v45 = swift_allocObject();
  swift_weakInit();
  v46 = v69;
  v47 = v65;
  (*(v69 + 16))(v65, v11, v7);
  v48 = (*(v46 + 80) + 40) & ~*(v46 + 80);
  v49 = (v64 + v48 + 7) & 0xFFFFFFFFFFFFFFF8;
  v50 = swift_allocObject();
  v51 = v61;
  v52 = v62;
  *(v50 + 2) = v45;
  *(v50 + 3) = v52;
  *(v50 + 4) = v51;
  (*(v46 + 32))(&v50[v48], v47, v7);
  v53 = v68;
  *&v50[v49] = v68;
  v65 = v7;
  v54 = *(v44 + 24);

  v54(v15, v67, 0, MEMORY[0x277D84F90], partial apply for closure #1 in SageSearchRequestProcessor.clientSearchForMusic(_:musicDomainClient:), v50, v43, v44);

  _s21SiriInformationSearch06PommesC7RequestVWOhTm_1(v15, type metadata accessor for PommesSearchRequest);

  swift_beginAccess();
  v55 = *(v53 + 16);
  v56 = one-time initialization token for shared;

  if (v56 != -1)
  {
    swift_once();
  }

  v57 = v70;
  (*(*static PerformanceUtil.shared + 184))(v70, 1);
  _s21SiriInformationSearch06PommesC7RequestVWOhTm_1(v57, type metadata accessor for PerformanceUtil.Ticket);
  (*(v46 + 8))(v59[0], v65);

  return v55;
}

void closure #1 in SageSearchRequestProcessor.clientSearchForMusic(_:musicDomainClient:)(void *a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v35[-1] - v14;
  if (a2)
  {
    swift_beginAccess();
    Strong = swift_weakLoadStrong();
    if (Strong)
    {
      v17 = *(Strong + 32);

      v18 = type metadata accessor for PommesCandidateId();
      v19 = *(v18 - 8);
      (*(v19 + 16))(v15, a6, v18);
      (*(v19 + 56))(v15, 0, 1, v18);
      (*(*v17 + 144))(a4, a5, v15, 1);

      outlined destroy of MediaUserStateCenter?(v15, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
    }

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.pommes);
    v21 = a1;
    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();
    outlined consume of Result<[IQFMapsPersonalizationResult], Error>(a1, 1);
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v35[0] = v25;
      *v24 = 136315138;
      v35[3] = a1;
      v26 = a1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v27 = String.init<A>(describing:)();
      v29 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v27, v28, v35);

      *(v24 + 4) = v29;
      _os_log_impl(&dword_2232BB000, v22, v23, "PommesSearchRequestProcessor#clientSearchForMusic local client search failed : %s", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v25);
      MEMORY[0x223DE0F80](v25, -1, -1);
      MEMORY[0x223DE0F80](v24, -1, -1);
    }
  }

  else
  {
    swift_beginAccess();
    v30 = swift_weakLoadStrong();
    if (v30)
    {
      v31 = *(v30 + 32);

      v32 = type metadata accessor for PommesCandidateId();
      v33 = *(v32 - 8);
      (*(v33 + 16))(v15, a6, v32);
      (*(v33 + 56))(v15, 0, 1, v32);
      (*(*v31 + 136))(a4, a5, v15);

      outlined destroy of MediaUserStateCenter?(v15, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
    }

    swift_beginAccess();
    *(a7 + 16) = a1;
  }
}

uint64_t SageSearchRequestProcessor.deinit()
{

  _s21SiriInformationSearch06PommesC7RequestVWOhTm_1(v0 + OBJC_IVAR____TtC21SiriInformationSearch26SageSearchRequestProcessor_pommesSearchRequest, type metadata accessor for PommesSearchRequest);

  return v0;
}

uint64_t SageSearchRequestProcessor.__deallocating_deinit()
{

  _s21SiriInformationSearch06PommesC7RequestVWOhTm_1(v0 + OBJC_IVAR____TtC21SiriInformationSearch26SageSearchRequestProcessor_pommesSearchRequest, type metadata accessor for PommesSearchRequest);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for SageSearchRequestProcessor(uint64_t a1)
{
  result = type metadata singleton initialization cache for SageSearchRequestProcessor;
  if (!type metadata singleton initialization cache for SageSearchRequestProcessor)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t type metadata completion function for SageSearchRequestProcessor(uint64_t a1)
{
  result = type metadata accessor for PommesSearchRequest(319);
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

uint64_t dispatch thunk of SageSearchRequestProcessor.search()()
{
  v4 = (*(*v0 + 216) + **(*v0 + 216));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = dispatch thunk of PommesSearchService.searchToolGlobalSearch(request:);

  return v4();
}

void partial apply for closure #1 in SageSearchRequestProcessor.clientSearchForMusic(_:musicDomainClient:)(void *a1, char a2)
{
  v5 = *(type metadata accessor for PommesCandidateId() - 8);
  v6 = (*(v5 + 80) + 40) & ~*(v5 + 80);
  v7 = v2[2];
  v8 = v2[3];
  v9 = v2[4];
  v10 = *(v2 + ((*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8));

  closure #1 in SageSearchRequestProcessor.clientSearchForMusic(_:musicDomainClient:)(a1, a2 & 1, v7, v8, v9, v2 + v6, v10);
}

uint64_t _s21SiriInformationSearch06PommesC7RequestVWOhTm_1(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t lazy protocol witness table accessor for type SearchToolSearchRequestProcessorError and conformance SearchToolSearchRequestProcessorError()
{
  result = lazy protocol witness table cache variable for type SearchToolSearchRequestProcessorError and conformance SearchToolSearchRequestProcessorError;
  if (!lazy protocol witness table cache variable for type SearchToolSearchRequestProcessorError and conformance SearchToolSearchRequestProcessorError)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type SearchToolSearchRequestProcessorError and conformance SearchToolSearchRequestProcessorError);
  }

  return result;
}

uint64_t _sSo17OS_dispatch_queueC8DispatchE10AttributesVAEs10SetAlgebraACWlTm_2(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id static PegasusOverrideUtil.overrideSupportsGenerativeModelSystems.getter()
{
  result = AFIsInternalInstall();
  if (result)
  {
    v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v2 = MEMORY[0x223DDF550](0xD000000000000011, 0x80000002234DC2A0);
    v3 = [v1 initWithSuiteName_];

    if (v3)
    {
      v4 = MEMORY[0x223DDF550](0xD00000000000002CLL, 0x80000002234DFC10);
      v5 = [v3 BOOLForKey_];

      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id static PegasusOverrideUtil.overrideIsSAERequest.getter()
{
  result = AFIsInternalInstall();
  if (result)
  {
    v1 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
    v2 = MEMORY[0x223DDF550](0xD000000000000011, 0x80000002234DC2A0);
    v3 = [v1 initWithSuiteName_];

    if (v3)
    {
      v4 = MEMORY[0x223DDF550](0xD00000000000001ALL, 0x80000002234DFC40);
      v5 = [v3 BOOLForKey_];

      return v5;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

id static PegasusOverrideUtil.overrideTreatRandomAsFirst.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = MEMORY[0x223DDF550](0xD000000000000011, 0x80000002234DC2A0);
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    return 0;
  }

  v3 = MEMORY[0x223DDF550](0xD000000000000020, 0x80000002234E0FD0);
  v4 = [v2 BOOLForKey_];

  return v4;
}

uint64_t one-time initialization function for overrideKeyHeaderKeyDict()
{
  v0 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SaySSGTt0g5Tf4g_n(&outlined read-only object #7 of one-time initialization function for overrideKeyHeaderKeyDict);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_SaySSGtMd, &_sSS_SaySSGtMR);
  result = swift_arrayDestroy();
  static PegasusOverrideUtil.overrideKeyHeaderKeyDict = v0;
  return result;
}

uint64_t specialized static PegasusOverrideUtil.pairedDeviceOverrideValue(forKey:)(uint64_t a1, unint64_t a2)
{
  if (!AFIsInternalInstall())
  {
    return 0;
  }

  v20[0] = 0xD00000000000001BLL;
  v20[1] = 0x80000002234E2030;
  MEMORY[0x223DDF6D0](a1, a2);
  v4 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v5 = MEMORY[0x223DDF550](0xD000000000000011, 0x80000002234DC2A0);
  v6 = [v4 initWithSuiteName_];

  if (!v6)
  {
    goto LABEL_15;
  }

  v7 = MEMORY[0x223DDF550](0xD00000000000001BLL, 0x80000002234E2030);

  v8 = [v6 stringForKey_];

  if (!v8)
  {

    return 0;
  }

  v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v11 = v10;

  v12 = HIBYTE(v11) & 0xF;
  if ((v11 & 0x2000000000000000) == 0)
  {
    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (!v12)
  {

LABEL_15:

    return 0;
  }

  v13 = v9;
  if (one-time initialization token for overrides != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.overrides);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v20[0] = v18;
    *v17 = 136315394;
    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v20);
    *(v17 + 12) = 2080;
    *(v17 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v11, v20);
    _os_log_impl(&dword_2232BB000, v15, v16, "POMMES override enabled for paired device value %s header! Using value “%s”", v17, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v18, -1, -1);
    MEMORY[0x223DE0F80](v17, -1, -1);
  }

  return v13;
}

uint64_t specialized static PegasusOverrideUtil.requestFeatureFlag.getter()
{
  if (!AFIsInternalInstall())
  {
    return 0;
  }

  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = MEMORY[0x223DDF550](0xD000000000000011, 0x80000002234DC2A0);
  v2 = [v0 initWithSuiteName_];

  if (!v2)
  {
    return 0;
  }

  v3 = MEMORY[0x223DDF550](0xD000000000000027, 0x80000002234E2000);
  v4 = [v2 stringForKey_];

  if (!v4)
  {

    return 0;
  }

  v5 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = v6;

  if (one-time initialization token for overrides != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.overrides);

  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v14 = v12;
    *v11 = 136315138;
    *(v11 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v5, v7, &v14);
    _os_log_impl(&dword_2232BB000, v9, v10, "POMMES override enabled for Pegasus request feature flag! Using flag %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x223DE0F80](v12, -1, -1);
    MEMORY[0x223DE0F80](v11, -1, -1);
  }

  return v5;
}

uint64_t specialized static PegasusOverrideUtil.getHeaderOverrideValue(overrideKey:headerKey:)(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  if (!AFIsInternalInstall())
  {
    return 0;
  }

  v8 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v9 = MEMORY[0x223DDF550](0xD000000000000011, 0x80000002234DC2A0);
  v10 = [v8 initWithSuiteName_];

  if (!v10)
  {
    return 0;
  }

  v11 = MEMORY[0x223DDF550](a1, a2);
  v12 = [v10 stringForKey_];

  if (!v12)
  {

    return 0;
  }

  v13 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v15 = v14;

  v16 = HIBYTE(v15) & 0xF;
  if ((v15 & 0x2000000000000000) == 0)
  {
    v16 = v13 & 0xFFFFFFFFFFFFLL;
  }

  if (!v16)
  {

    return 0;
  }

  v17 = v13;
  if (one-time initialization token for overrides != -1)
  {
    swift_once();
  }

  v18 = type metadata accessor for Logger();
  __swift_project_value_buffer(v18, static Logger.overrides);

  v19 = Logger.logObject.getter();
  v20 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = swift_slowAlloc();
    v24 = v22;
    *v21 = 136315394;
    *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a3, a4, &v24);
    *(v21 + 12) = 2080;
    *(v21 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v17, v15, &v24);
    _os_log_impl(&dword_2232BB000, v19, v20, "POMMES override enabled for %s header! Using value “%s”", v21, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v22, -1, -1);
    MEMORY[0x223DE0F80](v21, -1, -1);
  }

  return v17;
}

unint64_t specialized static PegasusOverrideUtil.headerOverrides.getter()
{
  v0 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  if (one-time initialization token for overrideKeyHeaderKeyDict != -1)
  {
    goto LABEL_50;
  }

LABEL_2:
  v1 = static PegasusOverrideUtil.overrideKeyHeaderKeyDict + 64;
  v2 = 1 << *(static PegasusOverrideUtil.overrideKeyHeaderKeyDict + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(static PegasusOverrideUtil.overrideKeyHeaderKeyDict + 8);
  v5 = (v2 + 63) >> 6;

  v7 = 0;
  *&v8 = 136315394;
  if (v4)
  {
LABEL_5:
    while (1)
    {
      v9 = __clz(__rbit64(v4));
      v4 &= v4 - 1;
      v10 = v9 | (v7 << 6);
      v11 = *(*(v6 + 56) + 8 * v10);
      v12 = *(v11 + 16);
      if (v12)
      {
        break;
      }

      if (!v4)
      {
        goto LABEL_7;
      }
    }

    v59 = v8;
    v57 = v6;
    v14 = (*(v6 + 48) + 16 * v10);
    v62 = *v14;
    v63 = v14[1];

    v15 = 0;
    v16 = (v11 + 40);
    v66 = v11;
    v67 = v12;
    while (1)
    {
      if (v15 >= *(v11 + 16))
      {
        goto LABEL_49;
      }

      v69 = v0;
      v18 = *(v16 - 1);
      v19 = *v16;

      if (!AFIsInternalInstall())
      {
        goto LABEL_29;
      }

      v20 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
      v68 = v18;
      v21 = MEMORY[0x223DDF550](0xD000000000000011, 0x80000002234DC2A0);
      v22 = [v20 initWithSuiteName_];

      v18 = v68;
      if (!v22)
      {
        goto LABEL_29;
      }

      v23 = MEMORY[0x223DDF550](v62, v63);
      v24 = [v22 stringForKey_];

      if (!v24)
      {

LABEL_28:
        v18 = v68;
LABEL_29:
        v35 = specialized __RawDictionaryStorage.find<A>(_:)(v18, v19);
        v37 = v36;

        if (v37)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v70 = v69;
          v0 = v69;
          if (!isUniquelyReferenced_nonNull_native)
          {
            specialized _NativeDictionary.copy()();
            v0 = v70;
          }

          specialized _NativeDictionary._delete(at:)(v35, v0);
        }

        else
        {
          v0 = v69;
        }

        v11 = v66;
        v17 = v67;
        goto LABEL_14;
      }

      v65 = v22;
      v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v27 = v26;

      v28 = HIBYTE(v27) & 0xF;
      v64 = v25;
      if ((v27 & 0x2000000000000000) == 0)
      {
        v28 = v25 & 0xFFFFFFFFFFFFLL;
      }

      if (!v28)
      {

        goto LABEL_28;
      }

      if (one-time initialization token for overrides != -1)
      {
        swift_once();
      }

      v29 = type metadata accessor for Logger();
      __swift_project_value_buffer(v29, static Logger.overrides);

      v30 = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();

      log = v30;
      v60 = v27;
      if (os_log_type_enabled(v30, v31))
      {
        v32 = v27;
        v33 = swift_slowAlloc();
        v58 = swift_slowAlloc();
        v70 = v58;
        *v33 = v59;
        *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v68, v19, &v70);
        *(v33 + 12) = 2080;
        *(v33 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v64, v32, &v70);
        _os_log_impl(&dword_2232BB000, log, v31, "POMMES override enabled for %s header! Using value “%s”", v33, 0x16u);
        swift_arrayDestroy();
        v34 = v68;
        MEMORY[0x223DE0F80](v58, -1, -1);
        MEMORY[0x223DE0F80](v33, -1, -1);
      }

      else
      {

        v34 = v68;
      }

      v39 = swift_isUniquelyReferenced_nonNull_native();
      v70 = v69;
      v40 = specialized __RawDictionaryStorage.find<A>(_:)(v34, v19);
      v42 = *(v69 + 16);
      v43 = (v41 & 1) == 0;
      v44 = __OFADD__(v42, v43);
      v45 = v42 + v43;
      if (v44)
      {
        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
        __break(1u);
        return result;
      }

      v46 = v41;
      if (*(v69 + 24) < v45)
      {
        break;
      }

      if (v39)
      {
        goto LABEL_39;
      }

      v50 = v40;
      specialized _NativeDictionary.copy()();
      v40 = v50;
      v17 = v67;
      if ((v46 & 1) == 0)
      {
LABEL_42:
        v51 = v70;
        v70[(v40 >> 6) + 8] |= 1 << v40;
        v52 = (v51[6] + 16 * v40);
        *v52 = v68;
        v52[1] = v19;
        v53 = (v51[7] + 16 * v40);
        *v53 = v64;
        v53[1] = v60;
        v54 = v51[2];
        v44 = __OFADD__(v54, 1);
        v55 = v54 + 1;
        if (v44)
        {
          goto LABEL_52;
        }

        v0 = v51;
        v51[2] = v55;
        goto LABEL_44;
      }

LABEL_40:
      v48 = v40;

      v0 = v70;
      v49 = (v70[7] + 16 * v48);
      *v49 = v64;
      v49[1] = v60;

LABEL_44:
      v11 = v66;
LABEL_14:
      ++v15;
      v16 += 2;
      if (v17 == v15)
      {

        v6 = v57;
        v8 = v59;
        if (!v4)
        {
          goto LABEL_7;
        }

        goto LABEL_5;
      }
    }

    specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v45, v39);
    v40 = specialized __RawDictionaryStorage.find<A>(_:)(v68, v19);
    if ((v46 & 1) != (v47 & 1))
    {
      goto LABEL_53;
    }

LABEL_39:
    v17 = v67;
    if ((v46 & 1) == 0)
    {
      goto LABEL_42;
    }

    goto LABEL_40;
  }

  while (1)
  {
LABEL_7:
    v13 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_49:
      __break(1u);
LABEL_50:
      swift_once();
      goto LABEL_2;
    }

    if (v13 >= v5)
    {
      break;
    }

    v4 = *&v1[8 * v13];
    ++v7;
    if (v4)
    {
      v7 = v13;
      goto LABEL_5;
    }
  }

  return v0;
}

uint64_t static NowPlayingInfo.createIdentifierUrl(scheme:host:identifier:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v10 = type metadata accessor for URLComponents();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  URLComponents.init()();

  URLComponents.scheme.setter();

  MEMORY[0x223DD8CC0](a3, a4);
  v16 = 47;
  v17 = 0xE100000000000000;
  MEMORY[0x223DDF6D0](a5, a6);
  MEMORY[0x223DD8CD0](v16, v17);
  v14 = URLComponents.string.getter();
  (*(v11 + 8))(v13, v10);
  return v14;
}

void *NowPlayingInfo.__allocating_init(_:_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5)
{
  result = swift_allocObject();
  if (a1)
  {
    if (a3)
    {
      v11 = 0;
    }

    else
    {
      v11 = a2;
    }

    result[2] = a1;
    result[3] = v11;
    if (a5)
    {
      v12 = a4;
    }

    else
    {
      v12 = 0;
    }

    v13 = 0xE000000000000000;
    if (a5)
    {
      v13 = a5;
    }

    result[4] = v12;
    result[5] = v13;
  }

  else
  {

    swift_deallocPartialClassInstance();
    return 0;
  }

  return result;
}

uint64_t NowPlayingInfo.applicationBundleIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

void *NowPlayingInfo.init(_:_:_:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, unint64_t a5)
{
  if (a1)
  {
    if (a3)
    {
      v6 = 0;
    }

    else
    {
      v6 = a2;
    }

    v5[2] = a1;
    v5[3] = v6;
    if (a5)
    {
      v7 = a4;
    }

    else
    {
      v7 = 0;
    }

    v8 = 0xE000000000000000;
    if (a5)
    {
      v8 = a5;
    }

    v5[4] = v7;
    v5[5] = v8;
  }

  else
  {

    type metadata accessor for NowPlayingInfo();
    swift_deallocPartialClassInstance();
    return 0;
  }

  return v5;
}

void *NowPlayingInfo.title.getter(void *result)
{
  if (*result)
  {
    if ([*(v1 + 16) objectForKey_])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v3 = 0u;
      v4 = 0u;
    }

    v5[0] = v3;
    v5[1] = v4;
    if (*(&v4 + 1))
    {
      if (swift_dynamicCast())
      {
        return v2;
      }

      else
      {
        return 0;
      }
    }

    else
    {
      outlined destroy of Any?(v5);
      return 0;
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t NowPlayingInfo.externalContentIdentifier.getter()
{
  v1 = type metadata accessor for CharacterSet();
  v2 = *(v1 - 8);
  result = MEMORY[0x28223BE20](v1);
  v5 = &v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*MEMORY[0x277D27BF0])
  {
    if ([*(v0 + 16) objectForKey_])
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
    }

    else
    {
      v8 = 0u;
      v9 = 0u;
    }

    v10[0] = v8;
    v10[1] = v9;
    if (*(&v9 + 1))
    {
      if (swift_dynamicCast())
      {
        v10[0] = v7;
        static CharacterSet.urlPathAllowed.getter();
        lazy protocol witness table accessor for type String and conformance String();
        v6 = StringProtocol.addingPercentEncoding(withAllowedCharacters:)();
        (*(v2 + 8))(v5, v1);

        return v6;
      }
    }

    else
    {
      outlined destroy of Any?(v10);
    }

    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id NowPlayingInfo.uniqueIdentifier.getter()
{
  v1 = type metadata accessor for CharacterSet();
  v2 = *(v1 - 8);
  result = MEMORY[0x28223BE20](v1);
  v5 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*MEMORY[0x277D27CC0])
  {
    result = [*(v0 + 16) objectForKey_];
    if (result)
    {
      _bridgeAnyObjectToAny(_:)();
      swift_unknownObjectRelease();
      outlined init with copy of Any(v28, v27);
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSString, 0x277CCACA8);
      if (swift_dynamicCast())
      {
        v6 = v26[0];
        static CharacterSet.urlPathAllowed.getter();
        isa = CharacterSet._bridgeToObjectiveC()().super.isa;
        (*(v2 + 8))(v5, v1);
        v8 = [v6 stringByAddingPercentEncodingWithAllowedCharacters_];

        if (v8)
        {
          v9 = static String._unconditionallyBridgeFromObjectiveC(_:)();

          __swift_destroy_boxed_opaque_existential_1(v28);
        }

        else
        {
          __swift_destroy_boxed_opaque_existential_1(v28);

          v9 = 0;
        }

        __swift_destroy_boxed_opaque_existential_1(v27);
        return v9;
      }

      else
      {
        type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
        if (swift_dynamicCast())
        {
          v10 = v26[0];
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCys7CVarArg_pGMd, &_ss23_ContiguousArrayStorageCys7CVarArg_pGMR);
          v11 = swift_allocObject();
          *(v11 + 16) = xmmword_2234CF920;
          v12 = [v10 longLongValue];
          v13 = MEMORY[0x277D84A90];
          *(v11 + 56) = MEMORY[0x277D84A28];
          *(v11 + 64) = v13;
          *(v11 + 32) = v12;
          v14 = String.init(format:_:)();

          __swift_destroy_boxed_opaque_existential_1(v28);
          __swift_destroy_boxed_opaque_existential_1(v27);
          return v14;
        }

        else
        {
          if (one-time initialization token for pommes != -1)
          {
            swift_once();
          }

          v15 = type metadata accessor for Logger();
          __swift_project_value_buffer(v15, static Logger.pommes);
          outlined init with copy of Any(v28, v26);
          v16 = Logger.logObject.getter();
          v17 = static os_log_type_t.error.getter();
          if (os_log_type_enabled(v16, v17))
          {
            v18 = swift_slowAlloc();
            v19 = swift_slowAlloc();
            v25 = v19;
            *v18 = 136315138;
            __swift_project_boxed_opaque_existential_1(v26, v26[3]);
            swift_getDynamicType();
            v20 = _typeName(_:qualified:)();
            v22 = v21;
            __swift_destroy_boxed_opaque_existential_1(v26);
            v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v20, v22, &v25);

            *(v18 + 4) = v23;
            _os_log_impl(&dword_2232BB000, v16, v17, "Bad NowPlayingInfo, kMRMediaRemoteNowPlayingInfoUniqueIdentifier gave unexpected item of class %s", v18, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v19);
            MEMORY[0x223DE0F80](v19, -1, -1);
            MEMORY[0x223DE0F80](v18, -1, -1);
          }

          else
          {

            __swift_destroy_boxed_opaque_existential_1(v26);
          }

          __swift_destroy_boxed_opaque_existential_1(v28);
          __swift_destroy_boxed_opaque_existential_1(v27);
          return 0;
        }
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t NowPlayingInfo.isRadio.getter()
{
  v1 = (*(*v0 + 160))();
  if (!v2)
  {
    v8 = 0;
    return v8 & 1;
  }

  v3 = v1;
  result = *MEMORY[0x277D27AF8];
  if (*MEMORY[0x277D27AF8])
  {
    v5 = v2;
    if (v3 == static String._unconditionallyBridgeFromObjectiveC(_:)() && v5 == v6)
    {
      v8 = 1;
    }

    else
    {
      v8 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }

    return v8 & 1;
  }

  __break(1u);
  return result;
}

void *NowPlayingInfo.queueIndex.getter(void *result)
{
  if (*result)
  {
    if ([*(v1 + 16) objectForKey_])
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
      type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSNumber, 0x277CCABB0);
      if (swift_dynamicCast())
      {
        v2 = [v5 intValue];

        v3 = 0;
        v4 = v2;
LABEL_10:
        LOBYTE(v8[0]) = v3;
        return (v4 | (v3 << 32));
      }
    }

    else
    {
      outlined destroy of Any?(v8);
    }

    v4 = 0;
    v3 = 1;
    goto LABEL_10;
  }

  __break(1u);
  return result;
}

void static NowPlayingInfo.addKVToListeningToContainer(key:value:container:)(uint64_t a1, uint64_t a2, void *a3)
{
  outlined init with copy of Any(a1, &v40);
  if (!swift_dynamicCast())
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.pommes);
    outlined init with copy of Any(a1, &v40);
    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();
    if (!os_log_type_enabled(v12, v13))
    {

      __swift_destroy_boxed_opaque_existential_1(&v40);
      return;
    }

    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v35[0] = v15;
    *v14 = 136315138;
    outlined init with copy of Any(&v40, &v36);
    v16 = String.init<A>(describing:)();
    v18 = v17;
    __swift_destroy_boxed_opaque_existential_1(&v40);
    v19 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v16, v18, v35);

    *(v14 + 4) = v19;
    _os_log_impl(&dword_2232BB000, v12, v13, "Ignoring non-string key: %s", v14, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x223DE0F80](v15, -1, -1);
    v20 = v14;
    goto LABEL_34;
  }

  if (*MEMORY[0x277D27B58])
  {
    v6 = v36;
    if (v36 == static String._unconditionallyBridgeFromObjectiveC(_:)() && *(&v36 + 1) == v7)
    {
    }

    else
    {
      v9 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v9 & 1) == 0)
      {
        outlined init with copy of Any(a2, &v40);
        if (swift_dynamicCast())
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&v40 = *a3;
          specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v36, *(&v36 + 1), v36, *(&v36 + 1), isUniquelyReferenced_nonNull_native);

          *a3 = v40;
          return;
        }

        if (one-time initialization token for pommes != -1)
        {
          swift_once();
        }

        v31 = type metadata accessor for Logger();
        __swift_project_value_buffer(v31, static Logger.pommes);

        v12 = Logger.logObject.getter();
        v32 = static os_log_type_t.debug.getter();

        if (!os_log_type_enabled(v12, v32))
        {

          goto LABEL_35;
        }

        v30 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        *&v40 = v33;
        *v30 = 136315138;
        v34 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, *(&v6 + 1), &v40);

        *(v30 + 4) = v34;
        _os_log_impl(&dword_2232BB000, v12, v32, "Could not make safe value for key: %s", v30, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v33);
        MEMORY[0x223DE0F80](v33, -1, -1);
        goto LABEL_33;
      }
    }

    outlined init with copy of Any(a2, &v40);
    type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSDictionary, 0x277CBEAC0);
    if (!swift_dynamicCast())
    {

      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v28 = type metadata accessor for Logger();
      __swift_project_value_buffer(v28, static Logger.pommes);
      v12 = Logger.logObject.getter();
      v29 = static os_log_type_t.debug.getter();
      if (!os_log_type_enabled(v12, v29))
      {
        goto LABEL_35;
      }

      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_2232BB000, v12, v29, "Unexpected non-dictionary value for kMRMediaRemoteNowPlayingCollectionInfoKeyIdentifiers", v30, 2u);
LABEL_33:
      v20 = v30;
LABEL_34:
      MEMORY[0x223DE0F80](v20, -1, -1);
LABEL_35:

      return;
    }

    v21 = v36;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v22 = type metadata accessor for Logger();
    __swift_project_value_buffer(v22, static Logger.pommes);

    v23 = Logger.logObject.getter();
    v24 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      v26 = swift_slowAlloc();
      *&v40 = v26;
      *v25 = 136315138;
      v27 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, *(&v6 + 1), &v40);

      *(v25 + 4) = v27;
      _os_log_impl(&dword_2232BB000, v23, v24, "Processing kMRMediaRemoteNowPlayingCollectionInfoKeyIdentifiers key: %s", v25, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v26);
      MEMORY[0x223DE0F80](v26, -1, -1);
      MEMORY[0x223DE0F80](v25, -1, -1);
    }

    else
    {
    }

    NSDictionary.makeIterator()();
    NSDictionary.Iterator.next()();
    v40 = v36;
    v41 = v37;
    v42 = v38;
    for (i = v39; *(&v37 + 1); i = v39)
    {
      outlined init with take of Any(&v40, &v36);
      outlined init with take of Any(&v42, v35);
      static NowPlayingInfo.addKVToListeningToContainer(key:value:container:)(&v36, v35, a3);
      __swift_destroy_boxed_opaque_existential_1(v35);
      __swift_destroy_boxed_opaque_existential_1(&v36);
      NSDictionary.Iterator.next()();
      v40 = v36;
      v41 = v37;
      v42 = v38;
    }
  }

  else
  {
    __break(1u);
  }
}

void NowPlayingInfo.collectionInfo.getter()
{
  if (!*MEMORY[0x277D27BA8])
  {
    __break(1u);
    return;
  }

  if ([*(v0 + 16) objectForKey_])
  {
    _bridgeAnyObjectToAny(_:)();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v7 = v3;
  v8 = v4;
  if (!*(&v4 + 1))
  {
    outlined destroy of Any?(&v7);
    goto LABEL_12;
  }

  type metadata accessor for CNContactStore(0, &lazy cache variable for type metadata for NSDictionary, 0x277CBEAC0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_12:
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    return;
  }

  v1 = v2[0];
  if ([v2[0] count] < 1)
  {
    _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  }

  else
  {
    v11 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SSTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    NSDictionary.makeIterator()();
    NSDictionary.Iterator.next()();
    v7 = v3;
    v8 = v4;
    v9 = v5;
    v10 = v6;
    do
    {
      outlined init with take of Any(&v7, &v3);
      outlined init with take of Any(&v9, v2);
      static NowPlayingInfo.addKVToListeningToContainer(key:value:container:)(&v3, v2, &v11);
      __swift_destroy_boxed_opaque_existential_1(v2);
      __swift_destroy_boxed_opaque_existential_1(&v3);
      NSDictionary.Iterator.next()();
      v7 = v3;
      v8 = v4;
      v9 = v5;
      v10 = v6;
    }

    while (*(&v4 + 1));
  }
}

uint64_t NowPlayingInfo.currentItemAdamIdentifier.getter()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySSGMd, &_ss23_ContiguousArrayStorageCySSGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2234CF940;
  result = *MEMORY[0x277D27CC8];
  if (!*MEMORY[0x277D27CC8])
  {
    __break(1u);
    goto LABEL_19;
  }

  *(inited + 32) = static String._unconditionallyBridgeFromObjectiveC(_:)();
  *(inited + 40) = v4;
  result = *MEMORY[0x277D27CD0];
  if (!*MEMORY[0x277D27CD0])
  {
LABEL_19:
    __break(1u);
    return result;
  }

  v5 = inited + 32;
  v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
  v7 = 0;
  v8 = 0;
  *(inited + 48) = v6;
  *(inited + 56) = v9;
  v10 = &unk_2784DB000;
  v11 = 0x676E6F4C676E6F6CLL;
  while (1)
  {
    v32 = v7;
    v12 = (v5 + 16 * v8);
    v13 = *v12;
    v14 = v12[1];
    v15 = *(v1 + 16);

    v16 = v15;
    v17 = MEMORY[0x223DDF550](v13, v14);
    v18 = [v16 v10[201]];

    if (v18)
    {
      break;
    }

LABEL_5:
    v7 = 1;
    v8 = 1;
    if (v32)
    {

      return 0;
    }
  }

  _bridgeAnyObjectToAny(_:)();
  swift_unknownObjectRelease();
  outlined init with take of Any(v34, &v35);
  __swift_project_boxed_opaque_existential_1(&v35, v36);
  v19 = _bridgeAnythingToObjectiveC<A>(_:)();
  v20 = [v19 respondsToSelector_];
  swift_unknownObjectRelease();
  if (!v20)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v21 = type metadata accessor for Logger();
    __swift_project_value_buffer(v21, static Logger.pommes);

    v22 = Logger.logObject.getter();
    v23 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      v25 = v5;
      v26 = v1;
      v27 = v10;
      v28 = v11;
      v29 = swift_slowAlloc();
      *&v34[0] = v29;
      *v24 = 136315138;
      v30 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, v34);

      *(v24 + 4) = v30;
      _os_log_impl(&dword_2232BB000, v22, v23, "Found %s value that is illegal (not a 64 bit integer)", v24, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v29);
      v31 = v29;
      v11 = v28;
      v10 = v27;
      v1 = v26;
      v5 = v25;
      MEMORY[0x223DE0F80](v31, -1, -1);
      MEMORY[0x223DE0F80](v24, -1, -1);
    }

    else
    {
    }

    __swift_destroy_boxed_opaque_existential_1(&v35);
    goto LABEL_5;
  }

  outlined init with take of Any(&v35, v34);
  if (swift_dynamicCast())
  {
    return v33;
  }

  else
  {
    return 0;
  }
}

uint64_t NowPlayingInfo.mediaItemIdURL.getter()
{
  v1 = type metadata accessor for URLComponents();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = NowPlayingInfo.currentItemAdamIdentifier.getter();
  if (v6)
  {
    v7 = (*(*v0 + 168))(v5);
    if (v8)
    {
      v9 = v7;
      v10 = v8;
      v11 = 0xE800000000000000;
      v12 = 0x6C616E7265747865;
    }

    else
    {
      v9 = (*(*v0 + 176))(v7);
      if (!v17)
      {
        return v9;
      }

      v10 = v17;
      v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
      v11 = v18;
    }
  }

  else
  {
    v13 = v5;
    v12 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v11 = v14;
    v19 = v13;
    v9 = dispatch thunk of CustomStringConvertible.description.getter();
    v10 = v15;
  }

  static String._unconditionallyBridgeFromObjectiveC(_:)();
  URLComponents.init()();

  URLComponents.scheme.setter();

  MEMORY[0x223DD8CC0](v12, v11);
  v19 = 47;
  v20 = 0xE100000000000000;
  MEMORY[0x223DDF6D0](v9, v10);

  MEMORY[0x223DD8CD0](v19, v20);
  v9 = URLComponents.string.getter();

  (*(v2 + 8))(v4, v1);
  return v9;
}

uint64_t NowPlayingInfo.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t UsoTask.getArgumentsAsType<A>(arguments:asType:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  static Array._allocateUninitialized(_:)();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology7UsoTaskC0A17InformationSearchE9ArgumentsOGMd, &_sSay12SiriOntology7UsoTaskC0A17InformationSearchE9ArgumentsOGMR);
  type metadata accessor for Array();
  lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [UsoTask.Arguments] and conformance [A], &_sSay12SiriOntology7UsoTaskC0A17InformationSearchE9ArgumentsOGMd, &_sSay12SiriOntology7UsoTaskC0A17InformationSearchE9ArgumentsOGMR);
  Sequence.reduce<A>(_:_:)();

  return v4;
}

uint64_t Siri_Nlu_External_UserParse.pommesUSOTasks()@<X0>(void *a1@<X8>)
{
  v2 = v1;
  v36 = a1;
  v49 = type metadata accessor for Siri_Nlu_External_UsoGraph();
  v3 = *(v49 - 8);
  MEMORY[0x28223BE20](v49);
  v5 = &v35 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v48 = type metadata accessor for Siri_Nlu_External_UserStatedTask();
  v6 = *(v48 - 8);
  MEMORY[0x28223BE20](v48);
  v47 = &v35 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v39 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = Siri_Nlu_External_Span.matcherNames.getter();
  v12 = result;
  v13 = MEMORY[0x277D84F90];
  v55 = MEMORY[0x277D84F90];
  v42 = *(result + 16);
  if (v42)
  {
    v14 = 0;
    v44 = (v6 + 8);
    v45 = v9 + 16;
    v46 = (v3 + 8);
    v43 = (v9 + 8);
    v15 = v39;
    v37 = v8;
    v38 = v5;
    v40 = v9;
    v41 = result;
    while (v14 < *(v12 + 16))
    {
      (*(v9 + 16))(v15, v12 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v14, v8);
      v16 = v47;
      Siri_Nlu_External_UserDialogAct.userStatedTask.getter();
      Siri_Nlu_External_UserStatedTask.task.getter();
      (*v44)(v16, v48);
      v17 = static UsoGraphProtoReader.fromSwiftProtobuf(protobufGraph:vocabManager:)();
      if (v2)
      {

        (*v46)(v5, v49);
        (*v43)(v15, v8);
      }

      v18 = v17;
      v52 = v14;
      (*v46)(v5, v49);
      v19 = static UsoPrintUtils.flattenUsoGraph(graph:printIdentifiers:)();
      v21 = v20;
      v22 = static ConversionUtils.convertUserDialogActToTasks(userDialogAct:)();
      v53 = v22;
      if (v22 >> 62)
      {
        v23 = __CocoaSet.count.getter();
      }

      else
      {
        v23 = *((v22 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v24 = MEMORY[0x277D84F90];
      if (v23)
      {
        v51 = v18;
        v54 = MEMORY[0x277D84F90];
        result = specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v23 & ~(v23 >> 63), 0);
        if (v23 < 0)
        {
          goto LABEL_28;
        }

        v50 = 0;
        v24 = v54;
        if ((v53 & 0xC000000000000001) != 0)
        {
          v25 = 0;
          do
          {
            v26 = MEMORY[0x223DDFF80](v25, v53);
            v54 = v24;
            v28 = *(v24 + 16);
            v27 = *(v24 + 24);

            if (v28 >= v27 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v27 > 1), v28 + 1, 1);
              v24 = v54;
            }

            ++v25;
            *(v24 + 16) = v28 + 1;
            v29 = (v24 + 24 * v28);
            v29[4] = v26;
            v29[5] = v19;
            v29[6] = v21;
          }

          while (v23 != v25);
        }

        else
        {
          v30 = (v53 + 32);
          do
          {
            v31 = *v30;
            v54 = v24;
            v33 = *(v24 + 16);
            v32 = *(v24 + 24);

            if (v33 >= v32 >> 1)
            {
              specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v32 > 1), v33 + 1, 1);
              v24 = v54;
            }

            *(v24 + 16) = v33 + 1;
            v34 = (v24 + 24 * v33);
            v34[4] = v31;
            v34[5] = v19;
            v34[6] = v21;
            ++v30;
            --v23;
          }

          while (v23);
        }

        v15 = v39;
        v8 = v37;
        (*v43)(v39, v37);
        v2 = v50;
        v5 = v38;
      }

      else
      {

        (*v43)(v15, v8);
      }

      v14 = v52 + 1;
      result = specialized Array.append<A>(contentsOf:)(v24);
      v12 = v41;
      v9 = v40;
      if (v14 == v42)
      {
        v13 = v55;
        goto LABEL_26;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {
LABEL_26:

    *v36 = v13;
  }

  return result;
}

uint64_t UsoTask.userEntities.getter()
{
  v1 = _s12SiriOntology7UsoTaskC0A17InformationSearchE18getArgumentsAsType9arguments02asJ0SayxGSayAcDE0H0OG_xmtAA11CodeGenBaseCRbzlFA2H_AJtXEfU_AA0c18Entity_common_UserP0C_Tt3g5(MEMORY[0x277D84F90], byte_2836982C8, v0);

  return v1;
}

uint64_t UsoTask.references.getter()
{
  v1 = _s12SiriOntology7UsoTaskC0A17InformationSearchE18getArgumentsAsType9arguments02asJ0SayxGSayAcDE0H0OG_xmtAA11CodeGenBaseCRbzlFA2H_AJtXEfU_AA0c13Entity_uso_NoP0C_Tt3g5(MEMORY[0x277D84F90], byte_2836982F0, v0);

  return v1;
}

uint64_t UsoTask.triggers.getter()
{
  v1 = _s12SiriOntology7UsoTaskC0A17InformationSearchE18getArgumentsAsType9arguments02asJ0SayxGSayAcDE0H0OG_xmtAA11CodeGenBaseCRbzlFA2H_AJtXEfU_AA0C26Entity_common_EventTriggerC_Tt3g5(MEMORY[0x277D84F90], byte_283698318, v0);

  return v1;
}

uint64_t UsoTask.referencedMediaItems()()
{
  v1 = _s12SiriOntology7UsoTaskC0A17InformationSearchE18getArgumentsAsType9arguments02asJ0SayxGSayAcDE0H0OG_xmtAA11CodeGenBaseCRbzlFA2H_AJtXEfU_AA0C23Entity_common_MediaItemC_Tt3g5(MEMORY[0x277D84F90], byte_283698910, v0);

  return v1;
}

uint64_t UsoTask.codeGenUserEntities.getter()
{
  static UsoTask_CodegenConverter.convert(task:)();
  if (!v3)
  {
    outlined destroy of Any?(v2);
    return MEMORY[0x277D84F90];
  }

  type metadata accessor for CodeGenTaskBase();
  if ((swift_dynamicCast() & 1) == 0)
  {
    return MEMORY[0x277D84F90];
  }

  type metadata accessor for UsoEntity_common_UserEntity();
  v0 = dispatch thunk of CodeGenTaskBase.getAsListHelper<A>(argumentName:entryType:)();

  if (v0)
  {
    return v0;
  }

  else
  {
    return MEMORY[0x277D84F90];
  }
}

uint64_t UsoTask.isWHARelevantTask.getter()
{
  static UsoTask_CodegenConverter.convert(task:)();
  outlined init with copy of Any?(&v3, &v1);
  if (*(&v2 + 1))
  {
    type metadata accessor for UsoTask_play_common_MediaItem();
    if (swift_dynamicCast())
    {

      outlined destroy of Any?(&v3);
      return 1;
    }
  }

  else
  {
    outlined destroy of Any?(&v1);
  }

  v1 = v3;
  v2 = v4;
  if (*(&v4 + 1))
  {
    type metadata accessor for UsoTask_update_common_MediaItem();
    if (swift_dynamicCast())
    {

      return 1;
    }
  }

  else
  {
    outlined destroy of Any?(&v1);
  }

  return 0;
}

uint64_t UsoTask.phoneCallEntities.getter()
{
  v1 = _s12SiriOntology7UsoTaskC0A17InformationSearchE18getArgumentsAsType9arguments02asJ0SayxGSayAcDE0H0OG_xmtAA11CodeGenBaseCRbzlFA2H_AJtXEfU_AA0C23Entity_common_PhoneCallC_Tt3g5(MEMORY[0x277D84F90], byte_2836994E0, v0);

  return v1;
}

uint64_t UsoTask.Arguments.rawValue.getter(unsigned __int8 a1)
{
  v1 = 0x69746E4572657375;
  v2 = 0x636E657265666572;
  if (a1 != 2)
  {
    v2 = 0x72656767697274;
  }

  if (a1)
  {
    v1 = 0x746567726174;
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

uint64_t protocol witness for static Equatable.== infix(_:_:) in conformance UsoTask.Arguments(_BYTE *a1, _BYTE *a2)
{
  v2 = 0xEC00000073656974;
  v3 = 0x69746E4572657375;
  v4 = *a1;
  v5 = 0x636E657265666572;
  v6 = 0xE900000000000065;
  if (v4 != 2)
  {
    v5 = 0x72656767697274;
    v6 = 0xE700000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x746567726174;
  if (!*a1)
  {
    v8 = 0x69746E4572657375;
    v7 = 0xEC00000073656974;
  }

  if (*a1 <= 1u)
  {
    v9 = v8;
  }

  else
  {
    v9 = v5;
  }

  if (v4 <= 1)
  {
    v10 = v7;
  }

  else
  {
    v10 = v6;
  }

  v11 = 0x636E657265666572;
  v12 = 0xE900000000000065;
  if (*a2 != 2)
  {
    v11 = 0x72656767697274;
    v12 = 0xE700000000000000;
  }

  if (*a2)
  {
    v3 = 0x746567726174;
    v2 = 0xE600000000000000;
  }

  if (*a2 <= 1u)
  {
    v13 = v3;
  }

  else
  {
    v13 = v11;
  }

  if (*a2 <= 1u)
  {
    v14 = v2;
  }

  else
  {
    v14 = v12;
  }

  if (v9 == v13 && v10 == v14)
  {
    v15 = 1;
  }

  else
  {
    v15 = _stringCompareWithSmolCheck(_:_:expecting:)();
  }

  return v15 & 1;
}

Swift::Int protocol witness for Hashable.hashValue.getter in conformance UsoTask.Arguments()
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

uint64_t protocol witness for Hashable.hash(into:) in conformance UsoTask.Arguments(uint64_t a1)
{
  String.hash(into:)();
}

Swift::Int protocol witness for Hashable._rawHashValue(seed:) in conformance UsoTask.Arguments(uint64_t a1)
{
  Hasher.init(_seed:)();
  String.hash(into:)();

  return Hasher._finalize()();
}

unint64_t protocol witness for RawRepresentable.init(rawValue:) in conformance UsoTask.Arguments@<X0>(Swift::String *a1@<X0>, _BYTE *a2@<X8>)
{
  result = specialized UsoTask.Arguments.init(rawValue:)(*a1);
  *a2 = result;
  return result;
}

void protocol witness for RawRepresentable.rawValue.getter in conformance UsoTask.Arguments(uint64_t *a1@<X8>)
{
  v2 = 0xEC00000073656974;
  v3 = 0x69746E4572657375;
  v4 = 0xE900000000000065;
  v5 = 0x636E657265666572;
  if (*v1 != 2)
  {
    v5 = 0x72656767697274;
    v4 = 0xE700000000000000;
  }

  if (*v1)
  {
    v3 = 0x746567726174;
    v2 = 0xE600000000000000;
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

void closure #1 in UsoTask.getArgumentsAsType<A>(arguments:asType:)(uint64_t *a1@<X0>, unsigned __int8 *a2@<X1>, uint64_t *a5@<X8>)
{
  v6 = *a1;
  v7 = *a2;
  v8 = UsoTask.arguments.getter();
  v9 = 0xEC00000073656974;
  v10 = 0x69746E4572657375;
  v11 = 0xE900000000000065;
  v12 = 0x636E657265666572;
  if (v7 != 2)
  {
    v12 = 0x72656767697274;
    v11 = 0xE700000000000000;
  }

  if (v7)
  {
    v10 = 0x746567726174;
    v9 = 0xE600000000000000;
  }

  if (v7 <= 1)
  {
    v13 = v10;
  }

  else
  {
    v13 = v12;
  }

  if (v7 <= 1)
  {
    v14 = v9;
  }

  else
  {
    v14 = v11;
  }

  if (*(v8 + 16))
  {
    v15 = specialized __RawDictionaryStorage.find<A>(_:)(v13, v14);
    v17 = v16;

    if (v17)
    {
      v18 = *(*(v8 + 56) + 8 * v15);

      v21[1] = v21;
      v21[3] = v18;
      MEMORY[0x28223BE20](v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology8UsoValueCGMd, &_sSay12SiriOntology8UsoValueCGMR);
      lazy protocol witness table accessor for type [DispatchWorkItemFlags] and conformance [A](&lazy protocol witness table cache variable for type [UsoValue] and conformance [A], &_sSay12SiriOntology8UsoValueCGMd, &_sSay12SiriOntology8UsoValueCGMR);
      Sequence.compactMap<A>(_:)();

      v20 = static Array.+ infix(_:_:)();

      *a5 = v20;
      return;
    }
  }

  else
  {
  }

  *a5 = v6;
}

uint64_t closure #1 in closure #1 in UsoTask.getArgumentsAsType<A>(arguments:asType:)@<X0>(void *a1@<X8>)
{
  dispatch thunk of UsoValue.getAsEntity()();
  static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

  *a1 = v3;
  return result;
}

uint64_t protocol witness for CustomStringConvertible.description.getter in conformance PommesUsoTask()
{
  v1 = *(v0 + 8);

  return v1;
}

unint64_t specialized UsoTask.Arguments.init(rawValue:)(Swift::String string)
{
  object = string._object;
  v2._countAndFlagsBits = string._countAndFlagsBits;
  v2._object = object;
  v3 = _findStringSwitchCase(cases:string:)(&outlined read-only object #0 of UsoTask.Arguments.init(rawValue:), v2);

  if (v3 >= 4)
  {
    return 4;
  }

  else
  {
    return v3;
  }
}

unint64_t lazy protocol witness table accessor for type UsoTask.Arguments and conformance UsoTask.Arguments()
{
  result = lazy protocol witness table cache variable for type UsoTask.Arguments and conformance UsoTask.Arguments;
  if (!lazy protocol witness table cache variable for type UsoTask.Arguments and conformance UsoTask.Arguments)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type UsoTask.Arguments and conformance UsoTask.Arguments);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for PommesUsoTask(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t storeEnumTagSinglePayload for PommesUsoTask(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

char *Apple_Parsec_Siri_V2alpha_AudioUnderstanding.librarySearchTerms.getter()
{
  v171 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LibrarySearchTerm();
  v159 = *(v171 - 8);
  MEMORY[0x28223BE20](v171);
  v161 = &v122 - ((v0 + 15) & 0xFFFFFFFFFFFFFFF0);
  v154 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgMR);
  v169 = *(v154 - 8);
  v1 = MEMORY[0x28223BE20](v154);
  v3 = &v122 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = MEMORY[0x28223BE20](v1);
  v167 = &v122 - v5;
  MEMORY[0x28223BE20](v4);
  v7 = &v122 - v6;
  v157 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v166 = *(v157 - 8);
  v8 = MEMORY[0x28223BE20](v157);
  v153 = &v122 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v8);
  v152 = &v122 - v11;
  v12 = MEMORY[0x28223BE20](v10);
  v146 = &v122 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v158 = &v122 - v15;
  MEMORY[0x28223BE20](v14);
  v125 = &v122 - v16;
  v170 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioRadioType();
  v17 = *(v170 - 8);
  MEMORY[0x28223BE20](v170);
  v19 = &v122 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioDecade();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v23 = &v122 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v168 = Apple_Parsec_Siri_V2alpha_AudioUnderstanding.entity.getter();
  v165 = v24;
  v127 = Apple_Parsec_Siri_V2alpha_AudioUnderstanding.musicTitle.getter();
  v126 = v25;
  v129 = Apple_Parsec_Siri_V2alpha_AudioUnderstanding.album.getter();
  v128 = v26;
  v132 = Apple_Parsec_Siri_V2alpha_AudioUnderstanding.artist.getter();
  v131 = v27;
  v134 = Apple_Parsec_Siri_V2alpha_AudioUnderstanding.podcastTitle.getter();
  v133 = v28;
  v29 = Apple_Parsec_Siri_V2alpha_AudioUnderstanding.playlistTitle.getter();
  v155 = v30;
  v156 = v29;
  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.decade.getter();
  v122 = Apple_Parsec_Siri_V2alpha_AudioDecade.toString.getter();
  v135 = v31;
  (*(v21 + 8))(v23, v20);
  v172 = Apple_Parsec_Siri_V2alpha_AudioUnderstanding.activity.getter();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySSGMd, &_sSaySSGMR);
  lazy protocol witness table accessor for type [String] and conformance [A]();
  v137 = BidirectionalCollection<>.joined(separator:)();
  v136 = v32;

  v172 = Apple_Parsec_Siri_V2alpha_AudioUnderstanding.genre.getter();
  v139 = BidirectionalCollection<>.joined(separator:)();
  v138 = v33;

  v172 = Apple_Parsec_Siri_V2alpha_AudioUnderstanding.mood.getter();
  v141 = BidirectionalCollection<>.joined(separator:)();
  v140 = v34;

  v143 = Apple_Parsec_Siri_V2alpha_AudioUnderstanding.audiobookAuthor.getter();
  v142 = v35;
  v145 = Apple_Parsec_Siri_V2alpha_AudioUnderstanding.audiobookTitle.getter();
  v144 = v36;
  v148 = Apple_Parsec_Siri_V2alpha_AudioUnderstanding.radioStationName.getter();
  v147 = v37;
  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.radioStationFrequency.getter();
  v38 = 0;
  v39 = 0;
  if (v40 >= 0.01)
  {
    Apple_Parsec_Siri_V2alpha_AudioUnderstanding.radioStationFrequency.getter();
    v38 = Double.description.getter();
  }

  v149 = v39;
  v123 = v38;
  Apple_Parsec_Siri_V2alpha_AudioUnderstanding.audioRadioType.getter();
  v124 = Apple_Parsec_Siri_V2alpha_AudioRadioType.toString.getter();
  v150 = v41;
  (*(v17 + 8))(v19, v170);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgGMR);
  v170 = v169[9];
  v42 = (*(v169 + 80) + 32) & ~*(v169 + 80);
  v151 = swift_allocObject();
  v43 = v151 + v42;
  v44 = *MEMORY[0x277D39518];
  v45 = v166;
  v46 = v166 + 104;
  v160 = *(v166 + 104);
  v47 = v125;
  v130 = v44;
  v48 = v157;
  v160(v125);
  v162 = v46;
  Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
  v49 = *(v45 + 16);
  v163 = v45 + 16;
  v164 = v49;
  v50 = v158;
  (v49)(v158, v47, v48);
  MEMORY[0x223DDAEB0](v50);
  MEMORY[0x223DDAED0](v168, v165);
  Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
  v51 = *(v159 + 56);
  v168 = v159 + 56;
  v169 = v51;
  (v51)(v43, 0, 1, v171);
  v165 = *(v45 + 8);
  v165(v47, v48);
  v166 = v45 + 8;
  v52 = v160;
  (v160)(v47, *MEMORY[0x277D394D8], v48);
  v53 = v170;
  Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
  (v164)(v50, v47, v48);
  MEMORY[0x223DDAEB0](v50);
  MEMORY[0x223DDAED0](v127, v126);
  Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
  v54 = v43 + v53;
  v55 = v53;
  v56 = v169;
  (v169)(v54, 0, 1, v171);
  v57 = v165;
  v165(v47, v48);
  (v52)(v47, *MEMORY[0x277D394E0], v48);
  Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
  v58 = v158;
  (v164)(v158, v47, v48);
  MEMORY[0x223DDAEB0](v58);
  MEMORY[0x223DDAED0](v129, v128);
  Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
  v56(v43 + 2 * v55, 0, 1, v171);
  v57(v47, v48);
  v59 = 2 * v55 + v170;
  LODWORD(v129) = *MEMORY[0x277D39500];
  v160(v47);
  Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
  v60 = v158;
  (v164)(v158, v47, v48);
  MEMORY[0x223DDAEB0](v60);
  MEMORY[0x223DDAED0](v132, v131);
  Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
  (v169)(v43 + v59, 0, 1, v171);
  v165(v47, v48);
  v61 = 4 * v170;
  (v160)(v47, *MEMORY[0x277D39488], v48);
  Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
  v62 = v158;
  (v164)(v158, v47, v48);
  MEMORY[0x223DDAEB0](v62);
  MEMORY[0x223DDAED0](v134, v133);
  Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
  v63 = v171;
  (v169)(v43 + v61, 0, 1, v171);
  v165(v47, v48);
  v64 = v61 + v170;
  (v160)(v47, *MEMORY[0x277D39520], v48);
  Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
  (v164)(v62, v47, v48);
  MEMORY[0x223DDAEB0](v62);
  MEMORY[0x223DDAED0](v156, v155);
  Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
  (v169)(v43 + v64, 0, 1, v63);
  v165(v47, v48);
  v156 = v43;
  v65 = v43 + 6 * v170;
  v66 = v146;
  LODWORD(v155) = *MEMORY[0x277D394E8];
  v160(v146);
  v67 = v135;
  if (v135)
  {
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    (v164)(v47, v66, v48);
    MEMORY[0x223DDAEB0](v47);
    MEMORY[0x223DDAED0](v122, v67);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v68 = 0;
    v69 = v47;
  }

  else
  {
    v69 = v47;
    v68 = 1;
  }

  v70 = v171;
  (v169)(v65, v68, 1, v171);
  v165(v66, v48);
  v71 = 8 * v170;
  v72 = 7 * v170;
  (v160)(v69, v130, v48);
  v73 = v156;
  Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
  v74 = v158;
  v164();
  MEMORY[0x223DDAEB0](v74);
  MEMORY[0x223DDAED0](v137, v136);
  Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
  (v169)(v73 + v72, 0, 1, v70);
  v165(v69, v48);
  v75 = v160;
  (v160)(v69, v155, v48);
  Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
  (v164)(v74, v69, v48);
  v76 = v74;
  v77 = v48;
  MEMORY[0x223DDAEB0](v76);
  MEMORY[0x223DDAED0](v139, v138);
  Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
  (v169)(v73 + v71, 0, 1, v171);
  v165(v69, v48);
  v78 = v71 + v170;
  (v75)(v69, v155, v48);
  Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
  v79 = v158;
  (v164)(v158, v69, v48);
  v80 = v79;
  MEMORY[0x223DDAEB0](v79);
  MEMORY[0x223DDAED0](v141, v140);
  Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
  v81 = v171;
  (v169)(v73 + v78, 0, 1, v171);
  v165(v69, v48);
  v82 = v170;
  (v160)(v69, v129, v48);
  Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
  v83 = v80;
  (v164)(v80, v69, v77);
  v84 = v80;
  v85 = v77;
  MEMORY[0x223DDAEB0](v84);
  MEMORY[0x223DDAED0](v143, v142);
  Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
  (v169)(v73 + 10 * v82, 0, 1, v81);
  v165(v69, v77);
  v86 = v73 + 11 * v82;
  v87 = v160;
  (v160)(v69, *MEMORY[0x277D39528], v77);
  Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
  (v164)(v83, v69, v77);
  MEMORY[0x223DDAEB0](v83);
  MEMORY[0x223DDAED0](v145, v144);
  Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
  (v169)(v86, 0, 1, v171);
  v165(v69, v77);
  v88 = v73 + 12 * v170;
  v89 = *MEMORY[0x277D394A0];
  v87(v69, v89, v85);
  Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
  v90 = v164;
  (v164)(v83, v69, v85);
  MEMORY[0x223DDAEB0](v83);
  MEMORY[0x223DDAED0](v148, v147);
  Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
  (v169)(v88, 0, 1, v171);
  v165(v69, v85);
  v91 = v73 + 13 * v170;
  v92 = v152;
  LODWORD(v158) = v89;
  v87(v152, v89, v85);
  v93 = v69;
  v94 = v149;
  if (v149)
  {
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    (v90)(v69, v92, v157);
    MEMORY[0x223DDAEB0](v69);
    MEMORY[0x223DDAED0](v123, v94);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v95 = 0;
    v96 = v153;
  }

  else
  {
    v96 = v153;
    v95 = 1;
  }

  v97 = 1;
  (v169)(v91, v95, 1, v171);
  v98 = v157;
  v165(v92, v157);
  v99 = v156 + 14 * v170;
  (v160)(v96, v158, v98);
  v100 = v150;
  if (v150)
  {
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    (v164)(v93, v96, v157);
    MEMORY[0x223DDAEB0](v93);
    MEMORY[0x223DDAED0](v124, v100);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v97 = 0;
  }

  v101 = v99;
  v102 = v171;
  (v169)(v101, v97, 1, v171);
  v165(v96, v157);
  v103 = (v159 + 48);
  v104 = (v159 + 8);
  v166 = v159 + 32;
  v105 = MEMORY[0x277D84F90];
  v106 = 15;
  v107 = v156;
  v108 = v167;
  do
  {
    outlined init with copy of Apple_Parsec_Siri_V2alpha_LibrarySearchTerm?(v107, v7);
    outlined init with copy of Apple_Parsec_Siri_V2alpha_LibrarySearchTerm?(v7, v3);
    v110 = *v103;
    if ((*v103)(v3, 1, v102) == 1)
    {
      outlined destroy of Apple_Parsec_Siri_V2alpha_LibrarySearchTerm?(v7);
      v109 = v3;
LABEL_13:
      outlined destroy of Apple_Parsec_Siri_V2alpha_LibrarySearchTerm?(v109);
      (v169)(v108, 1, 1, v102);
LABEL_14:
      outlined destroy of Apple_Parsec_Siri_V2alpha_LibrarySearchTerm?(v108);
      goto LABEL_15;
    }

    v111 = MEMORY[0x223DDAEC0]();
    v113 = v112;
    (*v104)(v3, v171);

    v114 = HIBYTE(v113) & 0xF;
    v115 = v111 & 0xFFFFFFFFFFFFLL;
    v102 = v171;
    v116 = (v113 & 0x2000000000000000) == 0;
    v108 = v167;
    if (v116)
    {
      v114 = v115;
    }

    v109 = v7;
    if (!v114)
    {
      goto LABEL_13;
    }

    outlined init with take of Apple_Parsec_Siri_V2alpha_LibrarySearchTerm?(v7, v167);
    if (v110(v108, 1, v102) == 1)
    {
      goto LABEL_14;
    }

    v117 = v108;
    v118 = *v166;
    (*v166)(v161, v117, v102);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v105 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v105 + 2) + 1, 1, v105);
    }

    v120 = *(v105 + 2);
    v119 = *(v105 + 3);
    if (v120 >= v119 >> 1)
    {
      v105 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v119 > 1), v120 + 1, 1, v105);
    }

    *(v105 + 2) = v120 + 1;
    v102 = v171;
    v118(&v105[((*(v159 + 80) + 32) & ~*(v159 + 80)) + *(v159 + 72) * v120], v161, v171);
    v108 = v167;
LABEL_15:
    v107 += v170;
    --v106;
  }

  while (v106);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v105;
}

char *static Apple_Parsec_Siri_V2alpha_AudioUnderstanding.makeLibrarySearchTerms(entity:musicTitle:album:artist:podcastTitle:playlistTitle:decade:activity:genre:mood:audiobookAuthor:audiobookTitle:radioStationName:radioStationFrequency:audioRadioType:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, char *a14, uint64_t a15, char *a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, char *a22, uint64_t a23, uint64_t a24, uint64_t a25, char *a26, uint64_t a27, char *a28, uint64_t a29, char *a30)
{
  v175 = a8;
  v170 = a7;
  v176 = a6;
  v169 = a5;
  v172 = a4;
  v168 = a3;
  v201 = a1;
  v202 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LibrarySearchTerm();
  v192 = *(v202 - 8);
  MEMORY[0x28223BE20](v202);
  v193 = &v167 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgMR);
  v32 = *(v187 - 8);
  v33 = MEMORY[0x28223BE20](v187);
  v35 = &v167 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v36 = MEMORY[0x28223BE20](v33);
  v199 = &v167 - v37;
  MEMORY[0x28223BE20](v36);
  v203 = &v167 - v38;
  v39 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v40 = *(v39 - 8);
  v41 = MEMORY[0x28223BE20](v39);
  v185 = &v167 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = MEMORY[0x28223BE20](v41);
  v184 = &v167 - v44;
  v45 = MEMORY[0x28223BE20](v43);
  v183 = &v167 - v46;
  v47 = MEMORY[0x28223BE20](v45);
  v182 = &v167 - v48;
  v49 = MEMORY[0x28223BE20](v47);
  v181 = &v167 - v50;
  v51 = MEMORY[0x28223BE20](v49);
  v188 = &v167 - v52;
  v53 = MEMORY[0x28223BE20](v51);
  v180 = &v167 - v54;
  v55 = MEMORY[0x28223BE20](v53);
  v179 = &v167 - v56;
  v57 = MEMORY[0x28223BE20](v55);
  v177 = &v167 - v58;
  v59 = MEMORY[0x28223BE20](v57);
  v174 = &v167 - v60;
  v61 = MEMORY[0x28223BE20](v59);
  v173 = &v167 - v62;
  v63 = MEMORY[0x28223BE20](v61);
  v190 = &v167 - v64;
  v65 = MEMORY[0x28223BE20](v63);
  v171 = &v167 - v66;
  v67 = MEMORY[0x28223BE20](v65);
  v69 = &v167 - v68;
  v70 = MEMORY[0x28223BE20](v67);
  v72 = &v167 - v71;
  MEMORY[0x28223BE20](v70);
  v74 = &v167 - v73;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgGMR);
  v75 = v40;
  v76 = (*(v32 + 80) + 32) & ~*(v32 + 80);
  v194 = *(v32 + 72);
  v186 = swift_allocObject();
  v77 = v186 + v76;
  v78 = *(v75 + 104);
  LODWORD(v178) = *MEMORY[0x277D39518];
  v197 = v78;
  v198 = (v75 + 104);
  v78(v74);
  if (a2)
  {

    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    (*(v75 + 16))(v72, v74, v39);
    MEMORY[0x223DDAEB0](v72);
    MEMORY[0x223DDAED0](v201, a2);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v79 = 0;
  }

  else
  {
    v79 = 1;
  }

  v80 = v72;
  v81 = 1;
  v200 = *(v192 + 56);
  v201 = v192 + 56;
  v200(v77, v79, 1, v202);
  v195 = *(v75 + 8);
  v196 = v75 + 8;
  v195(v74, v39);
  (v197)(v69, *MEMORY[0x277D394D8], v39);
  v82 = v172;
  if (v172)
  {

    v83 = v194;
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    (*(v75 + 16))(v72, v69, v39);
    MEMORY[0x223DDAEB0](v72);
    MEMORY[0x223DDAED0](v168, v82);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v81 = 0;
  }

  else
  {
    v83 = v194;
  }

  v84 = v190;
  v85 = 1;
  v200(v77 + v83, v81, 1, v202);
  v195(v69, v39);
  v86 = v77 + 2 * v83;
  v87 = v171;
  (v197)(v171, *MEMORY[0x277D394E0], v39);
  v190 = v80;
  v191 = v75;
  v88 = v176;
  if (v176)
  {

    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    (*(v75 + 16))(v80, v87, v39);
    MEMORY[0x223DDAEB0](v80);
    MEMORY[0x223DDAED0](v169, v88);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v85 = 0;
  }

  v89 = 1;
  v90 = v202;
  v200(v86, v85, 1, v202);
  v195(v87, v39);
  v91 = 3 * v194;
  LODWORD(v176) = *MEMORY[0x277D39500];
  v197(v84);
  v92 = v175;
  if (v175)
  {

    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    v93 = v190;
    (*(v191 + 16))(v190, v84, v39);
    MEMORY[0x223DDAEB0](v93);
    MEMORY[0x223DDAED0](v170, v92);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v90 = v202;
    v89 = 0;
  }

  v175 = a12;
  v94 = 1;
  v200(v77 + v91, v89, 1, v90);
  v195(v84, v39);
  v95 = v77 + 4 * v194;
  v96 = v173;
  (v197)(v173, *MEMORY[0x277D39488], v39);
  if (a10)
  {

    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    v97 = v190;
    v98 = v191;
    (*(v191 + 16))(v190, v96, v39);
    MEMORY[0x223DDAEB0](v97);
    MEMORY[0x223DDAED0](a9, a10);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v94 = 0;
  }

  else
  {
    v98 = v191;
  }

  v99 = v96;
  v100 = v174;
  v174 = a14;
  v101 = 1;
  v102 = v202;
  v200(v95, v94, 1, v202);
  v195(v99, v39);
  v103 = 5 * v194;
  (v197)(v100, *MEMORY[0x277D39520], v39);
  if (v175)
  {
    v104 = v175;

    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    v105 = v190;
    (*(v98 + 16))(v190, v100, v39);
    MEMORY[0x223DDAEB0](v105);
    MEMORY[0x223DDAED0](a11, v104);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v102 = v202;
    v101 = 0;
  }

  v173 = a16;
  v106 = 1;
  v200(v77 + v103, v101, 1, v102);
  v195(v100, v39);
  v107 = v77 + 6 * v194;
  v108 = v177;
  LODWORD(v175) = *MEMORY[0x277D394E8];
  v197(v177);
  v109 = v174;
  if (v174)
  {

    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    v110 = v190;
    (*(v98 + 16))(v190, v108, v39);
    MEMORY[0x223DDAEB0](v110);
    MEMORY[0x223DDAED0](a13, v109);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v106 = 0;
  }

  else
  {
    v110 = v190;
  }

  v111 = 1;
  v200(v107, v106, 1, v202);
  v195(v108, v39);
  v112 = v77 - v194 + 8 * v194;
  v113 = v179;
  (v197)(v179, v178, v39);
  v114 = v173;
  if (v173)
  {

    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    (*(v191 + 16))(v110, v113, v39);
    MEMORY[0x223DDAEB0](v110);
    MEMORY[0x223DDAED0](a15, v114);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v111 = 0;
  }

  v178 = a20;
  v115 = 1;
  v200(v112, v111, 1, v202);
  v195(v113, v39);
  v116 = v77 + 8 * v194;
  v117 = v180;
  v118 = v175;
  (v197)(v180, v175, v39);
  if (a18)
  {

    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    (*(v191 + 16))(v110, v117, v39);
    MEMORY[0x223DDAEB0](v110);
    MEMORY[0x223DDAED0](a17, a18);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v115 = 0;
  }

  v179 = a22;
  v119 = 1;
  v120 = v202;
  v200(v116, v115, 1, v202);
  v195(v117, v39);
  v121 = 9 * v194;
  v122 = v188;
  (v197)(v188, v118, v39);
  v123 = v178;
  if (v178)
  {

    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    v124 = v190;
    (*(v191 + 16))(v190, v122, v39);
    MEMORY[0x223DDAEB0](v124);
    MEMORY[0x223DDAED0](a19, v123);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v122 = v188;
    v120 = v202;
    v119 = 0;
  }

  v125 = 1;
  v200(v77 + v121, v119, 1, v120);
  v195(v122, v39);
  v126 = v77 + 10 * v194;
  v127 = v181;
  (v197)(v181, v176, v39);
  v128 = v179;
  if (v179)
  {

    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    v129 = v190;
    (*(v191 + 16))(v190, v127, v39);
    MEMORY[0x223DDAEB0](v129);
    MEMORY[0x223DDAED0](a21, v128);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v125 = 0;
  }

  else
  {
    v129 = v190;
  }

  v130 = v182;
  v188 = a26;
  v131 = 1;
  v200(v126, v125, 1, v202);
  v195(v127, v39);
  v132 = v194;
  (v197)(v130, *MEMORY[0x277D39528], v39);
  if (a24)
  {

    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    (*(v191 + 16))(v129, v130, v39);
    MEMORY[0x223DDAEB0](v129);
    MEMORY[0x223DDAED0](a23, a24);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v131 = 0;
  }

  v182 = a28;
  v133 = 1;
  v200(v77 + 11 * v132, v131, 1, v202);
  v195(v130, v39);
  v134 = v77 + 12 * v132;
  v135 = *MEMORY[0x277D394A0];
  v136 = v183;
  (v197)(v183, v135, v39);
  v137 = v188;
  if (v188)
  {

    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    (*(v191 + 16))(v129, v136, v39);
    MEMORY[0x223DDAEB0](v129);
    MEMORY[0x223DDAED0](a25, v137);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v133 = 0;
  }

  v188 = a30;
  v138 = 1;
  v200(v134, v133, 1, v202);
  v195(v136, v39);
  v139 = v194;
  v140 = v184;
  (v197)(v184, v135, v39);
  v141 = v182;
  if (v182)
  {

    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    (*(v191 + 16))(v129, v140, v39);
    MEMORY[0x223DDAEB0](v129);
    MEMORY[0x223DDAED0](a27, v141);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v138 = 0;
  }

  v142 = 1;
  v200(v77 + 13 * v139, v138, 1, v202);
  v195(v140, v39);
  v143 = v185;
  (v197)(v185, v135, v39);
  v144 = v188;
  v189 = v77;
  if (v188)
  {
    v145 = v191;

    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.init()();
    v146 = v190;
    (*(v145 + 16))(v190, v143, v39);
    MEMORY[0x223DDAEB0](v146);
    MEMORY[0x223DDAED0](a29, v144);
    Apple_Parsec_Siri_V2alpha_LibrarySearchTerm.rankingOnly.setter();
    v142 = 0;
  }

  v147 = v199;
  v148 = v202;
  v200(v77 + 14 * v139, v142, 1, v202);
  v195(v143, v39);
  v149 = (v192 + 48);
  v150 = (v192 + 8);
  v198 = (v192 + 32);
  v151 = MEMORY[0x277D84F90];
  v152 = 15;
  v153 = v189;
  do
  {
    v154 = v203;
    outlined init with copy of Apple_Parsec_Siri_V2alpha_LibrarySearchTerm?(v153, v203);
    outlined init with copy of Apple_Parsec_Siri_V2alpha_LibrarySearchTerm?(v154, v35);
    v155 = *v149;
    if ((*v149)(v35, 1, v148) == 1)
    {
      outlined destroy of Apple_Parsec_Siri_V2alpha_LibrarySearchTerm?(v35);
LABEL_38:
      outlined destroy of Apple_Parsec_Siri_V2alpha_LibrarySearchTerm?(v203);
      v200(v147, 1, 1, v148);
LABEL_39:
      outlined destroy of Apple_Parsec_Siri_V2alpha_LibrarySearchTerm?(v147);
      goto LABEL_40;
    }

    v156 = MEMORY[0x223DDAEC0]();
    v158 = v157;
    (*v150)(v35, v202);

    v159 = HIBYTE(v158) & 0xF;
    v160 = v156 & 0xFFFFFFFFFFFFLL;
    v148 = v202;
    v161 = (v158 & 0x2000000000000000) == 0;
    v147 = v199;
    if (v161)
    {
      v159 = v160;
    }

    if (!v159)
    {
      goto LABEL_38;
    }

    outlined init with take of Apple_Parsec_Siri_V2alpha_LibrarySearchTerm?(v203, v199);
    if (v155(v147, 1, v148) == 1)
    {
      goto LABEL_39;
    }

    v162 = v147;
    v163 = *v198;
    (*v198)(v193, v162, v148);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v151 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v151 + 2) + 1, 1, v151);
    }

    v165 = *(v151 + 2);
    v164 = *(v151 + 3);
    if (v165 >= v164 >> 1)
    {
      v151 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v164 > 1), v165 + 1, 1, v151);
    }

    *(v151 + 2) = v165 + 1;
    v148 = v202;
    v163(&v151[((*(v192 + 80) + 32) & ~*(v192 + 80)) + *(v192 + 72) * v165], v193, v202);
    v147 = v199;
LABEL_40:
    v153 += v139;
    --v152;
  }

  while (v152);
  swift_setDeallocating();
  swift_arrayDestroy();
  swift_deallocClassInstance();
  return v151;
}

uint64_t outlined init with copy of Apple_Parsec_Siri_V2alpha_LibrarySearchTerm?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t outlined destroy of Apple_Parsec_Siri_V2alpha_LibrarySearchTerm?(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgMR);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t outlined init with take of Apple_Parsec_Siri_V2alpha_LibrarySearchTerm?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgMd, &_s10PegasusAPI43Apple_Parsec_Siri_V2alpha_LibrarySearchTermVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

Swift::Bool __swiftcall AudioIntent.hasResolvedReference()()
{
  v1 = (*(v0 + 256))();
  if (v1)
  {
  }

  return v1 != 0;
}

Swift::Bool __swiftcall AudioIntent.isReferringToCurrentlyPlayingForAdd()()
{
  v2 = v1;
  v3 = v0;
  v4 = (*(v1 + 280))();
  if (v4 == 17)
  {
    return 0;
  }

  if (CommonAudio.Verb.rawValue.getter(v4) == 0x657461647075 && v6 == 0xE600000000000000)
  {
  }

  else
  {
    v8 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v8 & 1) == 0)
    {
      return 0;
    }
  }

  if ((*(v2 + 256))(v3, v2))
  {

    if (AudioIntent.isWithoutTitlesAndArtist()())
    {
      return 1;
    }
  }

  return AudioIntent.isWithoutTitlesAndArtistAndGenre()();
}

Swift::Bool __swiftcall AudioIntent.isWithoutTitlesAndArtist()()
{
  v2 = v1;
  v3 = v0;
  v4 = *((*(v1 + 136))() + 16);

  if (v4)
  {
    return 0;
  }

  v5 = *(v2[25](v3, v2) + 16);

  if (v5)
  {
    return 0;
  }

  v6 = *(v2[12](v3, v2) + 16);

  if (v6)
  {
    return 0;
  }

  v8 = *(v2[2](v3, v2) + 16);

  return v8 == 0;
}

Swift::Bool __swiftcall AudioIntent.isWithoutTitlesAndArtistAndGenre()()
{
  v2 = v1;
  v3 = v0;
  if (AudioIntent.isWithoutTitlesAndArtist()())
  {
    v4 = *((*(v2 + 152))(v3, v2) + 16);

    if (!v4)
    {
      v7 = (*(v2 + 168))(v3, v2);
      if (v7 == 28)
      {
        v5 = 1;
        return v5 & 1;
      }

      if (CommonAudio.MediaType.rawValue.getter(v7) != 0x65726E6567 || v8 != 0xE500000000000000)
      {
        v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

        v5 = v10 ^ 1;
        return v5 & 1;
      }
    }
  }

  v5 = 0;
  return v5 & 1;
}

Swift::Bool __swiftcall AudioIntent.isBeats1Only()()
{
  if (AudioIntent.hasBeats1ItemOrRadioStationNameOnly()())
  {
    return 1;
  }

  return AudioIntent.hasBeats1NounOnly()();
}

Swift::Bool __swiftcall AudioIntent.hasBeats1ItemOrRadioStationNameOnly()()
{
  v2 = v1;
  v3 = v0;
  v4 = (*(v1 + 136))();
  if (v4[2])
  {
    v6 = v4[4];
    v5 = v4[5];
  }

  else
  {
    v6 = 0;
    v5 = 0xE000000000000000;
  }

  v7 = (*(v2 + 232))(v3, v2);
  if (v7[2])
  {
    v9 = v7[4];
    v8 = v7[5];
  }

  else
  {
    v9 = 0;
    v8 = 0xE000000000000000;
  }

  v10 = v5 & 0x2000000000000000;
  v11 = HIBYTE(v5) & 0xF;
  v12 = v6 & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v13 = HIBYTE(v5) & 0xF;
  }

  else
  {
    v13 = v6 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
  }

  else
  {

    v10 = v8 & 0x2000000000000000;
    v11 = HIBYTE(v8) & 0xF;
    v12 = v9 & 0xFFFFFFFFFFFFLL;
  }

  if (v10)
  {
    v14 = v11;
  }

  else
  {
    v14 = v12;
  }

  if (v14)
  {
    v15 = String.lowercased()();

    v16 = String.lowercased()();
    if (v15._countAndFlagsBits == v16._countAndFlagsBits && v15._object == v16._object)
    {
      v17 = 1;
    }

    else
    {
      v17 = _stringCompareWithSmolCheck(_:_:expecting:)();
    }
  }

  else
  {
    v17 = 0;
  }

  return v17 & 1;
}

Swift::Bool __swiftcall AudioIntent.hasBeats1NounOnly()()
{
  v2 = v1;
  v3 = v0;
  v4 = (*(v1 + 136))();
  if (v4[2])
  {
    v6 = v4[4];
    v5 = v4[5];

    v7 = v6 & 0xFFFFFFFFFFFFLL;
  }

  else
  {

    v7 = 0;
    v5 = 0xE000000000000000;
  }

  v8 = HIBYTE(v5) & 0xF;
  if ((v5 & 0x2000000000000000) == 0)
  {
    v8 = v7;
  }

  if (v8)
  {
    goto LABEL_7;
  }

  v10 = (*(v2 + 208))(v3, v2);
  if (v10 <= 1)
  {
    if (v10)
    {
      v9 = 1;
      goto LABEL_14;
    }

LABEL_12:
    v9 = _stringCompareWithSmolCheck(_:_:expecting:)();
LABEL_14:

    return v9 & 1;
  }

  if (v10 == 2)
  {
    goto LABEL_12;
  }

LABEL_7:
  v9 = 0;
  return v9 & 1;
}

Swift::Bool __swiftcall AudioIntent.isAddToUpNext()()
{
  v2 = v1;
  v3 = v0;
  v4 = *(v1 + 280);
  v5 = v4();
  if (v5 != 17)
  {
    if (CommonAudio.Verb.rawValue.getter(v5) == 2036427888 && v8 == 0xE400000000000000)
    {
LABEL_16:

      goto LABEL_17;
    }

    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if (v10)
    {
      goto LABEL_17;
    }
  }

  v6 = (v4)(v3, v2);
  if (v6 == 17)
  {
    return 0;
  }

  if (CommonAudio.Verb.rawValue.getter(v6) == 0x657461647075 && v11 == 0xE600000000000000)
  {
    goto LABEL_16;
  }

  v13 = _stringCompareWithSmolCheck(_:_:expecting:)();

  if ((v13 & 1) == 0)
  {
    return 0;
  }

LABEL_17:
  v14 = (*(v2 + 104))(v3, v2);
  v15 = specialized Set.contains(_:)(3, v14);

  return v15 & 1;
}

Swift::Bool __swiftcall AudioIntent.hasAttribute(_:)(SiriInformationSearch::CommonAudio::Attribute a1)
{
  v2 = a1;
  v3 = (*(v1 + 104))();
  LOBYTE(v2) = specialized Set.contains(_:)(v2, v3);

  return v2 & 1;
}

BOOL AudioIntent.hasAnyAttribute(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = (*(a3 + 104))(a2, a3);
  specialized Set.isDisjoint(with:)(a1, v4);
  LOBYTE(a1) = v5;

  return (a1 & 1) == 0;
}

void specialized Set.isDisjoint(with:)(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (v2)
  {
    v3 = *(a1 + 16);
    if (v3)
    {
      if (v2 >= v3)
      {
        v4 = a1;
      }

      else
      {
        v4 = a2;
      }

      if (v2 >= v3)
      {
        v5 = a2;
      }

      else
      {
        v5 = a1;
      }

      v6 = v4 + 56;
      v7 = 1 << *(v4 + 32);
      if (v7 < 64)
      {
        v8 = ~(-1 << v7);
      }

      else
      {
        v8 = -1;
      }

      v9 = v8 & *(v4 + 56);
      v10 = (v7 + 63) >> 6;
      v29 = v5 + 56;

      v11 = 0;
      while (v9)
      {
        v12 = v9;
LABEL_19:
        v9 = (v12 - 1) & v12;
        if (*(v5 + 16))
        {
          v14 = *(*(v4 + 48) + (__clz(__rbit64(v12)) | (v11 << 6)));
          Hasher.init(_seed:)();
          v28 = v14;
          String.hash(into:)();

          v15 = Hasher._finalize()();
          v16 = -1 << *(v5 + 32);
          v17 = v15 & ~v16;
          if ((*(v29 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
          {
            v26 = v9;
            v27 = v4;
            v18 = ~v16;
            while (2)
            {
              v19 = 0xEA00000000007473;
              v20 = 0x697472416D6F7266;
              switch(*(*(v5 + 48) + v17))
              {
                case 1:
                  v19 = 0xE800000000000000;
                  v20 = 0x676E6F536D6F7266;
                  break;
                case 2:
                  v20 = 0x75626C416D6F7266;
                  v19 = 0xE90000000000006DLL;
                  break;
                case 3:
                  v19 = 0xE800000000000000;
                  v20 = 0x7478654E79616C70;
                  break;
                case 4:
                  v19 = 0xE700000000000000;
                  v20 = 0x776F4E79616C70;
                  break;
                case 5:
                  v19 = 0xE800000000000000;
                  v20 = 0x7473614C79616C70;
                  break;
                case 6:
                  v19 = 0xE800000000000000;
                  v20 = 0x7974696E69666661;
                  break;
                case 7:
                  v20 = 0x6E656D6D6F636572;
                  v19 = 0xEB00000000646564;
                  break;
                case 8:
                  v19 = 0xE900000000000079;
                  v20 = 0x7265766F63736964;
                  break;
                case 9:
                  v20 = 0xD000000000000018;
                  v19 = 0x80000002234D9AC0;
                  break;
                case 0xA:
                  v19 = 0xE400000000000000;
                  v20 = 1954047342;
                  break;
                case 0xB:
                  v19 = 0xE500000000000000;
                  v20 = 0x64656D616ELL;
                  break;
                case 0xC:
                  v19 = 0xE800000000000000;
                  v20 = 0x73756F6976657270;
                  break;
                case 0xD:
                  v20 = 0x44657361656C6572;
                  v19 = 0xEB00000000657461;
                  break;
                case 0xE:
                  v19 = 0xE800000000000000;
                  v20 = 0x6E6F697461727564;
                  break;
                default:
                  break;
              }

              v21 = 0x697472416D6F7266;
              v22 = 0xEA00000000007473;
              switch(v28)
              {
                case 1:
                  v22 = 0xE800000000000000;
                  if (v20 == 0x676E6F536D6F7266)
                  {
                    goto LABEL_64;
                  }

                  goto LABEL_65;
                case 2:
                  v22 = 0xE90000000000006DLL;
                  if (v20 != 0x75626C416D6F7266)
                  {
                    goto LABEL_65;
                  }

                  goto LABEL_64;
                case 3:
                  v22 = 0xE800000000000000;
                  if (v20 != 0x7478654E79616C70)
                  {
                    goto LABEL_65;
                  }

                  goto LABEL_64;
                case 4:
                  v22 = 0xE700000000000000;
                  if (v20 != 0x776F4E79616C70)
                  {
                    goto LABEL_65;
                  }

                  goto LABEL_64;
                case 5:
                  v22 = 0xE800000000000000;
                  if (v20 != 0x7473614C79616C70)
                  {
                    goto LABEL_65;
                  }

                  goto LABEL_64;
                case 6:
                  v22 = 0xE800000000000000;
                  if (v20 != 0x7974696E69666661)
                  {
                    goto LABEL_65;
                  }

                  goto LABEL_64;
                case 7:
                  v23 = 0x6E656D6D6F636572;
                  v24 = 6579556;
                  goto LABEL_58;
                case 8:
                  v22 = 0xE900000000000079;
                  if (v20 != 0x7265766F63736964)
                  {
                    goto LABEL_65;
                  }

                  goto LABEL_64;
                case 9:
                  v22 = 0x80000002234D9AC0;
                  if (v20 != 0xD000000000000018)
                  {
                    goto LABEL_65;
                  }

                  goto LABEL_64;
                case 10:
                  v22 = 0xE400000000000000;
                  v21 = 1954047342;
                  goto LABEL_63;
                case 11:
                  v22 = 0xE500000000000000;
                  if (v20 != 0x64656D616ELL)
                  {
                    goto LABEL_65;
                  }

                  goto LABEL_64;
                case 12:
                  v22 = 0xE800000000000000;
                  if (v20 != 0x73756F6976657270)
                  {
                    goto LABEL_65;
                  }

                  goto LABEL_64;
                case 13:
                  v23 = 0x44657361656C6572;
                  v24 = 6648929;
LABEL_58:
                  v22 = v24 & 0xFFFFFFFFFFFFLL | 0xEB00000000000000;
                  if (v20 != v23)
                  {
                    goto LABEL_65;
                  }

                  goto LABEL_64;
                case 14:
                  v22 = 0xE800000000000000;
                  if (v20 != 0x6E6F697461727564)
                  {
                    goto LABEL_65;
                  }

                  goto LABEL_64;
                default:
LABEL_63:
                  if (v20 != v21)
                  {
                    goto LABEL_65;
                  }

LABEL_64:
                  if (v19 == v22)
                  {

                    return;
                  }

LABEL_65:
                  v25 = _stringCompareWithSmolCheck(_:_:expecting:)();

                  if (v25)
                  {

                    return;
                  }

                  v17 = (v17 + 1) & v18;
                  if ((*(v29 + ((v17 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v17))
                  {
                    continue;
                  }

                  v9 = v26;
                  v4 = v27;
                  break;
              }

              break;
            }
          }
        }
      }

      while (1)
      {
        v13 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v13 >= v10)
        {

          return;
        }

        v12 = *(v6 + 8 * v13);
        ++v11;
        if (v12)
        {
          v11 = v13;
          goto LABEL_19;
        }
      }

      __break(1u);
    }
  }
}

uint64_t DomainWarmup.__allocating_init(warmupClients:)(uint64_t a1)
{
  v2 = swift_allocObject();
  DomainWarmup.init(warmupClients:)(a1);
  return v2;
}