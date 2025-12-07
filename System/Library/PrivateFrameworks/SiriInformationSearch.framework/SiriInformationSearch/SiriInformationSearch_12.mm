uint64_t specialized PommesBridgeRequestProcessor.updatePSCParseForFallback(prState:)(uint64_t a1)
{
  v117 = 0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v94 - v3;
  v110 = type metadata accessor for TCUMappedNLResponse();
  v108 = *(v110 - 8);
  v5 = MEMORY[0x28223BE20](v110);
  v106 = &v94 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v8 = &v94 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v104 = &v94 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v107 = &v94 - v13;
  MEMORY[0x28223BE20](v12);
  v109 = &v94 - v14;
  v112 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v102 = *(v112 - 8);
  v15 = MEMORY[0x28223BE20](v112);
  v116 = &v94 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v115 = &v94 - v17;
  v114 = type metadata accessor for Siri_Nlu_External_Parser();
  v105 = *(v114 - 8);
  MEMORY[0x28223BE20](v114);
  v113 = &v94 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = type metadata accessor for Siri_Nlu_External_UserParse();
  v118 = *(v97 - 8);
  v19 = MEMORY[0x28223BE20](v97);
  v21 = &v94 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = MEMORY[0x28223BE20](v19);
  v111 = &v94 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v26 = &v94 - v25;
  MEMORY[0x28223BE20](v24);
  v28 = &v94 - v27;
  v29 = type metadata accessor for NLXResultCandidate(0);
  v30 = MEMORY[0x28223BE20](v29 - 8);
  v32 = &v94 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v34 = &v94 - v33;
  v35 = type metadata accessor for PommesBridgeResultCandidateState.ParseState(0);
  MEMORY[0x28223BE20](v35);
  v37 = &v94 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = a1;
  outlined init with copy of PommesBridgeResultCandidateState.ParseState(a1, v37, type metadata accessor for PommesBridgeResultCandidateState.ParseState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v110 = v28;

    v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMd, &_sSS2id_21SiriInformationSearch18NLXResultCandidateV09nlxResultF0Sb011hasNLResultF0tMR);
    outlined init with take of NLXResultCandidate(&v37[*(v43 + 48)], v34, type metadata accessor for NLXResultCandidate);
    outlined init with copy of PommesBridgeResultCandidateState.ParseState(v34, v32, type metadata accessor for NLXResultCandidate);
    v37 = *v32;
    v44 = *(*v32 + 16);
    if (v44)
    {
      v95 = v34;
      v96 = v32;
      v121 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v44, 0);
      v39 = 0;
      v45 = v121;
      v107 = (v118[80] + 32) & ~v118[80];
      v106 = &v37[v107];
      ++v105;
      LODWORD(v104) = *MEMORY[0x277D5DA68];
      v46 = v102++;
      v103 = (v46 + 13);
      v101 = (v118 + 8);
      v100 = (v118 + 32);
      v47 = v97;
      v108 = v44;
      v109 = v37;
      v99 = (v118 + 16);
      while (v39 < *(v37 + 2))
      {
        v111 = *(v118 + 9);
        v48 = *(v118 + 2);
        v48(v26, &v106[v111 * v39], v47);
        v49 = v113;
        Siri_Nlu_External_UserParse.parser.getter();
        v50 = v115;
        Siri_Nlu_External_Parser.parserID.getter();
        (*v105)(v49, v114);
        v51 = v116;
        v52 = v112;
        (*v103)(v116, v104, v112);
        lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason(&lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier, MEMORY[0x277D5DA88], MEMORY[0x277D5DAA8]);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        v53 = *v102;
        (*v102)(v51, v52);
        v54 = (v53)(v50, v52);
        if (v120 == v119)
        {
          MEMORY[0x28223BE20](v54);
          *(&v94 - 2) = v26;
          lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason(&lazy protocol witness table cache variable for type Siri_Nlu_External_UserParse and conformance Siri_Nlu_External_UserParse, MEMORY[0x277D5DB08], MEMORY[0x277D5DB00]);
          v55 = v110;
          v56 = v117;
          static Message.with(_:)();
          v117 = v56;
        }

        else
        {
          v55 = v110;
          v48(v110, v26, v47);
        }

        (*v101)(v26, v47);
        v121 = v45;
        v58 = *(v45 + 16);
        v57 = *(v45 + 24);
        if (v58 >= v57 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v57 > 1), v58 + 1, 1);
          v45 = v121;
        }

        ++v39;
        *(v45 + 16) = v58 + 1;
        (*v100)(v45 + v107 + v58 * v111, v55, v47);
        v37 = v109;
        if (v108 == v39)
        {

          v32 = v96;
          v34 = v95;
          goto LABEL_31;
        }
      }

      __break(1u);
      goto LABEL_39;
    }

    v45 = MEMORY[0x277D84F90];
LABEL_31:
    *v32 = v45;
    PommesBridgeResultCandidateState.setNLXResultCandidate(_:)(v32);
    outlined destroy of NLXResultCandidate(v34, type metadata accessor for NLXResultCandidate);
    outlined destroy of NLXResultCandidate(v32, type metadata accessor for NLXResultCandidate);
    return 1;
  }

  if (EnumCaseMultiPayload != 1)
  {

    v59 = *(v37 + 1);
    v60 = &v37[*(__swift_instantiateConcreteTypeFromMangledNameV2(&_sSo20SARDRunPOMMESRequestC7request_Say12SiriNLUTypes0D23_Nlu_External_UserParseVG10userParsesAD0d1_f1_g10_DelegatedH9DialogActVSg08fallbackI0tMd, &_sSo20SARDRunPOMMESRequestC7request_Say12SiriNLUTypes0D23_Nlu_External_UserParseVG10userParsesAD0d1_f1_g10_DelegatedH9DialogActVSg08fallbackI0tMR) + 64)];
    v96 = v4;
    outlined init with take of PommesSearchReason?(v60, v4, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    v39 = *(v59 + 16);
    if (v39)
    {
      v121 = MEMORY[0x277D84F90];
      specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v39, 0);
      v61 = 0;
      v62 = v121;
      v107 = (v118[80] + 32) & ~v118[80];
      v106 = (v59 + v107);
      v26 = v118 + 16;
      ++v105;
      LODWORD(v104) = *MEMORY[0x277D5DA68];
      v63 = v102++;
      v103 = (v63 + 13);
      v101 = (v118 + 8);
      v100 = (v118 + 32);
      v64 = v97;
      v108 = v59;
      v99 = v39;
      while (v61 < *(v59 + 16))
      {
        v109 = *(v118 + 9);
        v110 = v62;
        v65 = *(v118 + 2);
        v65(v21, &v106[v109 * v61], v64);
        v66 = v113;
        Siri_Nlu_External_UserParse.parser.getter();
        v67 = v115;
        Siri_Nlu_External_Parser.parserID.getter();
        (*v105)(v66, v114);
        v68 = v116;
        v69 = v26;
        v70 = v112;
        (*v103)(v116, v104, v112);
        lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason(&lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier, MEMORY[0x277D5DA88], MEMORY[0x277D5DAA8]);
        dispatch thunk of RawRepresentable.rawValue.getter();
        dispatch thunk of RawRepresentable.rawValue.getter();
        v71 = *v102;
        (*v102)(v68, v70);
        v72 = (v71)(v67, v70);
        if (v120 == v119)
        {
          MEMORY[0x28223BE20](v72);
          *(&v94 - 2) = v21;
          lazy protocol witness table accessor for type ServerFallbackReason and conformance ServerFallbackReason(&lazy protocol witness table cache variable for type Siri_Nlu_External_UserParse and conformance Siri_Nlu_External_UserParse, MEMORY[0x277D5DB08], MEMORY[0x277D5DB00]);
          v73 = v117;
          static Message.with(_:)();
          v117 = v73;
        }

        else
        {
          v65(v111, v21, v64);
        }

        v39 = v99;
        v26 = v69;
        (*v101)(v21, v64);
        v62 = v110;
        v121 = v110;
        v75 = *(v110 + 16);
        v74 = *(v110 + 24);
        v37 = (v75 + 1);
        v59 = v108;
        if (v75 >= v74 >> 1)
        {
          specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v74 > 1), v75 + 1, 1);
          v62 = v121;
        }

        ++v61;
        *(v62 + 16) = v37;
        (*v100)(v62 + v107 + v75 * v109, v111, v64);
        if (v39 == v61)
        {

          goto LABEL_33;
        }
      }

LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    v62 = MEMORY[0x277D84F90];
LABEL_33:
    v91 = v96;
    PommesBridgeResultCandidateState.setRunPommesRequest(userParses:fallbackParse:)(v62, v96);

    outlined destroy of MediaUserStateCenter?(v91, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    return 1;
  }

  v118 = v8;

  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMd, &_sSS2id_SS5tcuId16SiriMessageTypes19TCUMappedNLResponseVSg8responseAC0D9UserInputOSg08originaljK0AC027RewrittenUtteranceCandidateE0C13RewriteReasonOSg07rewriteQ0tMR);
  v40 = v109;
  outlined init with take of PommesSearchReason?(&v37[*(v39 + 64)], v109, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v41 = v107;
  outlined init with copy of MediaUserStateCenter?(v40, v107, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
  v42 = v108;
  if ((*(v108 + 48))(v41, 1, v110) != 1)
  {
    v76 = v118;
    v77 = (*(v42 + 32))(v118, v41, v110);
    MEMORY[0x28223BE20](v77);
    *(&v94 - 4) = v76;
    *(&v94 - 3) = closure #1 in PommesBridgeRequestProcessor.updatePSCParseForFallback(prState:);
    *(&v94 - 2) = 0;
    v78 = objc_allocWithZone(type metadata accessor for NLParseResponse());
    v79 = NLParseResponse.init(build:)();
    if (!v79)
    {
      outlined destroy of MediaUserStateCenter?(v109, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);

      (*(v42 + 8))(v76, v110);
      goto LABEL_36;
    }

    v26 = v79;
    if (one-time initialization token for pommes == -1)
    {
LABEL_27:
      v80 = type metadata accessor for Logger();
      __swift_project_value_buffer(v80, static Logger.pommes);
      v81 = Logger.logObject.getter();
      v82 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v81, v82))
      {
        v83 = swift_slowAlloc();
        *v83 = 0;
        _os_log_impl(&dword_2232BB000, v81, v82, "Assigning overridden TCUMappedNLResponse to prState", v83, 2u);
        MEMORY[0x223DE0F80](v83, -1, -1);
      }

      v84 = v26;
      v85 = v106;
      TCUMappedNLResponse.init(tcuId:nlResponse:)();
      v86 = v108;
      v87 = v104;
      v88 = v110;
      (*(v108 + 16))(v104, v85, v110);
      v89 = 1;
      (*(v86 + 56))(v87, 0, 1, v88);
      PommesBridgeResultCandidateState.setParseResponse(_:)(v87);

      outlined destroy of MediaUserStateCenter?(v87, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      v90 = *(v86 + 8);
      v90(v85, v88);
      outlined destroy of MediaUserStateCenter?(v109, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
      v90(v118, v88);
      goto LABEL_37;
    }

LABEL_40:
    swift_once();
    goto LABEL_27;
  }

  outlined destroy of MediaUserStateCenter?(v40, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);

  outlined destroy of MediaUserStateCenter?(v41, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
LABEL_36:
  v89 = 0;
LABEL_37:
  v93 = *(v39 + 80);
  outlined destroy of MediaUserStateCenter?(&v37[*(v39 + 96)], &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
  outlined destroy of MediaUserStateCenter?(&v37[v93], &_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
  return v89;
}

uint64_t outlined destroy of NLXResultCandidate(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t outlined init with copy of PommesBridgeResultCandidateState.ParseState(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t outlined init with take of NLXResultCandidate(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t partial apply for closure #1 in PommesStateHolder.update(pommesCandidateId:with:)()
{
  v1 = *(type metadata accessor for PommesCandidateId() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = v2 + *(v1 + 64);
  v4 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMd, &_s21SiriInformationSearch32PommesBridgeResultCandidateStateVSgMR) - 8);
  v5 = *(v0 + 16);
  v6 = v0 + ((v3 + *(v4 + 80)) & ~*(v4 + 80));

  return closure #1 in PommesStateHolder.update(pommesCandidateId:with:)(v5, v0 + v2, v6);
}

uint64_t partial apply for closure #1 in PommesBridgeRequestProcessor.searchCompletionHandler(pommesCandidateId:result:)()
{
  v1 = *(type metadata accessor for PommesCandidateId() - 8);
  v2 = (*(v1 + 80) + 24) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(v0 + 16);
  v5 = *(v0 + v3);
  v6 = *(v0 + ((v3 + 15) & 0xFFFFFFFFFFFFFFF8));

  return closure #1 in PommesBridgeRequestProcessor.searchCompletionHandler(pommesCandidateId:result:)(v4, v0 + v2, v5, v6);
}

uint64_t partial apply for implicit closure #12 in PommesBridgeRequestProcessor.searchCompletionHandler(pommesCandidateId:result:)()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&_s16SiriMessageTypes11PommesErrorOSgMd, &_s16SiriMessageTypes11PommesErrorOSgMR) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = *(type metadata accessor for PommesCandidateId() - 8);
  v5 = *(v0 + v3);
  v6 = v0 + ((v3 + *(v4 + 80) + 8) & ~*(v4 + 80));

  return implicit closure #12 in PommesBridgeRequestProcessor.searchCompletionHandler(pommesCandidateId:result:)(v0 + v2, v5, v6);
}

uint64_t partial apply for implicit closure #2 in PommesBridgeRequestProcessor.timeoutCompletionHandler(pommesCandidateId:)(uint64_t (*a1)(uint64_t, uint64_t))
{
  v2 = *(type metadata accessor for PommesCandidateId() - 8);
  v3 = *(v1 + 16);
  v4 = v1 + ((*(v2 + 80) + 24) & ~*(v2 + 80));

  return a1(v3, v4);
}

void type metadata completion function for PommesBridgeResultCandidateState(uint64_t a1)
{
  type metadata accessor for PommesBridgeResultCandidateState.ParseState(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for UserID();
    if (v2 <= 0x3F)
    {
      type metadata accessor for AFUserIdentityClassfication(319);
      if (v3 <= 0x3F)
      {
        type metadata accessor for SelectedUserAttributes?(319, &lazy cache variable for type metadata for SelectedUserAttributes?, MEMORY[0x277D5D228]);
        if (v4 <= 0x3F)
        {
          type metadata accessor for AFSpeechPackage?(319);
          if (v5 <= 0x3F)
          {
            type metadata accessor for SelectedUserAttributes?(319, &lazy cache variable for type metadata for PommesSearchEagerInfo?, type metadata accessor for PommesSearchEagerInfo);
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

void type metadata accessor for AFSpeechPackage?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for AFSpeechPackage?)
  {
    type metadata accessor for CNContactStore(255, &lazy cache variable for type metadata for AFSpeechPackage, 0x277CEF470);
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for AFSpeechPackage?);
    }
  }
}

void type metadata accessor for SelectedUserAttributes?(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
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

void type metadata completion function for PommesBridgeResultCandidateState.ParseState(uint64_t a1)
{
  type metadata accessor for (id: String, nlxResultCandidate: NLXResultCandidate, hasNLResultCandidate: Bool)(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for (id: String, tcuId: String, response: TCUMappedNLResponse?, originalUserInput: SiriUserInput?, rewriteReason: RewrittenUtteranceCandidateMessage.RewriteReason?)(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for (request: SARDRunPOMMESRequest, userParses: [Siri_Nlu_External_UserParse], fallbackParse: Siri_Nlu_External_DelegatedUserDialogAct?)(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void type metadata accessor for (id: String, nlxResultCandidate: NLXResultCandidate, hasNLResultCandidate: Bool)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (id: String, nlxResultCandidate: NLXResultCandidate, hasNLResultCandidate: Bool))
  {
    type metadata accessor for NLXResultCandidate(255);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (id: String, nlxResultCandidate: NLXResultCandidate, hasNLResultCandidate: Bool));
    }
  }
}

void type metadata accessor for (id: String, tcuId: String, response: TCUMappedNLResponse?, originalUserInput: SiriUserInput?, rewriteReason: RewrittenUtteranceCandidateMessage.RewriteReason?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (id: String, tcuId: String, response: TCUMappedNLResponse?, originalUserInput: SiriUserInput?, rewriteReason: RewrittenUtteranceCandidateMessage.RewriteReason?))
  {
    MEMORY[0x28223BE20](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s16SiriMessageTypes19TCUMappedNLResponseVSgMd, &_s16SiriMessageTypes19TCUMappedNLResponseVSgMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s16SiriMessageTypes0A9UserInputOSgMd, &_s16SiriMessageTypes0A9UserInputOSgMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMd, &_s16SiriMessageTypes027RewrittenUtteranceCandidateB0C13RewriteReasonOSgMR);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &lazy cache variable for type metadata for (id: String, tcuId: String, response: TCUMappedNLResponse?, originalUserInput: SiriUserInput?, rewriteReason: RewrittenUtteranceCandidateMessage.RewriteReason?));
    }
  }
}

void type metadata accessor for (request: SARDRunPOMMESRequest, userParses: [Siri_Nlu_External_UserParse], fallbackParse: Siri_Nlu_External_DelegatedUserDialogAct?)(uint64_t a1)
{
  if (!lazy cache variable for type metadata for (request: SARDRunPOMMESRequest, userParses: [Siri_Nlu_External_UserParse], fallbackParse: Siri_Nlu_External_DelegatedUserDialogAct?))
  {
    type metadata accessor for CNContactStore(255, &lazy cache variable for type metadata for SARDRunPOMMESRequest, 0x277D476A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_sSay12SiriNLUTypes0A23_Nlu_External_UserParseVGMd, &_sSay12SiriNLUTypes0A23_Nlu_External_UserParseVGMR);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &lazy cache variable for type metadata for (request: SARDRunPOMMESRequest, userParses: [Siri_Nlu_External_UserParse], fallbackParse: Siri_Nlu_External_DelegatedUserDialogAct?));
    }
  }
}

uint64_t type metadata completion function for PommesBridgeRequestProcessor(uint64_t a1)
{
  result = type metadata accessor for DispatchTimeInterval();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t outlined assign with copy of ConversationSessionState?(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 24))(a2, a1, v6);
  return a2;
}

uint64_t objectdestroy_53Tm()
{
  v1 = type metadata accessor for PommesCandidateId();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 24) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

void *partial apply for closure #1 in PommesBridgeRequestProcessor.queueTimeout(pommesCandidateId:)()
{
  v1 = *(type metadata accessor for PommesCandidateId() - 8);
  v2 = *(v0 + 16);
  v3 = v0 + ((*(v1 + 80) + 24) & ~*(v1 + 80));

  return closure #1 in PommesBridgeRequestProcessor.queueTimeout(pommesCandidateId:)(v2, v3);
}

uint64_t static DomainAffinityKVStoreManager.domainAffinityKVStore(name:)(uint64_t a1)
{
  if (one-time initialization token for serialQueue != -1)
  {
    v2 = a1;
    swift_once();
    a1 = v2;
  }

  MEMORY[0x28223BE20](a1);
  type metadata accessor for DomainAffinityKVStore(0);
  OS_dispatch_queue.sync<A>(execute:)();
  return v3;
}

void *one-time initialization function for singletonInstances()
{
  result = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_21SiriInformationSearch21DomainAffinityKVStoreCTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  static DomainAffinityKVStoreManager.singletonInstances = result;
  return result;
}

uint64_t one-time initialization function for serialQueue()
{
  v0 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v11 = *(v0 - 8);
  v12 = v0;
  MEMORY[0x28223BE20](v0);
  v2 = &v10 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v3);
  v4 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v4 - 8);
  v5 = type metadata accessor for DispatchQoS.QoSClass();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v10 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for OS_dispatch_queue();
  v10 = "[DomainAffinityKVStore][";
  (*(v6 + 104))(v8, *MEMORY[0x277D851C8], v5);
  static OS_dispatch_queue.global(qos:)();
  (*(v6 + 8))(v8, v5);
  static DispatchQoS.unspecified.getter();
  v13 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v11 + 104))(v2, *MEMORY[0x277D85260], v12);
  result = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  static DomainAffinityKVStoreManager.serialQueue = result;
  return result;
}

void closure #1 in static DomainAffinityKVStoreManager.domainAffinityKVStore(name:)(uint64_t a1@<X0>, unint64_t a2@<X1>, char **a3@<X8>)
{
  if (one-time initialization token for singletonInstances != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v6 = static DomainAffinityKVStoreManager.singletonInstances;
  if (*(static DomainAffinityKVStoreManager.singletonInstances + 2) && (v7 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v8 & 1) != 0))
  {
    v9 = *(v6[7] + 8 * v7);
    swift_endAccess();
    v10 = one-time initialization token for pommes;

    if (v10 != -1)
    {
      swift_once();
    }

    v11 = type metadata accessor for Logger();
    __swift_project_value_buffer(v11, static Logger.pommes);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v19[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v19);
      v16 = "[DomainAffinityKVStoreManager] Found existing DomainAffinityKVStore singleton instance for %s";
LABEL_13:
      _os_log_impl(&dword_2232BB000, v12, v13, v16, v14, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v15);
      MEMORY[0x223DE0F80](v15, -1, -1);
      MEMORY[0x223DE0F80](v14, -1, -1);
    }
  }

  else
  {
    swift_endAccess();
    type metadata accessor for DomainAffinityKVStore(0);
    swift_allocObject();

    v9 = DomainAffinityKVStore.init(name:)(a1, a2);
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = static DomainAffinityKVStoreManager.singletonInstances;
    static DomainAffinityKVStoreManager.singletonInstances = 0x8000000000000000;
    specialized _NativeDictionary.setValue(_:forKey:isUnique:)(v9, a1, a2, isUniquelyReferenced_nonNull_native);

    static DomainAffinityKVStoreManager.singletonInstances = v20;
    swift_endAccess();
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v18 = type metadata accessor for Logger();
    __swift_project_value_buffer(v18, static Logger.pommes);

    v12 = Logger.logObject.getter();
    v13 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v19[0] = v15;
      *v14 = 136315138;
      *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a1, a2, v19);
      v16 = "[DomainAffinityKVStoreManager] Created new DomainAffinityKVStore singleton instance for %s";
      goto LABEL_13;
    }
  }

  *a3 = v9;
}

uint64_t type metadata accessor for DomainAffinityKVStore(uint64_t a1)
{
  result = type metadata singleton initialization cache for DomainAffinityKVStore;
  if (!type metadata singleton initialization cache for DomainAffinityKVStore)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double DomainAffinityKVStore.dictStore.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t DomainAffinityKVStore.dictStore.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;
}

char *DomainAffinityKVStore.init(name:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v34 = *(v6 - 8);
  v35 = v6;
  MEMORY[0x28223BE20](v6);
  v33 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v32);
  v31 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v9 - 8);
  v30 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for DispatchQoS.QoSClass();
  v28 = *(v11 - 8);
  v29 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v28 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for URL();
  v15 = *(v14 - 8);
  v16 = MEMORY[0x28223BE20](v14);
  v18 = &v28 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v20 = &v28 - v19;
  *(v3 + 2) = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySSSfGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v21 = OBJC_IVAR____TtC21SiriInformationSearch21DomainAffinityKVStore_baseAssetsDir;
  URL.init(fileURLWithPath:isDirectory:)();
  v22 = &v3[OBJC_IVAR____TtC21SiriInformationSearch21DomainAffinityKVStore_name];
  *v22 = a1;
  *(v22 + 1) = a2;
  (*(v15 + 16))(v18, &v3[v21], v14);

  URL.appendingPathComponent(_:isDirectory:)();

  (*(v15 + 8))(v18, v14);
  (*(v15 + 32))(&v3[OBJC_IVAR____TtC21SiriInformationSearch21DomainAffinityKVStore_assetDir], v20, v14);
  type metadata accessor for OS_dispatch_queue();
  v36 = 0;
  v37 = 0xE000000000000000;
  _StringGuts.grow(_:)(38);

  v36 = 0xD000000000000018;
  v37 = 0x80000002234DE400;
  v23 = *v22;
  v24 = *(v22 + 1);

  MEMORY[0x223DDF6D0](v23, v24);

  MEMORY[0x223DDF6D0](0x516C61697265535DLL, 0xEC00000065756575);
  v25 = v28;
  v26 = v29;
  (*(v28 + 104))(v13, *MEMORY[0x277D851C8], v29);
  static OS_dispatch_queue.global(qos:)();
  (*(v25 + 8))(v13, v26);
  static DispatchQoS.unspecified.getter();
  v36 = MEMORY[0x277D84F90];
  lazy protocol witness table accessor for type OS_dispatch_queue.Attributes and conformance OS_dispatch_queue.Attributes();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMd, &_sSaySo17OS_dispatch_queueC8DispatchE10AttributesVGMR);
  lazy protocol witness table accessor for type [OS_dispatch_queue.Attributes] and conformance [A]();
  dispatch thunk of SetAlgebra.init<A>(_:)();
  (*(v34 + 104))(v33, *MEMORY[0x277D85260], v35);
  *&v3[OBJC_IVAR____TtC21SiriInformationSearch21DomainAffinityKVStore_serialQueue] = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
  (*(*v3 + 184))();
  return v3;
}

void DomainAffinityKVStore.maximumDomainAffinity(forKey:usingNormalizer:)()
{
  v1 = (*(*v0 + 160))();
  if (v1)
  {
    v2 = v1;
    v3 = v1 + 64;
    v4 = 1 << *(v1 + 32);
    v5 = -1;
    if (v4 < 64)
    {
      v5 = ~(-1 << v4);
    }

    v6 = v5 & *(v1 + 64);
    if (v6)
    {
      v7 = 0;
      v8 = __clz(__rbit64(v6));
      v9 = (v6 - 1) & v6;
      v10 = (v4 + 63) >> 6;
LABEL_10:
      v13 = *(*(v1 + 56) + 4 * v8);

      if (!v9)
      {
        goto LABEL_13;
      }

      do
      {
LABEL_11:
        while (1)
        {
          v14 = __clz(__rbit64(v9));
          v9 &= v9 - 1;
          v15 = *(*(v2 + 56) + 4 * (v14 | (v7 << 6)));
          if (v13 < v15)
          {
            break;
          }

          if (!v9)
          {
            goto LABEL_13;
          }
        }

        v13 = v15;
      }

      while (v9);
LABEL_13:
      while (1)
      {
        v16 = v7 + 1;
        if (__OFADD__(v7, 1))
        {
          break;
        }

        if (v16 >= v10)
        {

          return;
        }

        v9 = *(v3 + 8 * v16);
        ++v7;
        if (v9)
        {
          v7 = v16;
          goto LABEL_11;
        }
      }

      __break(1u);
    }

    else
    {
      v11 = 0;
      v10 = (v4 + 63) >> 6;
      while (v10 - 1 != v6)
      {
        v7 = v6 + 1;
        v12 = *(v1 + 8 * v6 + 72);
        v11 -= 64;
        ++v6;
        if (v12)
        {
          v9 = (v12 - 1) & v12;
          v8 = __clz(__rbit64(v12)) - v11;
          goto LABEL_10;
        }
      }
    }
  }
}

uint64_t DomainAffinityKVStore.domainAffinities(forKey:usingNormalizer:)(uint64_t a1, unint64_t a2, uint64_t (*a3)(void))
{
  v4 = v3;
  v7 = a3();
  v9 = v8;
  v10 = (*(*v3 + 120))();
  if (*(v10 + 16) && (v11 = specialized __RawDictionaryStorage.find<A>(_:)(v7, v9), (v12 & 1) != 0))
  {
    v13 = *(*(v10 + 56) + 8 * v11);
  }

  else
  {
    v13 = 0;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v14 = type metadata accessor for Logger();
  __swift_project_value_buffer(v14, static Logger.pommes);

  v15 = Logger.logObject.getter();
  v16 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v15, v16))
  {
    v25 = a1;
    v26 = v7;
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v27 = v18;
    *v17 = 136315906;
    *(v17 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v4 + OBJC_IVAR____TtC21SiriInformationSearch21DomainAffinityKVStore_name), *(v4 + OBJC_IVAR____TtC21SiriInformationSearch21DomainAffinityKVStore_name + 8), &v27);
    *(v17 + 12) = 2080;
    if (!v13)
    {
      _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SfTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    }

    v19 = Dictionary.description.getter();
    v21 = v20;

    v22 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v21, &v27);

    *(v17 + 14) = v22;
    *(v17 + 22) = 2080;
    *(v17 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, a2, &v27);
    *(v17 + 32) = 2080;
    v23 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v26, v9, &v27);

    *(v17 + 34) = v23;
    _os_log_impl(&dword_2232BB000, v15, v16, "[DomainAffinityKVStore][%s] Found (value: %s) for (key: %s, normalizedKey: %s)", v17, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v18, -1, -1);
    MEMORY[0x223DE0F80](v17, -1, -1);
  }

  else
  {
  }

  return v13;
}

void DomainAffinityKVStore.setDomainAffinities(_:forKey:usingNormalizer:)(uint64_t a1, uint64_t a2, unint64_t a3, uint64_t (*a4)(uint64_t, uint64_t))
{
  v5 = v4;
  v9 = a4(a2, a3);
  v11 = v10;
  v12 = *(*v4 + 136);

  v13 = v12(v27);
  v15 = v14;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *v15;
  *v15 = 0x8000000000000000;
  specialized _NativeDictionary.setValue(_:forKey:isUnique:)(a1, v9, v11, isUniquelyReferenced_nonNull_native);

  *v15 = v26;
  v13(v27, 0);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v17 = type metadata accessor for Logger();
  __swift_project_value_buffer(v17, static Logger.pommes);

  v18 = Logger.logObject.getter();
  v19 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    v21 = swift_slowAlloc();
    v27[0] = v21;
    *v20 = 136315906;
    *(v20 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(v5 + OBJC_IVAR____TtC21SiriInformationSearch21DomainAffinityKVStore_name), *(v5 + OBJC_IVAR____TtC21SiriInformationSearch21DomainAffinityKVStore_name + 8), v27);
    *(v20 + 12) = 2080;
    v22 = Dictionary.description.getter();
    v24 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v22, v23, v27);

    *(v20 + 14) = v24;
    *(v20 + 22) = 2080;
    *(v20 + 24) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(a2, a3, v27);
    *(v20 + 32) = 2080;
    v25 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v11, v27);

    *(v20 + 34) = v25;
    _os_log_impl(&dword_2232BB000, v18, v19, "[DomainAffinityKVStore][%s] Updated (value: %s) for (key: %s, normalizedKey: %s)", v20, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v21, -1, -1);
    MEMORY[0x223DE0F80](v20, -1, -1);
  }

  else
  {
  }
}

Swift::Void __swiftcall DomainAffinityKVStore.clear()()
{
  v1 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_SDySSSfGTt0g5Tf4g_n(MEMORY[0x277D84F90]);
  v2 = *(*v0 + 128);

  v2(v1);
}

Swift::Void __swiftcall DomainAffinityKVStore.load()()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch21DomainAffinityKVStore_serialQueue);
  v2 = swift_allocObject();
  *(v2 + 16) = partial apply for closure #1 in DomainAffinityKVStore.load();
  *(v2 + 24) = v0;
  v4[4] = partial apply for thunk for @callee_guaranteed () -> ();
  v4[5] = v2;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = thunk for @escaping @callee_guaranteed () -> ();
  v4[3] = &block_descriptor_12;
  v3 = _Block_copy(v4);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }
}

void closure #1 in DomainAffinityKVStore.load()(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static PerformanceUtil.shared;
  v20 = 0;
  v21 = 0xE000000000000000;
  _StringGuts.grow(_:)(32);

  v20 = 0xD000000000000016;
  v21 = 0x80000002234DE350;
  v7 = *(a1 + OBJC_IVAR____TtC21SiriInformationSearch21DomainAffinityKVStore_name + 8);
  v19 = *(a1 + OBJC_IVAR____TtC21SiriInformationSearch21DomainAffinityKVStore_name);
  MEMORY[0x223DDF6D0]();
  MEMORY[0x223DDF6D0](0x292864616F6C2E5DLL, 0xE800000000000000);
  v8 = v20;
  v9 = v21;
  Date.init()();
  v10 = *(*v6 + 200);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSDySSSfGGMd, &_sSDySSSDySSSfGGMR);
  v10(&v22, v8, v9, 0, v5, "SiriInformationSearch/DomainAffinityKVStore.swift", 49, 2, 107, "load()", 6, 2, partial apply for closure #1 in closure #1 in DomainAffinityKVStore.load(), a1, v11);
  (*(v3 + 8))(v5, v2);

  (*(*a1 + 128))(v22);
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v12 = type metadata accessor for Logger();
  __swift_project_value_buffer(v12, static Logger.pommes);

  v13 = Logger.logObject.getter();
  v14 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v20 = v16;
    *v15 = 136315394;
    *(v15 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v19, v7, &v20);
    *(v15 + 12) = 2048;
    v17 = *((*(*a1 + 120))() + 16);

    *(v15 + 14) = v17;

    _os_log_impl(&dword_2232BB000, v13, v14, "[DomainAffinityKVStore][%s] Loaded %ld entries from disk", v15, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v16);
    MEMORY[0x223DE0F80](v16, -1, -1);
    MEMORY[0x223DE0F80](v15, -1, -1);
  }

  else
  {
  }
}

uint64_t closure #1 in closure #1 in DomainAffinityKVStore.load()(uint64_t a1)
{
  type metadata accessor for PropertyListDecoder();
  swift_allocObject();
  PropertyListDecoder.init()();
  v2 = Data.init(contentsOf:options:)();
  if (!v1)
  {
    v4 = v2;
    v5 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSDySSSfGGMd, &_sSDySSSDySSSfGGMR);
    lazy protocol witness table accessor for type [String : [String : Float]] and conformance <> [A : B]();
    dispatch thunk of PropertyListDecoder.decode<A>(_:from:)();
    outlined consume of Data._Representation(v4, v5);
  }
}

Swift::Void __swiftcall DomainAffinityKVStore.save()()
{
  v1 = *(v0 + OBJC_IVAR____TtC21SiriInformationSearch21DomainAffinityKVStore_serialQueue);
  v2 = swift_allocObject();
  *(v2 + 16) = partial apply for closure #1 in DomainAffinityKVStore.save();
  *(v2 + 24) = v0;
  v4[4] = thunk for @callee_guaranteed () -> ()partial apply;
  v4[5] = v2;
  v4[0] = MEMORY[0x277D85DD0];
  v4[1] = 1107296256;
  v4[2] = thunk for @escaping @callee_guaranteed () -> ();
  v4[3] = &block_descriptor_7_0;
  v3 = _Block_copy(v4);

  dispatch_sync(v1, v3);
  _Block_release(v3);
  LOBYTE(v1) = swift_isEscapingClosureAtFileLocation();

  if (v1)
  {
    __break(1u);
  }
}

void closure #1 in DomainAffinityKVStore.save()(uint64_t a1)
{
  v2 = type metadata accessor for Date();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }

  v6 = static PerformanceUtil.shared;
  v18 = 0;
  v19 = 0xE000000000000000;
  _StringGuts.grow(_:)(32);

  v18 = 0xD000000000000016;
  v19 = 0x80000002234DE350;
  v7 = *(a1 + OBJC_IVAR____TtC21SiriInformationSearch21DomainAffinityKVStore_name);
  v8 = *(a1 + OBJC_IVAR____TtC21SiriInformationSearch21DomainAffinityKVStore_name + 8);
  MEMORY[0x223DDF6D0](v7, v8);
  MEMORY[0x223DDF6D0](0x2928657661732E5DLL, 0xE800000000000000);
  v9 = v18;
  v10 = v19;
  Date.init()();
  (*(*v6 + 200))(v9, v10, 0, v5, "SiriInformationSearch/DomainAffinityKVStore.swift", 49, 2, 121, "save()", 6, 2, partial apply for closure #1 in closure #1 in DomainAffinityKVStore.save(), a1, MEMORY[0x277D84F78] + 8);
  (*(v3 + 8))(v5, v2);

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v11 = type metadata accessor for Logger();
  __swift_project_value_buffer(v11, static Logger.pommes);

  v12 = Logger.logObject.getter();
  v13 = static os_log_type_t.info.getter();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v18 = v15;
    *v14 = 136315394;
    *(v14 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v7, v8, &v18);
    *(v14 + 12) = 2048;
    v16 = *((*(*a1 + 120))() + 16);

    *(v14 + 14) = v16;

    _os_log_impl(&dword_2232BB000, v12, v13, "[DomainAffinityKVStore][%s] Saved %ld entries to disk", v14, 0x16u);
    __swift_destroy_boxed_opaque_existential_1(v15);
    MEMORY[0x223DE0F80](v15, -1, -1);
    MEMORY[0x223DE0F80](v14, -1, -1);
  }

  else
  {
  }
}

uint64_t closure #1 in closure #1 in DomainAffinityKVStore.save()(uint64_t a1)
{
  type metadata accessor for PropertyListEncoder();
  swift_allocObject();
  PropertyListEncoder.init()();
  (*(*a1 + 120))();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSDySSSfGGMd, &_sSDySSSDySSSfGGMR);
  lazy protocol witness table accessor for type [String : [String : Float]] and conformance <> [A : B]();
  v3 = dispatch thunk of PropertyListEncoder.encode<A>(_:)();
  v5 = v4;

  if (!v1)
  {
    Data.write(to:options:)();
    return outlined consume of Data._Representation(v3, v5);
  }

  return result;
}

uint64_t DomainAffinityKVStore.deinit()
{

  v1 = OBJC_IVAR____TtC21SiriInformationSearch21DomainAffinityKVStore_baseAssetsDir;
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);

  v3(v0 + OBJC_IVAR____TtC21SiriInformationSearch21DomainAffinityKVStore_assetDir, v2);

  return v0;
}

uint64_t DomainAffinityKVStore.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC21SiriInformationSearch21DomainAffinityKVStore_baseAssetsDir;
  v2 = type metadata accessor for URL();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);

  v3(v0 + OBJC_IVAR____TtC21SiriInformationSearch21DomainAffinityKVStore_assetDir, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata completion function for DomainAffinityKVStore(uint64_t a1)
{
  result = type metadata accessor for URL();
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

uint64_t UserPersonaFeaturiser.name.getter()
{
  type metadata accessor for UserPersonaFeaturiser();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch21UserPersonaFeaturiserCmMd, &_s21SiriInformationSearch21UserPersonaFeaturiserCmMR);
  return String.init<A>(describing:)();
}

id UserPersonaFeaturiser.currentUser.getter()
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

id UserPersonaFeaturiser.isPrimaryUser.getter()
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

uint64_t UserPersonaFeaturiser.__allocating_init(query:)(uint64_t a1)
{
  v1 = swift_allocObject();
  UserPersonaFeaturiser.init(query:)();
  return v1;
}

uint64_t UserPersonaFeaturiser.init(query:)()
{
  v1 = v0;
  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v2 = type metadata accessor for Logger();
  __swift_project_value_buffer(v2, static Logger.pommes);

  v3 = Logger.logObject.getter();
  v4 = static os_log_type_t.debug.getter();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = 0xEB00000000544E45;
    v6 = 0x534552505F544F4ELL;
    v7 = swift_slowAlloc();
    v8 = swift_slowAlloc();
    v22 = v8;
    *v7 = 136315650;
    v9 = (*(*v0 + 88))();
    v11 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v9, v10, &v22);

    *(v7 + 4) = v11;
    *(v7 + 12) = 2080;
    v12 = objc_opt_self();
    v13 = [v12 currentPersona];
    if (v13)
    {
      v14 = v13;
      v15 = [v13 userPersonaNickName];

      if (v15)
      {
        v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v5 = v16;
      }
    }

    v17 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v6, v5, &v22);

    *(v7 + 14) = v17;
    *(v7 + 22) = 2048;
    v18 = [v12 currentPersona];
    if (v18)
    {
      v19 = v18;
      v20 = [v18 userPersonaType];
    }

    else
    {
      v20 = 9999999;
    }

    *(v7 + 24) = v20;
    _os_log_impl(&dword_2232BB000, v3, v4, "UserPersonaFeaturiser : currentUserPersona=%s nickname=%s personType=%lu", v7, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v8, -1, -1);
    MEMORY[0x223DE0F80](v7, -1, -1);
  }

  else
  {
  }

  return v1;
}

void UserPersonaFeaturiser.featurise(candidate:rankedSlotIndex:)(void **a1)
{
  v2 = v1;
  v3 = *a1;
  v4 = MEMORY[0x277D85000];
  v5 = (*((*MEMORY[0x277D85000] & **a1) + 0xD0))();
  if (!v6)
  {
    goto LABEL_7;
  }

  v7 = v6;
  if (v5 == (*(*v1 + 88))() && v7 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
LABEL_7:
      v11 = (*((*v4 & *v3) + 0xB8))(v5);
      v12.n128_u32[0] = 1.0;
      (*((*v4 & *v11) + 0xE8))(v12);
      goto LABEL_10;
    }
  }

  v11 = (*((*v4 & *v3) + 0xB8))(v5);
  v13.n128_u32[0] = 1066192077;
  (*((*v4 & *v11) + 0xE8))(v13);
LABEL_10:

  if ((*(*v2 + 96))())
  {
    v14 = (*((*v4 & *v3) + 0xB8))();
    v15 = (*((*v4 & *v14) + 0xF0))(v17);
    *v16 = *v16 * 1.01;
    v15(v17, 0);
  }
}

Class @nonobjc LNMetadataProvider.actionsConforming(to:logicalType:bundleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v5 = v4;
  v15[1] = *MEMORY[0x277D85DE8];
  type metadata accessor for LNSystemProtocol();
  lazy protocol witness table accessor for type LNSystemProtocol and conformance NSObject();
  v9.super.isa = Set._bridgeToObjectiveC()().super.isa;
  if (a4)
  {
    a4 = MEMORY[0x223DDF550](a3, a4);
  }

  v15[0] = 0;
  v10 = [v5 actionsConformingToSystemProtocols:v9.super.isa logicalType:a2 bundleIdentifier:a4 error:v15];

  v11 = v15[0];
  if (v10)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSDySSSo16LNActionMetadataCGMd, &_sSDySSSo16LNActionMetadataCGMR);
    v9.super.isa = static Dictionary._unconditionallyBridgeFromObjectiveC(_:)();
    v12 = v11;
  }

  else
  {
    v13 = v15[0];
    _convertNSErrorToError(_:)();

    swift_willThrow();
  }

  return v9.super.isa;
}

unint64_t type metadata accessor for LNSystemProtocol()
{
  result = lazy cache variable for type metadata for LNSystemProtocol;
  if (!lazy cache variable for type metadata for LNSystemProtocol)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for LNSystemProtocol);
  }

  return result;
}

uint64_t PluginWarmupHandler.pluginIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

void *PluginWarmupHandler.__allocating_init(pluginIdentifier:warmupComponents:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_allocObject();
  result[2] = a1;
  result[3] = a2;
  result[4] = a3;
  return result;
}

void *PluginWarmupHandler.init(pluginIdentifier:warmupComponents:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[2] = a1;
  v3[3] = a2;
  v3[4] = a3;
  return v3;
}

void PluginWarmupHandler.warmup(request:serviceHelper:)(uint64_t a1, void *a2)
{
  v3 = v2;
  v6 = type metadata accessor for UUID();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = &type metadata for FeatureFlag;
  v40 = lazy protocol witness table accessor for type FeatureFlag and conformance FeatureFlag();
  v10 = swift_allocObject();
  aBlock[0] = v10;
  *(v10 + 16) = 2;
  *(v10 + 24) = 0;
  *(v10 + 32) = 0;
  *(v10 + 40) = 0;
  *(v10 + 48) = 3;
  v11 = isFeatureEnabled(_:)();
  __swift_destroy_boxed_opaque_existential_1(aBlock);
  if ((v11 & 1) == 0)
  {
    return;
  }

  v13 = *(v3 + 16);
  v12 = *(v3 + 24);
  v14 = objc_allocWithZone(MEMORY[0x277D47458]);
  v37 = v13;
  v15 = MEMORY[0x223DDF550](v13, v12);
  v16 = [v14 initWithBundleIdentifier_];

  v17 = v16;
  UUID.init()();
  v18 = UUID.uuidString.getter();
  v20 = v19;
  (*(v7 + 8))(v9, v6);
  v21 = MEMORY[0x223DDF550](v18, v20);

  [v17 setAceId_];

  v22 = type metadata accessor for PommesSearchRequest(0);
  v23 = (a1 + *(v22 + 36));
  if (v23[1])
  {
    v24 = *v23;
    v25 = v23[1];
LABEL_6:
    v27 = v17;

    v28 = MEMORY[0x223DDF550](v24, v25);

    goto LABEL_7;
  }

  v26 = (a1 + *(v22 + 32));
  v25 = v26[1];
  if (v25)
  {
    v24 = *v26;

    goto LABEL_6;
  }

  v35 = v17;
  v28 = 0;
LABEL_7:
  [v17 setRefId_];

  if (a2)
  {
    v40 = partial apply for closure #1 in PluginWarmupHandler.warmup(request:serviceHelper:);
    v41 = v3;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = thunk for @escaping @callee_guaranteed @Sendable (@guaranteed SABaseCommand?, @guaranteed Error?) -> ();
    v39 = &block_descriptor_13;
    v29 = _Block_copy(aBlock);
    swift_unknownObjectRetain();

    [a2 handleCommand:v17 completion:v29];
    swift_unknownObjectRelease();

    _Block_release(v29);
  }

  else
  {

    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v30 = type metadata accessor for Logger();
    __swift_project_value_buffer(v30, static Logger.pommes);

    v31 = Logger.logObject.getter();
    v32 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      aBlock[0] = v34;
      *v33 = 136315138;
      *(v33 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v37, v12, aBlock);
      _os_log_impl(&dword_2232BB000, v31, v32, "PluginWarmupHandler#warmup serviceHelper nil, skipping warming up for %s plugin", v33, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v34);
      MEMORY[0x223DE0F80](v34, -1, -1);
      MEMORY[0x223DE0F80](v33, -1, -1);
    }
  }
}

void closure #1 in PluginWarmupHandler.warmup(request:serviceHelper:)(void *a1, NSObject *a2, uint64_t a3)
{
  if (a2)
  {
    v4 = a2;
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v5 = type metadata accessor for Logger();
    __swift_project_value_buffer(v5, static Logger.pommes);
    v6 = a2;
    v7 = Logger.logObject.getter();
    v8 = static os_log_type_t.error.getter();

    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v34 = v10;
      *v9 = 136315138;
      v11 = a2;
      __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
      v12 = String.init<A>(describing:)();
      v14 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v12, v13, &v34);

      *(v9 + 4) = v14;
      _os_log_impl(&dword_2232BB000, v7, v8, "PluginWarmupHandler#warmup Service helper returned an error: %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v10);
      MEMORY[0x223DE0F80](v10, -1, -1);
      MEMORY[0x223DE0F80](v9, -1, -1);

      return;
    }

    v29 = a2;
  }

  else
  {
    if (a1)
    {
      v16 = one-time initialization token for pommes;
      v17 = a1;
      if (v16 != -1)
      {
        swift_once();
      }

      v18 = type metadata accessor for Logger();
      __swift_project_value_buffer(v18, static Logger.pommes);
      v19 = v17;

      oslog = Logger.logObject.getter();
      v20 = static os_log_type_t.info.getter();

      if (os_log_type_enabled(oslog, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v34 = v22;
        *v21 = 136315394;
        *(v21 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(*(a3 + 16), *(a3 + 24), &v34);
        *(v21 + 12) = 2080;
        v23 = v19;
        v24 = [v23 description];
        v25 = static String._unconditionallyBridgeFromObjectiveC(_:)();
        v27 = v26;

        v28 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v25, v27, &v34);

        *(v21 + 14) = v28;
        _os_log_impl(&dword_2232BB000, oslog, v20, "PluginWarmupHandler#warmup %s plugin warmup successful with result %s", v21, 0x16u);
        swift_arrayDestroy();
        MEMORY[0x223DE0F80](v22, -1, -1);
        MEMORY[0x223DE0F80](v21, -1, -1);

        return;
      }
    }

    else
    {
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v30 = type metadata accessor for Logger();
      __swift_project_value_buffer(v30, static Logger.pommes);
      oslog = Logger.logObject.getter();
      v31 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(oslog, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_2232BB000, oslog, v31, "PluginWarmupHandler#warmup Service helper returned nil responseCommand. Please make sure we set the right refId and check assistantd logs for more details.", v32, 2u);
        MEMORY[0x223DE0F80](v32, -1, -1);
      }
    }

    v29 = oslog;
  }
}

uint64_t PluginWarmupHandler.deinit()
{

  return v0;
}

uint64_t PluginWarmupHandler.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

void specialized Sequence.forEach(_:)(void (*a1)(id *), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_14;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    v6 = 0;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v7 = MEMORY[0x223DDFF80](v6, a3);
      }

      else
      {
        if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v7 = *(a3 + 8 * v6 + 32);
      }

      v8 = v7;
      v9 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      v11 = v7;
      a1(&v11);

      if (!v3)
      {
        ++v6;
        if (v9 != i)
        {
          continue;
        }
      }

      return;
    }

    __break(1u);
LABEL_13:
    __break(1u);
LABEL_14:
    ;
  }
}

uint64_t specialized Collection<>.merge<A>(with:by:isAscending:)(unint64_t a1, unint64_t a2, char a3, unint64_t a4)
{
  v40 = MEMORY[0x277D84F90];
  if (a4 >> 62)
  {
LABEL_105:
    v37 = a4 & 0xFFFFFFFFFFFFFF8;
    v30 = a4;
    v31 = __CocoaSet.count.getter();
    a4 = v30;
    v6 = v31;
  }

  else
  {
    v37 = a4 & 0xFFFFFFFFFFFFFF8;
    v6 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = 0;
  v8 = 0;
  v32 = a4;
  v9 = a4 & 0xC000000000000001;
  v10 = a4 + 32;
  v35 = a1 + 32;
  v36 = a1 & 0xC000000000000001;
  result = MEMORY[0x277D84F90];
  v33 = a2;
  while (1)
  {
    while (1)
    {
      v12 = a1 >> 62;
      if (v8 >= v6)
      {
        if (v12)
        {
          v28 = result;
          v29 = __CocoaSet.count.getter();
          result = v28;
          a2 = v33;
          if (v7 >= v29)
          {
            return result;
          }
        }

        else if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          return result;
        }
      }

      if (v8 == v6)
      {
        if (v36)
        {
          MEMORY[0x223DDFF80](v7, a1);
        }

        else
        {
          if ((v7 & 0x8000000000000000) != 0)
          {
            goto LABEL_102;
          }

          if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_104;
          }

          v15 = *(v35 + 8 * v7);
        }

        MEMORY[0x223DDF820]();
        if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          a2 = v33;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v14 = __OFADD__(v7++, 1);
        if (v14)
        {
          goto LABEL_103;
        }

        v8 = v6;
        goto LABEL_27;
      }

      if (v12)
      {
        break;
      }

      if (v7 != *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_29;
      }

LABEL_11:
      if (v9)
      {
        MEMORY[0x223DDFF80](v8, v32);
      }

      else
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_90:
          __break(1u);
LABEL_91:
          __break(1u);
LABEL_92:
          __break(1u);
LABEL_93:
          __break(1u);
LABEL_94:
          __break(1u);
LABEL_95:
          __break(1u);
LABEL_96:
          __break(1u);
LABEL_97:
          __break(1u);
LABEL_98:
          __break(1u);
LABEL_99:
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
          goto LABEL_105;
        }

        if (v8 >= *(v37 + 16))
        {
          goto LABEL_91;
        }

        v13 = *(v10 + 8 * v8);
      }

      MEMORY[0x223DDF820]();
      a2 = *((v40 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (a2 >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v14 = __OFADD__(v8++, 1);
      if (v14)
      {
        goto LABEL_90;
      }

      a2 = v33;
LABEL_4:
      result = v40;
    }

    if (v7 == __CocoaSet.count.getter())
    {
      goto LABEL_11;
    }

LABEL_29:
    if (a3)
    {
      if (v9)
      {
        v16 = MEMORY[0x223DDFF80](v8, v32);
      }

      else
      {
        if ((v8 & 0x8000000000000000) != 0)
        {
          goto LABEL_93;
        }

        if (v8 >= *(v37 + 16))
        {
          goto LABEL_95;
        }

        v16 = *(v10 + 8 * v8);
      }

      v17 = v16;
      swift_getAtKeyPath();

      if (v36)
      {
        v18 = MEMORY[0x223DDFF80](v7, a1);
      }

      else
      {
        if ((v7 & 0x8000000000000000) != 0)
        {
          goto LABEL_96;
        }

        if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_99;
        }

        v18 = *(v35 + 8 * v7);
      }

      v19 = v18;
      swift_getAtKeyPath();

      if (v39 < v38)
      {
        if (v9)
        {
          MEMORY[0x223DDFF80](v8, v32);
        }

        else
        {
          v24 = *(v10 + 8 * v8);
        }

        MEMORY[0x223DDF820]();
        if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          a2 = v33;
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v14 = __OFADD__(v8++, 1);
        if (v14)
        {
          goto LABEL_101;
        }

        goto LABEL_4;
      }

      if (v36)
      {
        MEMORY[0x223DDFF80](v7, a1);
      }

      else
      {
        v26 = *(v35 + 8 * v7);
      }

      MEMORY[0x223DDF820]();
      if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        a2 = v33;
      }

      result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v14 = __OFADD__(v7++, 1);
      if (v14)
      {
        goto LABEL_106;
      }

      goto LABEL_27;
    }

    if (v9)
    {
      v20 = MEMORY[0x223DDFF80](v8, v32);
    }

    else
    {
      if ((v8 & 0x8000000000000000) != 0)
      {
        goto LABEL_92;
      }

      if (v8 >= *(v37 + 16))
      {
        goto LABEL_94;
      }

      v20 = *(v10 + 8 * v8);
    }

    v21 = v20;
    swift_getAtKeyPath();

    if (v36)
    {
      v22 = MEMORY[0x223DDFF80](v7, a1);
    }

    else
    {
      if ((v7 & 0x8000000000000000) != 0)
      {
        goto LABEL_97;
      }

      if (v7 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_98;
      }

      v22 = *(v35 + 8 * v7);
    }

    v23 = v22;
    swift_getAtKeyPath();

    if (v39 >= v38)
    {
      if (v9)
      {
        MEMORY[0x223DDFF80](v8, v32);
      }

      else
      {
        v25 = *(v10 + 8 * v8);
      }

      MEMORY[0x223DDF820]();
      if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        a2 = v33;
      }

      specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
      v14 = __OFADD__(v8++, 1);
      if (v14)
      {
        goto LABEL_100;
      }

      goto LABEL_4;
    }

    if (v36)
    {
      MEMORY[0x223DDFF80](v7, a1);
    }

    else
    {
      v27 = *(v35 + 8 * v7);
    }

    MEMORY[0x223DDF820]();
    if (*((v40 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v40 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
      a2 = v33;
    }

    result = specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v14 = __OFADD__(v7++, 1);
    if (v14)
    {
      break;
    }

LABEL_27:
    result = v40;
  }

  __break(1u);
LABEL_106:
  __break(1u);
  return result;
}

uint64_t AudioRanker.__allocating_init(localeIdentifier:)(uint64_t a1, uint64_t a2)
{
  v2 = swift_allocObject();
  v3 = OBJC_IVAR____TtC21SiriInformationSearch11AudioRanker_locale;
  Locale.init(identifier:)();
  v4 = type metadata accessor for Locale();
  (*(*(v4 - 8) + 56))(v2 + v3, 0, 1, v4);
  return v2;
}

uint64_t AudioRanker.init(localeIdentifier:)(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v8 - v4;
  Locale.init(identifier:)();
  v6 = type metadata accessor for Locale();
  (*(*(v6 - 8) + 56))(v5, 0, 1, v6);
  outlined init with take of Locale?(v5, v2 + OBJC_IVAR____TtC21SiriInformationSearch11AudioRanker_locale);
  return v2;
}

uint64_t outlined init with take of Locale?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t AudioRanker.rank(query:clientCandidate:serverCandidate:clientSignals:)(uint64_t a1, unint64_t a2, unint64_t a3, uint64_t a4)
{
  v200 = a4;
  v190 = a1;
  v218 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioItemType();
  v215 = *(v218 - 8);
  MEMORY[0x28223BE20](v218);
  v222 = &v183 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v221 = type metadata accessor for Apple_Parsec_Siri_V2alpha_LibraryResultTypedScoreMultiplier();
  v219 = *(v221 - 8);
  MEMORY[0x28223BE20](v221);
  v220 = &v183 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v187 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientRankingOverrides();
  v186 = *(v187 - 8);
  v8 = MEMORY[0x28223BE20](v187);
  v185 = &v183 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v184 = &v183 - v10;
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ClientSignals();
  v203 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v189 = &v183 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpact();
  v216 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = &v183 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v217 = type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo.ClientMusicSuggestionImpactInfo();
  v214 = *(v217 - 1);
  MEMORY[0x28223BE20](v217);
  v213 = &v183 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMR);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v20 = (&v183 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v18);
  v22 = &v183 - v21;
  v196 = type metadata accessor for Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo();
  v195 = *(v196 - 8);
  v23 = MEMORY[0x28223BE20](v196);
  v25 = &v183 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x28223BE20](v23);
  v212 = &v183 - v27;
  MEMORY[0x28223BE20](v26);
  v199 = &v183 - v28;
  v224 = a3;
  v225 = a2;
  v29 = one-time initialization token for pommes;
  v197 = a2;

  v198 = a3;

  if (v29 != -1)
  {
    goto LABEL_78;
  }

  while (1)
  {
    v30 = type metadata accessor for Logger();
    v31 = __swift_project_value_buffer(v30, static Logger.pommes);
    v32 = Logger.logObject.getter();
    v33 = static os_log_type_t.debug.getter();
    v34 = os_log_type_enabled(v32, v33);
    v202 = v11;
    v201 = v31;
    v194 = v20;
    v188 = v13;
    if (v34)
    {
      v35 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v223 = v13;
      *v35 = 136315138;
      v36 = type metadata accessor for AudioItemCandidate(0);

      v38 = MEMORY[0x223DDF870](v37, v36);
      v40 = v39;

      v41 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v38, v40, &v223);

      *(v35 + 4) = v41;
      _os_log_impl(&dword_2232BB000, v32, v33, "AudioRanker#rank clientCandidate: %s", v35, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x223DE0F80](v13, -1, -1);
      MEMORY[0x223DE0F80](v35, -1, -1);
    }

    v42 = Logger.logObject.getter();
    v43 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      v13 = swift_slowAlloc();
      v223 = v13;
      *v44 = 136315138;
      v45 = type metadata accessor for AudioItemCandidate(0);

      v47 = MEMORY[0x223DDF870](v46, v45);
      v49 = v48;

      v50 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v47, v49, &v223);

      *(v44 + 4) = v50;
      _os_log_impl(&dword_2232BB000, v42, v43, "AudioRanker#rank serverCandidate: %s", v44, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v13);
      MEMORY[0x223DE0F80](v13, -1, -1);
      MEMORY[0x223DE0F80](v44, -1, -1);
    }

    v51 = v202;
    v52 = v203;
    v20 = v25;
    outlined init with copy of MediaUserStateCenter?(v200, v22, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMR);
    v53 = *(v52 + 48);
    v192 = v52 + 48;
    v191 = v53;
    if (v53(v22, 1, v51) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v22, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMR);
      v54 = Logger.logObject.getter();
      v55 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v54, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 0;
        _os_log_impl(&dword_2232BB000, v54, v55, "AudioRanker#rank musicRankingInfluenceImpactInfo: NOT_AVAILABLE ", v56, 2u);
        MEMORY[0x223DE0F80](v56, -1, -1);
      }
    }

    else
    {
      v57 = v212;
      Apple_Parsec_Siri_V2alpha_ClientSignals.musicRankingInfluenceImpactInfo.getter();
      (*(v52 + 8))(v22, v51);
      v58 = v195;
      v59 = v199;
      v60 = v196;
      (*(v195 + 32))(v199, v57, v196);
      (*(v58 + 16))(v20, v59, v60);
      v11 = Logger.logObject.getter();
      v61 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v11, v61))
      {
        v62 = swift_slowAlloc();
        v13 = swift_slowAlloc();
        v223 = v13;
        *v62 = 136315138;
        lazy protocol witness table accessor for type Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpact and conformance Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpact(&lazy protocol witness table cache variable for type Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo and conformance Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo, MEMORY[0x277D39D38], MEMORY[0x277D39D30]);
        v63 = Message.debugDescription.getter();
        v64 = v20;
        v20 = v65;
        v183 = *(v58 + 8);
        v183(v64, v60);
        v66 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v63, v20, &v223);

        *(v62 + 4) = v66;
        _os_log_impl(&dword_2232BB000, v11, v61, "AudioRanker#rank musicRankingInfluenceImpactInfo: %s", v62, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v13);
        MEMORY[0x223DE0F80](v13, -1, -1);
        MEMORY[0x223DE0F80](v62, -1, -1);
      }

      else
      {

        v183 = *(v58 + 8);
        v183(v20, v60);
      }

      v22 = v188;
      v67 = Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo.suggestionImpactInfo.getter();
      v204 = *(v67 + 16);
      if (v204)
      {
        v25 = 0;
        v210 = v214 + 16;
        v209 = *MEMORY[0x277D39C78];
        v208 = v216 + 104;
        v207 = *MEMORY[0x277D39CA8];
        v206 = v214 + 8;
        v211 = (v216 + 8);
        v205 = xmmword_2234CF940;
        v212 = v67;
        while (v25 < *(v67 + 16))
        {
          v68 = v214;
          v69 = v213;
          (*(v214 + 16))(v213, v67 + ((*(v68 + 80) + 32) & ~*(v68 + 80)) + *(v68 + 72) * v25, v217);
          __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy10PegasusAPI52Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactOGMd, &_ss23_ContiguousArrayStorageCy10PegasusAPI52Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactOGMR);
          v70 = v216;
          v11 = *(v216 + 72);
          v71 = (*(v216 + 80) + 32) & ~*(v216 + 80);
          v13 = swift_allocObject();
          *(v13 + 16) = v205;
          v20 = (v13 + v71);
          v72 = *(v70 + 104);
          v72(v20, v209, v22);
          v72((v20 + v11), v207, v22);
          Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpactInfo.ClientMusicSuggestionImpactInfo.impact.getter();
          (*(v68 + 8))(v69, v217);
          lazy protocol witness table accessor for type Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpact and conformance Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpact(&lazy protocol witness table cache variable for type Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpact and conformance Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpact, MEMORY[0x277D39CB8], MEMORY[0x277D39CC0]);
          if (dispatch thunk of static Equatable.== infix(_:_:)() & 1) != 0 || (dispatch thunk of static Equatable.== infix(_:_:)())
          {

            (*v211)(v15, v22);

            v179 = Logger.logObject.getter();
            v180 = static os_log_type_t.info.getter();
            if (os_log_type_enabled(v179, v180))
            {
              v181 = swift_slowAlloc();
              *v181 = 0;
              _os_log_impl(&dword_2232BB000, v179, v180, "AudioRanker#rank musicRankingInfluenceImpactInfo: Top result from the server is a slotted result. Ignoring the client results and returning the server results", v181, 2u);
              MEMORY[0x223DE0F80](v181, -1, -1);
            }

            v183(v199, v196);

            return v198;
          }

          ++v25;

          (*v211)(v15, v22);
          v67 = v212;
          if (v204 == v25)
          {
            goto LABEL_19;
          }
        }

        goto LABEL_77;
      }

LABEL_19:
      v183(v199, v196);
    }

    v73 = v193;
    v74 = v190;
    swift_beginAccess();
    swift_beginAccess();
    AudioRanker.featurise(clientCandidate:serverCandidate:with:)(&v225, &v224, v74);
    swift_endAccess();
    swift_endAccess();
    v75 = Logger.logObject.getter();
    v76 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v75, v76))
    {
      v77 = swift_slowAlloc();
      v78 = swift_slowAlloc();
      v223 = v78;
      *v77 = 136315138;
      v79 = type metadata accessor for AudioItemCandidate(0);

      v81 = MEMORY[0x223DDF870](v80, v79);
      v83 = v82;

      v84 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v81, v83, &v223);

      *(v77 + 4) = v84;
      _os_log_impl(&dword_2232BB000, v75, v76, "AudioRanker#rank Post featurise-clientCandidate: %s", v77, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v78);
      MEMORY[0x223DE0F80](v78, -1, -1);
      MEMORY[0x223DE0F80](v77, -1, -1);
    }

    v85 = Logger.logObject.getter();
    v86 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      v88 = swift_slowAlloc();
      v223 = v88;
      *v87 = 136315138;
      v89 = type metadata accessor for AudioItemCandidate(0);

      v91 = MEMORY[0x223DDF870](v90, v89);
      v93 = v92;

      v94 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v91, v93, &v223);

      *(v87 + 4) = v94;
      _os_log_impl(&dword_2232BB000, v85, v86, "AudioRanker#rank Post featurise-serverCandidate: %s", v87, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v88);
      MEMORY[0x223DE0F80](v88, -1, -1);
      MEMORY[0x223DE0F80](v87, -1, -1);
    }

    swift_beginAccess();
    v95 = *(*v73 + 112);
    v95(&v225, 1);
    swift_endAccess();
    swift_beginAccess();
    v95(&v224, 1);
    swift_endAccess();
    v96 = Logger.logObject.getter();
    v97 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v96, v97))
    {
      v98 = swift_slowAlloc();
      v99 = swift_slowAlloc();
      v223 = v99;
      *v98 = 136315138;
      v100 = type metadata accessor for AudioItemCandidate(0);

      v102 = MEMORY[0x223DDF870](v101, v100);
      v104 = v103;

      v105 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v102, v104, &v223);

      *(v98 + 4) = v105;
      _os_log_impl(&dword_2232BB000, v96, v97, "AudioRanker#rank Post score-clientCandidate: %s", v98, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v99);
      MEMORY[0x223DE0F80](v99, -1, -1);
      MEMORY[0x223DE0F80](v98, -1, -1);
    }

    v106 = v224;

    v107 = Logger.logObject.getter();
    v108 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v107, v108))
    {
      v109 = swift_slowAlloc();
      v110 = swift_slowAlloc();
      v223 = v110;
      *v109 = 136315138;
      v111 = type metadata accessor for AudioItemCandidate(0);
      v112 = MEMORY[0x223DDF870](v106, v111);
      v114 = v113;

      v115 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v112, v114, &v223);

      *(v109 + 4) = v115;
      _os_log_impl(&dword_2232BB000, v107, v108, "AudioRanker#rank Post score-serverCandidate: %s", v109, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v110);
      MEMORY[0x223DE0F80](v110, -1, -1);
      MEMORY[0x223DE0F80](v109, -1, -1);
    }

    else
    {
    }

    v116 = v203;
    v117 = v194;
    outlined init with copy of MediaUserStateCenter?(v200, v194, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMR);
    v118 = v202;
    if (v191(v117, 1, v202) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v117, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMd, &_s10PegasusAPI39Apple_Parsec_Siri_V2alpha_ClientSignalsVSgMR);
      goto LABEL_64;
    }

    v213 = v106;
    (*(v116 + 32))(v189, v117, v118);
    v119 = v184;
    Apple_Parsec_Siri_V2alpha_ClientSignals.clientRankingOverrides.getter();
    Apple_Parsec_Siri_V2alpha_ClientRankingOverrides.libraryResultUniversalScoreMultiplier.getter();
    v121 = v120;
    v25 = v186 + 8;
    v122 = *(v186 + 8);
    v123 = v119;
    v15 = v187;
    v122(v123, v187);
    if (v121 >= 0.001)
    {
      v124 = v121;
    }

    else
    {
      v124 = 1.0;
    }

    v125 = v185;
    v126 = Apple_Parsec_Siri_V2alpha_ClientSignals.clientRankingOverrides.getter();
    v13 = MEMORY[0x223DDB8E0](v126);
    v122(v125, v15);
    v127 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfC10PegasusAPI39Apple_Parsec_Siri_V2alpha_AudioItemTypeO_SfTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v20 = *(v13 + 16);
    if (v20)
    {
      v22 = 0;
      v128 = (v13 + ((*(v219 + 80) + 32) & ~*(v219 + 80)));
      v11 = v219 + 16;
      v214 = v215 + 16;
      v216 = v219 + 8;
      v217 = (v215 + 8);
      while (v22 < *(v13 + 16))
      {
        v129 = (*(v219 + 16))(v220, &v128[*(v219 + 72) * v22], v221);
        v25 = v222;
        v130 = MEMORY[0x223DDBC80](v129);
        v131 = MEMORY[0x223DDBC90](v130);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v223 = v127;
        v133 = specialized __RawDictionaryStorage.find<A>(_:)(v25);
        v135 = v127[2];
        v136 = (v134 & 1) == 0;
        v137 = __OFADD__(v135, v136);
        v138 = v135 + v136;
        if (v137)
        {
          goto LABEL_73;
        }

        v25 = v134;
        if (v127[3] >= v138)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v146 = v133;
            specialized _NativeDictionary.copy()();
            v133 = v146;
          }
        }

        else
        {
          specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v138, isUniquelyReferenced_nonNull_native);
          v133 = specialized __RawDictionaryStorage.find<A>(_:)(v222);
          if ((v25 & 1) != (v139 & 1))
          {
            KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
            __break(1u);

            __break(1u);
            return result;
          }
        }

        v140 = v124 * v131;
        v127 = v223;
        if (v25)
        {
          *(v223[7] + 4 * v133) = v140;
          (*v217)(v222, v218);
          (*v216)(v220, v221);
        }

        else
        {
          v15 = v128;
          v141 = v20;
          v20 = v13;
          v223[(v133 >> 6) + 8] |= 1 << v133;
          v142 = v215;
          v143 = v133;
          v13 = v222;
          v25 = v218;
          (*(v215 + 16))(v127[6] + *(v215 + 72) * v133, v222, v218);
          *(v127[7] + 4 * v143) = v140;
          (*(v142 + 8))(v13, v25);
          (*v216)(v220, v221);
          v144 = v127[2];
          v137 = __OFADD__(v144, 1);
          v145 = v144 + 1;
          if (v137)
          {
            goto LABEL_76;
          }

          v127[2] = v145;
          v13 = v20;
          v20 = v141;
          v128 = v15;
        }

        if (v20 == ++v22)
        {
          goto LABEL_48;
        }
      }

      __break(1u);
LABEL_73:
      __break(1u);
      goto LABEL_74;
    }

LABEL_48:

    v11 = v225;
    v25 = v225 >> 62 ? __CocoaSet.count.getter() : *((v225 & 0xFFFFFFFFFFFFFF8) + 0x10);

    if (!v25)
    {
      break;
    }

    v147 = 0;
    v15 = (v11 & 0xC000000000000001);
    v22 = v11 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if (v15)
      {
        v150 = MEMORY[0x223DDFF80](v147, v11);
      }

      else
      {
        if (v147 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_75;
        }

        v150 = *(v11 + 8 * v147 + 32);
      }

      v20 = v150;
      v13 = v147 + 1;
      if (__OFADD__(v147, 1))
      {
        break;
      }

      v151 = v124;
      if (v127[2])
      {
        v152 = specialized __RawDictionaryStorage.find<A>(_:)(v150 + OBJC_IVAR____TtC21SiriInformationSearch18AudioItemCandidate_itemType);
        v151 = v124;
        if (v153)
        {
          v151 = *(v127[7] + 4 * v152);
        }
      }

      v148 = (*((*MEMORY[0x277D85000] & *v20) + 0xB0))(&v223);
      *v149 = v151 * *v149;
      v148(&v223, 0);

      ++v147;
      if (v13 == v25)
      {
        goto LABEL_61;
      }
    }

LABEL_74:
    __break(1u);
LABEL_75:
    __break(1u);
LABEL_76:
    __break(1u);
LABEL_77:
    __break(1u);
LABEL_78:
    swift_once();
  }

LABEL_61:

  v154 = Logger.logObject.getter();
  v155 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v154, v155))
  {
    v156 = swift_slowAlloc();
    v157 = swift_slowAlloc();
    v223 = v157;
    *v156 = 136315138;
    v158 = type metadata accessor for AudioItemCandidate(0);

    v160 = MEMORY[0x223DDF870](v159, v158);
    v162 = v161;

    v163 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v160, v162, &v223);

    *(v156 + 4) = v163;
    _os_log_impl(&dword_2232BB000, v154, v155, "AudioRanker#rank Post multipliers-clientCandidate: %s", v156, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v157);
    MEMORY[0x223DE0F80](v157, -1, -1);
    MEMORY[0x223DE0F80](v156, -1, -1);
  }

  (*(v203 + 8))(v189, v202);
  v106 = v213;
LABEL_64:
  v164 = v225;
  swift_bridgeObjectRetain_n();
  v223 = specialized Array._copyToContiguousArray()(v164);
  specialized MutableCollection<>.sort(by:)(&v223);
  swift_bridgeObjectRelease_n();
  v165 = v223;

  v166 = Logger.logObject.getter();
  v167 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v166, v167))
  {
    v168 = swift_slowAlloc();
    v169 = swift_slowAlloc();
    v223 = v169;
    *v168 = 136315138;
    v170 = type metadata accessor for AudioItemCandidate(0);
    v171 = MEMORY[0x223DDF870](v165, v170);
    v172 = v106;
    v174 = v173;

    v175 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v171, v174, &v223);
    v106 = v172;

    *(v168 + 4) = v175;
    _os_log_impl(&dword_2232BB000, v166, v167, "AudioRanker#rank Post sorting by score-clientCandidate: %s", v168, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v169);
    MEMORY[0x223DE0F80](v169, -1, -1);
    MEMORY[0x223DE0F80](v168, -1, -1);
  }

  else
  {
  }

  KeyPath = swift_getKeyPath();

  v178 = specialized Collection<>.merge<A>(with:by:isAscending:)(v177, KeyPath, 0, v106);
  swift_bridgeObjectRelease_n();

  return v178;
}

uint64_t AudioRanker.featurise(clientCandidate:serverCandidate:with:)(unint64_t *a1, uint64_t *a2, unint64_t a3)
{
  v37 = a1;
  v38 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v37 - v5);
  v7 = v45;
  v8 = type metadata accessor for AudioTypeFeaturiser(0);
  swift_allocObject();

  v10 = specialized AudioTypeFeaturiser.init(query:)(v9);

  v45[7] = v8;
  v45[8] = &protocol witness table for AudioTypeFeaturiser;
  v45[4] = v10;
  matched = type metadata accessor for SourceMatchFeaturiser(0);
  swift_allocObject();

  v13 = specialized SourceMatchFeaturiser.init(query:)(v12);

  v45[12] = matched;
  v45[13] = &protocol witness table for SourceMatchFeaturiser;
  v45[9] = v13;
  v14 = type metadata accessor for SourcePriorityFeaturiser();
  swift_allocObject();

  v16 = SourcePriorityFeaturiser.init(query:)(v15);
  v45[17] = v14;
  v45[18] = &protocol witness table for SourcePriorityFeaturiser;
  v45[14] = v16;
  v17 = type metadata accessor for DownloadedFeaturiser();
  v18 = swift_allocObject();
  v19 = one-time initialization token for pommes;

  if (v19 != -1)
  {
    goto LABEL_21;
  }

LABEL_2:
  v39 = v7 + 32;
  v20 = type metadata accessor for Logger();
  __swift_project_value_buffer(v20, static Logger.pommes);

  v21 = Logger.logObject.getter();
  v22 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 67109120;
    *(v23 + 4) = *(a3 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_networkAvailableAtRequest);

    _os_log_impl(&dword_2232BB000, v21, v22, "DownloadedFeaturiser : networkAvailable=%{BOOL}d", v23, 8u);
    MEMORY[0x223DE0F80](v23, -1, -1);
  }

  else
  {
  }

  *(v18 + 16) = *(a3 + OBJC_IVAR____TtC21SiriInformationSearch10AudioQuery_networkAvailableAtRequest);

  v45[22] = v17;
  v45[23] = &protocol witness table for DownloadedFeaturiser;
  v45[19] = v18;
  v24 = type metadata accessor for UserPersonaFeaturiser();
  swift_allocObject();

  v25 = UserPersonaFeaturiser.init(query:)();
  v45[27] = v24;
  v45[28] = &protocol witness table for UserPersonaFeaturiser;
  v45[24] = v25;
  outlined init with copy of MediaUserStateCenter?(v40 + OBJC_IVAR____TtC21SiriInformationSearch11AudioRanker_locale, v6, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);
  v26 = type metadata accessor for QTreeFeaturiser(0);
  swift_allocObject();

  v28 = QTreeFeaturiser.init(query:locale:)(v27, v6);
  v7 = 0;
  a3 = 0;
  v45[32] = v26;
  v45[33] = &protocol witness table for QTreeFeaturiser;
  v45[29] = v28;
  do
  {
    v29 = outlined init with copy of AppDataProviding(v39 + 40 * v7, v42);
    v6 = &v37;
    v30 = *v37;
    MEMORY[0x28223BE20](v29);
    *(&v37 - 2) = v42;

    specialized Sequence.forEach(_:)(partial apply for closure #1 in closure #1 in AudioRanker.featurise(clientCandidate:serverCandidate:with:), (&v37 - 4), v30);

    v31 = *v38;
    v40 = a3;
    if (v31 >> 62)
    {
      v35 = __CocoaSet.count.getter();
      if (v35 < 0)
      {
        goto LABEL_20;
      }

      v32 = v35;
      a3 = v7;
      if (v35)
      {
LABEL_9:
        v33 = 0;
        v6 = (v31 & 0xFFFFFFFFFFFFFF8);
        do
        {
          if ((v31 & 0xC000000000000001) != 0)
          {
            v34 = MEMORY[0x223DDFF80](v33, v31);
          }

          else
          {
            if (v33 >= *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              __break(1u);
LABEL_20:
              __break(1u);
LABEL_21:
              swift_once();
              goto LABEL_2;
            }

            v34 = *(v31 + 8 * v33 + 32);
          }

          v7 = v33 + 1;
          v41[0] = v34;
          v17 = v43;
          v18 = v44;
          __swift_project_boxed_opaque_existential_1(v42, v43);
          (*(v18 + 16))(v41, v33, v17, v18);

          v33 = v7;
        }

        while (v32 != v7);
      }
    }

    else
    {
      a3 = v7;
      v32 = *((v31 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v32)
      {
        goto LABEL_9;
      }
    }

    v7 = a3 + 1;
    __swift_destroy_boxed_opaque_existential_1(v42);
    a3 = v40;
  }

  while (v7 != 6);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch10Featuriser_pMd, &_s21SiriInformationSearch10Featuriser_pMR);
  return swift_arrayDestroy();
}

void closure #1 in closure #1 in AudioRanker.featurise(clientCandidate:serverCandidate:with:)(id *a1, void *a2)
{
  v5 = *a1;
  v2 = a2[3];
  v3 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v2);
  v4 = v5;
  Featuriser.featurise(candidate:)(&v5, v2, v3);
}

Swift::Void __swiftcall AudioRanker.score(items:maxCandidateFieldCount:)(Swift::OpaquePointer *items, Swift::Int maxCandidateFieldCount)
{
  rawValue = items->_rawValue;
  if (items->_rawValue >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = __CocoaSet.count.getter())
  {
    for (j = 0; ; ++j)
    {
      if ((rawValue & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x223DDFF80](j, rawValue);
      }

      else
      {
        if (j >= *((rawValue & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_12;
        }

        v5 = *(rawValue + 8 * j + 32);
      }

      v6 = v5;
      v7 = j + 1;
      if (__OFADD__(j, 1))
      {
        break;
      }

      v8 = v5;
      closure #1 in AudioRanker.score(items:maxCandidateFieldCount:)(&v8);

      if (v7 == i)
      {
        return;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

uint64_t closure #1 in AudioRanker.score(items:maxCandidateFieldCount:)(void **a1)
{
  v1 = *a1;
  v2 = MEMORY[0x277D85000];
  v3 = *((*MEMORY[0x277D85000] & **a1) + 0xB8);
  v4 = v3();
  v5 = (*((*v2 & *v4) + 0x98))();

  v6 = v3();
  v7 = (*((*v2 & *v6) + 0x80))();

  v8 = v3();
  v9 = (*((*v2 & *v8) + 0xE0))();

  v10 = v3();
  v11 = (*((*v2 & *v10) + 0xF8))();

  v12 = v3();
  v13 = (*((*v2 & *v12) + 0xB0))();

  v14 = v3();
  v15 = (*((*v2 & *v14) + 0xF8))();

  v16 = ((v13 * v15) * 2.2) + 1.0;
  if (v13 < 0.001)
  {
    v16 = 1.0;
  }

  v17 = (((v5 * v7) * v9) * v11) * v16;
  v18 = v3();
  v19 = (*((*v2 & *v18) + 0xC8))();

  v20 = v3();
  (*((*v2 & *v20) + 0xF8))();

  return (*((*v2 & *v1) + 0xA8))(v17 * v19);
}

uint64_t AudioRanker.__deallocating_deinit()
{
  outlined destroy of MediaUserStateCenter?(v0 + OBJC_IVAR____TtC21SiriInformationSearch11AudioRanker_locale, &_s10Foundation6LocaleVSgMd, &_s10Foundation6LocaleVSgMR);

  return swift_deallocClassInstance();
}

uint64_t specialized MutableCollection<>.sort(by:)(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = specialized _ContiguousArrayBuffer._consumeAndCreateNew()(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(v6);
  return specialized ContiguousArray._endMutation()();
}

void specialized UnsafeMutableBufferPointer._stableSortImpl(by:)(uint64_t *a1)
{
  v2 = a1[1];
  v3 = _minimumMergeRunLength(_:)(v2);
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for AudioItemCandidate(0);
        v6 = static Array._allocateBufferUninitialized(minimumCapacity:)();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(0, v2, 1, a1);
  }
}

void specialized MutableCollection<>._insertionSort(within:sortedEnd:by:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = a1 - a3;
    v7 = MEMORY[0x277D85000];
LABEL_5:
    v20 = a3;
    v8 = *(v4 + 8 * a3);
    v18 = v6;
    v19 = v5;
    while (1)
    {
      v9 = *v5;
      v10 = *((*v7 & *v8) + 0xA0);
      v11 = v8;
      v12 = v9;
      v13 = v10();
      v14 = (*((*v7 & *v12) + 0xA0))();

      if (v14 >= v13)
      {
LABEL_4:
        a3 = v20 + 1;
        v5 = v19 + 8;
        v6 = v18 - 1;
        if (v20 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v15 = *v5;
      v8 = *(v5 + 8);
      *v5 = v8;
      *(v5 + 8) = v15;
      v5 -= 8;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void specialized closure #1 in UnsafeMutableBufferPointer._stableSortImpl(by:)(id **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_88:
    v8 = *a1;
    if (!*a1)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_120:
      v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
    }

    v98 = *(v9 + 2);
    if (v98 >= 2)
    {
      while (*v6)
      {
        v99 = v9;
        v9 = (v98 - 1);
        v100 = *&v99[16 * v98];
        v101 = *&v99[16 * v98 + 24];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v6 + 8 * v100), (*v6 + 8 * *&v99[16 * v98 + 16]), (*v6 + 8 * v101), v8);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v101 < v100)
        {
          goto LABEL_113;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v99 = specialized _ArrayBuffer._consumeAndCreateNew()(v99);
        }

        if (v98 - 2 >= *(v99 + 2))
        {
          goto LABEL_114;
        }

        v102 = &v99[16 * v98];
        *v102 = v100;
        *(v102 + 1) = v101;
        specialized Array.remove(at:)(v98 - 1);
        v9 = v99;
        v98 = *(v99 + 2);
        if (v98 <= 1)
        {
          goto LABEL_98;
        }
      }

      goto LABEL_124;
    }

LABEL_98:

    return;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8;
    v8 = (v8 + 1);
    if (v8 < v7)
    {
      v116 = v7;
      v105 = v9;
      v109 = v5;
      v11 = *(*v6 + 8 * v8);
      v12 = v10;
      v114 = 8 * v10;
      v13 = (*v6 + 8 * v10);
      v15 = *v13;
      v14 = v13 + 2;
      v16 = MEMORY[0x277D85000];
      v9 = *((*MEMORY[0x277D85000] & *v11) + 0xA0);
      v17 = v11;
      v18 = v15;
      v19 = (v9)();
      v20 = (*((*v16 & *v18) + 0xA0))();

      v107 = v12;
      v21 = (v12 + 2);
      while (1)
      {
        v8 = v116;
        if (v116 == v21)
        {
          break;
        }

        v22 = *(v14 - 1);
        v9 = MEMORY[0x277D85000];
        v23 = *((*MEMORY[0x277D85000] & **v14) + 0xA0);
        v24 = *v14;
        v25 = v22;
        v26 = v23();
        v27 = (*((*v9 & *v25) + 0xA0))();

        v21 = (v21 + 1);
        ++v14;
        if (v20 < v19 == v27 >= v26)
        {
          v8 = (v21 - 1);
          break;
        }
      }

      v10 = v107;
      v5 = v109;
      v6 = a3;
      v28 = v114;
      if (v20 < v19)
      {
        if (v8 < v107)
        {
          goto LABEL_117;
        }

        if (v107 < v8)
        {
          v29 = 8 * v8 - 8;
          v30 = v8;
          v31 = v107;
          do
          {
            v30 = (v30 - 1);
            if (v31 != v30)
            {
              v33 = *a3;
              if (!*a3)
              {
                goto LABEL_123;
              }

              v32 = *(v33 + v28);
              *(v33 + v28) = *(v33 + v29);
              *(v33 + v29) = v32;
            }

            v31 = (v31 + 1);
            v29 -= 8;
            v28 += 8;
          }

          while (v31 < v30);
        }
      }

      v9 = v105;
    }

    v34 = v6[1];
    if (v8 < v34)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < a4)
      {
        if (__OFADD__(v10, a4))
        {
          goto LABEL_118;
        }

        if (v10 + a4 >= v34)
        {
          v35 = v6[1];
        }

        else
        {
          v35 = (v10 + a4);
        }

        if (v35 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v35)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v9 + 2) + 1, 1, v9);
    }

    v52 = *(v9 + 2);
    v51 = *(v9 + 3);
    v53 = v52 + 1;
    if (v52 >= v51 >> 1)
    {
      v9 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)((v51 > 1), v52 + 1, 1, v9);
    }

    *(v9 + 2) = v53;
    v54 = &v9[16 * v52];
    *(v54 + 4) = v10;
    *(v54 + 5) = v8;
    v55 = *a1;
    if (!*a1)
    {
      goto LABEL_125;
    }

    if (v52)
    {
      while (1)
      {
        v56 = v53 - 1;
        if (v53 >= 4)
        {
          break;
        }

        if (v53 == 3)
        {
          v57 = *(v9 + 4);
          v58 = *(v9 + 5);
          v67 = __OFSUB__(v58, v57);
          v59 = v58 - v57;
          v60 = v67;
LABEL_57:
          if (v60)
          {
            goto LABEL_104;
          }

          v73 = &v9[16 * v53];
          v75 = *v73;
          v74 = *(v73 + 1);
          v76 = __OFSUB__(v74, v75);
          v77 = v74 - v75;
          v78 = v76;
          if (v76)
          {
            goto LABEL_107;
          }

          v79 = &v9[16 * v56 + 32];
          v81 = *v79;
          v80 = *(v79 + 1);
          v67 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v67)
          {
            goto LABEL_110;
          }

          if (__OFADD__(v77, v82))
          {
            goto LABEL_111;
          }

          if (v77 + v82 >= v59)
          {
            if (v59 < v82)
            {
              v56 = v53 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v83 = &v9[16 * v53];
        v85 = *v83;
        v84 = *(v83 + 1);
        v67 = __OFSUB__(v84, v85);
        v77 = v84 - v85;
        v78 = v67;
LABEL_71:
        if (v78)
        {
          goto LABEL_106;
        }

        v86 = &v9[16 * v56];
        v88 = *(v86 + 4);
        v87 = *(v86 + 5);
        v67 = __OFSUB__(v87, v88);
        v89 = v87 - v88;
        if (v67)
        {
          goto LABEL_109;
        }

        if (v89 < v77)
        {
          goto LABEL_3;
        }

LABEL_78:
        v94 = v56 - 1;
        if (v56 - 1 >= v53)
        {
          __break(1u);
LABEL_100:
          __break(1u);
LABEL_101:
          __break(1u);
LABEL_102:
          __break(1u);
LABEL_103:
          __break(1u);
LABEL_104:
          __break(1u);
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          __break(1u);
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
LABEL_112:
          __break(1u);
LABEL_113:
          __break(1u);
LABEL_114:
          __break(1u);
LABEL_115:
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*v6)
        {
          goto LABEL_122;
        }

        v95 = *&v9[16 * v94 + 32];
        v96 = *&v9[16 * v56 + 40];
        specialized _merge<A>(low:mid:high:buffer:by:)((*v6 + 8 * v95), (*v6 + 8 * *&v9[16 * v56 + 32]), (*v6 + 8 * v96), v55);
        if (v5)
        {
          goto LABEL_98;
        }

        if (v96 < v95)
        {
          goto LABEL_100;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = specialized _ArrayBuffer._consumeAndCreateNew()(v9);
        }

        if (v94 >= *(v9 + 2))
        {
          goto LABEL_101;
        }

        v97 = &v9[16 * v94];
        *(v97 + 4) = v95;
        *(v97 + 5) = v96;
        specialized Array.remove(at:)(v56);
        v53 = *(v9 + 2);
        if (v53 <= 1)
        {
          goto LABEL_3;
        }
      }

      v61 = &v9[16 * v53 + 32];
      v62 = *(v61 - 64);
      v63 = *(v61 - 56);
      v67 = __OFSUB__(v63, v62);
      v64 = v63 - v62;
      if (v67)
      {
        goto LABEL_102;
      }

      v66 = *(v61 - 48);
      v65 = *(v61 - 40);
      v67 = __OFSUB__(v65, v66);
      v59 = v65 - v66;
      v60 = v67;
      if (v67)
      {
        goto LABEL_103;
      }

      v68 = &v9[16 * v53];
      v70 = *v68;
      v69 = *(v68 + 1);
      v67 = __OFSUB__(v69, v70);
      v71 = v69 - v70;
      if (v67)
      {
        goto LABEL_105;
      }

      v67 = __OFADD__(v59, v71);
      v72 = v59 + v71;
      if (v67)
      {
        goto LABEL_108;
      }

      if (v72 >= v64)
      {
        v90 = &v9[16 * v56 + 32];
        v92 = *v90;
        v91 = *(v90 + 1);
        v67 = __OFSUB__(v91, v92);
        v93 = v91 - v92;
        if (v67)
        {
          goto LABEL_112;
        }

        if (v59 < v93)
        {
          v56 = v53 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v7 = v6[1];
    if (v8 >= v7)
    {
      goto LABEL_88;
    }
  }

  v110 = v5;
  v36 = v10;
  v37 = *v6;
  v38 = *v6 + 8 * v8 - 8;
  v106 = v9;
  v108 = v36;
  v39 = v36 - v8;
  v112 = v35;
LABEL_30:
  v115 = v38;
  v117 = v8;
  v40 = *(v37 + 8 * v8);
  v113 = v39;
  v41 = v38;
  while (1)
  {
    v42 = *v41;
    v43 = MEMORY[0x277D85000];
    v44 = *((*MEMORY[0x277D85000] & *v40) + 0xA0);
    v45 = v40;
    v46 = v42;
    v47 = v44();
    v48 = (*((*v43 & *v46) + 0xA0))();

    if (v48 >= v47)
    {
LABEL_29:
      v8 = (v117 + 1);
      v38 = v115 + 8;
      v39 = v113 - 1;
      if ((v117 + 1) != v112)
      {
        goto LABEL_30;
      }

      v8 = v112;
      v10 = v108;
      v5 = v110;
      v6 = a3;
      v9 = v106;
      goto LABEL_37;
    }

    if (!v37)
    {
      break;
    }

    v49 = *v41;
    v40 = *(v41 + 8);
    *v41 = v40;
    *(v41 + 8) = v49;
    v41 -= 8;
    if (__CFADD__(v39++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
}

uint64_t specialized _merge<A>(low:mid:high:buffer:by:)(void **__src, id *__dst, id *a3, id *a4)
{
  v4 = a3;
  v5 = __dst;
  v6 = __src;
  v7 = __dst - __src;
  v8 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v8 = __dst - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - __dst;
  v11 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v11 = a3 - __dst;
  }

  v12 = v11 >> 3;
  if (v9 < v11 >> 3)
  {
    if (a4 != __src || &__src[v9] <= a4)
    {
      v13 = a4;
      memmove(a4, __src, 8 * v9);
      a4 = v13;
    }

    v39 = &a4[v9];
    v14 = a4;
    if (v7 < 8 || v5 >= v4)
    {
      v5 = v6;
      goto LABEL_38;
    }

    v37 = v4;
    while (1)
    {
      v15 = *v14;
      v16 = MEMORY[0x277D85000];
      v17 = *((*MEMORY[0x277D85000] & **v5) + 0xA0);
      v18 = *v5;
      v19 = v15;
      v20 = v17();
      v21 = (*((*v16 & *v19) + 0xA0))();

      if (v21 >= v20)
      {
        break;
      }

      v22 = v5;
      v23 = v6 == v5++;
      if (!v23)
      {
        goto LABEL_17;
      }

LABEL_18:
      ++v6;
      if (v14 >= v39 || v5 >= v37)
      {
        v5 = v6;
        goto LABEL_38;
      }
    }

    v22 = v14;
    v23 = v6 == v14++;
    if (v23)
    {
      goto LABEL_18;
    }

LABEL_17:
    *v6 = *v22;
    goto LABEL_18;
  }

  v14 = a4;
  if (a4 != __dst || &__dst[v12] <= a4)
  {
    memmove(a4, __dst, 8 * v12);
  }

  v39 = &v14[v12];
  if (v10 >= 8 && v5 > v6)
  {
    do
    {
      v24 = v5 - 1;
      v25 = v4 - 1;
      v26 = v39;
      v36 = v5 - 1;
      while (1)
      {
        v27 = v25;
        v28 = v25 + 1;
        v29 = *--v26;
        v30 = *v24;
        v38 = *((*MEMORY[0x277D85000] & *v29) + 0xA0);
        v31 = v29;
        v32 = v30;
        v33 = v38();
        v34 = (*((*MEMORY[0x277D85000] & *v32) + 0xA0))();

        if (v34 < v33)
        {
          break;
        }

        if (v28 != v39)
        {
          *v27 = *v26;
        }

        v25 = v27 - 1;
        v39 = v26;
        v24 = v5 - 1;
        if (v26 <= v14)
        {
          v39 = v26;
          goto LABEL_38;
        }
      }

      v4 = v27;
      if (v28 != v5)
      {
        *v27 = *v36;
      }

      if (v39 <= v14)
      {
        break;
      }

      --v5;
    }

    while (v36 > v6);
    v5 = v36;
  }

LABEL_38:
  if (v5 != v14 || v5 >= (v14 + ((v39 - v14 + (v39 - v14 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v5, v14, 8 * (v39 - v14));
  }

  return 1;
}

void *specialized Array._copyToContiguousArray()(unint64_t a1)
{
  if (!(a1 >> 62))
  {
    return (a1 & 0xFFFFFFFFFFFFFF8);
  }

  v3 = __CocoaSet.count.getter();
  if (!v3)
  {
LABEL_7:

    return MEMORY[0x277D84F90];
  }

  v4 = v3;
  v5 = _ss22_ContiguousArrayBufferV19_uninitializedCount15minimumCapacityAByxGSi_SitcfC21SiriInformationSearch18AudioItemCandidateC_Tt1g5(v3, 0);
  specialized Array._copyContents(initializing:)((v5 + 4), v4, a1);
  v7 = v6;

  result = v5;
  if (v7 != v4)
  {
    __break(1u);
    goto LABEL_7;
  }

  return result;
}

uint64_t lazy protocol witness table accessor for type Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpact and conformance Ampmusicfeedbackforpplpb_MusicRankingInfluenceImpact(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t type metadata accessor for AudioRanker(uint64_t a1)
{
  result = type metadata singleton initialization cache for AudioRanker;
  if (!type metadata singleton initialization cache for AudioRanker)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void type metadata completion function for AudioRanker(uint64_t a1)
{
  type metadata accessor for Locale?(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void type metadata accessor for Locale?(uint64_t a1)
{
  if (!lazy cache variable for type metadata for Locale?)
  {
    type metadata accessor for Locale();
    v1 = type metadata accessor for Optional();
    if (!v2)
    {
      atomic_store(v1, &lazy cache variable for type metadata for Locale?);
    }
  }
}

uint64_t one-time initialization function for PommesMultiClassParserIds()
{
  v0 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfCSS_Tt0g5Tf4g_n(&outlined read-only object #0 of one-time initialization function for PommesMultiClassParserIds);
  result = swift_arrayDestroy();
  static PommesSearchRequest.PommesMultiClassParserIds = v0;
  return result;
}

uint64_t *PommesSearchRequest.PommesMultiClassParserIds.unsafeMutableAddressor()
{
  if (one-time initialization token for PommesMultiClassParserIds != -1)
  {
    swift_once();
  }

  return &static PommesSearchRequest.PommesMultiClassParserIds;
}

uint64_t one-time initialization function for PommesPhaseTwoAllowedDeviceClasses()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy13SiriUtilities11DeviceClassOGMd, &_ss23_ContiguousArrayStorageCy13SiriUtilities11DeviceClassOGMR);
  v0 = type metadata accessor for DeviceClass();
  v1 = *(v0 - 8);
  v2 = *(v1 + 72);
  v3 = (*(v1 + 80) + 32) & ~*(v1 + 80);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_2234D1950;
  v5 = v4 + v3;
  v6 = *(v1 + 104);
  v6(v5, *MEMORY[0x277D61BA8], v0);
  v6(v5 + v2, *MEMORY[0x277D61B98], v0);
  v6(v5 + 2 * v2, *MEMORY[0x277D61BB8], v0);
  v6(v5 + 3 * v2, *MEMORY[0x277D61BB0], v0);
  v6(v5 + 4 * v2, *MEMORY[0x277D61BC0], v0);
  v7 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC13SiriUtilities11DeviceClassO_Tt0g5Tf4g_n(v4);
  swift_setDeallocating();
  swift_arrayDestroy();
  result = swift_deallocClassInstance();
  static PommesSearchRequest.PommesPhaseTwoAllowedDeviceClasses = v7;
  return result;
}

uint64_t *PommesSearchRequest.PommesPhaseTwoAllowedDeviceClasses.unsafeMutableAddressor()
{
  if (one-time initialization token for PommesPhaseTwoAllowedDeviceClasses != -1)
  {
    swift_once();
  }

  return &static PommesSearchRequest.PommesPhaseTwoAllowedDeviceClasses;
}

uint64_t one-time initialization function for PommesMultiClassAllowedDeviceClasses()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCySS_Shy13SiriUtilities11DeviceClassOGtGMd, &_ss23_ContiguousArrayStorageCySS_Shy13SiriUtilities11DeviceClassOGtGMR);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_2234CF910;
  *(inited + 32) = 0xD000000000000024;
  *(inited + 40) = 0x80000002234D9380;
  if (one-time initialization token for PommesPhaseTwoAllowedDeviceClasses != -1)
  {
    v5 = inited;
    swift_once();
    inited = v5;
  }

  v1 = static PommesSearchRequest.PommesPhaseTwoAllowedDeviceClasses;
  *(inited + 48) = static PommesSearchRequest.PommesPhaseTwoAllowedDeviceClasses;
  *(inited + 56) = 0xD000000000000018;
  *(inited + 64) = 0x80000002234D93B0;
  *(inited + 72) = v1;
  *(inited + 80) = 0xD000000000000014;
  *(inited + 88) = 0x80000002234D93D0;
  *(inited + 96) = v1;
  v2 = inited;
  swift_bridgeObjectRetain_n();
  v3 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_Shy13SiriUtilities11DeviceClassOGTt0g5Tf4g_n(v2);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSS_Shy13SiriUtilities11DeviceClassOGtMd, &_sSS_Shy13SiriUtilities11DeviceClassOGtMR);
  result = swift_arrayDestroy();
  static PommesSearchRequest.PommesMultiClassAllowedDeviceClasses = v3;
  return result;
}

uint64_t *PommesSearchRequest.PommesMultiClassAllowedDeviceClasses.unsafeMutableAddressor()
{
  if (one-time initialization token for PommesMultiClassAllowedDeviceClasses != -1)
  {
    swift_once();
  }

  return &static PommesSearchRequest.PommesMultiClassAllowedDeviceClasses;
}

uint64_t static PommesSearchRequest.extractPommesDelegatedUDA(from:fallbackParse:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v278 = a2;
  v286 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v279 = &v273 - v6;
  v340 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
  v310 = *(v340 - 8);
  v7 = MEMORY[0x28223BE20](v340);
  v280 = &v273 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v7);
  v11 = &v273 - v10;
  v12 = MEMORY[0x28223BE20](v9);
  v285 = &v273 - v13;
  v14 = MEMORY[0x28223BE20](v12);
  v273 = &v273 - v15;
  v16 = MEMORY[0x28223BE20](v14);
  v289 = &v273 - v17;
  v18 = MEMORY[0x28223BE20](v16);
  v293 = &v273 - v19;
  v20 = MEMORY[0x28223BE20](v18);
  v292 = &v273 - v21;
  v22 = MEMORY[0x28223BE20](v20);
  v275 = &v273 - v23;
  v24 = MEMORY[0x28223BE20](v22);
  v277 = &v273 - v25;
  v26 = MEMORY[0x28223BE20](v24);
  v283 = &v273 - v27;
  v28 = MEMORY[0x28223BE20](v26);
  v276 = &v273 - v29;
  v30 = MEMORY[0x28223BE20](v28);
  v291 = &v273 - v31;
  v32 = MEMORY[0x28223BE20](v30);
  v34 = &v273 - v33;
  v35 = MEMORY[0x28223BE20](v32);
  v290 = &v273 - v36;
  v37 = MEMORY[0x28223BE20](v35);
  v308 = &v273 - v38;
  MEMORY[0x28223BE20](v37);
  v304 = &v273 - v39;
  v306 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtMd, &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtMR);
  v350 = *(v306 - 8);
  v40 = MEMORY[0x28223BE20](v306);
  v294 = &v273 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v40);
  v43 = &v273 - v42;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  v45 = MEMORY[0x28223BE20](v44 - 8);
  v284 = &v273 - ((v46 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = MEMORY[0x28223BE20](v45);
  v287 = &v273 - v48;
  MEMORY[0x28223BE20](v47);
  v320 = &v273 - v49;
  v334 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v288 = *(v334 - 8);
  v50 = MEMORY[0x28223BE20](v334);
  v274 = &v273 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v50);
  v319 = &v273 - v52;
  v53 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v322 = *(v53 - 8);
  v54 = MEMORY[0x28223BE20](v53);
  v298 = &v273 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = MEMORY[0x28223BE20](v54);
  v58 = (&v273 - v57);
  MEMORY[0x28223BE20](v56);
  v354 = (&v273 - v59);
  v339 = type metadata accessor for Siri_Nlu_External_Parser();
  isUniquelyReferenced_nonNull_native = *(v339 - 8);
  v61 = MEMORY[0x28223BE20](v339);
  v309 = &v273 - ((v62 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v61);
  v318 = &v273 - v63;
  v347 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV_SdSbtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV_SdSbtMR);
  v64 = MEMORY[0x28223BE20](v347);
  v303 = &v273 - ((v65 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v64);
  v351 = &v273 - v66;
  v324 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v323 = *(v324 - 8);
  MEMORY[0x28223BE20](v324);
  v341 = &v273 - ((v67 + 15) & 0xFFFFFFFFFFFFFFF0);
  v325 = type metadata accessor for Siri_Nlu_External_UserParse();
  v68 = *(v325 - 8);
  v69 = MEMORY[0x28223BE20](v325);
  v317 = &v273 - ((v70 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v69);
  v311 = &v273 - v71;
  v72 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtSgMd, &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtSgMR);
  v73 = MEMORY[0x28223BE20](v72 - 8);
  v302 = &v273 - ((v74 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v73);
  v305 = &v273 - v75;
  if (one-time initialization token for pommes != -1)
  {
    goto LABEL_138;
  }

  while (1)
  {
    v76 = type metadata accessor for Logger();
    v77 = __swift_project_value_buffer(v76, static Logger.pommes);

    v326 = v77;
    v78 = Logger.logObject.getter();
    v79 = static os_log_type_t.debug.getter();
    v80 = os_log_type_enabled(v78, v79);
    v321 = v43;
    v281 = v11;
    v282 = v34;
    if (v80)
    {
      v81 = swift_slowAlloc();
      *v81 = 134217984;
      *(v81 + 4) = *(a1 + 16);

      _os_log_impl(&dword_2232BB000, v78, v79, "Extract DUDA: considering %ld user parses", v81, 0xCu);
      MEMORY[0x223DE0F80](v81, -1, -1);
    }

    else
    {
    }

    v82 = v324;
    v43 = v323;
    static PommesSearchRequest.getRewriteFromParsers(_:)(a1, v305);
    v34 = _sSD17dictionaryLiteralSDyxq_Gx_q_td_tcfCSS_12SiriNLUTypes0C36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtTt0g5Tf4g_n(MEMORY[0x277D84F90]);
    v83 = v325;
    v297 = *(a1 + 16);
    if (!v297)
    {
      break;
    }

    v84 = 0;
    v85 = *(v68 + 16);
    v68 += 16;
    v328 = v85;
    v296 = a1 + ((*(v68 + 64) + 32) & ~*(v68 + 64));
    v343 = v43 + 16;
    v342 = (v43 + 8);
    v333 = v322 + 104;
    v316 = *MEMORY[0x277D5DA68];
    v338 = (isUniquelyReferenced_nonNull_native + 8);
    v352 = (v322 + 16);
    v332 = *MEMORY[0x277D5DA80];
    v353 = v322 + 8;
    v315 = (v288 + 8);
    v314 = (v310 + 56);
    v313 = (v310 + 48);
    v327 = (v68 - 8);
    v301 = (v350 + 48);
    v300 = (v288 + 32);
    v329 = v68;
    v295 = *(v68 + 56);
    *(&v86 + 1) = 4;
    v312 = xmmword_2234CF940;
    *&v86 = 136315906;
    v307 = v86;
    isUniquelyReferenced_nonNull_native = v341;
    v87 = v311;
    v336 = v58;
    while (1)
    {
      v299 = v84;
      v328(v87, v296 + v295 * v84, v83);
      v89 = Siri_Nlu_External_Span.matcherNames.getter();
      v90 = v89;
      v345 = *(v89 + 16);
      if (v345)
      {
        break;
      }

LABEL_8:
      v88 = v299 + 1;
      v87 = v311;
      (*v327)(v311, v83);
      v84 = v88;
      if (v88 == v297)
      {
        goto LABEL_55;
      }
    }

    v68 = 0;
    v344 = v89 + ((*(v43 + 80) + 32) & ~*(v43 + 80));
    v11 = v311;
    v335 = v89;
    while (1)
    {
      if (v68 >= *(v90 + 16))
      {
        __break(1u);
        goto LABEL_86;
      }

      (*(v43 + 16))(isUniquelyReferenced_nonNull_native, v344 + *(v43 + 72) * v68, v82);
      if (Siri_Nlu_External_UserDialogAct.hasDelegated.getter())
      {
        break;
      }

      (*v342)(isUniquelyReferenced_nonNull_native, v82);
LABEL_12:
      if (++v68 == v345)
      {

        v83 = v325;
        goto LABEL_8;
      }
    }

    v346 = v68;
    v349 = v34;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D20_Nlu_External_ParserV0H10IdentifierOGMd, &_ss23_ContiguousArrayStorageCy12SiriNLUTypes0D20_Nlu_External_ParserV0H10IdentifierOGMR);
    v91 = v322;
    v92 = *(v322 + 72);
    v93 = (*(v322 + 80) + 32) & ~*(v322 + 80);
    v94 = swift_allocObject();
    *(v94 + 16) = v312;
    v95 = *(v91 + 104);
    v95((v94 + v93), v316, v53);
    v95((v94 + v93 + v92), v332, v53);
    v96 = _sSh21_nonEmptyArrayLiteralShyxGSayxG_tcfC12SiriNLUTypes0E20_Nlu_External_ParserV0I10IdentifierO_Tt0g5Tf4g_n(v94);
    swift_setDeallocating();
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v97 = *(v347 + 48);
    v98 = v351;
    Siri_Nlu_External_UserDialogAct.delegated.getter();
    Siri_Nlu_External_UserParse.comparableProbability.getter();
    v3 = v99;
    *(v98 + v97) = v99;
    v100 = v318;
    Siri_Nlu_External_UserParse.parser.getter();
    Siri_Nlu_External_Parser.parserID.getter();
    v337 = *v338;
    v337(v100, v339);
    v101 = *(v96 + 16);
    v331 = v95;
    if (v101 && (lazy protocol witness table accessor for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier(&lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier, MEMORY[0x277D5DA90]), v102 = dispatch thunk of Hashable._rawHashValue(seed:)(), v103 = -1 << *(v96 + 32), v104 = v102 & ~v103, ((*(v96 + 56 + ((v104 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v104) & 1) != 0))
    {
      v105 = ~v103;
      v106 = *v352;
      do
      {
        v106(v58, *(v96 + 48) + v104 * v92, v53);
        lazy protocol witness table accessor for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier(&lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier, MEMORY[0x277D5DA98]);
        v107 = dispatch thunk of static Equatable.== infix(_:_:)();
        (*v353)(v58, v53);
        if (v107)
        {
          break;
        }

        v104 = (v104 + 1) & v105;
      }

      while (((*(v96 + 56 + ((v104 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v104) & 1) != 0);
    }

    else
    {
      v107 = 0;
    }

    v108 = *(v347 + 64);
    v330 = *v353;
    v330(v354, v53);
    *(v351 + v108) = v107 & 1;
    v109 = v319;
    isUniquelyReferenced_nonNull_native = v341;
    Siri_Nlu_External_UserDialogAct.delegated.getter();
    v110 = Siri_Nlu_External_DelegatedUserDialogAct.externalParserID.getter();
    v112 = v111;
    (*v315)(v109, v334);
    v34 = v349;
    v113 = *(v349 + 16);
    v350 = v112;
    if (v113)
    {
      v114 = specialized __RawDictionaryStorage.find<A>(_:)(v110, v112);
      v115 = v320;
      if (v116)
      {
        outlined init with copy of MediaUserStateCenter?(*(v34 + 56) + *(v310 + 72) * v114, v320, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
        v117 = 0;
      }

      else
      {
        v117 = 1;
      }
    }

    else
    {
      v117 = 1;
      v115 = v320;
    }

    v348 = v110;
    v118 = v340;
    (*v314)(v115, v117, 1, v340);
    v119 = -1.0;
    if (!(*v313)(v115, 1, v118))
    {
      v119 = *(v115 + *(v340 + 48));
    }

    outlined destroy of MediaUserStateCenter?(v115, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
    v120 = v317;
    v121 = v325;
    v328(v317, v11, v325);
    v122 = v350;

    v123 = v122;
    v124 = Logger.logObject.getter();
    v125 = static os_log_type_t.debug.getter();

    if (os_log_type_enabled(v124, v125))
    {
      v126 = swift_slowAlloc();
      v127 = swift_slowAlloc();
      v355[0] = v127;
      *v126 = v307;
      v128 = v309;
      Siri_Nlu_External_UserParse.parser.getter();
      Siri_Nlu_External_Parser.parserID.getter();
      v337(v128, v339);
      v11 = v311;
      v129 = String.init<A>(describing:)();
      v131 = v130;
      (*v327)(v120, v121);
      v132 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v129, v131, v355);
      v34 = v349;

      *(v126 + 4) = v132;
      v123 = v350;
      *(v126 + 12) = 2080;
      v133 = v348;
      *(v126 + 14) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v348, v123, v355);
      *(v126 + 22) = 2048;
      *(v126 + 24) = v3;
      *(v126 + 32) = 2048;
      *(v126 + 34) = v119;
      _os_log_impl(&dword_2232BB000, v124, v125, "Extract DUDA: considering %s %s, comparing score %f > %f", v126, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x223DE0F80](v127, -1, -1);
      v134 = v126;
      isUniquelyReferenced_nonNull_native = v341;
      MEMORY[0x223DE0F80](v134, -1, -1);

      v135 = v321;
    }

    else
    {

      (*v327)(v120, v121);
      v135 = v321;
      v133 = v348;
    }

    v136 = specialized static PommesSearchRequest.isSupportedExternalParseId(externalParseId:)(v133, v123);
    v58 = v336;
    v90 = v335;
    v68 = v346;
    if ((v136 & 1) == 0 || v119 >= v3)
    {
      v82 = v324;
      (*v342)(isUniquelyReferenced_nonNull_native, v324);

      outlined destroy of MediaUserStateCenter?(v351, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV_SdSbtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV_SdSbtMR);
      v43 = v323;
      goto LABEL_12;
    }

    v137 = v302;
    v138 = &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtSgMR;
    outlined init with copy of MediaUserStateCenter?(v305, v302, &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtSgMd, &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtSgMR);
    v139 = (*v301)(v137, 1, v306) == 1;
    v140 = v137;
    if (v139)
    {
      v141 = &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtSgMd;
    }

    else
    {
      v138 = &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtMR;
      outlined init with take of PommesSearchReason?(v137, v135, &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtMd, &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtMR);
      v142 = v309;
      Siri_Nlu_External_UserParse.parser.getter();
      Siri_Nlu_External_Parser.parserID.getter();
      v337(v142, v339);
      v143 = v298;
      v331(v298, v332, v53);
      lazy protocol witness table accessor for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier(&lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier, MEMORY[0x277D5DAA8]);
      dispatch thunk of RawRepresentable.rawValue.getter();
      dispatch thunk of RawRepresentable.rawValue.getter();
      v144 = v330;
      v330(v143, v53);
      v144(v58, v53);
      if (v355[0] == v355[3])
      {
        v145 = v294;
        outlined init with copy of MediaUserStateCenter?(v135, v294, &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtMd, &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtMR);
        v146 = *(v306 + 48);
        swift_beginAccess();
        Siri_Nlu_External_DelegatedUserDialogAct.rewrittenUtterance.setter();
        v147 = type metadata accessor for Siri_Nlu_External_RewriteMessage();
        (*(*(v147 - 8) + 8))(v145 + v146, v147);
        v138 = &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtMR;
        outlined init with copy of MediaUserStateCenter?(v135, v145, &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtMd, &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtMR);
        Siri_Nlu_External_DelegatedUserDialogAct.rewrite.setter();
        swift_endAccess();
        v148 = type metadata accessor for Google_Protobuf_StringValue();
        (*(*(v148 - 8) + 8))(v145, v148);
        v149 = Logger.logObject.getter();
        v150 = static os_log_type_t.debug.getter();
        if (os_log_type_enabled(v149, v150))
        {
          v151 = swift_slowAlloc();
          *v151 = 0;
          _os_log_impl(&dword_2232BB000, v149, v150, "Extract DUDA: patching rewrite for overrides", v151, 2u);
          MEMORY[0x223DE0F80](v151, -1, -1);
        }

        v140 = v135;
        v141 = &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtMd;
      }

      else
      {
        v140 = v135;
        v141 = &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtMd;
      }
    }

    outlined destroy of MediaUserStateCenter?(v140, v141, v138);
    v152 = v351;
    swift_beginAccess();
    v43 = v303;
    outlined init with copy of MediaUserStateCenter?(v152, v303, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV_SdSbtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV_SdSbtMR);
    v3 = *(v43 + *(v347 + 48));
    LOBYTE(v152) = *(v43 + *(v347 + 64));
    a1 = *(v340 + 48);
    v153 = *(v340 + 64);
    v154 = v304;
    (*v300)(v304, v43, v334);
    *(v154 + a1) = v3;
    *(v154 + v153) = v152;
    outlined init with take of PommesSearchReason?(v154, v308, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v355[0] = v34;
    v155 = specialized __RawDictionaryStorage.find<A>(_:)(v348, v350);
    v157 = *(v34 + 16);
    v158 = (v156 & 1) == 0;
    v159 = __OFADD__(v157, v158);
    v160 = v157 + v158;
    v68 = v346;
    if (!v159)
    {
      a1 = v156;
      if (*(v34 + 24) >= v160)
      {
        v82 = v324;
        v43 = v323;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v166 = v155;
          specialized _NativeDictionary.copy()();
          v155 = v166;
        }
      }

      else
      {
        specialized _NativeDictionary._copyOrMoveAndResize(capacity:moveElements:)(v160, isUniquelyReferenced_nonNull_native);
        v155 = specialized __RawDictionaryStorage.find<A>(_:)(v348, v350);
        v82 = v324;
        v43 = v323;
        if ((a1 & 1) != (v161 & 1))
        {
          result = KEY_TYPE_OF_DICTIONARY_VIOLATES_HASHABLE_REQUIREMENTS(_:)();
          __break(1u);
          return result;
        }
      }

      isUniquelyReferenced_nonNull_native = v341;
      v162 = v350;
      v34 = v355[0];
      if (a1)
      {
        outlined assign with take of (delegatedUDA: Siri_Nlu_External_DelegatedUserDialogAct, score: Double, isEligibleForCombination: Bool)(v308, *(v355[0] + 56) + *(v310 + 72) * v155);
      }

      else
      {
        *(v355[0] + 8 * (v155 >> 6) + 64) |= 1 << v155;
        v163 = (*(v34 + 48) + 16 * v155);
        *v163 = v348;
        v163[1] = v162;
        outlined init with take of PommesSearchReason?(v308, *(v34 + 56) + *(v310 + 72) * v155, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
        v164 = *(v34 + 16);
        v159 = __OFADD__(v164, 1);
        v165 = v164 + 1;
        if (v159)
        {
          goto LABEL_136;
        }

        *(v34 + 16) = v165;
      }

      (*v342)(isUniquelyReferenced_nonNull_native, v82);
      outlined destroy of MediaUserStateCenter?(v351, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV_SdSbtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV_SdSbtMR);
      v90 = v335;
      goto LABEL_12;
    }

    __break(1u);
LABEL_134:
    __break(1u);
LABEL_135:
    __break(1u);
LABEL_136:
    __break(1u);
LABEL_137:
    __break(1u);
LABEL_138:
    swift_once();
  }

LABEL_55:
  isUniquelyReferenced_nonNull_native = v34 + 64;
  v167 = 1 << *(v34 + 32);
  v168 = -1;
  if (v167 < 64)
  {
    v168 = ~(-1 << v167);
  }

  v169 = v168 & *(v34 + 64);
  v11 = (v167 + 63) >> 6;
  v354 = (v288 + 8);
  v349 = v34;

  v34 = 0;
  v353 = MEMORY[0x277D84F90];
  a1 = &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd;
  v58 = &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR;
  while (1)
  {
    v170 = v34;
    if (!v169)
    {
      break;
    }

    v53 = v290;
LABEL_64:
    v171 = __clz(__rbit64(v169));
    v169 &= v169 - 1;
    v43 = *(v310 + 72);
    outlined init with copy of MediaUserStateCenter?(*(v349 + 56) + v43 * (v171 | (v34 << 6)), v53, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
    v68 = v291;
    outlined init with copy of MediaUserStateCenter?(v53, v291, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
    v172 = *(v68 + *(v340 + 64));
    (*v354)(v68, v334);
    if (v172 == 1)
    {
      outlined init with take of PommesSearchReason?(v53, v276, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
      v173 = v353;
      v174 = swift_isUniquelyReferenced_nonNull_native();
      v355[0] = v173;
      if ((v174 & 1) == 0)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v173 + 16) + 1, 1);
        v173 = v355[0];
      }

      v68 = *(v173 + 16);
      v175 = *(v173 + 24);
      v176 = v68 + 1;
      if (v68 >= v175 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v175 > 1), v68 + 1, 1);
        v176 = v68 + 1;
        v173 = v355[0];
      }

      *(v173 + 16) = v176;
      v177 = *(v310 + 80);
      v353 = v173;
      outlined init with take of PommesSearchReason?(v276, v173 + ((v177 + 32) & ~v177) + v68 * v43, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
    }

    else
    {
      outlined destroy of MediaUserStateCenter?(v53, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
    }
  }

  v53 = v290;
  while (1)
  {
    v34 = v170 + 1;
    if (__OFADD__(v170, 1))
    {
      goto LABEL_134;
    }

    if (v34 >= v11)
    {
      break;
    }

    v169 = *(isUniquelyReferenced_nonNull_native + 8 * v34);
    ++v170;
    if (v169)
    {
      goto LABEL_64;
    }
  }

  v34 = v349;

  v68 = *(v353 + 16);
  if (v68)
  {
    v178 = *(v340 + 48);
    v179 = v353 + ((*(v310 + 80) + 32) & ~*(v310 + 80));
    v180 = *(v310 + 72);
    v3 = 0.0;
    v181 = v282;
    do
    {
      outlined init with copy of MediaUserStateCenter?(v179, v181, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
      v182 = *(v181 + v178);
      outlined destroy of MediaUserStateCenter?(v181, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
      v3 = v3 + v182;
      v179 += v180;
      --v68;
    }

    while (v68);
  }

  else
  {

    v3 = 0.0;
  }

  v53 = Logger.logObject.getter();
  v183 = static os_log_type_t.debug.getter();
  v184 = os_log_type_enabled(v53, v183);
  v185 = v291;
  if (v184)
  {
    v186 = swift_slowAlloc();
    *v186 = 134217984;
    *(v186 + 4) = v3;
    _os_log_impl(&dword_2232BB000, v53, v183, "Extract DUDA: synthesized combined POMMES parse score is %f", v186, 0xCu);
    MEMORY[0x223DE0F80](v186, -1, -1);
  }

  v353 = 0x80000002234D9360;
  if (!*(v34 + 16) || (v187 = specialized __RawDictionaryStorage.find<A>(_:)(0xD000000000000010, v353), (v188 & 1) == 0))
  {
LABEL_87:
    v208 = 1 << *(v34 + 32);
    v209 = -1;
    if (v208 < 64)
    {
      v209 = ~(-1 << v208);
    }

    v34 = v209 & *(v34 + 64);
    v43 = (v208 + 63) >> 6;

    v210 = 0;
    a1 = MEMORY[0x277D84F90];
    v58 = &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd;
    v11 = &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR;
LABEL_90:
    v352 = a1;
    while (v34)
    {
LABEL_98:
      v213 = __clz(__rbit64(v34));
      v34 &= v34 - 1;
      v53 = *(v310 + 72);
      v214 = v292;
      outlined init with copy of MediaUserStateCenter?(*(v349 + 56) + v53 * (v213 | (v210 << 6)), v292, v58, v11);
      v215 = v214;
      v216 = v289;
      v68 = v58;
      v217 = v11;
      outlined init with copy of MediaUserStateCenter?(v215, v289, v58, v11);
      v218 = Siri_Nlu_External_DelegatedUserDialogAct.externalParserID.getter();
      v220 = v219;
      (*v354)(v216, v334);
      if (v218 == 0xD000000000000010 && v353 == v220)
      {
      }

      else
      {
        v211 = _stringCompareWithSmolCheck(_:_:expecting:)();

        if ((v211 & 1) == 0)
        {
          v58 = v68;
          outlined init with take of PommesSearchReason?(v292, v273, v68, v217);
          v221 = v352;
          v222 = swift_isUniquelyReferenced_nonNull_native();
          v355[0] = v221;
          if ((v222 & 1) == 0)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, *(v221 + 16) + 1, 1);
            v221 = v355[0];
          }

          v224 = *(v221 + 16);
          v223 = *(v221 + 24);
          v68 = v224 + 1;
          if (v224 >= v223 >> 1)
          {
            specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v223 > 1), v224 + 1, 1);
            v221 = v355[0];
          }

          *(v221 + 16) = v68;
          v225 = v221 + ((*(v310 + 80) + 32) & ~*(v310 + 80)) + v224 * v53;
          v11 = v217;
          outlined init with take of PommesSearchReason?(v273, v225, v58, v217);
          a1 = v221;
          goto LABEL_90;
        }
      }

      v58 = v68;
      v11 = v217;
      outlined destroy of MediaUserStateCenter?(v292, v68, v217);
      a1 = v352;
    }

    while (1)
    {
      v212 = v210 + 1;
      if (__OFADD__(v210, 1))
      {
        goto LABEL_135;
      }

      if (v212 >= v43)
      {
        break;
      }

      v34 = *(isUniquelyReferenced_nonNull_native + 8 * v212);
      ++v210;
      if (v34)
      {
        v210 = v212;
        goto LABEL_98;
      }
    }

    v226 = v349;

    v68 = *(a1 + 16);
    if (v68)
    {
      isUniquelyReferenced_nonNull_native = v226;
      v53 = a1 + ((*(v310 + 80) + 32) & ~*(v310 + 80));
      outlined init with copy of MediaUserStateCenter?(v53, v293, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
      v227 = v291;
      v43 = v281;
      if (v68 != 1)
      {
        v11 = 1;
        v58 = &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR;
        v34 = v293;
        while (v11 < *(a1 + 16))
        {
          outlined init with copy of MediaUserStateCenter?(v53 + *(v310 + 72) * v11, v43, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
          if (*(v34 + *(v340 + 48)) >= *(v43 + *(v340 + 48)))
          {
            outlined destroy of MediaUserStateCenter?(v43, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
          }

          else
          {
            outlined destroy of MediaUserStateCenter?(v34, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
            outlined init with take of PommesSearchReason?(v43, v34, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
          }

          if (v68 == ++v11)
          {
            goto LABEL_108;
          }
        }

        goto LABEL_137;
      }

LABEL_108:

      v228 = v287;
      outlined init with take of PommesSearchReason?(v293, v287, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
      v229 = 0;
    }

    else
    {

      v229 = 1;
      v227 = v291;
      v228 = v287;
    }

    v230 = v310;
    v232 = v310 + 56;
    v231 = *(v310 + 56);
    v233 = v340;
    v231(v228, v229, 1, v340);
    v234 = v284;
    outlined init with copy of MediaUserStateCenter?(v228, v284, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
    if ((*(v230 + 48))(v234, 1, v233) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v234, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
      v235 = v279;
      outlined init with copy of MediaUserStateCenter?(v278, v279, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
      v236 = v288;
      v237 = v334;
      if ((*(v288 + 48))(v235, 1, v334) == 1)
      {
        outlined destroy of MediaUserStateCenter?(v235, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActVSgMR);
      }

      else
      {
        v252 = v274;
        (*(v236 + 32))(v274, v235, v237);
        if (specialized static PommesSearchRequest.isSupportedExternalParseId(externalParseId:)(0xD000000000000018, 0x80000002234D93B0))
        {
          v253 = Logger.logObject.getter();
          v254 = static os_log_type_t.debug.getter();
          if (os_log_type_enabled(v253, v254))
          {
            v255 = swift_slowAlloc();
            *v255 = 0;
            _os_log_impl(&dword_2232BB000, v253, v254, "Convert general fallback parse to PSC DUDA.", v255, 2u);
            MEMORY[0x223DE0F80](v255, -1, -1);
          }

          v256 = v340;
          v257 = *(v340 + 48);
          v258 = *(v340 + 64);
          v259 = v288 + 16;
          v260 = v286;
          v261 = v334;
          (*(v288 + 16))(v286, v252, v334);
          Siri_Nlu_External_DelegatedUserDialogAct.externalParserID.setter();
          (*(v259 - 8))(v252, v261);
          outlined destroy of MediaUserStateCenter?(v287, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
          outlined destroy of MediaUserStateCenter?(v305, &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtSgMd, &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtSgMR);
          *(v260 + v257) = 0;
          *(v260 + v258) = 0;
          v231(v260, 0, 1, v256);
        }

        (*v354)(v252, v237);
      }

      v269 = Logger.logObject.getter();
      v270 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v269, v270))
      {
        v271 = swift_slowAlloc();
        *v271 = 0;
        _os_log_impl(&dword_2232BB000, v269, v270, "Extract DUDA: no parse meets criteria; returning nil", v271, 2u);
        MEMORY[0x223DE0F80](v271, -1, -1);
      }

      outlined destroy of MediaUserStateCenter?(v228, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
      outlined destroy of MediaUserStateCenter?(v305, &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtSgMd, &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtSgMR);
      v266 = v286;
      v267 = 1;
      v268 = v340;
    }

    else
    {
      v238 = v234;
      v239 = v285;
      outlined init with take of PommesSearchReason?(v238, v285, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
      v240 = v239;
      v241 = v280;
      outlined init with copy of MediaUserStateCenter?(v240, v280, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
      v242 = Logger.logObject.getter();
      v243 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v242, v243))
      {
        v244 = swift_slowAlloc();
        v353 = v232;
        v245 = v244;
        v246 = swift_slowAlloc();
        v355[0] = v246;
        *v245 = 136315138;
        outlined init with copy of MediaUserStateCenter?(v241, v227, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
        v247 = Siri_Nlu_External_DelegatedUserDialogAct.externalParserID.getter();
        v249 = v248;
        v250 = v334;
        outlined destroy of MediaUserStateCenter?(v241, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
        (*v354)(v291, v250);
        v251 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v247, v249, v355);
        v227 = v291;

        *(v245 + 4) = v251;
        _os_log_impl(&dword_2232BB000, v242, v243, "Extract DUDA: combined parse class is usable; returning with %s", v245, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v246);
        MEMORY[0x223DE0F80](v246, -1, -1);
        MEMORY[0x223DE0F80](v245, -1, -1);

        outlined destroy of MediaUserStateCenter?(v287, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
        outlined destroy of MediaUserStateCenter?(v305, &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtSgMd, &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtSgMR);
      }

      else
      {

        outlined destroy of MediaUserStateCenter?(v241, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
        outlined destroy of MediaUserStateCenter?(v228, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
        outlined destroy of MediaUserStateCenter?(v305, &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtSgMd, &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtSgMR);
        v250 = v334;
      }

      v262 = v340;
      v263 = *(v340 + 48);
      v264 = *(v340 + 64);
      outlined init with take of PommesSearchReason?(v285, v227, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
      v265 = v286;
      (*(v288 + 32))(v286, v227, v250);
      *(v265 + v263) = v3;
      *(v265 + v264) = 0;
      v266 = v265;
      v267 = 0;
      v268 = v262;
    }

    v231(v266, v267, 1, v268);
  }

  v189 = v277;
  outlined init with copy of MediaUserStateCenter?(*(v34 + 56) + *(v310 + 72) * v187, v277, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
  v190 = v189;
  v53 = v283;
  outlined init with take of PommesSearchReason?(v190, v283, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
  v191 = *(v53 + *(v340 + 48));
  specialized static PommesSearchRequest.pommesDUDAThreshold.getter();
  if (v192 > v191)
  {
    specialized static PommesSearchRequest.pommesDUDAThreshold.getter();
    if (v3 >= v193)
    {
LABEL_86:
      outlined destroy of MediaUserStateCenter?(v283, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
      goto LABEL_87;
    }
  }

  v194 = Logger.logObject.getter();
  v195 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v194, v195))
  {
    v196 = swift_slowAlloc();
    v197 = swift_slowAlloc();
    v355[0] = v197;
    *v196 = 136315138;
    *(v196 + 4) = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(0xD000000000000010, v353, v355);
    _os_log_impl(&dword_2232BB000, v194, v195, "Extract DUDA: primary parse class is usable alone, or combined parse is not usable; returning with %s", v196, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v197);
    MEMORY[0x223DE0F80](v197, -1, -1);
    MEMORY[0x223DE0F80](v196, -1, -1);
  }

  outlined destroy of MediaUserStateCenter?(v305, &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtSgMd, &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtSgMR);
  v198 = v334;
  v199 = v340;
  v200 = *(v340 + 48);
  v201 = *(v340 + 64);
  v202 = v283;
  outlined init with copy of MediaUserStateCenter?(v283, v185, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
  v203 = v185;
  v204 = v288 + 32;
  v205 = v286;
  (*(v288 + 32))(v286, v203, v198);
  v206 = v202;
  v207 = v275;
  outlined init with take of PommesSearchReason?(v206, v275, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
  *(v205 + v200) = *(v207 + *(v199 + 48));
  *(v205 + v201) = 0;
  (*(v310 + 56))(v205, 0, 1, v199);
  (*(v204 - 24))(v207, v198);
}

uint64_t static PommesSearchRequest.getRewriteFromParsers(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtSgMd, &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v30 = &v27 - v5;
  v37 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v6 = *(v37 - 8);
  MEMORY[0x28223BE20](v37);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for Siri_Nlu_External_UserDialogAct();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtMd, &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtMR);
  v14 = *(v13 - 8);
  v15 = *(v14 + 56);
  v31 = a2;
  v28 = v15;
  v29 = v13;
  v27 = v14 + 56;
  result = (v15)(a2, 1, 1);
  v34 = *(a1 + 16);
  if (v34)
  {
    v17 = 0;
    v18 = *(type metadata accessor for Siri_Nlu_External_UserParse() - 8);
    v33 = a1 + ((*(v18 + 80) + 32) & ~*(v18 + 80));
    v38 = v10 + 16;
    v19 = (v10 + 8);
    v36 = (v6 + 8);
    v32 = *(v18 + 72);
    while (1)
    {
      result = Siri_Nlu_External_Span.matcherNames.getter();
      v20 = result;
      v21 = *(result + 16);
      if (v21)
      {
        break;
      }

LABEL_4:
      if (++v17 == v34)
      {
        return result;
      }
    }

    v35 = v17;
    v22 = 0;
    v23 = result + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    while (v22 < *(v20 + 16))
    {
      (*(v10 + 16))(v12, v23 + *(v10 + 72) * v22, v9);
      if (Siri_Nlu_External_UserDialogAct.hasDelegated.getter())
      {
        Siri_Nlu_External_UserDialogAct.delegated.getter();
        if (Siri_Nlu_External_DelegatedUserDialogAct.hasRewrite.getter())
        {

          v25 = v29;
          v24 = v30;
          Siri_Nlu_External_DelegatedUserDialogAct.rewrittenUtterance.getter();
          Siri_Nlu_External_DelegatedUserDialogAct.rewrite.getter();
          (*v36)(v8, v37);
          (*v19)(v12, v9);
          v26 = v31;
          outlined destroy of MediaUserStateCenter?(v31, &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtSgMd, &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtSgMR);
          v28(v24, 0, 1, v25);
          result = outlined init with take of PommesSearchReason?(v24, v26, &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtSgMd, &_s21InternalSwiftProtobuf07Google_C12_StringValueV_12SiriNLUTypes0G28_Nlu_External_RewriteMessageVtSgMR);
          goto LABEL_14;
        }

        (*v36)(v8, v37);
      }

      ++v22;
      result = (*v19)(v12, v9);
      if (v21 == v22)
      {

LABEL_14:
        v17 = v35;
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t static PommesSearchRequest.convertToPommesDelegatedUDA(fallbackParse:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  (*(*(v4 - 8) + 16))(a1, a2, v4);
  Siri_Nlu_External_DelegatedUserDialogAct.externalParserID.setter();
  return 0;
}

BOOL static PommesSearchRequest.shouldSearchToolFederateToPegasus(userParses:fallbackParse:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x28223BE20](v4);
  v42 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v41 = &v37 - v8;
  v40 = type metadata accessor for Siri_Nlu_External_Parser();
  v9 = *(v40 - 8);
  MEMORY[0x28223BE20](v40);
  v39 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  v12 = MEMORY[0x28223BE20](v11 - 8);
  v14 = &v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v16 = &v37 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
  v18 = *(v17 - 8);
  MEMORY[0x28223BE20](v17);
  v20 = &v37 - v19;
  static PommesSearchRequest.extractPommesDelegatedUDA(from:fallbackParse:)(a1, a2, v16);
  if ((*(v18 + 48))(v16, 1, v17) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v16, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
    v21 = *(a1 + 16);
    if (v21)
    {
      v22 = (v9 + 8);
      v38 = *MEMORY[0x277D5DA68];
      v23 = (v5 + 104);
      v24 = (v5 + 8);
      v25 = *(type metadata accessor for Siri_Nlu_External_UserParse() - 8);
      v26 = a1 + ((*(v25 + 80) + 32) & ~*(v25 + 80));
      v37 = *(v25 + 72);
      while (1)
      {
        v27 = v39;
        Siri_Nlu_External_UserParse.parser.getter();
        v28 = v41;
        Siri_Nlu_External_Parser.parserID.getter();
        (*v22)(v27, v40);
        v29 = v42;
        (*v23)(v42, v38, v4);
        lazy protocol witness table accessor for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier(&lazy protocol witness table cache variable for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier, MEMORY[0x277D5DA98]);
        v30 = dispatch thunk of static Equatable.== infix(_:_:)();
        v31 = *v24;
        (*v24)(v29, v4);
        v31(v28, v4);
        if ((v30 & 1) == 0)
        {
          Siri_Nlu_External_UserParse.comparableProbability.getter();
          if (v32 > 0.05)
          {
            break;
          }
        }

        v26 += v37;
        if (!--v21)
        {
          return 1;
        }
      }

      return 0;
    }

    else
    {
      return 1;
    }
  }

  else
  {
    outlined init with take of PommesSearchReason?(v16, v20, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
    outlined init with copy of MediaUserStateCenter?(v20, v14, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
    (*(v18 + 56))(v14, 0, 1, v17);
    v34 = specialized static PommesSearchRequest.resolvedScore(_:isFallback:)(v14, 0);
    outlined destroy of MediaUserStateCenter?(v14, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
    specialized static PommesSearchRequest.pommesDUDAThreshold.getter();
    v36 = v35;
    outlined destroy of MediaUserStateCenter?(v20, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
    return v36 <= v34;
  }
}

void specialized static PommesSearchRequest.pommesDUDAThreshold.getter()
{
  v0 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v1 = MEMORY[0x223DDF550](0xD000000000000010, 0x80000002234DA020);
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    v3 = MEMORY[0x223DDF550](0x685473656D6D6F70, 0xEF646C6F68736572);
    [v2 doubleForKey_];
  }
}

uint64_t specialized static PommesSearchRequest.isSupportedExternalParseId(externalParseId:)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v22[-1] - v5;
  v7 = type metadata accessor for DeviceClass();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v22[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (one-time initialization token for PommesMultiClassParserIds != -1)
  {
    swift_once();
  }

  if (specialized Set.contains(_:)(a1, a2, static PommesSearchRequest.PommesMultiClassParserIds))
  {
    type metadata accessor for SiriEnvironment();
    static SiriEnvironment.default.getter();
    SiriEnvironment.currentDevice.getter();

    dispatch thunk of CurrentDevice.deviceClass.getter();

    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v6, &_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
LABEL_14:
      v11 = 1;
      return v11 & 1;
    }

    (*(v8 + 32))(v10, v6, v7);
    if (one-time initialization token for PommesMultiClassAllowedDeviceClasses != -1)
    {
      swift_once();
    }

    v12 = static PommesSearchRequest.PommesMultiClassAllowedDeviceClasses;
    if (!*(static PommesSearchRequest.PommesMultiClassAllowedDeviceClasses + 16) || (v13 = specialized __RawDictionaryStorage.find<A>(_:)(a1, a2), (v14 & 1) == 0))
    {
      (*(v8 + 8))(v10, v7);
      goto LABEL_14;
    }

    v15 = *(*(v12 + 56) + 8 * v13);
    v16 = objc_opt_self();

    v17 = [v16 processInfo];
    v18 = NSProcessInfo.isRunningUnitTests.getter();

    if (v18)
    {
      v11 = specialized Set.contains(_:)(v10, v15);

      (*(v8 + 8))(v10, v7);
    }

    else
    {

      v22[3] = &type metadata for FeatureFlag;
      v22[4] = lazy protocol witness table accessor for type FeatureFlag and conformance FeatureFlag();
      v20 = swift_allocObject();
      v22[0] = v20;
      *(v20 + 16) = 5;
      *(v20 + 24) = 0;
      *(v20 + 32) = 0;
      *(v20 + 40) = 0;
      *(v20 + 48) = 3;
      v11 = isFeatureEnabled(_:)();
      (*(v8 + 8))(v10, v7);
      __swift_destroy_boxed_opaque_existential_1(v22);
    }
  }

  else
  {
    v11 = 0;
  }

  return v11 & 1;
}

uint64_t outlined assign with take of (delegatedUDA: Siri_Nlu_External_DelegatedUserDialogAct, score: Double, isEligibleForCombination: Bool)(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t lazy protocol witness table accessor for type Siri_Nlu_External_Parser.ParserIdentifier and conformance Siri_Nlu_External_Parser.ParserIdentifier(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for Siri_Nlu_External_Parser.ParserIdentifier();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

double specialized static PommesSearchRequest.resolvedScore(_:isFallback:)(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v61 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v61 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
  v11 = *(v10 - 8);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v17 = &v61 - v16;
  MEMORY[0x28223BE20](v15);
  v19 = &v61 - v18;
  if (a2)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v20 = type metadata accessor for Logger();
    __swift_project_value_buffer(v20, static Logger.pommes);
    v21 = Logger.logObject.getter();
    v22 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      *v23 = 0;
      _os_log_impl(&dword_2232BB000, v21, v22, "POMMES request is for fallback. Forcing effective PSC score to 1.0.", v23, 2u);
      MEMORY[0x223DE0F80](v23, -1, -1);
    }

    return 1.0;
  }

  outlined init with copy of MediaUserStateCenter?(a1, v9, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v9, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtSgMR);
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v25 = type metadata accessor for Logger();
    __swift_project_value_buffer(v25, static Logger.pommes);
    v26 = Logger.logObject.getter();
    v27 = static os_log_type_t.debug.getter();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_2232BB000, v26, v27, "No delegated UDA found. Setting effective PSC score to 0.0.", v28, 2u);
      MEMORY[0x223DE0F80](v28, -1, -1);
    }

    goto LABEL_13;
  }

  outlined init with take of PommesSearchReason?(v9, v19, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
  outlined init with copy of MediaUserStateCenter?(v19, v17, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
  v29 = Siri_Nlu_External_DelegatedUserDialogAct.externalParserID.getter();
  v31 = v30;
  v32 = type metadata accessor for Siri_Nlu_External_DelegatedUserDialogAct();
  v33 = *(*(v32 - 8) + 8);
  v33(v17, v32);
  LOBYTE(v29) = specialized static PommesSearchRequest.isSupportedExternalParseId(externalParseId:)(v29, v31);

  if (v29)
  {
    outlined init with take of PommesSearchReason?(v19, v17, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
    v24 = *&v17[*(v10 + 48)];
    v33(v17, v32);
    goto LABEL_16;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v44 = type metadata accessor for Logger();
  __swift_project_value_buffer(v44, static Logger.pommes);
  outlined init with copy of MediaUserStateCenter?(v19, v14, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
  v45 = Logger.logObject.getter();
  v46 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v45, v46))
  {
    v62 = v46;
    v63 = v45;
    v47 = swift_slowAlloc();
    v61 = swift_slowAlloc();
    v64 = v61;
    *v47 = 136315394;
    outlined init with copy of MediaUserStateCenter?(v14, v17, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
    v48 = Siri_Nlu_External_DelegatedUserDialogAct.externalParserID.getter();
    v50 = v49;
    outlined destroy of MediaUserStateCenter?(v14, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
    v33(v17, v32);
    v51 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v48, v50, &v64);

    *(v47 + 4) = v51;
    *(v47 + 12) = 2080;
    type metadata accessor for SiriEnvironment();
    static SiriEnvironment.default.getter();
    SiriEnvironment.currentDevice.getter();

    dispatch thunk of CurrentDevice.deviceClass.getter();

    v52 = type metadata accessor for DeviceClass();
    v53 = *(v52 - 8);
    if ((*(v53 + 48))(v6, 1, v52) == 1)
    {
      outlined destroy of MediaUserStateCenter?(v6, &_s13SiriUtilities11DeviceClassOSgMd, &_s13SiriUtilities11DeviceClassOSgMR);
    }

    else
    {
      v54 = DeviceClass.stringValue()();
      object = v54.value._object;
      (*(v53 + 8))(v6, v52);
      if (v54.value._object)
      {
        countAndFlagsBits = v54.value._countAndFlagsBits;
LABEL_33:
        v57 = v62;
        v58 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(countAndFlagsBits, object, &v64);

        *(v47 + 14) = v58;
        v59 = v63;
        _os_log_impl(&dword_2232BB000, v63, v57, "externalParseID: %s is unsupported in current DeviceClass %s. Setting effective PSC score to 0.0.", v47, 0x16u);
        v60 = v61;
        swift_arrayDestroy();
        MEMORY[0x223DE0F80](v60, -1, -1);
        MEMORY[0x223DE0F80](v47, -1, -1);

        outlined destroy of MediaUserStateCenter?(v19, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
        goto LABEL_13;
      }
    }

    object = 0xE700000000000000;
    countAndFlagsBits = 0x6E776F6E6B6E75;
    goto LABEL_33;
  }

  outlined destroy of MediaUserStateCenter?(v14, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
  outlined destroy of MediaUserStateCenter?(v19, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMd, &_s12SiriNLUTypes0A36_Nlu_External_DelegatedUserDialogActV12delegatedUDA_Sd5scoreSb24isEligibleForCombinationtMR);
LABEL_13:
  v24 = 0.0;
LABEL_16:
  v34 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v35 = MEMORY[0x223DDF550](0xD000000000000012, 0x80000002234DE540);
  v36 = [v34 initWithSuiteName_];

  if (v36)
  {
    v37 = MEMORY[0x223DDF550](0x7265766F20435350, 0xEC00000065646972);
    v38 = [v36 stringForKey_];

    if (v38)
    {

      if (one-time initialization token for overrides != -1)
      {
        swift_once();
      }

      v39 = type metadata accessor for Logger();
      __swift_project_value_buffer(v39, static Logger.overrides);
      v40 = Logger.logObject.getter();
      v41 = static os_log_type_t.error.getter();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        *v42 = 134217984;
        *(v42 + 4) = v24;
        _os_log_impl(&dword_2232BB000, v40, v41, "WARNING: POMMES override enabled in CDM for PSC score. This may lead to unintended user-facing behavior. Effective PSC score: %f", v42, 0xCu);
        MEMORY[0x223DE0F80](v42, -1, -1);
      }
    }
  }

  return v24;
}

uint64_t SearchToolPegasusProxy.lastGroundedUserId.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t SearchToolPegasusProxy.lastGroundedUserId.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t key path setter for SearchToolPegasusProxy.client : <A>SearchToolPegasusProxy<A>(uint64_t a1, uint64_t a2)
{
  MEMORY[0x28223BE20](a1);
  v4 = &v7 - v3;
  (*(v5 + 16))(&v7 - v3);
  return (*(**a2 + 256))(v4);
}

uint64_t SearchToolPegasusProxy.client.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 152);
  swift_beginAccess();
  return (*(*(*(v3 + 128) - 8) + 16))(a1, v1 + v4);
}

uint64_t SearchToolPegasusProxy.client.setter(uint64_t a1)
{
  v3 = *v1;
  v4 = *(*v1 + 152);
  swift_beginAccess();
  (*(*(*(v3 + 128) - 8) + 40))(v1 + v4, a1);
  return swift_endAccess();
}

uint64_t SearchToolPegasusProxy.persistentPegasusConversationContext.getter()
{
  v1 = v0 + *(*v0 + 184);
  swift_beginAccess();
  v2 = *v1;
  outlined copy of Data?(*v1, *(v1 + 8));
  return v2;
}

uint64_t outlined copy of Data?(uint64_t a1, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return outlined copy of Data._Representation(a1, a2);
  }

  return a1;
}

uint64_t SearchToolPegasusProxy.persistentPegasusConversationContext.setter(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + *(*v2 + 184));
  swift_beginAccess();
  v6 = *v5;
  v7 = v5[1];
  *v5 = a1;
  v5[1] = a2;
  return outlined consume of Data?(v6, v7);
}

void *SearchToolPegasusProxy.location.getter()
{
  v1 = *(*v0 + 200);
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void SearchToolPegasusProxy.location.setter(uint64_t a1)
{
  v3 = *(*v1 + 200);
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t SearchToolPegasusProxy.logger.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(*v1 + 216);
  v4 = type metadata accessor for Logger();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t SearchToolPegasusProxy.__allocating_init(pegasusClient:networkAvailabilityProvider:instrumentationUtil:dataProviderManager:contactStore:dialogStateManager:logger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7)
{
  v14 = swift_allocObject();
  SearchToolPegasusProxy.init(pegasusClient:networkAvailabilityProvider:instrumentationUtil:dataProviderManager:contactStore:dialogStateManager:logger:)(a1, a2, a3, a4, a5, a6, a7);
  return v14;
}

char *SearchToolPegasusProxy.init(pegasusClient:networkAvailabilityProvider:instrumentationUtil:dataProviderManager:contactStore:dialogStateManager:logger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int128 *a5, uint64_t a6, uint64_t a7)
{
  v80 = a6;
  v81 = a7;
  v79 = a5;
  v82 = a3;
  v11 = *v7;
  v77 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v75 = *(v77 - 8);
  MEMORY[0x28223BE20](v77);
  v76 = &v58 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = type metadata accessor for DispatchQoS.QoSClass();
  v78 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v14 = &v58 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v15 - 8);
  v16 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v16 - 8);
  *(v7 + 2) = 0;
  *(v7 + 3) = 0;
  *&v7[*(v11 + 184)] = xmmword_2234CF930;
  *&v7[*(*v7 + 200)] = 0;
  v17 = *(v11 + 128);
  v18 = *(v17 - 8);
  (*(v18 + 16))(&v7[*(*v7 + 152)], a1, v17);
  *&v7[*(*v7 + 160)] = a2;
  *&v7[*(*v7 + 168)] = v82;
  if (a4)
  {
    (*(v18 + 8))(a1, v17);
LABEL_5:
    *&v7[*(*v7 + 176)] = a4;
    outlined init with take of DomainWarmupHandling(v79, &v7[*(*v7 + 192)]);
    *&v7[*(*v7 + 208)] = v80;
    v56 = *(*v7 + 216);
    v57 = type metadata accessor for Logger();
    (*(*(v57 - 8) + 32))(&v7[v56], v81, v57);
    return v7;
  }

  v61 = v14;
  v19 = v78;
  v65 = v18;
  v66 = v17;
  v67 = a1;
  v68 = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch0C21ToolEmptyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMd, &_s21SiriInformationSearch0C21ToolEmptyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMR);
  v20 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMd, &_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMR);
  swift_allocObject();
  v64 = a2;

  v62 = specialized AnyDataProvider.init<A>(provider:)(v20);
  v88 = 0;
  v86 = 0u;
  v87 = 0u;
  outlined init with copy of MediaUserStateCenter?(&v86, v84, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  type metadata accessor for AmpDataProvider();
  v21 = swift_allocObject();
  *(v21 + 32) = 0u;
  *(v21 + 16) = 0u;
  v22 = MEMORY[0x277D84F90];
  *(v21 + 48) = 0;
  *(v21 + 56) = v22;
  swift_beginAccess();
  outlined assign with take of MediaUserStateCenter?(v84, v21 + 16, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySayAA14MediaUserState_pGGMd, &_s21SiriInformationSearch15AnyDataProviderCySayAA14MediaUserState_pGGMR);
  swift_allocObject();
  v63 = specialized AnyDataProvider.init<A>(provider:)(v21);
  outlined destroy of MediaUserStateCenter?(&v86, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  result = [objc_opt_self() defaultObserver];
  if (result)
  {
    v24 = result;
    v25 = objc_allocWithZone(type metadata accessor for AudioQueueStateManager());
    v26 = specialized AudioQueueStateManager.init(queueStateObserver:)(v24, v25);
    type metadata accessor for AudioQueueStateDataProvider();
    v27 = swift_allocObject();
    *(v27 + 16) = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_A28_V2alpha_AudioQueueStateInfoVGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_A28_V2alpha_AudioQueueStateInfoVGMR);
    swift_allocObject();
    v73 = specialized AnyDataProvider.init<A>(provider:)(v27);
    v72 = default argument 2 of DataProviderManager.init(ampDataProvider:queueStateDataProvider:appInfoDataProvider:preferredNavigationAppDataProvider:siriKitAppInfoDataProvider:profileSliceResolvingDataProvider:marketplaceInfoDataProvider:pairedDeviceDataProvider:gmAvailabilityPolicyDataProvider:carPlaySessionDataProvider:muxContextManager:preferences:environment:assistantDataCache:serviceHelper:appChecking:)();
    type metadata accessor for AppDataProvider();
    v28 = swift_allocObject();
    *(&v87 + 1) = &type metadata for PommesSystemAppChecking;
    v88 = &protocol witness table for PommesSystemAppChecking;
    *(v28 + 56) = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
    outlined init with take of DomainWarmupHandling(&v86, v28 + 16);
    v29 = objc_opt_self();
    v30 = [v29 sharedPreferences];
    v71 = _s21SiriInformationSearch34PreferredNavigationAppDataProviderC4make03appgH011preferencesAA03AnygH0CySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGAA0fG9Providing_p_So13AFPreferencesCtFZTf4enn_nAA0fgH0C_Tt1g5(v28, v30);

    type metadata accessor for MarketplaceInfoDataProvider(0);
    v31 = swift_allocObject();
    v32 = OBJC_IVAR____TtC21SiriInformationSearch27MarketplaceInfoDataProvider_marketplaceInfo;
    v33 = type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo();
    (*(*(v33 - 8) + 56))(v31 + v32, 1, 1, v33);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_C19_V2_MarketplaceInfoVGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_C19_V2_MarketplaceInfoVGMR);
    swift_allocObject();
    v60 = specialized AnyDataProvider.init<A>(provider:)(v31);
    type metadata accessor for PairedDeviceDataProvider();
    v34 = swift_allocObject();
    *(v34 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI27Useragentpb_CompanionDeviceVGGMd, &_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI27Useragentpb_CompanionDeviceVGGMR);
    swift_allocObject();
    v58 = specialized AnyDataProvider.init<A>(provider:)(v34);
    v88 = 0;
    v86 = 0u;
    v87 = 0u;
    outlined init with copy of MediaUserStateCenter?(&v86, v84, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMR);
    type metadata accessor for GMAvailabilityPolicyDataProvider(0);
    swift_allocObject();
    v35 = GMAvailabilityPolicyDataProvider.init(gmAvailability:)(v84);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySbGMd, &_s21SiriInformationSearch15AnyDataProviderCySbGMR);
    swift_allocObject();
    v59 = specialized AnyDataProvider.init<A>(provider:)(v35);
    outlined destroy of MediaUserStateCenter?(&v86, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMR);
    v36 = type metadata accessor for CarPlaySessionDataProvider();
    v37 = objc_allocWithZone(v36);
    v38 = OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus;
    *&v37[OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus] = 0;
    v37[OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_sessionDidConnect] = 0;
    *&v37[v38] = 0;
    v83.receiver = v37;
    v83.super_class = v36;
    v39 = objc_msgSendSuper2(&v83, sel_init);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_a23_V2alpha_CarPlaySessionE0VGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_a23_V2alpha_CarPlaySessionE0VGMR);
    swift_allocObject();
    v70 = specialized AnyDataProvider.init<A>(provider:)(v39);
    v40 = [v29 sharedPreferences];
    type metadata accessor for SiriEnvironment();
    v69 = static SiriEnvironment.default.getter();
    type metadata accessor for DataProviderManager();
    a4 = swift_allocObject();
    *(&v87 + 1) = &type metadata for PommesSystemAppChecking;
    v88 = &protocol witness table for PommesSystemAppChecking;
    type metadata accessor for OS_dispatch_queue();
    static DispatchQoS.userInitiated.getter();
    static OS_dispatch_queue.Attributes.concurrent.getter();
    v41 = v19;
    v42 = *(v19 + 104);
    v43 = v61;
    v44 = v74;
    v42(v61, *MEMORY[0x277D851C8], v74);
    static OS_dispatch_queue.global(qos:)();
    (*(v41 + 8))(v43, v44);
    (*(v75 + 104))(v76, *MEMORY[0x277D85260], v77);
    v45 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    *(a4 + 128) = 0u;
    *(a4 + 160) = 0u;
    *(a4 + 176) = 0;
    *(a4 + 144) = 0u;
    v46 = v63;
    *(a4 + 16) = v45;
    *(a4 + 24) = v46;
    v47 = v72;
    *(a4 + 32) = v73;
    *(a4 + 40) = v47;
    v48 = v62;
    *(a4 + 48) = v71;
    *(a4 + 56) = v48;
    type metadata accessor for AnalyticsComponentIdGenerator();
    memset(v84, 0, sizeof(v84));
    v85 = 0;
    v49 = swift_allocObject();
    type metadata accessor for ProfileSliceResolutionRequestInstrumentationUtil();
    v50 = swift_allocObject();
    *(v50 + 16) = 0;
    *(v50 + 24) = v49;

    v51 = specialized static ProfileSliceResolvingDataProvider.make(mediaUserStateCenter:instrumentationUtil:muxContextManager:)(v84, v50, 0);

    outlined destroy of MediaUserStateCenter?(v84, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
    v52 = v60;
    *(a4 + 64) = v51;
    *(a4 + 72) = v52;
    *(a4 + 80) = v58;
    *(a4 + 96) = v70;
    *(a4 + 104) = 0;
    *(a4 + 112) = v69;
    *(a4 + 120) = v40;
    *(a4 + 128) = 0;
    *(a4 + 136) = 0;

    v53 = v40;
    outlined init with copy of AppDataProviding(&v86, v84);
    swift_beginAccess();
    outlined assign with take of MediaUserStateCenter?(v84, a4 + 144, &_s21SiriInformationSearch17PommesAppChecking_pSgMd, &_s21SiriInformationSearch17PommesAppChecking_pSgMR);
    swift_endAccess();
    *(a4 + 88) = v59;
    v54 = *(**(a4 + 40) + 160);

    v54(1);

    v55 = *(**(a4 + 48) + 160);

    v55(1);

    (*(**(a4 + 56) + 160))(1);

    (*(v65 + 8))(v67, v66);
    __swift_destroy_boxed_opaque_existential_1(&v86);
    v7 = v68;
    goto LABEL_5;
  }

  __break(1u);
  return result;
}

Swift::Void __swiftcall SearchToolPegasusProxy.prepareForSearchAtRequestStart(requestId:location:)(Swift::String requestId, CLLocation_optional location)
{
  isa = location.value.super.isa;
  v4 = *(*v2 + 304);
  v5 = location.value.super.isa;
  v4(isa);
  if (isa)
  {
    v12 = v5;
    v6 = Logger.logObject.getter();
    v7 = static os_log_type_t.info.getter();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 134218240;
      [(objc_class *)v12 coordinate];
      *(v8 + 4) = v9;
      *(v8 + 12) = 2048;
      [(objc_class *)v12 coordinate];
      *(v8 + 14) = v10;
      _os_log_impl(&dword_2232BB000, v6, v7, "Received location: (%f, %f) from search tool", v8, 0x16u);
      MEMORY[0x223DE0F80](v8, -1, -1);
      v11 = v6;
    }

    else
    {
      v11 = v12;
      v12 = v6;
    }
  }
}

Swift::Void __swiftcall SearchToolPegasusProxy.tearDown()()
{
  (*(**(v0 + *(*v0 + 176)) + 328))();
  v1 = *(*v0 + 280);

  v1(0, 0xF000000000000000);
}

uint64_t SearchToolPegasusProxy.__ivar_destroyer()
{
  v1 = *v0;

  (*(*(*(v1 + 128) - 8) + 8))(&v0[*(*v0 + 152)]);

  outlined consume of Data?(*&v0[*(*v0 + 184)], *&v0[*(*v0 + 184) + 8]);
  __swift_destroy_boxed_opaque_existential_1(&v0[*(*v0 + 192)]);

  v2 = *(*v0 + 216);
  v3 = type metadata accessor for Logger();
  v4 = *(*(v3 - 8) + 8);

  return v4(&v0[v2], v3);
}

char *SearchToolPegasusProxy.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 128) - 8) + 8))(v0 + *(*v0 + 152));

  outlined consume of Data?(*(v0 + *(*v0 + 184)), *(v0 + *(*v0 + 184) + 8));
  __swift_destroy_boxed_opaque_existential_1((v0 + *(*v0 + 192)));

  v2 = *(*v0 + 216);
  v3 = type metadata accessor for Logger();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);
  return v0;
}

uint64_t SearchToolPegasusProxy.__deallocating_deinit()
{
  SearchToolPegasusProxy.deinit();

  return swift_deallocClassInstance();
}

char *specialized SearchToolPegasusProxy.init(pegasusClient:networkAvailabilityProvider:instrumentationUtil:dataProviderManager:contactStore:dialogStateManager:logger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  v83 = a7;
  v82 = a6;
  v85 = a5;
  v84 = a10;
  v81 = type metadata accessor for OS_dispatch_queue.AutoreleaseFrequency();
  v79 = *(v81 - 8);
  MEMORY[0x28223BE20](v81);
  v80 = &v63 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = type metadata accessor for DispatchQoS.QoSClass();
  v78 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v18 = &v63 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = type metadata accessor for OS_dispatch_queue.Attributes();
  MEMORY[0x28223BE20](v19 - 8);
  v20 = type metadata accessor for DispatchQoS();
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v63 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v93 = a9;
  v94 = v84;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v92);
  (*(*(a9 - 8) + 32))(boxed_opaque_existential_1, v85, a9);
  *(a8 + 16) = 0;
  *(a8 + 24) = 0;
  *(a8 + 64) = xmmword_2234CF930;
  *(a8 + 120) = 0;
  *(a8 + 32) = a1;
  *(a8 + 40) = a2;
  v24 = a2;
  v25 = a8;
  v85 = a3;
  *(a8 + 48) = a3;
  if (a4)
  {
    goto LABEL_4;
  }

  v67 = v22;
  v69 = v18;
  v70 = v16;
  v71 = a8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch0C21ToolEmptyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMd, &_s21SiriInformationSearch0C21ToolEmptyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMR);
  v26 = swift_allocObject();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMd, &_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGMR);
  swift_allocObject();

  v73 = v24;

  v72 = specialized AnyDataProvider.init<A>(provider:)(v26);
  v91 = 0;
  v89 = 0u;
  v90 = 0u;
  outlined init with copy of MediaUserStateCenter?(&v89, v87, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  type metadata accessor for AmpDataProvider();
  v27 = swift_allocObject();
  *(v27 + 32) = 0u;
  *(v27 + 16) = 0u;
  v28 = MEMORY[0x277D84F90];
  *(v27 + 48) = 0;
  *(v27 + 56) = v28;
  swift_beginAccess();
  outlined assign with take of MediaUserStateCenter?(v87, v27 + 16, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySayAA14MediaUserState_pGGMd, &_s21SiriInformationSearch15AnyDataProviderCySayAA14MediaUserState_pGGMR);
  swift_allocObject();
  v68 = specialized AnyDataProvider.init<A>(provider:)(v27);
  outlined destroy of MediaUserStateCenter?(&v89, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
  result = [objc_opt_self() defaultObserver];
  if (result)
  {
    v30 = result;

    v31 = objc_allocWithZone(type metadata accessor for AudioQueueStateManager());
    v32 = specialized AudioQueueStateManager.init(queueStateObserver:)(v30, v31);
    type metadata accessor for AudioQueueStateDataProvider();
    v33 = swift_allocObject();
    *(v33 + 16) = v32;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_A28_V2alpha_AudioQueueStateInfoVGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_A28_V2alpha_AudioQueueStateInfoVGMR);
    swift_allocObject();
    v84 = specialized AnyDataProvider.init<A>(provider:)(v33);
    v77 = default argument 2 of DataProviderManager.init(ampDataProvider:queueStateDataProvider:appInfoDataProvider:preferredNavigationAppDataProvider:siriKitAppInfoDataProvider:profileSliceResolvingDataProvider:marketplaceInfoDataProvider:pairedDeviceDataProvider:gmAvailabilityPolicyDataProvider:carPlaySessionDataProvider:muxContextManager:preferences:environment:assistantDataCache:serviceHelper:appChecking:)();
    type metadata accessor for AppDataProvider();
    v34 = swift_allocObject();
    *(&v90 + 1) = &type metadata for PommesSystemAppChecking;
    v91 = &protocol witness table for PommesSystemAppChecking;
    *(v34 + 56) = [objc_allocWithZone(MEMORY[0x277D23C38]) init];
    outlined init with take of DomainWarmupHandling(&v89, v34 + 16);
    v35 = objc_opt_self();
    v36 = [v35 sharedPreferences];
    v76 = _s21SiriInformationSearch34PreferredNavigationAppDataProviderC4make03appgH011preferencesAA03AnygH0CySay10PegasusAPI013Apple_Parsec_A21_V2alpha_ProfileSliceVGGAA0fG9Providing_p_So13AFPreferencesCtFZTf4enn_nAA0fgH0C_Tt1g5(v34, v36);

    type metadata accessor for MarketplaceInfoDataProvider(0);
    v37 = swift_allocObject();
    v38 = OBJC_IVAR____TtC21SiriInformationSearch27MarketplaceInfoDataProvider_marketplaceInfo;
    v39 = type metadata accessor for Apple_Parsec_Search_V2_MarketplaceInfo();
    (*(*(v39 - 8) + 56))(v37 + v38, 1, 1, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_C19_V2_MarketplaceInfoVGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_C19_V2_MarketplaceInfoVGMR);
    swift_allocObject();
    v66 = specialized AnyDataProvider.init<A>(provider:)(v37);
    type metadata accessor for PairedDeviceDataProvider();
    v40 = swift_allocObject();
    *(v40 + 16) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI27Useragentpb_CompanionDeviceVGGMd, &_s21SiriInformationSearch15AnyDataProviderCySay10PegasusAPI27Useragentpb_CompanionDeviceVGGMR);
    swift_allocObject();
    v64 = specialized AnyDataProvider.init<A>(provider:)(v40);
    v91 = 0;
    v89 = 0u;
    v90 = 0u;
    outlined init with copy of MediaUserStateCenter?(&v89, v87, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMR);
    type metadata accessor for GMAvailabilityPolicyDataProvider(0);
    swift_allocObject();
    v41 = GMAvailabilityPolicyDataProvider.init(gmAvailability:)(v87);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCySbGMd, &_s21SiriInformationSearch15AnyDataProviderCySbGMR);
    swift_allocObject();
    v65 = specialized AnyDataProvider.init<A>(provider:)(v41);
    outlined destroy of MediaUserStateCenter?(&v89, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMd, &_s21SiriInformationSearch22GMAvailabilityProtocol_pSgMR);
    v42 = type metadata accessor for CarPlaySessionDataProvider();
    v43 = objc_allocWithZone(v42);
    v44 = OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus;
    *&v43[OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_carPlaySessionStatus] = 0;
    v43[OBJC_IVAR____TtC21SiriInformationSearch26CarPlaySessionDataProvider_sessionDidConnect] = 0;
    *&v43[v44] = 0;
    v86.receiver = v43;
    v86.super_class = v42;
    v45 = objc_msgSendSuper2(&v86, sel_init);
    __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_a23_V2alpha_CarPlaySessionE0VGMd, &_s21SiriInformationSearch15AnyDataProviderCy10PegasusAPI013Apple_Parsec_a23_V2alpha_CarPlaySessionE0VGMR);
    swift_allocObject();
    v75 = specialized AnyDataProvider.init<A>(provider:)(v45);
    v46 = [v35 sharedPreferences];
    type metadata accessor for SiriEnvironment();
    v74 = static SiriEnvironment.default.getter();
    type metadata accessor for DataProviderManager();
    a4 = swift_allocObject();
    *(&v90 + 1) = &type metadata for PommesSystemAppChecking;
    v91 = &protocol witness table for PommesSystemAppChecking;
    type metadata accessor for OS_dispatch_queue();
    static DispatchQoS.userInitiated.getter();
    static OS_dispatch_queue.Attributes.concurrent.getter();
    v47 = v78;
    v48 = v69;
    v49 = v70;
    (*(v78 + 104))(v69, *MEMORY[0x277D851C8], v70);
    static OS_dispatch_queue.global(qos:)();
    (*(v47 + 8))(v48, v49);
    (*(v79 + 104))(v80, *MEMORY[0x277D85260], v81);
    v50 = OS_dispatch_queue.init(label:qos:attributes:autoreleaseFrequency:target:)();
    *(a4 + 128) = 0u;
    *(a4 + 160) = 0u;
    *(a4 + 176) = 0;
    *(a4 + 144) = 0u;
    v51 = v68;
    *(a4 + 16) = v50;
    *(a4 + 24) = v51;
    v52 = v77;
    *(a4 + 32) = v84;
    *(a4 + 40) = v52;
    v53 = v72;
    *(a4 + 48) = v76;
    *(a4 + 56) = v53;
    type metadata accessor for AnalyticsComponentIdGenerator();
    memset(v87, 0, sizeof(v87));
    v88 = 0;
    v54 = swift_allocObject();
    type metadata accessor for ProfileSliceResolutionRequestInstrumentationUtil();
    v55 = swift_allocObject();
    *(v55 + 16) = 0;
    *(v55 + 24) = v54;

    v56 = specialized static ProfileSliceResolvingDataProvider.make(mediaUserStateCenter:instrumentationUtil:muxContextManager:)(v87, v55, 0);

    outlined destroy of MediaUserStateCenter?(v87, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMd, &_s21SiriInformationSearch20MediaUserStateCenter_pSgMR);
    v57 = v66;
    *(a4 + 64) = v56;
    *(a4 + 72) = v57;
    *(a4 + 80) = v64;
    *(a4 + 96) = v75;
    *(a4 + 104) = 0;
    *(a4 + 112) = v74;
    *(a4 + 120) = v46;
    *(a4 + 128) = 0;
    *(a4 + 136) = 0;

    v58 = v46;
    outlined init with copy of AppDataProviding(&v89, v87);
    swift_beginAccess();
    outlined assign with take of MediaUserStateCenter?(v87, a4 + 144, &_s21SiriInformationSearch17PommesAppChecking_pSgMd, &_s21SiriInformationSearch17PommesAppChecking_pSgMR);
    swift_endAccess();
    *(a4 + 88) = v65;
    v59 = *(**(a4 + 40) + 160);

    v59(1);

    v60 = *(**(a4 + 48) + 160);

    v60(1);

    (*(**(a4 + 56) + 160))(1);

    __swift_destroy_boxed_opaque_existential_1(&v89);
    v25 = v71;
LABEL_4:
    *(v25 + 7) = a4;
    outlined init with take of DomainWarmupHandling(&v92, (v25 + 80));
    *(v25 + 16) = v82;
    v61 = *(*v25 + 216);
    v62 = type metadata accessor for Logger();
    (*(*(v62 - 8) + 32))(&v25[v61], v83, v62);
    return v25;
  }

  __break(1u);
  return result;
}

uint64_t type metadata completion function for SearchToolPegasusProxy(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for Logger();
    if (v3 <= 0x3F)
    {
      return swift_initClassMetadata2();
    }
  }

  return result;
}

uint64_t AssistantDataSnapshot.MeCard.ContactAddress.label.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AssistantDataSnapshot.MeCard.ContactAddress.street.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AssistantDataSnapshot.MeCard.ContactAddress.city.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t AssistantDataSnapshot.MeCard.ContactAddress.state.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t AssistantDataSnapshot.MeCard.ContactAddress.zipCode.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t AssistantDataSnapshot.MeCard.ContactAddress.countryCode.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

double AssistantDataSnapshot.MeCard.ContactAddress.init(_:)@<D0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  specialized AssistantDataSnapshot.MeCard.ContactAddress.init(_:)(a1, v7);
  v3 = v7[3];
  a2[2] = v7[2];
  a2[3] = v3;
  v4 = v7[5];
  a2[4] = v7[4];
  a2[5] = v4;
  result = *v7;
  v6 = v7[1];
  *a2 = v7[0];
  a2[1] = v6;
  return result;
}

uint64_t AssistantDataSnapshot.MeCard.givenName.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t AssistantDataSnapshot.MeCard.middleName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t AssistantDataSnapshot.MeCard.familyName.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t AssistantDataSnapshot.MeCard.nickName.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t AssistantDataSnapshot.MeCard.fullName.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t AssistantDataSnapshot.MeCard.contactIdentifier.getter()
{
  v1 = *(v0 + 88);

  return v1;
}

__n128 AssistantDataSnapshot.MeCard.init(_:)@<Q0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  specialized AssistantDataSnapshot.MeCard.init(_:)(a1, v6);
  v3 = v6[5];
  *(a2 + 64) = v6[4];
  *(a2 + 80) = v3;
  *(a2 + 96) = v7;
  v4 = v6[1];
  *a2 = v6[0];
  *(a2 + 16) = v4;
  result = v6[3];
  *(a2 + 32) = v6[2];
  *(a2 + 48) = result;
  return result;
}

id AssistantDataSnapshot.ContentRestriction.init(_:)(void *a1)
{
  v2 = [a1 movieRestriction];
  [a1 tvRestriction];

  return v2;
}

Swift::Int AssistantDataSnapshot.Source.hashValue.getter(char a1)
{
  Hasher.init(_seed:)();
  MEMORY[0x223DE0370](a1 & 1);
  return Hasher._finalize()();
}

uint64_t AssistantDataSnapshot.countryCode.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t AssistantDataSnapshot.temperatureUnit.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

void AssistantDataSnapshot.init(source:countryCode:meCards:contentRestrictions:uiScale:allowUserGeneratedContent:censorSpeech:temperatureUnit:)(char a1@<W0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, void *a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, char a8@<W7>, uint64_t a9@<X8>, char a10, uint64_t a11, uint64_t a12)
{
  if (a4 >> 62)
  {
    v19 = __CocoaSet.count.getter();
  }

  else
  {
    v19 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v37 = a6;
  v36 = a8;
  if (v19)
  {
    v38 = MEMORY[0x277D84F90];
    specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)(0, v19 & ~(v19 >> 63), 0);
    if (v19 < 0)
    {
      __break(1u);
      return;
    }

    v20 = 0;
    v21 = v38;
    do
    {
      if ((a4 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x223DDFF80](v20, a4);
      }

      else
      {
        v22 = *(a4 + 8 * v20 + 32);
      }

      specialized AssistantDataSnapshot.MeCard.init(_:)(v22, v39);
      v24 = *(v38 + 16);
      v23 = *(v38 + 24);
      if (v24 >= v23 >> 1)
      {
        specialized ContiguousArray._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)((v23 > 1), v24 + 1, 1);
      }

      ++v20;
      *(v38 + 16) = v24 + 1;
      v25 = v38 + 104 * v24;
      v26 = v39[0];
      v27 = v39[2];
      *(v25 + 48) = v39[1];
      *(v25 + 64) = v27;
      *(v25 + 32) = v26;
      v28 = v39[3];
      v29 = v39[4];
      v30 = v39[5];
      *(v25 + 128) = v40;
      *(v25 + 96) = v29;
      *(v25 + 112) = v30;
      *(v25 + 80) = v28;
    }

    while (v19 != v20);
  }

  else
  {

    v21 = MEMORY[0x277D84F90];
  }

  if (a5)
  {
    v31 = a5;
    v32 = [v31 movieRestriction];
    v33 = [v31 tvRestriction];
  }

  else
  {
    v32 = 0;
    v33 = 0;
  }

  *a9 = a1 & 1;
  *(a9 + 8) = a2;
  *(a9 + 16) = a3;
  *(a9 + 24) = v21;
  *(a9 + 32) = v32;
  *(a9 + 40) = v33;
  *(a9 + 48) = a5 == 0;
  *(a9 + 56) = v37;
  *(a9 + 64) = a7 & 1;
  *(a9 + 72) = a11;
  *(a9 + 80) = a12;
  *(a9 + 88) = v36 & 1;
  *(a9 + 89) = a10 & 1;
}

double AssistantDataSnapshot.init(_:replacementMeCards:)@<D0>(void *a1@<X0>, _OWORD *a3@<X8>)
{
  specialized AssistantDataSnapshot.init(_:replacementMeCards:)(a1, v7);
  v4 = v7[3];
  a3[2] = v7[2];
  a3[3] = v4;
  a3[4] = v8[0];
  *(a3 + 74) = *(v8 + 10);
  result = *v7;
  v6 = v7[1];
  *a3 = v7[0];
  a3[1] = v6;
  return result;
}

uint64_t AssistantDataSnapshot.description.getter()
{
  *&v12 = 0;
  *(&v12 + 1) = 0xE000000000000000;
  _StringGuts.grow(_:)(190);
  v15 = v12;
  MEMORY[0x223DDF6D0](0xD000000000000028, 0x80000002234DE610);
  v16 = *(v0 + 8);
  v12 = *(v0 + 8);
  outlined init with copy of String?(&v16, &v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  v1 = String.init<A>(describing:)();
  MEMORY[0x223DDF6D0](v1);

  MEMORY[0x223DDF6D0](0x656D202020200A2CLL, 0xEF203A7364726143);
  v2 = MEMORY[0x223DDF850](*(v0 + 24), &type metadata for AssistantDataSnapshot.MeCard);
  MEMORY[0x223DDF6D0](v2);

  MEMORY[0x223DDF6D0](0xD00000000000001BLL, 0x80000002234DE640);
  v12 = *(v0 + 32);
  v13 = *(v0 + 48);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_s21SiriInformationSearch21AssistantDataSnapshotV18ContentRestrictionVSgMd, &_s21SiriInformationSearch21AssistantDataSnapshotV18ContentRestrictionVSgMR);
  v3 = String.init<A>(describing:)();
  MEMORY[0x223DDF6D0](v3);

  MEMORY[0x223DDF6D0](0x6975202020200A2CLL, 0xEF203A656C616353);
  *&v12 = *(v0 + 56);
  BYTE8(v12) = *(v0 + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&_sSdSgMd, &_sSdSgMR);
  v4 = String.init<A>(describing:)();
  MEMORY[0x223DDF6D0](v4);

  MEMORY[0x223DDF6D0](0xD000000000000021, 0x80000002234DE660);
  if (*(v0 + 88))
  {
    v5 = 1702195828;
  }

  else
  {
    v5 = 0x65736C6166;
  }

  if (*(v0 + 88))
  {
    v6 = 0xE400000000000000;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  MEMORY[0x223DDF6D0](v5, v6);

  MEMORY[0x223DDF6D0](0xD000000000000014, 0x80000002234DE690);
  if (*(v0 + 89))
  {
    v7 = 1702195828;
  }

  else
  {
    v7 = 0x65736C6166;
  }

  if (*(v0 + 89))
  {
    v8 = 0xE400000000000000;
  }

  else
  {
    v8 = 0xE500000000000000;
  }

  MEMORY[0x223DDF6D0](v7, v8);

  MEMORY[0x223DDF6D0](0xD000000000000017, 0x80000002234DE6B0);
  v12 = *(v0 + 72);
  v14 = *(v0 + 72);
  outlined init with copy of String?(&v12, &v11);
  v9 = String.init<A>(describing:)();
  MEMORY[0x223DDF6D0](v9);

  MEMORY[0x223DDF6D0](2689580, 0xE300000000000000);
  return v15;
}

void specialized AssistantDataSnapshot.MeCard.ContactAddress.init(_:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = [a1 label];
  if (v4)
  {
    v5 = v4;
    v6 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v34 = v7;
    v35 = v6;
  }

  else
  {
    v34 = 0;
    v35 = 0;
  }

  v8 = [a1 street];
  if (v8)
  {
    v9 = v8;
    v10 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v32 = v11;
    v33 = v10;
  }

  else
  {
    v32 = 0;
    v33 = 0;
  }

  v12 = [a1 city];
  if (v12)
  {
    v13 = v12;
    v31 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v15 = v14;
  }

  else
  {
    v31 = 0;
    v15 = 0;
  }

  v16 = [a1 stateCode];
  if (v16)
  {
    v17 = v16;
    v18 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v20 = v19;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v21 = [a1 postalCode];
  if (v21)
  {
    v22 = v21;
    v23 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v25 = v24;
  }

  else
  {
    v23 = 0;
    v25 = 0;
  }

  v26 = [a1 countryCode];
  if (v26)
  {
    v27 = v26;
    v28 = static String._unconditionallyBridgeFromObjectiveC(_:)();
    v30 = v29;
  }

  else
  {

    v28 = 0;
    v30 = 0;
  }

  *a2 = v35;
  a2[1] = v34;
  a2[2] = v33;
  a2[3] = v32;
  a2[4] = v31;
  a2[5] = v15;
  a2[6] = v18;
  a2[7] = v20;
  a2[8] = v23;
  a2[9] = v25;
  a2[10] = v28;
  a2[11] = v30;
}

uint64_t outlined init with copy of String?(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&_sSSSgMd, &_sSSSgMR);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t lazy protocol witness table accessor for type AssistantDataSnapshot.Source and conformance AssistantDataSnapshot.Source()
{
  result = lazy protocol witness table cache variable for type AssistantDataSnapshot.Source and conformance AssistantDataSnapshot.Source;
  if (!lazy protocol witness table cache variable for type AssistantDataSnapshot.Source and conformance AssistantDataSnapshot.Source)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type AssistantDataSnapshot.Source and conformance AssistantDataSnapshot.Source);
  }

  return result;
}

__n128 __swift_memcpy90_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 74) = *(a2 + 74);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

uint64_t storeEnumTagSinglePayload for AssistantDataSnapshot(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 88) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 90) = 1;
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
      *(result + 24) = (a2 - 1);
      return result;
    }

    *(result + 90) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t getEnumTagSinglePayload for AssistantDataSnapshot.MeCard(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t storeEnumTagSinglePayload for AssistantDataSnapshot.MeCard(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t getEnumTagSinglePayload for AssistantDataSnapshot.MeCard.ContactAddress(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 96))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 8);
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

uint64_t storeEnumTagSinglePayload for AssistantDataSnapshot.MeCard.ContactAddress(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 96) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for AssistantDataSnapshot.ContentRestriction(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AssistantDataSnapshot.ContentRestriction(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 0;
    if (!a3)
    {
      return result;
    }

    v3 = 1;
  }

  else
  {
    if (!a3)
    {
      return result;
    }

    v3 = 0;
  }

  *(result + 16) = v3;
  return result;
}

uint64_t PerformanceUtil.Ticket.init(description:startDate:fileId:lineNumber:callingFunction:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char a6@<W5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, char a11)
{
  v18 = type metadata accessor for PerformanceUtil.Ticket(0);
  v19 = a9 + v18[5];
  *v19 = a4;
  *(v19 + 8) = a5;
  *(v19 + 16) = a6;
  *(a9 + v18[6]) = a7;
  v20 = a9 + v18[7];
  *v20 = a8;
  *(v20 + 8) = a10;
  *(v20 + 16) = a11;
  v21 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(a1, a2);
  v23 = v22;

  v24 = (a9 + v18[8]);
  *v24 = v21;
  v24[1] = v23;
  v25 = type metadata accessor for Date();
  v26 = *(*(v25 - 8) + 32);

  return v26(a9, a3, v25);
}

uint64_t PerformanceUtil.Ticket.startDate.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for Date();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t PerformanceUtil.Ticket.description.getter()
{
  v1 = *(v0 + *(type metadata accessor for PerformanceUtil.Ticket(0) + 32));

  return v1;
}

uint64_t PerformanceUtil.Measurement.init(ticket:duration:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  _s21SiriInformationSearch15PerformanceUtilC6TicketVWObTm_1(a1, a2, type metadata accessor for PerformanceUtil.Ticket);
  result = type metadata accessor for PerformanceUtil.Measurement(0);
  *(a2 + *(result + 20)) = a3;
  return result;
}

uint64_t one-time initialization function for shared()
{
  type metadata accessor for AnalyticsComponentIdGenerator();
  v0 = swift_allocObject();
  v1 = [objc_opt_self() clientWithIdentifier_];
  type metadata accessor for PerformanceUtil();
  v2 = swift_allocObject();
  result = PerformanceUtil.init(analyticsComponentIdGenerator:trialClient:)(v0, v1);
  static PerformanceUtil.shared = v2;
  return result;
}

{
  type metadata accessor for SiriKitAppInfoDataProvider.SatisfyingAppsDataProviderCreator();
  result = swift_initStaticObject();
  static SiriKitAppInfoDataProvider.SatisfyingAppsDataProviderCreator.shared = result;
  return result;
}

uint64_t PerformanceUtil.__allocating_init(analyticsComponentIdGenerator:trialClient:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  PerformanceUtil.init(analyticsComponentIdGenerator:trialClient:)(a1, a2);
  return v4;
}

uint64_t static PerformanceUtil.shared.getter()
{
  if (one-time initialization token for shared != -1)
  {
    swift_once();
  }
}

id PerformanceUtil.mockStream.getter()
{
  v1 = *(v0 + 24);
  if (v1)
  {
    v2 = *(v0 + 24);
  }

  else
  {
    v3 = [objc_allocWithZone(type metadata accessor for MockEmittableSiriAnalyticsMessageStream()) init];
    v4 = *(v0 + 24);
    *(v0 + 24) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

void (*PerformanceUtil.mockStream.modify(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = PerformanceUtil.mockStream.getter();
  return PerformanceUtil.mockStream.modify;
}

void PerformanceUtil.mockStream.modify(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 24);
  *(v1 + 24) = v2;
}

uint64_t key path setter for PerformanceUtil.measurements : PerformanceUtil(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 40) = v2;
}

double PerformanceUtil.measurements.getter()
{
  swift_beginAccess();

  return result;
}

uint64_t PerformanceUtil.init(analyticsComponentIdGenerator:trialClient:)(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = 0;
  *(v2 + 40) = MEMORY[0x277D84F90];
  *(v2 + 48) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v5 = objc_allocWithZone(MEMORY[0x277CBEBD0]);
  v6 = MEMORY[0x223DDF550](0xD000000000000010, 0x80000002234DA020);
  v7 = [v5 initWithSuiteName_];

  if (v7)
  {
    v8 = MEMORY[0x223DDF550](0xD000000000000022, 0x80000002234DE6F0);
    v9 = [v7 BOOLForKey_];
  }

  else
  {
    v9 = 0;
  }

  *(v2 + 56) = v9;
  *(v2 + 32) = a1;
  *(v2 + 16) = a2;
  return v2;
}

uint64_t PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, int a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, char a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v32 = a8;
  v33 = a1;
  HIDWORD(v31) = a7;
  v39 = a3;
  v34 = a2;
  v35 = a9;
  v37 = a14;
  v38 = a13;
  v36 = a15;
  v19 = type metadata accessor for PerformanceUtil.Ticket(0);
  v20 = (v19 - 8);
  MEMORY[0x28223BE20](v19);
  v22 = &v31 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = type metadata accessor for Date();
  (*(*(v23 - 8) + 16))(v22, a4, v23);
  v24 = &v22[v20[7]];
  *v24 = a5;
  *(v24 + 1) = a6;
  v24[16] = BYTE4(v31);
  v25 = v33;
  *&v22[v20[8]] = v32;
  v26 = &v22[v20[9]];
  *v26 = a10;
  *(v26 + 1) = a11;
  v26[16] = a12;
  v27 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(v25, v34);
  v28 = &v22[v20[10]];
  *v28 = v27;
  v28[1] = v29;
  (*(*v15 + 216))(v22, v39, v38, v37, v36);
  return outlined destroy of PerformanceUtil.Measurement(v22, type metadata accessor for PerformanceUtil.Ticket);
}

uint64_t PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 96) = v16;
  *(v9 + 104) = v8;
  *(v9 + 146) = v14;
  *(v9 + 80) = v13;
  *(v9 + 88) = v15;
  *(v9 + 64) = v12;
  *(v9 + 145) = a8;
  *(v9 + 48) = a6;
  *(v9 + 56) = a7;
  *(v9 + 144) = a4;
  *(v9 + 32) = a3;
  *(v9 + 40) = a5;
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  *(v9 + 112) = type metadata accessor for PerformanceUtil.Ticket(0);
  *(v9 + 120) = swift_task_alloc();

  return MEMORY[0x2822009F8](PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:), 0, 0);
}

uint64_t PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)()
{
  v2 = *(v0 + 112);
  v1 = *(v0 + 120);
  v22 = *(v0 + 146);
  v3 = *(v0 + 88);
  v4 = *(v0 + 64);
  v20 = *(v0 + 72);
  v21 = *(v0 + 80);
  v5 = *(v0 + 145);
  v6 = *(v0 + 48);
  v7 = *(v0 + 56);
  v8 = *(v0 + 40);
  v19 = *(v0 + 32);
  v9 = *(v0 + 24);
  v10 = type metadata accessor for Date();
  (*(*(v10 - 8) + 16))(v1, v8, v10);
  v11 = v1 + v2[5];
  *v11 = v6;
  *(v11 + 8) = v7;
  *(v11 + 16) = v5;
  *(v1 + v2[6]) = v4;
  v12 = v1 + v2[7];
  *v12 = v20;
  *(v12 + 8) = v21;
  *(v12 + 16) = v22;
  v13 = specialized static PerformanceUtil.Ticket.trimIfNeeded(_:)(v9, v19);
  v14 = (v1 + v2[8]);
  *v14 = v13;
  v14[1] = v15;
  v23 = (v3 + *v3);
  v16 = swift_task_alloc();
  *(v0 + 128) = v16;
  *v16 = v0;
  v16[1] = PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:);
  v17 = *(v0 + 16);

  return v23(v17);
}

{
  *(*v1 + 136) = v0;

  if (v0)
  {
    v2 = PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:);
  }

  else
  {
    v2 = PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:);
  }

  return MEMORY[0x2822009F8](v2, 0, 0);
}

{
  v1 = *(v0 + 120);
  (*(**(v0 + 104) + 184))(v1, *(v0 + 144));
  outlined destroy of PerformanceUtil.Measurement(v1, type metadata accessor for PerformanceUtil.Ticket);

  v2 = *(v0 + 8);

  return v2();
}

{
  v1 = *(v0 + 120);
  (*(**(v0 + 104) + 184))(v1, *(v0 + 144));
  outlined destroy of PerformanceUtil.Measurement(v1, type metadata accessor for PerformanceUtil.Ticket);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t PerformanceUtil.recordMeasurement<A>(for:logMeasurement:block:)(uint64_t a1, char a2, uint64_t (*a3)(void))
{
  result = a3();
  if (!v4)
  {
    return (*(*v3 + 184))(a1, a2 & 1);
  }

  return result;
}

Swift::Void __swiftcall PerformanceUtil.emitMeasurements(requestId:resultCandidateId:)(Swift::String_optional requestId, Swift::String_optional resultCandidateId)
{
  object = resultCandidateId.value._object;
  countAndFlagsBits = resultCandidateId.value._countAndFlagsBits;
  v5 = requestId.value._object;
  v6 = requestId.value._countAndFlagsBits;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = (&v15 - v8);
  if (object)
  {
    *v9 = countAndFlagsBits;
    v9[1] = object;
    v10 = *MEMORY[0x277D56618];
    v11 = type metadata accessor for PommesCandidateId();
    v12 = *(v11 - 8);
    (*(v12 + 104))(v9, v10, v11);
    (*(v12 + 56))(v9, 0, 1, v11);
  }

  else
  {
    v13 = type metadata accessor for PommesCandidateId();
    (*(*(v13 - 8) + 56))(v9, 1, 1, v13);
  }

  v14 = AFIsInternalInstall();
  (*(*v2 + 248))(v6, v5, v9, v14);
  outlined destroy of PommesCandidateId?(v9);
}

uint64_t PerformanceUtil.emitMeasurements(requestId:pommesCandidateId:)(uint64_t a1, uint64_t a2, uint64_t a3, __n128 a4)
{
  v8 = AFIsInternalInstall();
  v9 = *(*v4 + 248);

  return v9(a1, a2, a3, v8);
}

void PerformanceUtil.emitMeasurements(requestId:pommesCandidateId:isInternalInstall:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v6 = a4;
  v10 = type metadata accessor for PerformanceUtil.Measurement(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((specialized closure #1 in PerformanceUtil.emitMeasurements(requestId:pommesCandidateId:isInternalInstall:)(v6, v5) & 1) == 0)
  {
    if (one-time initialization token for pommes != -1)
    {
LABEL_38:
      swift_once();
    }

    v50 = type metadata accessor for Logger();
    __swift_project_value_buffer(v50, static Logger.pommes);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.info.getter();
    if (!os_log_type_enabled(v51, v52))
    {
      goto LABEL_31;
    }

    v53 = swift_slowAlloc();
    *v53 = 0;
    v54 = "Unable to emit PerformanceUtil measurements because this is a production build or this run has not been selected in the subsample";
    goto LABEL_30;
  }

  v14 = specialized Emittable.eventWrapper(requestId:pommesCandidateId:)(a1, a2, a3);
  if (!v14)
  {
    if (one-time initialization token for pommes != -1)
    {
      swift_once();
    }

    v64 = type metadata accessor for Logger();
    __swift_project_value_buffer(v64, static Logger.pommes);
    v51 = Logger.logObject.getter();
    v52 = static os_log_type_t.error.getter();
    if (!os_log_type_enabled(v51, v52))
    {
      goto LABEL_31;
    }

    v53 = swift_slowAlloc();
    *v53 = 0;
    v54 = "Unable to emit PerformanceUtil measurements because of missing eventWrapper";
LABEL_30:
    _os_log_impl(&dword_2232BB000, v51, v52, v54, v53, 2u);
    MEMORY[0x223DE0F80](v53, -1, -1);
LABEL_31:

    v65 = *(*v5 + 224);

    v65();
    return;
  }

  v15 = v14;
  v16 = [objc_allocWithZone(MEMORY[0x277D59F78]) init];
  v17 = v5[6];
  [v17 lock];
  if (v16)
  {
    v71 = v10;
    v73 = v17;
    v18 = *(*v5 + 152);
    v74 = v16;
    v19 = v18();
    v75 = MEMORY[0x277D84F90];
    v20 = *(v19 + 16);
    if (v20)
    {
      v21 = 0;
      v70 = v20 - 1;
      v22 = &unk_2784DB000;
      while (1)
      {
        v23 = v21;
        while (1)
        {
          if (v23 >= *(v19 + 16))
          {
            __break(1u);
            goto LABEL_38;
          }

          outlined init with copy of PerformanceUtil.Ticket(v19 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v23, v13, type metadata accessor for PerformanceUtil.Measurement);
          v21 = v23 + 1;
          v24 = [objc_allocWithZone(MEMORY[0x277D59F88]) v22[162]];
          if (v24)
          {
            break;
          }

          outlined destroy of PerformanceUtil.Measurement(v13, type metadata accessor for PerformanceUtil.Measurement);
          ++v23;
          if (v20 == v21)
          {
            goto LABEL_20;
          }
        }

        v68 = v15;
        v69 = v5;
        v25 = v24;
        Date.timeIntervalSinceReferenceDate.getter();
        [v25 setStartTimeIntervalSince2001InMs_];
        [v25 setDurationInMs_];
        v72 = type metadata accessor for PerformanceUtil.Ticket(0);
        v27 = v25;
        v28 = StaticString.description.getter();
        v29 = MEMORY[0x223DDF550](v28);

        [v27 setFileId_];

        v30 = v72;
        v31 = *&v13[v72[6]];
        if (v31 < 0xFFFFFFFF80000000)
        {
          break;
        }

        if (v31 > 0x7FFFFFFF)
        {
          goto LABEL_40;
        }

        [v27 setLineNumber_];
        v67 = *&v13[v30[7] + 8];
        v32 = v27;
        v33 = StaticString.description.getter();
        v34 = MEMORY[0x223DDF550](v33);

        [v32 setCallingFunction_];

        v35 = &v13[v72[8]];
        v36 = *v35;
        v37 = v35[1];
        v72 = v32;

        v38 = specialized Collection.prefix(_:)(100, v36, v37);
        v67 = v39;
        v41 = v40;
        v43 = v42;

        v44 = MEMORY[0x223DDF600](v38, v67, v41, v43);
        v46 = v45;
        v47 = v72;

        v48 = MEMORY[0x223DDF550](v44, v46);

        [v47 setMeasurementLabel_];

        v49 = outlined destroy of PerformanceUtil.Measurement(v13, type metadata accessor for PerformanceUtil.Measurement);
        MEMORY[0x223DDF820](v49);
        if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
        v5 = v69;
        v15 = v68;
        v22 = &unk_2784DB000;
        if (v70 == v23)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
    }

    else
    {
LABEL_20:

      type metadata accessor for POMMESSchemaPOMMESFunctionPerformanceProfile();
      isa = Array._bridgeToObjectiveC()().super.isa;

      v56 = v74;
      [v74 setPerformanceMeasurements_];

      swift_beginAccess();
      v5[5] = MEMORY[0x277D84F90];

      [v73 unlock];
      if (one-time initialization token for pommes != -1)
      {
        swift_once();
      }

      v57 = type metadata accessor for Logger();
      __swift_project_value_buffer(v57, static Logger.pommes);
      v58 = Logger.logObject.getter();
      v59 = static os_log_type_t.debug.getter();
      if (os_log_type_enabled(v58, v59))
      {
        v60 = swift_slowAlloc();
        *v60 = 0;
        _os_log_impl(&dword_2232BB000, v58, v59, "Emitting POMMESSchemaPOMMESDebugPerformanceReported event", v60, 2u);
        MEMORY[0x223DE0F80](v60, -1, -1);
      }

      [v15 setPerformanceReported_];
      v61 = [objc_opt_self() processInfo];
      v62 = NSProcessInfo.isRunningUnitTests.getter();

      if (v62)
      {
        v63 = (*(*v5 + 128))();
      }

      else
      {
        v63 = [objc_opt_self() sharedStream];
      }

      [v63 emitMessage_];
      swift_unknownObjectRelease();
    }
  }

  else
  {
    swift_beginAccess();
    v5[5] = MEMORY[0x277D84F90];

    [v17 unlock];
  }
}

id *PerformanceUtil.deinit()
{

  return v0;
}

uint64_t PerformanceUtil.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

BOOL specialized static PerformanceUtil.Measurement.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for PerformanceUtil.Ticket(0);
  v5 = StaticString.description.getter();
  v7 = v6;
  if (v5 == StaticString.description.getter() && v7 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + *(v4 + 24)) == *(a2 + *(v4 + 24)))
  {
    v11 = StaticString.description.getter();
    v13 = v12;
    if (v11 == StaticString.description.getter() && v13 == v14)
    {
    }

    else
    {
      v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

      if ((v16 & 1) == 0)
      {
        return 0;
      }
    }

    v17 = *(v4 + 32);
    v18 = *(a1 + v17);
    v19 = *(a1 + v17 + 8);
    v20 = (a2 + v17);
    if (v18 == *v20 && v19 == v20[1] || (_stringCompareWithSmolCheck(_:_:expecting:)() & 1) != 0)
    {
      v21 = type metadata accessor for PerformanceUtil.Measurement(0);
      return *(a1 + *(v21 + 20)) == *(a2 + *(v21 + 20));
    }
  }

  return 0;
}

uint64_t specialized static PerformanceUtil.Ticket.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if ((static Date.== infix(_:_:)() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for PerformanceUtil.Ticket(0);
  v5 = StaticString.description.getter();
  v7 = v6;
  if (v5 == StaticString.description.getter() && v7 == v8)
  {
  }

  else
  {
    v10 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v10 & 1) == 0)
    {
      return 0;
    }
  }

  if (*(a1 + *(v4 + 24)) != *(a2 + *(v4 + 24)))
  {
    return 0;
  }

  v11 = StaticString.description.getter();
  v13 = v12;
  if (v11 == StaticString.description.getter() && v13 == v14)
  {
  }

  else
  {
    v16 = _stringCompareWithSmolCheck(_:_:expecting:)();

    if ((v16 & 1) == 0)
    {
      return 0;
    }
  }

  v18 = *(v4 + 32);
  v19 = *(a1 + v18);
  v20 = *(a1 + v18 + 8);
  v21 = (a2 + v18);
  if (v19 == *v21 && v20 == v21[1])
  {
    return 1;
  }

  return _stringCompareWithSmolCheck(_:_:expecting:)();
}

uint64_t specialized closure #1 in PerformanceUtil.emitMeasurements(requestId:pommesCandidateId:isInternalInstall:)(int a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  v4 = MEMORY[0x223DDF550](0xD00000000000001CLL, 0x80000002234DE780);
  v5 = MEMORY[0x223DDF550](0xD000000000000017, 0x80000002234DE6D0);
  v6 = [v3 levelForFactor:v4 withNamespaceName:v5];

  if (v6)
  {
    v7 = [v6 BOOLeanValue];
  }

  else
  {
    v7 = 2;
  }

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v8 = type metadata accessor for Logger();
  __swift_project_value_buffer(v8, static Logger.pommes);
  v9 = Logger.logObject.getter();
  v10 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v17 = v12;
    *v11 = 136315138;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_sSbSgMd, &_sSbSgMR);
    v13 = Optional.debugDescription.getter();
    v15 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v13, v14, &v17);

    *(v11 + 4) = v15;
    _os_log_impl(&dword_2232BB000, v9, v10, "trialClient.level for enable_performance_profiling? %s", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x223DE0F80](v12, -1, -1);
    MEMORY[0x223DE0F80](v11, -1, -1);
  }

  return (a1 | v7) & 1;
}

uint64_t specialized Collection.prefix(_:)(uint64_t result, uint64_t a2, unint64_t a3)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    String.index(_:offsetBy:limitedBy:)();

    return String.subscript.getter();
  }

  return result;
}

unint64_t type metadata accessor for POMMESSchemaPOMMESFunctionPerformanceProfile()
{
  result = lazy cache variable for type metadata for POMMESSchemaPOMMESFunctionPerformanceProfile;
  if (!lazy cache variable for type metadata for POMMESSchemaPOMMESFunctionPerformanceProfile)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &lazy cache variable for type metadata for POMMESSchemaPOMMESFunctionPerformanceProfile);
  }

  return result;
}

uint64_t dispatch thunk of PerformanceUtil.recordMeasurement(for:logMeasurement:)()
{
  return (*(*v0 + 184))();
}

{
  return (*(*v0 + 192))();
}

uint64_t dispatch thunk of PerformanceUtil.recordMeasurement<A>(for:logMeasurement:date:fileId:lineNumber:callingFunction:block:)(uint64_t a1, uint64_t a2, uint64_t a3, unsigned int a4, uint64_t a5, uint64_t a6, uint64_t a7, unsigned int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15)
{
  v20 = (*(*v15 + 208) + **(*v15 + 208));
  v18 = swift_task_alloc();
  *(v16 + 16) = v18;
  *v18 = v16;
  v18[1] = partial apply for closure #2 in PommesSearchService.searchInfiEntity(request:timeoutInSec:);

  return v20(a1, a2, a3, a4, a5, a6, a7, a8, a9, a10, a11, a12, a13, a14, a15);
}

uint64_t type metadata completion function for PerformanceUtil.Ticket(uint64_t a1)
{
  result = type metadata accessor for Date();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t type metadata completion function for PerformanceUtil.Measurement(uint64_t a1)
{
  result = type metadata accessor for PerformanceUtil.Ticket(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t closure #2 in PhoneCallExperiencesResolver.buildExperiences(from:with:)@<X0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for Apple_Parsec_Siri_V2alpha_PhoneCallBuilderParams();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](v2);
  v6 = v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v8 = v16 - v7;
  v9 = Apple_Parsec_Siri_V2alpha_SiriCommandBuilder.phoneCall.getter();
  v10 = MEMORY[0x223DDB940](v9);
  v12 = v11;

  v13 = HIBYTE(v12) & 0xF;
  if ((v12 & 0x2000000000000000) == 0)
  {
    v13 = v10 & 0xFFFFFFFFFFFFLL;
  }

  if (v13)
  {
    type metadata accessor for PhoneCallExperience();
    (*(v3 + 16))(v6, v8, v2);
    Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.queryConfidenceScore.getter();
    v14 = PhoneCallExperience.__allocating_init(phoneCall:queryConfidenceScore:)();
    result = (*(v3 + 8))(v8, v2);
  }

  else
  {
    result = (*(v3 + 8))(v8, v2);
    v14 = 0;
  }

  *a1 = v14;
  return result;
}

uint64_t specialized PhoneCallExperiencesResolver.buildExperiences(from:with:)(uint64_t a1)
{
  v56 = type metadata accessor for Apple_Parsec_Siri_V2alpha_DelayedActionComponent();
  v2 = *(v56 - 8);
  MEMORY[0x28223BE20](v56);
  v55 = &v46 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ExperienceComponent();
  v4 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v6 = &v46 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v46 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Apple_Parsec_Siri_V2alpha_ServerDrivenExperience();
  v49 = *(v11 - 8);
  v50 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = a1;
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.siriInstruction.getter();
  Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.serverDrivenExperience.getter();
  v14 = (*(v8 + 8))(v10, v7);
  v48 = v13;
  v15 = MEMORY[0x223DDB9C0](v14);
  v16 = *(v15 + 16);
  if (!v16)
  {

    v23 = MEMORY[0x277D84F90];
LABEL_20:
    MEMORY[0x28223BE20](v37);
    *(&v46 - 2) = v47;
    v28 = specialized Sequence.compactMap<A>(_:)(partial apply for closure #2 in PhoneCallExperiencesResolver.buildExperiences(from:with:), (&v46 - 4), v23);

    if (one-time initialization token for pommes != -1)
    {
      goto LABEL_33;
    }

    goto LABEL_21;
  }

  v18 = *(v4 + 16);
  v17 = v4 + 16;
  v19 = *(v17 + 64);
  v46 = v15;
  v20 = v15 + ((v19 + 32) & ~v19);
  v51 = *(v17 + 56);
  v52 = v18;
  v21 = (v2 + 8);
  v53 = v17;
  v22 = (v17 - 8);
  v23 = MEMORY[0x277D84F90];
  while (1)
  {
    v24 = v54;
    v52(v6, v20, v54);
    v25 = v55;
    v26 = Apple_Parsec_Siri_V2alpha_ExperienceComponent.delayedActionComponent.getter();
    v27 = MEMORY[0x223DDB910](v26);
    (*v21)(v25, v56);
    (*v22)(v6, v24);
    v28 = *(v27 + 16);
    v29 = v23[2];
    v30 = (v29 + v28);
    if (__OFADD__(v29, v28))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v30 <= v23[3] >> 1)
    {
      if (*(v27 + 16))
      {
        goto LABEL_14;
      }
    }

    else
    {
      if (v29 <= v30)
      {
        v32 = v29 + v28;
      }

      else
      {
        v32 = v29;
      }

      v23 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)(isUniquelyReferenced_nonNull_native, v32, 1, v23);
      if (*(v27 + 16))
      {
LABEL_14:
        v33 = (v23[3] >> 1) - v23[2];
        type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriCommandBuilder();
        if (v33 < v28)
        {
          goto LABEL_31;
        }

        swift_arrayInitWithCopy();

        if (v28)
        {
          v34 = v23[2];
          v35 = __OFADD__(v34, v28);
          v36 = (v34 + v28);
          if (v35)
          {
            goto LABEL_32;
          }

          v23[2] = v36;
        }

        goto LABEL_4;
      }
    }

    if (v28)
    {
      goto LABEL_30;
    }

LABEL_4:
    v20 += v51;
    if (!--v16)
    {

      goto LABEL_20;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  swift_once();
LABEL_21:
  v38 = type metadata accessor for Logger();
  __swift_project_value_buffer(v38, static Logger.pommes);

  v39 = Logger.logObject.getter();
  v40 = static os_log_type_t.debug.getter();
  v41 = v28 >> 62;
  if (os_log_type_enabled(v39, v40))
  {
    v42 = swift_slowAlloc();
    *v42 = 134217984;
    if (v41)
    {
      v43 = __CocoaSet.count.getter();
    }

    else
    {
      v43 = *((v28 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v42 + 4) = v43;

    _os_log_impl(&dword_2232BB000, v39, v40, "Extracted phone call param builders; adding %ld PhoneCallExperience(s)", v42, 0xCu);
    MEMORY[0x223DE0F80](v42, -1, -1);
  }

  else
  {
  }

  if (v41)
  {
    type metadata accessor for Experience();

    v44 = _bridgeCocoaArray<A>(_:)();
  }

  else
  {

    dispatch thunk of __ContiguousArrayStorageBase.staticElementType.getter();
    type metadata accessor for Experience();
    v44 = v28;
  }

  (*(v49 + 8))(v48, v50);
  return v44;
}

uint64_t static SportsPersonalizationMetrics.submit<A>(for:instruction:logger:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v90 = a5;
  v97 = a3;
  v101 = a1;
  v95 = type metadata accessor for SportsResolverMetrics();
  v7 = *(v95 - 8);
  MEMORY[0x28223BE20](v95);
  v93 = &v80[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s13SiriInference21SportsResolverMetricsVSgMd, _s13SiriInference21SportsResolverMetricsVSgMR);
  v10 = MEMORY[0x28223BE20](v9 - 8);
  v89 = &v80[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v96 = &v80[-v12];
  v88 = a4;
  v15 = type metadata accessor for SportsPersonalizationSelection(0, a4, v13, v14);
  v99 = *(v15 - 8);
  v100 = v15;
  MEMORY[0x28223BE20](v15);
  v98 = &v80[-v16];
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
  v18 = MEMORY[0x28223BE20](v17 - 8);
  v87 = &v80[-((v19 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v20 = MEMORY[0x28223BE20](v18);
  v22 = &v80[-v21];
  MEMORY[0x28223BE20](v20);
  v24 = &v80[-v23];
  v25 = type metadata accessor for Apple_Parsec_Siri_Context_ResultEntity();
  v85 = *(v25 - 8);
  v26 = MEMORY[0x28223BE20](v25);
  v83 = &v80[-((v27 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v26);
  v29 = &v80[-v28];
  v30 = type metadata accessor for SportsResolverConfig();
  v91 = *(v30 - 8);
  v92 = v30;
  MEMORY[0x28223BE20](v30);
  v102 = &v80[-((v31 + 15) & 0xFFFFFFFFFFFFFFF0)];
  outlined init with copy of MediaUserStateCenter?(a2, v24, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
  v32 = type metadata accessor for Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction();
  v33 = *(v32 - 8);
  v86 = *(v33 + 48);
  v34 = v86(v24, 1, v32);
  v94 = v7;
  v84 = v25;
  if (v34 == 1)
  {
    outlined destroy of MediaUserStateCenter?(v24, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
  }

  else
  {
    v35 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
    (*(v33 + 8))(v24, v32);
    if (*(v35 + 16))
    {
      v36 = v85;
      (*(v85 + 16))(v29, v35 + ((*(v36 + 80) + 32) & ~*(v36 + 80)), v25);

      Apple_Parsec_Siri_Context_ResultEntity.name.getter();
      (*(v36 + 8))(v29, v25);
    }

    else
    {
    }
  }

  v37 = v102;
  SportsResolverConfig.init(intentTypeName:bundleId:)();
  outlined init with copy of MediaUserStateCenter?(a2, v22, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
  v39 = v99;
  v38 = v100;
  v40 = v22;
  v41 = v98;
  (*(v99 + 16))(v98, v101, v100);
  v42 = Logger.logObject.getter();
  v43 = static os_log_type_t.debug.getter();
  if (os_log_type_enabled(v42, v43))
  {
    v81 = v43;
    v44 = swift_slowAlloc();
    v45 = swift_slowAlloc();
    v103[0] = v45;
    *v44 = 136315394;
    v46 = v87;
    outlined init with copy of MediaUserStateCenter?(v40, v87, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
    v47 = v86(v46, 1, v32);
    v82 = v40;
    if (v47 == 1)
    {
      outlined destroy of MediaUserStateCenter?(v46, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
      v48 = 0xE700000000000000;
      v49 = v90;
      v50 = 0x6E776F6E6B6E75;
      v52 = v98;
      v51 = v99;
    }

    else
    {
      v55 = Apple_Parsec_Siri_V2alpha_SiriPegasusResponse.SiriInstruction.resultEntities.getter();
      (*(v33 + 8))(v46, v32);
      v49 = v90;
      v52 = v98;
      if (*(v55 + 16))
      {
        v56 = v85;
        v57 = v83;
        v58 = v84;
        (*(v85 + 16))(v83, v55 + ((*(v56 + 80) + 32) & ~*(v56 + 80)), v84);

        v50 = Apple_Parsec_Siri_Context_ResultEntity.name.getter();
        v48 = v59;
        (*(v56 + 8))(v57, v58);
      }

      else
      {

        v48 = 0xE700000000000000;
        v50 = 0x6E776F6E6B6E75;
      }

      v51 = v99;
    }

    outlined destroy of MediaUserStateCenter?(v82, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
    v60 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v50, v48, v103);

    *(v44 + 4) = v60;
    *(v44 + 12) = 2080;
    v61 = v100;
    v62 = SportsPersonalizationSelection<A>.debugDescription.getter(v100, v49);
    v64 = v63;
    (*(v51 + 8))(v52, v61);
    v65 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v62, v64, v103);

    *(v44 + 14) = v65;
    _os_log_impl(&dword_2232BB000, v42, v81, "Logging sports personalization metrics: intent=%s selection=%s", v44, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x223DE0F80](v45, -1, -1);
    MEMORY[0x223DE0F80](v44, -1, -1);

    v54 = v96;
    v37 = v102;
    v53 = v93;
  }

  else
  {

    (*(v39 + 8))(v41, v38);
    outlined destroy of MediaUserStateCenter?(v40, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMd, &_s10PegasusAPI026Apple_Parsec_Siri_V2alpha_eA8ResponseV0E11InstructionVSgMR);
    v53 = v93;
    v54 = v96;
    v49 = v90;
  }

  closure #1 in static SportsPersonalizationMetrics.submit<A>(for:instruction:logger:)(v101, v37, v88, v49, v54);
  v66 = v89;
  outlined init with copy of MediaUserStateCenter?(v54, v89, &_s13SiriInference21SportsResolverMetricsVSgMd, _s13SiriInference21SportsResolverMetricsVSgMR);
  v68 = v94;
  v67 = v95;
  if ((*(v94 + 48))(v66, 1, v95) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v54, &_s13SiriInference21SportsResolverMetricsVSgMd, _s13SiriInference21SportsResolverMetricsVSgMR);
    (*(v91 + 8))(v37, v92);
    return outlined destroy of MediaUserStateCenter?(v66, &_s13SiriInference21SportsResolverMetricsVSgMd, _s13SiriInference21SportsResolverMetricsVSgMR);
  }

  (*(v68 + 32))(v53, v66, v67);
  SportsResolverMetrics.logSportsMetric()();
  if (!v70)
  {
    goto LABEL_21;
  }

  v71 = v70;
  v72 = Logger.logObject.getter();
  v73 = static os_log_type_t.error.getter();

  if (!os_log_type_enabled(v72, v73))
  {

LABEL_21:
    (*(v68 + 8))(v53, v67);
    v79 = v54;
    goto LABEL_22;
  }

  v74 = swift_slowAlloc();
  v75 = swift_slowAlloc();
  v103[0] = v75;
  *v74 = 136315138;
  swift_getErrorValue();
  v76 = Error.localizedDescription.getter();
  v78 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v76, v77, v103);

  *(v74 + 4) = v78;
  _os_log_impl(&dword_2232BB000, v72, v73, "Logging sports metrics failed with: %s", v74, 0xCu);
  __swift_destroy_boxed_opaque_existential_1(v75);
  MEMORY[0x223DE0F80](v75, -1, -1);
  MEMORY[0x223DE0F80](v74, -1, -1);

  (*(v68 + 8))(v53, v67);
  v79 = v96;
LABEL_22:
  outlined destroy of MediaUserStateCenter?(v79, &_s13SiriInference21SportsResolverMetricsVSgMd, _s13SiriInference21SportsResolverMetricsVSgMR);
  return (*(v91 + 8))(v102, v92);
}

uint64_t closure #1 in static SportsPersonalizationMetrics.submit<A>(for:instruction:logger:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v27 = a2;
  v9 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for SportsResolverConfig();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for SportsPersonalizationSelection(0, a3, v16, v17);
  MEMORY[0x28223BE20](v18);
  v20 = &v26 - v19;
  (*(v21 + 16))(&v26 - v19, a1);
  v22 = (*(v9 + 48))(v20, 2, a3);
  v23 = v22;
  if (v22)
  {
    if (v22 != 1)
    {
      (*(v13 + 16))(v15, v27, v12);
      SportsResolverMetrics.init(config:isSiriInstructionExecuted:isDisambiguation:isRecommendationFound:isTaskSuccess:)();
      v23 = 0;
    }
  }

  else
  {
    (*(v9 + 32))(v11, v20, a3);
    (*(v13 + 16))(v15, v27, v12);
    (*(a4 + 8))(a3, a4);
    SportsResolverMetrics.init(config:isSiriInstructionExecuted:isDisambiguation:isRecommendationFound:isTaskSuccess:)();
    (*(v9 + 8))(v11, a3);
  }

  v24 = type metadata accessor for SportsResolverMetrics();
  return (*(*(v24 - 8) + 56))(a5, v23, 1, v24);
}

uint64_t SmartPlayPreflightClient.__allocating_init(dataProviderManager:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

Swift::Bool __swiftcall SmartPlayPreflightClient.isLocalPlaybackResumable()()
{
  v0 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioState();
  v1 = *(v0 - 8);
  v2 = MEMORY[0x28223BE20](v0);
  v4 = &v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v2);
  v6 = &v34 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateInfoVSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateInfoVSgMR);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v34 - v8;
  v10 = type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v36 = &v34 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
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
    v35 = v0;
    v17 = v6;
    v18 = v4;
    v19 = v11;
    v20 = v1;
    v21 = v10;
    v22 = v16;
    *v16 = 0;
    _os_log_impl(&dword_2232BB000, v14, v15, "SmartPlayPreflightClient#isLocalPlaybackResumable", v16, 2u);
    v23 = v22;
    v10 = v21;
    v1 = v20;
    v11 = v19;
    v4 = v18;
    v6 = v17;
    v0 = v35;
    MEMORY[0x223DE0F80](v23, -1, -1);
  }

  (*(**(v37 + 16) + 424))();
  if ((*(v11 + 48))(v9, 1, v10) == 1)
  {
    outlined destroy of MediaUserStateCenter?(v9, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateInfoVSgMd, &_s10PegasusAPI45Apple_Parsec_Siri_V2alpha_AudioQueueStateInfoVSgMR);
    v24 = Logger.logObject.getter();
    v25 = static os_log_type_t.error.getter();
    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      *v26 = 0;
      _os_log_impl(&dword_2232BB000, v24, v25, "SmartPlayPreflightClient#isLocalPlaybackResumable queue state is nil", v26, 2u);
      MEMORY[0x223DE0F80](v26, -1, -1);
    }

    v27 = 0;
  }

  else
  {
    v28 = v36;
    (*(v11 + 32))(v36, v9, v10);
    Apple_Parsec_Siri_V2alpha_AmpUserState.ampSubscriptionStatus.getter();
    (*(v1 + 104))(v4, *MEMORY[0x277D392A8], v0);
    lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioState and conformance Apple_Parsec_Siri_V2alpha_AudioState();
    dispatch thunk of RawRepresentable.rawValue.getter();
    dispatch thunk of RawRepresentable.rawValue.getter();
    v29 = *(v1 + 8);
    v29(v4, v0);
    v29(v6, v0);
    if (v39 == v38)
    {
      v27 = Apple_Parsec_Siri_V2alpha_AudioQueueStateInfo.hasAudioQueueStateItem.getter();
    }

    else
    {
      v27 = 0;
    }

    v30 = Logger.logObject.getter();
    v31 = static os_log_type_t.default.getter();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 67109120;
      *(v32 + 4) = v27 & 1;
      _os_log_impl(&dword_2232BB000, v30, v31, "SmartPlayPreflightClient#isLocalPlaybackResumable: %{BOOL}d", v32, 8u);
      MEMORY[0x223DE0F80](v32, -1, -1);
    }

    (*(v11 + 8))(v28, v10);
  }

  return v27 & 1;
}

uint64_t SmartPlayPreflightClient.handle(pommesSearchRequest:)(uint64_t a1)
{
  v3 = 0;
  v180 = *v1;
  v178 = type metadata accessor for PommesSearchReason();
  v177 = *(v178 - 8);
  MEMORY[0x28223BE20](v178);
  v176 = &v173 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
  MEMORY[0x28223BE20](v5 - 8);
  v175 = (&v173 - v6);
  v183 = type metadata accessor for Date();
  v182 = *(v183 - 8);
  MEMORY[0x28223BE20](v183);
  v181 = &v173 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for Siri_Nlu_External_UserParse();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v173 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v174 = type metadata accessor for PommesSearchRequest(0);
  v12 = *(v174 + 76);
  v179 = a1;
  v13 = *(a1 + v12);
  v14 = MEMORY[0x277D84F90];
  v209 = MEMORY[0x277D84F90];
  v193 = *(v13 + 16);
  if (!v193)
  {
    v185 = MEMORY[0x277D84F90];
    goto LABEL_227;
  }

  v15 = 0;
  v194 = v9 + 16;
  v192 = (v9 + 8);
  v16 = MEMORY[0x277D84F90] & 0xFFFFFFFFFFFFFF8;
  v203 = MEMORY[0x277D84F90] & 0xFFFFFFFFFFFFFF8;
  if (MEMORY[0x277D84F90] < 0)
  {
    v16 = MEMORY[0x277D84F90];
  }

  v173 = v16;
  v185 = MEMORY[0x277D84F90];
  v191 = v8;
  v190 = v9;
  v189 = v11;
  v188 = v13;
  while (1)
  {
    if (v15 >= *(v13 + 16))
    {
LABEL_263:
      __break(1u);
      goto LABEL_264;
    }

    (*(v9 + 16))(v11, v13 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v15, v8);
    a1 = Siri_Nlu_External_Span.matcherNames.getter();
    v17 = specialized Sequence.flatMap<A>(_:)(a1);
    if (v3)
    {
      break;
    }

    v1 = v17;

    if (v1 >> 62)
    {
      v18 = __CocoaSet.count.getter();
    }

    else
    {
      v18 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v196 = v15 + 1;
    v197 = 0;
    v198 = v1;
    if (!v18)
    {
LABEL_219:

      v11 = v189;
      v8 = v191;
      (*v192)(v189, v191);
      goto LABEL_220;
    }

    v19 = v18;
    v20 = 0;
    v21 = v1 & 0xC000000000000001;
    v22 = v1 & 0xFFFFFFFFFFFFFF8;
    a1 = v1 + 32;
    v200 = v18;
    v201 = v1 & 0xC000000000000001;
    v202 = v1 & 0xFFFFFFFFFFFFFF8;
    v204 = v1 + 32;
    while (1)
    {
      if (v21)
      {
        v1 = MEMORY[0x223DDFF80](v20, v198);
        v24 = __OFADD__(v20++, 1);
        if (v24)
        {
          goto LABEL_251;
        }
      }

      else
      {
        v23 = *(v22 + 16);
        if (v20 >= v23)
        {
          goto LABEL_252;
        }

        v1 = *(a1 + 8 * v20);

        v24 = __OFADD__(v20++, 1);
        if (v24)
        {
LABEL_251:
          __break(1u);
LABEL_252:
          __break(1u);
          goto LABEL_253;
        }
      }

      static UsoTask_CodegenConverter.convert(task:)();
      if (v208[3])
      {
        break;
      }

      outlined destroy of MediaUserStateCenter?(v208, &_sypSgMd, &_sypSgMR);
LABEL_12:
      if (v20 == v19)
      {
        goto LABEL_219;
      }
    }

    type metadata accessor for UsoTask_play_uso_NoEntity();
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_12;
    }

    v25 = byte_283695598;
    v206 = v1;
    v26 = UsoTask.arguments.getter();
    v27 = 0x636E657265666572;
    if (v25 != 2)
    {
      v27 = 0x72656767697274;
    }

    v28 = 0xE900000000000065;
    if (v25 != 2)
    {
      v28 = 0xE700000000000000;
    }

    v29 = 0x69746E4572657375;
    if (v25)
    {
      v29 = 0x746567726174;
    }

    v30 = 0xEC00000073656974;
    if (v25)
    {
      v30 = 0xE600000000000000;
    }

    if (v25 <= 1)
    {
      v31 = v29;
    }

    else
    {
      v31 = v27;
    }

    if (v25 <= 1)
    {
      v32 = v30;
    }

    else
    {
      v32 = v28;
    }

    v33 = *(v26 + 16);
    v205 = v20;
    if (v33)
    {
      v34 = specialized __RawDictionaryStorage.find<A>(_:)(v31, v32);
      v36 = v35;

      if (v36)
      {
        v37 = *(*(v26 + 56) + 8 * v34);

        v208[0] = v14;
        v3 = (v37 & 0xFFFFFFFFFFFFFF8);
        if (v37 >> 62)
        {
          v38 = __CocoaSet.count.getter();
        }

        else
        {
          v38 = *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v39 = 0;
        v40 = (v37 & 0xC000000000000001);
        v41 = MEMORY[0x277D84F90];
        while (v38 != v39)
        {
          if (v40)
          {
            MEMORY[0x223DDFF80](v39, v37);
            v42 = v39 + 1;
            if (__OFADD__(v39, 1))
            {
              goto LABEL_246;
            }
          }

          else
          {
            if (v39 >= *((v37 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_247;
            }

            v42 = v39 + 1;
            if (__OFADD__(v39, 1))
            {
LABEL_246:
              __break(1u);
LABEL_247:
              __break(1u);
              goto LABEL_248;
            }
          }

          type metadata accessor for UsoEntity_common_UserEntity();
          dispatch thunk of UsoValue.getAsEntity()();
          static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

          ++v39;
          if (v207)
          {
            MEMORY[0x223DDF820](v43);
            if (*((v208[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v208[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v41 = v208[0];
            v39 = v42;
          }
        }

        v45 = v41;
        a1 = v41 >> 62;
        if (v41 >> 62)
        {
          v46 = __CocoaSet.count.getter();
        }

        else
        {
          v46 = *((v41 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v47 = MEMORY[0x277D84F90];
        v19 = v200;
        v22 = v202;
        v48 = MEMORY[0x277D84F90] >> 62;
        if (!(MEMORY[0x277D84F90] >> 62))
        {
          v49 = *(v203 + 16);
          v1 = v49 + v46;
          if (!__OFADD__(v49, v46))
          {
            goto LABEL_55;
          }

LABEL_261:
          __break(1u);
LABEL_262:
          __break(1u);
          goto LABEL_263;
        }

        v133 = __CocoaSet.count.getter();
        v1 = v133 + v46;
        if (__OFADD__(v133, v46))
        {
          goto LABEL_261;
        }

LABEL_55:
        isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
        if (v48)
        {
          isUniquelyReferenced_nonNull_bridgeObject = 0;
        }

        if (isUniquelyReferenced_nonNull_bridgeObject != 1 || (v51 = v47, v1 > *(v203 + 24) >> 1))
        {
          if (v48)
          {
            __CocoaSet.count.getter();
          }

          v51 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v199 = v51;
        v52 = v51 & 0xFFFFFFFFFFFFFF8;
        v1 = *((v51 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v53 = (*((v51 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - v1;
        if (a1)
        {
          v55 = __CocoaSet.count.getter();
          if (v55)
          {
            v56 = v55;
            v57 = __CocoaSet.count.getter();
            if (v53 < v57)
            {
              goto LABEL_268;
            }

            if (v56 >= 1)
            {
              v186 = v57;
              v187 = v46;
              v195 = v52;
              a1 = v52 + 8 * v1 + 32;
              lazy protocol witness table accessor for type [CodeGenListEntry<UsoEntity_common_Agent>] and conformance [A](&lazy protocol witness table cache variable for type [UsoEntity_common_UserEntity] and conformance [A], &_sSay12SiriOntology021UsoEntity_common_UserD0CGMd, &_sSay12SiriOntology021UsoEntity_common_UserD0CGMR);
              for (i = 0; i != v56; ++i)
              {
                __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology021UsoEntity_common_UserD0CGMd, &_sSay12SiriOntology021UsoEntity_common_UserD0CGMR);
                v59 = specialized protocol witness for Collection.subscript.read in conformance [A](v208, i, v45);
                v61 = *v60;

                (v59)(v208, 0);
                *(a1 + 8 * i) = v61;
              }

              v19 = v200;
              v22 = v202;
              v46 = v187;
              v1 = v186;
              goto LABEL_72;
            }

            goto LABEL_269;
          }
        }

        else
        {
          a1 = v45 & 0xFFFFFFFFFFFFFF8;
          v54 = *((v45 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v54)
          {
            if (v53 < v54)
            {
              goto LABEL_267;
            }

            v195 = v52;
            v1 = v54;
            type metadata accessor for UsoEntity_common_UserEntity();
            swift_arrayInitWithCopy();
LABEL_72:

            v14 = MEMORY[0x277D84F90];
            v21 = v201;
            v20 = v205;
            v44 = v199;
            if (v1 < v46)
            {
              goto LABEL_262;
            }

            if (v1 <= 0)
            {
              goto LABEL_77;
            }

            v62 = *(v195 + 16);
            v24 = __OFADD__(v62, v1);
            v63 = v62 + v1;
            if (!v24)
            {
              *(v195 + 16) = v63;
              goto LABEL_77;
            }

LABEL_264:
            __break(1u);
LABEL_265:
            __break(1u);
LABEL_266:
            __break(1u);
LABEL_267:
            __break(1u);
LABEL_268:
            __break(1u);
LABEL_269:
            __break(1u);
LABEL_270:
            __break(1u);
LABEL_271:
            __break(1u);
LABEL_272:
            __break(1u);
LABEL_273:
            __break(1u);
LABEL_274:
            __break(1u);
LABEL_275:
            __break(1u);
            goto LABEL_276;
          }
        }

        v14 = MEMORY[0x277D84F90];
        v21 = v201;
        v20 = v205;
        v44 = v199;
        if (v46 <= 0)
        {
          goto LABEL_77;
        }

        goto LABEL_262;
      }

      v44 = v14;
      v20 = v205;
    }

    else
    {

      v44 = v14;
    }

LABEL_77:
    if (!(v44 >> 62))
    {
      v1 = *((v44 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v1)
      {
        goto LABEL_84;
      }

      goto LABEL_79;
    }

    v1 = __CocoaSet.count.getter();

    if (v1)
    {
LABEL_79:

      a1 = v204;
      goto LABEL_12;
    }

LABEL_84:
    v64 = byte_2836955C0;
    v65 = UsoTask.arguments.getter();
    if (v64 > 1)
    {
      if (v64 != 2)
      {
        v67 = 0xE700000000000000;
        v66 = 0x72656767697274;
        if (!*(v65 + 16))
        {
          goto LABEL_123;
        }

        goto LABEL_91;
      }

      v66 = 0x636E657265666572;
      v67 = 0xE900000000000065;
LABEL_90:
      if (!*(v65 + 16))
      {
        goto LABEL_123;
      }

      goto LABEL_91;
    }

    v66 = 0x69746E4572657375;
    v67 = 0xEC00000073656974;
    if (!v64)
    {
      goto LABEL_90;
    }

    v67 = 0xE600000000000000;
    v66 = 0x746567726174;
    if (!*(v65 + 16))
    {
LABEL_123:

      v77 = v14;
      v78 = v14;
      goto LABEL_124;
    }

LABEL_91:
    v68 = specialized __RawDictionaryStorage.find<A>(_:)(v66, v67);
    v70 = v69;

    if (v70)
    {
      v71 = *(*(v65 + 56) + 8 * v68);

      v208[0] = v14;
      if (v71 >> 62)
      {
        v72 = __CocoaSet.count.getter();
      }

      else
      {
        v72 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v73 = 0;
      v74 = MEMORY[0x277D84F90];
      while (v72 != v73)
      {
        if ((v71 & 0xC000000000000001) != 0)
        {
          MEMORY[0x223DDFF80](v73, v71);
          v75 = v73 + 1;
          if (__OFADD__(v73, 1))
          {
            goto LABEL_249;
          }
        }

        else
        {
          v23 = *((v71 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v73 >= v23)
          {
            goto LABEL_250;
          }

          v75 = v73 + 1;
          if (__OFADD__(v73, 1))
          {
LABEL_249:
            __break(1u);
LABEL_250:
            __break(1u);
            goto LABEL_251;
          }
        }

        type metadata accessor for UsoEntity_uso_NoEntity();
        dispatch thunk of UsoValue.getAsEntity()();
        static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

        ++v73;
        if (v207)
        {
          MEMORY[0x223DDF820](v76);
          if (*((v208[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v208[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
          }

          specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
          v74 = v208[0];
          v73 = v75;
        }
      }

      a1 = v74 >> 62;
      if (v74 >> 62)
      {
        v79 = __CocoaSet.count.getter();
      }

      else
      {
        v79 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v80 = MEMORY[0x277D84F90];
      v81 = MEMORY[0x277D84F90] >> 62;
      if (MEMORY[0x277D84F90] >> 62)
      {
        v134 = __CocoaSet.count.getter();
        v1 = v134 + v79;
        if (__OFADD__(v134, v79))
        {
          goto LABEL_265;
        }
      }

      else
      {
        v82 = *(v203 + 16);
        v1 = v82 + v79;
        if (__OFADD__(v82, v79))
        {
          goto LABEL_265;
        }
      }

      v83 = swift_isUniquelyReferenced_nonNull_bridgeObject();
      if (v81)
      {
        v83 = 0;
      }

      if (v83 != 1 || (v84 = v80, v1 > *(v203 + 24) >> 1))
      {
        if (v81)
        {
          __CocoaSet.count.getter();
        }

        v84 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
      }

      v199 = v79;
      v77 = v80;
      v195 = v84;
      v1 = v84 & 0xFFFFFFFFFFFFFF8;
      v85 = *((v84 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v86 = (*((v84 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - v85;
      if (a1)
      {
        v88 = __CocoaSet.count.getter();
        if (!v88)
        {
LABEL_137:

          v19 = v200;
          v78 = v195;
          v21 = v201;
          v22 = v202;
          v20 = v205;
          if (v199 <= 0)
          {
            goto LABEL_124;
          }

          goto LABEL_266;
        }

        v89 = v88;
        v90 = __CocoaSet.count.getter();
        if (v86 < v90)
        {
          goto LABEL_273;
        }

        if (v89 < 1)
        {
          goto LABEL_275;
        }

        v186 = v90;
        v187 = v1;
        v91 = v1 + 8 * v85 + 32;
        lazy protocol witness table accessor for type [CodeGenListEntry<UsoEntity_common_Agent>] and conformance [A](&lazy protocol witness table cache variable for type [UsoEntity_uso_NoEntity] and conformance [A], &_sSay12SiriOntology016UsoEntity_uso_NoD0CGMd, &_sSay12SiriOntology016UsoEntity_uso_NoD0CGMR);
        for (j = 0; j != v89; ++j)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology016UsoEntity_uso_NoD0CGMd, &_sSay12SiriOntology016UsoEntity_uso_NoD0CGMR);
          v93 = specialized protocol witness for Collection.subscript.read in conformance [A](v208, j, v74);
          v95 = *v94;

          (v93)(v208, 0);
          *(v91 + 8 * j) = v95;
        }

        v77 = MEMORY[0x277D84F90];
        a1 = v199;
        v1 = v187;
        v87 = v186;
      }

      else
      {
        a1 = v74 & 0xFFFFFFFFFFFFFF8;
        v87 = *((v74 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v87)
        {
          goto LABEL_137;
        }

        if (v86 < v87)
        {
          goto LABEL_274;
        }

        type metadata accessor for UsoEntity_uso_NoEntity();
        swift_arrayInitWithCopy();
        a1 = v199;
      }

      v78 = v195;
      v19 = v200;
      v21 = v201;
      v20 = v205;
      v22 = v202;
      if (v87 < a1)
      {
        goto LABEL_266;
      }

      if (v87 > 0)
      {
        v96 = *(v1 + 16);
        v24 = __OFADD__(v96, v87);
        v97 = v96 + v87;
        if (v24)
        {
          goto LABEL_270;
        }

        *(v1 + 16) = v97;
      }
    }

    else
    {

      v77 = v14;
      v78 = v14;
      v21 = v201;
      v22 = v202;
      v20 = v205;
    }

LABEL_124:
    if (!(v78 >> 62))
    {
      v1 = *((v78 & 0xFFFFFFFFFFFFFF8) + 0x10);

      if (!v1)
      {
        goto LABEL_140;
      }

      goto LABEL_126;
    }

    v1 = __CocoaSet.count.getter();

    if (v1)
    {
LABEL_126:

      a1 = v204;
      v14 = v77;
      goto LABEL_12;
    }

LABEL_140:
    a1 = byte_2836955E8;
    v1 = UsoTask.arguments.getter();
    v98 = 0x636E657265666572;
    if (a1 != 2)
    {
      v98 = 0x72656767697274;
    }

    v99 = 0xE900000000000065;
    if (a1 != 2)
    {
      v99 = 0xE700000000000000;
    }

    v100 = 0x69746E4572657375;
    if (a1)
    {
      v100 = 0x746567726174;
    }

    v101 = 0xEC00000073656974;
    if (a1)
    {
      v101 = 0xE600000000000000;
    }

    if (a1 <= 1)
    {
      v102 = v100;
    }

    else
    {
      v102 = v98;
    }

    if (a1 <= 1)
    {
      v103 = v101;
    }

    else
    {
      v103 = v99;
    }

    v14 = v77;
    if (*(v1 + 16))
    {
      v104 = specialized __RawDictionaryStorage.find<A>(_:)(v102, v103);
      v106 = v105;

      if (v106)
      {
        v107 = *(*(v1 + 56) + 8 * v104);

        v208[0] = v77;
        if (v107 >> 62)
        {
          v108 = __CocoaSet.count.getter();
        }

        else
        {
          v108 = *((v107 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v109 = 0;
        a1 = v107 & 0xC000000000000001;
        v110 = MEMORY[0x277D84F90];
        while (v108 != v109)
        {
          if (a1)
          {
            v1 = MEMORY[0x223DDFF80](v109, v107);
            v111 = v109 + 1;
            if (__OFADD__(v109, 1))
            {
              goto LABEL_259;
            }
          }

          else
          {
            if (v109 >= *((v107 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_260;
            }

            v1 = *(v107 + 8 * v109 + 32);

            v111 = v109 + 1;
            if (__OFADD__(v109, 1))
            {
LABEL_259:
              __break(1u);
LABEL_260:
              __break(1u);
              goto LABEL_261;
            }
          }

          type metadata accessor for UsoEntity_common_EventTrigger();
          dispatch thunk of UsoValue.getAsEntity()();
          static UsoEntity_CodeGenConverter.convertAs<A>(entity:asType:)();

          ++v109;
          if (v207)
          {
            v1 = v208;
            MEMORY[0x223DDF820](v112);
            if (*((v208[0] & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v208[0] & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
            }

            specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
            v110 = v208[0];
            v109 = v111;
          }
        }

        v114 = v110;
        a1 = v110 >> 62;
        if (v110 >> 62)
        {
          v115 = __CocoaSet.count.getter();
        }

        else
        {
          v115 = *((v110 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v14 = MEMORY[0x277D84F90];
        v116 = MEMORY[0x277D84F90] >> 62;
        if (MEMORY[0x277D84F90] >> 62)
        {
          v135 = __CocoaSet.count.getter();
          v1 = v135 + v115;
          if (__OFADD__(v135, v115))
          {
            goto LABEL_271;
          }
        }

        else
        {
          v117 = *(v203 + 16);
          v1 = v117 + v115;
          if (__OFADD__(v117, v115))
          {
            goto LABEL_271;
          }
        }

        v118 = swift_isUniquelyReferenced_nonNull_bridgeObject();
        if (v116)
        {
          v118 = 0;
        }

        if (v118 != 1 || (v119 = v14, v1 > *(v203 + 24) >> 1))
        {
          if (v116)
          {
            __CocoaSet.count.getter();
          }

          v119 = specialized _ArrayBuffer._consumeAndCreateNew(bufferIsUnique:minimumCapacity:growForAppend:)();
        }

        v199 = v119;
        v1 = v119 & 0xFFFFFFFFFFFFFF8;
        v120 = *((v119 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v121 = (*((v119 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1) - v120;
        if (a1)
        {
          v122 = __CocoaSet.count.getter();
          if (!v122)
          {
LABEL_201:

            v130 = v115 <= 0;
            v113 = v199;
            v19 = v200;
            v21 = v201;
            v22 = v202;
            v20 = v205;
            if (v130)
            {
              goto LABEL_172;
            }

            goto LABEL_272;
          }

          v123 = v122;
          v124 = __CocoaSet.count.getter();
          if (v121 < v124)
          {
            goto LABEL_287;
          }

          if (v123 < 1)
          {
            goto LABEL_289;
          }

          v186 = v124;
          v195 = v115;
          v187 = v1;
          v125 = v1 + 8 * v120 + 32;
          lazy protocol witness table accessor for type [CodeGenListEntry<UsoEntity_common_Agent>] and conformance [A](&lazy protocol witness table cache variable for type [UsoEntity_common_EventTrigger] and conformance [A], &_sSay12SiriOntology29UsoEntity_common_EventTriggerCGMd, &_sSay12SiriOntology29UsoEntity_common_EventTriggerCGMR);
          for (k = 0; k != v123; ++k)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&_sSay12SiriOntology29UsoEntity_common_EventTriggerCGMd, &_sSay12SiriOntology29UsoEntity_common_EventTriggerCGMR);
            v127 = specialized protocol witness for Collection.subscript.read in conformance [A](v208, k, v114);
            v129 = *v128;

            (v127)(v208, 0);
            *(v125 + 8 * k) = v129;
          }

          v14 = MEMORY[0x277D84F90];
          v115 = v195;
          v1 = v187;
          a1 = v186;
        }

        else
        {
          a1 = *((v114 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!a1)
          {
            goto LABEL_201;
          }

          if (v121 < a1)
          {
            goto LABEL_288;
          }

          type metadata accessor for UsoEntity_common_EventTrigger();
          swift_arrayInitWithCopy();
        }

        v130 = a1 < v115;
        v113 = v199;
        v19 = v200;
        v21 = v201;
        v22 = v202;
        v20 = v205;
        if (v130)
        {
          goto LABEL_272;
        }

        if (a1 > 0)
        {
          v131 = *(v1 + 16);
          v24 = __OFADD__(v131, a1);
          v132 = v131 + a1;
          if (!v24)
          {
            *(v1 + 16) = v132;
            goto LABEL_172;
          }

          __break(1u);
LABEL_285:
          a1 = MEMORY[0x223DDFF80](0, v1);
LABEL_232:

          if (UsoTask.isSmartPlayTask.getter())
          {
            if (one-time initialization token for shared == -1)
            {
              goto LABEL_234;
            }

            goto LABEL_290;
          }

LABEL_241:

LABEL_278:
          if (one-time initialization token for pommes != -1)
          {
            swift_once();
          }

          v170 = type metadata accessor for Logger();
          __swift_project_value_buffer(v170, static Logger.pommes);
          v40 = Logger.logObject.getter();
          v171 = static os_log_type_t.default.getter();
          if (os_log_type_enabled(v40, v171))
          {
            v172 = swift_slowAlloc();
            *v172 = 0;
            _os_log_impl(&dword_2232BB000, v40, v171, "SmartPlayPreflightClient#handle no conclusive result, ignoring", v172, 2u);
            MEMORY[0x223DE0F80](v172, -1, -1);
          }

LABEL_282:

          return 1;
        }
      }

      else
      {

        v113 = v77;
        v21 = v201;
        v22 = v202;
        v20 = v205;
      }
    }

    else
    {

      v113 = v77;
    }

LABEL_172:
    if (v113 >> 62)
    {
      a1 = v113;
      v1 = __CocoaSet.count.getter();
    }

    else
    {
      v1 = *((v113 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v1)
    {

      a1 = v204;
      goto LABEL_12;
    }

    v11 = v189;
    v8 = v191;
    (*v192)(v189, v191);

    v1 = &v209;
    MEMORY[0x223DDF820](v136);
    if (*((v209 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v209 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      a1 = *((v209 & 0xFFFFFFFFFFFFFF8) + 0x10);
      specialized Array._createNewBuffer(bufferIsUnique:minimumCapacity:growForAppend:)();
    }

    specialized Array._appendElementAssumeUniqueAndCapacity(_:newElement:)();
    v185 = v209;
LABEL_220:
    v15 = v196;
    v3 = v197;
    v9 = v190;
    v13 = v188;
    if (v196 == v193)
    {
LABEL_227:
      v1 = v185;
      if (!(v185 >> 62))
      {
        if (*((v185 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
LABEL_229:
          if ((v1 & 0xC000000000000001) != 0)
          {
            goto LABEL_285;
          }

          if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            a1 = *(v1 + 32);

            goto LABEL_232;
          }

          __break(1u);
LABEL_287:
          __break(1u);
LABEL_288:
          __break(1u);
LABEL_289:
          __break(1u);
LABEL_290:
          swift_once();
LABEL_234:
          v137 = static PerformanceUtil.shared;
          v138 = v181;
          Date.init()();
          (*(*v137 + 200))(v208, 0xD00000000000001ALL, 0x80000002234DE7C0, 0, v138, "SiriInformationSearch/SmartPlayPreflightClient.swift", 52, 2, 99, "handle(pommesSearchRequest:)", 28, 2, partial apply for closure #2 in SmartPlayPreflightClient.handle(pommesSearchRequest:), v184, MEMORY[0x277D839B0], v173);
          (*(v182 + 8))(v138, v183);
          if (LOBYTE(v208[0]) != 1)
          {
            goto LABEL_241;
          }

          v139 = v179;
          v140 = (v179 + *(v174 + 32));
          v141 = *v140;
          v142 = v140[1];
          v143 = v175;
          PommesSearchRequest.pommesCandidateId.getter(v175);
          v144 = type metadata accessor for PommesCandidateId();
          (*(*(v144 - 8) + 56))(v143, 0, 1, v144);
          v145 = v176;
          default argument 5 of static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)(v176);
          v146 = static PommesSearchPreflightHandling.preflightResponse(pommesSearchRequest:experiences:clientResults:requestId:pommesCandidateId:searchReason:domainName:preflightClientHandlerIdentifier:)(v139, MEMORY[0x277D84F90], MEMORY[0x277D84F90], v141, v142, v143, v145, 0x6867696C66657270, 0xE900000000000074, 0xD000000000000018, 0x80000002234D5810);
          (*(v177 + 8))(v145, v178);
          outlined destroy of MediaUserStateCenter?(v143, &_s20SiriInformationTypes17PommesCandidateIdOSgMd, &_s20SiriInformationTypes17PommesCandidateIdOSgMR);
          v23 = one-time initialization token for pommes;
          if (!v146)
          {
LABEL_253:
            if (v23 != -1)
            {
              swift_once();
            }

            v166 = type metadata accessor for Logger();
            __swift_project_value_buffer(v166, static Logger.pommes);
            v167 = Logger.logObject.getter();
            v168 = static os_log_type_t.error.getter();
            if (os_log_type_enabled(v167, v168))
            {
              v169 = swift_slowAlloc();
              *v169 = 0;
              _os_log_impl(&dword_2232BB000, v167, v168, "SmartPlayPreflightClient#ignore could not build PommesResponse with given parameters", v169, 2u);
              MEMORY[0x223DE0F80](v169, -1, -1);
            }

            return 1;
          }

          v147 = v146;
          if (one-time initialization token for pommes != -1)
          {
            swift_once();
          }

          v148 = type metadata accessor for Logger();
          __swift_project_value_buffer(v148, static Logger.pommes);

          v149 = Logger.logObject.getter();
          v150 = static os_log_type_t.default.getter();

          if (os_log_type_enabled(v149, v150))
          {
            v151 = swift_slowAlloc();
            v152 = swift_slowAlloc();
            v208[0] = v152;
            *v151 = 136315138;
            v209 = a1;
            type metadata accessor for UsoTask();

            v153 = String.init<A>(describing:)();
            v155 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v153, v154, v208);

            *(v151 + 4) = v155;
            _os_log_impl(&dword_2232BB000, v149, v150, "SmartPlayPreflightClient#handle Non-ambiguous play task: %s", v151, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v152);
            MEMORY[0x223DE0F80](v152, -1, -1);
            MEMORY[0x223DE0F80](v151, -1, -1);
          }

          else
          {
          }

          return v147;
        }

LABEL_277:

        goto LABEL_278;
      }

LABEL_276:
      if (__CocoaSet.count.getter())
      {
        goto LABEL_229;
      }

      goto LABEL_277;
    }
  }

  (*v192)(v11, v8);

  if (one-time initialization token for pommes != -1)
  {
    swift_once();
  }

  v157 = type metadata accessor for Logger();
  __swift_project_value_buffer(v157, static Logger.pommes);
  v158 = v3;
  v40 = Logger.logObject.getter();
  v159 = static os_log_type_t.error.getter();

  if (os_log_type_enabled(v40, v159))
  {
    v160 = swift_slowAlloc();
    v161 = swift_slowAlloc();
    v208[0] = v161;
    *v160 = 136315138;
    v209 = v3;
    v162 = v3;
    __swift_instantiateConcreteTypeFromMangledNameV2(&_ss5Error_pMd, &_ss5Error_pMR);
    v163 = String.init<A>(describing:)();
    v165 = getNullTerminatedUTF8PointerImpl(_:storingStringOwnersIn:)(v163, v164, v208);

    *(v160 + 4) = v165;
    _os_log_impl(&dword_2232BB000, v40, v159, "ConversionUtils.convertUserDialogActToTasks error: %s", v160, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v161);
    MEMORY[0x223DE0F80](v161, -1, -1);
    MEMORY[0x223DE0F80](v160, -1, -1);

    goto LABEL_282;
  }

LABEL_248:

  return 1;
}

uint64_t SmartPlayPreflightClient.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t lazy protocol witness table accessor for type Apple_Parsec_Siri_V2alpha_AudioState and conformance Apple_Parsec_Siri_V2alpha_AudioState()
{
  result = lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioState and conformance Apple_Parsec_Siri_V2alpha_AudioState;
  if (!lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioState and conformance Apple_Parsec_Siri_V2alpha_AudioState)
  {
    type metadata accessor for Apple_Parsec_Siri_V2alpha_AudioState();
    result = swift_getWitnessTable();
    atomic_store(result, &lazy protocol witness table cache variable for type Apple_Parsec_Siri_V2alpha_AudioState and conformance Apple_Parsec_Siri_V2alpha_AudioState);
  }

  return result;
}

uint64_t partial apply for closure #2 in SmartPlayPreflightClient.handle(pommesSearchRequest:)@<X0>(_BYTE *a1@<X8>)
{
  result = (*(*v1 + 96))();
  *a1 = result & 1;
  return result;
}

uint64_t ResponseCache.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 24) = 0;
  type metadata accessor for AnalyticsComponentIdGenerator();
  v1 = swift_allocObject();
  type metadata accessor for PommesCacheInstrumentationUtil();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = v1;
  *(v0 + 16) = v2;
  return v0;
}

uint64_t ResponseCache.init()()
{
  *(v0 + 24) = 0;
  type metadata accessor for AnalyticsComponentIdGenerator();
  v1 = swift_allocObject();
  type metadata accessor for PommesCacheInstrumentationUtil();
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  *(v2 + 24) = v1;
  *(v0 + 16) = v2;
  return v0;
}

uint64_t ResponseCache.deinit()
{
  (*(*v0 + 144))();

  return v0;
}

uint64_t ResponseCache.__deallocating_deinit()
{
  ResponseCache.deinit();

  return swift_deallocClassInstance();
}

sqlite3 *ResponseCache.DBError.init(db:)(sqlite3 *result)
{
  if (result)
  {
    v1 = sqlite3_errcode(result);
    result = v1;
    if (v1)
    {
      if (v1 == 101)
      {
        return 0;
      }

      else if (v1 == 100)
      {
        return 0;
      }

      else
      {
        v2 = v1;
        result = sqlite3_errstr(v1);
        if (result)
        {
          String.init(cString:)();
          return v2;
        }

        else
        {
          __break(1u);
        }
      }
    }
  }

  return result;
}